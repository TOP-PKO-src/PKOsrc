#include	"StdAfx.h"
#include	".\gametreeain.h"
#include	"ogremeshmanager.h"
#include	"OgreHardwareBuffer.h"
#include	"ogreResourceGroupManager.h"
#include	"ogre.h"
using	namespace	Ogre;

GameTreeain::GameTreeain(	int	chunk_x,	int	chunk_y,	int	iLod	)
{
	m_sMeshName[0]	=	0;
}

GameTreeain::~GameTreeain(void)
{
	//	HardwareBufferManager::getSingleton().re
	if(	m_sMeshName[0]	)
		Ogre::MeshManager::getSingleton().remove(	m_sMeshName	);

	m_sMeshName[0]	=	0;
}

//	拷贝顶点缓冲。
int	GameTreeain::CopyVertexBufferData(	Ogre::VertexBufferBinding*	vbind,	int	iLod	)
{
	//	顶点缓冲区信息。
	static	float	pos[	CHUNK_X_VERTEX_COUNT	*	CHUNK_Y_VERTEX_COUNT	*	3	*	sizeof(float)	];

	//
	int		iBind	=	0;
	int		iOrder	=	0;
	int		iVCount	=	(	CHUNK_X_VERTEX_COUNT	-	1	)	/	(	1	<<	iLod	)	+	1;
	int		iTileSize	=	1	<<	iLod;

	for(	int	y	=	0;	y	<	CHUNK_Y_VERTEX_COUNT;	y	++	)
	{
		for(	int	x	=	0;	x	<	CHUNK_X_VERTEX_COUNT;	x	++	)
		{
			pos[ iOrder++ ]	=	(x	-	16)	*	100;
			pos[ iOrder++ ]	=	this->ma_Height[x][y];
			pos[ iOrder++ ]	=	(y	-	16)	*	100;
		}
	};

	posVertexBuffer->writeData(		0,	iOrder * sizeof(float),pos,	true	);
	vbind->setBinding(	iBind	++,	posVertexBuffer		);

	//	权重信息。
	static	float	weight[	CHUNK_X_VERTEX_COUNT * CHUNK_Y_VERTEX_COUNT * 4 * sizeof(float) ];

	iOrder	=	0;

	for(	int	y	=	0;	y	<	CHUNK_Y_VERTEX_COUNT;	y	++	)
	{
		for(	int	x	=	0;	x	<	CHUNK_X_VERTEX_COUNT;	x	++	)
		{
			for(	int	j	=	0;	j	<	4;	j	++	)
				weight[ iOrder++ ]	=	this->ma_Weight[x][y][j];
		}
	};

	weightVertexBuffer->writeData(	0,	4*CHUNK_X_VERTEX_COUNT*CHUNK_Y_VERTEX_COUNT	*	sizeof(float),	weight,	true	);
	vbind->setBinding(	iBind	++,	weightVertexBuffer	);

	//	颜色信息。
	static	DWORD	col[	CHUNK_X_VERTEX_COUNT * CHUNK_Y_VERTEX_COUNT ];
	iOrder	=	0;

	for(	int	y	=	0;	y	<	CHUNK_Y_VERTEX_COUNT;	y	++	)
	{
		for(	int	x	=	0;	x	<	CHUNK_X_VERTEX_COUNT;	x	++	)
		{
			col[	iOrder	++	]	=	this->ma_Color[x][y];
		}
	}

	colorVertexBuffer->writeData(	0,	CHUNK_X_VERTEX_COUNT*CHUNK_Y_VERTEX_COUNT *	sizeof(DWORD),	col,	true	);
	vbind->setBinding(	iBind	++,	colorVertexBuffer	);

	//	纹理缓冲区。
	static	float	tex[  CHUNK_X_VERTEX_COUNT * CHUNK_Y_VERTEX_COUNT ];
	iOrder	=	0;

	for(	int	y	=	0;	y	<	CHUNK_Y_VERTEX_COUNT;	y	++	)
	{
		for(	int	x	=	0;	x	<	CHUNK_X_VERTEX_COUNT;	x	++	)
		{
			tex[	iOrder++ ]	=	x	*	0.125f;
			tex[	iOrder++ ]	=	y	*	0.125f;
		}
	}
	texcoordsVertexBuffer->writeData(	0,	iOrder*sizeof(float),	tex,	true	);
	vbind->setBinding(	iBind++,	texcoordsVertexBuffer	);

	//
	return	0;
};

