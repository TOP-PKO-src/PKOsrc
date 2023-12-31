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
/*
-----------------------------------------------------------------------------
Filename:    PlayPen.cpp
Description: Somewhere to play in the sand...
-----------------------------------------------------------------------------
*/

#include "ExampleApplication.h"
#include "OgreProgressiveMesh.h"
#include "OgreEdgeListBuilder.h"
#include "OgreBillboardChain.h"
#include "OgreTextAreaOverlayElement.h"
#include "AnimationBlender.h"
#include "OgreErrorDialog.h"
#include "OgreFontManager.h"
// Static plugins declaration section
// Note that every entry in here adds an extra header / library dependency
#ifdef OGRE_STATIC_LIB
#  define ENABLE_PLUGIN_GL
#  if OGRE_PLATFORM == OGRE_PLATFORM_WIN32
#    define ENABLE_PLUGIN_Direct3D9
#  endif
#  define ENABLE_PLUGIN_OctreeSceneManager
#  define ENABLE_PLUGIN_BSPSceneManager
#  define ENABLE_PLUGIN_ParticleFX
#  define ENABLE_PLUGIN_CgProgramManager
#endif
#include "StaticPluginLoader.h"

/*
#include "OgreNoMemoryMacros.h"
#include <ode/odecpp.h>
#include <ode/odecpp_collision.h>
#include "OgreMemoryMacros.h"
*/

/*
#if OGRE_PLATFORM == OGRE_PLATFORM_WIN32
#include "OgreNoMemoryMacros.h"
#include <crtdbg.h>
#endi*/

#define NUM_TEST_NODES 5
SceneNode* mTestNode[NUM_TEST_NODES] = {0,0,0,0,0};
SceneNode* mLightNode = 0;
SceneNode* mRootNode;
SceneNode* camNode;
Entity* mEntity;
Real animTime = 0;
Animation* mAnim = 0;
std::vector<AnimationState*> mAnimStateList;
AnimationState* mAnimState = 0;
Overlay* mpOverlay;
Entity* pPlaneEnt;
Camera* testCam = 0;
SceneNode* camPlaneNode[6];
Light* mLight;
IntersectionSceneQuery* intersectionQuery = 0;
RaySceneQuery* rayQuery = 0;
Entity* ball = 0;
Vector3 ballVector;
bool testreload = false;
String testBackgroundLoadGroup;
Sphere* projectionSphere = 0;
ManualObject* scissorRect = 0;

// Hacky globals
GpuProgramParametersSharedPtr fragParams;
GpuProgramParametersSharedPtr vertParams;
MaterialPtr skin;
Frustum* frustum = 0;
Camera* theCam;
Camera* reflectCam = 0;
Camera* camera2 = 0;
Bone* manuallyControlledBone = 0;
AnimationBlender* animBlender = 0;
String animBlendTarget[2];
int animBlendTargetIndex;
MovablePlane movablePlane("APlane");


static const char* HeadPoses[] = {"upperboth", "upperleft", "upperright", "jaw", "face1", "face2"};
static const char* PoseAnimationStateName = "HeadPoses";
enum eHeadPose { DMG_BOTH, DMG_UPPER_LEFT, DMG_UPPER_RIGHT, DMG_JAW, FACE_1, FACE_2, NUM_HEAD_POSES };

using namespace OIS;

class RefractionTextureListener : public RenderTargetListener
{
public:
    void preRenderTargetUpdate(const RenderTargetEvent& evt)
    {
        pPlaneEnt->setVisible(false);

    }
    void postRenderTargetUpdate(const RenderTargetEvent& evt)
    {
        pPlaneEnt->setVisible(true);
    }

};
class ReflectionTextureListener : public RenderTargetListener
{
public:
    void preRenderTargetUpdate(const RenderTargetEvent& evt)
    {
        static Plane reflectPlane(Vector3::UNIT_Y, -100);
        pPlaneEnt->setVisible(false);
        theCam->enableReflection(reflectPlane);

    }
    void postRenderTargetUpdate(const RenderTargetEvent& evt)
    {
        pPlaneEnt->setVisible(true);
        theCam->disableReflection();
    }

};


class PlayPenListener : public ExampleFrameListener, public ResourceBackgroundQueue::Listener
{
protected:
	SceneManager* mSceneMgr;
public:
    PlayPenListener(SceneManager* mgr, RenderWindow* win, Camera* cam)
        : ExampleFrameListener(win, cam),mSceneMgr(mgr)
    {
    }

	/// Background load completed
	void operationCompleted(BackgroundProcessTicket ticket)
	{
		mDebugText = "Background load complete";

	}

    bool frameStarted(const FrameEvent& evt)
    {
		//mMoveSpeed = 0.2;

        if (!vertParams.isNull())
        {
            Matrix4 scaleMat = Matrix4::IDENTITY;
            scaleMat[0][0] = 0.5f;
            scaleMat[1][1] = -0.5f;
            scaleMat[2][2] = 0.5f;
            scaleMat[0][3] = 0.5f;
            scaleMat[1][3] = 0.5f;
            scaleMat[2][3] = 0.5f;
            Matrix4 mat = frustum->getProjectionMatrixWithRSDepth() * 
                frustum->getViewMatrix();
            
            
            mat = scaleMat * mat;

            vertParams->setNamedConstant("texViewProjMatrix", mat);



        }

		if (manuallyControlledBone)
		{
			manuallyControlledBone->yaw(Degree(evt.timeSinceLastFrame*100)); 
		}


		static float reloadtime = 10.0f;
		if (testreload)
		{
			reloadtime -= evt.timeSinceLastFrame;
			if (reloadtime <= 0)
			{
				Entity* e = mSceneMgr->getEntity("1");
				e->getParentSceneNode()->detachObject("1");
				e = mSceneMgr->getEntity("2");
				e->getParentSceneNode()->detachObject("2");
				mSceneMgr->destroyAllEntities();
				ResourceGroupManager::getSingleton().unloadResourceGroup("Sinbad");
				ResourceGroupManager::getSingleton().loadResourceGroup("Sinbad");

				testreload = false;

			}
		}

		static float backgroundLoadTime = 5.0f;
		if (!testBackgroundLoadGroup.empty())
		{
			backgroundLoadTime -= evt.timeSinceLastFrame;
			if (backgroundLoadTime < 0)
			{
				ResourceBackgroundQueue::getSingleton().loadResourceGroup(testBackgroundLoadGroup, this);
				testBackgroundLoadGroup.clear();
				mDebugText = "Background load queued";
			}

		}




        bool ret = ExampleFrameListener::frameStarted(evt);

		if (reflectCam)
		{
			reflectCam->setOrientation(mCamera->getOrientation());
			reflectCam->setPosition(mCamera->getPosition());
		}
		if (camera2)
		{
			camera2->setOrientation(mCamera->getOrientation());
			camera2->setPosition(mCamera->getPosition());
		}


		if (projectionSphere && scissorRect)
		{
			Real left, top, right, bottom;
			mCamera->projectSphere(*projectionSphere, &left, &top, &right, &bottom);

			scissorRect->beginUpdate(0);
			scissorRect->position(left, top, 0);
			scissorRect->position(right, top, 0);
			scissorRect->position(right, bottom, 0);
			scissorRect->position(left, bottom, 0);
			scissorRect->position(left, top, 0);
			scissorRect->end();


		}

		return ret;

    }

    
    bool frameEnded(const FrameEvent& evt)
    {



        // local just to stop toggles flipping too fast
        static Real timeUntilNextToggle = 0;
        static bool animate = true;
        static bool rotate = false;

        static bool firstTime = true;

        if (!firstTime)
        {
            //mCamera->yaw(20);
        }
        firstTime = false;

        if (timeUntilNextToggle >= 0) 
            timeUntilNextToggle -= evt.timeSinceLastFrame;

		static bool mWireframe = false;
		if (mKeyboard->isKeyDown(KC_G) && timeUntilNextToggle <= 0)
        {
			mWireframe = !mWireframe;
			if (mWireframe)
			{
				mCamera->setPolygonMode(PM_WIREFRAME);
			}
			else
			{
				mCamera->setPolygonMode(PM_SOLID);
			}
			timeUntilNextToggle = 0.5;

		}

		if (mKeyboard->isKeyDown(KC_MINUS) && timeUntilNextToggle <= 0)
		{
			if (mWindow->isFullScreen())
			{
				mWindow->setFullscreen(false, 800, 600);
			}
			else
			{
				mWindow->setFullscreen(true, 1024, 768);
			}
			timeUntilNextToggle = 0.5;

		}
		if (mKeyboard->isKeyDown(KC_EQUALS) && timeUntilNextToggle <= 0)
		{
			mWindow->setFullscreen(true, 800, 600);
			timeUntilNextToggle = 0.5;

		}


        MaterialPtr mat = MaterialManager::getSingleton().getByName("Core/StatsBlockBorder/Up");
        mat->setDepthCheckEnabled(true);
        mat->setDepthWriteEnabled(true);

        for (int i = 0; i < NUM_TEST_NODES; ++i)
        {
            if (mTestNode[i] && rotate)
            mTestNode[i]->yaw(Degree(evt.timeSinceLastFrame * 15));
        }
        
        if (mAnimState && animate)
            mAnimState->addTime(evt.timeSinceLastFrame);

		if (animBlender && animate)
		{
			if (animBlender->getProgress() <= 0.0f)
			{
				animBlender->init(animBlendTarget[animBlendTargetIndex]);
				animBlendTargetIndex = (animBlendTargetIndex + 1) % 2;
				animBlender->blend(animBlendTarget[animBlendTargetIndex], AnimationBlender::BlendWhileAnimating, 10, false);
			}
			else
			{
				animBlender->addTime(evt.timeSinceLastFrame);
			}
		}

		std::vector<AnimationState*>::iterator animi;
		for (animi = mAnimStateList.begin(); animi != mAnimStateList.end(); ++animi)
		{
			(*animi)->addTime(evt.timeSinceLastFrame);
		}

        if (mKeyboard->isKeyDown(KC_R) && timeUntilNextToggle <= 0)
        {
            rotate = !rotate;
            timeUntilNextToggle = 0.5;
        }
        if (mKeyboard->isKeyDown(KC_1) && timeUntilNextToggle <= 0)
        {
            animate = !animate;
            timeUntilNextToggle = 0.5;
        }


        if (rayQuery)
        {
		    static std::set<Entity*> lastEnts;
		    rayQuery->setRay(mCamera->getCameraToViewportRay(0.5, 0.5));

		    // Reset last set
		    for (std::set<Entity*>::iterator lasti = lastEnts.begin();
				    lasti != lastEnts.end(); ++lasti)
		    {
			    (*lasti)->setMaterialName("Examples/OgreLogo");
		    }
		    lastEnts.clear();
    		
    			
		    RaySceneQueryResult& results = rayQuery->execute();
		    for (RaySceneQueryResult::iterator mov = results.begin();
				    mov != results.end(); ++mov)
		    {
                if (mov->movable)
                {
			        if (mov->movable->getMovableType() == "Entity")
			        {
				        Entity* ent = static_cast<Entity*>(mov->movable);
				        lastEnts.insert(ent);
				        ent->setMaterialName("Examples/TextureEffect2");
        						
			        }
                }
		    }
        }

        if (intersectionQuery)
        {
            static std::set<Entity*> lastEnts;

            // Reset last set
            for (std::set<Entity*>::iterator lasti = lastEnts.begin();
                lasti != lastEnts.end(); ++lasti)
            {
                (*lasti)->setMaterialName("Examples/OgreLogo");
            }
            lastEnts.clear();


            IntersectionSceneQueryResult& results = intersectionQuery->execute();
            for (SceneQueryMovableIntersectionList::iterator mov = results.movables2movables.begin();
                mov != results.movables2movables.end(); ++mov)
            {
                SceneQueryMovableObjectPair& thepair = *mov;
                if (thepair.first->getMovableType() == "Entity")
                {
                    Entity* ent = static_cast<Entity*>(thepair.first);
                    lastEnts.insert(ent);
                    ent->setMaterialName("Examples/TextureEffect2");

                }
                if (thepair.second->getMovableType() == "Entity")
                {
                    Entity* ent = static_cast<Entity*>(thepair.second);
                    lastEnts.insert(ent);
                    ent->setMaterialName("Examples/TextureEffect2");

                }
            }
        }

        /*
		if (mKeyboard->isKeyDown(KC_V) && timeUntilNextToggle <= 0)
        {
            static bool isVP = false;
            if (!isVP)
            {
                skin->getTechnique(0)->getPass(0)->setVertexProgram("SimpleVP");
                skin->getTechnique(0)->getPass(0)->setVertexProgramParameters(vertParams);
                isVP = true;
            }
            else
            {
                skin->getTechnique(0)->getPass(0)->setVertexProgram("");
                isVP = false;
            }
			timeUntilNextToggle = 0.5;
        }
        */

		if (mKeyboard->isKeyDown(KC_P))
        {
            mTestNode[0]->yaw(Degree(-evt.timeSinceLastFrame * 30));
        }
		if (mKeyboard->isKeyDown(KC_O))
        {
            mTestNode[0]->yaw(Degree(evt.timeSinceLastFrame * 30));
        }
		if (mKeyboard->isKeyDown(KC_K))
        {
            mTestNode[0]->roll(Degree(-evt.timeSinceLastFrame * 30));
        }
		if (mKeyboard->isKeyDown(KC_L))
        {
            mTestNode[0]->roll(Degree(evt.timeSinceLastFrame * 30));
        }
		if (mKeyboard->isKeyDown(KC_U))
        {
            mTestNode[0]->translate(0,0,-evt.timeSinceLastFrame * 30);
        }
		if (mKeyboard->isKeyDown(KC_J))
        {
            mTestNode[0]->translate(0,0,evt.timeSinceLastFrame * 30);
        }
		if (mKeyboard->isKeyDown(KC_M))
        {
            mTestNode[0]->translate(0,evt.timeSinceLastFrame * 30, 0);
        }
		if (mKeyboard->isKeyDown(KC_N))
        {
            mTestNode[0]->translate(0,-evt.timeSinceLastFrame * 30, 0);
        }

        if (mKeyboard->isKeyDown(KC_0) && timeUntilNextToggle <= 0)
        {
            mAnimState->setEnabled(!mAnimState->getEnabled());
            timeUntilNextToggle = 0.5;
        }

		if (mEntity && mKeyboard->isKeyDown(KC_SPACE) && timeUntilNextToggle <= 0)
		{
			mSceneMgr->destroyEntity(mEntity);
			//mLight->setCastShadows(true);
			mEntity = mSceneMgr->createEntity("newEnt", "robot.mesh");
			mSceneMgr->getRootSceneNode()->createChildSceneNode()->attachObject(mEntity);
			mAnimStateList.clear();
			AnimationState* anim = mEntity->getAnimationState("Walk");
			anim->setEnabled(true);
			mAnimStateList.push_back(anim);
		}

        
        /** Hack to test frustum vols
        if (testCam)
        {
            // reposition the camera planes
            PlaneBoundedVolumeList volList = mLight->_getFrustumClipVolumes(testCam);

            PlaneBoundedVolume& vol = volList[1];
            for (int p = 0; p < 6; ++p)
            {
                Plane& pl = vol.planes[p];
                camPlaneNode[p]->setOrientation(Vector3::UNIT_Z.getRotationTo(pl.normal));
                camPlaneNode[p]->setPosition(0,0,0);
                camPlaneNode[p]->translate(0,0, pl.d, Node::TS_LOCAL);
            }

            vol.intersects(mEntity->getWorldBoundingBox());
        }
        */

        // Print camera details
        //mWindow->setDebugText("P: " + StringConverter::toString(mCamera->getDerivedPosition()) + " " + 
        //    "O: " + StringConverter::toString(mCamera->getDerivedOrientation()));
        return ExampleFrameListener::frameStarted(evt) && ExampleFrameListener::frameEnded(evt);        

    }


};

class PlayPenApplication : public ExampleApplication
{
protected:
    RefractionTextureListener mRefractionListener;
    ReflectionTextureListener mReflectionListener;
	StaticPluginLoader mStaticPluginLoader;
public:
    PlayPenApplication() {
    
    
    }

    ~PlayPenApplication() 
    {
        if (frustum)
            delete frustum;
		// Early delete so we can destroy static plugins
		if (mFrameListener)
		{
			delete mFrameListener;
			mFrameListener = 0;
		}
		if (mRoot)
		{
			delete mRoot;
			mRoot = 0;
		}
#ifdef OGRE_STATIC_LIB
		mStaticPluginLoader.unload();
#endif
    }
protected:
    
    void chooseSceneManager(void)
    {
		// DefaultSceneManager
		//mSceneMgr = mRoot->createSceneManager("DefaultSceneManager", "PlayPenSMInstance");

		// BspSceneManager
		//mSceneMgr = mRoot->createSceneManager("BspSceneManager", "PlayPenSMInstance");

		// OctreeSceneManager
		//mSceneMgr = mRoot->createSceneManager("OctreeSceneManager", "PlayPenSMInstance");

		// TerrainSceneManager
		mSceneMgr = mRoot->createSceneManager("TerrainSceneManager", "PlayPenSMInstance");
	}


    void createTestBugPlaneMesh3Streams(const String& testMeshName)
    {
        Plane plane(Vector3::UNIT_Z, 0);
        Real width = 258;
        Real height = 171;
        int xsegments = 50;
        int ysegments = 50;
        Real xTile = 1.0f;
        Real yTile = 1.0f;
        const Vector3& upVector = Vector3::UNIT_Y;
        MeshPtr pMesh = MeshManager::getSingleton().createManual(testMeshName, 
			ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME);
        SubMesh *pSub = pMesh->createSubMesh();

        // Set up vertex data
        // Use a single shared buffer
        pMesh->sharedVertexData = new VertexData();
        VertexData* vertexData = pMesh->sharedVertexData;
        // Set up Vertex Declaration
        VertexDeclaration* vertexDecl = vertexData->vertexDeclaration;
        // We always need positions
        vertexDecl->addElement(0, 0, VET_FLOAT3, VES_POSITION);
        vertexDecl->addElement(1, 0, VET_FLOAT3, VES_NORMAL);
        vertexDecl->addElement(2, 0, VET_FLOAT2, VES_TEXTURE_COORDINATES, 0);

        vertexData->vertexCount = (xsegments + 1) * (ysegments + 1);

        // Allocate vertex buffers
        HardwareVertexBufferSharedPtr vbufpos = 
            HardwareBufferManager::getSingleton().
            createVertexBuffer(vertexDecl->getVertexSize(0), vertexData->vertexCount,
            HardwareBuffer::HBU_STATIC_WRITE_ONLY, false);
        HardwareVertexBufferSharedPtr vbufnorm = 
            HardwareBufferManager::getSingleton().
            createVertexBuffer(vertexDecl->getVertexSize(1), vertexData->vertexCount,
            HardwareBuffer::HBU_STATIC_WRITE_ONLY, false);
        HardwareVertexBufferSharedPtr vbuftex = 
            HardwareBufferManager::getSingleton().
            createVertexBuffer(vertexDecl->getVertexSize(2), vertexData->vertexCount,
            HardwareBuffer::HBU_STATIC_WRITE_ONLY, false);

        // Set up the binding (one source only)
        VertexBufferBinding* binding = vertexData->vertexBufferBinding;
        binding->setBinding(0, vbufpos);
        binding->setBinding(1, vbufnorm);
        binding->setBinding(2, vbuftex);

        // Work out the transform required
        // Default orientation of plane is normal along +z, distance 0
        Matrix4 xlate, xform, rot;
        Matrix3 rot3;
        xlate = rot = Matrix4::IDENTITY;
        // Determine axes
        Vector3 zAxis, yAxis, xAxis;
        zAxis = plane.normal;
        zAxis.normalise();
        yAxis = upVector;
        yAxis.normalise();
        xAxis = yAxis.crossProduct(zAxis);

        rot3.FromAxes(xAxis, yAxis, zAxis);
        rot = rot3;

        // Set up standard xform from origin
        xlate.setTrans(plane.normal * -plane.d);

        // concatenate
        xform = xlate * rot;

        // Generate vertex data
        // Lock the whole buffer
        float* pPos = static_cast<float*>(
            vbufpos->lock(HardwareBuffer::HBL_DISCARD) );
        float* pNorm = static_cast<float*>(
            vbufnorm->lock(HardwareBuffer::HBL_DISCARD) );
        float* pTex = static_cast<float*>(
            vbuftex->lock(HardwareBuffer::HBL_DISCARD) );
        Real xSpace = width / xsegments;
        Real ySpace = height / ysegments;
        Real halfWidth = width / 2;
        Real halfHeight = height / 2;
        Real xTex = (1.0f * xTile) / xsegments;
        Real yTex = (1.0f * yTile) / ysegments;
        Vector3 vec;
        Vector3 min, max;
        Real maxSquaredLength;
        bool firstTime = true;

        for (int y = 0; y < ysegments + 1; ++y)
        {
            for (int x = 0; x < xsegments + 1; ++x)
            {
                // Work out centered on origin
                vec.x = (x * xSpace) - halfWidth;
                vec.y = (y * ySpace) - halfHeight;
                vec.z = 0.0f;
                // Transform by orientation and distance
                vec = xform * vec;
                // Assign to geometry
                *pPos++ = vec.x;
                *pPos++ = vec.y;
                *pPos++ = vec.z;

                // Build bounds as we go
                if (firstTime)
                {
                    min = vec;
                    max = vec;
                    maxSquaredLength = vec.squaredLength();
                    firstTime = false;
                }
                else
                {
                    min.makeFloor(vec);
                    max.makeCeil(vec);
                    maxSquaredLength = std::max(maxSquaredLength, vec.squaredLength());
                }

                // Default normal is along unit Z
                vec = Vector3::UNIT_Z;
                // Rotate
                vec = rot * vec;

                *pNorm++ = vec.x;
                *pNorm++ = vec.y;
                *pNorm++ = vec.z;

                *pTex++ = x * xTex;
                *pTex++ = 1 - (y * yTex);


            } // x
        } // y

        // Unlock
        vbufpos->unlock();
        vbufnorm->unlock();
        vbuftex->unlock();
        // Generate face list
        pSub->useSharedVertices = true;
        //tesselate2DMesh(pSub, xsegments + 1, ysegments + 1, false, indexBufferUsage, indexShadowBuffer);
        SubMesh* sm = pSub;
        int meshWidth = xsegments + 1;
        int meshHeight = ysegments + 1; 
        bool doubleSided = false;
        HardwareBuffer::Usage indexBufferUsage = HardwareBuffer::HBU_STATIC_WRITE_ONLY;
        bool indexShadowBuffer = true;
        // The mesh is built, just make a list of indexes to spit out the triangles
        int vInc, uInc, v, u, iterations;
        int vCount, uCount;

        if (doubleSided)
        {
            iterations = 2;
            vInc = 1;
            v = 0; // Start with front
        }
        else
        {
            iterations = 1;
            vInc = 1;
            v = 0;
        }

        // Allocate memory for faces
        // Num faces, width*height*2 (2 tris per square), index count is * 3 on top
        sm->indexData->indexCount = (meshWidth-1) * (meshHeight-1) * 2 * iterations * 3;
        sm->indexData->indexBuffer = HardwareBufferManager::getSingleton().
            createIndexBuffer(HardwareIndexBuffer::IT_16BIT,
            sm->indexData->indexCount, indexBufferUsage, indexShadowBuffer);

        int v1, v2, v3;
        //bool firstTri = true;
        HardwareIndexBufferSharedPtr ibuf = sm->indexData->indexBuffer;
        // Lock the whole buffer
        unsigned short* pIndexes = static_cast<unsigned short*>(
            ibuf->lock(HardwareBuffer::HBL_DISCARD) );

        while (iterations--)
        {
            // Make tris in a zigzag pattern (compatible with strips)
            u = 0;
            uInc = 1; // Start with moving +u

            vCount = meshHeight - 1;
            while (vCount--)
            {
                uCount = meshWidth - 1;
                while (uCount--)
                {
                    // First Tri in cell
                    // -----------------
                    v1 = ((v + vInc) * meshWidth) + u;
                    v2 = (v * meshWidth) + u;
                    v3 = ((v + vInc) * meshWidth) + (u + uInc);
                    // Output indexes
                    *pIndexes++ = v1;
                    *pIndexes++ = v2;
                    *pIndexes++ = v3;
                    // Second Tri in cell
                    // ------------------
                    v1 = ((v + vInc) * meshWidth) + (u + uInc);
                    v2 = (v * meshWidth) + u;
                    v3 = (v * meshWidth) + (u + uInc);
                    // Output indexes
                    *pIndexes++ = v1;
                    *pIndexes++ = v2;
                    *pIndexes++ = v3;

                    // Next column
                    u += uInc;
                }
                // Next row
                v += vInc;
                u = 0;


            }

            // Reverse vInc for double sided
            v = meshHeight - 1;
            vInc = -vInc;

        }
        // Unlock
        ibuf->unlock();

        //pMesh->_updateBounds();
        pMesh->_setBounds(AxisAlignedBox(min, max));
        pMesh->_setBoundingSphereRadius(Math::Sqrt(maxSquaredLength));
        // load
        pMesh->load();
        pMesh->touch();
    }

    void stressTestStaticGeometry(void)
    {

		// Set ambient light
		mSceneMgr->setAmbientLight(ColourValue(0.5, 0.5, 0.5));

		// Create a point light
		Light* l = mSceneMgr->createLight("MainLight");
		l->setType(Light::LT_DIRECTIONAL);
		Vector3 dir(1, -1, -1.5);
		dir.normalise();
		l->setDirection(dir);
		l->setDiffuseColour(1.0, 0.7, 0.0);


		Plane plane;
		plane.normal = Vector3::UNIT_Y;
		plane.d = 0;
		MeshManager::getSingleton().createPlane("Myplane",
			ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME, plane,
			4500,4500,10,10,true,1,5,5,Vector3::UNIT_Z);
		Entity* pPlaneEnt = mSceneMgr->createEntity( "plane", "Myplane" );
		pPlaneEnt->setMaterialName("Examples/GrassFloor");
		pPlaneEnt->setCastShadows(false);
		mSceneMgr->getRootSceneNode()->createChildSceneNode()->attachObject(pPlaneEnt);

		Vector3 min(-2000,0,-2000);
		Vector3 max(2000,0,2000);


		Entity* e = mSceneMgr->createEntity("1", "ogrehead.mesh");
		StaticGeometry* s = 0;

		unsigned int count = 10;
		while(count--)
		{
			if(s) mSceneMgr->destroyStaticGeometry(s);
			s = mSceneMgr->createStaticGeometry("bing");

			s->addEntity(e, Vector3(100, 100, 100));

			s->build();
		}


		//s->setRenderingDistance(1000);
		//s->dump("static.txt");
		//mSceneMgr->showBoundingBoxes(true);
		mCamera->setLodBias(0.5);
        

    }

	void testManualBlend()
	{
		// create material
		MaterialPtr mat = MaterialManager::getSingleton().create("TestMat", 
			ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME);
		Pass * p = mat->getTechnique(0)->getPass(0);
		p->setLightingEnabled(false);
		p->createTextureUnitState("Dirt.jpg");
		TextureUnitState* t = p->createTextureUnitState("PoolFloorLightingMap.png");
		t->setColourOperationEx(LBX_BLEND_MANUAL, LBS_TEXTURE, LBS_CURRENT, 
			ColourValue::White, ColourValue::White, 0.75);

		Entity *planeEnt = mSceneMgr->createEntity("Plane", SceneManager::PT_PLANE);
		mSceneMgr->getRootSceneNode()->createChildSceneNode()->attachObject(planeEnt);
		planeEnt->setMaterialName("TestManual");



	}

	void testProjectSphere()
	{
		mSceneMgr->setAmbientLight(ColourValue::White);

		
		Plane plane;
		plane.normal = Vector3::UNIT_Y;
		plane.d = 0;
		MeshManager::getSingleton().createPlane("Myplane",
			ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME, plane,
			4500,4500,10,10,true,1,5,5,Vector3::UNIT_Z);
		Entity* pPlaneEnt = mSceneMgr->createEntity( "plane", "Myplane" );
		pPlaneEnt->setMaterialName("Examples/GrassFloor");
		pPlaneEnt->setCastShadows(false);
		mSceneMgr->getRootSceneNode()->createChildSceneNode()->attachObject(pPlaneEnt);

		projectionSphere = new Sphere(Vector3(0, 30.0, 0), 10.0);

		ManualObject* debugSphere = mSceneMgr->createManualObject("debugSphere");
		debugSphere->begin("BaseWhiteNoLighting", RenderOperation::OT_LINE_STRIP);
		for (int i = 0; i <= 20; ++i)
		{
			Vector3 basePos(projectionSphere->getRadius(), 0, 0);
			Quaternion quat;
			quat.FromAngleAxis(Radian(((float)i/(float)20)*Math::TWO_PI), Vector3::UNIT_Y);
			basePos = quat * basePos;
			debugSphere->position(basePos);
		}
		for (int i = 0; i <= 20; ++i)
		{
			Vector3 basePos(projectionSphere->getRadius(), 0, 0);
			Quaternion quat;
			quat.FromAngleAxis(Radian(((float)i/(float)20)*Math::TWO_PI), Vector3::UNIT_Z);
			basePos = quat * basePos;
			debugSphere->position(basePos);
		}
		debugSphere->end();

		mSceneMgr->getRootSceneNode()->createChildSceneNode(Vector3(0,30,0))->attachObject(debugSphere);

		scissorRect = mSceneMgr->createManualObject("scissorrect");
		scissorRect->setUseIdentityProjection(true);
		scissorRect->setUseIdentityView(true);
		AxisAlignedBox aabb;
		aabb.setInfinite();
		scissorRect->setBoundingBox(aabb);
		scissorRect->begin("BaseWhiteNoLighting", RenderOperation::OT_LINE_STRIP);
		scissorRect->position(Vector3::ZERO);
		scissorRect->position(Vector3::ZERO);
		scissorRect->position(Vector3::ZERO);
		scissorRect->position(Vector3::ZERO);
		scissorRect->position(Vector3::ZERO);
		scissorRect->end();
		mSceneMgr->getRootSceneNode()->createChildSceneNode()->attachObject(scissorRect);




	}

