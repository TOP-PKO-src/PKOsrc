/*
-----------------------------------------------------------------------------
This source file is part of OGRE
    (Object-oriented Graphics Rendering Engine)
For the latest info, see http://www.ogre3d.org/

Copyright (c) 2000-2006 Torus Knot Software Ltd
Also see acknowledgements in Readme.html

This program is free software you can redistribute it and/or modify it under
the terms of the GNU Lesser General Public License as published by the Free Software
Foundation either version 2 of the License, or (at your option) any later
version.

This program is distributed in the hope that it will be useful, but WITHOUT
ANY WARRANTY without even the implied warranty of MERCHANTABILITY or FITNESS
FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public License along with
this program if not, write to the Free Software Foundation, Inc., 59 Temple
Place - Suite 330, Boston, MA 02111-1307, USA, or go to
http://www.gnu.org/copyleft/lesser.txt.

You may alternatively use this source under the terms of a specific version of
the OGRE Unrestricted License provided you have obtained such a license from
Torus Knot Software Ltd.
-----------------------------------------------------------------------------
*/
#include "OgreGpuProgram.h"
#include "OgreRoot.h"
#include "OgreRenderSystem.h"
#include "OgreRenderSystemCapabilities.h"
#include "OgreStringConverter.h"
#include "OgreGpuProgramManager.h"
#include "OgreHighLevelGpuProgramManager.h"
#include "OgreLogManager.h"

#include "OgreGLSLProgram.h"
#include "OgreGLSLGpuProgram.h"
#include "OgreGLSLExtSupport.h"
#include "OgreGLSLLinkProgramManager.h"

namespace Ogre {

    //-----------------------------------------------------------------------
	GLSLProgram::CmdPreprocessorDefines GLSLProgram::msCmdPreprocessorDefines;
    GLSLProgram::CmdAttach GLSLProgram::msCmdAttach;
    //-----------------------------------------------------------------------
    //---------------------------------------------------------------------------
    GLSLProgram::~GLSLProgram()
    {
        // have to call this here reather than in Resource destructor
        // since calling virtual methods in base destructors causes crash
        if (isLoaded())
        {
            unload();
        }
        else
        {
            unloadHighLevel();
        }
    }
    //-----------------------------------------------------------------------
    void GLSLProgram::loadFromSource(void)
    {
        // only create a shader object if glsl is supported
        if (isSupported())
        {
            checkForGLSLError( "GLSLProgram::GLSLProgram", "GL Errors before creating shader object", 0 );
            // create shader object
            mGLHandle = glCreateShaderObjectARB(
                (mType == GPT_VERTEX_PROGRAM) ? GL_VERTEX_SHADER_ARB : GL_FRAGMENT_SHADER_ARB );

            checkForGLSLError( "GLSLProgram::GLSLProgram", "Error creating GLSL shader Object", 0 );
        }

		// build preprocessor defines
		// GLSL has no explicit interface for defining preprocessor flags outside
		// of the source code, so we'll prepend some extra source code
		String preprocessorSource;
		if (!mPreprocessorDefines.empty())
		{
			StringUtil::StrStreamType tempStr;
			// Split preprocessor defines and build up macro array
			String::size_type pos = 0;
			while (pos != String::npos)
			{
				// Find delims
				String::size_type endPos = mPreprocessorDefines.find_first_of(";,=", pos);
				if (endPos != String::npos)
				{
					// ok, we have a definition
					tempStr << "#define ";
					// name
					tempStr << mPreprocessorDefines.substr(pos, endPos - pos) << " ";
					pos = endPos;
					
					// Check definition part
					if (mPreprocessorDefines[pos] == '=')
					{
						// set up a definition, skip delim
						++pos;
						endPos = mPreprocessorDefines.find_first_of(";,", pos);
						if (endPos == String::npos)
						{
							tempStr << mPreprocessorDefines.substr(pos, String::npos);
							pos = endPos;
						}
						else
						{
							tempStr << mPreprocessorDefines.substr(pos, endPos - pos);
							pos = endPos+1;
						}
					}
					else
					{
						// No definition part, define as "1"
						++pos;
						tempStr << "1";
					}

					tempStr << std::endl;
				}
				else
				{
					pos = endPos;
				}
			}

			preprocessorSource = tempStr.str();
		}

		// Add preprocessor extras and main source
		const char* sources[2];
		sources[0] = preprocessorSource.c_str();
		sources[1] = mSource.c_str();
		glShaderSourceARB(mGLHandle, 2, sources, NULL);
		// check for load errors
		checkForGLSLError( "GLSLProgram::loadFromSource", "Cannot load GLSL high-level shader source : " + mName, 0 );

		compile();
    }
    
