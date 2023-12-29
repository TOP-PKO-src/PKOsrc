#include "StdAfx.h"
#include "NetModule.h"
#include "GameThread.h"
#include ".\netif.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#endif


CNetIF::CNetIF(CPlayer *player) : m_Sender(this,player),m_Receiver(this,player)
{
	m_DataSock=NULL;
	m_pPlayer=player;
}

CNetIF::~CNetIF(void)
{
}

void CNetIF::SetFreeSocket()
{
	m_DataSock=NULL;
}

bool CNetIF::Connect(CString hostname,WORD port)
{
	if (m_DataSock)
	{
		//CSystemInfo::Add(m_pPlayer->GetIndex(),"正等待连接所需的Socket资源释放...");
		m_pPlayer->GetPlayerMessages().AddMsg("正等待连接所需的Socket资源释放...");
		g_pNet->Disconnect(this);
		return false;
	}
	//CSystemInfo::Add(m_pPlayer->GetIndex(),"正在连接组服务器...");
	m_pPlayer->GetPlayerMessages().AddMsg("正在连接组服务器...");
	m_pPlayer->SetLoginState(CPlayer::eLOGIN_GROUP);
	m_DataSock=g_pNet->Connect(hostname,port);
	if (m_DataSock)
	{
		m_DataSock->SetPointer(this);
		return true;
	}
	//CSystemInfo::Add(m_pPlayer->GetIndex(),"连接组服务器失败！");
	m_pPlayer->GetPlayerMessages().AddMsg("连接组服务器失败！");
	m_pPlayer->SetLoginState(CPlayer::eERROR_GROUP);
	return false;
}

//返回：true	表示连接已经断开，并设置已断开状态
//返回：false	表示连接正在断开，并设置正在断开状态
bool CNetIF::Disconnect()
{
	if (m_DataSock)
	{
		m_pPlayer->SetLoginState(CPlayer::eDISCONNECTING);
		g_pNet->Disconnect(this);
		return false;
	}
	else
	{
		m_pPlayer->SetLoginState(CPlayer::eDISCONNECTED);
		return true;
	}
}

//回调
void CNetIF::OnDisconnect(int reason)
{
	while (!PostThreadMessage(m_pPlayer->GetPlayerGameThread()->GetThreadID(),NETIF_DISCONNECT,reason,NULL))
	{
		Sleep(50);
	}
}

CSender& CNetIF::GetSender()
{
	return m_Sender;
}

bool CNetIF::SendPacketMessage(dbc::WPacket& pk)
{
	if (!m_DataSock)
	{
		//CSystemInfo::Add(m_pPlayer->GetIndex(),"发送数据失败：连接已被断开！");
		m_pPlayer->GetPlayerMessages().AddMsg("发送数据失败：连接已被断开！");
		return false;
	}
	//CSystemInfo::AddDetailDebugInfo(m_pPlayer->GetIndex(),"准备发送数据...（m_DataSock=0x%X）",m_DataSock);
	g_pNet->SendPacketMessage(this,pk);
	//CSystemInfo::AddDetailDebugInfo(m_pPlayer->GetIndex(),"已经发出数据...（m_DataSock=0x%X）",m_DataSock);
	return true;
}

CConnectKey& CNetIF::GetConnectKey()
{
	return m_CKey;
}

//回调
void CNetIF::OnEncrypt(char *codeText,DWORD len)
{
	if (m_CKey.GetEncoder())
	{
		m_CKey.Encrypt(codeText,len);
	}
}

//回调
void CNetIF::OnDecrypt(char *codeText,DWORD len)
{
	if (m_CKey.GetEncoder())
	{
		m_CKey.Decrypt(codeText,len);
	}
}

void CNetIF::ReceiveData(dbc::RPacket& recvbuf)
{
	m_Receiver.OnMessageHandle(recvbuf);
}

