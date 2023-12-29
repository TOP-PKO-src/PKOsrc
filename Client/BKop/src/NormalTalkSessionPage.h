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


	void Renew();			//ȫ��ˢ��
	void Clear();			//���Ƶ��
	LPVOID GetThisPage();	//ȡʵ����ַ


	void RefreshSelfChannel();	//����ˢ���Լ���Ƶ��
	void RefreshTotalChannel();	//����ˢ��ȫ��Ƶ��

protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support

	DECLARE_MESSAGE_MAP()
	virtual BOOL OnInitDialog();
	virtual BOOL OnSetActive();


private:
	CRichEditCtrl m_RichEditInformation;
	CRichEditCtrl m_RichEditTotalInformation;
};