    //---------------------------------------------------------------------------
	bool GLSLProgram::compile(const bool checkErrors)
	{
        if (checkErrors)
        {
            logObjectInfo("GLSL compiling: " + mName, mGLHandle);
        }

		glCompileShaderARB(mGLHandle);
		// check for compile errors
		glGetObjectParameterivARB(mGLHandle, GL_OBJECT_COMPILE_STATUS_ARB, &mCompiled);
		// force exception if not compiled
		if (checkErrors)
		{
			checkForGLSLError( "GLSLProgram::loadFromSource", "Cannot compile GLSL high-level shader : " + mName + " ", mGLHandle, !mCompiled, !mCompiled );
			
			if (mCompiled)
			{
				logObjectInfo("GLSL compiled : " + mName, mGLHandle);
			}
		}
		return (mCompiled == 1);

	}

	//-----------------------------------------------------------------------
	void GLSLProgram::createLowLevelImpl(void)
	{
		mAssemblerProgram = GpuProgramPtr(new GLSLGpuProgram( this ));
	}
	//---------------------------------------------------------------------------
	void GLSLProgram::unloadImpl()
	{   
		// We didn't create mAssemblerProgram through a manager, so override this
		// implementation so that we don't try to remove it from one. Since getCreator()
		// is used, it might target a different matching handle!
		mAssemblerProgram.setNull();

		unloadHighLevel();
	}
	//-----------------------------------------------------------------------
    void GLSLProgram::unloadHighLevelImpl(void)
    {
		if (isSupported())
		{
			glDeleteObjectARB(mGLHandle);
		}


    }

	//-----------------------------------------------------------------------
    void GLSLProgram::populateParameterNames(GpuProgramParametersSharedPtr params)
    {
		params->_setNamedConstants(&getConstantDefinitions());
		// Don't set logical / physical maps here, as we can't access parameters by logical index in GLHL.
    }
	//-----------------------------------------------------------------------
    void GLSLProgram::buildConstantDefinitions() const
    {
		// We need an accurate list of all the uniforms in the shader, but we
		// can't get at them until we link all the shaders into a program object.


		// Therefore instead, parse the source code manually and extract the uniforms
		mConstantDefs.floatBufferSize = 0;
		mConstantDefs.intBufferSize = 0;
		GLSLLinkProgramManager::getSingleton().extractConstantDefs(mSource, mConstantDefs, mName);

		// Also parse any attached sources
		for (GLSLProgramContainer::const_iterator i = mAttachedGLSLPrograms.begin();
			i != mAttachedGLSLPrograms.end(); ++i)
		{
			GLSLProgram* childShader = *i;

			GLSLLinkProgramManager::getSingleton().extractConstantDefs(
				childShader->getSource(), mConstantDefs, childShader->getName());

		}



    }

	//-----------------------------------------------------------------------
    GLSLProgram::GLSLProgram(ResourceManager* creator, 
        const String& name, ResourceHandle handle,
        const String& group, bool isManual, ManualResourceLoader* loader)
        : HighLevelGpuProgram(creator, name, handle, group, isManual, loader)
    {
		// add parameter command "attach" to the material serializer dictionary
        if (createParamDictionary("GLSLProgram"))
        {
            setupBaseParamDictionary();
            ParamDictionary* dict = getParamDictionary();

			dict->addParameter(ParameterDef("preprocessor_defines", 
				"Preprocessor defines use to compile the program.",
				PT_STRING),&msCmdPreprocessorDefines);
            dict->addParameter(ParameterDef("attach", 
                "name of another GLSL program needed by this program",
                PT_STRING),&msCmdAttach);
        }
        // Manually assign language now since we use it immediately
        mSyntaxCode = "glsl";

		// want scenemanager to pass on surface and light states to the rendersystem
		mPassSurfaceAndLightStates = true;

        
    }

