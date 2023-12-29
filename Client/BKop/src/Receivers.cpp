#include "StdAfx.h"
#include "BKop.h"
#include "GameThread.h"
#include "LoginData.h"
#include "MainFrm.h"
#include "ItemView.h"
#include "MainView.h"
#include "RoleObject.h"
#include "PlayerObject.h"
#include "NPCObject.h"
#include "MonsterObject.h"
#include "SelfObject.h"
#include "MonsterObject.h"
#include "NetIF.h"
#include "ServerHeader.h"
#include "GroundObject.h"
#include ".\receivers.h"


#ifdef _DEBUG
#define new DEBUG_NEW
#endif


extern short g_sKeyData;

CReceiver::CReceiver(CNetIF *pNet,CPlayer *player)
{
	m_pNet=pNet;
	m_pPlayer=player;
}

CReceiver::~CReceiver(void)
{
}

void CReceiver::OnMessageHandle(dbc::RPacket& recvbuf)
{
	if (!static_cast<bool>(recvbuf))
	{
		//CSystemInfo::AddDebugInfo(m_pPlayer->GetIndex(),"接收到无效的网络封包");
		m_pPlayer->GetPlayerMessages().AddDebugMsg("接收到无效的网络封包");
		return;
	}
	WORD nCmdType = recvbuf.ReadCmd();
	DWORD dwBufLen = recvbuf.GetDataLen();
	//CString str;
	//str.Format("接收到封包－关键字:%d 数据长度:%d",nCmdType,dwBufLen);
	//CSystemInfo::AddDebugInfo(m_pPlayer->GetIndex(),"接收到封包－关键字:%d 数据长度:%d",nCmdType,dwBufLen);
	m_pPlayer->GetPlayerMessages().AddDebugMsg("接收到封包－关键字:%d 数据长度:%d",nCmdType,dwBufLen);
	switch(nCmdType)
	{
		case CMD_MC_CHAPSTR:				//获得登陆帐号所需的加密串，连接后立即接收到
			{
				OnGetLoginKey(recvbuf);		//已全部解析
				break;
			}
		case CMD_MC_LOGIN:					//登陆角色服务器后获得可选择角色的列表
			{
				OnLogin(recvbuf);			//已全部解析
				break;
			}
		case CMD_MC_NEWCHA:					//创建角色
			{
				OnCreateCharacter(recvbuf);	//已全部解析
				break;
			}
		case CMD_MC_DELCHA:					//删除角色
			{
				OnDeleteCharacter(recvbuf);	//已全部解析
				break;
			}
		case CMD_MC_ENTERMAP:				//角色登陆地图
			{
				OnEnterMap(recvbuf);
				break;
			}
		case CMD_MC_BGNPLAY:
			{
				OnError(recvbuf);
				break;
			}
		case CMD_MC_ENDPLAY:
			{
				break;
			}
		case CMD_MC_NOTIACTION:				//角色行为(移动,攻击...)
			{
				OnAction(recvbuf);
				break;
			}
		case CMD_MC_CHABEGINSEE:			//角色（玩家，NPC，怪物）出现在视野
			{
				SomethingAppear(recvbuf);
				break;
			}
		case CMD_MC_CHAENDSEE:				//角色（玩家，NPC，怪物）从视野消失
			{
				SomethingDisappear(recvbuf);//已全部解析
				break;
			}
		case CMD_MC_ITEMBEGINSEE:			//物品出现
			{
				ItemAppear(recvbuf);
				break;
			}
		case CMD_MC_ITEMENDSEE:				//物品消失
			{
				ItemDisappear(recvbuf);
				break;
			}
		case CMD_MC_SYNATTR:				//角色属性同步
			{
				SynAttribute(recvbuf);
				break;
			}
		case CMD_MC_SYSINFO:				//系统频道
			{
				Chat_SystemChannel(recvbuf);
				break;
			}
		case CMD_PC_SAY2YOU:				//私聊
			{
				Chat_PrivateChannel(recvbuf);	//已全部解析
				break;
			}
		case CMD_PC_SAY2TEM:				//队聊
			{
				//Chat_TeamChannel(recvbuf);
				break;
			}
		case CMD_PC_SAY2ALL:				//世界
			{
				Chat_WorldChannel(recvbuf);		//已全部解析
				break;
			}
		case CMD_PC_SAY2TRADE:				//交易
			{
				Chat_TradeChannel(recvbuf);		//已全部解析
				break;
			}
		case CMD_PC_GM1SAY:					//公告
			{
				Chat_PublishChannel(recvbuf);	//已全部解析
				break;
			}
		case CMD_MC_SAY:					//视野
			{
				Chat_SightChannel(recvbuf);		//已全部解析
				break;
			}
		case CMD_MC_QUERY_CHA:				//通过GM指令查询玩家信息的返回内容
			{
				OnGetCharacterInfo(recvbuf);
				break;
			}
		default:
			{
				//CSystemInfo::AddDetailDebugInfo(m_pPlayer->GetIndex(),"数据未解释－未知的封包格式，丢弃");
				m_pPlayer->GetPlayerMessages().AddDebugMsg("数据未解释－未知的封包格式，丢弃");
			}
	}
}

void CReceiver::OnGetLoginKey(dbc::RPacket& pk)
{
    strcpy(m_pNet->m_chapstr, pk.ReadString());

#if NET_PROTOCOL_ENCRYPT
	int nNoise = g_sKeyData * int(*(int*)(m_pNet->m_chapstr + strlen(m_pNet->m_chapstr) - 4));
	m_pNet->GetConnectKey().InitNoiseKey(nNoise);
	//init_Noise( nNoise, g_szSendKey );
	//init_Noise( nNoise, g_szRecvKey );
#endif
    //int nNoise = g_sKeyData * int(*(int*)(m_pNet->m_chapstr + strlen(m_pNet->m_chapstr) - 4));
    //m_pNet->GetConnectKey().InitNoiseKey(nNoise);

	//m_pNet->GetConnectKey().SetLoginKey(pk.ReadString());
    m_pNet->GetConnectKey().SetLoginKey(m_pNet->m_chapstr);
	//CSystemInfo::AddDetailDebugInfo(m_pPlayer->GetIndex(),"成功获得同步密匙：%s",m_pNet->GetConnectKey().GetLoginKey());
	m_pPlayer->GetPlayerMessages().AddSystemMsg("成功获得同步密匙：%s",m_pNet->GetConnectKey().GetLoginKey());
	m_pPlayer->SetLoginState(CPlayer::eLOGON_GROUP);
}

