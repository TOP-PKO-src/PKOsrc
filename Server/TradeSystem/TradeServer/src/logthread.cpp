
#include "infotype.h"
#include "logthread.h"
#include "dblogic.h"

LogThread::LogThread()
{
}


LogThread::~LogThread()
{
}


uint LogThread::Run()
{
    m_state = THREAD_INIT;   //  ��ʼ��״̬
    unsigned int threadID = GetCurrentThreadId();
    LGPRT("System", "Begin Log Thread %li"__LN, threadID);

    const char* msgPtr;
    for(;;)
    {
__BEGIN_TRY
        m_state = THREAD_RESTING;        //  ����״̬
        if(INFO_STOPING == g_servInfo.serv_state)
        {
            m_state = THREAD_STOPPED;    //  ֹͣ״̬
            break;
        }
        if(0 == g_listInfo.log_list.Size())   //  ����Ϊ��ʱ
        {
            Sleep(1);   //  �ͷ�cpu��Դ
            continue;
        }
        m_state = THREAD_WORKING;        //  ����״̬
        while(g_listInfo.log_list.Size())
        {
            msgPtr = 0;
            msgPtr = g_listInfo.log_list.Pop();
            if(msgPtr)
            {
                g_dbInfo.db_history.ExecuteInsert(msgPtr);
                SAFE_DELETE_ARRAY(msgPtr);
            }
        }
__END_TRY
    }

    LGPRT("System", "End Log Thread %li"__LN, threadID);
    return 0;
}


