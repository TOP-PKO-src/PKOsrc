// Tool.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"
#include <windows.h>

int _tmain(int argc, _TCHAR* argv[])
{
	STARTUPINFO si;
	PROCESS_INFORMATION pi;

	ZeroMemory( &si, sizeof(si) );
	si.cb = sizeof(si);
	ZeroMemory( &pi, sizeof(pi) );

	SECURITY_ATTRIBUTES se1;
	SECURITY_ATTRIBUTES se2;

	SECURITY_ATTRIBUTES sa;
	sa.nLength = sizeof(SECURITY_ATTRIBUTES);
	SECURITY_DESCRIPTOR sd;

	InitializeSecurityDescriptor(&sd,SECURITY_DESCRIPTOR_REVISION);
	SetSecurityDescriptorDacl(&sd,TRUE,NULL,FALSE);
	sa.bInheritHandle = TRUE;
	sa.lpSecurityDescriptor = &sd;

	// Start the child process. 
	if( !CreateProcess( argv[1],   // No module name (use command line). 
		argv[2], // Command line. 
		&sa,             // Process handle not inheritable. 
		&sa,             // Thread handle not inheritable. 
		//NULL,             // Process handle not inheritable. 
		//NULL,             // Thread handle not inheritable. 
		FALSE,            // Set handle inheritance to FALSE. 
		0,                // No creation flags. 
		NULL,             // Use parent's environment block. 
		argv[3],             // Use parent's starting directory. 
		&si,              // Pointer to STARTUPINFO structure.
		&pi )             // Pointer to PROCESS_INFORMATION structure.
		) 
	{
		printf( "CreateProcess failed (%d).\n", GetLastError() );
	}

	// Wait until child process exits.
	WaitForSingleObject( pi.hProcess, INFINITE );

	// Close process and thread handles. 
	CloseHandle( pi.hProcess );
	CloseHandle( pi.hThread );
	//getchar();
	return 0;
}

