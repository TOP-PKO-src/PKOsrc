// stdafx.h : ��׼ϵͳ�����ļ��İ����ļ���
// ���Ǿ���ʹ�õ��������ĵ�
// ��Ŀ�ض��İ����ļ�

#pragma once

#ifndef VC_EXTRALEAN
#define VC_EXTRALEAN		// �� Windows ��ͷ���ų�����ʹ�õ�����
#endif

// ���������ʹ��������ָ����ƽ̨֮ǰ��ƽ̨�����޸�����Ķ��塣
// �йز�ͬƽ̨����Ӧֵ��������Ϣ����ο� MSDN��
#ifndef WINVER				// ����ʹ�� Windows 95 �� Windows NT 4 ����߰汾���ض����ܡ�
#define WINVER 0x0400		//Ϊ Windows98 �� Windows 2000 �����°汾�ı�Ϊ�ʵ���ֵ��
#endif

#ifndef _WIN32_WINNT		// ����ʹ�� Windows NT 4 ����߰汾���ض����ܡ�
#define _WIN32_WINNT 0x0400		//Ϊ Windows98 �� Windows 2000 �����°汾�ı�Ϊ�ʵ���ֵ��
#endif						

#ifndef _WIN32_WINDOWS		// ����ʹ�� Windows 98 ����߰汾���ض����ܡ�
#define _WIN32_WINDOWS 0x0410 //Ϊ Windows Me �����°汾�ı�Ϊ�ʵ���ֵ��
#endif

#ifndef _WIN32_IE			// ����ʹ�� IE 4.0 ����߰汾���ض����ܡ�
#define _WIN32_IE 0x0400	//Ϊ IE 5.0 �����°汾�ı�Ϊ�ʵ���ֵ��
#endif

#define _ATL_CSTRING_EXPLICIT_CONSTRUCTORS	// ĳЩ CString ���캯��������ʽ��

// �ر� MFC ��ĳЩ��������������ȫ���Եľ�����Ϣ������
#define _AFX_ALL_WARNINGS

#include <afxwin.h>         // MFC ���ĺͱ�׼���
#include <afxext.h>         // MFC ��չ
#include <afxdisp.h>        // MFC �Զ�����

#include <afxdtctl.h>		// Internet Explorer 4 �����ؼ��� MFC ֧��
#ifndef _AFX_NO_AFXCMN_SUPPORT
#include <afxcmn.h>			// Windows �����ؼ��� MFC ֧��
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
