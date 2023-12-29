#pragma once
#include <stack>
#include <assert.h>

//
template<class T, int Count>
class	ObjectPool
{
	T		ma_Objects[Count];			//	뚤蹶왕쇌。
	bool	ma_bAllocSign[Count];		//	角뤠굳롸토돨깃션。
	WORD	ma_FreeObjectIds[Count];	//	왕國뚤蹶뚠죗。
	WORD	ma_FreeObjectCount;			//	왕國뚤蹶悧鑒。
public:
	ObjectPool()
	{
		assert( Count > 0 );

		for( int index = 0; index < Count; index ++ )
		{
			ma_FreeObjectIds[index] = Count - index - 1;
			ma_bAllocSign[index]	=	false;
		};

		ma_FreeObjectCount = Count;
	}

	//	轟槻ID。
	WORD		InvalidId(){	return	0xffff;	}

	//	롸토寧몸ID。
	WORD		Alloc()
	{
		if(	!ma_FreeObjectCount	)
		{
			return	InvalidId();
		}

		ma_bAllocSign[ ma_FreeObjectCount - 1] = true;
		return	ma_FreeObjectIds[ -- ma_FreeObjectCount ];
	};
	void	Free(	WORD	id	)
	{
		assert( ma_FreeObjectCount < Count );
		ma_bAllocSign[ ma_FreeObjectCount ]	=	false;
		ma_FreeObjectIds[ma_FreeObjectCount]	=	id;
		ma_FreeObjectCount ++;
	};
	T&		Get(	int	id	)
	{
		assert( id < Count );

		return	ma_Objects[ id ];
	};
	T*		GetPtr(	int	id	)
	{
		assert(	id	<	Count	);

		if(	ma_bAllocSign[id] )
		{
			return	&ma_Objects[id];
		}

		return	NULL;
	};
	int		GetFreeSize()
	{
		return	ma_FreeObjectCount;
	};
	int		GetAllocSize()
	{
		return	Count	-	GetFreeSize();
	};
	bool	IsAlloc(	int	id	)	//	쇱꿴캐몸ID角뤠굳롸토죄。
	{
		return	ma_FreeObjectIds[id];
	};
	WORD	GetSize(){	return	Count;	};
};


/*
	뚤蹶넥，痰黨미땍鑒莉돨우醵롸토。
	*/// MEMPOOL.H 

#ifndef __MEMPOOL_H__
#define __MEMPOOL_H__

#include <math.h>

#define DEF_CHECKNODE					// 메모리 풀의 반환이 동시에 되는 경우가 있는거 같아서 수정함


/**
 * @author		uofmn
 * @version		1.0
 * @date		2004/04/01
 * @brief		Win32 Heap을 사용하여 TYPE형의 메모리 풀을 생성한다.  
 *				HeapCreate() 함수를 사용하여 풀이 증가 가능 하도록 한다.
 *				이 함수는 0x7FFF8 사이즈 보다 크게 할당할 때는 내부적으로 
 *				VirtualAlloc() 함수를 사용한다.
 *				MULTIPLE은 메모리 블럭의 MAX를 제한하기 위해 쓰는 배수이다.
 */
template <class TYPE, int MULTIPLE = 10>
class CMemPool
{
private:

	// 메모리 블럭 노드 
	typedef struct _Node
	{
		TYPE	Block;									// 메모리 블럭 	
#ifdef DEF_CHECKNODE
		bool	bIsUse;									// 메모리 사용 여부
#endif 
		_Node*	pNext;									// 다음 포인터

		_Node()
		{
			pNext = NULL;
			bIsUsed = false ;
		}
	}NODE, *LPNODE;

	HANDLE				m_hHeap;						///< 힙 핸들
	ULONG				m_ulElementBlockSize;			///< 블럭 사이즈
	ULONG				m_ulNumBlocks;					///< 할당할 블럭 개수
	
	LPNODE				m_pBlockList;					///< 블럭 리스트 헤드 
	LPNODE				m_pBlockEnd;					///< 블럭 리스트 테일

	long				m_lNumTotal;					///< 현재 할당된 메모리 블럭 수
	long				m_lNumInUse;					///< 사용중인 블럭 수
	long				m_lNumInQueue;					///< 큐에 있는 블럭 수 
	
	Lock				m_cs;							///< 동기화 객체 

public:

