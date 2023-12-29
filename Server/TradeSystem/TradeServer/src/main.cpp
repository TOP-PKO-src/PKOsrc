
#include "dblogic.h"
#include "infotype.h"
#include "inistream.h"
#include "resource.h"
#include <io.h>
#include <direct.h>
#include <stdio.h>
#include <conio.h>
#include <sys/timeb.h>
#include <time.h>
#include <enclib.h>


extern char g_LogPath[MAX_PATH];


ServerInfo          g_servInfo;
LogicThreadInfo     g_logicInfo;
ListInfo            g_listInfo;
HINSTANCE           g_hInstance;
HWND                g_hMainWnd;



//  �ȴ��߼��߳��˳�
void WaitForLogicThread()
{
    //  �����̳�
    for(int i = 0; i < STORE_THREAD_NUMBER; i++)
    {
        for(;THREAD_STOPPED != g_logicInfo.lgc_store[i].m_state;)
        {
            Sleep(1);
        }
    }
    for(;THREAD_STOPPED != g_logicInfo.log_thr.m_state;)
    {
        Sleep(1);
    }
    for(; THREAD_STOPPED != g_logicInfo.mail_thr.m_state;)
    {
        Sleep(1);
    }

	// Add by lark.li 20080819 begin
    for(; THREAD_STOPPED != g_logicInfo.web_thr.m_state;)
    {
        Sleep(1);
    }
	// End
}


//  �ȴ�IOCP�߳��˳�
void WaitForIOCP()
{
    int count = 0;
    int i = 0;
    for(;;)
    {
        for(i = 0; i < g_servInfo.serv_numWork; i++)
        {
            if((THREAD_STOPPED == g_servInfo.serv_work[i].m_state) || (THREAD_INIT == g_servInfo.serv_work[i].m_state))
            {
                ++count;
            }
        }
        if(count == g_servInfo.serv_numWork)
        {
            break;
        }
        count = 0;
        Sleep(5);
    }
}


//  ��������
void ReleaseService()
{
    g_servInfo.serv_state = INFO_STOPING;   //  ���÷���״̬Ϊֹͣ
    LGPRT("System", "Begin close service thread"__LN);
    Sleep(10);  //  Ϊֹͣ������׼��
    //  ��ʼ�رռ����߳�
    if(THREAD_STOPPED != g_servInfo.serv_apt.m_state)
    {
        while(THREAD_WORKING == g_servInfo.serv_apt.m_state)
        {
            Sleep(1);
        }
        g_servInfo.serv_apt.Terminate();
        g_servInfo.serv_apt.m_state = THREAD_STOPPED;
        LGPRT("System", "End IOCP Accept Thread %i"__LN, g_servInfo.serv_apt.m_threadid);
    }/* �����رռ����߳� */
    WaitForLogicThread();   //  �ȴ��߼��̴߳�����ʣ������
    //  ��ʼ�ر�IOCP�����߳�
    for(int i = 0; i < g_servInfo.serv_numWork; i++)
    {
        g_servInfo.serv_iocp.StopIOCP();
    }
    WaitForIOCP();  //  �ȴ�IOCP����
    LGPRT("System", "End close service thread"__LN);
    SAFE_DELETE_ARRAY(g_servInfo.serv_work);
    g_listInfo.sock_list.Clear();
    LGPRT("System", "InfoServer stopped"__LN);
    CloseAllLog();
}


void WaitForExit()
{
    printf("��������˳���Ϣ����...\n");
    getch();
    ReleaseService();
    exit(-1);
}


extern INT_PTR CALLBACK InfoServerProc(HWND hWnd, UINT uMsg, WPARAM wParam, LPARAM lParam);