	void testBug()
	{
		/** Bren's problem

		Ogre::Mesh* mesh = Ogre::MeshManager::getSingleton().load("male_civ_head.mesh", ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME).getPointer();
		assert(mesh);
		Ogre::PoseList pose_list = mesh->getPoseList();
		unsigned int num_subs = mesh->getNumSubMeshes();

		int cur_pose_index = 0;
		Animation* anim = mesh->createAnimation(PoseAnimationStateName, (Real)NUM_HEAD_POSES);
		for (unsigned int cur_sub = 1; cur_sub <= num_subs; ++cur_sub)
		{
			Ogre::VertexAnimationTrack* track = anim->createVertexTrack(cur_sub, VAT_POSE);

			for (int cur_pose = 0; cur_pose < NUM_HEAD_POSES; ++cur_pose)
			{
				Ogre::VertexPoseKeyFrame* key = track->createVertexPoseKeyFrame((Real)cur_pose);

				bool done = false;

				for (unsigned int cur_key = 0; cur_key < NUM_HEAD_POSES && !done; ++cur_key)
				{
					if (pose_list[cur_key]->getName().compare(HeadPoses[cur_pose]) == 0 &&
						pose_list[cur_key]->getTarget() == cur_sub - 1)
					{
						key->addPoseReference(cur_pose_index, 1.f);
						++cur_pose_index;
						done = true;
					}
				}
			}          
		}

		Entity* ent = mSceneMgr->createEntity("1", mesh->getName());
		num_subs = ent->getNumSubEntities();
		SubEntity* mStump;
		for (int i = 0; i < num_subs; ++i)
		{
			Ogre::SubEntity* sub_ent = ent->getSubEntity(i);
			assert(sub_ent);
			
			if (sub_ent->getMaterialName().compare(0, strlen("male_civ/neckstump_"), "male_civ/neckstump_") == 0)
				mStump = sub_ent;
		}

		assert(mStump && "Couldn't find head stump sub entity!");

		mStump->setVisible(false);

		AnimationState* animState = ent->getAnimationState(PoseAnimationStateName);
		animState->setLoop(false);                            // else mTimePos becomes undefined?
		animState->setEnabled(true);
		animState->setTimePosition((Real)2);

		*/
	
		Entity* ent = mSceneMgr->createEntity("test", "fs_raiden03b.mesh");
		mSceneMgr->getRootSceneNode()->createChildSceneNode()->attachObject(ent);
		mAnimState = ent->getAnimationState("Default");
		mAnimState->setEnabled(true);

	}

	void testMaterialSerializer()
	{
		MaterialSerializer ser;

		// simple material
		MaterialPtr m = MaterialManager::getSingleton().getByName("Examples/EnvMappedRustySteel");
		ser.queueForExport(m);

		// scheme-based but otherwise simple material
		m = MaterialManager::getSingleton().getByName("Examples/MorningSkyBox");
		ser.queueForExport(m);

		// fairly simple shader, with custom param & default params
		m = MaterialManager::getSingleton().getByName("Examples/CelShading");
		ser.queueForExport(m);

		// More complex shader
		m = MaterialManager::getSingleton().getByName("Examples/BumpMapping/SingleLight");
		ser.queueForExport(m);

		// more complex shader, with light iteration
		m = MaterialManager::getSingleton().getByName("Examples/BumpMapping/MultiLight");
		ser.queueForExport(m);

		// With a unified program
		m = MaterialManager::getSingleton().getByName("jaiqua");
		ser.queueForExport(m);


		// export
		ser.exportQueued("testexport.material", true);

		


	}

	void testTransparencyMipMaps()
	{
		MaterialPtr mat = MaterialManager::getSingleton().create("test", 
			ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME);
		// known png with alpha
		Pass* pass = mat->getTechnique(0)->getPass(0);
		pass->createTextureUnitState("ogretext.png");
		pass->setSceneBlending(SBT_TRANSPARENT_ALPHA);
		// alpha blend
		pass->setDepthWriteEnabled(false);

		// alpha reject
		//pass->setDepthWriteEnabled(true);
		//pass->setAlphaRejectSettings(CMPF_LESS, 128);

		// Define a floor plane mesh
		Plane p;
		p.normal = Vector3::UNIT_Y;
		p.d = 200;
		MeshManager::getSingleton().createPlane("FloorPlane",
			ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME,
			p,2000,2000,1,1,true,1,5,5,Vector3::UNIT_Z);

		// Create an entity (the floor)
		Entity* ent = mSceneMgr->createEntity("floor", "FloorPlane");
		ent->setMaterialName("test");
		mSceneMgr->getRootSceneNode()->createChildSceneNode()->attachObject(ent);

		mSceneMgr->setSkyDome(true, "Examples/CloudySky", 5, 8);
		mSceneMgr->setAmbientLight(ColourValue::White);


		{
		
		Real alphaLevel = 0.5f;
		MaterialPtr alphamat = MaterialManager::getSingleton().create("testy", 
			ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME);
		Pass* pass = alphamat->getTechnique(0)->getPass(0);
		pass->setSceneBlending(SBT_TRANSPARENT_ALPHA);
		pass->setDepthWriteEnabled(false);
		TextureUnitState* t = pass->createTextureUnitState();
		t->setAlphaOperation(LBX_SOURCE1, LBS_MANUAL, LBS_CURRENT, alphaLevel);

		ent = mSceneMgr->createEntity("asd", "ogrehead.mesh");
		ent->setMaterialName("testy");
		mSceneMgr->getRootSceneNode()->createChildSceneNode()->attachObject(ent);

		}
		
	}

    void testCthNewBlending(void)
    {
        // Set ambient light
        mSceneMgr->setAmbientLight(ColourValue(0.5, 0.5, 0.5));

        // Create a point light
        Light* l = mSceneMgr->createLight("MainLight");
        l->setType(Light::LT_DIRECTIONAL);
        l->setDirection(-Vector3::UNIT_Y);

        // Accept default settings: point light, white diffuse, just set position
        // NB I could attach the light to a SceneNode if I wanted it to move automatically with
        //  other objects, but I don't
        //l->setPosition(20,80,50);


        Entity *ent = mSceneMgr->createEntity("head", "ogrehead_2.mesh");

        // Add entity to the root scene node
        mRootNode = mSceneMgr->getRootSceneNode();
        static_cast<SceneNode*>(mRootNode->createChild())->attachObject(ent);

        mTestNode[0] = static_cast<SceneNode*>(
            mRootNode->createChild("TestNode", Vector3(100,0,0)));
        ent = mSceneMgr->createEntity("head2", "ogrehead.mesh");
        mTestNode[0]->attachObject(ent);

        mTestNode[0]->attachObject(l);
        

        // Create a skydome
        mSceneMgr->setSkyDome(true, "Examples/CloudySky", 5, 8);

        // Define a floor plane mesh
        Plane p;
        p.normal = Vector3::UNIT_Y;
        p.d = 200;
        MeshManager::getSingleton().createPlane("FloorPlane",
			ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME,
			p,2000,2000,1,1,true,1,5,5,Vector3::UNIT_Z);

        // Create an entity (the floor)
        ent = mSceneMgr->createEntity("floor", "FloorPlane");
        ent->setMaterialName("Block/Material1");

        mRootNode->attachObject(ent);

        mCamera->setPosition(0,0,200);
        mCamera->setDirection(0,0,-1);

        //mSceneMgr->setDisplaySceneNodes(true);

    }

    void testMatrices(void)
    {
        mCamera->setPosition(0,0,500);
        mCamera->lookAt(0,0,0);
        const Matrix4& view = mCamera->getViewMatrix();
        const Matrix4& proj = mCamera->getProjectionMatrix();

        Matrix4 viewproj = proj * view;

        Vector3 point3d(100,100,0);

        Vector3 projPoint = viewproj * point3d;

        point3d = Vector3(100,100,400);
        projPoint = viewproj * point3d;
    }
    void testBasicPlane()
    {
        /*
        // Create a light
        Light* l = mSceneMgr->createLight("MainLight");
        // Accept default settings: point light, white diffuse, just set position
        // NB I could attach the light to a SceneNode if I wanted it to move automatically with
        //  other objects, but I don't
        l->setPosition(20,80,50);
        */

        // Create a point light
        Light* l = mSceneMgr->createLight("MainLight");
        l->setType(Light::LT_DIRECTIONAL);
        l->setDirection(-Vector3::UNIT_Y);
        Entity *ent;

        // Define a floor plane mesh
        Plane p;
        p.normal = Vector3::UNIT_Y;
        p.d = 200;
        MeshManager::getSingleton().createPlane("FloorPlane",
			ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME,
			p,2000,2000,1,1,true,1,5,5,Vector3::UNIT_Z);

        // Create an entity (the floor)
        ent = mSceneMgr->createEntity("floor", "FloorPlane");
        ent->setMaterialName("Examples/RustySteel");

        mSceneMgr->getRootSceneNode()->attachObject(ent);

        Entity* sphereEnt = mSceneMgr->createEntity("ogre", "ogrehead.mesh");
		
		mRootNode = mSceneMgr->getRootSceneNode();
        SceneNode* node = mSceneMgr->createSceneNode();
        node->attachObject(sphereEnt);
        mRootNode->addChild(node);

    }

    void testAlpha()
    {
        /*
        // Create a light
        Light* l = mSceneMgr->createLight("MainLight");
        // Accept default settings: point light, white diffuse, just set position
        // NB I could attach the light to a SceneNode if I wanted it to move automatically with
        //  other objects, but I don't
        l->setPosition(20,80,50);
        */

        // Create a point light
        Light* l = mSceneMgr->createLight("MainLight");
        l->setType(Light::LT_DIRECTIONAL);
        l->setDirection(-Vector3::UNIT_Y);
        Entity *ent;

        // Define a floor plane mesh
        Plane p;
        p.normal = Vector3::UNIT_Y;
        p.d = 200;
        MeshManager::getSingleton().createPlane("FloorPlane",
			ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME,
			p,2000,2000,1,1,true,1,5,5,Vector3::UNIT_Z);

        p.normal = Vector3::UNIT_Z;
        p.d = 200;
        MeshManager::getSingleton().createPlane("WallPlane",
			ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME,
			p,2000,2000,1,1,true,1,5,5,Vector3::UNIT_Y);

        // Create an entity (the floor)
        ent = mSceneMgr->createEntity("floor", "FloorPlane");
        ent->setMaterialName("Core/StatsBlockBorder/Up");

        mSceneMgr->getRootSceneNode()->attachObject(ent);

        ent = mSceneMgr->createEntity("wall", "WallPlane");
        ent->setMaterialName("Core/StatsBlockBorder/Up");

        mSceneMgr->getRootSceneNode()->attachObject(ent);


        Entity* sphereEnt = mSceneMgr->createEntity("ogre", "ogrehead.mesh");
		
		mRootNode = mSceneMgr->getRootSceneNode();
        SceneNode* node = mSceneMgr->createSceneNode();
        node->attachObject(sphereEnt);
        mRootNode->addChild(node);

        mSceneMgr->showBoundingBoxes(true);

    }
    void testBsp()
    {
        // Load Quake3 locations from a file
        ConfigFile cf;

        cf.load("quake3settings.cfg");

        String quakePk3 = cf.getSetting("Pak0Location");
        String quakeLevel = cf.getSetting("Map");

		ResourceGroupManager::getSingleton().addResourceLocation(quakePk3, "Zip");


        // Load world geometry
        mSceneMgr->setWorldGeometry(quakeLevel);

        // modify camera for close work
        mCamera->setNearClipDistance(4);
        mCamera->setFarClipDistance(4000);

        // Also change position, and set Quake-type orientation
        // Get random player start point
        ViewPoint vp = mSceneMgr->getSuggestedViewpoint(true);
        mCamera->setPosition(vp.position);
        mCamera->pitch(Degree(90)); // Quake uses X/Y horizon, Z up
        mCamera->rotate(vp.orientation);
        // Don't yaw along variable axis, causes leaning
        mCamera->setFixedYawAxis(true, Vector3::UNIT_Z);

    }

    void testAnimation()
    {
        Light* l = mSceneMgr->createLight("MainLight");
        l->setPosition(200,110,0);
        l->setType(Light::LT_POINT);
        Entity *ent;

        mSceneMgr->setAmbientLight(ColourValue(0.5, 0.5, 0.4));

        // Create an entity (the plant)
        ent = mSceneMgr->createEntity("1", "skeletonandpose.mesh");

        SceneNode* node = static_cast<SceneNode*>(mSceneMgr->getRootSceneNode()->createChild(Vector3(-50,0,0)));
        node->attachObject(ent);
        node->scale(2,2,2);

        mAnimState = ent->getAnimationState("pose2_Clip");
        mAnimState->setEnabled(true);

        mWindow->getViewport(0)->setBackgroundColour(ColourValue(1,0,0));


    }

	void testAnimationBlend()
	{
		Light* l = mSceneMgr->createLight("MainLight");
		l->setPosition(200,110,0);
		l->setType(Light::LT_POINT);
		Entity *ent;

		mWindow->getViewport(0)->setBackgroundColour(ColourValue::Red);

		mSceneMgr->setAmbientLight(ColourValue(0.5, 0.5, 0.4));

		// Create an entity (the plant)
		ent = mSceneMgr->createEntity("1", "sticky.mesh");

		SceneNode* node = mSceneMgr->getRootSceneNode()->createChildSceneNode();
		node->attachObject(ent);
		node->scale(2,2,2);

		//mAnimState = ent->getAnimationState("triangle");
		//mAnimState->setEnabled(true);

		animBlender = new AnimationBlender(ent);
		animBlendTarget[0] = "still";
		animBlendTarget[1] = "triangle";
		animBlendTargetIndex = 1;
		animBlender->init(animBlendTarget[0]);
		animBlender->blend(animBlendTarget[1], AnimationBlender::BlendWhileAnimating, 10, false);

		mCamera->setPosition(-50,0,0);
		mCamera->lookAt(0,0,0);


	}

    void testGpuPrograms(void)
    {
        // Set ambient light
        mSceneMgr->setAmbientLight(ColourValue(0.5, 0.5, 0.5));

        // Create a point light
        Light* l = mSceneMgr->createLight("MainLight");
        l->setType(Light::LT_DIRECTIONAL);
        l->setDirection(-Vector3::UNIT_Y);

        Entity* pEnt = mSceneMgr->createEntity( "1", "robot.mesh" );
        mSceneMgr->getRootSceneNode()->createChildSceneNode()->attachObject(pEnt);

        mTestNode[0] = mSceneMgr->getRootSceneNode()->createChildSceneNode();
            
        pEnt = mSceneMgr->createEntity( "2", "ogrehead.mesh" );
        mTestNode[0]->attachObject( pEnt );
        mTestNode[0]->translate(100,0,0);

        // Rejig the ogre skin material
        // Load the programs first

        pEnt->getSubEntity(1)->setMaterialName("SimpleTest");

    }
    void testProjection(void)
    {
        // Set ambient light
        mSceneMgr->setAmbientLight(ColourValue(0.5, 0.5, 0.5));

        // Create a point light
        Light* l = mSceneMgr->createLight("MainLight");
        l->setType(Light::LT_DIRECTIONAL);
        l->setDirection(-Vector3::UNIT_Y);

        Entity* pEnt;
        //pEnt = mSceneMgr->createEntity( "1", "knot.mesh" );
        //mSceneMgr->getRootSceneNode()->createChildSceneNode(Vector3(-30,0,-50))->attachObject(pEnt);
        //pEnt->setMaterialName("Examples/OgreLogo");

        // Define a floor plane mesh
        Plane p;
        p.normal = Vector3::UNIT_Z;
        p.d = 200;
        MeshManager::getSingleton().createPlane("WallPlane",
			ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME,
			p,1500,1500,1,1,true,1,5,5,Vector3::UNIT_Y);
        pEnt = mSceneMgr->createEntity( "5", "WallPlane" );
        pEnt->setMaterialName("Examples/OgreLogo");
        mSceneMgr->getRootSceneNode()->createChildSceneNode()->attachObject(pEnt);


        mTestNode[0] = mSceneMgr->getRootSceneNode()->createChildSceneNode();
            
        //pEnt = mSceneMgr->createEntity( "2", "ogrehead.mesh" );
        //mTestNode[0]->attachObject( pEnt );
        mTestNode[0]->translate(0, 0, 750);

        frustum = new Frustum();
        frustum->setVisible(true);
        frustum->setFarClipDistance(5000);
        frustum->setNearClipDistance(200);
        frustum->setAspectRatio(1);
        //frustum->setProjectionType(PT_ORTHOGRAPHIC);
        mTestNode[0]->attachObject(frustum);

        // Hook the frustum up to the material
        MaterialPtr mat = MaterialManager::getSingleton().getByName("Examples/OgreLogo");
        TextureUnitState *t = mat->getTechnique(0)->getPass(0)->getTextureUnitState(0);
        t->setProjectiveTexturing(true, frustum);
        //t->setTextureAddressingMode(TextureUnitState::TAM_CLAMP);

    }

    void testMultiViewports(void)
    {
        // Set ambient light
        mSceneMgr->setAmbientLight(ColourValue(0.5, 0.5, 0.5));

        // Create a point light
        Light* l = mSceneMgr->createLight("MainLight");
        l->setType(Light::LT_DIRECTIONAL);
        l->setDirection(-Vector3::UNIT_Y);

        Entity* pEnt = mSceneMgr->createEntity( "1", "knot.mesh" );
        mSceneMgr->getRootSceneNode()->createChildSceneNode(Vector3(-30,0,-50))->attachObject(pEnt);

        mTestNode[0] = mSceneMgr->getRootSceneNode()->createChildSceneNode();
            
        pEnt = mSceneMgr->createEntity( "2", "ogrehead.mesh" );
        mTestNode[0]->attachObject( pEnt );
        mTestNode[0]->translate(0, 0, 200);

        frustum = new Frustum();
        //frustum->setVisible(true);
        frustum->setFarClipDistance(5000);
        frustum->setNearClipDistance(100);
        mTestNode[0]->attachObject(frustum);

        Viewport* vp = mRoot->getAutoCreatedWindow()->addViewport(mCamera, 1, 0.5, 0.5, 0.5, 0.5);
        vp->setOverlaysEnabled(false);
        vp->setBackgroundColour(ColourValue(1,0,0));

    }


    // Just override the mandatory create scene method
    void testSceneNodeTracking(void)
    {

        // Set ambient light
        mSceneMgr->setAmbientLight(ColourValue(0.2, 0.2, 0.2));

        // Create a skydome
        mSceneMgr->setSkyDome(true, "Examples/CloudySky", 5, 8);

        // Create a light
        Light* l = mSceneMgr->createLight("MainLight");
        // Accept default settings: point light, white diffuse, just set position
        // NB I could attach the light to a SceneNode if I wanted it to move automatically with
        //  other objects, but I don't
        l->setPosition(20,80,50);

        Entity *ent;

        // Define a floor plane mesh
        Plane p;
        p.normal = Vector3::UNIT_Y;
        p.d = 200;
        MeshManager::getSingleton().createPlane("FloorPlane",
			ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME,
			p,200000,200000,20,20,true,1,50,50,Vector3::UNIT_Z);

        // Create an entity (the floor)
        ent = mSceneMgr->createEntity("floor", "FloorPlane");
        ent->setMaterialName("Examples/RustySteel");
        // Attach to child of root node, better for culling (otherwise bounds are the combination of the 2)
        mSceneMgr->getRootSceneNode()->createChildSceneNode()->attachObject(ent);

        // Add a head, give it it's own node
        SceneNode* headNode = mSceneMgr->getRootSceneNode()->createChildSceneNode();
        ent = mSceneMgr->createEntity("head", "ogrehead.mesh");
        headNode->attachObject(ent);

        // Add another head, give it it's own node
        SceneNode* headNode2 = mSceneMgr->getRootSceneNode()->createChildSceneNode();
        ent = mSceneMgr->createEntity("head2", "ogrehead.mesh");
        headNode2->attachObject(ent);

        // Make sure the head node tracks the root
        headNode->setAutoTracking(true, headNode2, Vector3::UNIT_Z);
        //headNode->setFixedYawAxis(true);

        // Create the camera node & attach camera
        //SceneNode* camNode = mSceneMgr->getRootSceneNode()->createChildSceneNode();
        //camNode->attachObject(mCamera);

        // set up spline animation of node
        Animation* anim = mSceneMgr->createAnimation("CameraTrack", 10);
        // Spline it for nice curves
        anim->setInterpolationMode(Animation::IM_SPLINE);
        // Create a track to animate the head's node
        NodeAnimationTrack* track = anim->createNodeTrack(0, headNode);
        // Setup keyframes
        TransformKeyFrame* key = track->createNodeKeyFrame(0); // startposition
        key = track->createNodeKeyFrame(2.5);
        key->setTranslate(Vector3(500,500,-1000));
        key = track->createNodeKeyFrame(5);
        key->setTranslate(Vector3(-1500,1000,-600));
        key = track->createNodeKeyFrame(7.5);
        key->setTranslate(Vector3(0,-100,0));
        key = track->createNodeKeyFrame(10);
        key->setTranslate(Vector3(0,0,0));
        // Create a track to animate the second head's node
        track = anim->createNodeTrack(1, headNode2);
        // Setup keyframes
        key = track->createNodeKeyFrame(0); // startposition
        key = track->createNodeKeyFrame(2.5);
        key->setTranslate(Vector3(-500,600,-100));
        key = track->createNodeKeyFrame(5);
        key->setTranslate(Vector3(800,200,-600));
        key = track->createNodeKeyFrame(7.5);
        key->setTranslate(Vector3(200,-1000,0));
        key = track->createNodeKeyFrame(10);
        key->setTranslate(Vector3(30,70,110));
        // Create a new animation state to track this
        mAnimState = mSceneMgr->createAnimationState("CameraTrack");
        mAnimState->setEnabled(true);

        // Put in a bit of fog for the hell of it
        mSceneMgr->setFog(FOG_EXP, ColourValue::White, 0.0002);

    }



    void testDistortion(void)
    {
        theCam = mCamera;
        // Set ambient light
        mSceneMgr->setAmbientLight(ColourValue(0.5, 0.5, 0.5));

        // Create a point light
        Light* l = mSceneMgr->createLight("MainLight");
        l->setType(Light::LT_DIRECTIONAL);
        l->setDirection(-Vector3::UNIT_Y);

        Entity* pEnt;

        RenderTexture* rttTex = mRoot->getRenderSystem()->createRenderTexture( "Refraction", 512, 512 );
        {
            Viewport *v = rttTex->addViewport( mCamera );
            MaterialPtr mat = MaterialManager::getSingleton().getByName("Examples/FresnelReflectionRefraction");
            mat->getTechnique(0)->getPass(0)->getTextureUnitState(2)->setTextureName("Refraction");
            v->setOverlaysEnabled(false);
            rttTex->addListener(&mRefractionListener);
        }

        rttTex = mRoot->getRenderSystem()->createRenderTexture( "Reflection", 512, 512 );
        {
            Viewport *v = rttTex->addViewport( mCamera );
            MaterialPtr mat = MaterialManager::getSingleton().getByName("Examples/FresnelReflectionRefraction");
            mat->getTechnique(0)->getPass(0)->getTextureUnitState(1)->setTextureName("Reflection");
            v->setOverlaysEnabled(false);
            rttTex->addListener(&mReflectionListener);
        }
        // Define a floor plane mesh
        Plane p;
        p.normal = Vector3::UNIT_Y;
        p.d = 100;
        MeshManager::getSingleton().createPlane("WallPlane",
			ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME,
			p,1500,1500,10,10,true,1,5,5,Vector3::UNIT_Z);
        pPlaneEnt = mSceneMgr->createEntity( "5", "WallPlane" );
        pPlaneEnt->setMaterialName("Examples/FresnelReflectionRefraction");
        mSceneMgr->getRootSceneNode()->createChildSceneNode()->attachObject(pPlaneEnt);

        
        mSceneMgr->setSkyBox(true, "Examples/CloudyNoonSkyBox");

        mTestNode[0] = mSceneMgr->getRootSceneNode()->createChildSceneNode();
        int i;
        for (i = 0; i < 10; ++i)
        {
            pEnt = mSceneMgr->createEntity( "ogre" + StringConverter::toString(i), "ogrehead.mesh" );
            mSceneMgr->getRootSceneNode()->createChildSceneNode(Vector3(i*100 - 500, -75, 0))->attachObject(pEnt);
            pEnt = mSceneMgr->createEntity( "knot" + StringConverter::toString(i), "knot.mesh" );
            mSceneMgr->getRootSceneNode()->createChildSceneNode(Vector3(i*100 - 500, 140, 0))->attachObject(pEnt);
        }



    }


    void testEdgeBuilderSingleIndexBufSingleVertexBuf()
    {
        /* This tests the edge builders ability to find shared edges in the simple case
           of a single index buffer referencing a single vertex buffer
        */
        VertexData vd;
        IndexData id;
        // Test pyramid
        vd.vertexCount = 4;
        vd.vertexStart = 0;
        vd.vertexDeclaration = HardwareBufferManager::getSingleton().createVertexDeclaration();
        vd.vertexDeclaration->addElement(0, 0, VET_FLOAT3, VES_POSITION);
        HardwareVertexBufferSharedPtr vbuf = HardwareBufferManager::getSingleton().createVertexBuffer(sizeof(float)*3, 4, HardwareBuffer::HBU_STATIC,true);
        vd.vertexBufferBinding->setBinding(0, vbuf);
        float* pFloat = static_cast<float*>(vbuf->lock(HardwareBuffer::HBL_DISCARD));
        *pFloat++ = 0  ; *pFloat++ = 0  ; *pFloat++ = 0  ;
        *pFloat++ = 50 ; *pFloat++ = 0  ; *pFloat++ = 0  ;
        *pFloat++ = 0  ; *pFloat++ = 100; *pFloat++ = 0  ;
        *pFloat++ = 0  ; *pFloat++ = 0  ; *pFloat++ = -50;
        vbuf->unlock();
            
        id.indexBuffer = HardwareBufferManager::getSingleton().createIndexBuffer(
            HardwareIndexBuffer::IT_16BIT, 12, HardwareBuffer::HBU_STATIC, true);
        id.indexCount = 12;
        id.indexStart = 0;
        unsigned short* pIdx = static_cast<unsigned short*>(id.indexBuffer->lock(HardwareBuffer::HBL_DISCARD));
        *pIdx++ = 0; *pIdx++ = 1; *pIdx++ = 2;
        *pIdx++ = 0; *pIdx++ = 2; *pIdx++ = 3;
        *pIdx++ = 1; *pIdx++ = 3; *pIdx++ = 2;
        *pIdx++ = 0; *pIdx++ = 3; *pIdx++ = 1;
        id.indexBuffer->unlock();

        EdgeListBuilder edgeBuilder;
        edgeBuilder.addVertexData(&vd);
        edgeBuilder.addIndexData(&id);
        EdgeData* edgeData = edgeBuilder.build();

        edgeData->log(LogManager::getSingleton().getDefaultLog());

        delete edgeData;


    }

