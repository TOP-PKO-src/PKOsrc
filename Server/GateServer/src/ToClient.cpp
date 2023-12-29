
#include "gateserver.h"

ToClient::ToClient(char const* fname, ThreadPool* proc, ThreadPool* comm)
    : TcpServerApp(this, proc, comm, false), RPCMGR(this),m_maxcon(500),m_atexit(0),m_calltotal(0)
{
	IniFile inf(fname);
	m_maxcon			=atoi(inf["ToClient"]["MaxConnection"]); //Modify by lark.li
	char buffer[255];
	sprintf(buffer,RES_STRING(GS_TOCLIENT_CPP_00001),m_maxcon);
	//std::cout<<"��ʼ�������"<<m_maxcon<<"���ͻ��˶����ӣ���ʹ��setmaxcon [����]�����޸�,�����ֻ�����õ�1500"<<std::endl;
	std::cout<<buffer<<std::endl;

	m_version		=atoi(inf["Main"]["Version"]);
	IniSection& is = inf["ToClient"];
	cChar* ip = is["IP"]; uShort port = atoi(is["Port"]);
	_comm_enc = atoi(is["CommEncrypt"]);

	SetPKParse(0, 2, 32 * 1024, 100); BeginWork(atoi(is["EnablePing"]),1);
	if (OpenListenSocket(port, ip) != 0)
		THROW_EXCP(excp, "ToClient listen failed\n");
}

ToClient::~ToClient()
{
	m_atexit	=1;
	while(m_calltotal)
	{
		Sleep(1);
	}
	ShutDown(12 * 1000);
}
bool ToClient::DoCommand(DataSocket* datasock, cChar *cmdline)
{
	if(!strncmp(cmdline,"getbandwidth",sizeof("getbandwidth")))
	{
		BandwidthStat	l_band	=GetBandwidthStat();
		//dstring l_output;
		//l_output<<"client:"<<GetSockTotal()
		//	<<"[����]{pkt/s:"<<l_band.m_sendpktps<<"}{pkt:"<<l_band.m_sendpkts<<"}{KB/s:"<<l_band.m_sendbyteps/1024<<"}{KB:"<<l_band.m_sendbytes/1024<<"}"
		//	<<"[����]{pkt/s:"<<l_band.m_recvpktps<<"}{pkt:"<<l_band.m_recvpkts<<"}{KB/s:"<<l_band.m_recvbyteps/1024<<"}{KB:"<<l_band.m_recvbytes/1024<<"}";

		/*CFormatParameter para(2);
		para.setLong(0, GetSockTotal());
		para.setLong(1, l_band.m_sendpktps);
		para.setLong(2, l_band.m_sendpkts);
		para.setLong(3, l_band.m_sendbyteps/1024);
		para.setLong(4, l_band.m_sendbytes/1024);
		para.setLong(5, l_band.m_recvpktps);
		para.setLong(6, l_band.m_recvpkts);
		para.setLong(7, l_band.m_recvbyteps/1024);
		para.setLong(8, l_band.m_recvbytes/1024);

		char buffer[255];
		RES_FORMAT_STRING(GS_TOCLIENT_CPP_00002, para1, buffer);*/
		char buffer[255];
		sprintf(buffer,RES_STRING(GS_TOCLIENT_CPP_00002),GetSockTotal(),l_band.m_sendpktps,l_band.m_sendpkts,l_band.m_sendbyteps/1024,l_band.m_sendbytes/1024,
					l_band.m_recvpktps, l_band.m_recvpkts, l_band.m_recvbyteps/1024, l_band.m_recvbytes/1024);
		
		WPacket l_wpk	=GetWPacket();
		l_wpk.WriteCmd(CMD_MC_SYSINFO);
		//l_wpk.WriteString(l_output.c_str());
		l_wpk.WriteString(buffer);
		SendData(datasock,l_wpk);
		return true;
	}

	return false;
}
bool ToClient::OnConnect(DataSocket* datasock) //����ֵ:true-��������,false-����������
{
	if(GetSockTotal()<=m_maxcon)
	{
		datasock->SetRecvBuf(64 * 1024); datasock->SetSendBuf(64 * 1024);
		LogLine l_line(g_gatelog);
		//l_line<<newln<<"�ͻ���: "<<datasock->GetPeerIP()<<"	����...Socket��: "<<GetSockTotal() + 1;
		l_line<<newln<<"client: "<<datasock->GetPeerIP()<<"	come...Socket num: "<<GetSockTotal() + 1;
		return true;
	}
	else
	{
		LogLine l_line(g_gatelog);
		//l_line<<newln<<"�ͻ���: "<<datasock->GetPeerIP()<<"	���ˣ���������"<<m_maxcon<<"������������ƣ�����ǿ���ж�...";
		l_line<<newln<<"client: "<<datasock->GetPeerIP()<<"	come, greater than "<<m_maxcon<<" player, force disconnect...";
		return false;
	}
}
void ToClient::OnConnected(DataSocket* datasock)
{
	Player			* l_ply	= g_gtsvr->player_heap.Get();
	if(!l_ply->InitReference(datasock))//��ֹ�ظ�����
	{
		//printf( "warning: ��ֹ%s�ظ����ӣ�", datasock->GetPeerIP() );
		printf( "warning: forbid %s repeat connect !", datasock->GetPeerIP() );
		l_ply->Free();
		Disconnect(datasock);
		return;
	}

	SYSTEMTIME l_st;
	::GetLocalTime(&l_st);
	sprintf(l_ply->m_chapstr,"[%02d-%02d %02d:%02d:%02d:%03d]",l_st.wMonth,l_st.wDay,l_st.wHour,l_st.wMinute,l_st.wSecond,l_st.wMilliseconds);

	WPacket	l_wpk	=GetWPacket();
	l_wpk.WriteCmd(CMD_MC_CHAPSTR);
	l_wpk.WriteString(l_ply->m_chapstr);
	SendData(datasock,l_wpk);

#if NET_PROTOCOL_ENCRYPT
	static int g_sKeyData = short(g_gtsvr->cli_conn->GetVersion() * g_gtsvr->cli_conn->GetVersion() * 0x1232222);
	int nNoise = g_sKeyData * int(*(int*)(l_ply->m_chapstr + strlen(l_ply->m_chapstr) - 4));
	init_Noise( nNoise, l_ply->m_szSendKey );
	init_Noise( nNoise, l_ply->m_szRecvKey );
#endif
}
void ToClient::OnDisconnect(DataSocket* datasock, int reason)
{
	LogLine l_line(g_gatelog);
	//l_line<<newln<<"�ͻ���: "<<datasock->GetPeerIP()<<"	����...Socket��: "<<GetSockTotal()<<" ,reason="<<GetDisconnectErrText(reason).c_str();
	l_line<<newln<<"client: "<<datasock->GetPeerIP()<<" gone...Socket num: "<<GetSockTotal()<<" ,reason="<<GetDisconnectErrText(reason).c_str();
	l_line<<endln;

	RPacket l_rpk	=0;

#ifdef CHAEXIT_ONTIME 
	CM_DISCONN(datasock, l_rpk);	
#else
	CM_LOGOUT(datasock,l_rpk);
#endif 
}

