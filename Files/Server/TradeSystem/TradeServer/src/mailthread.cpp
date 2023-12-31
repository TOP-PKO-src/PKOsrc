
#include "mailthread.h"
#include "infotype.h"
#include "dblogic.h"


extern void OnMailMessage(pInfoMessage msg);

MailThread::MailThread()
{
}


MailThread::~MailThread()
{
}


uint MailThread::Run()
{
    m_state = THREAD_INIT;   //  ��ʼ��״̬
    unsigned int threadID = GetCurrentThreadId();
    LGPRT("System", "Begin Mail Thread %li"__LN, threadID);

    pInfoMessage msgPtr;
    for(;;)
    {
__BEGIN_TRY
        m_state = THREAD_RESTING;        //  ����״̬
        if(INFO_STOPING == g_servInfo.serv_state)
        {
            m_state = THREAD_STOPPED;    //  ֹͣ״̬
            break;
        }
        if(0 == g_listInfo.mail_list.Size())   //  ����Ϊ��ʱ
        {
            Sleep(1);   //  �ͷ�cpu��Դ
            continue;
        }
        m_state = THREAD_WORKING;        //  ����״̬
        while(g_listInfo.mail_list.Size())
        {
            msgPtr = 0;
            msgPtr = g_listInfo.mail_list.Pop();
            if(msgPtr)
            {
                OnMailMessage(msgPtr);
            }
        }
__END_TRY
    }

    LGPRT("System", "End Mail Thread %li"__LN, threadID);
    return 0;
}

