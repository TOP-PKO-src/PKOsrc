// ErrorReportDlg.cpp : ʵ���ļ�
//

#include "stdafx.h"
#include "ErrorReport.h"
#include "ErrorReportDlg.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#endif


// CErrorReportDlg �Ի���




CErrorReportDlg::CErrorReportDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CErrorReportDlg::IDD, pParent)
	, m_strMail(_T(""))
{
	m_hIcon = AfxGetApp()->LoadIcon(IDR_MAINFRAME);
}

void CErrorReportDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	DDX_Text(pDX, IDC_EDIT_ERROR, m_strMail);
}

BEGIN_MESSAGE_MAP(CErrorReportDlg, CDialog)
	ON_WM_SYSCOMMAND()
	ON_WM_PAINT()
	ON_WM_QUERYDRAGICON()
	//}}AFX_MSG_MAP
	ON_BN_CLICKED(IDOK, &CErrorReportDlg::OnBnClickedOk)
	ON_BN_CLICKED(ID_COPY, &CErrorReportDlg::OnBnClickedCopy)
	ON_BN_CLICKED(ID_CANCEL, &CErrorReportDlg::OnBnClickedCancel)
END_MESSAGE_MAP()


// CErrorReportDlg ��Ϣ�������

BOOL CErrorReportDlg::OnInitDialog()
{
	CDialog::OnInitDialog();

	// ��������...���˵�����ӵ�ϵͳ�˵��С�

	// IDM_ABOUTBOX ������ϵͳ���Χ�ڡ�
	ASSERT((IDM_ABOUTBOX & 0xFFF0) == IDM_ABOUTBOX);
	ASSERT(IDM_ABOUTBOX < 0xF000);

	CMenu* pSysMenu = GetSystemMenu(FALSE);
	if (pSysMenu != NULL)
	{
		CString strAboutMenu;
		strAboutMenu.LoadString(IDS_ABOUTBOX);
		if (!strAboutMenu.IsEmpty())
		{
			pSysMenu->AppendMenu(MF_SEPARATOR);
			pSysMenu->AppendMenu(MF_STRING, IDM_ABOUTBOX, strAboutMenu);
		}
	}

	// ���ô˶Ի����ͼ�ꡣ��Ӧ�ó��������ڲ��ǶԻ���ʱ����ܽ��Զ�
	//  ִ�д˲���
	SetIcon(m_hIcon, TRUE);			// ���ô�ͼ��
	SetIcon(m_hIcon, FALSE);		// ����Сͼ��

	// TODO: �ڴ���Ӷ���ĳ�ʼ������
	// ��ã�
	//		
	this->m_strMail = _T("��ã�\r\n");
	this->m_strMail.Append(_T("    �ҷ�����һ��Bug�����������ǸϿ�������Bug��Ϣ���£�\r\n"));

	CString   strAppPath;  
	CString   strTemp;  
	::GetModuleFileName(   NULL,   strTemp.GetBuffer(   256   ),   256   );  
	strTemp.ReleaseBuffer();  
	int   nNum   =   strTemp.ReverseFind(   '\\'   );  
	strTemp   =   strTemp.Left(   nNum   );  

	nNum   =   strTemp.ReverseFind(   '\\'   );  
	strAppPath   =   strTemp.Left(   nNum   );  

	TCHAR   c   =   strAppPath.GetAt(   nNum   -   1   );  
	if(   c   ==   '\\'   )  
	{  
		strAppPath   +=   "log\\exception.txt";  
	}  
	else  
	{  
		strAppPath   +=   "\\log\\exception.txt";  
	}   

	CStdioFile file;

	if(file.Open(strAppPath, CFile::modeRead|CFile::typeText))
	//if(file.Open(_T("C:\\exception.log"), CFile::modeRead))
	{
		CString content;

		while(file.ReadString(content))
		{
			this->m_strMail.Append(content);
			this->m_strMail.Append(_T("\r\n"));
		}
	}
	this->m_strMail.Append(_T("\r\n\t������ϵ��ʽ��"));
	
	this->UpdateData(FALSE);

	return TRUE;  // ���ǽ��������õ��ؼ������򷵻� TRUE
}

void CErrorReportDlg::OnSysCommand(UINT nID, LPARAM lParam)
{
	CDialog::OnSysCommand(nID, lParam);
}

// �����Ի��������С����ť������Ҫ����Ĵ���
//  �����Ƹ�ͼ�ꡣ����ʹ���ĵ�/��ͼģ�͵� MFC Ӧ�ó���
//  �⽫�ɿ���Զ���ɡ�

void CErrorReportDlg::OnPaint()
{
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
		dc.DrawIcon(x, y, m_hIcon);
	}
	else
	{
		CDialog::OnPaint();
	}
}

//���û��϶���С������ʱϵͳ���ô˺���ȡ�ù����ʾ��
//
HCURSOR CErrorReportDlg::OnQueryDragIcon()
{
	return static_cast<HCURSOR>(m_hIcon);
}


void CErrorReportDlg::OnBnClickedOk()
{
	ShellExecute(0, _T("open"), _T("mailto:lark.li@moliyo.com"), NULL, NULL, SW_SHOWDEFAULT);

	OnOK();
}

void CErrorReportDlg::OnBnClickedCopy()
{
	if(::OpenClipboard   (NULL))    
	{  
		this->UpdateData();


		::EmptyClipboard();  

		HGLOBAL hClipData = ::GlobalAlloc(GMEM_MOVEABLE | GMEM_DDESHARE, m_strMail.GetLength() + 1);
		if(! hClipData)
			return;

		char *pszClipData = (char*)::GlobalLock(hClipData);
		if(!pszClipData)
			return;

		memcpy(pszClipData, m_strMail.GetBuffer(), m_strMail.GetLength());

		GlobalUnlock(hClipData);

		::SetClipboardData(CF_TEXT,   hClipData);  
		::CloseClipboard();  
		::GlobalFree(hClipData);  
	}   
}

void CErrorReportDlg::OnBnClickedCancel()
{
	OnCancel();
}
