// EffectEditer.h : EffectEditer Ӧ�ó������ͷ�ļ�
//
#pragma once

#ifndef __AFXWIN_H__
	#error �ڰ������� PCH �Ĵ��ļ�֮ǰ������stdafx.h�� 
#endif

#include "resource.h"       // ������

#include "../src/D3D/D3DGlobal.h"

#include "../src/plus/DXInput.h"

#include "../src/plus/camera.h"

#include "../src/plus/meshplane.h"

#include "../src/D3D/D3DFont.h"


// CEffectEditerApp:
// �йش����ʵ�֣������ EffectEditer.cpp
//
extern  bool g_bRun;

class CEffectEditerApp : public CWinApp
{
public:
	CEffectEditerApp();

	HMODULE  hLibrary;
	//////////////////////
	void CleanScene();
	void CleanUp();

	/////////////////////
	bool InitD3D(HWND _hWnd);
	bool InitInput(HWND _hWnd);
	bool InitScene();

	////////////////////
	void FrameMove();
	void Render();

	///////////////////
	void GetRay(D3DXVECTOR3 *vRayPos, D3DXVECTOR3 *vRayDir);
	void SelMesh(D3DXVECTOR3 *vRayPos, D3DXVECTOR3 *vRayDir);

	////////////////////
	void GetInputData();
public:
	//!d3d����
	LPDIRECT3D8			m_pD3D;
	LPDIRECT3DDEVICE8	m_pDev;
	D3DPRESENT_PARAMETERS d3dpp; 
	RECT m_rcWnd;
	RECT m_rcSceneWnd;
	INT				    m_iWidth;
	INT					m_iHeight;

	DIDEVICEOBJECTDATA  m_mouse[DINPUT_BUFFERSIZE];
	DIDEVICEOBJECTDATA  m_key[DINPUT_BUFFERSIZE];

	CDXInput            m_cInput;

	CCamera             m_cCamera;

	CMeshPlane          m_cPlane;

	bool                m_bPressAlt;
	bool                m_bPressCtrl;
	bool                m_bBeginMove;
	bool                m_bBeginRotation;

	CD3DFont			*m_pFont;

	DWORD				dwFps;
	DWORD				dwCurcount;
	DWORD				dwLastTime;

	float					i_w,i_h;
// ��д
public:
	virtual BOOL InitInstance();
	virtual int  ExitInstance();
	virtual BOOL OnIdle(LONG lCount);

// ʵ��
	afx_msg void OnAppAbout();
	DECLARE_MESSAGE_MAP()
};

extern CEffectEditerApp theApp;
