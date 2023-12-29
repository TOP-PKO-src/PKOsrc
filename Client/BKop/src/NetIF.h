#pragma once

#include "CommRPC.h"
#include "GameCommon.h"
#include "Sender.h"
#include "Receivers.h"
#include "ConnectKey.h"


class CNetIF
{
	friend CNetModule;
	friend CSender;
    friend CReceiver;
public:
	CNetIF(CPlayer *player);
	~CNetIF(void);

public:
	bool Connect(CString hostname,WORD port);
	bool Disconnect();
	void SetFreeSocket();

	CSender& GetSender();
	CConnectKey& GetConnectKey();
	void ReceiveData(dbc::RPacket& recvbuf);

private:
	bool SendPacketMessage(dbc::WPacket& pk);

	//reasonֵ��0-���س��������˳���-1-Socket����-3-���类�Է��رգ�-5-�����ȳ������ơ�
	void OnDisconnect(int reason);
	//���յ����ݣ����з���
	void OnProcessData(dbc::RPacket& recvbuf);
	//��������ǰ�����ݼ���
	void OnEncrypt(char *codeText,DWORD len);
	//�յ�����ǰ�����ݽ���
	void OnDecrypt(char *codeText,DWORD len);

private:
	CSender m_Sender;
	CReceiver m_Receiver;
	dbc::DataSocket *volatile m_DataSock;
    char    m_chapstr[100];
	CPlayer *m_pPlayer;
	CConnectKey m_CKey;
};
