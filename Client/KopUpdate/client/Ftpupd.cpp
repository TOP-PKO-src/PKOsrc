// Ftpupd.cpp : ����Ӧ�ó��������Ϊ��
//

#include "stdafx.h"

#include "Ftpupd.h"
#include "FtpupdDlg.h"
#include "KopDownload.h"
#include <NMCrypt.h>


#ifdef _DEBUG
#define new DEBUG_NEW
#endif


#pragma comment(lib, "NMCrypt.lib")


////////////////////////////////////////////////////////////////////////
extern int g_cooperate;    //  �̼Һ������
extern CString strRunArgv;     //  ��������
////////////////////////////////////////////////////////////////////////
extern CString strHomepage;    //  ������ҳ
extern CString strRegister;    //  ע��
extern CString strNews;        //  ����
extern CString strActivity;    //  �
extern CString strUpdate;      //  �汾����
extern CString strAd;          //  ���
////////////////////////////////////////////////////////////////////////
#define SINA_NO_ERROR           1000
#define SINA_ERR_UNKNOWN		1001
#define SINA_ERR_NO_USER		1002
#define SINA_ERR_WRONG_PWD	    1003
#define SINA_ERR_BANNED		    1004
#define SINA_ERR_TIMEOUT		1005
#define SINA_ERR_BAD_CAS_MSG	1006
///////////////////////////////////////////////////////////////////////
extern int iBanner; //  ҳ�Ź��

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
    HINSTANCE hRtn = ::ShellExecute(NULL, "open", "launcher.exe", NULL, ".", SW_HIDE);

    //  ���ù���Ŀ¼
    char tmpbuf[260] = {0};
    GetModuleFileName(0, tmpbuf, 260);
    int tmplen = strlen(tmpbuf);
    while('\\' != tmpbuf[tmplen])
    {
        --tmplen;
        if(tmplen <= 0)
        {
            break;
        }
    }
    tmpbuf[tmplen] = '\0';
    SetCurrentDirectory(tmpbuf);
    GetCurrentDirectory(260, tmpbuf);

    BOOL bUpdateSelf = FALSE;


#ifndef _DEBUG  // ��֤Release�汾һ���������Ҹ���
    bUpdateSelf = TRUE;
