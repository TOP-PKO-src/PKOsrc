// MainFrm.h : CMainFrame 类的接口
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

// 属性
public:

// 操作
public:
	CItemView*	GetItemView();
	CMainView* GetMainView();
	CLoginPage* GetLoginPage();

// 重写
public:
	virtual BOOL PreCreateWindow(CREATESTRUCT& cs);
	virtual BOOL OnCmdMsg(UINT nID, int nCode, void* pExtra, AFX_CMDHANDLERINFO* pHandlerInfo);

// 实现
public:
	virtual ~CMainFrame();
#ifdef _DEBUG
	virtual void AssertValid() const;
	virtual void Dump(CDumpContext& dc) const;
#endif

protected:
	virtual BOOL OnCreateClient(LPCREATESTRUCT lpcs, CCreateContext* pContext);

protected:  // 控件条嵌入成员
	CToolBar    m_wndToolBar;
	CFixedSplitter m_wndSplitter;
	CItemView*	m_pItemView;
	CMainView*	m_pMainView;

// 生成的消息映射函数
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


