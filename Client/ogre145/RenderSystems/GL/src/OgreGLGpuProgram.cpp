/*
-----------------------------------------------------------------------------
This source file is part of OGRE
(Object-oriented Graphics Rendering Engine)
For the latest info, see http://www.ogre3d.org/

Copyright (c) 2000-2006 Torus Knot Software Ltd
Also see acknowledgements in Readme.html

This program is free software; you can redistribute it and/or modify it under
the terms of the GNU Lesser General Public License as published by the Free Software
Foundation; either version 2 of the License, or (at your option) any later
version.

This program is distributed in the hope that it will be useful, but WITHOUT
ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public License along with
this program; if not, write to the Free Software Foundation, Inc., 59 Temple
Place - Suite 330, Boston, MA 02111-1307, USA, or go to
http://www.gnu.org/copyleft/lesser.txt.

You may alternatively use this source under the terms of a specific version of
the OGRE Unrestricted License provided you have obtained such a license from
Torus Knot Software Ltd.
-----------------------------------------------------------------------------
*/

#include "OgreGLGpuProgram.h"
#include "OgreException.h"
#include "OgreStringConverter.h"

using namespace Ogre;

GLGpuProgram::GLGpuProgram(ResourceManager* creator, const String& name, 
    ResourceHandle handle, const String& group, bool isManual, 
    ManualResourceLoader* loader) 
    : GpuProgram(creator, name, handle, group, isManual, loader)
{
    if (createParamDictionary("GLGpuProgram"))
    {
        setupBaseParamDictionary();
    }
}

GLGpuProgram::~GLGpuProgram()
{
    // have to call this here reather than in Resource destructor
    // since calling virtual methods in base destructors causes crash
    unload(); 
}

GLuint GLGpuProgram::getAttributeIndex(VertexElementSemantic semantic)
{
	// default implementation
	switch(semantic)
	{
		case VES_POSITION:
		case VES_NORMAL:
		case VES_DIFFUSE:
		case VES_SPECULAR:
		case VES_TEXTURE_COORDINATES:
			assert(false && "Shouldn't be calling this for standard attributes!");
			break;
		case VES_BLEND_INDICES:
			return 7; // default binding
		case VES_BLEND_WEIGHTS:
			return 1; // default binding
		case VES_TANGENT:
			return 14; // default binding
		case VES_BINORMAL:
			return 15; // default binding
	}

	return 0;
}

bool GLGpuProgram::isAttributeValid(VertexElementSemantic semantic)
{
	// default implementation
	switch(semantic)
	{
		case VES_POSITION:
		case VES_NORMAL:
		case VES_DIFFUSE:
		case VES_SPECULAR:
		case VES_TEXTURE_COORDINATES:
			assert(false && "Shouldn't be calling this for standard attributes!");
			break;
		case VES_BLEND_WEIGHTS:
		case VES_BLEND_INDICES:
		case VES_BINORMAL:
		case VES_TANGENT:
			return true; // with default binding
	}

    return false;
}

GLArbGpuProgram::GLArbGpuProgram(ResourceManager* creator, const String& name, 
    ResourceHandle handle, const String& group, bool isManual, 
    ManualResourceLoader* loader) 
    : GLGpuProgram(creator, name, handle, group, isManual, loader)
{
    glGenProgramsARB(1, &mProgramID);
}

GLArbGpuProgram::~GLArbGpuProgram()
{
    // have to call this here reather than in Resource destructor
    // since calling virtual methods in base destructors causes crash
    unload(); 
}

void GLArbGpuProgram::setType(GpuProgramType t)
{
    GLGpuProgram::setType(t);
    mProgramType = (mType == GPT_VERTEX_PROGRAM) ? GL_VERTEX_PROGRAM_ARB : GL_FRAGMENT_PROGRAM_ARB;
}

void GLArbGpuProgram::bindProgram(void)
{
    glEnable(mProgramType);
    glBindProgramARB(mProgramType, mProgramID);
}

void GLArbGpuProgram::unbindProgram(void)
{
    glBindProgramARB(mProgramType, 0);
    glDisable(mProgramType);
}

void GLArbGpuProgram::bindProgramParameters(GpuProgramParametersSharedPtr params)
{
    GLenum type = (mType == GPT_VERTEX_PROGRAM) ? 
        GL_VERTEX_PROGRAM_ARB : GL_FRAGMENT_PROGRAM_ARB;
    
	// only supports float constants
	const GpuLogicalBufferStruct* floatStruct = params->getFloatLogicalBufferStruct();

	for (GpuLogicalIndexUseMap::const_iterator i = floatStruct->map.begin();
		i != floatStruct->map.end(); ++i)
	{
		size_t logicalIndex = i->first;
		const float* pFloat = params->getFloatPointer(i->second.physicalIndex);
		// Iterate over the params, set in 4-float chunks (low-level)
		for (size_t j = 0; j < i->second.currentSize; j+=4)
		{
			glProgramLocalParameter4fvARB(type, logicalIndex, pFloat);
			pFloat += 4;
			++logicalIndex;
		}
	}
}

void GLArbGpuProgram::bindProgramPassIterationParameters(GpuProgramParametersSharedPtr params)
{
    if (params->hasPassIterationNumber())
    {
		GLenum type = (mType == GPT_VERTEX_PROGRAM) ? 
			GL_VERTEX_PROGRAM_ARB : GL_FRAGMENT_PROGRAM_ARB;

		size_t physicalIndex = params->getPassIterationNumberIndex();
		size_t logicalIndex = params->getFloatLogicalIndexForPhysicalIndex(physicalIndex);
		const float* pFloat = params->getFloatPointer(physicalIndex);
        glProgramLocalParameter4fvARB(type, (GLuint)logicalIndex, pFloat);
    }

}

void GLArbGpuProgram::unloadImpl(void)
{
    glDeleteProgramsARB(1, &mProgramID);
}

void GLArbGpuProgram::loadFromSource(void)
{
    glBindProgramARB(mProgramType, mProgramID);
    glProgramStringARB(mProgramType, GL_PROGRAM_FORMAT_ASCII_ARB, (GLsizei)mSource.length(), mSource.c_str());

    if (GL_INVALID_OPERATION == glGetError())
    {
        GLint errPos;
        glGetIntegerv(GL_PROGRAM_ERROR_POSITION_ARB, &errPos);
		String errPosStr = StringConverter::toString(errPos);
        char* errStr = (char*)glGetString(GL_PROGRAM_ERROR_STRING_ARB);
        // XXX New exception code?
        OGRE_EXCEPT(Exception::ERR_INTERNAL_ERROR, 
            "Cannot load GL vertex program " + mName + 
            ".  Line " + errPosStr + ":\n" + errStr, mName);
    }
    glBindProgramARB(mProgramType, 0);
}

