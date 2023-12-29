#include "StdAfx.h"
#include ".\controlcommand.h"


struct sCommandInfo
{
	bool isAvailable;					//命令是否有效,此参数可屏蔽一些命令
	CString strCommandShowName;			//命令的中文名字
	CString strCommandName;				//命令的实际操作指令,例如:"&move"
	bool bHasTarget;					//指令是否需要带有目标对象(玩家的名字)
	int nParamCounts;					//指令后的参数个数(最大值)
	int nDivideStart;					//分隔符从第几个参数前面添加开始,参数个数从0起算,-1代表没有分隔符号(全部用空格代替)
	CString strHelpInfo;				//指令格式的帮助说明
};


static sCommandInfo sCommandLine[COMMAND_LINE_MAX_COUNT]=
{
	{true,"当前人数","@@ getusernum+",false,0,-1,"说明:获取当前在线玩家的数量,此命令无需参数"},
	{true,"玩家连接速率","@@ ping",true,0,-1,"说明:获得指定玩家的网络连接延时值,此命令无需参数"},
	{true,"自己最后一次连接状态","@@ getlastconnection",false,0,-1,"说明:获取自己最后一次连接状态(断线原因),此命令无需参数"},
	{true,"玩家最后一次连接状态","@@ getuserconnection",true,0,-1,"说明:获取玩家最后一次连接状态(断线原因),此命令无需参数"},
	{true,"查询玩家基本信息","&qcha",true,0,-1,"说明:获取玩家基本信息,此命令无需参数"},
	{true,"发布系统信息","&notice",false,1,-1,"说明:快捷聊天频道发布系统信息,格式:请在此行直接输入信息内容"},
	{true,"隐身","&hide",false,0,-1,"说明:GM专用隐身技能,此命令无需参数"},
	{true,"显形","&unhide",false,0,-1,"说明:GM专用显形技能,与隐身操作相对应,此命令无需参数"},
	{true,"原地复活","&relive",false,0,-1,"说明:GM专用的自身复活,此命令无需参数"},
	{true,"瞬间移动","&move",false,3,1,"说明:瞬移到游戏里的可到达位置,格式:X坐标 Y坐标 [地图名字]"},
	{true,"瞬移到玩家所处位置","&goto",true,0,-1,"说明:瞬移到指定玩家所处位置,此命令无需参数"},
	{true,"召唤玩家到身边","&call",true,0,-1,"说明:召唤指定玩家到自己所处位置,此命令无需参数"},
	{true,"踢玩家下线","&kick",true,0,-1,"说明:踢指定玩家下线,GM专用命令,此命令无需参数"},
	{true,"禁言","@@ estop",true,1,0,"说明:禁止玩家发言,GM专用命令,格式:请在此行直接输入禁言时间(分钟数,至少30分钟)"},
	{true,"解除","@@ delestop",true,0,-1,"说明:解除禁言,GM专用命令,此命令无需参数"},
};

CControlCommand::CControlCommand(void)
{
}

CControlCommand::~CControlCommand(void)
{
}

bool CControlCommand::IsAvailable(int index)
{
	return sCommandLine[index].isAvailable;
}

CString CControlCommand::GetCommandShowName(int index)
{
	return sCommandLine[index].strCommandShowName;
}

CString CControlCommand::GetCommandName(int index)
{
	return sCommandLine[index].strCommandName;
}

bool CControlCommand::HasTarget(int index)
{
	return sCommandLine[index].bHasTarget;
}

int CControlCommand::GetParamCounts(int index)
{
	return sCommandLine[index].nParamCounts;
}

int CControlCommand::GetDivideStart(int index)
{
	return sCommandLine[index].nDivideStart;
}

CString CControlCommand::GetHelpInfo(int index)
{
	return sCommandLine[index].strHelpInfo;
}

int CControlCommand::GetCommandLineCounts()
{
	return COMMAND_LINE_MAX_COUNT;
}

CString CControlCommand::AssembleCommand(int index,CString strName,CString strText)
{
	CString strRet=CControlCommand::GetCommandName(index);
	if (CControlCommand::HasTarget(index))
	{
		strRet+=" "+strName;
	}
	if (CControlCommand::GetParamCounts(index)==0)
	{
		return strRet;
	}
	int nPos=0,nParamCount=0;
	CString strParam;
	while (!(strParam=strText.Tokenize(" ,",nPos)).IsEmpty())
	{
		nParamCount++;
		int nDivideStart=CControlCommand::GetDivideStart(index);
		if (nDivideStart>=0 && nParamCount>nDivideStart)
		{
			strRet+=","+strParam;
		}
		else
		{
			strRet+=" "+strParam;
		}
	};
	if (nParamCount>CControlCommand::GetParamCounts(index))
	{
		return NULL;
	}
	return strRet;
}