void CReceiver::OnCreateCharacter(dbc::RPacket& pk)
{
	WORD nErr=pk.ReadShort();
	if (nErr==0)
	{
		//CSystemInfo::Add(m_pPlayer->GetIndex(),"创建游戏角色成功!");
		m_pPlayer->GetPlayerMessages().AddSystemMsg("创建游戏角色成功!");
		m_pPlayer->SetLoginState(CPlayer::eCREATE_CHAR_END);
		m_pPlayer->SetRoleCount(m_pPlayer->GetRoleCount()+1);
	}
	else
	{
		//CSystemInfo::Add(m_pPlayer->GetIndex(),"创建游戏角色失败!");
		m_pPlayer->GetPlayerMessages().AddSystemMsg("创建游戏角色失败!");
		m_pPlayer->SetLoginState(CPlayer::eCREATE_CHAR_ERROR);
	}
}

void CReceiver::OnDeleteCharacter(dbc::RPacket& pk)
{
	WORD nErr=pk.ReadShort();
	if (nErr==0)
	{
		//CSystemInfo::Add(m_pPlayer->GetIndex(),"删除游戏角色成功!");
		m_pPlayer->GetPlayerMessages().AddSystemMsg("删除游戏角色成功!");
		m_pPlayer->SetLoginState(CPlayer::eDELETE_CHAR_END);
		m_pPlayer->SetRoleCount(m_pPlayer->GetRoleCount()-1);
	}
	else
	{
		//CSystemInfo::Add(m_pPlayer->GetIndex(),"删除游戏角色失败!");
		m_pPlayer->GetPlayerMessages().AddSystemMsg("删除游戏角色失败!");
		m_pPlayer->SetLoginState(CPlayer::eDELETE_CHAR_ERROR);
	}
}

void CReceiver::OnLogin(dbc::RPacket& pk)
{
	DWORD nError=pk.ReadShort();
	if (nError==0)
	{//登陆成功
		WORD keyBufLen=0;
		const char *keyBuf=pk.ReadSequence(keyBufLen);

		char roleCount=pk.ReadChar();
		WORD retLen=0;
		for (int i=0;i<roleCount;i++)
		{
			if (!pk.ReadChar())
			{
				i--;
				roleCount--;
				continue;
			}
			m_pPlayer->GetRoleFormList(i).SetName(pk.ReadString());
			m_pPlayer->GetRoleFormList(i).SetJobName(pk.ReadString());
			m_pPlayer->GetRoleFormList(i).SetLevel(pk.ReadShort());
			const LOOK *sLook=reinterpret_cast<const LOOK *>(pk.ReadSequence(retLen));
			if (retLen!=sizeof(LOOK))
			{
				i--;
				roleCount--;
			}
			else
			{
				m_pPlayer->GetRoleFormList(i).SetLook(sLook);
			}
		}
        char chPassword  =pk.ReadChar();
		m_pPlayer->SetRoleCount(roleCount);
		if (m_pPlayer->GetRoleCount()>0)
		{
			//CSystemInfo::AddDebugInfo(m_pPlayer->GetIndex(),"成功获得角色列表（共%d人）",m_pPlayer->GetRoleCount());
			m_pPlayer->GetPlayerMessages().AddSystemMsg("成功获得角色列表（共%d人）",m_pPlayer->GetRoleCount());
			//CSystemInfo::AddDebugInfo(m_pPlayer->GetIndex(),"＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝");
			m_pPlayer->GetPlayerMessages().AddDebugMsg("＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝");
			for (int i=0;i<m_pPlayer->GetRoleCount();i++)
			{
				//CSystemInfo::AddDebugInfo(m_pPlayer->GetIndex(),"\t%d号角色－ 名字：%-16s\t职业：%s\t等级：%d",i,
				//	m_pPlayer->GetRoleFormList(i).GetName(),m_pPlayer->GetRoleFormList(i).GetJobName(),m_pPlayer->GetRoleFormList(i).Getlevel());
				m_pPlayer->GetPlayerMessages().AddDebugMsg("    %d号角色－ 名字：%-16s    职业：%s    等级：%d",i,
					m_pPlayer->GetRoleFormList(i).GetName(),m_pPlayer->GetRoleFormList(i).GetJobName(),m_pPlayer->GetRoleFormList(i).Getlevel());
			}
			//CSystemInfo::AddDebugInfo(m_pPlayer->GetIndex(),"＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝");
			m_pPlayer->GetPlayerMessages().AddDebugMsg("＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝");
		}
		else
		{
			//CSystemInfo::AddSystemInfo(m_pPlayer->GetIndex(),"未发现游戏角色，请先创建角色人物");
			m_pPlayer->GetPlayerMessages().AddSystemMsg("未发现游戏角色，请先创建角色人物");
		}

		//设置密匙
		int sKeyLen=0;
		char sKey[1024];
		KCHAPc chap(m_pPlayer->GetLoginData()->GetAccountName(),m_pPlayer->GetLoginData()->GetPassword());
		chap.GetSessionClrKey((void*)keyBuf,keyBufLen,sKey,sizeof(sKey),sKeyLen);
		sKey[sKeyLen]=0;
		m_pNet->GetConnectKey().SetKey(sKey,pk.ReadLong());
        DWORD flag = pk.ReadLong();
		char buf[20];
		CString strInfo;
		strInfo.Format("获得密匙[Coder=%d Len=%d]：",m_pNet->GetConnectKey().GetEncoder(),m_pNet->GetConnectKey().GetKeyLength());
		for (int i=0;i<m_pNet->GetConnectKey().GetKeyLength();i++)
		{
			sprintf(buf,"0x%02hX ",sKey[i]);
			strInfo+=buf;
		}
		//CSystemInfo::AddDetailDebugInfo(m_pPlayer->GetIndex(),strInfo);
		m_pPlayer->GetPlayerMessages().AddSystemMsg(strInfo);
		//CSystemInfo::Add(m_pPlayer->GetIndex(),"登陆帐号服务器成功！");
		m_pPlayer->GetPlayerMessages().AddMsg("登陆帐号服务器成功！");
		m_pPlayer->SetLoginState(CPlayer::eLOGON_ACCOUNT);
	}
	else
	{//登陆失败
		//CSystemInfo::Add(m_pPlayer->GetIndex(),"登陆失败！－错误号:%d 原因:%s",nError,g_GetServerError(nError));
		m_pPlayer->GetPlayerMessages().AddMsg("登陆失败！－错误号:%d 原因:%s",nError,g_GetServerError(nError));
		m_pPlayer->SetLoginState(CPlayer::eERROR_ACCOUNT);
	}
}

