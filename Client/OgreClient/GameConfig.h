#pragma once

//	��Ϸ�����ļ���
class GameConfig
{
	int		m_nSendHeartbeat;
public:
	int	GetSendHeartbeat(){	return	180;	};

public:
	GameConfig(void);
	~GameConfig(void);

	static	GameConfig&	instance()
	{
		static	GameConfig	gc;
		return	gc;
	};
};
