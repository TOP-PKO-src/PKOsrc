#include "stdafx.h"
#include "../../proj/EffectEditer.h"
////////////////////
#include <assert.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "windows.h"

#include "IniFile.h"
////////////////////


////////////////////
CIniFile::CIniFile()
{
	// �ļ�ָ��
	m_fp = NULL;
	// �Ƿ��Ƕ�ģʽ
	m_bRead = true;
}
CIniFile::~CIniFile()
{
	if( m_fp != NULL )
	{
		CloseFile();
	}
}
////////////////////


////////////////////
// ����
FILE *CIniFile::GetFilePointer()
{
	return m_fp;
}
bool CIniFile::IfRead()
{
	return m_bRead;
}
////////////////////


////////////////////
// �ļ�����
// ���ļ���
// filename	:	�ļ���
// returns	:	�ɹ�Ϊ��
bool CIniFile::OpenFileRead( const char *filename )
{
	//guard( CIniFile::OpenFileRead() );

	char msg[_MAX_STRING];
	ASSERT( m_fp == NULL );
	
	m_fp = fopen( filename, "rt" );
	
	if( m_fp == NULL )
	{
		sprintf( msg, "CIniFile::OpenFileRead() Error (0) : Could not open file for read : <%s>\n", filename );
		OutputDebugString( msg );
		return false;
	}
	m_bRead = true;
	
	m_bReadMem = false;

	return true;

	//unguard;
}

/**
* ���ڴ�����ini��Ϣ.
*
*/
void CIniFile::OpenMemRead( BYTE *_dstart,int _isize )
{
	//guard( CIniFile::OpenMemRead() );
	ASSERT( _dstart );
	ASSERT( _isize>=0 );

	this->m_pData = _dstart;
	this->m_iSize = _isize;

	m_bReadMem = true;
	this->m_iP = 0;

	//unguard;
}


// ���ļ�д
// filename	:	�ļ���
// returns	:	�ɹ�Ϊ��
bool CIniFile::OpenFileWrite( const char *filename )
{
	char msg[_MAX_STRING];
	ASSERT( m_fp == NULL );
	m_fp = fopen( filename, "wt" );
	if( m_fp == NULL )
	{
		sprintf( msg, "CIniFile::OpenFileWrite() Error (0) : Could not open file for write : <%s>\n", filename );
		OutputDebugString( msg );
		return false;
	}
	m_bRead = true;
	
	return true;
}
// �ر��ļ�
void CIniFile::CloseFile()
{

	if( !this->m_bReadMem )
	{
		ASSERT( m_fp != NULL );

		fclose( m_fp );
		m_fp = NULL;
		m_bRead = true;
	}

	// ������ڴ����ini�ļ�,Do nothing.

}