dstring	ToClient::GetDisconnectErrText(int reason)
{
	switch(reason)
	{
	//case -21:return "GroupServerҪ���ߵ����ˡ�";
	//case -23:return "GameServerҪ���ߵ����ˡ�";
	//case -24:return	"����л���ͼʱ��ΪĿ���ͼ���ɴ�����ߵ���";
	//case -25:return "�����GroupServer�ϵ�����һ�����������GroupServerҪ���ߵ���";
	//case -27:return "�û�Logout��";
	//case -29:return "��GameServer���ϣ����ϵ�������Ҷ����ߵ���";
	//case -31:return "�û���¼����";
	case -21:return RES_STRING(GS_TOCLIENT_CPP_00011);
	case -23:return RES_STRING(GS_TOCLIENT_CPP_00012);
	case -24:return	RES_STRING(GS_TOCLIENT_CPP_00013);
	case -25:return RES_STRING(GS_TOCLIENT_CPP_00014);
	case -27:return RES_STRING(GS_TOCLIENT_CPP_00015);
	case -29:return RES_STRING(GS_TOCLIENT_CPP_00016);
	case -31:return RES_STRING(GS_TOCLIENT_CPP_00017);
	default:return TcpServerApp::GetDisconnectErrText(reason);
	}
}

WPacket ToClient::OnServeCall(DataSocket* datasock, RPacket &in_para)
{
	uShort	l_cmd		=in_para.ReadCmd();

	switch (l_cmd)
	{
	case CMD_CM_LOGOUT:
		{
			CM_LOGOUT(datasock,in_para);
#ifdef CHAEXIT_ONTIME
			//Disconnect(datasock,65,-27);
#else
			Disconnect(datasock,65,-27);
#endif
			return	0;
		}
	default:		//ȱʡ��ת����GameServer
		{
			//if(l_cmd/500 == CMD_CM_BASE/500)
			//{//ת����GameServer
			//	return 0;
			//	Player *l_ply	=(Player*)datasock->GetPointer();
			//	if(l_ply && l_ply->gm_addr)
			//	{
			//		GameServer	*l_game	=l_ply->game;
			//		if(l_game && l_game->m_datasock)
			//		{
			//			WPacket	l_wpk	=WPacket(in_para).Duplicate();
			//			l_wpk.WriteLong(MakeULong(l_ply));
			//			l_wpk.WriteLong(l_ply->gm_addr);	//��������GameServer�ϵ��ڴ��ַ
			//			return g_gtsvr->gm_conn->SyncCall(l_game->m_datasock,l_wpk);
			//		}
			//	}
			//}else if(l_cmd/500 == CMD_CP_BASE/500)
			//{//ת����GroupServer
			//	Player *l_ply	=(Player*)datasock->GetPointer();
			//	if(l_ply && l_ply->gp_addr && l_ply->gm_addr)
			//	{
			//		if(g_gtsvr->gp_conn && g_gtsvr->gp_conn->get_datasock())
			//		{
			//			WPacket	l_wpk	=WPacket(in_para).Duplicate();
			//			l_wpk.WriteLong(MakeULong(l_ply));
			//			l_wpk.WriteLong(l_ply->gp_addr);
			//			RPacket l_rpk =g_gtsvr->gp_conn->SyncCall(g_gtsvr->gp_conn->get_datasock(),l_wpk);
			//			if(l_rpk.ReadShort() ==ERR_PT_KICKUSER)
			//			{
			//				Disconnect(l_ply->m_datasock,100,-25);
			//			}
			//			return l_rpk;
			//		}
			//	}
			//}
			break;
		}
	}
	return 0;
}

