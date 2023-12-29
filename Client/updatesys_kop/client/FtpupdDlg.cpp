// FtpupdDlg.cpp : ʵ���ļ�
//

#include "stdafx.h"
#include "Ftpupd.h"
#include "FtpupdDlg.h"
#include "KopDownload.h"
#include "VerifyDlg.h"
#include "SelectISP.h"
#include ".\ftpupddlg.h"

extern UINT FtpupdThread(LPVOID pParam);

#ifdef _DEBUG
#define new DEBUG_NEW
#endif


// CFtpupdDlg �Ի���

CFtpupdDlg::CFtpupdDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CFtpupdDlg::IDD, pParent)
{
    m_hIconLarge = AfxGetApp()->LoadIcon(IDI_LARGE);
    m_hIconSmall = AfxGetApp()->LoadIcon(IDI_SMALL);

    m_pFtpThrd = NULL;
}

void CFtpupdDlg::DoDataExchange(CDataExchange* pDX)
{
    CDialog::DoDataExchange(pDX);
    DDX_Control(pDX, IDC_PROGRESS1, m_ProgressBar);
    DDX_Control(pDX, IDC_FILENAME, m_stFileName);
    DDX_Control(pDX, IDC_SPEED, m_stSpeed);
    DDX_Control(pDX, IDC_FILEPERCENT, m_stFilePercent);
    DDX_Control(pDX, IDC_TIPS, m_stTips);
    DDX_Control(pDX, IDC_EXPLORER1, m_Web);
    DDX_Control(pDX, IDC_TAB1, m_Tab);
    DDX_Control(pDX, IDC_EXPLORER2, m_Web2);
    DDX_Control(pDX, IDC_COMBO1, m_cbSelISP);
}

BEGIN_MESSAGE_MAP(CFtpupdDlg, CDialog)
	ON_WM_PAINT()
	ON_WM_QUERYDRAGICON()
    ON_MESSAGE(WM_KOPTIPS, OnUpdateTips)
    ON_MESSAGE(WM_KOPUPDATEBEGIN, OnUpdateBegin)
    ON_MESSAGE(WM_KOPFILENAME, OnUpdateFileName)
    ON_MESSAGE(WM_KOPSPEED, OnUpdateSpeed)
    ON_MESSAGE(WM_KOPFILEPERCENT, OnUpdateFilePercent)
    ON_MESSAGE(WM_KOPPROGRESSBAR, OnUpdateProgressBar)
    ON_MESSAGE(WM_KOPUPDATEEND, OnUpdateEnd)
    ON_MESSAGE(WM_KOPUPDATEQUIT, OnUpdateQuit)
    ON_MESSAGE(WM_KOPUPDATEWEB, OnUpdateWeb)
	//}}AFX_MSG_MAP
    ON_BN_CLICKED(IDEXIT, OnBnClickedExit)
    ON_WM_TIMER()
    ON_BN_CLICKED(IDSTARTGAME, OnBnClickedStartGame)
	ON_BN_CLICKED(IDREPAIR, OnBnClickedRepair)
	ON_NOTIFY(TCN_SELCHANGE, IDC_TAB1, OnTcnSelchangeTab1)
    ON_BN_CLICKED(IDC_REGACCOUNT, OnBnClickedRegaccount)
    ON_BN_CLICKED(IDC_HOMEPAGE, OnBnClickedHomepage)
    ON_BN_CLICKED(IDC_BEGINNER, OnBnClickedBeginner)
    ON_BN_CLICKED(IDSELNET, OnBnClickedSelnet)
    ON_WM_CTLCOLOR()
    ON_CBN_SELCHANGE(IDC_COMBO1, OnCbnSelchangeCombo1)
END_MESSAGE_MAP()


// CFtpupdDlg ��Ϣ�������

