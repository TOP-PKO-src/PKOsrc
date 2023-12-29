
/* * * * * * * * * * * * * * * * * * * *

    ����LogServer
    Jampe
    2006/3/31

 * * * * * * * * * * * * * * * * * * * */



#if !defined __LOGLIB_H__
#define __LOGLIB_H__

#include <windows.h>

#ifdef NDEBUG
#pragma comment(lib, "LogLib.lib")
#else
#pragma comment(lib, "LogLib_D.lib")
#endif


extern const char* g_Pipename;
extern const char* g_PipeMonitor;


class LogInterface
{
public:
    virtual ~LogInterface();

    static LogInterface* Instance();

    /*
     *
     *  ip      Log�����������ַ
     *  port    Log����������˿�
     *
     */
    void SetServer(const char* ip, unsigned short port);

    /*
     *  ����ʽ��ֱ����ȫ�Ͽ�
     *  �Ͽ�֮ǰ�Ὣ�����е���������ϣ���ִ�жϿ�
     */
    void Disconnect();


    /*
     *  ���ַ�������Log��������
     *
     *  str1    ��Ӧ���ݿ��һ���ֶΣ�����256
     *  str2    ��Ӧ���ݿ�ڶ����ֶΣ�����256
     *  str3    ��Ӧ���ݿ�������ֶΣ�����256
     *  str4    ��Ӧ���ݿ���ĸ��ֶΣ�����256
     *  str5    ��Ӧ���ݿ������ֶΣ�����256
     *  str6    ��Ӧ���ݿ�������ֶΣ����ݿ���������Ϊ ntext���ϳ���Ϣһ�����ڴ��ֶ���
     *  ext1    ��Ӧ���ݿ��һ����չ�ֶΣ�����128
     *  ext1    ��Ӧ���ݿ�ڶ�����չ�ֶΣ�����128
     *  ext1    ��Ӧ���ݿ��������չ�ֶΣ�����128
     *  ext1    ��Ӧ���ݿ���ĸ���չ�ֶΣ�����128
     *
     */
    void SendLogMessage(const char* str1, const char* str2, const char* str3, const char* str4, const char* str5, const char* str6, const char* ext1 = "", const char* ext2 = "", const char* ext3 = "", const char* ext4 = "");


    /*
     *  ���ã��˺���ѹ��������SQL��䡣
     *  LOG Server���Դ�������﷨�����﷨���
     */
    void PushSQLCommand(const char* sqlcmd);

    /*
     *  ����ͬ�ϣ����ǻ����ɸ���
     */
    void CloneSQLCommand(const char* sqlcmd, size_t size);
    void CloneSQLCommand(const char* sqlcmd);


    /*
     *  ����IPC
     */
    bool IPC_Connect();
    void IPC_Close();
    bool IPC_SendLogMessage(const char* str1, const char* str2, const char* str3, const char* str4, const char* str5, const char* str6, const char* ext1 = "", const char* ext2 = "", const char* ext3 = "", const char* ext4 = "");

private:
    LogInterface();
    HANDLE          m_hPipe;
};


//  ��ȡʵ��
#define     GetLogPtr()             LogInterface::Instance()

//  ��¼��־
#define     LOG(str1, str2, str3, str4, str5, str6, ext1, ext2, ext3, ext4)                 GetLogPtr()->SendLogMessage(str1, str2, str3, str4, str5, str6, ext1, ext2, ext3, ext4)
#define     LOG_IPC(str1, str2, str3, str4, str5, str6, ext1, ext2, ext3, ext4)             GetLogPtr()->IPC_SendLogMessage(str1, str2, str3, str4, str5, str6, ext1, ext2, ext3, ext4)


class IPC_Monitor
{
public:
    ~IPC_Monitor();

    static IPC_Monitor* Instance();

    bool IPC_Login(const char* path);
    bool IPC_KeepLive();
    void IPC_Close();

private:
    bool IPC_Connect();
    bool IPC_Quit();

private:
    IPC_Monitor();
    HANDLE          m_hPipe;
};

#define GetMonitor()                IPC_Monitor::Instance()

#endif