	/**
	 * 메모리 풀을 생성한다.
	 * @param ulNumBlocks	할당할 블럭 수
	 */
	CMemPool(ULONG ulNumBlocks) 
	:	m_ulNumBlocks(ulNumBlocks),
		m_hHeap(NULL), 
		m_ulElementBlockSize(sizeof(NODE)), 
		m_lNumTotal(0),
		m_lNumInUse(0), 
		m_lNumInQueue(0), 
		m_pBlockList(NULL), 
		m_pBlockEnd(NULL)
	{
		SYSTEM_INFO sSysInfo;         
		GetSystemInfo(&sSysInfo);     

		DWORD dwDefaultPageSize = sSysInfo.dwPageSize;

		//element 사이즈가 페이지 사이즈 보다 클 경우
		if(m_ulElementBlockSize > dwDefaultPageSize)
		{ 
			ULONG num = (ULONG)ceil((double)((m_ulElementBlockSize - dwDefaultPageSize) * m_ulNumBlocks) / (double)dwDefaultPageSize);

			m_hHeap = HeapCreate(HEAP_ZERO_MEMORY, dwDefaultPageSize * (m_ulNumBlocks + num), 0);
		}
		else
		{
			//FROM MSDN: 
			//0 means the heap is growable - Requests to allocate blocks larger than 0x7FFF8 bytes do not automatically fail; 
			//the system calls VirtualAlloc to obtain the memory needed for such large blocks. 
			m_hHeap = HeapCreate(HEAP_ZERO_MEMORY, m_ulElementBlockSize * m_ulNumBlocks, 0);
		}	
		
		for(ULONG i=0; i<m_ulNumBlocks; i++)
		{
			LPNODE pBlock = (LPNODE)HeapAlloc(m_hHeap, HEAP_ZERO_MEMORY, m_ulElementBlockSize);

			if(NULL != pBlock)
			{
#ifdef DEF_CHECKNODE
				// 메모리 사용 않함 
				pBlock->bIsUse = false ;
#endif	
				if(NULL == m_pBlockList)
				{
					m_pBlockList = m_pBlockEnd = pBlock;
				}
				else
				{
					m_pBlockEnd->pNext	= pBlock;
					m_pBlockEnd			= pBlock;
				}

				++m_lNumInQueue;
				++m_lNumTotal;
			}
		}
	}

	/**
	 * 블럭을 해제하고 힙을 소멸한다
	 */
	~CMemPool()
	{
		Destroy();

		if(NULL != m_hHeap) 
			HeapDestroy(m_hHeap);
	}

	/**
	 * 풀에 할당된 블럭을 얻어오기
	 * @return 블럭 주소
	 */
	TYPE* Alloc()
	{
		// 현재 할당된 총 블럭 수가 MAX(최초 할당 요구한 수의 MULTIPLE 배수)보다 크거나 같으면 NULL를 리턴한다
		// DEF_PROTECTSERVERDOWN
		if((ULONG)m_lNumInUse < m_ulNumBlocks * MULTIPLE)
		{
			LPNODE pBlock = NULL;
			
			AutoLock	lock(	m_cs	);

			//블럭이 있으면 
		// DEF_PROTECTSERVERDOWN
		//	if(NULL != m_pBlockEnd)
			if(NULL != m_pBlockList)
			{
				pBlock			= m_pBlockList;
				m_pBlockList	= pBlock->pNext;
				
				//pBlock->pNext	= NULL;

				if (pBlock == m_pBlockEnd)
				{
					//마지막 노드일 경우
					// DEF_PROTECTSERVERDOWN
					m_pBlockList = m_pBlockEnd = NULL;
				}

				++m_lNumInUse;
				--m_lNumInQueue;
			}
			else // 블럭이 없으면 새로 할당한다 
			{
				pBlock = (LPNODE)HeapAlloc(m_hHeap, HEAP_ZERO_MEMORY, m_ulElementBlockSize);

				++m_lNumInUse;
				++m_lNumTotal;
			}
			
#ifdef DEF_CHECKNODE
			// 메모리를 사용함 
			pBlock->bIsUse = true ;
#endif	


			return reinterpret_cast<TYPE*>(pBlock);
		}

		return NULL;
	}

