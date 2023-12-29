#pragma once
#include "STLprerequisite.h"

namespace FontModule
{
	class FontImpl;
	class FontSystem;

	// Use bridge pattern
	class _FONT_Export Font
	{
	public:
		friend FontSystem;
	private:
		// Only allow FontSystem to create it
		Font( FontImpl* fontImpl );
	public:
		virtual ~Font();

		bool DrawText( const char* text,
			int x, int y,
			D3DXCOLOR color = 0xFFFFFFFF,
			float scale = 1.0f,
			DWORD* dwTime = NULL );

		bool DrawTextShadow( const char* text,
			int x1, int y1, int x2, int y2,
			D3DXCOLOR color1,
			D3DXCOLOR color2 );

		bool Draw3DText( const char* text,
			D3DXVECTOR3& pos,
			D3DXCOLOR color = 0xFFFFFFFF,
			float scale = 1.f );

		void Begin();
		void Draw( const char* text,
			int x, int y,
			D3DXCOLOR color );
		void End();

		SIZE* GetTextSize( const char* text,
			SIZE* size,
			float scale = 1.0f );

		void notifyScreenResolution( size_t width, size_t height );

	private:
		static void setFontOffsetX( int value )
		{
			fontOffsetX = value;
		}
		static void setFontOffsetY( int value )
		{
			fontOffsetY = value;
		}

		static int fontOffsetX;
		static int fontOffsetY;
		FontImpl* mFontImpl;
	};
}