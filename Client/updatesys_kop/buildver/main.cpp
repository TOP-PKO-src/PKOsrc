
#include "stdio.h"
#include "FileVersion.h"

void DelSrcVerFile(char const* dir)
{
    char of[][80] = {"ver", "VerComp.dat",
        "ver.rec", "VerInfo.rec", "_TempData",
        "ulog.txt", "kop_d.exe", "_Update.exe"};

    std::string buf1(dir), buf2;
    int len = strlen(dir);
    if (dir[len - 1] != '\\')
    {
        buf1 += "\\";        
    }

#if defined(WIN32)
    for (int i = 0; i < (sizeof of) / (sizeof of[0]); ++ i)
    {
        buf2 = buf1 + of[i];
        DeleteFile(buf2.c_str());
    }
#elif defined(FREEBSD)
#elif defined(LINUX)
#else
#endif
}

void CopyVerFileToSrc(char const* dir)
{
    std::string buf1(dir), buf2(dir);
    int len = 0; len = strlen(dir);

#if defined(WIN32)
    if (dir[len - 1] != '\\')
    {
        buf1 += "\\";
        buf2 += "\\";
    }
    buf1 += "ver.rec";
    buf2 += "VerInfo.rec";
    CopyFile("ver", buf1.c_str(), FALSE);
    CopyFile("VerComp.dat", buf2.c_str(), FALSE);
#elif defined(FREEBSD)
    ;
#elif defined(LINUX)
    if (dir[len - 1] != '/')
    {
        buf1 += "/";
        buf2 += "/";
    }
    buf1 += "ver.rec";
    buf2 += "VerInfo.rec";
#else
    ;
#endif
}

int main(int argc, char* argv[])
{
    bool bRebuild = false;

    if (argv[1] && argv[2]) // �������ٴ�����Ŀ¼��������
    {
        // ɾ��ԴĿ¼�в���Ҫ���ļ�
        DelSrcVerFile(argv[1]);

        // Create MD5 STRING
        Log("Create MD5 ...\n");

        CFileVersionMgr FileVerMgr;

        if (argv[3] && strcmp(argv[3], "-rebuild") == 0) // �������'-rebuild'����
        {
            // ��ȫ�ؽ��汾��Ϣ�ļ�, �����Ƿ��Ѿ��а汾��Ϣ�ļ�����
            bRebuild = true;
            FileVerMgr.CreateFileVersionInfo(argv[1], CFileVersionMgr::CREATE_VERSION);
        }
        else
        {
            // ��ȡ���еİ汾��Ϣ�ļ�, ��¼���б���
            if (FileVerMgr.LoadVersionFile(&FileVerMgr.m_FileList, &FileVerMgr.m_FileIndex,
                                           FileVerMgr.m_szWorkingDir, "VerComp.dat"))
            {
                FileVerMgr.ClearFlag(); // ���б��е������ļ��Ĳ�����־��Ϊ��Ч

                // ��'����'�ķ�ʽ���ؽ��汾��Ϣ�ļ�
                FileVerMgr.CreateFileVersionInfo(argv[1], CFileVersionMgr::UPDATE_VERSION);
            }
            else
            {
                // ����汾��Ϣ�ļ�������, ��ȫ�ؽ�
                FileVerMgr.CreateFileVersionInfo(argv[1], CFileVersionMgr::CREATE_VERSION);
            }
        }
        Log("Create MD5 End!\n");

        std::string dir = argv[2];
        dir += "/run_dest";
        Util_MakeDir(dir.c_str()); // ����ָ����Ŀ��Ŀ¼(��������ڵĻ�)

        // ѹ�������ļ���Ŀ��Ŀ¼
        Log("\nCompress File ...\n");
        FileVerMgr.CompressAll(dir.c_str(), NULL);
        Log("Compress File End!\n");

        // �����ֶ������ļ���Ŀ��Ŀ¼
        if (!bRebuild)
        {
            std::string patch_dir;
            Util_GenPatchDir(patch_dir);
            dir = argv[2];
            dir += "/";
            dir += patch_dir;
            Log("\nGenerate Patch ...\n");
            FileVerMgr.GeneratePatch(dir.c_str(), NULL);
            Log("Generate Patch End!\n");
        }

        // �����汾�ļ���ԴĿ¼
        CopyVerFileToSrc(argv[1]);
    }
    else
    {
        Log("need source and dest directory name!\n");
    }
    return 0;
}


