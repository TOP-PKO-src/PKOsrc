# Microsoft Developer Studio Project File - Name="lua50" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Static Library" 0x0104

CFG=lua50 - Win32 Static Library
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "lua50.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "lua50.mak" CFG="lua50 - Win32 Static Library"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "lua50 - Win32 Static Library" (based on "Win32 (x86) Static Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
RSC=rc.exe
# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "lua50___Win32_Static_Library"
# PROP BASE Intermediate_Dir "lua50___Win32_Static_Library"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "obj"
# PROP Intermediate_Dir "obj"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /GX /O2 /I "..\..\include" /D "WIN32" /D "NDEBUG" /D "_MBCS" /D "_LIB" /YX /FD /c
# ADD CPP /nologo /G6 /MT /W3 /GX /O2 /I "..\include" /D "WIN32" /D "NDEBUG" /D "_MBCS" /D "_LIB" /FD /c
# SUBTRACT CPP /Fr /YX
# ADD BASE RSC /l 0x1009 /d "NDEBUG"
# SUBTRACT BASE RSC /x
# ADD RSC /l 0x1009 /d "NDEBUG"
# SUBTRACT RSC /x
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo /out:"..\..\lib\lua50.lib"
# ADD LIB32 /nologo /out:"..\lib\lua50.lib"
# Begin Target

# Name "lua50 - Win32 Static Library"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=.\lapi.c
# End Source File
# Begin Source File

SOURCE=.\lcode.c
# End Source File
# Begin Source File

SOURCE=.\ldebug.c
# End Source File
# Begin Source File

SOURCE=.\ldo.c
# End Source File
# Begin Source File

SOURCE=.\ldump.c
# End Source File
# Begin Source File

SOURCE=.\lfunc.c
# End Source File
# Begin Source File

SOURCE=.\lgc.c
# End Source File
# Begin Source File

SOURCE=.\llex.c
# End Source File
# Begin Source File

SOURCE=.\lmem.c
# End Source File
# Begin Source File

SOURCE=.\lobject.c
# End Source File
# Begin Source File

SOURCE=.\lopcodes.c
# End Source File
# Begin Source File

SOURCE=.\lparser.c
# End Source File
# Begin Source File

SOURCE=.\lstate.c
# End Source File
# Begin Source File

SOURCE=.\lstring.c
# End Source File
# Begin Source File

SOURCE=.\ltable.c
# End Source File
# Begin Source File

SOURCE=.\ltests.c
# End Source File
# Begin Source File

SOURCE=.\ltm.c
# End Source File
# Begin Source File

SOURCE=.\lundump.c
# End Source File
# Begin Source File

SOURCE=.\lvm.c
# End Source File
# Begin Source File

SOURCE=.\lzio.c
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter ".h"
# Begin Source File

SOURCE=.\lapi.h
# End Source File
# Begin Source File

SOURCE=.\lcode.h
# End Source File
# Begin Source File

SOURCE=.\ldebug.h
# End Source File
# Begin Source File

SOURCE=.\ldo.h
# End Source File
# Begin Source File

SOURCE=.\lfunc.h
# End Source File
# Begin Source File

SOURCE=.\lgc.h
# End Source File
# Begin Source File

SOURCE=.\llex.h
# End Source File
# Begin Source File

SOURCE=.\llimits.h
# End Source File
# Begin Source File

SOURCE=.\lmem.h
# End Source File
# Begin Source File

SOURCE=.\lobject.h
# End Source File
# Begin Source File

SOURCE=.\lopcodes.h
# End Source File
# Begin Source File

SOURCE=.\lparser.h
# End Source File
# Begin Source File

SOURCE=.\lstate.h
# End Source File
# Begin Source File

SOURCE=.\lstring.h
# End Source File
# Begin Source File

SOURCE=.\ltable.h
# End Source File
# Begin Source File

SOURCE=.\ltm.h
# End Source File
# Begin Source File

SOURCE=.\lundump.h
# End Source File
# Begin Source File

SOURCE=.\lvm.h
# End Source File
# Begin Source File

SOURCE=.\lzio.h
# End Source File
# End Group
# End Target
# End Project
