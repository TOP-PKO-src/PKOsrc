#pragma once

class CItemInfo
{
public:
	CItemInfo(void);
	~CItemInfo(void);

	void SetName(CString strName);
	void SetType(int nType);
	void SetClassName(CString strClassName);	//设置类别名字(如:武器类,防具类,使用品,道具类...)
	void SetTypeName(CString strTypeName);		//设置类型名字(如:1=剑,2=巨剑,3=弓...)
	void SetEquipPlace(CString strEquipPlace);	//设置装备对应的部位(对非装备默认为空字符)
	void SetCanBeEquip(bool bEquip);
	void SetCanBeUse(bool bUse);

	CString GetName();
	int GetType();
	CString GetClassName();						//获得类别名字(如:武器类,防具类,使用品,道具类...)
	CString GetTypeName();						//获得类型名字(如:1=剑,2=巨剑,3=弓...)
	CString GetEquipPlace();					//获得装备对应的部位(对非装备返回空字符)
	bool CanBeEquip();
	bool CanBeUse();

private:
	CString m_strName;
	CString m_strClassName;
	CString m_strTypeName;
	CString m_strEquipPlace;
	int m_nType;
	bool m_bCanBeEquip;
	bool m_bCanBeUse;
};
