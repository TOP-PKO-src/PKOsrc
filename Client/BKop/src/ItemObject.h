#pragma once

class CItemObject
{
public:
	CItemObject(void);
	virtual ~CItemObject(void);

	void SetItemID(DWORD itemID);		//设置物品ID,同一物品ID应该相同
	void SetTotalNum(WORD nTotalNum);


	DWORD GetItemID();					//获得物品ID,,同一物品ID应该相同,可用于查表,找出物品的详细信息
	CString GetName();					//获得物品名称
	WORD GetTotalNum();					//获得当前格子的物品数量
	CString GetTypeName();				//获得物品类型名(剑,巨剑,弓...)
	CString GetClassName();				//获得物品类别名(武器类,防具类,使用品,道具类...)
	CString GetEquipPlace();			//获得物品可装备的位置(非装备返回空字符)

private:
	DWORD m_dwItemID;
	WORD m_nTotalNum;
};
