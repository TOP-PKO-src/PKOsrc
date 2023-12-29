#pragma once

#include <mmsystem.h>

class CDumpWater
{
public:
	CDumpWater(void);
	~CDumpWater(void);
};

/************************************************************************/
/*                                                                      */
/************************************************************************/
class CKWTimer  
{
public:
	DWORD GetStartTime();		//�õ�����ʱ��ʱ��
	DWORD GetStartToNowTime();//�õ�ϵͳ���������ڵ�ʱ��
	DWORD GetBetweenLastTime();//�õ��ϴε��þ�����ʱ��
	DWORD GetAbsoluteTime();/// ��ȡ����ʱ��
	void  Start();
	void  Reset();
	CKWTimer();
	virtual ~CKWTimer();
	//�Ƿ��ʼ����ʱ��
	BOOL	m_bTimerInitialized;
	//�Ƿ�ʹ��QPF
	BOOL	m_bUsingQPF;

	LONGLONG m_llQPFTicksPerSec; 
	//��¼ϵͳ����ʱ��
	LONGLONG m_llBaseTime;
	DWORD m_dwBaseTime;
	//��һ�β�ѯ��ʱ��
	LONGLONG m_llLastElapsedTime;
	DWORD m_dwLastElapsedTime;
};
inline void CKWTimer::Start()
{
	// ��ʼ����ʱ��
	if (!m_bTimerInitialized)
	{
		m_bTimerInitialized = true;

		// ʹ�� QueryPerformanceFrequency() ��ȡ��ȷʱ�䡣�����֧��
		// ֻ��ʹ�� timeGetTime()
		LARGE_INTEGER qwTicksPerSec;
		m_bUsingQPF = QueryPerformanceFrequency(&qwTicksPerSec);
		if( m_bUsingQPF )
			m_llQPFTicksPerSec = qwTicksPerSec.QuadPart;

		if (m_bUsingQPF)
		{
			LARGE_INTEGER qwTime;
			QueryPerformanceCounter(&qwTime);
			m_llBaseTime = qwTime.QuadPart;

			m_llLastElapsedTime = m_llBaseTime;
		}else
		{
			m_dwBaseTime = timeGetTime();
			m_dwLastElapsedTime = m_dwBaseTime;
		}
	}
}

inline void  CKWTimer::Reset()
{
	m_bTimerInitialized = false;
	Start();
}

inline DWORD CKWTimer::GetStartTime()
{
	if (m_bUsingQPF)
	{
		return  (DWORD)m_llBaseTime;
	}else
	{
		return m_dwBaseTime;
	}
	return 0;
}

inline DWORD CKWTimer::GetAbsoluteTime()
{
	if (m_bUsingQPF)
	{
		LARGE_INTEGER qwTime;
		//double  fTime;
		QueryPerformanceCounter(&qwTime);
		//fTime = (double)qwTime.QuadPart;// / (double) m_llQPFTicksPerSec;
		return (DWORD)qwTime.QuadPart;
	}else
	{
		return timeGetTime();
	}
	return 0;
}
inline DWORD CKWTimer::GetBetweenLastTime()
{
	if (m_bUsingQPF)
	{
		LARGE_INTEGER qwTime;
		QueryPerformanceCounter(&qwTime);

		LONGLONG llElapsedTime;
		llElapsedTime = qwTime.QuadPart - m_llLastElapsedTime;
		m_llLastElapsedTime = qwTime.QuadPart;

		return (DWORD)llElapsedTime;
	}
	else
	{
		DWORD dwTime;
		DWORD dwElapsedTime;

		dwTime = timeGetTime();
		dwElapsedTime = dwTime - m_dwLastElapsedTime;
		m_dwLastElapsedTime = dwTime;
		return (DWORD) dwElapsedTime;
	}
	return 0;
}
inline DWORD CKWTimer::GetStartToNowTime()
{
	if (m_bUsingQPF)
	{
		LARGE_INTEGER qwTime;
		QueryPerformanceCounter(&qwTime);
		//double fAppTime = (double) ( qwTime.QuadPart - m_llBaseTime );// / (double) m_llQPFTicksPerSec;
		return (DWORD) ( qwTime.QuadPart - m_llBaseTime );
	}
	else
	{
		return (timeGetTime() - m_dwBaseTime);
	}
	return 0;
}

/************************************************************************/
/*                                                                      */
/************************************************************************/
class CSysClock
{
public:
	CSysClock();
	~CSysClock();

	void	Initialize();
	void	FrameUpdate();

	DWORD	GetCurTime();
	DWORD	GetDailTime();
	DWORD	GetCurFrame();

public:
	//������ʵʱ��
	CKWTimer	m_cTimer;

	DWORD		m_dwCurTime;	//��ǰ���������ڵ�ʱ��
	DWORD		m_dwFrameTime;	//ÿ�θ��µ�ǰ��ʱ���
	DWORD		m_dwCurFrame;	//��ǰ֡��
};
inline void	CSysClock::FrameUpdate()
{
	m_dwFrameTime = m_cTimer.GetBetweenLastTime();
	m_dwCurTime   = m_cTimer.GetStartToNowTime();
	m_dwCurFrame++;
}
inline DWORD	CSysClock::GetCurTime()
{
	return m_dwCurTime   = m_cTimer.GetStartToNowTime();
}
inline DWORD	CSysClock::GetDailTime()
{
	return m_dwFrameTime;
}
inline DWORD	CSysClock::GetCurFrame()
{
	return m_dwCurFrame;
}
