
/* * * * * * * * * * * * * * * * * * * *

    �б�ؼ���װ
    Jampe
    2006/4/3

 * * * * * * * * * * * * * * * * * * * */



#if !defined __MYLISTVIEW_H__
#define __MYLISTVIEW_H__


#include <windows.h>
#include <commctrl.h>
#include "datatype.h"

class MyListView
{
public:
    MyListView();
    MyListView(HWND parent, int ctlid);
    virtual ~MyListView();

    //  ��ȡ�б�ؼ����
    void GetListViewHandle(HWND parent, int ctlid);

    //  �����С�index������txt��ʾ���⣬size�п��
    void InsertColumn(int index, const char* txt, int size, int fmt = LVCFMT_RIGHT);

    //  ɾ����
    void DeleteColum(int index);

    //  ɾ��������
    void DeleteAllColum();

    //  ����һ�м�¼
    int InsertItem(int index = 0);

    //  ���ü�¼���ݣ�index������col��������txt����
    void SetItemText(int index, int col, const char* txt);

    //  ɾ�����м�¼
    void DeleteAllItem();

    //  ������չ
    void SetExtended(ulong ext = LVS_EX_GRIDLINES | LVS_EX_FULLROWSELECT | LVS_EX_ONECLICKACTIVATE);

public:
    HWND        m_hwnd;
    int         m_ColIndex;
};


#endif

