#pragma once

class CPlayerMessageInfo
{
public:
	enum eMessageType
	{//�����Ϣ������
		eNormal=0,			//��ͨ����
		eSystem=1,			//ϵͳ����
		eDebug=2,			//���Լ���
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
