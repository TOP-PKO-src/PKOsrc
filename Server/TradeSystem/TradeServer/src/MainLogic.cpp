

#include "infotype.h"
#include "dblogic.h"
#include "inistream.h"

void PostSendMessage(IOCPSocket* client, long msgID, long subID, long extend, long section, unsigned char* body, long size)
{
__BEGIN_TRY
    pNetMessage pNM = new NetMessage;   //  ����Ϣ
    BuildNetMessage(pNM, msgID, subID, extend, section, body, size);

    int bufsz = sizeof(NetMessageHead) + pNM->msgHead.msgEncSize;

    byte* buff = new byte[bufsz];   //  ��������
    byte* tmp = buff;

    memset(buff, 0, bufsz);
    memcpy(tmp, &pNM->msgHead, sizeof(NetMessageHead));

    if(pNM->msgHead.msgEncSize)
    {
        tmp += sizeof(NetMessageHead);
        memcpy(tmp, pNM->msgBody, pNM->msgHead.msgEncSize);
    }
    if(!client->PostSend(buff, bufsz))
    {
        LGPRT("System", "Send Message Failed. %s:%i"__LN, client->m_sock.GetIPAddress(), client->m_sock.GetPort());
    }

    SAFE_DELETE_ARRAY(buff);
    FreeNetMessage(pNM);
__END_TRY
}


void BroadcastMessage(long msgID, long subID, long extend, unsigned char* body, long size)
{
__BEGIN_TRY
    __SockList::iterator it;
    //g_listInfo.sock_list.m_lock.lock();
    for(it = g_listInfo.sock_list.m_list.begin(); it != g_listInfo.sock_list.m_list.end(); it++)
    {
        PostSendMessage((*it), msgID, subID, extend, 0, body, size);
    }
    //g_listInfo.sock_list.m_lock.unlock();
__END_TRY
    //g_listInfo.sock_list.m_lock.unlock();
}


void SyncStore()
{
    //LGPRT("Broadcast", "Begin Broadcast Store List..."__LN);
    byte* buff = 0;
    g_dbInfo.db_store.ReloadToMemory();
    int clssize = g_dbInfo.db_class.GetBufferSize();
    int stsize = g_dbInfo.db_store.GetBufferSize();
    int size =  clssize + stsize;

    if(size)
    {
        buff = new byte[size];
        g_dbInfo.db_class.GetBuffer(buff, clssize);
        g_dbInfo.db_store.GetBuffer((buff + clssize), stsize);
    }

    int ext = (g_dbInfo.db_class.m_size << 16);
    ext = (ext | (g_dbInfo.db_store.m_size & 0x0000FFFF));
    BroadcastMessage(INFO_REQUEST_STORE, 2, ext, buff, size);
    SAFE_DELETE_ARRAY(buff);
    //LGPRT("Broadcast", "End Broadcast Store List..."__LN);
}


//  ���籨����Ϣ
void OnNetMessage(pNetMessage msg, IOCPSocket* client)
{
__BEGIN_TRY
    if((!client->m_check) && (msg->msgHead.msgID != INFO_LOGIN))  //  δ��֤����
    {
        FreeNetMessage(msg);
        return;
    }

    if((msg->msgHead.msgID >= 2000) && (msg->msgHead.msgID <= 2999))    //  �̳�
    {
    __BEGIN_TRY
        pInfoMessage imPtr = new InfoMessage;
        if(imPtr)
        {
            imPtr->client = client;
            imPtr->msg = msg;
            g_listInfo.store_list.Push(imPtr);
        }
    __END_TRY
    }
    else if((msg->msgHead.msgID >= 3000) && (msg->msgHead.msgID <= 3999))   //  ����
    {
        FreeNetMessage(msg);
    }
    else if((msg->msgHead.msgID >= 4000) && (msg->msgHead.msgID <= 4499))   //  ����
    {
        FreeNetMessage(msg);
    }
    else if((msg->msgHead.msgID >= 4500) && (msg->msgHead.msgID <= 4999))   //  ����
    {
    __BEGIN_TRY
        pInfoMessage imPtr = new InfoMessage;
        if(imPtr)
        {
            imPtr->client = client;
            imPtr->msg = msg;
            g_listInfo.mail_list.Push(imPtr);
        }
    __END_TRY
    }
    else if((msg->msgHead.msgID >= 6000) && (msg->msgHead.msgID <= 7999))   //  ����
    {
    __BEGIN_TRY
        pInfoMessage imPtr = new InfoMessage;
        imPtr->client = client;
        imPtr->msg = msg;
        g_listInfo.man_list.Push(imPtr);
    __END_TRY
    }
    else
    {
        switch(msg->msgHead.msgID)
        {
        case INFO_LOGIN:
            {
            __BEGIN_TRY
                LG("NetMessage", "Request => MSG: %li, OrderID: %I64i, Section: %li, Client: %s;%i Request Login."__LN, msg->msgHead.msgID, msg->msgHead.msgOrder, msg->msgHead.msgSection, client->m_sock.GetIPAddress(), client->m_sock.GetPort());
                char priKey[64] = {0};
                memcpy(priKey, msg->msgBody, 64);

                if(g_dbInfo.db_login.LoginServer(msg->msgHead.msgSection, client->m_sock.GetIPAddress(), priKey))
                {
                    client->m_check = true;
                    PostSendMessage(client, INFO_LOGIN, INFO_SUCCESS, INFO_DEFAULT, msg->msgHead.msgSection, 0, 0);
                    LG("NetMessage", "Answer => OrderID: %I64i, Login Success."__LN, msg->msgHead.msgOrder);
                }
                else
                {
                    client->m_check = false;
                    PostSendMessage(client, INFO_LOGIN, INFO_FAILED, INFO_DEFAULT, msg->msgHead.msgSection, 0, 0);
                    LG("NetMessage", "Answer => OrderID: %I64i, Login Failt."__LN, msg->msgHead.msgOrder);
                }
            __END_TRY
            }  break;
        case INFO_REQUEST_ACCOUNT:
            {
            __BEGIN_TRY
                RoleInfo* rol = new RoleInfo;
                memcpy(rol, (RoleInfo*)msg->msgBody, sizeof(RoleInfo));

                LG("NetMessage", "Request => MSG: %li, OrderID: %I64i, Section: %li, Client: %s:%i, Account: %s, Request Account."__LN, msg->msgHead.msgID, msg->msgHead.msgOrder, msg->msgHead.msgSection, client->m_sock.GetIPAddress(), client->m_sock.GetPort(), rol->actName);

                if(!g_dbInfo.db_account.GetRoleInfo(rol))
                {
                    //  ʧ��
                    LG("NetMessage", "Answer => OrderID: %I64i, Get Role Failt."__LN, msg->msgHead.msgOrder);
                    PostSendMessage(client, INFO_REQUEST_ACCOUNT, INFO_FAILED, 0, msg->msgHead.msgSection, (byte*)&msg->msgHead.msgOrder, sizeof(long long));

                }
                else
                {
                    //  ֻ������2��ֵ�����ڵ�����ʱ���Żᷢ�ͳ�ȥ
                    rol->moBean = -1;
                    rol->vip = -1;

                    //  ����billing��ѯħ��
                    pBilTask Bean = new BilTask;
                    Bean->section = msg->msgHead.msgSection;
                    Bean->msgID = INFO_REQUEST_ACCOUNT;
                    Bean->orderID = msg->msgHead.msgOrder;
                    Bean->body = rol;
                    Bean->eventID = QUERY_MONEY;
                    Bean->sock = client;

                    int ret = 0;

                    ret = g_servInfo.billing.Query(rol->actName, QUERY_MONEY);
                    if(ret)
                    {
                        g_servInfo.billing.PushTask(ret, Bean);
                    }
                    else
                    {
                        //  ʧ��
                        LG("NetMessage", "Answer => OrderID: %I64i, Query Bean Failt."__LN, msg->msgHead.msgOrder);
                        PostSendMessage(client, INFO_REQUEST_ACCOUNT, INFO_FAILED, 0, msg->msgHead.msgSection, (byte*)&msg->msgHead.msgOrder, sizeof(long long));
                        break;
                    }

                    //  ����billing��ѯvip�ȼ�
                    pBilTask vipType = new BilTask;
                    vipType->section = msg->msgHead.msgSection;
                    vipType->msgID = INFO_REQUEST_ACCOUNT;
                    vipType->orderID = msg->msgHead.msgOrder;
                    vipType->body = rol;
                    vipType->eventID = QUERY_KOP_VIP_TYPE;
                    vipType->sock = client;

                    ret = g_servInfo.billing.Query(rol->actName, QUERY_KOP_VIP_TYPE);
                    if(ret)
                    {
                        g_servInfo.billing.PushTask(ret, vipType);
                    }
                    else
                    {
                        //  ʧ��
                        LG("NetMessage", "Answer => OrderID: %I64i, Query VIP Failt."__LN, msg->msgHead.msgOrder);
                        PostSendMessage(client, INFO_REQUEST_ACCOUNT, INFO_FAILED, 0, msg->msgHead.msgSection, (byte*)&msg->msgHead.msgOrder, sizeof(long long));
                        break;
                    }
                }
            __END_TRY
            }  break;
        }
        FreeNetMessage(msg);
    }
__END_TRY
}



