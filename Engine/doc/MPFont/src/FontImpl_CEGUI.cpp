#include "FontImpl_CEGUI.h"
#include <CEGUIFontManager.h>
#include <CEGUIFont.h>
#include <CEGUIExceptions.h>
#include <CEGUI.h>

namespace FontModule
{
	extern CEGUI::String ansiToUTf8( const string& str );

	FontImpl_CEGUI::FontImpl_CEGUI( const string& name, const string& filename )
	{
		try
		{
			mFont = FontManager::getSingleton().createFont( filename,
				CEGUI::Font::getDefaultResourceGroup() );
			mFont->load();
		}
		catch( CEGUI::Exception& excep )
		{
			_destroy();

			CEGUI::String error = excep.getMessage();
			throw;
		}
	}

	FontImpl_CEGUI::~FontImpl_CEGUI()
	{
		_destroy();
	}

	void FontImpl_CEGUI::_destroy()
	{
		try
		{
			FontManager::getSingleton().destroyFont( mFont );
		}
		catch( CEGUI::Exception& excep )
		{
			CEGUI::String error = excep.getMessage();
		}
	}

	bool FontImpl_CEGUI::isCodepointAvailable(utf32 cp)
	{
		return mFont->isCodepointAvailable( cp );
	}

	size_t FontImpl_CEGUI::drawText( const string& text,
		const Rect& draw_area,
		float z,
		const Rect& clip_rect,
		TextFormatting fmt,
		const ColourRect& colours,
		float x_scale,
		float y_scale )
	{
		return mFont->drawText( ansiToUTf8( text ),
			draw_area, z, clip_rect, fmt, colours, x_scale, y_scale );
	}

	void FontImpl_CEGUI::drawText3D( const string& text,
		const Vector3& pos,
		const colour& colour,
		float scale )
	{
	}

	void FontImpl_CEGUI::setNativeResolution( const Size &size )
	{
		mFont->setNativeResolution( size );
	}

	void FontImpl_CEGUI::notifyScreenResolution( const Size &size )
	{
		mFont->notifyScreenResolution( size );
	}

	float FontImpl_CEGUI::getLineSpacing( float y_scale )
	{
		return mFont->getLineSpacing( y_scale );
	}

	float FontImpl_CEGUI::getFontHeight( float y_scale )
	{
		return mFont->getFontHeight( y_scale );
	}

	float FontImpl_CEGUI::getBaseline( float y_scale )
	{
		return mFont->getBaseline( y_scale );
	}

	float FontImpl_CEGUI::getTextExtent( const string &text, float x_scale )
	{
		return mFont->getTextExtent( ansiToUTf8( text ),
			x_scale );
	}

	size_t FontImpl_CEGUI::getCharAtPixel( const string &text, float pixel, float x_scale )
	{
		return mFont->getCharAtPixel( ansiToUTf8( text ),
			pixel, x_scale );
	}

	size_t FontImpl_CEGUI::getFormattedLineCount( const string &text, const Rect &format_area, TextFormatting fmt, float x_scale )
	{
		return mFont->getFormattedLineCount( ansiToUTf8( text ),
			format_area, fmt, x_scale );
	}

	float FontImpl_CEGUI::getFormattedTextExtent( const string &text, const Rect &format_area, TextFormatting fmt, float x_scale )
	{
		return mFont->getFormattedTextExtent( ansiToUTf8( text ),
			format_area, fmt, x_scale );
	}

	void FontImpl_CEGUI::begin()
	{
	}

	void FontImpl_CEGUI::draw( const string& text, int x, int y, const colour& colour )
	{
		this->drawText( text,
			Rect( x, y,
			std::numeric_limits<float>::max(),
			std::numeric_limits<float>::max() ),
			0.f,
			Rect( 0, 0,
			std::numeric_limits<float>::max(),
			std::numeric_limits<float>::max() ),
			LeftAligned,
			colour );
	}

	void FontImpl_CEGUI::end()
	{
	}
}

#include <windows.h>

namespace FontModule
{
	CEGUI::String ansiToUTf8( const string& str )
	{
		typedef std::map < std::string, CEGUI::String > StringPairList;
		static StringPairList memento;
		if( memento.find( str ) != memento.end() )
		{
			return memento[ str ];
		}

		int lengthUnicode = MultiByteToWideChar( CP_ACP, 0, str.c_str(), str.length(), NULL, 0 );
		wchar_t* wcharBuffer = 0;
		if( lengthUnicode )
		{
			wcharBuffer = new wchar_t[ lengthUnicode ];
		}
		MultiByteToWideChar( CP_ACP, 0, str.c_str(), str.length(), wcharBuffer, lengthUnicode );

		int lengthAnsiString = WideCharToMultiByte( CP_UTF8, 0, wcharBuffer, lengthUnicode, NULL, 0, NULL, NULL );
		char* charBuffer = 0;
		if( lengthAnsiString )
		{
			charBuffer = new char[ lengthAnsiString ];
		}
		WideCharToMultiByte( CP_UTF8, 0, wcharBuffer, lengthUnicode, charBuffer, lengthAnsiString, NULL, NULL );

		CEGUI::String ceguiString;
		if( charBuffer )
		{
			ceguiString = CEGUI::String(
				reinterpret_cast < CEGUI::utf8* > ( charBuffer ), lengthAnsiString );
		}
		delete [] wcharBuffer;
		delete [] charBuffer;

		memento[ str ] = ceguiString;
		return ceguiString;
	}
}