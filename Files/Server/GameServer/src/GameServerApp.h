/* Generated by Together */

#ifndef GAMESERVERAPP_H
#define GAMESERVERAPP_H

#ifndef USE_IOCP

#include <string>
#include "DBCCommon.h"
#include "PreAlloc.h"
#include "ThreadPool.h"
#include "CommRPC.h"
#include "Point.h"
#include "Identity.h"
#include "Usage.h"
#include "DataSocket.h"
#include "PacketQueue.h"
#include "Config.h"
#include "gtplayer.h"
#include "util.h"

#pragma pack( push, before_InfoNet )
#pragma pack( 8 )
#include "InfoNet.h"
#pragma pack( pop, before_InfoNet )

#include "MsgQueue.h"
using namespace dbc;
using namespace std;


// GateServer 描述结构
class GameServerApp;
class GateServer
{
public:
    GateServer() : m_pCDataSock(0), m_usPort(0), m_gtname(""), m_playerlist(NULL), m_playercount(0)
    {
    }

    ~GateServer()
    {
        m_pCDataSock = NULL;
        m_gtname = "";
    }

    void SetDataSock(DataSocket* datasock)
    {
        m_pCDataSock = datasock;
    }

    void Invalid()
    {
        m_pCDataSock = NULL;
    }

    bool IsValid() {return (m_pCDataSock != NULL) ? true : false;}

    string& GetIP() {return m_strIp;}
    unsigned short& GetPort() {return m_usPort;}
    string& GetName() {return m_gtname;}
    //GatePlayer*& GetPlayerList() {return m_playerlist;}
    DataSocket* GetDataSock() const {return m_pCDataSock;}

    long SendData(WPacket pkt)
    {
        if (IsValid()) {
            return m_pCDataSock->SendData(pkt);
        } else {
            return 0;
        }        
    }

	GatePlayer* m_listcurplayer;	// 用于遍历链表

    // Player 双链表
    GatePlayer* m_playerlist;
	int m_playercount;
	void AddPlayerCount() {++ m_playercount;}
	void DecPlayerCount() {-- m_playercount;}
	int GetPlayerCount() const {return m_playercount;}

protected:
    string m_strIp;
    unsigned short m_usPort;
    string m_gtname;

    DataSocket* m_pCDataSock;

};


// 连接 GateServer 任务类
class ConnectGateServer : public Task
    {
public:
    ConnectGateServer(GameServerApp* gmsvr) {m_gmsvr = gmsvr; dwTimeOut = 3000;}

private:
    virtual long Process();
    DWORD dwTimeOut;
    GameServerApp* m_gmsvr;};

// InfoServer消息队列
class NetMessageQueue : public MsgQueue<pNetMessage>
{
public:
    ~NetMessageQueue()
    {
        Clear();
    }

    void Clear()
    {
        deque<pNetMessage>::iterator it;

        m_lock.lock();
        for(it = m_queue.begin(); it != m_queue.end(); it++)
        {
            FreeNetMessage(*it);
        }
        m_queue.clear();
        m_lock.unlock();
    }
    
};

// InfoServer服务类
class InfoServer : public InfoNetBase
{
public:
    enum
    {
        CMD_FM_CONNECTED,       // 连上InfoServer
        CMD_FM_DISCONNECTED,    // 和InfoServer断开连接
        CMD_FM_MSG,             // InfoServer发来的消息

        CMD_INFO_MSG_MAX
    };
    
    InfoServer() : m_usPort(0), m_strIp(""), m_strPwd(""), bValid(false), m_nSection(0)
    {
    }

    ~InfoServer()
    {
    }

    bool IsValid() { return bValid; }
    void SetValid() { bValid = true; }
    void InValid() { bValid = false; }

    string GetIP() {return m_strIp;}
	string GetPwd() { return m_strPwd; }
    unsigned short GetPort() {return m_usPort;}
    void SetInfoServer(string strIP, unsigned short usPort, string strPwd, int nSection)
    {
        if(usPort)
        {
            m_strIp = strIP;
            m_usPort = usPort;
			m_strPwd = strPwd;
			m_nSection = nSection;
        }
    }

	void Login();

    //向InfoServer发送消息
    virtual bool SendData(pNetMessage msg)
    {
		bool bSend = false;
		msg->msgHead.msgSection = m_nSection;

		try
		{
			bSend = PostInfoSend(msg);
		}
		catch(...)
		{
			LG("Store_data", "SendData Error!\n");
		}

        return bSend;
    }

    //取消息队列
    virtual long PeekMsg(unsigned long ms);

    virtual void OnConnect(bool result);

    virtual void OnNetMessage(pNetMessage msg)
    {
        m_MsgQueue.Push(msg);
    }

