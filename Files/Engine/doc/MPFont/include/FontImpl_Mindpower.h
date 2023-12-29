#pragma once
#include "FontImpl.h"

class CMPFont;

namespace FontModule
{
	using namespace CEGUI;

	class FontImpl_Mindpower : public FontImpl
	{
	public:
		FontImpl_Mindpower( const string& name, const string& filename, size_t size );
		virtual ~FontImpl_Mindpower();

		virtual bool isCodepointAvailable( utf32 cp );

		virtual size_t drawText( const string& text,
			const Rect& draw_area,
			float z,
			const Rect& clip_rect,
			TextFormatting fmt,
			const ColourRect& colours,
			float x_scale = 1.f,
			float y_scale = 1.f );

		virtual void drawText3D( const string& text,
			const Vector3& pos,
			const colour& colour,
			float scale = 1.f );

		virtual void begin();

		virtual void draw( const string& text, int x, int y, const colour& colour );

		virtual void end();

		virtual void setNativeResolution( const Size &size );

		virtual void notifyScreenResolution( const Size &size );

		virtual float getLineSpacing( float y_scale = 1.f );

		virtual float getFontHeight( float y_scale = 1.f );

		virtual float getBaseline( float y_scale = 1.f );

		virtual float getTextExtent( const string &text, float x_scale = 1.f );

		virtual size_t getCharAtPixel( const string &text, float pixel, float x_scale = 1.f );

		virtual size_t getFormattedLineCount( const string &text, const Rect &format_area, TextFormatting fmt, float y_scale = 1.f );

		virtual float getFormattedTextExtent( const string &text, const Rect &format_area, TextFormatting fmt, float x_scale = 1.f );
	private:

		CMPFont* mFont;
	};
}