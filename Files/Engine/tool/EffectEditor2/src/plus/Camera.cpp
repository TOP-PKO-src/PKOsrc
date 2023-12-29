//===================================================================
/** \file  
 *  Filename: Camera.cpp
 *  Desc:     ʵ������ࡣ
 *  His:      ���� @ 6/12 2003 16:18
 */
//===================================================================

#include "StdAfx.h"
#include "../../proj/EffectEditer.h"

#include "camera.h"


/** \brief
 * ʹ�ø����ʼ��VIEW��PROJECT����
 *
 */
CCamera::CCamera(void)
{
	CD3DCamera::CD3DCamera();
	
	//SetFreeView();
}

CCamera::~CCamera(void)
{
}

/** \brief
 * ���ö���ͼ�� ��ԭ��������ͼ��λ�ñ�������
 *
 */
void CCamera::SetTopView()
{
	m_eViewType =  V_TOP;
	m_sOldPos = m_vEyePt;
	m_sOldLookat = m_vLookatPt;
	m_sOldUp = D3DXVECTOR3(0.0f,1.0f,0.0f);

    SetViewParams( D3DXVECTOR3(0.0f,100.0f,0.0f), D3DXVECTOR3(0.0f,0.0f,0.0f),
                   D3DXVECTOR3(0.0f,0.0f,1.0f) );
}

/** \brief
 * ����������ͼ�� ʹ��ԭ��������ͼ��λ��
 *
 */
void CCamera::SetFreeView()
{
	m_eViewType =  V_FREE;
    SetViewParams( m_sOldPos, m_sOldLookat, m_sOldUp );
}

/** \brief
 * ����������ͼ,������ƶ�������������λ��
 *
 */
void CCamera::SetOrgView()
{
	m_eViewType =  V_FREE;
    SetViewParams( D3DXVECTOR3(0.0f,0.0f,-10.0f), D3DXVECTOR3(0.0f,0.0f,0.0f),
                   D3DXVECTOR3(0.0f,1.0f,0.0f) );

}

/** \brief
 * ���շ���_sNormal�ƶ����_fDist�ľ���
 *
 */
void CCamera::MoveCamera(D3DXVECTOR3 &_sNormal, float _fDis)
{
    D3DXVECTOR3 Nor;
    D3DXVECTOR3 tmp;

	D3DXVECTOR3 t_eyeat = m_vEyePt;
	D3DXVECTOR3 t_lookat = m_vLookatPt;

	Nor = _sNormal * _fDis;
	tmp = t_eyeat;
	D3DXVec3Add(&t_eyeat,&tmp,&Nor);
	tmp = t_lookat;
	D3DXVec3Add(&t_lookat,&tmp,&Nor);

	if(m_eViewType ==  V_TOP)
		SetViewParams(t_eyeat,t_lookat,D3DXVECTOR3(0.0f,0.0f,1.0f));
	else
		SetViewParams(t_eyeat,t_lookat,D3DXVECTOR3(0.0f,0.0f,1.0f));
}

/** \brief
 * Χ�Ƶ�Point��ĳһ����aixs��תangle�ĽǶȣ��õ���ת����

 * �㷨������
 *     �ȵõ�ƽ�ƾ���ƽ�Ƶ�-Point->x, -Point->y, -Point->z��
 *     Ȼ��õ���ת����Χ����aixs��תangle�ĽǶ�,
 *     ����������������������ƽ�Ƶ�Point->x, Point->y, Point->z�ľ����ٴ�������
 *     ��������ء�
 *
 */
D3DXMATRIX * CCamera::GetMatrixRotaPoint(D3DXMATRIX *pout,D3DXVECTOR3 *Point,\
						 D3DXVECTOR3 *aixs,float angle)
{
	D3DXMATRIX r, r2;
	D3DXMATRIX r1 = D3DXMATRIX(1, 0, 0, 0,
                               0, 1, 0, 0,
                               0, 0, 1, 0,
                               -Point->x, -Point->y, -Point->z, 1);
	D3DXMatrixRotationAxis(&r2,aixs,angle);
	r = r1 * r2;
    r1 = D3DXMATRIX(1, 0, 0, 0,
                    0, 1, 0, 0,
                    0, 0, 1, 0,
                    Point->x, Point->y, Point->z, 1);
	r = r * r1;
	*pout = r;
	return pout;
}

/** \brief
 * ����cross����Ҳ�����۾������ҷ����ƶ����
 *
 */
