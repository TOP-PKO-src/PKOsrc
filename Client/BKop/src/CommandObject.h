#pragma once

class CCommandObject
{
public:
	CCommandObject(CPlayer* pPlayer);
	virtual ~CCommandObject(void);

	virtual CString GetCommandName()=0;
	virtual bool Execute()=0;				//返回 true:代表执行完毕,可以清除命令 false:代表需要继续执行

	void SetCommandPosition(POSITION pos);
	POSITION GetCommandPosition();

protected:
	CPlayer* m_pPlayer;

private:
	POSITION m_CmdPosition;
};
