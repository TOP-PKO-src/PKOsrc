#include "StdAfx.h"
#include ".\TestScripts.h"

CEffectObj::CEffectObj()
{
	m_pEmiCtrl = NULL; //ʩ����Ч
	m_pFlyCtrl = NULL; //������Ч
	m_pHitCtrl = NULL; //�ܻ���Ч

	m_pChaModel = NULL;
	m_pItem = NULL;

}
CEffectObj::~CEffectObj()
{
}