void CReceiver::OnError(dbc::RPacket& pk)
{
	int nError=pk.ReadShort();
	//CSystemInfo::Add(m_pPlayer->GetIndex(),"登陆失败！－错误号:%d 原因:%s",nError,g_GetServerError(nError));
	m_pPlayer->GetPlayerMessages().AddMsg("登陆失败！－错误号:%d 原因:%s",nError,g_GetServerError(nError));
	m_pPlayer->SetLoginState(CPlayer::eERROR);
}

void CReceiver::ResetAllView()
{
	m_pPlayer->GetRoleMgr().ResetAll();
	int nCurSel=((CMainFrame*)AfxGetApp()->GetMainWnd())->GetItemView()->GetSelectMainRoleIndex();
	if (nCurSel==m_pPlayer->GetIndex())
	{
		SendMessage(((CMainFrame*)AfxGetApp()->GetMainWnd())->GetItemView()->m_hWnd,GAME_THREAD_RESET_ALL,0,NULL);
	}
}

void CReceiver::RefreshAllView()
{
	int nCurSel=((CMainFrame*)AfxGetApp()->GetMainWnd())->GetItemView()->GetSelectMainRoleIndex();
	if (nCurSel==m_pPlayer->GetIndex() && m_pPlayer->GetRoleMgr().GetSelfObject())
	{
		SendMessage(((CMainFrame*)AfxGetApp()->GetMainWnd())->GetItemView()->m_hWnd,GAME_THREAD_FRESH_ALL,0,NULL);
	}
}

void CReceiver::RefreshMapPosition()
{
	int nCurSel=((CMainFrame*)AfxGetApp()->GetMainWnd())->GetItemView()->GetSelectMainRoleIndex();
	if (nCurSel==m_pPlayer->GetIndex() && m_pPlayer->GetRoleMgr().GetSelfObject())
	{
		SendMessage(((CMainFrame*)AfxGetApp()->GetMainWnd())->GetItemView()->m_hWnd,GAME_THREAD_FRESH_MAP_POSITION,0,NULL);
	}
}

void CReceiver::RefreshRoleAttribute()
{
	int nCurSel=((CMainFrame*)AfxGetApp()->GetMainWnd())->GetItemView()->GetSelectMainRoleIndex();
	if (nCurSel==m_pPlayer->GetIndex() && m_pPlayer->GetRoleMgr().GetSelfObject())
	{
		SendMessage(((CMainFrame*)AfxGetApp()->GetMainWnd())->GetItemView()->m_hWnd,GAME_THREAD_FRESH_PAGE,1,NULL);
	}
}

void CReceiver::RefreshRolePacket()
{
	int nCurSel=((CMainFrame*)AfxGetApp()->GetMainWnd())->GetItemView()->GetSelectMainRoleIndex();
	if (nCurSel==m_pPlayer->GetIndex() && m_pPlayer->GetRoleMgr().GetSelfObject())
	{
		SendMessage(((CMainFrame*)AfxGetApp()->GetMainWnd())->GetItemView()->m_hWnd,GAME_THREAD_FRESH_PAGE,4,NULL);
	}
}

void CReceiver::RefreshRoleList(CRoleObject* pRoleObject,bool bAppear)
{
	int nCurSel=((CMainFrame*)AfxGetApp()->GetMainWnd())->GetItemView()->GetSelectMainRoleIndex();
	if (nCurSel==m_pPlayer->GetIndex() && m_pPlayer->GetRoleMgr().GetSelfObject())
	{
		SendMessage(((CMainFrame*)AfxGetApp()->GetMainWnd())->GetItemView()->m_hWnd,GAME_THREAD_FRESH_ROLE,bAppear,(LPARAM)pRoleObject);
	}
}

void CReceiver::RefreshRolePosition(CRoleObject* pRoleObject)
{
	int nCurSel=((CMainFrame*)AfxGetApp()->GetMainWnd())->GetItemView()->GetSelectMainRoleIndex();
	if (nCurSel==m_pPlayer->GetIndex() && m_pPlayer->GetRoleMgr().GetSelfObject())
	{
		SendMessage(((CMainFrame*)AfxGetApp()->GetMainWnd())->GetItemView()->m_hWnd,GAME_THREAD_FRESH_ROLE_POSITION,0,(LPARAM)pRoleObject);
	}
}

void CReceiver::RefreshGroundItemList(CGroundObject* pGroundItem,bool bAppear)
{
	int nCurSel=((CMainFrame*)AfxGetApp()->GetMainWnd())->GetItemView()->GetSelectMainRoleIndex();
	if (nCurSel==m_pPlayer->GetIndex() && m_pPlayer->GetRoleMgr().GetSelfObject())
	{
		SendMessage(((CMainFrame*)AfxGetApp()->GetMainWnd())->GetItemView()->m_hWnd,GAME_THREAD_FRESH_GROUND_ITEM,bAppear,(LPARAM)pGroundItem);
	}
}

