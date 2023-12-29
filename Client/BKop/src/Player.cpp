#include "StdAfx.h"
#include "BKop.h"
#include "LoginData.h"
#include "LoginPage.h"
#include "MainFrm.h"
#include "GameThread.h"
#include "Player.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#endif

const CPlayer::sLoginState CPlayer::m_sLoginStateList[]=
{
	//{	eERROR_GAME					,	"登陆游戏服务器失败"			},
	{	eFREE						,	"空闲"							},
	{	eSTART_THREAD				,	"启动线程"						},
	{	eLOGIN_GROUP				,	"正在登陆组服务器"				},
	{	eLOGON_GROUP				,	"成功登陆组服务器"				},
	{	eLOGIN_ACCOUNT				,	"正在登陆帐号服务器"			},
	{	eLOGON_ACCOUNT				,	"成功登陆帐号服务器"			},
	{	eLOGIN_GAME					,	"正在登陆游戏服务器"			},
	{	eLOGON_GAME					,	"成功登陆游戏服务器"			},
	{	eERROR_GROUP				,	"登陆组服务器失败"				},
	{	eERROR_ACCOUNT				,	"登陆帐号服务器失败"			},
	{	eERROR_TIMEOUT				,	"登陆超时"						},
	{	eERROR						,	"发现错误"						},
	{	eDISCONNECTING				,	"正在断开连接"					},
	{	eDISCONNECTED   			,	"连接已断开"					},
	{	eRESTART_LOGIN				,	"正准备重新连接"				},
	{	eCREATE_CHAR_BEGIN			,	"正在创建角色"					},
	{	eCREATE_CHAR_END			,	"创建角色成功"					},
	{	eCREATE_CHAR_ERROR			,	"创建角色失败"					},
	{	eDELETE_CHAR_BEGIN			,	"正在删除角色"					},
	{	eDELETE_CHAR_END			,	"删除角色成功"					},
	{	eDELETE_CHAR_ERROR			,	"删除角色失败"					}
};


#pragma warning(disable: 4355)	//warning C4355: 'this' : used in base member initializer list
CPlayer::CPlayer() : m_PlayerMessages(this),m_Option(this), m_RoleMgr(this), m_CommandMgr(this), m_ChatMgr(this)
{
	m_pLoginData=new CLoginData();
	m_pGameThread=NULL;
	m_LoginState=eFREE;
	m_nIndex=-1;
	m_nMainRoleIndex=-1;
	m_nRoleCount=0;
	m_dwTotalPlayerCount=0;
}

CPlayer::~CPlayer()
{
	StopRun();
	SAFE_DELETE(m_pLoginData);
	SAFE_DELETE(m_pGameThread);
}

void CPlayer::SetIndex(int nIndex)
{
	m_nIndex=nIndex;
}

int CPlayer::GetIndex()
{
	return m_nIndex;
}

CLoginData* CPlayer::GetLoginData()
{
	return m_pLoginData;
}

void CPlayer::SetLoginState(eLoginState state,DWORD WaitMillisecond)
{
	m_LoginState=state;
	//((CMainFrame*)theApp.m_pMainWnd)->GetLoginPage()->PostMessage(THREAD_MSG_REFRESH_STATE,0,(LPARAM)this);
	Sleep(WaitMillisecond);
}

CGameThread* CPlayer::GetPlayerGameThread()
{
	return m_pGameThread;
}

void CPlayer::RemovePlayerGameThread()
{
	//CSingleLock singleLock(&m_MUTEX_FOR_GameThread);
	//singleLock.Lock(3000);
	//SAFE_DELETE(m_pGameThread);
	//singleLock.Unlock();
}

CPlayer::eLoginState CPlayer::GetLoginState()
{
	return m_LoginState;
}

CString CPlayer::GetLoginStateInfo()
{
	int n=sizeof(m_sLoginStateList)/sizeof(m_sLoginStateList[0]);
	for (int i=0;i<n;i++)
	{
		if (m_sLoginStateList[i].eState==m_LoginState)
		{
			return m_sLoginStateList[i].strInfo;
		}
	}
	return "未知状态";
}

CRoleList& CPlayer::GetRoleFormList(int n)
{
	if (n<0 || n>=ROLE_LIST_MAXNUM)
	{
		ASSERT(false);
	}
	return m_RoleList[n];
}

