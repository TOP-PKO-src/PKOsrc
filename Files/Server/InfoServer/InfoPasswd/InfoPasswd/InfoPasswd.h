// InfoPasswd.h : PROJECT_NAME Ӧ�ó������ͷ�ļ�
//

#pragma once

#ifndef __AFXWIN_H__
	#error �ڰ������� PCH �Ĵ��ļ�֮ǰ������stdafx.h��
#endif

#include "resource.h"		// ������


// CInfoPasswdApp:
// �йش����ʵ�֣������ InfoPasswd.cpp
//

class CInfoPasswdApp : public CWinApp
{
public:
	CInfoPasswdApp();

// ��д
	public:
	virtual BOOL InitInstance();

// ʵ��

	DECLARE_MESSAGE_MAP()
};

extern CInfoPasswdApp theApp;