BOOL CFtpupdDlg::OnInitDialog()
{
	CDialog::OnInitDialog();

	// ���ô˶Ի����ͼ�ꡣ��Ӧ�ó��������ڲ��ǶԻ���ʱ����ܽ��Զ�
	//  ִ�д˲���
    SetIcon(m_hIconLarge, TRUE);         // ���ô�ͼ��
    SetIcon(m_hIconSmall, FALSE);        // ����Сͼ��

	// TODO: �ڴ���Ӷ���ĳ�ʼ������
    m_strCaption.LoadString(IDS_CAPTION);
    SetWindowText(m_strCaption);

    CMenu* pMenu = this->GetSystemMenu(FALSE);
    pMenu->EnableMenuItem(SC_CLOSE, MF_BYCOMMAND | MF_GRAYED);

	m_stTips.SetWindowText("");
	m_stFileName.SetWindowText("");
	m_stSpeed.SetWindowText("");
	m_stFilePercent.SetWindowText("");

	// Tab
	TC_ITEM TabCtrlItem;
	TabCtrlItem.mask = TCIF_TEXT;
	TabCtrlItem.pszText = "���Ź���";
	m_Tab.InsertItem(0, &TabCtrlItem);
	TabCtrlItem.pszText = "�����";
	m_Tab.InsertItem(1, &TabCtrlItem);
	TabCtrlItem.pszText = "�汾����";
	m_Tab.InsertItem(2, &TabCtrlItem);

	CRect rc;
	m_Tab.GetWindowRect(rc);
	TRACE2("Left-Top: (%d, %d)\n", rc.left, rc.top);
	TRACE2("Right-Bottom: (%d, %d)\n", rc.right, rc.bottom);

	m_Web2.SetWindowPos(&CWnd::wndTop, rc.left + 2, rc.top + 2,
						550, 200, SWP_SHOWWINDOW);

    //
    m_Web.GetWindowRect(rc);
    TRACE2("Width-Height: (%d, %d)\n",
        rc.right - rc.left, rc.bottom - rc.top);

    //
    m_cbSelISP.ResetContent();
    m_cbSelISP.AddString("�й�����");
    m_cbSelISP.AddString("�й���ͨ");
    if (g_KopData.IsTelecom())
    {
        m_cbSelISP.SelectString(0, "�й�����");
    }
    else if (g_KopData.IsNetcom())
    {
        m_cbSelISP.SelectString(0, "�й���ͨ");
    }

	return TRUE;  // ���������˿ؼ��Ľ��㣬���򷵻� TRUE
}

// �����Ի��������С����ť������Ҫ����Ĵ���
//  �����Ƹ�ͼ�ꡣ����ʹ���ĵ�/��ͼģ�͵� MFC Ӧ�ó���
//  �⽫�ɿ���Զ���ɡ�

void CFtpupdDlg::OnPaint() 
{
    static BOOL bInit = FALSE;
    if (!bInit)
    {
        m_pFtpThrd = AfxBeginThread(FtpupdThread, this);			//��֪��ΪʲôҪ���Զ������̷߳ŵ�OnPaint������,�����Ķ� Arcol 2005-12-7
        bInit = TRUE;
    }

	if (IsIconic())
	{
		CPaintDC dc(this); // ���ڻ��Ƶ��豸������

		SendMessage(WM_ICONERASEBKGND, reinterpret_cast<WPARAM>(dc.GetSafeHdc()), 0);

		// ʹͼ���ڹ��������о���
		int cxIcon = GetSystemMetrics(SM_CXICON);
		int cyIcon = GetSystemMetrics(SM_CYICON);
		CRect rect;
		GetClientRect(&rect);
		int x = (rect.Width() - cxIcon + 1) / 2;
		int y = (rect.Height() - cyIcon + 1) / 2;

		// ����ͼ��
		dc.DrawIcon(x, y, m_hIconLarge);
	}
	else
	{
		CDialog::OnPaint();
	}
}

//���û��϶���С������ʱϵͳ���ô˺���ȡ�ù����ʾ��
HCURSOR CFtpupdDlg::OnQueryDragIcon()
{
	return static_cast<HCURSOR>(m_hIconLarge);
}

HRESULT CFtpupdDlg::OnUpdateBegin(WPARAM wParam, LPARAM lParam)
{
    SetTimer(USPEED_TIMER, USPEED_TIME, NULL);
    return 0;
}

HRESULT CFtpupdDlg::OnUpdateFileName(WPARAM wParam, LPARAM lParam)
{
    CString strFile;
    CString strFullPath = g_KopData.GetCurrentFile();
    int nPos = strFullPath.ReverseFind('/');
    if (nPos != -1)
    {
        ++ nPos;
        strFile = strFullPath.Right(strFullPath.GetLength() - nPos);
        strFullPath = strFile;
    }

    m_stFileName.SetWindowText((LPCTSTR)strFullPath);
    return 0;
}

