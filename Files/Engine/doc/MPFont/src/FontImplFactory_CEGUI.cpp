#include "FontImplFactory_CEGUI.h"
#include "FontImpl_CEGUI.h"

namespace FontModule
{
	template <> FontImplFactory_CEGUI * Singleton <FontImplFactory_CEGUI>::ms_Singleton = 0;

	FontImplFactory_CEGUI singleInstance;

	FontImplFactory_CEGUI& FontImplFactory_CEGUI::getSingleton( void )
	{
		assert( ms_Singleton );
		return ( *ms_Singleton );
	}

	FontImplFactory_CEGUI* FontImplFactory_CEGUI::getSingletonPtr( void )
	{
		return ms_Singleton;
	}

	FontImpl* FontImplFactory_CEGUI::createFont(
		const string& name,
		const string& filename,
		size_t size )
	{
		return new FontImpl_CEGUI( name, filename );
	}
}