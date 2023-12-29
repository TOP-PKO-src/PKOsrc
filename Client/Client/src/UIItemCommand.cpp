#include "StdAfx.h"
#include "uiitemcommand.h"
#include "ItemRecord.h"
#include "uicompent.h"
#include "uigoodsgrid.h"
#include "Character.h"
#include "GameApp.h"
#include "uifastcommand.h"
#include "PacketCmd.h"
#include "CommFunc.h"
#include "uiequipform.h"
#include <strstream> 
#include "StringLib.h"
#include "SkillRecord.h"
#include "uiboatform.h"
#include "shipset.h"
#include "itempreset.h"
#include "stpose.h"
#include "stnpctalk.h"
#include "stoneset.h"
#include "ItemRefineSet.h"
#include "ItemRefineEffectSet.h"
#include "elfskillset.h"
#include "STAttack.h"
#include "STMove.h"
using namespace GUI;
//---------------------------------------------------------------------------
// class CItemCommand
//---------------------------------------------------------------------------
static char buf[256] = { 0 };

const DWORD VALID_COLOR = COLOR_RED;
const DWORD GENERIC_COLOR = COLOR_WHITE;
const DWORD ADVANCED_COLOR = 0xFF9CCFFF;
const DWORD GLOD_COLOR = 0xFFFFFF00;

const unsigned int ITEM_HEIGHT = 32;
const unsigned int ITEM_WIDTH = 32;

map<int, DWORD>	CItemCommand::_mapCoolDown;	// ������һ�ηŵĵ��߼��ܵ�ʱ��


CItemCommand::CItemCommand( CItemRecord* pItem )
: _pItem(pItem), _dwColor(COLOR_WHITE), _pBoatHint(NULL)
{
    if( !_pItem )  LG( "error", "msgCItemCommand::CItemCommand(CItemRecord* pItem) pItem is NULL" );

    _pImage = new CGuiPic;

    const char* file = pItem->GetIconFile();

    // �ж��ļ��Ƿ����
    HANDLE hFile = CreateFile(file,GENERIC_READ,0,NULL,OPEN_EXISTING,FILE_ATTRIBUTE_NORMAL,NULL);
    if( INVALID_HANDLE_VALUE == hFile ) 
    {
        _pImage->LoadImage( "texture/icon/error.tga", ITEM_WIDTH, ITEM_HEIGHT, 0 );
    }
    else
    {
        CloseHandle(hFile);

        _pImage->LoadImage( file, ITEM_WIDTH, ITEM_HEIGHT, 0 );
    }

    memset( &_ItemData, 0, sizeof(_ItemData) );
	_ItemData.sID = (short)pItem->lID;
	_ItemData.SetValid();

	_nPrice = _pItem->lPrice;
}

CItemCommand::CItemCommand( const CItemCommand& rhs )
: _pImage( new CGuiPic(*rhs._pImage) ), _pBoatHint(NULL)
{
    _Copy( rhs );
}

CItemCommand& CItemCommand::operator=( const CItemCommand& rhs )
{
    *_pImage = *rhs._pImage;

    _Copy( rhs );
    return *this;
}

void CItemCommand::_Copy( const CItemCommand& rhs )
{
    memcpy( &_ItemData, &rhs._ItemData, sizeof(_ItemData) );
	SetBoatHint( rhs._pBoatHint );

	_pItem = rhs._pItem;
	_dwColor = rhs._dwColor;
	_nPrice = rhs._nPrice;
}

CItemCommand::~CItemCommand()
{
    //delete _pImage;
	SAFE_DELETE(_pImage); // UI��������

	if( _pBoatHint )
	{
		delete _pBoatHint;
		_pBoatHint = NULL;
	}
}

void CItemCommand::PUSH_HINT( const char* str, int value, DWORD color )
{
	if( value==0 ) return;

    sprintf( buf, str, value );
    PushHint( buf, color );
}

void CItemCommand::SaleRender( int x, int y, int nWidth, int nHeight )
{
	static int nX, nY;
    static int w, h;
	nX = x + ( nWidth - ITEM_WIDTH ) / 2;
	nY = y + ( nHeight -  ITEM_HEIGHT ) / 2;

	_pImage->Render( nX, nY, _ItemData.IsValid() ? _dwColor : (DWORD)0xff757575 );

	if( _ItemData.sNum>=0 )
	{
		static int xNum, yNum;
        sprintf(buf, "%d", _ItemData.sNum );
        CGuiFont::s_Font.GetSize( buf, w, h );

		xNum = nX + ITEM_WIDTH - w;
		yNum = nY + ITEM_HEIGHT - h;
		GetRender().FillFrame( xNum, yNum, xNum + w, yNum + h, 0xE0ADF6F7 );
		CGuiFont::s_Font.Render( buf, xNum, yNum, COLOR_BLACK );
	}

	CGuiFont::s_Font.GetSize( _pItem->szName, w, h );	
	if( w > nWidth )
	{
		static char szBuf1[128] = { 0 };
		static char szBuf2[128] = { 0 };
		static int nEnter = 0;
		strncpy( szBuf1, _pItem->szName, sizeof(szBuf1) );
		nEnter = (int)strlen( szBuf1 ) / 2;
		if( _ismbslead( (unsigned char*)szBuf1, (unsigned char*)&szBuf1[nEnter] ) )
		{
			nEnter--;
		}
		if( nEnter<0 ) return;

		nEnter++;
		szBuf1[nEnter] = '\0';
		strncpy( szBuf2, &_pItem->szName[nEnter], sizeof(szBuf2) );

		CGuiFont::s_Font.GetSize( szBuf1, w, h );	
		CGuiFont::s_Font.Render( szBuf1, x + ( nWidth - w ) / 2, nY - h - h - 2, COLOR_BLACK );

		CGuiFont::s_Font.GetSize( szBuf2, w, h );	
		CGuiFont::s_Font.Render( szBuf2, x + ( nWidth - w ) / 2, nY - h - 2, COLOR_BLACK );
	}
	else
	{
		CGuiFont::s_Font.Render( _pItem->szName, x + ( nWidth - w ) / 2, nY - h - 2, COLOR_BLACK );
	}

	sprintf( buf, "$%s", StringSplitNum(_nPrice) );
	CGuiFont::s_Font.GetSize( buf, w, h );
	CGuiFont::s_Font.Render( buf, x + ( nWidth - w ) / 2, nY + ITEM_HEIGHT + 2, COLOR_BLACK );
}

void CItemCommand::Render( int x, int y )
{
	_pImage->Render( x, y, _ItemData.IsValid() ? _dwColor : (DWORD)0xff757575 );

    if( _ItemData.sNum>1 )
    {
        sprintf(buf, "%d", _ItemData.sNum );
        static int w, h;
        CGuiFont::s_Font.GetSize( buf, w, h );

		x += ITEM_WIDTH - w;
		y += ITEM_HEIGHT - h;
		GetRender().FillFrame( x, y, x + w, y + h, 0xE0ADF6F7 );
        CGuiFont::s_Font.Render( buf, x, y, COLOR_BLACK );
    }
}

void CItemCommand::OwnDefRender( int x, int y, int nWidth, int nHeight )
{
	static int nX, nY;
    static int w, h;
	nX = x + ( nWidth - ITEM_WIDTH ) / 2;
	nY = y + ( nHeight -  ITEM_HEIGHT ) / 2;

	_pImage->Render( nX, nY, _ItemData.IsValid() ? _dwColor : (DWORD)0xff757575 );

	if( _ItemData.sNum>=0 )
	{
		static int xNum, yNum;
        sprintf(buf, "%d", _ItemData.sNum );
        CGuiFont::s_Font.GetSize( buf, w, h );

		xNum = nX + ITEM_WIDTH - w;
		yNum = nY + ITEM_HEIGHT - h;
		GetRender().FillFrame( xNum, yNum, xNum + w, yNum + h, 0xE0ADF6F7 );
		CGuiFont::s_Font.Render( buf, xNum, yNum, COLOR_BLACK );
	}

	CGuiFont::s_Font.GetSize( _pItem->szName, w, h );	
	if( w > nWidth )
	{
		static char szBuf1[128] = { 0 };
		static char szBuf2[128] = { 0 };
		static int nEnter = 0;
		strncpy( szBuf1, _pItem->szName, sizeof(szBuf1) );
		nEnter = (int)strlen( szBuf1 ) / 2;
		if( _ismbslead( (unsigned char*)szBuf1, (unsigned char*)&szBuf1[nEnter] ) )
		{
			nEnter--;
		}
		if( nEnter<0 ) return;

		nEnter++;
		szBuf1[nEnter] = '\0';
		strncpy( szBuf2, &_pItem->szName[nEnter], sizeof(szBuf2) );

		CGuiFont::s_Font.GetSize( szBuf1, w, h );	
		CGuiFont::s_Font.Render( szBuf1, x + ( nWidth - w ) / 2, nY - h - h - 2, COLOR_BLACK );

		CGuiFont::s_Font.GetSize( szBuf2, w, h );	
		CGuiFont::s_Font.Render( szBuf2, x + ( nWidth - w ) / 2, nY - h - 2, COLOR_BLACK );
	}
	else
	{
		CGuiFont::s_Font.Render( _pItem->szName, x + ( nWidth - w ) / 2, nY - h - 2, COLOR_BLACK );
	}

	//sprintf( buf, "$%s", StringSplitNum(_nPrice) );
	CGuiFont::s_Font.GetSize( _OwnDefText.c_str(), w, h );
	CGuiFont::s_Font.Render ( _OwnDefText.c_str(), x + ( nWidth - w ) / 2, nY + ITEM_HEIGHT + 2, COLOR_BLACK );
}

void CItemCommand::RenderEnergy(int x, int y)
{
	if( _pItem->sType==29 && _ItemData.sEnergy[1]!=0 )
	{
		float fLen = (float)_ItemData.sEnergy[0] / (float)_ItemData.sEnergy[1] * (float)ITEM_HEIGHT;
		int yb = y+ITEM_HEIGHT;
		GetRender().FillFrame( x, y, x+2, yb, COLOR_BLUE );
		GetRender().FillFrame( x, yb-(int)fLen, x+2, yb, COLOR_RED );
	}
}

void CItemCommand::_AddDescriptor()
{
	StringNewLine( buf, 40, _pItem->szDescriptor, (unsigned int)strlen(_pItem->szDescriptor) );
    PushHint( buf );
}

