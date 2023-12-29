#include "FontImpl_Mindpower.h"

#include "StdAfx.h"

#include "MPModelEff.h"
#include "mpfont.h"
#include "MPRender.h"
#include "MPResManger.h"

#include "lwIUtil.h"
#include "lwPredefinition.h"

namespace FontModule
{
	D3DCOLOR makeD3DColour( const colour& aColour )
	{
		return D3DCOLOR_ARGB(
			int( aColour.getAlpha() * 255 ),
			int( aColour.getRed() * 255 ),
			int( aColour.getGreen() * 255 ),
			int( aColour.getBlue() * 255 ) );
	}

	FontImpl_Mindpower::FontImpl_Mindpower( const string& name, const string& filename, size_t size )
	{
		mFont = new CMPFont;
		mFont->CreateFont( &g_Render, const_cast <char *> ( filename.c_str() ), size );
		mFont->BindingRes( &ResMgr );
	}

	FontImpl_Mindpower::~FontImpl_Mindpower()
	{
		delete mFont;
	}

	bool FontImpl_Mindpower::isCodepointAvailable(utf32 cp)
	{
		return true;
	}

	size_t FontImpl_Mindpower::drawText( const string& text,
		const Rect& draw_area,
		float z,
		const Rect& clip_rect,
		TextFormatting fmt,
		const ColourRect& colours,
		float x_scale,
		float y_scale )
	{
		mFont->DrawText( const_cast <char *> ( text.c_str() ),
			draw_area.d_left, draw_area.d_top, makeD3DColour( colours.d_bottom_left ), x_scale );

		return 0;
	}

	void FontImpl_Mindpower::drawText3D( const string& text,
		const Vector3& pos,
		const colour& colour,
		float scale )
	{
		mFont->Draw3DText( const_cast <char *> ( text.c_str() ),
			D3DXVECTOR3( pos.d_x, pos.d_y, pos.d_y ),
			makeD3DColour( colour ),
			scale );
	}

	void FontImpl_Mindpower::setNativeResolution( const Size &size )
	{
	}

	void FontImpl_Mindpower::notifyScreenResolution( const Size &size )
	{
	}

	float FontImpl_Mindpower::getLineSpacing( float y_scale )
	{
		return 0.f;
	}

	float FontImpl_Mindpower::getFontHeight( float y_scale )
	{
		SIZE size;
		mFont->GetTextSize( "abcdefg", &size, y_scale );
		return size.cy;
	}

	float FontImpl_Mindpower::getBaseline( float y_scale )
	{
		return 0.f;
	}

	float FontImpl_Mindpower::getTextExtent( const string &text, float x_scale )
	{
		SIZE size;
		mFont->GetTextSize( const_cast<char*> ( text.c_str() ), &size, x_scale );
		return size.cx;
	}

	size_t FontImpl_Mindpower::getCharAtPixel( const string &text, float pixel, float x_scale )
	{
		return 0;
	}

	size_t FontImpl_Mindpower::getFormattedLineCount( const string &text, const Rect &format_area, TextFormatting fmt, float x_scale )
	{
		SIZE size;
		mFont->GetTextSize( const_cast<char*> ( text.c_str() ), &size );
		return size.cy / getFontHeight();
	}

	float FontImpl_Mindpower::getFormattedTextExtent( const string &text, const Rect &format_area, TextFormatting fmt, float x_scale )
	{
		return getTextExtent( text, x_scale );
	}

	void FontImpl_Mindpower::begin()
	{
		mFont->Begin();
	}

	void FontImpl_Mindpower::draw( const string& text, int x, int y, const colour& colour )
	{
		mFont->Draw( const_cast<char*> ( text.c_str() ), x, y, makeD3DColour( colour ) );
	}

	void FontImpl_Mindpower::end()
	{
		mFont->End();
	}
}