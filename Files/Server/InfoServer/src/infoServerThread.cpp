

#include "socket2.h"
#include "infoServerThread.h"
#include "socketlist.h"
#include "iocp.h"
#include "logqueue.h"
#include "config.h"
#include "ado.h"
#include "infoserver.h"
#include "translateprotocol.h"
#include "ItemFunc.h"


extern char g_logfile[260];

SocketList  g_socklist;
IOCP        g_iocp;

extern jConnection  g_conn;
extern CFG  g_cfg;
extern LogBuffer    g_logbuff;
extern LogQueue     g_logqueue;
extern int          g_server_type;
ulong       g_count;


AcceptThread::AcceptThread()
{
}


AcceptThread::~AcceptThread()
{
}


uint AcceptThread::Run()
{
    LG("System", "Server Accept Thread %li is Begin...\r\n", GetCurrentThreadId());
    Socket2* servSock = (Socket2*)m_param;
    ServerSocket* cli;

    for(;;)
    {
        try
        {
            cli = 0;
            cli = new ServerSocket; //  �Ͽ�����ʱ�ͷ�
            servSock->Accept(cli->m_sock);
            cli->m_check = false;
            g_iocp.Post(cli->m_sock, (ULONG_PTR)cli);   //  ������
            LG("System", "Client Connect: %s:%i...\r\n", cli->m_sock.GetIPAddress(), cli->m_sock.GetPort());

            if(INFO_SERVER == g_server_type)
            {
                if(ItemInfo::Instance()->CheckIP(cli->m_sock.GetIPAddress()))   //  IP��֤����
                {
                    g_socklist.Add(cli);
                    cli->PostRecv();
                }
                else    //  ip��֤ʧ��
                {
                    char buff[32] = {0};
                    cli->m_check = false;
                    strcpy(buff, "10001 Not_Allowed_IP\n\n");
                    cli->PostSend(buff);
                }
            }
            else
            {
                g_socklist.Add(cli);
                cli->PostRecv();
            }
        }
        catch(...)
        {
            LG("System", "=====> Accept Thread %li Exception...\r\n", GetCurrentThreadId());
        }
    }

    //_endthreadex(0);

    LG("System", "Server Accept Thread %li is End...\r\n", GetCurrentThreadId());
    return 0;
}




//  ��¼��־
void RecordLog(const char* msgbuf, ServerSocket* ss)
{
    char*               ptr_d;
    char*               ptr_s;
    pLogMessage         plog;

    ptr_s = (char*)msgbuf;

    //  ճ������
    if(strcmp(ss->m_temp, "\0"))
    {
        ptr_d = strchr(ptr_s, '\1');
        plog = g_logbuff.GetBuffer();

        size_t len = strlen(ss->m_temp);

        memcpy(plog->MsgBuffer, ss->m_temp, len);
        memcpy(plog->MsgBuffer + len, ptr_s, (size_t)(ptr_d - ptr_s));

        g_logqueue.Push(plog);

        ++ss->m_packet;
        ptr_s = ptr_d + 1;

        memset(ss->m_temp, 0, sizeof(ss->m_temp));
    }

    for(;;)
    {
        ptr_d = strchr(ptr_s, '\1');

        if(ptr_d)   //  �ҵ�����SQL���
        {
            plog = g_logbuff.GetBuffer();
            memcpy(plog->MsgBuffer, ptr_s, (size_t)(ptr_d - ptr_s));
            g_logqueue.Push(plog);
            ++ss->m_packet;
            
            ptr_s = ptr_d + 1;
        }
        else
        {
            //  ճ������
            if(0 != strlen(ptr_s))
            {
                memset(ss->m_temp, 0, sizeof(ss->m_temp));
                memcpy(ss->m_temp, ptr_s, strlen(ptr_s));
            }
            break;
        }
    }
}