    void testEdgeBuilderMultiIndexBufSingleVertexBuf()
    {
        /* This tests the edge builders ability to find shared edges when there are
           multiple index sets (submeshes) using a single vertex buffer.
        */
        VertexData vd;
        IndexData id[4];
        // Test pyramid
        vd.vertexCount = 4;
        vd.vertexStart = 0;
        vd.vertexDeclaration = HardwareBufferManager::getSingleton().createVertexDeclaration();
        vd.vertexDeclaration->addElement(0, 0, VET_FLOAT3, VES_POSITION);
        HardwareVertexBufferSharedPtr vbuf = HardwareBufferManager::getSingleton().createVertexBuffer(sizeof(float)*3, 4, HardwareBuffer::HBU_STATIC,true);
        vd.vertexBufferBinding->setBinding(0, vbuf);
        float* pFloat = static_cast<float*>(vbuf->lock(HardwareBuffer::HBL_DISCARD));
        *pFloat++ = 0  ; *pFloat++ = 0  ; *pFloat++ = 0  ;
        *pFloat++ = 50 ; *pFloat++ = 0  ; *pFloat++ = 0  ;
        *pFloat++ = 0  ; *pFloat++ = 100; *pFloat++ = 0  ;
        *pFloat++ = 0  ; *pFloat++ = 0  ; *pFloat++ = -50;
        vbuf->unlock();
            
        id[0].indexBuffer = HardwareBufferManager::getSingleton().createIndexBuffer(
            HardwareIndexBuffer::IT_16BIT, 3, HardwareBuffer::HBU_STATIC, true);
        id[0].indexCount = 3;
        id[0].indexStart = 0;
        unsigned short* pIdx = static_cast<unsigned short*>(id[0].indexBuffer->lock(HardwareBuffer::HBL_DISCARD));
        *pIdx++ = 0; *pIdx++ = 1; *pIdx++ = 2;
        id[0].indexBuffer->unlock();

        id[1].indexBuffer = HardwareBufferManager::getSingleton().createIndexBuffer(
            HardwareIndexBuffer::IT_16BIT, 3, HardwareBuffer::HBU_STATIC, true);
        id[1].indexCount = 3;
        id[1].indexStart = 0;
        pIdx = static_cast<unsigned short*>(id[1].indexBuffer->lock(HardwareBuffer::HBL_DISCARD));
        *pIdx++ = 0; *pIdx++ = 2; *pIdx++ = 3;
        id[1].indexBuffer->unlock();

        id[2].indexBuffer = HardwareBufferManager::getSingleton().createIndexBuffer(
            HardwareIndexBuffer::IT_16BIT, 3, HardwareBuffer::HBU_STATIC, true);
        id[2].indexCount = 3;
        id[2].indexStart = 0;
        pIdx = static_cast<unsigned short*>(id[2].indexBuffer->lock(HardwareBuffer::HBL_DISCARD));
        *pIdx++ = 1; *pIdx++ = 3; *pIdx++ = 2;
        id[2].indexBuffer->unlock();

        id[3].indexBuffer = HardwareBufferManager::getSingleton().createIndexBuffer(
            HardwareIndexBuffer::IT_16BIT, 3, HardwareBuffer::HBU_STATIC, true);
        id[3].indexCount = 3;
        id[3].indexStart = 0;
        pIdx = static_cast<unsigned short*>(id[3].indexBuffer->lock(HardwareBuffer::HBL_DISCARD));
        *pIdx++ = 0; *pIdx++ = 3; *pIdx++ = 1;
        id[3].indexBuffer->unlock();

        EdgeListBuilder edgeBuilder;
        edgeBuilder.addVertexData(&vd);
        edgeBuilder.addIndexData(&id[0]);
        edgeBuilder.addIndexData(&id[1]);
        edgeBuilder.addIndexData(&id[2]);
        edgeBuilder.addIndexData(&id[3]);
        EdgeData* edgeData = edgeBuilder.build();

        edgeData->log(LogManager::getSingleton().getDefaultLog());

        delete edgeData;


    }


    void testEdgeBuilderMultiIndexBufMultiVertexBuf()
    {
        /* This tests the edge builders ability to find shared edges when there are
           both multiple index sets (submeshes) each using a different vertex buffer
           (not using shared geoemtry). 
        */

        VertexData vd[4];
        IndexData id[4];
        // Test pyramid
        vd[0].vertexCount = 3;
        vd[0].vertexStart = 0;
        vd[0].vertexDeclaration = HardwareBufferManager::getSingleton().createVertexDeclaration();
        vd[0].vertexDeclaration->addElement(0, 0, VET_FLOAT3, VES_POSITION);
        HardwareVertexBufferSharedPtr vbuf = HardwareBufferManager::getSingleton().createVertexBuffer(sizeof(float)*3, 3, HardwareBuffer::HBU_STATIC,true);
        vd[0].vertexBufferBinding->setBinding(0, vbuf);
        float* pFloat = static_cast<float*>(vbuf->lock(HardwareBuffer::HBL_DISCARD));
        *pFloat++ = 0  ; *pFloat++ = 0  ; *pFloat++ = 0  ;
        *pFloat++ = 50 ; *pFloat++ = 0  ; *pFloat++ = 0  ;
        *pFloat++ = 0  ; *pFloat++ = 100; *pFloat++ = 0  ;
        vbuf->unlock();

        vd[1].vertexCount = 3;
        vd[1].vertexStart = 0;
        vd[1].vertexDeclaration = HardwareBufferManager::getSingleton().createVertexDeclaration();
        vd[1].vertexDeclaration->addElement(0, 0, VET_FLOAT3, VES_POSITION);
        vbuf = HardwareBufferManager::getSingleton().createVertexBuffer(sizeof(float)*3, 3, HardwareBuffer::HBU_STATIC,true);
        vd[1].vertexBufferBinding->setBinding(0, vbuf);
        pFloat = static_cast<float*>(vbuf->lock(HardwareBuffer::HBL_DISCARD));
        *pFloat++ = 0  ; *pFloat++ = 0  ; *pFloat++ = 0  ;
        *pFloat++ = 0  ; *pFloat++ = 100; *pFloat++ = 0  ;
        *pFloat++ = 0  ; *pFloat++ = 0  ; *pFloat++ = -50;
        vbuf->unlock();

        vd[2].vertexCount = 3;
        vd[2].vertexStart = 0;
        vd[2].vertexDeclaration = HardwareBufferManager::getSingleton().createVertexDeclaration();
        vd[2].vertexDeclaration->addElement(0, 0, VET_FLOAT3, VES_POSITION);
        vbuf = HardwareBufferManager::getSingleton().createVertexBuffer(sizeof(float)*3, 3, HardwareBuffer::HBU_STATIC,true);
        vd[2].vertexBufferBinding->setBinding(0, vbuf);
        pFloat = static_cast<float*>(vbuf->lock(HardwareBuffer::HBL_DISCARD));
        *pFloat++ = 50 ; *pFloat++ = 0  ; *pFloat++ = 0  ;
        *pFloat++ = 0  ; *pFloat++ = 100; *pFloat++ = 0  ;
        *pFloat++ = 0  ; *pFloat++ = 0  ; *pFloat++ = -50;
        vbuf->unlock();
            
        vd[3].vertexCount = 3;
        vd[3].vertexStart = 0;
        vd[3].vertexDeclaration = HardwareBufferManager::getSingleton().createVertexDeclaration();
        vd[3].vertexDeclaration->addElement(0, 0, VET_FLOAT3, VES_POSITION);
        vbuf = HardwareBufferManager::getSingleton().createVertexBuffer(sizeof(float)*3, 3, HardwareBuffer::HBU_STATIC,true);
        vd[3].vertexBufferBinding->setBinding(0, vbuf);
        pFloat = static_cast<float*>(vbuf->lock(HardwareBuffer::HBL_DISCARD));
        *pFloat++ = 0  ; *pFloat++ = 0  ; *pFloat++ = 0  ;
        *pFloat++ = 50 ; *pFloat++ = 0  ; *pFloat++ = 0  ;
        *pFloat++ = 0  ; *pFloat++ = 0  ; *pFloat++ = -50;
        vbuf->unlock();

        id[0].indexBuffer = HardwareBufferManager::getSingleton().createIndexBuffer(
            HardwareIndexBuffer::IT_16BIT, 3, HardwareBuffer::HBU_STATIC, true);
        id[0].indexCount = 3;
        id[0].indexStart = 0;
        unsigned short* pIdx = static_cast<unsigned short*>(id[0].indexBuffer->lock(HardwareBuffer::HBL_DISCARD));
        *pIdx++ = 0; *pIdx++ = 1; *pIdx++ = 2;
        id[0].indexBuffer->unlock();

        id[1].indexBuffer = HardwareBufferManager::getSingleton().createIndexBuffer(
            HardwareIndexBuffer::IT_16BIT, 3, HardwareBuffer::HBU_STATIC, true);
        id[1].indexCount = 3;
        id[1].indexStart = 0;
        pIdx = static_cast<unsigned short*>(id[1].indexBuffer->lock(HardwareBuffer::HBL_DISCARD));
        *pIdx++ = 0; *pIdx++ = 1; *pIdx++ = 2;
        id[1].indexBuffer->unlock();

        id[2].indexBuffer = HardwareBufferManager::getSingleton().createIndexBuffer(
            HardwareIndexBuffer::IT_16BIT, 3, HardwareBuffer::HBU_STATIC, true);
        id[2].indexCount = 3;
        id[2].indexStart = 0;
        pIdx = static_cast<unsigned short*>(id[2].indexBuffer->lock(HardwareBuffer::HBL_DISCARD));
        *pIdx++ = 0; *pIdx++ = 2; *pIdx++ = 1;
        id[2].indexBuffer->unlock();

        id[3].indexBuffer = HardwareBufferManager::getSingleton().createIndexBuffer(
            HardwareIndexBuffer::IT_16BIT, 3, HardwareBuffer::HBU_STATIC, true);
        id[3].indexCount = 3;
        id[3].indexStart = 0;
        pIdx = static_cast<unsigned short*>(id[3].indexBuffer->lock(HardwareBuffer::HBL_DISCARD));
        *pIdx++ = 0; *pIdx++ = 2; *pIdx++ = 1;
        id[3].indexBuffer->unlock();

        EdgeListBuilder edgeBuilder;
        edgeBuilder.addVertexData(&vd[0]);
        edgeBuilder.addVertexData(&vd[1]);
        edgeBuilder.addVertexData(&vd[2]);
        edgeBuilder.addVertexData(&vd[3]);
        edgeBuilder.addIndexData(&id[0], 0);
        edgeBuilder.addIndexData(&id[1], 1);
        edgeBuilder.addIndexData(&id[2], 2);
        edgeBuilder.addIndexData(&id[3], 3);
        EdgeData* edgeData = edgeBuilder.build();

        edgeData->log(LogManager::getSingleton().getDefaultLog());

        delete edgeData;


    }

    void testSkeletalAnimation()
    {
        // Set ambient light
        mSceneMgr->setAmbientLight(ColourValue(0.5, 0.5, 0.5));
        //mWindow->getViewport(0)->setBackgroundColour(ColourValue::White);



        Entity *ent = mSceneMgr->createEntity("robot", "test.mesh");
        // Uncomment the below to test software skinning
        //ent->setMaterialName("Examples/Rocky");
        // Add entity to the scene node
        mSceneMgr->getRootSceneNode()->createChildSceneNode()->attachObject(ent);
        mAnimState = ent->getAnimationState("Default");
        mAnimState->setEnabled(true);

        // Give it a little ambience with lights
        Light* l;
        l = mSceneMgr->createLight("BlueLight");
        l->setPosition(-200,-80,-100);
        l->setDiffuseColour(0.5, 0.5, 1.0);

        l = mSceneMgr->createLight("GreenLight");
        l->setPosition(0,0,-100);
        l->setDiffuseColour(0.5, 1.0, 0.5);

        // Position the camera
        mCamera->setPosition(100,50,100);
        mCamera->lookAt(-50,50,0);

        // Report whether hardware skinning is enabled or not
        Technique* t = ent->getSubEntity(0)->getMaterial()->getBestTechnique();
        Pass* p = t->getPass(0);
		OverlayElement* guiDbg = OverlayManager::getSingleton().getOverlayElement("Core/DebugText");
        if (p->hasVertexProgram() && 
            p->getVertexProgram()->isSkeletalAnimationIncluded())
        {
			guiDbg->setCaption("Hardware skinning is enabled");
        }
        else
        {
            guiDbg->setCaption("Software skinning is enabled");
        }


    }


    void testPrepareShadowVolume(void)
    {

        // Set ambient light
        mSceneMgr->setAmbientLight(ColourValue(0.5, 0.5, 0.5));

        // Create a point light
        Light* l = mSceneMgr->createLight("MainLight");
        l->setType(Light::LT_DIRECTIONAL);
        l->setDirection(-Vector3::UNIT_Y);

        mTestNode[0] = (SceneNode*)mSceneMgr->getRootSceneNode()->createChild();
            
        Entity* pEnt = mSceneMgr->createEntity( "1", "ogrehead.mesh" );
        mTestNode[0]->attachObject( pEnt );

        pEnt->getMesh()->prepareForShadowVolume();

    }

    void testWindowedViewportMode()
    {
        // Set ambient light
        mSceneMgr->setAmbientLight(ColourValue(0.5, 0.5, 0.5));

        // Create a point light
        Light* l = mSceneMgr->createLight("MainLight");
        l->setType(Light::LT_DIRECTIONAL);
        l->setDirection(-Vector3::UNIT_Y);

        mTestNode[0] = (SceneNode*)mSceneMgr->getRootSceneNode()->createChild();

        Entity* pEnt = mSceneMgr->createEntity( "1", "ogrehead.mesh" );
        mTestNode[0]->attachObject( pEnt );

        mCamera->setWindow(0,0,0.5,0.5);

    }
    void testSubEntityVisibility()
    {
        // Set ambient light
        mSceneMgr->setAmbientLight(ColourValue(0.5, 0.5, 0.5));

        // Create a point light
        Light* l = mSceneMgr->createLight("MainLight");
        l->setType(Light::LT_DIRECTIONAL);
        l->setDirection(-Vector3::UNIT_Y);

        mTestNode[0] = (SceneNode*)mSceneMgr->getRootSceneNode()->createChild();

        Entity* pEnt = mSceneMgr->createEntity( "1", "ogrehead.mesh" );
        mTestNode[0]->attachObject( pEnt );

        pEnt->getSubEntity(1)->setVisible(false);


    }

    void testAttachObjectsToBones()
    {
        Entity *ent;
        for (int i = 0; i < 12; ++i)
        {
            ent = mSceneMgr->createEntity("robot" + StringConverter::toString(i), "robot.mesh");
			if (false)//i % 2)
			{
				Entity* ent2 = mSceneMgr->createEntity("plane" + StringConverter::toString(i), "razor.mesh");
				ent->attachObjectToBone("Joint8", ent2);
			}
			else
			{
				ParticleSystem* psys = mSceneMgr->createParticleSystem("psys" + StringConverter::toString(i), "Examples/PurpleFountain");
				psys->getEmitter(0)->setTimeToLive(0.2);
				ent->attachObjectToBone("Joint15", psys);
			}
            // Add entity to the scene node
            mSceneMgr->getRootSceneNode()->createChildSceneNode(
                Vector3(0,0,(i*200)-(12*200/2)))->attachObject(ent);

			ent->getParentNode()->yaw(Degree(i * 45));
        }
        mAnimState = ent->getAnimationState("Walk");
        mAnimState->setEnabled(true);



        // Give it a little ambience with lights
        Light* l;
        l = mSceneMgr->createLight("BlueLight");
        l->setPosition(-200,-80,-100);
        l->setDiffuseColour(0.5, 0.5, 1.0);

        l = mSceneMgr->createLight("GreenLight");
        l->setPosition(0,0,-100);
        l->setDiffuseColour(0.5, 1.0, 0.5);

        // Position the camera
        mCamera->setPosition(100,50,100);
        mCamera->lookAt(-50,50,0);

        mSceneMgr->setAmbientLight(ColourValue(1,1,1,1));
        mSceneMgr->showBoundingBoxes(true);

    }
    void testOrtho()
    {
        // Set ambient light
        mSceneMgr->setAmbientLight(ColourValue(0.0, 0.0, 0.0));

        // Create a point light
        Light* l = mSceneMgr->createLight("MainLight");
        l->setPosition(800,600,0);

        mTestNode[0] = mSceneMgr->getRootSceneNode()->createChildSceneNode();
        mLightNode = mSceneMgr->getRootSceneNode()->createChildSceneNode();

        Entity* pEnt = mSceneMgr->createEntity( "3", "knot.mesh" );
        mTestNode[1] = mSceneMgr->getRootSceneNode()->createChildSceneNode(Vector3(-200, 0, -200));
        mTestNode[1]->attachObject( pEnt );

        pEnt = mSceneMgr->createEntity( "4", "knot.mesh" );
        mTestNode[2] = mSceneMgr->getRootSceneNode()->createChildSceneNode(Vector3(100, 0, 200));
        mTestNode[2]->attachObject( pEnt );


        mSceneMgr->setSkyBox(true, "Examples/CloudyNoonSkyBox");


        Plane plane;
        plane.normal = Vector3::UNIT_Y;
        plane.d = 100;
        MeshManager::getSingleton().createPlane("Myplane",
			ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME, plane,
            1500,1500,10,10,true,1,5,5,Vector3::UNIT_Z);
        Entity* pPlaneEnt = mSceneMgr->createEntity( "plane", "Myplane" );
        pPlaneEnt->setMaterialName("2 - Default");
        pPlaneEnt->setCastShadows(false);
        mSceneMgr->getRootSceneNode()->createChildSceneNode()->attachObject(pPlaneEnt);

        mCamera->setFixedYawAxis(false);
        mCamera->setProjectionType(PT_ORTHOGRAPHIC);
        mCamera->setPosition(0,10000,0);
        mCamera->lookAt(0,0,0);
        mCamera->setNearClipDistance(1000);

    }

	void testManualLOD()
	{
		MeshPtr msh1 = (MeshPtr)MeshManager::getSingleton().load("robot.mesh", 
			ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME);

		msh1->createManualLodLevel(200, "razor.mesh");
		msh1->createManualLodLevel(500, "sphere.mesh");

		Entity *ent;
		for (int i = 0; i < 5; ++i)
		{
			ent = mSceneMgr->createEntity("robot" + StringConverter::toString(i), "robot.mesh");
			// Add entity to the scene node
			mSceneMgr->getRootSceneNode()->createChildSceneNode(
				Vector3(0,0,(i*50)-(5*50/2)))->attachObject(ent);
		}
		mAnimState = ent->getAnimationState("Walk");
		mAnimState->setEnabled(true);



		// Give it a little ambience with lights
		Light* l;
		l = mSceneMgr->createLight("BlueLight");
		l->setPosition(-200,-80,-100);
		l->setDiffuseColour(0.5, 0.5, 1.0);

		l = mSceneMgr->createLight("GreenLight");
		l->setPosition(0,0,-100);
		l->setDiffuseColour(0.5, 1.0, 0.5);

		// Position the camera
		mCamera->setPosition(100,50,100);
		mCamera->lookAt(-50,50,0);

		mSceneMgr->setAmbientLight(ColourValue::White);

	}

	void testFallbackResourceGroup()
	{
		// Load all textures from new resource group "Test"
		ResourceGroupManager::getSingleton().removeResourceLocation("../../../Media/materials/textures");
		ResourceGroupManager::getSingleton().removeResourceLocation("../../../Media/models");
		ResourceGroupManager::getSingleton().createResourceGroup("Test");
		ResourceGroupManager::getSingleton().addResourceLocation("../../../Media/materials/textures", "FileSystem", "Test");
		ResourceGroupManager::getSingleton().addResourceLocation("../../../Media/models", "FileSystem", "Test");

		// Load a texture from default group (won't be found there, but should fall back)
		TextureManager::getSingleton().load("dirt01.jpg", ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME);

		ResourceGroupManager::getSingleton().unloadUnreferencedResourcesInGroup("Test");

		// Add a few robots for fun
		Entity *ent;
		for (int i = 0; i < 5; ++i)
		{
			ent = mSceneMgr->createEntity("robot" + StringConverter::toString(i), "robot.mesh");
			// Add entity to the scene node
			mSceneMgr->getRootSceneNode()->createChildSceneNode(
				Vector3(0,0,(i*50)-(5*50/2)))->attachObject(ent);
		}
		// Give it a little ambience with lights
		Light* l;
		l = mSceneMgr->createLight("BlueLight");
		l->setPosition(-200,-80,-100);
		l->setDiffuseColour(0.5, 0.5, 1.0);

		l = mSceneMgr->createLight("GreenLight");
		l->setPosition(0,0,-100);
		l->setDiffuseColour(0.5, 1.0, 0.5);

		// Position the camera
		mCamera->setPosition(100,50,100);
		mCamera->lookAt(-50,50,0);

	}

	void testGeneratedLOD()
	{
		MeshPtr msh1 = (MeshPtr)MeshManager::getSingleton().load("barrel.mesh", 
			ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME);

		msh1->removeLodLevels();

		Mesh::LodDistanceList lodList;
		lodList.push_back(50);
		lodList.push_back(100);
		lodList.push_back(150);
		lodList.push_back(200);
		lodList.push_back(250);
		lodList.push_back(300);

		msh1->generateLodLevels(lodList, ProgressiveMesh::VRQ_PROPORTIONAL, 0.3);

		Entity *ent;
		for (int i = 0; i < 1; ++i)
		{
			ent = mSceneMgr->createEntity("tst" + StringConverter::toString(i), "barrel.mesh");
			// Add entity to the scene node
			mSceneMgr->getRootSceneNode()->createChildSceneNode(
				Vector3(0,0,(i*50)-(5*50/2)))->attachObject(ent);
		}

		// Give it a little ambience with lights
		Light* l;
		l = mSceneMgr->createLight("BlueLight");
		l->setPosition(-200,-80,-100);
		l->setDiffuseColour(0.5, 0.5, 1.0);

		l = mSceneMgr->createLight("GreenLight");
		l->setPosition(0,0,-100);
		l->setDiffuseColour(0.5, 1.0, 0.5);

		// Position the camera
		mCamera->setPosition(100,50,100);
		mCamera->lookAt(-50,50,0);

		mSceneMgr->setAmbientLight(ColourValue::White);

	}

    void clearSceneSetup()
    {
        bool showOctree = true;
        mSceneMgr->setOption("ShowOctree", &showOctree);

        // Set ambient light
        mSceneMgr->setAmbientLight(ColourValue(0.2, 0.2, 0.2));

        // Create a skydome
        mSceneMgr->setSkyDome(true, "Examples/CloudySky", 5, 8);

        // Create a light
        Light* l = mSceneMgr->createLight("MainLight");
        // Accept default settings: point light, white diffuse, just set position
        // NB I could attach the light to a SceneNode if I wanted it to move automatically with
        //  other objects, but I don't
        l->setPosition(20,80,50);

        Entity *ent;

        // Create an entity (the floor)
        ent = mSceneMgr->createEntity("floor", "FloorPlane");
        ent->setMaterialName("Examples/RustySteel");
        // Attach to child of root node, better for culling (otherwise bounds are the combination of the 2)
        mSceneMgr->getRootSceneNode()->createChildSceneNode()->attachObject(ent);

        // Add a head, give it it's own node
        SceneNode* headNode = mSceneMgr->getRootSceneNode()->createChildSceneNode();
        ent = mSceneMgr->createEntity("head", "ogrehead.mesh");
        headNode->attachObject(ent);

        // Add another head, give it it's own node
        SceneNode* headNode2 = mSceneMgr->getRootSceneNode()->createChildSceneNode();
        ent = mSceneMgr->createEntity("head2", "ogrehead.mesh");
        headNode2->attachObject(ent);

        // Make sure the head node tracks the root
        headNode->setAutoTracking(true, headNode2, Vector3::UNIT_Z);
        //headNode->setFixedYawAxis(true);

        // Create the camera node & attach camera
        //SceneNode* camNode = mSceneMgr->getRootSceneNode()->createChildSceneNode();
        //camNode->attachObject(mCamera);

        // set up spline animation of node
        Animation* anim = mSceneMgr->createAnimation("CameraTrack", 10);
        // Spline it for nice curves
        anim->setInterpolationMode(Animation::IM_SPLINE);
        // Create a track to animate the head's node
        NodeAnimationTrack* track = anim->createNodeTrack(0, headNode);
        // Setup keyframes
        TransformKeyFrame* key = track->createNodeKeyFrame(0); // startposition
        key = track->createNodeKeyFrame(2.5);
        key->setTranslate(Vector3(500,500,-1000));
        key = track->createNodeKeyFrame(5);
        key->setTranslate(Vector3(-1500,1000,-600));
        key = track->createNodeKeyFrame(7.5);
        key->setTranslate(Vector3(0,-100,0));
        key = track->createNodeKeyFrame(10);
        key->setTranslate(Vector3(0,0,0));
        // Create a track to animate the second head's node
        track = anim->createNodeTrack(1, headNode2);
        // Setup keyframes
        key = track->createNodeKeyFrame(0); // startposition
        key = track->createNodeKeyFrame(2.5);
        key->setTranslate(Vector3(-500,600,-100));
        key = track->createNodeKeyFrame(5);
        key->setTranslate(Vector3(800,200,-600));
        key = track->createNodeKeyFrame(7.5);
        key->setTranslate(Vector3(200,-1000,0));
        key = track->createNodeKeyFrame(10);
        key->setTranslate(Vector3(30,70,110));
        // Create a new animation state to track this
        mAnimState = mSceneMgr->createAnimationState("CameraTrack");
        mAnimState->setEnabled(true);
    }
    class ClearSceneListener : public FrameListener
    {
    protected:
        SceneManager* mSceneMgr;
        PlayPenApplication* ppApp;

    public:
        ClearSceneListener(SceneManager* sm, PlayPenApplication* target)
        {
            mSceneMgr = sm;
            ppApp = target;
        }
        bool frameStarted(const FrameEvent& evt)
        {
            static Real timeElapsed = 0;

            timeElapsed += evt.timeSinceLastFrame;
            if (timeElapsed > 15)
            {
                mSceneMgr->clearScene();
                ppApp->clearSceneSetup();
                timeElapsed = 0;
            }
            return true;
        }
    };
    ClearSceneListener* csListener;
    void testClearScene()
    {
        // Define a floor plane mesh
        Plane p;
        p.normal = Vector3::UNIT_Y;
        p.d = 200;
        MeshManager::getSingleton().createPlane("FloorPlane",
			ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME,
			p,200000,200000,20,20,true,1,50,50,Vector3::UNIT_Z);


        // leak here I know
        csListener = new ClearSceneListener(mSceneMgr, this);
        Root::getSingleton().addFrameListener(csListener);
        clearSceneSetup();
    }

    void testStencilShadows(ShadowTechnique tech, bool pointLight, bool directionalLight)
    {
        mSceneMgr->setShadowTechnique(tech);
        //mSceneMgr->setShowDebugShadows(true);
        mSceneMgr->setShadowDirectionalLightExtrusionDistance(1000);
        //mSceneMgr->setShadowColour(ColourValue(0.4, 0.25, 0.25));

        //mSceneMgr->setShadowFarDistance(800);
        // Set ambient light
        mSceneMgr->setAmbientLight(ColourValue(0.0, 0.0, 0.0));
        
        // Point light
        if(pointLight)
        {
            mLight = mSceneMgr->createLight("MainLight");
            mLight->setPosition(-400,400,-300);
            mLight->setDiffuseColour(0.9, 0.9, 1);
            mLight->setSpecularColour(0.9, 0.9, 1);
            mLight->setAttenuation(6000,1,0.001,0);
        }
        // Directional light
        if (directionalLight)
        {
            mLight = mSceneMgr->createLight("Light2");
            Vector3 dir(-1,-1,0);
            dir.normalise();
            mLight->setType(Light::LT_DIRECTIONAL);
            mLight->setDirection(dir);
            mLight->setDiffuseColour(1, 1, 0.8);
            mLight->setSpecularColour(1, 1, 1);
        }

        mTestNode[0] = mSceneMgr->getRootSceneNode()->createChildSceneNode();

		// Hardware skin
        Entity* pEnt;
        pEnt = mSceneMgr->createEntity( "1", "robot.mesh" );
        AnimationState* anim = pEnt->getAnimationState("Walk");
        anim->setEnabled(true);
		mAnimStateList.push_back(anim);
		mTestNode[0]->attachObject( pEnt );

		// Software skin
		pEnt = mSceneMgr->createEntity( "12", "robot.mesh" );
		anim = pEnt->getAnimationState("Walk");
		anim->setEnabled(true);
		mAnimStateList.push_back(anim);
		mSceneMgr->getRootSceneNode()->createChildSceneNode(Vector3(100, 0, 0))->attachObject(pEnt);
		pEnt->setMaterialName("Examples/Rocky");

		// test object
		//pEnt = mSceneMgr->createEntity("tst", "building.mesh");
		//mSceneMgr->getRootSceneNode()->createChildSceneNode(Vector3(300, 0, 0))->attachObject(pEnt);


        // Does not receive shadows
        pEnt = mSceneMgr->createEntity( "3", "knot.mesh" );
        pEnt->setMaterialName("Examples/EnvMappedRustySteel");
        MaterialPtr mat2 = MaterialManager::getSingleton().getByName("Examples/EnvMappedRustySteel");
        mat2->setReceiveShadows(false);
        mTestNode[2] = mSceneMgr->getRootSceneNode()->createChildSceneNode(Vector3(-200, 0, -200));
        mTestNode[2]->attachObject( pEnt );

        // Transparent object 
        pEnt = mSceneMgr->createEntity( "3.5", "knot.mesh" );
        pEnt->setMaterialName("Examples/TransparentTest");
        MaterialPtr mat3 = MaterialManager::getSingleton().getByName("Examples/TransparentTest");
		pEnt->setCastShadows(false);
        mTestNode[3] = mSceneMgr->getRootSceneNode()->createChildSceneNode(Vector3(350, 0, -200));
        mTestNode[3]->attachObject( pEnt );

		// User test
		/*
		pEnt = mSceneMgr->createEntity( "3.6", "ogre_male_endCaps.mesh" );
		mSceneMgr->getRootSceneNode()->createChildSceneNode(Vector3(0, 0, 100))->attachObject( pEnt );
		*/

        MeshPtr msh = MeshManager::getSingleton().load("knot.mesh", 
			ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME);
        unsigned short src, dest;
        if (!msh->suggestTangentVectorBuildParams(VES_TANGENT, src, dest))
        {
            msh->buildTangentVectors(VES_TANGENT, src, dest);
        }
        pEnt = mSceneMgr->createEntity( "4", "knot.mesh" );
        pEnt->setMaterialName("Examples/BumpMapping/MultiLightSpecular");
        mTestNode[2] = mSceneMgr->getRootSceneNode()->createChildSceneNode(Vector3(100, 0, 200));
        mTestNode[2]->attachObject( pEnt );

		// controller based material
		pEnt = mSceneMgr->createEntity( "432", "knot.mesh" );
		pEnt->setMaterialName("Examples/TextureEffect2");
		mSceneMgr->getRootSceneNode()->createChildSceneNode(Vector3(100, 200, 200))->attachObject( pEnt );

        ParticleSystem* pSys2 = mSceneMgr->createParticleSystem("smoke", 
            "Examples/Smoke");
        mTestNode[4] = mSceneMgr->getRootSceneNode()->createChildSceneNode(Vector3(-300, -100, 200));
        mTestNode[4]->attachObject(pSys2);


        mSceneMgr->setSkyBox(true, "Examples/CloudyNoonSkyBox");


        Plane plane;
        plane.normal = Vector3::UNIT_Y;
        plane.d = 100;
        MeshManager::getSingleton().createPlane("Myplane",
			ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME, plane,
            1500,1500,10,10,true,1,5,5,Vector3::UNIT_Z);
        Entity* pPlaneEnt = mSceneMgr->createEntity( "plane", "Myplane" );
        pPlaneEnt->setMaterialName("2 - Default");
        pPlaneEnt->setCastShadows(false);
        mSceneMgr->getRootSceneNode()->createChildSceneNode()->attachObject(pPlaneEnt);

        mCamera->setPosition(180, 34, 223);
        mCamera->setOrientation(Quaternion(0.7265, -0.2064, 0.6304, 0.1791));

		// Create a render texture
		TexturePtr rtt = TextureManager::getSingleton().createManual("rtt0", 
			ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME, 
			TEX_TYPE_2D, 512, 512, 0, PF_R8G8B8, TU_RENDERTARGET);
		rtt->getBuffer()->getRenderTarget()->addViewport(mCamera);
		// Create an overlay showing the rtt
		MaterialPtr debugMat = MaterialManager::getSingleton().create(
			"DebugRTT", ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME);
		debugMat->getTechnique(0)->getPass(0)->setLightingEnabled(false);
		TextureUnitState *t = debugMat->getTechnique(0)->getPass(0)->createTextureUnitState("rtt0");
		t->setTextureAddressingMode(TextureUnitState::TAM_CLAMP);
		OverlayContainer* debugPanel = (OverlayContainer*)
			(OverlayManager::getSingleton().createOverlayElement("Panel", "Ogre/DebugShadowPanel"));
		debugPanel->_setPosition(0.6, 0);
		debugPanel->_setDimensions(0.4, 0.6);
		debugPanel->setMaterialName("DebugRTT");
		Overlay* debugOverlay = OverlayManager::getSingleton().getByName("Core/DebugOverlay");
		debugOverlay->add2D(debugPanel);


    }

