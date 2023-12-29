#pragma once

#include "unicode/resbund.h"		//��Դ������Ϣ
#include "unicode/ucnv.h"			//�ַ�����ת��
#include "unicode/uclean.h"			//�ַ�����ת��
#include "unicode/msgfmt.h"			//��ʽ���ַ���

//#include "pi_Alloc.h"

#include <map>

using namespace std;

// Use to compare the contents of two pointers
struct charValueLess
{
	bool operator()(const char* _Left, const char*  _Right) const
	{
		if(_Left == NULL || _Right == NULL)
		{
			printf("%s\t%s\r\n",_Left,_Right);
			return false;
		}

		int ret = strcmp(_Left, _Right);	

		if(ret < 0)
			return true;
		else
			return false;
	}
};

typedef map <const char*, const char*, charValueLess> StringMap;
//typedef map <const char*, const char*, less<const char*> > StringMap;

class CFormatParameter
{
private:
	Formattable* m_MsgArgs;
	int paraNum;
private:
	CFormatParameter(){}
public:
	CFormatParameter(int paraNum);
	~CFormatParameter();

	Formattable* GetMsgArgs(){ return m_MsgArgs;} 
	int GetParaNum() { return paraNum; }
	void setDouble(int index, double d);
	void  setLong(int index, int32_t l);
	void  setInt64(int index, int64_t ll) ;
	void  setDate(int index, UDate d) ;
	void  setString(int index, const UnicodeString &stringToCopy);
};

class CResourceBundleManage
{
private:
	CResourceBundleManage(){}

public:
	CResourceBundleManage(const char* configFileName);
	virtual ~CResourceBundleManage(void);

private:
	char* m_ResDir;				// ��Դλ��
	char* m_ResLocale;			// ��Դ����

	StringMap mapRes;
	ResourceBundle* m_pResourceBundle;
	UConverter *m_pConverter;
	int m_MaxSize;

	int m_LogFlag;

	FILE* m_LogFile;

private:
	UErrorCode ToCodePageString(UConverter *conv, UChar* source, char* target, int destCapacity, int& len);
	bool Init();

public:
	int GetSize(void);			// ȡ����Դ����
	
	void Release(void);

	const char* LoadResString(const char* key);
	UnicodeString LoadUResString(const char* key);

	int Format(const char* key, CFormatParameter& parameter, char buffer[]);
};
