# Microsoft Developer Studio Project File - Name="lualib" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Static Library" 0x0104

CFG=lualib - Win32 Static Library
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "lualib.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "lualib.mak" CFG="lualib - Win32 Static Library"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "lualib - Win32 Static Library" (based on "Win32 (x86) Static Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
RSC=rc.exe
# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Static Library"
# PROP BASE Intermediate_Dir "Static Library"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "obj"
# PROP Intermediate_Dir "obj"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_MBCS" /D "_LIB" /YX /FD /c
# ADD CPP /nologo /G6 /MT /W3 /GX /O2 /I "..\include" /D "WIN32" /D "NDEBUG" /D "_MBCS" /D "_LIB" /FD /c
# SUBTRACT CPP /YX
# ADD BASE RSC /l 0x1009 /d "NDEBUG"
# ADD RSC /l 0x1009 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo /out:"..\lib\lualib.lib"
# Begin Target

# Name "lualib - Win32 Static Library"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=.\lib\lauxlib.c
# End Source File
# Begin Source File

SOURCE=.\lib\lbaselib.c
# End Source File
# Begin Source File

SOURCE=.\lib\ldblib.c
# End Source File
# Begin Source File

SOURCE=.\lib\liolib.c
# End Source File
# Begin Source File

SOURCE=.\lib\lmathlib.c
# End Source File
# Begin Source File

SOURCE=.\lib\loadlib.c
# End Source File
# Begin Source File

SOURCE=.\lib\lstrlib.c
# End Source File
# Begin Source File

SOURCE=.\lib\ltablib.c
# End Source File
# End Group
# End Target
# End Project
