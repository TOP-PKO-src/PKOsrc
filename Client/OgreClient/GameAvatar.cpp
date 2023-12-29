#include "StdAfx.h"
#include ".\gameavatar.h"
#include "ogreapp.h"
#include "OgreSceneManager.h"
#include "OgreMeshManager.h"

//	-
GameAvatar::GameAvatar(void)
{
}

GameAvatar::~GameAvatar(void)
{
}

//	-
bool	GameAvatar::Link(	int	iDummyId,	Ogre::Entity*	item	)
{
	//	计算DUMMY点名字。
	char	sBoneName[256];
	sprintf(sBoneName,	"dummy%d",	iDummyId	);

	//	挂接到节点。
	this->ma_pPartEntity[0]->attachObjectToBone(	sBoneName,	item	);

	//
	return	true;
};

//	根据网络包创建角色外观。
void	GameAvatar::NetCreate(	const	LoadChaInfo&	info	)
{
	//	创建节点。
	assert(	!m_pNode	);
	char	sNodeName[256];
	sprintf(	sNodeName,	"%d",	this	);
	m_pNode	=	OgreApp::instance().GetOgreSceneMgr()->getRootSceneNode()->createChildSceneNode(
		sNodeName
		);

	//	创建实体。
	for(	int	i	=	0;	i	<	5;	i	++	)
	{
		//	创建实体。
		assert(	!ma_pPartEntity[i]	);
		ma_pPartEntity[i]	=	OgreApp::instance().GetOgreSceneMgr()->createEntity( info.part[i], info.part[i] );
			
		//	将节点挂到对象里。
		m_pNode->attachObject(	ma_pPartEntity[i]	);
	}

	//	创建所有的附件。
	for(	int	i	=	0;	i	<	4;	i	++	)
	{
		if(	strlen(info.prop[i])	)
		{
			//	创建道具节点。
			ma_pPropEntity[i]	=	OgreApp::instance().GetOgreSceneMgr()->createEntity(	info.prop[i],	info.prop[i]	);

			//	绑定附件。
			this->Link(	i,	ma_pPropEntity[i]	);
		}
	}

};

//	播放动画,	返回动画时间长度。
int		GameAvatar::PlayAnimal(	int	id,	bool	loop	)
{
	assert(	id	>=	0	&&	id	<	MAX_POSE	);
		
	char	sAnimName[256];
	sprintf(	sAnimName,	"post%d",	id	);

	for(	int	i	=	0;	i	<	5;	i	++	)
	{
		this->ma_animation[i]	=	this->ma_pPartEntity[i]->getAnimationState( sAnimName );
		this->ma_animation[i]->setLoop(	loop	);
		this->ma_animation[i]->setEnabled(	true	);
	};

	//
	return	this->ma_animation[i]->getLength();
};


