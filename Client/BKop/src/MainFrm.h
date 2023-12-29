// MainFrm.h : CMainFrame ��Ľӿ�
//


#pragma once

#include "FixedSplitter.h"

class CItemView;
class CMainView;
class CLoginPage;

class CMainFrame : public CFrameWnd
{
	
public:
	CMainFrame();
protected: 
	DECLARE_DYNAMIC(CMainFrame)

// ����
public:

// ����
public:
	CItemView*	GetItemView();
	CMainView* GetMainView();
	CLoginPage* GetLoginPage();

// ��д
public:
	virtual BOOL PreCreateWindow(CREATESTRUCT& cs);
	virtual BOOL OnCmdMsg(UINT nID, int nCode, void* pExtra, AFX_CMDHANDLERINFO* pHandlerInfo);

// ʵ��
public:
	virtual ~CMainFrame();
#ifdef _DEBUG
	virtual void AssertValid() const;
	virtual void Dump(CDumpContext& dc) const;
#endif

protected:
	virtual BOOL OnCreateClient(LPCREATESTRUCT lpcs, CCreateContext* pContext);

protected:  // �ؼ���Ƕ���Ա
	CToolBar    m_wndToolBar;
	CFixedSplitter m_wndSplitter;
	CItemView*	m_pItemView;
	CMainView*	m_pMainView;

// ���ɵ���Ϣӳ�亯��
protected:
	afx_msg int OnCreate(LPCREATESTRUCT lpCreateStruct);
	afx_msg void OnSetFocus(CWnd *pOldWnd);
	afx_msg void OnGetMinMaxInfo( MINMAXINFO  *info); 
	DECLARE_MESSAGE_MAP()
public:
	afx_msg void OnClose();

	afx_msg UINT OnNcHitTest(CPoint point);
	afx_msg void OnTimer(UINT nIDEvent);
};


