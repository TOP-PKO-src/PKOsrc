#pragma once


#include "GlobalInc.h"

#include <mindpower.h>

#include "../../../Mindpower/sdk/include/MPEffectCtrl.h"

class CEffectObj
{
public:
	CEffectObj();
	~CEffectObj();

	//void	LoadCha();
public:
	CChaModel*					m_pChaModel;
	MPSceneItem*				m_pItem;

	CMPPartCtrl*				m_pEmiCtrl; //ʩ����Ч
	CMagicCtrl*					m_pFlyCtrl; //������Ч
	CMPPartCtrl*				m_pHitCtrl; //�ܻ���Ч
};