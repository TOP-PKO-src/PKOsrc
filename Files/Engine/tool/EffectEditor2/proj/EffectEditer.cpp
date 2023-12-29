// EffectEditer.cpp : ����Ӧ�ó��������Ϊ��
//

#include "stdafx.h"
#include "EffectEditer.h"
#include "MainFrm.h"

#include "EffectEditerDoc.h"
#include "EffectEditerView.h"
//#include ".\effectediter.h"

#include "math.h"
#include "FloatSSE.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#endif

bool g_bRun  = true;

// CEffectEditerApp

BEGIN_MESSAGE_MAP(CEffectEditerApp, CWinApp)
	ON_COMMAND(ID_APP_ABOUT, OnAppAbout)
	// �����ļ��ı�׼�ĵ�����
	ON_COMMAND(ID_FILE_NEW, CWinApp::OnFileNew)
	ON_COMMAND(ID_FILE_OPEN, CWinApp::OnFileOpen)
END_MESSAGE_MAP()


// CEffectEditerApp ����

CEffectEditerApp::CEffectEditerApp()
{
	// TODO: �ڴ˴���ӹ�����룬
	// ��������Ҫ�ĳ�ʼ�������� InitInstance ��
	m_pFont = NULL;

	m_bPressAlt = false;
	m_bPressCtrl = false;
	m_bBeginMove = false;
	m_bBeginRotation = false;

	hLibrary = NULL;
	i_w = 100;
	i_h = 0;
}


// Ψһ��һ�� CEffectEditerApp ����

CEffectEditerApp theApp;

// CEffectEditerApp ��ʼ��

BOOL CEffectEditerApp::InitInstance()
{
	// ���һ�������� Windows XP �ϵ�Ӧ�ó����嵥ָ��Ҫ
	// ʹ�� ComCtl32.dll �汾 6 ����߰汾�����ÿ��ӻ���ʽ��
	//����Ҫ InitCommonControls()�����򣬽��޷��������ڡ�
	InitCommonControls();

	CWinApp::InitInstance();

	// ��ʼ�� OLE ��
	if (!AfxOleInit())
	{
		AfxMessageBox(IDP_OLE_INIT_FAILED);
		return FALSE;
	}
	AfxEnableControlContainer();
	// ��׼��ʼ��
	// ���δʹ����Щ���ܲ�ϣ����С
	// ���տ�ִ���ļ��Ĵ�С����Ӧ�Ƴ�����
	// ����Ҫ���ض���ʼ������
	// �������ڴ洢���õ�ע�����
	// TODO: Ӧ�ʵ��޸ĸ��ַ�����
	// �����޸�Ϊ��˾����֯��
	SetRegistryKey(_T("Ӧ�ó��������ɵı���Ӧ�ó���"));
	LoadStdProfileSettings(4);  // ���ر�׼ INI �ļ�ѡ��(���� MRU)
	// ע��Ӧ�ó�����ĵ�ģ�塣�ĵ�ģ��
	// �������ĵ�����ܴ��ں���ͼ֮�������
	CSingleDocTemplate* pDocTemplate;
	pDocTemplate = new CSingleDocTemplate(
		IDR_MAINFRAME,
		RUNTIME_CLASS(CEffectEditerDoc),
		RUNTIME_CLASS(CMainFrame),       // �� SDI ��ܴ���
		RUNTIME_CLASS(CEffectEditerView));
	if (!pDocTemplate)
		return FALSE;
	AddDocTemplate(pDocTemplate);
	// ������׼������DDE�����ļ�������������
	CCommandLineInfo cmdInfo;
	ParseCommandLine(cmdInfo);
	// ��������������ָ����������
	// �� /RegServer��/Register��/Unregserver �� /Unregister ����Ӧ�ó����򷵻� FALSE��
	if (!ProcessShellCommand(cmdInfo))
		return FALSE;

	::LG_EnableMsgBox(true);

	//hLibrary=LoadLibrary("MindPower3D_D8D.dll"); 
	//if(hLibrary) 
	{
	if(!InitD3D(CEffectEditerView::GetInstance()->GetShowSceneWnd()))
	{
		AfxMessageBox("InitD3D error");
		return FALSE;
	}

	if(!InitScene())
	{
		AfxMessageBox("InitScene error");
		return FALSE;
	}
	if(!InitInput(m_pMainWnd->m_hWnd))
	{
		AfxMessageBox("InitInput error");
		return FALSE;
	}
	}

	// �������ں�׺ʱ�ŵ��� DragAcceptFiles��
	//  �� SDI Ӧ�ó����У���Ӧ�� ProcessShellCommand  ֮����
	// Ψһ��һ�������ѳ�ʼ���������ʾ����������и���
	m_pMainWnd->ShowWindow(/*SW_MAXIMIZE*/SW_SHOW);
	m_pMainWnd->UpdateWindow();


	return TRUE;
}



