#ifndef CLASS_FILEVERSION
#define CLASS_FILEVERSION

#include "zstream.h"

extern "C"
{   
    #include "global.h"
    #include "md5.h"
}

#include "util.h"
#include <string>
#include <map>
#include <vector>
#include <list>

using namespace std;

VOID MD5String(char *pszFile , char *szDigest);
int  CompressFile(char *pszSrc , char *pszDest);
VOID UncompressFile(char const* pszSrc , char const* pszDest);

// ��¼�ļ��й���Ϣ�Ľṹ��
struct SFILE_INFO
{
	char   szID[255];     // �ļ�ID, ��Ŀ¼��+�ļ������
	char   szVersion[33]; // �汾�ַ���,Ҳ����MD5ֵ
    DWORD  dwSize;        // �ļ��ߴ�
    char   cFlag;         // ������־
};

#define FILE_ARRAY vector<SFILE_INFO> // �����ļ���Ϣ��������

class CFileVersionMgr // �ļ��汾������
{
public:
	
	static const int CREATE_VERSION;
	static const int UPDATE_VERSION;

    static const int OP_FLAG_INVALID;  // �ļ��Ĳ�����־ : ��Ч
	static const int OP_FLAG_VALID;    // �ļ��Ĳ�����־ : ��Ч
	static const int OP_FLAG_UPDATE;   // �ļ��Ĳ�����־ : ��Ҫ������
	
	char                m_szWorkingDir[255]; // ��ǰ�����Ŀ¼
	FILE_ARRAY          m_FileList;          // �ļ��б�   
    map<string, int>    m_FileIndex;         // ���ַ���ID�������ļ��б�������±�

private:
	
    // ��ӵ����ļ���Ϣ���б�
    VOID _AddFileInfo(char *pszFileName , char *pszMD5 , int nSize);
    // �������еĵ����ļ���Ϣ
    VOID _UpdateFileInfo(char *pszFileName , char *pszMD5 , int nSize);
    
    // �ļ���Ϣ���ݴ���
    VOID _Data2Txt(char *pszFileName); // ����ı��ļ�
	VOID _Data2Bin(char *pszFileName); // ��ɶ������ļ� 

public:
	CFileVersionMgr();
	~CFileVersionMgr();
	
    VOID ClearFlag();  // ���õ�ǰ�ļ��б��������ļ��Ĳ�����־Ϊ��Ч
    
    VOID Data2File(char *pszFileName, BOOL bText); // ���̺���
	BOOL CheckDirFile(char *pszDir, int nFlag);    // �ݹ�һ��Ŀ¼�������ļ�(����)��Ŀ¼
	VOID CreateFileVersionInfo(char *pszDir, int nFlag);
    VOID UpdateFileVersionInfo();
    BOOL LoadFileVersionInfo(char *pszFile);

	unsigned int VerifyClient();
	virtual void OnVerifyClient(unsigned int uiTotal,
		unsigned int uiCur, BOOL bWrong, char const* pszFile);

    BOOL LoadVersionFile(vector<SFILE_INFO> *pCompareList, map<string, int>* pCompareIdx, char *pszWorkingDir , char *pszFile);
    BOOL GenerateUpdateList(char *szCompareFile , vector<SFILE_INFO> *pUpdateList , int *pnTotalSize, BOOL bBuilder = FALSE);
    BOOL UpdateFileVersion(SFILE_INFO *pInfo , BOOL bWriteFile);

    VOID CompressAll(char const* pszDestDir, vector<SFILE_INFO>* pUpdateList);
    VOID GeneratePatch(char const* pszDestDir, vector<SFILE_INFO>* pUpdateList);
};

#endif