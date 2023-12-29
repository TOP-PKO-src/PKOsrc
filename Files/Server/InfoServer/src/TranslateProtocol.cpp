
#include "translateprotocol.h"
#include "datatype.h"
#include "ItemFunc.h"
#include <string.h>
#include <stdlib.h>
#include <enclib.h>
#include "d3des.h"




extern char g_logfile[];



TranslateProtocol::TranslateProtocol()
{
}



TranslateProtocol::~TranslateProtocol()
{
}


void TranslateProtocol::SetProtocolPtr(const char* prot)
{
    m_ptr = (char*)prot;
}


const char* TranslateProtocol::GetColumn(char splite)
{
    try
    {
        if((0 == m_ptr) || ('\0' == m_ptr))
        {
            return 0;
        }

        char* ptr = m_ptr;
        char* pos = strchr(m_ptr, splite);

        if(pos)
        {
            *pos = '\0';
            m_ptr = pos + 1;
        }
        else
        {
            m_ptr = 0;
        }

        return ptr;
    }
    catch(...)
    {
        LG(g_logfile, "=|=|=> GetColumn Exception...\r\n");
    }
    return 0;
}


long TranslateProtocol::Replace(char oldchr, char newchr)
{
    try
    {
        if((0 == m_ptr) || ('\0' == m_ptr))
        {
            return 0;
        }

        long ret = 0;

        char* pos;
        do
        {
            pos = strchr(m_ptr, oldchr);
            if(pos)
            {
                *pos = newchr;
                m_ptr = pos + 1;
                ++ret;
            }
        }while(pos);
        m_ptr = 0;

        return ret;
    }
    catch(...)
    {
        LG(g_logfile, "=|=|=> Replace Exception...\r\n");
    }
    return 0;
}


bool TranslateProtocol::IsNumber(const char* numStr)
{
    try
    {
        if(!numStr)
        {
            return false;
        }

        while('\0' != *numStr)
        {
            if((*numStr < '0') || (*numStr > '9'))
            {
                return false;
            }
            ++numStr;
        }
        return true;
    }
    catch(...)
    {
        LG(g_logfile, "=|=|=> IsNumber Exception...\r\n");
    }
    return false;
}