	//-----------------------------------------------------------------------
    String GLSLProgram::CmdAttach::doGet(const void *target) const
    {
        return (static_cast<const GLSLProgram*>(target))->getAttachedShaderNames();
    }
	//-----------------------------------------------------------------------
    void GLSLProgram::CmdAttach::doSet(void *target, const String& shaderNames)
    {
		//get all the shader program names: there could be more than one
		StringVector vecShaderNames = StringUtil::split(shaderNames, " \t", 0);

		size_t programNameCount = vecShaderNames.size();
		for ( size_t i = 0; i < programNameCount; ++i )
		{
	        static_cast<GLSLProgram*>(target)->attachChildShader(vecShaderNames[i]);
		}
    }
	//-----------------------------------------------------------------------
	String GLSLProgram::CmdPreprocessorDefines::doGet(const void *target) const
	{
		return static_cast<const GLSLProgram*>(target)->getPreprocessorDefines();
	}
	void GLSLProgram::CmdPreprocessorDefines::doSet(void *target, const String& val)
	{
		static_cast<GLSLProgram*>(target)->setPreprocessorDefines(val);
	}

	//-----------------------------------------------------------------------
    void GLSLProgram::attachChildShader(const String& name)
	{
		// is the name valid and already loaded?
		// check with the high level program manager to see if it was loaded
		HighLevelGpuProgramPtr hlProgram = HighLevelGpuProgramManager::getSingleton().getByName(name);
		if (!hlProgram.isNull())
		{
			if (hlProgram->getSyntaxCode() == "glsl")
			{
				// make sure attached program source gets loaded and compiled
				// don't need a low level implementation for attached shader objects
				// loadHighLevelImpl will only load the source and compile once
				// so don't worry about calling it several times
				GLSLProgram* childShader = static_cast<GLSLProgram*>(hlProgram.getPointer());
				// load the source and attach the child shader only if supported
				if (isSupported())
				{
					childShader->loadHighLevelImpl();
					// add to the container
					mAttachedGLSLPrograms.push_back( childShader );
					mAttachedShaderNames += name + " ";
				}
			}
		}
	}

	//-----------------------------------------------------------------------
	void GLSLProgram::attachToProgramObject( const GLhandleARB programObject )
	{
		glAttachObjectARB( programObject, mGLHandle );
		checkForGLSLError( "GLSLLinkProgram::GLSLLinkProgram",
			"Error attaching " + mName + " shader object to GLSL Program Object", programObject );
		// attach child objects
		GLSLProgramContainerIterator childprogramcurrent = mAttachedGLSLPrograms.begin();
		GLSLProgramContainerIterator childprogramend = mAttachedGLSLPrograms.end();

 		while (childprogramcurrent != childprogramend)
		{

			GLSLProgram* childShader = *childprogramcurrent;
			// bug in ATI GLSL linker : modules without main function must be recompiled each time 
			// they are linked to a different program object
			// don't check for compile errors since there won't be any
			// *** minor inconvenience until ATI fixes there driver
			childShader->compile(false);

			childShader->attachToProgramObject( programObject );

			++childprogramcurrent;
		}

	}
	//-----------------------------------------------------------------------
	void GLSLProgram::detachFromProgramObject( const GLhandleARB programObject )
	{
		glDetachObjectARB(programObject, mGLHandle);
		checkForGLSLError( "GLSLLinkProgram::GLSLLinkProgram",
			"Error detaching " + mName + " shader object from GLSL Program Object", programObject );
		// attach child objects
		GLSLProgramContainerIterator childprogramcurrent = mAttachedGLSLPrograms.begin();
		GLSLProgramContainerIterator childprogramend = mAttachedGLSLPrograms.end();

		while (childprogramcurrent != childprogramend)
		{
			GLSLProgram* childShader = *childprogramcurrent;
			childShader->detachFromProgramObject( programObject );
			++childprogramcurrent;
		}

	}

    //-----------------------------------------------------------------------
    const String& GLSLProgram::getLanguage(void) const
    {
        static const String language = "glsl";

        return language;
    }

  
}
