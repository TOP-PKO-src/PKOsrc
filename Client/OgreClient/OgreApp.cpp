#include	"StdAfx.h"
#include	".\ogreapp.h"
#include	<cegui.h>
#include	<ogreconfigfile.h>
#include	<ogreroot.h>
#include	<ogrerenderwindow.h>
#include	<ogreentity.h>

OgreApp::OgreApp(void)
{
}

OgreApp::~OgreApp(void)
{
}

//	��ʼ�����档
bool	OgreApp::Init()
{
	String pluginsPath;
	// only use plugins.cfg if not static
#ifndef OGRE_STATIC_LIB
	#ifdef	_DEBUG
		pluginsPath	=	mResourcePath + "plugins_d.cfg";
	#else
		pluginsPath	=	mResourcePath + "plugins_r.cfg";
	#endif
#endif
	
	//	���������ڵ㡣
	assert(	!mRoot	);

    mRoot = new Root(pluginsPath, mResourcePath + "ogre.cfg", mResourcePath + "Ogre.log");

	if(	!mRoot	)
		return	false;

	//	������Դ·����
	ConfigFile cf;
	cf.load(mResourcePath + "resources.cfg");

	ConfigFile::SectionIterator seci = cf.getSectionIterator();

	while (seci.hasMoreElements())
	{
		String	secName = seci.peekNextKey();
		ConfigFile::SettingsMultiMap *settings = seci.getNext();
		ConfigFile::SettingsMultiMap::iterator i;
		for (i = settings->begin(); i != settings->end(); ++i)
		{
			String	typeName = i->first;
			String	archName = i->second;
			ResourceGroupManager::getSingleton().addResourceLocation(archName, typeName, secName);
		}
	}

	//	�������öԻ���
	if(mRoot->showConfigDialog())
	{
		mWindow = mRoot->initialise(true);
	}
	else
	{
		return	false;
	}

	//	����һ��������������
	assert(	!mSceneMgr	);
	mSceneMgr = mRoot->createSceneManager(ST_GENERIC, "ExampleSMInstance");

	//	�����������
	mCamera = mSceneMgr->createCamera("PlayerCam");
	mCamera->setPosition(Vector3(220,-2,176));
	mCamera->lookAt(Vector3(0,0,0));
	mCamera->setNearClipDistance(5);
	mCamera->setFixedYawAxis(false);

	//	�����ӿڡ�
	Viewport* vp = mWindow->addViewport(mCamera);
    vp->setBackgroundColour(ColourValue(0,0,0));
	mCamera->setAspectRatio( Real(vp->getActualWidth()) / Real(vp->getActualHeight()));

	//	�����������ѡ�
	TextureManager::getSingleton().setDefaultNumMipmaps(5);

	//	���س�ʼ��Դ��
	ResourceGroupManager::getSingleton().initialiseAllResourceGroups();

	//	����������
    Entity* ogreHead = mSceneMgr->createEntity("Head", "ogrehead.mesh");

    SceneNode* headNode = mSceneMgr->getRootSceneNode()->createChildSceneNode();
    headNode->attachObject(ogreHead);

	/*
	if(	!createScene()	)
	{
		return	false;
	};


	//	�������������
	mRoot->addFrameListener(this);

	//	����GUI��Ⱦ����
	g_pCEGUIRenderer	=	new CEGUI::OgreCEGUIRenderer(	
								this->mWindow,
								Ogre::RENDER_QUEUE_OVERLAY, 
								false, 
								3000,
								this->mSceneMgr
								);

	//	����UI�õ�����
	RenderTexture* rttTex = mRoot->getRenderSystem()->createRenderTexture( "RttTex", 512, 512, TEX_TYPE_2D, PF_R8G8B8 );
	{
		Camera* rttCam = mSceneMgr->createCamera("RttCam");
		SceneNode* camNode = mSceneMgr->getRootSceneNode()->createChildSceneNode("rttCamNode");
		camNode->attachObject(rttCam);
		rttCam->setPosition(0,0,200);
		//	rttCam->setVisible(true);

		Viewport *v = rttTex->addViewport( rttCam );
		v->setOverlaysEnabled(false);
		v->setClearEveryFrame( true );
		v->setBackgroundColour( ColourValue::Black );
	}
*/
	//	*
	return true;
};

//	�����塣
void	OgreApp::Run()
{
	//	-
	mRoot->renderOneFrame();
};

//	�ͷš�
void	OgreApp::Release()
{
	this->mRoot->shutdown();
};