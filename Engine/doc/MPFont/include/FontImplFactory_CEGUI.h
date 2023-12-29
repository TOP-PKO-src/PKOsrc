#pragma once
#include "FontImplFactory.h"
#include "Singleton.h"

namespace FontModule
{
	class FontImplFactory_CEGUI : public FontImplFactory, public Singleton <FontImplFactory_CEGUI>
	{
	public:
		virtual FontImpl* createFont( const string& name, const string& filename, size_t size );

		static FontImplFactory_CEGUI& getSingleton( void );
		static FontImplFactory_CEGUI* getSingletonPtr( void );
	};
}