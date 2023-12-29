
/* * * * * * * * * * * * * * * * * * * *

    ��Ʒ��غ���
    Jampe
    2006/4/12

 * * * * * * * * * * * * * * * * * * * */


#if !defined __ITEMFUNC_H__
#define __ITEMFUNC_H__

#pragma warning(disable: 4535)

#include "ado.h"
#include "lock.h"
#include <windows.h>

#include <util.h>
#include <Kitbag.h>
#include <CommFunc.h>



class ItemFunc
{
public:
    virtual ~ItemFunc();

    //  ��ȡϵ�����Ա��
    static short CorvItem_COE(const char* item);


    //  ��ȡ�������Ա��
    static short CorvItem_VAL(const char* item);

    //  ��ȡ����ϵ������ֵ
    static short GetCoe(CItemRecord* pCItemRec, int type, int index = 0);


    //  ��ȡ������������ֵ
    static short GetVal(CItemRecord* pCItemRec, int type, int index);


    //  ������ɫ
    static COLORREF GetItemColor(short iEne);


    //  ��ȡ����ǰ׺
    static const char* GetItemPrefix(short iEne);

private:
    ItemFunc();
};



typedef struct _GameDBInfo_
{
    long            section;
    char            server[128];
    jConnection     conn;
}GameDBInfo, *pGameDBInfo;



class ItemInfo
{
public:
    virtual ~ItemInfo();
    static ItemInfo* Instance();
    virtual void SafeCloseRs();

    virtual bool CheckIP(const char* ip);

    //  ��ȡ��ɫ�������ݡ�typeΪ1ʱ��ȡ�������ݣ�Ϊ2ʱ��ȡ��������
    virtual bool GetChaItem(long section, CKitbag& kbcha, long chaID, int type = 1);

    //  ��ȡ��ɫID�б�
    virtual bool GetChaIDList(long section, char* buf, long actID);
    virtual bool GetChaIDList(long section, char* buf, const char* actName);

    //  ��ȡ��ɫ�����б�chaLst��ʽҪ��ÿ����ɫid֮���ö������
    virtual bool GetChaNameList(long section, char* buf, const char* chaLst, long& count);
    virtual bool GetChaNameList(long section, char* buf, long actID, long& count);

    //  ��ȡ��ɫ��
    virtual char* GetChaName(long section, char* buf, long chaID);

    //  ��ɫ������
    virtual bool RenameCha(long section, long chaID, const char* newname);

    //  ��ȡ��ɫ������ʻ�id
    virtual long GetActID(long section, long chaID);

    //  ��ȡ��ɫ������˻���
    virtual char* GetActName(char* buff, long section, long chaID);

    //  ��ȡ�ʻ�ID
    virtual long GetActID(const char* username);

    //  ����ɫ�Ƿ�����
    virtual bool ChkActOffline(long actID);

    //  ��ȡ��Ʒ���Ա��
    virtual short GetItemAttr(const char* attrname, const char* type);

    //  ����ٷֱ�ֵ(�����;öȼ�������ʵ��ֵ����)
    virtual short CountPercent(short min, short max, int percent);

    //  ��ȡ��ɫ���
    virtual bool GetChaLook(long section, stNetChangeChaPart& chaPart, long chaID);

    //  �ַ���ת��Ʒ����
    virtual bool String2ItemGrid(SItemGrid* ig, const char* str);

	//  �ַ���ת��Ʒ���ݣ���������Ϣ�� //add by wky
    virtual bool String2ItemGrid2(SItemGrid* ig, const char* str);

    //  ���汳�������ݿ���
    virtual bool SaveKitBag(long section, const char* sqlstr, long chaID);

    //  ���ӽ�ɫ������
    virtual bool GainCoin(long section, long chaID, long coin);

    //  ��ѯ��ɫ������
    virtual long QueryCoin(long section, long chaID);

    //  ��ӵ��߽��׼�¼
    virtual bool WriteTradeRecord(const char* id, int msg, int section, const char* info);

    //  ���½��׼�¼Ϊ�Ѵ���
    virtual bool UpdateTradeRecord(const char* id, const char* info);

    //  ��⽻�׼�¼�Ƿ�δ����
    virtual bool CheckTradeRecord(char* buf, int& len, const char* id);
	
	//  ��ӵ��߽��׼�¼2����������ˮ�ţ� //add by wky
    virtual bool WriteTradeRecord2(const char* id, int msg, int section, const char* info, const char* flow_id, const char* production_id);

	//  ��⽻����ˮ�Ƿ�δ���� //add by wky
    virtual bool CheckTradeFlowID(const char* flow_id);

    //  ���С���Ƿ���Ч
    virtual bool CheckSection(long section);

    //  ��ͣ�ʻ�
    //virtual bool BanAccount(const char* name, int ban);
    //virtual bool BanAccount(long id, int ban);

	// ��ͣ�ʻ�
	virtual int BanAccount(const char* name, int from, int type);

    //  �ʺż������ֵ��0�ɹ���1�ʻ��Ѵ��ڣ�2ʧ��
    virtual int ActiveAccount(const char* name, const char* password);
    virtual bool UpdatePasswd(const char* name, const char* oldpassword, const char* newpassword);

    //  ��������
    virtual long GetOnline(int section);

    //  tom�ʺż���.����ֵ: 0�ɹ�,1����Ķ�������,2�˻��Ѵ���,3ʧ��,4�Ѽ���
    virtual int TomAccount(char* info, long section, const char* tomName, const char* passwd2, const char* name, const char* passwd);

	//  �����û�����ȡ�ʺ� //add by wky
	virtual char* GetAccountFromChaName(long section, char* buf, char* chaName);

	//  ��ȡ�ʻ�������Ϣ //add by wky
    virtual char* GetAccount(long section, char* buf, char* actName);

	//  ��ȡ��ɫ������Ϣ //add by wky
    virtual char* GetCharacter(long section, char* buf, char* chaName);

	//  ģ����ѯ�ʻ��� //add by wky
	virtual char* GetAccountApproximately(long section, char* buf, char* actName, int page);

	//  ģ����ѯ��ɫ�� //add by wky
	virtual char* GetCharacterApproximately(long section, char* buf, char* chaName, int page);

	//	��ն������� //add by wky
	virtual bool ClearSecondPassword(long section, char* actName);

	//	�ָ���ɫ //add by wky
	virtual bool ResumeCharacter(long section, char* chaID);

	//	���а� //add by wky
	virtual char* GetSortedCharacters(long section, char* buf, int& num, char order);

public:
    pGameDBInfo     m_gdbList;
    long            m_num;

protected:
    ItemInfo();
    virtual jConnection* GetConnection(long section);
    static ItemInfo* instance;
    _RecordsetPtr   m_rs;
    Lock            m_lock; //  ��Դ������ֹrs���󱻶��߳������ˢ
    char            m_sql[16384];
};


#endif
