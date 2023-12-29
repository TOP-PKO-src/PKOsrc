//===================================================================
/** \file  
 *  Filename: MeshPlane.h
 *  Desc:     ��ʾһ����������
 *  His:      ���� @ 6/12 2003 16:18
 */
//===================================================================

#pragma once

//#include <vector>
//#include <algorithm>

#include "coordinates.h"


//!��Ԫ���С
#define  BASESIZE   1.0f
//!ÿһ�ߵ�Ԫ���1/2����
#define  BASECOUNT  8

//!������Ⱦѡ��
enum  RENDER_OPTION{ SOLID = 0, WRITEFRAME, POINTSD};

//! �Զ��嶥��ṹ ========================================================
#define O_PLANE_FVF (D3DFVF_XYZ|D3DFVF_DIFFUSE/*|D3DFVF_TEX1*/)

typedef struct {
    float m_fx, m_fy, m_fz;
	DWORD m_dwDiffuse;
    //float m_fu, m_fv;
} PLANE_VERTEX;

//==================================================================
//! ����һ����Ԫ��
typedef struct basemesh{
	//! 0,2�������һ����Ԫ��.�߶�ֵ����.
	D3DXVECTOR3  m_sVer2d[4];
	BOOL         m_bIsUsed;
	float        m_fHeight;
	BOOL operator == ( CONST basemesh& tes )
	{
		if((m_sVer2d[0] == tes.m_sVer2d[0])&&(m_sVer2d[2] == tes.m_sVer2d[2]))
			return TRUE;
		return FALSE;
	}
	void operator = ( CONST basemesh& tes )
	{
		m_sVer2d[0] = tes.m_sVer2d[0];
		m_sVer2d[1] = tes.m_sVer2d[1];
		m_sVer2d[2] = tes.m_sVer2d[2];
		m_sVer2d[3] = tes.m_sVer2d[3];
		m_bIsUsed = tes.m_bIsUsed;
		m_fHeight = tes.m_fHeight;
	}

	//!�ж�һ���������Ƿ���һ��2D�ĵ�Ԫ����
	bool PointInMesh(D3DXVECTOR3 *_sPoint)
	{
		for(int n = 0; n < 3; n++)
		{
			if((_sPoint[n].x > m_sVer2d[0].x) && (_sPoint[n].z > m_sVer2d[0].z)
				&& (_sPoint[n].x < m_sVer2d[2].x) && (_sPoint[n].z < m_sVer2d[2].z))
			{
				return true;
			 }
		}
		return false;
	}
	//!�ж�һ�������Ƿ񴩹�����
	bool RayInMesh(D3DXVECTOR3 *vRayPos, D3DXVECTOR3 *vRayDir)
	{
		if(D3DXIntersectTri(&m_sVer2d[0],&m_sVer2d[1],&m_sVer2d[2],
			vRayPos, vRayDir,NULL,NULL,NULL) || 
			D3DXIntersectTri(&m_sVer2d[0],&m_sVer2d[2],&m_sVer2d[3],
			vRayPos, vRayDir,NULL,NULL,NULL))
			return true;
		return false;
	}

	void FindHeight(D3DXVECTOR3 *vVer)
	{
		//!���������εķ�������ʼ��һ��D3DXPLANE
		D3DXVECTOR3 t_vNormal;
		D3DXVec3Cross(&t_vNormal,&(vVer[1] - vVer[0]),&(vVer[2] - vVer[0]));
		D3DXVec3Normalize(&t_vNormal,&t_vNormal);
		D3DXPLANE pOut;
		D3DXPlaneFromPointNormal(&pOut, &vVer[0],&t_vNormal);
		D3DXPlaneNormalize(&pOut,&pOut);
		
		D3DXVECTOR3 ver;
		for(int n = 0; n < 4; n++)
		{
			if(D3DXPlaneIntersectLine(&ver, &pOut,&m_sVer2d[n],&D3DXVECTOR3(0,1,0)))
			{
				if(ver.y > m_fHeight)
					m_fHeight = ver.y;
			}
		}
	}
	void FindHeightwithVer(D3DXVECTOR3 *vVer)
	{
		if(m_fHeight < vVer->y)
			m_fHeight = vVer->y;
	}
	void FindHeightwithFloat(float _f)
	{
		if(m_fHeight < _f)
			m_fHeight = _f;
	}
}BASE_MESH;
//////////////

//===================================================================
/** \class  
 *  classname: CMeshPlane
 *  Desc:     ������ʾһ����������
 *         
 *  ������
 *            bool Create( LPDIRECT3DDEVICE8	_pDev);
 *            param: _pDev
					3d�豸
 *            desc:  ʹ���㷨�������񶥵㣬�ɹ�����true;
 * */
//===============================
class CMeshPlane
{
public:
	CMeshPlane(void);
	~CMeshPlane(void);

public:
	//!��������
	bool Create( LPDIRECT3DDEVICE8	_pDev);

	//!�õ���Ⱦѡ��
	RENDER_OPTION GetRenderOption(){return m_eOption;}
	//!������Ⱦѡ��
	void SetRenderOption(RENDER_OPTION _eOption){ m_eOption = _eOption;}

	//!��Ⱦ
	void Render();


	//!�ͷ�
	void Release();

	//!�õ���������
	std::vector<BASE_MESH> *GetMesh(){return &m_VECMeshs;}


	//!���ø���ʹ�÷�
	void SetMesh(BASE_MESH* _pMesh);
	void SetMeshTrue(BASE_MESH* _pMesh);
	void SetMeshAllFalse();
private:
	//!3D�豸
	LPDIRECT3DDEVICE8	m_pDev;

	LPDIRECT3DVERTEXBUFFER8 m_pVB;

	//!��ʱ��������
	PLANE_VERTEX               **m_pVECvers;
	std::vector<PLANE_VERTEX>     m_VECVers;

	//!���������и���
	std::vector<BASE_MESH>     m_VECMeshs;

	//!ÿһ�е�����
	DWORD  m_dwLineCount;
	//!ȫ���Ķ�������
	DWORD  m_dwAllCount;
    //!��Ⱦѡ��
	RENDER_OPTION  m_eOption;

	//!��ʾ��������
	CCoordinates        m_cCoord;
};
