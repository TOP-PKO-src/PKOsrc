#pragma once
#include	"OgreHardwareIndexBuffer.h"
#include	"OgreHardwareVertexBuffer.h"

//	+
#define		CHUNK_X_VERTEX_COUNT	33
#define		CHUNK_Y_VERTEX_COUNT	33

//	��Ϸ���Ρ�
class GameTreeain
{
private:	//	ԭʼ���ݡ�

	//	�ر�߶����ݡ�
	FLOAT						ma_Height[CHUNK_X_VERTEX_COUNT][CHUNK_Y_VERTEX_COUNT];
	//	��ɫ���ݡ�
	DWORD						ma_Color[CHUNK_X_VERTEX_COUNT][CHUNK_Y_VERTEX_COUNT];
	//	���Ȩ����Ϣ��
	FLOAT						ma_Weight[CHUNK_X_VERTEX_COUNT][CHUNK_Y_VERTEX_COUNT][4];
	//	�ر�����
	std::string					ma_Texture[4];

private:	//	OGRE ���ݡ�
	//	�������ݣ����꣬��ɫ������
	Ogre::HardwareVertexBufferSharedPtr	posVertexBuffer;
	Ogre::HardwareVertexBufferSharedPtr	weightVertexBuffer;
	Ogre::HardwareVertexBufferSharedPtr	colorVertexBuffer;
	Ogre::HardwareVertexBufferSharedPtr	texcoordsVertexBuffer;

	//	�������ݡ�
	Ogre::HardwareIndexBufferSharedPtr	indexBuffer;

	//	�����������֡�
	Ogre::SubMesh*						subMesh;
	char								m_sMeshName[32];

private:

	//	�������㻺�塣
	int	CopyVertexBufferData(	Ogre::VertexBufferBinding*	vbind,	int	iLod	);
	//	�����������塣
	int	CopyIndexBufferData(	int	iLod	);

public:
	
	//	��ѯ��������֡�
	const	char*	GetMeshName(){	return	this->m_sMeshName;	};
	//	����һ������33*33�����㣬32*32��TILE������
	int	CreateChunkMesh(	int	chunk_x,	int	chunk_y,	int	iLod	);
	//	���õ�ǰ��LOD��
	void	SetLod(	int	iLod	);

public:	//	��Ϸ���Ρ�


public:	//	���졣
	GameTreeain(	int	chunk_x,	int	chunk_y,	int	iLod	);
	~GameTreeain(void);
};
