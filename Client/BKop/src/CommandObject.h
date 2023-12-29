#pragma once

class CCommandObject
{
public:
	CCommandObject(CPlayer* pPlayer);
	virtual ~CCommandObject(void);

	virtual CString GetCommandName()=0;
	virtual bool Execute()=0;				//���� true:����ִ�����,����������� false:������Ҫ����ִ��

	void SetCommandPosition(POSITION pos);
	POSITION GetCommandPosition();

protected:
	CPlayer* m_pPlayer;

private:
	POSITION m_CmdPosition;
};
