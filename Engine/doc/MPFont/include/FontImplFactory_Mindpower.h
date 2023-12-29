#pragma once
#include "FontImplFactory.h"
#include "Singleton.h"

namespace FontModule
{
	class FontImplFactory_Mindpower : public FontImplFactory, public Singleton <FontImplFactory_Mindpower>
	{
	public:
		virtual FontImpl* createFont( const string& name, const string& filename, size_t size );

		static FontImplFactory_Mindpower& getSingleton( void );
		static FontImplFactory_Mindpower* getSingletonPtr( void );
	};
}