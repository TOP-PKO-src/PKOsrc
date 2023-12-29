// InfoItemDlg.cpp : ʵ���ļ�
//

#include "stdafx.h"
#include "InfoItem.h"
#include "InfoItemDlg.h"
#include "zlib/zlib.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#endif


// CInfoItemDlg �Ի���



CInfoItemDlg::CInfoItemDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CInfoItemDlg::IDD, pParent)
{
	m_hIcon = AfxGetApp()->LoadIcon(IDR_MAINFRAME);
}

void CInfoItemDlg::DoDataExchange(CDataExchange* pDX)
{
    CDialog::DoDataExchange(pDX);
    DDX_Control(pDX, IDC_EDIT1, m_src);
    DDX_Control(pDX, IDC_EDIT2, m_dest);
    DDX_Control(pDX, IDC_BUTTON1, m_src_btn);
    DDX_Control(pDX, IDC_BUTTON2, m_dest_btn);
    DDX_Control(pDX, IDC_BUTTON3, m_build);
}

BEGIN_MESSAGE_MAP(CInfoItemDlg, CDialog)
	ON_WM_PAINT()
	ON_WM_QUERYDRAGICON()
	//}}AFX_MSG_MAP
    ON_BN_CLICKED(IDC_BUTTON1, OnBnClickedButton1)
    ON_BN_CLICKED(IDC_BUTTON2, OnBnClickedButton2)
    ON_BN_CLICKED(IDC_BUTTON3, OnBnClickedButton3)
END_MESSAGE_MAP()


// CInfoItemDlg ��Ϣ�������

BOOL CInfoItemDlg::OnInitDialog()
{
	CDialog::OnInitDialog();

	// ���ô˶Ի����ͼ�ꡣ��Ӧ�ó��������ڲ��ǶԻ���ʱ����ܽ��Զ�
	//  ִ�д˲���
	SetIcon(m_hIcon, TRUE);			// ���ô�ͼ��
	SetIcon(m_hIcon, FALSE);		// ����Сͼ��

	// TODO: �ڴ���Ӷ���ĳ�ʼ������
	
	return TRUE;  // ���������˿ؼ��Ľ��㣬���򷵻� TRUE
}

// �����Ի��������С����ť������Ҫ����Ĵ���
//  �����Ƹ�ͼ�ꡣ����ʹ���ĵ�/��ͼģ�͵� MFC Ӧ�ó���
//  �⽫�ɿ���Զ���ɡ�

void CInfoItemDlg::OnPaint() 
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
HCURSOR CInfoItemDlg::OnQueryDragIcon()
{
	return static_cast<HCURSOR>(m_hIcon);
}

void CInfoItemDlg::OnBnClickedButton1()
{
    // TODO: Add your control notification handler code here
    CFileDialog fd(TRUE, "", "", OFN_HIDEREADONLY|OFN_OVERWRITEPROMPT|OFN_FILEMUSTEXIST, "Bin File (*.bin)|*.bin|All Files (*.*)|*.*||");
    fd.DoModal();
    m_srcPath = fd.GetPathName();
    m_src.SetWindowText(m_srcPath);

}

void CInfoItemDlg::OnBnClickedButton2()
{
    // TODO: Add your control notification handler code here
    CFileDialog fd(FALSE, "", "", OFN_HIDEREADONLY|OFN_OVERWRITEPROMPT, "Bin File (*.bin)|*.bin|All Files (*.*)|*.*||");
    fd.DoModal();

    m_destPath = fd.GetPathName();
    m_dest.SetWindowText(m_destPath);
}

void CInfoItemDlg::OnBnClickedButton3()
{
    // TODO: Add your control notification handler code here

    if(!m_srcPath.GetLength())
    {
        AfxMessageBox("What is Source File.", MB_OK, 0);
        return;
    }

    if(!m_destPath.GetLength())
    {
        AfxMessageBox("What is Destination File.", MB_OK, 0);
        return;
    }

    FILE* sfp = fopen(m_srcPath.GetString(), "rb");
    if(!sfp)
    {
        AfxMessageBox("Open File Failt.", MB_OK, 0);
        return;
    }

    FILE* dfp = fopen(m_destPath.GetString(), "wb");
    if(!dfp)
    {
        AfxMessageBox("Open File Failt.", MB_OK, 0);
        return;
    }

    m_src_btn.EnableWindow(0);
    m_dest_btn.EnableWindow(0);
    m_build.EnableWindow(0);

    unsigned long sfz = filelength(fileno(sfp));
    unsigned char* buffer = new unsigned char[sfz];
    unsigned char* cmpfile = new unsigned char[sfz];

    fread(buffer, 1, sfz, sfp);
    fclose(sfp);

    fwrite(&sfz, 4, 1, dfp);
    compress(cmpfile, &sfz, buffer, sfz);
    fwrite(cmpfile, 1, sfz, dfp);
    fclose(dfp);

    delete [] buffer;
    delete [] cmpfile;

    m_src_btn.EnableWindow(1);
    m_dest_btn.EnableWindow(1);
    m_build.EnableWindow(1);
}