	void testStencilShadowsMixedOpSubMeshes(bool pointLight, bool directionalLight)
	{
		mSceneMgr->setShadowTechnique(SHADOWTYPE_STENCIL_MODULATIVE);
		//mSceneMgr->setShowDebugShadows(true);
		mSceneMgr->setShadowDirectionalLightExtrusionDistance(1000);

		//mSceneMgr->setShadowFarDistance(800);
		// Set ambient light
		mSceneMgr->setAmbientLight(ColourValue(0.0, 0.0, 0.0));

		// Point light
		if(pointLight)
		{
			mLight = mSceneMgr->createLight("MainLight");
			mLight->setPosition(-400,400,-300);
			mLight->setDiffuseColour(0.9, 0.9, 1);
			mLight->setSpecularColour(0.9, 0.9, 1);
			mLight->setAttenuation(6000,1,0.001,0);
		}
		// Directional light
		if (directionalLight)
		{
			mLight = mSceneMgr->createLight("Light2");
			Vector3 dir(-1,-1,0);
			dir.normalise();
			mLight->setType(Light::LT_DIRECTIONAL);
			mLight->setDirection(dir);
			mLight->setDiffuseColour(1, 1, 0.8);
			mLight->setSpecularColour(1, 1, 1);
		}

		mSceneMgr->setSkyBox(true, "Examples/CloudyNoonSkyBox");


		Plane plane;
		plane.normal = Vector3::UNIT_Y;
		plane.d = 100;
		MeshManager::getSingleton().createPlane("Myplane",
			ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME, plane,
			1500,1500,10,10,true,1,5,5,Vector3::UNIT_Z);
		Entity* pPlaneEnt = mSceneMgr->createEntity( "plane", "Myplane" );
		pPlaneEnt->setMaterialName("2 - Default");
		pPlaneEnt->setCastShadows(false);
		mSceneMgr->getRootSceneNode()->createChildSceneNode()->attachObject(pPlaneEnt);

		mCamera->setPosition(180, 34, 223);
		mCamera->setOrientation(Quaternion(0.7265, -0.2064, 0.6304, 0.1791));


		ManualObject* man = mSceneMgr->createManualObject("testMO");
		man->begin("2 - Default");
		man->position(0, 200, 0);
		man->position(0, 50, 100);
		man->position(100, 50, -100);
		man->position(-100, 50, -100);
		man->triangle(0, 1, 2);
		man->triangle(0, 2, 3);
		man->triangle(0, 3, 1);
		man->end();
		man->begin("2 - Default", RenderOperation::OT_LINE_STRIP);
		man->position(0, 200, 0);
		man->position(50, 250, 0);
		man->position(200, 300, 0);
		man->index(0);
		man->index(1);
		man->index(2);
		man->end();
		MeshPtr msh = man->convertToMesh("testMO.mesh");
		
		Entity* e = mSceneMgr->createEntity("34", "testMO.mesh");
		mSceneMgr->getRootSceneNode()->createChildSceneNode()->attachObject(e);



	}
    void test2Spotlights()
    {
        mSceneMgr->setAmbientLight(ColourValue(0.3, 0.3, 0.3));

        mLight = mSceneMgr->createLight("MainLight");
        // Spotlight test
        mLight->setType(Light::LT_SPOTLIGHT);
        mLight->setDiffuseColour(1.0, 0.0, 0.8);
        mLight->setSpotlightRange(Degree(30), Degree(40));
        mTestNode[0] = mSceneMgr->getRootSceneNode()->createChildSceneNode();
        mTestNode[0]->setPosition(800,600,0);
        mTestNode[0]->lookAt(Vector3(800,0,0), Node::TS_WORLD, Vector3::UNIT_Z);
        mTestNode[0]->attachObject(mLight);

        mTestNode[1] = mSceneMgr->getRootSceneNode()->createChildSceneNode();
        mLight = mSceneMgr->createLight("AnotherLight");
        // Spotlight test
        mLight->setType(Light::LT_SPOTLIGHT);
        mLight->setDiffuseColour(0, 1.0, 0.8);
        mLight->setSpotlightRange(Degree(30), Degree(40));
        mTestNode[1] = mSceneMgr->getRootSceneNode()->createChildSceneNode();
        mTestNode[1]->setPosition(0,600,800);
        mTestNode[1]->lookAt(Vector3(0,0,800), Node::TS_WORLD, Vector3::UNIT_Z);
        mTestNode[1]->attachObject(mLight);


        Plane plane;
        plane.normal = Vector3::UNIT_Y;
        plane.d = 100;
        MeshManager::getSingleton().createPlane("Myplane",
			ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME, plane,
            3500,3500,100,100,true,1,5,5,Vector3::UNIT_Z);
        Entity* pPlaneEnt;
        pPlaneEnt = mSceneMgr->createEntity( "plane", "Myplane" );
        pPlaneEnt->setMaterialName("2 - Default");
        mSceneMgr->getRootSceneNode()->createChildSceneNode()->attachObject(pPlaneEnt);

    }

	void addTextureShadowDebugOverlay(size_t num)
	{
		Overlay* debugOverlay = OverlayManager::getSingleton().getByName("Core/DebugOverlay");

		for (size_t i = 0; i < num; ++i)
		{
			// Set up a debug panel to display the shadow
			MaterialPtr debugMat = MaterialManager::getSingleton().create(
				"Ogre/DebugShadowMap" + StringConverter::toString(i), 
				ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME);
			debugMat->getTechnique(0)->getPass(0)->setLightingEnabled(false);
			TexturePtr shadowTex = mSceneMgr->getShadowTexture(i);
			TextureUnitState *t = debugMat->getTechnique(0)->getPass(0)->createTextureUnitState(shadowTex->getName());
			t->setTextureAddressingMode(TextureUnitState::TAM_CLAMP);
			//t = debugMat->getTechnique(0)->getPass(0)->createTextureUnitState("spot_shadow_fade.png");
			//t->setTextureAddressingMode(TextureUnitState::TAM_CLAMP);
			//t->setColourOperation(LBO_ADD);

			OverlayContainer* debugPanel = (OverlayContainer*)
				(OverlayManager::getSingleton().createOverlayElement("Panel", "Ogre/DebugShadowPanel" + StringConverter::toString(i)));
			debugPanel->_setPosition(0.8, i*0.3);
			debugPanel->_setDimensions(0.2, 0.28);
			debugPanel->setMaterialName(debugMat->getName());
			debugOverlay->add2D(debugPanel);

		}

	}


    void testTextureShadows(ShadowTechnique tech)
    {
        mSceneMgr->setShadowTextureSize(1024);
        mSceneMgr->setShadowTechnique(tech);

		FocusedShadowCameraSetup* lispsmSetup = new FocusedShadowCameraSetup();
		//lispsmSetup->setOptimalAdjustFactor(2);
		mSceneMgr->setShadowCameraSetup(ShadowCameraSetupPtr(lispsmSetup));

        mSceneMgr->setShadowFarDistance(10000);
        mSceneMgr->setShadowColour(ColourValue(0.35, 0.35, 0.35));
        //mSceneMgr->setShadowFarDistance(800);
        // Set ambient light
        mSceneMgr->setAmbientLight(ColourValue(0.3, 0.3, 0.3));

        mLight = mSceneMgr->createLight("MainLight");

		
        // Directional test
		
        mLight->setType(Light::LT_DIRECTIONAL);
        Vector3 vec(-1,-1,0);
        vec.normalise();
        mLight->setDirection(vec);
				
		
        // Spotlight test
		/*
        mLight->setType(Light::LT_SPOTLIGHT);
        mLight->setDiffuseColour(1.0, 1.0, 0.8);
        mTestNode[0] = mSceneMgr->getRootSceneNode()->createChildSceneNode();
        mTestNode[0]->setPosition(800,600,0);
        mTestNode[0]->lookAt(Vector3(0,0,0), Node::TS_WORLD, Vector3::UNIT_Z);
        mTestNode[0]->attachObject(mLight);
		*/		

        mTestNode[1] = mSceneMgr->getRootSceneNode()->createChildSceneNode();


        Entity* pEnt;
        pEnt = mSceneMgr->createEntity( "1", "robot.mesh" );
		//pEnt->setRenderingDistance(100);
        mAnimState = pEnt->getAnimationState("Walk");
        mAnimState->setEnabled(true);
        //pEnt->setMaterialName("2 - Default");
        mTestNode[1]->attachObject( pEnt );
        mTestNode[1]->translate(0,-100,0);

        pEnt = mSceneMgr->createEntity( "3", "knot.mesh" );
        mTestNode[2] = mSceneMgr->getRootSceneNode()->createChildSceneNode(Vector3(-200, 0, -200));
        mTestNode[2]->attachObject( pEnt );

		createRandomEntityClones(pEnt, 20, Vector3(-1000,0,-1000), Vector3(1000,0,1000));


        // Transparent object (can force cast shadows)
        pEnt = mSceneMgr->createEntity( "3.5", "knot.mesh" );
		MaterialPtr tmat = MaterialManager::getSingleton().create("TestAlphaTransparency", 
			ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME);
		tmat->setTransparencyCastsShadows(true);
		Pass* tpass = tmat->getTechnique(0)->getPass(0);
		tpass->setAlphaRejectSettings(CMPF_GREATER, 150);
		tpass->setSceneBlending(SBT_TRANSPARENT_ALPHA);
		tpass->createTextureUnitState("gras_02.png");
		tpass->setCullingMode(CULL_NONE);

        pEnt->setMaterialName("TestAlphaTransparency");
        mTestNode[3] = mSceneMgr->getRootSceneNode()->createChildSceneNode(Vector3(350, 0, -200));
        mTestNode[3]->attachObject( pEnt );

        MeshPtr msh = MeshManager::getSingleton().load("knot.mesh",
			ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME);
        msh->buildTangentVectors(VES_TANGENT, 0, 0);
        pEnt = mSceneMgr->createEntity( "4", "knot.mesh" );
        //pEnt->setMaterialName("Examples/BumpMapping/MultiLightSpecular");
        mTestNode[2] = mSceneMgr->getRootSceneNode()->createChildSceneNode(Vector3(100, 0, 200));
        mTestNode[2]->attachObject( pEnt );

        mSceneMgr->setSkyBox(true, "Examples/CloudyNoonSkyBox");



        movablePlane.normal = Vector3::UNIT_Y;
        movablePlane.d = 100;
        MeshManager::getSingleton().createPlane("Myplane",
			ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME, movablePlane,
            2500,2500,10,10,true,1,5,5,Vector3::UNIT_Z);
        Entity* pPlaneEnt;
        pPlaneEnt = mSceneMgr->createEntity( "plane", "Myplane" );
		if (tech & SHADOWDETAILTYPE_INTEGRATED)
		{
			pPlaneEnt->setMaterialName("Examples/Plane/IntegratedShadows");
		}
		else
		{
			pPlaneEnt->setMaterialName("2 - Default");
		}
        pPlaneEnt->setCastShadows(false);
        mSceneMgr->getRootSceneNode()->createChildSceneNode()->attachObject(pPlaneEnt);

		addTextureShadowDebugOverlay(1);


		/*
        ParticleSystem* pSys2 = mSceneMgr->createParticleSystem("smoke", 
            "Examples/Smoke");
        mTestNode[4] = mSceneMgr->getRootSceneNode()->createChildSceneNode(Vector3(-300, -100, 200));
        mTestNode[4]->attachObject(pSys2);
		*/

		mCamera->setPosition(0, 1000, 0);
		mCamera->setFixedYawAxis(false);
		mCamera->lookAt(0,0,0);


    }

	void testTextureShadowsCustomCasterMat(ShadowTechnique tech)
	{

		testTextureShadows(tech);

		String customCasterMatVp = 
			"void customCasterVp(float4 position : POSITION,\n"
			"out float4 oPosition : POSITION,\n"
			"uniform float4x4 worldViewProj)\n"
			"{\n"
			"	oPosition = mul(worldViewProj, position);\n"
			"}\n";
		String customCasterMatFp = 
			"void customCasterFp(\n"
			"out float4 oColor : COLOR)\n"
			"{\n"
			"	oColor = float4(1,1,0,1); // just a test\n"
			"}\n";

		HighLevelGpuProgramPtr vp = HighLevelGpuProgramManager::getSingleton()
			.createProgram("CustomShadowCasterVp", 
				ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME, 
				"cg", GPT_VERTEX_PROGRAM);
		vp->setSource(customCasterMatVp);
		vp->setParameter("profiles", "vs_1_1 arbvp1");
		vp->setParameter("entry_point", "customCasterVp");
		vp->load();

		HighLevelGpuProgramPtr fp = HighLevelGpuProgramManager::getSingleton()
			.createProgram("CustomShadowCasterFp", 
			ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME, 
			"cg", GPT_FRAGMENT_PROGRAM);
		fp->setSource(customCasterMatFp);
		fp->setParameter("profiles", "ps_1_1 arbfp1");
		fp->setParameter("entry_point", "customCasterFp");
		fp->load();
		
		MaterialPtr mat = MaterialManager::getSingleton().create("CustomShadowCaster", 
			ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME);
		Pass* p = mat->getTechnique(0)->getPass(0);
		p->setVertexProgram("CustomShadowCasterVp");
		p->getVertexProgramParameters()->setNamedAutoConstant(
			"worldViewProj", GpuProgramParameters::ACT_WORLDVIEWPROJ_MATRIX);
		p->setFragmentProgram("CustomShadowCasterFp");

		mSceneMgr->setShadowTextureCasterMaterial("CustomShadowCaster");


		


	}

	void testTextureShadowsCustomReceiverMat(ShadowTechnique tech)
	{
		testTextureShadows(tech);

		String customReceiverMatVp = 
			"void customReceiverVp(float4 position : POSITION,\n"
			"out float4 oPosition : POSITION,\n"
			"out float2 oUV : TEXCOORD0,\n"
			"uniform float4x4 texViewProj,\n"
			"uniform float4x4 worldViewProj)\n"
			"{\n"
			"	oPosition = mul(worldViewProj, position);\n"
			"	float4 suv = mul(texViewProj, position);\n"
			"	oUV = suv.xy / suv.w;\n"
			"}\n";
		String customReceiverMatFp = 
			"void customReceiverFp(\n"
			"float2 uv : TEXCOORD0,\n"
			"uniform sampler2D shadowTex : register(s0),\n"
			"out float4 oColor : COLOR)\n"
			"{\n"
			"	float4 shadow = tex2D(shadowTex, uv);\n"
			"	oColor = shadow * float4(1,0,1,1); // just a test\n"
			"}\n";

		HighLevelGpuProgramPtr vp = HighLevelGpuProgramManager::getSingleton()
			.createProgram("CustomShadowReceiverVp", 
			ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME, 
			"cg", GPT_VERTEX_PROGRAM);
		vp->setSource(customReceiverMatVp);
		vp->setParameter("profiles", "vs_1_1 arbvp1");
		vp->setParameter("entry_point", "customReceiverVp");
		vp->load();

		HighLevelGpuProgramPtr fp = HighLevelGpuProgramManager::getSingleton()
			.createProgram("CustomShadowReceiverFp", 
			ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME, 
			"cg", GPT_FRAGMENT_PROGRAM);
		fp->setSource(customReceiverMatFp);
		fp->setParameter("profiles", "ps_1_1 arbfp1");
		fp->setParameter("entry_point", "customReceiverFp");
		fp->load();

		MaterialPtr mat = MaterialManager::getSingleton().create("CustomShadowReceiver", 
			ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME);
		Pass* p = mat->getTechnique(0)->getPass(0);
		p->setVertexProgram("CustomShadowReceiverVp");
		p->getVertexProgramParameters()->setNamedAutoConstant(
			"worldViewProj", GpuProgramParameters::ACT_WORLDVIEWPROJ_MATRIX);
		p->getVertexProgramParameters()->setNamedAutoConstant(
			"texViewProj", GpuProgramParameters::ACT_TEXTURE_VIEWPROJ_MATRIX);
		p->setFragmentProgram("CustomShadowReceiverFp");
		p->createTextureUnitState(); // shadow texture will populate

		mSceneMgr->setShadowTextureReceiverMaterial("CustomShadowReceiver");



	}


	//---------------------------------------------------------------------------
	class GaussianListener: public Ogre::CompositorInstance::Listener
	{
	protected:
		int mVpWidth, mVpHeight;
		// Array params - have to pack in groups of 4 since this is how Cg generates them
		// also prevents dependent texture read problems if ops don't require swizzle
		float mBloomTexWeights[15][4];
		float mBloomTexOffsetsHorz[15][4];
		float mBloomTexOffsetsVert[15][4];
	public:
		GaussianListener() {}
		virtual ~GaussianListener() {}
		void notifyViewportSize(int width, int height)
		{
			mVpWidth = width;
			mVpHeight = height;
			// Calculate gaussian texture offsets & weights
			float deviation = 3.0f;
			float texelSize = 1.0f / (float)std::min(mVpWidth, mVpHeight);

			// central sample, no offset
			mBloomTexOffsetsHorz[0][0] = 0.0f;
			mBloomTexOffsetsHorz[0][1] = 0.0f;
			mBloomTexWeights[0][0] = mBloomTexWeights[0][1] = 
				mBloomTexWeights[0][2] = Ogre::Math::gaussianDistribution(0, 0, deviation);
			mBloomTexWeights[0][3] = 1.0f;

			// 'pre' samples
			for(int i = 1; i < 8; ++i)
			{
				mBloomTexWeights[i][0] = mBloomTexWeights[i][1] = 
					mBloomTexWeights[i][2] = Ogre::Math::gaussianDistribution(i, 0, deviation);
				mBloomTexWeights[i][3] = 1.0f;
				mBloomTexOffsetsHorz[i][0] = i * texelSize;
				mBloomTexOffsetsHorz[i][1] = 0.0f;
				mBloomTexOffsetsVert[i][0] = 0.0f;
				mBloomTexOffsetsVert[i][1] = i * texelSize;
			}
			// 'post' samples
			for(int i = 8; i < 15; ++i)
			{
				mBloomTexWeights[i][0] = mBloomTexWeights[i][1] = 
					mBloomTexWeights[i][2] = mBloomTexWeights[i - 7][0];
				mBloomTexWeights[i][3] = 1.0f;

				mBloomTexOffsetsHorz[i][0] = -mBloomTexOffsetsHorz[i - 7][0];
				mBloomTexOffsetsHorz[i][1] = 0.0f;
				mBloomTexOffsetsVert[i][0] = 0.0f;
				mBloomTexOffsetsVert[i][1] = -mBloomTexOffsetsVert[i - 7][1];
			}

		}
		virtual void notifyMaterialSetup(Ogre::uint32 pass_id, Ogre::MaterialPtr &mat)
		{
			// Prepare the fragment params offsets
			switch(pass_id)
			{
			case 701: // blur horz
				{
					// horizontal bloom
					mat->load();
					Ogre::GpuProgramParametersSharedPtr fparams = 
						mat->getBestTechnique()->getPass(0)->getFragmentProgramParameters();
					const Ogre::String& progName = mat->getBestTechnique()->getPass(0)->getFragmentProgramName();
					fparams->setNamedConstant("sampleOffsets", mBloomTexOffsetsHorz[0], 15);
					fparams->setNamedConstant("sampleWeights", mBloomTexWeights[0], 15);

					break;
				}
			case 700: // blur vert
				{
					// vertical bloom 
					mat->load();
					Ogre::GpuProgramParametersSharedPtr fparams = 
						mat->getTechnique(0)->getPass(0)->getFragmentProgramParameters();
					const Ogre::String& progName = mat->getBestTechnique()->getPass(0)->getFragmentProgramName();
					fparams->setNamedConstant("sampleOffsets", mBloomTexOffsetsVert[0], 15);
					fparams->setNamedConstant("sampleWeights", mBloomTexWeights[0], 15);

					break;
				}
			}

		}
		virtual void notifyMaterialRender(Ogre::uint32 pass_id, Ogre::MaterialPtr &mat)
		{

		}
	};
	GaussianListener gaussianListener;

	void testCompositorTextureShadows(ShadowTechnique tech)
	{
		mSceneMgr->setShadowTextureSize(512);
		mSceneMgr->setShadowTechnique(tech);
		mSceneMgr->setShadowFarDistance(1500);
		mSceneMgr->setShadowColour(ColourValue(0.35, 0.35, 0.35));
		//mSceneMgr->setShadowFarDistance(800);
		// Set ambient light
		mSceneMgr->setAmbientLight(ColourValue(0.3, 0.3, 0.3));

		mLight = mSceneMgr->createLight("MainLight");

		/*
		// Directional test
		mLight->setType(Light::LT_DIRECTIONAL);
		Vector3 vec(-1,-1,0);
		vec.normalise();
		mLight->setDirection(vec);

		*/
		// Spotlight test
		mLight->setType(Light::LT_SPOTLIGHT);
		mLight->setDiffuseColour(1.0, 1.0, 0.8);
		mTestNode[0] = mSceneMgr->getRootSceneNode()->createChildSceneNode();
		mTestNode[0]->setPosition(800,600,0);
		mTestNode[0]->lookAt(Vector3(0,0,0), Node::TS_WORLD, Vector3::UNIT_Z);
		mTestNode[0]->attachObject(mLight);
		

		mTestNode[1] = mSceneMgr->getRootSceneNode()->createChildSceneNode();


		Entity* pEnt;
		pEnt = mSceneMgr->createEntity( "1", "robot.mesh" );
		//pEnt->setRenderingDistance(100);
		mAnimState = pEnt->getAnimationState("Walk");
		mAnimState->setEnabled(true);
		//pEnt->setMaterialName("2 - Default");
		mTestNode[1]->attachObject( pEnt );
		mTestNode[1]->translate(0,-100,0);

		pEnt = mSceneMgr->createEntity( "3", "knot.mesh" );
		mTestNode[2] = mSceneMgr->getRootSceneNode()->createChildSceneNode(Vector3(-200, 0, -200));
		mTestNode[2]->attachObject( pEnt );

		// Transparent object (can force cast shadows)
		pEnt = mSceneMgr->createEntity( "3.5", "knot.mesh" );
		MaterialPtr tmat = MaterialManager::getSingleton().create("TestAlphaTransparency", 
			ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME);
		tmat->setTransparencyCastsShadows(true);
		Pass* tpass = tmat->getTechnique(0)->getPass(0);
		tpass->setAlphaRejectSettings(CMPF_GREATER, 150);
		tpass->setSceneBlending(SBT_TRANSPARENT_ALPHA);
		tpass->createTextureUnitState("gras_02.png");
		tpass->setCullingMode(CULL_NONE);

		pEnt->setMaterialName("TestAlphaTransparency");
		mTestNode[3] = mSceneMgr->getRootSceneNode()->createChildSceneNode(Vector3(350, 0, -200));
		mTestNode[3]->attachObject( pEnt );

		MeshPtr msh = MeshManager::getSingleton().load("knot.mesh",
			ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME);
		msh->buildTangentVectors(VES_TANGENT, 0, 0);
		pEnt = mSceneMgr->createEntity( "4", "knot.mesh" );
		//pEnt->setMaterialName("Examples/BumpMapping/MultiLightSpecular");
		mTestNode[2] = mSceneMgr->getRootSceneNode()->createChildSceneNode(Vector3(100, 0, 200));
		mTestNode[2]->attachObject( pEnt );

		mSceneMgr->setSkyBox(true, "Examples/CloudyNoonSkyBox");


		Plane plane;
		plane.normal = Vector3::UNIT_Y;
		plane.d = 100;
		MeshManager::getSingleton().createPlane("Myplane",
			ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME, plane,
			1500,1500,10,10,true,1,5,5,Vector3::UNIT_Z);
		Entity* pPlaneEnt;
		pPlaneEnt = mSceneMgr->createEntity( "plane", "Myplane" );
		pPlaneEnt->setMaterialName("2 - Default");
		pPlaneEnt->setCastShadows(false);
		mSceneMgr->getRootSceneNode()->createChildSceneNode()->attachObject(pPlaneEnt);

		// Set up a debug panel to display the shadow
		addTextureShadowDebugOverlay(1);



		ParticleSystem* pSys2 = mSceneMgr->createParticleSystem("smoke", 
			"Examples/Smoke");
		mTestNode[4] = mSceneMgr->getRootSceneNode()->createChildSceneNode(Vector3(-300, -100, 200));
		mTestNode[4]->attachObject(pSys2);

		TexturePtr shadowTex = mSceneMgr->getShadowTexture(0);
		RenderTarget* shadowRtt = shadowTex->getBuffer()->getRenderTarget();
		Viewport* vp = shadowRtt->getViewport(0);
		Ogre::CompositorInstance *instance = 
			CompositorManager::getSingleton().addCompositor(vp, "Gaussian Blur");
		CompositorManager::getSingleton().setCompositorEnabled(
			vp, "Gaussian Blur", true);
		instance->addListener(&gaussianListener);
		gaussianListener.notifyViewportSize(vp->getActualWidth(), vp->getActualHeight());





	}

    void testOverlayZOrder(void)
    {
        Overlay* o = OverlayManager::getSingleton().getByName("Test/Overlay3");
        o->show();
        o = OverlayManager::getSingleton().getByName("Test/Overlay2");
        o->show();
        o = OverlayManager::getSingleton().getByName("Test/Overlay1");
        o->show();
    }

    void createRandomEntityClones(Entity* ent, size_t cloneCount, 
        const Vector3& min, const Vector3& max)
    {
        Entity *cloneEnt;
        for (size_t n = 0; n < cloneCount; ++n)
        {
            // Create a new node under the root
            SceneNode* node = mSceneMgr->createSceneNode();
            // Random translate
            Vector3 nodePos;
            nodePos.x = Math::RangeRandom(min.x, max.x);
            nodePos.y = Math::RangeRandom(min.y, max.y);
            nodePos.z = Math::RangeRandom(min.z, max.z);
            node->setPosition(nodePos);
            mSceneMgr->getRootSceneNode()->addChild(node);
            cloneEnt = ent->clone(ent->getName() + "_clone" + StringConverter::toString(n));
            // Attach to new node
            node->attachObject(cloneEnt);

        }
    }

    void testIntersectionSceneQuery()
    {
        // Set ambient light
        mSceneMgr->setAmbientLight(ColourValue(0.5, 0.5, 0.5));

        // Create a point light
        Light* l = mSceneMgr->createLight("MainLight");
        l->setType(Light::LT_DIRECTIONAL);
        l->setDirection(-Vector3::UNIT_Y);

        // Create a set of random balls
        Entity* ent = mSceneMgr->createEntity("Ball", "sphere.mesh");
        mSceneMgr->getRootSceneNode()->createChildSceneNode()->attachObject(ent);
        createRandomEntityClones(ent, 500, Vector3(-5000,-5000,-5000), Vector3(5000,5000,5000));

        intersectionQuery = mSceneMgr->createIntersectionQuery();
    }