//	拷贝索引缓冲。
int	GameTreeain::CopyIndexBufferData(	int	iLod	)
{
		//
		int	iOrder	=	0;
		int	iVCount	=	3*32*32*2 + 3*16*16*2 + 3*8*8*2 + 3*4*4*2;	//	四层LOD的所有顶点。

		unsigned short *faceVertexIndices = (unsigned short*)indexBuffer->lock(	0,	iVCount,	Ogre::HardwareBuffer::HBL_NORMAL	);

		//	拷贝第一层。
		for(	int	y	=	0 ; y	<	32;	 y++	) 
		{
			for(	int	x	=	0;	x	<	32;	x++	)
			{
				unsigned	short	xmin_ymin	=	y	*	33	+	x;
				unsigned	short	xmin_ymax	=	xmin_ymin	+	33;
				unsigned	short	xmax_ymin	=	xmin_ymin	+	1;
				unsigned	short	xmax_ymax	=	xmin_ymax	+	1;

				faceVertexIndices[ iOrder++ ]	=	xmin_ymin;
				faceVertexIndices[ iOrder++ ]	=	xmax_ymax;
				faceVertexIndices[ iOrder++ ]	=	xmax_ymin;

				faceVertexIndices[ iOrder++ ]	=	xmin_ymin;
				faceVertexIndices[ iOrder++ ]	=	xmin_ymax;
				faceVertexIndices[ iOrder++ ]	=	xmax_ymax;
			}
		}

		//	拷贝第二层。
		for(	int	y	=	0 ; y	<	16;	 y++	) 
		{
			for(	int	x	=	0;	x	<	16;	x++	)
			{
				unsigned	short	xmin_ymin	=	(y	*	2)	*	33	+	(x	*	2);
				unsigned	short	xmin_ymax	=	xmin_ymin	+	33	*	2;
				unsigned	short	xmax_ymin	=	xmin_ymin	+	2;
				unsigned	short	xmax_ymax	=	xmin_ymax	+	2;

				faceVertexIndices[ iOrder++ ]	=	xmin_ymin;
				faceVertexIndices[ iOrder++ ]	=	xmax_ymax;
				faceVertexIndices[ iOrder++ ]	=	xmax_ymin;

				faceVertexIndices[ iOrder++ ]	=	xmin_ymin;
				faceVertexIndices[ iOrder++ ]	=	xmin_ymax;
				faceVertexIndices[ iOrder++ ]	=	xmax_ymax;
			}
		}

		//	拷贝第三层。
		for(	int	y	=	0 ; y	<	8;	 y++	) 
		{
			for(	int	x	=	0;	x	<	8;	x++	)
			{
				unsigned	short	xmin_ymin	=	(y	*	4)	*	33	+	(x	*	4);
				unsigned	short	xmin_ymax	=	xmin_ymin	+	33	*	4;
				unsigned	short	xmax_ymin	=	xmin_ymin	+	4;
				unsigned	short	xmax_ymax	=	xmin_ymax	+	4;

				faceVertexIndices[ iOrder++ ]	=	xmin_ymin;
				faceVertexIndices[ iOrder++ ]	=	xmax_ymax;
				faceVertexIndices[ iOrder++ ]	=	xmax_ymin;

				faceVertexIndices[ iOrder++ ]	=	xmin_ymin;
				faceVertexIndices[ iOrder++ ]	=	xmin_ymax;
				faceVertexIndices[ iOrder++ ]	=	xmax_ymax;
			}
		}

		//	拷贝第四层。
		for(	int	y	=	0 ; y	<	4;	 y++	) 
		{
			for(	int	x	=	0;	x	<	4;	x++	)
			{
				unsigned	short	xmin_ymin	=	(y	*	8)	*	33	+	(x	*	8);
				unsigned	short	xmin_ymax	=	xmin_ymin	+	33	*	8;
				unsigned	short	xmax_ymin	=	xmin_ymin	+	8;
				unsigned	short	xmax_ymax	=	xmin_ymax	+	8;

				faceVertexIndices[ iOrder++ ]	=	xmin_ymin;
				faceVertexIndices[ iOrder++ ]	=	xmax_ymax;
				faceVertexIndices[ iOrder++ ]	=	xmax_ymin;

				faceVertexIndices[ iOrder++ ]	=	xmin_ymin;
				faceVertexIndices[ iOrder++ ]	=	xmin_ymax;
				faceVertexIndices[ iOrder++ ]	=	xmax_ymax;
			}
		}

		indexBuffer->unlock();

		//
		SetLod(	iLod	);

		//
		return	0;
};

