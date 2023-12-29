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
		//CSystemInfo::AddDebugInfo(m_pPlayer->GetIndex(),"���յ���Ч��������");
		m_pPlayer->GetPlayerMessages().AddDebugMsg("���յ���Ч��������");
		return;
	}
	WORD nCmdType = recvbuf.ReadCmd();
	DWORD dwBufLen = recvbuf.GetDataLen();
	//CString str;
	//str.Format("���յ�������ؼ���:%d ���ݳ���:%d",nCmdType,dwBufLen);
	//CSystemInfo::AddDebugInfo(m_pPlayer->GetIndex(),"���յ�������ؼ���:%d ���ݳ���:%d",nCmdType,dwBufLen);
	m_pPlayer->GetPlayerMessages().AddDebugMsg("���յ�������ؼ���:%d ���ݳ���:%d",nCmdType,dwBufLen);
	switch(nCmdType)
	{
		case CMD_MC_CHAPSTR:				//��õ�½�ʺ�����ļ��ܴ������Ӻ��������յ�
			{
				OnGetLoginKey(recvbuf);		//��ȫ������
				break;
			}
		case CMD_MC_LOGIN:					//��½��ɫ���������ÿ�ѡ���ɫ���б�
			{
				OnLogin(recvbuf);			//��ȫ������
				break;
			}
		case CMD_MC_NEWCHA:					//������ɫ
			{
				OnCreateCharacter(recvbuf);	//��ȫ������
				break;
			}
		case CMD_MC_DELCHA:					//ɾ����ɫ
			{
				OnDeleteCharacter(recvbuf);	//��ȫ������
				break;
			}
		case CMD_MC_ENTERMAP:				//��ɫ��½��ͼ
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
		case CMD_MC_NOTIACTION:				//��ɫ��Ϊ(�ƶ�,����...)
			{
				OnAction(recvbuf);
				break;
			}
		case CMD_MC_CHABEGINSEE:			//��ɫ����ң�NPC�������������Ұ
			{
				SomethingAppear(recvbuf);
				break;
			}
		case CMD_MC_CHAENDSEE:				//��ɫ����ң�NPC���������Ұ��ʧ
			{
				SomethingDisappear(recvbuf);//��ȫ������
				break;
			}
		case CMD_MC_ITEMBEGINSEE:			//��Ʒ����
			{
				ItemAppear(recvbuf);
				break;
			}
		case CMD_MC_ITEMENDSEE:				//��Ʒ��ʧ
			{
				ItemDisappear(recvbuf);
				break;
			}
		case CMD_MC_SYNATTR:				//��ɫ����ͬ��
			{
				SynAttribute(recvbuf);
				break;
			}
		case CMD_MC_SYSINFO:				//ϵͳƵ��
			{
				Chat_SystemChannel(recvbuf);
				break;
			}
		case CMD_PC_SAY2YOU:				//˽��
			{
				Chat_PrivateChannel(recvbuf);	//��ȫ������
				break;
			}
		case CMD_PC_SAY2TEM:				//����
			{
				//Chat_TeamChannel(recvbuf);
				break;
			}
		case CMD_PC_SAY2ALL:				//����
			{
				Chat_WorldChannel(recvbuf);		//��ȫ������
				break;
			}
		case CMD_PC_SAY2TRADE:				//����
			{
				Chat_TradeChannel(recvbuf);		//��ȫ������
				break;
			}
		case CMD_PC_GM1SAY:					//����
			{
				Chat_PublishChannel(recvbuf);	//��ȫ������
				break;
			}
		case CMD_MC_SAY:					//��Ұ
			{
				Chat_SightChannel(recvbuf);		//��ȫ������
				break;
			}
		case CMD_MC_QUERY_CHA:				//ͨ��GMָ���ѯ�����Ϣ�ķ�������
			{
				OnGetCharacterInfo(recvbuf);
				break;
			}
		default:
			{
				//CSystemInfo::AddDetailDebugInfo(m_pPlayer->GetIndex(),"����δ���ͣ�δ֪�ķ����ʽ������");
				m_pPlayer->GetPlayerMessages().AddDebugMsg("����δ���ͣ�δ֪�ķ����ʽ������");
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
	//CSystemInfo::AddDetailDebugInfo(m_pPlayer->GetIndex(),"�ɹ����ͬ���ܳף�%s",m_pNet->GetConnectKey().GetLoginKey());
	m_pPlayer->GetPlayerMessages().AddSystemMsg("�ɹ����ͬ���ܳף�%s",m_pNet->GetConnectKey().GetLoginKey());
	m_pPlayer->SetLoginState(CPlayer::eLOGON_GROUP);
}

void CReceiver::OnCreateCharacter(dbc::RPacket& pk)
{
	WORD nErr=pk.ReadShort();
	if (nErr==0)
	{
		//CSystemInfo::Add(m_pPlayer->GetIndex(),"������Ϸ��ɫ�ɹ�!");
		m_pPlayer->GetPlayerMessages().AddSystemMsg("������Ϸ��ɫ�ɹ�!");
		m_pPlayer->SetLoginState(CPlayer::eCREATE_CHAR_END);
		m_pPlayer->SetRoleCount(m_pPlayer->GetRoleCount()+1);
	}
	else
	{
		//CSystemInfo::Add(m_pPlayer->GetIndex(),"������Ϸ��ɫʧ��!");
		m_pPlayer->GetPlayerMessages().AddSystemMsg("������Ϸ��ɫʧ��!");
		m_pPlayer->SetLoginState(CPlayer::eCREATE_CHAR_ERROR);
	}
}

void CReceiver::OnDeleteCharacter(dbc::RPacket& pk)
{
	WORD nErr=pk.ReadShort();
	if (nErr==0)
	{
		//CSystemInfo::Add(m_pPlayer->GetIndex(),"ɾ����Ϸ��ɫ�ɹ�!");
		m_pPlayer->GetPlayerMessages().AddSystemMsg("ɾ����Ϸ��ɫ�ɹ�!");
		m_pPlayer->SetLoginState(CPlayer::eDELETE_CHAR_END);
		m_pPlayer->SetRoleCount(m_pPlayer->GetRoleCount()-1);
	}
	else
	{
		//CSystemInfo::Add(m_pPlayer->GetIndex(),"ɾ����Ϸ��ɫʧ��!");
		m_pPlayer->GetPlayerMessages().AddSystemMsg("ɾ����Ϸ��ɫʧ��!");
		m_pPlayer->SetLoginState(CPlayer::eDELETE_CHAR_ERROR);
	}
}

void CReceiver::OnLogin(dbc::RPacket& pk)
{
	DWORD nError=pk.ReadShort();
	if (nError==0)
	{//��½�ɹ�
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
			//CSystemInfo::AddDebugInfo(m_pPlayer->GetIndex(),"�ɹ���ý�ɫ�б���%d�ˣ�",m_pPlayer->GetRoleCount());
			m_pPlayer->GetPlayerMessages().AddSystemMsg("�ɹ���ý�ɫ�б���%d�ˣ�",m_pPlayer->GetRoleCount());
			//CSystemInfo::AddDebugInfo(m_pPlayer->GetIndex(),"��������������������������������������������������������������");
			m_pPlayer->GetPlayerMessages().AddDebugMsg("��������������������������������������������������������������");
			for (int i=0;i<m_pPlayer->GetRoleCount();i++)
			{
				//CSystemInfo::AddDebugInfo(m_pPlayer->GetIndex(),"\t%d�Ž�ɫ�� ���֣�%-16s\tְҵ��%s\t�ȼ���%d",i,
				//	m_pPlayer->GetRoleFormList(i).GetName(),m_pPlayer->GetRoleFormList(i).GetJobName(),m_pPlayer->GetRoleFormList(i).Getlevel());
				m_pPlayer->GetPlayerMessages().AddDebugMsg("    %d�Ž�ɫ�� ���֣�%-16s    ְҵ��%s    �ȼ���%d",i,
					m_pPlayer->GetRoleFormList(i).GetName(),m_pPlayer->GetRoleFormList(i).GetJobName(),m_pPlayer->GetRoleFormList(i).Getlevel());
			}
			//CSystemInfo::AddDebugInfo(m_pPlayer->GetIndex(),"��������������������������������������������������������������");
			m_pPlayer->GetPlayerMessages().AddDebugMsg("��������������������������������������������������������������");
		}
		else
		{
			//CSystemInfo::AddSystemInfo(m_pPlayer->GetIndex(),"δ������Ϸ��ɫ�����ȴ�����ɫ����");
			m_pPlayer->GetPlayerMessages().AddSystemMsg("δ������Ϸ��ɫ�����ȴ�����ɫ����");
		}

		//�����ܳ�
		int sKeyLen=0;
		char sKey[1024];
		KCHAPc chap(m_pPlayer->GetLoginData()->GetAccountName(),m_pPlayer->GetLoginData()->GetPassword());
		chap.GetSessionClrKey((void*)keyBuf,keyBufLen,sKey,sizeof(sKey),sKeyLen);
		sKey[sKeyLen]=0;
		m_pNet->GetConnectKey().SetKey(sKey,pk.ReadLong());
        DWORD flag = pk.ReadLong();
		char buf[20];
		CString strInfo;
		strInfo.Format("����ܳ�[Coder=%d Len=%d]��",m_pNet->GetConnectKey().GetEncoder(),m_pNet->GetConnectKey().GetKeyLength());
		for (int i=0;i<m_pNet->GetConnectKey().GetKeyLength();i++)
		{
			sprintf(buf,"0x%02hX ",sKey[i]);
			strInfo+=buf;
		}
		//CSystemInfo::AddDetailDebugInfo(m_pPlayer->GetIndex(),strInfo);
		m_pPlayer->GetPlayerMessages().AddSystemMsg(strInfo);
		//CSystemInfo::Add(m_pPlayer->GetIndex(),"��½�ʺŷ������ɹ���");
		m_pPlayer->GetPlayerMessages().AddMsg("��½�ʺŷ������ɹ���");
		m_pPlayer->SetLoginState(CPlayer::eLOGON_ACCOUNT);
	}
	else
	{//��½ʧ��
		//CSystemInfo::Add(m_pPlayer->GetIndex(),"��½ʧ�ܣ��������:%d ԭ��:%s",nError,g_GetServerError(nError));
		m_pPlayer->GetPlayerMessages().AddMsg("��½ʧ�ܣ��������:%d ԭ��:%s",nError,g_GetServerError(nError));
		m_pPlayer->SetLoginState(CPlayer::eERROR_ACCOUNT);
	}
}