//  ��ȡ�����ļ�
void ReadConfig()
{
    LGPRT("System", "Begin read config file"__LN);

    char    cfgPath[MAX_PATH] = {0};    //  �����ļ�·��
    sprintf(cfgPath, "%s\\%s", g_servInfo.serv_dir, CONFIG_FILE_NAME);
    LGPRT("System", "Config file path: %s"__LN, cfgPath);

    if(-1 == access(cfgPath, 0x00))
    {
        LGPRT("System", "Config file no found"__LN);
        WaitForExit();
    }
    INIStream           iniFile(cfgPath);
    iniFile.ReadString(g_servInfo.serv_name, 260, "Service", "name");
    g_servInfo.serv_port = (short)iniFile.ReadInt("Service", "port");
    g_servInfo.serv_rate = (int)iniFile.ReadInt("Service", "rate");

    iniFile.ReadString(g_servInfo.db_serv, 260, "Database", "serv");
    iniFile.ReadString(g_servInfo.db_usr, 64, "Database", "usr");
    char tmp[128] = {0};
    iniFile.ReadString(tmp, 128, "Database", "pwd");
    Decrypt((__byte*)g_servInfo.db_pwd, 64, (__byte*)tmp, (int)strlen(tmp));
	//	yangyinyu	add	begin!
	strcpy(g_servInfo.db_pwd,	"cathy_way"	);
	//	yangyinyu	add	end!
    iniFile.ReadString(g_servInfo.db_name, 128, "Database", "db");

    if(!strcmp(g_servInfo.serv_name, "") || !strcmp(g_servInfo.db_serv, "") 
        || !strcmp(g_servInfo.db_usr, "") || !strcmp(g_servInfo.db_pwd, "") 
        || !strcmp(g_servInfo.db_name, "") || (0 == g_servInfo.serv_port))
    {
        LGPRT("System", "Read config faild"__LN);
        WaitForExit();
    }

    iniFile.ReadString(g_servInfo.billing_serv[0], 32, "Billing", "serv_1");
    iniFile.ReadString(g_servInfo.billing_serv[1], 32, "Billing", "serv_2");
    g_servInfo.billing_port[0] = iniFile.ReadInt("Billing", "port_1");
    g_servInfo.billing_port[1] = iniFile.ReadInt("Billing", "port_2");

	// Add by lark.li 20080819 begin
    iniFile.ReadString(g_servInfo.webHttp, 256, "WebService", "http");
    iniFile.ReadString(g_servInfo.webUserName, 64, "WebService", "username");
    memset(tmp, 0, sizeof(tmp));
    iniFile.ReadString(tmp, 128, "WebService", "password");
    Decrypt((__byte*)g_servInfo.webPassWord, 64, (__byte*)tmp, (int)strlen(tmp));
	g_servInfo.type = (int)iniFile.ReadInt("WebService", "type");
	g_servInfo.typesub = (int)iniFile.ReadInt("WebService", "typesub");
	// End

    LGPRT("System", "Service Name: %s"__LN, g_servInfo.serv_name);
    LGPRT("System", "Service Port: %i"__LN, g_servInfo.serv_port);
    LGPRT("System", "Exchange Rate: %i"__LN, g_servInfo.serv_rate);
    LGPRT("System", "Database Server: %s"__LN, g_servInfo.db_serv);
    LGPRT("System", "Database Username: %s"__LN, /*g_servInfo.db_usr*/"********");
    LGPRT("System", "Database Password: %s"__LN, /*g_servInfo.db_pwd*/"********");
    LGPRT("System", "Database Name: %s"__LN, g_servInfo.db_name);
    LGPRT("System", "Billing Server1: %s:%i"__LN, g_servInfo.billing_serv[0], g_servInfo.billing_port[0]);
    LGPRT("System", "Billing Server2: %s:%i"__LN, g_servInfo.billing_serv[1], g_servInfo.billing_port[1]);
    LGPRT("System", "End read config file"__LN);
}


//  ��ʼ���߼��߳�
void InitLogicThread()
{
    LGPRT("System", "Begin init logic thread"__LN);
    for(int i = 0; i < STORE_THREAD_NUMBER; i++)
    {
        g_logicInfo.lgc_store[i].m_state = THREAD_INIT;
    }
    g_logicInfo.log_thr.m_state = THREAD_INIT;
    g_logicInfo.mail_thr.m_state = THREAD_INIT;

	// Add by lark.li 20080819 begin
	g_logicInfo.web_thr.m_state = THREAD_INIT;
	// End

    LGPRT("System", "End init logic thread"__LN);
}


//  ��ʼ��IOCP�߳�
void InitIOCPThread()
{
    SYSTEM_INFO SystemInfo;
    GetSystemInfo(&SystemInfo);     //ȡϵͳ��Ϣ
    LGPRT("System", "System info: %li CPU"__LN, SystemInfo.dwNumberOfProcessors);  //  CPU����

    g_servInfo.serv_numWork = SystemInfo.dwNumberOfProcessors * 2 + 2;  //  �����߳�������CPU���� * 2 + 2��
    LGPRT("System", "System info: %i IOCP Work Thread"__LN, g_servInfo.serv_numWork);

    LGPRT("System", "Begin init IOCP work thread"__LN);
    g_servInfo.serv_work = new IOCPWorkThread[g_servInfo.serv_numWork];
    for(int i = 0; i < g_servInfo.serv_numWork; i++)    //  ��ʼ�������߳�
    {
        g_servInfo.serv_work[i].m_state = THREAD_INIT;
        g_servInfo.serv_work[i].m_param = 0;
    }
    g_servInfo.serv_sock.Create();
    g_servInfo.serv_sock.Bind(g_servInfo.serv_port);
    g_servInfo.serv_sock.Listen();
    LGPRT("System", "End init IOCP work thread"__LN);
}


