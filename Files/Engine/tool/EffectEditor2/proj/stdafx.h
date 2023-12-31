// stdafx.h : 标准系统包含文件的包含文件，
// 或是经常使用但不常更改的
// 项目特定的包含文件

#pragma once

#ifndef VC_EXTRALEAN
#define VC_EXTRALEAN		// 从 Windows 标头中排除不常使用的资料
#endif

// 如果您必须使用下列所指定的平台之前的平台，则修改下面的定义。
// 有关不同平台的相应值的最新信息，请参考 MSDN。
#ifndef WINVER				// 允许使用 Windows 95 和 Windows NT 4 或更高版本的特定功能。
#define WINVER 0x0400		//为 Windows98 和 Windows 2000 及更新版本改变为适当的值。
#endif

#ifndef _WIN32_WINNT		// 允许使用 Windows NT 4 或更高版本的特定功能。
#define _WIN32_WINNT 0x0400		//为 Windows98 和 Windows 2000 及更新版本改变为适当的值。
#endif						

#ifndef _WIN32_WINDOWS		// 允许使用 Windows 98 或更高版本的特定功能。
#define _WIN32_WINDOWS 0x0410 //为 Windows Me 及更新版本改变为适当的值。
#endif

#ifndef _WIN32_IE			// 允许使用 IE 4.0 或更高版本的特定功能。
#define _WIN32_IE 0x0400	//为 IE 5.0 及更新版本改变为适当的值。
#endif

#define _ATL_CSTRING_EXPLICIT_CONSTRUCTORS	// 某些 CString 构造函数将是显式的

// 关闭 MFC 对某些常见但经常被安全忽略的警告消息的隐藏
#define _AFX_ALL_WARNINGS

#include <afxwin.h>         // MFC 核心和标准组件
#include <afxext.h>         // MFC 扩展
#include <afxdisp.h>        // MFC 自动化类

#include <afxdtctl.h>		// Internet Explorer 4 公共控件的 MFC 支持
#ifndef _AFX_NO_AFXCMN_SUPPORT
#include <afxcmn.h>			// Windows 公共控件的 MFC 支持
#endif // _AFX_NO_AFXCMN_SUPPORT

#define SAFE_DELETE(p)       { if(p) { delete (p);     (p)=NULL; } }
#define SAFE_DELETE_ARRAY(p) { if(p) { delete[] (p);   (p)=NULL; } }
#define SAFE_RELEASE(p)      { if(p) { (p)->Release(); (p)=NULL; } }

# include <string>
# include <list>
# include <map>
# include <vector>
#include <algorithm>

using namespace std;
//# include <../src/d3d/dxutil.h>

//#define USE_TIMERPERIOD

////#include <mindpower.h>
//#include "../../../sdk/include/MindPowerAPI.h"
//
//// MeshLib
//#include "../../../sdk/include/lwHeader.h"
//#include "../../../sdk/include/lwStdInc.h"
//#include "../../../sdk/include/lwDirectX.h"
//#include "../../../sdk/include/lwMath.h"
//#include "../../../sdk/include/lwInterface.h"
//#include "../../../sdk/include/lwClassDecl.h"
//#include "../../../sdk/include/lwITypes.h"
//#include "../../../sdk/include/lwITypes2.h"
//#include "../../../sdk/include/lwIFunc.h"
//#include "../../../sdk/include/MPCharacter.h"
//#include "../../../sdk/include/MPSceneObject.h"
//#include "../../../sdk/include/MPSceneItem.h"


//#include "Log.h"
//#include "../../../sdk/include/GlobalInc.h"
//#include "../../../sdk/include/MPRender.h"
//#include "../../../sdk/include/MPTextureSet.h"
//#include "../../../sdk/include/MPGameApp.h"
//#include "../../../sdk/include/MPCamera.h"
//#include "../../../sdk/include/MPTile.h"
//#include "../../../sdk/include/MPMap.h"
//#include "../../../sdk/include/MPModelEff.h"
//#include "../../../sdk/include/MPTerrainSet.h"
//#include "../../../sdk/include/MPConsole.h"
//#include "../../../sdk/include/MPMath.h"
