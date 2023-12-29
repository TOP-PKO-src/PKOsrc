//===================================================================
/** \file  
 *  Filename: d3dglobal.h
 *  Desc:     ������D3D�����Ҫ�Ĵ󲿷ֵ�ͷ�ļ��Ϳ��ļ�.
 *            ��������һЩ���õĹ���ģ�庯��
 *  His:      ���� @ 1/12 2003 16:10
 */
//===================================================================
#ifndef _D3DGLOBAL_H
#define _D3DGLOBAL_H


#include "DXUtil.h"
//#include "d3dutil.h"
#include "DSUtil.h"

#pragma comment (lib, "ole32.lib")
#pragma comment (lib, "uuid.lib")
//#pragma comment (lib, "winmm.lib")
#pragma comment (lib, "dxguid.lib")

#pragma comment (lib, "dinput8.lib")
#pragma comment (lib, "dsound.lib")
#pragma comment (lib, "strmiids.lib")

#pragma comment (lib, "d3d8.lib")
#pragma comment (lib, "d3dx8.lib")
#pragma comment (lib, "DxErr8.lib")
#pragma comment (lib, "D3dxof.lib")


#include <d3dx8tex.h>
#include <d3dx8.h>
#include <dxerr8.h>

#include <dmusici.h>

//#include <dshow.h>

#include <dinput.h>

#include <D3DX8.h>
//stl
# include <string>
# include <list>
# include <map>
# include <vector>
#include <algorithm>
//--------------------------------------------------------------------------------------
//���õ�struct or type.
//--------------------------------------------------------------------------------------
typedef std::string            s_string;
typedef std::list<s_string>     LIST_string;
typedef std::vector<s_string>   VEC_string;
typedef std::list<int>          LIST_int;
typedef std::list<DWORD>        LIST_dword;
typedef std::vector<DWORD>      VEC_dword;
typedef std::vector<WORD>       VEC_word;
typedef std::vector<int>        VEC_int;
typedef std::vector<bool>       VEC_bool;
typedef std::vector<DWORD>      VEC_ptr;
typedef std::vector<BYTE>       VEC_BYTE;
typedef std::vector<float>      VEC_float;

#define GetRValue(rgb)      ((BYTE)(rgb))
#define GetGValue(rgb)      ((BYTE)(((WORD)(rgb)) >> 8))
#define GetBValue(rgb)      ((BYTE)((rgb)>>16))


template<class _Ty>	class S_LIST
{
	std::vector<_Ty>	m_VECPath;
	int m_nCount;
	int m_nPos;
	int m_nInit;
public:
	S_LIST()
	{
		m_VECPath.clear();
		m_nCount = -1;
		m_nPos = -1;
	}
	void resize(WORD _nSize = 200/*�����������Ǹ�ż��*/)
	{
		m_VECPath.resize(_nSize);
		m_nInit = _nSize/2;
		clear();
	}
	void clear()
	{
		m_nCount = m_nInit;
		m_nPos = m_nInit;
	}
	void push_back(_Ty &_BaseMesh)
	{
		m_VECPath[m_nCount] = _BaseMesh;
		++m_nCount;
	}
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
	void push_front(_Ty &_BaseMesh)
	{
		--m_nPos;
		m_VECPath[m_nPos] = _BaseMesh;
	}
	bool	empty()
	{
		return m_nPos == m_nCount ? true : false;
	}
	_Ty* front()
	{
		if(!empty())
			return &m_VECPath[m_nPos];
		return NULL;
	}
};



///////////////��������///////////////////
const float G_fPI		= 3.141592f;			// 180 ��
const float G_fPI2		= 6.283185f;			// 360 ��
const float G_fDEG90	= 1.570796f;				// 90 ��
const float G_fDEG270	= -1.570796f;				// 270 ��
const float G_fDEG45	= 0.7853981f;			// 45 ��
const float G_fDEG5		= 0.0872664f;			// 5 ��
const float G_fDEG10	= 0.1745329f;			// 10 ��
const float G_fDEG20	= 0.3490658f;			// 20 �� 
const float G_fDEG30	= 0.5235987f;			// 30 ��
const float G_fDEG60	= 1.047197f;				// 60 ��
const float G_fDEG120	= 2.094395f;				// 120 ��

const float G_fDEG40	= 0.6981317f;			// 40 ��
const float G_fDEG80	= 1.396263f;			// 80 ��
const float G_fDEG140	= 2.443460f;			// 140 ��
const float G_fDEG160	= 2.792526f;			// 160 ��

const float G_fSQRT2	= 1.414213f;			// ��2
const float G_fSQRT_2	= 0.7071068f;			// 1 / SQRT2
const float G_fSQRT3	= 1.732050f;			// ��3