// ������
// �ļ�ָ������ĳһ�Σ��ļ�ָ��ӵ�ǰλ�ÿ�ʼ����
// section	:	����
// returns	:	�ҵ��ö�Ϊ��
// ����Ч�ʺ�������,�������������Ҫ���ڹؿ�����׶�.
bool CIniFile::ReadSection(  char *section )
{
	char msg[_MAX_STRING];
	char rval;
	int nCount;
	bool bFound;
	bool bBegin;
	char Section[_MAX_STRING];
	
	if( !m_bReadMem )
	{
		ASSERT( m_fp );
		ASSERT( m_bRead == true );

		if ( m_fp == NULL )
			return false;
	}
	

	//
	// ATTENTION: ���԰������˳����������.
	//
	// ������ڴ����ģʽ,�豸�ڴ�ָ��ָ��Ϊ0,
	// ������ļ�����ģʽ,�����ļ�ָ�뵽�ļ���ͷ.
	//
	if( this->m_bReadMem )
	{
		this->m_iP = 0;
	}
	else
	{
		if( fseek( m_fp,0,SEEK_SET ) )
			return false;
	}

	
	bFound = false;
	bBegin = false;
	nCount = 0;
	
	// ����Ǵ��ڴ��ж���Section.
	if( m_bReadMem )
	{

		while( bFound == false )
		{
			if( m_iP == this->m_iSize )
			{
				//OutputDebugString( "Can't Find the Section " );
//				osDebugOut( "%s [%s]\n","Can't Find the Section",section );
				return false;
			}

			rval = this->m_pData[m_iP];

			// Increase the Pointer.
			m_iP++;                     

			// �ҵ��α�־
			if( rval == '[' )
			{
				bBegin = true;

				continue;
			}
			// �ҵ��ν�����־
			if( rval == ']' )
			{
				Section[nCount] = 0;
				nCount = 0;
				bBegin = false;
				//added by no3eye��1��12��2001
				//���Section�ǿյĻ����Զ��ҵ�һ���β�����
				if ( stricmp(section,"")==0)
				{
					strcpy( section,Section);
					bFound = true;
				}
				else
				{
					if( strcmp( Section, section ) == 0 )
					{	// �ҵ���Ҫ�Ķ�
						bFound = true;
					}
				}
				continue;
			}
			// ������
			// ������ȹ������򲻼���
			if( bBegin == true && nCount < _MAX_STRING )
			{
				Section[nCount] = rval;
				nCount++;
			}


		}

		return true;
	}
	

	// ���ļ��ж���Section.
	while( bFound == false )
	{
		// �����ļ�β
		if( (rval = (char)fgetc(m_fp)) == EOF )
		{
			sprintf( msg, "CIniFile::ReadSection() Error(0) : Reach the end of the file in reading section <%s>\n", section );
			OutputDebugString( msg );
			return false;
		}
		
		// �ҵ��α�־
		if( rval == '[' )
		{
			bBegin = true;
			continue;
		}
		// �ҵ��ν�����־
		if( rval == ']' )
		{
			Section[nCount] = 0;
			nCount = 0;
			bBegin = false;
			//added by no3eye��1��12��2001
			//���Section�ǿյĻ����Զ��ҵ�һ���β�����
			if ( stricmp(section,"")==0)
			{
				strcpy( section,Section);
				bFound = true;
			}
			else
			{
				if( stricmp( Section, section ) == 0 )
				{	// �ҵ���Ҫ�Ķ�
					bFound = true;
				}
			}
			continue;
		}
		// ������
		// ������ȹ������򲻼���
		if( bBegin == true && nCount < _MAX_STRING )
		{
			Section[nCount] = rval;
			nCount++;
		}
	}
	
	return true;
}
// ����������ȡֵ
// name		:	���������Ϊ�գ���ȱʡ����һ����
// value	:	ȡֵ�ַ���
// nSize	:	ȡֵ�ַ����ĳ��ȣ��������С��ȡֵ�ַ���(Value)����ʵ���ȣ���������������
// returns	:	�����ö�Ϊ��
bool CIniFile::ReadLine( const char *name, char *value, int nSize )
{
	char msg[_MAX_STRING];
	int rval;
	int nCount;
	bool bFound;
	char Name[_MAX_STRING];
	
	if( !this->m_bReadMem )
	{
		ASSERT( m_fp );
		ASSERT( m_bRead == true );
	}
	
	// �ҵ�����
	nCount = 0;
	bFound = false;
	bool bno=false;

	// ����Ǵ��ڴ�ıȡ����.
	if( this->m_bReadMem )
	{
		// ����Ǵ��ļ�ıȡ����.
		while( bFound == false )
		{
			// ��������ļ�����.
			if( m_iP == this->m_iSize )
			{
				OutputDebugString( "Reach the end of file " );
				return false;
			}

			rval = this->m_pData[m_iP];

			// Increase the Pointer.
			m_iP++;                     


			// �ҵ������
			if( rval == '=' )
			{
				Name[nCount] = 0;
				nCount = 0;
				if( strcmp( Name, name ) == 0 )
				{
					bFound = true;
				}
				//added by no3eye 1.29.2001
				else
				{
					nCount = 0;
					bno=true;
				}
				continue;
			}
			// �����н�����13.
			if( rval == 13 )
			{
				continue;
			}
			// ��������
			if( rval == '\n' )
			{
				if (bno == true)
					nCount=0;
				continue;
			}
			// ������
			// ������ȹ������򲻼���
			if( nCount < _MAX_STRING )
			{
				Name[nCount] = (char)rval;
				nCount++;
			}
		}

		// ��ȡֵ
		nCount=0;
		bFound = false;
		while( bFound == false )
		{
			rval = this->m_pData[m_iP];
			m_iP++;

			// ���ʹ��"rb"ģʽ��ȡ�ļ�,��ÿһ�в����ַ�13.
			if( rval == EOF || rval == '\n' || rval == 13 )
			{
				value[nCount] = 0;
				bFound = true;
				continue;
			}
			// ȡֵ����
			// ������ȹ������򲻼���
			if( nCount < nSize-1 )
			{
				value[nCount] = (char)rval;
				nCount++;
			}
		}

		return true;

	}



	// ����Ǵ��ļ�ıȡ����.
	while( bFound == false )
	{
		if( (rval = fgetc(m_fp)) == EOF )
		{
			sprintf( msg, "CIniFile::ReadLine() Error(0) : Reach the end of the file in reading named <%s>\n", name );
			OutputDebugString( msg );
			return false;
		}
		// �ҵ������
		if( rval == '=' )
		{
			Name[nCount] = 0;
			nCount = 0;
			if( stricmp( Name, name ) == 0 )
			{
				bFound = true;
			}
			//added by no3eye 1.29.2001
			else
			{
				nCount = 0;
				bno=true;
			}
			continue;
		}
		// ��������
		if( rval == '\n' )
		{
			if (bno == true)
				nCount=0;
			continue;
		}
		// ������
		// ������ȹ������򲻼���
		if( nCount < _MAX_STRING )
		{
			Name[nCount] = (char)rval;
			nCount++;
		}
	}
	
	// ��ȡֵ
	nCount=0;
	bFound = false;
	while( bFound == false )
	{
		rval = fgetc(m_fp);
		if( rval == EOF || rval == '\n' )
		{
			value[nCount] = 0;
			bFound = true;
			continue;
		}
		// ȡֵ����
		// ������ȹ������򲻼���
		if( nCount < nSize-1 )
		{
			value[nCount] = (char)rval;
			nCount++;
		}
	}
	
	return true;
}

