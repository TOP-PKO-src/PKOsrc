#pragma once

#include "TalkSessionBase.h"
#include "afxcmn.h"

// CNormalTalkSessionPage dialog

class CNormalTalkSessionPage : public CPropertyPage , public CTalkSessionBase
{
	DECLARE_DYNAMIC(CNormalTalkSessionPage)

public:
	CNormalTalkSessionPage(CChannelChatMgr::eChannel channel);
	virtual ~CNormalTalkSessionPage();

// Dialog Data
	enum { IDD = IDD_DIALOG_NORMAL_TALK_SESSION };


	void Renew();			//全部刷新
	void Clear();			//清空频道
	LPVOID GetThisPage();	//取实例地址


	void RefreshSelfChannel();	//往后刷新自己的频道
	void RefreshTotalChannel();	//往后刷新全部频道

protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support

	DECLARE_MESSAGE_MAP()
	virtual BOOL OnInitDialog();
	virtual BOOL OnSetActive();


private:
	CRichEditCtrl m_RichEditInformation;
	CRichEditCtrl m_RichEditTotalInformation;
};