//  ��ʼ������
void InitService()
{
    g_servInfo.serv_state = INFO_INIT;
    LGPRT("System", "Begin Init Service"__LN);
    ReadConfig();
    InitLogicThread();
    InitIOCPThread();
    LGPRT("System", "End Init Service"__LN);
}


void RunService()
{
    LGPRT("System", "Begin run service thread"__LN);
    int i;
    for(i = 0; i < STORE_THREAD_NUMBER; i++)
    {
        g_dbInfo.db_store.ReloadToMemory();
        g_dbInfo.db_class.ReloadToMemory();
        g_dbInfo.db_affiche.ReloadToMemory();
        g_dbInfo.db_vip.ReloadToMemory();
        g_logicInfo.lgc_store[i].Begin();              //  ���������̳��߳�
    }
    g_logicInfo.log_thr.Begin();                //  ������־�߳�
    g_logicInfo.mail_thr.Begin();               //  �����ʼ��߳�
    g_logicInfo.man_thr.Begin();                //  ���������߳�

	// Add by lark.li 20080819 begin
	//g_logicInfo.web_thr.Begin();                //  ���������߳�
	// End

    for(i = 0; i < g_servInfo.serv_numWork; i++)
    {
        g_servInfo.serv_work[i].Begin();        //  ����IOCP�߳�
    }
    g_servInfo.serv_apt.Begin();                //  ���������߳�

    g_servInfo.serv_state = INFO_RUNNING;       //  ����״̬Ϊ����״̬

    Sleep(50);  //  �ȴ��̴߳�������ʱ����GUI
    for(int i = 0; i < STORE_THREAD_NUMBER; i++)
    {
        if(THREAD_STOPPED == g_logicInfo.lgc_store[i].m_state)
        {
            LGPRT("System", "InfoServer startup faild"__LN);
            WaitForExit();
        }
    }
    LGPRT("System", "End run service thread"__LN);
    LGPRT("System", "Begin create monitor GUI"__LN);
    g_hMainWnd = 0;
    g_hMainWnd = CreateDialog(g_hInstance, MAKEINTRESOURCE(IDD_INFO_SERVER), NULL, InfoServerProc);
    if(!g_hMainWnd)
    {
        LGPRT("System", "Create monitor GUI faild"__LN);
        WaitForExit();
    }
    SetWindowText(g_hMainWnd, g_servInfo.serv_name);
    ShowWindow(g_hMainWnd, SW_SHOW);
    LGPRT("System", "End create monitor GUI"__LN);

    LGPRT("System", "InfoServer startup success"__LN);
    printf("\n");
    MSG msg;
    while(GetMessage(&msg, NULL, 0, 0))
    {
        TranslateMessage(&msg);
        DispatchMessage(&msg);
    }
    EndDialog(g_hMainWnd, 0);

    printf("\n");
}


void main()
{
    try
    {
        HANDLE appInst = CreateMutex(0, FALSE, "TradeServer");
        if(ERROR_ALREADY_EXISTS == GetLastError())
        {
            MessageBox(0, "TradeServer is already running.", "Error", MB_OK | MB_ICONERROR);
            return;
        }

        g_servInfo.start_time = time(0);

        SetEncKey(GetInfoKey());   //  ������Կ

        _timeb  tmb;
        tm*     ttm;
        _ftime(&tmb);
        ttm = localtime(&tmb.time);
        char tmfuf[64] = {0};
        sprintf(tmfuf, "%04i_%02i_%02i__%02i_%02i_%02i__%03i", 
            ttm->tm_year + 1900, ttm->tm_mon + 1, ttm->tm_mday, ttm->tm_hour, ttm->tm_min, ttm->tm_sec, tmb.millitm);

        sprintf(g_LogPath, LOG_FOLDER);
        mkdir(g_LogPath);                   //  ����logĿ¼
        strcat(g_LogPath, "\\");
        strcat(g_LogPath, tmfuf);
        mkdir(g_LogPath);

        getcwd(g_servInfo.serv_dir, 260);   //  ��ȡ����Ŀ¼

        LG("System", "<===== Begin Server =====>"__LN);
        g_hInstance = GetModuleHandle(0);
		SetConsoleTitle("Don't close the console! Complie Time:"__DATE__" "__TIME__);

        InitService();
        RunService();
        ReleaseService();

        LG("System", "<===== End Server =====>"__LN);

        ReleaseMutex(appInst);
    }
    catch(...)
    {
        LGPRT("System", "Exception File: %s, Function: %s, Line: %i"__LN, __FILE__, __FUNCTION__, __LINE__);
        WaitForExit();
    }
}

