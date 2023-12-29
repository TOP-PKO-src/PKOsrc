
/* * * * * * * * * * * * * * * * * * * *

    INI �ļ���д����
    Jampe
    2006/3/28

 * * * * * * * * * * * * * * * * * * * */


#if !defined __INISTREAM_H__
#define __INISTREAM_H__

#pragma once

#include "datatype.h"


class INIStream
{
public:
    INIStream(void);
    INIStream(const char* _filepath);
    virtual ~INIStream(void);

    virtual void SetPath(const char* _filepath);                                        //���������ļ�·��

    virtual uint ReadInt(const char* _appname, const char* _keyname, int _default = 0); //��ȡ����
    virtual ulong ReadString(char* _returnstring, int _len, const char* _appname, const char* _keyname, const char* _default = "");//��ȡ�ַ���
    virtual ulong ReadSection(char* _returnstring, int _len, const char* _appname);     //��ȡС�������еĹؼ��ֺ�ֵ��_returnstring��ʽ��key1=value1\0key2=value2\0key3=value3\0\0
    virtual ulong ReadSectionName(char* _returnstring, int _len);                       //��ȡ����С�����ơ�_returnstring��ʽ��name1\0name2\0name3\0\0

    virtual bool WriteInt(const char* _appname, const char* _keyname, int _value);      //д��һ������
    virtual bool WriteString(const char* _appname, const char* _keyname, const char* _value);   //д���ַ���
    virtual bool WriteSection(const char* _appname, const char* _value);        //���ؼ��ֺ�ֵд��С�ڡ�_value��ʽҪ��key1=value1\0key2=value2\0key3=value3\0

    virtual bool DeleteSection(const char* _appname);                       //ɾ��һ��С��
    virtual bool DeleteKey(const char* _appname, const char* _keyname);     //ɾ��һ���ؼ��ֺ�����ֵ

public:
    char        m_FilePath[MAX_PATH];
};

#endif