void ToClient::OnProcessData(DataSocket* datasock, RPacket &recvbuf)
{
    uShort l_cmd = recvbuf.ReadCmd();
	//LG("ToClient", "-->l_cmd = %d\n", l_cmd);
	try
	{
		switch (l_cmd)
		{
		case CMD_CM_LOGIN:		// �����û���/����Խ�����֤,�����û����µ����з��������ϵ���Ч��ɫ�б�.
		case CMD_CM_LOGOUT:		//ͬ������
		case CMD_CM_BGNPLAY:	//����ѡ��Ľ�ɫ������GroupServer��֤��Ȼ��֪ͨGameServerʹ��ɫ������ͼ�ռ�.
		case CMD_CM_ENDPLAY:
		case CMD_CM_NEWCHA:
		case CMD_CM_DELCHA:
		case CMD_CM_CREATE_PASSWORD2:
		case CMD_CM_UPDATE_PASSWORD2:
			{
				++m_calltotal;
				if(m_atexit)
				{
					--m_calltotal;
					return;
				}
				TransmitCall * l_tc	=g_gtsvr->m_tch.Get();
				l_tc->Init(datasock,recvbuf);
				GetProcessor()->AddTask(l_tc);
			}
			break;
#ifdef CHAEXIT_ONTIME
		case CMD_CM_CANCELEXIT:
			{
				Player *l_ply	=(Player*)datasock->GetPointer();
				if(l_ply)
				{
					uLong	l_gpaddr =l_ply->gp_addr;
					uLong	l_gmaddr =l_ply->gm_addr;
					GameServer	*l_game =l_ply->game;

					MutexArmor l_lockStat(l_ply->m_mtxstat);
					if(l_gpaddr && l_gmaddr &&l_game && l_ply->m_exit != 3)
					{
						printf( "CM:CancelExit: id = %d\n", l_ply->m_actid );
						WPacket	l_wpk	=WPacket(recvbuf).Duplicate();
						l_wpk.WriteLong(MakeULong(l_ply));
						l_wpk.WriteLong(l_gmaddr);
						g_gtsvr->gm_conn->SendData(l_ply->game->m_datasock,l_wpk);
					}
					l_lockStat.unlock();
				}
			}
			break;
#endif
		case CMD_CP_PING:
			{
				Player *l_ply	=(Player*)datasock->GetPointer();
				if(l_ply && l_ply->gp_addr && l_ply->gm_addr)
				{
					WPacket l_wpk	=GetWPacket();
					l_wpk.WriteCmd(CMD_CP_PING);
					l_wpk.WriteLong(GetTickCount()-l_ply->m_pingtime);
					l_ply->m_pingtime	=0;

					l_wpk.WriteLong(MakeULong(l_ply));
					l_wpk.WriteLong(l_ply->gp_addr);
					g_gtsvr->gp_conn->SendData(g_gtsvr->gp_conn->get_datasock(),l_wpk);
				}
			}
			break;
		case CMD_CM_SAY:
			{
				cChar *l_str	=recvbuf.ReadString();
				if(!l_str)
				{
					break;
				}
				if(*l_str	=='&' && DoCommand(datasock,l_str+1))
				{
					break;
				}
				if(strstr(l_str,"#21"))
				{
					break;
				}

				Player *l_ply	=(Player*)datasock->GetPointer();
				if( l_ply && l_ply->m_estop  )
				{
					if( GetTickCount() - l_ply->m_lestoptick >= 1000*60*2 )
					{
						WPacket l_wpk	=GetWPacket();
						l_wpk.WriteCmd(CMD_TP_ESTOPUSER_CHECK);
						l_wpk.WriteLong(l_ply->m_actid);

						g_gtsvr->gp_conn->SendData(g_gtsvr->gp_conn->get_datasock(),l_wpk);
					}
					WPacket l_wpk	=GetWPacket();
					l_wpk.WriteCmd(CMD_MC_SYSINFO);
					//l_wpk.WriteString("���Ѿ���ϵͳ���ԣ�");
					l_wpk.WriteString(RES_STRING(GS_TOCLIENT_CPP_00018));
					g_gtsvr->gp_conn->SendData(l_ply->m_datasock,l_wpk);
					break;
				}
			}
		default:		//ȱʡ��ת����GroupServer����GameServer
			if(l_cmd/500 == CMD_CM_BASE/500)
			{//ת����GameServer
				Player *l_ply	=(Player*)datasock->GetPointer();
				if(l_ply)
				{
					uLong	l_gpaddr =l_ply->gp_addr;
					uLong	l_gmaddr =l_ply->gm_addr;
					GameServer	*l_game =l_ply->game;

					if(l_gpaddr && l_gmaddr &&l_game)
					{
						WPacket	l_wpk	=WPacket(recvbuf).Duplicate();
						l_wpk.WriteLong(MakeULong(l_ply));
						l_wpk.WriteLong(l_gmaddr);
						g_gtsvr->gm_conn->SendData(l_ply->game->m_datasock,l_wpk);
					}
				}
			}else if(l_cmd/500 == CMD_CP_BASE/500)
			{//ת����GroupServer
				Player *l_ply	=(Player*)datasock->GetPointer();
				if(l_ply)
				{
					uLong	l_gpaddr =l_ply->gp_addr;
					uLong	l_gmaddr =l_ply->gm_addr;
					if(l_gpaddr && l_gmaddr)
					{
						WPacket	l_wpk	=WPacket(recvbuf).Duplicate();
						l_wpk.WriteLong(MakeULong(l_ply));
						l_wpk.WriteLong(l_gpaddr);
						g_gtsvr->gp_conn->SendData(g_gtsvr->gp_conn->get_datasock(),l_wpk);
					}
				}
			}
			break;
		}
		static uLong l_last	=GetTickCount();
		if(datasock->m_recvbyteps>1024*5)
		{
			uLong	l_tick		=GetCurrentTick();
			if(l_tick -l_last >1000*30)
			{
				l_last	=l_tick;
				//std::cout<<"["<<datasock->GetPeerIP()<<"]���ڷ�������(>5K/s)����������,�봦��!\n";
				std::cout<<"["<<datasock->GetPeerIP()<<"] sending big packet (>5K/s) attack server,please deal with!\n";
				LogLine l_line(g_chkattack);
				//l_line<<newln<<"["<<datasock->GetPeerIP()<<"]���ڷ�������(����5K/s)����������,�봦��!";
				l_line<<newln<<"["<<datasock->GetPeerIP()<<"] sending big packet (>5K/s) attack server,please deal with!\n";
			}
		}
	}
	catch(...)
	{
		LG("ToClientError", "l_cmd = %d\n", l_cmd);
	}
	//LG("ToClient", "<--l_cmd = %d\n", l_cmd);
	return;
}
long TransmitCall::Process()
{
	uShort l_cmd = m_recvbuf.ReadCmd();

	LogLine l_line(g_gatepacket);
	l_line<<newln<<"st:"<<l_cmd;

	switch(l_cmd)
	{
	case CMD_CM_LOGIN:		// �����û���/����Խ�����֤,�����û����µ����з��������ϵ���Ч��ɫ�б�.
		g_gtsvr->cli_conn->CM_LOGIN(m_datasock, m_recvbuf);
		break;
	case CMD_CM_LOGOUT:		//ͬ������
		g_gtsvr->cli_conn->CM_LOGOUT(m_datasock,m_recvbuf);
#ifdef CHAEXIT_ONTIME
		//g_gtsvr->cli_conn->Disconnect(m_datasock,50,-27);
#else
		g_gtsvr->cli_conn->Disconnect(m_datasock,50,-27);
#endif
		break;
	case CMD_CM_BGNPLAY:	//����ѡ��Ľ�ɫ������GroupServer��֤��Ȼ��֪ͨGameServerʹ��ɫ������ͼ�ռ�.
		g_gtsvr->cli_conn->CM_BGNPLAY(m_datasock, m_recvbuf);
		break;
	case CMD_CM_ENDPLAY:
		g_gtsvr->cli_conn->CM_ENDPLAY(m_datasock, m_recvbuf);
		break;
	case CMD_CM_NEWCHA:
		g_gtsvr->cli_conn->CM_NEWCHA(m_datasock, m_recvbuf);
		break;
	case CMD_CM_DELCHA:
		g_gtsvr->cli_conn->CM_DELCHA(m_datasock, m_recvbuf);
		break;
	case CMD_CM_CREATE_PASSWORD2:
		g_gtsvr->cli_conn->CM_CREATE_PASSWORD2(m_datasock, m_recvbuf);
		break;
	case CMD_CM_UPDATE_PASSWORD2:
		g_gtsvr->cli_conn->CM_UPDATE_PASSWORD2(m_datasock, m_recvbuf);
		break;
	}
	--(g_gtsvr->cli_conn->m_calltotal);
	l_line<<newln<<"st:"<<l_cmd;
	return 0;
}

