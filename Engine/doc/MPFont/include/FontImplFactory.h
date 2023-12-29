#pragma once
#include "FontPrerequisite.h"

namespace FontModule
{
	class FontImpl;

	class FontImplFactory
	{
	public:
		virtual FontImpl* createFont( const string& name, const string& filename, size_t size ) = 0;
	};
}