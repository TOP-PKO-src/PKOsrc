// EffectEditerView.h : CEffectEditerView ��Ľӿ�
//


#pragma once
#include "afxwin.h"

#include "GlobalInc.h"

#include <mindpower.h>

#include ".\TestScripts.h"

//#include <mmsystem.h>
//#include "../../../sdk/include/MPModelEff.h"

//#include "../src/effect/include/mpmodeleff.h"

//#include "../src/effect/include/mpresmanger.h"

#include "../src/ui/DlgOption.h"

#include "../src/ui/DlgNewEffect.h"

#include "../src/ui/DlgEditTexture.h"

#include "../src/ui/DlgEditCoord.h"

#include "../src/ui/DlgPartEdit.h"

#include "../src/ui/DlgModelParam.h"

#include "../src/ui/SkinMeshDlg.h"

#include "../src/plus/IniFile.h"


#include "mpfont.h"


#include "afxcmn.h"

//#include "SkinMesh.h"


class CEffectEditerView : public CFormView
{
protected: // �������л�����
	CEffectEditerView();
	DECLARE_DYNCREATE(CEffectEditerView)
// ����
public:
	static  CEffectEditerView*	GetInstance()		{ return m_pInstance; }
	HWND	GetShowSceneWnd()						{ return m_cShowScene.m_hWnd; }
	void	InitDev(LPDIRECT3DDEVICE8  _pDev)		{ m_pDev = _pDev; }

	//!��ʼ������
	void	InitScene(D3DXMATRIX *pMatBBoard);
	//!���³���
	void	FrameMove(DWORD dwTime);
	//!��Ⱦȫ������
	void    RenderScene();

	void	Emission(D3DXVECTOR3 vEnd)
	{
		//m_CFire.Emission(0,D3DXVECTOR3(0,0,5),vEnd);

		//m_CBlast.Play();
		//m_CMagrPart.Emission(-1,D3DXVECTOR3(0,2,9));

	}
	void	SetTarget(D3DXVECTOR3 vTarget)
	{
		//m_CFire.SetTarget(vTarget);
	}
//////////////////////////////////////////////////////////////////////////

	void	Edit(float fValue);

	void	ResetTempParam(int iCurSubEff,int iCurFrame);

	void	UpdateInfo();
//////////////////////////////////////////////////////////////////////////
public:


	enum{ IDD = IDD_EFFECTEDITER_FORM };

	//CSkinMesh					m_skinmehs;
	//CActionManage				m_action;
//////////////////////////////////////////////////////////////////////////

	CStatic						m_cShowScene;
	RECT						m_rcScene;
	// ����֡
	CSliderCtrl					m_CSliderFrame;
	// ģ�Ϳ�
	//CListBox					m_ClistModelLib;
	CComboBox m_CComboModelLib;

	// ���Ч����
	//CListBox					m_ClistEffLib;
	CComboBox m_CComboEffLib;

	// ��Ч����
	CListBox					m_ClistSubEffLib;
	// ���ӿ�
	//CListBox					m_ClistParticleLib;
	//!�����
	//CListBox					m_CListboxTexLib;
	CComboBox m_CComboTextureLib;

	//!��ʱ��Ͽ�
	CListBox					m_CListboxTempLib;


	//!���ùؼ�֡
	CButton						m_CButSetKey;
	//!ÿһ֡��ʱ��༭��
	DWORD						m_EditFrameTime;
	CSpinButtonCtrl				m_CSpinFrameTime;

	float m_fInputX;
	float m_fInputY;
	float m_fInputZ;

/////��ʾ��ǰ֡��Ϣ/////////////////////////////////////////////////////////////////////
	CString m_strModelName;
	float m_fStrFrameTime;
	float m_fScaleX;
	float m_fScaleY;
	float m_fScaleZ;
	float m_fRotatX;
	float m_fRotatY;
	float m_fRotatZ;
	float m_fTransX;
	float m_fTransY;
	float m_fTransZ;
	int m_iColorR;
	int m_iColorG;
	int m_iColorB;
	int m_iColorA;
	int m_istrFrameCount;
	float m_fstrFrameLength;
	BOOL m_bIsBBoard;
	CString m_strType;
	CComboBox m_CCombAlphaType;

	int m_iFrameShow;

//////////////////////////////////////////////////////////////////////////

	static CEffectEditerView*	m_pInstance;

#ifdef USE_RENDER
	MPRender			m_pRender;
#endif
	LPDIRECT3DDEVICE8			m_pDev;

	CDlgOption					m_CDlgOption;

	CDlgNewEffect				m_CDlgNewEffect;
//////////////////////////////////////////////////////////////////////////

	CMPResManger				m_CResMagr;

	D3DXMATRIX*					m_pMatBBoard;
	D3DXMATRIX					m_MatViewProj;

//////////////////////////////////////////////////////////////////////////
	I_Effect					m_CEffect;

	CMPModelEff					m_CModelEff;

	I_Effect*					m_pCurEffect;

	std::vector<I_Effect>		m_vecEffect;

	int							m_iCurSubEff;

	//CMPShadeEX					m_CShadeMap;

	//CMPSnow						m_CSnow;

	//CMPParticleTrace			m_CFire;

	//CMPFire						m_CFire2;
		
	//CMPParticleRipple			m_CRipple;

	//CMPMagrPart					m_CMagrPart;
	//CMPMagrPart					m_CMagrPart2;

	//CMPPartSys					m_CPartSys;
//////////////////////////////////////////////////////////////////////////

