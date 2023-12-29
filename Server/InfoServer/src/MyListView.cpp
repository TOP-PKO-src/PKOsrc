
#include "MyListView.h"


#pragma comment(lib, "comctl32.lib")


MyListView::MyListView()
{
    InitCommonControls();
}


MyListView::MyListView(HWND parent, int ctlid)
{
    InitCommonControls();
    GetListViewHandle(parent, ctlid);
}


MyListView::~MyListView()
{
}


void MyListView::GetListViewHandle(HWND parent, int ctlid)
{
    m_hwnd = GetDlgItem(parent, ctlid);
}


void MyListView::InsertColumn(int index, const char* txt, int size)
{
    LVCOLUMN lvc;

    lvc.mask = LVCF_FMT | LVCF_WIDTH | LVCF_TEXT | LVCF_SUBITEM;
	lvc.iSubItem = m_ColIndex;
	lvc.cx = size;
    lvc.fmt = LVCFMT_RIGHT;

    lvc.pszText = (char*)txt;
    ListView_InsertColumn(m_hwnd, index, &lvc);

    ++m_ColIndex;
}


void MyListView::DeleteColum(int index)
{
    ListView_DeleteColumn(m_hwnd, index);
    --m_ColIndex;
}


void MyListView::DeleteAllColum()
{
    for(int i = m_ColIndex; i >= 0; i--)
    {
        DeleteColum(i);
    }
}


int MyListView::InsertItem(int index)
{
    LVITEM li;

    li.mask = LVIF_TEXT;
    li.state = LVIS_ACTIVATING;
    li.stateMask = 0;
    li.pszText = "";
    li.iItem = index;
    li.iSubItem = 0;

    return ListView_InsertItem(m_hwnd, &li);
}


void MyListView::SetItemText(int index, int col, const char* txt)
{
    ListView_SetItemText(m_hwnd, index, col, (char*)txt);
}


void MyListView::DeleteAllItem()
{
    ListView_DeleteAllItems(m_hwnd);
}


void MyListView::SetExtended(ulong ext)
{
    ListView_SetExtendedListViewStyle(m_hwnd, ext);
}