    void testRaySceneQuery()
    {
        // Set ambient light
        mSceneMgr->setAmbientLight(ColourValue(0.5, 0.5, 0.5));

        // Create a point light
        Light* l = mSceneMgr->createLight("MainLight");
        l->setType(Light::LT_DIRECTIONAL);
        l->setDirection(-Vector3::UNIT_Y);

        // Create a set of random balls
        Entity* ent = mSceneMgr->createEntity("Ball", "sphere.mesh");
        mSceneMgr->getRootSceneNode()->createChildSceneNode()->attachObject(ent);
        createRandomEntityClones(ent, 100, Vector3(-1000,-1000,-1000), Vector3(1000,1000,1000));

        rayQuery = mSceneMgr->createRayQuery(
			mCamera->getCameraToViewportRay(0.5, 0.5));
        rayQuery->setSortByDistance(true, 1);

        bool val = true;
        mSceneMgr->setOption("ShowOctree", &val);

		//mCamera->setFarClipDistance(0);

    }

	void testLotsAndLotsOfEntities()
	{
		// Set ambient light
		mSceneMgr->setAmbientLight(ColourValue(0.5, 0.5, 0.5));

		// Create a point light
		Light* l = mSceneMgr->createLight("MainLight");
		l->setType(Light::LT_DIRECTIONAL);
		l->setDirection(-Vector3::UNIT_Y);

		// Create a set of random balls
		Entity* ent = mSceneMgr->createEntity("Ball", "ogrehead.mesh");
		mSceneMgr->getRootSceneNode()->createChildSceneNode()->attachObject(ent);
		createRandomEntityClones(ent, 400, Vector3(-2000,-2000,-2000), Vector3(2000,2000,2000));

		//bool val = true;
		//mSceneMgr->setOption("ShowOctree", &val);

	}

	void testSimpleMesh()
	{
		// Set ambient light
		mSceneMgr->setAmbientLight(ColourValue(0.5, 0.5, 0.5));

		// Create a point light
		Light* l = mSceneMgr->createLight("MainLight");
		l->setType(Light::LT_DIRECTIONAL);
		Vector3 dir(1, -1, 0);
		dir.normalise();
		l->setDirection(dir);

		// Create a set of random balls
		Entity* ent = mSceneMgr->createEntity("test", "xsicylinder.mesh");
		mSceneMgr->getRootSceneNode()->createChildSceneNode()->attachObject(ent);

	}

	void testGLSLTangent()
	{

		Entity* ent = mSceneMgr->createEntity("test", "athene.mesh");
		mSceneMgr->getRootSceneNode()->createChildSceneNode()->attachObject(ent);
		ent->setMaterialName("testglsl");
	}

	void testInfiniteAAB()
	{
		// When using the BspSceneManager
		//mSceneMgr->setWorldGeometry("ogretestmap.bsp");

		// When using the TerrainSceneManager
		mSceneMgr->setWorldGeometry("terrain.cfg");

		AxisAlignedBox b1; // null
		assert( b1.isNull() );
		
		AxisAlignedBox b2(Vector3::ZERO, 5.0 * Vector3::UNIT_SCALE); // finite
		assert( b2.isFinite() );

		AxisAlignedBox b3;
		b3.setInfinite();
		assert( b3.isInfinite() );

		{
			// Create background material
			MaterialPtr material = MaterialManager::getSingleton().create("Background", "General");
			material->getTechnique(0)->getPass(0)->createTextureUnitState("rockwall.tga");
			material->getTechnique(0)->getPass(0)->setDepthCheckEnabled(false);
			material->getTechnique(0)->getPass(0)->setDepthWriteEnabled(false);
			material->getTechnique(0)->getPass(0)->setLightingEnabled(false);

			// Create left background rectangle
			// NOTE: Uses finite aab
			Rectangle2D* rect1 = new Rectangle2D(true);
			rect1->setCorners(-0.5, 0.1, -0.1, -0.1);
			// Hacky, set small bounding box, to show problem
			rect1->setBoundingBox(AxisAlignedBox(-10.0*Vector3::UNIT_SCALE, 10.0*Vector3::UNIT_SCALE));
			rect1->setMaterial("Background");
			rect1->setRenderQueueGroup(RENDER_QUEUE_OVERLAY - 1);
			SceneNode* node = mSceneMgr->getRootSceneNode()->createChildSceneNode("Background1");
			node->attachObject(rect1);

			// Create right background rectangle
			// NOTE: Uses infinite aab
			Rectangle2D* rect2 = new Rectangle2D(true);
			rect2->setCorners(0.1, 0.1, 0.5, -0.1);
			AxisAlignedBox aabInf; aabInf.setInfinite();
			rect2->setBoundingBox(aabInf);
			rect2->setMaterial("Background");
			rect2->setRenderQueueGroup(RENDER_QUEUE_OVERLAY - 1);
			node = mSceneMgr->getRootSceneNode()->createChildSceneNode("Background2");
			node->attachObject(rect2);

			// Create a manual object for 2D
			ManualObject* manual = mSceneMgr->createManualObject("manual");
			manual->setUseIdentityProjection(true);
			manual->setUseIdentityView(true);
			manual->begin("BaseWhiteNoLighting", RenderOperation::OT_LINE_STRIP);
			manual->position(-0.2, -0.2, 0.0);
			manual->position( 0.2, -0.2, 0.0);
			manual->position( 0.2,  0.2, 0.0);
			manual->position(-0.2,  0.2, 0.0);
			manual->index(0);
			manual->index(1);
			manual->index(2);
			manual->index(3);
			manual->index(0);
			manual->end();
			manual->setBoundingBox(aabInf); // Use infinite aab to always stay visible
			rect2->setRenderQueueGroup(RENDER_QUEUE_OVERLAY - 1);
			mSceneMgr->getRootSceneNode()->createChildSceneNode()->attachObject(manual);
		}

		mSceneMgr->showBoundingBoxes(true);

		Entity* ent = mSceneMgr->createEntity("test", "ogrehead.mesh");
		mSceneMgr->getRootSceneNode()->createChildSceneNode(
			"test", 50.0 * Vector3::UNIT_X)->attachObject(ent);
	}

	void test2Windows(void)
	{
		// Set ambient light
		mSceneMgr->setAmbientLight(ColourValue(0.5, 0.5, 0.5));

		// Create a point light
		Light* l = mSceneMgr->createLight("MainLight");
		l->setType(Light::LT_DIRECTIONAL);
		Vector3 dir(1, -1, 0);
		dir.normalise();
		l->setDirection(dir);

		Entity* ent = mSceneMgr->createEntity("head", "robot.mesh");
		AnimationState* a = ent->getAnimationState("Walk");
		a->setEnabled(true);
		mAnimStateList.push_back(a);
		mSceneMgr->getRootSceneNode()->createChildSceneNode()->attachObject(ent);

		NameValuePairList valuePair;
		valuePair["top"] = StringConverter::toString(0);
		valuePair["left"] = StringConverter::toString(0);

		RenderWindow* win2 = mRoot->createRenderWindow("window2", 800,600, true, &valuePair);
		win2->addViewport(mCamera);



	}

	void testStaticGeometry(void)
	{
		mSceneMgr->setShadowTechnique(SHADOWTYPE_STENCIL_ADDITIVE);
		//mSceneMgr->setShowDebugShadows(true);

		mSceneMgr->setSkyBox(true, "Examples/EveningSkyBox");
		// Set ambient light
		mSceneMgr->setAmbientLight(ColourValue(0.5, 0.5, 0.5));

		// Create a point light
		Light* l = mSceneMgr->createLight("MainLight");
		l->setType(Light::LT_DIRECTIONAL);
		Vector3 dir(0, -1, -1.5);
		dir.normalise();
		l->setDirection(dir);
		l->setDiffuseColour(1.0, 0.7, 0.0);


		Plane plane;
		plane.normal = Vector3::UNIT_Y;
		plane.d = 0;
		MeshManager::getSingleton().createPlane("Myplane",
			ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME, plane,
			4500,4500,10,10,true,1,5,5,Vector3::UNIT_Z);
		Entity* pPlaneEnt = mSceneMgr->createEntity( "plane", "Myplane" );
		pPlaneEnt->setMaterialName("Examples/GrassFloor");
		pPlaneEnt->setCastShadows(false);
		mSceneMgr->getRootSceneNode()->createChildSceneNode()->attachObject(pPlaneEnt);

		Vector3 min(-2000,0,-2000);
		Vector3 max(2000,0,2000);


		Entity* e = mSceneMgr->createEntity("1", "column.mesh");
		//createRandomEntityClones(e, 1000, min, max);
		
		StaticGeometry* s = mSceneMgr->createStaticGeometry("bing");
		s->setCastShadows(true);
		s->setRegionDimensions(Vector3(500,500,500));
		for (int i = 0; i < 100; ++i)
		{
			Vector3 pos;
			pos.x = Math::RangeRandom(min.x, max.x);
			pos.y = Math::RangeRandom(min.y, max.y);
			pos.z = Math::RangeRandom(min.z, max.z);

			s->addEntity(e, pos, Quaternion::IDENTITY);

		}

		s->build();
		//s->setRenderingDistance(1000);
		//s->dump("static.txt");
		//mSceneMgr->showBoundingBoxes(true);
		mCamera->setLodBias(0.5);
		



	}

	void testReloadResources()
	{
		mSceneMgr->setAmbientLight(ColourValue::White);
		ResourceGroupManager::getSingleton().createResourceGroup("Sinbad");
		Root::getSingleton().addResourceLocation("../../../Media/models", "FileSystem", "Sinbad");
		MeshManager& mmgr = MeshManager::getSingleton();
		mmgr.load("robot.mesh", "Sinbad");
		mmgr.load("knot.mesh", "Sinbad");

		Entity* e = mSceneMgr->createEntity("1", "robot.mesh");
		mSceneMgr->getRootSceneNode()->createChildSceneNode()->attachObject(e);
		e = mSceneMgr->createEntity("2", "robot.mesh");
		mSceneMgr->getRootSceneNode()->createChildSceneNode(Vector3(100,0,0))->attachObject(e);
		e = mSceneMgr->createEntity("3", "knot.mesh");
		mSceneMgr->getRootSceneNode()->createChildSceneNode(Vector3(100,300,0))->attachObject(e);

		testreload = true;

	}

	void testBillboardTextureCoords()
	{
		mSceneMgr->setAmbientLight(ColourValue::White);

		BillboardSet* bbs = mSceneMgr->createBillboardSet("test");
        BillboardSet* bbs2 = mSceneMgr->createBillboardSet("test2");
		float xsegs = 3;
		float ysegs = 3;
		float width = 300;
		float height = 300;
		float gap = 20;

		// set up texture coords
		bbs->setTextureStacksAndSlices(ysegs, xsegs);
		bbs->setDefaultDimensions(width/xsegs, height/xsegs);
		bbs2->setDefaultDimensions(width/xsegs, height/xsegs);

		for (float y = 0; y < ysegs; ++y)
		{
			for (float x = 0; x < xsegs; ++x)
			{
				Vector3 midPoint;
				midPoint.x = (x * width / xsegs) + ((x-1) * gap);
				midPoint.y = (y * height / ysegs) + ((y-1) * gap);
				midPoint.z = 0;
				Billboard* bb = bbs->createBillboard(midPoint);
				bb->setTexcoordIndex((ysegs - y - 1)*xsegs + x);
                Billboard* bb2 = bbs2->createBillboard(midPoint);
                bb2->setTexcoordRect(
                    FloatRect((x + 0) / xsegs, (ysegs - y - 1) / ysegs,
                              (x + 1) / xsegs, (ysegs - y - 0) / ysegs));
			}
		}

		bbs->setMaterialName("Examples/OgreLogo");
        bbs2->setMaterialName("Examples/OgreLogo");
		mSceneMgr->getRootSceneNode()->createChildSceneNode()->attachObject(bbs);
        mSceneMgr->getRootSceneNode()
            ->createChildSceneNode(Vector3(- (width + xsegs * gap), 0, 0))
            ->attachObject(bbs2);

	}

	class SortFunctor
	{
	public:
		int operator()(const int& p) const
		{
			return p;
		}

	};
	void testRadixSort()
	{
		RadixSort<std::list<int>, int, int> rs;
		SortFunctor f;

		std::list<int> particles;
		for (int r = 0; r < 20; ++r)
		{
			particles.push_back((int)Math::RangeRandom(-1e3f, 1e3f));
		}

		std::list<int>::iterator i;
		LogManager::getSingleton().logMessage("BEFORE");
		for (i = particles.begin(); i != particles.end(); ++i)
		{
			StringUtil::StrStreamType str;
			str << *i;
			LogManager::getSingleton().logMessage(str.str());
		}

		rs.sort(particles, f);


		LogManager::getSingleton().logMessage("AFTER");
		for (i = particles.begin(); i != particles.end(); ++i)
		{
			StringUtil::StrStreamType str;
			str << *i;
			LogManager::getSingleton().logMessage(str.str());
		}



	}

	void testMorphAnimation()
	{
		bool testStencil = true;

		if (testStencil)
			mSceneMgr->setShadowTechnique(SHADOWTYPE_STENCIL_MODULATIVE);

		mSceneMgr->setAmbientLight(ColourValue(0.5, 0.5, 0.5));
		Vector3 dir(-1, -1, 0.5);
		dir.normalise();
		Light* l = mSceneMgr->createLight("light1");
		l->setType(Light::LT_DIRECTIONAL);
		l->setDirection(dir);

		
		MeshPtr mesh = MeshManager::getSingleton().load("cube.mesh", 
			ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME);

		SubMesh* sm = mesh->getSubMesh(0);
		// Re-organise geometry since this mesh has no animation and all 
		// vertex elements are packed into one buffer
		VertexDeclaration* newDecl = 
			sm->vertexData->vertexDeclaration->getAutoOrganisedDeclaration(false, true);
		sm->vertexData->reorganiseBuffers(newDecl);
		if (testStencil)
			sm->vertexData->prepareForShadowVolume(); // need to re-prep since reorganised
		// get the position buffer (which should now be separate);
		const VertexElement* posElem = 
			sm->vertexData->vertexDeclaration->findElementBySemantic(VES_POSITION);
		HardwareVertexBufferSharedPtr origbuf = 
			sm->vertexData->vertexBufferBinding->getBuffer(
				posElem->getSource());

		// Create a new position buffer with updated values
		HardwareVertexBufferSharedPtr newbuf = 
			HardwareBufferManager::getSingleton().createVertexBuffer(
				VertexElement::getTypeSize(VET_FLOAT3),
				sm->vertexData->vertexCount, 
				HardwareBuffer::HBU_STATIC, true);
		float* pSrc = static_cast<float*>(origbuf->lock(HardwareBuffer::HBL_READ_ONLY));
		float* pDst = static_cast<float*>(newbuf->lock(HardwareBuffer::HBL_DISCARD));

		for (size_t v = 0; v < sm->vertexData->vertexCount; ++v)
		{
			// x
			*pDst++ = *pSrc++;
			// y (translate)
			*pDst++ = (*pSrc++) + 100.0f;
			// z
			*pDst++ = *pSrc++;
		}

		origbuf->unlock();
		newbuf->unlock();
		
		// create a morph animation
		Animation* anim = mesh->createAnimation("testAnim", 10.0f);
		VertexAnimationTrack* vt = anim->createVertexTrack(1, sm->vertexData, VAT_MORPH);
		// re-use start positions for frame 0
		VertexMorphKeyFrame* kf = vt->createVertexMorphKeyFrame(0);
		kf->setVertexBuffer(origbuf);

		// Use translated buffer for mid frame
		kf = vt->createVertexMorphKeyFrame(5.0f);
		kf->setVertexBuffer(newbuf);

		// re-use start positions for final frame
		kf = vt->createVertexMorphKeyFrame(10.0f);
		kf->setVertexBuffer(origbuf);

		// write
		MeshSerializer ser;
		ser.exportMesh(mesh.get(), "../../../Media/testmorph.mesh");
		

		Entity* e = mSceneMgr->createEntity("test", "testmorph.mesh");
		mSceneMgr->getRootSceneNode()->createChildSceneNode()->attachObject(e);
		AnimationState* animState = e->getAnimationState("testAnim");
		animState->setEnabled(true);
		animState->setWeight(1.0f);
		mAnimStateList.push_back(animState);

		e = mSceneMgr->createEntity("test2", "testmorph.mesh");
		mSceneMgr->getRootSceneNode()->createChildSceneNode(Vector3(100,0,0))->attachObject(e);
		// test hardware morph
		e->setMaterialName("Examples/HardwareMorphAnimation");
		animState = e->getAnimationState("testAnim");
		animState->setEnabled(true);
		animState->setWeight(1.0f);
		mAnimStateList.push_back(animState);

		mCamera->setNearClipDistance(0.5);
		//mSceneMgr->setShowDebugShadows(true);

		Plane plane;
		plane.normal = Vector3::UNIT_Y;
		plane.d = 200;
		MeshManager::getSingleton().createPlane("Myplane",
			ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME, plane,
			1500,1500,10,10,true,1,5,5,Vector3::UNIT_Z);
		Entity* pPlaneEnt = mSceneMgr->createEntity( "plane", "Myplane" );
		pPlaneEnt->setMaterialName("2 - Default");
		pPlaneEnt->setCastShadows(false);
		mSceneMgr->getRootSceneNode()->createChildSceneNode()->attachObject(pPlaneEnt);



	}


	void testPoseAnimation()
	{
		bool testStencil = false;

		if (testStencil)
			mSceneMgr->setShadowTechnique(SHADOWTYPE_STENCIL_MODULATIVE);

		mSceneMgr->setAmbientLight(ColourValue(0.5, 0.5, 0.5));
		Vector3 dir(-1, -1, 0.5);
		dir.normalise();
		Light* l = mSceneMgr->createLight("light1");
		l->setType(Light::LT_DIRECTIONAL);
		l->setDirection(dir);

		MeshPtr mesh = MeshManager::getSingleton().load("cube.mesh", 
			ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME);

		SubMesh* sm = mesh->getSubMesh(0);
		// Re-organise geometry since this mesh has no animation and all 
		// vertex elements are packed into one buffer
		VertexDeclaration* newDecl = 
			sm->vertexData->vertexDeclaration->getAutoOrganisedDeclaration(false, true);
		sm->vertexData->reorganiseBuffers(newDecl);
		if (testStencil)
			sm->vertexData->prepareForShadowVolume(); // need to re-prep since reorganised
		// get the position buffer (which should now be separate);
		const VertexElement* posElem = 
			sm->vertexData->vertexDeclaration->findElementBySemantic(VES_POSITION);
		HardwareVertexBufferSharedPtr origbuf = 
			sm->vertexData->vertexBufferBinding->getBuffer(
			posElem->getSource());


		// create 2 poses
		Pose* pose = mesh->createPose(1, "pose1");
		// Pose1 moves vertices 0, 1, 2 and 3 upward
		Vector3 offset1(0, 50, 0);
		pose->addVertex(0, offset1);
		pose->addVertex(1, offset1);
		pose->addVertex(2, offset1);
		pose->addVertex(3, offset1);

		pose = mesh->createPose(1, "pose2");
		// Pose2 moves vertices 3, 4, and 5 to the right
		// Note 3 gets affected by both
		Vector3 offset2(100, 0, 0);
		pose->addVertex(3, offset2);
		pose->addVertex(4, offset2);
		pose->addVertex(5, offset2);


		Animation* anim = mesh->createAnimation("poseanim", 20.0f);
		VertexAnimationTrack* vt = anim->createVertexTrack(1, sm->vertexData, VAT_POSE);
		
		// Frame 0 - no effect 
		VertexPoseKeyFrame* kf = vt->createVertexPoseKeyFrame(0);

		// Frame 1 - bring in pose 1 (index 0)
		kf = vt->createVertexPoseKeyFrame(3);
		kf->addPoseReference(0, 1.0f);

		// Frame 2 - remove all 
		kf = vt->createVertexPoseKeyFrame(6);

		// Frame 3 - bring in pose 2 (index 1)
		kf = vt->createVertexPoseKeyFrame(9);
		kf->addPoseReference(1, 1.0f);

		// Frame 4 - remove all
		kf = vt->createVertexPoseKeyFrame(12);


		// Frame 5 - bring in pose 1 at 50%, pose 2 at 100% 
		kf = vt->createVertexPoseKeyFrame(15);
		kf->addPoseReference(0, 0.5f);
		kf->addPoseReference(1, 1.0f);

		// Frame 6 - bring in pose 1 at 100%, pose 2 at 50% 
		kf = vt->createVertexPoseKeyFrame(18);
		kf->addPoseReference(0, 1.0f);
		kf->addPoseReference(1, 0.5f);

		// Frame 7 - reset
		kf = vt->createVertexPoseKeyFrame(20);

		// write
		MeshSerializer ser;
		ser.exportMesh(mesh.get(), "../../../Media/testpose.mesh");


		Entity*  e;
		AnimationState* animState;
		// software pose
		e = mSceneMgr->createEntity("test2", "testpose.mesh");
		mSceneMgr->getRootSceneNode()->createChildSceneNode(Vector3(150,0,0))->attachObject(e);
		animState = e->getAnimationState("poseanim");
		animState->setEnabled(true);
		animState->setWeight(1.0f);
		mAnimStateList.push_back(animState);
		
		// test hardware pose
		e = mSceneMgr->createEntity("test", "testpose.mesh");
		mSceneMgr->getRootSceneNode()->createChildSceneNode()->attachObject(e);
		e->setMaterialName("Examples/HardwarePoseAnimation");
		animState = e->getAnimationState("poseanim");
		animState->setEnabled(true);
		animState->setWeight(1.0f);
		mAnimStateList.push_back(animState);
		

		mCamera->setNearClipDistance(0.5);
		mSceneMgr->setShowDebugShadows(true);

		Plane plane;
		plane.normal = Vector3::UNIT_Y;
		plane.d = 200;
		MeshManager::getSingleton().createPlane("Myplane",
			ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME, plane,
			1500,1500,10,10,true,1,5,5,Vector3::UNIT_Z);
		Entity* pPlaneEnt = mSceneMgr->createEntity( "plane", "Myplane" );
		pPlaneEnt->setMaterialName("2 - Default");
		pPlaneEnt->setCastShadows(false);
		mSceneMgr->getRootSceneNode()->createChildSceneNode()->attachObject(pPlaneEnt);

		mCamera->setPosition(0,0,-300);
		mCamera->lookAt(0,0,0);



	}

	void testPoseAnimation2()
	{
		mSceneMgr->setAmbientLight(ColourValue(0.5, 0.5, 0.5));
		Vector3 dir(-1, -1, -0.5);
		dir.normalise();
		Light* l = mSceneMgr->createLight("light1");
		l->setType(Light::LT_DIRECTIONAL);
		l->setDirection(dir);

		/*
		MeshPtr mesh = MeshManager::getSingleton().load("facial.mesh", ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME);
		Animation* anim = mesh->createAnimation("pose", 20);
		VertexAnimationTrack* track = anim->createVertexTrack(4, VAT_POSE);
		// Frame 0 - no effect 
		VertexPoseKeyFrame* kf = track->createVertexPoseKeyFrame(0);

		// bring in pose 4 (happy)
		kf = track->createVertexPoseKeyFrame(5);
		kf->addPoseReference(4, 1.0f);

		// bring in pose 5 (sad)
		kf = track->createVertexPoseKeyFrame(10);
		kf->addPoseReference(5, 1.0f);

		// bring in pose 6 (mad)
		kf = track->createVertexPoseKeyFrame(15);
		kf->addPoseReference(6, 1.0f);
		
		kf = track->createVertexPoseKeyFrame(20);
		*/

		// software pose
		Entity* e = mSceneMgr->createEntity("test2", "facial.mesh");
		mSceneMgr->getRootSceneNode()->createChildSceneNode(Vector3(150,0,0))->attachObject(e);
		AnimationState* animState = e->getAnimationState("Speak");
		animState->setEnabled(true);
		animState->setWeight(1.0f);
		mAnimStateList.push_back(animState);


		/*
		// test hardware pose
		e = mSceneMgr->createEntity("test", "testpose.mesh");
		mSceneMgr->getRootSceneNode()->createChildSceneNode()->attachObject(e);
		e->setMaterialName("Examples/HardwarePoseAnimation");
		animState = e->getAnimationState("poseanim");
		animState->setEnabled(true);
		animState->setWeight(1.0f);
		mAnimStateList.push_back(animState);
		*/


		mCamera->setNearClipDistance(0.5);
		mSceneMgr->setShowDebugShadows(true);

		Plane plane;
		plane.normal = Vector3::UNIT_Y;
		plane.d = 200;
		MeshManager::getSingleton().createPlane("Myplane",
			ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME, plane,
			1500,1500,10,10,true,1,5,5,Vector3::UNIT_Z);
		Entity* pPlaneEnt = mSceneMgr->createEntity( "plane", "Myplane" );
		pPlaneEnt->setMaterialName("2 - Default");
		pPlaneEnt->setCastShadows(false);
		mSceneMgr->getRootSceneNode()->createChildSceneNode()->attachObject(pPlaneEnt);

	}


	void testReflectedBillboards()
	{
		// Set ambient light
		mSceneMgr->setAmbientLight(ColourValue(0.2, 0.2, 0.2));

		// Create a light
		Light* l = mSceneMgr->createLight("MainLight");
		l->setType(Light::LT_DIRECTIONAL);
		Vector3 dir(0.5, -1, 0);
		dir.normalise();
		l->setDirection(dir);
		l->setDiffuseColour(1.0f, 1.0f, 0.8f);
		l->setSpecularColour(1.0f, 1.0f, 1.0f);


		// Create a prefab plane
		Plane plane;
		plane.d = 0;
		plane.normal = Vector3::UNIT_Y;
		MeshManager::getSingleton().createPlane("ReflectionPlane", 
			ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME, 
			plane, 2000, 2000, 
			1, 1, true, 1, 1, 1, Vector3::UNIT_Z);
		Entity* planeEnt = mSceneMgr->createEntity( "Plane", "ReflectionPlane" );

		// Attach the rtt entity to the root of the scene
		SceneNode* rootNode = mSceneMgr->getRootSceneNode();
		SceneNode* planeNode = rootNode->createChildSceneNode();

		// Attach both the plane entity, and the plane definition
		planeNode->attachObject(planeEnt);

		RenderTexture* rttTex = mRoot->getRenderSystem()->createRenderTexture( "RttTex", 512, 512, TEX_TYPE_2D, PF_R8G8B8 );
		{
			reflectCam = mSceneMgr->createCamera("ReflectCam");
			reflectCam->setNearClipDistance(mCamera->getNearClipDistance());
			reflectCam->setFarClipDistance(mCamera->getFarClipDistance());
			reflectCam->setAspectRatio(
				(Real)mWindow->getViewport(0)->getActualWidth() / 
				(Real)mWindow->getViewport(0)->getActualHeight());

			Viewport *v = rttTex->addViewport( reflectCam );
			v->setClearEveryFrame( true );
			v->setBackgroundColour( ColourValue::Black );

			MaterialPtr mat = MaterialManager::getSingleton().create("RttMat",
				ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME);
			TextureUnitState* t = mat->getTechnique(0)->getPass(0)->createTextureUnitState("RustedMetal.jpg");
			t = mat->getTechnique(0)->getPass(0)->createTextureUnitState("RttTex");
			// Blend with base texture
			t->setColourOperationEx(LBX_BLEND_MANUAL, LBS_TEXTURE, LBS_CURRENT, ColourValue::White, 
				ColourValue::White, 0.25);
			t->setTextureAddressingMode(TextureUnitState::TAM_CLAMP);
			t->setProjectiveTexturing(true, reflectCam);

			// set up linked reflection
			reflectCam->enableReflection(plane);
			// Also clip
			reflectCam->enableCustomNearClipPlane(plane);
		}

		// Give the plane a texture
		planeEnt->setMaterialName("RttMat");


		// point billboards
		ParticleSystem* pSys2 = mSceneMgr->createParticleSystem("fountain1", 
			"Examples/Smoke");
		// Point the fountain at an angle
		SceneNode* fNode = static_cast<SceneNode*>(rootNode->createChild());
		fNode->attachObject(pSys2);

		// oriented_self billboards
		ParticleSystem* pSys3 = mSceneMgr->createParticleSystem("fountain2", 
			"Examples/PurpleFountain");
		// Point the fountain at an angle
		fNode = rootNode->createChildSceneNode();
		fNode->translate(-200,-100,0);
		fNode->rotate(Vector3::UNIT_Z, Degree(-20));
		fNode->attachObject(pSys3);



		// oriented_common billboards
		ParticleSystem* pSys4 = mSceneMgr->createParticleSystem("rain", 
			"Examples/Rain");
		SceneNode* rNode = mSceneMgr->getRootSceneNode()->createChildSceneNode();
		rNode->translate(0,1000,0);
		rNode->attachObject(pSys4);
		// Fast-forward the rain so it looks more natural
		pSys4->fastForward(5);


		mCamera->setPosition(-50, 100, 500);
		mCamera->lookAt(0,0,0);
	}

