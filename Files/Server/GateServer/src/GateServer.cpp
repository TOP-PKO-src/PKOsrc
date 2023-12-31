#include <iostream>
#include <signal.h>
#include "timer.h"
#include "gateserver.h"
#include "udpmanage.h"

using namespace std;

//#pragma comment( lib, "../../../status/lib/Status.lib" )

uLong	NetBuffer[]		= {100, 10, 0};
bool	g_logautobak	= true;
LogStream g_gateerr("ErrServer");
LogStream g_gatelog("GateServer");
LogStream g_chkattack("AttackMonitor");
LogStream g_gateconnect("Connect");
LogStream g_gatepacket("PacketProc");

InterLockedLong		g_exit	=0;
InterLockedLong		g_ref	=0;

TimerMgr			g_timermgr;
//=========Timer==============
extern "C"{WINBASEAPI HWND APIENTRY GetConsoleWindow(VOID);}
class DisableCloseButton: public Timer
{
public:
	DisableCloseButton(uLong interval):Timer(interval),m_hMenu(0)
	{
		HWND hWnd	= ::GetConsoleWindow();
		m_hMenu		= GetSystemMenu(hWnd, FALSE);
	}
private:
	~DisableCloseButton()
	{
	}
	void Process()
	{
		RefArmor l(g_ref);
		if (!g_exit && m_hMenu)
		{
			EnableMenuItem(m_hMenu, SC_CLOSE, MF_BYCOMMAND | MF_GRAYED);
		}
	}
	HMENU m_hMenu;
};
class DelayLogout: public Timer, public RunBiDirectChain<Player>
{
public:
	DelayLogout(uLong interval):Timer(interval){}
	void AddPlayer(Player *ply)
	{
		ply->_BeginRun(this);
	}
	void DelPlayer(Player *ply)
	{
		ply->_EndRun();
	}
private:
	void Process()
	{
		Player	*l_ply	=0;
		RunChainGetArmor<Player> l_lock(*this);
		while(l_ply	=GetNextItem())
		{
			
		}
		l_lock.unlock();
	}
};

void __cdecl ctrlc_dispatch(int sig)
{
	if (sig == SIGINT)
	{
		g_exit	=1;
		signal(SIGINT, ctrlc_dispatch);
	}
}

//---------------------------------------------------------------------------
// class GateServer
//---------------------------------------------------------------------------
GateServer::GateServer(char const* fname)
:player_heap(1,2000),m_tch(1,100),gm_conn(NULL),gp_conn(NULL),cli_conn(NULL)
,m_clcomm(NULL),m_gpcomm(NULL),m_gmcomm(NULL),m_clproc(NULL)
{
	TcpCommApp::WSAStartup();
	srand((unsigned int)time(NULL)); // 初始化随机数种子

	m_tch.Init();
	player_heap.Init();

	m_clproc = ThreadPool::CreatePool(24, 32, 4096);
	m_clcomm = ThreadPool::CreatePool(6, 12, 4096, THREAD_PRIORITY_ABOVE_NORMAL);
	m_gpproc = ThreadPool::CreatePool(4, 8, 1024, THREAD_PRIORITY_ABOVE_NORMAL);
	m_gpcomm = ThreadPool::CreatePool(12, 24, 2048, THREAD_PRIORITY_ABOVE_NORMAL);
	m_gmcomm = ThreadPool::CreatePool(4, 4, 2048, THREAD_PRIORITY_ABOVE_NORMAL);

	try{
		gm_conn = new ToGameServer(fname, 0, m_gmcomm);
		gp_conn = new ToGroupServer(fname, m_gpproc, m_gpcomm);
		cli_conn = new ToClient(fname, m_clproc, m_clcomm);
		m_gpproc->AddTask(new ConnectGroupServer(gp_conn));
		m_clproc->AddTask(&g_timermgr);
		g_timermgr.AddTimer(new DisableCloseButton(200));
		signal(SIGINT, ctrlc_dispatch);
	}catch (...)
	{
		if(gp_conn)
		{
			delete gp_conn;
			gp_conn = 0;
		}
		if(gm_conn)
		{
			delete gm_conn;
			gm_conn = NULL;
		}
		if(cli_conn)
		{
			delete cli_conn;
			cli_conn = NULL;
		}
		m_gmcomm->DestroyPool();
		m_gpcomm->DestroyPool();
		m_clcomm->DestroyPool();
		m_clproc->DestroyPool();
		TcpCommApp::WSACleanup();
		throw;
	}
}

