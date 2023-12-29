#include "FileVersion.h"

#ifdef WIN32
    #include <direct.h>
#else

#endif

#include <fstream>

const int CFileVersionMgr::CREATE_VERSION  = 0;
const int CFileVersionMgr::UPDATE_VERSION  = 1;
const int CFileVersionMgr::OP_FLAG_INVALID = 0;
const int CFileVersionMgr::OP_FLAG_VALID   = 1;
const int CFileVersionMgr::OP_FLAG_UPDATE  = 2;
	
CFileVersionMgr::CFileVersionMgr()
{
	strcpy(m_szWorkingDir , "NULL");
}

CFileVersionMgr::~CFileVersionMgr() 
{

}

// for server
VOID CFileVersionMgr::ClearFlag()
{
    for(int n = 0 ; n < m_FileList.size() ; n++)
    {
       	SFILE_INFO *pInfo = &(m_FileList[n]);
        pInfo->cFlag = OP_FLAG_INVALID; // ��0��Ч
    }
}

BOOL CFileVersionMgr::CheckDirFile(char *pszDir , int nFlag)
{
#ifdef WIN32    
    _finddata_t filestruct;
    int p  = 0;
    int fn = 0;
    char szSearch[255];
    if(strlen(pszDir)==0)
    {
        strcpy(szSearch , "*.*");
    }
    else
    {
        strcpy(szSearch , pszDir);
        strcat(szSearch , "/*.*");
    }

    int hnd = _findfirst(szSearch , &filestruct);
  
    if(hnd==-1) 
    {
        // Log("no file found in dir [%s]\n" , szSearch);
	    return FALSE;
    }
  
    do
    { 	
	    char szFullName[255];
	    if(strlen(pszDir) > 0)
        {
            sprintf(szFullName , "%s/%s" , pszDir , filestruct.name);
        }
        else
        {
            strcpy(szFullName , filestruct.name);
        }
	  	
        if(!(filestruct.attrib & _A_SUBDIR)) 
	    {
            char szDigest[33];
            MD5String(szFullName , szDigest);
            if(nFlag==CREATE_VERSION)
            {
                _AddFileInfo(szFullName, szDigest, filestruct.size);
            }
            else if(nFlag==UPDATE_VERSION)
            {
                _UpdateFileInfo(szFullName, szDigest, filestruct.size);
            }
	    }
	    else // Directory
	    {
		    if(strcmp(filestruct.name , "..")!=0 && strcmp(filestruct.name , ".")!=0)
		    {
			    // Log("Dir <%s>\n" , szFullName);
			    CheckDirFile(szFullName , nFlag);
		    }
	    }
    }while(!_findnext(hnd , &filestruct)); 
  
  
  return TRUE;
#endif

#ifdef LINUX
    int nLen = strlen(pszDir);
    DIR *dir;
    if(nLen==0)
    {
        dir = opendir(".");
    }
    else
    {
        dir = opendir(pszDir);
    }
    if(dir!=NULL)
    {
	    int n;
  	    direct *dd;
  	    while(dd = readdir(dir))
        {
			if(strcmp(dd->d_name , ".")!=0 && strcmp(dd->d_name , "..")!=0)
			{
			    char szFullName[255];
                strcpy(szFullName , pszDir);
                if(pszDir[nLen - 1]!='/' && (nLen > 0))
				{
  					strcat(szFullName , "/");
				}
                strcat(szFullName , dd->d_name);
                struct stat stat_p;
                stat(szFullName , &stat_p);
				if(S_ISDIR(stat_p.st_mode)) // is directory
				{
          	        CheckDirFile(szFullName , nFlag);
				}
                else if(S_ISREG(stat_p.st_mode)) // is file
                {
			        int nFileSize = stat_p.st_size;
                    char szDigest[33];
                    MD5String(szFullName , szDigest);
                    if(nFlag==CREATE_VERSION)
                    {
                        _AddFileInfo(szFullName , szDigest , nFileSize);
                    }
                    else if(nFlag==UPDATE_VERSION)
                    {
                        _UpdateFileInfo(szFullName , szDigest , nFileSize);        
                    }
                } 
            } // end !("."|"..")
        } // end white                     	
    } // dir is exist 
    else
    {
        Log("ERR : Directory [%s] is not exist\n" ,  pszDir);
    }
    return TRUE;
#endif
}