void CReceiver::RefreshChat(CChannelChatMgr::eChannel channel)
{
	int nCurSel=((CMainFrame*)AfxGetApp()->GetMainWnd())->GetItemView()->GetSelectMainRoleIndex();
	if (nCurSel==m_pPlayer->GetIndex() && m_pPlayer->GetRoleMgr().GetSelfObject())
	{
		SendMessage(((CMainFrame*)AfxGetApp()->GetMainWnd())->GetMainView()->GetTalkPage().m_hWnd,GAME_THREAD_FRESH_CHAT,(WPARAM)channel,NULL);
	}
}

void CReceiver::OnEnterMap(dbc::RPacket& pk)
{
	WORD nError = pk.ReadShort();
	if (nError != ERR_SUCCESS)
	{
		//CSystemInfo::AddSystemInfo(m_pPlayer->GetIndex(),"登陆失败：%s",g_GetServerError(nError));
		m_pPlayer->GetPlayerMessages().AddMsg("登陆失败！－错误号:%d 原因:%s",nError,g_GetServerError(nError));
		m_pPlayer->SetLoginState(CPlayer::eERROR);
		return;
	}

	// 读取锁状态
	bool bAutoLock   = pk.ReadChar() ? true : false;	// 自动锁状态
	bool bKitbagLock = pk.ReadChar() ? true : false;	// 是否已锁背包

	BYTE type=pk.ReadChar();	//跨地图切换是否播放切换场景
	pk.ReadChar();				//是否新手(显示新手帮助)
	ResetAllView();
	CString mapName=pk.ReadString();
	//m_pPlayer->GetMap().SetName();
	pk.ReadChar();				//是否可以组队
	CSelfObject* pSelfObject=static_cast<CSelfObject*>(CRoleObject::CreateSelfObject(pk));
	if (!m_pPlayer->GetRoleMgr().AddSelfObject(pSelfObject))
	{
		//CSystemInfo::AddSystemInfo(m_pPlayer->GetIndex(),"严重错误！－登陆游戏服务器后获得不正确的主角信息");
		m_pPlayer->GetPlayerMessages().AddMsg("严重错误！－登陆游戏服务器后获得不正确的主角信息");
		SAFE_DELETE(pSelfObject);
	}
	pSelfObject->SetMapName(mapName);
	//CRoleList *pRole=&m_pPlayer->GetMainRole();
	//pRole->SetCharID(pSelfObject->GetCharID());
	//pRole->SetWorldID(pSelfObject->GetWorldID());
	//pRole->SetCommID(pSelfObject->GetCommID());
	//pRole->SetName(pSelfObject->GetName());
	//pRole->SetGMLv(pSelfObject->GetGMLv());
	//pRole->SetCharHandle(pSelfObject->GetHandle());
	//pRole->SetCharType(enumCHACTRL_PLAYER);
	//pRole->SetShipName(pSelfObject->GetShipName());
	//pRole->SetMottoName(pSelfObject->GetMottoName());
	//pRole->SetIconID(pSelfObject->GetIconID());
	//pRole->SetRadius(pSelfObject->GetRadiusBulk());
	//pRole->SetState(pSelfObject->GetState());
	//pRole->GetMap().SetMainRolePosX(pSelfObject->GetPositionX());
	//pRole->GetMap().SetMainRolePosY(pSelfObject->GetPositionY());
	//m_pPlayer->GetMap().SetMainRolePosX(pSelfObject->GetPositionX());
	//m_pPlayer->GetMap().SetMainRolePosY(pSelfObject->GetPositionY());
	//m_pPlayer->GetMap().SetAngle(pSelfObject->GetAngle());


	//CSystemInfo::AddDebugInfo(m_pPlayer->GetIndex(),"世界ID：0x%X(%d)",pSelfObject->GetWorldID(),pSelfObject->GetWorldID());
	m_pPlayer->GetPlayerMessages().AddDebugMsg("世界ID：0x%X(%d)",pSelfObject->GetWorldID(),pSelfObject->GetWorldID());
	//CSystemInfo::AddDebugInfo(m_pPlayer->GetIndex(),"角色ID：0x%X(%d)",pSelfObject->GetCharID(),pSelfObject->GetCharID());
	m_pPlayer->GetPlayerMessages().AddDebugMsg("角色ID：0x%X(%d)",pSelfObject->GetCharID(),pSelfObject->GetCharID());
	//CSystemInfo::AddDebugInfo(m_pPlayer->GetIndex(),"网络ID：0x%X(%d)",pSelfObject->GetCommID(),pSelfObject->GetCommID());
	m_pPlayer->GetPlayerMessages().AddDebugMsg("网络ID：0x%X(%d)",pSelfObject->GetCommID(),pSelfObject->GetCommID());
	//CSystemInfo::AddDebugInfo(m_pPlayer->GetIndex(),"网络句柄：0x%X(%d)",pSelfObject->GetHandle(),pSelfObject->GetHandle());
	m_pPlayer->GetPlayerMessages().AddDebugMsg("网络句柄：0x%X(%d)",pSelfObject->GetHandle(),pSelfObject->GetHandle());

	//CSystemInfo::Add(m_pPlayer->GetIndex(),"登陆角色名字：%s",pSelfObject->GetName());
	m_pPlayer->GetPlayerMessages().AddDebugMsg("登陆角色名字：%s",pSelfObject->GetName());
	if (pSelfObject->GetMottoName()=="")
	{
		//CSystemInfo::Add(m_pPlayer->GetIndex(),"登陆角色座右铭（空）");
		m_pPlayer->GetPlayerMessages().AddDebugMsg("登陆角色座右铭（空）");
	}
	else
	{
		//CSystemInfo::Add(m_pPlayer->GetIndex(),"登陆角色座右铭：%s",pSelfObject->GetMottoName());
		m_pPlayer->GetPlayerMessages().AddMsg("登陆角色座右铭：%s",pSelfObject->GetMottoName());
	}
	if (pSelfObject->GetGMLv())
	{
		//CSystemInfo::Add(m_pPlayer->GetIndex(),"注意：此帐号具有GM权限，权限等级为%d级",pSelfObject->GetGMLv());
		m_pPlayer->GetPlayerMessages().AddSystemMsg("注意：此帐号具有GM权限，权限等级为%d级",pSelfObject->GetGMLv());
	}
	//CSystemInfo::Add(m_pPlayer->GetIndex(),"当前位置：【地图名－%s】（%.2f，%.2f）  角度（%d）",m_pPlayer->GetMap().GetName(),m_pPlayer->GetMap().GetMainRolePosXMeter(),m_pPlayer->GetMap().GetMainRolePosYMeter(),m_pPlayer->GetMap().GetAngle());
	//CSystemInfo::Add(m_pPlayer->GetIndex(),"当前位置：【地图名－%s】（%.2f，%.2f）  角度（%d）",pSelfObject->GetMapName(),pSelfObject->GetPositionFloatX(),pSelfObject->GetPositionFloatY(),pSelfObject->GetAngle());
	m_pPlayer->GetPlayerMessages().AddSystemMsg("当前位置：【地图名－%s】（%.2f，%.2f）  角度（%d）",pSelfObject->GetMapName(),pSelfObject->GetPositionFloatX(),pSelfObject->GetPositionFloatY(),pSelfObject->GetAngle());


	//------------------------------------------------------------------------
	//	船只和装备相关内容 - 开始
	//------------------------------------------------------------------------
	pSelfObject->LoadEquipItems(pk);
	//pk.ReadShort();	//ID
	//if( pk.ReadChar() == 1 ) // 船的外观
	//{
	//	pk.ReadShort();
	//	pk.ReadShort();
	//	pk.ReadShort();
	//	pk.ReadShort();
	//	pk.ReadShort();
	//	pk.ReadShort();
	//	pk.ReadShort();
	//}
	//else
	//{
	//	pk.ReadShort();
	//	for (int i = 0; i < enumEQUIP_NUM; i++)
	//	{
	//		pk.ReadShort();
	//		pk.ReadShort();
	//		pk.ReadShort();
	//		pk.ReadShort();
	//		pk.ReadShort();
	//		pk.ReadShort();
	//		char chForgeLv=pk.ReadChar();
	//		if (pk.ReadChar()==0)
	//			continue;
	//		if (chForgeLv>0)
	//		{
	//			for (int j = 0; j < defITEM_FORGE_ATTR_NUM; j++)
	//			{
	//				pk.ReadShort();
	//				pk.ReadShort();
	//			}
	//		}
	//		if (pk.ReadChar()) // 存在实例属性
	//		{
	//			for (int j = 0; j < defITEM_INSTANCE_ATTR_NUM; j++)
	//			{
	//				pk.ReadShort();
	//				pk.ReadShort();
	//			}
	//		}
	//	}
	//}
	//------------------------------------------------------------------------
	//	船只和装备相关内容 - 结束
	//------------------------------------------------------------------------

	//------------------------------------------------------------------------
	//	PK相关内容 - 开始
	//------------------------------------------------------------------------
	pk.ReadChar();
	//------------------------------------------------------------------------
	//	PK相关内容 - 结束
	//------------------------------------------------------------------------

	//------------------------------------------------------------------------
	//	附加外观相关内容 - 开始
	//------------------------------------------------------------------------
	pSelfObject->LoadAppendEquipItmes(pk);
	//------------------------------------------------------------------------
	//	附加外观相关内容 - 结束
	//------------------------------------------------------------------------


	//------------------------------------------------------------------------
	//	取得技能表内容 - 开始
	//------------------------------------------------------------------------
	pk.ReadShort();
	pk.ReadChar();
	short sSkillNum=pk.ReadShort();
	for (short i = 0; i < sSkillNum; i++)
	{
		pk.ReadShort();
		pk.ReadChar();
		pk.ReadChar();
		pk.ReadShort();
		pk.ReadShort();
		pk.ReadShort();
		pk.ReadLong();
		if (pk.ReadShort() != enumRANGE_TYPE_NONE)
			for (short j = 1; j < defSKILL_RANGE_PARAM_NUM; j++)
				pk.ReadShort();
	}
	//------------------------------------------------------------------------
	//	取得技能表内容 - 结束
	//------------------------------------------------------------------------



	//------------------------------------------------------------------------
	//	取得技能状态内容 - 开始
	//------------------------------------------------------------------------
	short sNum = pk.ReadChar();
	if ( sNum>0 )
	{
		for (int nNum = 0; nNum < sNum; nNum++)
		{
			pk.ReadChar();
			pk.ReadChar();
		}
	}
	//------------------------------------------------------------------------
	//	取得技能状态内容 - 结束
	//------------------------------------------------------------------------



	//------------------------------------------------------------------------
	//	取得角色属性 - 开始
	//------------------------------------------------------------------------
	char t = pk.ReadChar();	//type
	WORD nNum=pk.ReadShort();
	pSelfObject->SetMaxAvailableAttribNum(nNum);
	for (WORD i = 0; i < nNum; i++)
	{
		WORD id=pk.ReadChar();
		
		if(id==ATTR_CEXP||id==ATTR_NLEXP ||id==ATTR_CLEXP)
			pSelfObject->SetAttribute(id,pk.ReadLongLong());
		else
			pSelfObject->SetAttribute(id,(long)pk.ReadLong());
	}
	//------------------------------------------------------------------------
	//	取得角色属性 - 结束
	//------------------------------------------------------------------------



	//------------------------------------------------------------------------
	//	取得物品包裹 - 开始
	//------------------------------------------------------------------------
	pSelfObject->LoadPacketItems(pk);
	//------------------------------------------------------------------------
	//	取得物品包裹 - 结束
	//------------------------------------------------------------------------


	//CSystemInfo::Add(m_pPlayer->GetIndex(),"登陆游戏服务器成功！");
	m_pPlayer->GetPlayerMessages().AddMsg("登陆游戏服务器成功！");
	m_pPlayer->SetLoginState(CPlayer::eLOGON_GAME);
	RefreshAllView();
}

