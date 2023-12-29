#include "StdAfx.h"
#include "KopDownload.h"


//////////////////////////////////////////////////////////////////////////
//
// The Worker Thread
//
//////////////////////////////////////////////////////////////////////////

UINT FtpupdThread(LPVOID pParam)
{
    int nRet = 0;
    TCHAR szErr[1024];
    CWnd* pMainWnd = (CWnd *)pParam;
    CString strErrMsg;

    try
    {
        CKopDownload upd(pMainWnd, "Update.cfg");

        if (!upd.IsUpdateSkip())
        {
            // �ж��Ƿ����ǰ���ص���ֹ
            upd.EnableCallback(FALSE);

            if (upd.IsUpdateNeed() && upd.IsUpdateReady())
            {
                // ���и���ǰ���ص���
                upd.EnableCallback();

                // ���и���
                upd.Update();
            }
        }

        upd.PostQuitMessage();
    }
    catch (CInternetException* pEx)
    {
        pEx->GetErrorMessage(szErr, 1024);
        TRACE2("Error: (%d) %s\n", pEx->m_dwError, szErr);
        pEx->Delete();
        nRet = 1;
    }
    catch (CFtpException* pEx)
    {
        TRACE1("Error: Exiting with CFtpException(%d)\n", pEx->m_nErrorCode);
        pEx->Delete();
        nRet = 2;
    }
    catch (std::logic_error& le)
    {
        strErrMsg.Format("%s", le.what());
        pMainWnd->MessageBox(strErrMsg);
        ExitProcess(5);
    }
    catch (std::bad_exception& be)
    {
        strErrMsg.Format("%s", be.what());
        pMainWnd->MessageBox(strErrMsg);
    }

    return nRet;
}