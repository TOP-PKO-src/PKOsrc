#pragma once
#include	"GameAvatar.h"

//	��Ҫ��װ����״̬��һЩ�������������漰����ĵ��ߣ����ԣ�������Ϣ����Щ�����ڸ��ϲ���з�װ������PLAYER��NPC��BUGBEAR�ȡ�
class GameCharacter	:	public	GameAvatar
{
	//	��ɫ��ΨһID�š�
	int				m_iGroupId;
	//	�������֡�
	std::string		m_sName;

public:	//	
	int	GetGroupId(){	return	m_iGroupId;	};
	const	char*	GetName(){	return	m_sName.c_str();	};




	//	�ƶ�״̬��
	bool	MoveTo(	void*	root	);
	//	����״̬��
	bool	Attach();


public:	//	�����������
	GameCharacter(void);
	~GameCharacter(void);

};
