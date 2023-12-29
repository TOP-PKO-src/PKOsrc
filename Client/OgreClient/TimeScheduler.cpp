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

//	��ʱ���¼����ӵ�ʱ������С�
void	TimeScheduler::AppendAllTimeEvent()
{
	AutoLock	a(	lock_RegisterTimeEventLock	);
	AutoLock	b(	lock_TimeEvents	);

	std::list< PostTimeEventRegister >::iterator		it	=	pool_RegisterTimeEvent.begin();

	while(	it	!=	pool_RegisterTimeEvent.end()	)
	{
		//	���ָ��ʱ����Ƿ����¼���
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

	//	ɾ�����еǼ��¼���
	pool_RegisterTimeEvent.clear();
};

//	����ʱ����Ϣ,	����һ��ID�ţ��Ա�Ѱ��������Ϣ��
FWORD	TimeScheduler::AppendTimeEvent(	
				DWORD		time,								//	Ԥ�ƴ�����¼���ʱ�䡣
				AutoProcess*	pParam								//	�¼�������
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

//	ȡ��ʱ���¼���
void	TimeScheduler::CancelTimeEvent(	LONGLONG	id	)
{
	AutoLock	a(	lock_TimeEvents	);

	std::map< DWORD, std::set< EventProcess > >::iterator	it_TimeEvents	=	m_TimeEvents.find( id >> 32 );

	assert(	it_TimeEvents	!=	m_TimeEvents.end()	);

	std::set<EventProcess>::iterator	it	=	it_TimeEvents->second.find(	EventProcess((DWORD)id,NULL ) );

	assert(	it	!=	it_TimeEvents->second.end()	);

	it->Disable();
};

//	�������е�ʱ���¼���
void	TimeScheduler::RunTimeEvents(	DWORD	dwTime	)
{
	//	�Ǽ����е�ʱ���¼���
	this->AppendAllTimeEvent();

	//	���δ������е�ʱ���¼���
	AutoLock(	this->lock_TimeEvents	);
			
	std::map<	DWORD,	std::set< EventProcess >	>::iterator	it	=	m_TimeEvents.begin();

	while(	true)
	{
		//	���ѭ���������������
		if(	it	==	m_TimeEvents.end()	)
		{
			break;
		}
		DWORD	dwTimeRecord	=	it->first;
		//	���ѭ������ǰʱ�䣬��������
		if(	it	->	first	>	dwTime	)
		{
			break;
		};

		//	����ʱ���¼���
		std::set< EventProcess >::iterator	it_Events	=	it->second.begin();

		while(	it_Events	!=	it->second.end()	)
		{
			it_Events->Run(	dwTime	);
			++	it_Events;
		};

		//
		++	it;
	};

	//	�����Ч��ʱ���¼���
	m_TimeEvents.erase(	m_TimeEvents.begin(),	it	);
};
