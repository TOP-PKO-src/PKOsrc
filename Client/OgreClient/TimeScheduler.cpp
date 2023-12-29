#include "StdAfx.h"
#include ".\timescheduler.h"

//
inline	bool	operator<(	const	EventProcess&	left,	const	EventProcess&	right	){	return	left.GetID()	<	right.GetID();	};

TimeScheduler::TimeScheduler(void)
{
}

TimeScheduler::~TimeScheduler(void)
{
}

//	将时间事件增加到时间队列中。
void	TimeScheduler::AppendAllTimeEvent()
{
	AutoLock	a(	lock_RegisterTimeEventLock	);
	AutoLock	b(	lock_TimeEvents	);

	std::list< PostTimeEventRegister >::iterator		it	=	pool_RegisterTimeEvent.begin();

	while(	it	!=	pool_RegisterTimeEvent.end()	)
	{
		//	检查指定时间段是否有事件。
		if(	m_TimeEvents.find(	it->m_time )	==	m_TimeEvents.end()	)
		{
			m_TimeEvents.insert(	std::pair< DWORD, std::set< EventProcess >	>(	it->m_time,	std::set< EventProcess>()	)	);
		}

		//	
		std::map< DWORD, std::set< EventProcess > >::iterator	it_TimeEvents	=	m_TimeEvents.find( it->m_time );

		//
		it_TimeEvents->second.insert(	it->m_pk	);

		//
		++	it;
	};

	//	删除所有登记事件。
	pool_RegisterTimeEvent.clear();
};

//	增加时间消息,	返回一个ID号，以便寻找这条消息。
FWORD	TimeScheduler::AppendTimeEvent(	
				DWORD		time,								//	预计处理此事件的时间。
				AutoProcess*	pParam								//	事件参数。
				)
{
	AutoLock	a(	lock_RegisterTimeEventLock	);

	static	DWORD	order	=	0;

	pool_RegisterTimeEvent.push_back(	PostTimeEventRegister(	time,	EventProcess(	++order,	pParam	)	)	);

	FWORD	r;
	r.h	=	time;
	r.l	=	order;
	return	r;
};

//	取消时间事件。
void	TimeScheduler::CancelTimeEvent(	LONGLONG	id	)
{
	AutoLock	a(	lock_TimeEvents	);

	std::map< DWORD, std::set< EventProcess > >::iterator	it_TimeEvents	=	m_TimeEvents.find( id >> 32 );

	assert(	it_TimeEvents	!=	m_TimeEvents.end()	);

	std::set<EventProcess>::iterator	it	=	it_TimeEvents->second.find(	EventProcess((DWORD)id,NULL ) );

	assert(	it	!=	it_TimeEvents->second.end()	);

	it->Disable();
};

//	运行所有的时间事件。
void	TimeScheduler::RunTimeEvents(	DWORD	dwTime	)
{
	//	登记所有的时间事件。
	this->AppendAllTimeEvent();

	//	依次处理所有的时间事件。
	AutoLock(	this->lock_TimeEvents	);
			
	std::map<	DWORD,	std::set< EventProcess >	>::iterator	it	=	m_TimeEvents.begin();

	while(	true)
	{
		//	如果循环到最后，则跳出。
		if(	it	==	m_TimeEvents.end()	)
		{
			break;
		}
		DWORD	dwTimeRecord	=	it->first;
		//	如果循环到当前时间，则跳出。
		if(	it	->	first	>	dwTime	)
		{
			break;
		};

		//	处理时间事件。
		std::set< EventProcess >::iterator	it_Events	=	it->second.begin();

		while(	it_Events	!=	it->second.end()	)
		{
			it_Events->Run(	dwTime	);
			++	it_Events;
		};

		//
		++	it;
	};

	//	清除无效的时间事件。
	m_TimeEvents.erase(	m_TimeEvents.begin(),	it	);
};
