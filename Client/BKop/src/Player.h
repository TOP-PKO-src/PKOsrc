#pragma once

#include "RoleList.h"
#include "KopMap.h"
#include "PlayerOption.h"
#include "RoleMgr.h"
#include "CommandMgr.h"
#include "PlayerMessage.h"
#include "ChatMgr.h"
#include "afxmt.h"


class CLoginData;
class CGameThread;

class CPlayer
{
public:
	enum eLoginState
	{
		eFREE,eSTART_THREAD,
		eLOGIN_GROUP,eLOGON_GROUP,eLOGIN_ACCOUNT,eLOGON_ACCOUNT,eLOGIN_GAME,eLOGON_GAME,
		eERROR_GROUP,eERROR_ACCOUNT,eERROR_TIMEOUT,eERROR,
		eDISCONNECTING,eDISCONNECTED,eRESTART_LOGIN,
		eCREATE_CHAR_BEGIN,eCREATE_CHAR_END,eCREATE_CHAR_ERROR,
		eDELETE_CHAR_BEGIN,eDELETE_CHAR_END,eDELETE_CHAR_ERROR
	};

	CPlayer();
	~CPlayer();

	bool StartRun();
	bool StopRun();

	//对应登陆List的序号，可重用
	void SetIndex(int nIndex);
	int GetIndex();

	CGameThread* GetPlayerGameThread();

public:
	void SetLoginState(eLoginState state,DWORD WaitMillisecond=500);
	void RemovePlayerGameThread();
	void SetRoleCount(int nCount);
	void SetMainRoleIndex(int nIndex);
	void SetTotalPlayerCount(DWORD nIndex);				//设置游戏服务器玩家数量
	void SetTotalPlayerCount(CString str);				//通过GM命令返回的字符串设置游戏服务器玩家数量


	DWORD GetTotalPlayerCount();				//获得游戏服务器玩家数量
	CPlayerMessage& GetPlayerMessages();
	CLoginData* GetLoginData();
	eLoginState GetLoginState();
	CString GetLoginStateInfo();
	CRoleList& GetRoleFormList(int n);
	CRoleList& GetMainRole();
	CRoleMgr& GetRoleMgr();
	CCommandMgr& GetCommandMgr();
	CPlayerOption& GetOption();
	CKopMap& GetMap();
	CChatMgr& GetChatMgr();
	int GetRoleCount();
	int GetMainRoleIndex();

private:
	struct sLoginState{eLoginState eState;CString strInfo;};
	static const sLoginState m_sLoginStateList[];
	int m_nIndex;
	DWORD m_dwID;
	CLoginData *volatile m_pLoginData;
	CGameThread* m_pGameThread;
	CMutex m_MUTEX_FOR_GameThread;
	eLoginState m_LoginState;
	int m_nMainRoleIndex;
	int m_nRoleCount;
	CRoleList m_RoleList[ROLE_LIST_MAXNUM];
	CRoleMgr m_RoleMgr;
	CKopMap m_Map;
	CPlayerOption m_Option;
	CCommandMgr m_CommandMgr;
	CPlayerMessage m_PlayerMessages;
	CChatMgr m_ChatMgr;
	volatile DWORD m_dwTotalPlayerCount;
};
