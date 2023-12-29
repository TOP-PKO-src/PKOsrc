#include "FontSystem.h"

#include <d3dx8.h>
#include <CEGUI.h>
#include <CEGUIDefaultResourceProvider.h>
#include <RendererModules/directx81GUIRenderer/renderer.h>

#include "FontAbstract.h"
#include "FontImplFactory_CEGUI.h"
#include "FontImplFactory_MindPower.h"
#include "MPRender.h"

namespace FontModule
{
	template <> FontSystem* FontModule::Singleton <FontSystem>::ms_Singleton = 0;

	FontSystem& FontSystem::getSingleton( void )
	{
		assert( ms_Singleton );
		return ( *ms_Singleton );
	}

	FontSystem* FontSystem::getSingletonPtr( void )
	{
		return ms_Singleton;
	}

	FontSystem fontSystemInstance;

	FontSystem::FontSystem()
		: mGUIRenderer( 0 ),
		  mFontImplFactory( 0 )
	{
	}

	FontSystem::~FontSystem()
	{
		_shutdown();
	}

	FontModule::Font* FontSystem::createFont( const string& name, const string& filename, size_t size )
	{
		FontModule::Font* font = 0;
		try
		{
			font = new FontModule::Font(
				mFontImplFactory->createFont( name, filename, size ) );

			mFontList[ name ] = font;
			return font;
		}
		catch( ... )
		{
			delete font;
			font = 0;
		}
		return 0;
	}

	FontModule::Font* FontSystem::getFont( const string& name )
	{
		NameFontPairList::iterator i = mFontList.find( name );
		if( i != mFontList.end() )
			return i->second;
		return 0;
	}

	void FontSystem::init()
	{
		// initialize CEGUI
		if( !mGUIRenderer )
		{
			mGUIRenderer = new CEGUI::DirectX81Renderer( g_Render.GetDevice(), 3000 );
		}

		try
		{
			new CEGUI::System( mGUIRenderer );
		}
		catch( CEGUI::Exception& excep )
		{
			CEGUI::String error = excep.getMessage();
			MessageBox( NULL, error.c_str(), 0, 0 );
		}

		CEGUI::DefaultResourceProvider* rp = static_cast<CEGUI::DefaultResourceProvider*>
			(CEGUI::System::getSingleton().getResourceProvider());

		rp->setResourceGroupDirectory("font", "./font");

		CEGUI::Logger::getSingleton().setLoggingLevel( CEGUI::Informative );

		// Options
		_readOption();
		NameValuePairList::iterator i = mOptions.find( string( "FontImplFactory" ) );
		if( i != mOptions.end() )
		{
			if( i->second == string( "CEGUI" ) )
			{
				mFontImplFactory = new FontImplFactory_CEGUI;
			}
			else if( i->second == string( "Mindpower" ) )
			{
				mFontImplFactory = new FontImplFactory_Mindpower;
			}
		}

		if( !mFontImplFactory )
		{
			mFontImplFactory = new FontImplFactory_Mindpower;
		}

		i = mOptions.find( string( "FontOffsetX" ) );
		if( i != mOptions.end() )
		{
			int value = 0;
			stringstream temp;
			temp << i->second;
			temp >> value;

			FontModule::Font::setFontOffsetX( value );
		}

		i = mOptions.find( string( "FontOffsetY" ) );
		if( i != mOptions.end() )
		{
			int value = 0;
			stringstream temp;
			temp << i->second;
			temp >> value;

			FontModule::Font::setFontOffsetY( value );
		}
	}

	void FontSystem::update( float timeElapsed )
	{
		CEGUI::System::getSingleton().injectTimePulse( timeElapsed );
		CEGUI::System::getSingleton().renderGUI();
	}

	void FontSystem::notifyScreenResolution( size_t width, size_t height )
	{
		for( NameFontPairList::iterator i = mFontList.begin();
			 i != mFontList.end(); ++i )
		{
			i->second->notifyScreenResolution( width, height );
		}
	}

	void FontSystem::_shutdown()
	{
		// cleanup gui system
		delete CEGUI::System::getSingletonPtr();

		if( mGUIRenderer )
		{
			delete mGUIRenderer;
			mGUIRenderer = 0;
		}

		for( NameFontPairList::iterator i = mFontList.begin();
			 i != mFontList.end(); ++i )
		{
			delete i->second;
		}
	}

	void FontSystem::_readOption()
	{
		ifstream file;
		file.open( ".\\scripts\\mindpower.cfg" );

		NameValuePairList::key_type key;
		NameValuePairList::mapped_type value;
		string equalTo;

		while( file )
		{
			file >> key >> equalTo >> value;
			mOptions[ key ] = value;
		}

		file.close();
	}
}