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
	//仅给内部调用，注意同步锁是否重复上锁
	//CNetIF* GetMember(DataSocket *pSock);
	//返回值：true-允许连接，false-不允许连接
	virtual bool OnConnect(DataSocket *datasock);
	//reason值：0-本地程序正常退出，-1-Socket错误，-3-网络被对方关闭，-5-包长度超过限制。
	virtual void OnDisconnect(DataSocket *datasock,int reason);
	//接收到数据，进行分派
	virtual void OnProcessData(dbc::DataSocket *datasock,dbc::RPacket& recvbuf);
	//发送数据前对数据加密
	virtual void OnEncrypt(dbc::DataSocket *datasock,char *ciphertext,const char *text,unsigned long &len);
	//收到数据前对数据解密
	virtual void OnDecrypt(dbc::DataSocket *datasock,char *ciphertext,unsigned long &len);


private:
	ThreadPool* m_pThreadPool;
};
