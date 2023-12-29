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
		//CSystemInfo::Add(m_pPlayer->GetIndex(),"���ȴ����������Socket��Դ�ͷ�...");
		m_pPlayer->GetPlayerMessages().AddMsg("���ȴ����������Socket��Դ�ͷ�...");
		g_pNet->Disconnect(this);
		return false;
	}
	//CSystemInfo::Add(m_pPlayer->GetIndex(),"���������������...");
	m_pPlayer->GetPlayerMessages().AddMsg("���������������...");
	m_pPlayer->SetLoginState(CPlayer::eLOGIN_GROUP);
	m_DataSock=g_pNet->Connect(hostname,port);
	if (m_DataSock)
	{
		m_DataSock->SetPointer(this);
		return true;
	}
	//CSystemInfo::Add(m_pPlayer->GetIndex(),"�����������ʧ�ܣ�");
	m_pPlayer->GetPlayerMessages().AddMsg("�����������ʧ�ܣ�");
	m_pPlayer->SetLoginState(CPlayer::eERROR_GROUP);
	return false;
}

//���أ�true	��ʾ�����Ѿ��Ͽ����������ѶϿ�״̬
//���أ�false	��ʾ�������ڶϿ������������ڶϿ�״̬
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

//�ص�
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
		//CSystemInfo::Add(m_pPlayer->GetIndex(),"��������ʧ�ܣ������ѱ��Ͽ���");
		m_pPlayer->GetPlayerMessages().AddMsg("��������ʧ�ܣ������ѱ��Ͽ���");
		return false;
	}
	//CSystemInfo::AddDetailDebugInfo(m_pPlayer->GetIndex(),"׼����������...��m_DataSock=0x%X��",m_DataSock);
	g_pNet->SendPacketMessage(this,pk);
	//CSystemInfo::AddDetailDebugInfo(m_pPlayer->GetIndex(),"�Ѿ���������...��m_DataSock=0x%X��",m_DataSock);
	return true;
}

CConnectKey& CNetIF::GetConnectKey()
{
	return m_CKey;
}

//�ص�
void CNetIF::OnEncrypt(char *codeText,DWORD len)
{
	if (m_CKey.GetEncoder())
	{
		m_CKey.Encrypt(codeText,len);
	}
}

//�ص�
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

