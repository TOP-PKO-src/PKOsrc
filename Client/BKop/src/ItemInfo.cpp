#include "StdAfx.h"
#include ".\iteminfo.h"


#ifdef _DEBUG
#define new DEBUG_NEW
#endif


CItemInfo::CItemInfo(void)
{
	m_nType=0;
	m_strName="未知物品:0";
	m_strClassName="未知类别";
	m_strTypeName="未知类型";
	m_strEquipPlace="";
	m_bCanBeEquip=false;
	m_bCanBeUse=false;
}

CItemInfo::~CItemInfo(void)
{
}

void CItemInfo::SetName(CString strName)
{
	m_strName=strName;
}

void CItemInfo::SetType(int nType)
{
	m_nType=nType;
}

void CItemInfo::SetClassName(CString strClassName)
{
	m_strClassName=strClassName;
}

void CItemInfo::SetTypeName(CString strTypeName)
{
	m_strTypeName=strTypeName;
}

void CItemInfo::SetEquipPlace(CString strEquipPlace)
{
	if (strEquipPlace.IsEmpty())
	{
		m_strEquipPlace="";
	}
	else
	{
		m_strEquipPlace=strEquipPlace;
	}
}

void CItemInfo::SetCanBeEquip(bool bEquip)
{
	m_bCanBeEquip=bEquip;
}

void CItemInfo::SetCanBeUse(bool bUse)
{
	m_bCanBeUse=bUse;
}




CString CItemInfo::GetName()
{
	return m_strName;
}

int CItemInfo::GetType()
{
	return m_nType;
}

CString CItemInfo::GetClassName()
{
	return m_strClassName;
}

CString CItemInfo::GetTypeName()
{
	return m_strTypeName;
}

CString CItemInfo::GetEquipPlace()
{
	return m_strEquipPlace;
}

bool CItemInfo::CanBeEquip()
{
	return m_bCanBeEquip;
}

bool CItemInfo::CanBeUse()
{
	return m_bCanBeUse;
}