	void testManualObjectNonIndexed()
	{
		mSceneMgr->setAmbientLight(ColourValue(0.5, 0.5, 0.5));
		Vector3 dir(-1, -1, 0.5);
		dir.normalise();
		Light* l = mSceneMgr->createLight("light1");
		l->setType(Light::LT_DIRECTIONAL);
		l->setDirection(dir);

		Plane plane;
		plane.normal = Vector3::UNIT_Y;
		plane.d = 100;
		MeshManager::getSingleton().createPlane("Myplane",
			ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME, plane,
			1500,1500,10,10,true,1,5,5,Vector3::UNIT_Z);
		Entity* pPlaneEnt = mSceneMgr->createEntity( "plane", "Myplane" );
		pPlaneEnt->setMaterialName("2 - Default");
		pPlaneEnt->setCastShadows(false);
		mSceneMgr->getRootSceneNode()->createChildSceneNode()->attachObject(pPlaneEnt);

		ManualObject* man = static_cast<ManualObject*>(
			mSceneMgr->createMovableObject("test", ManualObjectFactory::FACTORY_TYPE_NAME));

		man->begin("Examples/OgreLogo");
		// Define a 40x40 plane, non-indexed
		man->position(-20, 20, 20);
		man->normal(0, 0, 1);
		man->textureCoord(0, 0);

		man->position(-20, -20, 20);
		man->normal(0, 0, 1);
		man->textureCoord(0, 1);

		man->position(20, 20, 20);
		man->normal(0, 0, 1);
		man->textureCoord(1, 0);

		man->position(-20, -20, 20);
		man->normal(0, 0, 1);
		man->textureCoord(0, 1);

		man->position(20, -20, 20);
		man->normal(0, 0, 1);
		man->textureCoord(1, 1);

		man->position(20, 20, 20);
		man->normal(0, 0, 1);
		man->textureCoord(1, 0);

		man->end();

		man->begin("Examples/BumpyMetal");

		// Define a 40x40 plane, non-indexed
		man->position(-20, 20, 20);
		man->normal(0, 1, 0);
		man->textureCoord(0, 0);

		man->position(20, 20, 20);
		man->normal(0, 1, 0);
		man->textureCoord(0, 1);

		man->position(20, 20, -20);
		man->normal(0, 1, 0);
		man->textureCoord(1, 1);

		man->position(20, 20, -20);
		man->normal(0, 1, 0);
		man->textureCoord(1, 1);

		man->position(-20, 20, -20);
		man->normal(0, 1, 0);
		man->textureCoord(1, 0);

		man->position(-20, 20, 20);
		man->normal(0, 1, 0);
		man->textureCoord(0, 0);

		man->end();


		mSceneMgr->getRootSceneNode()->createChildSceneNode()->attachObject(man);

	}

	void testManualObjectNonIndexedUpdateSmaller()
	{
		testManualObjectNonIndexed();
		ManualObject* man = static_cast<ManualObject*>(
			mSceneMgr->getMovableObject("test", ManualObjectFactory::FACTORY_TYPE_NAME));

		// Redefine but make smaller (one tri less)
		man->beginUpdate(0);
		man->position(-30, 30, 30);
		man->normal(0, 0, 1);
		man->textureCoord(0, 0);

		man->position(-30, -30, 30);
		man->normal(0, 0, 1);
		man->textureCoord(0, 1);

		man->position(30, 30, 30);
		man->normal(0, 0, 1);
		man->textureCoord(1, 0);


		man->end();

	}

	void testManualObjectNonIndexedUpdateLarger()
	{
		testManualObjectNonIndexed();
		ManualObject* man = static_cast<ManualObject*>(
			mSceneMgr->getMovableObject("test", ManualObjectFactory::FACTORY_TYPE_NAME));

		// Redefine but make larger (2 more tri)
		man->beginUpdate(0);

		man->position(-20, 20, 20);
		man->normal(0, 0, 1);
		man->textureCoord(0, 0);

		man->position(-20, -20, 20);
		man->normal(0, 0, 1);
		man->textureCoord(0, 1);

		man->position(20, 20, 20);
		man->normal(0, 0, 1);
		man->textureCoord(1, 0);

		man->position(-20, -20, 20);
		man->normal(0, 0, 1);
		man->textureCoord(0, 1);

		man->position(20, -20, 20);
		man->normal(0, 0, 1);
		man->textureCoord(1, 1);

		man->position(20, 20, 20);
		man->normal(0, 0, 1);
		man->textureCoord(1, 0);


		man->position(-20, 40, 20);
		man->normal(0, 0, 1);
		man->textureCoord(0, 0);

		man->position(-20, 20, 20);
		man->normal(0, 0, 1);
		man->textureCoord(0, 1);

		man->position(20, 40, 20);
		man->normal(0, 0, 1);
		man->textureCoord(1, 0);

		man->position(-20, 20, 20);
		man->normal(0, 0, 1);
		man->textureCoord(0, 1);

		man->position(20, 20, 20);
		man->normal(0, 0, 1);
		man->textureCoord(1, 1);

		man->position(20, 40, 20);
		man->normal(0, 0, 1);
		man->textureCoord(1, 0);


		man->end();

	}
	void testManualObjectIndexed()
	{
		mSceneMgr->setAmbientLight(ColourValue(0.5, 0.5, 0.5));
		Vector3 dir(-1, -1, 0.5);
		dir.normalise();
		Light* l = mSceneMgr->createLight("light1");
		l->setType(Light::LT_DIRECTIONAL);
		l->setDirection(dir);

		Plane plane;
		plane.normal = Vector3::UNIT_Y;
		plane.d = 100;
		MeshManager::getSingleton().createPlane("Myplane",
			ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME, plane,
			1500,1500,10,10,true,1,5,5,Vector3::UNIT_Z);
		Entity* pPlaneEnt = mSceneMgr->createEntity( "plane", "Myplane" );
		pPlaneEnt->setMaterialName("2 - Default");
		pPlaneEnt->setCastShadows(false);
		mSceneMgr->getRootSceneNode()->createChildSceneNode()->attachObject(pPlaneEnt);

		ManualObject* man = static_cast<ManualObject*>(
			mSceneMgr->createMovableObject("test", ManualObjectFactory::FACTORY_TYPE_NAME));

		man->begin("Examples/OgreLogo");
		// Define a 40x40 plane, indexed
		man->position(-20, 20, 20);
		man->normal(0, 0, 1);
		man->textureCoord(0, 0);

		man->position(-20, -20, 20);
		man->normal(0, 0, 1);
		man->textureCoord(0, 1);

		man->position(20, -20, 20);
		man->normal(0, 0, 1);
		man->textureCoord(1, 1);

		man->position(20, 20, 20);
		man->normal(0, 0, 1);
		man->textureCoord(1, 0);

		man->quad(0, 1, 2, 3);

		man->end();

		man->begin("Examples/BumpyMetal");

		// Define a 40x40 plane, indexed
		man->position(-20, 20, 20);
		man->normal(0, 1, 0);
		man->textureCoord(0, 0);

		man->position(20, 20, 20);
		man->normal(0, 1, 0);
		man->textureCoord(0, 1);

		man->position(20, 20, -20);
		man->normal(0, 1, 0);
		man->textureCoord(1, 1);

		man->position(-20, 20, -20);
		man->normal(0, 1, 0);
		man->textureCoord(1, 0);

		man->quad(0, 1, 2, 3);

		man->end();


		mSceneMgr->getRootSceneNode()->createChildSceneNode()->attachObject(man);

		

	}

	void testManualObjectIndexedUpdateSmaller()
	{
		testManualObjectIndexed();
		ManualObject* man = static_cast<ManualObject*>(
			mSceneMgr->getMovableObject("test", ManualObjectFactory::FACTORY_TYPE_NAME));


		man->beginUpdate(0);
		// 1 tri smaller
		man->position(-20, 20, 20);
		man->normal(0, 0, 1);
		man->textureCoord(0, 0);

		man->position(-20, -20, 20);
		man->normal(0, 0, 1);
		man->textureCoord(0, 1);

		man->position(20, -20, 20);
		man->normal(0, 0, 1);
		man->textureCoord(1, 1);

		man->triangle(0, 1, 2);

		man->end();

	}

	void testManualObjectIndexedUpdateLarger()
	{
		testManualObjectIndexed();
		ManualObject* man = static_cast<ManualObject*>(
			mSceneMgr->getMovableObject("test", ManualObjectFactory::FACTORY_TYPE_NAME));


		man->beginUpdate(0);
		// 1 quad larger
		man->position(-20, 20, 20);
		man->normal(0, 0, 1);
		man->textureCoord(0, 0);

		man->position(-20, -20, 20);
		man->normal(0, 0, 1);
		man->textureCoord(0, 1);

		man->position(20, -20, 20);
		man->normal(0, 0, 1);
		man->textureCoord(1, 1);

		man->position(20, 20, 20);
		man->normal(0, 0, 1);
		man->textureCoord(1, 0);


		man->position(-20, 40, 20);
		man->normal(0, 0, 1);
		man->textureCoord(0, 0);

		man->position(-20, 20, 20);
		man->normal(0, 0, 1);
		man->textureCoord(0, 1);

		man->position(20, 20, 20);
		man->normal(0, 0, 1);
		man->textureCoord(1, 1);

		man->position(20, 40, 20);
		man->normal(0, 0, 1);
		man->textureCoord(1, 0);

		man->quad(0, 1, 2, 3);
		man->quad(4, 5, 6, 7);

		man->end();

	}

	void testBillboardChain()
	{
		mSceneMgr->setAmbientLight(ColourValue(0.5, 0.5, 0.5));
		Vector3 dir(-1, -1, 0.5);
		dir.normalise();
		Light* l = mSceneMgr->createLight("light1");
		l->setType(Light::LT_DIRECTIONAL);
		l->setDirection(dir);

		Plane plane;
		plane.normal = Vector3::UNIT_Y;
		plane.d = 100;
		MeshManager::getSingleton().createPlane("Myplane",
			ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME, plane,
			1500,1500,10,10,true,1,5,5,Vector3::UNIT_Z);
		Entity* pPlaneEnt = mSceneMgr->createEntity( "plane", "Myplane" );
		pPlaneEnt->setMaterialName("2 - Default");
		pPlaneEnt->setCastShadows(false);
		mSceneMgr->getRootSceneNode()->createChildSceneNode()->attachObject(pPlaneEnt);

		BillboardChain* chain = static_cast<BillboardChain*>(
			mSceneMgr->createMovableObject("1", "BillboardChain"));
		chain->setUseTextureCoords(true);
		chain->setUseVertexColours(false);
		/*
		BillboardChain::Element elem;
		elem.width = 10;
		elem.texCoord = 0;
		elem.position = Vector3(0,20,0);
		chain->addChainElement(0, elem);
		elem.position = Vector3(20,0,0);
		elem.texCoord = 1.0;
		chain->addChainElement(0, elem);
		elem.position = Vector3(40,10,0);
		elem.texCoord = 2.0;
		chain->addChainElement(0, elem);
		elem.position = Vector3(60,20,0);
		elem.texCoord = 3.0;
		chain->addChainElement(0, elem);
		elem.position = Vector3(80,40,0);
		elem.texCoord = 4.0;
		chain->addChainElement(0, elem);
		elem.position = Vector3(100,70,0);
		elem.texCoord = 5.0;
		chain->addChainElement(0, elem);
		*/
		chain->setMaterialName("Examples/RustySteel");
		mSceneMgr->getRootSceneNode()->createChildSceneNode()->attachObject(chain);

		mSceneMgr->showBoundingBoxes(true);
	}

	void testCubeDDS()
	{
		ResourceGroupManager::getSingleton().addResourceLocation(
			"../../../../Tests/Media", "FileSystem");

		MaterialPtr mat = MaterialManager::getSingleton().create("testcube", 
			ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME);
		Pass* p = mat->getTechnique(0)->getPass(0);
		p->setLightingEnabled(false);
		TextureUnitState* t = p->createTextureUnitState();
		t->setTextureName("grace_cube.dds", TEX_TYPE_CUBE_MAP);
		t->setTextureAddressingMode(TextureUnitState::TAM_CLAMP);
		t->setEnvironmentMap(true, TextureUnitState::ENV_REFLECTION);
		Entity* e = mSceneMgr->createEntity("1", "sphere.mesh");
		e->setMaterialName(mat->getName());
		mSceneMgr->getRootSceneNode()->createChildSceneNode()->attachObject(e);

		mCamera->setPosition(300,0,0);
		mCamera->lookAt(Vector3::ZERO);

	}

	void testDxt1()
	{
		ResourceGroupManager::getSingleton().addResourceLocation(
			"../../../../Tests/Media", "FileSystem");

		MaterialPtr mat = MaterialManager::getSingleton().create("testdxt", 
			ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME);
		Pass* p = mat->getTechnique(0)->getPass(0);
		p->setLightingEnabled(false);
		p->setCullingMode(CULL_NONE);
		TextureUnitState* t = p->createTextureUnitState("BumpyMetal_dxt1.dds");
		Entity *e = mSceneMgr->createEntity("Plane", SceneManager::PT_PLANE);
		e->setMaterialName(mat->getName());
		mSceneMgr->getRootSceneNode()->createChildSceneNode()->attachObject(e);

		mCamera->setPosition(0,0,-300);
		mCamera->lookAt(Vector3::ZERO);

	}
	void testDxt1FromMemory()
	{
		ResourceGroupManager::getSingleton().addResourceLocation(
			"../../../../Tests/Media", "FileSystem");

		DataStreamPtr stream = ResourceGroupManager::getSingleton().openResource("BumpyMetal_dxt1.dds");
		// manually load into image
		Image img;
		img.load(stream, "dds");
		TextureManager::getSingleton().loadImage("testdxtfrommem", ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME, img);

		

		MaterialPtr mat = MaterialManager::getSingleton().create("testdxt", 
			ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME);
		Pass* p = mat->getTechnique(0)->getPass(0);
		p->setLightingEnabled(false);
		p->setCullingMode(CULL_NONE);
		TextureUnitState* t = p->createTextureUnitState("testdxtfrommem");
		Entity *e = mSceneMgr->createEntity("Plane", SceneManager::PT_PLANE);
		e->setMaterialName(mat->getName());
		mSceneMgr->getRootSceneNode()->createChildSceneNode()->attachObject(e);

		mCamera->setPosition(0,0,-300);
		mCamera->lookAt(Vector3::ZERO);

	}
	void testDxt1Alpha()
	{
		ResourceGroupManager::getSingleton().addResourceLocation(
			"../../../../Tests/Media", "FileSystem");

		MaterialPtr mat = MaterialManager::getSingleton().create("testdxt", 
			ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME);
		Pass* p = mat->getTechnique(0)->getPass(0);
		p->setSceneBlending(SBT_TRANSPARENT_ALPHA);
		p->setAlphaRejectSettings(CMPF_GREATER, 128);
		p->setLightingEnabled(false);
		p->setCullingMode(CULL_NONE);
		TextureUnitState* t = p->createTextureUnitState("gras_02_dxt1.dds");
		Entity *e = mSceneMgr->createEntity("Plane", SceneManager::PT_PLANE);
		e->setMaterialName(mat->getName());
		mSceneMgr->getRootSceneNode()->createChildSceneNode()->attachObject(e);

		mCamera->setPosition(0,0,300);
		mCamera->lookAt(Vector3::ZERO);

	}
	void testDxt3()
	{
		ResourceGroupManager::getSingleton().addResourceLocation(
			"../../../../Tests/Media", "FileSystem");

		MaterialPtr mat = MaterialManager::getSingleton().create("testdxt", 
			ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME);
		Pass* p = mat->getTechnique(0)->getPass(0);
		p->setLightingEnabled(false);
		p->setCullingMode(CULL_NONE);
		p->setSceneBlending(SBT_TRANSPARENT_ALPHA);
		TextureUnitState* t = p->createTextureUnitState("ogreborderUp_dxt3.dds");
		Entity *e = mSceneMgr->createEntity("Plane", SceneManager::PT_PLANE);
		e->setMaterialName(mat->getName());
		mSceneMgr->getRootSceneNode()->createChildSceneNode()->attachObject(e);
		mWindow->getViewport(0)->setBackgroundColour(ColourValue::Red);

		mCamera->setPosition(0,0,300);
		mCamera->lookAt(Vector3::ZERO);

	}
	void testDxt3FromMemory()
	{
		ResourceGroupManager::getSingleton().addResourceLocation(
			"../../../../Tests/Media", "FileSystem");

		DataStreamPtr stream = ResourceGroupManager::getSingleton().openResource("ogreborderUp_dxt3.dds");
		// manually load into image
		Image img;
		img.load(stream, "dds");
		TextureManager::getSingleton().loadImage("testdxtfrommem", ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME, img);



		MaterialPtr mat = MaterialManager::getSingleton().create("testdxt", 
			ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME);
		Pass* p = mat->getTechnique(0)->getPass(0);
		p->setLightingEnabled(false);
		p->setCullingMode(CULL_NONE);
		p->setSceneBlending(SBT_TRANSPARENT_ALPHA);
		TextureUnitState* t = p->createTextureUnitState("testdxtfrommem");
		Entity *e = mSceneMgr->createEntity("Plane", SceneManager::PT_PLANE);
		e->setMaterialName(mat->getName());
		mSceneMgr->getRootSceneNode()->createChildSceneNode()->attachObject(e);
		mWindow->getViewport(0)->setBackgroundColour(ColourValue::Red);

		mCamera->setPosition(0,0,300);
		mCamera->lookAt(Vector3::ZERO);

	}
	void testDxt5()
	{
		ResourceGroupManager::getSingleton().addResourceLocation(
			"../../../../Tests/Media", "FileSystem");

		MaterialPtr mat = MaterialManager::getSingleton().create("testdxt", 
			ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME);
		Pass* p = mat->getTechnique(0)->getPass(0);
		p->setLightingEnabled(false);
		p->setCullingMode(CULL_NONE);
		p->setSceneBlending(SBT_TRANSPARENT_ALPHA);
		TextureUnitState* t = p->createTextureUnitState("ogreborderUp_dxt5.dds");
		Entity *e = mSceneMgr->createEntity("Plane", SceneManager::PT_PLANE);
		e->setMaterialName(mat->getName());
		mSceneMgr->getRootSceneNode()->createChildSceneNode()->attachObject(e);
		mWindow->getViewport(0)->setBackgroundColour(ColourValue::Red);

		mCamera->setPosition(0,0,300);
		mCamera->lookAt(Vector3::ZERO);

	}
	void testFloat64DDS()
	{
		ResourceGroupManager::getSingleton().addResourceLocation(
			"../../../../Tests/Media", "FileSystem");

		MaterialPtr mat = MaterialManager::getSingleton().create("testdds", 
			ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME);
		Pass* p = mat->getTechnique(0)->getPass(0);
		p->setLightingEnabled(false);
		p->setCullingMode(CULL_NONE);
		p->setSceneBlending(SBT_TRANSPARENT_ALPHA);
		TextureUnitState* t = p->createTextureUnitState("ogreborderUp_float64.dds");
		Entity *e = mSceneMgr->createEntity("Plane", SceneManager::PT_PLANE);
		e->setMaterialName(mat->getName());
		mSceneMgr->getRootSceneNode()->createChildSceneNode()->attachObject(e);
		mWindow->getViewport(0)->setBackgroundColour(ColourValue::Red);

		mCamera->setPosition(0,0,300);
		mCamera->lookAt(Vector3::ZERO);

	}
	void testFloat128DDS()
	{
		ResourceGroupManager::getSingleton().addResourceLocation(
			"../../../../Tests/Media", "FileSystem");

		MaterialPtr mat = MaterialManager::getSingleton().create("testdds", 
			ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME);
		Pass* p = mat->getTechnique(0)->getPass(0);
		p->setLightingEnabled(false);
		p->setCullingMode(CULL_NONE);
		p->setSceneBlending(SBT_TRANSPARENT_ALPHA);
		TextureUnitState* t = p->createTextureUnitState("ogreborderUp_float128.dds");
		Entity *e = mSceneMgr->createEntity("Plane", SceneManager::PT_PLANE);
		e->setMaterialName(mat->getName());
		mSceneMgr->getRootSceneNode()->createChildSceneNode()->attachObject(e);
		mWindow->getViewport(0)->setBackgroundColour(ColourValue::Red);

		mCamera->setPosition(0,0,300);
		mCamera->lookAt(Vector3::ZERO);

	}
	void testFloat16DDS()
	{
		ResourceGroupManager::getSingleton().addResourceLocation(
			"../../../../Tests/Media", "FileSystem");

		MaterialPtr mat = MaterialManager::getSingleton().create("testdds", 
			ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME);
		Pass* p = mat->getTechnique(0)->getPass(0);
		p->setLightingEnabled(false);
		p->setCullingMode(CULL_NONE);
		TextureUnitState* t = p->createTextureUnitState("BumpyMetal_float16.dds");
		Entity *e = mSceneMgr->createEntity("Plane", SceneManager::PT_PLANE);
		e->setMaterialName(mat->getName());
		mSceneMgr->getRootSceneNode()->createChildSceneNode()->attachObject(e);
		mWindow->getViewport(0)->setBackgroundColour(ColourValue::Red);

		mCamera->setPosition(0,0,300);
		mCamera->lookAt(Vector3::ZERO);

	}
	void testFloat32DDS()
	{
		ResourceGroupManager::getSingleton().addResourceLocation(
			"../../../../Tests/Media", "FileSystem");

		MaterialPtr mat = MaterialManager::getSingleton().create("testdds", 
			ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME);
		Pass* p = mat->getTechnique(0)->getPass(0);
		p->setLightingEnabled(false);
		p->setCullingMode(CULL_NONE);
		TextureUnitState* t = p->createTextureUnitState("BumpyMetal_float32.dds");
		Entity *e = mSceneMgr->createEntity("Plane", SceneManager::PT_PLANE);
		e->setMaterialName(mat->getName());
		mSceneMgr->getRootSceneNode()->createChildSceneNode()->attachObject(e);
		mWindow->getViewport(0)->setBackgroundColour(ColourValue::Red);

		mCamera->setPosition(0,0,300);
		mCamera->lookAt(Vector3::ZERO);

	}



	void testRibbonTrail()
	{
		mSceneMgr->setAmbientLight(ColourValue(0.5, 0.5, 0.5));
		Vector3 dir(-1, -1, 0.5);
		dir.normalise();
		Light* l = mSceneMgr->createLight("light1");
		l->setType(Light::LT_DIRECTIONAL);
		l->setDirection(dir);

		NameValuePairList pairList;
		pairList["numberOfChains"] = "2";
		pairList["maxElements"] = "80";
		RibbonTrail* trail = static_cast<RibbonTrail*>(
			mSceneMgr->createMovableObject("1", "RibbonTrail", &pairList));
		trail->setMaterialName("Examples/LightRibbonTrail");
		trail->setTrailLength(400);


		mSceneMgr->getRootSceneNode()->createChildSceneNode()->attachObject(trail);

		// Create 3 nodes for trail to follow
		SceneNode* animNode = mSceneMgr->getRootSceneNode()->createChildSceneNode();
		animNode->setPosition(0,20,0);
		Animation* anim = mSceneMgr->createAnimation("an1", 10);
		anim->setInterpolationMode(Animation::IM_SPLINE);
		NodeAnimationTrack* track = anim->createNodeTrack(1, animNode);
		TransformKeyFrame* kf = track->createNodeKeyFrame(0);
		kf->setTranslate(Vector3::ZERO);
		kf = track->createNodeKeyFrame(2);
		kf->setTranslate(Vector3(100, 0, 0));
		kf = track->createNodeKeyFrame(4);
		kf->setTranslate(Vector3(200, 0, 300));
		kf = track->createNodeKeyFrame(6);
		kf->setTranslate(Vector3(0, 20, 500));
		kf = track->createNodeKeyFrame(8);
		kf->setTranslate(Vector3(-100, 10, 100));
		kf = track->createNodeKeyFrame(10);
		kf->setTranslate(Vector3::ZERO);

		AnimationState* animState = mSceneMgr->createAnimationState("an1");
		animState->setEnabled(true);
		mAnimStateList.push_back(animState);

		trail->addNode(animNode);
		trail->setInitialColour(0, 1.0, 0.8, 0);
		trail->setColourChange(0, 0.5, 0.5, 0.5, 0.5);
		trail->setInitialWidth(0, 5);

		// Add light
		Light* l2 = mSceneMgr->createLight("l2");
		l2->setDiffuseColour(trail->getInitialColour(0));
		animNode->attachObject(l2);

		// Add billboard
		BillboardSet* bbs = mSceneMgr->createBillboardSet("bb", 1);
		bbs->createBillboard(Vector3::ZERO, trail->getInitialColour(0));
		bbs->setMaterialName("Examples/Flare");
		animNode->attachObject(bbs);

		animNode = mSceneMgr->getRootSceneNode()->createChildSceneNode();
		animNode->setPosition(-50,10,0);
		anim = mSceneMgr->createAnimation("an2", 10);
		anim->setInterpolationMode(Animation::IM_SPLINE);
		track = anim->createNodeTrack(1, animNode);
		kf = track->createNodeKeyFrame(0);
		kf->setTranslate(Vector3::ZERO);
		kf = track->createNodeKeyFrame(2);
		kf->setTranslate(Vector3(-100, 150, -30));
		kf = track->createNodeKeyFrame(4);
		kf->setTranslate(Vector3(-200, 0, 40));
		kf = track->createNodeKeyFrame(6);
		kf->setTranslate(Vector3(0, -150, 70));
		kf = track->createNodeKeyFrame(8);
		kf->setTranslate(Vector3(50, 0, 30));
		kf = track->createNodeKeyFrame(10);
		kf->setTranslate(Vector3::ZERO);

		animState = mSceneMgr->createAnimationState("an2");
		animState->setEnabled(true);
		mAnimStateList.push_back(animState);

		trail->addNode(animNode);
		trail->setInitialColour(1, 0.0, 1.0, 0.4);
		trail->setColourChange(1, 0.5, 0.5, 0.5, 0.5);
		trail->setInitialWidth(1, 5);


		// Add light
		l2 = mSceneMgr->createLight("l3");
		l2->setDiffuseColour(trail->getInitialColour(1));
		animNode->attachObject(l2);

		// Add billboard
		bbs = mSceneMgr->createBillboardSet("bb2", 1);
		bbs->createBillboard(Vector3::ZERO, trail->getInitialColour(1));
		bbs->setMaterialName("Examples/Flare");
		animNode->attachObject(bbs);



		//mSceneMgr->showBoundingBoxes(true);

	}

	void testBlendDiffuseColour()
	{
		MaterialPtr mat = MaterialManager::getSingleton().create(
			"testBlendDiffuseColour", ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME);
		Pass* pass = mat->getTechnique(0)->getPass(0);
		// no lighting, it will mess up vertex colours
		pass->setLightingEnabled(false);
		// Make sure we pull in vertex colour as diffuse
		pass->setVertexColourTracking(TVC_DIFFUSE);
		// Base layer
		TextureUnitState* t = pass->createTextureUnitState("BeachStones.jpg");
		// don't want to bring in vertex diffuse on base layer
		t->setColourOperation(LBO_REPLACE); 
		// Second layer (lerp based on colour)
		t = pass->createTextureUnitState("terr_dirt-grass.jpg");
		t->setColourOperationEx(LBX_BLEND_DIFFUSE_COLOUR);
		// third layer (lerp based on alpha)
		ManualObject* man = mSceneMgr->createManualObject("quad");
		man->begin("testBlendDiffuseColour");
		man->position(-100, 100, 0);
		man->textureCoord(0,0);
		man->colour(0, 0, 0);
		man->position(-100, -100, 0);
		man->textureCoord(0,1);
		man->colour(0.5, 0.5, 0.5);
		man->position(100, -100, 0);
		man->textureCoord(1,1);
		man->colour(1, 1, 1);
		man->position(100, 100, 0);
		man->textureCoord(1,0);
		man->colour(0.5, 0.5, 0.5);
		man->quad(0, 1, 2, 3);
		man->end();

		mSceneMgr->getRootSceneNode()->attachObject(man);

	}

	void testSplitPassesTooManyTexUnits()
	{
		MaterialPtr mat = MaterialManager::getSingleton().create(
			"Test", ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME);

		Pass* p = mat->getTechnique(0)->getPass(0);
		p->createTextureUnitState("gras_02.png");
		p->createTextureUnitState("gras_02.png");
		p->createTextureUnitState("gras_02.png");
		p->createTextureUnitState("gras_02.png");
		p->createTextureUnitState("gras_02.png");
		p->createTextureUnitState("gras_02.png");
		p->createTextureUnitState("gras_02.png");
		p->createTextureUnitState("gras_02.png");
		p->createTextureUnitState("gras_02.png");

		mat->compile();

	}

	void testCustomProjectionMatrix()
	{
		testLotsAndLotsOfEntities();
		Matrix4 mat = mCamera->getProjectionMatrix();
		mCamera->setCustomProjectionMatrix(true, mat);
		mat = mCamera->getProjectionMatrix();

	}

	void testPointSprites()
	{
		MaterialPtr mat = MaterialManager::getSingleton().create("spriteTest1", 
			ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME);
		Pass* p = mat->getTechnique(0)->getPass(0);
		p->setPointSpritesEnabled(true);
		p->createTextureUnitState("flare.png");
		p->setLightingEnabled(false);
		p->setDepthWriteEnabled(false);
		p->setSceneBlending(SBT_ADD);
		p->setPointAttenuation(true);
		p->setPointSize(1);
		srand((unsigned)time( NULL ) );

		ManualObject* man = mSceneMgr->createManualObject("man");
		man->begin("spriteTest1", RenderOperation::OT_POINT_LIST);
		/*
		for (size_t i = 0; i < 1000; ++i)
		{
			man->position(Math::SymmetricRandom() * 500, 
				Math::SymmetricRandom() * 500, 
				Math::SymmetricRandom() * 500);
			man->colour(Math::RangeRandom(0.5f, 1.0f), 
				Math::RangeRandom(0.5f, 1.0f), Math::RangeRandom(0.5f, 1.0f));
		}
		*/
		for (size_t i = 0; i < 20; ++i)
		{
			for (size_t j = 0; j < 20; ++j)
			{
				for (size_t k = 0; k < 20; ++k)
				{
					man->position(i * 30, j * 30, k * 30);
				}
			}
		}

		man->end();
		mSceneMgr->getRootSceneNode()->createChildSceneNode()->attachObject(man);

	}