//  ������ϢЭ��
bool transact(pLogMessage plm, ServerSocket* ss)
{
    try
    {
        LG(g_logfile, "Begin Transact Message...\r\n");
        char buff[256] = {0};
        pAgentMsg   pAM;
        TranslateProtocol tp;
        pAM = tp.PeekMSG(plm->MsgBuffer);

        if(!pAM)
        {
            strcpy(buff, "99999 Wrong_Protocol\n\n");
            ss->PostSend(buff);
            LG(g_logfile, "End Transact Message...\r\n");
            return false;
        }

        if((!ss->m_check) && (10000 != pAM->msgID))
        {
            strcpy(buff, "10001 Uncheck_Status\n\n");
            ss->PostSend(buff);
            SAFE_DELETE(pAM);
            LG(g_logfile, "End Transact Message...\r\n");
            return false;
        }
        
        if((strlen(pAM->timeStamp) < 1) && (10000 != pAM->msgID))
        {
            strcpy(buff, "99999 Wrong_TimeStamp\n\n");
            ss->PostSend(buff);
            SAFE_DELETE(pAM);
            LG(g_logfile, "End Transact Message...\r\n");
            return false;
        }

        if(1 == pAM->state)     //   �Ѵ�������
        {
            ss->PostSend(pAM->field[FIELD1]);
            SAFE_DELETE(pAM);
            LG(g_logfile, "End Transact Message...\r\n");
            return true;
        }

        static ItemInfo* itemInfo = ItemInfo::Instance();

        if((!itemInfo->CheckSection(pAM->section)) && (10000 != pAM->msgID) && (11100 != pAM->msgID) && (11200 != pAM->msgID) && (11400 != pAM->msgID) && (11500 != pAM->msgID))
        {
            strcpy(buff, "99999 Wrong_Section\n\n");
            ss->PostSend(buff);
            SAFE_DELETE(pAM);
            LG(g_logfile, "End Transact Message...\r\n");
            return false;
        }

		// Modify by lark.li 20080825 begin
        //int ext = 0;
		int from = 0;
		int type = 0;
		// End

        switch(pAM->msgID)
        {
		/*
		��֤������
		10001 [��������]\n\n
		10010 [�ɹ���Ϣ]\n\n
		*/
        case 10000: //  ��֤������
            {
                if(!strcmp(INFO_KEY, pAM->field[FIELD1]))   //  ��֤��Կ //�ſ���Կ�ж� 2007-11-27 update by wky
                {
                    ss->m_check = true;
                    strcpy(buff, "10010 Success\n\n");
                    ss->PostSend(buff);
                }
                else    //  ��Կ��֤ʧ��
                {
                    ss->m_check = false;
                    strcpy(buff, "10001 Wrong_Passport\n\n");
                    ss->PostSend(buff);
                }
            }  break;

        /* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */
        case 11000: //  ��ȡ��ɫ�б�
            {
                char retMsg[512] = {0};
                if(pAM->section >= 0)
                {
                    if(strcmp(pAM->field[FIELD1], ""))
                    {
                        //long actID = itemInfo->GetActID(pAM->field[FIELD1]);    //  ͨ���û��������ʻ�ID

                        //if(-1 != actID)
                        //{
                        //    memset(buff, 0, 128);
                        //    long num = 0;

                        //    //  ͨ����ɫID�б��ȡ��ɫ�����б�
                        //    if(itemInfo->GetChaNameList(pAM->section, buff, actID, num))
                        //    {
                        //        if(num)
                        //        {
                        //            sprintf(retMsg, "11010 %s %li %s\n\n", pAM->timeStamp, num, buff);
                        //        }
                        //        else
                        //        {
                        //            sprintf(retMsg, "11001 %s Character_No_Found\n\n", pAM->timeStamp);
                        //        }
                        //    }
                        //    else
                        //    {
                        //        sprintf(retMsg, "11001 %s Character_No_Found\n\n", pAM->timeStamp);
                        //    }
                        //}
                        //else
                        //{
                        //    sprintf(retMsg, "11001 %s Character_No_Found\n\n", pAM->timeStamp);
                        //}

                        char chaList[128] = {0};
                        itemInfo->GetChaIDList(pAM->section, chaList, pAM->field[FIELD1]);

                        if(strlen(chaList))
                        {
                            memset(buff, 0, sizeof(buff));
                            long num = 0;

                            if(itemInfo->GetChaNameList(pAM->section, buff, chaList, num))
                            {
                                if(num)
                                {
                                    sprintf(retMsg, "11010 %s %li %s\n\n", pAM->timeStamp, num, buff);
                                }
                                else
                                {
                                    sprintf(retMsg, "11001 %s Character_No_Found\n\n", pAM->timeStamp);
                                }
                            }
                            else
                            {
                                sprintf(retMsg, "11001 %s Character_No_Found\n\n", pAM->timeStamp);
                            }
                        }
                        else
                        {
                            sprintf(retMsg, "11001 %s Character_No_Found\n\n", pAM->timeStamp);
                        }
                    }
                    else
                    {
                        sprintf(retMsg, "11001 %s Account_No_Found\n\n", pAM->timeStamp);
                    }
                }
                else
                {
                    sprintf(retMsg, "11001 %s Wrong_Section\n\n", pAM->timeStamp);
                }
                ss->PostSend(retMsg);
            }  break;

        /* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */
        case 11100: //  �ʺż���
            {
                char retMsg[128] = {0};
                int ret = itemInfo->ActiveAccount(pAM->field[FIELD1], pAM->field[FIELD2]);

                switch(ret)
                {
                case 0:
                    {
                        sprintf(retMsg, "11110 %s Active_Account_Succeed\n\n", pAM->timeStamp);
                    }  break;
                case 1:
                    {
                        sprintf(retMsg, "11101 %s Account_Already_Exist\n\n", pAM->timeStamp);
                    }  break;
                case 2:
                default:
                    {
                        sprintf(retMsg, "11101 %s Active_Account_Failed\n\n", pAM->timeStamp);
                    }  break;
                }
                ss->PostSend(retMsg);
            }  break;

        /* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */
        case 11200: //  �ʺŷ�ͣ
            {
				// Modify by lark.li 20080822 begin
                //ext = 1;
				type = 1;
				// End
            }
        case 11400: //  �ʺŽ��
            {
				// Modify by lark.li 20080825 begin
				from = atoi(pAM->field[FIELD2]);
                char retMsg[128] = {0};
				int ret = itemInfo->BanAccount(pAM->field[FIELD1], from, type);

				switch(ret)
				{
				case 1:
					sprintf(retMsg, "11210 %s Official Ban Account Succeed\n\n", pAM->timeStamp);
					break;
				case 2:
					sprintf(retMsg, "11410 %s Official Unban_Account Succeed\n\n", pAM->timeStamp);
					break;
				case 3:
					sprintf(retMsg, "11210 %s Person Ban Account Succeed\n\n", pAM->timeStamp);
					break;
				case 4:
					sprintf(retMsg, "11410 %s Person Unban_Account Succeed\n\n", pAM->timeStamp);
					break;
				case -1:
					sprintf(retMsg, "11201 %s Official Ban Account Failed,Character_No_Found\n\n", pAM->timeStamp);
					break;
				case -2:
					sprintf(retMsg, "11401 %s Official Unban_Account Failed,Character_No_Found\n\n", pAM->timeStamp);
					break;
				case -3:
					sprintf(retMsg, "11201 %s Person Ban Account Failed,Character_No_Found\n\n", pAM->timeStamp);
					break;
				case -4:
					sprintf(retMsg, "11401 %s Person Unban_Account Failed,Character_No_Found\n\n", pAM->timeStamp);
					break;
				}
                //char retMsg[128] = {0};
                //if(itemInfo->BanAccount(pAM->field[FIELD1], ext))
                //{
                //    if(ext)
                //    {
                //        sprintf(retMsg, "11210 %s Ban Account Succeed\n\n", pAM->timeStamp);
                //    }
                //    else
                //    {
                //        sprintf(retMsg, "11410 %s Unban_Account_Succeed\n\n", pAM->timeStamp);
                //    }
                //}
                //else
                //{
                //    if(ext)
                //    {
                //        sprintf(retMsg, "11201 %s Ban_Account_Failed,Character_No_Found\n\n", pAM->timeStamp);
                //    }
                //    else
                //    {
                //        sprintf(retMsg, "11401 %s Unban_Account_Failed,Character_No_Found\n\n", pAM->timeStamp);
                //    }
                //}
				// End
                ss->PostSend(retMsg);
            }  break;

        /* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */
        case 11300: //  ��������
            {
                char retMsg[128] = {0};
                sprintf(retMsg, "11310 %s %li\n\n", pAM->timeStamp, itemInfo->GetOnline(pAM->section));
                ss->PostSend(retMsg);
            }  break;

        /* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */
        case 11500: //  ��������
            {
                char retMsg[128] = {0};
                if(itemInfo->UpdatePasswd(pAM->field[FIELD1], pAM->field[FIELD2], pAM->field[FIELD3]))
                {
                    sprintf(retMsg, "11510 %s Update_Password_Succeed\n\n", pAM->timeStamp);
                }
                else
                {
                    sprintf(retMsg, "11501 %s Update_Password_Failed\n\n", pAM->timeStamp);
                }
                ss->PostSend(retMsg);
            }  break;

        /* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */
        case 11600: //  ��ɫ����
            {
                char retMsg[128] = {0};
                char temp[64] = {0};
                long chaID = atoi(pAM->field[FIELD1]);

                if(itemInfo->ChkActOffline(itemInfo->GetActID(itemInfo->GetActName(temp, pAM->section, chaID))))
                {
                    memset(temp, 0, 64);
                    itemInfo->GetChaName(pAM->section, temp, chaID);
                    long cnsize = (long)strlen(temp);
                    if(cnsize)
                    {
                        //if(strchr(temp, '@'))
                        //{
                            if(itemInfo->RenameCha(pAM->section, chaID, pAM->field[FIELD2]))
                            {
                                sprintf(retMsg, "11610 %s Character_Rename_Success\n\n", pAM->timeStamp);
                            }
                            else
                            {
                                sprintf(retMsg, "11601 %s Character_Name_Already_In_Use\n\n", pAM->timeStamp);
                            }
                        //}
                        //else
                        //{
                        //    sprintf(retMsg, "11602 %s Character_Cannot_Rename\n\n", pAM->timeStamp);
                        //}
                    }
                    else
                    {
                        sprintf(retMsg, "11601 %s Invalid_Character_Name_Or_Character_No_Found\n\n", pAM->timeStamp);
                    }
                }
                else
                {
                    sprintf(retMsg, "11603 %s Account_Is_Online\n\n", pAM->timeStamp);
                }
                ss->PostSend(retMsg);
            }  break;

		/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */
		case 11700:   //���ݡ���ɫ�����顰�ʺ�ID�� //add by wky
            {
                char retMsg[128] = {0};
                if(pAM->section >= 0)
                {
					char* chaName = pAM->field[FIELD1];    //��ȡ����ɫ����
					if(chaName)
       				{
						memset(buff, 0, 128);
						itemInfo->GetAccountFromChaName(pAM->section, buff, chaName);//�á���ɫ�����顰�ʻ�ID���͡��ʻ�����
						if(strlen(buff))
						{
							 sprintf(retMsg,"11710 %s %s\n\n", pAM->timeStamp, buff);//�ɹ������أ����û�ID���͡��û�����
						}
						else
						{
							sprintf(retMsg,"11701 %s AccountName_No_Found\n\n", pAM->timeStamp);
						}
                    }
					else
					{
						sprintf(retMsg,"11701 %s CharacterName_No_Found\n\n", pAM->timeStamp);
					}
               	}
				else
				{
				    sprintf(retMsg,"11701 %s Wrong_Section\n\n", pAM->timeStamp);
				}
				ss->PostSend(retMsg);
            }  break;

        /* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */
        case 12000: //  �������
            {
                int kRet = 0;
                char retMsg[128] = {0};
                char* ptr = pAM->field[FIELD1];
                char temp[64] = {0};

                if(pAM->section >= 0)    //  С��ID
                {
                    if(tp.IsNumber(ptr))   //  ��ɫID
                    {
                        long chaID = atoi(ptr);
                        int num = atoi(ptr + 64);    //  ���߸���

                        if(num > 0)
                        {
                            if(itemInfo->ChkActOffline(itemInfo->GetActID(itemInfo->GetActName(temp, pAM->section, chaID)))) //  ����ɫ�Ƿ�����
                            {
                                CKitbag ktbag;
                                if(itemInfo->GetChaItem(pAM->section, ktbag, chaID))     //  ��ȡ��������
                                {
                                    if((ktbag.GetCapacity() - ktbag.GetUseGridNum()) >= num)    //  ��ⱳ������
                                    {
                                        int cir = num;
                                        if(cir < 2)
                                        {
                                            cir = 2;    //  Ϊ1ʱ���и��ڴ�Խ�������ʾ��ԭ����...
                                        }
                                        SItemGrid* igPtr = new SItemGrid[cir];
                                        if(0 == (cir % 2))
                                        {
                                            cir /= 2;
                                        }
                                        else
                                        {
                                            cir /= 2;
                                            ++cir;
                                        }
                                        int j, posGrid = 0;
                                        short pos = -1;
                                        bool ret = true;
                                        for(int i = 0; i < cir; i++)
                                        {
                                            ptr = pAM->field[i + 1];
                                            for(j = 0; j < 2; j++)
                                            {
                                                if(posGrid >= num)  //  ����Ѿ�������Э��ָ�����߸���
                                                {
                                                    break;
                                                }
                                                if(itemInfo->String2ItemGrid(&igPtr[posGrid], ptr))     //  ת��������Ԫ��
                                                {
                                                    pos = -1;
                                                    LG(g_logfile, "Begin Push Kitbag...\r\n");
                                                    LG(g_logfile, "ItemID: %i, ItemNumber: %i, ItemHoles: %i...\r\n", igPtr[posGrid].sID, igPtr[posGrid].sNum, (igPtr[posGrid].GetForgeParam() / 1000000000));

                                                    kRet = ktbag.Push(&igPtr[posGrid], pos);
                                                    if(enumKBACT_SUCCESS != kRet)    //  ѹ�뱳��
                                                    {
                                                        if(enumKBACT_ERROR_LOCK == kRet)    //  �������������
                                                        {
                                                            LG(g_logfile, "Kitbag Locked, No.%i, Ret: %i...\r\n", posGrid + 1, kRet);
                                                            ktbag.UnLock(); //  ��������
                                                            kRet = ktbag.Push(&igPtr[posGrid], pos);    //  ����ѹ�뱳��һ��
                                                            if(enumKBACT_SUCCESS != kRet)
                                                            {
                                                                LG(g_logfile, "Retry Push Kitbag Failt No.%i, Ret:%i...\r\n", posGrid + 1, kRet);
                                                                ret = false;
                                                            }
                                                        }
                                                        else
                                                        {
                                                            LG(g_logfile, "Push Kitbag Failt No.%i, Ret:%i...\r\n", posGrid + 1, kRet);
                                                            ret = false;
                                                        }
                                                        break;
                                                    }
                                                    LG(g_logfile, "End Push Kitbag...\r\n");
                                                }
                                                else
                                                {
                                                    LG(g_logfile, "String To ItemGrid Failt No.%i\r\n", posGrid + 1);
                                                    ret = false;
                                                    break;
                                                }
                                                ptr += 64;
                                                ++posGrid;
                                            }
                                            if(!ret)
                                            {
                                                break;
                                            }
                                        }
                                        if(ret)
                                        {
                                            char txt[8192] = {0};
                                            if (KitbagData2String(&ktbag, txt, 8192) && itemInfo->SaveKitBag(pAM->section, txt, chaID))
                                            {
                                                sprintf(retMsg, "12010 %s Add_Item_Succeed\n\n", pAM->timeStamp);
                                            }
                                            else
                                            {
                                                sprintf(retMsg, "12004 %s Save_Kitbag_Failed\n\n", pAM->timeStamp);
                                            }
                                        }
                                        else
                                        {
                                            if(enumKBACT_ERROR_FULL == kRet)
                                            {
                                                sprintf(retMsg, "12005 %s Kitbag_Full\n\n", pAM->timeStamp);
                                            }
                                            else
                                            {
                                                sprintf(retMsg, "12005 %s Import_Kitbag_Failed\n\n", pAM->timeStamp);
                                            }
                                        }
                                        SAFE_DELETE_ARRAY(igPtr);
                                    }
                                    else
                                    {
                                        sprintf(retMsg, "12005 %s Kitbag_Full\n\n", pAM->timeStamp);
                                    }
                                }
                                else
                                {
                                    sprintf(retMsg, "12005 %s Load_Kitbag_Failed\n\n", pAM->timeStamp);
                                }
                            }
                            else
                            {
                                sprintf(retMsg, "12002 %s Account_Is_Online_Or_Account_No_Found\n\n", pAM->timeStamp);
                            }
                        }
                        else
                        {
                            sprintf(retMsg, "12003 %s Wrong_Item_Number\n\n", pAM->timeStamp);
                        }
                    }
                    else
                    {
                        sprintf(retMsg, "12001 %s Wrong_Character\n\n", pAM->timeStamp);
                    }
                }
                else
                {
                    sprintf(retMsg, "12004 %s Wrong_Section\n\n", pAM->timeStamp);
                }
                itemInfo->UpdateTradeRecord(pAM->timeStamp, retMsg);    //  ���µ��߽��׼�¼
                ss->PostSend(retMsg);
            }  break;

        /* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */
        case 12100: //  ���뺣����
            {
                char retMsg[128] = {0};
                char temp[64] = {0};
                if(tp.IsNumber(pAM->field[FIELD1]))
                {
                    long chaID = atol(pAM->field[FIELD1]);
                    if(tp.IsNumber(pAM->field[FIELD2]))
                    {
                        long coin = atol(pAM->field[FIELD2]);
                        if(coin > 0)
                        {
                            if(itemInfo->ChkActOffline(itemInfo->GetActID(itemInfo->GetActName(temp, pAM->section, chaID))))
                            {
                                if(itemInfo->GainCoin(pAM->section, chaID, coin))
                                {
                                    sprintf(retMsg, "12110 %s Add_Coin_Succeed\n\n", pAM->timeStamp);
                                }
                                else
                                {
                                    sprintf(retMsg, "12103 %s Over_Coin_Bound\n\n", pAM->timeStamp);
                                }
                            }
                            else
                            {
                                sprintf(retMsg, "12101 %s Account_Is_Online_Or_Account_No_Found\n\n", pAM->timeStamp);
                            }
                        }
                        else
                        {
                            sprintf(retMsg, "12102 %s Wrong_Coin_Number\n\n", pAM->timeStamp);
                        }
                    }
                    else
                    {
                        sprintf(retMsg, "12102 %s Wrong_Coin_Parameter\n\n", pAM->timeStamp);
                    }
                }
                else
                {
                    sprintf(retMsg, "12101 %s Wrong_Character\n\n", pAM->timeStamp);
                }
                itemInfo->UpdateTradeRecord(pAM->timeStamp, retMsg);    //  ���º����ҽ��׼�¼
                ss->PostSend(retMsg);
            }  break;

        /* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */
        case 12200: //  �۳�������
            {
                char retMsg[128] = {0};
                char temp[64] = {0};
                if(tp.IsNumber(pAM->field[FIELD1]))
                {
                    long chaID = atol(pAM->field[FIELD1]);
                    if(tp.IsNumber(pAM->field[FIELD2]))
                    {
                        long coin = atol(pAM->field[FIELD2]);
                        if(coin > 0)
                        {
                            if(itemInfo->ChkActOffline(itemInfo->GetActID(itemInfo->GetActName(temp, pAM->section, chaID))))
                            {
                                if(itemInfo->GainCoin(pAM->section, chaID, (-1 * coin)))
                                {
                                    sprintf(retMsg, "12210 %s Sub_Coin_Succeed\n\n", pAM->timeStamp);
                                }
                                else
                                {
                                    sprintf(retMsg, "12203 %s Over_Coin_Bound\n\n", pAM->timeStamp);
                                }
                            }
                            else
                            {
                                sprintf(retMsg, "12201 %s Account_Is_Online_Or_Account_No_Found\n\n", pAM->timeStamp);
                            }
                        }
                        else
                        {
                            sprintf(retMsg, "12202 %s Wrong_Coin_Number\n\n", pAM->timeStamp);
                        }
                    }
                    else
                    {
                        sprintf(retMsg, "12202 %s Wrong_Coin_Parameter\n\n", pAM->timeStamp);
                    }
                }
                else
                {
                    sprintf(retMsg, "12201 %s Wrong_Character\n\n", pAM->timeStamp);
                }
                itemInfo->UpdateTradeRecord(pAM->timeStamp, retMsg);    //  ���º����ҽ��׼�¼
                ss->PostSend(retMsg);
            }  break;

        /* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */
        case 12300: //  ��ѯĳ����ɫ����������
            {
                char retMsg[128] = {0};
                long coin = itemInfo->QueryCoin(pAM->section, atol(pAM->field[FIELD1]));

                if(coin >= 0)
                {
                    sprintf(retMsg, "12310 %s %li\n\n", pAM->timeStamp, coin);
                }
                else
                {
                    sprintf(retMsg, "12301 %s Error_Query_Coin\n\n", pAM->timeStamp);
                }
                ss->PostSend(retMsg);
            }  break;

		/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */
        case 12400: //  ������ߣ���������ˮ�ţ� //add by wky
            {
				/*
				12400 [key] [Ψһ��ʶ��] [С��ID] [������ˮ��] [��Ʒ���] [��ɫID] [��Ϣ����] [[���߱��] [���߸���];]\n\n
				12401 [Ψһ��ʶ��] [��ɫ��Ŵ�������]\n\n
				12402 [Ψһ��ʶ��] [��ɫ��������״̬]\n\n
				12403 [Ψһ��ʶ��] [���߱�Ŵ�������]\n\n
				12404 [Ψһ��ʶ��] [������������]\n\n
				12405 [Ψһ��ʶ��] [��������]\n\n
				12410 [Ψһ��ʶ��] [�ɹ���Ϣ]\n\n
				*/
                int kRet = 0;
                char retMsg[128] = {0};
                char* ptr = pAM->field[FIELD3];	//ȡ����ɫID���������߸��������ɷ���Э��ʱ���õ�λ�þ�����
                char temp[64] = {0};

                if(pAM->section >= 0)    //  С��ID
                {
                    if(tp.IsNumber(ptr))   //  ��ɫID
                    {
                        long chaID = atoi(ptr);
                        int num = atoi(ptr + 64);    //  ���߸���

                        if(num > 0)
                        {
                            if(itemInfo->ChkActOffline(itemInfo->GetActID(itemInfo->GetActName(temp, pAM->section, chaID)))) //  ����ɫ�Ƿ�����
                            {
                                CKitbag ktbag;
                                if(itemInfo->GetChaItem(pAM->section, ktbag, chaID))     //  ��ȡ��������
                                {
                                    if((ktbag.GetCapacity() - ktbag.GetUseGridNum()) >= num)    //  ��ⱳ������
                                    {
                                        int cir = num;
                                        if(cir < 2)
                                        {
                                            cir = 2;    //  Ϊ1ʱ���и��ڴ�Խ�������ʾ��ԭ����...
                                        }
                                        SItemGrid* igPtr = new SItemGrid[cir];
                                        if(0 == (cir % 2))
                                        {
                                            cir /= 2;
                                        }
                                        else
                                        {
                                            cir /= 2;
                                            ++cir;
                                        }
                                        int j, posGrid = 0;
                                        short pos = -1;
                                        bool ret = true;
                                        for(int i = 0; i < cir; i++)
                                        {
                                            ptr = pAM->field[i + 3];
                                            for(j = 0; j < 2; j++)
                                            {
                                                if(posGrid >= num)  //  ����Ѿ�������Э��ָ�����߸���
                                                {
                                                    break;
                                                }
                                                if(itemInfo->String2ItemGrid2(&igPtr[posGrid], ptr))     //  ת��������Ԫ��
                                                {
                                                    pos = -1;
                                                    LG(g_logfile, "Begin Push Kitbag...\r\n");
                                                    LG(g_logfile, "ItemID: %i, ItemNumber: %i, ItemHoles: %i...\r\n", igPtr[posGrid].sID, igPtr[posGrid].sNum, (igPtr[posGrid].GetForgeParam() / 1000000000));

                                                    kRet = ktbag.Push(&igPtr[posGrid], pos);
                                                    if(enumKBACT_SUCCESS != kRet)    //  ѹ�뱳��
                                                    {
                                                        if(enumKBACT_ERROR_LOCK == kRet)    //  �������������
                                                        {
                                                            LG(g_logfile, "Kitbag Locked, No.%i, Ret: %i...\r\n", posGrid + 1, kRet);
                                                            ktbag.UnLock(); //  ��������
                                                            kRet = ktbag.Push(&igPtr[posGrid], pos);    //  ����ѹ�뱳��һ��
                                                            if(enumKBACT_SUCCESS != kRet)
                                                            {
                                                                LG(g_logfile, "Retry Push Kitbag Failt No.%i, Ret:%i...\r\n", posGrid + 1, kRet);
                                                                ret = false;
                                                            }
                                                        }
                                                        else
                                                        {
                                                            LG(g_logfile, "Push Kitbag Failt No.%i, Ret:%i...\r\n", posGrid + 1, kRet);
                                                            ret = false;
                                                        }
                                                        break;
                                                    }
                                                    LG(g_logfile, "End Push Kitbag...\r\n");
                                                }
                                                else
                                                {
                                                    LG(g_logfile, "String To ItemGrid Failt No.%i\r\n", posGrid + 1);
                                                    ret = false;
                                                    break;
                                                }
                                                ptr += 64;
                                                ++posGrid;
                                            }
                                            if(!ret)
                                            {
                                                break;
                                            }
                                        }
                                        if(ret)
                                        {
                                            char txt[8192] = {0};
                                            if (KitbagData2String(&ktbag, txt, 8192) && itemInfo->SaveKitBag(pAM->section, txt, chaID))
                                            {
                                                sprintf(retMsg, "12410 %s Add_Item_Succeed\n\n", pAM->timeStamp);
                                            }
                                            else
                                            {
                                                sprintf(retMsg, "12404 %s Save_Kitbag_Failed\n\n", pAM->timeStamp);
                                            }
                                        }
                                        else
                                        {
                                            if(enumKBACT_ERROR_FULL == kRet)
                                            {
                                                sprintf(retMsg, "12405 %s Kitbag_Full\n\n", pAM->timeStamp);
                                            }
                                            else
                                            {
                                                sprintf(retMsg, "12405 %s Import_Kitbag_Failed\n\n", pAM->timeStamp);
                                            }
                                        }
                                        SAFE_DELETE_ARRAY(igPtr);
                                    }
                                    else
                                    {
                                        sprintf(retMsg, "12405 %s Kitbag_Full\n\n", pAM->timeStamp);
                                    }
                                }
                                else
                                {
                                    sprintf(retMsg, "12405 %s Load_Kitbag_Failed\n\n", pAM->timeStamp);
                                }
                            }
                            else
                            {
                                sprintf(retMsg, "12402 %s Account_Is_Online_Or_Account_No_Found\n\n", pAM->timeStamp);
                            }
                        }
                        else
                        {
                            sprintf(retMsg, "12403 %s Wrong_Item_Number\n\n", pAM->timeStamp);
                        }
                    }
                    else
                    {
                        sprintf(retMsg, "12401 %s Wrong_Character\n\n", pAM->timeStamp);
                    }
                }
                else
                {
                    sprintf(retMsg, "12404 %s Wrong_Section\n\n", pAM->timeStamp);
                }
                itemInfo->UpdateTradeRecord(pAM->timeStamp, retMsg);    //  ���µ��߽��׼�¼
                ss->PostSend(retMsg);
            }  

			break;


        /* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */
        case 13000:		//ʹ�ö������������°��ʺ�(TOM�˻�ת��)
            {
                char retMsg[128] = {0};
                char info[128] = {0};
                int ret = itemInfo->TomAccount(info, pAM->section, pAM->field[FIELD1], pAM->field[FIELD2], pAM->field[FIELD3], pAM->field[FIELD4]);
                
                sprintf(retMsg, "%i %s %s\n\n", ret, pAM->timeStamp, info);

                ss->PostSend(retMsg);
            }  break;

		/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */
        case 13100:		//  ��ն������� //add by wky
            {
                char retMsg[128] = {0};
                bool ret = itemInfo->ClearSecondPassword(pAM->section, pAM->field[FIELD1]);
                if(ret)
				{
					sprintf(retMsg, "13110 %s Success_Clear_Second_Password:%s\n\n", pAM->timeStamp, pAM->field[FIELD1]);
				}
				else
				{
					sprintf(retMsg, "13101 %s Failed_Clear_Second_Password:%s\n\n", pAM->timeStamp, pAM->field[FIELD1]);
				}
                ss->PostSend(retMsg);
            }  break;

		/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */
        case 13200:		//  �ָ���ɫ //add by wky
            {
                char retMsg[128] = {0};
                bool ret = itemInfo->ResumeCharacter(pAM->section, pAM->field[FIELD1]);
                if(ret)
				{
					sprintf(retMsg, "13210 %s Success_Resume_Character:%s\n\n", pAM->timeStamp, pAM->field[FIELD1]);
				}
				else
				{
					sprintf(retMsg, "13201 %s Failed_Resume_Character:%s\n\n", pAM->timeStamp, pAM->field[FIELD1]);
				}
                ss->PostSend(retMsg);
            }  break;

		/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */
		case 14000:   //�ʻ���ģ����ѯ //add by wky
            {
                char retMsg[512] = {0};
				char buff[512] = {0};//2007.10.12 add by wky
                if(pAM->section >= 0)
                {
					char* actName = pAM->field[FIELD1];    //��ȡ���ʻ�����
					int page = atoi(pAM->field[FIELD2]);    //��ȡ��Ҫ��ѯ��ҳ�롱
					if(actName)
       				{
						if(page > 0)
						{
							memset(buff, 0, 512);
							itemInfo->GetAccountApproximately(pAM->section, buff, actName, page);//���ݡ��ʻ�����ģ����ѯ
							if(strlen(buff))
							{
								sprintf(retMsg,"14010 %s %s\n\n", pAM->timeStamp, buff);//�ɹ��������ʻ�������Ϣ
							}
							else
							{
								sprintf(retMsg,"14001 %s Account_Approximately_No_Found\n\n", pAM->timeStamp);
							}
						}
						else
						{
							sprintf(retMsg,"14001 %s AccountPage_No_Found\n\n", pAM->timeStamp);
						}
					}
					else
					{
						sprintf(retMsg,"14001 %s AccountName_No_Found\n\n", pAM->timeStamp);
					}
               	}
				else
				{
				    sprintf(retMsg,"14001 %s Wrong_Section\n\n", pAM->timeStamp);
				}
				ss->PostSend(retMsg);
            }  break;

		/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */
		case 14100:   //��ɫ��ģ����ѯ //add by wky
            {
                char retMsg[512] = {0};
				char buff[512] = {0};//2007.10.12 add by wky
                if(pAM->section >= 0)
                {
					char* chaName = pAM->field[FIELD1];    //��ȡ����ɫ����
					int page = atoi(pAM->field[FIELD2]);    //��ȡ��Ҫ��ѯ��ҳ�롱
					if(chaName)
       				{
						if(page > 0)
						{
							memset(buff, 0, 512);
							itemInfo->GetCharacterApproximately(pAM->section, buff, chaName, page);//���ݡ���ɫ����ģ����ѯ
							if(strlen(buff))
							{
								sprintf(retMsg,"14110 %s %s\n\n", pAM->timeStamp, buff);//�ɹ�����������ƥ��ġ���ɫ�����У���ѡ��ҳ
							}
							else
							{
								sprintf(retMsg,"14101 %s Character_Approximately_No_Found\n\n", pAM->timeStamp);
							}
						}
						else
						{
							sprintf(retMsg,"14101 %s CharacterPage_No_Found\n\n", pAM->timeStamp);
						}
                    }
					else
					{
						sprintf(retMsg,"14101 %s CharacterName_No_Found\n\n", pAM->timeStamp);
					}
               	}
				else
				{
				    sprintf(retMsg,"14101 %s Wrong_Section\n\n", pAM->timeStamp);
				}
				ss->PostSend(retMsg);
            }  break;

		/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */
		case 14200:   //�ʻ���Ϣ��ѯ���г�������Ϣ�� //add by wky
            {
                char retMsg[256] = {0};
                if(pAM->section >= 0)
                {
					char* actName = pAM->field[FIELD1];    //��ȡ���ʻ�����
					if(actName)
       				{
						memset(buff, 0, 256);
						itemInfo->GetAccount(pAM->section, buff, actName);//���ݡ��ʻ�������ѯ�ʻ�������Ϣ
						if(strlen(buff))
						{
							sprintf(retMsg,"14210 %s %s\n\n", pAM->timeStamp, buff);//�ɹ��������ʻ�������Ϣ
						}
						else
						{
							sprintf(retMsg,"14201 %s AccountInformation_No_Found\n\n", pAM->timeStamp);
						}
                    }
					else
					{
						sprintf(retMsg,"14201 %s AccountName_No_Found\n\n", pAM->timeStamp);
					}
               	}
				else
				{
				    sprintf(retMsg,"14201 %s Wrong_Section\n\n", pAM->timeStamp);
				}
				ss->PostSend(retMsg);
            }  break;

		/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */
		case 14300:   //��ɫ��Ϣ��ѯ���г�������Ϣ�� //add by wky
            {
                char retMsg[512] = {0};
				char buff[512] = {0};//2007.10.15 add by wky
                if(pAM->section >= 0)
                {
					char* chaID = pAM->field[FIELD1];    //��ȡ����ɫID��
					if(chaID)
       				{
						memset(buff, 0, 512);
						itemInfo->GetCharacter(pAM->section, buff, chaID);//���ݡ���ɫID����ѯ��ɫ������Ϣ
						if(strlen(buff))
						{
							sprintf(retMsg,"14310 %s %s\n\n", pAM->timeStamp, buff);//�ɹ������ؽ�ɫ������Ϣ
						}
						else
						{
							sprintf(retMsg,"14301 %s CharacterInformation_No_Found\n\n", pAM->timeStamp);
						}
                    }
					else
					{
						sprintf(retMsg,"14301 %s CharacterID_No_Found\n\n", pAM->timeStamp);
					}
               	}
				else
				{
				    sprintf(retMsg,"14301 %s Wrong_Section\n\n", pAM->timeStamp);
				}
				ss->PostSend(retMsg);
            }  break;

		/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */
		case 14400:   //���а� //add by wky
            {
                char retMsg[512] = {0};
				char buff[512] = {0};//2007.10.15 add by wky
                if(pAM->section >= 0)
                {
					int num = atoi(pAM->field[FIELD1]);    //��ȡ�����а�������
					if(num > 0 && num <= 20)
       				{
						memset(buff, 0, 512);
						itemInfo->GetSortedCharacters(pAM->section, buff, num, 'D');//�������򣬼���ȡ���а�ĵȼ�������ǰ����
						if(strlen(buff))
						{
							 sprintf(retMsg,"14410 %s %s\n\n", pAM->timeStamp, buff);//�ɹ������ؽ�ɫ�ȼ����������а�
						}
						else
						{
							sprintf(retMsg,"14401 %s SortCharacters_No_Found\n\n", pAM->timeStamp);
						}
                    }
					else
					{
						sprintf(retMsg,"14401 %s SortNumber_No_Found\n\n", pAM->timeStamp);
					}
               	}
				else
				{
				    sprintf(retMsg,"14401 %s Wrong_Section\n\n", pAM->timeStamp);
				}
				ss->PostSend(retMsg);
            }  break;

        /* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */
        default:
            {
                sprintf(buff, "99999 %s Unknown_Operation\n\n", pAM->timeStamp);
                ss->PostSend(buff);
            }  break;
        }

			SAFE_DELETE(pAM);

        LG(g_logfile, "End Transact Message...\r\n");
    }
    catch(...)
    {
        LG(g_logfile, "=====> Any Unknown Exception In Transact...\r\n");
        char buff[128] = {0};
        strcpy(buff, "99999 Any_Exception_T\n\n");
        ss->PostSend(buff);
        //MessageBox(0, "InfoServer Transact Message Exception", "Exception", MB_OK);
    }
    return true;
}



