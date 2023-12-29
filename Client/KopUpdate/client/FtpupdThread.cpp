#include "StdAfx.h"
#include "KopDownload.h"
#include "resource.h"
#include "LicenseDlg.h"


//////////////////////////////////////////////////////////////////////////
//
// The Worker Thread
//
//////////////////////////////////////////////////////////////////////////


#define WAIT_SECOND     3

int g_AcceptLicense = 0;
extern int g_cooperate;    //  �̼Һ������

bool CheckLicense(CWnd* wnd)
{
	CLicenseDlg dlg;
	if(dlg.DoModal() ==  IDOK)
	{
		return true;
	}

	return false;

 //   bool ret = false;
	//wnd->ShowWindow(SW_HIDE);
 // 
 //   char buff[16] = {0};
 //   for(int i = 0; i < WAIT_SECOND; i++)
 //   {
 //       sprintf(buff, "ͬ�� (%i)", WAIT_SECOND - i);
 //       dlg.GetDlgItem(IDC_ACPT)->SetWindowText(buff);
 //       if(2 == g_AcceptLicense)
 //       {
 //           return false;
 //       }
 //       Sleep(1000);
 //   }
 //   dlg.GetDlgItem(IDC_ACPT)->EnableWindow(TRUE);
 //   dlg.GetDlgItem(IDC_ACPT)->SetWindowText("ͬ��");
 //   while(!g_AcceptLicense)
 //   {
 //       Sleep(1);
 //   }
 //   if(1 == g_AcceptLicense)
 //   {
	//	wnd->ShowWindow(SW_SHOW);
 //       ret = true;
 //   }
 //   else
 //   {
 //       ret = false;
 //   }
 //     return ret;
}


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

            if (upd.IsUpdateNeed())
            //if(1)
            {
                if(!CheckLicense(pMainWnd))
                {
                    ExitProcess(6);
                }
                g_AcceptLicense = 0;

                if(upd.IsUpdateReady())
                {
                    // ���и���ǰ���ص���
                    upd.EnableCallback();

                    // ���и���
                    upd.Update();
                }
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