void ToClient::CM_LOGIN(DataSocket* datasock, RPacket& recvbuf)
{
	uLong	l_ulMilliseconds	=30*1000;
	uLong	l_tick	=GetTickCount()	-recvbuf.GetTickCount();
	bool	bCheat = false;	//�Ƿ�ʹ�����
	if(l_ulMilliseconds>l_tick)
	{
		l_ulMilliseconds =l_ulMilliseconds -l_tick;

		if(m_version !=recvbuf.ReverseReadShort())
		{
			WPacket l_wpk = GetWPacket();
			l_wpk.WriteCmd(CMD_MC_LOGIN);
			l_wpk.WriteShort(ERR_MC_VER_ERROR); //������
			SendData(datasock,l_wpk);			// �����ͻ���
			LogLine l_line(g_gatelog);
			//l_line<<newln<<"�ͻ���: "<<datasock->GetPeerIP()<<"	��½���󣺿ͻ��˵İ汾�����������ƥ��!";
			l_line<<newln<<"client: "<<datasock->GetPeerIP()<<"	login error: client and server can't match!";
			Disconnect(datasock,100,-31);
			return;
		}

		//�ж�ʱ��ʹ�����
		if(recvbuf.ReverseReadShort() != 911)
		{
			bCheat = true;
		}
		else
		{
			recvbuf.DiscardLast(static_cast<uLong>(sizeof(uShort)));
		}

		recvbuf.DiscardLast(static_cast<uLong>(sizeof(uShort)));

		ToGroupServer	* l_gps	= g_gtsvr->gp_conn;
		Player			* l_ply	= reinterpret_cast<Player *>(datasock->GetPointer());
		if(!l_ply)//��֯�ظ�����
		{
			return;
		}
		WPacket l_wpk = WPacket(recvbuf).Duplicate();

		l_wpk.WriteCmd(CMD_TP_USER_LOGIN);
		
		l_wpk.WriteString(l_ply->m_chapstr);
		l_wpk.WriteLong(inet_addr(datasock->GetPeerIP()));
		l_wpk.WriteLong(MakeULong(l_ply)); // ��������GateServer�ϵ��ڴ��ַ

		if(bCheat)
		{
			l_wpk.WriteShort(0);
		}
		else
		{
			l_wpk.WriteShort(911);
		}

		RPacket l_rpk = l_gps->SyncCall(l_gps->get_datasock(), l_wpk ,l_ulMilliseconds);
		uShort l_errno = 0;
		if (l_rpk.HasData() == 0)
		{
			l_wpk = GetWPacket();
			l_wpk.WriteCmd(CMD_MC_LOGIN);
			l_wpk.WriteShort(ERR_MC_NETEXCP); //������
			SendData(datasock,l_wpk); // �����ͻ���
			LogLine l_line(g_gatelog);
			//l_line<<newln<<"�ͻ���: "<<datasock->GetPeerIP()<<"	��½���󣺵�GroupServer����������Ӧ!"<<endln;
			l_line<<newln<<"client: "<<datasock->GetPeerIP()<<"	login error: GroupServer is disresponse!"<<endln;
			Disconnect(datasock,100,-31);
		}else if (l_errno = l_rpk.ReadShort())
		{
			l_wpk = l_rpk;
			l_wpk.WriteCmd(CMD_MC_LOGIN);
			SendData(datasock,l_wpk);
			LogLine l_line(g_gatelog);
			//l_line<<newln<<"�ͻ���: "<<datasock->GetPeerIP()<<"	��½ʧ�ܣ������룺"<<l_errno<<endln;
			l_line<<newln<<"client: "<<datasock->GetPeerIP()<<"	login error, error:"<<l_errno<<endln;
			Disconnect(datasock,100,-31);
		}else
		{
			l_ply->m_status	=1;							//����ѡ/��/ɾ��ɫ״̬

			l_ply->gp_addr		=l_rpk.ReverseReadLong();	//���������GroupServer�ϵ��ڴ��ַ
            l_ply->m_loginID    =l_rpk.ReverseReadLong();   //  Account DB id
			l_ply->m_actid		=l_rpk.ReverseReadLong();
			BYTE byPassword = l_rpk.ReverseReadChar();
			l_ply->comm_key_len =l_rpk.ReverseReadShort();
			memcpy(l_ply->comm_textkey,l_rpk.GetDataAddr() +l_rpk.GetDataLen() -15 -l_ply->comm_key_len ,l_ply->comm_key_len);
			l_rpk.DiscardLast(sizeof(uLong)*3 + 2 + 1 + l_ply->comm_key_len + 2);

			l_wpk	=WPacket(l_rpk).Duplicate();
			l_wpk.WriteCmd(CMD_MC_LOGIN);
			l_wpk.WriteChar(byPassword);
			l_wpk.WriteLong(_comm_enc);
			l_wpk.WriteLong( 0x3214 );
			SendData(datasock,l_wpk);
			LogLine l_line(g_gatelog);
			//l_line<<newln<<"�ͻ���: "<<datasock->GetPeerIP()<<"	��½�ɹ���"<<endln;
			l_line<<newln<<"client: "<<datasock->GetPeerIP()<<"	login ok."<<endln;

			// ��ʼ����
			l_ply->enc = true;
		}
	}else
	{
		WPacket l_wpk = GetWPacket();
		l_wpk.WriteCmd(CMD_MC_LOGIN);
		l_wpk.WriteShort(ERR_MC_NETEXCP); //������
		SendData(datasock,l_wpk); // �����ͻ���
		LogLine l_line(g_gatelog);
		//l_line<<newln<<"�ͻ���: "<<datasock->GetPeerIP()<<"	��½���󣺰��ڶ������Ѿ���ʱ!"<<endln;
		l_line<<newln<<"client: "<<datasock->GetPeerIP()<<"	login error: packet time out!"<<endln;
		Disconnect(datasock,100,-31);
	}
}

WPacket ToClient::CM_DISCONN(DataSocket* datasock, RPacket& recvbuf)
{
	uLong	l_ulMilliseconds	=30*1000;
	uLong	l_tick	=GetTickCount()	-recvbuf.GetTickCount();
	l_ulMilliseconds =(l_ulMilliseconds>l_tick)?l_ulMilliseconds -l_tick:1;

	WPacket	l_retpk	=0;
	Player *l_ply	=0;
	MutexArmor lock(g_gtsvr->_mtxother);
	l_ply	=(Player*)datasock->GetPointer();
	datasock->SetPointer(0);
	lock.unlock();

	if(l_ply)
	{
		MutexArmor l_lockStat(l_ply->m_mtxstat);
#ifdef CHAEXIT_ONTIME
		if( l_ply->m_exit != 0 ) 
		{
			l_lockStat.unlock();
			return l_retpk;
		}
#endif
		if(l_ply->m_status ==0)			//�����������ʱ���Ƿ�����Ϊ��ǰ��Ҳ�����ѡ��ɫ״̬������ѡ������һ����ɫ
		{
			WPacket	l_wpk	=datasock->GetWPacket();
			l_retpk.WriteShort(ERR_MC_NOTLOGIN);
#ifdef CHAEXIT_ONTIME
			l_lockStat.unlock();
			l_ply->Free();
#endif
		}else
		{
			//printf( "CM_LOGOUT 2.) id = %d, status = %d\n", l_ply->m_actid, l_ply->m_status );
			WPacket l_wpk	=GetWPacket();
#ifdef CHAEXIT_ONTIME
#else			
			l_wpk.WriteCmd(CMD_TP_DISC);
			l_wpk.WriteLong(l_ply->m_actid);
			l_wpk.WriteLong(inet_addr(datasock->GetPeerIP()));
			l_wpk.WriteString(GetDisconnectErrText(datasock->GetDisconnectReason()?datasock->GetDisconnectReason():-27).c_str());
			g_gtsvr->gp_conn->SendData(g_gtsvr->gp_conn->get_datasock(),l_wpk);
#endif
			GameServer	*l_game	=l_ply->game;
			if((l_ply->m_status	==2) && l_ply->gm_addr && l_game && l_game->m_datasock)
			{
				//֪ͨGameServer GoOut��ͼ
				//char l_tmp[256];
				LogLine l_line(g_gatelog);
				//l_line<<newln<<"�ͻ���: "<<datasock->GetPeerIP()<<":"<<datasock->GetPeerPort()<<"	GoOut����ͼ,Gate��["
				l_line<<newln<<"client: "<<datasock->GetPeerIP()<<":"<<datasock->GetPeerPort()<<"	GoOut map,Gate to["
					//<<l_game->m_datasock->GetPeerIP()<<"]������GoOutMap����,dbid:"<<l_ply->m_dbid
					<<l_game->m_datasock->GetPeerIP()<<"] send GoOutMap command,dbid:"<<l_ply->m_dbid
					//<<uppercase<<hex<<",����Gate��ַ:"<<MakeULong(l_ply)<<",Game��ַ:"<<l_ply->gm_addr<<dec<<nouppercase<<endln;
					<<uppercase<<hex<<",Gate address:"<<MakeULong(l_ply)<<",Game address:"<<l_ply->gm_addr<<dec<<nouppercase<<endln;
				WPacket	l_wpk	=l_game->m_datasock->GetWPacket();
				l_wpk.WriteCmd(CMD_TM_GOOUTMAP);
#ifdef CHAEXIT_ONTIME
				l_wpk.WriteChar(1);
#else
				l_wpk.WriteChar(0);
#endif
				l_wpk.WriteLong(MakeULong(l_ply));
				l_wpk.WriteLong(l_ply->gm_addr);		//��������GameServer�ϵĵ�ַ
#ifdef CHAEXIT_ONTIME
#else
				l_ply->game		=0;						//��ֹ����ĵ�GameServer������
				l_ply->gm_addr	=0;						//��ֹ����ĵ�GameServer������
#endif
				SendData(l_game->m_datasock,l_wpk);
				//printf( "CM_LOGOUT 3.) Send gooutmap, id = %d, status = %d\n", l_ply->m_actid, l_ply->m_status );
				//SyncCall(l_game->m_datasock,l_wpk);
#ifdef CHAEXIT_ONTIME
				l_ply->m_exit = 3;
			}
			else
			{
				//֪ͨGroupServer Logout
				l_wpk	=g_gtsvr->gp_conn->get_datasock()->GetWPacket();
				l_wpk.WriteCmd(CMD_TP_USER_LOGOUT);
				l_wpk.WriteLong(MakeULong(l_ply));
				l_wpk.WriteLong(l_ply->gp_addr);
				l_ply->gp_addr	=0;
				l_retpk	=g_gtsvr->gp_conn->SyncCall(g_gtsvr->gp_conn->get_datasock(),l_wpk,l_ulMilliseconds);
			}
			l_lockStat.unlock();
		}

		MutexArmor lock(g_gtsvr->_mtxother);
		datasock->SetPointer(l_ply);
		lock.unlock();
#else
			}
			//֪ͨGroupServer Logout
			l_wpk	=g_gtsvr->gp_conn->get_datasock()->GetWPacket();
			l_wpk.WriteCmd(CMD_TP_USER_LOGOUT);
			l_wpk.WriteLong(MakeULong(l_ply));
			l_wpk.WriteLong(l_ply->gp_addr);
			l_ply->gp_addr	=0;
			l_retpk	=g_gtsvr->gp_conn->SyncCall(g_gtsvr->gp_conn->get_datasock(),l_wpk,l_ulMilliseconds);
		}
		l_lockStat.unlock();
		l_ply->Free();
