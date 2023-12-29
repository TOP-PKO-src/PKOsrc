//
#pragma once

enum lwExpErrCodeEnum
{
    EXP_ERR_OK =                0x0000,
    EXP_ERR_INVALID_NAME =      0x0001,
    EXP_ERR_NO_SKINOBJ,
    EXP_ERR_INVALID_SKINNAME,
};


static const char* str_err_code[] =
{
    "Export Success",
    "������ļ�����Ч\n�ļ������������¸�ʽ��[ģ�����к�][���]\n���кű�����4λ��������ű�����4λ����\n�磺00010000, 00020100",
    "û����Ч��Ƥ��ģ��\n�����������Ҫ�а�Physique����Skin��ģ��",
    "Ƥ��ģ��������Ч\n���Ʊ����������¸�ʽ��obj_[��λ��]\n��λ�ű�����0��5�ĵ�λ����\n�磺obj_0, obj_3",
};