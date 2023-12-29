#include "StdAfx.h"
#include ".\controlcommand.h"


struct sCommandInfo
{
	bool isAvailable;					//�����Ƿ���Ч,�˲���������һЩ����
	CString strCommandShowName;			//�������������
	CString strCommandName;				//�����ʵ�ʲ���ָ��,����:"&move"
	bool bHasTarget;					//ָ���Ƿ���Ҫ����Ŀ�����(��ҵ�����)
	int nParamCounts;					//ָ���Ĳ�������(���ֵ)
	int nDivideStart;					//�ָ����ӵڼ�������ǰ����ӿ�ʼ,����������0����,-1����û�зָ�����(ȫ���ÿո����)
	CString strHelpInfo;				//ָ���ʽ�İ���˵��
};


static sCommandInfo sCommandLine[COMMAND_LINE_MAX_COUNT]=
{
	{true,"��ǰ����","@@ getusernum+",false,0,-1,"˵��:��ȡ��ǰ������ҵ�����,�������������"},
	{true,"�����������","@@ ping",true,0,-1,"˵��:���ָ����ҵ�����������ʱֵ,�������������"},
	{true,"�Լ����һ������״̬","@@ getlastconnection",false,0,-1,"˵��:��ȡ�Լ����һ������״̬(����ԭ��),�������������"},
	{true,"������һ������״̬","@@ getuserconnection",true,0,-1,"˵��:��ȡ������һ������״̬(����ԭ��),�������������"},
	{true,"��ѯ��һ�����Ϣ","&qcha",true,0,-1,"˵��:��ȡ��һ�����Ϣ,�������������"},
	{true,"����ϵͳ��Ϣ","&notice",false,1,-1,"˵��:�������Ƶ������ϵͳ��Ϣ,��ʽ:���ڴ���ֱ��������Ϣ����"},
	{true,"����","&hide",false,0,-1,"˵��:GMר��������,�������������"},
	{true,"����","&unhide",false,0,-1,"˵��:GMר�����μ���,������������Ӧ,�������������"},
	{true,"ԭ�ظ���","&relive",false,0,-1,"˵��:GMר�õ�������,�������������"},
	{true,"˲���ƶ�","&move",false,3,1,"˵��:˲�Ƶ���Ϸ��Ŀɵ���λ��,��ʽ:X���� Y���� [��ͼ����]"},
	{true,"˲�Ƶ��������λ��","&goto",true,0,-1,"˵��:˲�Ƶ�ָ���������λ��,�������������"},
	{true,"�ٻ���ҵ����","&call",true,0,-1,"˵��:�ٻ�ָ����ҵ��Լ�����λ��,�������������"},
	{true,"���������","&kick",true,0,-1,"˵��:��ָ���������,GMר������,�������������"},
	{true,"����","@@ estop",true,1,0,"˵��:��ֹ��ҷ���,GMר������,��ʽ:���ڴ���ֱ���������ʱ��(������,����30����)"},
	{true,"���","@@ delestop",true,0,-1,"˵��:�������,GMר������,�������������"},
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
