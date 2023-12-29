// LocaleGet.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"
#include <locale.h>

CResourceBundleManage g_ResourceBundleManage("LocaleGet.loc"); 

void ListLanguage()
{
	
	UErrorCode status = U_ZERO_ERROR;
	UConverter *defaultConv = ucnv_open(NULL, &status); //ucnv_open("cp936", &status); // windows-936-2000

	const char* name = ucnv_getName(defaultConv, &status);
	printf("Current CodePage is %s\n",name);


	int32_t count;
	int32_t i;

	count = ucnv_countAvailable();
	printf("Available converters: %d\n", count);

	for(i=0;i<count;i++) 
	{
		printf("%s ", ucnv_getAvailableName(i));
	}

	printf("\n==============================\n");
	printf("Available languages: %d\n", count);

	const	Locale* locale =  Locale::getAvailableLocales(count);

	FILE* file = fopen("c:\\test.txt","w");

	for(i=0;i<count;i++)
	{
		fprintf(file, "%s,%s,%s\r\n",locale[i].getCountry(),locale[i].getLanguage(),locale[i].getName());
		printf("%s ,%s,%s ",locale[i].getCountry(),locale[i].getLanguage(),locale[i].getName());
		locale[i].getCountry();
		locale[i].getLanguage();
		locale[i].getName();
	}

	fclose(file);

	printf("\n");
}


int _tmain(int argc, _TCHAR* argv[])
{
	//setlocale( LC_ALL, "China" );

	//printf("²âÊÔ");
	printf("%s",RES_STRING(SG_TEST_00001));
	//printf("%s",RES_STRING(LUA_MISSIONSCRIPT02_LUA_001212));

	//ListLanguage();

	getchar();
	//system("pause");
	return 0;
}