//  ������Ϣ
void OnManageMessage(pInfoMessage msg)
{
__BEGIN_TRY
    switch(msg->msg->msgHead.msgID)
    {
    case INFO_MAN_ITEM:
        {
            switch(msg->msg->msgHead.subID)
            {
            case INFO_MAN_ADD:
                {
                    LG("Management", "-----> Begin Add Item, Section: %li"__LN, msg->msg->msgHead.msgSection);
                    StoreStruct ss = {0};

                    byte* ptr = (byte*)msg->msg->msgBody;
                    memcpy(&ss.store_head, ptr, sizeof(StoreInfo));

                    ss.item_body = new ItemInfo[(ss.store_head.itemNum * sizeof(ItemInfo))];
                    memcpy(ss.item_body, (ptr + sizeof(StoreInfo)), (ss.store_head.itemNum * sizeof(ItemInfo)));

                    if(!ss.store_head.beginTime)
                    {
                        ss.store_head.beginTime = time(0);
                    }

                    if(ss.store_head.comExpire > 0)
                    {
                        ss.store_head.comExpire *= 3600;
                        ss.store_head.comExpire += ss.store_head.beginTime;
                    }

                    if(g_dbInfo.db_store.AddStore(&ss))
                    {
                        PostSendMessage(msg->client, INFO_MAN_ITEM, INFO_MAN_SUCCESS, 0, msg->msg->msgHead.msgSection, (byte*)&msg->msg->msgHead.msgOrder, sizeof(long long));
                    }
                    else
                    {
                        PostSendMessage(msg->client, INFO_MAN_ITEM, INFO_MAN_FAILED, 0, msg->msg->msgHead.msgSection, (byte*)&msg->msg->msgHead.msgOrder, sizeof(long long));
                    }
                    SAFE_DELETE_ARRAY(ss.item_body);
                    LG("Management", "-----> End Add Item, Section: %li"__LN, msg->msg->msgHead.msgSection);
                }  break;
            case INFO_MAN_MODIFY:
                {
                    LG("Management", "-----> Begin Modify Item, Section: %li"__LN, msg->msg->msgHead.msgSection);
                    StoreStruct ss = {0};

                    byte* ptr = (byte*)msg->msg->msgBody;
                    memcpy(&ss.store_head, ptr, sizeof(StoreInfo));

                    //ss.item_body = new ItemInfo[(ss.store_head.itemNum * sizeof(ItemInfo))];
                    //memcpy(ss.item_body, (ptr+ sizeof(StoreInfo)), (ss.store_head.itemNum * sizeof(ItemInfo)));

                    if(!ss.store_head.beginTime)
                    {
                        ss.store_head.beginTime = time(0);
                    }

                    if(ss.store_head.comExpire > 0)
                    {
                        ss.store_head.comExpire *= 3600;
                        ss.store_head.comExpire += ss.store_head.beginTime;
                    }

                    if(g_dbInfo.db_store.UpdateStore(&ss, msg->msg->msgHead.msgExtend))
                    {
                        PostSendMessage(msg->client, INFO_MAN_ITEM, INFO_MAN_SUCCESS, 0, msg->msg->msgHead.msgSection, (byte*)&msg->msg->msgHead.msgOrder, sizeof(long long));
                    }
                    else
                    {
                        PostSendMessage(msg->client, INFO_MAN_ITEM, INFO_MAN_FAILED, 0, msg->msg->msgHead.msgSection, (byte*)&msg->msg->msgHead.msgOrder, sizeof(long long));
                    }
                    SAFE_DELETE_ARRAY(ss.item_body);
                    LG("Management", "-----> End Modify Item, Section: %li"__LN, msg->msg->msgHead.msgSection);
                }  break;
            case INFO_MAN_DEL:
                {
                    LG("Management", "-----> Begin Del Item, Section: %li"__LN, msg->msg->msgHead.msgSection);

                    if(g_dbInfo.db_store.DelStore(msg->msg->msgHead.msgExtend))
                    {
                        PostSendMessage(msg->client, INFO_MAN_ITEM, INFO_MAN_SUCCESS, 0, msg->msg->msgHead.msgSection, (byte*)&msg->msg->msgHead.msgOrder, sizeof(long long));
                    }
                    else
                    {
                        PostSendMessage(msg->client, INFO_MAN_ITEM, INFO_MAN_FAILED, 0, msg->msg->msgHead.msgSection, (byte*)&msg->msg->msgHead.msgOrder, sizeof(long long));
                    }
                    LG("Management", "-----> End Del Item, Section: %li"__LN, msg->msg->msgHead.msgSection);
                }  break;
            case 3:
                {
                    LG("Management", "-----> Begin Set Hot Item, Section: %li"__LN, msg->msg->msgHead.msgSection);
                    if(g_dbInfo.db_store.SetHotStore(msg->msg->msgHead.msgExtend))
                    {
                        PostSendMessage(msg->client, INFO_MAN_ITEM, INFO_MAN_SUCCESS, 0, msg->msg->msgHead.msgSection, (byte*)&msg->msg->msgHead.msgOrder, sizeof(long long));
                    }
                    else
                    {
                        PostSendMessage(msg->client, INFO_MAN_ITEM, INFO_MAN_FAILED, 0, msg->msg->msgHead.msgSection, (byte*)&msg->msg->msgHead.msgOrder, sizeof(long long));
                    }
                    LG("Management", "-----> End Set Hot Item, Section: %li"__LN, msg->msg->msgHead.msgSection);
                }  break;
            }
            byte* buff = 0;

            int clssize = g_dbInfo.db_class.GetBufferSize();
            int stsize = g_dbInfo.db_store.GetBufferSize();
            int size =  clssize + stsize;

            if(size)
            {
                buff = new byte[size];
                g_dbInfo.db_class.GetBuffer(buff, clssize);
                g_dbInfo.db_store.GetBuffer((buff + clssize), stsize);
            }

            int ext = (g_dbInfo.db_class.m_size << 16);
            ext = (ext | (g_dbInfo.db_store.m_size & 0x0000FFFF));
            BroadcastMessage(INFO_REQUEST_STORE, 2, ext, buff, size);
            SAFE_DELETE_ARRAY(buff);
        }  break;
    case INFO_MAN_CLASS:
        {
            switch(msg->msg->msgHead.subID)
            {
            case INFO_MAN_ADD:
                {
                    LG("Management", "-----> Begin Add Class, Section: %li"__LN, msg->msg->msgHead.msgSection);
                    if(g_dbInfo.db_class.AddClass((ClassInfo*)msg->msg->msgBody))
                    {
                        PostSendMessage(msg->client, INFO_MAN_CLASS, INFO_MAN_SUCCESS, 0, msg->msg->msgHead.msgSection, (byte*)&msg->msg->msgHead.msgOrder, sizeof(long long));
                    }
                    else
                    {
                        PostSendMessage(msg->client, INFO_MAN_CLASS, INFO_MAN_FAILED, 0, msg->msg->msgHead.msgSection, (byte*)&msg->msg->msgHead.msgOrder, sizeof(long long));
                    }
                    LG("Management", "-----> End Add Class, Section: %li"__LN, msg->msg->msgHead.msgSection);
                }  break;
            case INFO_MAN_MODIFY:
                {
                    LG("Management", "-----> Begin Modify Class, Section: %li"__LN, msg->msg->msgHead.msgSection);
                    if(g_dbInfo.db_class.UpdateClass((ClassInfo*)msg->msg->msgBody, msg->msg->msgHead.msgExtend))
                    {
                        PostSendMessage(msg->client, INFO_MAN_CLASS, INFO_MAN_SUCCESS, 0, msg->msg->msgHead.msgSection, (byte*)&msg->msg->msgHead.msgOrder, sizeof(long long));
                    }
                    else
                    {
                        PostSendMessage(msg->client, INFO_MAN_CLASS, INFO_MAN_FAILED, 0, msg->msg->msgHead.msgSection, (byte*)&msg->msg->msgHead.msgOrder, sizeof(long long));
                    }
                    LG("Management", "-----> End Modify Class, Section: %li"__LN, msg->msg->msgHead.msgSection);
                }  break;
            case INFO_MAN_DEL:
                {
                    LG("Management", "-----> Begin Del Class, Section: %li"__LN, msg->msg->msgHead.msgSection);
                    if(g_dbInfo.db_class.DelClass(msg->msg->msgHead.msgExtend))
                    {
                        PostSendMessage(msg->client, INFO_MAN_CLASS, INFO_MAN_SUCCESS, 0, msg->msg->msgHead.msgSection, (byte*)&msg->msg->msgHead.msgOrder, sizeof(long long));
                    }
                    else
                    {
                        PostSendMessage(msg->client, INFO_MAN_CLASS, INFO_MAN_FAILED, 0, msg->msg->msgHead.msgSection, (byte*)&msg->msg->msgHead.msgOrder, sizeof(long long));
                    }
                    LG("Management", "-----> End Del Class, Section: %li"__LN, msg->msg->msgHead.msgSection);
                }  break;
            }
            byte* buff = 0;

            int clssize = g_dbInfo.db_class.GetBufferSize();
            int stsize = g_dbInfo.db_store.GetBufferSize();
            int size =  clssize + stsize;

            if(size)
            {
                buff = new byte[size];
                g_dbInfo.db_class.GetBuffer(buff, clssize);
                g_dbInfo.db_store.GetBuffer((buff + clssize), stsize);
            }

            int ext = (g_dbInfo.db_class.m_size << 16);
            ext = (ext | (g_dbInfo.db_store.m_size & 0x0000FFFF));
            BroadcastMessage(INFO_REQUEST_STORE, 2, ext, buff, size);
            SAFE_DELETE_ARRAY(buff);
        }  break;
    case INFO_MAN_AFFICHE:
        {
            switch(msg->msg->msgHead.subID)
            {
            case INFO_MAN_ADD:
                {
                    LG("Management", "-----> Begin Add Affiche, Section: %li"__LN, msg->msg->msgHead.msgSection);
                    if(g_dbInfo.db_affiche.AddAffiche((AfficheInfo*)msg->msg->msgBody))
                    {
                        PostSendMessage(msg->client, INFO_MAN_AFFICHE, INFO_MAN_SUCCESS, 0, msg->msg->msgHead.msgSection, (byte*)&msg->msg->msgHead.msgOrder, sizeof(long long));
                    }
                    else
                    {
                        PostSendMessage(msg->client, INFO_MAN_AFFICHE, INFO_MAN_FAILED, 0, msg->msg->msgHead.msgSection, (byte*)&msg->msg->msgHead.msgOrder, sizeof(long long));
                    }
                    LG("Management", "-----> End Add Affiche, Section: %li"__LN, msg->msg->msgHead.msgSection);
                }  break;
            case INFO_MAN_MODIFY:
                {
                    LG("Management", "-----> Begin Modify Affiche, Section: %li"__LN, msg->msg->msgHead.msgSection);
                    if(g_dbInfo.db_affiche.UpdateAffiche((AfficheInfo*)msg->msg->msgBody, msg->msg->msgHead.msgExtend))
                    {
                        PostSendMessage(msg->client, INFO_MAN_AFFICHE, INFO_MAN_SUCCESS, 0, msg->msg->msgHead.msgSection, (byte*)&msg->msg->msgHead.msgOrder, sizeof(long long));
                    }
                    else
                    {
                        PostSendMessage(msg->client, INFO_MAN_AFFICHE, INFO_MAN_FAILED, 0, msg->msg->msgHead.msgSection, (byte*)&msg->msg->msgHead.msgOrder, sizeof(long long));
                    }
                    LG("Management", "-----> End Modify Affiche, Section: %li"__LN, msg->msg->msgHead.msgSection);
                }  break;
            case INFO_MAN_DEL:
                {
                    LG("Management", "-----> Begin Del Affiche, Section: %li"__LN, msg->msg->msgHead.msgSection);
                    if(g_dbInfo.db_affiche.DelAffiche(msg->msg->msgHead.msgExtend))
                    {
                        PostSendMessage(msg->client, INFO_MAN_AFFICHE, INFO_MAN_SUCCESS, 0, msg->msg->msgHead.msgSection, (byte*)&msg->msg->msgHead.msgOrder, sizeof(long long));
                    }
                    else
                    {
                        PostSendMessage(msg->client, INFO_MAN_AFFICHE, INFO_MAN_FAILED, 0, msg->msg->msgHead.msgSection, (byte*)&msg->msg->msgHead.msgOrder, sizeof(long long));
                    }
                    LG("Management", "-----> End Del Affiche, Section: %li"__LN, msg->msg->msgHead.msgSection);
                }  break;
            }
            byte* buff = 0;
            long size = g_dbInfo.db_affiche.GetBufferSize();
            if(size)
            {
                buff = new byte[size];
                g_dbInfo.db_affiche.GetBuffer(buff, size);
            }
            BroadcastMessage(INFO_REQUEST_AFFICHE, 2, g_dbInfo.db_affiche.m_size, buff, size);
            SAFE_DELETE_ARRAY(buff);
        }  break;
    case INFO_MAN_ALL_ITEM:
        {
            LG("Management", "-----> Begin Get All Item, Section: %li"__LN, msg->msg->msgHead.msgSection);
            byte* buff = 0;
            long count = 0;
            long buflen = 0;
            if(g_dbInfo.db_store.LoadDelStore(&buff, &buflen, &count))
            {
                PostSendMessage(msg->client, INFO_MAN_ALL_ITEM, INFO_MAN_SUCCESS, count, msg->msg->msgHead.msgSection, buff, buflen);
            }
            else
            {
                PostSendMessage(msg->client, INFO_MAN_ALL_ITEM, INFO_MAN_FAILED, 0, msg->msg->msgHead.msgSection, (byte*)&msg->msg->msgHead.msgOrder, sizeof(long long));
            }
            SAFE_DELETE_ARRAY(buff);
            LG("Management", "-----> End Get All Item, Section: %li"__LN, msg->msg->msgHead.msgSection);
        }  break;
    case INFO_MAN_VIP:
        {
            LG("Management", "-----> Begin VIP, Section: %li"__LN, msg->msg->msgHead.msgSection);
            if(g_dbInfo.db_vip.UpdateVIP(msg->msg->msgHead.subID, msg->msg->msgHead.msgExtend))
            {
                PostSendMessage(msg->client, INFO_MAN_VIP, INFO_MAN_SUCCESS, 0, msg->msg->msgHead.msgSection, NULL, 0);
            }
            else
            {
                PostSendMessage(msg->client, INFO_MAN_VIP, INFO_MAN_FAILED, 0, msg->msg->msgHead.msgSection, NULL, 0);
            }
            LG("Management", "-----> End VIP, Section: %li"__LN, msg->msg->msgHead.msgSection);
        }  break;
    case INFO_MAN_RATE:
        {
            LG("Management", "-----> Begin Rate, Section: %li"__LN, msg->msg->msgHead.msgSection);
            char cfgPath[MAX_PATH] = {0};    //  �����ļ�·��
            sprintf(cfgPath, "%s\\%s", g_servInfo.serv_dir, CONFIG_FILE_NAME);
            INIStream iniFile(cfgPath);
            if(iniFile.WriteInt("Service", "rate", msg->msg->msgHead.msgExtend))
            {
                g_servInfo.serv_rate = msg->msg->msgHead.msgExtend;
                PostSendMessage(msg->client, INFO_MAN_RATE, INFO_MAN_SUCCESS, 0, msg->msg->msgHead.msgSection, NULL, 0);
            }
            else
            {
                PostSendMessage(msg->client, INFO_MAN_RATE, INFO_MAN_FAILED, 0, msg->msg->msgHead.msgSection, NULL, 0);
            }
            LG("Management", "-----> End Rate, Section: %li"__LN, msg->msg->msgHead.msgSection);
        }  break;
    case INFO_GET_GM_MAIL:
        {
            LG("Mail", "Request => MSG: %li, OrderID: %I64i, Section: %li, Client: %s;%i Read Mail"__LN, msg->msg->msgHead.msgID, msg->msg->msgHead.msgOrder, msg->msg->msgHead.msgSection, msg->client->m_sock.GetIPAddress(), msg->client->m_sock.GetPort());

            int size = sizeof(MailInfo) + sizeof(long long);
            byte* buff = new byte[size];

            MailInfo mail = {0};
            long servID = 0;

            if(g_dbInfo.db_mail.ReadMail(&mail, &servID))
            {
                byte* ptr = buff;
                memcpy(ptr, &msg->msg->msgHead.msgOrder, sizeof(long long));
                ptr += sizeof(long long);
                memcpy(ptr, &mail, sizeof(MailInfo));

                LG("Mail", "Answer => OrderID: %I64i, Read Mail Success."__LN, msg->msg->msgHead.msgOrder);
                PostSendMessage(msg->client, INFO_GET_GM_MAIL, INFO_SUCCESS, servID, msg->msg->msgHead.msgSection, buff, size);
            }
            else
            {
                LG("Mail", "Answer => OrderID: %I64i, Read Mail Failed."__LN, msg->msg->msgHead.msgOrder);
                PostSendMessage(msg->client, INFO_GET_GM_MAIL, INFO_FAILED, 0, msg->msg->msgHead.msgSection, (byte*)&msg->msg->msgHead.msgOrder, sizeof(long long));
            }
        }  break;

    case INFO_RPY_GM_MAIL:
        {
            LG("Mail", "Request => MSG: %li, OrderID: %I64i, Section: %li, Client: %s;%i Reply Mail."__LN, msg->msg->msgHead.msgID, msg->msg->msgHead.msgOrder, msg->msg->msgHead.msgSection, msg->client->m_sock.GetIPAddress(), msg->client->m_sock.GetPort());
            MailInfo* mail = (MailInfo*)msg->msg->msgBody;

            if(g_dbInfo.db_mail.ReplyMail(mail, msg->msg->msgHead.msgSection))
            {
                LG("Mail", "Answer => OrderID: %I64i, Reply Mail Success."__LN, msg->msg->msgHead.msgOrder);
                PostSendMessage(msg->client, INFO_RPY_GM_MAIL, INFO_SUCCESS, 0, msg->msg->msgHead.msgSection, (byte*)&msg->msg->msgHead.msgOrder, sizeof(long long));
            }
            else
            {
                LG("Mail", "Answer => OrderID: %I64i, Reply Mail Failed."__LN, msg->msg->msgHead.msgOrder);
                PostSendMessage(msg->client, INFO_RPY_GM_MAIL, INFO_FAILED, 0, msg->msg->msgHead.msgSection, (byte*)&msg->msg->msgHead.msgOrder, sizeof(long long));
            }
        }  break;

    case INFO_MAIL_QUEUE:
        {
            LG("Mail", "Request => MSG: %li, OrderID: %I64i, Section: %li, Client: %s;%i Get Mail Queue."__LN, msg->msg->msgHead.msgID, msg->msg->msgHead.msgOrder, msg->msg->msgHead.msgSection, msg->client->m_sock.GetIPAddress(), msg->client->m_sock.GetPort());
            PostSendMessage(msg->client, INFO_MAIL_QUEUE, INFO_SUCCESS, g_dbInfo.db_mail.GetCount(), msg->msg->msgHead.msgSection, 0, 0);
        }  break;
    default:
        {
            LG("NetMessage", "Request => MSG: %li, OrderID: %I64i, Section: %li, Client: %s;%i Unknown Management Request."__LN, msg->msg->msgHead.msgID, msg->msg->msgHead.msgOrder, msg->msg->msgHead.msgSection, msg->client->m_sock.GetIPAddress(), msg->client->m_sock.GetPort());
            PostSendMessage(msg->client, INFO_EXCEPTION_SERVICE, INFO_FAILED, 0, msg->msg->msgHead.msgSection, 0, 0);
        }  break;
    }
    FreeNetMessage(msg->msg);
    SAFE_DELETE(msg);
__END_TRY
}



