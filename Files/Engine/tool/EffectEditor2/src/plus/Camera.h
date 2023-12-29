//===================================================================
/** \file  
 *  Filename: Camera.h
 *  Desc:     ʵ������ࡣ
 *  His:      ���� @ 6/12 2003 16:18
 */
//===================================================================

#pragma once
#include "../src/d3d/d3dutil.h"

//������ͼ����
enum ViewType{ V_FREE, V_TOP};
//�����ƶ�����
enum MoveType{ M_XYZ, M_FRONTBACK, M_R_Y, M_R_XZ};

//===================================================================
/** \class  
 *  classname: CCamera
 *  Desc:     ʵ��һ����������ࡣ��������������ƶ�
 *         
 *  ������
 *     ����ƶ���
 *            void MoveCameraLeftRight(float _fDis);
 *            \param: _fDis
					����ƶ��ľ���.
 *            desc:  ����������ƶ�;
 *
 *			  void MoveCameraUpDown(float _fDis);
 *            param: _fDis
					����ƶ��ľ���..
 *            desc:   ����������ƶ�;

 *			  void MoveCameraForwardBack(float _fDis);
 *            param: _fDis
					����ƶ��ľ���..
 *            desc:   �����ǰ���ƶ�;

	   �����ת��
 *		     void RotationCameraY(float _Angle);
 *            param: _Angle
					�����ת�ĽǶ�
 *            desc:  ���ΧY����ת

 *            void RotationCameraXZ(float _Angle);
 *            param1: _Angle
					�����ת�ĽǶ�
 *            desc:   ���ΧXZ����ת

 *  His:      ���� @ 6/12 2003 16:18
 */
//===============================
class CCamera :public CD3DCamera
{
public:
	CCamera(void);
	~CCamera(void);
private:
	//!���շ���_sNormal�ƶ����_fDist�ľ���
	void MoveCamera(D3DXVECTOR3 &_sNormal, float _fDis);

	//!Χ�Ƶ�Point��ĳһ����aixs��תangle�ĽǶȣ��õ���ת����
	D3DXMATRIX * GetMatrixRotaPoint(D3DXMATRIX *pout,D3DXVECTOR3 *Point,\
						 D3DXVECTOR3 *aixs,float angle);
public:
	//!�����ƶ����
	void MoveCameraLeftRight(float _fDis);
	//!�����ƶ����
	void MoveCameraUpDown(float _fDis);
	//!ǰ���ƶ����
	void MoveCameraForwardBack(float _fDis);
	//void MoveCameraBack(float _fDis);

	//!Χ��Y���lookat����ת���
	void RotationCameraY(float _Angle);
	//!Χ��XZ���lookat����ת���
	void RotationCameraXZ(float _Angle);

	//!���ö���ͼ
	void SetTopView();
	//!����������ͼ
	void SetFreeView();
	//!�����������������ʱ��λ��
	void SetOrgView();

	//!�Ƿ���ͼ
	bool IsTopView(){ return (m_eViewType == V_TOP);}
public:
	//!�����Ӿ���
	void SetViewMatrix( LPDIRECT3DDEVICE8	_pDev){ _pDev->SetTransform(D3DTS_VIEW,&m_matView);}
	//!����ͶӰ����
	void SetProMatrix( LPDIRECT3DDEVICE8	_pDev){_pDev->SetTransform(D3DTS_PROJECTION,&m_matProj);}
private:
	//!��ͼ����
	ViewType  m_eViewType;

	//!����ԭ����������ͼ���ӱ���
	D3DXVECTOR3  m_sOldPos;
	D3DXVECTOR3  m_sOldLookat;
	D3DXVECTOR3  m_sOldUp;
};