	void testSuppressedShadows(ShadowTechnique shadowTech)
	{
		mSceneMgr->setShadowTechnique(shadowTech);

		// Setup lighting
		mSceneMgr->setAmbientLight(ColourValue(0.2, 0.2, 0.2));
		Light* light = mSceneMgr->createLight("MainLight");
		light->setType(Light::LT_DIRECTIONAL);
		Vector3 dir(-1, -1, 0.5);
		dir.normalise();
		light->setDirection(dir);

		// Create a skydome
		//mSceneMgr->setSkyDome(true, "Examples/CloudySky", 5, 8);

		// Create a floor plane mesh
		Plane plane(Vector3::UNIT_Y, 0.0);
		MeshManager::getSingleton().createPlane(
			"FloorPlane", ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME,
			plane, 200000, 200000, 20, 20, true, 1, 500, 500, Vector3::UNIT_Z);
	

		// Add a floor to the scene
		Entity* entity = mSceneMgr->createEntity("floor", "FloorPlane");
		entity->setMaterialName("Examples/RustySteel");
		mSceneMgr->getRootSceneNode()->createChildSceneNode()->attachObject(entity);
		entity->setCastShadows(false);

		// Add the mandatory ogre head
		entity = mSceneMgr->createEntity("head", "ogrehead.mesh");
		mSceneMgr->getRootSceneNode()->createChildSceneNode(Vector3(0.0, 10.0, 0.0))->attachObject(entity);

		// Position and orient the camera
		mCamera->setPosition(-100.0, 50.0, 90.0);
		mCamera->lookAt(0.0, 10.0, -35.0);

		// Add an additional viewport on top of the other one
		Viewport* pip = mWindow->addViewport(mCamera, 1, 0.7, 0.0, 0.3, 0.3);

		// Create a render queue invocation sequence for the pip viewport
		RenderQueueInvocationSequence* invocationSequence =
			mRoot->createRenderQueueInvocationSequence("pip");

		// Add an invocation to the sequence
		RenderQueueInvocation* invocation =
			invocationSequence->add(RENDER_QUEUE_MAIN, "main");

		// Disable render state changes and shadows for that invocation
		//invocation->setSuppressRenderStateChanges(true);
		invocation->setSuppressShadows(true);

		// Set the render queue invocation sequence for the pip viewport
		pip->setRenderQueueInvocationSequenceName("pip");
	}

	void testViewportNoShadows(ShadowTechnique shadowTech)
	{
		mSceneMgr->setShadowTechnique(shadowTech);

		// Setup lighting
		mSceneMgr->setAmbientLight(ColourValue(0.2, 0.2, 0.2));
		Light* light = mSceneMgr->createLight("MainLight");
		light->setType(Light::LT_DIRECTIONAL);
		Vector3 dir(-1, -1, 0.5);
		dir.normalise();
		light->setDirection(dir);

		// Create a skydome
		//mSceneMgr->setSkyDome(true, "Examples/CloudySky", 5, 8);

		// Create a floor plane mesh
		Plane plane(Vector3::UNIT_Y, 0.0);
		MeshManager::getSingleton().createPlane(
			"FloorPlane", ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME,
			plane, 200000, 200000, 20, 20, true, 1, 500, 500, Vector3::UNIT_Z);


		// Add a floor to the scene
		Entity* entity = mSceneMgr->createEntity("floor", "FloorPlane");
		entity->setMaterialName("Examples/RustySteel");
		mSceneMgr->getRootSceneNode()->createChildSceneNode()->attachObject(entity);
		entity->setCastShadows(false);

		// Add the mandatory ogre head
		entity = mSceneMgr->createEntity("head", "ogrehead.mesh");
		mSceneMgr->getRootSceneNode()->createChildSceneNode(Vector3(0.0, 10.0, 0.0))->attachObject(entity);

		// Position and orient the camera
		mCamera->setPosition(-100.0, 50.0, 90.0);
		mCamera->lookAt(0.0, 10.0, -35.0);

		// Add an additional viewport on top of the other one
		Viewport* pip = mWindow->addViewport(mCamera, 1, 0.7, 0.0, 0.3, 0.3);
		pip->setShadowsEnabled(false);

	}

	void testSerialisedColour()
	{
		mSceneMgr->setAmbientLight(ColourValue(0.5, 0.5, 0.5));
		Vector3 dir(-1, -1, 0.5);
		dir.normalise();
		Light* l = mSceneMgr->createLight("light1");
		l->setType(Light::LT_DIRECTIONAL);
		l->setDirection(dir);

		Plane plane;
		plane.normal = Vector3::UNIT_Y;
		plane.d = 100;
		MeshManager::getSingleton().createPlane("Myplane",
			ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME, plane,
			1500,1500,10,10,true,1,5,5,Vector3::UNIT_Z);
		Entity* pPlaneEnt = mSceneMgr->createEntity( "plane", "Myplane" );
		pPlaneEnt->setMaterialName("2 - Default");
		pPlaneEnt->setCastShadows(false);
		mSceneMgr->getRootSceneNode()->createChildSceneNode()->attachObject(pPlaneEnt);

		/*
		ManualObject* man = static_cast<ManualObject*>(
			mSceneMgr->createMovableObject("test", ManualObjectFactory::FACTORY_TYPE_NAME));

		man->begin("BaseWhiteNoLighting");
		// Define a 40x40 plane, non-indexed
		// Define a 40x40 plane, indexed
		man->position(-20, 20, 20);
		man->colour(1, 0, 0);

		man->position(-20, -20, 20);
		man->colour(1, 0, 0);

		man->position(20, -20, 20);
		man->colour(1, 0, 0);

		man->position(20, 20, 20);
		man->colour(1, 0, 0);

		man->quad(0, 1, 2, 3);
		man->end();

		MeshPtr mesh = man->convertToMesh("colourtest.mesh");
		MeshSerializer ms;
		ms.exportMesh(mesh.getPointer(), "colourtest.mesh");

		mSceneMgr->getRootSceneNode()->createChildSceneNode()->attachObject(man);
		*/
		Entity* c = mSceneMgr->createEntity("1", "colourtest.mesh");
		mSceneMgr->getRootSceneNode()->createChildSceneNode()->attachObject(c);



	}

	void testBillboardAccurateFacing()
	{
		mSceneMgr->setAmbientLight(ColourValue(0.5, 0.5, 0.5));
		Vector3 dir(-1, -1, 0.5);
		dir.normalise();
		Light* l = mSceneMgr->createLight("light1");
		l->setType(Light::LT_DIRECTIONAL);
		l->setDirection(dir);

		Plane plane;
		plane.normal = Vector3::UNIT_Y;
		plane.d = 100;
		MeshManager::getSingleton().createPlane("Myplane",
			ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME, plane,
			1500,1500,10,10,true,1,5,5,Vector3::UNIT_Z);
		Entity* pPlaneEnt = mSceneMgr->createEntity( "plane", "Myplane" );
		pPlaneEnt->setMaterialName("2 - Default");
		pPlaneEnt->setCastShadows(false);
		mSceneMgr->getRootSceneNode()->createChildSceneNode()->attachObject(pPlaneEnt);

		BillboardSet* bbs = mSceneMgr->createBillboardSet("1");
		bbs->setDefaultDimensions(50,50);
		bbs->createBillboard(-150, 25, 0);
		bbs->setBillboardType(BBT_ORIENTED_COMMON);
		bbs->setCommonDirection(Vector3::UNIT_Y);
		mSceneMgr->getRootSceneNode()->createChildSceneNode()->attachObject(bbs);

		bbs = mSceneMgr->createBillboardSet("2");
		bbs->setDefaultDimensions(50,50);
		bbs->createBillboard(150, 25, 0);
		bbs->setUseAccurateFacing(true);
		bbs->setBillboardType(BBT_ORIENTED_COMMON);
		bbs->setCommonDirection(Vector3::UNIT_Y);
		mSceneMgr->getRootSceneNode()->createChildSceneNode()->attachObject(bbs);
	}

	void testMultiSceneManagersSimple()
	{
		// Create a secondary scene manager with it's own camera
		SceneManager* sm2 = Root::getSingleton().createSceneManager(ST_GENERIC);
		camera2 = sm2->createCamera("cam2");
		camera2->setPosition(0,0,-500);
		camera2->lookAt(Vector3::ZERO);
		Entity* ent = sm2->createEntity("knot2", "knot.mesh");
		sm2->getRootSceneNode()->createChildSceneNode()->attachObject(ent);
		Light* l = sm2->createLight("l2");
		l->setPosition(100,50,-100);
		l->setDiffuseColour(ColourValue::Green);
		sm2->setAmbientLight(ColourValue(0.2, 0.2, 0.2));

		Viewport* vp = mWindow->addViewport(camera2, 1, 0.67, 0, 0.33, 0.25);
		vp->setOverlaysEnabled(false);

		// Use original SM for normal scene
		ent = mSceneMgr->createEntity("head", "ogrehead.mesh");
		mSceneMgr->getRootSceneNode()->createChildSceneNode()->attachObject(ent);
		l = mSceneMgr->createLight("l2"); // note same name, will work since different SM
		l->setPosition(100,50,-100);
		l->setDiffuseColour(ColourValue::Red);
		mSceneMgr->setAmbientLight(ColourValue(0.2, 0.2, 0.2));


	}

	void testMultiSceneManagersComplex()
	{
		// Create a secondary scene manager with it's own camera
		SceneManager* sm2 = Root::getSingleton().createSceneManager("TerrainSceneManager");
		camera2 = sm2->createCamera("cam2");

		Viewport* vp = mWindow->addViewport(camera2, 1, 0.5, 0, 0.5, 0.5);
		vp->setOverlaysEnabled(false);
		// Fog
		// NB it's VERY important to set this before calling setWorldGeometry 
		// because the vertex program picked will be different
		ColourValue fadeColour(0.93, 0.86, 0.76);
		sm2->setFog( FOG_LINEAR, fadeColour, .001, 500, 1000);
		vp->setBackgroundColour(fadeColour);

		sm2->setWorldGeometry("terrain.cfg");
		// Infinite far plane?
		if (mRoot->getRenderSystem()->getCapabilities()->hasCapability(RSC_INFINITE_FAR_PLANE))
		{
			camera2->setFarClipDistance(0);
		}
		// Set a nice viewpoint
		camera2->setPosition(707,3500,528);
		camera2->lookAt(Vector3::ZERO);
		camera2->setNearClipDistance( 1 );
		camera2->setFarClipDistance( 1000 );


		// Create a tertiary scene manager with it's own camera
		SceneManager* sm3 = Root::getSingleton().createSceneManager("BspSceneManager");
		Camera* camera3 = sm3->createCamera("cam3");

		vp = mWindow->addViewport(camera3, 2, 0.5, 0.5, 0.5, 0.5);
		vp->setOverlaysEnabled(false);

		// Load Quake3 locations from a file
		ConfigFile cf;

		cf.load("quake3settings.cfg");

		String pk3 = cf.getSetting("Pak0Location");
		String level = cf.getSetting("Map");

		ExampleApplication::setupResources();
		ResourceGroupManager::getSingleton().createResourceGroup("BSP");
		ResourceGroupManager::getSingleton().setWorldResourceGroupName("BSP");
		ResourceGroupManager::getSingleton().addResourceLocation(
			pk3, "Zip", ResourceGroupManager::getSingleton().getWorldResourceGroupName());
		ResourceGroupManager::getSingleton().initialiseResourceGroup("BSP");
		sm3->setWorldGeometry(level);
		// modify camera for close work
		camera3->setNearClipDistance(4);
		camera3->setFarClipDistance(4000);

		// Also change position, and set Quake-type orientation
		// Get random player start point
		ViewPoint viewp = sm3->getSuggestedViewpoint(true);
		camera3->setPosition(viewp.position);
		camera3->pitch(Degree(90)); // Quake uses X/Y horizon, Z up
		camera3->rotate(viewp.orientation);
		// Don't yaw along variable axis, causes leaning
		camera3->setFixedYawAxis(true, Vector3::UNIT_Z);
		camera3->yaw(Degree(-90));





		// Use original SM for normal scene
		testTextureShadows(SHADOWTYPE_TEXTURE_MODULATIVE);

	}

	void testManualBoneMovement(void)
	{
		Entity *ent = mSceneMgr->createEntity("robot", "robot.mesh");
		mSceneMgr->getRootSceneNode()->createChildSceneNode()->attachObject(ent);
		mSceneMgr->setAmbientLight(ColourValue(0.8, 0.8, 0.8));

		//ent->setMaterialName("Examples/Rocky");

		SkeletonInstance* skel = ent->getSkeleton();
		Animation* anim = skel->getAnimation("Walk");       
		manuallyControlledBone = skel->getBone("Joint10");
		manuallyControlledBone->setManuallyControlled(true);
		anim->destroyNodeTrack(manuallyControlledBone->getHandle());

		//AnimationState* animState = ent->getAnimationState("Walk");
		//animState->setEnabled(true);



	}

	void testMaterialSchemes()
	{

		Entity *ent = mSceneMgr->createEntity("robot", "robot.mesh");
		mSceneMgr->getRootSceneNode()->createChildSceneNode()->attachObject(ent);
		mSceneMgr->setAmbientLight(ColourValue(0.8, 0.8, 0.8));

		MaterialPtr mat = MaterialManager::getSingleton().create("schemetest", 
			ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME);
		// default scheme
		mat->getTechnique(0)->getPass(0)->createTextureUnitState("GreenSkin.jpg");

		Technique* t = mat->createTechnique();
		t->setSchemeName("newscheme");
		t->createPass()->createTextureUnitState("rockwall.tga");
		ent->setMaterialName("schemetest");

		// create a second viewport using alternate scheme
		Viewport* vp = mWindow->addViewport(mCamera, 1, 0.75, 0, 0.25, 0.25);
		vp->setMaterialScheme("newscheme");
		vp->setOverlaysEnabled(false);

	}
	void testMaterialSchemesWithLOD()
	{

		Entity *ent = mSceneMgr->createEntity("robot", "robot.mesh");
		mSceneMgr->getRootSceneNode()->createChildSceneNode()->attachObject(ent);
		mSceneMgr->setAmbientLight(ColourValue(0.8, 0.8, 0.8));

		MaterialPtr mat = MaterialManager::getSingleton().create("schemetest", 
			ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME);
		// default scheme
		mat->getTechnique(0)->getPass(0)->createTextureUnitState("GreenSkin.jpg");

		// LOD 0, newscheme 
		Technique* t = mat->createTechnique();
		t->setSchemeName("newscheme");
		t->createPass()->createTextureUnitState("rockwall.tga");
		ent->setMaterialName("schemetest");

		// LOD 1, default
		t = mat->createTechnique();
		t->setLodIndex(1);
		t->createPass()->createTextureUnitState("WeirdEye.png");

		// LOD 1, newscheme
		t = mat->createTechnique();
		t->setLodIndex(1);
		t->createPass()->createTextureUnitState("r2skin.jpg");
		t->setSchemeName("newscheme");

		Material::LodDistanceList ldl;
		ldl.push_back(500.0f);
		mat->setLodLevels(ldl);


		ent->setMaterialName("schemetest");

		// create a second viewport using alternate scheme
		Viewport* vp = mWindow->addViewport(mCamera, 1, 0.75, 0, 0.25, 0.25);
		vp->setMaterialScheme("newscheme");
		vp->setOverlaysEnabled(false);

	}
	void testMaterialSchemesWithMismatchedLOD()
	{

		Entity *ent = mSceneMgr->createEntity("robot", "robot.mesh");
		mSceneMgr->getRootSceneNode()->createChildSceneNode()->attachObject(ent);
		mSceneMgr->setAmbientLight(ColourValue(0.8, 0.8, 0.8));

		MaterialPtr mat = MaterialManager::getSingleton().create("schemetest", 
			ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME);
		// default scheme
		mat->getTechnique(0)->getPass(0)->createTextureUnitState("GreenSkin.jpg");

		// LOD 0, newscheme 
		Technique* t = mat->createTechnique();
		t->setSchemeName("newscheme");
		t->createPass()->createTextureUnitState("rockwall.tga");
		ent->setMaterialName("schemetest");

		// LOD 1, default
		t = mat->createTechnique();
		t->setLodIndex(1);
		t->createPass()->createTextureUnitState("WeirdEye.png");

		// LOD 2, default
		t = mat->createTechnique();
		t->setLodIndex(2);
		t->createPass()->createTextureUnitState("clouds.jpg");

		// LOD 1, newscheme
		t = mat->createTechnique();
		t->setLodIndex(1);
		t->createPass()->createTextureUnitState("r2skin.jpg");
		t->setSchemeName("newscheme");

		// No LOD 2 for newscheme! Should fallback on LOD 1

		Material::LodDistanceList ldl;
		ldl.push_back(250.0f);
		ldl.push_back(500.0f);
		mat->setLodLevels(ldl);


		ent->setMaterialName("schemetest");

		// create a second viewport using alternate scheme
		Viewport* vp = mWindow->addViewport(mCamera, 1, 0.75, 0, 0.25, 0.25);
		vp->setMaterialScheme("newscheme");
		vp->setOverlaysEnabled(false);

	}
    void testSkeletonAnimationOptimise(void)
    {
        mSceneMgr->setShadowTextureSize(512);
        mSceneMgr->setShadowTechnique(SHADOWTYPE_STENCIL_ADDITIVE);
        mSceneMgr->setShadowFarDistance(1500);
        mSceneMgr->setShadowColour(ColourValue(0.35, 0.35, 0.35));
        //mSceneMgr->setShadowFarDistance(800);
        // Set ambient light
        mSceneMgr->setAmbientLight(ColourValue(0.3, 0.3, 0.3));

        mLight = mSceneMgr->createLight("MainLight");

/*/
        // Directional test
        mLight->setType(Light::LT_DIRECTIONAL);
        Vector3 vec(-1,-1,0);
        vec.normalise();
        mLight->setDirection(vec);
/*/
        // Point test
        mLight->setType(Light::LT_POINT);
        mLight->setPosition(0, 200, 0);
//*/

        Entity* pEnt;

        // Hardware animation
        pEnt = mSceneMgr->createEntity( "1", "robot.mesh" );
        mAnimState = pEnt->getAnimationState("Walk");
        mAnimState->setEnabled(true);
        mTestNode[0] = mSceneMgr->getRootSceneNode()->createChildSceneNode();
        mTestNode[0]->attachObject( pEnt );
        mTestNode[0]->translate(+100,-100,0);

        // Software animation
        pEnt = mSceneMgr->createEntity( "2", "robot.mesh" );
        pEnt->setMaterialName("BaseWhite");
/*/
        mAnimState = pEnt->getAnimationState("Walk");
        mAnimState->setEnabled(true);
/*/
        pEnt->getAnimationState("Walk")->setEnabled(true);
//*/
        mTestNode[1] = mSceneMgr->getRootSceneNode()->createChildSceneNode();
        mTestNode[1]->attachObject( pEnt );
        mTestNode[1]->translate(-100,-100,0);


        Plane plane;
        plane.normal = Vector3::UNIT_Y;
        plane.d = 100;
        MeshManager::getSingleton().createPlane("Myplane",
			ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME, plane,
            1500,1500,10,10,true,1,5,5,Vector3::UNIT_Z);
        Entity* pPlaneEnt;
        pPlaneEnt = mSceneMgr->createEntity( "plane", "Myplane" );
        pPlaneEnt->setMaterialName("2 - Default");
        pPlaneEnt->setCastShadows(false);
        mSceneMgr->getRootSceneNode()->createChildSceneNode()->attachObject(pPlaneEnt);
    }

    void testBuildTangentOnAnimatedMesh(void)
    {
        //mSceneMgr->setShadowTextureSize(512);
        //mSceneMgr->setShadowTechnique(SHADOWTYPE_STENCIL_ADDITIVE);
        //mSceneMgr->setShadowFarDistance(1500);
        //mSceneMgr->setShadowColour(ColourValue(0.35, 0.35, 0.35));
        //mSceneMgr->setShadowFarDistance(800);
        // Set ambient light
        mSceneMgr->setAmbientLight(ColourValue(0.3, 0.3, 0.3));

        mLight = mSceneMgr->createLight("MainLight");

/*/
        // Directional test
        mLight->setType(Light::LT_DIRECTIONAL);
        Vector3 vec(-1,-1,0);
        vec.normalise();
        mLight->setDirection(vec);
/*/
        // Point test
        mLight->setType(Light::LT_POINT);
        mLight->setPosition(0, 200, 0);
//*/
        MeshPtr pMesh = MeshManager::getSingleton().load("ninja.mesh",
            ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME/*,    
            HardwareBuffer::HBU_DYNAMIC_WRITE_ONLY, 
            HardwareBuffer::HBU_STATIC_WRITE_ONLY, 
            true, true*/); //so we can still read it
        // Build tangent vectors, all our meshes use only 1 texture coordset 
        unsigned short src, dest;
        if (!pMesh->suggestTangentVectorBuildParams(VES_TANGENT, src, dest))
        {
            pMesh->buildTangentVectors(VES_TANGENT, src, dest);
        }

        Entity* pEnt = mSceneMgr->createEntity("Ninja", "ninja.mesh");

/*/
        mAnimState = pEnt->getAnimationState("Walk");
        mAnimState->setEnabled(true);
/*/
        pEnt->getAnimationState("Walk")->setEnabled(true);
//*/
        mTestNode[1] = mSceneMgr->getRootSceneNode()->createChildSceneNode();
        mTestNode[1]->attachObject( pEnt );
        mTestNode[1]->translate(-100,-100,0);


        Plane plane;
        plane.normal = Vector3::UNIT_Y;
        plane.d = 100;
        MeshManager::getSingleton().createPlane("Myplane",
			ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME, plane,
            1500,1500,10,10,true,1,5,5,Vector3::UNIT_Z);
        Entity* pPlaneEnt;
        pPlaneEnt = mSceneMgr->createEntity( "plane", "Myplane" );
        pPlaneEnt->setMaterialName("2 - Default");
        pPlaneEnt->setCastShadows(false);
        mSceneMgr->getRootSceneNode()->createChildSceneNode()->attachObject(pPlaneEnt);
    }
	void testVertexTexture()
	{

		// NOTE: DirectX only right now

		Light* l = mSceneMgr->createLight("MainLight");
		l->setType(Light::LT_POINT);
		l->setPosition(0, 200, 0);


		// Create single-channel floating point texture, no mips
		TexturePtr tex = TextureManager::getSingleton().createManual(
			"vertexTexture", ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME, TEX_TYPE_2D, 
			128, 128, 0, PF_FLOAT32_R);
		float* pData = static_cast<float*>(
			tex->getBuffer()->lock(HardwareBuffer::HBL_DISCARD));
		// write concentric circles into the texture
		for (int y  = -64; y < 64; ++y)
		{
			for (int x = -64; x < 64; ++x)
			{

				float val = Math::Sqrt(x*x + y*y);
				// repeat every 20 pixels
				val = val * Math::TWO_PI / 20.0f;
				*pData++ = Math::Sin(val);
			}
		}
		tex->getBuffer()->unlock();

		String progSource = 
			"void main(\n"
				"float4 pos : POSITION,\n"
				"float2 uv1 : TEXCOORD0,\n"
				"uniform float4x4 world, \n"
				"uniform float4x4 viewProj,\n"
				"uniform float heightscale,\n"
				"uniform sampler2D heightmap,\n"
				"out float4 oPos : POSITION,\n"
				"out float2 oUv1 : TEXCOORD1,\n"
				"out float4 col : COLOR)\n"
			"{\n"
				"oPos = mul(world, pos);\n"
				"// tex2Dlod since no mip\n"
				"float4 t = float4(0,0,0,0);\n"
				"t.xy = uv1.xy;\n"
				"float height = tex2Dlod(heightmap, t);\n"
				"oPos.y = oPos.y + (height * heightscale);\n"
				"oPos = mul(viewProj, oPos);\n"
				"oUv1 = uv1;\n"
				"col = float4(1,1,1,1);\n"
			"}\n";
		HighLevelGpuProgramPtr prog = HighLevelGpuProgramManager::getSingleton().createProgram(
			"TestVertexTextureFetch", ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME, 
			"hlsl", GPT_VERTEX_PROGRAM);
		prog->setSource(progSource);
		prog->setParameter("target", "vs_3_0");
		prog->setVertexTextureFetchRequired(true);
		prog->setParameter("entry_point", "main");
		prog->load();


		MaterialPtr mat = MaterialManager::getSingleton().create("TestVertexTexture", 
			ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME);
		Pass* pass = mat->getTechnique(0)->getPass(0);
		pass->setLightingEnabled(false);
		pass->setVertexProgram("TestVertexTextureFetch");
		GpuProgramParametersSharedPtr vp = pass->getVertexProgramParameters();
		vp->setNamedAutoConstant("world", GpuProgramParameters::ACT_WORLD_MATRIX);
		vp->setNamedAutoConstant("viewProj", GpuProgramParameters::ACT_VIEWPROJ_MATRIX);
		vp->setNamedConstant("heightscale", 30.0f);
		// vertex texture
		TextureUnitState* t = pass->createTextureUnitState("vertexTexture");
		t->setBindingType(TextureUnitState::BT_VERTEX);
		// regular texture
		pass->createTextureUnitState("BumpyMetal.jpg");

		Plane plane;
		plane.normal = Vector3::UNIT_Y;
		plane.d = 100;
		// 128 x 128 segment plane
		MeshManager::getSingleton().createPlane("Myplane",
			ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME, plane,
			1500,1500,128,128,true,1,1,1,Vector3::UNIT_Z);
		Entity* pPlaneEnt;
		pPlaneEnt = mSceneMgr->createEntity( "plane", "Myplane" );
		pPlaneEnt->setMaterialName("TestVertexTexture");
		pPlaneEnt->setCastShadows(false);
		mSceneMgr->getRootSceneNode()->createChildSceneNode()->attachObject(pPlaneEnt);


	}

	void testBackgroundLoadResourceGroup()
	{
		ResourceGroupManager& rgm = ResourceGroupManager::getSingleton();
		TextureManager& tm = TextureManager::getSingleton();
		MeshManager& mm = MeshManager::getSingleton();

		testBackgroundLoadGroup = "Deferred";

		rgm.createResourceGroup(testBackgroundLoadGroup);

		// define a bunch of textures as deferred loading
		rgm.declareResource("egyptrockyfull.jpg", tm.getResourceType(), testBackgroundLoadGroup);
		rgm.declareResource("fw12b.jpg", tm.getResourceType(), testBackgroundLoadGroup);
		rgm.declareResource("grass_1024.jpg", tm.getResourceType(), testBackgroundLoadGroup);
		rgm.declareResource("GreenSkin.jpg", tm.getResourceType(), testBackgroundLoadGroup);
		rgm.declareResource("MtlPlat2.jpg", tm.getResourceType(), testBackgroundLoadGroup);
		rgm.declareResource("NMBumpsOut.png", tm.getResourceType(), testBackgroundLoadGroup);
		rgm.declareResource("ogrehead.mesh", mm.getResourceType(), testBackgroundLoadGroup);
		// Note: initialise resource group in main thread for this test
		// We will be able to initialise in the background thread too eventually,
		// once resources can be created thread safely as well as loaded
		rgm.initialiseResourceGroup(testBackgroundLoadGroup);

		// we won't load it yet, we'll wait for 5 seconds


		// Create a basic plane to have something in the scene to look at
		Plane plane;
		plane.normal = Vector3::UNIT_Y;
		plane.d = 100;
		MeshManager::getSingleton().createPlane("Myplane",
			ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME, plane,
			1500,1500,10,10,true,1,5,5,Vector3::UNIT_Z);
		Entity* pPlaneEnt;
		pPlaneEnt = mSceneMgr->createEntity( "plane", "Myplane" );
		pPlaneEnt->setMaterialName("2 - Default");
		pPlaneEnt->setCastShadows(false);
		mSceneMgr->getRootSceneNode()->createChildSceneNode()->attachObject(pPlaneEnt);




	}



	void testOverlayRelativeMode()
	{

		Overlay* o = OverlayManager::getSingleton().create("Test");
		OverlayContainer* c = (OverlayContainer*)OverlayManager::getSingleton().createOverlayElement("Panel", "panel1");
		c->setMetricsMode(GMM_RELATIVE);
		c->setDimensions(1.0, 1.0);
		c->setMaterialName("Core/StatsBlockCenter");
		c->setPosition(0.0, 0.0);

		TextAreaOverlayElement* t = (TextAreaOverlayElement*)OverlayManager::getSingleton().createOverlayElement("TextArea", "text1");
		t->setMetricsMode(GMM_RELATIVE);
		t->setCaption("Hello");
		t->setPosition(0,0);
		t->setFontName("BlueHighway");
		t->setDimensions(0.2, 0.5);
		t->setCharHeight(0.2);
		c->addChild(t);

		o->add2D(c);
		o->show();

	}