void CPlayer::SetMainRoleIndex(int nIndex)
{
	if (nIndex<0 || nIndex>=ROLE_LIST_MAXNUM)
	{
		ASSERT(false);
	}
	m_nMainRoleIndex=nIndex;
}

int CPlayer::GetMainRoleIndex()
{
	return m_nMainRoleIndex;
}

CRoleList& CPlayer::GetMainRole()
{
	if (m_nMainRoleIndex<0 || m_nMainRoleIndex>=ROLE_LIST_MAXNUM)
	{
		ASSERT(false);
	}
	return m_RoleList[m_nMainRoleIndex];
}

bool CPlayer::StartRun()
{
	if (GetLoginState()!=eFREE) return true;
	//CSystemInfo::AddDetailDebugInfo(GetIndex(),"正准备创建线程...");
	GetPlayerMessages().AddDebugMsg("正准备创建线程...");
	SAFE_DELETE(m_pGameThread);
	m_pGameThread=new CGameThread(this);
	SetLoginState(eSTART_THREAD,0);
	DWORD id;
	HANDLE handle=CreateThread(NULL,0,CGameThread::Run,m_pGameThread,0,&id);
	if (!handle)
	{
		//CSystemInfo::AddDetailDebugInfo(GetIndex(),"线程创建失败!");
		GetPlayerMessages().AddDebugMsg("线程创建失败!");
		return false;
	}
	SetThreadPriority(handle,THREAD_PRIORITY_BELOW_NORMAL);
	//CString str;
	//str.Format("Index=%d  ->  ThreadID=%d",GetIndex(),id);
	//CSystemInfo::AddDetailDebugInfo(0,str);
	m_pGameThread->SetThreadHandle(handle);
	m_pGameThread->SetThreadID(id);
	return true;
}

bool CPlayer::StopRun()
{
	//CSingleLock singleLock(&m_MUTEX_FOR_GameThread);
	//singleLock.Lock();
	if (!GetPlayerGameThread()) return true;
	//CSystemInfo::AddDebugInfo(GetIndex(),"正在结束游戏...");
	GetPlayerMessages().AddDebugMsg("正在结束游戏...");
	PostThreadMessage(GetPlayerGameThread()->GetThreadID(),WM_QUIT,0,NULL);
	MSG msg;
	while (WaitForSingleObject(GetPlayerGameThread()->GetThreadHandle(),50)==WAIT_TIMEOUT)
	{
		while(PeekMessage(&msg,NULL,0U,0U,PM_REMOVE))
		{
			if (msg.message==THREAD_MSG_ADD_SYSTEM_MESSAGE || msg.message==WM_PAINT)
			{
				TranslateMessage(&msg);
				DispatchMessage(&msg);
			}
		}
	}
	return true;
}

void CPlayer::SetRoleCount(int nCount)
{
	m_nRoleCount=nCount;
}

int CPlayer::GetRoleCount()
{
	return m_nRoleCount;
}

CKopMap& CPlayer::GetMap()
{
	return m_Map;
}

CPlayerOption& CPlayer::GetOption()
{
	return m_Option;
}

CRoleMgr& CPlayer::GetRoleMgr()
{
	return m_RoleMgr;
}

CCommandMgr& CPlayer::GetCommandMgr()
{
	return m_CommandMgr;
}

CPlayerMessage& CPlayer::GetPlayerMessages()
{
	return m_PlayerMessages;
}

CChatMgr& CPlayer::GetChatMgr()
{
	return m_ChatMgr;
}

void CPlayer::SetTotalPlayerCount(DWORD nIndex)
{
	m_dwTotalPlayerCount=nIndex;
}

DWORD CPlayer::GetTotalPlayerCount()
{
	return m_dwTotalPlayerCount;
}

void CPlayer::SetTotalPlayerCount(CString str)
{
	if (str.IsEmpty() && !str.Find("当前登录/游戏玩家数：")) return;
	int nCut=str.ReverseFind('/');
	if (nCut<22) return;
	nCut=str.GetLength()-nCut-1;
	if (nCut<=0 || nCut>8) return;
	CString strNum=str.Right(nCut);
	DWORD n=(DWORD)atol(strNum);
	if (n>10000000) n=0;
	SetTotalPlayerCount(n);
}
