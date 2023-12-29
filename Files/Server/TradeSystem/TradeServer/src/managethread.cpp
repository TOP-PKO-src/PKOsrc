
#include "managethread.h"
#include "infotype.h"


extern void OnManageMessage(pInfoMessage msg);


ManageThread::ManageThread()
{
}


ManageThread::~ManageThread()
{
}

uint ManageThread::Run()
{
    m_state = THREAD_INIT;   //  ��ʼ��״̬
    unsigned int threadID = GetCurrentThreadId();
    LGPRT("System", "Begin Manage Thread %i"__LN, threadID);

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
        if(0 == g_listInfo.man_list.Size())   //  ����Ϊ��ʱ
        {
            Sleep(1);   //  �ͷ�cpu��Դ
            continue;
        }
        m_state = THREAD_WORKING;        //  ����״̬
        while(g_listInfo.man_list.Size())
        {
            msgPtr = 0;
            msgPtr = g_listInfo.man_list.Pop();
            if(msgPtr)
            {
                OnManageMessage(msgPtr);
            }
        }
__END_TRY
    }

    LGPRT("System", "End Manage Thread %i"__LN, threadID);
    return 0;
}