void CReceiver::OnAction(dbc::RPacket& pk)
{
	DWORD worldID=pk.ReadLong();
#ifdef defPROTOCOL_HAVE_PACKETID
	DWORD dwPacketId = pk.ReadLong();
#endif
	switch(pk.ReadChar())
	{
	case enumACTION_MOVE:	//角色移动
		{
			WORD moveState=pk.ReadShort();
			WORD stopState=0;
			switch(moveState)
			{
			case enumMSTATE_ON:				// 移动中
				{
					break;
				}
			case enumMSTATE_ARRIVE:			// 到达目标点停止
			case enumMSTATE_BLOCK:			// 遇到障碍停止
			case enumMSTATE_CANCEL:			// 被要求停止
			case enumMSTATE_INRANGE:		// 已经到达要求的范围而停止
			case enumMSTATE_NOTARGET:		// 目标不存在而停止
			case enumMSTATE_CANTMOVE:		// 不能移动
				{
					stopState=pk.ReadShort();			// 停止状态enumEXISTS_WAITING或enumEXISTS_SLEEPING
					break;
				}
			}
			Point *psTurnPos;
			WORD walkPointsCount=0;
			psTurnPos=(Point*)pk.ReadSequence(walkPointsCount);
			walkPointsCount/=sizeof(Point);
			DWORD lastPosX=psTurnPos[walkPointsCount-1].x;
			DWORD lastPosY=psTurnPos[walkPointsCount-1].y;
			CRoleObject *object=m_pPlayer->GetRoleMgr().FindRoleObject(worldID);
			if (object==NULL)
			{
				//CSystemInfo::AddSystemInfo(m_pPlayer->GetIndex(),"发现错误：未知的角色移动！WorldID=%d,移动路点数=%d,目的坐标(%.0f,%.0f)",worldID,walkPointsCount,float(lastPosX)/100,float(lastPosY)/100);
				m_pPlayer->GetPlayerMessages().AddMsg("发现错误：未知的角色移动！WorldID=%d,移动路点数=%d,目的坐标(%.0f,%.0f)",worldID,walkPointsCount,float(lastPosX)/100,float(lastPosY)/100);
				break;
			}
			if (object->GetType()==CRoleObject::eSelf)
			{
				if (object==m_pPlayer->GetRoleMgr().GetSelfObject())
				{
					//CSystemInfo::AddInfo(m_pPlayer->GetIndex(),"自己从(%.2f,%.2f)往目标(%.0f,%.0f)移动，移动距离:%.1f",
					//	object->GetPositionFloatX(),object->GetPositionFloatY(),float(lastPosX)/100,float(lastPosY)/100,object->GetDistanceInFloatTo(lastPosX,lastPosY));
					m_pPlayer->GetPlayerMessages().AddSystemMsg("自己从(%.2f,%.2f)往目标(%.0f,%.0f)移动，移动距离:%.1f",
						object->GetPositionFloatX(),object->GetPositionFloatY(),float(lastPosX)/100,float(lastPosY)/100,object->GetDistanceInFloatTo(lastPosX,lastPosY));
					object->SetPosition(lastPosX,lastPosY);
					RefreshMapPosition();
				}
				else
				{
					//CSystemInfo::AddInfo(m_pPlayer->GetIndex(),"发现错误：自己在移动，但没有找到\"自己\"的对象（自己已经消失）");
					m_pPlayer->GetPlayerMessages().AddMsg("发现错误：自己在移动，但没有找到\"自己\"的对象（自己已经消失）");
				}
				break;
			}
			else if (object->GetType()==CRoleObject::ePlayer)
			{
				//CSystemInfo::AddInfo(m_pPlayer->GetIndex(),"玩家：【%s】从(%.0f,%.0f)往目标(%.0f,%.0f)移动，移动距离:%.1f",object->GetName(),
				//	object->GetPositionFloatX(),object->GetPositionFloatY(),float(lastPosX)/100,float(lastPosY)/100,object->GetDistanceInFloatTo(lastPosX,lastPosY));
				m_pPlayer->GetPlayerMessages().AddSystemMsg("玩家：【%s】从(%.0f,%.0f)往目标(%.0f,%.0f)移动，移动距离:%.1f",object->GetName(),
					object->GetPositionFloatX(),object->GetPositionFloatY(),float(lastPosX)/100,float(lastPosY)/100,object->GetDistanceInFloatTo(lastPosX,lastPosY));
				if (moveState!=enumMSTATE_ON)
				{
					RefreshRolePosition(object);
				}
			}
			else if (object->GetType()==CRoleObject::eNPC)
			{
				//CSystemInfo::AddInfo(m_pPlayer->GetIndex(),"NPC【%s】从(%.0f,%.0f)往目标(%.0f,%.0f)移动，移动距离:%.1f",object->GetName(),
				//	object->GetPositionFloatX(),object->GetPositionFloatY(),float(lastPosX)/100,float(lastPosY)/100,object->GetDistanceInFloatTo(lastPosX,lastPosY));
				m_pPlayer->GetPlayerMessages().AddSystemMsg("NPC【%s】从(%.0f,%.0f)往目标(%.0f,%.0f)移动，移动距离:%.1f",object->GetName(),
						object->GetPositionFloatX(),object->GetPositionFloatY(),float(lastPosX)/100,float(lastPosY)/100,object->GetDistanceInFloatTo(lastPosX,lastPosY));
				if (moveState!=enumMSTATE_ON)
				{
					RefreshRolePosition(object);
				}
			}
			else if (object->GetType()==CRoleObject::eMonster)
			{
				//CSystemInfo::AddInfo(m_pPlayer->GetIndex(),"怪物【%s<%d>】从(%.0f,%.0f)往目标(%.0f,%.0f)移动，移动距离:%.1f",object->GetName(),((CMonsterObject*)object)->GetMonsterIndex(),
				//	object->GetPositionFloatX(),object->GetPositionFloatY(),float(lastPosX)/100,float(lastPosY)/100,object->GetDistanceInFloatTo(lastPosX,lastPosY));
				m_pPlayer->GetPlayerMessages().AddSystemMsg("怪物【%s<%d>】从(%.0f,%.0f)往目标(%.0f,%.0f)移动，移动距离:%.1f",object->GetName(),((CMonsterObject*)object)->GetMonsterIndex(),
					object->GetPositionFloatX(),object->GetPositionFloatY(),float(lastPosX)/100,float(lastPosY)/100,object->GetDistanceInFloatTo(lastPosX,lastPosY));
				if (moveState!=enumMSTATE_ON)
				{
					RefreshRolePosition(object);
				}
			}
			else
			{
				//CSystemInfo::AddInfo(m_pPlayer->GetIndex(),"未知类型物体移动：从(%.0f,%.0f)往目标(%.0f,%.0f)移动，移动距离:%.1f",object->GetName(),
				//	object->GetPositionFloatX(),object->GetPositionFloatY(),float(lastPosX)/100,float(lastPosY)/100,object->GetDistanceInFloatTo(lastPosX,lastPosY));
				m_pPlayer->GetPlayerMessages().AddSystemMsg("未知类型物体移动：从(%.0f,%.0f)往目标(%.0f,%.0f)移动，移动距离:%.1f",object->GetName(),
					object->GetPositionFloatX(),object->GetPositionFloatY(),float(lastPosX)/100,float(lastPosY)/100,object->GetDistanceInFloatTo(lastPosX,lastPosY));
			}
			object->SetPosition(lastPosX,lastPosY);
			break;
		}
	case enumACTION_KITBAG:		// 更新角色道具栏
		{
			m_pPlayer->GetRoleMgr().GetSelfObject()->LoadPacketItems(pk);
			RefreshRolePacket();
			break;
		}
	case enumACTION_LOOK:		// 更新角色外观(船只和装备)
		{
			m_pPlayer->GetRoleMgr().GetSelfObject()->LoadEquipItems(pk);
			break;
		}
		//------------------------------------------------------------------------
		//	未完全解析
		//------------------------------------------------------------------------
	}
}

