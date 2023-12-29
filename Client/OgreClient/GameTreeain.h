#pragma once
#include	"OgreHardwareIndexBuffer.h"
#include	"OgreHardwareVertexBuffer.h"

//	+
#define		CHUNK_X_VERTEX_COUNT	33
#define		CHUNK_Y_VERTEX_COUNT	33

//	游戏地形。
class GameTreeain
{
private:	//	原始数据。

	//	地表高度数据。
	FLOAT						ma_Height[CHUNK_X_VERTEX_COUNT][CHUNK_Y_VERTEX_COUNT];
	//	颜色数据。
	DWORD						ma_Color[CHUNK_X_VERTEX_COUNT][CHUNK_Y_VERTEX_COUNT];
	//	混合权重信息。
	FLOAT						ma_Weight[CHUNK_X_VERTEX_COUNT][CHUNK_Y_VERTEX_COUNT][4];
	//	地表纹理。
	std::string					ma_Texture[4];

private:	//	OGRE 数据。
	//	顶点数据，坐标，颜色，纹理。
	Ogre::HardwareVertexBufferSharedPtr	posVertexBuffer;
	Ogre::HardwareVertexBufferSharedPtr	weightVertexBuffer;
	Ogre::HardwareVertexBufferSharedPtr	colorVertexBuffer;
	Ogre::HardwareVertexBufferSharedPtr	texcoordsVertexBuffer;

	//	索引数据。
	Ogre::HardwareIndexBufferSharedPtr	indexBuffer;

	//	网格及网格名字。
	Ogre::SubMesh*						subMesh;
	char								m_sMeshName[32];

private:

	//	拷贝顶点缓冲。
	int	CopyVertexBufferData(	Ogre::VertexBufferBinding*	vbind,	int	iLod	);
	//	拷贝索引缓冲。
	int	CopyIndexBufferData(	int	iLod	);

public:
	
	//	查询网格的名字。
	const	char*	GetMeshName(){	return	this->m_sMeshName;	};
	//	创建一个具有33*33个顶点，32*32个TILE的网格。
	int	CreateChunkMesh(	int	chunk_x,	int	chunk_y,	int	iLod	);
	//	设置当前的LOD。
	void	SetLod(	int	iLod	);

public:	//	游戏地形。


public:	//	构造。
	GameTreeain(	int	chunk_x,	int	chunk_y,	int	iLod	);
	~GameTreeain(void);
};
