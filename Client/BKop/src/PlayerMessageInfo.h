#pragma once

class CPlayerMessageInfo
{
public:
	enum eMessageType
	{//输出信息的类型
		eNormal=0,			//普通级别
		eSystem=1,			//系统级别
		eDebug=2,			//调试级别
	};

	CPlayerMessageInfo(eMessageType eMsgType,CString str);
	~CPlayerMessageInfo(void);
	void SetMessageType(eMessageType eMsgType);
	void SetMessage(CString strMsg);
	void SetMessageColor(COLORREF color);

	eMessageType GetMessageType();
	CString GetMessage();
	COLORREF GetMessageColor();

private:
	const static COLORREF sColorTable[3];
	eMessageType m_eMessageType;
	CString m_strMessage;
	COLORREF m_dwColor;
};