VOID CFileVersionMgr::_AddFileInfo(char *pszFileName , char *pszDigest , int nSize)
{
    //char* pCopy = _strlwr(_strdup(pszFileName));
    char* pCopy = pszFileName;

    SFILE_INFO info;
	strcpy(info.szID      , pCopy);
	strcpy(info.szVersion , pszDigest);
    info.dwSize = nSize;
    info.cFlag = OP_FLAG_UPDATE;
    m_FileList.push_back(info);
    m_FileIndex[pCopy] = m_FileList.size() - 1;
}

VOID CFileVersionMgr::_UpdateFileInfo(char *pszFileName , char *pszDigest , int nSize)
{
    //char* pCopy = _strlwr(_strdup(pszFileName));
    char* pCopy = pszFileName;

    map<string ,int>::iterator it = m_FileIndex.find(pCopy);
    if(it!=m_FileIndex.end())
    {
        // exist
        int nIndex = (*it).second;
        SFILE_INFO *pInfo = &(m_FileList[nIndex]);
        if(strcmp(pInfo->szVersion , pszDigest)!=0)
        {
            strcpy(pInfo->szVersion , pszDigest);
            pInfo->cFlag = OP_FLAG_UPDATE;
        }
        else
        {
            pInfo->cFlag = OP_FLAG_VALID;
        }
    }
    else
    {
        _AddFileInfo(pCopy, pszDigest, nSize);
    }
}
    
// for server & client
VOID CFileVersionMgr::_Data2Txt(char *pszFileName)
{
	FILE *fp = fopen(pszFileName, "wt");
    if(fp==NULL)
    {
        return;
    }
    fprintf(fp, "%s\n", m_szWorkingDir);
    int nValid = 0;
    for(int n = 0 ; n < m_FileList.size() ; n++)
    {
       	SFILE_INFO *pInfo = &(m_FileList[n]);
        if(pInfo->cFlag!=OP_FLAG_INVALID)
        {
		    fprintf(fp , "%s,%s,%d\n", pInfo->szID, pInfo->szVersion, pInfo->dwSize);
            nValid++;
        }
    }
    fclose(fp);
    // Log("Write List , Total = %d\n", nValid);
}

// for server & client
VOID CFileVersionMgr::_Data2Bin(char *pszFileName)
{

}

// for server & client
VOID CFileVersionMgr::Data2File(char *pszFileName, BOOL bText)
{
    if(bText)
	{
		_Data2Txt(pszFileName);
	}
	else
	{
		_Data2Txt(pszFileName);
		//_Data2Bin(pszFileName);
	}
}

// for server & client
BOOL CFileVersionMgr::LoadFileVersionInfo(char *pszFile)
{
    if(access(pszFile, 0)==-1)
    {
        return FALSE;
    }
    
    m_FileList.clear();
    m_FileIndex.clear();
    
    LoadVersionFile(&m_FileList, &m_FileIndex, m_szWorkingDir, pszFile);

    Log("File Info Load = %d\n", m_FileList.size());
    return TRUE;
}


// for server 
VOID CFileVersionMgr::CreateFileVersionInfo(char *pszDir, int nFlag)
{
	if(access(pszDir, 0)==-1) // ���Ŀ¼������, ���ش���
    {
        Log("Directory not exist!\n");
        return;
    }
    
    if(nFlag==CREATE_VERSION) // ��������´����汾
    {
        // ������м�¼
        m_FileList.clear();
        m_FileIndex.clear(); 
        strcpy(m_szWorkingDir, pszDir);
    }
	
    char szCurDir[255];
    getcwd(szCurDir, 255); // �������ĵ�ǰĿ¼

    chdir(pszDir); // ����Ҫ������Ŀ¼(ʹ����Ϊ��ǰ��Ŀ¼)
    CheckDirFile("", nFlag);
    chdir(szCurDir); // �ָ��ɸղű����Ŀ¼

    Log("Total File = <%d>\n", m_FileList.size());
}