void CReceiver::SomethingAppear(dbc::RPacket& pk)
{
	pk.ReadChar();
	CRoleObject* roleObject=CRoleObject::CreateObject(pk);
	if (!m_pPlayer->GetRoleMgr().AddRoleObject(roleObject))
	{
		SAFE_DELETE(roleObject);
	}
	//------------------------------------------------------------------------
	//	未完全解析
	//------------------------------------------------------------------------
	RefreshRoleList(roleObject,true);
}

void CReceiver::SomethingDisappear(dbc::RPacket& pk)
{
	pk.ReadChar();
	DWORD dwWorldID=pk.ReadLong();
	CRoleObject* roleObject=m_pPlayer->GetRoleMgr().FindRoleObject(dwWorldID);
	if (!roleObject)
	{
		CSystemInfo::AddSystemInfo(m_pPlayer->GetIndex(),"错误！一个不存在的角色消失了");
		m_pPlayer->GetPlayerMessages().AddMsg("错误！一个不存在的角色消失了");
		return;
	}
	RefreshRoleList(roleObject,false);
	m_pPlayer->GetRoleMgr().DeleteObject(dwWorldID);
}

void CReceiver::ItemAppear(dbc::RPacket& pk)
{
	CSelfObject *pSelf=m_pPlayer->GetRoleMgr().GetSelfObject();
	if (!pSelf)
	{
		return;
	}
	CGroundObject *pGroundItem=new CGroundObject(pk);
	//pGroundItem->SetWorldID(pk.ReadLong());
	//pGroundItem->SetHandle(pk.ReadLong());
	//pGroundItem->SetItemID(pk.ReadLong());
	//DWORD x=pk.ReadLong();
	//DWORD y=pk.ReadLong();
	//pGroundItem->SetPosition(x,y);
	//pGroundItem->SetAngle(pk.ReadShort());
	//pGroundItem->SetTotalNum(pk.ReadShort());
	//pk.ReadShort();	//事件编号
	//pGroundItem->SetAppearCause((EItemAppearType)pk.ReadChar());
	//pGroundItem->SetOwnerWorldID(pk.ReadLong());
	pSelf->AddGroundItem(pGroundItem);
	RefreshGroundItemList(pGroundItem,true);
}