GateServer::~GateServer()
{
	g_exit	=1;
	while(g_ref)
	{
		Sleep(1);
	}
	delete cli_conn;
	delete gp_conn;
	delete gm_conn;
	m_gmcomm->DestroyPool();
	m_gpcomm->DestroyPool(); 
	m_clcomm->DestroyPool();
	m_clproc->DestroyPool();
	TcpCommApp::WSACleanup();
}

void GateServer::RunLoop()
{
	BandwidthStat	l_band;
	LLong	recvpkps_max=0,recvbandps_max=0,sendpkps_max=0,sendbandps_max=0;

	dstring l_str;
	l_str.SetSize(256);
	while(!g_exit)
	{
		//std::cout<<"请输入命令(exit或Ctrl+C退出):\n";
		std::cout<< RES_STRING(GS_GATESERVER_CPP_00001); //Modify by lark.li 20070130
		std::cin.getline(l_str.GetBuffer(),256);

		if(l_str =="exit" || g_exit)
		{
			//std::cout<<"开始退出..."<<std::endl;
			std::cout<< RES_STRING(GS_GATESERVER_CPP_00002)<<std::endl;
			break;
		}else	if(l_str =="getinfo")
		{
			std::cout<<"getinfo..."<<std::endl;
			
			l_band	=cli_conn->GetBandwidthStat();
			std::cout<<"getinfo: GetBandwidthStat..."<<std::endl;

			//std::cout<<"客户数："<<cli_conn->GetSockTotal()<<std::endl;
			std::cout<<RES_STRING(GS_GATESERVER_CPP_00003)<<cli_conn->GetSockTotal()<<std::endl;
			//std::cout<<"[发送]{pkt/s:"<<l_band.m_sendpktps<<"}{pkt:"<<l_band.m_sendpkts<<"}{KB/s:"<<l_band.m_sendbyteps/1024<<"}{KB:"<<l_band.m_sendbytes/1024<<"}"<<std::endl;
			std::cout<<RES_STRING(GS_GATESERVER_CPP_00004)<<l_band.m_sendpktps<<"}{pkt:"<<l_band.m_sendpkts<<"}{KB/s:"<<l_band.m_sendbyteps/1024<<"}{KB:"<<l_band.m_sendbytes/1024<<"}"<<std::endl;
			//std::cout<<"[接收]{pkt/s:"<<l_band.m_recvpktps<<"}{pkt:"<<l_band.m_recvpkts<<"}{KB/s:"<<l_band.m_recvbyteps/1024<<"}{KB:"<<l_band.m_recvbytes/1024<<"}"<<std::endl;
			std::cout<<RES_STRING(GS_GATESERVER_CPP_00005)<<l_band.m_recvpktps<<"}{pkt:"<<l_band.m_recvpkts<<"}{KB/s:"<<l_band.m_recvbyteps/1024<<"}{KB:"<<l_band.m_recvbytes/1024<<"}"<<std::endl;

			if(l_band.m_sendpktps	>sendpkps_max)			sendpkps_max	=l_band.m_sendpktps;
			if(l_band.m_sendbyteps/1024 >sendbandps_max)	sendbandps_max	=l_band.m_sendbyteps/1024;
			if(l_band.m_recvpktps >recvpkps_max)			recvpkps_max	=l_band.m_recvpktps;
			if(l_band.m_recvbyteps/1024 >recvbandps_max)	recvbandps_max	=l_band.m_recvbyteps/1024;
			//std::cout<<"[Max发送]{pkt/s:"<<sendpkps_max<<"}{KB/s:"<<sendbandps_max<<"}"<<std::endl;
			std::cout<<RES_STRING(GS_GATESERVER_CPP_00006)<<sendpkps_max<<"}{KB/s:"<<sendbandps_max<<"}"<<std::endl;
			//std::cout<<"[Max接收]{pkt/s:"<<recvpkps_max<<"}{KB/s:"<<recvbandps_max<<"}"<<std::endl;
			std::cout<<RES_STRING(GS_GATESERVER_CPP_00007)<<recvpkps_max<<"}{KB/s:"<<recvbandps_max<<"}"<<std::endl;
		}else	if(l_str	=="clmax")
		{
			recvpkps_max=recvbandps_max=sendpkps_max=sendbandps_max=0;
		}else	if(l_str	=="getmaxcon")
		{
			//std::cout<<"当前允许最大连接值："<<g_gtsvr->cli_conn->GetMaxCon()<<std::endl;
			std::cout<<RES_STRING(GS_GATESERVER_CPP_00008)<<g_gtsvr->cli_conn->GetMaxCon()<<std::endl;
		}else	if(!strncmp(l_str.c_str(),"setmaxcon",9))
		{
			uShort l_maxcon	=atoi(l_str.c_str() +9);
			if(l_maxcon >1500)
			{
				//std::cout<<"最大连接数不能超过1500,当前的最大连接已设置成最大值1500"<<std::endl;
				std::cout<<RES_STRING(GS_GATESERVER_CPP_00009)<<std::endl;
				l_maxcon	=1500;
			}else
			{
				//std::cout<<"设置成功，最大连接数:"<<l_maxcon<<std::endl;
				std::cout<<RES_STRING(GS_GATESERVER_CPP_00010)<<l_maxcon<<std::endl;
			}
			g_gtsvr->cli_conn->SetMaxCon(l_maxcon);
		}else	if(l_str	=="logbak")
		{
			LogStream::Backup();
		}else	if(l_str	=="getqueparm")
		{
			std::cout<<"ToClient Process Queue:"<<m_clproc->GetTaskCount()<<"\tToClint Comm Queue:"<<m_clcomm->GetTaskCount()<<std::endl;
			std::cout<<"ToGroup Comm Queue:"<<m_gpcomm->GetTaskCount()<<"\tToGame Comm Queue:"<<m_gmcomm->GetTaskCount()<<std::endl;
		}else	if(!strncmp(l_str.c_str(),"setshowrange",12))
		{
			const char* pstring = l_str.c_str();
			pstring += 12;
			int min = atoi(pstring);
			pstring = strchr( pstring, ',' );
			if( !pstring )
			{
				//std::cout<<"setshowrange 参数1,参数2" <<std::endl;
				std::cout<<RES_STRING(GS_GATESERVER_CPP_00011) <<std::endl;
			}
			else
			{
				pstring++;
				int max = atoi( pstring );
				std::cout<<"SetShowRnage:["<< min << "-" << max << "]" <<std::endl;
				g_app->SetShowRange( min, max );
			}
		}
		else	if(l_str	=="getshowrange")
		{
			std::cout<<"ShowRnage:["<< g_app->GetShowMin() << "-" << g_app->GetShowMax() << "]" <<std::endl;
		}
		else if( l_str == "reconnect" )
		{
			if( g_gtsvr->gp_conn ) 
			{
				g_gtsvr->gp_conn->Disconnect( g_gtsvr->gp_conn->get_datasock(), -9 );
				std::cout<<"reconnect success!" <<std::endl;
			}
			else
			{
				std::cout<<"reconnect failed! null pointer!" <<std::endl;
			}
		}
		else if( l_str == "calltotal" )
		{
			std::cout<<"clinet::calltotal:["<< g_gtsvr->cli_conn->GetCallTotal() <<std::endl;
			std::cout<<"group::calltotal:["<< g_gtsvr->gp_conn->GetCallTotal() <<std::endl;
		}
		else
		{
			//std::cout<<"不支持的命令！"<<std::endl;
			std::cout<<RES_STRING(GS_GATESERVER_CPP_00012)<<std::endl;
		}
	}
}