	CMPFont						m_pFont;


	MPSceneItem*				m_ptestModel;

	CMagicCtrl*					m_pMagicCtrl;

//////////////////////////////////////////////////////////////////////////
	//�༭Ч���õ��Ĳ���
	int							m_iCurFrame;
	BOOL						m_bPlaying;
	BOOL						m_bLoop;
	bool						m_bLock;

	BOOL						m_bEditModel;
	BOOL						m_bEditCoord;
	BOOL						m_bEditTexture;

	BOOL						m_bEditScale;
	BOOL						m_bEditRotat;
	BOOL						m_bEditTranslate;

	BOOL						m_bEditZ;
	BOOL						m_bEditY;
	BOOL						m_bEditX;

	D3DXVECTOR3					m_SVerScale;
	D3DXVECTOR3					m_SVerRotat;
	D3DXVECTOR3					m_SVerTranslate;
	D3DXCOLOR					m_SColor;
	TEXCOORD					m_vecCoord;
	LPDIRECT3DTEXTURE8			m_lpTex;

	float						m_fFrameTime;
	// ͸����
	int							m_iSliderAlpha;
	CSliderCtrl					m_CSliderAlpha;
	//��ɫ
	DWORD						m_dwSelColor;

	bool						m_bBeginEdit;
	bool						m_bAdd;

	bool						m_bBeginMoveShade;
	bool						m_bAddVS;

	BOOL						m_bEditCompEff;
	std::vector<D3DXVECTOR3>	m_vecCompDist;
	std::vector<D3DXVECTOR3>	m_vecCompScale;
	std::vector<D3DXVECTOR3>	m_vecCompRotat;


	BOOL						m_bCycRotating;
	float						m_fCycVecl;

	bool						m_bInit;
// ����
public:
	CEffectEditerDoc* GetDocument() const;


	CIniFile					m_IniFile;
// ��д
	public:
virtual BOOL PreCreateWindow(CREATESTRUCT& cs);
protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV ֧��
	virtual void OnInitialUpdate(); // ������һ�ε���

// ʵ��
public:
	virtual ~CEffectEditerView();
#ifdef _DEBUG
	virtual void AssertValid() const;
	virtual void Dump(CDumpContext& dc) const;
#endif

protected:
	void			SetEffectParam(int idx, int xyz);
	void			SetCombEffectParam(int idx, int xyz);


// ���ɵ���Ϣӳ�亯��
protected:
	DECLARE_MESSAGE_MAP()
public:
	afx_msg void OnDestroy();
	afx_msg void OnMenuOption();
	afx_msg void OnFileNew();
	//�༭���ƺ���////////////////////////////////////////////////////////////////////////
	
	afx_msg void OnFileSave();
	afx_msg void OnFileOpen();
	afx_msg void OnBnClickedCheckplay();
	afx_msg void OnNMCustomdrawSliderframe(NMHDR *pNMHDR, LRESULT *pResult);
	//afx_msg void OnLbnSelchangeListEfflib();
	afx_msg void OnLbnSelchangeListSubefflib();
	afx_msg void OnBnClickedButeditmodel();
	afx_msg void OnBnClickedButeditcoord();
	afx_msg void OnBnClickedButedittexture();
	afx_msg void OnBnClickedButscale();
	afx_msg void OnBnClickedButrotation();
	afx_msg void OnBnClickedButtranslate();
	afx_msg void OnBnClickedCheckx();
	afx_msg void OnBnClickedChecky();
	afx_msg void OnBnClickedCheckz();
	afx_msg void OnBnClickedButsetkeyframe();
	afx_msg void OnBnClickedButselcolor();
	afx_msg void OnNMCustomdrawSlider2(NMHDR *pNMHDR, LRESULT *pResult);
	afx_msg void OnDeltaposSpin1(NMHDR *pNMHDR, LRESULT *pResult);
	afx_msg void OnEnChangeEdit2();
	afx_msg void OnButresetorigin();
	afx_msg void OnBnClickedButChangeModel();
	//afx_msg void OnLbnSelchangeListTexturelib();
	afx_msg void OnBnClickedButApplyTex();
	afx_msg void OnBnClickedButAddSubEffTolib();
	afx_msg void OnBnClickedButUniteEff();
	afx_msg void OnCbnSelchangeComboAlphaType();
	afx_msg void OnSaveall();
	afx_msg void OnEnChangeEditInputX();
	afx_msg void OnEnChangeEditInputY();
	afx_msg void OnEnChangeEditInputZ();
	afx_msg void OnBnClickedCycRotating();
	afx_msg void OnShowpartdlg();
	afx_msg void On32789();
	afx_msg void OnExcuteScript();
	afx_msg void OnCbnSelchangeComboSelEffLib();
	afx_msg void OnBnClickedBut_modelParam();
	afx_msg void On32791();
	afx_msg void OnCbnEditchangeCom_findEff();
	afx_msg void OnCbnEditchangeCom_findtexture();
	float m_fSinglVel;
	BOOL m_bRotaSingle;
	afx_msg void OnEnChangeEdit_setSingleVel();
	afx_msg void OnBnClickedCheck_singleLoop();
	BOOL m_bBoardRotating;
	afx_msg void OnBnClickedCheck_RotaBoard();
};

#ifndef _DEBUG  // EffectEditerView.cpp �ĵ��԰汾
inline CEffectEditerDoc* CEffectEditerView::GetDocument() const
   { return reinterpret_cast<CEffectEditerDoc*>(m_pDocument); }
#endif

