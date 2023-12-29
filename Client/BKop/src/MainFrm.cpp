// MainFrm.cpp : CMainFrame 类的实现
//

#include "stdafx.h"
#include "BKop.h"

#include "LoginPage.h"
#include "ItemView.h"
#include "MainView.h"
#include "MainFrm.h"
#include "NetModule.h"
#include "ItemDataMgr.h"
#include "threadpool.h"
#include "ServerMgr.h"
#include "AutoPublishMgr.h"

#include "PlayerMgr.h"
#include ".\mainfrm.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#endif

// CMainFrame

IMPLEMENT_DYNAMIC(CMainFrame, CFrameWnd)

BEGIN_MESSAGE_MAP(CMainFrame, CFrameWnd)
	ON_WM_CREATE()
	ON_WM_SETFOCUS()
	// 全局帮助命令
	ON_COMMAND(ID_HELP_FINDER, CFrameWnd::OnHelpFinder)
	ON_COMMAND(ID_HELP, CFrameWnd::OnHelp)
	ON_COMMAND(ID_CONTEXT_HELP, CFrameWnd::OnContextHelp)
	ON_COMMAND(ID_DEFAULT_HELP, CFrameWnd::OnHelpFinder)
	ON_WM_GETMINMAXINFO()
	ON_WM_CLOSE()
	ON_WM_NCHITTEST()
	ON_WM_TIMER()
END_MESSAGE_MAP()


// CMainFrame 构造/析构

CMainFrame::CMainFrame()
{
	// TODO: 在此添加成员初始化代码
}

CMainFrame::~CMainFrame()
{
}

BOOL CMainFrame::OnCreateClient(LPCREATESTRUCT lpcs, CCreateContext* pContext)
{
	// create a splitter with 1 row, 2 columns
	if (!m_wndSplitter.CreateStatic(this , 1, 2))
	{
		TRACE0("Failed to CreateStaticSplitter\n");
		return FALSE;
	}

	// add the first splitter pane - the default view in column 0
	if (!m_wndSplitter.CreateView(0, 0,
		RUNTIME_CLASS(CItemView), CSize(200, 0), pContext))
	{
		TRACE0("Failed to create first pane\n");
		return FALSE;
	}

	// add the second splitter pane - an input view in column 1
	if (!m_wndSplitter.CreateView(0, 1,
		RUNTIME_CLASS(CMainView), CSize(300, 0), pContext))
	{
		TRACE0("Failed to create second pane\n");
		return FALSE;
	}


	//m_wndSplitter.SetColumnInfo(0, 180, 130);
	//m_wndSplitter.SetColumnInfo(1, 500, 500);
	//m_wndSplitter.RecalcLayout();

	m_pItemView=(CItemView*)m_wndSplitter.GetPane(0,0);
	m_pMainView=(CMainView*)m_wndSplitter.GetPane(0,1);
	m_pItemView->InitView();
	m_pMainView->InitView();
	CSystemInfo::InitArraySize(ACCOUNT_MAXNUM);
	SetTimer(1,800,NULL);
	//CSystemInfo::Close();
	

	return CFrameWnd::OnCreateClient(lpcs,pContext);
}

int CMainFrame::OnCreate(LPCREATESTRUCT lpCreateStruct)
{
	if (CFrameWnd::OnCreate(lpCreateStruct) == -1)
		return -1;
	// 创建一个视图以占用框架的工作区
	//if (!m_wndView.Create(NULL, NULL, AFX_WS_DEFAULT_VIEW,
	//	CRect(0, 0, 0, 0), this, AFX_IDW_PANE_FIRST, NULL))
	//{
	//	TRACE0("未能创建视图窗口\n");
	//	return -1;
	//}

	if (!m_wndToolBar.CreateEx(this, TBSTYLE_FLAT, WS_CHILD | WS_VISIBLE | CBRS_TOP
		| CBRS_GRIPPER | CBRS_TOOLTIPS | CBRS_FLYBY | CBRS_SIZE_DYNAMIC) )
		//|| !m_wndToolBar.LoadToolBar(IDR_MAINFRAME))
	{
		TRACE0("未能创建工具栏\n");
		return -1;      // 未能创建
	}
	// TODO: 如果不需要工具栏可停靠，则删除这三行
	m_wndToolBar.EnableDocking(CBRS_ALIGN_ANY);
	EnableDocking(CBRS_ALIGN_ANY);
	DockControlBar(&m_wndToolBar);

	return 0;
}

BOOL CMainFrame::PreCreateWindow(CREATESTRUCT& cs)
{
	if( !CFrameWnd::PreCreateWindow(cs) )
		return FALSE;
	// TODO: 在此处通过修改 CREATESTRUCT cs 来修改窗口类或
	// 样式
	cs.style &=~ WS_MAXIMIZEBOX;
	cs.dwExStyle &= ~WS_EX_CLIENTEDGE;
	cs.lpszClass = AfxRegisterWndClass(0);
	cs.cx=800;
	cs.cy=580;

	return TRUE;
}


// CMainFrame 诊断

#ifdef _DEBUG
void CMainFrame::AssertValid() const
{
	CFrameWnd::AssertValid();
}

void CMainFrame::Dump(CDumpContext& dc) const
{
	CFrameWnd::Dump(dc);
}

#endif //_DEBUG


// CMainFrame 消息处理程序

void CMainFrame::OnSetFocus(CWnd* /*pOldWnd*/)
{
	// 将焦点前移到视图窗口
	//m_wndView.SetFocus();
}

void CMainFrame::OnGetMinMaxInfo(MINMAXINFO  *info)
{
	
}

BOOL CMainFrame::OnCmdMsg(UINT nID, int nCode, void* pExtra, AFX_CMDHANDLERINFO* pHandlerInfo)
{
	// 让视图第一次尝试该命令
	//if (m_wndView.OnCmdMsg(nID, nCode, pExtra, pHandlerInfo))
		//return TRUE;

	// 否则，执行默认处理
	return CFrameWnd::OnCmdMsg(nID, nCode, pExtra, pHandlerInfo);
}

CItemView*	CMainFrame::GetItemView()
{
	return m_pItemView;
}

CMainView* CMainFrame::GetMainView()
{
	return m_pMainView;
}

CLoginPage* CMainFrame::GetLoginPage()
{
	return &m_pItemView->m_LoginPage;
}

void CMainFrame::OnClose()
{
	// TODO: Add your message handler code here and/or call default
	KillTimer(1);
	CPlayerMgr::DeleteAllPlayers();
	CFrameWnd::OnClose();
	SAFE_DELETE(g_pNet);
	CServerMgr::FreeServerInfo();
	CItemDataMgr::FreeItemsInfo();
}

UINT CMainFrame::OnNcHitTest(CPoint point)
{
	// TODO: Add your message handler code here and/or call default
	UINT ret=CFrameWnd::OnNcHitTest(point);
	if (ret==HTRIGHT || ret==HTLEFT || ret==HTTOP || ret==HTBOTTOM || 
		ret==HTTOPLEFT || ret==HTBOTTOMRIGHT || ret==HTBOTTOMLEFT || ret==HTTOPRIGHT)
	{
		return HTCLIENT;
	}
	return ret;
}

void CMainFrame::OnTimer(UINT nIDEvent)
{
	// TODO: Add your message handler code here and/or call default
	if (nIDEvent==1)
	{
		g_AutoPublishMgr.Run();
	}
	CFrameWnd::OnTimer(nIDEvent);
}