void CItemCommand::AddHint( int x, int y )
{
	bool isMain = false;	// �ж��Ƿ�Ҫ�����������ۣ�
	if( GetParent() )
	{
		string name=GetParent()->GetForm()->GetName(); 
		if( name == "frmPlayertrade" || name == "frmItem" || name == "frmNPCstorage" || name == "frmTempBag" || 
			name == "frmBreak"       || name == "frmCooking" || name == "frmFound"   || name == "frmBreak"   || 
			name == "frmStore"       || name == "frmViewAll" ||
			name == "frmSpiritMarry" || name == "frmSpiritErnie" || name == "frmEquipPurify") 
		{
			isMain = true;
		}
	}

	bool isStore = false;	// �ж��Ƿ����̳�
	if( GetParent() )
	{
		string name = GetParent()->GetForm()->GetName(); 
		if( name == "frmStore" ) 
		{
			isStore = true;
		}
	}

    SGameAttr* pAttr = NULL;
	if( g_stUIBoat.GetHuman() )
    {
        pAttr = g_stUIBoat.GetHuman()->getGameAttr();
	}
    if( !pAttr ) return;

    SetHintIsCenter( true );

	static SItemHint item;
	memset( &item, 0, sizeof(SItemHint) );
	CItemRecord* pEquipItem(0);
	// modify by ning.yan  20080821  begin
	//if ( _pItem->lID >= CItemRecord::enumItemFusionStart && _pItem->lID < CItemRecord::enumItemFusionEnd 
	//	&& _ItemData.GetFusionItemID() > 0 )
	if ( CItemRecord::IsVaildFusionID(_pItem) && _ItemData.GetFusionItemID() > 0 )// end
	{	// 
		pEquipItem = GetItemRecordInfo(_ItemData.GetFusionItemID());
		if (pEquipItem)
		{
			item.Convert( _ItemData, pEquipItem );
		}
	}
	else
	{
		item.Convert( _ItemData, _pItem );
	}

	//	2008-7-31	yangyinyu	add	begin!
	//	���ӶԵ��������Ĵ���
	if(	_ItemData.dwDBID	)
	{
		PushHint(	"*�Ѱ�*",	COLOR_RED,5,0	);
		AddHintHeight();
	}
	//	2008-7-31	yangyinyu	add	end!

    if( _pItem->sType>=1 && _pItem->sType<=10 )          // ����:��,�޽�,��,����ǹ,��,ȭ��,ذ��,Ǯ��,�̰�,����
    {
		if( _pItem->sType==2 )
		{
			// modify by Philip.Wu  2006-06-09
			// ��˫�ֻ�һ����ʾ����ֹ���û�ID�������޷���ʾ��˫��

			//if (_pItem->lID >= CItemRecord::enumItemFusionStart && _pItem->lID < CItemRecord::enumItemFusionEnd
			//	&& _ItemData.GetFusionItemID() > 0)
			if ( CItemRecord::IsVaildFusionID(_pItem) && _ItemData.GetFusionItemID() > 0 )// modify by ning.yan  20080821
			{
				sprintf( buf, "Lv%d %s",_ItemData.GetItemLevel(), GetName());
			}
			else
			{
				sprintf( buf, "%s", GetName() );
			}

			PushHint( buf, COLOR_WHITE, 5, 1 );
			PushHint( RES_STRING(CL_LANGUAGE_MATCH_624), COLOR_WHITE, 5, 1 );
		}
		else
		{
			//if (_pItem->lID >= CItemRecord::enumItemFusionStart && _pItem->lID < CItemRecord::enumItemFusionEnd
			//	&& _ItemData.GetFusionItemID() > 0)
			if ( CItemRecord::IsVaildFusionID(_pItem) && _ItemData.GetFusionItemID() > 0 )// modify by ning.yan  20080821
			{
				sprintf( buf, "Lv%d %s",_ItemData.GetItemLevel(), GetName());
				PushHint( buf, COLOR_WHITE, 5, 1 );
			}
			else
			{
				PushHint( GetName(), COLOR_WHITE, 5, 1 );
			}
		}

        // ������:������,�;ö�
        AddHintHeight();

		if(_pItem->lID != 3669)	// �������⴦�������̻�������ʾ������
		{
			sprintf( buf, RES_STRING(CL_LANGUAGE_MATCH_625), _GetValue( ITEMATTR_VAL_MNATK, item ), _GetValue( ITEMATTR_VAL_MXATK, item ) );
			PushHint( buf, GENERIC_COLOR );
		}

		if(! isStore)	// �̳��ڲ���ʾ�;�
		{
			sprintf( buf, RES_STRING(CL_LANGUAGE_MATCH_626), item.sEndure[0], item.sEndure[1] );
			PushHint( buf, GENERIC_COLOR );
		}

		//if ( _pItem->lID >= CItemRecord::enumItemFusionStart && _pItem->lID < CItemRecord::enumItemFusionEnd 
		//	&& _ItemData.GetFusionItemID() > 0 )
		if ( CItemRecord::IsVaildFusionID(_pItem) && _ItemData.GetFusionItemID() > 0 )// modify by ning.yan  20080821
		{
			sprintf( buf, RES_STRING(CL_LANGUAGE_MATCH_627), _ItemData.GetItemLevel() * 2 + 80 );	// ���Ӷȶ��� 0��-80% 1��-82% ...
			PushHint( buf, GENERIC_COLOR );
		}

		//switch( _pItem->sType )
		//{
		//case 1:	// ���ֽ�
		//	_PushItemAttr( ITEMATTR_COE_ASPD, item );	
		//	_PushValue( "������(%+d)", ITEMATTR_VAL_HIT, item );
		//	break;
		//case 2:	// �޽�
		//	_PushItemAttr( ITEMATTR_VAL_DEF, item );		
		//	_PushItemAttr( ITEMATTR_VAL_MXHP, item );		
		//	break;
		//case 3:	// ��
		//case 4:	// ��ǹ
		//	_PushItemAttr( ITEMATTR_COE_ASPD, item );		
		//	_PushValue( "������(%+d)", ITEMATTR_VAL_HIT, item );
		//	break;
		//case 7: // ذ��
		//	_PushItemAttr( ITEMATTR_COE_MXSP, item );	
		//	_PushItemAttr( ITEMATTR_VAL_STA, item );		
		//	_PushItemAttr( ITEMATTR_COE_MSPD, item );		
		//	break;
		//case 9: // ����
		//	_PushItemAttr( ITEMATTR_VAL_STA, item );		
		//	_PushItemAttr( ITEMATTR_COE_MXSP, item );		
		//	_PushItemAttr( ITEMATTR_VAL_MXHP, item );		
		//	break;
		//}

        // ������:���������ݣ����ʣ��������ˣ�רע,�ȼ�,ְҵ
        AddHintHeight();

		//if ( _pItem->lID >= CItemRecord::enumItemFusionStart && _pItem->lID < CItemRecord::enumItemFusionEnd 
		//	&& _ItemData.GetFusionItemID() > 0 )
		if ( CItemRecord::IsVaildFusionID(_pItem) && _ItemData.GetFusionItemID() > 0 )// modify by ning.yan  20080821
		{
			if (_pItem->sNeedLv > pEquipItem->sNeedLv)
			{
				PUSH_HINT( RES_STRING(CL_LANGUAGE_MATCH_628), _pItem->sNeedLv, pAttr->get(ATTR_LV)>=_pItem->sNeedLv ? GENERIC_COLOR : VALID_COLOR );
			}
			else
			{
				PUSH_HINT( RES_STRING(CL_LANGUAGE_MATCH_628), pEquipItem->sNeedLv, pAttr->get(ATTR_LV)>=pEquipItem->sNeedLv ? GENERIC_COLOR : VALID_COLOR );
			}
		}
		else
		{
			PUSH_HINT( RES_STRING(CL_LANGUAGE_MATCH_628), _pItem->sNeedLv, pAttr->get(ATTR_LV)>=_pItem->sNeedLv ? GENERIC_COLOR : VALID_COLOR );
		}

		//if ( _pItem->lID >= CItemRecord::enumItemFusionStart && _pItem->lID < CItemRecord::enumItemFusionEnd 
		//	&& _ItemData.GetFusionItemID() > 0 )
		if ( CItemRecord::IsVaildFusionID(_pItem) && _ItemData.GetFusionItemID() > 0 ) // modify by ning.yan  20080821
		{
			_ShowFusionBody(pEquipItem);
			_ShowFusionWork(_pItem, pEquipItem, pAttr);
		}
		else
		{
			_ShowBody();
			_ShowWork( _pItem, pAttr );
		}
	}
    else if( _pItem->sType==22 || _pItem->sType==11 || _pItem->sType==27 )	// �·�,��,ͼ��
    {
		// ����  modify by ning.yan 20080821 begin
		//if (_pItem->lID >= CItemRecord::enumItemFusionStart && _pItem->lID < CItemRecord::enumItemFusionEnd
		//	&& _ItemData.GetFusionItemID() > 0)
		if ( CItemRecord::IsVaildFusionID(_pItem) && _ItemData.GetFusionItemID() > 0 ) // end
		{
			sprintf( buf, "Lv%d %s",_ItemData.GetItemLevel(), GetName());
			PushHint( buf, COLOR_WHITE, 5, 1 );
		}
		else
		{
			PushHint( GetName(), COLOR_WHITE, 5, 1 );
		}

        // ������:������,�;ö�
        AddHintHeight();

		_PushValue( RES_STRING(CL_LANGUAGE_MATCH_629), ITEMATTR_VAL_DEF, item );

		if(! isStore)	// �̳��ڲ���ʾ�;�
		{
			sprintf( buf, RES_STRING(CL_LANGUAGE_MATCH_626), item.sEndure[0], item.sEndure[1] );
			PushHint( buf );
		}

		_PushValue( RES_STRING(CL_LANGUAGE_MATCH_630), ITEMATTR_VAL_PDEF, item );

		//if ( _pItem->lID >= CItemRecord::enumItemFusionStart && _pItem->lID < CItemRecord::enumItemFusionEnd 
		//	&& _ItemData.GetFusionItemID() > 0 )
		if ( CItemRecord::IsVaildFusionID(_pItem) && _ItemData.GetFusionItemID() > 0 )// modify by ning.yan  20080821
		{

			sprintf( buf, RES_STRING(CL_LANGUAGE_MATCH_627), _ItemData.GetItemLevel() * 2 + 80 );	// ���Ӷȶ��� 0��-80% 1��-82% ...
			PushHint( buf, GENERIC_COLOR );

		}

        AddHintHeight();

		//if ( _pItem->lID >= CItemRecord::enumItemFusionStart && _pItem->lID < CItemRecord::enumItemFusionEnd 
		//	&& _ItemData.GetFusionItemID() > 0 )
		if ( CItemRecord::IsVaildFusionID(_pItem) && _ItemData.GetFusionItemID() > 0 )// modify by ning.yan  20080821
		{
			if (_pItem->sNeedLv > pEquipItem->sNeedLv)
			{
				PUSH_HINT( RES_STRING(CL_LANGUAGE_MATCH_628), _pItem->sNeedLv, pAttr->get(ATTR_LV)>=_pItem->sNeedLv ? GENERIC_COLOR : VALID_COLOR );
			}
			else
			{
				PUSH_HINT( RES_STRING(CL_LANGUAGE_MATCH_628), pEquipItem->sNeedLv, pAttr->get(ATTR_LV)>=pEquipItem->sNeedLv ? GENERIC_COLOR : VALID_COLOR );
			}
		}
		else
		{
			PUSH_HINT( RES_STRING(CL_LANGUAGE_MATCH_628), _pItem->sNeedLv, pAttr->get(ATTR_LV)>=_pItem->sNeedLv ? GENERIC_COLOR : VALID_COLOR );
		}

		//if ( _pItem->lID >= CItemRecord::enumItemFusionStart && _pItem->lID < CItemRecord::enumItemFusionEnd 
		//	&& _ItemData.GetFusionItemID() > 0 )
		if ( CItemRecord::IsVaildFusionID(_pItem) && _ItemData.GetFusionItemID() > 0 )// modify by ning.yan  20080821
		{
			_ShowFusionBody(pEquipItem);
			_ShowFusionWork(_pItem, pEquipItem, pAttr);
		}
		else
		{
			_ShowBody();
			_ShowWork( _pItem, pAttr );
		}
    }
	else if( _pItem->sType==25 )	// ����
	{
        PushHint( GetName(), COLOR_WHITE, 5, 1 ); // ����

        //AddHintHeight();

		//_PushItemAttr( ITEMATTR_VAL_MXHP, item );
		//_PushItemAttr( ITEMATTR_VAL_MXSP, item );
		//_PushItemAttr( ITEMATTR_VAL_HREC, item );
		//_PushItemAttr( ITEMATTR_VAL_SREC, item );
		//_PushItemAttr( ITEMATTR_VAL_PDEF, item );

		//if ( _pItem->lID >= CItemRecord::enumItemFusionStart && _pItem->lID < CItemRecord::enumItemFusionEnd 
		//	&& _ItemData.GetFusionItemID() > 0 )
		if ( CItemRecord::IsVaildFusionID(_pItem) && _ItemData.GetFusionItemID() > 0 )// modify by ning.yan  20080821
		{
			if (_pItem->sNeedLv > pEquipItem->sNeedLv)
			{
				PUSH_HINT( RES_STRING(CL_LANGUAGE_MATCH_628), _pItem->sNeedLv, pAttr->get(ATTR_LV)>=_pItem->sNeedLv ? GENERIC_COLOR : VALID_COLOR );
			}
			else
			{
				PUSH_HINT( RES_STRING(CL_LANGUAGE_MATCH_628), pEquipItem->sNeedLv, pAttr->get(ATTR_LV)>=pEquipItem->sNeedLv ? GENERIC_COLOR : VALID_COLOR );
			}
		}
		else
		{
			PUSH_HINT( RES_STRING(CL_LANGUAGE_MATCH_628), _pItem->sNeedLv, pAttr->get(ATTR_LV)>=_pItem->sNeedLv ? GENERIC_COLOR : VALID_COLOR );
		}

		//if ( _pItem->lID >= CItemRecord::enumItemFusionStart && _pItem->lID < CItemRecord::enumItemFusionEnd 
		//	&& _ItemData.GetFusionItemID() > 0 )		
		if ( CItemRecord::IsVaildFusionID(_pItem) && _ItemData.GetFusionItemID() > 0 ) // modify by ning.yan  20080821
		{
			_ShowFusionBody(pEquipItem);
			_ShowFusionWork(_pItem, pEquipItem, pAttr);
		}
		else
		{
			_ShowBody();
			_ShowWork( _pItem, pAttr );
		}
		if( _pItem->lID == 6386 ||_pItem->lID == 6387 ||_pItem->lID == 6388||_pItem->lID == 6389||_pItem->lID == 6390||_pItem->lID == 6391
			|| _pItem->lID == 6434 || _pItem->lID == 6428 || _pItem->lID == 6429 || _pItem->lID == 6430 || _pItem->lID == 6431 || _pItem->lID == 6432)
		{
			_AddDescriptor();
		}
	}
	else if( _pItem->sType==26 )	// ��ָ
	{
        PushHint( GetName(), COLOR_WHITE, 5, 1 ); // ����

  //      AddHintHeight();

		//_PushItemAttr( ITEMATTR_VAL_MXATK, item );
		//_PushItemAttr( ITEMATTR_VAL_DEF, item );
		//_PushItemAttr( ITEMATTR_VAL_FLEE, item );
		//_PushItemAttr( ITEMATTR_VAL_HIT, item );
		//_PushItemAttr( ITEMATTR_VAL_CRT, item );

		if( _pItem->lID == 1034 )	// �Ŷ�֮�ǣ����⴦��
		{
			sprintf(buf, RES_STRING(CL_LANGUAGE_MATCH_862), _ItemData.sEndure[0] * 10 - 1000, _ItemData.sEndure[1] * 10 - 1000);// ������㷽ʽѯ�ʲ߻�
			PushHint( buf, COLOR_WHITE, 5, 1 );

			return;
		}
		else
		{
			//if ( _pItem->lID >= CItemRecord::enumItemFusionStart && _pItem->lID < CItemRecord::enumItemFusionEnd 
			//	&& _ItemData.GetFusionItemID() > 0 )
			if ( CItemRecord::IsVaildFusionID(_pItem) && _ItemData.GetFusionItemID() > 0 ) // modify by ning.yan  20080821
			{
				if (_pItem->sNeedLv > pEquipItem->sNeedLv)
				{
					PUSH_HINT( RES_STRING(CL_LANGUAGE_MATCH_628), _pItem->sNeedLv, pAttr->get(ATTR_LV)>=_pItem->sNeedLv ? GENERIC_COLOR : VALID_COLOR );
				}
				else
				{
					PUSH_HINT( RES_STRING(CL_LANGUAGE_MATCH_628), pEquipItem->sNeedLv, pAttr->get(ATTR_LV)>=pEquipItem->sNeedLv ? GENERIC_COLOR : VALID_COLOR );
				}
			}
			else
			{
				PUSH_HINT( RES_STRING(CL_LANGUAGE_MATCH_628), _pItem->sNeedLv, pAttr->get(ATTR_LV)>=_pItem->sNeedLv ? GENERIC_COLOR : VALID_COLOR );
			}

			//if ( _pItem->lID >= CItemRecord::enumItemFusionStart && _pItem->lID < CItemRecord::enumItemFusionEnd 
			//	&& _ItemData.GetFusionItemID() > 0 )
			if ( CItemRecord::IsVaildFusionID(_pItem) && _ItemData.GetFusionItemID() > 0 ) // modify by ning.yan  20080821
			{
				_ShowFusionBody(pEquipItem);
				_ShowFusionWork(_pItem, pEquipItem, pAttr);
			}
			else
			{
				_ShowBody();
				_ShowWork( _pItem, pAttr );
			}
		}
	}
    else if( _pItem->sType==23 )	// ����
    {
		// ���� modify by ning.yan 20080821 begin
		//if (_pItem->lID >= CItemRecord::enumItemFusionStart && _pItem->lID < CItemRecord::enumItemFusionEnd
		//	&& _ItemData.GetFusionItemID() > 0)
		if ( CItemRecord::IsVaildFusionID(_pItem) && _ItemData.GetFusionItemID() > 0 ) // end
		{
			sprintf( buf, "Lv%d %s",_ItemData.GetItemLevel(), GetName());
			PushHint( buf, COLOR_WHITE, 5, 1 );
		}
		else
		{
			PushHint( GetName(), COLOR_WHITE, 5, 1 );
		}

        // ������:������,�;ö�
        AddHintHeight();

		_PushValue( RES_STRING(CL_LANGUAGE_MATCH_629), ITEMATTR_VAL_DEF, item );

		if(! isStore)	// �̳��ڲ���ʾ�;�
		{
			sprintf( buf, RES_STRING(CL_LANGUAGE_MATCH_626), item.sEndure[0], item.sEndure[1] );
			PushHint( buf );
		}

		_PushValue( RES_STRING(CL_LANGUAGE_MATCH_631), ITEMATTR_VAL_HIT, item );

		//if ( _pItem->lID >= CItemRecord::enumItemFusionStart && _pItem->lID < CItemRecord::enumItemFusionEnd 
		//	&& _ItemData.GetFusionItemID() > 0 )
		if ( CItemRecord::IsVaildFusionID(_pItem) && _ItemData.GetFusionItemID() > 0 ) // modify by ning.yan  20080821
		{

			sprintf( buf, RES_STRING(CL_LANGUAGE_MATCH_627), _ItemData.GetItemLevel() * 2 + 80 );	// ���Ӷȶ��� 0��-80% 1��-82% ...
			PushHint( buf, GENERIC_COLOR );

		}

       AddHintHeight();

		//if ( _pItem->lID >= CItemRecord::enumItemFusionStart && _pItem->lID < CItemRecord::enumItemFusionEnd 
		//	&& _ItemData.GetFusionItemID() > 0 )	
	    if ( CItemRecord::IsVaildFusionID(_pItem) && _ItemData.GetFusionItemID() > 0 ) // modify by ning.yan  20080821
		{
			if (_pItem->sNeedLv > pEquipItem->sNeedLv)
			{
				PUSH_HINT( RES_STRING(CL_LANGUAGE_MATCH_628), _pItem->sNeedLv, pAttr->get(ATTR_LV)>=_pItem->sNeedLv ? GENERIC_COLOR : VALID_COLOR );
			}
			else
			{
				PUSH_HINT( RES_STRING(CL_LANGUAGE_MATCH_628), pEquipItem->sNeedLv, pAttr->get(ATTR_LV)>=pEquipItem->sNeedLv ? GENERIC_COLOR : VALID_COLOR );
			}


		}
		else
		{
			PUSH_HINT( RES_STRING(CL_LANGUAGE_MATCH_628), _pItem->sNeedLv, pAttr->get(ATTR_LV)>=_pItem->sNeedLv ? GENERIC_COLOR : VALID_COLOR );
		}

		//if ( _pItem->lID >= CItemRecord::enumItemFusionStart && _pItem->lID < CItemRecord::enumItemFusionEnd 
		//	&& _ItemData.GetFusionItemID() > 0 )
		if ( CItemRecord::IsVaildFusionID(_pItem) && _ItemData.GetFusionItemID() > 0 )// modify by ning.yan  20080821
		{
			_ShowFusionBody(pEquipItem);
			_ShowFusionWork(_pItem, pEquipItem, pAttr);
		}
		else
		{
			_ShowBody();
			_ShowWork( _pItem, pAttr );
		}
    }
    else if( _pItem->sType==24 )	// ѥ��
    {
		// ���� modify by ning.yan  20080821 begin
		//if (_pItem->lID >= CItemRecord::enumItemFusionStart && _pItem->lID < CItemRecord::enumItemFusionEnd
		//	&& _ItemData.GetFusionItemID() > 0)
		if ( CItemRecord::IsVaildFusionID(_pItem) && _ItemData.GetFusionItemID() > 0 ) // end
		{
			sprintf( buf, "Lv%d %s",_ItemData.GetItemLevel(), GetName());
			PushHint( buf, COLOR_WHITE, 5, 1 );
		}
		else
		{
			PushHint( GetName(), COLOR_WHITE, 5, 1 );
		}

        // ������:������,�;ö�
        AddHintHeight();
		_PushValue( RES_STRING(CL_LANGUAGE_MATCH_629), ITEMATTR_VAL_DEF, item );

		if(! isStore)	// �̳��ڲ���ʾ�;�
		{
			sprintf( buf, RES_STRING(CL_LANGUAGE_MATCH_626), item.sEndure[0], item.sEndure[1] );
			PushHint( buf );
		}

		_PushValue( RES_STRING(CL_LANGUAGE_MATCH_632), ITEMATTR_VAL_FLEE, item );

		//if ( _pItem->lID >= CItemRecord::enumItemFusionStart && _pItem->lID < CItemRecord::enumItemFusionEnd 
		//	&& _ItemData.GetFusionItemID() > 0 )
		if ( CItemRecord::IsVaildFusionID(_pItem) && _ItemData.GetFusionItemID() > 0 )// modify by ning.yan  20080821
		{

			sprintf( buf, RES_STRING(CL_LANGUAGE_MATCH_627), _ItemData.GetItemLevel() * 2 + 80 );	// ���Ӷȶ��� 0��-80% 1��-82% ...
			PushHint( buf, GENERIC_COLOR );

		}

		AddHintHeight();

		//if ( _pItem->lID >= CItemRecord::enumItemFusionStart && _pItem->lID < CItemRecord::enumItemFusionEnd 
		//	&& _ItemData.GetFusionItemID() > 0 )
		if ( CItemRecord::IsVaildFusionID(_pItem) && _ItemData.GetFusionItemID() > 0 )// modify by ning.yan  20080821
		{
			if (_pItem->sNeedLv > pEquipItem->sNeedLv)
			{
				PUSH_HINT( RES_STRING(CL_LANGUAGE_MATCH_628), _pItem->sNeedLv, pAttr->get(ATTR_LV)>=_pItem->sNeedLv ? GENERIC_COLOR : VALID_COLOR );
			}
			else
			{
				PUSH_HINT( RES_STRING(CL_LANGUAGE_MATCH_628), pEquipItem->sNeedLv, pAttr->get(ATTR_LV)>=pEquipItem->sNeedLv ? GENERIC_COLOR : VALID_COLOR );
			}
		}
		else
		{
			PUSH_HINT( RES_STRING(CL_LANGUAGE_MATCH_628), _pItem->sNeedLv, pAttr->get(ATTR_LV)>=_pItem->sNeedLv ? GENERIC_COLOR : VALID_COLOR );
		}

		//if ( _pItem->lID >= CItemRecord::enumItemFusionStart && _pItem->lID < CItemRecord::enumItemFusionEnd 
		//	&& _ItemData.GetFusionItemID() > 0 )
		if ( CItemRecord::IsVaildFusionID(_pItem) && _ItemData.GetFusionItemID() > 0 )// modify by ning.yan  20080821
		{
			_ShowFusionBody(pEquipItem);
			_ShowFusionWork(_pItem, pEquipItem, pAttr);
		}
		else
		{
			_ShowBody();
			_ShowWork( _pItem, pAttr );
		}
    }
    else if( _pItem->sType==20 )	// ͷ��
    {
		// ���� modify by ning.yan  20080821 begin
		//if (_pItem->lID >= CItemRecord::enumItemFusionStart && _pItem->lID < CItemRecord::enumItemFusionEnd
		//	&& _ItemData.GetFusionItemID() > 0)
		if ( CItemRecord::IsVaildFusionID(_pItem) && _ItemData.GetFusionItemID() > 0 )// end
		{
			sprintf( buf, "Lv%d %s",_ItemData.GetItemLevel(), GetName());
			PushHint( buf, COLOR_WHITE, 5, 1 );
		}
		else
		{
			PushHint( GetName(), COLOR_WHITE, 5, 1 );
		}

        // ������:������,�;ö�
        AddHintHeight();
		_PushValue( RES_STRING(CL_LANGUAGE_MATCH_629), ITEMATTR_VAL_DEF, item );

		if(! isStore)	// �̳��ڲ���ʾ�;�
		{
			sprintf( buf, RES_STRING(CL_LANGUAGE_MATCH_626), item.sEndure[0], item.sEndure[1] );
			PushHint( buf );
		}

		//if ( _pItem->lID >= CItemRecord::enumItemFusionStart && _pItem->lID < CItemRecord::enumItemFusionEnd 
		//	&& _ItemData.GetFusionItemID() > 0 )
		if ( CItemRecord::IsVaildFusionID(_pItem) && _ItemData.GetFusionItemID() > 0 )// modify by ning.yan  20080821
		{
			sprintf( buf, RES_STRING(CL_LANGUAGE_MATCH_627), _ItemData.GetItemLevel() * 2 + 80 );	// ���Ӷȶ��� 0��-80% 1��-82% ...
			PushHint( buf, GENERIC_COLOR );
		}

		AddHintHeight();

		// 2006-05-25  by Philip
		// �Ѿ��ۺ� => ȡ�ۺ�֮ǰ����װ������ߵȼ�������װ���Ľ�ɫ����������װ����ְҵ����
		// û���ۺ� => ֱ��ȡ��ǰװ���ĵȼ�����ɫ��ְҵ
		//if ( _pItem->lID >= CItemRecord::enumItemFusionStart && _pItem->lID < CItemRecord::enumItemFusionEnd 
		//	&& _ItemData.GetFusionItemID() > 0 )
		if ( CItemRecord::IsVaildFusionID(_pItem) && _ItemData.GetFusionItemID() > 0 )// modify by ning.yan  20080821
		{
			short nFusionItemLevel = _pItem->sNeedLv > pEquipItem->sNeedLv ? _pItem->sNeedLv : pEquipItem->sNeedLv;
			PUSH_HINT( RES_STRING(CL_LANGUAGE_MATCH_628), nFusionItemLevel, pAttr->get(ATTR_LV) >= nFusionItemLevel ? GENERIC_COLOR : VALID_COLOR );

			_ShowFusionBody( pEquipItem );
			_ShowFusionWork( pEquipItem, _pItem, pAttr );
		}
		else
		{
			PUSH_HINT( RES_STRING(CL_LANGUAGE_MATCH_628), _pItem->sNeedLv, pAttr->get(ATTR_LV)>=_pItem->sNeedLv ? GENERIC_COLOR : VALID_COLOR );

			_ShowBody();
			_ShowWork( _pItem, pAttr );
		}
    }
    else if( _pItem->sType>=31 && _pItem->sType<=33 )   // ʹ��Ʒ:�ָ���,�ӳ���,����Ч����
    {
		

        SetHintIsCenter( false );

        PushHint( _pItem->szName, COLOR_WHITE, 5, 1 );

		// Add by lark.li 20080430 begin
		if(5786 == _pItem->lID || 5787 == _pItem->lID || 5788 == _pItem->lID || 5789 == _pItem->lID)
		{
			sprintf( buf, RES_STRING(CL_LANGUAGE_MATCH_644),  item.sEndure[0],  item.sEndure[1]);
			PushHint( buf );
		}
		// End

		if( _ItemData.sNum>0 )
		{
			AddHintHeight();
			sprintf( buf, RES_STRING(CL_LANGUAGE_MATCH_633), _ItemData.sNum );
			PushHint( buf );
		}

		_AddDescriptor();

    }
	 
    else if( _pItem->sType==42 )    // �������
    {
        PushHint( _pItem->szName, COLOR_BLUE, 5, 1 );

        SetHintIsCenter( false );
		_AddDescriptor();
    }
    else if( _pItem->sType==18 || _pItem->sType==19 )	// ��ͷ,����
    {
        PushHint( _pItem->szName, COLOR_WHITE, 5, 1 );

		if( _pItem->nID==3908 || _pItem->nID==3108 ) // 3108 add by Philip  2005-05-30
		{
			sprintf( buf, RES_STRING(CL_LANGUAGE_MATCH_626), item.sEndure[0], item.sEndure[1] );
			PushHint( buf, GENERIC_COLOR );
		}

		//if ( _pItem->lID >= CItemRecord::enumItemFusionStart && _pItem->lID < CItemRecord::enumItemFusionEnd 
		//	&& _ItemData.GetFusionItemID() > 0 )
		if ( CItemRecord::IsVaildFusionID(_pItem) && _ItemData.GetFusionItemID() > 0 )// modify by ning.yan  20080821
		{
			sprintf( buf, RES_STRING(CL_LANGUAGE_MATCH_627), _ItemData.GetItemLevel() * 2 + 80 );	// ���Ӷȶ��� 0��-80% 1��-82% ...
			PushHint( buf, GENERIC_COLOR );
		}

		PUSH_HINT( RES_STRING(CL_LANGUAGE_MATCH_628), _pItem->sNeedLv, pAttr->get(ATTR_LV)>=_pItem->sNeedLv ? GENERIC_COLOR : VALID_COLOR );

		_AddDescriptor();
    }
	else if( _pItem->sType==43 )    // ����֤��
	{
        PushHint( _pItem->szName, COLOR_WHITE, 5, 1 );

		if( _pBoatHint )
		{
			PushHint( _pBoatHint->szName );

			xShipInfo* pInfo = GetShipInfo( _pBoatHint->sBoatID );

			if( pInfo )
			{
				int nNeedLv = pInfo->sLvLimit;
				if( nNeedLv>0 )
				{
					sprintf( buf, RES_STRING(CL_LANGUAGE_MATCH_628), nNeedLv );
					PushHint( buf, g_stUIBoat.GetHuman()->getGameAttr()->get(ATTR_LV)>=nNeedLv ? GENERIC_COLOR : VALID_COLOR );
				}
			}

			sprintf( buf, RES_STRING(CL_LANGUAGE_MATCH_634), _pBoatHint->sLevel );
			PushHint( buf );
			
			sprintf( buf, RES_STRING(CL_LANGUAGE_MATCH_635), _pBoatHint->dwExp );
			PushHint( buf );

			AddHintHeight();

			sprintf( buf, RES_STRING(CL_LANGUAGE_MATCH_636), _pBoatHint->dwHp,(int)(_pBoatHint->dwMaxHp) );
			PushHint( buf );

			if( pInfo )
			{
				_ShowWork( pInfo, g_stUIBoat.GetHuman()->getGameAttr() );
			}

			sprintf( buf, RES_STRING(CL_LANGUAGE_MATCH_637), _pBoatHint->dwSp, (int)(_pBoatHint->dwMaxSp) );
			PushHint( buf );

			sprintf( buf, RES_STRING(CL_LANGUAGE_MATCH_638), _pBoatHint->dwMinAttack,(int)(_pBoatHint->dwMaxAttack) );
			PushHint( buf );

			sprintf( buf, RES_STRING(CL_LANGUAGE_MATCH_639), _pBoatHint->dwDef );
			PushHint( buf );

			sprintf( buf, RES_STRING(CL_LANGUAGE_MATCH_640), _pBoatHint->dwSpeed );
			PushHint( buf );

			sprintf( buf, RES_STRING(CL_LANGUAGE_MATCH_641), _pBoatHint->dwShootSpeed );
			PushHint( buf );

			sprintf( buf, RES_STRING(CL_LANGUAGE_MATCH_642), _pBoatHint->byHasItem, _pBoatHint->byCapacity );
			PushHint( buf );	
			
			sprintf( buf, RES_STRING(CL_LANGUAGE_MATCH_643), StringSplitNum(_pBoatHint->dwPrice / 2) );
			PushHint( buf );
		}
		else
		{
			CBoat* pBoat = g_stUIBoat.FindBoat( _ItemData.GetDBParam(enumITEMDBP_INST_ID) );
			if( pBoat )
			{
				CCharacter* pCha = pBoat->GetCha();
				PushHint( pCha->getName() );

				int nNeedLv = pCha->GetShipInfo()->sLvLimit;
				if( nNeedLv>0 )
				{
					sprintf( buf, RES_STRING(CL_LANGUAGE_MATCH_628), nNeedLv );
					PushHint( buf, g_stUIBoat.GetHuman()->getGameAttr()->get(ATTR_LV)>=nNeedLv ? GENERIC_COLOR : VALID_COLOR );
				}

				SGameAttr* pAttr = pCha->getGameAttr();
				sprintf( buf, RES_STRING(CL_LANGUAGE_MATCH_634), pAttr->get(ATTR_LV) );
				PushHint( buf );
				
				char buff[32];
				_i64toa(pAttr->get(ATTR_CEXP), buff, 10);
				sprintf( buf, RES_STRING(CL_LANGUAGE_MATCH_635), buff );
				PushHint( buf );

				AddHintHeight();

				sprintf( buf, RES_STRING(CL_LANGUAGE_MATCH_636), (int)pAttr->get(ATTR_HP), (int)pAttr->get(ATTR_MXHP) );
				PushHint( buf );

				_ShowWork( pCha->GetShipInfo(), g_stUIBoat.GetHuman()->getGameAttr() );

				sprintf( buf, RES_STRING(CL_LANGUAGE_MATCH_637), (int)pAttr->get(ATTR_SP), (int)pAttr->get(ATTR_MXSP) );
				PushHint( buf );

				sprintf( buf, RES_STRING(CL_LANGUAGE_MATCH_638), (int)pAttr->get(ATTR_BMNATK), (int)pAttr->get(ATTR_BMXATK) );
				PushHint( buf );

				sprintf( buf, RES_STRING(CL_LANGUAGE_MATCH_639), pAttr->get(ATTR_BDEF) );
				PushHint( buf );

				sprintf( buf, RES_STRING(CL_LANGUAGE_MATCH_640), pAttr->get(ATTR_BMSPD) );
				PushHint( buf );

				sprintf( buf, RES_STRING(CL_LANGUAGE_MATCH_641), pAttr->get(ATTR_BASPD) );
				PushHint( buf );

				CGoodsGrid* pGoods = pBoat->GetGoodsGrid();
				sprintf( buf, RES_STRING(CL_LANGUAGE_MATCH_642), pGoods->GetCurNum(), pGoods->GetMaxNum() );
				PushHint( buf );	

				sprintf( buf, RES_STRING(CL_LANGUAGE_MATCH_643), StringSplitNum( pAttr->get(ATTR_BOAT_PRICE) / 2 ) );
				PushHint( buf );
			}
		}

		_AddDescriptor();
		return;
	}
	else if( _pItem->sType==29 )    // ����
	{
        PushHint( _pItem->szName, COLOR_WHITE, 5, 1 );

		PUSH_HINT( RES_STRING(CL_LANGUAGE_MATCH_628), _pItem->sNeedLv, pAttr->get(ATTR_LV)>=_pItem->sNeedLv ? GENERIC_COLOR : VALID_COLOR );

		_ShowWork( _pItem, pAttr );
	
        sprintf( buf, RES_STRING(CL_LANGUAGE_MATCH_644), _ItemData.sEnergy[0], _ItemData.sEnergy[1] );
        PushHint( buf );

		_AddDescriptor();
	}
	else if( _pItem->sType==45 )    // ó��֤��
	{
        PushHint( _pItem->szName, COLOR_WHITE, 5, 1 );

		PUSH_HINT( RES_STRING(CL_LANGUAGE_MATCH_634), _ItemData.sEnergy[0] );
		
		float fB320 = (float)_ItemData.sEnergy[1];
		float fRate = 0.0f;
		if( _ItemData.sEnergy[1]==0 )
		{
			fRate = 30.0f;
		}
		else
		{
			fRate = max( 0.0f, 30 - pow( fB320, 0.5f ) ) + pow( fB320, -0.5f );

			if( fRate > 30.0f ) fRate = 30.0f;
			if( fRate < 0.0f ) fRate = 0.0f;
		}
		sprintf( buf, RES_STRING(CL_LANGUAGE_MATCH_645), fRate );
		PushHint( buf );

	}
	else if( _pItem->sType==34 )	// ������
	{
        PushHint( _pItem->szName, COLOR_WHITE, 5, 1 );

		CSkillRecord* pSkill = GetSkillRecordInfo( _pItem->szName );
		if( pSkill )
		{
			if( pSkill->chJobSelect[0][0]>=0 )	
			{
				std::ostrstream str;
				str << RES_STRING(CL_LANGUAGE_MATCH_646);

				for (char i = 0; i<defSKILL_JOB_SELECT_NUM; i++ )
				{
					if( pSkill->chJobSelect[i][0]<0 )
						break;

					if( i>0 && (i % 2)==0 )
					{
						str << RES_STRING(CL_LANGUAGE_MATCH_647);
					}
					str << g_GetJobName( pSkill->chJobSelect[i][0] );
					str << " ";
				}
				str << '\0';
				
				PushHint( str.str(), pSkill->IsJobAllow( pAttr->get(ATTR_JOB) ) ? GENERIC_COLOR : VALID_COLOR );
			}

			if( pSkill->sLevelDemand!=-1 )
			{
				sprintf( buf, RES_STRING(CL_LANGUAGE_MATCH_648), pSkill->sLevelDemand );
		        PushHint( buf, pAttr->get(ATTR_LV)>=pSkill->sLevelDemand ? GENERIC_COLOR : VALID_COLOR );
			}

			CSkillRecord* p = NULL;
			CSkillRecord* pSelfSkill = NULL;
			for( int i=0; i<defSKILL_PRE_SKILL_NUM; i++ )
			{
				if( pSkill->sPremissSkill[i][0] < 0 )
					break;

				p = GetSkillRecordInfo( pSkill->sPremissSkill[i][0] );
				if( p )
				{
					pSelfSkill = g_stUIEquip.FindSkill( p->nID );
					sprintf( buf, RES_STRING(CL_LANGUAGE_MATCH_649), p->szName, pSkill->sPremissSkill[i][1] );
					if( pSelfSkill && pSelfSkill->GetSkillGrid().chLv >= pSkill->sPremissSkill[i][1] )
						PushHint( buf );
					else
						PushHint( buf, VALID_COLOR );
				}
			}
		}
		else
		{
			_AddDescriptor();
		}
	}
	else if( _pItem->sType == 46 )	// ����֤֮
	{
        PushHint( _pItem->szName, COLOR_WHITE, 5, 1 );

		int show_attr[] = { ITEMATTR_VAL_STR, ITEMATTR_VAL_AGI, ITEMATTR_VAL_DEX, ITEMATTR_VAL_CON, ITEMATTR_VAL_STA };
		string show_text[] = { RES_STRING(CL_LANGUAGE_MATCH_650), RES_STRING(CL_LANGUAGE_MATCH_651), RES_STRING(CL_LANGUAGE_MATCH_652), RES_STRING(CL_LANGUAGE_MATCH_653), RES_STRING(CL_LANGUAGE_MATCH_654) };
		int value = 0;
		const int count = sizeof(show_attr)/sizeof(show_attr[0]);
		for( int i=0; i<count; i++ )
		{
			value = item.sInstAttr[show_attr[i]];
			item.sInstAttr[show_attr[i]] = 0;
			sprintf( buf, "%s:%d", show_text[i].c_str(), value );
			PushHint( buf, GENERIC_COLOR );
		}

		sprintf( buf, RES_STRING(CL_LANGUAGE_MATCH_655), _ItemData.sEndure[1] );
		PushHint( buf, GENERIC_COLOR );

		sprintf( buf, "%s:%d", RES_STRING(CL_LANGUAGE_MATCH_848), _ItemData.sEnergy[1] );	// �Ҷ�����
		PushHint( buf, GENERIC_COLOR );

		_AddDescriptor();
	}
	else if( _pItem->sType==49 )
	{
		sprintf( buf, RES_STRING(CL_LANGUAGE_MATCH_656), ConvertNumToChinese( item.sEnergy[1] ).c_str(), _pItem->szName );
        PushHint( buf, COLOR_WHITE, 5, 1 );
		PushHint( GetStoneHint(1).c_str() );	// ������ʯ����ʾ1��������
		_AddDescriptor();
	}
	else if( _pItem->sType==50 )
	{
		sprintf( buf, RES_STRING(CL_LANGUAGE_MATCH_656), ConvertNumToChinese( item.sEnergy[1] ).c_str(), _pItem->szName );
        PushHint( buf, COLOR_WHITE, 5, 1 );
		_AddDescriptor();
	}
//	else if( enumItemTypePet==_pItem->sType )
	else if( _pItem->sType == 59 || _pItem->sType == 67 )	// 59 = ���飬67 = ���鵰
	{
		int nLevel = item.sInstAttr[ITEMATTR_VAL_STR]
					+ item.sInstAttr[ITEMATTR_VAL_AGI] 
					+ item.sInstAttr[ITEMATTR_VAL_DEX] 
					+ item.sInstAttr[ITEMATTR_VAL_CON] 
					+ item.sInstAttr[ITEMATTR_VAL_STA];

		sprintf( buf, "Lv%d %s", nLevel, GetName() );
        PushHint( buf, COLOR_WHITE, 5, 1 );

		AddHintHeight();

		PUSH_HINT( RES_STRING(CL_LANGUAGE_MATCH_657), item.sInstAttr[ITEMATTR_VAL_STR] );
		PUSH_HINT( RES_STRING(CL_LANGUAGE_MATCH_658), item.sInstAttr[ITEMATTR_VAL_AGI] );
		PUSH_HINT( RES_STRING(CL_LANGUAGE_MATCH_659), item.sInstAttr[ITEMATTR_VAL_CON] );
		PUSH_HINT( RES_STRING(CL_LANGUAGE_MATCH_660), item.sInstAttr[ITEMATTR_VAL_DEX] );
		PUSH_HINT( RES_STRING(CL_LANGUAGE_MATCH_661), item.sInstAttr[ITEMATTR_VAL_STA] );

		item.sInstAttr[ITEMATTR_VAL_STR] = 0;
		item.sInstAttr[ITEMATTR_VAL_AGI] = 0;
		item.sInstAttr[ITEMATTR_VAL_DEX] = 0;
		item.sInstAttr[ITEMATTR_VAL_CON] = 0;
		item.sInstAttr[ITEMATTR_VAL_STA] = 0;

		AddHintHeight();

		if(! isStore)	// �̳��ڲ���ʾ����������ͳɳ���
		{
			sprintf( buf, RES_STRING(CL_LANGUAGE_MATCH_662), _ItemData.sEndure[0] / 50, _ItemData.sEndure[1] / 50 );
			PushHint( buf );

			sprintf( buf, RES_STRING(CL_LANGUAGE_MATCH_663), _ItemData.sEnergy[0], _ItemData.sEnergy[1] );
			PushHint( buf );
		}

		AddHintHeight();

		// ��ǿ,�����ǿ
		AddHintHeight();
		for( int i=0; i<ITEMATTR_CLIENT_MAX; i++ )
		{
			if( item.sInstAttr[i]!=0 )
			{
				_PushItemAttr( i, item, ADVANCED_COLOR );
			}
		}

		int array[3][2]= { 0 };
		g_pGameApp->GetScriptMgr()->DoString( "GetElfSkill", "u-dddddd", _ItemData.lDBParam[0]
					, &array[0][0], &array[0][1]
					, &array[1][0], &array[1][1]
					, &array[2][0], &array[2][1]
				);

		CElfSkillInfo* pInfo = NULL;
		for( int i=0; i<3; i++ )
		{
			pInfo = GetElfSkillInfo( array[i][0], array[i][1] );
			if( pInfo )
			{
				PushHint( pInfo->szDataName );				
			}
		}
		_AddDescriptor();
		return;
	}
	else if( _pItem->sType == 65 )	// ������̳  add by Philip.Wu  2006-06-19
	{
		// Add by lark.li 20080320 begin
		if(5724 == _pItem->lID)
		{
			sprintf( buf, RES_STRING(CL_UIITEMCOMMAND_CPP_00001),  item.sEnergy[0] / 60);
			PushHint( buf );

			SetHintIsCenter( false );
			_AddDescriptor();

			return;
		}
		// End

		//	Modify by alfred.shi 20080822
		if( 3279 <= _pItem->lID && _pItem->lID <= 3282||_pItem->lID == 6370||_pItem->lID == 6371||_pItem->lID == 6376||
				_pItem->lID == 6377||_pItem->lID == 6378||(_pItem->lID>=5882&&_pItem->lID<=5893)||_pItem->lID == 5895||
				_pItem->lID == 5897||(_pItem->lID>=6383&&_pItem->lID<=6385))	// ����ϵͳ���⴦��������
		{
			PushHint( _pItem->szName, COLOR_WHITE, 5, 1 );

			SetHintIsCenter( false );
			_AddDescriptor();

			return;
		}


		SetHintIsCenter(true);

		PushHint( _pItem->szName, COLOR_WHITE, 5, 1 );
		//_AddDescriptor();
		AddHintHeight();

		if( _pItem->lID == 2911 || _pItem->lID == 2912 || _pItem->lID == 2952 || 
			_pItem->lID == 3066 || _pItem->lID == 3078 )	// ����������⴦��
		{
			int nMonth  = 0;
			int nDay    = 0;
			int nHour   = 0;
			int nMinute = 0;
			int nSecond = 0;

			for(int i = 0; i < 5; ++i)
			{
				switch(GetData().sInstAttr[i][0])
				{
				case ITEMATTR_VAL_STA:
					nMonth = GetData().sInstAttr[i][1];
					break;
				case ITEMATTR_VAL_STR:
					nDay = GetData().sInstAttr[i][1];
					break;
				case ITEMATTR_VAL_CON:
					nHour = GetData().sInstAttr[i][1];
					break;
				case ITEMATTR_VAL_DEX:
					nMinute = GetData().sInstAttr[i][1];
					break;
				case ITEMATTR_VAL_AGI:
					nSecond = GetData().sInstAttr[i][1];
					break;
				}
			}

			if(_pItem->lID == 2911 || _pItem->lID == 2952 || _pItem->lID == 3066 || _pItem->lID == 3078)
			{
				sprintf( buf, "%s: %d", RES_STRING(CL_LANGUAGE_MATCH_916), nMonth );
				PushHint( buf );

				sprintf( buf, "%s: %d", RES_STRING(CL_LANGUAGE_MATCH_917), nDay );
				PushHint( buf );

				sprintf( buf, "%s: %d", RES_STRING(CL_LANGUAGE_MATCH_918), nHour );
				PushHint( buf );

				sprintf( buf, "%s: %d", RES_STRING(CL_LANGUAGE_MATCH_919), nMinute );
				PushHint( buf );
			}

			if(_pItem->lID != 3066 && _pItem->lID != 3078)
			{
				sprintf( buf, "%s: %d", RES_STRING(CL_LANGUAGE_MATCH_920), nSecond );
				PushHint( buf );
			}

			AddHintHeight();
			_AddDescriptor();
			AddHintHeight();

			return;
		}
		else if(_pItem->lID == 2954)	// ������ߴ�������֤����
		{
			int nCount = 0;
			for(int i = 0; i < 5; ++i)
			{
				if(GetData().sInstAttr[i][0] == ITEMATTR_VAL_STR)
				{
					nCount = GetData().sInstAttr[i][1];
					break;
				}
			}

			sprintf( buf, "%s: %d", RES_STRING(CL_LANGUAGE_MATCH_933), nCount );	// "��������"
			PushHint( buf );

			AddHintHeight();
			_AddDescriptor();
			AddHintHeight();

			return;
		}
        else if(_pItem->lID == 579)     // ��ѧ֤�� ������ͨ������ʾ���⴦��
        {
            SetHintIsCenter( false );
		    _AddDescriptor();

            return;
        }
		//Add by sunny.sun 20080528 
		//Begin
		else if( _pItem->nID==5803 || _pItem->nID == 6373 )
		{
			if( _pItem->nID == 5803 )
			{
				sprintf(buf,"%s:%d",RES_STRING(CL_LANGUAGE_MATCH_651),item.sInstAttr[ITEMATTR_VAL_STR]);
			}
			if(_pItem->nID == 6373 )
			{
				int nCount = 0;
				for(int i = 0; i < 5; ++i)
				{
					if(GetData().sInstAttr[i][0] == ITEMATTR_VAL_STR)
					{
						nCount = GetData().sInstAttr[i][1];
						break;
					}
				}

				sprintf(buf,"�洢ʱ��Ϊ��%d",nCount);
			}

			PushHint( buf, GENERIC_COLOR );
			_AddDescriptor();

			return;
		}
		//End

		sprintf( buf, RES_STRING(CL_LANGUAGE_MATCH_664), 5 - item.sInstAttr[ITEMATTR_VAL_AGI] );
        PushHint( buf );

		sprintf( buf, RES_STRING(CL_LANGUAGE_MATCH_665), 5 - item.sInstAttr[ITEMATTR_VAL_STR] );
        PushHint( buf );

		sprintf( buf, RES_STRING(CL_LANGUAGE_MATCH_666), 5 - item.sInstAttr[ITEMATTR_VAL_DEX] );
        PushHint( buf );

		sprintf( buf, RES_STRING(CL_LANGUAGE_MATCH_667), 5 - item.sInstAttr[ITEMATTR_VAL_CON] );
        PushHint( buf );

		AddHintHeight();

		switch( item.sInstAttr[ITEMATTR_VAL_STA] )
		{
		case 1:		// item.sID = 866
			PushHint( RES_STRING(CL_LANGUAGE_MATCH_668), COLOR_RED );
			break;

		case 2:		// item.sID = 865
			PushHint( RES_STRING(CL_LANGUAGE_MATCH_669), COLOR_RED );
			break;

		case 3:		// item.sID = 864
			PushHint( RES_STRING(CL_LANGUAGE_MATCH_670), COLOR_RED );
			break;

		default:
			PushHint( RES_STRING(CL_LANGUAGE_MATCH_671), COLOR_RED );
			break;
		}

		AddHintHeight();

		sprintf( buf, RES_STRING(CL_LANGUAGE_MATCH_672), _ItemData.sEnergy[0]);
		PushHint( buf );

		return;
	}
	else if(_pItem->sType == 69)	// XXXͼֽ
	{
        int iItem = 0;
        long lForge = 0;
        CItemRecord*     pCItemRec = NULL;

        PushHint( _pItem->szName, COLOR_WHITE, 5, 1 );

        sprintf(buf, RES_STRING(CL_LANGUAGE_MATCH_869), _ItemData.sEndure[0]);
        PushHint(buf, GENERIC_COLOR);

        iItem = item.sInstAttr[ITEMATTR_VAL_AGI];
        if(iItem)
        {
            pCItemRec = GetItemRecordInfo(iItem);
            if(pCItemRec)
            {
                sprintf(buf, RES_STRING(CL_LANGUAGE_MATCH_870), pCItemRec->szName);
                PushHint(buf, GENERIC_COLOR);
            }
        }

        sprintf(buf, RES_STRING(CL_LANGUAGE_MATCH_871), _ItemData.sEnergy[1] - 100);
        PushHint(buf, GENERIC_COLOR);

        AddHintHeight();

        lForge = _ItemData.GetForgeParam();

        iItem = item.sInstAttr[ITEMATTR_VAL_STR];
        if(iItem)
        {
            pCItemRec = GetItemRecordInfo(iItem);
            if(pCItemRec)
            {
                sprintf(buf, RES_STRING(CL_LANGUAGE_MATCH_872), pCItemRec->szName, (lForge / 10000000));
                PushHint(buf, GENERIC_COLOR);
            }
        }

        lForge %= 10000000;
        iItem = item.sInstAttr[ITEMATTR_VAL_CON];
        if(iItem)
        {
            pCItemRec = GetItemRecordInfo(iItem);
            if(pCItemRec)
            {
                sprintf(buf, RES_STRING(CL_LANGUAGE_MATCH_873), pCItemRec->szName, (lForge / 10000));
                PushHint(buf, GENERIC_COLOR);
            }
        }

        lForge %= 1000;
        iItem = item.sInstAttr[ITEMATTR_VAL_DEX];
        if(iItem)
        {
            pCItemRec = GetItemRecordInfo(iItem);
            if(pCItemRec)
            {
                sprintf(buf, RES_STRING(CL_LANGUAGE_MATCH_874), pCItemRec->szName, (lForge / 10));
                PushHint(buf, GENERIC_COLOR);
            }
        }

        AddHintHeight();

        sprintf(buf, RES_STRING(CL_LANGUAGE_MATCH_875), item.sInstAttr[ITEMATTR_VAL_STA]);
        PushHint(buf, GENERIC_COLOR);

        sprintf(buf, RES_STRING(CL_LANGUAGE_MATCH_876), _ItemData.sEnergy[0] * 10);
        PushHint(buf, GENERIC_COLOR);

        sprintf(buf, RES_STRING(CL_LANGUAGE_MATCH_877), _ItemData.sEndure[1]);
        PushHint(buf, GENERIC_COLOR);

        AddHintHeight();

 		if( _nPrice != 0 )
		{
			AddHintHeight();
			sprintf( buf, RES_STRING(CL_LANGUAGE_MATCH_674), StringSplitNum( isMain ? _nPrice / 2 : _nPrice ) );
			PushHint( buf, COLOR_WHITE );

			sprintf( buf, "%s", ConvertNumToChinese( isMain ? _nPrice / 2 : _nPrice ).c_str() );
			PushHint( buf, COLOR_WHITE );
		}

        return;
	}
    else if(_pItem->sType == 70)
    {
        PushHint( _pItem->szName, COLOR_WHITE, 5, 1 );

		if(_pItem->lID == 2902 || _pItem->lID == 2903)	// ������Ե��, ������Ե��
		{
			sprintf(buf, RES_STRING(CL_LANGUAGE_MATCH_909), item.sInstAttr[ITEMATTR_VAL_STR]); // "��Ե���룺%d"
	        PushHint(buf, GENERIC_COLOR);

			AddHintHeight();
			_AddDescriptor();
			AddHintHeight();

			return;
		}

		sprintf(buf, RES_STRING(CL_LANGUAGE_MATCH_869), item.sInstAttr[ITEMATTR_VAL_STR]);
        PushHint(buf, GENERIC_COLOR);

        if(_pItem->lID != 2236)
        {
            sprintf(buf, RES_STRING(CL_LANGUAGE_MATCH_878), _ItemData.sEndure[0] / 50);
            PushHint(buf, GENERIC_COLOR);

            sprintf(buf, RES_STRING(CL_LANGUAGE_MATCH_897), _ItemData.sEnergy[0]); // "���߾��飺%i"
            PushHint(buf, GENERIC_COLOR);
        }

        AddHintHeight();

        _AddDescriptor();

        AddHintHeight();

 		if( _nPrice != 0 )
		{
			AddHintHeight();
			sprintf( buf, RES_STRING(CL_LANGUAGE_MATCH_674), StringSplitNum( isMain ? _nPrice / 2 : _nPrice ) );
			PushHint( buf, COLOR_WHITE );

			sprintf( buf, "%s", ConvertNumToChinese( isMain ? _nPrice / 2 : _nPrice ).c_str() );
			PushHint( buf, COLOR_WHITE );
		}

        return;
    }
	else if(_pItem->sType == 71 && _pItem->lID == 3010)
	{
        PushHint( _pItem->szName, COLOR_WHITE, 5, 1 );

        sprintf( buf, RES_STRING(CL_LANGUAGE_MATCH_644), _ItemData.sEnergy[0], _ItemData.sEnergy[1] );
        PushHint( buf );

		SetHintIsCenter( true );
		_AddDescriptor();
	}
	else if( _pItem->sType==71 && _pItem->lID == 3289 )   //ѧ��֤����
    {
		//add by ALLEN 2007-10-16

		// ѧ��֤���⴦�����ȶ��ģ�����
		PushHint(_pItem->szName, COLOR_WHITE, 5, 1 ); // ����

		int nLevel = item.chForgeLv;
		const char* arShowName[5] = { RES_STRING(CL_LANGUAGE_MATCH_944), RES_STRING(CL_LANGUAGE_MATCH_945), RES_STRING(CL_LANGUAGE_MATCH_946), RES_STRING(CL_LANGUAGE_MATCH_947), RES_STRING(CL_LANGUAGE_MATCH_948) };// "�׶�԰", "Сѧ", "����", "����", "��ѧ" };
		if(0 <= nLevel && nLevel <= 4)
		{
			sprintf(buf, RES_STRING(CL_LANGUAGE_MATCH_949), arShowName[nLevel]);	// "ѧ��:%s"
			PushHint(buf, COLOR_WHITE, 5, 1 );
		}

		sprintf(buf, RES_STRING(CL_LANGUAGE_MATCH_950), item.sEndure[0], item.sEndure[1]);	// "ѧ��(%d/%d)"
		PushHint(buf, COLOR_WHITE, 5, 1 );

		sprintf(buf, RES_STRING(CL_LANGUAGE_MATCH_951), item.sEnergy[0] * 1000, item.sEnergy[1] * 1000);	// "����(%d/%d)"
		PushHint(buf, COLOR_WHITE, 5, 1 );

		return;
    }
	//	Add by alfred.shi 20080922 begin. �������޴���
	else if( _pItem->sType==71 && _pItem->lID == 6377 )
	{
		
		PushHint( _pItem->szName, COLOR_WHITE, 5, 1 );

		SetHintIsCenter( false );
		_AddDescriptor();

		return;
		
	}
	//	End.
    else if(_pItem->sType == 41)
    {
		if(_pItem->lID == 58) // ��Ů��Ҫ�����⴦��з��
		{
			PushHint( _pItem->szName, COLOR_WHITE, 5, 1 );

			//sprintf( buf, RES_STRING(CL_LANGUAGE_MATCH_626), item.sEndure[0] * 1000, item.sEndure[1] * 1000 );
			sprintf( buf, RES_STRING(CL_LANGUAGE_MATCH_626), item.sEnergy[0], item.sEnergy[1] );
			PushHint( buf, GENERIC_COLOR );

			SetHintIsCenter( true );
			_AddDescriptor();

			return;
		}
		else if(_pItem->lID == 171) // bragiҪ�����⴦��
		{
			PushHint( _pItem->szName, COLOR_WHITE, 5, 1 );

			static const char* pszText[5] = {	RES_STRING(CL_LANGUAGE_MATCH_952), 
												RES_STRING(CL_LANGUAGE_MATCH_953), 
												RES_STRING(CL_LANGUAGE_MATCH_954), 
												RES_STRING(CL_LANGUAGE_MATCH_955), 
												RES_STRING(CL_LANGUAGE_MATCH_956)	};

			int nIndex = item.sEndure[0];

			sprintf( buf, RES_STRING(CL_LANGUAGE_MATCH_957), 0 <= nIndex && nIndex <= 4 ? pszText[nIndex] : "Not Valid");
			PushHint( buf, GENERIC_COLOR );

			SetHintIsCenter( true );
			_AddDescriptor();

			return;
		}
		else if(_pItem->lID == 2967) // ��ɩҪ�����⴦�����
		{
			PushHint( _pItem->szName, COLOR_WHITE, 5, 1 );

			sprintf( buf, RES_STRING(CL_LANGUAGE_MATCH_626), item.sEnergy[0], item.sEnergy[1] );
			PushHint( buf, GENERIC_COLOR );

			SetHintIsCenter( true );
			_AddDescriptor();

			return;
		}
		else if(_pItem->lID == 6066)
		{
			PushHint( _pItem->szName, COLOR_WHITE, 5, 1 );
			//sprintf(buf,"%s:%d","ս�ӱ��",item.sInstAttr[ITEMATTR_VAL_STR]);
			sprintf(buf,"%s:%d",RES_STRING(CL_UIITEMCOMMAND_CPP_00002),item.sInstAttr[ITEMATTR_VAL_STR]);
			PushHint( buf, GENERIC_COLOR );
			//sprintf(buf,"%s:%d","�������",item.sInstAttr[ITEMATTR_VAL_AGI]);
			sprintf(buf,"%s:%d",RES_STRING(CL_UIITEMCOMMAND_CPP_00003),item.sInstAttr[ITEMATTR_VAL_AGI]);
			PushHint( buf, GENERIC_COLOR );
			//sprintf(buf,"%s:%d","�ִα��",item.sInstAttr[ITEMATTR_VAL_AGI]);
			sprintf(buf,"%s:%d",RES_STRING(CL_UIITEMCOMMAND_CPP_00004),item.sInstAttr[ITEMATTR_VAL_DEX]);
			PushHint( buf, GENERIC_COLOR );
			////sprintf(buf,"%s:%d","���α��",item.sInstAttr[ITEMATTR_VAL_AGI]);
			//sprintf(buf,"%s:%d",RES_STRING(CL_UIITEMCOMMAND_CPP_00005),item.sInstAttr[ITEMATTR_VAL_CON]);
			//PushHint( buf, GENERIC_COLOR );
			return;
		}
		else    // һ�����
		{
			PushHint( _pItem->szName, COLOR_WHITE, 5, 1 );

			SetHintIsCenter( false );
			_AddDescriptor();
		}
	}
	else if( _pItem->sType== 75 )          // ��Ʊ
	{
        PushHint( _pItem->szName, COLOR_WHITE, 5, 1 );
		
		SetHintIsCenter( false );

		//int nLevel = item.sInstAttr[ITEMATTR_VAL_STR]
		//			+ item.sInstAttr[ITEMATTR_VAL_AGI] 
		//			+ item.sInstAttr[ITEMATTR_VAL_DEX] 
		//			+ item.sInstAttr[ITEMATTR_VAL_CON] 
		//			+ item.sInstAttr[ITEMATTR_VAL_STA];
		if( floor( (float)item.sInstAttr[ITEMATTR_VAL_STR] / 1000) > 0)
		{
			//sprintf( buf, "�ںţ�%03d", item.sInstAttr[ITEMATTR_VAL_STR] % 1000 );
			sprintf( buf, RES_STRING(CL_UIITEMCOMMAND_CPP_00006), item.sInstAttr[ITEMATTR_VAL_STR] % 1000 );
			PushHint( buf, GENERIC_COLOR );
			
			//sprintf( buf, "��д���ڣ�%02d��%02d��", (short)floor( (float)item.sInstAttr[ITEMATTR_VAL_AGI] / 100),  item.sInstAttr[ITEMATTR_VAL_AGI] % 100);
			sprintf( buf, RES_STRING(CL_UIITEMCOMMAND_CPP_00007), (short)floor( (float)item.sInstAttr[ITEMATTR_VAL_AGI] / 100),  item.sInstAttr[ITEMATTR_VAL_AGI] % 100);
			PushHint( buf, GENERIC_COLOR );

			short c1 = (short)floor( (float)item.sInstAttr[ITEMATTR_VAL_DEX] / 100);
			short c2 = item.sInstAttr[ITEMATTR_VAL_DEX] % 100;

			short c3 = (short)floor( (float)item.sInstAttr[ITEMATTR_VAL_CON] / 100);
			short c4 = item.sInstAttr[ITEMATTR_VAL_CON] % 100;

			short c5 = (short)floor( (float)item.sInstAttr[ITEMATTR_VAL_STA] / 100);
			short c6 = item.sInstAttr[ITEMATTR_VAL_STA] % 100;

			//sprintf( buf, "����ţ�%c %c %c %c %c %c", c1, c2, c3, c4, c5, c6);
			sprintf( buf, RES_STRING(CL_UIITEMCOMMAND_CPP_00008), c1, c2, c3, c4, c5, c6);
			PushHint( buf, GENERIC_COLOR );
		}
		else
			//PushHint( "δ��д���" );
			PushHint( RES_STRING(CL_UIITEMCOMMAND_CPP_00009) );

		_AddDescriptor();

		return;
	}
    else    // һ�����
    {
        PushHint( _pItem->szName, COLOR_WHITE, 5, 1 );

        SetHintIsCenter( false );
		_AddDescriptor();
    }

	if(_pItem->sType != 75)	// 
	{
		// ��ǿ,�����ǿ
		AddHintHeight();
		for( int i=0; i<ITEMATTR_CLIENT_MAX; i++ )
		{
			if( item.sInstAttr[i]!=0 )
			{
				_PushItemAttr( i, item, ADVANCED_COLOR );
			}
		}
	}

	if( _hints.GetCount()>0 && _pItem->sType<=27 && _pItem->sType!=18 && _pItem->sType!=19 && _pItem->sType!=21) 
	{
		// �������ֵ�İ�λ������ɫ,ʮλ�����´�������ǰ׺
		char szBuf[16] = { 0 };
		sprintf( szBuf, "%09d", _ItemData.sEnergy[1]/10 );		// ��ʮ����Ϊ����������ֵΪ4λ��,�ȴ��Ժ��Ϊ��λ
		char szHundred[2] = { szBuf[6], 0 };
		int nHundred = atoi( szHundred );
		int nTen = atoi( &szBuf[7] );

		DWORD dwNameColor = COLOR_BLACK;
		switch( nHundred )
		{
		case 0:   dwNameColor=0xffC1C1C1; break;
		case 1:   dwNameColor=0xffFFFFFF; break;
		case 2:   dwNameColor=0xffFFFFFF; break;
		case 3:   dwNameColor=0xffA2E13E; break;
		case 4:   dwNameColor=0xffA2E13E; break;
		case 5:   dwNameColor=0xffd68aff; break;
		case 6:   dwNameColor=0xffd68aff; break;
		case 7:   dwNameColor=0xffff6440; break; 
		case 8:   dwNameColor=0xffff6440; break;
		case 9:   dwNameColor=0xffffcc12; break;
		}

		CItemPreInfo* pInfo = GetItemPreInfo( nTen );
		if( pInfo && strcmp( pInfo->szDataName, "0" )!=0 )
		{
			//if (_pItem->lID >= CItemRecord::enumItemFusionStart && _pItem->lID < CItemRecord::enumItemFusionEnd)
			if ( CItemRecord::IsVaildFusionID(_pItem) )// modify by ning.yan  20080821
			{
				sprintf( buf, "Lv%d %s%s",_ItemData.GetItemLevel(), pInfo->szDataName, GetName());

				//	2008-7-31	yangyinyu	add	begin!
				//	���ӶԵ��������Ĵ���
				if(	_ItemData.dwDBID	)
					_hints.GetHint(1)->hint = buf;
				else
					_hints.GetHint(0)->hint = buf;

			}
			else
			{
				//	2008-7-31	yangyinyu	add	begin!
				//	���ӶԵ��������Ĵ���
				if(	_ItemData.dwDBID	)
					_hints.GetHint(1)->hint = pInfo->szDataName + _hints.GetHint(1)->hint;
				else
					_hints.GetHint(0)->hint = pInfo->szDataName + _hints.GetHint(0)->hint;
			}
		}

		//	2008-7-31	yangyinyu	add	begin!
		//	���ӶԵ��������Ĵ���
		if(	_ItemData.dwDBID	)
			_hints.GetHint(1)->color = dwNameColor;
		else
			_hints.GetHint(0)->color = dwNameColor;
	}

	// ������
	SItemForge& Forge = GetForgeInfo();
	if( _hints.GetCount()>0 && Forge.IsForge )
	{
		if( Forge.nHoleNum>0 )
		{
			sprintf( buf, RES_STRING(CL_LANGUAGE_MATCH_673), Forge.nHoleNum );
			PushHint( buf, ADVANCED_COLOR );
		}

		for( int i=0; i<Forge.nStoneNum && i<Forge.nHoleNum; i++ )
		{
			sprintf( buf, RES_STRING(CL_LANGUAGE_MATCH_656), ConvertNumToChinese( Forge.nStoneLevel[i] ).c_str(), Forge.pStoneInfo[i]->szDataName );
			PushHint( buf, ADVANCED_COLOR );
		}

		if( Forge.nStoneNum>0 )
		{
			AddHintHeight();
			for( int i=0; i<Forge.nStoneNum && i<Forge.nHoleNum; i++ )
			{
				PushHint( Forge.szStoneHint[i], ADVANCED_COLOR );
			}
		}

		if( Forge.nLevel>0 )
		{
			if(	_ItemData.dwDBID )
			{
				sprintf( buf, "%s +%d", _hints.GetHint(1)->hint.c_str(), Forge.nLevel );
				_hints.GetHint(1)->hint = buf;
			}
			else
			{
				sprintf( buf, "%s +%d", _hints.GetHint(0)->hint.c_str(), Forge.nLevel );
				_hints.GetHint(0)->hint = buf;
			}
		}
	}


	if( _nPrice != 0 )
	{
		AddHintHeight();
		sprintf( buf, RES_STRING(CL_LANGUAGE_MATCH_674), StringSplitNum( isMain ? _nPrice / 2 : _nPrice ) );
		PushHint( buf, COLOR_WHITE );

		sprintf( buf, "%s", ConvertNumToChinese( isMain ? _nPrice / 2 : _nPrice ).c_str() );
		PushHint( buf, COLOR_WHITE );
	}

	//	yangyinyu	add!
	if(	_ItemData.dwDBID	)
	{
		_hints.GetHint(0)->color = 0xff888888;
	}

}

