#pragma once

#include "CommRPC.h"
#include "GameCommon.h"
#include "Sender.h"
#include "Receivers.h"
#include "NetIF.h"
#include "afxmt.h"


_DBC_USING

class CNetModule : public TcpClientApp, public RPCMGR
{
public:
	CNetModule(ThreadPool* pool);
	virtual ~CNetModule(void);

	DataSocket* Connect(CString hostname,WORD port);
	void Disconnect(CNetIF *pNet);

	void SendPacketMessage(CNetIF *pNet,WPacket& pk);


private:
	//�����ڲ����ã�ע��ͬ�����Ƿ��ظ�����
	//CNetIF* GetMember(DataSocket *pSock);
	//����ֵ��true-�������ӣ�false-����������
	virtual bool OnConnect(DataSocket *datasock);
	//reasonֵ��0-���س��������˳���-1-Socket����-3-���类�Է��رգ�-5-�����ȳ������ơ�
	virtual void OnDisconnect(DataSocket *datasock,int reason);
	//���յ����ݣ����з���
	virtual void OnProcessData(dbc::DataSocket *datasock,dbc::RPacket& recvbuf);
	//��������ǰ�����ݼ���
	virtual void OnEncrypt(dbc::DataSocket *datasock,char *ciphertext,const char *text,unsigned long &len);
	//�յ�����ǰ�����ݽ���
	virtual void OnDecrypt(dbc::DataSocket *datasock,char *ciphertext,unsigned long &len);


private:
	ThreadPool* m_pThreadPool;
};
