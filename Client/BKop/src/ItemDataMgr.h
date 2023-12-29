#pragma once

class CItemInfo;

class CItemDataMgr
{
public:
	CItemDataMgr(void);
	~CItemDataMgr(void);

	static bool LoadItemsInfo();
	static void FreeItemsInfo();


	static CString GetItemName(DWORD index);		//ͨ����ƷID�����Ʒ����
	static int GetItemType(DWORD index);			//ͨ����ƷID�����Ʒ���͵��������(1=��,2=�޽�,3=��...)
	static CString GetItemClassName(DWORD index);	//ͨ����ƷID�����Ʒ�����(������,������,ʹ��Ʒ,������...)
	static CString GetItemTypeName(DWORD index);	//ͨ����ƷID�����Ʒ������(��,�޽�,��...)
	static CString GetItemEquipPlace(DWORD index);	//ͨ����ƷID�����Ʒ��װ��λ��(��װ�����ؿ��ַ�)
	static bool CanBeEquip(DWORD index);			//ͨ����ƷID��֪��Ʒ�Ƿ��װ��(��ʵ��ְҵ�͵ȼ��޹�)
	static bool CanBeUse(DWORD index);			//ͨ����ƷID��֪��Ʒ�Ƿ��ʹ��(��ʹ�������޹�)


private:
	static CMap<DWORD,DWORD,CItemInfo*,CItemInfo*> m_Items;
};