string CItemCommand::GetStoneHint(int nLevel)
{
	string hint = "error";
	if( _pItem->sType==49 )
	{
		CStoneInfo* pInfo = NULL;
		int nCount = CStoneSet::I()->GetLastID() + 1;
		for( int i=0; i<nCount; i++ )
		{
			pInfo = ::GetStoneInfo( i );
			if( !pInfo ) continue;

			if( pInfo->nItemID != _pItem->nID ) continue;

			if( nLevel<0 )
				g_pGameApp->GetScriptMgr()->DoString( pInfo->szHintFunc, "u-s", _ItemData.sEnergy[1], &hint );
			else
				g_pGameApp->GetScriptMgr()->DoString( pInfo->szHintFunc, "u-s", 1, &hint );
			return hint;
		}
		
	}
	return hint;
}

//void CItemCommand::_PushItemAttr( int attr, SItemGrid& item, DWORD color )
//{
//    for( int i=0; i<defITEM_INSTANCE_ATTR_NUM; i++ )
//    {
//        if( item.sInstAttr[i][0]==attr )
//        {
//			if ( item.sInstAttr[i][1]==0 ) 
//			{
//				return;
//			}
//			else
//			{
//				if( attr <= ITEMATTR_COE_PDEF )
//				{
//					if( !(item.sInstAttr[i][1] % 10) )
//					{						
//						sprintf( buf, "%s:%+d%%", g_GetItemAttrExplain( item.sInstAttr[i][0]), item.sInstAttr[i][1] / 10 );
//					}
//					else
//					{
//						float f = (float)item.sInstAttr[i][1] / 10.0f;
//						sprintf( buf, "%s:%+.1f%%", g_GetItemAttrExplain( item.sInstAttr[i][0]), f );
//					}
//				}
//				else
//				{
//					sprintf( buf, "%s:%+d", g_GetItemAttrExplain( item.sInstAttr[i][0]), item.sInstAttr[i][1] );
//				}
//				PushHint( buf, color );
//
//				item.sInstAttr[i][0] = 0;
//				return;
//			}
//        }
//    }
//}


