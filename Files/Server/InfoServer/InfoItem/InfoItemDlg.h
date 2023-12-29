// InfoItemDlg.h : ͷ�ļ�
//

#pragma once
#include "afxwin.h"


// CInfoItemDlg �Ի���
class CInfoItemDlg : public CDialog
{
// ����
public:
	CInfoItemDlg(CWnd* pParent = NULL);	// ��׼���캯��

// �Ի�������
	enum { IDD = IDD_INFOITEM_DIALOG };

	protected:
	virtual void DoDataExchange(CDataExchange* pDX);	// DDX/DDV ֧��


// ʵ��
protected:
	HICON m_hIcon;

	// ���ɵ���Ϣӳ�亯��
	virtual BOOL OnInitDialog();
	afx_msg void OnPaint();
	afx_msg HCURSOR OnQueryDragIcon();
	DECLARE_MESSAGE_MAP()
public:
    afx_msg void OnBnClickedButton1();
    afx_msg void OnBnClickedButton2();
    afx_msg void OnBnClickedButton3();
    CEdit m_src;
    CEdit m_dest;
    CButton m_src_btn;
    CButton m_dest_btn;
    CButton m_build;
    CString m_srcPath;
    CString m_destPath;
};
