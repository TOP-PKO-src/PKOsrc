#pragma once
#include <OIS/OIS.h>
#include <OgreWindowEventUtilities.h>
#include <OgreFrameListener.h>
#include "GameScene.h"
using	namespace	Ogre;

//	自己具备监听能力。
class OgreApp	:	public	IAppObject
{
	//	引导节点。
    Root*			mRoot;

	//	场景管理器。
    SceneManager*	mSceneMgr;
/*
	//	桢监听器。
    EngineFrameListener* mFrameListener;
*/
	//	渲染窗口。
    RenderWindow*	mWindow;

	//	相关资源路径。
	Ogre::String mResourcePath;

	//	摄象机。
    Ogre::Camera*	mCamera;

	//	本地场景。
	GameScene*		mScene;

	//	初始化。
public:

	virtual	bool	Init();
	virtual	void	Run();
	virtual	void	Release();

	Ogre::Root*			GetOgreRoot(){		return	mRoot;		};
	Ogre::SceneManager*	GetOgreSceneMgr(){	return	mSceneMgr;	};
	Ogre::Camera*		GetOgreCamera(){	return	mCamera;	};
	GameScene*			GetCurScene(){	return	mScene;	};
	DWORD				GetCurTick(){	return	0;	};

private:
	OgreApp(void);
	~OgreApp(void);

public:	//	单件。
	static	OgreApp&	instance()
	{
		static	OgreApp	app;
		return	app;
	};
};
