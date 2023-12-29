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

	//reason值：0-本地程序正常退出，-1-Socket错误，-3-网络被对方关闭，-5-包长度超过限制。
	void OnDisconnect(int reason);
	//接收到数据，进行分派
	void OnProcessData(dbc::RPacket& recvbuf);
	//发送数据前对数据加密
	void OnEncrypt(char *codeText,DWORD len);
	//收到数据前对数据解密
	void OnDecrypt(char *codeText,DWORD len);

private:
	CSender m_Sender;
	CReceiver m_Receiver;
	dbc::DataSocket *volatile m_DataSock;
    char    m_chapstr[100];
	CPlayer *m_pPlayer;
	CConnectKey m_CKey;
};
