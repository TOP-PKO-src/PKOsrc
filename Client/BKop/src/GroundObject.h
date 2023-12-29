#pragma once

#include "itemobject.h"
#include "ServerHeader.h"

class CGroundObject :
	public CItemObject
{
public:
	CGroundObject(dbc::RPacket& pk);
	virtual ~CGroundObject(void);

	void SetWorldID(DWORD worldID);
	void SetHandle(DWORD handle);
	void SetPosition(DWORD x, DWORD y);
	void SetAngle(WORD angle);
	void SetAppearCause(EItemAppearType eCause);
	void SetOwnerWorldID(DWORD worldID);

	DWORD GetWorldID();
	DWORD GetHandle();
	DWORD GetPositionX();
	DWORD GetPositionY();
	float GetPositionFloatX();
	float GetPositionFloatY();
	DWORD GetDistanceTo(DWORD x,DWORD y);
	float GetDistanceInFloatTo(DWORD x,DWORD y);
	WORD GetAngle();
	EItemAppearType GetAppearCause();
	CString GetAppearCauseString();
	DWORD GetOwnerWorldID();


private:
	DWORD m_dwWorldID;
	DWORD m_dwHandle;
	DWORD m_dwPosX;
	DWORD m_dwPosY;
	WORD m_nAngle;
	EItemAppearType m_eAppearCause;
	DWORD m_dwOwnerWorldID;

	//δΪ�����¼����ݴ�����ȡ�ӿ�
	DWORD m_dwEventEntityID;				//�¼������ID	- ��ʱ������
	EChaCtrlType m_eEventEntityType;		//�¼����������(����/����..)	- ��ʱ������
	DWORD m_dwEventID;						//�¼�ID
	CString m_strEventName;					//�¼�����
};