// ����Ӧ�ó��򡰹��ڡ��˵���� CAboutDlg �Ի���

class CAboutDlg : public CDialog
{
public:
	CAboutDlg();

// �Ի�������
	enum { IDD = IDD_ABOUTBOX };

protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV ֧��

// ʵ��
protected:
	DECLARE_MESSAGE_MAP()
};

CAboutDlg::CAboutDlg() : CDialog(CAboutDlg::IDD)
{
}

void CAboutDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
}

BEGIN_MESSAGE_MAP(CAboutDlg, CDialog)
END_MESSAGE_MAP()

// �������жԻ����Ӧ�ó�������
void CEffectEditerApp::OnAppAbout()
{
	CAboutDlg aboutDlg;
	aboutDlg.DoModal();
}


// CEffectEditerApp ��Ϣ�������
/************************************************************************/
/*                                                                      */
/************************************************************************/
bool CEffectEditerApp::InitD3D(HWND _hWnd)
{
	if( NULL == ( m_pD3D = Direct3DCreate8( D3D_SDK_VERSION ) ) )
		return false;
	//D3DPRESENT_PARAMETERS d3dpp; 
	ZeroMemory( &d3dpp, sizeof(d3dpp) );
	d3dpp.SwapEffect = D3DSWAPEFFECT_DISCARD;
	d3dpp.MultiSampleType = D3DMULTISAMPLE_NONE;
	d3dpp.Windowed = TRUE;

	// Get the current desktop display mode
	D3DDISPLAYMODE      d3ddm;
	HRESULT result = m_pD3D->GetAdapterDisplayMode( D3DADAPTER_DEFAULT, &d3ddm );
	if( FAILED( result ) )
	{
		AfxMessageBox("GetAdapterDisplayMode error");
		SAFE_RELEASE( m_pD3D );
		return FALSE;
	}
	d3dpp.BackBufferFormat = d3ddm.Format;
	d3dpp.BackBufferCount = 1;
	d3dpp.hDeviceWindow = _hWnd;
	d3dpp.AutoDepthStencilFormat = D3DFMT_D16;
	d3dpp.EnableAutoDepthStencil = TRUE;
	d3dpp.FullScreen_PresentationInterval = D3DPRESENT_INTERVAL_DEFAULT;

	//d3dpp.MultiSampleType = D3DMULTISAMPLE_4_SAMPLES;

	D3DCAPS8 caps;
	m_pD3D->GetDeviceCaps(D3DADAPTER_DEFAULT, D3DDEVTYPE_HAL, &caps);


	//RECT rc;
	GetClientRect(_hWnd,&m_rcWnd);
	m_iWidth = m_rcWnd.right - m_rcWnd.left;
	m_iHeight = m_rcWnd.bottom - m_rcWnd.top;

	////������ȫ�ֱ���
	//g_iScreenWidth = m_iWidth;
	//g_iScreenHeight = m_iHeight;


	d3dpp.BackBufferWidth = m_iWidth; 
	d3dpp.BackBufferHeight = m_iHeight;

	// create the device
	DWORD dwbehavior = D3DCREATE_HARDWARE_VERTEXPROCESSING|D3DCREATE_MULTITHREADED;
	if(caps.VertexShaderVersion < D3DVS_VERSION(1,0))
	{
		dwbehavior = D3DCREATE_SOFTWARE_VERTEXPROCESSING|D3DCREATE_MULTITHREADED;
	}

	result = m_pD3D->CreateDevice( D3DADAPTER_DEFAULT, 
		D3DDEVTYPE_HAL, _hWnd, dwbehavior,
		&d3dpp, &m_pDev );
	if(FAILED(result))
	{
		AfxMessageBox("CreateDevice error");
		_DbgOut("error",0, result, "" );

		SAFE_RELEASE( m_pD3D );
		return false;
	}

	_DbgOut("ff", d3dpp.BackBufferWidth, S_OK, "" );
	_DbgOut("dd", d3dpp.BackBufferHeight, S_OK, "" );
		

	CEffectEditerView::GetInstance()->InitDev(m_pDev);


	//m_pDev->SetRenderState(D3DRS_MULTISAMPLEANTIALIAS, FALSE);
	//m_pDev->SetRenderState(D3DRS_MULTISAMPLEMASK, 0);

	return true;
}

