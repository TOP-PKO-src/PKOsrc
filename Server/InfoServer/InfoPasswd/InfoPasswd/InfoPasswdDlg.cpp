// InfoPasswdDlg.cpp : ʵ���ļ�
//

#include "stdafx.h"
#include "InfoPasswd.h"
#include "InfoPasswdDlg.h"
#include "enclib.h"
#include ".\infopasswddlg.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#endif


// CInfoPasswdDlg �Ի���



CInfoPasswdDlg::CInfoPasswdDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CInfoPasswdDlg::IDD, pParent)
	, m_TradeServer(FALSE)
{
	m_hIcon = AfxGetApp()->LoadIcon(IDR_MAINFRAME);
}

void CInfoPasswdDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	DDX_Control(pDX, IDC_EDIT1, m_Text);
	DDX_Control(pDX, IDC_EDIT2, m_Passwd);
	DDX_Control(pDX, IDC_BUTTON1, m_Go);
	DDX_Radio(pDX, IDC_RADIO_TRADE, m_TradeServer);
}

BEGIN_MESSAGE_MAP(CInfoPasswdDlg, CDialog)
	ON_WM_PAINT()
	ON_WM_QUERYDRAGICON()
	//}}AFX_MSG_MAP
    ON_BN_CLICKED(IDC_BUTTON1, OnBnClickedButton1)
END_MESSAGE_MAP()


// CInfoPasswdDlg ��Ϣ�������

BOOL CInfoPasswdDlg::OnInitDialog()
{
	CDialog::OnInitDialog();

	// ���ô˶Ի����ͼ�ꡣ��Ӧ�ó��������ڲ��ǶԻ���ʱ����ܽ��Զ�
	//  ִ�д˲���
	SetIcon(m_hIcon, TRUE);			// ���ô�ͼ��
	SetIcon(m_hIcon, FALSE);		// ����Сͼ��

	m_TradeServer = FALSE;
	// TODO: �ڴ���Ӷ���ĳ�ʼ������
    //SetEncKey((__byte*)ENC_KEY);
	
	return TRUE;  // ���������˿ؼ��Ľ��㣬���򷵻� TRUE
}

// �����Ի��������С����ť������Ҫ����Ĵ���
//  �����Ƹ�ͼ�ꡣ����ʹ���ĵ�/��ͼģ�͵� MFC Ӧ�ó���
//  �⽫�ɿ���Զ���ɡ�

void CInfoPasswdDlg::OnPaint() 
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
HCURSOR CInfoPasswdDlg::OnQueryDragIcon()
{
	return static_cast<HCURSOR>(m_hIcon);
}

void CInfoPasswdDlg::OnBnClickedButton1()
{
	this->UpdateData(TRUE);

	if(m_TradeServer)
	{
		SetEncKey((__byte*)"m&7B@d#");
	}
	else
	{
		SetEncKey((__byte*)"s#8Jx@D");
	}

    // TODO: �ڴ���ӿؼ�֪ͨ����������
    //try
    //{
    //    m_Go.EnableWindow(FALSE);
        CString txt;
        m_Text.GetWindowText(txt);

        int len = (txt.GetLength() * 2) + 5;

        char* buff = new char[len];
        Encrypt((__byte*)buff, len, (__byte*)txt.GetBuffer(), txt.GetLength());

        m_Passwd.SetWindowText(buff);
        delete[] buff;
    //    m_Go.EnableWindow();
    //}
    //catch(...)
    //{
    //    m_Go.EnableWindow();
    //}

}