const float G_fDEG2RAD	= 0.01745329f;			// �ǶȻ���������
const float G_fRAD2DEG	= 57.29577f;			// ���Ȼ��Ƕ�����

//ģ�庯��
/** \brief
 * Desc: ����߶����ɺ���
 * \param  _fx   x����.
 * \param  _fy   y����.
 * \return  int   ����zֵ(���θ߶�).
*/
template <typename T>
inline T HeightField( T _fx, T _fy )
{
    return 9*(cosf(_fx/20+0.2f)*cosf(_fy/15-0.2f)+1.0f);
} 
/*
 * Desc: ��ʼ�������������
*/
inline void Randomize()
{
	srand(GetTickCount());
}
/*
 * Desc: ����һ��С��_ix�������
*/
inline int Random(int _ix)
{
	if(_ix == 0)return 0;
	return rand() % _ix;
}
/*
 * Desc: ����һ��_imin,_imax֮��������
*/
inline int Random(int _imin, int _imax)
{
	return _imin + (rand() % (_imax - _imin));
}
/*
 * Desc:  �ǶȻ�����
*/
inline float DegToRad(float _x)		
{
	return _x * G_fDEG2RAD;
}
/*
 * Desc:  ���Ȼ��Ƕ�
*/
inline float RadToDeg(float _x)	
{
	return _x * G_fRAD2DEG;
}
/*
 * Desc:  �����򷵻�true
*/
template <typename T>		
inline bool IsOdd(const T& _x)
{
	return static_cast<bool>(_x & 1);
}
/*
 * Desc:  ż���򷵻�true
*/
template <typename T>		
inline bool IsEven(const T& _x)
{
	return !IsOdd(_x);
}
/*
 * Desc:  ����2D����
*/
template <typename T>		
inline T Dist(T _x1, T _y1, T _x2, T _y2)
{
	return sqrt((_x1 - _x2) * (_x1 - _x2) + (_y1 - _y2) * (_y1 - _y2));
}
/*
 * Desc:  ����3D����
*/
template <typename T>		
inline T Dist(T _x1, T _y1, T _z1, T _x2, T _y2, T _z2)
{
	return sqrt((_x1 - _x2) * (_x1 - _x2) + (_y1 - _y2) * (_y1 - _y2) + (_z1 - _z2) * (_z1 - _z2));
}
/*
 * Desc:  ����3D����
*/
inline void Direct(D3DXVECTOR3 *_psOut,D3DXVECTOR3 *_psSrc, D3DXVECTOR3 *_psDest)
{
	_psOut->x=_psDest->x - _psSrc->x;
	_psOut->y=_psDest->y - _psSrc->y;
	_psOut->z=_psDest->z - _psSrc->z;
}
/*
 * Desc:  ���ݾ���任����λ��
*/
inline void TransVector(D3DXVECTOR3 *_psOut,D3DXVECTOR3 *_psSrc, D3DXMATRIX *_psTransMatrix)
{
	_psOut->x=_psSrc->x*_psTransMatrix->_11+_psSrc->y*_psTransMatrix->_12+ \
		_psSrc->z*_psTransMatrix->_13+1*_psTransMatrix->_41;
	_psOut->y=_psSrc->x*_psTransMatrix->_21+_psSrc->y*_psTransMatrix->_22+ \
		_psSrc->z*_psTransMatrix->_23+1*_psTransMatrix->_42;
	_psOut->z=_psSrc->x*_psTransMatrix->_31+_psSrc->y*_psTransMatrix->_32+ \
		_psSrc->z*_psTransMatrix->_33+1*_psTransMatrix->_43;
}
/*
 * Desc:  ��_spNormal�����ƶ�_spPos��λ��
 *        _spNormalҪ����һ��
*/
inline void MoveNormal(D3DXVECTOR3 *_psPos, D3DXVECTOR3 *_psNormal,float _fdist)
{
    D3DXVECTOR3 t_sNor;
	D3DXVECTOR3 t_sTem;
	t_sNor = *_psNormal * _fdist;
	t_sTem = *_psPos;
	D3DXVec3Add(_psPos,&t_sTem,&t_sNor);
}
inline bool   fEqual(  float _1, float _2  )
{
	return( fabs( _1 - _2 ) < 0.000001f )?true:false;
}

inline bool	  Ver3Equal(D3DXVECTOR3 &_verSrc1, D3DXVECTOR3 &_verSrc2)
{
	if(fEqual(  _verSrc1.x, _verSrc2.x  ))
	{
		if(fEqual(  _verSrc1.y, _verSrc2.y  ))
	    {
	        if(fEqual(  _verSrc1.z, _verSrc2.z  ))
	       {
			   return true;
	       }

	    }

	}
	return false;
}
#endif///D3DGlobal.h