/************************************************************************/
/*                                                                      */
/************************************************************************/
bool CEffectEditerApp::InitInput(HWND _hWnd)
{
	///////���������豸///////////////////////////
	if(m_cInput.m_lpMouseDev==NULL)
	{
		if(!m_cInput.Create())
			return false;
		if(!m_cInput.CreateMouseDevice(_hWnd))
			return false;
		if(!m_cInput.CreateKeyBoardDevice(_hWnd))
			return false;
	}
	return true;
}
/************************************************************************/
/*                                                                      */
/************************************************************************/
bool CEffectEditerApp::InitScene()
{
	//m_pDev->SetRenderState(D3DRS_CULLMODE, D3DCULL_NONE );
	//m_pDev->SetRenderState( D3DRS_LIGHTING, FALSE );
	//m_pDev->SetRenderState(D3DRS_SHADEMODE,D3DSHADE_GOURAUD);
	////m_pDev->SetRenderState( D3DRS_MULTISAMPLEANTIALIAS,TRUE); //����ȫ�������
	//m_pDev->SetRenderState(D3DRS_ZENABLE,D3DZB_TRUE);
	////D3DCLIPSTATUS8 SS;
	////SS.ClipUnion = D3DCS_ALL;
	////SS.ClipIntersection = D3DCS_ALL;
	////m_pDev->SetClipStatus(&SS);
	////m_pDev->SetRenderState(D3DRS_CLIPPING ,TRUE);

	//m_pDev->SetTextureStageState(0,\
	//	D3DTSS_COLOROP,D3DTOP_MODULATE  );
	//m_pDev->SetTextureStageState(0,\
	//	D3DTSS_COLORARG1,D3DTA_DIFFUSE);
	//m_pDev->SetTextureStageState(0,\
	//	D3DTSS_COLORARG2,D3DTA_TEXTURE);

	//m_pDev->SetTextureStageState(0,\
	//	D3DTSS_ALPHAOP,D3DTOP_MODULATE  );
	//m_pDev->SetTextureStageState(0,\
	//	D3DTSS_ALPHAARG1,D3DTA_DIFFUSE);
	//m_pDev->SetTextureStageState(0,\
	//	D3DTSS_ALPHAARG2,D3DTA_TEXTURE);

	//m_pDev->SetTextureStageState(0,\
	//	D3DTSS_MINFILTER,D3DTEXF_LINEAR );
	//m_pDev->SetTextureStageState(0,\
	//	D3DTSS_MAGFILTER ,D3DTEXF_LINEAR);

	m_cCamera.SetViewMatrix(m_pDev);
	m_cCamera.SetProjParams( D3DX_PI/4, (float)(m_iWidth/m_iHeight), 1.0f, 1000.0f );
	m_cCamera.SetProMatrix(m_pDev);
	//m_cCamera.SetOrgView();
	////!���������ȫ�ֱ���
	//g_pCamera = &m_cCamera;

	if(!m_cPlane.Create(m_pDev))
	{
		AfxMessageBox("m_cPlane.Create error");
		return false;
	}
	//m_pFont = new CD3DFont("system",16,D3DFONT_ZENABLE);
	//m_pFont->InitDeviceObjects(m_pDev);
	//m_pFont->RestoreDeviceObjects();

	CEffectEditerView::GetInstance()->InitScene( &m_cCamera.m_matView );


	RECT rc;
	rc.left = 0;
	rc.top  = 0;
	rc.right= 100;
	rc.bottom = 100;
	//m_smap.Create(m_pDev,rc);

	return true;
}
/************************************************************************/
/*                                                                      */
/************************************************************************/
void CEffectEditerApp::CleanScene()
{
	//m_pFont->InvalidateDeviceObjects();
	//m_pFont->DeleteDeviceObjects();
	//delete m_pFont;
	m_pFont = NULL;
	m_cPlane.Release();

}
void CEffectEditerApp::CleanUp()
{
	//SAFE_RELEASE( m_pDev );
	//SAFE_RELEASE( m_pD3D );

	//::FreeLibrary(hLibrary); 
}
/************************************************************************/
/*                                                                      */
/************************************************************************/
void CEffectEditerApp::FrameMove()
{		
	GetInputData();
	//m_cCamera.SetViewMatrix(m_pDev);

	//static float t1 = (float)timeGetTime()/1000;

	//float t2 = (float)timeGetTime()/1000;
	//float t3  = t2 - t1;
	//_DbgOut("dd", 0, S_OK, "" );
	if(CEffectEditerView::GetInstance())
	{
		CEffectEditerView::GetInstance()->FrameMove((float)timeGetTime());
	}
	//t1 = t2;
}
/************************************************************************/
/*                                                                      */
/************************************************************************/
void CEffectEditerApp::Render()
{

	D3DRECT RC;
	RC.x1 = 0;
	RC.x2 = 50;
	RC.y1 = 0;
	RC.y2 =50;

	//m_cCamera.SetViewMatrix(m_pDev);

	m_pDev->Clear(0,NULL,
		D3DCLEAR_TARGET|D3DCLEAR_ZBUFFER/*|D3DCLEAR_STENCIL*/,
		0xff808080,1.0f,0L);
	m_pDev->BeginScene();

	//D3DXMATRIX  t_matWorld;
	//D3DXMatrixTranslation(&t_matWorld, 10,0,0);
	//m_pDev->SetTransform(D3DTS_WORLDMATRIX(0),&t_matWorld);
	//m_pFont->Render3DText("x");
	//D3DXMatrixTranslation(&t_matWorld, 0,10,0);
	//m_pDev->SetTransform(D3DTS_WORLDMATRIX(0),&t_matWorld);
	//m_pFont->Render3DText("y");
	//D3DXMatrixTranslation(&t_matWorld, 0,0,10);
	//m_pDev->SetTransform(D3DTS_WORLDMATRIX(0),&t_matWorld);
	char ss[64];
	sprintf(ss,"fps : %d",dwFps);

	/*i_h+=0.5f;
	if(i_h > 300)
	{
		i_h = 0;
	}*/

	//m_pFont->DrawText(i_w,i_h,0xffffffff,ss);

	if(CEffectEditerView::GetInstance())
	{
		CEffectEditerView::GetInstance()->RenderScene();
	}
	m_cPlane.Render();

	//m_smap.Render();

	m_pDev->EndScene();



	m_pDev->Present(NULL,NULL,NULL,NULL);


	//Sleep(20);

	//m_pDev->Clear(1,(D3DRECT*)&RC,
	//	D3DCLEAR_TARGET|D3DCLEAR_ZBUFFER/*|D3DCLEAR_STENCIL*/,
	//	0x00000000,1.0f,0L);


}
/************************************************************************/
/*                                                                      */
/************************************************************************/
void CEffectEditerApp::GetInputData()
{
	ZeroMemory( &m_key, sizeof(m_key) ); 
	ZeroMemory( &m_mouse, sizeof(m_mouse) ); 

	DWORD t_dwSize = DINPUT_BUFFERSIZE;
	if(!m_cInput.GetMouseData(m_mouse, &t_dwSize))
	{
		return;
	}

	t_dwSize = DINPUT_BUFFERSIZE;
	if(!m_cInput.GetKeyData(m_key, &t_dwSize))
	{
		return;
	}

	for(int n = 0; n < DINPUT_BUFFERSIZE; n++)
	{
		if(m_key[n].dwOfs == DIK_LCONTROL||m_key[n].dwOfs == DIK_RCONTROL)
		{
			if(m_key[n].dwData & 0x80)
				m_bPressCtrl = true;
			else
				m_bPressCtrl = false;
		}
		if(m_key[n].dwOfs ==DIK_LMENU)
		{
			if(m_key[n].dwData & 0x80)
				m_bPressAlt = true;
			else
				m_bPressAlt = false;
		}
		if(m_key[n].dwOfs ==DIK_F1)
		{
			if(m_key[n].dwData & 0x80)
			{
				CEffectEditerView::GetInstance()->m_bBeginEdit = true;
				CEffectEditerView::GetInstance()->m_bAdd = true;
			}
			else
				CEffectEditerView::GetInstance()->m_bBeginEdit = false;
		}
		if(m_key[n].dwOfs ==DIK_F2)
		{
			if(m_key[n].dwData & 0x80)
			{
				CEffectEditerView::GetInstance()->m_bBeginEdit = true;	
				CEffectEditerView::GetInstance()->m_bAdd = false;
			}
			else
				CEffectEditerView::GetInstance()->m_bBeginEdit = false;
		}
		if(m_key[n].dwOfs ==DIK_F3)
		{
			if(m_key[n].dwData & 0x80)
			{
				CEffectEditerView::GetInstance()->m_bBeginMoveShade = true;
				CEffectEditerView::GetInstance()->m_bAddVS = true;
			}
			else
				CEffectEditerView::GetInstance()->m_bBeginMoveShade = false;
		}
		if(m_key[n].dwOfs ==DIK_F4)
		{
			if(m_key[n].dwData & 0x80)
			{
				CEffectEditerView::GetInstance()->m_bBeginMoveShade = true;
				CEffectEditerView::GetInstance()->m_bAddVS = false;
			}
			else
				CEffectEditerView::GetInstance()->m_bBeginMoveShade = false;
		}

	}
	POINT  p;
	for( n = 0; n < DINPUT_BUFFERSIZE; n++)
	{
		//if(m_mouse[n].dwOfs == DIMOFS_BUTTON0)
		//{
		//	if(m_mouse[n].dwData &0x80)
		//	{
		//		::GetCursorPos(&p);
		//		ScreenToClient(CEffectEditerView::GetInstance()->m_hWnd, &p);
		//		if(PtInRect(&CEffectEditerView::GetInstance()->m_rcScene,p))
		//		{
		//			CEffectEditerView::GetInstance()->m_bBeginEdit = true;
		//		}
		//	}
		//	else
		//		CEffectEditerView::GetInstance()->m_bBeginEdit = false;
		//}
		if(m_mouse[n].dwOfs == DIMOFS_BUTTON1)
		{
			if(m_mouse[n].dwData &0x80)
			{
				::GetCursorPos(&p);
				ScreenToClient(CEffectEditerView::GetInstance()->m_hWnd, &p);
				if(PtInRect(&CEffectEditerView::GetInstance()->m_rcScene,p))
				{
					if(m_bPressCtrl)
					{
						m_bBeginMove = false;
						m_bBeginRotation = true;
					}
					else
					{
						m_bBeginMove = true;
						m_bBeginRotation = false;
					}
					if(m_bPressAlt)
					{
						CEffectEditerView::GetInstance()->Emission(D3DXVECTOR3(0,10,5));
					}
				}
			}
			else
			{
				m_bBeginMove = false;
				m_bBeginRotation = false;
			}
		}
		if(m_bBeginMove)
		{
			if(m_mouse[n].dwOfs == DIMOFS_X)
			{
				//m_cCamera.MoveCameraLeftRight(((int)m_mouse[n].dwData *(G_fDEG2RAD *10)));
				m_cCamera.MoveCameraLeftRight((float)(int)m_mouse[n].dwData * 0.1f );
			}
			if(m_mouse[n].dwOfs == DIMOFS_Y)
			{
				//m_cCamera.MoveCameraUpDown(((int)m_mouse[n].dwData *(G_fDEG2RAD * 10)));
				m_cCamera.MoveCameraUpDown((float)(int)m_mouse[n].dwData * 0.1f );
			}
		}
		if(m_bBeginRotation)
		{
			if(m_mouse[n].dwOfs == DIMOFS_Y)
			{
				m_cCamera.RotationCameraXZ(((int)m_mouse[n].dwData *G_fDEG2RAD) * 0.1f);
			}
			if(m_mouse[n].dwOfs == DIMOFS_X)
			{
				m_cCamera.RotationCameraY(((int)m_mouse[n].dwData *G_fDEG2RAD) * 0.1f);
			}
		}
		if(m_mouse[n].dwOfs == DIMOFS_Z)
		{
			::GetCursorPos(&p);
			ScreenToClient(CEffectEditerView::GetInstance()->m_hWnd, &p);
			if(PtInRect(&CEffectEditerView::GetInstance()->m_rcScene,p))
			{
				m_cCamera.MoveCameraForwardBack(((int)m_mouse[n].dwData *G_fDEG2RAD) * 0.1f);
			}
			//Render();
		}
		//if(CEffectEditerView::GetInstance()->m_bBeginEdit)
		//{
		//	CEffectEditerView::GetInstance()->Edit(f);
		//}
	}
	//if(	m_bBeginMove || m_bBeginRotation )
	//{
	//	Render();
	//}

	/*else
	{
	if(m_bPressAlt)
	{		
	for( n = 0; n < DINPUT_BUFFERSIZE; n++)
	{
	if(m_mouse[n].dwOfs == DIMOFS_BUTTON0)
	{
	if(m_mouse[n].dwData &0x80)
	{
	D3DXVECTOR3 t_vPos,t_vRayDir;
	GetRay(&t_vPos, &t_vRayDir);
	SelMesh(&t_vPos, &t_vRayDir);
	}
	}
	}
	m_cCamera.SetViewMatrix(m_pDev);
	Render();
	}
	}*/
}
/************************************************************************/
/*                                                                      */
/************************************************************************/
int CEffectEditerApp::ExitInstance()
{
	// TODO: Add your specialized code here and/or call the base class
	CleanScene();
	CleanUp();

	return CWinApp::ExitInstance();
}

BOOL CEffectEditerApp::OnIdle(LONG lCount)
{
	CWinApp::OnIdle(lCount);
	if(m_pDev == NULL)
		return FALSE;
	static DWORD _dwLastFrameTick = 0;
	if(g_bRun)
	{
		Sleep(10);

		FrameMove();

	/*	if((_dwCurTick - _dwLastFrameTick) >= 33)
		{	*/
		Render();
		dwCurcount++;
		//_dwLastFrameTick = _dwCurTick;

		DWORD tick = timeGetTime();
		//tick -= dwLastTime;
		if(tick - dwLastTime > 1000)
		{
			dwFps = (float)dwCurcount /(float)((tick - dwLastTime)/1000);
			dwCurcount =0;
			dwLastTime = tick;

		}

		return TRUE;

		//}

	}
	return FALSE;
}
