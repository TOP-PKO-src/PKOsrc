// ErrorReport.h : PROJECT_NAME Ӧ�ó������ͷ�ļ�
//

#pragma once

#ifndef __AFXWIN_H__
	#error "�ڰ������ļ�֮ǰ������stdafx.h�������� PCH �ļ�"
#endif

#include "resource.h"		// ������


// CErrorReportApp:
// �йش����ʵ�֣������ ErrorReport.cpp
//

class CErrorReportApp : public CWinApp
{
public:
	CErrorReportApp();

// ��д
	public:
	virtual BOOL InitInstance();

// ʵ��

	DECLARE_MESSAGE_MAP()
};

extern CErrorReportApp theApp;