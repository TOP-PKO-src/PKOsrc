#include "StdAfx.h"
#include "BKop.h"
#include "LoginData.h"
#include "NetIF.h"
#include "MainFrm.h"
#include "ItemView.h"
#include "NetModule.h"
#include "CommandMgr.h"
#include ".\gamethread.h"
#include "afxmt.h"


#ifdef _DEBUG
#define new DEBUG_NEW
#endif

CCriticalSection CGameThread::m_Critical_SingleLogin;

CGameThread::CGameThread(CPlayer *player) : PKQueue(false)
{
	m_pPlayer=player;
	m_pNet=NULL;
}

CGameThread::~CGameThread(void)
{
	SAFE_DELETE(m_pNet);
}

void CGameThread::SetThreadHandle(HANDLE handle)
{
	m_hThreadHandle=handle;
}

HANDLE CGameThread::GetThreadHandle()
{
	return m_hThreadHandle;
}

void CGameThread::SetThreadID(DWORD id)
{
	m_dwThreadID=id;
}

DWORD CGameThread::GetThreadID()
{
	return m_dwThreadID;
}

DWORD WINAPI CGameThread::Run(LPVOID lpParm)
{
	CGameThread* pThis=static_cast<CGameThread*>(lpParm);
	pThis->ThreadBegin();
	pThis->ThreadRun();
	return pThis->ThreadEnd();
}

