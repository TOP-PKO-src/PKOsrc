// InfoPasswdDlg.h : ͷ�ļ�
//

#pragma once
#include "afxwin.h"


// CInfoPasswdDlg �Ի���
class CInfoPasswdDlg : public CDialog
{
// ����
public:
	CInfoPasswdDlg(CWnd* pParent = NULL);	// ��׼���캯��

// �Ի�������
	enum { IDD = IDD_INFOPASSWD_DIALOG };

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
    CEdit m_Text;
    CEdit m_Passwd;
    afx_msg void OnBnClickedButton1();
    CButton m_Go;
	BOOL m_TradeServer;
};