pAgentMsg TranslateProtocol::PeekMSG(const char* msg)
{
    try
    {
        LG(g_logfile, "Begin Peek Message: %s\r\n", msg);
        if((0 == msg) || (strlen(msg) < 6))
        {
            LG(g_logfile, "=====> Peek Error Message...\r\n");
            return 0;
        }
        pAgentMsg   pAM = new AgentMsg;
        memset(pAM, 0, sizeof(AgentMsg));

        char* ptr = (char*)msg;
        char* tPtr;

        SetProtocolPtr(ptr);

        tPtr = (char*)GetColumn(' ');//  ȡ���
        if(tPtr)
        {
            pAM->msgID = atol(ptr);
        }
		/*
		��������
		10000 [��֤��Ϣ]\n\n
		*/
        if(10000 == pAM->msgID)     //  ��½��֤
        {
            tPtr = (char*)GetColumn(' ');
            if(tPtr)
            {
                strcpy(pAM->field[FIELD1], tPtr);
            }
        }
        else
        {
            /*
                �Ƿ�������֤��Ϣ������ʱ���
            */
            tPtr = (char*)GetColumn(' ');
            if(tPtr)    //  ʱ���
            {
                strcpy(pAM->timeStamp, tPtr);

                /*
                    Э�����������С��
                */
                tPtr = (char*)GetColumn(' ');
                if(tPtr)
                {
                    if(IsNumber(tPtr))
                    {
                        pAM->section = atol(tPtr);
                    }
                    else
                    {
                        pAM->section = -1;
                    }

                    switch(pAM->msgID)
                    {
                    case 11000:             //  ��ɫ�б�
                        {
                            tPtr = (char*)GetColumn(' ');   //  ȡ�û���
                            if(!tPtr)
                            {
                                break;
                            }
                            strcpy(pAM->field[FIELD1], tPtr);
                        }  break;
                    case 11100:         //  �ʺż���
                        {
                            for(int i = 0; i < 2; i++)
                            {
                                tPtr = (char*)GetColumn(' ');
                                if(!tPtr)
                                {
                                    break;
                                }
                                strcpy(pAM->field[i], tPtr);
                            }
                        }  break;
                    case 11200:     //  �ʺŷ�ͣ
                    case 11400:     //  �ʺŽ��
                        {
							// Modify by lark.li 20080822 begin
                            //tPtr = (char*)GetColumn(' ');   //  ȡ�û���
                            //if(!tPtr)
                            //{
                            //    break;
                            //}
                            //strcpy(pAM->field[FIELD1], tPtr);
                             for(int i = 0; i < 2; i++)
                            {
                                tPtr = (char*)GetColumn(' ');
                                if(!tPtr)
                                {
                                    break;
                                }
                                strcpy(pAM->field[i], tPtr);
                            }
							// End
                       }  break;
                    case 11300:             //  ��������
                        {
                        }  break;
                    case 11500:             //  ��������
                        {
                            for(int i = 0; i < 3; i++)
                            {
                                tPtr = (char*)GetColumn(' ');
                                if(!tPtr)
                                {
                                    break;
                                }
                                strcpy(pAM->field[i], tPtr);
                                strupr(pAM->field[i]);
                            }
                        }  break;
                    case 11600:             //  ��ɫ����
                        {
                            for(int i = 0; i < 2; i++)
                            {
                                tPtr = (char*)GetColumn(' ');
                                if(!tPtr)
                                {
                                    break;
                                }
                                strcpy(pAM->field[i], tPtr);
                            }
                        }  break;
					case 11700:         //  ���ݽ�ɫ���ʺ� //add by wky
                        {
                            tPtr = (char*)GetColumn(' ');//��ȡ�����ѯ�ġ���ɫ����
                            if(!tPtr)
                            {
                                break;
                            }
                            strcpy(pAM->field[0], tPtr);//���������ѯ�ġ���ɫ����
                        }  break;
                    case 12000:             //  ����
                        {
                            int len = 128;
                            ItemInfo* itemInfo = ItemInfo::Instance();
                            if(!itemInfo->CheckTradeRecord(pAM->field[FIELD1], len, pAM->timeStamp))  //  ���ý��׼�¼�Ƿ��Ѵ����
                            {
                                sprintf(pAM->field[FIELD1], "12006 %s Record_Exception\n\n", pAM->timeStamp);
                                pAM->state = 1;
                                return pAM;
                            }
                            if(len > 0)
                            {
                                pAM->state = 1;
                                return pAM;
                            }
                            if(itemInfo->WriteTradeRecord(pAM->timeStamp, pAM->msgID, pAM->section, m_ptr))  //  ������߽��׼�¼
                            {
                                char* ptr = pAM->field[FIELD1];
                                int i;
                                for(i = 0; i < 2; i++)
                                {
                                    tPtr = (char*)GetColumn(' ');       //  ����ɫID����Ϣ�������ڵ�һ���ֶ��У�
                                                                        //  ��ɫIDռ�м�64���ֽڣ�����ռ��64���ֽ�
                                    if(!tPtr)
                                    {
                                        break;
                                    }
                                    strcpy(ptr, tPtr);
                                    ptr += 64;
                                }
                                int num = atoi(pAM->field[FIELD1] + 64);
                                if(0 == (num % 2))
                                {
                                    num /= 2;
                                }
                                else
                                {
                                    num /= 2;
                                    ++num;
                                }
                                if(num > 0 && num <= 31)
                                {
                                    int j;
                                    for(i = 0; i < num; i++)                //  ȡ���е�����Ϣ
                                    {
                                        ptr = pAM->field[i + 1];
                                        for(j = 0; j < 2; j++)
                                        {
                                            tPtr = (char*)GetColumn(';');   //  ÿ��������Ϣռ64�ֽڡ�ÿ���ֶδ��2��
                                            if(!tPtr)
                                            {
                                                break;
                                            }
                                            strcpy(ptr, tPtr);
                                            ptr += 64;
                                        }
                                    }
                                }
                            }
                            else
                            {
                                sprintf(pAM->field[FIELD1], "12006 %s Record_Exception\n\n", pAM->timeStamp);
                                pAM->state = 1;
                                return pAM;
                            }
                        }  break;
                    case 12100:             //  ������
                        {
                            int len = 128;
                            ItemInfo* itemInfo = ItemInfo::Instance();
                            if(!itemInfo->CheckTradeRecord(pAM->field[FIELD1], len, pAM->timeStamp))          //  ��⽻��
                            {
                                sprintf(pAM->field[FIELD1], "12104 %s Record_Exception\n\n", pAM->timeStamp);
                                pAM->state = 1;
                                return pAM;
                            }
                            if(len > 0)
                            {
                                pAM->state = 1;
                                return pAM;
                            }
                            if(itemInfo->WriteTradeRecord(pAM->timeStamp, pAM->msgID, pAM->section, m_ptr))  //  ���溣���ҽ��׼�¼
                            {
                                for(int i = 0; i < 2; i++)
                                {
                                    tPtr = (char*)GetColumn(' ');   //  ȡ��ɫid���Ǯ����
                                    if(!tPtr)
                                    {
                                        break;
                                    }
                                    strcpy(pAM->field[i], tPtr);
                                }
                            }
                            else
                            {
                                sprintf(pAM->field[FIELD1], "12104 %s Record_Exception\n\n", pAM->timeStamp);
                                pAM->state = 1;
                                return pAM;
                            }
                        }  break;
                    case 12200:
                        {
                            int len = 128;
                            ItemInfo* itemInfo = ItemInfo::Instance();
                            if(!itemInfo->CheckTradeRecord(pAM->field[FIELD1], len, pAM->timeStamp))          //  ��⽻��
                            {
                                sprintf(pAM->field[FIELD1], "12204 %s Record_Exception\n\n", pAM->timeStamp);
                                pAM->state = 1;
                                return pAM;
                            }
                            if(len > 0)
                            {
                                pAM->state = 1;
                                return pAM;
                            }
                            if(itemInfo->WriteTradeRecord(pAM->timeStamp, pAM->msgID, pAM->section, m_ptr))  //  ���溣���ҽ��׼�¼
                            {
                                for(int i = 0; i < 2; i++)
                                {
                                    tPtr = (char*)GetColumn(' ');   //  ȡ��ɫid���Ǯ����
                                    if(!tPtr)
                                    {
                                        break;
                                    }
                                    strcpy(pAM->field[i], tPtr);
                                }
                            }
                            else
                            {
                                sprintf(pAM->field[FIELD1], "12204 %s Record_Exception\n\n", pAM->timeStamp);
                                pAM->state = 1;
                                return pAM;
                            }
                        }  break;
                    case 12300:
                        {
                            tPtr = (char*)GetColumn(' ');   //  ȡ��ɫID
                            if(!tPtr)
                            {
                                break;
                            }
                            strcpy(pAM->field[FIELD1], tPtr);
                        }  break;
						
					case 12400:             //  ������ߣ���������ˮ�ţ� //add by wky
                        {
							/*
							12400 [Ψһ��ʶ��] [С��ID] [����] [������ˮ��] [��Ʒ���] [��ɫID] [��Ϣ����] [[���߱��] [���߸���];]\n\n
							12401 [Ψһ��ʶ��] [��ɫ��Ŵ�������]\n\n
							12402 [Ψһ��ʶ��] [��ɫ��������״̬]\n\n
							12403 [Ψһ��ʶ��] [���߱�Ŵ�������]\n\n
							12404 [Ψһ��ʶ��] [������������]\n\n
							12405 [Ψһ��ʶ��] [��������]\n\n
							12410 [Ψһ��ʶ��] [�ɹ���Ϣ]\n\n
							*/
						
							char key[64] = "64666e6b696e3240232153643966";//"dfnkin2@#!Sd9f"
							char value[128] = {0};
							char flow_id[64] = {0};
							char production_id[64] = {0};
                            int len = 128;

							ItemInfo* itemInfo = ItemInfo::Instance();
							strcpy(pAM->field[FIELD1], (char*)GetColumn(' '));//��ȡ����

							strcpy(flow_id, (char*)GetColumn(' '));
							strcpy(production_id, (char*)GetColumn(' '));
							strcpy(pAM->field[FIELD2], flow_id);				//��ý�����ˮID
							strcpy(pAM->field[FIELD2] + 64, production_id);		//��ò�Ʒ���
 
							//תʮ������
							char *ptr = value;
							for(int j = 4; j < strlen(flow_id); j++)
							{
								sprintf((char*)ptr, "%02x", flow_id[j]);//ɾ��ǰ��λ
								ptr += 2;
							}
							strcat(ptr,key);//ʮ��������Կ

							//��֤����
							for(j = 0; j < strlen(value); j++)
							{
								if(value[j] != pAM->field[FIELD1][j])
								{
									sprintf(pAM->field[FIELD1], "12401 %s Wrong_Password\n\n", pAM->timeStamp);
									pAM->state = 1;
									return pAM;
								}
							}

                            if(!itemInfo->CheckTradeRecord(pAM->field[FIELD1], len, pAM->timeStamp))  //  ���ý��׼�¼��ÿ�μ�¼��id����ͬ���Ƿ��Ѵ����
                            {
								sprintf(pAM->field[FIELD1], "12406 %s Record_Exception\n\n", pAM->timeStamp);
                                pAM->state = 1;
                                return pAM;
                            }
							if(!itemInfo->CheckTradeFlowID(flow_id))	//	���ý�����ˮ��һ�ʽ���ֻ��һ����ˮ�ţ��Ƿ��Ѿ������
							{
								//����ֻ���pAM->field[FIELD1]�У������޷������ķ����쳣��Ϣ������
								sprintf(pAM->field[FIELD1], "12406 %s Flow_ID_Exception\n\n", flow_id);
								pAM->state = 1;
                                return pAM;
							}
							if(len > 0)
                            {
                                pAM->state = 1;
                                return pAM;
                            }
							if(itemInfo->WriteTradeRecord2(pAM->timeStamp, pAM->msgID, pAM->section, m_ptr, flow_id, production_id))  //  ������߽��׼�¼
                            {
								//�ӽ�ɫID����Ϣ��������ʼ	
                                char* ptr = pAM->field[FIELD3];//label:1
                                int i;
                                for(i = 0; i < 2; i++)
                                {
                                    tPtr = (char*)GetColumn(' ');       //  ����ɫID����Ϣ�������ڵ�һ���ֶ��У�
                                                                        //  ��ɫIDռ�м�64���ֽڣ�����ռ��64���ֽ�
                                    if(!tPtr)
                                    {
                                        break;
                                    }
                                    strcpy(ptr, tPtr);
                                    ptr += 64;
                                }
								int num = atoi(pAM->field[FIELD3] + 64);	//1.λ���� //label:1 ������
                                if(0 == (num % 2))
                                {
                                    num /= 2;
                                }
                                else
                                {
                                    num /= 2;
                                    ++num;
                                }
                                if(num > 0 && num <= 31)
                                {
                                    int j;
                                    for(i = 0; i < num; i++)                //  ȡ���е�����Ϣ
                                    {
                                        ptr = pAM->field[i + 3];			//2.λ���� //label:1 ������
                                        for(j = 0; j < 2; j++)
                                        {
                                            tPtr = (char*)GetColumn(';');   //  ÿ��������Ϣռ64�ֽڡ�ÿ���ֶδ��2��
                                            if(!tPtr)
                                            {
                                                break;
                                            }
                                            strcpy(ptr, tPtr);
                                            ptr += 64;
                                        }
                                    }
                                }
                            }
                            else
                            {
								sprintf(pAM->field[FIELD1], "12406 %s Record_Exception\n\n", pAM->timeStamp);
                                pAM->state = 1;
                                return pAM;
                            }
                        } break;
                    case 13000:
                        {
                            for(int i = 0; i < 4; i++)
                            {
                                tPtr = (char*)GetColumn(' ');
                                if(!tPtr)
                                {
                                    break;
                                }
                                strcpy(pAM->field[i], tPtr);
                            }
                        }  break;
					//  ��ն������� //add by wky
					case 13100:
                        {
                            tPtr = (char*)GetColumn(' ');//ȡ������ġ��ʻ�����
                            if(!tPtr)
                            {
                                break;
                            }
                            strcpy(pAM->field[0], tPtr);//���ء��ʻ�����
                        }  break;
					//  �ָ���ɫ //add by wky
					case 13200:
                        {
                            tPtr = (char*)GetColumn(' ');//ȡ������ġ���ɫID��
                            if(!tPtr)
                            {
                                break;
                            }
                            strcpy(pAM->field[0], tPtr);//���ء���ɫID��
                        }  break;
					//  �ʻ���ģ����ѯ //add by wky
					case 14000:
                        {
                            for(int i = 0; i < 2; i++)
                            {
                                tPtr = (char*)GetColumn(' ');//ȡ�������ѯ�ġ��ʻ���������Ҫ��ѯ��ҳ�롱
                                if(!tPtr)
                                {
                                    break;
                                }
                                strcpy(pAM->field[i], tPtr);//���ء��ʻ���������Ҫ��ѯ��ҳ�롱
                            }
                        }  break;
					//  ��ɫ��ģ����ѯ //add by wky
					case 14100:
                        {
                            for(int i = 0; i < 2; i++)
                            {
                                tPtr = (char*)GetColumn(' ');//ȡ�������ѯ�ġ���ɫ��������Ҫ��ѯ��ҳ�롱
                                if(!tPtr)
                                {
                                    break;
                                }
                                strcpy(pAM->field[i], tPtr);//���ء���ɫ��������Ҫ��ѯ��ҳ�롱
                            }
                        }  break;
					//  �ʻ���Ϣ��ѯ���г�������Ϣ�� //add by wky
					case 14200:
                        {
                            tPtr = (char*)GetColumn(' ');//ȡ�������ѯ�ġ��ʻ�����
                            if(!tPtr)
                            {
                                break;
                            }
                            strcpy(pAM->field[0], tPtr);//���ء��ʻ�����
                        }  break;
					//  ��ɫ��Ϣ��ѯ���г�������Ϣ�� //add by wky
					case 14300:
                        {
                            tPtr = (char*)GetColumn(' ');//ȡ�������ѯ�ġ���ɫID��
                            if(!tPtr)
                            {
                                break;
                            }
                            strcpy(pAM->field[0], tPtr);//���ء���ɫID��
                        }  break;
					//  ���а� //add by wky
					case 14400:
                        {
                            tPtr = (char*)GetColumn(' ');//ȡ�������ѯ�ġ����а�������
                            if(!tPtr)
                            {
                                break;
                            }
                            strcpy(pAM->field[0], tPtr);//���ء����а�������
                        }  break;

					//  ������������Э��֮��
                    default:
                        {
                            SAFE_DELETE(pAM);
                            return 0;
                        }  break;
                    }
                }
            }
        }
        LG(g_logfile, "End Peek Message...\r\n");
        return pAM;
    }
    catch(...)
    {
        LG(g_logfile, "=|=|=> Peek Error Message...\r\n");
        return 0;
    }
}


