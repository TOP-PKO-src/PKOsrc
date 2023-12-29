#pragma once

class CItemInfo;

class CItemDataMgr
{
public:
	CItemDataMgr(void);
	~CItemDataMgr(void);

	static bool LoadItemsInfo();
	static void FreeItemsInfo();


	static CString GetItemName(DWORD index);		//通过物品ID获得物品名字
	static int GetItemType(DWORD index);			//通过物品ID获得物品类型的索引编号(1=剑,2=巨剑,3=弓...)
	static CString GetItemClassName(DWORD index);	//通过物品ID获得物品类别名(武器类,防具类,使用品,道具类...)
	static CString GetItemTypeName(DWORD index);	//通过物品ID获得物品类型名(剑,巨剑,弓...)
	static CString GetItemEquipPlace(DWORD index);	//通过物品ID获得物品可装备位置(非装备返回空字符)
	static bool CanBeEquip(DWORD index);			//通过物品ID获知物品是否可装备(与实际职业和等级无关)
	static bool CanBeUse(DWORD index);			//通过物品ID获知物品是否可使用(与使用条件无关)


private:
	static CMap<DWORD,DWORD,CItemInfo*,CItemInfo*> m_Items;
};