void CReceiver::ItemDisappear(dbc::RPacket& pk)
{
	CSelfObject *pSelf=m_pPlayer->GetRoleMgr().GetSelfObject();
	if (!pSelf)
	{
		return;
	}
	DWORD dwWorldId=pk.ReadLong();
	CGroundObject* pGroundItem=pSelf->FindGroundItem(dwWorldId);
	RefreshGroundItemList(pGroundItem,false);
	pSelf->DeleteGroundItem(dwWorldId);
}

void CReceiver::SynAttribute(dbc::RPacket& pk)
{
	CSelfObject *pSelf=m_pPlayer->GetRoleMgr().GetSelfObject();
	if (!pSelf)
	{
		return;
	}
	DWORD worldID=pk.ReadLong();
	if (pSelf->GetWorldID()!=worldID)
	{
		return;
	}
	pk.ReadChar();	//type
	WORD nNum=pk.ReadShort();
	pSelf->SetMaxAvailableAttribNum(nNum);
	for (WORD i = 0; i < nNum; i++)
	{
		WORD id=pk.ReadChar();
		long var=pk.ReadLong();
		pSelf->SetAttribute(id,var);
	}
	RefreshRoleAttribute();
}

void CReceiver::Chat_SystemChannel(dbc::RPacket& pk)
{
	WORD len;
	CString strInfo=pk.ReadSequence(len);
	m_pPlayer->GetChatMgr().GetChannelChatMgr().AddInfo(CChannelChatMgr::CHANNEL_SYSTEM,NULL,strInfo);
	RefreshChat(CChannelChatMgr::CHANNEL_SYSTEM);
	m_pPlayer->SetTotalPlayerCount(strInfo);
}