// for server
VOID CFileVersionMgr::UpdateFileVersionInfo()
{
	/*
    if(!strcmp(m_szWorkingDir , "NULL")==0)
    {
        char szCurDir[255];
        _getcwd( szCurDir , 255);

        _chdir(m_szWorkingDir);
        CheckDirFile("." , UPDATE_VERSION);
        
        
        // Check File Exist , if not , remove it from Version Record
        map<string , int>::iterator it;
        int nRemove = 0;
        for (it = m_FileIndex.begin(); it!=m_FileIndex.end();it++)
        {
            const char *pszFile = ((*it).first).c_str();
            if(_access(pszFile , 0)==-1) 
            {
                // Log("Remove ID = <%s> \n" , pszFile);
                // file not exist
                
                vector<SFILE_INFO>::iterator itList;
                int nIndex = (*it).second;
                itList = m_FileList.begin() + nIndex;
                m_FileList.erase(itList);
                
                map<string , int>::iterator itNext = it++;
                m_FileIndex.erase(--it);
                it = itNext;
                
                nRemove++;
            }
        }
        //Log("Remove <%d> File From the List\n" , nRemove);

        _chdir(szCurDir);

    }
    else
    {
        Log("Working Dir is NULL!\n");
    }*/
}

/*
// for server
VOID CFileVersionMgr::GenerateCompareFile(char *pszFileName)
{
    if(strcmp(m_szWorkingDir , "NULL")==0)
    {
        return;
    }
    FILE *fp = fopen(pszFileName , "wt");
    fprintf(fp , "%s\n" , m_szWorkingDir);
    for(int n = 0 ; n < m_FileList.size() ; n++)
    {
    	SFILE_INFO *pInfo = &(m_FileList[n]);
		fprintf(fp , "%s,%s,%d\n" , pInfo->szID , pInfo->szVersion , pInfo->dwSize);
    }
    fclose(fp);
}*/

//----------------------------------------------------------------------------
// ���� : ��һ���ı��ļ�������ļ���Ϣ�б�, �����浽������б�ָ�������ָ����
// pFileList   : �ļ��б������ָ��
// pFileIdx    : ID->�б������±������ָ��
// pszFileName : �ļ���
//----------------------------------------------------------------------------
BOOL CFileVersionMgr::LoadVersionFile(vector<SFILE_INFO> *pFileList, map<string, int>* pFileIdx, char *pszWorkingDir, char *pszFileName)
{
    ifstream in(pszFileName); // ���ı���ʽ���ļ�
    if(in.is_open()==0) // �ļ���ʧ��, ���ش���
    {
        Log("Open Compare File Error <%s>\n", pszFileName);
        return FALSE;
    }
    
    // ���ζ��벢�����ļ��汾��Ϣ : ID,MD5�汾,�ߴ�
    char szLine[512];
    in.getline(szLine , 512);
    string strRunDir = szLine;
    strcpy(pszWorkingDir , strRunDir.c_str());
    while(!in.eof())
    {
        in.getline(szLine , 512);
        string strLine = szLine;
        if(strLine.size()==0) break;
        
        int p = strLine.find(","); // �������ż�����ַ���
        string strLeft  = strLine.substr(0 , p);
        string strRight = strLine.substr(p + 1 , strLine.size() - p - 1);
        p = strRight.find(",");
        string strVer  = strRight.substr(0 , p);
        string strSize = strRight.substr(p + 1 , strRight.size() - p - 1);
        
        int nSize = atoi(strSize.c_str());
        SFILE_INFO info;

        //char* pCopy = _strlwr(_strdup(strLeft.c_str()));
        char* pCopy = (char *)strLeft.c_str();

        strcpy(info.szID       , pCopy);
        strcpy(info.szVersion  , strVer.c_str()); 
        info.dwSize = nSize;
        info.cFlag  = OP_FLAG_VALID; // �Ѿ�������ļ���Ϣ, ������־��ʼ��Ϊ��Ч
        pFileList->push_back(info);
        (*pFileIdx)[info.szID] = pFileList->size() - 1;
        // Log("ID <%s> , Ver = <%s>\n", strLeft.c_str() , info.szVersion);
    }
    in.close();
    return TRUE;
}