void CItemCommand::_PushValue( const char* szFormat, int attr, SItemHint& item, DWORD color )
{
	if( attr<=0 || attr>=ITEMATTR_CLIENT_MAX ) 
		return;

	if( item.sInstAttr[attr]==0 ) 
		return;

	PUSH_HINT( szFormat, item.sInstAttr[attr], color );
	item.sInstAttr[attr] = 0;
}

void CItemCommand::_PushItemAttr( int attr, SItemHint& item, DWORD color )
{
	if( attr<=0 || attr>=ITEMATTR_CLIENT_MAX ) 
		return;

	if( item.sInstAttr[attr]==0 ) 
		return;

	if( attr <= ITEMATTR_COE_PDEF )
	{
		if( !(item.sInstAttr[attr] % 10) )
		{						
			sprintf( buf, "%s:%+d%%", g_GetItemAttrExplain( attr ), item.sInstAttr[attr] / 10 );
		}
		else
		{
			float f = (float)item.sInstAttr[attr] / 10.0f;
			sprintf( buf, "%s:%+.1f%%", g_GetItemAttrExplain( attr ), f );
		}
	}
	else
	{
		sprintf( buf, "%s:%+d", g_GetItemAttrExplain( attr ), item.sInstAttr[attr] );
	}
	PushHint( buf, color );

	item.sInstAttr[attr] = 0;
}

