# Microsoft Developer Studio Project File - Name="BuildVer" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Console Application" 0x0103

CFG=BuildVer - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "BuildVer.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "BuildVer.mak" CFG="BuildVer - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "BuildVer - Win32 Release" (based on "Win32 (x86) Console Application")
!MESSAGE "BuildVer - Win32 Debug" (based on "Win32 (x86) Console Application")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "BuildVer - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_CONSOLE" /D "_MBCS" /Yu"stdafx.h" /FD /c
# ADD CPP /nologo /W3 /GX /O2 /I "../src_common" /I "../src_common/md5" /I "../src_common/zlib" /I "." /D "WIN32" /D "NDEBUG" /D "_CONSOLE" /D "_MBCS" /Yu"stdafx.h" /FD /c
# ADD BASE RSC /l 0x804 /d "NDEBUG"
# ADD RSC /l 0x804 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /machine:I386
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /machine:I386 /out:"..\bin_server\BuildVer.exe"

!ELSEIF  "$(CFG)" == "BuildVer - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "Debug"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_CONSOLE" /D "_MBCS" /Yu"stdafx.h" /FD /GZ /c
# ADD CPP /nologo /W3 /Gm /GX /ZI /Od /I "../src_common" /I "../src_common/md5" /I "../src_common/zlib" /I "." /D "WIN32" /D "_DEBUG" /D "_CONSOLE" /D "_MBCS" /D "_LOG" /D "_LOG_CONSOLE" /FD /GZ /c
# SUBTRACT CPP /YX /Yc /Yu
# ADD BASE RSC /l 0x804 /d "_DEBUG"
# ADD RSC /l 0x804 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /debug /machine:I386 /pdbtype:sept
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib winmm.lib /nologo /subsystem:console /debug /machine:I386 /out:"..\bin_server\BuildVer.exe" /pdbtype:sept

!ENDIF 

# Begin Target

# Name "BuildVer - Win32 Release"
# Name "BuildVer - Win32 Debug"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Group "MD5"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\src_common\md5\global.h
# End Source File
# Begin Source File

SOURCE=..\src_common\md5\md5.h
# End Source File
# Begin Source File

SOURCE=..\src_common\md5\md5c.c

!IF  "$(CFG)" == "BuildVer - Win32 Release"

# SUBTRACT CPP /YX /Yc /Yu

!ELSEIF  "$(CFG)" == "BuildVer - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\src_common\md5\mddriver.c

!IF  "$(CFG)" == "BuildVer - Win32 Release"

# SUBTRACT CPP /YX /Yc /Yu

!ELSEIF  "$(CFG)" == "BuildVer - Win32 Debug"

!ENDIF 

# End Source File
# End Group
# Begin Group "ZLIB"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\src_common\zlib\adler32.c

!IF  "$(CFG)" == "BuildVer - Win32 Release"

# SUBTRACT CPP /YX /Yc /Yu

!ELSEIF  "$(CFG)" == "BuildVer - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\src_common\zlib\compress.c

!IF  "$(CFG)" == "BuildVer - Win32 Release"

# SUBTRACT CPP /YX /Yc /Yu

!ELSEIF  "$(CFG)" == "BuildVer - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\src_common\zlib\crc32.c

!IF  "$(CFG)" == "BuildVer - Win32 Release"

# SUBTRACT CPP /YX /Yc /Yu

!ELSEIF  "$(CFG)" == "BuildVer - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\src_common\zlib\deflate.c

!IF  "$(CFG)" == "BuildVer - Win32 Release"

# SUBTRACT CPP /YX /Yc /Yu

!ELSEIF  "$(CFG)" == "BuildVer - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\src_common\zlib\deflate.h
# End Source File
# Begin Source File

SOURCE=..\src_common\zlib\gzio.c

!IF  "$(CFG)" == "BuildVer - Win32 Release"

# SUBTRACT CPP /YX /Yc /Yu

!ELSEIF  "$(CFG)" == "BuildVer - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\src_common\zlib\infblock.c

!IF  "$(CFG)" == "BuildVer - Win32 Release"

