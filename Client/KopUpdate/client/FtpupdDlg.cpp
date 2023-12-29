// FtpupdDlg.cpp : ʵ���ļ�
//

#include "stdafx.h"
#include "Ftpupd.h"
#include "FtpupdDlg.h"
#include "KopDownload.h"
#include "VerifyDlg.h"
#include ".\ftpupddlg.h"
#include "xml.h"

extern UINT FtpupdThread(LPVOID pParam);

#ifdef _DEBUG
#define new DEBUG_NEW
#endif


////////////////////////////////////////////////////////////////////////
//  �����̱��
//  By Jampe
////////////////////////////////////////////////////////////////////////
int g_cooperate = 0;    //  �̼Һ������
CString strRunArgv;     //  ��������
////////////////////////////////////////////////////////////////////////
CString strHomepage;    //  ������ҳ
CString strRegister;    //  ע��
CString strNews;        //  ����
CString strActivity;    //  �
CString strUpdate;      //  �汾���� Add by lark.li 20080218
CString strAd;          //  ���
////////////////////////////////////////////////////////////////////////
int iBanner;             //  ҳ��LOGO
extern int g_AcceptLicense;


// CFtpupdDlg �Ի���

CFtpupdDlg::CFtpupdDlg(CWnd* pParent /*=NULL*/)
	: CBitmapDialog(CFtpupdDlg::IDD, pParent)
{
    m_hIconLarge = AfxGetApp()->LoadIcon(IDI_LARGE);
    m_hIconSmall = AfxGetApp()->LoadIcon(IDI_SMALL);

    m_pFtpThrd = NULL;
	m_ipersent =0;
}

void CFtpupdDlg::DoDataExchange(CDataExchange* pDX)
{
    CDialog::DoDataExchange(pDX);
    DDX_Control(pDX, IDC_PROGRESS1, m_ProgressBar);
    DDX_Control(pDX, IDC_FILENAME, m_stFileName);
    DDX_Control(pDX, IDC_EXPLORER5, m_Web);
    DDX_Control(pDX, IDC_EXPLORER2, m_Web2);
	DDX_Control(pDX, IDC_EXPLORER3, m_Web3);
	DDX_Control(pDX, IDC_EXPLORER4, m_Web4);
	DDX_Control(pDX, IDC_REGACCOUNT, m_btnRegister);
	DDX_Control(pDX, IDC_HOMEPAGE, m_btnHomePage);
	DDX_Control(pDX, IDREPAIR, m_btnRepair);
	DDX_Control(pDX, IDSTARTGAME, m_btnStartGame);
	DDX_Control(pDX, IDEXIT, m_btnExit);

}

BEGIN_MESSAGE_MAP(CFtpupdDlg, CDialog)
	ON_WM_PAINT()
	ON_WM_QUERYDRAGICON()
	ON_WM_ERASEBKGND()
	ON_WM_LBUTTONDOWN()
	ON_WM_CTLCOLOR()

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
    ON_BN_CLICKED(IDC_REGACCOUNT, OnBnClickedRegaccount)
    ON_BN_CLICKED(IDC_HOMEPAGE, OnBnClickedHomepage)
    ON_BN_CLICKED(IDC_BEGINNER, OnBnClickedBeginner)
    ON_WM_CTLCOLOR()

END_MESSAGE_MAP()


// CFtpupdDlg ��Ϣ�������

