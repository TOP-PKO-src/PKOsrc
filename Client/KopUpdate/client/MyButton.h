
#pragma once


enum MyButtonState
{
	MyButton_Disable	= 0,	// ��ť������
	MyButton_MouseOut	= 1,	// ��겻�ڰ�ť��
	MyButton_MouseIn	= 2,	// ����ڰ�ť��
	MyButton_MouseDown	= 3,	// ��갴��
	MyButton_StateCount,
};


class CMyButton : public CButton
{
	DECLARE_DYNAMIC(CMyButton)

public:
	CMyButton();
	virtual ~CMyButton();

protected:
	DECLARE_MESSAGE_MAP()

	afx_msg void OnLButtonDown(UINT nFlags, CPoint point);
	afx_msg void OnLButtonUp(UINT nFlags, CPoint point);
	afx_msg void OnMouseMove(UINT nFlags, CPoint point);
	afx_msg LRESULT OnMouseLeave(WPARAM wParam, LPARAM lParam);
	afx_msg BOOL OnEraseBkgnd(CDC* pDC) { return FALSE; }
	afx_msg void OnEnable(BOOL bEnable);

	virtual void PreSubclassWindow();
	virtual void DrawItem(LPDRAWITEMSTRUCT lpDrawItemStruct);

public:
	// ����Դ��������̬λͼ
	void SetBitmaps(UINT nBitmapID, CRect* pDisable, CRect* pMouseOut, CRect* pMouseIn, CRect* pMouseDown, DWORD dwColorKey =0x00FF00FF,BOOL bDrawText = FALSE);
	void SetBitmaps(const char* pBitmapName, CRect* pDisable, CRect* pMouseOut, CRect* pMouseIn, CRect* pMouseDown,  DWORD dwColorKey =0x00FF00FF,BOOL bDrawText = FALSE);
	
	// ���ð�ť����
	void SetRegion(CBitmap* pBitmap, CRect* pBitmapArea, DWORD dwColorKey = 0x00FF00FF);

	void SetIsSelected(BOOL bSelected);
	BOOL GetIsSelected(void);

private:
	CBitmap		_bmpBackGround;
	CRect		_rcArea[MyButton_StateCount];
	UINT		_nCurrentState;
	BOOL		_bDrawText;
	BOOL		_bSelected;
	DWORD		_bmpColorKey;
};