# SUBTRACT CPP /YX /Yc /Yu

!ELSEIF  "$(CFG)" == "BuildVer - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\src_common\zlib\infblock.h
# End Source File
# Begin Source File

SOURCE=..\src_common\zlib\infcodes.c

!IF  "$(CFG)" == "BuildVer - Win32 Release"

# SUBTRACT CPP /YX /Yc /Yu

!ELSEIF  "$(CFG)" == "BuildVer - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\src_common\zlib\infcodes.h
# End Source File
# Begin Source File

SOURCE=..\src_common\zlib\inffast.c

!IF  "$(CFG)" == "BuildVer - Win32 Release"

# SUBTRACT CPP /YX /Yc /Yu

!ELSEIF  "$(CFG)" == "BuildVer - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\src_common\zlib\inffast.h
# End Source File
# Begin Source File

SOURCE=..\src_common\zlib\inffixed.h
# End Source File
# Begin Source File

SOURCE=..\src_common\zlib\inflate.c

!IF  "$(CFG)" == "BuildVer - Win32 Release"

# SUBTRACT CPP /YX /Yc /Yu

!ELSEIF  "$(CFG)" == "BuildVer - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\src_common\zlib\inftrees.c

!IF  "$(CFG)" == "BuildVer - Win32 Release"

# SUBTRACT CPP /YX /Yc /Yu

!ELSEIF  "$(CFG)" == "BuildVer - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\src_common\zlib\inftrees.h
# End Source File
# Begin Source File

SOURCE=..\src_common\zlib\infutil.c

!IF  "$(CFG)" == "BuildVer - Win32 Release"

# SUBTRACT CPP /YX /Yc /Yu

!ELSEIF  "$(CFG)" == "BuildVer - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\src_common\zlib\infutil.h
# End Source File
# Begin Source File

SOURCE=..\src_common\zlib\trees.c

!IF  "$(CFG)" == "BuildVer - Win32 Release"

# SUBTRACT CPP /YX /Yc /Yu

!ELSEIF  "$(CFG)" == "BuildVer - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\src_common\zlib\trees.h
# End Source File
# Begin Source File

SOURCE=..\src_common\zlib\uncompr.c

!IF  "$(CFG)" == "BuildVer - Win32 Release"

# SUBTRACT CPP /YX /Yc /Yu

!ELSEIF  "$(CFG)" == "BuildVer - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\src_common\zlib\zconf.h
# End Source File
# Begin Source File

SOURCE=..\src_common\zlib\zlib.h
# End Source File
# Begin Source File

SOURCE=..\src_common\zlib\zutil.c

!IF  "$(CFG)" == "BuildVer - Win32 Release"

# SUBTRACT CPP /YX /Yc /Yu

!ELSEIF  "$(CFG)" == "BuildVer - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\src_common\zlib\zutil.h
# End Source File
# End Group
# Begin Source File

SOURCE=..\src_common\FileVersion.cpp

!IF  "$(CFG)" == "BuildVer - Win32 Release"

# SUBTRACT CPP /YX /Yc /Yu

!ELSEIF  "$(CFG)" == "BuildVer - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\src_common\FileVersion.h
# End Source File
# Begin Source File

SOURCE=.\main.cpp

!IF  "$(CFG)" == "BuildVer - Win32 Release"

# SUBTRACT CPP /YX /Yc /Yu

!ELSEIF  "$(CFG)" == "BuildVer - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\src_common\Util.cpp

!IF  "$(CFG)" == "BuildVer - Win32 Release"

# SUBTRACT CPP /YX /Yc /Yu

!ELSEIF  "$(CFG)" == "BuildVer - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\src_common\Util.h
# End Source File
# Begin Source File

SOURCE=..\src_common\zstream.h
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# End Group
# Begin Group "Resource Files"

# PROP Default_Filter "ico;cur;bmp;dlg;rc2;rct;bin;rgs;gif;jpg;jpeg;jpe"
# End Group
# Begin Source File

SOURCE=.\ReadMe.txt
# End Source File
# End Target
# End Project