bool CItemCommand::IsDragFast()
{
	return (_pItem->sType>=31 && _pItem->sType<=33) || _pItem->sType == 71;
}

void CItemCommand::SetTotalNum( int num )
{
    if( _pItem->GetIsPile() )
    {
        if( num>=0 )
        {
            _ItemData.sNum = num;
        }
    }
    else
    {
        _ItemData.sNum = 1;
    }
}

bool CItemCommand::IsAllowThrow()
{
    return _pItem->chIsThrow!=0;
}

//	2008-9-17	yangyinyu	add	begin!
bool	_wait_select_lock_item_state_	=	false;	//	�û��Ѿ�ʹ�������ߣ����ڵȴ�ѡ�������ĵ��ߡ�
static	char	_lock_pos_;	
static	long	_lock_item_id_;
static	long	_lock_grid_id_;
static	long	_lock_fusion_item_id_;

	extern	bool	g_yyy_add_lock_item_wait_return_state;		//	�Ѿ�����������Ϣ���ȴ������������������״̬��

static	void	_evtSelectYesNoEvent(	CCompent *pSender, int nMsgType, int x, int y, DWORD dwKey	)
{
	//	�ر�ѡ���
	pSender->GetForm()->Close();
	
	//	ȡ������֡�
	string	name	=	pSender->GetName();

	if(	!strcmp(	name.c_str(),	"btnYes"	)	)
	{
		//	���ͼ�����Ϣ��
		CS_DropLock(	_lock_pos_,	_lock_item_id_,	_lock_grid_id_,	_lock_fusion_item_id_	);
		//	���õȴ���ꡣ
		CCursor::I()->SetCursor(	CCursor::stWait	);
		//	���õȴ������������������״̬��
		g_yyy_add_lock_item_wait_return_state	=	true;

	}

	//pBox->frmDialog->SetParent(	NULL );
};