bool CGameThread::CheckLogin()
{
	CPlayer::eLoginState state=m_pPlayer->GetLoginState();
	if (state==CPlayer::eSTART_THREAD || state==CPlayer::eRESTART_LOGIN)
	{//连接组服务器
		if (m_pNet->Connect(m_pPlayer->GetLoginData()->GetServiceIP(),1973))
		{
			//CSystemInfo::Add(m_pPlayer->GetIndex(),"连接组服务器成功！等待服务器发送同步密匙...");
			m_pPlayer->GetPlayerMessages().AddMsg("连接组服务器成功！等待服务器发送同步密匙...");
			m_dwWaitForConnectTicks=GetTickCount();
		}
		else
		{
			Sleep(1000);
			m_dwWaitForConnectTicks=GetTickCount();
		}
		m_pPlayer->GetRoleMgr().ResetAll();
		return false;
	}
	else if (state==CPlayer::eLOGON_GROUP)
	{//登陆帐号服务器
		//CSystemInfo::Add(m_pPlayer->GetIndex(),"正在登陆帐号服务器...");
		m_pPlayer->GetPlayerMessages().AddMsg("正在登陆帐号服务器...");
		m_pPlayer->SetLoginState(CPlayer::eLOGIN_ACCOUNT);
		m_pNet->GetSender().LoginAccountService(m_pPlayer->GetLoginData());
		Sleep(100);
		m_dwWaitForConnectTicks=GetTickCount();
		return false;
	}
	else if (state==CPlayer::eLOGON_ACCOUNT)
	{//登陆游戏服务器
		int nRoleCount=m_pPlayer->GetRoleCount();
		//if (nRoleCount>0)
		if (nRoleCount>m_pPlayer->GetMainRoleIndex())
		{
			if (((CMainFrame*)AfxGetApp()->GetMainWnd())->GetItemView()->m_LoginPage.GetIsAutoCreateDel())
			{//自动删除角色
				//CSystemInfo::Add(m_pPlayer->GetIndex(),"启动自动创建删除角色功能,正在删除现有角色...名字:%s",m_pPlayer->GetRoleFormList(nRoleCount-1).GetName());
				m_pPlayer->GetPlayerMessages().AddMsg("启动自动创建删除角色功能,正在删除现有角色...名字:%s",m_pPlayer->GetRoleFormList(nRoleCount-1).GetName());
				m_pPlayer->SetLoginState(CPlayer::eDELETE_CHAR_BEGIN);
				m_pNet->GetSender().DeleteCharacter(m_pPlayer->GetRoleFormList(nRoleCount-1).GetName());
				Sleep(100);
				m_dwWaitForConnectTicks=GetTickCount();
				return false;
			}
			else
			{//正常登陆角色
				//CSystemInfo::Add(m_pPlayer->GetIndex(),"正在登陆游戏服务器...");
				m_pPlayer->GetPlayerMessages().AddMsg("正在登陆游戏服务器...");
				m_pPlayer->SetLoginState(CPlayer::eLOGIN_GAME);
				m_pNet->GetSender().LoginGameService();
				Sleep(100);
				m_dwWaitForConnectTicks=GetTickCount();
				return false;
			}
		}
		else
		{
			if (nRoleCount>0)
			{
				//CSystemInfo::Add(m_pPlayer->GetIndex(),"此帐号包含有%d个角色,但没有找到待选择的角色人物!",nRoleCount);
				m_pPlayer->GetPlayerMessages().AddMsg("此帐号包含有%d个角色,但没有找到待选择的角色人物!",nRoleCount);
			}
			else
			{
				//CSystemInfo::Add(m_pPlayer->GetIndex(),"此帐号没有创建任何角色");
				m_pPlayer->GetPlayerMessages().AddMsg("此帐号没有创建任何角色");
			}
			m_pPlayer->SetLoginState(CPlayer::eCREATE_CHAR_BEGIN);
			m_pNet->GetSender().CreateCharacter();
			Sleep(100);
			m_dwWaitForConnectTicks=GetTickCount();
			return false;
		}
	}
	else if (state==CPlayer::eCREATE_CHAR_END || state==CPlayer::eDELETE_CHAR_END)
	{
		m_pPlayer->SetLoginState(CPlayer::eLOGON_ACCOUNT);
		m_dwWaitForConnectTicks=GetTickCount();
		return false;
	}
	else if (state==CPlayer::eDISCONNECTING)
	{
		Sleep(100);
		m_dwWaitForConnectTicks=GetTickCount();
		return false;
	}
	else if (state==CPlayer::eDISCONNECTED)
	{
		if (((CMainFrame*)AfxGetApp()->GetMainWnd())->GetItemView()->m_LoginPage.GetIsReconnect()==false)
		{
			Sleep(500);
			return false;
		}
		m_pPlayer->SetLoginState(CPlayer::eRESTART_LOGIN);
		Sleep(100);
		m_dwWaitForConnectTicks=GetTickCount();
		return false;
	}
	else if (state==CPlayer::eLOGON_GAME)
	{//已经成功登陆
		if (((CMainFrame*)AfxGetApp()->GetMainWnd())->GetItemView()->m_LoginPage.GetIsAutoCreateDel())
		{
			if (!m_pNet->Disconnect())
			{
				//CSystemInfo::Add(m_pPlayer->GetIndex(),"启动自动创建删除角色功能,正在断开连接...");
				m_pPlayer->GetPlayerMessages().AddMsg("启动自动创建删除角色功能,正在断开连接...");
				Sleep(3000);
			}
			m_dwWaitForConnectTicks=GetTickCount();
			return false;
		}
		m_dwWaitForConnectTicks=GetTickCount();
		return true;
	}
	else
	{
		if ( state==CPlayer::eERROR_GROUP || state==CPlayer::eERROR_ACCOUNT || 
			state==CPlayer::eERROR || state==CPlayer::eERROR_TIMEOUT ||
			state==CPlayer::eCREATE_CHAR_ERROR || state==CPlayer::eDELETE_CHAR_ERROR )
		{
			if (!m_pNet->Disconnect())
			{
				//CSystemInfo::Add(m_pPlayer->GetIndex(),"正在断开连接...");
				m_pPlayer->GetPlayerMessages().AddMsg("正在断开连接...");
				Sleep(3000);
			}
			m_dwWaitForConnectTicks=GetTickCount();
			return false;
		}
	}
	if (GetTickCount()-m_dwWaitForConnectTicks>=60000)
	{
		//CSystemInfo::Add(m_pPlayer->GetIndex(),"登陆超时!正在断开连接...");
		m_pPlayer->GetPlayerMessages().AddMsg("登陆超时!正在断开连接...");
		m_dwWaitForConnectTicks=GetTickCount();
		m_pPlayer->SetLoginState(CPlayer::eERROR_TIMEOUT);
	}
	return false;
}