	/**
	 * 블럭을 풀에 반환한다
	 * @param	pBlock	블럭 주소
	 * @return	성공여부
	 */
	bool Free(TYPE* pBlock)
	{
		if(pBlock)
		{
			AutoLock	lock(	m_cs	);

			LPNODE pNode = reinterpret_cast<LPNODE>(pBlock);
			//pNode->pNext = m_pBlockList;
			//m_pBlockList = pNode;

			
#ifdef DEF_CHECKNODE
			// 정상적인 반환
			if (pNode->bIsUse == true)
			{
				pNode->bIsUse = false ;
			}
			else
			{
				// 이미 반환된 메모리가 다시 반환되는 경우 
				return false ;
			}
			
#endif	
			
			if (NULL == m_pBlockList)
			{
				//큐가 비어 있다
				m_pBlockList = m_pBlockEnd = pNode;
				if(!m_pBlockEnd)
				{
					int i = 0 ;
				}
			}
			else
			{
				//헤드에 추가
				pNode->pNext		= m_pBlockList;
				m_pBlockList		= pNode;
			}



			++m_lNumInQueue;
			--m_lNumInUse;

			return true;
		}

		return false;
	}
	
	/**
	 * 풀에 블럭을 할당하기
	 * @param	num		할당할 블럭 개수
	 * @return	성공여부
	 */
	bool Insert(ULONG num)
	{
		AutoLock	lock(	m_cs	);

		for(ULONG i =0; i<num; i++)
		{
			if((ULONG)m_lNumTotal >= m_ulNumBlocks * MULTIPLE)
				break;

			LPNODE pBlock = (LPNODE)HeapAlloc(m_hHeap, HEAP_ZERO_MEMORY, m_ulElementBlockSize);

			if(NULL != pBlock)
			{
				if(NULL == m_pBlockList)
				{
					m_pBlockList = m_pBlockEnd = pBlock;
				}
				else
				{
					m_pBlockEnd->pNext	= pBlock;
					m_pBlockEnd			= pBlock;
				}
#ifdef DEF_CHECKNODE
				// 메모리를 사용함 
				pBlock->bIsUse = false ;
#endif	
				++m_lNumInQueue;
				++m_lNumTotal;
			}	
		}
		
		return true;
	}

	/**
	 * 할당된 블럭을 해제하기
	 * @param	num		해제할 블럭 개수 
	 * @return	성공여부
	 */
	void Delete(ULONG num)
	{
		AutoLock	lock(	m_cs	);
		
		for(ULONG i=0; i<num; i++)
		{
			if(NULL != m_pBlockList)
			{
				LPNODE pBlock = m_pBlockList;
				m_pBlockList  = pBlock->pNext;


				if(pBlock)
				{
					HeapFree(m_hHeap, 0, pBlock);
					--m_lNumInQueue;
					--m_lNumTotal;
				}

			}
		}
	}

	/**
	 * 총 할당된 블럭 개수 얻어오기
	 * @return 총 할당된 블럭 개수
	 */
	long GetCount()
	{
		return m_lNumTotal;
	}

	/**
	 * 총 사용중인 블럭 개수 얻어오기
	 * @return 총 사용중인 블럭 개수
	 */
	long GetNumInUse()
	{
		return m_lNumInUse;
	}

	/**
	 * 큐에 남아 있는 블럭 개수 얻어오기
	 * @return 큐에 남아 있는 블럭 개수
	 */
	long GetNumInQueue()
	{
		return m_lNumInQueue;
	}

protected:

	/**
	 * 힙에 할당된 블럭 모두를 해제하기
	 */
	void Destroy()
	{
		AutoLock	lock(	m_cs	);

		/*LPNODE pBlock = m_pBlockList;
		while(pBlock)
		{
			LPNODE pTmp = pBlock; 	
			pBlock = pBlock->pNext;
			if(HeapFree(m_hHeap, 0, pTmp))
			{
				--m_lNumTotal;
			}
		}*/
		for(long i=0; i<m_lNumInQueue; i++)
		{
			if(NULL != m_pBlockList)
			{
				LPNODE pBlock = m_pBlockList;
				m_pBlockList  = pBlock->pNext;

				if(pBlock)
				{
					HeapFree(m_hHeap, 0, pBlock);
					--m_lNumTotal;
				}
			}
		}
	}
};

#endif 



