//---------------------------------------------------------------------------
// class Player
//---------------------------------------------------------------------------
bool Player::InitReference(DataSocket* datasock)
{
	MutexArmor lock(g_gtsvr->_mtxother);//组织重复进入
	if(datasock && !datasock->GetPointer())
	{
		datasock->SetPointer(this);
		m_datasock = datasock;
		lock.unlock();
		return true;
	}
	else
	{
		if( datasock )
		{
			try
			{
				//printf( "InitReference warning: %s重复进入连接信息！", datasock->GetPeerIP() );
				printf( RES_STRING(GS_GATESERVER_CPP_00013), datasock->GetPeerIP() );
				Player* l_ply = (Player*)datasock->GetPointer();
				if( l_ply )
				{
					l_ply->m_datasock = NULL;
					datasock->SetPointer( NULL );
				}
			}
			catch(...)
			{
				//printf( "InitReference warning: %s重复进入连接信息！exception", datasock->GetPeerIP() );
				printf( RES_STRING(GS_GATESERVER_CPP_00014), datasock->GetPeerIP() );
			}
		}
		lock.unlock();
		return false;
	}
	lock.unlock();	
	return false;
}

void Player::Initially()
{
	m_worldid = m_actid = m_dbid = gm_addr = gp_addr = m_status = m_exit = 0;
	m_chapstr[0] =0;
	m_password[0] = 0;
	m_datasock = NULL;
	game = NULL;
	memset(comm_textkey, 0, sizeof comm_textkey);
	
	enc = false;
	m_pingtime	=0;
	m_lestoptick = GetTickCount();
	m_estop = false;
	m_sGarnerWiner = 0;
}

