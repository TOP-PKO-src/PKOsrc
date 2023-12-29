#pragma once
#include <stack>
#include <assert.h>

//
template<class T, int Count>
class	ObjectPool
{
	T		ma_Objects[Count];			//	����ռ䡣
	bool	ma_bAllocSign[Count];		//	�Ƿ񱻷���ı�ǡ�
	WORD	ma_FreeObjectIds[Count];	//	���ж�����С�
	WORD	ma_FreeObjectCount;			//	���ж���������
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

	//	��ЧID��
	WORD		InvalidId(){	return	0xffff;	}

	//	����һ��ID��
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
	bool	IsAlloc(	int	id	)	//	���ĳ��ID�Ƿ񱻷����ˡ�
	{
		return	ma_FreeObjectIds[id];
	};
	WORD	GetSize(){	return	Count;	};
};


/*
	����أ����ڹ̶�����Ŀ��ٷ��䡣
	*/// MEMPOOL.H 

#ifndef __MEMPOOL_H__
#define __MEMPOOL_H__

#include <math.h>

#define DEF_CHECKNODE					// �޸� Ǯ�� ��ȯ�� ���ÿ� �Ǵ� ��찡 �ִ°� ���Ƽ� ������


/**
 * @author		uofmn
 * @version		1.0
 * @date		2004/04/01
 * @brief		Win32 Heap�� ����Ͽ� TYPE���� �޸� Ǯ�� �����Ѵ�.  
 *				HeapCreate() �Լ��� ����Ͽ� Ǯ�� ���� ���� �ϵ��� �Ѵ�.
 *				�� �Լ��� 0x7FFF8 ������ ���� ũ�� �Ҵ��� ���� ���������� 
 *				VirtualAlloc() �Լ��� ����Ѵ�.
 *				MULTIPLE�� �޸� ���� MAX�� �����ϱ� ���� ���� ����̴�.
 */
template <class TYPE, int MULTIPLE = 10>
class CMemPool
{
private:

	// �޸� �� ��� 
	typedef struct _Node
	{
		TYPE	Block;									// �޸� �� 	
#ifdef DEF_CHECKNODE
		bool	bIsUse;									// �޸� ��� ����
#endif 
		_Node*	pNext;									// ���� ������

		_Node()
		{
			pNext = NULL;
			bIsUsed = false ;
		}
	}NODE, *LPNODE;

	HANDLE				m_hHeap;						///< �� �ڵ�
	ULONG				m_ulElementBlockSize;			///< �� ������
	ULONG				m_ulNumBlocks;					///< �Ҵ��� �� ����
	
	LPNODE				m_pBlockList;					///< �� ����Ʈ ��� 
	LPNODE				m_pBlockEnd;					///< �� ����Ʈ ����

	long				m_lNumTotal;					///< ���� �Ҵ�� �޸� �� ��
	long				m_lNumInUse;					///< ������� �� ��
	long				m_lNumInQueue;					///< ť�� �ִ� �� �� 
	
	Lock				m_cs;							///< ����ȭ ��ü 

public:

	/**
	 * �޸� Ǯ�� �����Ѵ�.
	 * @param ulNumBlocks	�Ҵ��� �� ��
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

		//element ����� ������ ������ ���� Ŭ ���
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
				// �޸� ��� ���� 
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
	 * ���� �����ϰ� ���� �Ҹ��Ѵ�
	 */
	~CMemPool()
	{
		Destroy();

		if(NULL != m_hHeap) 
			HeapDestroy(m_hHeap);
	}

	/**
	 * Ǯ�� �Ҵ�� ���� ������
	 * @return �� �ּ�
	 */
	TYPE* Alloc()
	{
		// ���� �Ҵ�� �� �� ���� MAX(���� �Ҵ� �䱸�� ���� MULTIPLE ���)���� ũ�ų� ������ NULL�� �����Ѵ�
		// DEF_PROTECTSERVERDOWN
		if((ULONG)m_lNumInUse < m_ulNumBlocks * MULTIPLE)
		{
			LPNODE pBlock = NULL;
			
			AutoLock	lock(	m_cs	);

			//���� ������ 
		// DEF_PROTECTSERVERDOWN
		//	if(NULL != m_pBlockEnd)
			if(NULL != m_pBlockList)
			{
				pBlock			= m_pBlockList;
				m_pBlockList	= pBlock->pNext;
				
				//pBlock->pNext	= NULL;

				if (pBlock == m_pBlockEnd)
				{
					//������ ����� ���
					// DEF_PROTECTSERVERDOWN
					m_pBlockList = m_pBlockEnd = NULL;
				}

				++m_lNumInUse;
				--m_lNumInQueue;
			}
			else // ���� ������ ���� �Ҵ��Ѵ� 
			{
				pBlock = (LPNODE)HeapAlloc(m_hHeap, HEAP_ZERO_MEMORY, m_ulElementBlockSize);

				++m_lNumInUse;
				++m_lNumTotal;
			}
			
#ifdef DEF_CHECKNODE
			// �޸𸮸� ����� 
			pBlock->bIsUse = true ;
#endif	


			return reinterpret_cast<TYPE*>(pBlock);
		}

		return NULL;
	}

	/**
	 * ���� Ǯ�� ��ȯ�Ѵ�
	 * @param	pBlock	�� �ּ�
	 * @return	��������
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
			// �������� ��ȯ
			if (pNode->bIsUse == true)
			{
				pNode->bIsUse = false ;
			}
			else
			{
				// �̹� ��ȯ�� �޸𸮰� �ٽ� ��ȯ�Ǵ� ��� 
				return false ;
			}
			
#endif	
			
			if (NULL == m_pBlockList)
			{
				//ť�� ��� �ִ�
				m_pBlockList = m_pBlockEnd = pNode;
				if(!m_pBlockEnd)
				{
					int i = 0 ;
				}
			}
			else
			{
				//��忡 �߰�
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
	 * Ǯ�� ���� �Ҵ��ϱ�
	 * @param	num		�Ҵ��� �� ����
	 * @return	��������
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
				// �޸𸮸� ����� 
				pBlock->bIsUse = false ;
#endif	
				++m_lNumInQueue;
				++m_lNumTotal;
			}	
		}
		
		return true;
	}

	/**
	 * �Ҵ�� ���� �����ϱ�
	 * @param	num		������ �� ���� 
	 * @return	��������
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
	 * �� �Ҵ�� �� ���� ������
	 * @return �� �Ҵ�� �� ����
	 */
	long GetCount()
	{
		return m_lNumTotal;
	}

	/**
	 * �� ������� �� ���� ������
	 * @return �� ������� �� ����
	 */
	long GetNumInUse()
	{
		return m_lNumInUse;
	}

	/**
	 * ť�� ���� �ִ� �� ���� ������
	 * @return ť�� ���� �ִ� �� ����
	 */
	long GetNumInQueue()
	{
		return m_lNumInQueue;
	}

protected:

	/**
	 * ���� �Ҵ�� �� ��θ� �����ϱ�
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



















