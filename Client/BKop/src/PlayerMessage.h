#pragma once

#include "PlayerMessageInfo.h"

class CPlayerMessage
{
public:
	CPlayerMessage(CPlayer *pPlayer);
	~CPlayerMessage(void);
	int GetMessageCount();
	int GetNewMessageCount();
	CString GetCurMsg();
	COLORREF GetCurMsgColor();
	CPlayerMessageInfo::eMessageType GetCurMsgType();
	bool GetSystemMessageFilter();
	bool GetDebugMessageFilter();
	bool GetFilterBeforeAdd();
	static bool GetOnlyAddMainPlayerMessage();

	void ClearAll();
	bool MoveToNext();						//�����������˼��������ƶ�,���� : true��������Ϣ false����û��Ϣ
	bool MoveToBegin();						//�����������˼��������ƶ�,���� : true��������Ϣ false����û��Ϣ
	bool MoveToNextAvailable();				//���������˼��������ƶ�,���� : true��������Ϣ false����û��Ϣ��ָ����ƶ������
	bool MoveToFirstAvailable();			//���������˼��������ƶ�,���� : true��������Ϣ false����û��Ϣ��ָ����ƶ������
	void SetSystemMessageFilter(bool bFilter);
	void SetDebugMessageFilter(bool bFilter);
	void SetFilterBeforeAdd(bool bYes);		//�������Ϣǰ�ж��Ƿ������Ϣ
	static void SetOnlyAddMainPlayerMessage(bool bYes);		//����ӵ�ǰ�û�����Ϣ

	bool AddMsg(CString str,...);			//���һ����Ϣ,����ʧ��(����false)
	bool AddSystemMsg(CString str,...);		//���ϵͳ��Ϣ,��m_bFilterBeforeAdd��m_bSystemFilterӰ��,����ʧ��(����false)
	bool AddDebugMsg(CString str,...);		//��ӵ�����Ϣ,��m_bFilterBeforeAdd��m_bDebugFilterӰ��,����ʧ��(����false)
	bool AddCustomMsg(CPlayerMessageInfo::eMessageType type,COLORREF color,CString str,...);	//��Ӷ�����Ϣ,���������type���ڲ�����m_bFilterBeforeAdd,m_bSystemFilter��m_bDebugFilterӰ��,����ʧ��(����false)
	void AddToMessageArray(CPlayerMessageInfo* msg);		//����Ϣ���뵽����

private:
	inline void IndexBoundCorrect(int &index);	//����������Χ������ֵ,ʹ����ֵ����(��������)

private:
	static bool volatile m_bOnlyAddMainPlayerMessage;
	CPlayer *m_pPlayer;
	CPtrArray m_MsgObject;
	int m_nMsgStartIndex;		//ָ������Ŀ�ʼ,������Ч,Ҳ������Ч(m_nMsgStartIndex==m_nMsgEndIndexʱ��Ч)
	int m_nMsgCurrentIndex;		//ָ��ǰ����ֵ,��Χ��m_nMsgStartIndex��m_nMsgEndIndex֮��,��m_nMsgCurrentIndex==m_nMsgEndIndexʱ,��ֵ��Ч
	int m_nMsgEndIndex;			//��Զָ��һ����������ֵ���µ���������
	bool m_bSystemFilter;
	bool m_bDebugFilter;
	bool m_bFilterBeforeAdd;
	DWORD m_dwTotalMessageCounts;
};
