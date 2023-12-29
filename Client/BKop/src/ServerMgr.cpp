#include "StdAfx.h"
#include "afxdao.h"
#include ".\servermgr.h"




CList<CServerMgr::sServerInfo*,CServerMgr::sServerInfo*> CServerMgr::m_ServerInfoList;


CServerMgr::CServerMgr(void)
{
}

CServerMgr::~CServerMgr(void)
{
}

bool CServerMgr::LoadServerInfo()
{
	static int nVerify=0;
	CDaoDatabase dbItems;
	CDaoRecordset rdItems(&dbItems);
	try
	{
		dbItems.Open("BKopData.mdb",FALSE,TRUE,g_strDBPassword);
		rdItems.Open(dbOpenSnapshot,"SELECT * FROM 服务器列表;",dbReadOnly);
		while (!rdItems.IsEOF())
		{ 
			COleVariant varServerName=rdItems.GetFieldValue("服务器名称");
			if (varServerName.vt!=VT_BSTR)
			{
				rdItems.MoveNext();
				continue;
			}
			COleVariant varServerIP=rdItems.GetFieldValue("服务器地址");
			if (varServerIP.vt!=VT_BSTR)
			{
				rdItems.MoveNext();
				continue;
			}
			COleVariant varServerVerify=rdItems.GetFieldValue("计费验证");
			if (varServerVerify.vt!=VT_BOOL)
			{
				rdItems.MoveNext();
				continue;
			}
			COleVariant varTomServer=rdItems.GetFieldValue("Tom版本");
			if (varTomServer.vt!=VT_BOOL)
			{
				rdItems.MoveNext();
				continue;
			}
			sServerInfo *pServerInfo=new sServerInfo;
			pServerInfo->strServerName=(char*)varServerName.bstrVal;
			pServerInfo->strServerIP=(char*)varServerIP.bstrVal;
			pServerInfo->bServerVerify=varServerVerify.boolVal;
			pServerInfo->bTomServer=varTomServer.boolVal;
			m_ServerInfoList.AddTail(pServerInfo);
			rdItems.MoveNext();
		}
	}
	catch(CDaoException *)
	{
		if (rdItems.IsOpen())
		{
			rdItems.Close();
		}
		if (dbItems.IsOpen())
		{
			dbItems.Close();
		}
		return false;
	}
	dbItems.Close();
	return true;
}

void CServerMgr::FreeServerInfo()
{
	POSITION pos;
	while (pos=m_ServerInfoList.GetHeadPosition())
	{
		sServerInfo *pServerInfo=m_ServerInfoList.GetAt(pos);
		m_ServerInfoList.RemoveAt(pos);
		delete pServerInfo;
	}
}

CString CServerMgr::GetServerName(DWORD index)
{
	DWORD n=(DWORD)m_ServerInfoList.GetCount();
	if (index<n)
	{
		POSITION pos=m_ServerInfoList.FindIndex(index);
		if (pos==NULL) return NULL;
		return m_ServerInfoList.GetAt(pos)->strServerName;
	}
	return NULL;
}

CString CServerMgr::GetServerIP(DWORD index)
{
	DWORD n=(DWORD)m_ServerInfoList.GetCount();
	if (index<n)
	{
		POSITION pos=m_ServerInfoList.FindIndex(index);
		if (pos==NULL) return NULL;
		return m_ServerInfoList.GetAt(pos)->strServerIP;
	}
	return NULL;
}

CString CServerMgr::GetServerIP(CString strServerName)
{
	POSITION pos=m_ServerInfoList.GetHeadPosition();
	while (pos)
	{
		sServerInfo *pServerInfo=m_ServerInfoList.GetNext(pos);
		if (pServerInfo->strServerName==strServerName)
		{
			return pServerInfo->strServerIP;
		}
	}
	return NULL;
}

BOOL CServerMgr::IsServerNeedVerify(CString strServerName)
{
	POSITION pos=m_ServerInfoList.GetHeadPosition();
	while (pos)
	{
		sServerInfo *pServerInfo=m_ServerInfoList.GetNext(pos);
		if (pServerInfo->strServerName==strServerName)
		{
			return pServerInfo->bServerVerify;
		}
	}
	return FALSE;
}

BOOL CServerMgr::IsTomServer(CString strServerName)
{
	POSITION pos=m_ServerInfoList.GetHeadPosition();
	while (pos)
	{
		sServerInfo *pServerInfo=m_ServerInfoList.GetNext(pos);
		if (pServerInfo->strServerName==strServerName)
		{
			return pServerInfo->bTomServer;
		}
	}
	return FALSE;
}
