
struct	VSOUT
{
	float4	pos:	POSITION;
	float4	col:	COLOR0;
	float4	ble:	COLOR1;
	float2	tex:	TEXCOORD0;
};

VSOUT	main(
		in	float4	pos:	POSITION,
		in	float4	ble:	BLENDWEIGHT,
		in	float4	Col:	COLOR,
		in	float2	tex:	TEXCOORD0,
		uniform float4x4 worldViewProj
		)
{
	VSOUT	vo;
	
	vo.pos	=	mul(	worldViewProj,	pos	);
	vo.col	=	Col;
	vo.tex	=	tex;
	vo.ble	=	ble;

	return	vo;
};
	