#include "uiboxform.h"
extern	CBoxMgr			g_stUIBox;
//	2008-9-17	yangyinyu	add	end!

bool CItemCommand::MouseDown()
{
    CCharacter* pCha = CGameScene::GetMainCha();
    if( !pCha ) return false;

	//	2008-9-17	yangyinyu	add	begin!

	//	����ǵȴ�������Ϣ����״̬����ֱ��������
	if(	g_yyy_add_lock_item_wait_return_state	&&	_ItemData.sID	!=	5939	)
	{
		return	false;
	}
	//	����ǵȴ�������״̬��
	else	if(	_wait_select_lock_item_state_	&&	_ItemData.sID	!=	5939	)
	{
		//	���ͼ�����Ϣ��
		CGoodsGrid* pOwn = dynamic_cast<CGoodsGrid*>(GetParent());
		
		if( pOwn )
		{
			if( pOwn==g_stUIEquip.GetGoodsGrid() )
			{
				//	׼��������
				_lock_grid_id_	=	pOwn->FindCommand(	this	);
				_lock_fusion_item_id_	=	_ItemData.GetFusionItemID();

				//	����ѡ���
				stSelectBox* pBox = g_stUIBox.ShowSelectBox( _evtSelectYesNoEvent, "���߼����󽫱�ɲ��ɽ���\n�����ɶ��������ɾ�������\n���ںϡ��Ƿ������˵��ߣ�" );
				//	pBox->dwTag = 0;
				//	pBox->dwParam = 0;
				pBox->frmDialog->SetPos( 100, 250 );
				pBox->frmDialog->SetParent(	g_stUIEquip.GetItemForm() );
				pBox->frmDialog->Show();
				pBox->frmDialog->Refresh();
				
				CCursor::I()->SetCursor(	CCursor::stNormal	);

				/*
				CS_DropLock(	_lock_pos_,	_lock_item_id_,	GridID,	_ItemData.GetFusionItemID()	);
				*/

				//	ȡ���ȴ�������״̬��
				_wait_select_lock_item_state_	=	false;

			}
		}
	}
	//	2008-9-17	yangyinyu	add	end!

	if( CRepairState* pState = dynamic_cast<CRepairState*>(pCha->GetActor()->GetCurState()) )
	{
		// ��������������״̬
		if( _pItem->sType>=31 ) 
		{
			g_pGameApp->SysInfo( RES_STRING(CL_LANGUAGE_MATCH_675), _pItem->szName );
			return false;
		}

		CGoodsGrid* pOwn = dynamic_cast<CGoodsGrid*>(GetParent());
		if( pOwn )
		{
			if( pOwn==g_stUIEquip.GetGoodsGrid() )
			{
				int GridID = pOwn->FindCommand( this );
				if( GridID==-1 ) return false;

				CS_ItemRepairAsk( pCha->getAttachID(), pCha->lTag, 2, GridID );
				return true;
			}
		}

		COneCommand* pOne = dynamic_cast<COneCommand*>(GetParent());
		if( pOne )
		{
			CS_ItemRepairAsk( pCha->getAttachID(), pCha->lTag, 1, pOne->nTag );
			return true;
		}
		return false;
	}
	else if( CFeedState* pState = dynamic_cast<CFeedState*>(pCha->GetActor()->GetCurState()) )
	{
		// ιʳ״̬
		if( _pItem->sType!=enumItemTypePet )
		{
			g_pGameApp->SysInfo( RES_STRING(CL_LANGUAGE_MATCH_676) );
			return false;
		}

		CGoodsGrid* pOwn = dynamic_cast<CGoodsGrid*>(GetParent());
		if( pOwn )
		{
			if( pOwn==g_stUIEquip.GetGoodsGrid() )
			{
				int GridID = pOwn->FindCommand( this );
				if( GridID==-1 ) return false;

				stNetUseItem param;
				param.sGridID = pState->GetFeedGridID();
				param.sTarGridID = GridID;
				CS_BeginAction( g_stUIBoat.GetHuman(), enumACTION_ITEM_USE, (void*)&param );

				pState->PopState();
				return true;
			}
		}
		return false;
	}
	else if( CFeteState* pState = dynamic_cast<CFeteState*>(pCha->GetActor()->GetCurState()) )
	{
		// ����״̬  add by Philip.Wu  2006-06-20  
		if( _pItem->sType != 65) 
		{
			g_pGameApp->SysInfo( RES_STRING(CL_LANGUAGE_MATCH_677) );
			return false;
		}

		CGoodsGrid* pOwn = dynamic_cast<CGoodsGrid*>(GetParent());
		if( pOwn )
		{
			if( pOwn==g_stUIEquip.GetGoodsGrid() )
			{
				int GridID = pOwn->FindCommand( this );
				if( GridID==-1 ) return false;

				stNetUseItem param;
				param.sGridID = pState->GetFeteGridID();
				param.sTarGridID = GridID;
				CS_BeginAction( g_stUIBoat.GetHuman(), enumACTION_ITEM_USE, (void*)&param );

				pState->PopState();
				return true;
			}
		}
		return false;
	}
	return false;
}

