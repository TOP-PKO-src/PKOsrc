
/* * * * * * * * * * * * * * * * * * * *

    ��Ͽؼ���װ
    Jampe
    2006/4/12

 * * * * * * * * * * * * * * * * * * * */


#if !defined __MYCOMBOBOX_H__
#define __MYCOMBOBOX_H__

#include "MyControls.h"

class MyComboBox : public MyControls
{
public:
    MyComboBox();
    MyComboBox(HWND parent, int ctlid);
    virtual ~MyComboBox();

    //  ��ȡ�ı�
    const char* GetText();

    //  �����ı�
    void AddItem(const char* item);

    //  ���õ�ǰѡ��
    void SetCurSel(int index);

    //  �����ı�
    void SetText(const char* txt);
};


#endif
