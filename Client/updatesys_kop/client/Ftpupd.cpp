// Ftpupd.cpp : ����Ӧ�ó��������Ϊ��
//

#include "stdafx.h"
#include "Ftpupd.h"
#include "SelectISP.h"
#include "FtpupdDlg.h"
#include "KopDownload.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#endif


// CFtpupdApp

BEGIN_MESSAGE_MAP(CFtpupdApp, CWinApp)
	ON_COMMAND(ID_HELP, CWinApp::OnHelp)
END_MESSAGE_MAP()


// CFtpupdApp ����

CFtpupdApp::CFtpupdApp()
{
	// TODO: �ڴ˴���ӹ�����룬
	// ��������Ҫ�ĳ�ʼ�������� InitInstance ��
}


// Ψһ��һ�� CFtpupdApp ����

CFtpupdApp theApp;


// CFtpupdApp ��ʼ��

BOOL CFtpupdApp::InitInstance()
{
    BOOL bUpdateSelf = FALSE;

#ifndef _DEBUG  // ��֤Release�汾һ���������Ҹ���
    bUpdateSelf = TRUE;
#endif

    if (bUpdateSelf)
    {
        int pid = Fork();
        if (pid == 0) return FALSE;
    }

	// ���һ�������� Windows XP �ϵ�Ӧ�ó����嵥ָ��Ҫ
	// ʹ�� ComCtl32.dll �汾 6 ����߰汾�����ÿ��ӻ���ʽ��
	//����Ҫ InitCommonControls()�����򣬽��޷��������ڡ�
	InitCommonControls();

	CWinApp::InitInstance();

	if (!AfxSocketInit())
	{
		AfxMessageBox(IDP_SOCKETS_INIT_FAILED);
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
	//SetRegistryKey(_T("Ӧ�ó��������ɵı���Ӧ�ó���"));

    g_KopData.LoadISP();
    if (g_KopData.IsFirstRun())
    {
        CSelectISP sel;
        INT_PTR nResponse = sel.DoModal();
        if (nResponse == IDCANCEL)
            return FALSE;
    }

	CFtpupdDlg dlg;
	m_pMainWnd = &dlg;
	INT_PTR nResponse = dlg.DoModal();
	if (nResponse == IDOK)
	{
		// TODO: �ڴ˷��ô����ʱ�á�ȷ�������ر�
		//�Ի���Ĵ���
	}
	else if (nResponse == IDCANCEL)
	{
		// TODO: �ڴ˷��ô����ʱ�á�ȡ�������ر�
		//�Ի���Ĵ���
	}

	// ���ڶԻ����ѹرգ����Խ����� FALSE �Ա��˳�Ӧ�ó���
	// ����������Ӧ�ó������Ϣ�á�
	return FALSE;
}

int CFtpupdApp::Fork()
{
    TCHAR szRunPath[MAX_PATH + 1];
    CString strRunName = AfxGetAppName();
    TCHAR szOriginName[] = "kop";
    TCHAR szCloneName[] = "kop_d.exe";
    CString strRun = szCloneName;

    GetCurrentDirectory(MAX_PATH, szRunPath);
    if (stricmp(strRunName, szOriginName) == 0)
    {
        // ��鸱���Ƿ��Ѵ������ļ�ϵͳ��
        if (access(szCloneName , 0) != -1)
        {
            // ȥ��ֻ����ϵͳ����������
            DWORD dwAttr = GetFileAttributes(szCloneName);
            if ((dwAttr & FILE_ATTRIBUTE_READONLY) ||
                (dwAttr & FILE_ATTRIBUTE_SYSTEM) ||
                (dwAttr & FILE_ATTRIBUTE_HIDDEN))
            {
                SetFileAttributes(szCloneName,
                    FILE_ATTRIBUTE_ARCHIVE | FILE_ATTRIBUTE_NORMAL);
            }
        }

        // ��¡���� 
        TCHAR szOriginWithExt[MAX_PATH];
        sprintf(szOriginWithExt, "%s.exe", szOriginName);
        if (!CopyFile(szOriginWithExt, szCloneName, FALSE))
        {
            AfxMessageBox("�Զ����³�����������");
            DWORD dwErr = GetLastError();
            return 0;
        }

        // ��������
        PROCESS_INFORMATION pi;
        STARTUPINFO si;
        GetStartupInfo(&si);
        //if (CreateProcess(NULL, (LPSTR)(LPCSTR)strRun, NULL, NULL, FALSE, 0, NULL, szRunPath, &si, &pi))
        if (CreateProcess((LPSTR)(LPCSTR)strRun, NULL, NULL, NULL, FALSE, NORMAL_PRIORITY_CLASS, NULL, szRunPath, &si, &pi))
        {
            CloseHandle(pi.hProcess);
        }

        return 0;
    }
    else
    {
        // �ӽ��̵ȴ��������˳���Ȼ��ִ�и�������
        Sleep(1000);
        return 1;
    }
}