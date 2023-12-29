// DlgOption.cpp : implementation file
//

#include "stdafx.h"
#include "../../proj/EffectEditer.h"

#include ".\dlgoption.h"


// CDlgOption dialog

IMPLEMENT_DYNAMIC(CDlgOption, CDialog)
CDlgOption::CDlgOption(CWnd* pParent /*=NULL*/)
	: CDialog(CDlgOption::IDD, pParent)
	, m_CstrTexPath(_T(""))
	, m_CstrMeshPath(_T(""))
{
}

CDlgOption::~CDlgOption()
{
}

void CDlgOption::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	DDX_Text(pDX, IDC_EDITTEXPATH, m_CstrTexPath);
	DDX_Text(pDX, IDC_EDITMESHPATH, m_CstrMeshPath);
}


BEGIN_MESSAGE_MAP(CDlgOption, CDialog)
	ON_BN_CLICKED(IDC_BUTSELTEXPATH, OnBnClickedButseltexpath)
	ON_BN_CLICKED(IDC_BUTSELMESHPATH, OnBnClickedButselmeshpath)
END_MESSAGE_MAP()


// CDlgOption message handlers
void CDlgOption::BrowerFolder(CString &_str)
{
	BROWSEINFO bi;
	char Buffer[MAX_PATH];
	//��ʼ����ڲ���bi��ʼ
	bi.hwndOwner = NULL;
	bi.pidlRoot = NULL;
	bi.pszDisplayName = Buffer;//�˲�����ΪNULL������ʾ�Ի���
	bi.lpszTitle = _T("�޸Ľ���·��");
	bi.ulFlags = 0;
	bi.lpfn = NULL;
	bi.iImage=IDR_MAINFRAME;
	//��ʼ����ڲ���bi����
	LPITEMIDLIST pIDList = SHBrowseForFolder(&bi);//������ʾѡ��Ի���
	if(pIDList)
	{
		SHGetPathFromIDList(pIDList, Buffer);
		//ȡ���ļ���·����Buffer��
		_str = Buffer;//��·��������һ��CString������
	}
	LPMALLOC lpMalloc;
	if(FAILED(SHGetMalloc(&lpMalloc))) return;
	//�ͷ��ڴ�
	lpMalloc->Free(pIDList);
	lpMalloc->Release();
}

void CDlgOption::OnBnClickedButseltexpath()
{
	BrowerFolder(m_CstrTexPath);
	UpdateData(FALSE);
}

void CDlgOption::OnBnClickedButselmeshpath()
{
	BrowerFolder(m_CstrMeshPath);
	UpdateData(FALSE);
}