//	创建一个具有33*33个顶点，32*32个TILE的网格。
int	GameTreeain::CreateChunkMesh(	int	chunk_x,	int	chunk_y,	int	iLod	)
{
	//	创建OGRE网格和子网格。
	sprintf(	m_sMeshName,	"chunk-%d-%d",	chunk_x,	chunk_y	);
	Ogre::MeshPtr	mesh	=	Ogre::MeshManager::getSingleton().createManual(	m_sMeshName,	Ogre::ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME	);
	subMesh	=	mesh->createSubMesh();
	subMesh	->	useSharedVertices	=	false;

	//	创建顶点缓冲区。
	subMesh->vertexData	=	new	Ogre::VertexData();
	subMesh->vertexData->vertexStart	=	0;
	subMesh->vertexData->vertexCount	=	CHUNK_X_VERTEX_COUNT*CHUNK_Y_VERTEX_COUNT;

	//	创建顶点定义。
	VertexDeclaration*		vdecl = subMesh->vertexData->vertexDeclaration;
	int	iLevel	=	0;
	int	iOffset	=	0;

	//	创建顶点缓冲区,拷贝顶点数据,并进行捆绑。
	vdecl->addElement(	iLevel++,	iOffset,	VET_FLOAT3,			VES_POSITION	);			//	增加坐标定义。
	posVertexBuffer	=	HardwareBufferManager::getSingleton().createVertexBuffer(	
		3	*	sizeof(float),
		//	this->m_iVCount	*	this->m_iVCount,
		CHUNK_X_VERTEX_COUNT	*	CHUNK_Y_VERTEX_COUNT,
		Ogre::HardwareBuffer::HBU_STATIC
		);

	//	创建混合权重区,拷贝权重数据，并进行捆绑。
	iOffset	+=	VertexElement::getTypeSize(	VET_FLOAT4	);	iOffset	=	0;
	vdecl->addElement(	iLevel++,	iOffset,	VET_FLOAT4,		VES_BLEND_WEIGHTS	);			//	增加权重定义。
	weightVertexBuffer	=	HardwareBufferManager::getSingleton().createVertexBuffer(
		4	*	sizeof(float),
		CHUNK_X_VERTEX_COUNT	*	CHUNK_Y_VERTEX_COUNT,
		Ogre::HardwareBuffer::HBU_STATIC
		);

	//	创建颜色缓冲区，拷贝颜色数据，并进行捆绑。
	iOffset	+=	VertexElement::getTypeSize(	VET_COLOUR	);	iOffset	=	0;
	vdecl->addElement(	iLevel++,	iOffset,	VET_COLOUR,	VES_DIFFUSE	);				//	增加颜色定义。
	colorVertexBuffer	=	HardwareBufferManager::getSingleton().createVertexBuffer(
		4,
		//m_iVCount*m_iVCount,
		CHUNK_X_VERTEX_COUNT	*	CHUNK_Y_VERTEX_COUNT,
		Ogre::HardwareBuffer::HBU_STATIC
		);

	//	创建纹理坐标缓冲区，拷贝纹理数据，并进行捆绑。
	iOffset	+=	VertexElement::getTypeSize(	VET_COLOUR_ARGB	);	iOffset	=	0;
	vdecl->addElement(	iLevel++,	iOffset,	VET_FLOAT2,			VES_TEXTURE_COORDINATES	);	//	增加纹理坐标定义。
	texcoordsVertexBuffer	=	HardwareBufferManager::getSingleton().createVertexBuffer(	
		2*sizeof(float),	
		//m_iVCount*m_iVCount,
		CHUNK_X_VERTEX_COUNT	*	CHUNK_Y_VERTEX_COUNT,
		Ogre::HardwareBuffer::HBU_STATIC
		);

	CALL(	CopyVertexBufferData(	subMesh->vertexData->vertexBufferBinding,	iLod	)	);

	//	填充索引缓冲内容。
	indexBuffer	=	HardwareBufferManager::getSingleton().createIndexBuffer(
		HardwareIndexBuffer::IT_16BIT,
		3*32*32*2 + 3*16*16*2 + 3*8*8*2 + 3*4*4*2,	//	四层LOD的所有顶点。
		Ogre::HardwareBuffer::HBU_STATIC,
		true
		);

	CALL(	CopyIndexBufferData(	iLod	)	);

	SetLod(	iLod	);

	//	计算范围盒。
	AxisAlignedBox	meshBounds( -1600,0,-1600,1600,3000,1600);
	mesh->_setBounds( meshBounds );

	//	
	mesh->load();
	mesh->touch();

	return	0;
};

//	设置当前的LOD。
void	GameTreeain::SetLod(	int	iLod	)
{
	assert(	iLod	>=	0	&&	iLod	<	4	);
	int	start[]={	0,32*32*3*2,32*32*3*2+16*16*3*2,32*32*3*2+16*16*3*2+8*8*3*2	};	
	int	count[]={	32*32*3*2,	16*16*3*2,	8*8*3*2,	4*4*3*2	};
	subMesh->indexData->indexBuffer	=	indexBuffer;
	subMesh->indexData->indexStart	=	start[	iLod	];
	subMesh->indexData->indexCount	=	count[	iLod	];
};
