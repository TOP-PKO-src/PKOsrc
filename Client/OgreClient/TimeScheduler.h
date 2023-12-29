#pragma once
#include <map>
#include <set>
#include <list>

//
class	AutoProcess
{
	//	自动化处理。	
public:
	
	//	当前消息的私用处理器。
	int	(*m_pFnLocalProcess)(	AutoProcess*	pProcess,	DWORD	);
	//	处理这条消息。
	int	Process(	DWORD	dwTime	)
	{
		if(	m_pFnLocalProcess	)
			return	m_pFnLocalProcess(	this,	dwTime	);

		assert(	0 );
		return	0;
	};


};

//	事件处理器。
class	EventProcess
{
private:
	DWORD		m_id;											//	流水号。

public:
	DWORD	GetID()	const	{	return	m_id;	};

private:
	AutoProcess*	m_pMsg;											//	要处理的消息。
	bool			m_bEnable;										//	如果设置成FALSE，则在运行FRAME后清除此事件。

public:
	EventProcess( 
		DWORD	id,
		AutoProcess*	pMsg
		)	:	m_id(	id	),
				m_pMsg(	pMsg	),
				m_bEnable(	true	)
	{
	};

	void	operator=(	const	EventProcess&	this_	)
	{
		m_id			=	this_.m_id;
		m_pMsg			=	this_.m_pMsg;
		m_bEnable		=	this_.m_bEnable;
	};

	//	处理消息。
	bool	Run(	DWORD	time	)
	{
		return	0 == m_pMsg->Process(	time	);
	};
	
	//	将事件设置成无效状态。
	void	Disable()
	{
		m_bEnable	=	false;
	};
	//	检查事件是否有效。
	bool	IsEnable()
	{
		return	m_bEnable;
	};

};

//	时间事件调度器。
class	TimeScheduler
{
public:
	TimeScheduler(void);
	~TimeScheduler(void);

private:	//	时间事件。

	//	所有的时间事件。
	std::map<	DWORD,	std::set< EventProcess >	>	m_TimeEvents;
	Lock												lock_TimeEvents;

private:	//	登记时间事件。

	//	邮寄登记消息包。
	class	PostTimeEventRegister
	{
	public:
		const	DWORD			m_time;
				EventProcess	m_pk;

	public:
		PostTimeEventRegister(	
			DWORD	time,	
			EventProcess	pk
			)	:	m_time(	time	),
					m_pk(	pk	)
		{
		}
	};

	//	等待登记的时间事件。
	std::list<	PostTimeEventRegister	>				pool_RegisterTimeEvent;
	Lock												lock_RegisterTimeEventLock;

	//	将时间事件增加到时间队列中。
	void	AppendAllTimeEvent();

public:

	//	增加时间消息,	返回一个ID号，以便寻找这条消息。
	FWORD	AppendTimeEvent(	
					DWORD		time,								//	预计处理此事件的时间。
					AutoProcess*	pParam								//	事件参数。
					);

	//	取消时间事件。
	void	CancelTimeEvent(	LONGLONG	id	);

	//	运行所有的时间事件。
	void	RunTimeEvents(	DWORD	dwTime	);

};