HRESULT CFtpupdDlg::OnUpdateSpeed(WPARAM wParam, LPARAM lParam)
{
    return 0;
}

HRESULT CFtpupdDlg::OnUpdateFilePercent(WPARAM wParam, LPARAM lParam)
{
    CString strPercent;

    strPercent.Format("%d / %d", g_KopData.GetRecvFileCount(),
                      g_KopData.GetTotalFileCount());
    m_stFilePercent.SetWindowText(strPercent);
    return 0;
}

HRESULT CFtpupdDlg::OnUpdateProgressBar(WPARAM wParam, LPARAM lParam)
{
    m_ProgressBar.SetRange32(0, g_KopData.GetTotalSize());
    m_ProgressBar.SetPos(g_KopData.GetRecvSize());
    return 0;
}

HRESULT CFtpupdDlg::OnUpdateEnd(WPARAM wParam, LPARAM lParam)
{
    KillTimer(USPEED_TIMER);
    return 0;
}

HRESULT CFtpupdDlg::OnUpdateTips(WPARAM wParam, LPARAM lParam)
{
    //m_stTips.SetWindowText(g_KopData.GetTips());
    m_stFileName.SetWindowText(g_KopData.GetTips());
    return 0;
}

HRESULT CFtpupdDlg::OnUpdateQuit(WPARAM wParam, LPARAM lParam)
{
    Sleep(1000); // �ȴ�Worker�߳��˳�

    m_pFtpThrd = NULL;

    // ��ʾ���Խ�����Ϸ��
    //m_stTips.SetWindowText("��� '������Ϸ' ��ť��ʼ��Ϸ");
    m_stFileName.SetWindowText("��� '������Ϸ' ��ť��ʼ��Ϸ");
    m_ProgressBar.SetRange32(0, 1);
    m_ProgressBar.SetPos(1);

	CRect rc;
	CWnd* pBtnRepair = GetDlgItem(IDREPAIR);
	CWnd* pBtnExit = GetDlgItem(IDEXIT);
	CWnd* pBtnCancel = GetDlgItem(IDCANCEL);
    CWnd* pBtnStart = GetDlgItem(IDSTARTGAME);

    // ʹ�� ������Ϸ ��ť�� �޲��ͻ��� ��ť
	pBtnStart->EnableWindow();
    pBtnStart->ShowWindow(SW_SHOW);

	pBtnRepair->EnableWindow();
	pBtnRepair->ShowWindow(SW_SHOW);
    
    return 0;
}

HRESULT CFtpupdDlg::OnUpdateWeb(WPARAM wParam, LPARAM lParam)
{
    m_Web.Navigate("http://www.hdwonline.com/update/server.aspx",
        NULL, NULL, NULL, NULL);	
	
	m_Tab.SetCurSel(0);
    m_Web2.Navigate("http://www.hdwonline.com/update/news.aspx",
        NULL, NULL, NULL, NULL);

    return 0;
}

void CFtpupdDlg::OnBnClickedStartGame()
{
    // TODO: Add your control notification handler code here
    CString strRunApp = g_KopData.GetRunApp();
    strRunApp += " startgame ";
    TRACE1("Run App = %s\n", (LPCTSTR)strRunApp);

    // ִ�пͻ��˳���
    PROCESS_INFORMATION pi;
    STARTUPINFO si;
    GetStartupInfo(&si);
    if (CreateProcess(NULL, (LPSTR)(LPCTSTR)strRunApp, NULL, NULL, FALSE,
        NORMAL_PRIORITY_CLASS, NULL, NULL, &si, &pi))
    {
        CloseHandle(pi.hProcess);
    }

    // �������˳�
    ExitProcess(1);
}

void CFtpupdDlg::OnBnClickedExit()
{
    // TODO: Add your control notification handler code here
    if (m_pFtpThrd != NULL)
    {
        KillTimer(USPEED_TIMER);
        try
        {
            TerminateThread(*m_pFtpThrd, 0);
            delete m_pFtpThrd;
            m_pFtpThrd = NULL;
        }
        catch (...)
        {
        }        
    }

    ExitProcess(1);
}

