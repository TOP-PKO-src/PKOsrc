//====================================================================================================
/** \file  
 *  Filename: com_thread.h
 *  Desc:     ���߳�Ӧ�õķ�װ��,ʹ�õ�ǰ�ļ��ṩ������ü򵥵Ľӿ�ʹ�ö�
 *            �̺߳���.
 */
//====================================================================================================
#pragma once
#include ".\dumpwater.h"

/** \brief �Զ��̵߳ķ�װ��.
 *  
 *  ʹ�����������ü򵥵Ľӿ�ʹ�ö��߳�,����Ҫ�ӵ�ǰ����������,��Ϊÿһ��
 *  �̶߳����Լ�����Ĵ�����.
 *
 */
class kwThread
{
public:
	kwThread(void)
	{
		m_threadID      = 0;
		m_threadHandle  = NULL;
		m_bIsRunning    = false;
	}

	virtual ~kwThread(void)
	{
		End();
	}

public:
	/**
	*  �߳̽������еĺ���.
	*/
	void End();

	/**
	*  �߳̿�ʼ���еĺ���.
	*/
	void Begin();

	/**
	*  �߳��ǲ������еĺ���.
	*/
	bool IsRunning()			{return m_bIsRunning;}


	/**
	*  ÿһ�������඼�������صĺ���.
	*/
	virtual DWORD ThreadProc()	{return 0;}
protected:
	//! �̵߳�handle.
	HANDLE      m_threadHandle;
	//! �̵߳�ID.
	DWORD       m_threadID;
	//! �߳��ǲ�����������.
	bool        m_bIsRunning;
	//!ʱ��
	CSysClock	m_cClock;
};


/** \ brief ��Mutex��ķ�װ.
 *  
 *  ������װMutex��,ʹ�ö��߳̿��԰�ȫ��������ϵͳ��.
 *
 */
class kwMutex
{
	//! Mutex�ľ��
	HANDLE m_mutex;


public:
	kwMutex()
	{
#if defined( _WIN32 ) && defined( _MT )
		// This mutex will help the two threads share their toys.
		m_mutex = CreateMutex( NULL, false, NULL );
		if( m_mutex == NULL )
			throw;
#endif
	}


	virtual ~kwMutex()
	{
#if defined( _WIN32 ) && defined( _MT )
		if( m_mutex != NULL )
		{
			CloseHandle( m_mutex );
			m_mutex = NULL;
		}
#endif
	}

	/**
	 *  ��ʼʹ��Mutex,����ؼ����ݲ�������
	 */
	void MutexOn() const
	{
#if defined( _WIN32 ) && defined( _MT )
		WaitForSingleObject( m_mutex, INFINITE );  // To be safe...
#endif
	}


	/**
	 *  �뿪�ؼ����ݲ��������ر�Mutex.
	 */
	void MutexOff() const
	{
#if defined( _WIN32 ) && defined( _MT )
		ReleaseMutex( m_mutex );  // To be safe...
#endif
	}


};

/************************************************************************/
/*                                                                      */
/************************************************************************/
template<class _Ty>	class S_FTrack
{
	std::vector<_Ty>	m_VECPath;
	int m_nCount;
	int m_nPos;
public:
	S_FTrack()
	{
		m_VECPath.clear();
		m_nCount =0;
		m_nPos = 0;
	}
	void resize(WORD _nSize = 100)
	{
		m_VECPath.resize(_nSize);
		m_nCount = _nSize;
		clear();
	}
	void setsize(WORD _nSize = 100)		{m_nPos -= _nSize;}
	void clear()						{m_nPos = m_nCount;}
	void push_front(_Ty &_BaseMesh)		{--m_nPos; m_VECPath[m_nPos] = _BaseMesh;}
	void pop_front()
	{
		if(m_nCount > m_nPos)
		{
			++m_nPos;
			if(m_nPos == m_nCount)
			{
				clear();
			}
		}
	}
	int		size()						{return m_nCount - m_nPos;}
	bool	empty()						{return m_nPos == m_nCount ? true : false;}
	_Ty* operator[] ( int i )
	{
		if(!empty() && i >= 0 && i < size())
		{
			return &m_VECPath[m_nPos + i];
		}
		return NULL;
	}
	_Ty* front()
	{
		if(!empty())
			return &m_VECPath[m_nPos];
		return NULL;
	}
	_Ty* next()
	{
		if(!empty())
		{
			if( (m_nPos + 1) != m_nCount)
				return &m_VECPath[m_nPos + 1];
		}
		return NULL;
	}
};


class kwTask
{
public:
	kwTask();
	~kwTask();
public:
	virtual Run(DWORD dwDailTime, DWORD dwFrame);

	BOOL	Exec(BOOL bEngble)	{ m_bEnable = bEngble; }
	BOOL	IsRunning()			{ return m_bEnable; }

	void	setID(DWORD dwID)	{ m_dwID = dwID; }
	DWORD	getID()				{ return m_dwID; }

protected:
	DWORD	m_dwID;
	BOOL	m_bEnable;
};

class kwTaskMgrMT : public kwThread
{
public:
	kwTaskMgrMT(void)
	{
		m_wNum = 100;
		m_vecTasks.resize(m_wNum);
		m_vecInValidID.resize(m_wNum);

		m_vecInValidID.setsize(m_wNum);
		for (WORD n = 0; n < m_wNum; ++n)
		{
			m_vecTasks[n] = NULL;
			(*m_vecInValidID[n]) = n;
		}
	}

	DWORD ThreadProc()
	{
		m_cClock.FrameUpdate();
		DWORD dwDailTime = m_cClock.GetDailTime();
		DWORD dwFrame = m_cClock.GetCurFrame();


		for (int n = 0; n < m_wNum; ++n)
		{
			if(m_vecTasks[n] && m_vecTasks[n]->IsRunning())
				m_vecTasks[n]->Run( dwDailTime,dwFrame);
		}
		return 0;
	}

public:
	BOOL	RegisterTask(kwTask* ptask)
	{
		WORD  dwid = *m_vecInValidID.front();
		if(dwid == 0)
			return FALSE;

		m_vecInValidID.pop_front();

		m_vecTasks[dwid] = ptask;
		ptask->setID(dwid);

		return TRUE;
	}
	BOOL	UnRegisterTask(kwTask* ptask)
	{
		WORD dwid = (WORD)ptask->getID();
		if(dwid >= m_wNum)
			return FALSE;
		m_vecInValidID.push_front(dwid);

		m_vecTasks[dwid] = NULL;

		ptask->setID(0xffffff);
		return TRUE;
	}
protected:
	WORD					m_wNum;
	std::vector<kwTask*>	m_vecTasks;
	S_FTrack<WORD>			m_vecInValidID;
};
