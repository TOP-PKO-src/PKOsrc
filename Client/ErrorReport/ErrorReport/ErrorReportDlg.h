// ErrorReportDlg.h : ͷ�ļ�
//

#pragma once


// CErrorReportDlg �Ի���
class CErrorReportDlg : public CDialog
{
// ����
public:
	CErrorReportDlg(CWnd* pParent = NULL);	// ��׼���캯��

// �Ի�������
	enum { IDD = IDD_ERRORREPORT_DIALOG };

	protected:
	virtual void DoDataExchange(CDataExchange* pDX);	// DDX/DDV ֧��


// ʵ��
protected:
	HICON m_hIcon;

	// ���ɵ���Ϣӳ�亯��
	virtual BOOL OnInitDialog();
	afx_msg void OnSysCommand(UINT nID, LPARAM lParam);
	afx_msg void OnPaint();
	afx_msg HCURSOR OnQueryDragIcon();
	DECLARE_MESSAGE_MAP()
public:
	afx_msg void OnBnClickedOk();
public:
	CString m_strMail;
public:
	afx_msg void OnBnClickedCopy();
public:
	afx_msg void OnBnClickedCancel();
};
