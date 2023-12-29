#include "FontImplFactory_Mindpower.h"
#include "FontImpl_Mindpower.h"

namespace FontModule
{
	template <> FontImplFactory_Mindpower * Singleton <FontImplFactory_Mindpower>::ms_Singleton = 0;

	FontImplFactory_Mindpower singleInstance;

	FontImplFactory_Mindpower& FontImplFactory_Mindpower::getSingleton( void )
	{
		assert( ms_Singleton );
		return ( *ms_Singleton );
	}

	FontImplFactory_Mindpower* FontImplFactory_Mindpower::getSingletonPtr( void )
	{
		return ms_Singleton;
	}

	FontImpl* FontImplFactory_Mindpower::createFont(
		const string& name,
		const string& filename,
		size_t size )
	{
		return new FontImpl_Mindpower( name, filename, size );
	}
}