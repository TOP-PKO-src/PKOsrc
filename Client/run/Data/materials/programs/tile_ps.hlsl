sampler2D	s1:register(s0);
sampler2D	s2:register(s1);
sampler2D	s3:register(s2);
sampler2D	s4:register(s3);

float	x	=	0.25;

void	main(
		in	float4	Col:	COLOR0,
		in	float4	ble:	COLOR1,
		in	float2	tex:	TEXCOORD0,
		out	float4	vc:	COLOR
		)
{
	float4	r	=	ble.r;
	float4	g	=	ble.g;
	float4	b	=	ble.b;
	float4	a	=	ble.a;

	r.a=g.a=b.a=a.a=1.0f;

	//	vc	=	tex2D(s1,tex) *r+tex2D(s2,tex)*g+tex2D(s3,tex)*b+tex2D(s4,tex)*a;
	vc	=	tex2D( s1,tex)*r*Col+tex2D( s2,tex)*g*Col+tex2D( s3,tex)*b*Col+tex2D( s4,tex)*a*Col;
};