//  �����̳���Ϣ
void OnStoreMessage(pInfoMessage msg)
{
__BEGIN_TRY
    switch(msg->msg->msgHead.msgID)
    {
    case INFO_REQUEST_STORE:
        {
            LG("NetMessage", "Request => MSG: %li, OrderID: %I64i, Section: %li, Client: %s;%i Request Store."__LN, msg->msg->msgHead.msgID, msg->msg->msgHead.msgOrder, msg->msg->msgHead.msgSection, msg->client->m_sock.GetIPAddress(), msg->client->m_sock.GetPort());

            byte* buff = 0;

            int clssize = g_dbInfo.db_class.GetBufferSize();
            int stsize = g_dbInfo.db_store.GetBufferSize();
            int size =  clssize + stsize;

            if(size)
            {
                buff = new byte[size];
                g_dbInfo.db_class.GetBuffer(buff, clssize);
                g_dbInfo.db_store.GetBuffer((buff + clssize), stsize);
            }

            int ext = (g_dbInfo.db_class.m_size << 16);
            ext = (ext | (g_dbInfo.db_store.m_size & 0x0000FFFF));
            PostSendMessage(msg->client, INFO_REQUEST_STORE, INFO_SUCCESS, ext, msg->msg->msgHead.msgSection, buff, size);
            LG("NetMessage", "Answer => OrderID: %I64i. Store List."__LN, msg->msg->msgHead.msgOrder);
            SAFE_DELETE_ARRAY(buff);
        }  break;

    case INFO_REQUEST_AFFICHE:
        {
            LG("NetMessage", "Request => MSG: %li, OrderID: %I64i, Section: %li, Client: %s;%i Request Affiche."__LN, msg->msg->msgHead.msgID, msg->msg->msgHead.msgOrder, msg->msg->msgHead.msgSection, msg->client->m_sock.GetIPAddress(), msg->client->m_sock.GetPort());

            byte* buff = 0;
            long size = g_dbInfo.db_affiche.GetBufferSize();

            if(size)
            {
                buff = new byte[size];
                g_dbInfo.db_affiche.GetBuffer(buff, size);
            }
            PostSendMessage(msg->client, INFO_REQUEST_AFFICHE, INFO_SUCCESS, g_dbInfo.db_affiche.m_size, msg->msg->msgHead.msgSection, buff, size);
            LG("NetMessage", "Answer => OrderID: %I64i. Affiche List."__LN, msg->msg->msgHead.msgOrder);
            SAFE_DELETE_ARRAY(buff);
        }  break;

    case INFO_STORE_BUY:
        {
            char storeName[32] = {0};
            char fld1[128] = {0};
            char fld2[128] = {0};
            char fld3[128] = {0};
            char fld4[256] = {0};
            //char fld5[256] = {0};
            long comClass = 0;
            long price = g_dbInfo.db_store.QueryStore(msg->msg->msgHead.msgExtend, storeName, &comClass);
            RoleInfo* rol = (RoleInfo*)msg->msg->msgBody;
            sprintf(fld4, "%s, %li, %li", rol->actName, rol->rplMoney, rol->moBean);

            sprintf(fld1, "%li, %s", msg->msg->msgHead.msgExtend, storeName);

            LG("NetMessage", "Request => MSG: %li, OrderID: %I64i, Section: %li, Client: %s;%i Request Buy StoreID: %li, StoreName: %s, StorePrice: %li."__LN, msg->msg->msgHead.msgID, msg->msg->msgHead.msgOrder, msg->msg->msgHead.msgSection, msg->client->m_sock.GetIPAddress(), msg->client->m_sock.GetPort(), msg->msg->msgHead.msgExtend, storeName, price);
            if(-1 == price)
            {
                //  ����ļ۸񣬽��ּ�¼Ϊ-1(�ڶ����ֶ�)��������Ϊ1(�������ֶ�)
                PostSendMessage(msg->client, INFO_STORE_BUY, INFO_FAILED, 0, msg->msg->msgHead.msgSection, (byte*)&msg->msg->msgHead.msgOrder, sizeof(long long));
                g_dbInfo.db_history.LogHistory(msg->msg->msgHead.msgSection, msg->msg->msgHead.msgOrder, rol->actID, INFO_TYPE_HISTORY, fld1, "-1", "1", fld4, "");
                g_servInfo.billing.Record(msg->msg->msgHead.msgOrder, rol->actName, rol->chaName, msg->client->m_sock.GetIPAddress(), msg->msg->msgHead.msgExtend, storeName, comClass, price, 1, "", -1);
                LG("NetMessage", "Answer => OrderID: %I64i. Error Store Price."__LN, msg->msg->msgHead.msgOrder);
            }
            else if(-2 == price)
            {
                //  ��Ʒ���¼�
                PostSendMessage(msg->client, INFO_STORE_BUY, INFO_FAILED, 0, msg->msg->msgHead.msgSection, (byte*)&msg->msg->msgHead.msgOrder, sizeof(long long));
                g_dbInfo.db_history.LogHistory(msg->msg->msgHead.msgSection, msg->msg->msgHead.msgOrder, rol->actID, INFO_TYPE_HISTORY, fld1, "-2", "1", fld4, "");
                g_servInfo.billing.Record(msg->msg->msgHead.msgOrder, rol->actName, rol->chaName, msg->client->m_sock.GetIPAddress(), msg->msg->msgHead.msgExtend, storeName, comClass, price, 1, "", -2);
                LG("NetMessage", "Answer => OrderID: %I64i. No Store For Sale."__LN, msg->msg->msgHead.msgOrder);

                byte* buff = 0;
                int clssize = g_dbInfo.db_class.GetBufferSize();
                int stsize = g_dbInfo.db_store.GetBufferSize();
                int size =  clssize + stsize;

                if(size)
                {
                    buff = new byte[size];
                    g_dbInfo.db_class.GetBuffer(buff, clssize);
                    g_dbInfo.db_store.GetBuffer((buff + clssize), stsize);
                }

                int ext = (g_dbInfo.db_class.m_size << 16);
                ext = (ext | (g_dbInfo.db_store.m_size & 0x0000FFFF));
                BroadcastMessage(INFO_REQUEST_STORE, 2, ext, buff, size);
                SAFE_DELETE_ARRAY(buff);
            }
            else
            {
                sprintf(fld2, "%li", price);
                g_dbInfo.db_account.GetRoleInfo(rol);

                if(rol->rplMoney < price)
                {
                    //  �ʻ�������������Ϊ2(�������ֶ�)
                    PostSendMessage(msg->client, INFO_STORE_BUY, INFO_FAILED, 0, msg->msg->msgHead.msgSection, (byte*)&msg->msg->msgHead.msgOrder, sizeof(long long));
                    g_dbInfo.db_history.LogHistory(msg->msg->msgHead.msgSection, msg->msg->msgHead.msgOrder, rol->actID, INFO_TYPE_HISTORY, fld1, fld2, "2", fld4, "");
                    g_servInfo.billing.Record(msg->msg->msgHead.msgOrder, rol->actName, rol->chaName, msg->client->m_sock.GetIPAddress(), msg->msg->msgHead.msgExtend, storeName, comClass, price, 1, "", 2);
                    LG("NetMessage", "Answer => OrderID: %I64i. Have No Enough."__LN, msg->msg->msgHead.msgOrder);
                }
                else
                {
                    if(!g_dbInfo.db_account.CountMoney(rol, (-1 * price)))
                    {
                        //  �۷�ʧ�ܣ�������Ϊ3(�������ֶ�)
                        PostSendMessage(msg->client, INFO_STORE_BUY, INFO_FAILED, 0, msg->msg->msgHead.msgSection, (byte*)&msg->msg->msgHead.msgOrder, sizeof(long long));
                        g_dbInfo.db_history.LogHistory(msg->msg->msgHead.msgSection, msg->msg->msgHead.msgOrder, rol->actID, INFO_TYPE_HISTORY, fld1, fld2, "3", fld4, "");
                        g_servInfo.billing.Record(msg->msg->msgHead.msgOrder, rol->actName, rol->chaName, msg->client->m_sock.GetIPAddress(), msg->msg->msgHead.msgExtend, storeName, comClass, price, 1, "", 3);
                        LG("NetMessage", "Answer => OrderID: %I64i. Pay Error."__LN, msg->msg->msgHead.msgOrder);
                    }
                    else
                    {
                        //  ��ȷ���ף�������Ϊ0(�������ֶ�)
                        int size = sizeof(RoleInfo) + sizeof(long long);
                        byte* buff = new byte[size];

                        byte* ptr = buff;
                        memcpy(ptr, &msg->msg->msgHead.msgOrder, sizeof(long long));
                        ptr += sizeof(long long);
                        memcpy(ptr, rol, sizeof(RoleInfo));

                        PostSendMessage(msg->client, INFO_STORE_BUY, INFO_SUCCESS, 0, msg->msg->msgHead.msgSection, buff, size);

                        g_dbInfo.db_history.LogHistory(msg->msg->msgHead.msgSection, msg->msg->msgHead.msgOrder, rol->actID, INFO_TYPE_HISTORY, fld1, fld2, "0", fld4, "");
                        g_servInfo.billing.Record(msg->msg->msgHead.msgOrder, rol->actName, rol->chaName, msg->client->m_sock.GetIPAddress(), msg->msg->msgHead.msgExtend, storeName, comClass, price, 1, "", 0);
                        LG("NetMessage", "Answer => OrderID: %I64i. Trade Succeed."__LN, msg->msg->msgHead.msgOrder);
                        SAFE_DELETE_ARRAY(buff);

                        if(2 == g_dbInfo.db_store.CountNumber(msg->msg->msgHead.msgExtend, -1))
                        {
                            //  ��Ʒ�¼�
                            byte* buff = 0;
                            int clssize = g_dbInfo.db_class.GetBufferSize();
                            int stsize = g_dbInfo.db_store.GetBufferSize();
                            int size =  clssize + stsize;

                            if(size)
                            {
                                buff = new byte[size];
                                g_dbInfo.db_class.GetBuffer(buff, clssize);
                                g_dbInfo.db_store.GetBuffer((buff + clssize), stsize);
                            }

                            int ext = (g_dbInfo.db_class.m_size << 16);
                            ext = (ext | (g_dbInfo.db_store.m_size & 0x0000FFFF));
                            BroadcastMessage(INFO_REQUEST_STORE, 2, ext, buff, size);
                            SAFE_DELETE_ARRAY(buff);
                        }
                    }
                }
            }
        }  break;

    case INFO_EXCHANGE_MONEY:
        {
            RoleInfo* rol = new RoleInfo;
            memcpy(rol, (RoleInfo*)msg->msg->msgBody, sizeof(RoleInfo));

            pBilTask money = new BilTask;
            money->section = msg->msg->msgHead.msgSection;
            money->body = rol;
            money->orderID = msg->msg->msgHead.msgOrder;
            money->extend = msg->msg->msgHead.msgExtend;
            money->msgID = INFO_EXCHANGE_MONEY;
            money->eventID = TRADE_EVENT;
            money->sock = msg->client;

            LG("NetMessage", "Request => MSG: %li, OrderID: %I64i, Section: %li, Client: %s;%i Request Exchange Money: %li."__LN, msg->msg->msgHead.msgID, msg->msg->msgHead.msgOrder, msg->msg->msgHead.msgSection, msg->client->m_sock.GetIPAddress(), msg->client->m_sock.GetPort(), msg->msg->msgHead.msgExtend);

            if(money->extend >= 0)
            {
                int ret = 0;
                ret = g_servInfo.billing.Trade(msg->msg->msgHead.msgOrder, rol->actName, rol->chaName, msg->client->m_sock.GetIPAddress(), msg->msg->msgHead.msgExtend * (-1), g_servInfo.serv_rate, "", "");
                if(ret)
                {
                    g_servInfo.billing.PushTask(ret, money);
                }
                else
                {
                    //  ʧ��
                    char fld1[128] = {0};
                    char fld2[128] = {0};
                    //char fld3[128] = {0};
                    char fld4[256] = {0};
                    //char fld5[256] = {0};
                    sprintf(fld1, "%li", msg->msg->msgHead.msgExtend);
                    sprintf(fld2, "%i", g_servInfo.serv_rate);
                    sprintf(fld4, "%s, %li, %li", rol->actName, rol->rplMoney, rol->moBean);
                    g_dbInfo.db_history.LogHistory(msg->msg->msgHead.msgSection, msg->msg->msgHead.msgOrder, rol->actID, INFO_TYPE_EXCHANGE, fld1, fld2, "1", fld4, "");
                    LG("NetMessage", "Answer => OrderID: %I64i, Exchange Money Failt."__LN, msg->msg->msgHead.msgOrder);
                    PostSendMessage(msg->client, INFO_EXCHANGE_MONEY, INFO_FAILED, 0, msg->msg->msgHead.msgSection, (byte*)&msg->msg->msgHead.msgOrder, sizeof(long long));
                }
            }
            else
            {
                //  ʧ��
                char fld1[128] = {0};
                char fld2[128] = {0};
                //char fld3[128] = {0};
                char fld4[256] = {0};
                //char fld5[256] = {0};
                sprintf(fld1, "%li", msg->msg->msgHead.msgExtend);
                sprintf(fld2, "%i", g_servInfo.serv_rate);
                sprintf(fld4, "%s, %li, %li", rol->actName, rol->rplMoney, rol->moBean);
                g_dbInfo.db_history.LogHistory(msg->msg->msgHead.msgSection, msg->msg->msgHead.msgOrder, rol->actID, INFO_TYPE_EXCHANGE, fld1, fld2, "2", fld4, "");
                LG("NetMessage", "Answer => OrderID: %I64i, Exchange Money Failt.Exchange Money Failt.(Money: %li)"__LN, msg->msg->msgHead.msgOrder, money->extend);
                PostSendMessage(msg->client, INFO_EXCHANGE_MONEY, INFO_FAILED, 0, msg->msg->msgHead.msgSection, (byte*)&msg->msg->msgHead.msgOrder, sizeof(long long));
            }
        }  break;

    case INFO_REGISTER_VIP:
        {
            RoleInfo* rol = new RoleInfo;
            memcpy(rol, (RoleInfo*)msg->msg->msgBody, sizeof(RoleInfo));

            pBilTask vip = new BilTask;
            vip->section = msg->msg->msgHead.msgSection;
            vip->body = rol;
            vip->orderID = msg->msg->msgHead.msgOrder;
            vip->msgID = INFO_REGISTER_VIP;
            vip->eventID = TRADE_VIP_EVENT;
            vip->extend = msg->msg->msgHead.msgExtend;
            vip->sock = msg->client;

            int vipID = HIWORD(msg->msg->msgHead.msgExtend);
            int vipMonth = LOWORD(msg->msg->msgHead.msgExtend);

            LG("NetMessage", "Request => MSG: %li, OrderID: %I64i, Section: %li, Client: %s;%i Request Register VIP, VIPID: %i, Buy Month: %i."__LN, msg->msg->msgHead.msgID, msg->msg->msgHead.msgOrder, msg->msg->msgHead.msgSection, msg->client->m_sock.GetIPAddress(), msg->client->m_sock.GetPort(), vipID, vipMonth);

            long credit = g_dbInfo.db_vip.GetVIPCredit(vipID);
            if(credit >= 0)
            {
                int ret = 0;
                ret = g_servInfo.billing.RegisterVIP(msg->msg->msgHead.msgOrder, rol->actName, vipMonth, credit * (-1), vipID, msg->client->m_sock.GetIPAddress(), "", "");
                if(ret)
                {
                    g_servInfo.billing.PushTask(ret, vip);
                }
                else
                {
                    //  ʧ��
                    char fld1[128] = {0};
                    char fld2[128] = {0};
                    //char fld3[128] = {0};
                    char fld4[256] = {0};
                    //char fld5[256] = {0};
                    sprintf(fld1, "%li", msg->msg->msgHead.msgExtend);
                    sprintf(fld2, "%i", g_servInfo.serv_rate);
                    sprintf(fld4, "%s, %li, %li", rol->actName, rol->rplMoney, rol->moBean);
                    g_dbInfo.db_history.LogHistory(msg->msg->msgHead.msgSection, msg->msg->msgHead.msgOrder, rol->actID, INFO_TYPE_VIP, fld1, fld2, "1", fld4, "");
                    LG("NetMessage", "Answer => OrderID: %I64i, Register VIP Failt."__LN, msg->msg->msgHead.msgOrder);
                    PostSendMessage(msg->client, INFO_REGISTER_VIP, INFO_FAILED, 0, msg->msg->msgHead.msgSection, (byte*)&msg->msg->msgHead.msgOrder, sizeof(long long));
                }
            }
            else
            {
                //  ʧ��
                char fld1[128] = {0};
                char fld2[128] = {0};
                //char fld3[128] = {0};
                char fld4[256] = {0};
                //char fld5[256] = {0};
                sprintf(fld1, "%li", msg->msg->msgHead.msgExtend);
                sprintf(fld2, "%i", g_servInfo.serv_rate);
                sprintf(fld4, "%s, %li, %li", rol->actName, rol->rplMoney, rol->moBean);
                g_dbInfo.db_history.LogHistory(msg->msg->msgHead.msgSection, msg->msg->msgHead.msgOrder, rol->actID, INFO_TYPE_VIP, fld1, fld2, "2", fld4, "");
                LG("NetMessage", "Answer => OrderID: %I64i, Register VIP Failt.(Get VIP Credit Failt.(VIPID: %i))"__LN, msg->msg->msgHead.msgOrder, vipID);
                PostSendMessage(msg->client, INFO_REGISTER_VIP, INFO_FAILED, 0, msg->msg->msgHead.msgSection, (byte*)&msg->msg->msgHead.msgOrder, sizeof(long long));
            }

        }  break;

    case INFO_REQUEST_HISTORY:
        {
            LG("NetMessage", "Request => MSG: %li, OrderID: %I64i, Section: %li, Client: %s;%i Request History."__LN, msg->msg->msgHead.msgID, msg->msg->msgHead.msgOrder, msg->msg->msgHead.msgSection, msg->client->m_sock.GetIPAddress(), msg->client->m_sock.GetPort());
            int hisSize = sizeof(HistoryInfo) * msg->msg->msgHead.msgExtend;
            int size = hisSize + sizeof(long long);

            byte* buff = 0;
            buff = new byte[size];
            byte* ptr = buff;
            memcpy(ptr, &msg->msg->msgHead.msgOrder, sizeof(long long));
            ptr += sizeof(long long);
            RoleInfo* rol = (RoleInfo*)msg->msg->msgBody;

            if(g_dbInfo.db_history.GetBuffer(ptr, hisSize, INFO_TYPE_HISTORY, msg->msg->msgHead.msgSection, msg->msg->msgHead.msgExtend, rol->actID))
            {
                LG("NetMessage", "Answer => OrderID: %I64i, Get History Success.)"__LN, msg->msg->msgHead.msgOrder);
                PostSendMessage(msg->client, INFO_REQUEST_HISTORY, INFO_SUCCESS, 0, msg->msg->msgHead.msgSection, buff, size);
            }
            else
            {
                LG("NetMessage", "Answer => OrderID: %I64i, Get History Failed.)"__LN, msg->msg->msgHead.msgOrder);
                PostSendMessage(msg->client, INFO_REQUEST_HISTORY, INFO_FAILED, 0, msg->msg->msgHead.msgSection, (byte*)&msg->msg->msgHead.msgOrder, sizeof(long long));
            }
            SAFE_DELETE_ARRAY(buff);
        }  break;

    default:
        {
            LG("NetMessage", "Request => MSG: %li, OrderID: %I64i, Section: %li, Client: %s;%i Unknown Request."__LN, msg->msg->msgHead.msgID, msg->msg->msgHead.msgOrder, msg->msg->msgHead.msgSection, msg->client->m_sock.GetIPAddress(), msg->client->m_sock.GetPort());
            PostSendMessage(msg->client, INFO_EXCEPTION_SERVICE, INFO_FAILED, 0, msg->msg->msgHead.msgSection, 0, 0);
        }  break;
    }
    FreeNetMessage(msg->msg);
    SAFE_DELETE(msg);
__END_TRY
}