int CGameThread::ThreadBegin()
{
	//CSystemInfo::AddDetailDebugInfo(m_pPlayer->GetIndex(),"线程创建成功!");
	m_pPlayer->GetPlayerMessages().AddDebugMsg("线程创建成功!");
	m_dwWaitForConnectTicks=GetTickCount();
	m_bExitFlag=false;
	return 0;
}

void CGameThread::ThreadRun()
{
	m_pNet=new CNetIF(m_pPlayer);
	MSG msg;
	ZeroMemory(&msg,sizeof(msg));
	m_Critical_SingleLogin.Lock();
	srand(GetTickCount());
	Sleep(20);
	m_Critical_SingleLogin.Unlock();
	while(true)
	{
		if(PeekMessage(&msg,NULL,0U,0U,PM_REMOVE))
		{
			if (IsReadyToQuit(&msg))
			{
				break;
			}
			TranslateMessage( &msg );
			OnProcessMsg(&msg);
		}
		m_pPlayer->GetOption().Run();
		if (CheckLogin())
		{
			m_pPlayer->GetCommandMgr().ExecuteCommand();
		}
		PeekPacket(100);
	}
	SAFE_DELETE(m_pNet);
}

int CGameThread::ThreadEnd()
{
	//CSystemInfo::Add(m_pPlayer->GetIndex(),"游戏已结束！");
	m_pPlayer->GetPlayerMessages().AddMsg("游戏已结束！");
	m_pPlayer->SetLoginState(CPlayer::eFREE);
	return 0;
}

bool CGameThread::IsReadyToQuit( IN CONST MSG *lpMsg )
{
	if (lpMsg->message==WM_QUIT)
	{
		//CPlayer::eLoginState state=m_pPlayer->GetLoginState();
		//if (state==CPlayer::eRESTART_LOGIN || state==CPlayer::eDISCONNECTED || state==CPlayer::eERROR_GROUP)
		//{
		//	return true;
		//}
		m_bExitFlag=true;
		if (m_pNet->Disconnect())
		{
			while (PKQueue::GetPkTotal()) PeekPacket(40);
			return true;
		}
		MSG msg;
		while (GetMessage(&msg,NULL,0,0) || msg.message==WM_QUIT)
		{
			if (msg.message==NETIF_DISCONNECT)
			{
				while (PKQueue::GetPkTotal()) PeekPacket(40);
				break;
			}
		}
		return true;
	}
	return false;
}

CNetIF *CGameThread::GetNetIF()
{
	return m_pNet;
}

void CGameThread::OnProcessMsg( IN CONST MSG *lpMsg )
{
	if (lpMsg->message==NETIF_DISCONNECT)
	{
		OnDisconnect((int)lpMsg->wParam);
	}
	else if (lpMsg->message==MAIN_PLAYER_SELECT_CHANGE)
	{
		int nCurSel=((CMainFrame*)AfxGetApp()->GetMainWnd())->GetItemView()->GetSelectMainRoleIndex();
		if (nCurSel==m_pPlayer->GetIndex())
		{
			SendMessage(((CMainFrame*)AfxGetApp()->GetMainWnd())->GetItemView()->m_hWnd,GAME_THREAD_RESET_ALL,0,NULL);
			if (m_pPlayer->GetRoleMgr().GetSelfObject())
			{
				SendMessage(((CMainFrame*)AfxGetApp()->GetMainWnd())->GetItemView()->m_hWnd,GAME_THREAD_FRESH_ALL,0,NULL);
			}
		}
	}
}

void CGameThread::OnDisconnect(int reason)
{
	m_pNet->SetFreeSocket();
	m_pPlayer->SetLoginState(CPlayer::eDISCONNECTED);
	m_pNet->GetConnectKey().ResetKey();
	//CSystemInfo::Add(m_pPlayer->GetIndex(),"连接已经断开...错误:%d,原因:%s",reason,g_pNet->GetDisconnectErrText(reason).c_str());
	m_pPlayer->GetPlayerMessages().AddMsg("连接已经断开...错误:%d,原因:%s",reason,g_pNet->GetDisconnectErrText(reason).c_str());
}

void CGameThread::ProcessData(dbc::DataSocket *datasock,dbc::RPacket& recvbuf)
{
	if (m_bExitFlag)
	{
		return;
	}
	m_pNet->ReceiveData(recvbuf);
}
