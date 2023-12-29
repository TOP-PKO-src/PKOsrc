
/* * * * * * * * * * * * * * * * * * * *

    ��Ͽؼ���װ
    Jampe
    2006/4/12

 * * * * * * * * * * * * * * * * * * * */


#if !defined __MYCOMBOBOX_H__
#define __MYCOMBOBOX_H__

#include <windows.h>

class MyComboBox
{
public:
    MyComboBox();
    MyComboBox(HWND parent, int ctlid);
    virtual ~MyComboBox();

    //  ��ȡ��Ͽ�ؼ����
    void GetComboBoxHandle(HWND parent, int ctlid);

    //  ��ȡ�ı�
    const char* GetText();

    //  �����ı�
    void AddItem(const char* item);

    //  ���õ�ǰѡ��
    void SetCurSel(int index);

    //  �����ı�
    void SetText(const char* txt);

public:
    HWND        m_hwnd;
};


#endif
