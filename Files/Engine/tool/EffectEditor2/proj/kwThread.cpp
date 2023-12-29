//====================================================================================================
/** \file  
 *  Filename: com_thread.cpp
 *  Desc:     ���߳�Ӧ�õķ�װ��,ʹ�õ�ǰ�ļ��ṩ������ü򵥵Ľӿ�ʹ�ö�
 *            �̺߳���.
 *  His:      River create @ 4/11 2003 0:02
 */
//====================================================================================================
#include "stdafx.h"
#include "EffectEditer.h"

#include "kwThread.h"



static DWORD WINAPI cThreadProc( kwThread *pThis )
{
  return pThis->ThreadProc();
}


/**
 *  �߳̽������еĺ���.
 */
void kwThread::End()
{
#if defined( _WIN32 ) && defined( _MT )
	if( m_threadHandle != NULL )
	{
		m_bIsRunning = false;
		WaitForSingleObject( m_threadHandle, INFINITE );
		CloseHandle( m_threadHandle );
		m_threadHandle = NULL;
	}
#endif
}

/**
*  �߳̿�ʼ���еĺ���.
*/
void kwThread::Begin()
{
	{
#if defined( _WIN32 ) && defined( _MT )
		if( m_threadHandle )
			End();  // just to be safe.

		// Start the thread.
		m_threadHandle = CreateThread( NULL,
			0,
			(LPTHREAD_START_ROUTINE)cThreadProc,
			this,
			0,
			(LPDWORD)&m_threadID );
		if( m_threadHandle == NULL )
		{
			throw;
		}
		m_bIsRunning = true;
		m_cClock.Initialize();
#endif
	}
}