	void testBillboardOrigins()
	{
		mSceneMgr->setAmbientLight(ColourValue(0.5, 0.5, 0.5));
		Vector3 dir(-1, -1, 0.5);
		dir.normalise();
		Light* l = mSceneMgr->createLight("light1");
		l->setType(Light::LT_DIRECTIONAL);
		l->setDirection(dir);

		Plane plane;
		plane.normal = Vector3::UNIT_Y;
		plane.d = 0;
		MeshManager::getSingleton().createPlane("Myplane",
			ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME, plane,
			1500,1500,10,10,true,1,5,5,Vector3::UNIT_Z);
		Entity* pPlaneEnt = mSceneMgr->createEntity( "plane", "Myplane" );
		pPlaneEnt->setMaterialName("2 - Default");
		pPlaneEnt->setCastShadows(false);
		mSceneMgr->getRootSceneNode()->createChildSceneNode()->attachObject(pPlaneEnt);

		BillboardSet* bbs = mSceneMgr->createBillboardSet("1");
		bbs->setDefaultDimensions(50,50);
		bbs->createBillboard(0, 0, 0);
		bbs->setBillboardOrigin(BBO_TOP_LEFT);
		//bbs->setBillboardType(BBT_ORIENTED_COMMON);
		bbs->setCommonDirection(Vector3::UNIT_Y);
		mSceneMgr->getRootSceneNode()->createChildSceneNode()->attachObject(bbs);

	}

	void testDepthBias()
	{
		ResourceGroupManager::getSingleton().addResourceLocation(
			"../../../../Tests/Media", "FileSystem");

		mSceneMgr->setAmbientLight(ColourValue::White);
		
		MaterialPtr mat = MaterialManager::getSingleton().create("mat1", 
			ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME);
		Pass* p = mat->getTechnique(0)->getPass(0);
		p->createTextureUnitState("BumpyMetal.jpg");
		
		const String meshName("cube.mesh"); 
		Entity* entity = mSceneMgr->createEntity("base", meshName);
		entity->setMaterialName("mat1");
		mSceneMgr->getRootSceneNode()->attachObject(entity);


		entity = mSceneMgr->createEntity("base2", meshName);
		entity->setMaterialName("Examples/EnvMappedRustySteel");
		SceneNode* n = mSceneMgr->getRootSceneNode()->createChildSceneNode();
		n->setPosition(-30, 0, 0);
		n->yaw(Degree(45));
		n->attachObject(entity);

		for (size_t i = 0; i <= 6;++i)
		{
			String name("decal");
			name += StringConverter::toString(i);

			MaterialPtr pMat = static_cast<MaterialPtr>(MaterialManager::getSingleton().create(
				name, ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME));

			pMat->getTechnique(0)->getPass(0)->setLightingEnabled(false);
			pMat->getTechnique(0)->getPass(0)->setAlphaRejectSettings(CMPF_GREATER_EQUAL, 128);
			pMat->getTechnique(0)->getPass(0)->setDepthBias(i);
			pMat->getTechnique(0)->getPass(0)->createTextureUnitState(name + ".png");

			entity = mSceneMgr->createEntity(name, meshName);
			entity->setMaterialName(name);
			mSceneMgr->getRootSceneNode()->attachObject(entity);
		}



		mCamera->setPosition(0,0,200);
		mCamera->lookAt(Vector3::ZERO);


	}


	void testTextureShadowsIntegrated()
	{
		mSceneMgr->setShadowTechnique(SHADOWTYPE_TEXTURE_ADDITIVE_INTEGRATED);
		//mSceneMgr->setShadowTechnique(SHADOWTYPE_TEXTURE_MODULATIVE);
		MaterialManager::getSingleton().setDefaultTextureFiltering(TFO_ANISOTROPIC);
		MaterialManager::getSingleton().setDefaultAnisotropy(5);

		mSceneMgr->setShadowTextureSettings(1024, 2);

		mSceneMgr->setAmbientLight(ColourValue::Black);
		Light* l = mSceneMgr->createLight("Spot1");
		l->setType(Light::LT_SPOTLIGHT);
		l->setAttenuation(5000,1,0,0);
		l->setSpotlightRange(Degree(30),Degree(45),1.0f);
		SceneNode* lightNode1 = mSceneMgr->getRootSceneNode()->createChildSceneNode();
		lightNode1->attachObject(l);
		lightNode1->setPosition(400, 250, 500);
		lightNode1->lookAt(Vector3(0,-200,0), Node::TS_WORLD);
		l->setDirection(Vector3::NEGATIVE_UNIT_Z);
		l->setDiffuseColour(0.7, 0.7, 0.5);

		l = mSceneMgr->createLight("Spot2");
		l->setAttenuation(5000,1,0,0);
		/* // spotlight */
		l->setType(Light::LT_SPOTLIGHT);
		l->setSpotlightRange(Degree(30),Degree(45),1.0f);
		/**/
		// point
		SceneNode* lightNode2 = mSceneMgr->getRootSceneNode()->createChildSceneNode();
		lightNode2->attachObject(l);
		lightNode2->setPosition(-500, 200, 500);
		lightNode2->lookAt(Vector3(0,-200,0), Node::TS_WORLD);
		l->setDirection(Vector3::NEGATIVE_UNIT_Z);
		/* // directional
		l->setType(Light::LT_DIRECTIONAL);
		Vector3 dir(0.5, -1, 0.5);
		dir.normalise();
		l->setDirection(dir);
		*/
		l->setDiffuseColour(1, 0.2, 0.2);

		/*
		// Test spot 3
		l = mSceneMgr->createLight("Spot3");
		l->setType(Light::LT_SPOTLIGHT);
		l->setAttenuation(5000,1,0,0);
		l->setSpotlightRange(Degree(30),Degree(45),1.0f);
		SceneNode* lightNode3 = mSceneMgr->getRootSceneNode()->createChildSceneNode();
		lightNode3->attachObject(l);
		lightNode3->setPosition(700, 250, 500);
		lightNode3->lookAt(Vector3(0,-200,0), Node::TS_WORLD);
		l->setDirection(Vector3::NEGATIVE_UNIT_Z);
		l->setDiffuseColour(0.0, 0.7, 1.0);
		*/

		// Create a basic plane to have something in the scene to look at
		Plane plane;
		plane.normal = Vector3::UNIT_Y;
		plane.d = 100;
		MeshPtr msh = MeshManager::getSingleton().createPlane("Myplane",
			ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME, plane,
			4500,4500,100,100,true,1,40,40,Vector3::UNIT_Z);
		msh->buildTangentVectors(VES_TANGENT);
		Entity* pPlaneEnt;
		pPlaneEnt = mSceneMgr->createEntity( "plane", "Myplane" );
		//pPlaneEnt->setMaterialName("Examples/OffsetMapping/Specular");
		pPlaneEnt->setMaterialName("Examples/OffsetMapping/IntegratedShadows");
		pPlaneEnt->setCastShadows(false);
		mSceneMgr->getRootSceneNode()->createChildSceneNode()->attachObject(pPlaneEnt);

		pPlaneEnt = mSceneMgr->createEntity( "plane2", "Myplane" );
		//pPlaneEnt->setMaterialName("Examples/OffsetMapping/Specular");
		pPlaneEnt->setMaterialName("Examples/OffsetMapping/IntegratedShadows");
		pPlaneEnt->setCastShadows(false);
		SceneNode* n = mSceneMgr->getRootSceneNode()->createChildSceneNode();
		n->roll(Degree(90));
		n->translate(100,0,0);
		//n->attachObject(pPlaneEnt);

		pPlaneEnt = mSceneMgr->createEntity( "plane3", "Myplane" );
		//pPlaneEnt->setMaterialName("Examples/OffsetMapping/Specular");
		pPlaneEnt->setMaterialName("Examples/OffsetMapping/IntegratedShadows");
		pPlaneEnt->setCastShadows(false);
		n = mSceneMgr->getRootSceneNode()->createChildSceneNode();
		n->pitch(Degree(90));
		n->yaw(Degree(-90));
		n->translate(0,0,-100);
		n->attachObject(pPlaneEnt);

		mCamera->setPosition(-50, 500, 1000);
		mCamera->lookAt(Vector3(-50,-100,0));

		Entity* ent = mSceneMgr->createEntity("athene", "athene.mesh");
		ent->setMaterialName("Examples/Athene/NormalMapped");
		mSceneMgr->getRootSceneNode()->createChildSceneNode(Vector3(0,-20,0))->attachObject(ent);

		//addTextureShadowDebugOverlay(2);



	}

	void testTimeCreateDestroyObject()
	{
		int iterationCount = 100000;

		// Create names ahead of time
		StringVector nameList;
		nameList.reserve(iterationCount);
		for (int i = 0; i < iterationCount; ++i)
		{
			nameList.push_back("somerelativelylongtestname" + StringConverter::toString(i));
		}

		Timer timer;
		StringVector::iterator nameIt = nameList.begin();
		timer.reset();
		for (int i = 0; i < iterationCount; ++i, ++nameIt)
		{
			ManualObject* man = mSceneMgr->createManualObject(*nameIt);
		}
		unsigned long createTime = timer.getMilliseconds();

		nameIt = nameList.begin();
		timer.reset();
		for (int i = 0; i < iterationCount; ++i, ++nameIt)
		{
			ManualObject* man = mSceneMgr->getManualObject(*nameIt);
			// do something so compiler doesn't think I'm doing nothing
			man->setVisible(true);
		}
		unsigned long lookupTime = timer.getMilliseconds();

		nameIt = nameList.begin();
		timer.reset();
		for (int i = 0; i < iterationCount; ++i, ++nameIt)
		{
			mSceneMgr->destroyManualObject(*nameIt);
		}
		unsigned long destroyTime = timer.getMilliseconds();

		nameIt = nameList.begin();
		timer.reset();
		for (int i = 0; i < iterationCount; ++i, ++nameIt)
		{
			mSceneMgr->createSceneNode(*nameIt);
		}
		unsigned long sncreateTime = timer.getMilliseconds();

		nameIt = nameList.begin();
		timer.reset();
		for (int i = 0; i < iterationCount; ++i, ++nameIt)
		{
			mSceneMgr->destroySceneNode(*nameIt);
		}
		unsigned long sndestroyTime = timer.getMilliseconds();

		StringUtil::StrStreamType str;
		str << "Object create time: " << ((float)createTime / 1000.0f) << " secs" << std::endl;
		str << "Object lookup time: " << ((float)lookupTime / 1000.0f) << " secs" << std::endl;
		str << "Object destroy time: " << ((float)destroyTime / 1000.0f) << " secs" << std::endl;
		str << "SceneNode create time: " << ((float)sncreateTime / 1000.0f) << " secs" << std::endl;
		str << "SceneNode destroy time: " << ((float)sndestroyTime / 1000.0f) << " secs" << std::endl;
		LogManager::getSingleton().logMessage(str.str());


	}


	void testMRT()
	{
		TexturePtr Tex[2];
		MultiRenderTarget* mrtTex;

		Viewport* viewport = mWindow->getViewport(0);
		uint width = viewport->getActualWidth();
		uint height = viewport->getActualHeight();

		Tex[0] = TextureManager::getSingleton().createManual("diffusemap", ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME, TEX_TYPE_2D,
			width,height,0,PF_R8G8B8A8,TU_RENDERTARGET);
		Tex[1] = TextureManager::getSingleton().createManual("normalmap",ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME, TEX_TYPE_2D,
			width,height,0,PF_R8G8B8A8,TU_RENDERTARGET);

		//	assert(Tex[0]->getFormat() == PF_FLOAT16_RGBA);

		mrtTex = Ogre::Root::getSingleton().getRenderSystem()->createMultiRenderTarget("MRT");
		RenderTexture* rTex[2];
		rTex[0] = Tex[0]->getBuffer()->getRenderTarget();
		rTex[1] = Tex[1]->getBuffer()->getRenderTarget();

		rTex[0]->setAutoUpdated(false);
		rTex[1]->setAutoUpdated(false);
		mrtTex->bindSurface(0, rTex[0]);
		mrtTex->bindSurface(1, rTex[1]);
		mrtTex->setAutoUpdated(true);

		Viewport *v = mrtTex->addViewport(mCamera);
		v->setMaterialScheme("MRT");
		v->setClearEveryFrame(true);
		v->setOverlaysEnabled(false);
		v->setSkiesEnabled(false);
		v->setBackgroundColour(ColourValue(0,0,0,0));

		// Create texture overlay here
		Overlay *debugOverlay = OverlayManager::getSingleton().getByName("Core/DebugOverlay");
		MaterialPtr debugMat = MaterialManager::getSingleton().create("DebugRTTMat1", ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME);
		debugMat->getTechnique(0)->getPass(0)->setLightingEnabled(false);
		TextureUnitState *t = debugMat->getTechnique(0)->getPass(0)->createTextureUnitState("normalmap");
		t->setTextureAddressingMode(TextureUnitState::TAM_CLAMP);
		OverlayContainer *debugPanel = (OverlayContainer *) (OverlayManager::getSingleton().createOverlayElement("Panel","DebugRTTPanel1"));
		debugPanel->_setPosition(0.8,0);
		debugPanel->_setDimensions(0.2,0.3);
		debugPanel->setMaterialName(debugMat->getName());
		debugOverlay->add2D(debugPanel);

		debugMat = MaterialManager::getSingleton().create("DebugRTTMat2", ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME);
		debugMat->getTechnique(0)->getPass(0)->setLightingEnabled(false);
		t = debugMat->getTechnique(0)->getPass(0)->createTextureUnitState("diffusemap");
		t->setTextureAddressingMode(TextureUnitState::TAM_CLAMP);
		debugPanel = (OverlayContainer *) (OverlayManager::getSingleton().createOverlayElement("Panel","DebugRTTPanel2"));
		debugPanel->_setPosition(0.8,0.3);
		debugPanel->_setDimensions(0.2,0.3);
		debugPanel->setMaterialName(debugMat->getName());
		debugOverlay->add2D(debugPanel);
		// Create scene items

		// Create a material to render differently to MRT compared to main viewport
		MaterialPtr mat = MaterialManager::getSingleton().create("MRTTest", 
			ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME);
		// normal technique (0), leave as default
		Technique* mrtTech = mat->createTechnique();
		mrtTech->setSchemeName("MRT");
		Pass* mrtPass = mrtTech->createPass();
		mrtPass->setVertexProgram("DeferredShading/material/hlsl/vs");
		mrtPass->setFragmentProgram("DeferredShading/material/hlsl/ps");
		mrtPass->createTextureUnitState("rockwall.tga");
		mat->load();

		Entity* ent = mSceneMgr->createEntity("knot", "knot.mesh");
		ent->setMaterialName("MRTTest");
		mSceneMgr->getRootSceneNode()->createChildSceneNode()->attachObject(ent);

		mCamera->setPosition(0, 0, 200);
		mCamera->lookAt(Vector3::ZERO);



	}

	void test16Textures()
	{

		HighLevelGpuProgramPtr frag;
		if (StringUtil::match(Root::getSingleton().getRenderSystem()->getName(), "*GL*"))
		{
			frag = HighLevelGpuProgramManager::getSingleton().createProgram("frag16", ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME,
				"glsl", GPT_FRAGMENT_PROGRAM);
			frag->setSource(" \
				uniform sampler2D tex0; \
				uniform sampler2D tex1; \
				uniform sampler2D tex2; \
				uniform sampler2D tex3; \
				uniform sampler2D tex4; \
				uniform sampler2D tex5; \
				uniform sampler2D tex6; \
				uniform sampler2D tex7; \
				uniform sampler2D tex8; \
				uniform sampler2D tex9; \
				uniform sampler2D tex10; \
				uniform sampler2D tex11; \
				uniform sampler2D tex12; \
				uniform sampler2D tex13; \
				uniform sampler2D tex14; \
				uniform sampler2D tex15; \
				void main() \
				{ \
					gl_FragColor = texture2D(tex15, gl_TexCoord[0].xy); \
				} \
				");

		}
		else
		{
			// DirectX
			frag = HighLevelGpuProgramManager::getSingleton().createProgram("frag16", ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME,
				"hlsl", GPT_FRAGMENT_PROGRAM);
			frag->setParameter("target", "ps_2_0");
			frag->setParameter("entry_point", "main");
			frag->setSource(" \
				float4 main( \
					float2 uv : TEXCOORD0, \
					uniform sampler2D tex0 : register(s0), \
					uniform sampler2D tex1 : register(s1), \
					uniform sampler2D tex2 : register(s2), \
					uniform sampler2D tex3 : register(s3), \
					uniform sampler2D tex4 : register(s4), \
					uniform sampler2D tex5 : register(s5), \
					uniform sampler2D tex6 : register(s6), \
					uniform sampler2D tex7 : register(s7), \
					uniform sampler2D tex8 : register(s8), \
					uniform sampler2D tex9 : register(s9), \
					uniform sampler2D tex10 : register(s10), \
					uniform sampler2D tex11 : register(s11), \
					uniform sampler2D tex12 : register(s12), \
					uniform sampler2D tex13 : register(s13), \
					uniform sampler2D tex14 : register(s14), \
					uniform sampler2D tex15 : register(s15) \
					) : COLOR \
				{ \
					return tex2D(tex15, uv); \
				} \
				");
		}
		frag->load();
		
		MaterialPtr mat = MaterialManager::getSingleton().create("test16", ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME);
		Pass* p = mat->getTechnique(0)->getPass(0);
		p->setVertexProgram("Ogre/BasicVertexPrograms/AmbientOneTextureUnified");
		p->setFragmentProgram(frag->getName());
		// create 15 textures the same
		for (int i = 0; i < 15; ++i)
		{
			p->createTextureUnitState("Dirt.jpg");
		}
		// create 16th texture differently
		p->createTextureUnitState("ogrelogo.png");
		if (StringUtil::match(Root::getSingleton().getRenderSystem()->getName(), "*GL*"))
		{
			// map samplers
			GpuProgramParametersSharedPtr params = p->getFragmentProgramParameters();
			for (int i = 0; i < 16; ++i)
			{
				params->setNamedConstant(String("tex") + StringConverter::toString(i), i);
			}

		}

		mat->load();

		Entity* e = mSceneMgr->createEntity("1", "knot.mesh");
		e->setMaterialName(mat->getName());
		mSceneMgr->getRootSceneNode()->createChildSceneNode()->attachObject(e);

		mCamera->setPosition(0,0,200);
		mCamera->lookAt(0,0,0);

	
	}
	struct Foo;
	typedef Ogre::SharedPtr<Foo> FooPtr;
	struct Foo { FooPtr ptr; };

    void createScene(void)
    {
		// In main() or someplace:
		FooPtr foo(new Foo);
		foo->ptr.bind(new Foo);
		foo = foo->ptr;
		// foo now contains a wild pointer! 
		// Just override the mandatory create scene method
		ErrorDialog e;

		MeshPtr m;
		ResourcePtr p = m;

		Real d = std::numeric_limits<Real>::infinity();
		d = std::max(1e10f, d);
		d = std::min(1e5f, d);
		/*
		AnyNumeric anyInt1(43);
		AnyNumeric anyInt2(5);
		AnyNumeric anyInt3 = anyInt1 + anyInt2;

		bool tst = StringConverter::isNumber("3");
		tst = StringConverter::isNumber("-0.3");
		tst = StringConverter::isNumber("");
		tst = StringConverter::isNumber("  ");
		tst = StringConverter::isNumber(" -0.3 ");
		tst = StringConverter::isNumber(" a-0.3 ");

		const StringVector& l = mCamera->getAnimableValueNames();

		std::cout << anyInt3;

		//Any anyString("test");
		*/

        //testMatrices();
        //testBsp();
        //testAlpha();
        //testAnimation();
		//testAnimationBlend();

        //testGpuPrograms();
        //testMultiViewports();
        //testDistortion();
        //testEdgeBuilderSingleIndexBufSingleVertexBuf();
        //testEdgeBuilderMultiIndexBufSingleVertexBuf();
        //testEdgeBuilderMultiIndexBufMultiVertexBuf();
        //testPrepareShadowVolume();
        //testWindowedViewportMode();
        //testSubEntityVisibility();
        //testAttachObjectsToBones();
        //testSkeletalAnimation();
        //testOrtho();
        //testClearScene();
		//testInfiniteAAB();

        //testProjection();
        //testStencilShadows(SHADOWTYPE_STENCIL_ADDITIVE, true, true);
        //testStencilShadows(SHADOWTYPE_STENCIL_MODULATIVE, false, true);
        //testTextureShadows(SHADOWTYPE_TEXTURE_ADDITIVE);
		//testTextureShadows(SHADOWTYPE_TEXTURE_MODULATIVE);
		//testTextureShadowsIntegrated();
		//testStencilShadowsMixedOpSubMeshes(false, true);

		//testTextureShadowsCustomCasterMat(SHADOWTYPE_TEXTURE_ADDITIVE);
		//testTextureShadowsCustomReceiverMat(SHADOWTYPE_TEXTURE_MODULATIVE);
		//testCompositorTextureShadows(SHADOWTYPE_TEXTURE_MODULATIVE);
		//testSplitPassesTooManyTexUnits();
        //testOverlayZOrder();
		//testReflectedBillboards();
		//testBlendDiffuseColour();

        //testRaySceneQuery();
		//testMaterialSerializer();
        //testIntersectionSceneQuery();

        //test2Spotlights();
		//testDepthBias();

		//testManualLOD();
		//testGeneratedLOD();
		//testLotsAndLotsOfEntities();
		//testSimpleMesh();
		//test2Windows();
		//testStaticGeometry();
		//testBillboardTextureCoords();
		//testBillboardOrigins();
		//testReloadResources();
		//testTransparencyMipMaps();
		//testRadixSort();
		//testMorphAnimation();
		//testPoseAnimation();
		//testPoseAnimation2();
		//testBug();
		//test16Textures();
		//testProjectSphere();
		//testTimeCreateDestroyObject();
		//testManualBlend();
		//testManualObjectNonIndexed();
		//testManualObjectIndexed();
		//testManualObjectNonIndexedUpdateSmaller();
		//testManualObjectNonIndexedUpdateLarger();
		//testManualObjectIndexedUpdateSmaller();
		//testManualObjectIndexedUpdateLarger();
		//testCustomProjectionMatrix();
		//testPointSprites();
		//testFallbackResourceGroup();
		//testSuppressedShadows(SHADOWTYPE_TEXTURE_ADDITIVE);
		//testViewportNoShadows(SHADOWTYPE_TEXTURE_ADDITIVE);
		//testBillboardChain();
		//testRibbonTrail();
		//testSerialisedColour();
		//testBillboardAccurateFacing();
		//testMultiSceneManagersSimple();
		//testMultiSceneManagersComplex();
		//testManualBoneMovement();
		//testMaterialSchemes();
		//testMaterialSchemesWithLOD();
		//testMaterialSchemesWithMismatchedLOD();
        //testSkeletonAnimationOptimise();
        //testBuildTangentOnAnimatedMesh();
		//testOverlayRelativeMode();

		//testCubeDDS();
		//testDxt1();
		//testDxt1FromMemory();
		testDxt3FromMemory();
		//testDxt1Alpha();
		//testDxt3();
		//testDxt5();
		//testFloat64DDS();
		//testFloat128DDS();
		//testFloat16DDS();
		//testFloat32DDS();

		//testVertexTexture();
		//testGLSLTangent();
		//testBackgroundLoadResourceGroup();
		//testMRT();
		
    }
    // Create new frame listener
    void createFrameListener(void)
    {
        mFrameListener= new PlayPenListener(mSceneMgr, mWindow, mCamera);
        mFrameListener->showDebugOverlay(true);
		mRoot->addFrameListener(mFrameListener);
        //mRoot->addFrameListener(fl);

    }
    

public:
    void go(void)
    {
        if (!setup())
            return;

        mRoot->startRendering();
    }

	bool setup()
	{
		String pluginsPath = mResourcePath + "plugins.cfg";
		// only use plugins.cfg if not static
#ifdef OGRE_STATIC_LIB
		mRoot = new Root(StringUtil::BLANK, 
			mResourcePath + "ogre.cfg", mResourcePath + "Ogre.log");
		mStaticPluginLoader.load(*mRoot);
#else
		mRoot = new Root(pluginsPath, 
			mResourcePath + "ogre.cfg", mResourcePath + "Ogre.log");
#endif
		setupResources();

		bool carryOn = configure();
		if (!carryOn) return false;

		chooseSceneManager();
		createCamera();
		createViewports();

		// Set default mipmap level (NB some APIs ignore this)
		TextureManager::getSingleton().setDefaultNumMipmaps(5);

		// Create any resource listeners (for loading screens)
		createResourceListener();
		// Load resources
		loadResources();

		// Create the scene
		createScene();

		createFrameListener();

		return true;

	}



};


//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------
bool gReload;

// Listener class for frame updates
class MemoryTestFrameListener : public FrameListener
{
protected:
	Real time;
	Keyboard* mKeyboard;
public:
	MemoryTestFrameListener(RenderWindow * win)
	{
		time = 0;
		ParamList pl;	
		size_t windowHnd = 0;
		std::ostringstream windowHndStr;

		win->getCustomAttribute("WINDOW", &windowHnd);
		windowHndStr << windowHnd;
		pl.insert(std::make_pair(std::string("WINDOW"), windowHndStr.str()));

		InputManager &im = *InputManager::createInputSystem( pl );

		//Create all devices (We only catch joystick exceptions here, as, most people have Key/Mouse)
		mKeyboard = static_cast<Keyboard*>(im.createInputObject( OISKeyboard, false ));
	}
	virtual ~MemoryTestFrameListener()
	{
		time = 0;            
	}

	bool frameStarted(const FrameEvent& evt)
	{
		if( mKeyboard->isKeyDown( KC_ESCAPE) )
		{
			gReload = false;
			return false;
		}

		time += evt.timeSinceLastFrame;
		if(time>5)
		{
			LogManager::getSingleton().logMessage("Reloading scene after 5 seconds");
			gReload = true;
			time=0;
			return false;
		}
		else
		{
			gReload = false;
			return true;
		}
	}

	void keyClicked(KeyEvent* e) {};
	void keyPressed(KeyEvent* e) {};
	void keyReleased(KeyEvent* e) {};
	void keyFocusIn(KeyEvent* e) {}
	void keyFocusOut(KeyEvent* e) {}
};

/** Application class */
class MemoryTestApplication : public ExampleApplication
{
protected:
	MemoryTestFrameListener * mTestFrameListener;
public:

	void go(void)
	{
		mRoot = 0;
		if (!setup())
			return;

		mRoot->startRendering();

		while(gReload)
		{
			// clean up
			destroyScene();
			destroyResources();
			if (!setup())
				return;
			mRoot->startRendering();
		}
		// clean up
		destroyScene();
	}

	bool setup(void)
	{
		if(!gReload)
		{
			String pluginsPath = mResourcePath + "plugins.cfg";
			mRoot = new Root(pluginsPath, 
				mResourcePath + "ogre.cfg", mResourcePath + "Ogre.log");
		}

		setupResources();

		if(!gReload)
		{

			bool carryOn = configure();
			if (!carryOn)
				return false;

			chooseSceneManager();
			createCamera();
			createViewports();

			// Set default mipmap level (NB some APIs ignore this)
			TextureManager::getSingleton().setDefaultNumMipmaps(5);

			// Create any resource listeners (for loading screens)
			createResourceListener();

			createFrameListener();
		}
		// Load resources
		loadResources();

		// Create the scene
		createScene();        

		return true;

	}

	/// Method which will define the source of resources (other than current folder)
	virtual void setupResources(void)
	{
		// Custom setup
		ResourceGroupManager::getSingleton().createResourceGroup("CustomResourceGroup");
		ResourceGroupManager::getSingleton().addResourceLocation(
			"../../../media/ogrehead.zip", "Zip", "CustomResourceGroup");
	}
	void loadResources(void)
	{
		// Initialise, parse scripts etc
		ResourceGroupManager::getSingleton().initialiseAllResourceGroups();
	}
	void destroyResources()
	{
		LogManager::getSingleton().logMessage("Destroying resources");
		ResourceGroupManager::getSingleton().removeResourceLocation(
			"../../../media/ogrehead.zip");
		ResourceGroupManager::getSingleton().destroyResourceGroup("CustomResourceGroup");
	}

	void createScene(void)
	{
		// Set a very low level of ambient lighting
		mSceneMgr->setAmbientLight(ColourValue(0.1, 0.1, 0.1));

		// Load ogre head
		MeshManager::getSingleton().load("ogrehead.mesh","CustomResourceGroup");
		Entity* head = mSceneMgr->createEntity("head", "ogrehead.mesh");

		// Attach the head to the scene
		mSceneMgr->getRootSceneNode()->attachObject(head);

	}

	void createFrameListener(void)
	{
		// This is where we instantiate our own frame listener
		mTestFrameListener= new MemoryTestFrameListener(mWindow);
		mRoot->addFrameListener(mTestFrameListener);
		/*if(!gReload)
		{
		ExampleApplication::createFrameListener();
		}*/
	}

	void destroyScene(void)
	{
		LogManager::getSingleton().logMessage("Clearing scene");
		mSceneMgr->clearScene();
	}
};



#if OGRE_PLATFORM == OGRE_PLATFORM_WIN32
#define WIN32_LEAN_AND_MEAN
#include "windows.h"

// External embedded window test
INT WINAPI EmbeddedMain( HINSTANCE hInst, HINSTANCE, LPSTR strCmdLine, INT );

INT WINAPI WinMain( HINSTANCE hInst, HINSTANCE, LPSTR strCmdLine, INT )
#else
int main(int argc, char **argv)
#endif
{
	//EmbeddedMain(hInst, 0, strCmdLine, 0);

	// Create application object
    PlayPenApplication app;
	//MemoryTestApplication app;

    try {
        app.go();
	} catch( Ogre::Exception& e ) {
#if OGRE_PLATFORM == OGRE_PLATFORM_WIN32
        MessageBox( NULL, e.getFullDescription().c_str(), "An exception has occured!", MB_OK | MB_ICONERROR | MB_TASKMODAL);
#else
        std::cerr << "An exception has occured: " << e.getFullDescription();
#endif
    }


    return 0;
}







