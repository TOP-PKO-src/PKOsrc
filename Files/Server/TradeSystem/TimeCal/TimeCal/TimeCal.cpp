// TimeCal.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"
#include <time.h>

int PrintDate(char* buff)
{
	time_t      beginTime; 
	int len = (int)strlen(buff);
	if(0 != len && 14 != len)      //  日期格式20050101120100
	{
		printf("Begin Time Format Error.\n");
		system("pause");
		return -1;
	}
	if(len)
	{
		char year[5] = {0};
		char month[3] = {0};
		char day[3] = {0};
		char hour[3] = {0};
		char minute[3] = {0};
		char second[3] = {0};
		year[0] = buff[0];
		year[1] = buff[1];
		year[2] = buff[2];
		year[3] = buff[3];
		month[0] = buff[4];
		month[1] = buff[5];
		day[0] = buff[6];
		day[1] = buff[7];
		hour[0] = buff[8];
		hour[1] = buff[9];
		minute[0] = buff[10];
		minute[1] = buff[11];
		second[0] = buff[12];
		second[1] = buff[13];

		tm t;
		t.tm_year = atol(year) - 1900;
		t.tm_mon = atol(month) - 1;
		t.tm_mday = atol(day);
		t.tm_hour = atol(hour);
		t.tm_min = atol(minute);
		t.tm_sec = atol(second);

		beginTime = mktime(&t);
	}

	printf("beginTime = %li\n",beginTime);
	return 0;
}


int _tmain(int argc, _TCHAR* argv[])
{
Start:
	printf("Foarmt[20080318100000]\n");
	char buff[255] = {0};
	scanf("%s",buff);

	if(PrintDate(buff) == -1)
	{
		goto Start;
	}

	system("pause");

	return 0;
}