BOOL CFtpupdDlg::OnInitDialog()
{
	CDialog::OnInitDialog();

	// ���ô˶Ի����ͼ�ꡣ��Ӧ�ó��������ڲ��ǶԻ���ʱ����ܽ��Զ�
	//  ִ�д˲���
    SetIcon(m_hIconLarge, TRUE);         // ���ô�ͼ��
    SetIcon(m_hIconSmall, FALSE);        // ����Сͼ��


	ReadConfig("config.xml");
    ////////////////////////////////////////
    //
    //  By Jampe
    //  ���ں������
    //  2006/5/25
    //
	g_KopData.SaveISP(CKopData::CHINA_TELECOM);
    if(g_cooperate)
    {
		HBITMAP hBmp = ::LoadBitmap(AfxGetApp()->m_hInstance, MAKEINTRESOURCE(iBanner));
        GetDlgItem(IDC_STATIC_AD)->SendMessage(STM_SETIMAGE, IMAGE_BITMAP, (LPARAM)hBmp);
    }
    
    
    ////////////////////////////////////////

	// TODO: �ڴ���Ӷ���ĳ�ʼ������
    m_strCaption.LoadString(IDS_CAPTION);
    SetWindowText(m_strCaption);

    CMenu* pMenu = this->GetSystemMenu(FALSE);
    pMenu->EnableMenuItem(SC_CLOSE, MF_BYCOMMAND | MF_GRAYED);


	m_stFileName.SetWindowText("");


	// set frame speed

	m_btnRegister.SetBitmaps(IDB_BtnBmp, &m_btnRegisterData._picRect[BT_DISABLE], &m_btnRegisterData._picRect[BT_MOUSEOUT], &m_btnRegisterData._picRect[BT_MOUSEIN], &m_btnRegisterData._picRect[BT_MOUSEDOWN],RGB(255,0,255));
	//m_btnRegister.MoveWindow(m_btnRegisterData._showRect.right , m_btnRegisterData._showRect.top, m_btnRegisterData._showRect.Width(), m_btnRegisterData._showRect.Height());
	//m_btnRegister.SetIsSelected(TRUE);


	m_btnHomePage.SetBitmaps(IDB_BtnBmp, &m_btnHomePageData._picRect[BT_DISABLE], &m_btnHomePageData._picRect[BT_MOUSEOUT], &m_btnHomePageData._picRect[BT_MOUSEIN], &m_btnHomePageData._picRect[BT_MOUSEDOWN],RGB(255,0,255));
	//m_btnHomePage.MoveWindow(m_btnHomePageData._showRect.right , m_btnHomePageData._showRect.top, m_btnHomePageData._showRect.Width(), m_btnHomePageData._showRect.Height());



	m_btnRepair.SetBitmaps(IDB_BtnBmp, &m_btnRepairData._picRect[BT_DISABLE], &m_btnRepairData._picRect[BT_MOUSEOUT], &m_btnRepairData._picRect[BT_MOUSEIN], &m_btnRepairData._picRect[BT_MOUSEDOWN],RGB(255,0,255));
	//m_btnRepair.MoveWindow(m_btnRepairData._showRect.right , m_btnRepairData._showRect.top, m_btnRepairData._showRect.Width(), m_btnRepairData._showRect.Height());



	m_btnStartGame.SetBitmaps(IDB_BtnBmp, &m_btnStartGameData._picRect[BT_DISABLE], &m_btnStartGameData._picRect[BT_MOUSEOUT], &m_btnStartGameData._picRect[BT_MOUSEIN], &m_btnStartGameData._picRect[BT_MOUSEDOWN],RGB(255,0,255));
	//m_btnStartGame.MoveWindow(m_btnStartGameData._showRect.right , m_btnStartGameData._showRect.top, m_btnStartGameData._showRect.Width(), m_btnStartGameData._showRect.Height());


	m_btnExit.SetBitmaps(IDB_BtnBmp, &m_btnExitData._picRect[BT_DISABLE], &m_btnExitData._picRect[BT_MOUSEOUT], &m_btnExitData._picRect[BT_MOUSEIN], &m_btnExitData._picRect[BT_MOUSEDOWN],RGB(255,0,255));
	//m_btnExit.MoveWindow(m_btnExitData._showRect.right , m_btnExitData._showRect.top, m_btnExitData._showRect.Width(), m_btnExitData._showRect.Height());

	//GetDlgItem(IDC_FILENAME)->SetWindowPos(&CWnd::wndTop,m_stcProgressData._showRect.left,m_stcProgressData._showRect.top-m_stcProgressData._showRect.Height()-20,
	//	m_stcProgressData._showRect.Width(),m_stcProgressData._showRect.Height(),SWP_SHOWWINDOW);

	// set Button pos
	GetDlgItem(IDC_REGACCOUNT)->SetWindowPos(&CWnd::wndTop,m_btnRegisterData._showRect.left,m_btnRegisterData._showRect.top,
		m_btnRegisterData._showRect.Width(),m_btnRegisterData._showRect.Height(),SWP_SHOWWINDOW);
		
	GetDlgItem(IDSTARTGAME)->SetWindowPos(&CWnd::wndTop,m_btnStartGameData._showRect.left,m_btnStartGameData._showRect.top,
		m_btnStartGameData._showRect.Width(),m_btnStartGameData._showRect.Height(),SWP_SHOWWINDOW);
		
	GetDlgItem(IDEXIT)->SetWindowPos(&CWnd::wndTop,m_btnExitData._showRect.left,m_btnExitData._showRect.top,
		m_btnExitData._showRect.Width(),m_btnExitData._showRect.Height(),SWP_SHOWWINDOW);
		
	GetDlgItem(IDC_HOMEPAGE)->SetWindowPos(&CWnd::wndTop,m_btnHomePageData._showRect.left,m_btnHomePageData._showRect.top,
		m_btnHomePageData._showRect.Width(),m_btnHomePageData._showRect.Height(),SWP_SHOWWINDOW);
		
	GetDlgItem(IDREPAIR)->SetWindowPos(&CWnd::wndTop,m_btnRepairData._showRect.left,m_btnRepairData._showRect.top,
		m_btnRepairData._showRect.Width(),m_btnRepairData._showRect.Height(),SWP_SHOWWINDOW);
		
	// set progress pos
	GetDlgItem(IDC_PROGRESS1)->SetWindowPos(&CWnd::wndTop,m_stcProgressData._showRect.left,m_stcProgressData._showRect.top,
		m_stcProgressData._showRect.Width(),m_stcProgressData._showRect.Height(),SWP_SHOWWINDOW);

	GetDlgItem(IDC_PROGRESS1)->ShowWindow(false);

	// set web pos
	m_Web.SetWindowPos(&CWnd::wndTop, m_stcBillUpData._showRect.left, m_stcBillUpData._showRect.top,
		m_stcBillUpData._showRect.Width(), m_stcBillUpData._showRect.Height(), SWP_SHOWWINDOW);
	m_Web2.SetWindowPos(&CWnd::wndTop, m_stcWeb1Data._showRect.left, m_stcWeb1Data._showRect.top,
							m_stcWeb1Data._showRect.Width(), m_stcWeb1Data._showRect.Height(), SWP_SHOWWINDOW);
	m_Web3.SetWindowPos(&CWnd::wndTop, m_stcWeb2Data._showRect.left, m_stcWeb2Data._showRect.top,
							m_stcWeb2Data._showRect.Width(), m_stcWeb2Data._showRect.Height(), SWP_SHOWWINDOW);
	m_Web4.SetWindowPos(&CWnd::wndTop, m_stcWeb3Data._showRect.left, m_stcWeb3Data._showRect.top,
						m_stcWeb3Data._showRect.Width(), m_stcWeb3Data._showRect.Height(), SWP_SHOWWINDOW);
	GetDlgItem(IDC_STATIC_AD)->SetWindowPos(&CWnd::wndTop,m_stcBillDownData._showRect.left,m_stcBillDownData._showRect.top,
						m_stcBillDownData._showRect.Width(),m_stcBillDownData._showRect.Height(),SWP_SHOWWINDOW);

   

	LoadBitmap(IDB_MAIN);
	SetTransparent (TRUE);
	SetTransColor (RGB(255,0,255));
	SetStaticTransparent (TRUE);
	SetClickAnywhereMove (TRUE);
	m_pProgressBmp = new CBitmap;
	m_pProgressBmp->LoadBitmap(IDB_BITMAP4);
	

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
        Sleep(500);
    }
	if (m_stFileName)
	{
		CPaintDC dc(this);
		CRect rect;
		CString str;
		m_stFileName.GetWindowText(str);
		GetDlgItem(IDC_PROGRESS1)->GetWindowRect(&rect);
		dc.SetTextColor(RGB(255,255,255));
		dc.SetBkMode(TRANSPARENT );
		int h = rect.Height()-12;
		int w = 10;
		rect.top = rect.top-h;
		rect.bottom = rect.bottom-h;
		rect.left = rect.left + w;
		rect.right = rect.left + w +400;
		this->ScreenToClient(&rect);
		dc.DrawText(str,rect,DT_LEFT);

		// draw  progerss
		CDC dcImage;
		dcImage.CreateCompatibleDC (&dc);
		CBitmap *pOldBitmap = dcImage.SelectObject (m_pProgressBmp);

		// Get bitmap width and height
		BITMAP bm;
		m_pProgressBmp->GetBitmap (&bm);
		// Use the minimum width and height
		int width = ((float)(m_ipersent/100.f))*bm.bmWidth;
		 //width = bm.bmWidth;
		dc.BitBlt (m_stcProgressData._showRect.left, m_stcProgressData._showRect.top, width, bm.bmHeight, &dcImage, 0, 0, SRCCOPY);

		// Release
		dcImage.SelectObject (pOldBitmap);
		dcImage.DeleteDC ();

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
void CFtpupdDlg::SetProgress(int persent)
{
	CRect rect;
	//���½�����
	rect.top = m_stcProgressData._showRect.top;
	rect.bottom = m_stcProgressData._showRect.bottom;
	rect.left = m_stcProgressData._showRect.left;
	rect.right = m_stcProgressData._showRect.right;
	this->InvalidateRect(&rect,false);
	// ������ 
	GetDlgItem(IDC_PROGRESS1)->GetWindowRect(&rect);
	int h = rect.Height()-12;
	int w = 10;
	rect.top = rect.top-h;
	rect.bottom = rect.bottom-h;
	rect.left = rect.left + w;
	rect.right = rect.left + w+400;

	this->ScreenToClient(&rect);
	this->InvalidateRect(&rect);

	m_ipersent = persent;
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
  //  m_stFilePercent.SetWindowText(strPercent);
    return 0;
}

HRESULT CFtpupdDlg::OnUpdateProgressBar(WPARAM wParam, LPARAM lParam)
{
    m_ProgressBar.SetRange32(0, g_KopData.GetTotalSize());
   // m_ProgressBar.SetPos(g_KopData.GetRecvSize());
	float percent = (float)g_KopData.GetRecvSize()/(float)g_KopData.GetTotalSize();
	this->SetProgress((int)(percent*100));
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
    //m_ProgressBar.SetRange32(0, 1);
    //m_ProgressBar.SetPos(1);
	this->SetProgress(1);

	CRect rc;
	CWnd* pBtnRepair = GetDlgItem(IDREPAIR);
	CWnd* pBtnExit = GetDlgItem(IDEXIT);
	CWnd* pBtnCancel = GetDlgItem(IDCANCEL);
    CWnd* pBtnStart = GetDlgItem(IDSTARTGAME);

    // ʹ�� ������Ϸ ��ť�� �޲��ͻ��� ��ť
	pBtnStart->EnableWindow();
    pBtnStart->ShowWindow(SW_SHOW);

    if(COP_SINA != g_cooperate)
    {
	    pBtnRepair->EnableWindow();
	    pBtnRepair->ShowWindow(SW_SHOW);
    }
    
    return 0;
}

HRESULT CFtpupdDlg::OnUpdateWeb(WPARAM wParam, LPARAM lParam)
{
    m_Web.Navigate(strAd, NULL, NULL, NULL, NULL);	
	
	//m_Tab.SetCurSel(0);
	m_Web2.Navigate(strNews, NULL, NULL, NULL, NULL); 
	m_Web3.Navigate(strActivity, NULL, NULL, NULL, NULL);
	m_Web4.Navigate(strUpdate,NULL, NULL, NULL, NULL);

    return 0;
}

void CFtpupdDlg::OnBnClickedStartGame()
{
    // TODO: Add your control notification handler code here

    CString strRunApp = g_KopData.GetRunApp();
    strRunApp += " startgame ";
    strRunApp += strRunArgv;
    TRACE1("Run App = %s\n", (LPCTSTR)strRunApp);

    // ִ�пͻ��˳���
    PROCESS_INFORMATION pi;
    STARTUPINFO si;
    GetStartupInfo(&si);
    if (CreateProcess(NULL, (LPSTR)(LPCTSTR)strRunApp, NULL, NULL, FALSE,
        NORMAL_PRIORITY_CLASS, NULL, NULL, &si, &pi))
    {
		//���гɹ�
        CloseHandle(pi.hProcess);
    }
	else
	{
		MessageBox("��Ϸ����ʧ�ܣ���������·���͹���Ŀ¼�Ƿ���ȷ����ȷ�����㹻��Ȩ�޷��ʡ�");
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
           // m_strSpeed.Format("��������...");
        }
        else
        {
            if (dwRtmSpeed >= 1000)
            {
               // m_strSpeed.Format("%.1fMB/s", (float)dwRtmSpeed / 1000);
            }
            else
            {
               // m_strSpeed.Format("%dKB/s", dwRtmSpeed);
            }
        }
        
       // m_stSpeed.SetWindowText(m_strSpeed);
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

//void CFtpupdDlg::OnTcnSelchangeTab1(NMHDR *pNMHDR, LRESULT *pResult)
//{
//	// TODO: Add your control notification handler code here
//	//int nIndex = m_Tab.GetCurSel();
//
//	//switch(nIndex)
//	//{
//	//case 0:
// //       m_Web2.Navigate(strNews, NULL, NULL, NULL, NULL);
//	//	break;
//
//	//case 1:
// //       m_Web2.Navigate(strActivity, NULL, NULL, NULL, NULL);
//	//	break;
//
//	//case 2:
// //       m_Web2.Navigate("http://www.hdwonline.com/update/update.aspx",
// //           NULL, NULL, NULL, NULL);
//	//	break;
//	//}
//	m_Web2.Navigate(strNews, NULL, NULL, NULL, NULL);
//
//	m_Web3.Navigate(strActivity, NULL, NULL, NULL, NULL);
//		
//	m_Web4.Navigate("http://www.hdwonline.com/update/update.aspx",NULL, NULL, NULL, NULL);
//
//	*pResult = 0;
//}

void CFtpupdDlg::OnBnClickedRegaccount()
{
    // TODO: Add your control notification handler code here
    ShellExecute(this->m_hWnd, "open",
        strRegister, NULL, NULL, SW_SHOW);
}

void CFtpupdDlg::OnBnClickedHomepage()
{
    // TODO: Add your control notification handler code here
    ShellExecute(this->m_hWnd, "open", strHomepage,
        NULL, NULL, SW_SHOW);
}

void CFtpupdDlg::OnBnClickedBeginner()
{
    // TODO: Add your control notification handler code here
    ShellExecute(this->m_hWnd, "open",
        "http://www.moliyo.com/moliyo/GameKop/kop/game_newuser_index.aspx",
        NULL, NULL, SW_SHOW);
}

//void CFtpupdDlg::OnBnClickedSelnet()
//{
//    // TODO: Add your control notification handler code here
//    CSelectISP sel;
//    INT_PTR nResponse = sel.DoModal();
//}

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

//void CFtpupdDlg::OnCbnSelchangeCombo1()
//{
//    // TODO: Add your control notification handler code here
//    //CString strISP;
//
//    //int nSel = m_cbSelISP.GetCurSel();
//    //m_cbSelISP.GetLBText(nSel, strISP);
//
//    //UCHAR ucISP = CKopData::CHINA_INVALIDISP;
//    //if (strISP == "�й�����")
//    //{
//    //    ucISP = CKopData::CHINA_TELECOM;
//    //}
//    //else if (strISP == "�й���ͨ")
//    //{
//    //    ucISP = CKopData::CHINA_NETCOM;
//    //}
//
//    //if (g_KopData.GetISP() != CHINA_TELECOM)
//    //{
//    //    g_KopData.SaveISP(CHINA_TELECOM);
//    //    MessageBox("���޸����������ã������������Զ����³���!");
//    //    ExitProcess(-1);
//    //}
//}

//void CFtpupdDlg::OnBnClickedAcpt()
//{
//    // TODO: Add your control notification handler code here
//    g_AcceptLicense = 1;
//}
//
//void CFtpupdDlg::OnBnClickedUnacpt()
//{
//    // TODO: Add your control notification handler code here
//    g_AcceptLicense = 2;
//}
// read config drog
BOOL CFtpupdDlg::ReadConfig(const char* filename)
{
	XmlDocument	doc;

	if(	doc.Open( filename) )
	{
		const	XmlNode*	pNode	=	doc.GetRoot();	

		if(	pNode	)
		{
			for(	int	i	=	0;	i	<	pNode->GetChildNodeCount();	i	++	)
			{
				const	XmlNode*	pChildNode	=	pNode->GetChildNode( i );


				if(	strcmp(pChildNode->GetName(),"Register") == 0 )
				{

					const	XmlNode*	pconfig	=	pChildNode;	
					m_btnRegisterData._picname=pconfig->QueryAttrib("name");
					for(int i=0;i<BT_NULL;i++)
					{
						char left[32]	 ={0};
						char top[32]	 ={0};
						char width[32]	 ={0};
						char height[32]	 ={0};
						sprintf(left,"left%d",i);
						sprintf(top,"top%d",i);
						sprintf(width,"width%d",i);
						sprintf(height,"height%d",i);
						int x1,y1,x2,y2;
						x1 =(int)atoi(pconfig->QueryAttrib(left));
						y1 = (int)atoi(pconfig->QueryAttrib(top));
						x2 = x1+(int)atoi(pconfig->QueryAttrib(width));
						y2 = y1+(int)atoi(pconfig->QueryAttrib(height));
						m_btnRegisterData._picRect[i].SetRect(x1,y1,x2,y2);
					}


					m_btnRegisterData._showRect.left = (int)atoi(pconfig->QueryAttrib("x"));
					m_btnRegisterData._showRect.top = (int)atoi(pconfig->QueryAttrib("y"));
					m_btnRegisterData._showRect.bottom = m_btnRegisterData._showRect.top+(int)atoi(pconfig->QueryAttrib("h"));
					m_btnRegisterData._showRect.right = m_btnRegisterData._showRect.left+(int)atoi(pconfig->QueryAttrib("w"));
					m_btnRegisterData._keyColor = (int)atoi(pconfig->QueryAttrib("keycolor"));


				}else if (strcmp(pChildNode->GetName(),"Repair") == 0 ) 
				{
					const	XmlNode*	pconfig	=	pChildNode;	
					m_btnRepairData._picname =pconfig->QueryAttrib(	"name");
					for(int i=0;i<BT_NULL;i++)
					{
						char left[32]	 ={0};
						char top[32]	 ={0};
						char width[32]	 ={0};
						char height[32]	 ={0};
						sprintf(left,"left%d",i);
						sprintf(top,"top%d",i);
						sprintf(width,"width%d",i);
						sprintf(height,"height%d",i);
						int x1,y1,x2,y2;
						x1 =(int)atoi(pconfig->QueryAttrib(left));
						y1 = (int)atoi(pconfig->QueryAttrib(top));
						x2 = x1+(int)atoi(pconfig->QueryAttrib(width));
						y2 = y1+(int)atoi(pconfig->QueryAttrib(height));
						m_btnRepairData._picRect[i].SetRect(x1,y1,x2,y2);
					}


					m_btnRepairData._showRect.left = (int)atoi(pconfig->QueryAttrib("x"));
					m_btnRepairData._showRect.top = (int)atoi(pconfig->QueryAttrib("y"));
					m_btnRepairData._showRect.bottom = m_btnRepairData._showRect.top+(int)atoi(pconfig->QueryAttrib("h"));
					m_btnRepairData._showRect.right = m_btnRepairData._showRect.left+(int)atoi(pconfig->QueryAttrib("w"));
					m_btnRepairData._keyColor = (int)atoi(pconfig->QueryAttrib("keycolor"));

				}
				else if (strcmp(pChildNode->GetName(),"StartGame") == 0 ) 
				{
					const	XmlNode*	pconfig	=	pChildNode;	
					m_btnStartGameData._picname = pconfig->QueryAttrib(	"name");

					for(int i=0;i<BT_NULL;i++)
					{
						char left[32]	 ={0};
						char top[32]	 ={0};
						char width[32]	 ={0};
						char height[32]	 ={0};
						sprintf(left,"left%d",i);
						sprintf(top,"top%d",i);
						sprintf(width,"width%d",i);
						sprintf(height,"height%d",i);
						int x1,y1,x2,y2;
						x1 =(int)atoi(pconfig->QueryAttrib(left));
						y1 = (int)atoi(pconfig->QueryAttrib(top));
						x2 = x1+(int)atoi(pconfig->QueryAttrib(width));
						y2 = y1+(int)atoi(pconfig->QueryAttrib(height));
						m_btnStartGameData._picRect[i].SetRect(x1,y1,x2,y2);
					}

					m_btnStartGameData._showRect.left = (int)atoi(pconfig->QueryAttrib("x"));
					m_btnStartGameData._showRect.top = (int)atoi(pconfig->QueryAttrib("y"));
					m_btnStartGameData._showRect.bottom = m_btnStartGameData._showRect.top+(int)atoi(pconfig->QueryAttrib("h"));
					m_btnStartGameData._showRect.right = m_btnStartGameData._showRect.left+(int)atoi(pconfig->QueryAttrib("w"));
					m_btnStartGameData._keyColor = (int)atoi(pconfig->QueryAttrib("keycolor"));

				}
				else if (strcmp(pChildNode->GetName(),"Exit") == 0 ) 
				{
					const	XmlNode*	pconfig	=	pChildNode;	
					m_btnExitData._picname = pconfig->QueryAttrib("name");

					for(int i=0;i<BT_NULL;i++)
					{
						char left[32]	 ={0};
						char top[32]	 ={0};
						char width[32]	 ={0};
						char height[32]	 ={0};
						sprintf(left,"left%d",i);
						sprintf(top,"top%d",i);
						sprintf(width,"width%d",i);
						sprintf(height,"height%d",i);
						int x1,y1,x2,y2;
						x1 =(int)atoi(pconfig->QueryAttrib(left));
						y1 = (int)atoi(pconfig->QueryAttrib(top));
						x2 = x1+(int)atoi(pconfig->QueryAttrib(width));
						y2 = y1+(int)atoi(pconfig->QueryAttrib(height));
						m_btnExitData._picRect[i].SetRect(x1,y1,x2,y2);
					}
					m_btnExitData._showRect.left = (int)atoi(pconfig->QueryAttrib("x"));
					m_btnExitData._showRect.top = (int)atoi(pconfig->QueryAttrib("y"));
					m_btnExitData._showRect.bottom = m_btnExitData._showRect.top+(int)atoi(pconfig->QueryAttrib("h"));
					m_btnExitData._showRect.right = m_btnExitData._showRect.left+(int)atoi(pconfig->QueryAttrib("w"));
					m_btnExitData._keyColor = (int)atoi(pconfig->QueryAttrib("keycolor"));

				}
				else if (strcmp(pChildNode->GetName(),"Accept") == 0 ) 
				{
					const	XmlNode*	pconfig	=	pChildNode;	
					m_btnAcceptData._picname = pconfig->QueryAttrib(	"name");
					for(int i=0;i<BT_NULL;i++)
					{
						char left[32]	 ={0};
						char top[32]	 ={0};
						char width[32]	 ={0};
						char height[32]	 ={0};
						sprintf(left,"left%d",i);
						sprintf(top,"top%d",i);
						sprintf(width,"width%d",i);
						sprintf(height,"height%d",i);
						int x1,y1,x2,y2;
						x1 =(int)atoi(pconfig->QueryAttrib(left));
						y1 = (int)atoi(pconfig->QueryAttrib(top));
						x2 = x1+(int)atoi(pconfig->QueryAttrib(width));
						y2 = y1+(int)atoi(pconfig->QueryAttrib(height));
						m_btnAcceptData._picRect[i].SetRect(x1,y1,x2,y2);
					}

					m_btnAcceptData._showRect.left = (int)atoi(pconfig->QueryAttrib("x"));
					m_btnAcceptData._showRect.top = (int)atoi(pconfig->QueryAttrib("y"));
					m_btnAcceptData._showRect.bottom = m_btnAcceptData._showRect.top+(int)atoi(pconfig->QueryAttrib("h"));
					m_btnAcceptData._showRect.right = m_btnAcceptData._showRect.left+(int)atoi(pconfig->QueryAttrib("w"));
					m_btnAcceptData._keyColor = (int)atoi(pconfig->QueryAttrib("keycolor"));

				}
				else if (strcmp(pChildNode->GetName(),"UnAccept") == 0 ) 
				{
					const	XmlNode*	pconfig	=	pChildNode;

					m_btnUnAcceptData._picname= pconfig->QueryAttrib("name");
					for(int i=0;i<BT_NULL;i++)
					{
						char left[32]	 ={0};
						char top[32]	 ={0};
						char width[32]	 ={0};
						char height[32]	 ={0};
						sprintf(left,"left%d",i);
						sprintf(top,"top%d",i);
						sprintf(width,"width%d",i);
						sprintf(height,"height%d",i);
						int x1,y1,x2,y2;
						x1 =(int)atoi(pconfig->QueryAttrib(left));
						y1 = (int)atoi(pconfig->QueryAttrib(top));
						x2 = x1+(int)atoi(pconfig->QueryAttrib(width));
						y2 = y1+(int)atoi(pconfig->QueryAttrib(height));
						m_btnUnAcceptData._picRect[i].SetRect(x1,y1,x2,y2);
						
					}

					m_btnUnAcceptData._showRect.left = (int)atoi(pconfig->QueryAttrib("x"));
					m_btnUnAcceptData._showRect.top = (int)atoi(pconfig->QueryAttrib("y"));
					m_btnUnAcceptData._showRect.bottom = m_btnUnAcceptData._showRect.top+(int)atoi(pconfig->QueryAttrib("h"));
					m_btnUnAcceptData._showRect.right = m_btnUnAcceptData._showRect.left+(int)atoi(pconfig->QueryAttrib("w"));
					m_btnUnAcceptData._keyColor = (int)atoi(pconfig->QueryAttrib("keycolor"));

				}
				else if (strcmp(pChildNode->GetName(),"HomPage") == 0 ) 
				{
					const	XmlNode*	pconfig	=	pChildNode;

					m_btnHomePageData._picname= pconfig->QueryAttrib("name");
					for(int i=0;i<BT_NULL;i++)
					{
						char left[32]	 ={0};
						char top[32]	 ={0};
						char width[32]	 ={0};
						char height[32]	 ={0};
						sprintf(left,"left%d",i);
						sprintf(top,"top%d",i);
						sprintf(width,"width%d",i);
						sprintf(height,"height%d",i);
						int x1,y1,x2,y2;
						x1 =(int)atoi(pconfig->QueryAttrib(left));
						y1 = (int)atoi(pconfig->QueryAttrib(top));
						x2 = x1+(int)atoi(pconfig->QueryAttrib(width));
						y2 = y1+(int)atoi(pconfig->QueryAttrib(height));
						m_btnHomePageData._picRect[i].SetRect(x1,y1,x2,y2);
					}

					m_btnHomePageData._showRect.left = (int)atoi(pconfig->QueryAttrib("x"));
					m_btnHomePageData._showRect.top = (int)atoi(pconfig->QueryAttrib("y"));
					m_btnHomePageData._showRect.bottom = m_btnHomePageData._showRect.top+(int)atoi(pconfig->QueryAttrib("h"));
					m_btnHomePageData._showRect.right = m_btnHomePageData._showRect.left+(int)atoi(pconfig->QueryAttrib("w"));
					m_btnHomePageData._keyColor = (int)atoi(pconfig->QueryAttrib("keycolor"));

				}
				
				// static 
				else if (strcmp(pChildNode->GetName(),"stcBillUp") == 0 ) 
				{
					const	XmlNode*	pconfig	=	pChildNode;
					m_stcBillUpData._showRect.left = (int)atoi(pconfig->QueryAttrib("x"));
					m_stcBillUpData._showRect.top = (int)atoi(pconfig->QueryAttrib("y"));
					m_stcBillUpData._showRect.bottom = m_stcBillUpData._showRect.top+(int)atoi(pconfig->QueryAttrib("h"));
					m_stcBillUpData._showRect.right = m_stcBillUpData._showRect.left+(int)atoi(pconfig->QueryAttrib("w"));

				}
				else if (strcmp(pChildNode->GetName(),"stcBillDown") == 0 ) 
				{
					const	XmlNode*	pconfig	=	pChildNode;
					m_stcBillDownData._showRect.left = (int)atoi(pconfig->QueryAttrib("x"));
					m_stcBillDownData._showRect.top = (int)atoi(pconfig->QueryAttrib("y"));
					m_stcBillDownData._showRect.bottom = m_stcBillDownData._showRect.top+(int)atoi(pconfig->QueryAttrib("h"));
					m_stcBillDownData._showRect.right = m_stcBillDownData._showRect.left+(int)atoi(pconfig->QueryAttrib("w"));

				}
				else if (strcmp(pChildNode->GetName(),"stcWeb1") == 0 ) 
				{
					const	XmlNode*	pconfig	=	pChildNode;
					m_stcWeb1Data._showRect.left = (int)atoi(pconfig->QueryAttrib("x"));
					m_stcWeb1Data._showRect.top = (int)atoi(pconfig->QueryAttrib("y"));
					m_stcWeb1Data._showRect.bottom = m_stcWeb1Data._showRect.top+(int)atoi(pconfig->QueryAttrib("h"));
					m_stcWeb1Data._showRect.right = m_stcWeb1Data._showRect.left+(int)atoi(pconfig->QueryAttrib("w"));

				}
				else if (strcmp(pChildNode->GetName(),"stcWeb2") == 0 ) 
				{
					const	XmlNode*	pconfig	=	pChildNode;
					m_stcWeb2Data._showRect.left = (int)atoi(pconfig->QueryAttrib("x"));
					m_stcWeb2Data._showRect.top = (int)atoi(pconfig->QueryAttrib("y"));
					m_stcWeb2Data._showRect.bottom = m_stcWeb2Data._showRect.top+(int)atoi(pconfig->QueryAttrib("h"));
					m_stcWeb2Data._showRect.right = m_stcWeb2Data._showRect.left+(int)atoi(pconfig->QueryAttrib("w"));

				}
				else if (strcmp(pChildNode->GetName(),"stcWeb3") == 0 ) 
				{
					const	XmlNode*	pconfig	=	pChildNode;
					m_stcWeb3Data._showRect.left = (int)atoi(pconfig->QueryAttrib("x"));
					m_stcWeb3Data._showRect.top = (int)atoi(pconfig->QueryAttrib("y"));
					m_stcWeb3Data._showRect.bottom = m_stcWeb3Data._showRect.top+(int)atoi(pconfig->QueryAttrib("h"));
					m_stcWeb3Data._showRect.right = m_stcWeb3Data._showRect.left+(int)atoi(pconfig->QueryAttrib("w"));

				}
				
				else if (strcmp(pChildNode->GetName(),"stcProgress") == 0 ) 
				{
					const	XmlNode*	pconfig	=	pChildNode;
					m_stcProgressData._showRect.left = (int)atoi(pconfig->QueryAttrib("x"));
					m_stcProgressData._showRect.top = (int)atoi(pconfig->QueryAttrib("y"));
					m_stcProgressData._showRect.bottom = m_stcProgressData._showRect.top+(int)atoi(pconfig->QueryAttrib("h"));
					m_stcProgressData._showRect.right = m_stcProgressData._showRect.left+(int)atoi(pconfig->QueryAttrib("w"));

				}
			}
		}
		return true;
	}
	return true;
}