//  ���������
void AgentServer(const char* msgbuf, ServerSocket* ss)
{
    try
    {
        char*               ptr_d;
        char*               ptr_s;
        pLogMessage         plog;
        char                MsgBuf[BUFFER_SIZE] = {0};
        bool                ret;

        LG(g_logfile, "IP: %s, AgentServer Buffer: %s...\r\n", ss->m_sock.GetIPAddress(), msgbuf);

        strncpy(MsgBuf, msgbuf, BUFFER_SIZE);
        ptr_s = MsgBuf;

        //  ճ������
        if(strcmp(ss->m_temp, "\0"))
        {
            LG(g_logfile, "Begin Paste Packet...\r\n");
            LG(g_logfile, "Socket Temp: %s...\r\n", ss->m_temp);
            ptr_d = strstr(ptr_s, "\n\n");
            plog = g_logbuff.GetBuffer();

            size_t len = strlen(ss->m_temp);

            memcpy(plog->MsgBuffer, ss->m_temp, len);
            memcpy(plog->MsgBuffer + len, ptr_s, (size_t)(ptr_d - ptr_s));
            LG(g_logfile, "Message: %s...\r\n", plog->MsgBuffer);
            ret = transact(plog, ss); //  ����Э��
            g_logbuff.FreeBuffer(plog);

            ptr_s = ptr_d + 2;

            if(!ret && !ss->m_check)    //  ���������Ϣ����falseʱ�����ٴ��������Ϣ��
            {
                LG(g_logfile, "Error Transact Or UnCheck...\r\n");
                return;
            }

            memset(ss->m_temp, 0, sizeof(ss->m_temp));
            LG(g_logfile, "End Paste Packet...\r\n");
        }

        LG(g_logfile, "Begin Dispose Packet...\r\n");
        for(;;)
        {
            LG(g_logfile, "Begin Dispose Message...\r\n");
            ptr_d = strstr(ptr_s, "\n\n");

            if(ptr_d)   //  �ҵ�������Ϣ
            {
                plog = g_logbuff.GetBuffer();
                memcpy(plog->MsgBuffer, ptr_s, (size_t)(ptr_d - ptr_s));
                LG(g_logfile, "Message: %s...\r\n", plog->MsgBuffer);
                ret = transact(plog, ss); //  ����Э��
                g_logbuff.FreeBuffer(plog);

                ptr_s = ptr_d + 2;

                if(!ret && !ss->m_check)    //  ���������Ϣ����falseʱ�����ٴ��������Ϣ��
                {
                    LG(g_logfile, "Error Transact Or UnCheck...\r\n");
                    return;
                }
            }
            else
            {
                //  ճ������
                if(0 != strlen(ptr_s))
                {
                    memset(ss->m_temp, 0, sizeof(ss->m_temp));
                    memcpy(ss->m_temp, ptr_s, strlen(ptr_s));
                    LG(g_logfile, "Paste Packet: %s...\r\n", ss->m_temp);
                }
                LG(g_logfile, "Exit Dispose Message...\r\n");
                break;
            }
            LG(g_logfile, "End Dispose Message...\r\n");
        }
        LG(g_logfile, "End Dispose Packet...\r\n");
        ss->PostRecv();  //  ����Ͷ�ݽ���
    }
    catch(...)
    {
        LG(g_logfile, "=====> Agent Exception In AgentServer...\r\n");
        char buff[128] = {0};
        strcpy(buff, "99999 Any_Exception_AS\n\n");
        ss->PostSend(buff);
    }
}




