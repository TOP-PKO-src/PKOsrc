#pragma once
#include "STLPrerequisite.h"
#include "Singleton.h"

namespace CEGUI
{
	class Renderer;
}

namespace FontModule
{
	class FontImplFactory;
	class Font;

	class _FONT_Export FontSystem : public FontModule::Singleton <FontSystem>
	{
	public:
		FontSystem();
		~FontSystem();

		FontModule::Font* createFont( const string& name, const string& filename, size_t size = 12 );
		FontModule::Font* getFont( const string& name );

		void init();
		void update( float timeElapsed );
		void notifyScreenResolution( size_t width, size_t height );

		static FontSystem& getSingleton( void );
		static FontSystem* getSingletonPtr( void );

	private:
		void _readOption();
		void _shutdown();

		CEGUI::Renderer* mGUIRenderer;
		FontImplFactory* mFontImplFactory;

		typedef map < string, FontModule::Font* > NameFontPairList;
		typedef map < string, string > NameValuePairList;
		NameFontPairList mFontList;
		NameValuePairList mOptions;
	};
}