#endif
	}
	return l_retpk;
}

WPacket ToClient::CM_LOGOUT(DataSocket* datasock, RPacket& recvbuf)
{
	uLong	l_ulMilliseconds	=30*1000;
	uLong	l_tick	=GetTickCount()	-recvbuf.GetTickCount();
	l_ulMilliseconds =(l_ulMilliseconds>l_tick)?l_ulMilliseconds -l_tick:1;

	WPacket	l_retpk	=0;
	Player *l_ply	=0;
	MutexArmor lock(g_gtsvr->_mtxother);
	l_ply	=(Player*)datasock->GetPointer();

#ifndef CHAEXIT_ONTIME	
	l_ply->m_datasock = NULL;
#endif

	datasock->SetPointer(0);
	lock.unlock();

	if(l_ply)
	{
		MutexArmor l_lockStat(l_ply->m_mtxstat);
#ifdef CHAEXIT_ONTIME
		if( l_ply->m_exit != 0 ) {
			l_lockStat.unlock();
			return l_retpk;
		}
#endif
		if(l_ply->m_status ==0)			//�����������ʱ���Ƿ�����Ϊ��ǰ��Ҳ�����ѡ��ɫ״̬������ѡ������һ����ɫ
		{
			WPacket	l_wpk	=datasock->GetWPacket();
			l_retpk.WriteShort(ERR_MC_NOTLOGIN);
#ifdef CHAEXIT_ONTIME
			l_lockStat.unlock();
			l_ply->Free();
#endif
		}else
		{
			//printf( "CM_LOGOUT 2.) id = %d, status = %d\n", l_ply->m_actid, l_ply->m_status );
			WPacket l_wpk	=GetWPacket();
#ifdef CHAEXIT_ONTIME
#else			
			l_wpk.WriteCmd(CMD_TP_DISC);
			l_wpk.WriteLong(l_ply->m_actid);
			l_wpk.WriteLong(inet_addr(datasock->GetPeerIP()));
			l_wpk.WriteString(GetDisconnectErrText(datasock->GetDisconnectReason()?datasock->GetDisconnectReason():-27).c_str());
			g_gtsvr->gp_conn->SendData(g_gtsvr->gp_conn->get_datasock(),l_wpk);
#endif
			GameServer	*l_game	=l_ply->game;
			if((l_ply->m_status	==2) && l_ply->gm_addr && l_game && l_game->m_datasock)
			{
				//֪ͨGameServer GoOut��ͼ
				//char l_tmp[256];
				LogLine l_line(g_gatelog);
				//l_line<<newln<<"�ͻ���: "<<datasock->GetPeerIP()<<":"<<datasock->GetPeerPort()<<"	GoOut����ͼ,Gate��["
				l_line<<newln<<"client: "<<datasock->GetPeerIP()<<":"<<datasock->GetPeerPort()<<"	GoOut map,Gate to ["
					//<<l_game->m_datasock->GetPeerIP()<<"]������GoOutMap����,dbid:"<<l_ply->m_dbid
					<<l_game->m_datasock->GetPeerIP()<<"]send GoOutMap command,dbid:"<<l_ply->m_dbid
					//<<uppercase<<hex<<",����Gate��ַ:"<<MakeULong(l_ply)<<",Game��ַ:"<<l_ply->gm_addr<<dec<<nouppercase<<endln;
					<<uppercase<<hex<<",Gate address:"<<MakeULong(l_ply)<<",Game address:"<<l_ply->gm_addr<<dec<<nouppercase<<endln;
				WPacket	l_wpk	=l_game->m_datasock->GetWPacket();
				l_wpk.WriteCmd(CMD_TM_GOOUTMAP);
#ifdef CHAEXIT_ONTIME
				l_wpk.WriteChar(1);
#else
				l_wpk.WriteChar(0);
#endif
				l_wpk.WriteLong(MakeULong(l_ply));
				l_wpk.WriteLong(l_ply->gm_addr);		//��������GameServer�ϵĵ�ַ
#ifdef CHAEXIT_ONTIME
#else
				l_ply->game		=0;						//��ֹ����ĵ�GameServer������
				l_ply->gm_addr	=0;						//��ֹ����ĵ�GameServer������
#endif
				SendData(l_game->m_datasock,l_wpk);
				//printf( "CM_LOGOUT 3.) Send gooutmap, id = %d, status = %d\n", l_ply->m_actid, l_ply->m_status );
				//SyncCall(l_game->m_datasock,l_wpk);
#ifdef CHAEXIT_ONTIME
				l_ply->m_exit = 2;
			}
			else
			{
				//֪ͨGroupServer Logout
				l_wpk	=g_gtsvr->gp_conn->get_datasock()->GetWPacket();
				l_wpk.WriteCmd(CMD_TP_USER_LOGOUT);
				l_wpk.WriteLong(MakeULong(l_ply));
				l_wpk.WriteLong(l_ply->gp_addr);
				l_ply->gp_addr	=0;
				l_retpk	=g_gtsvr->gp_conn->SyncCall(g_gtsvr->gp_conn->get_datasock(),l_wpk,l_ulMilliseconds);
			}
			l_lockStat.unlock();
		}

		MutexArmor lock(g_gtsvr->_mtxother);
		datasock->SetPointer(l_ply);
		lock.unlock();
#else
			}
			//֪ͨGroupServer Logout
			l_wpk	=g_gtsvr->gp_conn->get_datasock()->GetWPacket();
			l_wpk.WriteCmd(CMD_TP_USER_LOGOUT);
			l_wpk.WriteLong(MakeULong(l_ply));
			l_wpk.WriteLong(l_ply->gp_addr);
			l_ply->gp_addr	=0;
			l_retpk	=g_gtsvr->gp_conn->SyncCall(g_gtsvr->gp_conn->get_datasock(),l_wpk,l_ulMilliseconds);
		}
		l_lockStat.unlock();
		l_ply->Free();
#endif
	}
	return l_retpk;
}

