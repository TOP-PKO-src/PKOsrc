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

	//未为以下事件数据创建获取接口
	DWORD m_dwEventEntityID;				//事件载体的ID	- 暂时无意义
	EChaCtrlType m_eEventEntityType;		//事件载体的类型(道具/人物..)	- 暂时无意义
	DWORD m_dwEventID;						//事件ID
	CString m_strEventName;					//事件名称
};