//�����ַ���
bool CIniFile::ReadLine( const char *name, char* value )
{
	char Value[_MAX_STRING];
	if( ReadLine( name, Value, _MAX_STRING ) == false )
		return false;
	*value = Value[0];
	return true;
}


bool CIniFile::ReadLine( const char *name, int *value )
{
	char Value[_MAX_STRING];
	if( ReadLine( name, Value, _MAX_STRING ) == false )
		return false;
	*value = atoi( Value );
	return true;
}
bool CIniFile::ReadLine( const char *name, float *value )
{
	char Value[_MAX_STRING];
	if( ReadLine( name, Value, _MAX_STRING ) == false )
		return false;
	*value = (float)atof( Value );
	return true;
}
bool CIniFile::ReadLine( const char *name, double *value )
{
	char Value[_MAX_STRING];
	if( ReadLine( name, Value, _MAX_STRING ) == false )
		return false;
	*value = atof( Value );
	return true;
}
// �����ļ�ͷ
void CIniFile::ReadStart()
{
	ASSERT( m_fp );
	ASSERT( m_bRead == false );
	fseek( m_fp, 0, SEEK_SET );
}
////////////////////


////////////////////
// д����
// д��ĳһ��
// section	:	����
void CIniFile::WriteSection( const char * section )
{
	ASSERT( m_fp );
	ASSERT( m_bRead == false );
	fprintf( m_fp, "[%s]\n", section );
}

// д��������ȡֵ
// name		:	����
// value	:	ȡֵ
void CIniFile::WriteLine( const char *name, const char *value )
{
	ASSERT( m_fp );
	ASSERT( m_bRead == false );
	fprintf( m_fp, "%s=%s\n", name, value );
}
void CIniFile::WriteLine( const char *name, int value )
{
	ASSERT( m_fp );
	ASSERT( m_bRead == false );
	fprintf( m_fp, "%s=%d\n", name, value );
}
void CIniFile::WriteLine( const char *name, float value )
{
	ASSERT( m_fp );
	ASSERT( m_bRead == false );
	fprintf( m_fp, "%s=%f\n", name, value );
}
void CIniFile::WriteLine( const char *name, double value )
{
	ASSERT( m_fp );
	ASSERT( m_bRead == false );
	fprintf( m_fp, "%s=%e\n", name, value );
}
// д�����
void CIniFile::WriteLineSeperator()
{
	ASSERT( m_fp );
	ASSERT( m_bRead == false );
	fprintf( m_fp, "\n" );
}
////////////////////