bool CItemCommand::UseCommand()
{
	static DWORD dwTime = 0;
	if( CGameApp::GetCurTick() < dwTime )
	{
		return false;
	}
	dwTime = CGameApp::GetCurTick() + 1000;

    if( !GetIsValid() ) return false;

    CCharacter* pCha = CGameScene::GetMainCha();
    if( !pCha ) return false;

	if( pCha->GetChaState()->IsFalse(enumChaStateUseItem) )
	{
		g_pGameApp->SysInfo( RES_STRING(CL_LANGUAGE_MATCH_678) );
		return false;
	}

    CGoodsGrid* pOwn = dynamic_cast<CGoodsGrid*>(GetParent());
    if( pOwn )
    {
		CCharacter* pCha = g_stUIBoat.FindCha( pOwn );
		if( !pCha ) return false;

        int GridID = pOwn->FindCommand( this );
        if( GridID==-1 ) return false;

		if( _pItem->sType==enumItemTypePetFodder || _pItem->sType==enumItemTypePetSock )
		{
			CActor* pActor = CGameScene::GetMainCha()->GetActor();

			CFeedState* pState = new CFeedState( pActor );
			pState->SetFeedGridID( GridID );
			pActor->SwitchState( pState );
			return false;
		}
		else if( _pItem->sType == 66 || ( 864 <= _pItem->lID && _pItem->lID <= 866 ) )	// ��Ӽ���״̬  add by Philip.Wu  2006-06-20
		{
			CActor* pActor = CGameScene::GetMainCha()->GetActor();

			CFeteState* pState = new CFeteState( pActor );
			pState->SetFeteGridID( GridID );
			pActor->SwitchState( pState );
			return false;
		}
		else if(GetItemInfo()->sType == 71) // ���ܵ���ʹ��
		{
			CCharacter* pCha = CGameScene::GetMainCha();
			if( !pCha ) return false;

			int nSkillID = atoi(GetItemInfo()->szAttrEffect);
			CSkillRecord* pSkill = GetSkillRecordInfo(nSkillID);

			// �������ܣ���ִ��
			if( !pSkill || !pSkill->GetIsUse() ) return false;

			// �жϼ����ܷ��ں���ʩ��
			if( pCha->IsBoat() && pSkill->chSrcType != 2)
			{
				g_pGameApp->SysInfo(RES_STRING(CL_LANGUAGE_MATCH_879));
				return false;
			}

			// �жϼ����ܷ���½����ʩ��
			if( ! pCha->IsBoat() && pSkill->chSrcType != 1)
			{
				g_pGameApp->SysInfo(RES_STRING(CL_LANGUAGE_MATCH_880));
				return false;
			}

			int nCoolDownTime = atoi(pSkill->szFireSpeed);
			if(nCoolDownTime > 0)// �� cooldown ʱ��
			{
				DWORD nCurTickCount = g_pGameApp->GetCurTick() - 500;	// 500������ʱ����
				map<int, DWORD>::iterator it = _mapCoolDown.find(nSkillID);

				if(it != _mapCoolDown.end() && it->second + nCoolDownTime >= nCurTickCount)
				{
					// cooldown ��
					g_pGameApp->SysInfo(RES_STRING(CL_LANGUAGE_MATCH_898), (it->second + nCoolDownTime - nCurTickCount) / 1000 + 1);//"������ȷ�У�ʣ�� %d ��"
					return false;
				}

				_mapCoolDown[nSkillID] = g_pGameApp->GetCurTick();	// �����µ��߼���ʹ��ʱ��
			}

			// �����������ͷŶ����Χ
			if( pSkill->GetDistance()<=0 )
			{
				CAttackState* attack = new CAttackState(pCha->GetActor());
				attack->SetSkill( pSkill );
				attack->SetTarget( pCha );
				attack->SetCommand( this );
				return pCha->GetActor()->SwitchState(attack);
			}

			//pCha->GetActor()->Stop();
			pCha->ChangeReadySkill(nSkillID);
			return false;
		}

        stNetUseItem param;
        param.sGridID = GridID;
		if( (	_pItem->sType<31	||	_ItemData.sID ==	5939	) && pCha==CGameScene::GetMainCha() && g_stUIBoat.GetHuman()==pCha )
		{
			//	yyy	add	begin!
			//	���ʹ�������ߣ�������ѡ����������״̬����
			if(	_ItemData.sID	==	5939	)
			{
				//	��¼�����ߵ�λ�á�
				_lock_pos_		=	GridID;
				_lock_item_id_	=	_ItemData.GetFusionItemID();

				//	���ù��Ϊ��ͷ��
				CCursor::I()->SetCursor(	CCursor::stPick	);

				//	����״̬��
				_wait_select_lock_item_state_	=	true;

				//	���أ�����ѡ��
				return	false;
			};

			//	yyy	add	end!

			CActor* pActor = g_stUIBoat.GetHuman()->GetActor();

			CEquipState* pState = new CEquipState( pActor );
			pState->SetUseItemData( param );
			pActor->SwitchState( pState );
		}
		else
		{
			CS_BeginAction( pCha, enumACTION_ITEM_USE, (void*)&param );
		}
        return false;
    }

    COneCommand* pOne = dynamic_cast<COneCommand*>(GetParent());
    if( pOne )
    {
		g_stUIEquip.UnfixToGrid( this, -1, pOne->nTag );
    }
    return false;
}

//int CItemCommand::_GetValue( int nItemAttrType, SItemGrid& item )
//{
//    for( int i=0; i<defITEM_INSTANCE_ATTR_NUM; i++ )
//    {
//        if( item.sInstAttr[i][0]==nItemAttrType )
//        {
//            item.sInstAttr[i][0] = 0;
//            return item.sInstAttr[i][1];
//        }
//    }
//
//    return -1;
//}

int CItemCommand::_GetValue( int nItemAttrType, SItemHint& item )
{
	if( nItemAttrType<=0 || nItemAttrType>=ITEMATTR_CLIENT_MAX ) 
		return -1;

	int nValue = 0;
	if( item.sInstAttr[nItemAttrType]!=0 )
	{
		nValue = item.sInstAttr[nItemAttrType];
		item.sInstAttr[nItemAttrType] = 0;
		return nValue;
	}

	return -1;
}

bool CItemCommand::GetIsPile()     
{ 
    return _pItem->GetIsPile(); 
}

int CItemCommand::GetPrice()
{
    return _nPrice;
}

void CItemCommand::SetData( const SItemGrid& item )  
{ 
    memcpy( &_ItemData, &item, sizeof(_ItemData) );
	int start = 0;
    for( ; start<defITEM_INSTANCE_ATTR_NUM; start++ )
    {
        if( item.sInstAttr[start][0]==0 )
        {
            break;
        }
    }
    for( int i=start; i<defITEM_INSTANCE_ATTR_NUM; i++ )
    {
        _ItemData.sInstAttr[i][0] = 0;
        _ItemData.sInstAttr[i][1] = 0;
    }
}

int CItemCommand::GetTotalNum()       
{
    return _ItemData.sNum;
}


const char* CItemCommand::GetName()   
{ 
    if( _ItemData.chForgeLv==0 )
    {
        return _pItem->szName;
    }
    else
    {
        static char szBuf[128] = { 0 };
        sprintf( szBuf, "%+d %s", _ItemData.chForgeLv, _pItem->szName );
        return szBuf;
    }
}