void CFileVersionMgr::OnVerifyClient(unsigned int uiTotal,
									 unsigned int uiCur,
									 BOOL bWrong,
									 char const* pszFile)
{
	if (bWrong) Log("%s is in wrong format!\n", pszFile);
}

unsigned int CFileVersionMgr::VerifyClient()
{
	char szDigest[33];
	char szWrongDigest[33] = "WRONGFORMAT";
	vector<SFILE_INFO>::iterator it = m_FileList.begin();
	SFILE_INFO* pFile;
	unsigned int uiCount = 0;
	unsigned int uiTotal = m_FileList.size();
	unsigned int i = 0;
	BOOL bWrong;
	while (it != m_FileList.end())
	{
		pFile = &(*it);
		MD5String(pFile->szID, szDigest);
		szDigest[32] = 0;
		bWrong = FALSE;
		if (strcmp(szDigest, pFile->szVersion) != 0)
		{
			// ���°汾�ļ�
			strcpy(pFile->szVersion, szWrongDigest);
			UpdateFileVersion(pFile, TRUE);
			bWrong = TRUE;
			++ uiCount;
		}

		++ i;
		try
		{
			OnVerifyClient(uiTotal, i, bWrong, pFile->szID);
		}
		catch (...)
		{
			Log("Exception in OnVerifyClient\n");
		}

		++ it;
	}

	return uiCount;
}



//--------------------------------------------------------------
// ���� : ����һ���汾��Ϣ�ļ�, �����еİ汾��Ϣ�б���������ȶ�
// ������ְ汾�Ѿ������仯, ����뵽һ�������б���
// szCompareFile : �����Ƚϵİ汾��Ϣ�ļ���
// pUpdateList   : ������¼���µ��б�
// pnTotalSize   : ��Ϊ�ȽϵĹ��̻��������ļ������Կ��Լ����
// ����Ҫ���µ��ļ��ۼ������ĳߴ�, ����������ʾ���½���
// bBuilder      : һ����־�����Ƚϵ�˫��, ���¶�����ļ��ȶ�����
// ��Ϣ����������Ϣ�ȶ��¶�����ļ�
//-------------------------------------------------------------
BOOL CFileVersionMgr::GenerateUpdateList(char *szCompareFile, vector<SFILE_INFO>* pUpdateList, int *pnTotalSize, BOOL bBuilder)
{
    vector<SFILE_INFO> CompareList;
    map<string, int>   CompareIdx;
    char szWorkingDir[255]; // ���봫���ļ���������ļ��汾��Ϣ
    if(!LoadVersionFile(&CompareList, &CompareIdx, szWorkingDir, szCompareFile))
    {
        return FALSE; // ��������ļ�ʧ��, ���ش���
    }

    if(strcmp(szWorkingDir , m_szWorkingDir)!=0) // ����ļ����¼�Ĺ���Ŀ¼�����еĲ�ͬ,����һ������
    {
        Log("Warning : Different Working Directory!\n");
    }

    vector<SFILE_INFO>* pListSrc  = NULL;
    map<string, int>*   pIdxSrc   = NULL;
    
    vector<SFILE_INFO>* pListDest = NULL;
    map<string, int>*   pIdxDest  = NULL;
    
    if(bBuilder) // �����¶�����ļ������еİ汾��Ϣ, ˭��˭���ȶ�
    {
        pListSrc  = &CompareList;
        pIdxSrc   = &CompareIdx;
        pListDest = &m_FileList;
        pIdxDest  = &m_FileIndex;
    }
    else
    {
        pListSrc  = &m_FileList;
        pIdxSrc   = &m_FileIndex;
        pListDest = &CompareList;
        pIdxDest  = &CompareIdx;
    }
    
    // �ȶԿ�ʼ
    Log("Compare [Src Size = %d , Dest Size = %d]\n", pListSrc->size(), pListDest->size());
    int nFileSize =0;
    for(int n = 0; n < pListDest->size(); n++) // ���������������ļ�
    {
        SFILE_INFO *pDestInfo = &((*pListDest)[n]);
    
        //char* pCopy = _strlwr(_strdup(pDestInfo->szID));
        char* pCopy = pDestInfo->szID;
        map<string, int>::iterator it = pIdxSrc->find(pCopy);
        if(it!=pIdxSrc->end()) // ���ֶ�Ӧ�ļ�ID
        {
            int nIndex = (*it).second;
            SFILE_INFO *pSrcInfo = &((*pListSrc)[nIndex]);
            if(strcmp(pDestInfo->szVersion , pSrcInfo->szVersion)!=0)
            {
                pUpdateList->push_back(*pDestInfo); //���MD5�汾��ͬ, ��������б�
                nFileSize+=pDestInfo->dwSize; // �ļ��ߴ��ۼ�
            }
        }
        else // �����ǰ���ļ�IDû�з���, ����������ӵ��ļ�
        {
            pUpdateList->push_back(*pDestInfo); // ��������б�
            nFileSize+=pDestInfo->dwSize; // �ļ��ߴ��ۼ�
        }
    }
    *pnTotalSize = nFileSize;
    return TRUE;
}

