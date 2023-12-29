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
	if (m_strChannelName=="私聊")
	{
		m_pTalkPage->m_CombTarget.EnableWindow(true);
		m_pTalkPage->m_CombCommand.EnableWindow(false);
		m_pTalkPage->m_BtnNameList.EnableWindow(true);
		m_pTalkPage->m_CombText.SetWindowText(NULL);
		m_pTalkPage->m_BtnSend.SetWindowText("发送(&S)");
		m_pTalkPage->m_CombTarget.SetFocus();
	}
	else if (m_strChannelName=="控制命令")
	{
		m_pTalkPage->m_CombTarget.EnableWindow(true);
		m_pTalkPage->m_CombCommand.EnableWindow(true);
		m_pTalkPage->m_BtnNameList.EnableWindow(true);
		m_pTalkPage->m_CombCommand.SetCurSel(0);
		m_pTalkPage->OnCbnSelchangeComboCommand();
		m_pTalkPage->m_BtnSend.SetWindowText("确定(&S)");
	}
	else
	{
		m_pTalkPage->m_CombTarget.EnableWindow(false);
		m_pTalkPage->m_CombCommand.EnableWindow(false);
		m_pTalkPage->m_BtnNameList.EnableWindow(false);
		m_pTalkPage->m_BtnSend.SetWindowText("发送(&S)");
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
	if (m_strChannelName=="视野")
	{
		if (strText.IsEmpty()) return;
		CCommandChat::Create(pPlayer,CCommandChat::eSight,strText);
	}
	else if (m_strChannelName=="世界")
	{
		if (strText.IsEmpty()) return;
		CCommandChat::Create(pPlayer,CCommandChat::eWorld,strText);
	}
	else if (m_strChannelName=="交易")
	{
		if (strText.IsEmpty()) return;
		CCommandChat::Create(pPlayer,CCommandChat::eTrade,strText);
	}
	else if (m_strChannelName=="组队")	//暂时无效
	{
	}
	else if (m_strChannelName=="公会")	//暂时无效
	{
	}
	else if (m_strChannelName=="GM公告")
	{
		if (strText.IsEmpty()) return;
		CString strInfo="你将对所有玩家发布以下公告：\n\n";
		strInfo+=strText+"\n\n";
		strInfo+="请确认是否继续？";
		int ret=m_pTalkPage->MessageBox(strInfo,"警告",MB_OKCANCEL|MB_ICONQUESTION);
		if (ret!=IDOK) return;
		CCommandChat::Create(pPlayer,CCommandChat::ePublish,strText);
	}
	else if (m_strChannelName=="私聊")
	{
		CString strTarget;
		m_pTalkPage->m_CombTarget.GetWindowText(strTarget);
		if (strTarget.IsEmpty())
		{
			m_pTalkPage->MessageBox("操作失败:请先选择目标对象的名字","警告");
			return;
		}
		CCommandPrivateChat::Create(pPlayer,strTarget,strText);
	}
	else if (m_strChannelName=="QQ会话")
	{
	}
	else if (m_strChannelName=="控制命令")
	{
		int nIndex=(int)m_pTalkPage->m_CombCommand.GetItemData(m_pTalkPage->m_CombCommand.GetCurSel());
		CString strName;
		m_pTalkPage->m_CombTarget.GetWindowText(strName);
		CString strNewText=CControlCommand::AssembleCommand(nIndex,strName,strText);
		if (strNewText.IsEmpty()) return;
		if (strNewText.Left(2)=="@@")	//此指令通过私聊频道发送,私聊对象为单一字符:'@'
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