void ToClient::CM_BGNPLAY(DataSocket* datasock, RPacket& recvbuf)
{
	uLong	l_ulMilliseconds	=30*1000;
	uLong	l_tick	=GetTickCount()	-recvbuf.GetTickCount();
	if(l_ulMilliseconds>l_tick)
	{
		l_ulMilliseconds =l_ulMilliseconds -l_tick;

		Player *l_ply	=(Player*)datasock->GetPointer();
		if(l_ply)
		{
			MutexArmor l_lockStat(l_ply->m_mtxstat);
			if(l_ply->m_status !=1 || !l_ply->gp_addr)			//�����������ʱ���Ƿ�����Ϊ��ǰ��Ҳ�����ѡ��ɫ״̬������ѡ������һ����ɫ
			{
				WPacket	l_wpk	=datasock->GetWPacket();
				l_wpk.WriteCmd(CMD_MC_BGNPLAY);
				l_wpk.WriteShort(ERR_MC_NOTSELCHA);
				SendData(datasock,l_wpk);
			}else
			{
				//��֤�����ɫ�Ϸ���
				WPacket	l_wpk	=WPacket(recvbuf).Duplicate();
				l_wpk.WriteCmd(CMD_TP_BGNPLAY);
				l_wpk.WriteLong(MakeULong(l_ply));
				l_wpk.WriteLong(l_ply->gp_addr);
				RPacket	l_rpk	=g_gtsvr->gp_conn->SyncCall(g_gtsvr->gp_conn->get_datasock(),l_wpk,l_ulMilliseconds);
				uShort	l_errno;
				if(!l_rpk.HasData())	//�������
				{
					l_wpk	=datasock->GetWPacket();
					l_wpk.WriteCmd(CMD_MC_BGNPLAY);
					l_wpk.WriteShort(ERR_MC_NETEXCP);
					SendData(datasock,l_wpk);
				}else if(l_errno =l_rpk.ReadShort())	//�����ɫ���Ϸ�
				{
					l_wpk	=l_rpk;
					l_wpk.WriteCmd(CMD_MC_BGNPLAY);
					SendData(datasock,l_wpk);
					if(l_errno ==ERR_PT_KICKUSER)
					{
						Disconnect(datasock,100,-25);
					}
				}else		//ѡ���ɫ�ɹ������سɹ���Ϣ�����Ұѵ�ͼ���ͳɹ��Ľ�ɫID����GameServer��
				{
					// Modify by lark.li 20080317
					memset(l_ply->m_password, 0 , sizeof(l_ply->m_password));
					strncpy( l_ply->m_password, l_rpk.ReadString(), ROLE_MAXSIZE_PASSWORD2 );	//��ɫ�������� 
					// End
					
					l_ply->m_dbid		=l_rpk.ReadLong();		//��ɫID;
					l_ply->m_worldid	=l_rpk.ReadLong();		//GroupServer�����ΨһID
					cChar	*l_map		=l_rpk.ReadString();
					l_ply->m_sGarnerWiner	=l_rpk.ReadShort();
					GameServer *l_game	=g_gtsvr->gm_conn->find(l_map);
					if(!l_game)						//Ŀ���ͼ���ɴ�
					{
						l_wpk	=datasock->GetWPacket();
						l_wpk.WriteCmd(CMD_MC_BGNPLAY);
						l_wpk.WriteShort(ERR_MC_NOTARRIVE);
						SendData(datasock,l_wpk);
					}else if(l_game->m_plynum >15000)//��������
					{
						l_wpk	=datasock->GetWPacket();
						l_wpk.WriteCmd(CMD_MC_BGNPLAY);
						l_wpk.WriteShort(ERR_MC_TOOMANYPLY);
						SendData(datasock,l_wpk);
					}else
					{
						l_ply->m_status	=2;		//ѡ���ɫ�ɹ�����������Ϸ״̬
						l_game->m_plynum	++;	//����ͬ����ֻ�Ǽ򵥲ο�
						//֪ͨGameServer�����ͼ
						LogLine l_line(g_gatelog);
						//l_line<<newln<<"�ͻ���: "<<datasock->GetPeerIP()<<":"<<datasock->GetPeerPort()<<"	BeginPlay���ͼ,Gate��["
						l_line<<newln<<"client: "<<datasock->GetPeerIP()<<":"<<datasock->GetPeerPort()<<"	BeginPlay entry map,Gate to["
							//<<l_game->m_datasock->GetPeerIP()<<"]������EnterMap����,dbid:"<<l_ply->m_dbid
							<<l_game->m_datasock->GetPeerIP()<<"]send EnterMap command,dbid:"<<l_ply->m_dbid
							//<<uppercase<<hex<<",����Gate��ַ:"<<MakeULong(l_ply)<<dec<<nouppercase<<endln;
							<<uppercase<<hex<<",Gate address:"<<MakeULong(l_ply)<<dec<<nouppercase<<endln;
                        l_game->EnterMap(l_ply,l_ply->m_loginID, l_ply->m_dbid,l_ply->m_worldid,l_map,-1,0,0,0,l_ply->m_sGarnerWiner);	//���ݵ�ͼ����GameServer��Ȼ������GameServer�Խ��������ͼ��
					}
				}
			}
			l_lockStat.unlock();
		}
	}else
	{
		WPacket l_wpk	=datasock->GetWPacket();
		l_wpk.WriteCmd(CMD_MC_BGNPLAY);
		l_wpk.WriteShort(ERR_MC_NETEXCP);
		SendData(datasock,l_wpk);
	}
}