void CFtpupdDlg::OnTimer(UINT nIDEvent)
{
    // TODO: Add your message handler code here and/or call default
    if (nIDEvent == USPEED_TIMER)
    {
        DWORD dwAvrSpeed = g_KopData.GetAvrSpeed();
        DWORD dwRtmSpeed = g_KopData.GetRtmSpeed();

        if (dwRtmSpeed == 0)
        {
            m_strSpeed.Format("��������...");
        }
        else
        {
            if (dwRtmSpeed >= 1000)
            {
                m_strSpeed.Format("%.1fMB/s", (float)dwRtmSpeed / 1000);
            }
            else
            {
                m_strSpeed.Format("%dKB/s", dwRtmSpeed);
            }
        }
        
        m_stSpeed.SetWindowText(m_strSpeed);
    }

    //CDialog::OnTimer(nIDEvent);
}

void CFtpupdDlg::OnBnClickedRepair()
{
	// TODO: Add your control notification handler code here
	VerifyClient();
}

void CFtpupdDlg::VerifyClient()
{
	CVerifyDlg dlgVerify;
	dlgVerify.DoModal();
}

void CFtpupdDlg::OnTcnSelchangeTab1(NMHDR *pNMHDR, LRESULT *pResult)
{
	// TODO: Add your control notification handler code here
	int nIndex = m_Tab.GetCurSel();

	switch(nIndex)
	{
	case 0:
        m_Web2.Navigate("http://www.hdwonline.com/update/news.aspx",
            NULL, NULL, NULL, NULL);
		break;

	case 1:
        m_Web2.Navigate("http://www.hdwonline.com/update/bbs.aspx",
            NULL, NULL, NULL, NULL);
		break;

	case 2:
        m_Web2.Navigate("http://www.hdwonline.com/update/update.aspx",
            NULL, NULL, NULL, NULL);
		break;
	}

	*pResult = 0;
}

void CFtpupdDlg::OnBnClickedRegaccount()
{
    // TODO: Add your control notification handler code here
    ShellExecute(this->m_hWnd, "open",
        "http://www.moliyo.com/user/register.aspx",
        NULL, NULL, SW_SHOW);
}

void CFtpupdDlg::OnBnClickedHomepage()
{
    // TODO: Add your control notification handler code here
    ShellExecute(this->m_hWnd, "open", "http://www.hdwonline.com",
        NULL, NULL, SW_SHOW);
}

void CFtpupdDlg::OnBnClickedBeginner()
{
    // TODO: Add your control notification handler code here
    ShellExecute(this->m_hWnd, "open",
        "http://www.moliyo.com/moliyo/GameKop/kop/game_newuser_index.aspx",
        NULL, NULL, SW_SHOW);
}

void CFtpupdDlg::OnBnClickedSelnet()
{
    // TODO: Add your control notification handler code here
    CSelectISP sel;
    INT_PTR nResponse = sel.DoModal();
}

HBRUSH CFtpupdDlg::OnCtlColor(CDC* pDC, CWnd* pWnd, UINT nCtlColor)
{
    HBRUSH hbr = CDialog::OnCtlColor(pDC, pWnd, nCtlColor);

    // TODO:  Change any attributes of the DC here
    if (pWnd->GetDlgCtrlID() == IDC_SELNET)
    {
        pDC->SetTextColor(RGB(0, 0, 255));
    }

    // TODO:  Return a different brush if the default is not desired
    return hbr;
}

void CFtpupdDlg::OnCbnSelchangeCombo1()
{
    // TODO: Add your control notification handler code here
    CString strISP;

    int nSel = m_cbSelISP.GetCurSel();
    m_cbSelISP.GetLBText(nSel, strISP);

    UCHAR ucISP = CKopData::CHINA_INVALIDISP;
    if (strISP == "�й�����")
    {
        ucISP = CKopData::CHINA_TELECOM;
    }
    else if (strISP == "�й���ͨ")
    {
        ucISP = CKopData::CHINA_NETCOM;
    }

    if (g_KopData.GetISP() != ucISP)
    {
        g_KopData.SaveISP(ucISP);
        MessageBox("���޸����������ã������������Զ����³���!");
        ExitProcess(-1);
    }
}