void CCamera::MoveCameraLeftRight(float _fDis)
{
	//MoveCamera(m_vCross, _fDis);
	D3DXVECTOR3 Nor = m_vCross;
	Nor.z = 0;
	D3DXVECTOR3 tmp;

	D3DXVECTOR3 t_eyeat = m_vEyePt;
	D3DXVECTOR3 t_lookat = m_vLookatPt;

	Nor = Nor * _fDis;
	tmp = t_eyeat;
	D3DXVec3Add(&t_eyeat,&tmp,&Nor);

	tmp = t_lookat;
	D3DXVec3Add(&t_lookat,&tmp,&Nor);
	t_lookat.z = 0;

	if(m_eViewType ==  V_TOP)
		SetViewParams(t_eyeat,t_lookat,D3DXVECTOR3(0.0f,0.0f,1.0f));
	else
		SetViewParams(t_eyeat,t_lookat,D3DXVECTOR3(0.0f,0.0f,1.0f));
}

/** \brief
 * ����ͷ�������ƶ����
 *
 */
void CCamera::MoveCameraUpDown(float _fDis)
{
	D3DXVECTOR3 Nor = m_vView;
	Nor.z = 0;
	D3DXVECTOR3 tmp;

	D3DXVECTOR3 t_eyeat = m_vEyePt;
	D3DXVECTOR3 t_lookat = m_vLookatPt;

	Nor = Nor * _fDis;
	tmp = t_eyeat;
	D3DXVec3Add(&t_eyeat,&tmp,&Nor);

	tmp = t_lookat;
	D3DXVec3Add(&t_lookat,&tmp,&Nor);
	t_lookat.z = 0;

	if(m_eViewType ==  V_TOP)
		SetViewParams(t_eyeat,t_lookat,D3DXVECTOR3(0.0f,0.0f,1.0f));
	else
		SetViewParams(t_eyeat,t_lookat,D3DXVECTOR3(0.0f,0.0f,1.0f));
}

/** \brief
 * �����۾����ķ����ƶ����(ǰ���ƶ�)
 *
 */
void CCamera::MoveCameraForwardBack(float _fDis)
{
	//MoveCamera(m_vView, _fDis);
	D3DXVECTOR3 Nor;
	D3DXVECTOR3 tmp;

	D3DXVECTOR3 t_eyeat = m_vEyePt;
	D3DXVECTOR3 t_lookat = m_vLookatPt;

	Nor = m_vView * _fDis;
	tmp = t_eyeat;
	D3DXVec3Add(&t_eyeat,&tmp,&Nor);

	if(m_eViewType ==  V_TOP)
		SetViewParams(t_eyeat,t_lookat,D3DXVECTOR3(0.0f,0.0f,1.0f));
	else
		SetViewParams(t_eyeat,t_lookat,D3DXVECTOR3(0.0f,0.0f,1.0f));
}

//void CCamera::MoveCameraBack(float _fDis)
//{
//	MoveCamera(-m_vView, _fDis);
//}

/** \brief
 * ����ͷ���ķ�����ת���(������ת)
 *
 */
void CCamera::RotationCameraY(float _Angle)
{
    D3DXMATRIX t_mat;
	D3DXVECTOR4 t_ver4;
	D3DXVECTOR3 t_eyeat = m_vEyePt;
	D3DXVECTOR3 t_lookat = m_vLookatPt;

	GetMatrixRotaPoint(&t_mat,&t_lookat,&m_vUpVec, _Angle);
	D3DXVec3Transform(&t_ver4,& t_eyeat,&t_mat);
	t_eyeat.x = t_ver4.x;
	t_eyeat.y = t_ver4.y;
	t_eyeat.z = t_ver4.z;
		
	if(m_eViewType ==  V_TOP)
		SetViewParams(t_eyeat,t_lookat,D3DXVECTOR3(0,0,1));
	else
		SetViewParams(t_eyeat,t_lookat,D3DXVECTOR3(0,0,1));
}

/** \brief
 * �����۾����ҵķ�����ת���(������ת)
 *
 */
void CCamera::RotationCameraXZ(float _Angle)
{
    D3DXMATRIX t_mat;
	D3DXVECTOR4 t_ver4;
	D3DXVECTOR3 t_eyeat = m_vEyePt;
	D3DXVECTOR3 t_lookat = m_vLookatPt;

	GetMatrixRotaPoint(&t_mat,&t_lookat,&m_vCross, _Angle);
	D3DXVec3Transform(&t_ver4,& t_eyeat,&t_mat);
	t_eyeat.x = t_ver4.x;
	t_eyeat.y = t_ver4.y;
	t_eyeat.z = t_ver4.z;

	if(m_eViewType ==  V_TOP)
		SetViewParams(t_eyeat,t_lookat,D3DXVECTOR3(0,0,1));
	else
		SetViewParams(t_eyeat,t_lookat,D3DXVECTOR3(0,0,1));
}