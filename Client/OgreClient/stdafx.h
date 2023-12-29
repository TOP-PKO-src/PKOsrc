// stdafx.h : include file for standard system include files,
// or project specific include files that are used frequently, but
// are changed infrequently
//

#pragma once


#define WIN32_LEAN_AND_MEAN		// Exclude rarely-used stuff from Windows headers
// Windows Header Files:
#include <windows.h>
// C RunTime Header Files
#include <stdlib.h>
#include <malloc.h>
#include <memory.h>
#include <tchar.h>

// TODO: reference additional headers your program requires here
#include <assert.h>

//
#include "../calua25/include/calua.h"
#include "i18n.h"

//
#include "netif.h"
#include "netcommand.h"

//	线程锁。
class	Lock
{
	CRITICAL_SECTION	m_sect;
	bool				m_bLock;

public:

	Lock(	bool	bLock	=	false	)
		:	m_bLock(	bLock	)
	{
		::InitializeCriticalSection(	&m_sect	);

		if(	m_bLock	)
			::EnterCriticalSection(	&m_sect	);
	};
	~Lock()
	{
		if(	m_bLock	)
			::LeaveCriticalSection(	&m_sect	);

		::DeleteCriticalSection(	&m_sect	);
	};

	void	enter()
	{
		assert(	!m_bLock	);
		EnterCriticalSection(	&m_sect	);
		m_bLock	=	true;
	};

	void	leave()
	{
		assert(	m_bLock	);
		LeaveCriticalSection(	&m_sect	);
		m_bLock	=	false;
	};

};

//	
class	AutoLock
{
	Lock&	m_lock;
public:
	AutoLock(	Lock&	lock	)
		:	m_lock(	lock	)
	{
		m_lock.enter();
	};
	~AutoLock(	)
	{
		m_lock.leave();
	};
};

//	四字。
typedef	struct
{
	DWORD	l,h;	//	l是低双字，H是高双字。
}FWORD;

//
inline	bool	operator<(	const	FWORD&	l,	const	FWORD&	r	)
{
	//
	if(	l.h < r.h )
		return	true;

	if(	l.h	==	r.h	)
		return	l.l	<	r.l;
	else
		return	false;
};

//
#define	CALL(x)	if(!x)	return	-1;

//	应用对象。
class	IAppObject
{
public:
	virtual	bool	Init()	=	0;
	virtual	void	Run()	=	0;
	virtual	void	Release()	=	0;
};

//
#define	T_B
#define	T_E

//
#ifdef	Log
#undef	Log
#define	Log	printf
#endif












