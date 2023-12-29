#pragma once

class CItemObject
{
public:
	CItemObject(void);
	virtual ~CItemObject(void);

	void SetItemID(DWORD itemID);		//������ƷID,ͬһ��ƷIDӦ����ͬ
	void SetTotalNum(WORD nTotalNum);


	DWORD GetItemID();					//�����ƷID,,ͬһ��ƷIDӦ����ͬ,�����ڲ��,�ҳ���Ʒ����ϸ��Ϣ
	CString GetName();					//�����Ʒ����
	WORD GetTotalNum();					//��õ�ǰ���ӵ���Ʒ����
	CString GetTypeName();				//�����Ʒ������(��,�޽�,��...)
	CString GetClassName();				//�����Ʒ�����(������,������,ʹ��Ʒ,������...)
	CString GetEquipPlace();			//�����Ʒ��װ����λ��(��װ�����ؿ��ַ�)

private:
	DWORD m_dwItemID;
	WORD m_nTotalNum;
};
