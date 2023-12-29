#pragma once

class CItemInfo
{
public:
	CItemInfo(void);
	~CItemInfo(void);

	void SetName(CString strName);
	void SetType(int nType);
	void SetClassName(CString strClassName);	//�����������(��:������,������,ʹ��Ʒ,������...)
	void SetTypeName(CString strTypeName);		//������������(��:1=��,2=�޽�,3=��...)
	void SetEquipPlace(CString strEquipPlace);	//����װ����Ӧ�Ĳ�λ(�Է�װ��Ĭ��Ϊ���ַ�)
	void SetCanBeEquip(bool bEquip);
	void SetCanBeUse(bool bUse);

	CString GetName();
	int GetType();
	CString GetClassName();						//����������(��:������,������,ʹ��Ʒ,������...)
	CString GetTypeName();						//�����������(��:1=��,2=�޽�,3=��...)
	CString GetEquipPlace();					//���װ����Ӧ�Ĳ�λ(�Է�װ�����ؿ��ַ�)
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