void ToClient::CM_ENDPLAY(DataSocket* datasock, RPacket& recvbuf)
{
	uLong	l_ulMilliseconds	=30*1000;
	uLong	l_tick	=GetTickCount()	-recvbuf.GetTickCount();
	l_ulMilliseconds =(l_ulMilliseconds>l_tick)?l_ulMilliseconds -l_tick:1;

	Player *l_ply	=(Player*)datasock->GetPointer();
	if(l_ply)
	{
		MutexArmor l_lockStat(l_ply->m_mtxstat);
#ifdef CHAEXIT_ONTIME
		if( l_ply->m_exit != 0 ) {
			l_lockStat.unlock();
			return;
		}
#endif
		if(l_ply->m_status !=2 ||!l_ply->gm_addr)//�����������ʱ���Ƿ�����Ϊ��ǰ��Ҳ�����һ����ɫ�У���������ѡ������һ����ɫ
		{
			WPacket	l_wpk	=datasock->GetWPacket();
			l_wpk.WriteCmd(CMD_MC_ENDPLAY);
			l_wpk.WriteShort(ERR_MC_NOTPLAY);
			SendData(datasock,l_wpk);
		}else
		{
			GameServer	*l_game	=l_ply->game;
			if(l_game && l_game->m_datasock)
			{				
#ifdef CHAEXIT_ONTIME
				l_ply->m_exit		=1;
#else
				l_ply->m_status		=1;						//����ѡ��ɫ����״̬
#endif
				l_game->m_plynum	--;
				//֪ͨGameServer����ͼ
				LogLine l_line(g_gatelog);
				//l_line<<newln<<"�ͻ���: "<<datasock->GetPeerIP()<<":"<<datasock->GetPeerPort()<<"	GoOut����ͼ,Gate��["
				l_line<<newln<<"client: "<<datasock->GetPeerIP()<<":"<<datasock->GetPeerPort()<<"	GoOut map,Gate to["
					//<<l_game->m_datasock->GetPeerIP()<<"]������GoOutMap����,dbid:"<<l_ply->m_dbid
					<<l_game->m_datasock->GetPeerIP()<<"] send GoOutMap command,dbid:"<<l_ply->m_dbid
					//<<uppercase<<hex<<",����Gate��ַ:"<<MakeULong(l_ply)<<",Game��ַ:"<<l_ply->gm_addr<<dec<<nouppercase<<endln;
					<<uppercase<<hex<<",Gate address:"<<MakeULong(l_ply)<<",Game address:"<<l_ply->gm_addr<<dec<<nouppercase<<endln;
				WPacket l_wpk	=WPacket(recvbuf).Duplicate();
				l_wpk.WriteCmd(CMD_TM_GOOUTMAP);
#ifdef CHAEXIT_ONTIME
				l_wpk.WriteChar(1);
#else
				l_wpk.WriteChar(0);
#endif
				l_wpk.WriteLong(MakeULong(l_ply));
				l_wpk.WriteLong(l_ply->gm_addr);			//����GameServer�ϵĵ�ַ
#ifdef CHAEXIT_ONTIME
#else
				l_ply->game		=0;							//��ֹ����ĵ�GameServer������
				l_ply->gm_addr	=0;							//��ֹ����ĵ�GameServer������
#endif
				g_gtsvr->gm_conn->SendData(l_game->m_datasock,l_wpk);
				//g_gtsvr->gm_conn->SyncCall(l_game->m_datasock,l_wpk);
				//֪ͨGroupServer��������Ϸ
#ifdef CHAEXIT_ONTIME
				//printf( "CM_ENDPLAY 3.) Send gooutmap, id = %d, status = %d\n", l_ply->m_actid, l_ply->m_status );
				// ��Ϊ�ȴ�Gameserver֪ͨ��ʱ�˳� by knight on 2005.12.14.
#else
				l_wpk	=WPacket(recvbuf).Duplicate();
				l_wpk.WriteCmd(CMD_TP_ENDPLAY);
				l_wpk.WriteLong(MakeULong(l_ply));
				l_wpk.WriteLong(l_ply->gp_addr);
				l_wpk	=g_gtsvr->gp_conn->SyncCall(g_gtsvr->gp_conn->get_datasock(),l_wpk,l_ulMilliseconds);
				if(!l_wpk.HasData())
				{
					l_wpk	=datasock->GetWPacket();
					l_wpk.WriteCmd(CMD_MC_ENDPLAY);
					l_wpk.WriteShort(ERR_MC_NETEXCP);
					SendData(datasock,l_wpk);
					Disconnect(datasock,100,-25);
				}else
				{
					//���ظ�Client
					l_wpk.WriteCmd(CMD_MC_ENDPLAY);
					SendData(datasock,l_wpk);
					l_ply->m_dbid	=0;
					l_ply->m_worldid=0;
					if(RPacket(l_wpk).ReadShort() ==ERR_PT_KICKUSER)
					{
						Disconnect(datasock,100,-25);
					}
				}				
#endif
			}
		}
		l_lockStat.unlock();
	}
}

void ToClient::CM_NEWCHA(DataSocket* datasock, RPacket& recvbuf)
{
	uLong	l_ulMilliseconds	=30*1000;
	uLong	l_tick	=GetTickCount()	-recvbuf.GetTickCount();
	if(l_ulMilliseconds>l_tick)
	{
		l_ulMilliseconds =l_ulMilliseconds -l_tick;

		Player *l_ply	=(Player*)datasock->GetPointer();
		if(l_ply)
		{
			MutexArmor l_lockStat(l_ply->m_mtxstat);
			if(l_ply->m_status !=1 || !l_ply->gp_addr)
			{
				WPacket	l_wpk	=datasock->GetWPacket();
				l_wpk.WriteCmd(CMD_MC_NEWCHA);
				l_wpk.WriteShort(ERR_MC_NOTSELCHA);
				SendData(datasock,l_wpk);
			}else
			{
				//����GroupServer
				WPacket l_wpk	=WPacket(recvbuf).Duplicate();
				l_wpk.WriteCmd(CMD_TP_NEWCHA);
				l_wpk.WriteLong(MakeULong(l_ply));
				l_wpk.WriteLong(l_ply->gp_addr);	//������ַ
				l_wpk	=g_gtsvr->gp_conn->SyncCall(g_gtsvr->gp_conn->get_datasock(),l_wpk,l_ulMilliseconds);
				if(!l_wpk.HasData())
				{
					l_wpk	=datasock->GetWPacket();
					l_wpk.WriteCmd(CMD_MC_NEWCHA);
					l_wpk.WriteShort(ERR_MC_NETEXCP);
					SendData(datasock,l_wpk);
					Disconnect(datasock,100,-25);
				}else
				{
					//����Client
					l_wpk.WriteCmd(CMD_MC_NEWCHA);
					SendData(datasock,l_wpk);
					if(RPacket(l_wpk).ReadShort() ==ERR_PT_KICKUSER)
					{
						Disconnect(datasock,100,-25);
					}
				}
			}
			l_lockStat.unlock();
		}
	}else
	{
		WPacket	l_wpk	=datasock->GetWPacket();
		l_wpk.WriteCmd(CMD_MC_NEWCHA);
		l_wpk.WriteShort(ERR_MC_NETEXCP);
		SendData(datasock,l_wpk);
		Disconnect(datasock,100,-25);
	}
}
void ToClient::CM_DELCHA(DataSocket* datasock, RPacket& recvbuf)
{
	uLong	l_ulMilliseconds	=30*1000;
	uLong	l_tick	=GetTickCount()	-recvbuf.GetTickCount();
	if(l_ulMilliseconds>l_tick)
	{
		l_ulMilliseconds =l_ulMilliseconds -l_tick;

		Player *l_ply	=(Player*)datasock->GetPointer();
		if(l_ply)
		{
			MutexArmor l_lockStat(l_ply->m_mtxstat);
			if(l_ply->m_status !=1 || !l_ply->gp_addr)
			{
				WPacket	l_wpk	=datasock->GetWPacket();
				l_wpk.WriteCmd(CMD_MC_DELCHA);
				l_wpk.WriteShort(ERR_MC_NOTSELCHA);
				SendData(datasock,l_wpk);
			}else
			{
				//����GroupServer
				WPacket l_wpk	=WPacket(recvbuf).Duplicate();
				l_wpk.WriteCmd(CMD_TP_DELCHA);
				l_wpk.WriteLong(MakeULong(l_ply));
				l_wpk.WriteLong(l_ply->gp_addr);	//������ַ
				l_wpk	=g_gtsvr->gp_conn->SyncCall(g_gtsvr->gp_conn->get_datasock(),l_wpk);
				if(!l_wpk.HasData())
				{
					l_wpk	=datasock->GetWPacket();
					l_wpk.WriteCmd(CMD_MC_DELCHA);
					l_wpk.WriteShort(ERR_MC_NETEXCP);
					SendData(datasock,l_wpk);
					Disconnect(datasock,100,-25);
				}else
				{
					//����Client
					l_wpk.WriteCmd(CMD_MC_DELCHA);
					SendData(datasock,l_wpk);
					if(RPacket(l_wpk).ReadShort() ==ERR_PT_KICKUSER)
					{
						Disconnect(datasock,100,-25);
					}
				}
			}
			l_lockStat.unlock();
		}
	}else
	{
		WPacket	l_wpk	=datasock->GetWPacket();
		l_wpk.WriteCmd(CMD_MC_DELCHA);
		l_wpk.WriteShort(ERR_MC_NETEXCP);
		SendData(datasock,l_wpk);
		Disconnect(datasock,100,-25);
	}
}