//------------------------------------------------------
// ���� : ����(�����)ĳ���ļ��İ汾��Ϣ, ��������д�ļ�
// pInfo : �ļ���Ϣ��ָ��
// bWriteFile : �Ƿ�������д�ļ�
//------------------------------------------------------
BOOL CFileVersionMgr::UpdateFileVersion(SFILE_INFO *pInfo, BOOL bWriteFile)
{
    //char* pCopy = _strlwr(_strdup(pInfo->szID));
    char* pCopy = (char *)(pInfo->szID);
    map<string , int>::iterator it = m_FileIndex.find(pCopy);
    if(it!=m_FileIndex.end()) // ���ļ�ID�Ѵ���, ���и���
    {
        int nIndex = (*it).second;
        SFILE_INFO *pFileInfo = &(m_FileList[nIndex]);
        strcpy(pFileInfo->szVersion, pInfo->szVersion);
    }
    else // ����µ��ļ��汾��Ϣ�������б���
    {
        SFILE_INFO info;
        strcpy(info.szID, pCopy);
        strcpy(info.szVersion, pInfo->szVersion);
        info.dwSize = pInfo->dwSize;
        m_FileList.push_back(info);
        m_FileIndex[pCopy] = m_FileList.size();
    }
        
    if(bWriteFile)
    {
        // д��汾��Ϣ�ļ�(������д�����ļ�), ��Ϊ�ú������ڸ��¹��̱����õ�, �ļ�һ����������
        // �ͻ�����д���ļ�, �����������˳�����, ���½��Ҳ���Ա���
        Data2File("VerInfo.rec", TRUE);
    }
    return TRUE;
}