    virtual void OnResend(pNetMessage msg)
    {
    }

    virtual void OnDisconnect();

protected:
    string m_strIp;
    unsigned short m_usPort;
	string m_strPwd;
	int m_nSection;
    bool bValid;
    NetMessageQueue m_MsgQueue;

};

// 监听 InfoServer 任务类
class ToInfoServer : public Task
{
public:
    ToInfoServer(GameServerApp* gmsvr) {m_gmsvr = gmsvr; m_dwTimeOut = 30000;}

private:
    virtual long Process();
    GameServerApp* m_gmsvr;
	DWORD m_dwTimeOut;
    
};


// 网络通信应用类
class GameServerApp : public dbc::TcpClientApp, public dbc::RPCMGR, public PKQueue
    {
    friend class ConnectGateServer;
    friend class ToInfoServer;
    friend class InfoServer;

public:
	GameServerApp(dbc::ThreadPool *proc,dbc::ThreadPool *comm);
	virtual ~GameServerApp();

    // 登录相关
    char const* GetName() const {return m_strGameName.c_str();}
	void ConnectGate(GateServer *pGate);
    bool IsValidGate(int i);
    GateServer* FindGate(char const* gt_name);

    bool ConnectInfo(InfoServer *pInfo);
    void DisconnectInfo(InfoServer *pInfo);
    InfoServer *GetInfoServer() { return &m_IfServer; }

    // Player 相关 (GateServer内有GatePlayer的一个双链表)
    bool AddPlayer(GatePlayer* gtplayer, GateServer* gt, uLong gtaddr);
    bool DelPlayer(GatePlayer* gtplayer);
	// add by xuedong
	bool BeginGetplayer(GateServer* gt);
	GatePlayer* const GetNextPlayer(GateServer* gt);

	void BeginGetGate(void);
	GateServer* GetNextGate(void);
	//

    bool KickPlayer(GatePlayer* gtplayer, long lTimeSec = 0);
	bool KickPlayer2(GatePlayer *gtplayer);

    // 特定发包接口
    bool SendToWorld(WPacket& pkt);
	bool SendToGroup(WPacket& chginf);
    bool SendToClient(GatePlayer* player, WPacket& pkt);
    bool SendToClient(WPacket& pkt, GatePlayer* playerlist);
    bool SendToClient(WPacket& pkt, int array_cnt, uplayer* uplayer_array);
    bool SendToGame(WPacket& pkt, uplayer* uplyr);
    
protected:
	virtual bool OnConnect(dbc::DataSocket *datasock); //返回值:true-允许连接,false-不允许连接
	virtual void OnDisconnect(dbc::DataSocket *datasock,int reason); //reason值:0-本地程序正常退出；-3-网络被对方关闭；-1-Socket错误;-5-包长度超过限制.
	virtual void OnProcessData(dbc::DataSocket *datasock,dbc::RPacket &recvbuf);
	void ProcessData(DataSocket *datasock,RPacket &recvbuf);

    //处理InfoServer消息
    void ProcessData(pNetMessage msg, short sType);

public:	
	long 				m_count;
	dbc::DataSocket	*	m_groupsock;
	Usage				m_usage;



private:
    Mutex m_mutdisconn;

    GateServer m_gtarray[MAX_GATE];
    short m_gtnum;
	short m_listcurgt;

    InfoServer m_IfServer;

    string m_strGameName;};

inline bool GameServerApp::BeginGetplayer(GateServer* gt)
{
    if (gt == NULL) return false;
    if (!gt->IsValid()) return false;

	gt->m_listcurplayer = gt->m_playerlist;

	return true;
}

inline GatePlayer* const GameServerApp::GetNextPlayer(GateServer* gt)
{
	GatePlayer*	pretplayer = gt->m_listcurplayer;
	if (gt->m_listcurplayer)
		gt->m_listcurplayer = gt->m_listcurplayer->Next;

	return pretplayer;
}

inline void GameServerApp::BeginGetGate(void)
{
	m_listcurgt = 0;
}

inline GateServer* GameServerApp::GetNextGate(void)
{
	while (m_listcurgt < m_gtnum)
	{
	    if (m_gtarray[m_listcurgt++].IsValid())
			return m_gtarray + (m_listcurgt - 1);
	}

	return 0;
}

extern GameServerApp *g_gmsvr;

inline void uplayer::Init(char const* gt_name, unsigned long gt_addr, DWORD cha_id)
{
    pGate = g_gmsvr->FindGate(gt_name);
    m_dwDBChaId = cha_id;
    m_ulGateAddr = gt_addr;
}

#endif

#endif //GAMESERVERAPP_H