void ToClient::CM_CREATE_PASSWORD2(DataSocket* datasock, RPacket& recvbuf)
{
	uLong	l_ulMilliseconds	=30*1000;
	uLong	l_tick	=GetTickCount()	-recvbuf.GetTickCount();
	if(l_ulMilliseconds>l_tick)
	{
		l_ulMilliseconds =l_ulMilliseconds -l_tick;

		Player *l_ply	=(Player*)datasock->GetPointer();
		if(l_ply)
		{
			MutexArmor l_lockStat(l_ply->m_mtxstat);
			if(l_ply->m_status !=1 || !l_ply->gp_addr)
			{
				WPacket	l_wpk	=datasock->GetWPacket();
				l_wpk.WriteCmd(CMD_MC_DELCHA);
				l_wpk.WriteShort(ERR_MC_NOTSELCHA);
				SendData(datasock,l_wpk);
			}else
			{
				//����GroupServer
				WPacket l_log(recvbuf);
				const char * pszPW = recvbuf.ReadString();
				//if( pszPW )
				//{
				//	LogLine l_line(g_gateerr);
				//	l_line<<newln<<"�������룺"<<pszPW<<"�˺�ID��"<<l_ply->m_actid<<endln;
				//}
				//else
				//{
				//	LogLine l_line(g_gateerr);
				//	l_line<<newln<<"�������룺"<<"��"<<"�˺�ID��"<<l_ply->m_actid<<endln;
				//}
				WPacket l_wpk	=WPacket(recvbuf).Duplicate();
				l_wpk.WriteCmd(CMD_TP_CREATE_PASSWORD2);
				l_wpk.WriteLong(MakeULong(l_ply));
				l_wpk.WriteLong(l_ply->gp_addr);	//������ַ
				l_wpk	=g_gtsvr->gp_conn->SyncCall(g_gtsvr->gp_conn->get_datasock(),l_wpk);
				if(!l_wpk.HasData())
				{
					l_wpk	=datasock->GetWPacket();
					l_wpk.WriteCmd(CMD_MC_CREATE_PASSWORD2);
					l_wpk.WriteShort(ERR_MC_NETEXCP);
					SendData(datasock,l_wpk);
					Disconnect(datasock,100,-25);
				}else
				{
					//����Client
					l_wpk.WriteCmd(CMD_MC_CREATE_PASSWORD2);
					SendData(datasock,l_wpk);
					if(RPacket(l_wpk).ReadShort() ==ERR_PT_KICKUSER)
					{
						Disconnect(datasock,100,-25);
					}
				}
			}
			l_lockStat.unlock();
		}
	}else
	{
		WPacket	l_wpk	=datasock->GetWPacket();
		l_wpk.WriteCmd(CMD_MC_CREATE_PASSWORD2);
		l_wpk.WriteShort(ERR_MC_NETEXCP);
		SendData(datasock,l_wpk);
		Disconnect(datasock,100,-25);
	}
}

void ToClient::CM_UPDATE_PASSWORD2(DataSocket* datasock, RPacket& recvbuf)
{
	uLong	l_ulMilliseconds	=30*1000;
	uLong	l_tick	=GetTickCount()	-recvbuf.GetTickCount();
	if(l_ulMilliseconds>l_tick)
	{
		l_ulMilliseconds =l_ulMilliseconds -l_tick;

		Player *l_ply	=(Player*)datasock->GetPointer();
		if(l_ply)
		{
			MutexArmor l_lockStat(l_ply->m_mtxstat);
			if(l_ply->m_status !=1 || !l_ply->gp_addr)
			{
				WPacket	l_wpk	=datasock->GetWPacket();
				l_wpk.WriteCmd(CMD_MC_DELCHA);
				l_wpk.WriteShort(ERR_MC_NOTSELCHA);
				SendData(datasock,l_wpk);
			}else
			{
				//����GroupServer
				WPacket l_wpk	=WPacket(recvbuf).Duplicate();
				l_wpk.WriteCmd(CMD_TP_UPDATE_PASSWORD2);
				l_wpk.WriteLong(MakeULong(l_ply));
				l_wpk.WriteLong(l_ply->gp_addr);	//������ַ
				l_wpk	=g_gtsvr->gp_conn->SyncCall(g_gtsvr->gp_conn->get_datasock(),l_wpk);
				if(!l_wpk.HasData())
				{
					l_wpk	=datasock->GetWPacket();
					l_wpk.WriteCmd(CMD_MC_UPDATE_PASSWORD2);
					l_wpk.WriteShort(ERR_MC_NETEXCP);
					SendData(datasock,l_wpk);
					Disconnect(datasock,100,-25);
				}else
				{
					//����Client
					l_wpk.WriteCmd(CMD_MC_UPDATE_PASSWORD2);
					SendData(datasock,l_wpk);
					if(RPacket(l_wpk).ReadShort() ==ERR_PT_KICKUSER)
					{
						Disconnect(datasock,100,-25);
					}
				}
			}
			l_lockStat.unlock();
		}
	}else
	{
		WPacket	l_wpk	=datasock->GetWPacket();
		l_wpk.WriteCmd(CMD_MC_UPDATE_PASSWORD2);
		l_wpk.WriteShort(ERR_MC_NETEXCP);
		SendData(datasock,l_wpk);
		Disconnect(datasock,100,-25);
	}
}

void ToClient::OnEncrypt(DataSocket *datasock,char *ciphertext,const char *text,uLong &len)
{
	TcpCommApp::OnEncrypt(datasock,ciphertext, text, len);

	if (_comm_enc > 0)
	{ // ����
		Player* ply = (Player *)datasock->GetPointer();

		//bool is =false; short cmd;
		//memcpy(&cmd, ciphertext, sizeof(short));
		//if ((ntohs(cmd) != CMD_MC_PING)
		// && (ply->m_dbid == 1858)) is = true;

		//if (is)
		//LG("Enc1", "beofre encrypt len = %d cmd = %x\n", len, ((unsigned short *)text)[0]);

		if (ply&&ply->enc) 
		{
#if NET_PROTOCOL_ENCRYPT
			encrypt_Noise( ply->m_szSendKey, ciphertext, len );
#endif
			encrypt_B(ciphertext, len, ply->comm_textkey, ply->comm_key_len);			
		}

		//if(is)
		//LG("Enc1", "after encrypt len = %d cmd = %x\n", len, ((unsigned short *)text)[0]);

	}

	return;
}

void ToClient::OnDecrypt(DataSocket *datasock,char *ciphertext,uLong &len)
{
	TcpCommApp::OnDecrypt(datasock, ciphertext, len);

	if (_comm_enc > 0)
	{ // ����
		Player* ply = (Player *)datasock->GetPointer();
		if (ply&&ply->enc) 
		{
			encrypt_B(ciphertext, len, ply->comm_textkey, ply->comm_key_len, false);
#if NET_PROTOCOL_ENCRYPT
			decrypt_Noise( ply->m_szRecvKey, ciphertext, len );
#endif
		}
	}
	return;
}

void ToClient::post_mapcrash_msg(Player* ply)
{
	if (ply->m_datasock == NULL) return;
	WPacket pk = ply->m_datasock->GetWPacket();
	pk.WriteCmd(CMD_MC_MAPCRASH);
	//pk.WriteString("��ͼ���������ϣ����Ժ�����...");
	pk.WriteString(RES_STRING(GS_TOCLIENT_CPP_00031));
	SendData(ply->m_datasock, pk);
}

