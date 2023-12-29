
#include "storethread.h"
#include <stdio.h>
#include "infotype.h"
#include "dblogic.h"

#if TEST_SERVER == 1
    #include <Mmsystem.h>
    #pragma comment(lib, "Winmm.lib")

    extern DWORD totaltime;
    extern DWORD totalcount;
#endif


extern void OnStoreMessage(pInfoMessage msg);

StoreThread::StoreThread()
{
}


StoreThread::~StoreThread()
{
}


uint StoreThread::Run()
{
    m_state = THREAD_INIT;   //  ��ʼ��״̬
    unsigned int threadID = GetCurrentThreadId();
    LGPRT("System", "Begin Logic Store Thread %li"__LN, threadID);

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
        if(0 == g_listInfo.store_list.Size())   //  ����Ϊ��ʱ
        {
            Sleep(1);   //  �ͷ�cpu��Դ
            continue;
        }
        m_state = THREAD_WORKING;        //  ����״̬
        while(g_listInfo.store_list.Size())
        {
            msgPtr = 0;
            msgPtr = g_listInfo.store_list.Pop();
            if(msgPtr)
            {
#if TEST_SERVER == 1
            DWORD b = 0, e = 0;
            b = timeGetTime();
#endif
                OnStoreMessage(msgPtr);
#if TEST_SERVER == 1
            e = timeGetTime();

            LG("TEST", "Store Begin: %li, Store End: %li, End - Begin: %li, ThreadID: %li\n", b, e, (e - b), ::GetCurrentThreadId());
            totaltime += (e - b);
            ++totalcount;
#endif
            }
        }
__END_TRY
    }

    LGPRT("System", "End Logic Store Thread %li"__LN, threadID);
    return 0;
}