//------------------------------------------------------------------------
// ���� : ����ָ���ļ�������Ϣ�б�(��ǰ�ļ���Ϣ�б�)������, �����е��ļ�
// ����ԭ�е�Ŀ¼�ṹѹ����ָ��Ŀ¼��
//------------------------------------------------------------------------
VOID CFileVersionMgr::CompressAll(char const* pszDestDir, vector<SFILE_INFO>* pUpdateList)
{
    string strDest = pszDestDir;     // Ŀ�ĵ�Ŀ¼   
    string strSrc  = m_szWorkingDir; // ȡ�õ�ǰĿ¼
    
    strDest+="/";
    strSrc+="/";
    
    char szSrcFile[255];
    char szDestFile[255];
    
    vector<SFILE_INFO>* pCurList = pUpdateList;
    if(pCurList==NULL) // ��������б�Ϊ��, ��ʾֱ��ʹ�õ�ǰ���ļ���Ϣ�б�
    {
        pCurList = &m_FileList;
    }
    
    int nUpdate = 0;
    for(int n = 0; n < pCurList->size(); n++)
    {
        SFILE_INFO *pInfo = &((*pCurList)[n]);
        if(pInfo->cFlag!=OP_FLAG_UPDATE) continue; // ����ļ��Ĳ�����־����'��Ҫ����', ������
        
        strcpy(szSrcFile  , strSrc.c_str());
        strcat(szSrcFile  , pInfo->szID);
        
        strcpy(szDestFile , strDest.c_str());
        strcat(szDestFile , pInfo->szID);
        
        string strDestFile = szDestFile;
        int p = strDestFile.rfind('/');
        if(p!=-1)
        {
            string strDir = strDestFile.substr(0 , p);
            //char* pCopy = _strlwr(_strdup(strDir.c_str()));
            char* pCopy = (char *)strDir.c_str();
            Util_MakeDir(pCopy); // ���Ŀ��Ŀ¼������Ŀ¼��������, �򴴽�֮
        }
        Log("Compress [%s]\n" , szSrcFile);
        //char* pCopy = _strlwr(_strdup(szDestFile));
        char* pCopy = (char *)szDestFile;
        CompressFile(szSrcFile , pCopy);
        pInfo->dwSize = Util_GetFileSizeByName(pCopy); // ����Ϊѹ��֮����ļ��ߴ�
        nUpdate++;
    }

    Log("File Update and Compress Total = %d\n", nUpdate);
    
    // Save VerComp.dat to Dest Dir
    Data2File("VerComp.dat" , TRUE); // ���ɰ汾�ļ�
    string strFile = strDest;
    strFile+="VerComp.dat";
    CompressFile("VerComp.dat" , (char*)strFile.c_str()); // ѹ���汾�ļ���Ŀ�ĵ�Ŀ¼

    
    // �Ѱ汾�ļ���MD5������¼������һ���ļ�ver, ѹ���󱣴浽Ŀ�ĵ�Ŀ¼
    char szDigest[33]; MD5String("VerComp.dat", szDigest);
    char szVerFile[255] = "ver";
    
    FILE *fp = fopen(szVerFile, "wt"); // д���ļ�
    fprintf(fp, "%s", szDigest);
    fclose(fp);

    strFile = strDest;
    strFile+=szVerFile;

    CompressFile(szVerFile, (char*)strFile.c_str());
}

VOID CFileVersionMgr::GeneratePatch(char const* pszDestDir, vector<SFILE_INFO>* pUpdateList)
{
    string strDest = pszDestDir;     // Ŀ�ĵ�Ŀ¼   
    string strSrc  = m_szWorkingDir; // ȡ�õ�ǰĿ¼

    strDest+="/";
    strSrc+="/";

    char szSrcFile[255];
    char szDestFile[255];

    vector<SFILE_INFO>* pCurList = pUpdateList;
    if(pCurList==NULL) // ��������б�Ϊ��, ��ʾֱ��ʹ�õ�ǰ���ļ���Ϣ�б�
    {
        pCurList = &m_FileList;
    }

    int nUpdate = 0;
    for(int n = 0; n < pCurList->size(); n++)
    {
        SFILE_INFO *pInfo = &((*pCurList)[n]);
        if(pInfo->cFlag!=OP_FLAG_UPDATE) continue; // ����ļ��Ĳ�����־����'��Ҫ����', ������

        strcpy(szSrcFile  , strSrc.c_str());
        strcat(szSrcFile  , pInfo->szID);

        strcpy(szDestFile , strDest.c_str());
        strcat(szDestFile , pInfo->szID);

        string strDestFile = szDestFile;
        int p = strDestFile.rfind('/');
        if(p!=-1)
        {
            string strDir = strDestFile.substr(0 , p);
            Util_MakeDir(strDir.c_str()); // ���Ŀ��Ŀ¼������Ŀ¼��������, �򴴽�֮
        }

        Log("Copy [%s]\n" , szSrcFile);
        Util_CopyFile(szSrcFile, szDestFile);

        ++ nUpdate;
    }

    Log("File Generate for Patch Total = %d\n", nUpdate);

    if (nUpdate > 0)
    {    
        // Save VerComp.dat to Dest Dir as VerInfo.rec
        string strFile = strDest;
        strFile += "VerInfo.rec";
        Util_CopyFile("VerComp.dat", strFile.c_str());

        // Save ver to Dest Dir as ver.rec
        strFile = strDest;
        strFile += "ver.rec";
        Util_CopyFile("ver", strFile.c_str());
    }
}


