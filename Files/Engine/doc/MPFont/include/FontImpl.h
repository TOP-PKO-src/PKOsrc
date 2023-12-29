#pragma once
#include "FontPrerequisite.h"

namespace FontModule
{
	using namespace CEGUI;

	// Use bridge pattern
	class FontImpl
	{
	public:
		FontImpl();
		virtual ~FontImpl();

		// This function is only implemented in CEGUI.
		virtual bool isCodepointAvailable( utf32 cp ) = 0;

		// This function is implemented either in CEGUI or in MindPower.
		virtual size_t drawText( const string& text,
			const Rect& draw_area,
			float z,
			const Rect& clip_rect,
			TextFormatting fmt,
			const ColourRect& colours,
			float x_scale = 1.f,
			float y_scale = 1.f ) = 0;

		// This function is only implemeted in mindpower engine.
		virtual void drawText3D( const string& text,
			const Vector3& pos,
			const colour& colour,
			float scale = 1.f ) = 0;

		// This function is only implemeted in mindpower engine.
		virtual void begin() = 0;

		// This function is only implemeted in mindpower engine.
		virtual void draw( const string& text, int x, int y, const colour& colour ) = 0;

		// This function is only implemeted in mindpower engine.
		virtual void end() = 0;

		// This function is only implemented in CEGUI.
		virtual void setNativeResolution( const Size &size ) = 0;

		// This function is only implemented in CEGUI.
		virtual void notifyScreenResolution( const Size &size ) = 0;

		// This function is only implemented in CEGUI.
		virtual float getLineSpacing( float y_scale = 1.f ) = 0;

		virtual float getFontHeight( float y_scale = 1.f ) = 0;

		virtual float getBaseline( float y_scale = 1.f ) = 0;

		virtual float getTextExtent( const string &text, float x_scale = 1.f ) = 0;

		// This function is only implemented in CEGUI.
		virtual size_t getCharAtPixel( const string &text, float pixel, float x_scale = 1.f ) = 0;

		// This function is only implemented in CEGUI.
		virtual size_t getFormattedLineCount( const string &text, const Rect &format_area, TextFormatting fmt, float x_scale = 1.f ) = 0;

		// This function is only implemented in CEGUI.
		virtual float getFormattedTextExtent( const string &text, const Rect &format_area, TextFormatting fmt, float x_scale = 1.f ) = 0;
	};
}