void OnMailMessage(pInfoMessage msg)
{
__BEGIN_TRY
    switch(msg->msg->msgHead.msgID)
    {
    case INFO_SND_GM_MAIL:
        {
            LG("NetMessage", "Request => MSG: %li, OrderID: %I64i, Section: %li, Client: %s;%i Send Mail."__LN, msg->msg->msgHead.msgID, msg->msg->msgHead.msgOrder, msg->msg->msgHead.msgSection, msg->client->m_sock.GetIPAddress(), msg->client->m_sock.GetPort());
            MailInfo* mail = (MailInfo*)msg->msg->msgBody;

            long id = g_dbInfo.db_mail.AddMail(mail, msg->msg->msgHead.msgSection);

            if(id)
            {
                LG("NetMessage", "Answer => OrderID: %I64i, Send Mail Success.ID: %li"__LN, msg->msg->msgHead.msgOrder, id);
                PostSendMessage(msg->client, INFO_SND_GM_MAIL, INFO_SUCCESS, id, msg->msg->msgHead.msgSection, (byte*)&msg->msg->msgHead.msgOrder, sizeof(long long));
            }
            else
            {
                LG("NetMessage", "Answer => OrderID: %I64i, Send Mail Failed."__LN, msg->msg->msgHead.msgOrder);
                PostSendMessage(msg->client, INFO_SND_GM_MAIL, INFO_FAILED, 0, msg->msg->msgHead.msgSection, (byte*)&msg->msg->msgHead.msgOrder, sizeof(long long));
            }
        }  break;

    case INFO_RCV_GM_MAIL:
        {
            LG("NetMessage", "Request => MSG: %li, OrderID: %I64i, Section: %li, Client: %s;%i Recv GM Reply"__LN, msg->msg->msgHead.msgID, msg->msg->msgHead.msgOrder, msg->msg->msgHead.msgSection, msg->client->m_sock.GetIPAddress(), msg->client->m_sock.GetPort());

            int size = sizeof(MailInfo) + sizeof(long long);
            byte* buff = new byte[size];

            RoleInfo* rol = (RoleInfo*)msg->msg->msgBody;
            MailInfo mail = {0};

            if(g_dbInfo.db_mail.ReadReply(&mail, rol))
            {
                byte* ptr = buff;
                memcpy(ptr, &msg->msg->msgHead.msgOrder, sizeof(long long));
                ptr += sizeof(long long);
                memcpy(ptr, &mail, sizeof(MailInfo));

                LG("NetMessage", "Answer => OrderID: %I64i, Recv GM Reply Success."__LN, msg->msg->msgHead.msgOrder);
                PostSendMessage(msg->client, INFO_RCV_GM_MAIL, INFO_SUCCESS, 0, msg->msg->msgHead.msgSection, buff, size);
            }
            else
            {
                LG("NetMessage", "Answer => OrderID: %I64i, Recv GM Reply Failed."__LN, msg->msg->msgHead.msgOrder);
                PostSendMessage(msg->client, INFO_RCV_GM_MAIL, INFO_FAILED, 0, msg->msg->msgHead.msgSection, (byte*)&msg->msg->msgHead.msgOrder, sizeof(long long));
            }
            SAFE_DELETE_ARRAY(buff);
        }  break;

    default:
        {
            LG("NetMessage", "Request => MSG: %li, OrderID: %I64i, Section: %li, Client: %s;%i Unknown Mail Request."__LN, msg->msg->msgHead.msgID, msg->msg->msgHead.msgOrder, msg->msg->msgHead.msgSection, msg->client->m_sock.GetIPAddress(), msg->client->m_sock.GetPort());
            PostSendMessage(msg->client, INFO_EXCEPTION_SERVICE, INFO_FAILED, 0, msg->msg->msgHead.msgSection, 0, 0);
        }  break;
    }
    FreeNetMessage(msg->msg);
    SAFE_DELETE(msg);
__END_TRY
}


