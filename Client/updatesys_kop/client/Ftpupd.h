// Ftpupd.h : PROJECT_NAME Ӧ�ó������ͷ�ļ�
//

#pragma once

#ifndef __AFXWIN_H__
	#error �ڰ������� PCH �Ĵ��ļ�֮ǰ������stdafx.h��
#endif

#include "resource.h"		// ������


// CFtpupdApp:
// �йش����ʵ�֣������ Ftpupd.cpp
//

class CFtpupdApp : public CWinApp
{
public:
	CFtpupdApp();

// ��д
	public:
	virtual BOOL InitInstance();

// ʵ��

	DECLARE_MESSAGE_MAP()

protected:
    int Fork();
};

extern CFtpupdApp theApp;
