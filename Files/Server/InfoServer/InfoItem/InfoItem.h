// InfoItem.h : PROJECT_NAME Ӧ�ó������ͷ�ļ�
//

#pragma once

#ifndef __AFXWIN_H__
	#error �ڰ������� PCH �Ĵ��ļ�֮ǰ������stdafx.h��
#endif

#include "resource.h"		// ������


// CInfoItemApp:
// �йش����ʵ�֣������ InfoItem.cpp
//

class CInfoItemApp : public CWinApp
{
public:
	CInfoItemApp();

// ��д
	public:
	virtual BOOL InitInstance();

// ʵ��

	DECLARE_MESSAGE_MAP()
};

extern CInfoItemApp theApp;
