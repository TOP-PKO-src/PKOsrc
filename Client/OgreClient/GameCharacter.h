#pragma once
#include	"GameAvatar.h"

//	主要封装人物状态和一些基本操作，不涉及人物的道具，属性，背包信息，这些东西在更上层进行封装，例如PLAYER，NPC，BUGBEAR等。
class GameCharacter	:	public	GameAvatar
{
	//	角色的唯一ID号。
	int				m_iGroupId;
	//	人物名字。
	std::string		m_sName;

public:	//	
	int	GetGroupId(){	return	m_iGroupId;	};
	const	char*	GetName(){	return	m_sName.c_str();	};




	//	移动状态。
	bool	MoveTo(	void*	root	);
	//	攻击状态。
	bool	Attach();


public:	//	构造和析构。
	GameCharacter(void);
	~GameCharacter(void);

};
