#include "resourcebundlemanage.h"

#include "windows.h"

#define BUFFER_SIZE 255

CFormatParameter::CFormatParameter(int paraNum)
{
	UErrorCode status = U_ZERO_ERROR;
	m_MsgArgs = new Formattable[paraNum];
}

CFormatParameter::~CFormatParameter()
{
	delete[] m_MsgArgs;
}

void CFormatParameter::setDouble(int index, double d)
{
	m_MsgArgs[index].setDouble(d);
}

void CFormatParameter::setLong(int index, int32_t l)
{
	m_MsgArgs[index].setLong(l);
}

void CFormatParameter::setInt64(int index, int64_t ll) 
{
	m_MsgArgs[index].setInt64(ll);
}

void CFormatParameter::setDate(int index, UDate d) 
{
	m_MsgArgs[index].setDate(d);
}

void CFormatParameter::setString(int index, const UnicodeString &stringToCopy)
{
	m_MsgArgs[index].setString(stringToCopy);
}

CResourceBundleManage::CResourceBundleManage(const char* configFileName)
: m_ResDir(NULL), m_ResLocale(NULL), m_pResourceBundle(NULL), m_pConverter(NULL)
{
    char szPath[MAX_PATH]; 
    
    if( !GetModuleFileName( NULL, szPath, MAX_PATH ) )
    {
        throw "GetModuleFileName failed \n"; 
    }
	// 取得入口程序的路径
	const char* ret = strrchr(szPath, '\\');
	long dirLength = (long)(ret - szPath);

	size_t length = strlen(configFileName);
	char* fileName = new char[dirLength + length + 2 ];
	memcpy(fileName, szPath, dirLength);
	fileName[dirLength] = '\\';
	memcpy(fileName + dirLength + 1, configFileName, length);
	fileName[dirLength + length + 1] = 0;

	UErrorCode status;
	Locale::setDefault(Locale::getEnglish(),status);
	//Locale::setDefault(Locale::getChina(),status);

	const char* lpAppName = "locale";
	const char* lpLocaleKeyName = "locale";
	const char* lpPathKeyName = "path";
	const char* lpDefaultLocale = "en_US";
	char* lpDefaultPath = new char[dirLength + 1];
	memcpy(lpDefaultPath, szPath, dirLength);
	lpDefaultPath[dirLength] = 0;

	char lpReturnedLocaleString[BUFFER_SIZE];
	char lpReturnedPathString[BUFFER_SIZE];

	length = GetPrivateProfileStringA(lpAppName,lpLocaleKeyName,lpDefaultLocale,lpReturnedLocaleString,sizeof(lpReturnedLocaleString),fileName);

	m_ResLocale = new char[length+1];
	memcpy(m_ResLocale, lpReturnedLocaleString, length);
	m_ResLocale[length] = 0;

	length = GetPrivateProfileStringA(lpAppName,lpPathKeyName,lpDefaultPath,lpReturnedPathString,sizeof(lpReturnedPathString),fileName);

	m_ResDir = new char[length + 1];
	memcpy(m_ResDir, lpReturnedPathString, length);
	m_ResDir[length] = 0;

	delete[] fileName;

	Init();

	m_pResourceBundle = new ResourceBundle(m_ResDir,m_ResLocale, status);
	m_pConverter = ucnv_open(NULL, &status); //ucnv_open("cp936", &status); // windows-936-2000
}

CResourceBundleManage::~CResourceBundleManage(void)
{
	Release();
}

// 取得资源个数
int CResourceBundleManage::GetSize(void)
{
	return (int)mapRes.size();
}

// 把Unicode字符串转换为多字节本机编码
UErrorCode CResourceBundleManage::ToCodePageString(UConverter *conv, UChar* source, char* target, int destCapacity, int& len)
{
  UErrorCode status = U_ZERO_ERROR;

  len = ucnv_fromUChars(conv, target, destCapacity, source, -1, &status);

  if(U_SUCCESS(status) == FALSE)
	  return status;

  return status;
}

// 初始化资源管理器
bool CResourceBundleManage::Init()
{
	int len = 0;
	int maxSize = 0;

	UErrorCode status = U_ZERO_ERROR;
	UConverter *defaultConv = ucnv_open(NULL, &status); //ucnv_open("cp936", &status); // windows-936-2000

#if TRUE //_DEBUG

	const char* name = ucnv_getName(defaultConv, &status);
	printf("Current CodePage is %s\n",name);

#endif


	status = U_ZERO_ERROR;
	ResourceBundle resourceBundle(m_ResDir,m_ResLocale, status);

	if(U_SUCCESS(status) == TRUE)
	{
		resourceBundle.resetIterator();
		
		FILE* file = fopen("c:\\test.txt","w");
        while(resourceBundle.hasNext()) {
            ResourceBundle bundle = resourceBundle.getNext(status);

			const char * key = bundle.getKey();

			//if(key != NULL)
			{
				UnicodeString value = bundle.getString(status);

				len = 0;
				maxSize = ucnv_getMaxCharSize(defaultConv) * ( 1 + value.length());

				char* buffer = new char[maxSize];
				memset(buffer, 0, maxSize);

				ToCodePageString(defaultConv, const_cast<UChar*>(value.getTerminatedBuffer()), buffer, maxSize, len);
				
				//if(buffer == NULL)
				{
					//printf("%s\t%s\r\n",key,buffer);
					//fprintf(file,"%s\t%s\r\n",key,buffer);
				}

				mapRes[key] = buffer;
			}
		}

		fclose(file);

		if (defaultConv != NULL)
			ucnv_close(defaultConv);
		
		return true;
	}

	if (m_pConverter != NULL)
		ucnv_close(m_pConverter);

	return false;
}

// 释放资源
void CResourceBundleManage::Release(void)
{
	const char* pBuffer = NULL;
	for(StringMap::iterator i = mapRes.begin(); i != mapRes.end(); i++)
	{
		pBuffer = i->second;
		delete pBuffer;
	}

	delete[] m_ResDir;
	delete[] m_ResLocale;

	m_ResDir = NULL;
	m_ResLocale = NULL;

	mapRes.clear();

	delete m_pResourceBundle;

	if (m_pConverter != NULL)
		ucnv_close(m_pConverter);
}

// 根据ID取得字符串
const char* CResourceBundleManage::LoadResString(const char* key)
{
	const char* ret ="";
	StringMap::iterator in = mapRes.find(key);

	if(in != mapRes.end())
	{
		ret = in->second;
	}
#if _DEBUG
	//printf("key = %s value = %s\n",key, ret);
#endif

	return ret;
}
 
UnicodeString CResourceBundleManage::LoadUResString(const char* key)
{
	UErrorCode status = U_ZERO_ERROR;
	return m_pResourceBundle->getStringEx(key, status);
}

// 格式根据参数化一个字符串
int CResourceBundleManage::Format(const char* key, CFormatParameter parameter, char buffer[])
{
    UErrorCode status = U_ZERO_ERROR;
    UnicodeString str;
    FieldPosition pos;

	UnicodeString format = LoadUResString(key); 
    // Create a message format
    MessageFormat msg(format, status);
    msg.format(parameter.GetMsgArgs(), 2, str, pos, status);

	int len = 0;
	int maxSize = ucnv_getMaxCharSize(m_pConverter) * ( 1 + str.length());

	ToCodePageString(m_pConverter, const_cast<UChar*>(str.getTerminatedBuffer()), buffer, maxSize, len);
	return len;
}