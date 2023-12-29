#include <d3dx8.h>
#include "FontAbstract.h"
#include "FontImpl.h"
#include "FontImplFactory.h"

namespace FontModule
{
	int Font::fontOffsetX = 0;
	int Font::fontOffsetY = 0;

	CEGUI::colour makeColour( const D3DXCOLOR& aColour )
	{
		return colour( aColour.r,
			aColour.g,
			aColour.b,
			aColour.a );
	}

	Font::Font( FontImpl* fontImpl )
	{
		mFontImpl = fontImpl;
	}

	Font::~Font()
	{
		delete mFontImpl;
	}

	bool Font::DrawText( const char* text,
		int x, int y,
		D3DXCOLOR color,
		float scale,
		DWORD* dwTime )
	{
		mFontImpl->drawText( string( text ),
			Rect( x + fontOffsetX, y + fontOffsetY,
			std::numeric_limits<float>::max(),
			std::numeric_limits<float>::max() ),
			0.f,
			Rect( 0, 0,
			std::numeric_limits<float>::max(),
			std::numeric_limits<float>::max() ),
			LeftAligned,
			makeColour( color ),
			scale,
			scale );

		return true;
	}

	bool Font::DrawTextShadow( const char* text,
		int x1, int y1, int x2, int y2,
		D3DXCOLOR color1,
		D3DXCOLOR color2 )
	{
		this->DrawText( text, x1, y1, color1 );
		this->DrawText( text, x2, y2, color2 );
		return true;
	}

	bool Font::Draw3DText( const char* text,
		D3DXVECTOR3& pos,
		D3DXCOLOR color,
		float scale )
	{
		mFontImpl->drawText3D( string( text ),
			Vector3( pos.x, pos.y, pos.z ),
			makeColour( color ),
			scale );
		return true;
	}

	SIZE* Font::GetTextSize( const char* text,
		SIZE* size,
		float scale )
	{
		size->cx = mFontImpl->getFormattedTextExtent(
			string( text ),
			Rect( 0, 0,
			std::numeric_limits<float>::max(),
			std::numeric_limits<float>::max() ),
			LeftAligned );
		size->cy = mFontImpl->getFontHeight( scale ) *
			mFontImpl->getFormattedLineCount( string( text ),
			Rect( 0, 0,
			std::numeric_limits<float>::max(),
			std::numeric_limits<float>::max() ),
			LeftAligned );
		return 0;
	}

	void Font::notifyScreenResolution( size_t width, size_t height )
	{
		CEGUI::Size size;
		size.d_height = height;
		size.d_width = width;
		mFontImpl->notifyScreenResolution( size );
	}

	void Font::Begin()
	{
		mFontImpl->begin();
	}

	void Font::Draw( const char* text,
		int x, int y,
		D3DXCOLOR color )
	{
		mFontImpl->draw( string( text ),
			x + fontOffsetX, y + fontOffsetY,
			makeColour( color ) );
	}

	void Font::End()
	{
		mFontImpl->end();
	}
}