void Player::Finally()
{
	m_worldid = m_actid = m_dbid = gm_addr = gp_addr = m_status = 0;
	m_chapstr[0] =0;
	game = NULL;
	memset(comm_textkey, 0, sizeof comm_textkey);
	enc = false;
	if (m_datasock != NULL)
	{
		m_datasock->SetPointer(NULL);
		m_datasock = NULL;
	}
}

//---------------------------------------------------------------------------
// class GateServerApp
//---------------------------------------------------------------------------
int	GateServerApp::_nShowMin = 0;	
int	GateServerApp::_nShowMax = 0;	
GateServerApp* g_app = NULL;

GateServerApp::GateServerApp()
: _pUdpManage(NULL)
{
	g_app = this;
}

void GateServerApp::ServiceStart()
{
	// 启动服务器
	try
	{
		const char* file_cfg = "GateServer.cfg";
		g_gtsvr = new GateServer( file_cfg );

		IniFile inf(file_cfg);
		_nShowMin = atoi(inf["ShowRange"]["ShowMin"]);
		_nShowMax = atoi(inf["ShowRange"]["ShowMax"]);
		if( atoi(inf["ShowRange"]["IsUse"])!=0 )
		{
			_pUdpManage = new CUdpManage;
			if( !_pUdpManage->Init( 1976, _NotifySocketNumEvent ) )
				//cout << "监听数量功能创建失败" << endl;
				cout << RES_STRING(GS_GATESERVER_CPP_00015) << endl;
		}
	}
	catch (excp& e)
	{
		cout << e.what() << endl;
		Sleep(10 * 1000);
		exit(-1);
	}
	catch (...)
	{
		//cout << "GateServer 初始化期间发生未知错误，请通知开发者!" << endl;
		cout << RES_STRING(GS_GATESERVER_CPP_00016) << endl;
		Sleep(10 * 1000);
		exit(-2);
	}

	// 服务器启动成功，进入主循环
	//cout << "GateServer 启动成功!" << endl;
	cout << RES_STRING(GS_GATESERVER_CPP_00017) << endl;
}
void GateServerApp::ServiceStop()
{
	if( _pUdpManage ) 
	{
		delete _pUdpManage;
		_pUdpManage = NULL;
	}

	// 服务器退出
	delete g_gtsvr;
	g_app = NULL;

	//cout << "GateServer 成功退出!" << endl;
	cout << RES_STRING(GS_GATESERVER_CPP_00018) << endl;
	Sleep(2000);
}

void GateServerApp::_NotifySocketNumEvent( CUdpManage* pManage, CUdpServer* pUdpServer, const char* szClientIP, unsigned int nClientPort, const char* pData, int len )
{
	static char szBuf[255] = { 0 };
	if( len==1 && pData[0]=='#' ) 
	{
		static DWORD dwTime = 0;
		static DWORD dwLastTime = 0;
		static DWORD dwCount = 0;

		// 每五秒取一次人数,等待龚健的取总数的新接口Jerry
		dwTime = ::GetTickCount();
		if( dwTime>dwLastTime )
		{
			dwCount = g_gtsvr->cli_conn->GetSockTotal();
			dwLastTime = dwTime + 60000;
		}

		sprintf( szBuf, "%d,%d,%d", dwCount, _nShowMin, _nShowMax );
		pUdpServer->Send( szClientIP, nClientPort, szBuf, (unsigned int)strlen(szBuf) );
	}
}

// 全局 GateServer 对象
GateServer* g_gtsvr;
bool volatile g_appexit = false;