void CReceiver::Chat_PrivateChannel(dbc::RPacket& pk)
{
	CString strSrcName=pk.ReadString();
	CString strDesName=pk.ReadString();
	CString strInfo=pk.ReadString();
	CSelfObject* pSelf=m_pPlayer->GetRoleMgr().GetSelfObject();
	if (strSrcName.IsEmpty() && strDesName.IsEmpty() && strInfo.IsEmpty())
	{
		return;
	}
	if (pSelf && pSelf->GetName()==strSrcName)
	{
		strInfo="<To "+strDesName+">:"+strInfo;
		m_pPlayer->GetChatMgr().GetPrivateRivalMgr().OnRivalMessage(strDesName,true);
		m_pPlayer->GetChatMgr().GetChannelChatMgr().AddInfo(CChannelChatMgr::CHANNEL_PRIVATE,strDesName,strInfo);
	}
	else
	{
		strInfo="<From "+strSrcName+">:"+strInfo;
		m_pPlayer->GetChatMgr().GetPrivateRivalMgr().OnRivalMessage(strSrcName,false);
		m_pPlayer->GetChatMgr().GetChannelChatMgr().AddInfo(CChannelChatMgr::CHANNEL_PRIVATE,strSrcName,strInfo);
	}
	RefreshChat(CChannelChatMgr::CHANNEL_PRIVATE);
}

void CReceiver::Chat_WorldChannel(dbc::RPacket& pk)
{
	CString strSrcName=pk.ReadString();
	CString strInfo=pk.ReadString();
	strInfo=strSrcName+":"+strInfo;
	m_pPlayer->GetChatMgr().GetChannelChatMgr().AddInfo(CChannelChatMgr::CHANNEL_WORLD,strSrcName,strInfo);
	RefreshChat(CChannelChatMgr::CHANNEL_WORLD);
}

void CReceiver::Chat_TradeChannel(dbc::RPacket& pk)
{
	CString strSrcName=pk.ReadString();
	CString strInfo=pk.ReadString();
	strInfo=strSrcName+":"+strInfo;
	m_pPlayer->GetChatMgr().GetChannelChatMgr().AddInfo(CChannelChatMgr::CHANNEL_TRADE,strSrcName,strInfo);
	RefreshChat(CChannelChatMgr::CHANNEL_TRADE);
}

void CReceiver::Chat_PublishChannel(dbc::RPacket& pk)
{
	CString strSrcName=pk.ReadString();
	CString strInfo=pk.ReadString();
	strInfo=strSrcName+":"+strInfo;
	m_pPlayer->GetChatMgr().GetChannelChatMgr().AddInfo(CChannelChatMgr::CHANNEL_PUBLISH,strSrcName,strInfo);
	RefreshChat(CChannelChatMgr::CHANNEL_PUBLISH);
}

void CReceiver::Chat_SightChannel(dbc::RPacket& pk)
{
	DWORD dwSrcID=pk.ReadLong();
	CString strInfo=pk.ReadString();
	CPlayerObject* pPlayerObject=m_pPlayer->GetRoleMgr().FindInPlayerList(dwSrcID);
	CNPCObject* pNPCObject=m_pPlayer->GetRoleMgr().FindInNPCList(dwSrcID);
	CMonsterObject* pMonsterObject=m_pPlayer->GetRoleMgr().FindInMonsterList(dwSrcID);
	if (pPlayerObject)
	{
		strInfo=pPlayerObject->GetName()+":"+strInfo;
		m_pPlayer->GetChatMgr().GetChannelChatMgr().AddInfo(CChannelChatMgr::CHANNEL_SIGHT,pPlayerObject->GetName(),strInfo);
	}
	else if (pNPCObject)
	{
		m_pPlayer->GetPlayerMessages().AddSystemMsg("警告:发现NPC在说话!WorldID=%d 内容=%s",dwSrcID,strInfo);
		strInfo=pNPCObject->GetName()+"(NPC):"+strInfo;
		m_pPlayer->GetChatMgr().GetChannelChatMgr().AddInfo(CChannelChatMgr::CHANNEL_SIGHT,pNPCObject->GetName(),strInfo);
	}
	else if (pMonsterObject)
	{
		m_pPlayer->GetPlayerMessages().AddSystemMsg("警告:发现怪物在说话!WorldID=%d 内容=%s",dwSrcID,strInfo);
		strInfo=pMonsterObject->GetName()+"(怪物):"+strInfo;
		m_pPlayer->GetChatMgr().GetChannelChatMgr().AddInfo(CChannelChatMgr::CHANNEL_SIGHT,pMonsterObject->GetName(),strInfo);
	}
	else
	{
		CSelfObject* pSelf=m_pPlayer->GetRoleMgr().GetSelfObject();
		if (!pSelf || pSelf->GetWorldID()!=dwSrcID)
		{
			m_pPlayer->GetPlayerMessages().AddSystemMsg("警告:视野内发现有未知对象在说话,丢弃!WorldID=%d 内容=%s",dwSrcID,strInfo);
			return;
		}
		strInfo=pSelf->GetName()+"(自己):"+strInfo;
		m_pPlayer->GetChatMgr().GetChannelChatMgr().AddInfo(CChannelChatMgr::CHANNEL_SIGHT,pSelf->GetName(),strInfo);
	}
	RefreshChat(CChannelChatMgr::CHANNEL_SIGHT);
}

void CReceiver::OnGetCharacterInfo(dbc::RPacket& pk)
{
	DWORD dwSelfID=pk.ReadLong();
	CString strCharName=pk.ReadString();
	CString strMapName=pk.ReadString();
	DWORD dwPosX=pk.ReadLong();
	DWORD dwPosY=pk.ReadLong();
	DWORD dwCharID=pk.ReadLong();				//重复发送
	CString strInfo;
	strInfo.Format("查询角色［%s］操作成功! 角色ID:%d 所在地图:%s 坐标(%.2f,%.2f)",strCharName,dwCharID,strMapName,((float)dwPosX)/100,((float)dwPosY)/100);
	m_pPlayer->GetChatMgr().GetChannelChatMgr().AddInfo(CChannelChatMgr::CHANNEL_SYSTEM,NULL,strInfo);
	RefreshChat(CChannelChatMgr::CHANNEL_SYSTEM);
}

