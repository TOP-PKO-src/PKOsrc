#pragma once
#include	"GameTreeain.h"
#include	"objectpool.h"
#include	"GameCharacter.h"

//	��Ϸ�������ࡣ	
class	GameTreeain;
class	GameScene	:	public	IAppObject
{
	//	��ͼ���֡�
	std::string					m_sMapName;
	//	�������ݡ�
	std::vector<GameTreeain*>	ma_pTreeain;
	//	��ǰ������
	int								m_iMainCharacterId;

public:
	//	���е����
	ObjectPool<GameCharacter,6000>	ma_Character;

	//	��ȡ���ؽ�ɫ��
	GameCharacter*	GetMainCha()
	{
		return	&this->ma_Character.Get( this->m_iMainCharacterId	);
	};

private:	//
	bool	CreateTerrain(	char*	sMapName	)
	{
		return	true;
	};
	static	bool	luacall_CreateTerrain(	void*	obj,	char*	sTerrainName	)
	{
		return	((GameScene*)obj)->CreateTerrain(	sTerrainName	);
	};
	bool	CreateMesh(	char*	sResourceName,	char*	sMeshName,	float	x,	float	y,	float	z,	float	yaw,	float	scale	)
	{
		return	true;
	};
	static	bool	luacall_CreateMesh(		void*	obj,	char*	sResourceName,	char*	sMeshName,	float	x,	float	y,	float	z,	float	yaw,	float	scale	)
	{
		return	((GameScene*)obj)->CreateMesh(	sResourceName,	sMeshName,	x,	y,	z,	yaw,	scale	);
	};
	bool	CreateEffect(	char*	sResourceName,	char*	sEffectName,float	x,	float	y,	float	z,	float	yaw,	float	scale	)
	{
		return	true;
	};
	static	bool	luacall_CreateEffect(	void*	obj,	char*	sResourceName,	char*	sEffectName,float	x,	float	y,	float	z,	float	yaw,	float	scale	)
	{
		return	((GameScene*)obj)->CreateEffect(	sResourceName,	sEffectName,	x,	y,	z,	yaw,	scale	);
	};
	bool	CreateSkin(	char*	sResourceName,	char*	sSkinName,	float	x,	float	y,	float	z,	float	yaw,	float	scale	)
	{
		return	true;
	};
	static	bool	luacall_CreateSkin(		void*	obj,	char*	sResourceName,	char*	sSkinName,	float	x,	float	y,	float	z,	float	yaw,	float	scale	)	
	{
		return	((GameScene*)obj)->CreateSkin(		sResourceName,	sSkinName,	x,	y,	z,	yaw,	scale	);
	};
	bool	CreateUi(char*	sResourceName,	char*	sUiName	)
	{
		return	true;
	};
	static	bool	luacall_CreateUi(		void*	obj,	char*	sResourceName,	char*	sUiName	)
	{
		return	((GameScene*)obj)->CreateUi(		sResourceName,	sUiName	);
	};

public:

	//	��ʼ����
	virtual	bool	Init()
	{
		//	��ʼ���ű���
		CLU_RegisterFunction(	"CreateTerrain","bool","char*",CLU_CDECL,CLU_CAST(luacall_CreateTerrain) );
		CLU_RegisterFunction(	"CreateMesh","bool","char*,char*,float,float,float,float,float",CLU_CDECL,CLU_CAST(luacall_CreateMesh)	);
		CLU_RegisterFunction(	"CreateEffect","bool","char*,char*,float,float,float,float,float",CLU_CDECL,CLU_CAST(luacall_CreateEffect)	);
		CLU_RegisterFunction(	"CreateSkin","bool","char*,char*,float,float,float,float,float",CLU_CDECL,CLU_CAST(luacall_CreateSkin)	);
		CLU_RegisterFunction(	"CreateUi","bool",	"char*,char*",CLU_CDECL,CLU_CAST(luacall_CreateUi)	);

		//
		return	true;
	}

};

//	��¼������
class	LoginScene	:	public	GameScene
{
public:

	bool	Init()
	{
		//
		if(	!GameScene::Init()	)
			return	false;

		//
		if(	CLU_LoadScript(	"LoginScene_Init.lua"	)	)
			return	false;

		//
		return	true;
	};

	virtual	void	Run(){};
	virtual	void	Release(){};
};

//	ѡ�˳�����
class	SelectCharacterScene	:	public	GameScene
{
public:
	virtual	bool	Init(){	return	true;	};
	virtual	void	Run(){};
	virtual	void	Release(){};

};

//	�������ﳡ����
class	CreateCharacterScene	:	public	GameScene
{
public:
	virtual	bool	Init(){	return	true;	};
	virtual	void	Run(){};
	virtual	void	Release(){};

};
