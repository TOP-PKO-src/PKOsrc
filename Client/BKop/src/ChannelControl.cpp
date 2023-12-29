#include "StdAfx.h"
#include "BKop.h"
#include "TalkPage.h"
#include "CommandChat.h"
#include "CommandPrivateChat.h"
#include "ControlCommand.h"
#include "PlayerMgr.h"
#include ".\channelcontrol.h"

CChannelControl::CChannelControl(CTalkPage *pTalkPage,CString strChannelName)
{
	m_pTalkPage=pTalkPage;
	m_strChannelName=strChannelName;
	m_pTalkPage->m_CombChannelSel.AddString(strChannelName);
}

CChannelControl::~CChannelControl(void)
{
}

void CChannelControl::OnChange()
{
	if (m_strChannelName=="˽��")
	{
		m_pTalkPage->m_CombTarget.EnableWindow(true);
		m_pTalkPage->m_CombCommand.EnableWindow(false);
		m_pTalkPage->m_BtnNameList.EnableWindow(true);
		m_pTalkPage->m_CombText.SetWindowText(NULL);
		m_pTalkPage->m_BtnSend.SetWindowText("����(&S)");
		m_pTalkPage->m_CombTarget.SetFocus();
	}
	else if (m_strChannelName=="��������")
	{
		m_pTalkPage->m_CombTarget.EnableWindow(true);
		m_pTalkPage->m_CombCommand.EnableWindow(true);
		m_pTalkPage->m_BtnNameList.EnableWindow(true);
		m_pTalkPage->m_CombCommand.SetCurSel(0);
		m_pTalkPage->OnCbnSelchangeComboCommand();
		m_pTalkPage->m_BtnSend.SetWindowText("ȷ��(&S)");
	}
	else
	{
		m_pTalkPage->m_CombTarget.EnableWindow(false);
		m_pTalkPage->m_CombCommand.EnableWindow(false);
		m_pTalkPage->m_BtnNameList.EnableWindow(false);
		m_pTalkPage->m_BtnSend.SetWindowText("����(&S)");
		m_pTalkPage->m_CombText.SetWindowText(NULL);
		m_pTalkPage->m_CombText.SetFocus();
	}
}

void CChannelControl::OnSend(CString strText)
{
	CPlayer *pPlayer=CPlayerMgr::GetMainPlayer();
	if (!pPlayer)
	{
		return;
	}
	if (m_strChannelName=="��Ұ")
	{
		if (strText.IsEmpty()) return;
		CCommandChat::Create(pPlayer,CCommandChat::eSight,strText);
	}
	else if (m_strChannelName=="����")
	{
		if (strText.IsEmpty()) return;
		CCommandChat::Create(pPlayer,CCommandChat::eWorld,strText);
	}
	else if (m_strChannelName=="����")
	{
		if (strText.IsEmpty()) return;
		CCommandChat::Create(pPlayer,CCommandChat::eTrade,strText);
	}
	else if (m_strChannelName=="���")	//��ʱ��Ч
	{
	}
	else if (m_strChannelName=="����")	//��ʱ��Ч
	{
	}
	else if (m_strChannelName=="GM����")
	{
		if (strText.IsEmpty()) return;
		CString strInfo="�㽫��������ҷ������¹��棺\n\n";
		strInfo+=strText+"\n\n";
		strInfo+="��ȷ���Ƿ������";
		int ret=m_pTalkPage->MessageBox(strInfo,"����",MB_OKCANCEL|MB_ICONQUESTION);
		if (ret!=IDOK) return;
		CCommandChat::Create(pPlayer,CCommandChat::ePublish,strText);
	}
	else if (m_strChannelName=="˽��")
	{
		CString strTarget;
		m_pTalkPage->m_CombTarget.GetWindowText(strTarget);
		if (strTarget.IsEmpty())
		{
			m_pTalkPage->MessageBox("����ʧ��:����ѡ��Ŀ����������","����");
			return;
		}
		CCommandPrivateChat::Create(pPlayer,strTarget,strText);
	}
	else if (m_strChannelName=="QQ�Ự")
	{
	}
	else if (m_strChannelName=="��������")
	{
		int nIndex=(int)m_pTalkPage->m_CombCommand.GetItemData(m_pTalkPage->m_CombCommand.GetCurSel());
		CString strName;
		m_pTalkPage->m_CombTarget.GetWindowText(strName);
		CString strNewText=CControlCommand::AssembleCommand(nIndex,strName,strText);
		if (strNewText.IsEmpty()) return;
		if (strNewText.Left(2)=="@@")	//��ָ��ͨ��˽��Ƶ������,˽�Ķ���Ϊ��һ�ַ�:'@'
		{
			int nSub=strNewText.GetLength()-3;
			if (nSub<=0)
			{
				return;
			}
			strNewText=strNewText.Right(nSub);
			CCommandPrivateChat::Create(pPlayer,"@",strNewText);
		}
		else
		{
			CCommandChat::Create(pPlayer,CCommandChat::eSight,strNewText);
		}
	}
}