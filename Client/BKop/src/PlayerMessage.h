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
	bool MoveToNext();						//不带参数过滤检查的索引移动,返回 : true代表有消息 false代表没消息
	bool MoveToBegin();						//不带参数过滤检查的索引移动,返回 : true代表有消息 false代表没消息
	bool MoveToNextAvailable();				//带参数过滤检查的索引移动,返回 : true代表有消息 false代表没消息且指针会移动到最后
	bool MoveToFirstAvailable();			//带参数过滤检查的索引移动,返回 : true代表有消息 false代表没消息且指针会移动到最后
	void SetSystemMessageFilter(bool bFilter);
	void SetDebugMessageFilter(bool bFilter);
	void SetFilterBeforeAdd(bool bYes);		//在添加信息前判断是否过滤消息
	static void SetOnlyAddMainPlayerMessage(bool bYes);		//仅添加当前用户的信息

	bool AddMsg(CString str,...);			//添加一般信息,可能失败(返回false)
	bool AddSystemMsg(CString str,...);		//添加系统消息,受m_bFilterBeforeAdd和m_bSystemFilter影响,可能失败(返回false)
	bool AddDebugMsg(CString str,...);		//添加调试消息,受m_bFilterBeforeAdd和m_bDebugFilter影响,可能失败(返回false)
	bool AddCustomMsg(CPlayerMessageInfo::eMessageType type,COLORREF color,CString str,...);	//添加定制消息,受输入参数type和内部参数m_bFilterBeforeAdd,m_bSystemFilter和m_bDebugFilter影响,可能失败(返回false)
	void AddToMessageArray(CPlayerMessageInfo* msg);		//把消息加入到数组

private:
	inline void IndexBoundCorrect(int &index);	//修正超出范围的索引值,使其数值回绕(环形数组)

private:
	static bool volatile m_bOnlyAddMainPlayerMessage;
	CPlayer *m_pPlayer;
	CPtrArray m_MsgObject;
	int m_nMsgStartIndex;		//指向数组的开始,可能有效,也可能无效(m_nMsgStartIndex==m_nMsgEndIndex时无效)
	int m_nMsgCurrentIndex;		//指向当前索引值,范围在m_nMsgStartIndex和m_nMsgEndIndex之间,当m_nMsgCurrentIndex==m_nMsgEndIndex时,此值无效
	int m_nMsgEndIndex;			//永远指向一个不存在数值的新的数组索引
	bool m_bSystemFilter;
	bool m_bDebugFilter;
	bool m_bFilterBeforeAdd;
	DWORD m_dwTotalMessageCounts;
};