IOCPWorkThread::IOCPWorkThread()
{
}


IOCPWorkThread::~IOCPWorkThread()
{
}


uint IOCPWorkThread::Run()
{
    LG("System", "Server Work Thread %li is Begin...\r\n", GetCurrentThreadId());
    DWORD               rsbyte;
    pPER_IO_DATA        pid;
    ServerSocket*       phd;
    bool ret;
    CoInitialize(NULL);

    for(;;)
    {
        try
        {
            pid = 0, phd = 0, rsbyte = 0; //  ��ʼ��
            ret = g_iocp.GetIOCPQueue(&rsbyte, (LPOVERLAPPED*)&pid, (PULONG_PTR)&phd);

            if(NULL == phd) //  δ֪����
            {
                continue;
            }

            if(0 == rsbyte || (!ret)) //  �Ͽ�����
            {
                LG("System", "Cilent Disconnect: %s:%i...\r\n", phd->m_sock.GetIPAddress(), phd->m_sock.GetPort());
                g_socklist.Remove(phd); //  �Ƴ���ʱ��ͬʱ����رպ��ͷ���Դ�Ĺ�����
                continue;
            }

            switch(pid->OperationType)
            {
            case RECV:
                {
                    switch(g_server_type)
                    {
                    case LOG_SERVER:
                        {
                            RecordLog(pid->Buffer, phd);
                            phd->PostRecv();  //  ����Ͷ�ݽ���
                        }  break;
                    case INFO_SERVER:
                        {
                            AgentServer(pid->Buffer, phd);
                        }  break;
                    default:
                        {
                        }  break;
                    }
                }  break;
            case SEND:
                {
                    if(INFO_SERVER == g_server_type)
                    {
                        if(!phd->m_check)
                        {
                            LG("System", "Client(%s:%i) is Unchecked, Client is kicked...\r\n", phd->m_sock.GetIPAddress(), phd->m_sock.GetPort());
                            g_socklist.Remove(phd);
                        }
                    }
                }  break;
            }
        }
        catch(...)
        {
            LG("System", "=====> Work Thread %li Exception...\r\n", GetCurrentThreadId());
        }

    }

    CoUninitialize();
    //_endthreadex(0);

    LG("System", "Server Work Thread %li is End...\r\n", GetCurrentThreadId());
    return 0;
}





DBThread::DBThread()
: m_exit(false)
{
}


DBThread::~DBThread()
{
}


uint DBThread::Run()
{
    if(INFO_SERVER == g_server_type)      //  ���߷���������Ҫ���߳�
    {
        return 0;
    }

    pLogMessage plog;
    g_count = 0;
    CoInitialize(NULL);

    for(;;)
    {
        try
        {
            if(!g_conn.IsConnect())
            {
                g_conn.Connect();
                Sleep(1);
                continue;
            }

            while(g_logqueue.Size())
            {
                plog = g_logqueue.Pop();
                g_conn.Execute(plog->MsgBuffer);
                g_logbuff.FreeBuffer(plog);
                ++g_count;
            }

            if(m_exit)
            {
                g_conn.Close();
                break;
            }
            Sleep(1);
        }
        catch(...)
        {
        }
    }

    CoUninitialize();
    GetServerInstance()->m_state = SERVER_STOPPED;  //  ���÷���Ϊֹͣ״̬

    return 0;
}



