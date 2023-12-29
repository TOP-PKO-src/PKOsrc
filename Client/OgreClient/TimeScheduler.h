#pragma once
#include <map>
#include <set>
#include <list>

//
class	AutoProcess
{
	//	�Զ�������	
public:
	
	//	��ǰ��Ϣ��˽�ô�������
	int	(*m_pFnLocalProcess)(	AutoProcess*	pProcess,	DWORD	);
	//	����������Ϣ��
	int	Process(	DWORD	dwTime	)
	{
		if(	m_pFnLocalProcess	)
			return	m_pFnLocalProcess(	this,	dwTime	);

		assert(	0 );
		return	0;
	};


};

//	�¼���������
class	EventProcess
{
private:
	DWORD		m_id;											//	��ˮ�š�

public:
	DWORD	GetID()	const	{	return	m_id;	};

private:
	AutoProcess*	m_pMsg;											//	Ҫ�������Ϣ��
	bool			m_bEnable;										//	������ó�FALSE����������FRAME��������¼���

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

	//	������Ϣ��
	bool	Run(	DWORD	time	)
	{
		return	0 == m_pMsg->Process(	time	);
	};
	
	//	���¼����ó���Ч״̬��
	void	Disable()
	{
		m_bEnable	=	false;
	};
	//	����¼��Ƿ���Ч��
	bool	IsEnable()
	{
		return	m_bEnable;
	};

};

//	ʱ���¼���������
class	TimeScheduler
{
public:
	TimeScheduler(void);
	~TimeScheduler(void);

private:	//	ʱ���¼���

	//	���е�ʱ���¼���
	std::map<	DWORD,	std::set< EventProcess >	>	m_TimeEvents;
	Lock												lock_TimeEvents;

private:	//	�Ǽ�ʱ���¼���

	//	�ʼĵǼ���Ϣ����
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

	//	�ȴ��Ǽǵ�ʱ���¼���
	std::list<	PostTimeEventRegister	>				pool_RegisterTimeEvent;
	Lock												lock_RegisterTimeEventLock;

	//	��ʱ���¼����ӵ�ʱ������С�
	void	AppendAllTimeEvent();

public:

	//	����ʱ����Ϣ,	����һ��ID�ţ��Ա�Ѱ��������Ϣ��
	FWORD	AppendTimeEvent(	
					DWORD		time,								//	Ԥ�ƴ�����¼���ʱ�䡣
					AutoProcess*	pParam								//	�¼�������
					);

	//	ȡ��ʱ���¼���
	void	CancelTimeEvent(	LONGLONG	id	);

	//	�������е�ʱ���¼���
	void	RunTimeEvents(	DWORD	dwTime	);

};
