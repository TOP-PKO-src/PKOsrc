// SelectISP.cpp : implementation file
//

#include "stdafx.h"
#include "Ftpupd.h"
#include "SelectISP.h"
#include "KopDownload.h"

// CSelectISP dialog

IMPLEMENT_DYNAMIC(CSelectISP, CDialog)
CSelectISP::CSelectISP(CWnd* pParent /*=NULL*/)
	: CDialog(CSelectISP::IDD, pParent)
{
}

CSelectISP::~CSelectISP()
{
}

void CSelectISP::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
}


BEGIN_MESSAGE_MAP(CSelectISP, CDialog)
    ON_BN_CLICKED(ID_TELECOM, OnBnClickedTelecom)
    ON_BN_CLICKED(ID_NETCOM, OnBnClickedNetcom)
END_MESSAGE_MAP()


// CSelectISP message handlers
BOOL CSelectISP::OnInitDialog()
{
    CDialog::OnInitDialog();

    // TODO: �ڴ���Ӷ���ĳ�ʼ������
    m_strCaption.LoadString(IDS_CAPTION);
    SetWindowText(m_strCaption);

    return TRUE;  // ���������˿ؼ��Ľ��㣬���򷵻� TRUE
}

void CSelectISP::OnBnClickedTelecom()
{
    // TODO: Add your control notification handler code here
    if (g_KopData.IsFirstRun())
    {
        g_KopData.SaveISP(CKopData::CHINA_TELECOM);
    }
    else
    {
    }
    EndDialog(IDOK);
}

void CSelectISP::OnBnClickedNetcom()
{
    // TODO: Add your control notification handler code here
    if (g_KopData.IsFirstRun())
    {
        g_KopData.SaveISP(CKopData::CHINA_NETCOM);
    }
    else
    {
    }
    EndDialog(IDOK);
}