#endif


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


    ////////////////////////////////////////
    //
    //  By Jampe
    //  ���ں������������޸�
    //  2006/5/18
    //
    strRunArgv = GetCommandLine();
    int pos = strRunArgv.Find('\"', 1);
    strRunArgv = strRunArgv.Mid((pos + 1), (strRunArgv.GetLength() - pos));
    strRunArgv.Trim();
    int nCopPos = (int)strRunArgv.Find("/login:");
    //  /login:�̼Ҵ���&����/��������&�û���&����
    if(-1 != nCopPos)
    {
        //  ��������
        string strCop = strRunArgv.Mid(nCopPos + 7);
        string tmp[1];
        Util_ResolveTextLine(strCop.c_str(), tmp, 1, '&');
        g_cooperate = atol(tmp[0].c_str());
    }
    else if((strRunArgv.GetLength() > 0) && (strRunArgv.GetLength() < 4096))
    {
        //  sina�������ģʽ
        char key[1024] = {0};
        char buf[4096] = {0};
        if(GetCryptKey(key, 1024-1, true))
        {
            if(CRYPT_SUCCESS == DecryptString(strRunArgv.GetBuffer(), key, buf))
            {
                std::string tmp[5];
                Util_ResolveTextLine(buf, tmp, 5, ',');

                try
                {
                    CSocket sina_sock;
                    sina_sock.Create();

                    //  ���ó�ʱ3��
                    int timeout = 3000;
                    sina_sock.SetSockOpt(SO_RCVTIMEO, &timeout, sizeof(timeout));
                    sina_sock.SetSockOpt(SO_SNDTIMEO, &timeout, sizeof(timeout));

                    if(sina_sock.Connect(tmp[0].c_str(), atoi(tmp[1].c_str())))
                    {
                        std::string snd = "login&";
                        snd += tmp[2];
                        snd += "&";
                        snd += tmp[3];
                        snd += "&";
                        snd += tmp[4];
                        snd += "\r\n";

                        if(sina_sock.Send(snd.c_str(), snd.length()))
                        {
                            memset(buf, 0, 4096);
                            if(sina_sock.Receive(buf, 4096))
                            {
                                char msgID[5] = {0};
                                strncpy(msgID, buf, 4);
                                int ret = atoi(msgID);

                                switch(ret)
                                {
                                case SINA_NO_ERROR:
                                    {
                                        g_cooperate = COP_SINA;
                                        char* ptr = buf + 4;
                                        strRunArgv = ptr;
                                    }  break;
                                case SINA_ERR_UNKNOWN:
                                    {
                                        MessageBox(0, "���󲻷��ϸ�ʽ�����Ժ����ԣ�", "�رտͻ���", MB_OK);
                                        ::ExitProcess(0);
                                    }  break;
                                case SINA_ERR_NO_USER:
                                    {
                                        MessageBox(0, "���޴��ʺţ����Ժ����ԣ�", "�رտͻ���", MB_OK);
                                        ::ExitProcess(0);
                                    }  break;
                                case SINA_ERR_WRONG_PWD:
                                    {
                                        MessageBox(0, "��¼������������µ�¼��", "�رտͻ���", MB_OK);
                                        ::ExitProcess(0);
                                    }  break;
                                case SINA_ERR_BANNED:
                                    {
                                        MessageBox(0, "�ʺ��ѱ���ͣ�����Ժ����ԣ�", "�رտͻ���", MB_OK);
                                        ::ExitProcess(0);
                                    }  break;
                                case SINA_ERR_TIMEOUT:
                                    {
                                        MessageBox(0, "��������Ӧ��ʱ�����Ժ����ԣ�", "�رտͻ���", MB_OK);
                                        ::ExitProcess(0);
                                    }  break;
                                case SINA_ERR_BAD_CAS_MSG:
                                    {
                                        MessageBox(0, "CAS���ش������Ժ����ԣ�", "�رտͻ���", MB_OK);
                                        ::ExitProcess(0);
                                    }  break;
                                default:
                                    {
                                        MessageBox(0, "δ֪�������Ժ����ԣ�", "�رտͻ���", MB_OK);
                                        ::ExitProcess(0);
                                    }  break;
                                }

                                sina_sock.Close();
                            }
                            else
                            {
                                MessageBox(0, "��������ʧ�ܣ����Ժ����ԣ�", "�رտͻ���", MB_OK);
                                ::ExitProcess(0);
                            }
                        }
                        else
                        {
                            MessageBox(0, "��������ʧ�ܣ����Ժ����ԣ�", "�رտͻ���", MB_OK);
                            ::ExitProcess(0);
                        }
                    }
                    else
                    {
                        MessageBox(0, "���ӷ�����ʧ�ܣ����Ժ����ԣ�", "�رտͻ���", MB_OK);
                        ::ExitProcess(0);
                    }
                }
                catch(...)
                {
                    MessageBox(0, "Exception", "", MB_OK);
                    ::ExitProcess(0);
                }
            }
        }
    }
    ////////////////////////////////////////
    switch(g_cooperate)
    {
    case COP_OURGAME:
        {
			strHomepage = "http://kop.ourgame.com/";
            strRegister = "http://register.ourgame.com/regist/index.asp?from=MMOG6000";
            strNews = "http://xhdw.moliyo.com/_1250/_1252";
            strActivity = "http://xhdw.moliyo.com/_1250/_1254";
			strUpdate = "http://xhdw.moliyo.com/_1250/_1255";
            strAd = "http://xhdw.moliyo.com/_1250/_1251";
            iBanner = IDB_DETAIL_OG;
        }  break;
    case COP_SINA:
        {
            strHomepage = "http://hdw.igame.sina.com.cn";
            strRegister = "http://igame.sina.com.cn/member/register/regist2.asp";
            strNews = "http://igame.sina.com.cn/game/hdw/client2.asp";
            strActivity = "http://igame.sina.com.cn/game/hdw/client3.asp";
			strUpdate = "http://www.hdwonline.com/update/update.aspx";//��Ҫ����Ϊ���˵�ҳ��
            strAd = "http://igame.sina.com.cn/game/hdw/client1.asp";
            iBanner = IDB_DETAIL_SINA;
        }  break;
    case COP_CGA:
        {
            strHomepage = "http://hdw.cga.com.cn";
            strRegister = "http://register.sdo.com/inputinfo.asp?from=7";
            strNews = "http://hdw.cga.com.cn/qd/2.html";
            strActivity = "http://hdw.cga.com.cn/qd/3.html";
			strUpdate = "http://hdw.cga.com.cn/qd/4.html";
            strAd = "http://hdw.cga.com.cn/qd/1.html";
            iBanner = IDB_DETAIL_CGA;
        }  break;
    default:
        {
		    //strHomepage = "http://www.hdwonline.com";
            strHomepage = "http://xhdw.moliyo.com/";
            //strRegister = "http://www.moliyo.com/user/register.aspx";
			strRegister = "https://passport.moliyo.com/register.aspx";
            strNews = "http://xhdw.moliyo.com/_1212/_1214";
            strActivity = "http://xhdw.moliyo.com/_1212/_1218";
			strUpdate = "http://xhdw.moliyo.com/_1212/_1216";
            strAd = "http://xhdw.moliyo.com/_1212/_1213";
					
        }  break;
    }
    ////////////////////////////////////////


    if (bUpdateSelf)
    {
        int pid = Fork();
        if (pid == 0) return FALSE;
    }

    //  ���ͳ��    by Jampe
    //if(0 == access("system/coredrv32.dll", 0x00))
    //{
    //    char syspath[260] = {0};
    //    char dllpath[260] = {0};

    //    GetSystemDirectory(syspath, 260);
    //    getcwd(dllpath, 260);

    //    strcat(syspath, "\\coredrv32.dll");
    //    strcat(dllpath, "\\system\\coredrv32.dll");
    //    MoveFile(dllpath, syspath);
    //    WinExec("regsvr32 /s coredrv32.dll", SW_HIDE);
    //}

    //char syspath[260] = {0};
    //GetSystemDirectory(syspath, 260);
    //strcat(syspath, "\\coredrv32.dll");

    //if(0 == access(syspath, 0x00))
    //{
    //    WinExec("regsvr32 /u /s coredrv32.dll", SW_HIDE);
    //    remove(syspath);
    //}



	// ��׼��ʼ��
	// ���δʹ����Щ���ܲ�ϣ����С
	// ���տ�ִ���ļ��Ĵ�С����Ӧ�Ƴ�����
	// ����Ҫ���ض���ʼ������
	// �������ڴ洢���õ�ע�����
	// TODO: Ӧ�ʵ��޸ĸ��ַ�����
	// �����޸�Ϊ��˾����֯��
	//SetRegistryKey(_T("Ӧ�ó��������ɵı���Ӧ�ó���"));

    g_KopData.LoadISP();


   /* if (g_KopData.IsFirstRun())
    {
        CSelectISP sel;
        INT_PTR nResponse = sel.DoModal();
        if (nResponse == IDCANCEL)
            return FALSE;
    }*/

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
        if (CreateProcess((LPSTR)(LPCSTR)strRun, (LPSTR)(LPCSTR)strRunArgv, NULL, NULL, FALSE, NORMAL_PRIORITY_CLASS, NULL, szRunPath, &si, &pi))
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