// Util Functions > ------------------------------------------------------------------

int CompressFile(char *pszSrc , char *pszDest)
{
    ozstream out(pszDest);
    FILE *fp = fopen(pszSrc , "rb");
    if(fp==NULL)
    {
        Log("ERR : Open Src File [%s] Fail!\n" , pszSrc);
        return 0;
    }
    int buf_size = 1024 * 32;
    char *buf = new char[buf_size];
    int nSize = 0;
    while(1)
    {
       int len = fread(buf , 1 , buf_size , fp);
       nSize+=out.write(buf , len);
       if(feof(fp)) break;
    }
    fclose(fp);
    out.close();
    delete[] buf;
    return nSize;
}

VOID UncompressFile(char const* pszSrc , char const* pszDest)
{
    int buf_size = 1024 * 32;
    char *buf = new char[buf_size];
    izstream in(pszSrc);
    FILE *fp = fopen(pszDest , "wb");
    while(1)
    {
        int n = in.read(buf , buf_size);
        fwrite(buf , 1 , n , fp);
        if(gzeof(in.fp())) break;
    }
   in.close();
   fclose(fp);
   delete[] buf;
}


VOID MD5String(char *pszFile , char *pszDigest)
{
    BYTE btDigest[16];
    MDFile(pszFile , (char*)btDigest);
    for (int i = 0; i < 16; i++)
    {
        sprintf(pszDigest + i * 2 , "%02x", btDigest[i]);
    }
    pszDigest[32] = '\0';
}

// ---------------------------------------------------------------- < Util Functions

/*
�����淨���д��Ľ�

   ���޵ĺ����淨�ǹ���ϵͳ�͵���ϵͳ, ����ϵͳ����Щ����ĵط�, �������˵���������û���
   ����ǿ, ְҵ��������淨����Ҫ�Ľ�, ���ﱾ��Ҳ����Ҫ����ɫ�����ϵõ���ǿ������ֻ��һ������Ҫ��
   ��������.

   ��һ��������Ϸ����Ϊ����֮�صĵ���ϵͳ���ڹ����в����е㼦�ߵĸо�, ����û�п���ʲô�����
   ���ҵ����۵��߷��ӵ�����. ����������ô�࣬ȴ��ͬ����, Ӧ��ÿ�����߶���һ�����ڵ�����, ÿ��
   ���ߵ����Զ����������, ��������Ϸ��������������.

   ��Ϸֻ���ں����淨��ֵ�б�֤��ǰ����, ���ӻ��߹��ܲ�������ǽ�����, ����һζ��ȥ��һЩ
   ���߹���, �ٿ���ѣҲֻ�Ǳ�ˮ��н, ���Ӳд�.


��Ϸ��Դ���䲻��

��Ϸ��Դ�ҷ����淨��Դ��������Դ, �������кܶ��淨���س�, ��ʿ, ���壬��������������ݵ�, �����ȵ�һ�ѣ�
�󶼼������˾����Ķ��״�;޳����ð��ƽԭһ������, ���˸о���Ϸ�ķ�Χ������, �����ĺ�Ư���Ļ�����ɫ��
�������տ���Ҳ, ���������������һ����׺. �ͱ���úõ�һ��ˮ�³���, ���ڱ����Ϸ�ﲻ֪�����ж�ѣ,
�ڹ��������û��ȥ�ķϵ�, ��Ȼ���۹�, ��!, �������Ա��ֵ.


ս��ϵͳ�ӻ�������Ͻ��й��о�,ƽ������

   ���޵�ս����Ҫ�ڻ�����ֽ�һ���ϼ�ǿ. �غ�ս������ͱȼ�ʱ����ȱ�ٺܶ���Ȥ, �����ⷽ��һ��Ҫ��
   ͻ���ĵط�.

�ٶ�����

   ���޶Ի�����Ҫ��ȷʵ̫��, ��������Ϊ�Ż��Ķ��״�, ���ú�ʺһ��, ����չ��һ�����׼���ƻ�, �Ѳ�̫��
   ���ע��ķ������ݽǵ���ͳͳ������, (��涨���в��ܷ���, �ѷ���Terrain����ɱ��)

*/



