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
	//	����DUMMY�����֡�
	char	sBoneName[256];
	sprintf(sBoneName,	"dummy%d",	iDummyId	);

	//	�ҽӵ��ڵ㡣
	this->ma_pPartEntity[0]->attachObjectToBone(	sBoneName,	item	);

	//
	return	true;
};

//	���������������ɫ��ۡ�
void	GameAvatar::NetCreate(	const	LoadChaInfo&	info	)
{
	//	�����ڵ㡣
	assert(	!m_pNode	);
	char	sNodeName[256];
	sprintf(	sNodeName,	"%d",	this	);
	m_pNode	=	OgreApp::instance().GetOgreSceneMgr()->getRootSceneNode()->createChildSceneNode(
		sNodeName
		);

	//	����ʵ�塣
	for(	int	i	=	0;	i	<	5;	i	++	)
	{
		//	����ʵ�塣
		assert(	!ma_pPartEntity[i]	);
		ma_pPartEntity[i]	=	OgreApp::instance().GetOgreSceneMgr()->createEntity( info.part[i], info.part[i] );
			
		//	���ڵ�ҵ������
		m_pNode->attachObject(	ma_pPartEntity[i]	);
	}

	//	�������еĸ�����
	for(	int	i	=	0;	i	<	4;	i	++	)
	{
		if(	strlen(info.prop[i])	)
		{
			//	�������߽ڵ㡣
			ma_pPropEntity[i]	=	OgreApp::instance().GetOgreSceneMgr()->createEntity(	info.prop[i],	info.prop[i]	);

			//	�󶨸�����
			this->Link(	i,	ma_pPropEntity[i]	);
		}
	}

};

//	���Ŷ���,	���ض���ʱ�䳤�ȡ�
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


