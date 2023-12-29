// VerifyDlg.cpp : implementation file
//

#include "stdafx.h"
#include "Ftpupd.h"
#include "VerifyDlg.h"


UINT VerifyThread(LPVOID pParam)
{
	CVerifyDlg* pDlg = (CVerifyDlg *)pParam;

    if (!(pDlg->LoadFileVersionInfo("VerInfo.rec")))
	{
		AfxMessageBox("װ�ذ汾�ļ�ʧ�ܣ������������ͻ��ˣ�");
		ExitProcess(-1);
	}

	unsigned int uiCount = 0;
	try
	{
        uiCount = pDlg->VerifyClient();
	}
	catch (...)
	{
	}

	if (uiCount > 0)
	{
		DeleteFile("ver.rec"); // ��Ҫ�޸��ͻ���
	}

	pDlg->PostMessage(WM_KOPVERIFYEND, uiCount);
	return 0;
}


// CVerifyDlg dialog

IMPLEMENT_DYNAMIC(CVerifyDlg, CDialog)
CVerifyDlg::CVerifyDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CVerifyDlg::IDD, pParent)
{
	m_pVerifyThrd = NULL;
}

CVerifyDlg::~CVerifyDlg()
{
}

void CVerifyDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	DDX_Control(pDX, IDC_LIST1, m_FileList);
	DDX_Control(pDX, IDC_PROGRESS1, m_Progress);
}


BEGIN_MESSAGE_MAP(CVerifyDlg, CDialog)
	ON_WM_PAINT()
	ON_MESSAGE(WM_KOPVERIFYBEGIN, OnBeginVerify)
	ON_MESSAGE(WM_KOPVERIFYEND, OnEndVerify)
END_MESSAGE_MAP()


// CVerifyDlg message handlers
BOOL CVerifyDlg::OnInitDialog()
{
	CDialog::OnInitDialog();

	// TODO: �ڴ���Ӷ���ĳ�ʼ������
	SetWindowText("�ͻ���У��");
	CMenu* pMenu = this->GetSystemMenu(FALSE);
	pMenu->EnableMenuItem(SC_CLOSE, MF_BYCOMMAND | MF_GRAYED);

	// ��ʼ��ListCtrl��header
	LVCOLUMN lv;
	lv.mask = LVCF_WIDTH | LVCF_TEXT | LVCF_FMT;

	lv.cx = 150;
	lv.pszText = "�ļ�";
	lv.fmt = LVCFMT_CENTER;
	m_FileList.InsertColumn(0, &lv);

	lv.cx = 104;
	lv.pszText = "״̬";
	lv.fmt = LVCFMT_CENTER;
	m_FileList.InsertColumn(1, &lv);

	DWORD dwStyle = m_FileList.GetExtendedStyle();
	m_FileList.SetExtendedStyle(LVS_EX_FULLROWSELECT |
		LVS_EX_INFOTIP |
		dwStyle);

	PostMessage(WM_KOPVERIFYBEGIN);
	return TRUE;  // ���������˿ؼ��Ľ��㣬���򷵻� TRUE
}

void CVerifyDlg::OnPaint()
{
	CPaintDC dc(this); // device context for painting
	// TODO: Add your message handler code here
	// Do not call CDialog::OnPaint() for painting messages
}



HRESULT CVerifyDlg::OnBeginVerify(WPARAM wParam, LPARAM lParam)
{
	Sleep(1000);
	m_pVerifyThrd = AfxBeginThread(::VerifyThread, this);
	SetWindowText("����Ϊ�����ͻ����ļ��汾�������ĵȴ�...");
	return 0;
}

HRESULT CVerifyDlg::OnEndVerify(WPARAM wParam, LPARAM lParam)
{
	unsigned int uiCount = (unsigned int)wParam;
	m_pVerifyThrd = NULL;
	if (uiCount == 0)
	{
        AfxMessageBox("���пͻ����ļ�����ã�");
		EndDialog(IDOK);
	}
	else
	{
        AfxMessageBox("У��ͻ�����ϣ����������������޲���");
        ExitProcess(0);
	}
	return 0;
}

void CVerifyDlg::OnVerifyClient(unsigned int uiTotal,
								unsigned int uiCur,
								BOOL bWrong,
								char const* pszFile)
{
	bool bExit = false;
	try
	{	
		m_Progress.SetRange32(0, uiTotal);
		m_Progress.SetPos(uiCur);

		if (bWrong) InsertFile(pszFile);
	}
	catch (...)
	{
		bExit = true;
	}

	if (bExit) ExitProcess(0);
}

void CVerifyDlg::InsertFile(char const* szFile)
{
	LVITEM lv;
	lv.mask = LVIF_TEXT;
	lv.iItem = m_FileList.GetItemCount();

	lv.iSubItem = 0;
	lv.pszText = (LPSTR)szFile;
	m_FileList.InsertItem(&lv);

    lv.iSubItem = 1;
	lv.pszText = "�汾��һ��";
	m_FileList.SetItem(&lv);
}