void CReceiver::OnError(dbc::RPacket& pk)
{
	int nError=pk.ReadShort();
	//CSystemInfo::Add(m_pPlayer->GetIndex(),"��½ʧ�ܣ��������:%d ԭ��:%s",nError,g_GetServerError(nError));
	m_pPlayer->GetPlayerMessages().AddMsg("��½ʧ�ܣ��������:%d ԭ��:%s",nError,g_GetServerError(nError));
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
		//CSystemInfo::AddSystemInfo(m_pPlayer->GetIndex(),"��½ʧ�ܣ�%s",g_GetServerError(nError));
		m_pPlayer->GetPlayerMessages().AddMsg("��½ʧ�ܣ��������:%d ԭ��:%s",nError,g_GetServerError(nError));
		m_pPlayer->SetLoginState(CPlayer::eERROR);
		return;
	}

	// ��ȡ��״̬
	bool bAutoLock   = pk.ReadChar() ? true : false;	// �Զ���״̬
	bool bKitbagLock = pk.ReadChar() ? true : false;	// �Ƿ���������

	BYTE type=pk.ReadChar();	//���ͼ�л��Ƿ񲥷��л�����
	pk.ReadChar();				//�Ƿ�����(��ʾ���ְ���)
	ResetAllView();
	CString mapName=pk.ReadString();
	//m_pPlayer->GetMap().SetName();
	pk.ReadChar();				//�Ƿ�������
	CSelfObject* pSelfObject=static_cast<CSelfObject*>(CRoleObject::CreateSelfObject(pk));
	if (!m_pPlayer->GetRoleMgr().AddSelfObject(pSelfObject))
	{
		//CSystemInfo::AddSystemInfo(m_pPlayer->GetIndex(),"���ش��󣡣���½��Ϸ���������ò���ȷ��������Ϣ");
		m_pPlayer->GetPlayerMessages().AddMsg("���ش��󣡣���½��Ϸ���������ò���ȷ��������Ϣ");
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


	//CSystemInfo::AddDebugInfo(m_pPlayer->GetIndex(),"����ID��0x%X(%d)",pSelfObject->GetWorldID(),pSelfObject->GetWorldID());
	m_pPlayer->GetPlayerMessages().AddDebugMsg("����ID��0x%X(%d)",pSelfObject->GetWorldID(),pSelfObject->GetWorldID());
	//CSystemInfo::AddDebugInfo(m_pPlayer->GetIndex(),"��ɫID��0x%X(%d)",pSelfObject->GetCharID(),pSelfObject->GetCharID());
	m_pPlayer->GetPlayerMessages().AddDebugMsg("��ɫID��0x%X(%d)",pSelfObject->GetCharID(),pSelfObject->GetCharID());
	//CSystemInfo::AddDebugInfo(m_pPlayer->GetIndex(),"����ID��0x%X(%d)",pSelfObject->GetCommID(),pSelfObject->GetCommID());
	m_pPlayer->GetPlayerMessages().AddDebugMsg("����ID��0x%X(%d)",pSelfObject->GetCommID(),pSelfObject->GetCommID());
	//CSystemInfo::AddDebugInfo(m_pPlayer->GetIndex(),"��������0x%X(%d)",pSelfObject->GetHandle(),pSelfObject->GetHandle());
	m_pPlayer->GetPlayerMessages().AddDebugMsg("��������0x%X(%d)",pSelfObject->GetHandle(),pSelfObject->GetHandle());

	//CSystemInfo::Add(m_pPlayer->GetIndex(),"��½��ɫ���֣�%s",pSelfObject->GetName());
	m_pPlayer->GetPlayerMessages().AddDebugMsg("��½��ɫ���֣�%s",pSelfObject->GetName());
	if (pSelfObject->GetMottoName()=="")
	{
		//CSystemInfo::Add(m_pPlayer->GetIndex(),"��½��ɫ���������գ�");
		m_pPlayer->GetPlayerMessages().AddDebugMsg("��½��ɫ���������գ�");
	}
	else
	{
		//CSystemInfo::Add(m_pPlayer->GetIndex(),"��½��ɫ��������%s",pSelfObject->GetMottoName());
		m_pPlayer->GetPlayerMessages().AddMsg("��½��ɫ��������%s",pSelfObject->GetMottoName());
	}
	if (pSelfObject->GetGMLv())
	{
		//CSystemInfo::Add(m_pPlayer->GetIndex(),"ע�⣺���ʺž���GMȨ�ޣ�Ȩ�޵ȼ�Ϊ%d��",pSelfObject->GetGMLv());
		m_pPlayer->GetPlayerMessages().AddSystemMsg("ע�⣺���ʺž���GMȨ�ޣ�Ȩ�޵ȼ�Ϊ%d��",pSelfObject->GetGMLv());
	}
	//CSystemInfo::Add(m_pPlayer->GetIndex(),"��ǰλ�ã�����ͼ����%s����%.2f��%.2f��  �Ƕȣ�%d��",m_pPlayer->GetMap().GetName(),m_pPlayer->GetMap().GetMainRolePosXMeter(),m_pPlayer->GetMap().GetMainRolePosYMeter(),m_pPlayer->GetMap().GetAngle());
	//CSystemInfo::Add(m_pPlayer->GetIndex(),"��ǰλ�ã�����ͼ����%s����%.2f��%.2f��  �Ƕȣ�%d��",pSelfObject->GetMapName(),pSelfObject->GetPositionFloatX(),pSelfObject->GetPositionFloatY(),pSelfObject->GetAngle());
	m_pPlayer->GetPlayerMessages().AddSystemMsg("��ǰλ�ã�����ͼ����%s����%.2f��%.2f��  �Ƕȣ�%d��",pSelfObject->GetMapName(),pSelfObject->GetPositionFloatX(),pSelfObject->GetPositionFloatY(),pSelfObject->GetAngle());


	//------------------------------------------------------------------------
	//	��ֻ��װ��������� - ��ʼ
	//------------------------------------------------------------------------
	pSelfObject->LoadEquipItems(pk);
	//pk.ReadShort();	//ID
	//if( pk.ReadChar() == 1 ) // �������
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
	//		if (pk.ReadChar()) // ����ʵ������
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
	//	��ֻ��װ��������� - ����
	//------------------------------------------------------------------------

	//------------------------------------------------------------------------
	//	PK������� - ��ʼ
	//------------------------------------------------------------------------
	pk.ReadChar();
	//------------------------------------------------------------------------
	//	PK������� - ����
	//------------------------------------------------------------------------

	//------------------------------------------------------------------------
	//	�������������� - ��ʼ
	//------------------------------------------------------------------------
	pSelfObject->LoadAppendEquipItmes(pk);
	//------------------------------------------------------------------------
	//	�������������� - ����
	//------------------------------------------------------------------------


	//------------------------------------------------------------------------
	//	ȡ�ü��ܱ����� - ��ʼ
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
	//	ȡ�ü��ܱ����� - ����
	//------------------------------------------------------------------------



	//------------------------------------------------------------------------
	//	ȡ�ü���״̬���� - ��ʼ
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
	//	ȡ�ü���״̬���� - ����
	//------------------------------------------------------------------------



	//------------------------------------------------------------------------
	//	ȡ�ý�ɫ���� - ��ʼ
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
	//	ȡ�ý�ɫ���� - ����
	//------------------------------------------------------------------------



	//------------------------------------------------------------------------
	//	ȡ����Ʒ���� - ��ʼ
	//------------------------------------------------------------------------
	pSelfObject->LoadPacketItems(pk);
	//------------------------------------------------------------------------
	//	ȡ����Ʒ���� - ����
	//------------------------------------------------------------------------


	//CSystemInfo::Add(m_pPlayer->GetIndex(),"��½��Ϸ�������ɹ���");
	m_pPlayer->GetPlayerMessages().AddMsg("��½��Ϸ�������ɹ���");
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
	case enumACTION_MOVE:	//��ɫ�ƶ�
		{
			WORD moveState=pk.ReadShort();
			WORD stopState=0;
			switch(moveState)
			{
			case enumMSTATE_ON:				// �ƶ���
				{
					break;
				}
			case enumMSTATE_ARRIVE:			// ����Ŀ���ֹͣ
			case enumMSTATE_BLOCK:			// �����ϰ�ֹͣ
			case enumMSTATE_CANCEL:			// ��Ҫ��ֹͣ
			case enumMSTATE_INRANGE:		// �Ѿ�����Ҫ��ķ�Χ��ֹͣ
			case enumMSTATE_NOTARGET:		// Ŀ�겻���ڶ�ֹͣ
			case enumMSTATE_CANTMOVE:		// �����ƶ�
				{
					stopState=pk.ReadShort();			// ֹͣ״̬enumEXISTS_WAITING��enumEXISTS_SLEEPING
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
				//CSystemInfo::AddSystemInfo(m_pPlayer->GetIndex(),"���ִ���δ֪�Ľ�ɫ�ƶ���WorldID=%d,�ƶ�·����=%d,Ŀ������(%.0f,%.0f)",worldID,walkPointsCount,float(lastPosX)/100,float(lastPosY)/100);
				m_pPlayer->GetPlayerMessages().AddMsg("���ִ���δ֪�Ľ�ɫ�ƶ���WorldID=%d,�ƶ�·����=%d,Ŀ������(%.0f,%.0f)",worldID,walkPointsCount,float(lastPosX)/100,float(lastPosY)/100);
				break;
			}
			if (object->GetType()==CRoleObject::eSelf)
			{
				if (object==m_pPlayer->GetRoleMgr().GetSelfObject())
				{
					//CSystemInfo::AddInfo(m_pPlayer->GetIndex(),"�Լ���(%.2f,%.2f)��Ŀ��(%.0f,%.0f)�ƶ����ƶ�����:%.1f",
					//	object->GetPositionFloatX(),object->GetPositionFloatY(),float(lastPosX)/100,float(lastPosY)/100,object->GetDistanceInFloatTo(lastPosX,lastPosY));
					m_pPlayer->GetPlayerMessages().AddSystemMsg("�Լ���(%.2f,%.2f)��Ŀ��(%.0f,%.0f)�ƶ����ƶ�����:%.1f",
						object->GetPositionFloatX(),object->GetPositionFloatY(),float(lastPosX)/100,float(lastPosY)/100,object->GetDistanceInFloatTo(lastPosX,lastPosY));
					object->SetPosition(lastPosX,lastPosY);
					RefreshMapPosition();
				}
				else
				{
					//CSystemInfo::AddInfo(m_pPlayer->GetIndex(),"���ִ����Լ����ƶ�����û���ҵ�\"�Լ�\"�Ķ����Լ��Ѿ���ʧ��");
					m_pPlayer->GetPlayerMessages().AddMsg("���ִ����Լ����ƶ�����û���ҵ�\"�Լ�\"�Ķ����Լ��Ѿ���ʧ��");
				}
				break;
			}
			else if (object->GetType()==CRoleObject::ePlayer)
			{
				//CSystemInfo::AddInfo(m_pPlayer->GetIndex(),"��ң���%s����(%.0f,%.0f)��Ŀ��(%.0f,%.0f)�ƶ����ƶ�����:%.1f",object->GetName(),
				//	object->GetPositionFloatX(),object->GetPositionFloatY(),float(lastPosX)/100,float(lastPosY)/100,object->GetDistanceInFloatTo(lastPosX,lastPosY));
				m_pPlayer->GetPlayerMessages().AddSystemMsg("��ң���%s����(%.0f,%.0f)��Ŀ��(%.0f,%.0f)�ƶ����ƶ�����:%.1f",object->GetName(),
					object->GetPositionFloatX(),object->GetPositionFloatY(),float(lastPosX)/100,float(lastPosY)/100,object->GetDistanceInFloatTo(lastPosX,lastPosY));
				if (moveState!=enumMSTATE_ON)
				{
					RefreshRolePosition(object);
				}
			}
			else if (object->GetType()==CRoleObject::eNPC)
			{
				//CSystemInfo::AddInfo(m_pPlayer->GetIndex(),"NPC��%s����(%.0f,%.0f)��Ŀ��(%.0f,%.0f)�ƶ����ƶ�����:%.1f",object->GetName(),
				//	object->GetPositionFloatX(),object->GetPositionFloatY(),float(lastPosX)/100,float(lastPosY)/100,object->GetDistanceInFloatTo(lastPosX,lastPosY));
				m_pPlayer->GetPlayerMessages().AddSystemMsg("NPC��%s����(%.0f,%.0f)��Ŀ��(%.0f,%.0f)�ƶ����ƶ�����:%.1f",object->GetName(),
						object->GetPositionFloatX(),object->GetPositionFloatY(),float(lastPosX)/100,float(lastPosY)/100,object->GetDistanceInFloatTo(lastPosX,lastPosY));
				if (moveState!=enumMSTATE_ON)
				{
					RefreshRolePosition(object);
				}
			}
			else if (object->GetType()==CRoleObject::eMonster)
			{
				//CSystemInfo::AddInfo(m_pPlayer->GetIndex(),"���%s<%d>����(%.0f,%.0f)��Ŀ��(%.0f,%.0f)�ƶ����ƶ�����:%.1f",object->GetName(),((CMonsterObject*)object)->GetMonsterIndex(),
				//	object->GetPositionFloatX(),object->GetPositionFloatY(),float(lastPosX)/100,float(lastPosY)/100,object->GetDistanceInFloatTo(lastPosX,lastPosY));
				m_pPlayer->GetPlayerMessages().AddSystemMsg("���%s<%d>����(%.0f,%.0f)��Ŀ��(%.0f,%.0f)�ƶ����ƶ�����:%.1f",object->GetName(),((CMonsterObject*)object)->GetMonsterIndex(),
					object->GetPositionFloatX(),object->GetPositionFloatY(),float(lastPosX)/100,float(lastPosY)/100,object->GetDistanceInFloatTo(lastPosX,lastPosY));
				if (moveState!=enumMSTATE_ON)
				{
					RefreshRolePosition(object);
				}
			}
			else
			{
				//CSystemInfo::AddInfo(m_pPlayer->GetIndex(),"δ֪���������ƶ�����(%.0f,%.0f)��Ŀ��(%.0f,%.0f)�ƶ����ƶ�����:%.1f",object->GetName(),
				//	object->GetPositionFloatX(),object->GetPositionFloatY(),float(lastPosX)/100,float(lastPosY)/100,object->GetDistanceInFloatTo(lastPosX,lastPosY));
				m_pPlayer->GetPlayerMessages().AddSystemMsg("δ֪���������ƶ�����(%.0f,%.0f)��Ŀ��(%.0f,%.0f)�ƶ����ƶ�����:%.1f",object->GetName(),
					object->GetPositionFloatX(),object->GetPositionFloatY(),float(lastPosX)/100,float(lastPosY)/100,object->GetDistanceInFloatTo(lastPosX,lastPosY));
			}
			object->SetPosition(lastPosX,lastPosY);
			break;
		}
	case enumACTION_KITBAG:		// ���½�ɫ������
		{
			m_pPlayer->GetRoleMgr().GetSelfObject()->LoadPacketItems(pk);
			RefreshRolePacket();
			break;
		}
	case enumACTION_LOOK:		// ���½�ɫ���(��ֻ��װ��)
		{
			m_pPlayer->GetRoleMgr().GetSelfObject()->LoadEquipItems(pk);
			break;
		}
		//------------------------------------------------------------------------
		//	δ��ȫ����
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
	//	δ��ȫ����
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
		CSystemInfo::AddSystemInfo(m_pPlayer->GetIndex(),"����һ�������ڵĽ�ɫ��ʧ��");
		m_pPlayer->GetPlayerMessages().AddMsg("����һ�������ڵĽ�ɫ��ʧ��");
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
	//pk.ReadShort();	//�¼����
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
		m_pPlayer->GetPlayerMessages().AddSystemMsg("����:����NPC��˵��!WorldID=%d ����=%s",dwSrcID,strInfo);
		strInfo=pNPCObject->GetName()+"(NPC):"+strInfo;
		m_pPlayer->GetChatMgr().GetChannelChatMgr().AddInfo(CChannelChatMgr::CHANNEL_SIGHT,pNPCObject->GetName(),strInfo);
	}
	else if (pMonsterObject)
	{
		m_pPlayer->GetPlayerMessages().AddSystemMsg("����:���ֹ�����˵��!WorldID=%d ����=%s",dwSrcID,strInfo);
		strInfo=pMonsterObject->GetName()+"(����):"+strInfo;
		m_pPlayer->GetChatMgr().GetChannelChatMgr().AddInfo(CChannelChatMgr::CHANNEL_SIGHT,pMonsterObject->GetName(),strInfo);
	}
	else
	{
		CSelfObject* pSelf=m_pPlayer->GetRoleMgr().GetSelfObject();
		if (!pSelf || pSelf->GetWorldID()!=dwSrcID)
		{
			m_pPlayer->GetPlayerMessages().AddSystemMsg("����:��Ұ�ڷ�����δ֪������˵��,����!WorldID=%d ����=%s",dwSrcID,strInfo);
			return;
		}
		strInfo=pSelf->GetName()+"(�Լ�):"+strInfo;
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
	DWORD dwCharID=pk.ReadLong();				//�ظ�����
	CString strInfo;
	strInfo.Format("��ѯ��ɫ��%s�ݲ����ɹ�! ��ɫID:%d ���ڵ�ͼ:%s ����(%.2f,%.2f)",strCharName,dwCharID,strMapName,((float)dwPosX)/100,((float)dwPosY)/100);
	m_pPlayer->GetChatMgr().GetChannelChatMgr().AddInfo(CChannelChatMgr::CHANNEL_SYSTEM,NULL,strInfo);
	RefreshChat(CChannelChatMgr::CHANNEL_SYSTEM);
}

