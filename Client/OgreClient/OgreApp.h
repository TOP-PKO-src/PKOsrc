#pragma once
#include <OIS/OIS.h>
#include <OgreWindowEventUtilities.h>
#include <OgreFrameListener.h>
#include "GameScene.h"
using	namespace	Ogre;

//	�Լ��߱�����������
class OgreApp	:	public	IAppObject
{
	//	�����ڵ㡣
    Root*			mRoot;

	//	������������
    SceneManager*	mSceneMgr;
/*
	//	���������
    EngineFrameListener* mFrameListener;
*/
	//	��Ⱦ���ڡ�
    RenderWindow*	mWindow;

	//	�����Դ·����
	Ogre::String mResourcePath;

	//	�������
    Ogre::Camera*	mCamera;

	//	���س�����
	GameScene*		mScene;

	//	��ʼ����
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

public:	//	������
	static	OgreApp&	instance()
	{
		static	OgreApp	app;
		return	app;
	};
};