void CItemCommand::_ShowWork( CItemRecord* pItem, SGameAttr* pAttr )
{
	bool isFind = false;
	bool isSame = false;

	

	for( int i=0; i<MAX_JOB_TYPE; i++ )
	{		
		if( pItem->szWork[i]<0 )
			break;

		if( !isFind ) 
		{
			/*sprintf( buf, RES_STRING(CL_LANGUAGE_MATCH_679), g_GetJobName(pItem->szWork[i]) );
			isFind = true;*/
			//	Add by alfred.shi 20080928
			string name("������");
			g_GetJobName(pItem->szWork[i]);
			if(name.compare(g_GetJobName(pItem->szWork[i])) == 0)
			{
				sprintf( buf,"%s", "��ӡ�ŵ�װ��");
			}
			else
			{sprintf( buf, RES_STRING(CL_LANGUAGE_MATCH_679), g_GetJobName(pItem->szWork[i]) );}
			
			isFind = true;
			//	End.

		}

		if( !isSame ) 
		{
			if( pAttr->get(ATTR_JOB)==pItem->szWork[i] )
			{
				isSame = true;
			}
		}
	}

	if( isFind )
	{
		PushHint( buf, isSame ? GENERIC_COLOR : VALID_COLOR );
	}
	//else
	//{
	//	PushHint( "ְҵ����:��", GENERIC_COLOR );
	//}
}

void CItemCommand::_ShowFusionWork(CItemRecord* pAppearItem, CItemRecord* pEquipItem, SGameAttr* pAttr)// ������ʾ�ۺϺ���ߵ�ְҵ����
{
	bool isFind = false;
	int  iAppearIndex = -1;
	int  iEquipIndex = -1;
	bool isSame = false;
	CItemRecord* pItem(0);

	if (pAppearItem->szWork[0] > pEquipItem->szWork[0])
	{
		pItem = pAppearItem;
	}
	else
	{
		pItem = pEquipItem;
	}

	for( int i=0; i<MAX_JOB_TYPE; i++ )
	{
		if( pItem->szWork[i]<0 )
			break;

		if( !isFind ) 
		{
			sprintf( buf, RES_STRING(CL_LANGUAGE_MATCH_679), g_GetJobName(pItem->szWork[i]) );
			isFind = true;
		}

		if( !isSame ) 
		{
			if( pAttr->get(ATTR_JOB)==pItem->szWork[i] )
			{
				isSame = true;
			}
		}

	}

	if( isFind )
	{
		PushHint( buf, isSame ? GENERIC_COLOR : VALID_COLOR );
	}
	//else
	//{
	//	PushHint( "ְҵ����:��", GENERIC_COLOR );
	//}
}


void CItemCommand::_ShowWork( xShipInfo* pInfo, SGameAttr* pAttr )
{
	bool isFind = false;
	bool isSame = false;

	for( int i=0; i<MAX_JOB_TYPE; i++ )
	{
		if( pInfo->sPfLimit[i]==(USHORT)-1 )
			break;

		/*if( !isFind ) 
		{
			sprintf( buf, RES_STRING(CL_LANGUAGE_MATCH_679), g_GetJobName(pInfo->sPfLimit[i]) );
			isFind = true;
		}*/
		//add by alfred.shi 20080714	begin	
		/*	�޸����˴������ע�ͣ������������Ѿ��޸ģ������ֳ��֣����뱻�˸Ķ����ַ�����ԴҲû�ҵ���*/
		if( !isFind ) 
		{
			//string name(RES_STRING(CL_UIITEMCOMMAND_CPP_00010));
			string name("������");
			g_GetJobName(pInfo->sPfLimit[i]);
			if(name.compare(g_GetJobName(pInfo->sPfLimit[i])) == 0)
			{
				//sprintf( buf,"%s",RES_STRING(CL_UIITEMCOMMAND_CPP_00011));
				sprintf( buf,"%s", "��ӡ�ŵ�װ��");
				//PushHint( buf, VALID_COLOR );
			}
			else
			{sprintf( buf, RES_STRING(CL_LANGUAGE_MATCH_679), g_GetJobName(pInfo->sPfLimit[i]) );}
			
			isFind = true;
		}
		//	end

		if( !isSame ) 
		{
			if( pAttr->get(ATTR_JOB)==pInfo->sPfLimit[i] )
			{
				isSame = true;
			}
		}
	}

	if( isFind )
	{
		PushHint( buf, isSame ? GENERIC_COLOR : VALID_COLOR );
	}
	//else
	//{
	//	PushHint( "ְҵ����:��", GENERIC_COLOR );
	//}
}

void CItemCommand::_ShowBody()
{
	if( _pItem->IsAllEquip() ) return;

	if( !g_stUIBoat.GetHuman() || !g_stUIBoat.GetHuman()->GetDefaultChaInfo() ) return;

	std::ostrstream str;
	str << RES_STRING(CL_LANGUAGE_MATCH_680);
	for( int i=1; i<5; i++ )
	{
		if( !_pItem->IsAllowEquip(i) )
			continue;

		switch( i )
		{
		case 1: str << RES_STRING(CL_LANGUAGE_MATCH_681);   break;
		case 2: str << RES_STRING(CL_LANGUAGE_MATCH_682); break;
		case 3: str << RES_STRING(CL_LANGUAGE_MATCH_683); break;
		case 4: str << RES_STRING(CL_LANGUAGE_MATCH_684);   break;
		}
	}
	str << '\0';

	int nBodyType = g_stUIBoat.GetHuman()->GetDefaultChaInfo()->lID;
	PushHint( str.str(), _pItem->IsAllowEquip(nBodyType) ? GENERIC_COLOR : VALID_COLOR );			
}

void CItemCommand::_ShowFusionBody(CItemRecord* pEquipItem)
{
	if( _pItem->IsAllEquip() && pEquipItem->IsAllEquip()) return;

	if( !g_stUIBoat.GetHuman() || !g_stUIBoat.GetHuman()->GetDefaultChaInfo() ) return;

	std::ostrstream str;
	str << RES_STRING(CL_LANGUAGE_MATCH_680);
	for( int i=1; i<5; i++ )
	{
		if( _pItem->IsAllowEquip(i) && pEquipItem->IsAllowEquip(i))
		{
			switch( i )
			{
			case 1: str << RES_STRING(CL_LANGUAGE_MATCH_681);   break;
			case 2: str << RES_STRING(CL_LANGUAGE_MATCH_682); break;
			case 3: str << RES_STRING(CL_LANGUAGE_MATCH_683); break;
			case 4: str << RES_STRING(CL_LANGUAGE_MATCH_684);   break;
			}
		}
	}
	str << '\0';

	int nBodyType = g_stUIBoat.GetHuman()->GetDefaultChaInfo()->lID;
	PushHint( str.str(), _pItem->IsAllowEquip(nBodyType) ? GENERIC_COLOR : VALID_COLOR );			
}


void CItemCommand::SetBoatHint( const NET_CHARTRADE_BOATDATA* const pBoat )
{
	if( pBoat )
	{
		if( !_pBoatHint )
		{
			_pBoatHint = new NET_CHARTRADE_BOATDATA;
		}
		memcpy( _pBoatHint, pBoat, sizeof(NET_CHARTRADE_BOATDATA) );
	}
	else
	{
		if( _pBoatHint )
		{
			delete _pBoatHint;
			_pBoatHint = NULL;
		}
	}
}

SItemForge&	CItemCommand::GetForgeInfo()
{
	return SItemForge::Convert( _ItemData.lDBParam[0] );
}

//---------------------------------------------------------------------------
// class SItemHint
//---------------------------------------------------------------------------
void SItemHint::Convert( SItemGrid& ItemGrid, CItemRecord* pInfo )
{
	sID = ItemGrid.sID;
	sNum = ItemGrid.sNum;
	sEndure[0] = ItemGrid.sEndure[0] / 50;
	sEndure[1] = ItemGrid.sEndure[1] / 50;
	sEnergy[0] = ItemGrid.sEnergy[0];
	sEnergy[1] = ItemGrid.sEnergy[1];
	chForgeLv = ItemGrid.chForgeLv;
	memcpy( lDBParam, ItemGrid.lDBParam, sizeof(lDBParam) );

	memset( sInstAttr, 0, sizeof(sInstAttr) );

	for( int i=0; i<ITEMATTR_CLIENT_MAX; i++ )
	{
		sInstAttr[i] = pInfo->GetTypeValue( i );
	}

	// ��ȡ���ԣ�������������ԣ�ʹ���������ԣ�����ӱ���ж�ȡ
	int nAttr = 0;
	for( int i=0; i<defITEM_INSTANCE_ATTR_NUM; i++ )
	{
		nAttr = ItemGrid.sInstAttr[i][0];
		if( nAttr<=0 || nAttr>=ITEMATTR_CLIENT_MAX ) continue;

		sInstAttr[nAttr] = ItemGrid.sInstAttr[i][1];
	}
}

//---------------------------------------------------------------------------
// class SItemForge
//---------------------------------------------------------------------------
SItemForge& SItemForge::Convert( DWORD v, int nItemID )
{
	static SItemForge forge;
	memset( &forge, 0, sizeof(forge) );

	DWORD dwForgeValue = v;
	if( dwForgeValue==0 )
		return forge;

	forge.IsForge = true;
	forge.nHoleNum = v / 1000000000;	// ����

	int nStoneData;
	CStoneInfo* pStoneInfo = NULL;
	for(int i = 0; i < 3; ++i)
	{
		nStoneData = (v / (int)(pow(1000, 2 - i))) % 1000;	// ��λһȡ

		pStoneInfo = GetStoneInfo(nStoneData / 10);
		if(!pStoneInfo) continue;

		forge.pStoneInfo[forge.nStoneNum]  = pStoneInfo;
		forge.nStoneLevel[forge.nStoneNum] = nStoneData % 10;

		forge.nLevel    += forge.nStoneLevel[forge.nStoneNum];

		string strHint = "";
		if( g_pGameApp->GetScriptMgr()->DoString( pStoneInfo->szHintFunc, "u-s", forge.nStoneLevel[forge.nStoneNum], &strHint ) )
		{
			strncpy( forge.szStoneHint[forge.nStoneNum], strHint.c_str(), sizeof(forge.szStoneHint[forge.nStoneNum]) );
		}

		forge.nStoneNum += 1;
	}

	if( nItemID>0 )
	{
		forge.Refresh( nItemID );
	}

	return forge;

	//////////////////////////////////////////////////////////////////////////////////
	// ����Ŀ��ܻ������⣬��ִ��

	//int Num = 0;
	//if( g_pGameApp->GetScriptMgr()->DoString( "Get_HoleNum", "u-d", dwForgeValue, &Num ) )
	//{
	//	if( Num>0 )
	//	{
	//		forge.nHoleNum = Num;
	//	}
	//}

	//// �õ����ű�ʯ
	//int nStone;
	//int nStoneLv;
	//CStoneInfo* pStone = NULL;
	//int StoneNum = 0;
	//string hint;
	//for( int i=0; i<3; i++ )
	//{
	//	sprintf( buf, "Get_Stone_%d", i+1 );
	//	nStone = 0;
	//	if( !g_pGameApp->GetScriptMgr()->DoString( buf, "u-d", dwForgeValue, &nStone ) )
	//		continue;

	//	pStone = GetStoneInfo( nStone );
	//	if( !pStone ) continue;

	//	forge.pStoneInfo[ StoneNum ] = pStone;

	//	nStoneLv = 0;
	//	sprintf( buf, "Get_StoneLv_%d", i+1 );
	//	if( g_pGameApp->GetScriptMgr()->DoString( buf, "u-d", dwForgeValue, &nStoneLv ) )
	//	{
	//		forge.nStoneLevel[ StoneNum ] = nStoneLv;
	//		forge.nLevel += nStoneLv;

	//		hint = "";
	//		if( g_pGameApp->GetScriptMgr()->DoString( pStone->szHintFunc, "u-s", nStoneLv, &hint ) )
	//		{
	//			strncpy( forge.szStoneHint[StoneNum], hint.c_str(), sizeof(forge.szStoneHint[StoneNum]) );
	//		}
	//	}
	//	StoneNum++;
	//}

	//forge.nStoneNum = StoneNum;

	//if( nItemID>0 )
	//{
	//	forge.Refresh( nItemID );
	//}
	//return forge;
}

void SItemForge::Refresh( int nItemID )
{
	for( int i=0; i<3; i++ )
	{
		if( pStoneInfo[i] )
			nStoneType[i] = pStoneInfo[i]->nType;
		else
			nStoneType[i] = -1;
	}

	int nEffectID = 0;
	if( !g_pGameApp->GetScriptMgr()->DoString( "Item_Stoneeffect", "ddd-d", nStoneType[0], nStoneType[1], nStoneType[2], &nEffectID ) )
		return;

	nEffectID--;
	if( nEffectID<0 || nEffectID>=ITEM_REFINE_NUM )
		return;

	pRefineInfo = GetItemRefineInfo( nItemID );
	if( !pRefineInfo ) return;

	pEffectInfo = GetItemRefineEffectInfo( pRefineInfo->Value[nEffectID] );
	if( !pEffectInfo ) return;

	if( nLevel>=1 ) 
	{
		nEffectLevel = ( nLevel - 1 ) / 4;
		if( nEffectLevel>3 ) nEffectLevel=3;
	}
}

float SItemForge::GetAlpha( int nTotalLevel )
{
	//static float fLevelAlpha[4] = { 150.0f, 180.0f, 220.0f, 255.0f };
	static float fLevelAlpha[4] = { 80.0f, 140.0f, 200.0f, 255.0f };
	static float fLevelBase[4] = { fLevelAlpha[1] - fLevelAlpha[0], fLevelAlpha[2] - fLevelAlpha[1], fLevelAlpha[3] - fLevelAlpha[2], 0.0f };

	if( nTotalLevel<=1 ) return fLevelAlpha[0] / 255.0f;
	if( nTotalLevel >= 13 ) return 1.0f;

	--nTotalLevel;
	int nLevel = nTotalLevel / 4;
	return ( fLevelAlpha[ nLevel ] + (float)(nTotalLevel % 4) / 4.0f * fLevelBase[ nLevel ] ) / 255.0f;
}
