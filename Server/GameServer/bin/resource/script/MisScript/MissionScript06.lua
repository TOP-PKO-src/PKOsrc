-------------------------------------------------------------------
--									--
--									--
--NPCScript06.lua Created by Robin.Zeng 2005.9.22.				--
--									--
--									--
--------------------------------------------------------------------------
print( "loading NPCScript06.lua" )

jp= JumpPage
amp=AutoMissionPage
ct=CloseTalk
am=AddMission
MissionCheck = HasFlag
mc=MissionCheck

--------------------------------------------------


--                 ��������


--------------------------------------------
function DuplicateMission001()
-----------------------------------�ƹ������
	DefineMission( 500, "�ƹ������", 500 )
	
	MisBeginTalk( "��..�þ�û�ƺ��ˣ����Ӷ���̫��ʹ�ˣ���֪��ô�����ˣ��ƾ����ҵ�������<n><t>��ô��������ȥ�����ư���һƿ�þ������Ҿ͸�����һ���������ܡ�" )
	MisBeginCondition(LvCheck, ">", 29 )
	MisBeginCondition(NoMission, 500)
	MisBeginCondition(NoRecord, 500)
	MisBeginAction(AddMission, 500)
	MisBeginAction(AddTrigger, 5001, TE_GETITEM, 3916, 1 )
	MisCancelAction(ClearMission, 500)

	MisNeed(MIS_NEED_DESP, "ȥ�����ǵľưɰ�ƹ�2222,2889������1ƿҬ���ơ�")
	MisNeed(MIS_NEED_ITEM, 3916, 1, 10, 1)
		
	MisHelpTalk("��ô���Ǹ�С���Ӳ����Ƹ���ô������˵��ѹ����û��ȥ�����ﰡ�����ȥ��������������ʲô�����������ˡ�")
	MisResultTalk("��~~��Ȼ�Ǻþƣ��������þ�û����ôˬ��غȾ��ˣ���ô����������Ҫ��Ҫһ������һ������������ZZzzzZZZzzz")
	MisResultCondition(NoRecord, 500)
	MisResultCondition(HasMission, 500)
	MisResultCondition(HasItem, 3916, 1)
	MisResultAction(TakeItem, 3916, 1)
	MisResultAction(ClearMission, 500)
	MisResultAction(SetRecord, 500)
	MisResultAction(AddExp, 5000, 5000)
	--MisResultAction(AddMoney,270,270)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3916 )	
	TriggerAction( 1, AddNextFlag, 500, 10, 1 )
	RegCurTrigger( 5001 )

-----------------------------------����һ��
	DefineMission( 501, "����һ��", 501 )
	
	MisBeginTalk( "<t>���ϡ����ƾͺ���������<n><t>�����Ҿ�����Ũ�š� �����ˣ����������ף����ٰ���Ūһƿ�����ưɵİ������ƾơ����������������ɣ���Ȼ�ҿ�ʵ��û����˵��ȥ�ˡ�<n><t>��ȥ�ɣ�������������ء�<n><t>����ټӵ�����Ƭ�ɡ�<n><t>�������ܿ�����,��������" )
	MisBeginCondition(NoMission, 501)
	MisBeginCondition(NoRecord, 501)
	MisBeginCondition(HasRecord, 500)
	MisBeginAction(AddMission, 501)
	MisBeginAction(AddTrigger, 5011, TE_GETITEM, 3926, 1 )
	MisBeginAction(AddTrigger, 5012, TE_GETITEM, 1478, 20 )
	MisCancelAction(ClearMission, 501)

	MisNeed(MIS_NEED_DESP, "�����ǵľƹ�2222,2889����Ҫһƿ���������ƣ�����Ҫ20������Ƭ")
	MisNeed(MIS_NEED_ITEM, 3926, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 1478, 20, 20, 20)
		
	MisHelpTalk("ZZZzzzZZZ�����������������ơ�����Ҫ�ƣ�")
	MisResultTalk("�������þư����٣��������ǵ�Լ�����ҽ�������һ���������ܡ�<n><t>�������������ô�����ʱ����׷����һ�ﾭ��ḻ�ĺ���ʿ��ð����һ��Զ��̽�գ�һ��żȻ�Ļ������Ǵ��̵�һ���������ĵĹŴ����̣������̵�ָ�������ǵ�����ħŮ֮�������������һ������ľ޴����а����Ǻʹ�������һ�����ص�С��......���ƺ���һ���������˵Ķ��У���ʷ��Զ���������޷���֤��<n><t>��������Ƿ����˲Ʊ����ǵģ�һ�ʾ޴�ı��أ�<n><t>�����ı���ɢ��ĵ������ǣ��������Ӧ�о��С�<n><t>Ȼ������֮��û��һ���˻��Ŵ��ű����뿪���������ͼ���ߵ�ʲô���˶���������˷�ӿ�������������ɱ���ˣ���<n><t>ֻ���Һ�Сɽ���ܹ���̤����Ƭ���ء�<n><t>ʲô����Ҫ�Ҵ���ȥ��NO����������ȥ������Щ���µĶ����ǣ�<n><t>�Ҳ�����������Ҳ��Ҫ����ð���ˣ�ȥ��Сɽ���ɣ���֪����ôȥ�Ǹ�����֮�ء�<n><t>��ֻҪ�Ⱦƣ���...�ǲ����ҵ�����...��...zzzz")
	MisResultCondition(NoRecord, 501)
	MisResultCondition(HasMission, 501)
	MisResultCondition(HasItem, 3926, 1)
	MisResultCondition(HasItem, 1478, 20)
	MisResultAction(TakeItem, 3926, 1)
	MisResultAction(TakeItem, 1478, 20)
	MisResultAction(ClearMission, 501)
	MisResultAction(SetRecord, 501)
	MisResultAction(AddExp, 10000, 10000)
	--MisResultAction(AddMoney,270,270)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3926 )	
	TriggerAction( 1, AddNextFlag, 501, 10, 1 )
	RegCurTrigger( 5011 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1478 )	
	TriggerAction( 1, AddNextFlag, 501, 20, 20 )
	RegCurTrigger( 5012 )

-----------------------------------��������
	DefineMission( 502, "��������", 502 )
	
	MisBeginTalk( "<t>��..����������һ�����Ǹ��ƹ������İɣ��������Ȱ������־ƺ������Ƶģ�����Ҫ�����޻�����ʹ��������ʵ���������������Щ���ϵĻ��ҾͿ��԰������ƣ�����������������һ��Ҫ���ͺ����ݿ�װ�Ųźúȡ�<n><t>�����ر�������ʢ�Ƶ��ͺ����ݿ��ޡ�<n><t>����ٸ���2000G�����Ǯ�ͺ��ˡ�" )
	MisBeginCondition(NoMission, 502)
	MisBeginCondition(NoRecord, 502)
	MisBeginCondition(HasRecord, 500)
	MisBeginCondition(HasMission, 501)
	MisBeginAction(AddMission, 502)
	MisBeginAction(AddTrigger, 5021, TE_GETITEM, 4377, 1 )
	MisBeginAction(AddTrigger, 5022, TE_GETITEM, 3121, 5 )
	MisBeginAction(AddTrigger, 5023, TE_GETITEM, 3131, 5 )
	MisBeginAction(AddTrigger, 5024, TE_GETITEM, 4352, 20 )
	MisCancelAction(ClearMission, 502)

	MisNeed(MIS_NEED_ITEM, 4377, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 3121, 5, 15, 5)
	MisNeed(MIS_NEED_ITEM, 3131, 5, 20, 5)
	MisNeed(MIS_NEED_ITEM, 4352, 20, 30, 20)

	MisPrize(MIS_PRIZE_ITEM, 3926, 1, 4)
	MisPrizeSelAll()
		
	MisHelpTalk("���ơ��������������������ƣ�����һζ����Ҳ�����١���")
	MisResultTalk("�š�������Щ�����ˣ������㻹��ͦ����������ú��ˣ�������Ǿƹ�Ҫ�����������ơ�")
	MisResultCondition(NoRecord, 502)
	MisResultCondition(HasMission, 502)
	MisResultCondition(HasItem, 4377, 1)
	MisResultCondition(HasItem, 3121, 5)
	MisResultCondition(HasItem, 3131, 5)
	MisResultCondition(HasItem, 4352, 20)
	MisResultCondition(HasMoney, 2000 )
	MisResultAction(TakeMoney, 2000 )
	MisResultAction(TakeItem, 4377, 1)
	MisResultAction(TakeItem, 3121, 5)
	MisResultAction(TakeItem, 3131, 5)
	MisResultAction(TakeItem, 4352, 20)
	MisResultAction(ClearMission, 502)
	MisResultAction(SetRecord, 502)
	MisResultAction(AddExp, 20000, 20000)
	--MisResultAction(AddMoney,270,270)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4377 )	
	TriggerAction( 1, AddNextFlag, 502, 10, 1 )
	RegCurTrigger( 5021 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3121 )	
	TriggerAction( 1, AddNextFlag, 502, 15, 5 )
	RegCurTrigger( 5022 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3131 )	
	TriggerAction( 1, AddNextFlag, 502, 20, 5 )
	RegCurTrigger( 5023 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4352 )	
	TriggerAction( 1, AddNextFlag, 502, 20, 20 )
	RegCurTrigger( 5024 )

-----------------------------------������ʿ����
	DefineMission( 503, "������ʿ����", 503 )
	
	MisBeginTalk( "<t>��Ȼ�Ǿƹ����������Ҳûʲô��˵�ģ��Ǹ��ط���ȥ��������ϸ�о����Ǹ��Ŵ���λ�ǣ�����ֻҪ��ȥ��10����е�ں������ҾͿ��԰���㶨��<n><t>������ܵ����Ǹ����ص�����֮�أ��ܷ��ռ�һЩ���Ǹ��ң��Ҷ���Щ��������ܸ���Ȥ���Һ����о�һ�����ǵĹ�ȥ��" )
	MisBeginCondition(NoMission, 503)
	MisBeginCondition(NoRecord, 503)
	MisBeginCondition(HasRecord, 501)
	MisBeginAction(AddMission, 503)
	MisBeginAction(AddTrigger, 5031, TE_GETITEM, 3434, 10 )
	MisBeginAction(AddTrigger, 5032, TE_GETITEM, 3435, 10 )
	MisBeginAction(AddTrigger, 5033, TE_GETITEM, 3436, 10 )
	MisBeginAction(AddTrigger, 5034, TE_GETITEM, 3437, 10 )
	MisCancelAction(ClearMission, 503)

	--MisNeed(MIS_NEED_DESP, "�ڷ��鶼�����ҵ�һЩ������ʿ���ǣ�һ����10���������ǽ��������ǵ�Сɽ����2193,2730��")
	MisNeed(MIS_NEED_ITEM, 3434, 10, 10, 10)
	MisNeed(MIS_NEED_ITEM, 3435, 10, 20, 10)
	MisNeed(MIS_NEED_ITEM, 3436, 10, 30, 10)
	MisNeed(MIS_NEED_ITEM, 3437, 10, 40, 10)
		
	MisHelpTalk("�������ȷ�Ǹ�Σ�ն�������ս�Ե�����������������ʵ������Ӧ�úúÿ����¡�")
	MisResultTalk("�������������Щ��������ĺ����˰ɣ�<n><t>�ҵ�˼άǿ�ҵظ��ܵ���Щ���Ƿ·��ڲ�ͣ����˵��<n><t>����ʲô����Ҫ��ϸ���о�����Ӧ���ܴ���Щ������֪��Щʲô�������ǽ��ҿ�һ�������ܣ���")
	MisResultCondition(NoRecord, 503)
	MisResultCondition(HasMission, 503)
	MisResultCondition(HasItem, 3434, 10)
	MisResultCondition(HasItem, 3435, 10)
	MisResultCondition(HasItem, 3436, 10)
	MisResultCondition(HasItem, 3437, 10)
	MisResultAction(TakeItem, 3434, 10)
	MisResultAction(TakeItem, 3435, 10)
	MisResultAction(TakeItem, 3436, 10)
	MisResultAction(TakeItem, 3437, 10)
	MisResultAction(ClearMission, 503)
	MisResultAction(SetRecord, 503)
	MisResultAction(AddExp, 80000, 80000)
	--MisResultAction(AddMoney,270,270)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3434 )	
	TriggerAction( 1, AddNextFlag, 503, 10, 10 )
	RegCurTrigger( 5031 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3435 )	
	TriggerAction( 1, AddNextFlag, 503, 20, 10 )
	RegCurTrigger( 5032 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3436 )	
	TriggerAction( 1, AddNextFlag, 503, 30, 10 )
	RegCurTrigger( 5033 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3437 )	
	TriggerAction( 1, AddNextFlag, 503, 40, 10 )
	RegCurTrigger( 5034 )

----------------------------------------
--                                    --
--        ���ձȺ�����������          --
--                                    --
----------------------------------------

----------------------------------------
--                                    --
--              ��������              --
--                                    --
----------------------------------------

-- ���� >> �����ĵ���
	DefineMission(504,"�����ĵ���",504)
	
	MisBeginTalk("<t>�����Ů�˱������ˣ���Ҫȥ����������������ʿ������Ҫ��������ʬ��Σ�<n><t>��Ǹ���ҵ����ѣ�ԭ���ҵı��꣬�������������ɯ�ף�����ת��������Ҫ���£���һ����ȥ������<n><t>��ʹ��Ҫ��������������Ҳ������ϧ��")

	MisBeginCondition(NoRecord, 504)
	MisBeginCondition(NoMission, 504)

	MisBeginAction(AddMission, 504)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisHelpTalk("<t>���Ͼ�ȥ���㣡һ��Ҫ�����Ұ�~")
	MisNeed(MIS_NEED_DESP, "�ҵ�����ɯ�ײ�����ת�������Ļ�")
	
	MisResultCondition(AlwaysFailure)

-- ���� >> �����ĵ���
	DefineMission(505,"�����ĵ���",504,COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>��~�ϵ�ѽ������������������<n><t>��̫�ж��ˣ���Ҳ��������Զ����ţ�")
	MisResultCondition(HasMission, 504)
	MisBeginCondition(NoRecord, 504)
	
	MisResultAction(AddExp, 10000, 10000)
	MisResultAction(AddMoney, 25000, 25000)
	MisResultAction(ClearMission, 504)
	MisResultAction(SetRecord, 504)


-- ���� >> ����ɯ�׵Ķ�������
	DefineMission(506,"����ɯ�׵Ķ�������",505)

	MisBeginTalk("<t>��������Ұ������������ת�����������ҵ������أ�<n><t>��⣡һ�����������ú��������ˣ��ǿ����Һ������Ķ������ﰡ<n><t>���ţ����ܰ���ȡ������")

	MisBeginCondition(HasRecord, 504)
	MisBeginCondition(NoMission, 505)
	MisBeginCondition(NoRecord, 505)

	MisBeginAction(AddMission, 505)
	MisBeginAction(AddTrigger, 5051, TE_GETITEM, 2415, 1)
	
	MisNeed(MIS_NEED_ITEM, 2415, 1, 10, 1)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisHelpTalk("<t>���ҵ�������������")

	MisResultTalk("<t>�������������лл������ҵ�����")

	MisResultCondition(HasMission, 505)
	MisResultCondition(HasItem, 2415, 1)
	MisResultCondition(NoRecord,505)

	MisResultAction(AddExp, 250000, 250000)
	MisResultAction(AddMoney, 150000, 150000)
	MisResultAction(ClearMission, 505)
	MisResultAction(TakeItem, 2415,1)
	MisResultAction(SetRecord, 505)

	InitTrigger()
	TriggerCondition(1,IsItem, 2415)
	TriggerAction(1, AddNextFlag, 505, 10, 1)
	RegCurTrigger(5051)


-- ���� >> ��������
	DefineMission(507,"��������",506)
	
	MisBeginTalk("<t>���ˣ����������������д�����������˵�Ļ�<n><t>���ܰ��Ұ��������ת����������Ը�ϵ۱����㣡")

	MisBeginCondition(HasRecord, 505)
	MisBeginCondition(NoRecord, 506)
	MisBeginCondition(NoMission, 506)
	MisBeginBagNeed(1)

	MisBeginAction(AddMission, 506)
	MisBeginAction(GiveItem, 2415,1,4)

	MisHelpTalk("<t>Ը�ϵ۱�����")
	MisNeed(MIS_NEED_DESP, "������ɯ�׽���������ת������������")

	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisResultCondition(AlwaysFailure)

-- ���� >> ��������
	DefineMission(508,"��������",506, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>���ҵ�����ɯ���ˣ������ھ�ȥ����<n><t>�ȵȣ����ǵĶ����������ҿ���")
	MisResultCondition(HasMission, 506)
	MisResultCondition(NoRecord,506)
	MisResultCondition(HasItem, 2415, 1)

	MisResultAction(AddExp, 10000, 10000)
	MisResultAction(AddMoney, 25000, 25000)

	MisResultAction(TakeItem, 2415, 1)
	MisResultAction(ClearMission, 506)
	MisResultAction(SetRecord, 506)

-- ���� >> ������Լ��
	DefineMission(509,"������Լ��",507)
	
	MisBeginTalk("<t>��Ҫ����ҵ�Ů��������Ҫһ����������������ܰ���Ū����<n><t>�������������ֻ������������ϲŻ���������Ŷ�����˵Ӧ����С��һ���ɡ�")

	MisBeginCondition(HasRecord, 506)
	MisBeginCondition(NoRecord, 507)
	MisBeginCondition(NoMission, 507)

	MisBeginAction(AddMission, 507)
	MisBeginAction(AddTrigger, 5071, TE_GETITEM, 2384, 1)

	MisNeed(MIS_NEED_ITEM, 2384, 1, 10, 1)

	MisCancelAction(SystemNotice, "�������޷��ж�")
	MisHelpTalk("<t>�����Ϳ���ˣ��ţ��㻹û�ҵ������������")

	MisResultTalk("<t>���Ӧ�þ�������ɯ��˵�������������˰ɣ��湻����ġ�")

	MisResultCondition(HasMission, 507)
	MisResultCondition(HasItem, 2384, 1)
	MisResultCondition(NoRecord, 507)

	MisResultAction(TakeItem, 2384, 1)
	MisResultAction(AddExp, 200000, 200000)
	MisResultAction(AddMoney, 100000, 100000)

	MisResultAction(ClearMission, 507)
	MisResultAction(SetRecord, 507)

	InitTrigger()
	TriggerCondition(1, IsItem, 2384)
	TriggerAction(1, AddNextFlag, 507, 10, 1)
	RegCurTrigger(5071)

-- ���� >> ���������
	DefineMission(573,"���������",508)
	
	MisBeginTalk("<t>����������󻹲��ʲô���������ã�ˣ�Ϊʲô�ܸо������������������أ�<n><t>�������ܰ��Ұ�������������ܿ�ʷ������������Ӧ���ܿ���Щ���ߡ�")
	
	MisBeginBagNeed(1)
	MisBeginCondition(HasRecord, 507)
	MisBeginCondition(NoRecord, 508)
	MisBeginCondition(NoMission, 508)
	MisBeginBagNeed(1)

	MisBeginAction(AddMission, 508)
	MisBeginAction(GiveItem, 2384, 1,4)

	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisHelpTalk("<t>�ܿ���ô˵���㻹ûȥ��")
	MisNeed(MIS_NEED_DESP, "�����������������ת�����ܿ�ʷ����")

	MisResultCondition(AlwaysFailure)


-- �ܿ�ʷ���� >> ���������
	DefineMission(574,"���������", 508,COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure)
	MisResultTalk("<t>���ҿ��������������������а�������<n><t>ֻ���Ĵ�а������ǲ�������ȥ����������������̫��������.....")
	MisResultCondition(HasMission, 508)
	MisResultCondition(NoRecord, 508)
	MisResultCondition(HasItem, 2384, 1)

	MisResultAction(AddMoney, 25000, 25000)
	MisResultAction(TakeItem, 2384, 1)
	MisResultAction(ClearMission, 508)
	MisResultAction(SetRecord, 508)


-- �ܿ�ʷ���� >> �����뺣��
	DefineMission(575,"�����뺣��",509)
	
	MisBeginTalk("<t>����Ҫ����һ�˺����Ǳߣ�����ŵ��ٴ���������ߵ����<n><t>���������������ʵ��жϵ�")

	MisBeginCondition(HasRecord, 508)
	MisBeginCondition(NoRecord, 509)
	MisBeginCondition(NoMission, 509)

	MisBeginAction(AddMission, 509)
	
	MisHelpTalk("<t>��û��������Ҫץ��ʱ�䰡")
	MisNeed(MIS_NEED_DESP, "��ܿ�ʷ���޴�����ŵ��ٽ���")
	
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisResultCondition(AlwaysFailure)

-- ŵ��� >> �����뺣��
	DefineMission(576, "�����뺣��", 509,COMPLETE_SHOW)
	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>�ܿ���С�ӻ�û������ε����������������ǵ�����죡<n><t>Ŷ������������ϵĴ������<n><t>�������������������ǵ�������һ�µģ��ðɣ��ܿ˵Ľ����һ�úÿ��ǵġ�")

	MisResultCondition(HasMission, 509)
	MisResultCondition(NoRecord, 509)

	MisResultAction(AddMoney, 25000, 25000)
	MisResultAction(ClearMission, 509)
	MisResultAction(SetRecord, 509)

-- ŵ��� >> �����ı��
	DefineMission(577,"�����ı��",510)
	
	MisBeginTalk("<t>���������飬�ҵ�����ָ��������ȥ�ˣ�<n><t>ΪʲôҪ���ҵĽ�ָ��<n><t>���֪��������ö��ָ�������˺ü�ʮ����Ҵ���ɵģ����ܰ��Ұѽ�ָ�������𣿾�˵�����Ѿ������鴬׼���뿪��")

	MisBeginCondition(HasRecord, 509)
	MisBeginCondition(NoRecord, 510)
	MisBeginCondition(NoMission, 510)
	
	MisBeginAction(AddMission, 510)
	MisBeginAction(AddTrigger, 5101, TE_GETITEM, 2416, 1)
	MisNeed(MIS_NEED_ITEM, 2416, 1, 10, 1)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisHelpTalk("<t>����㲻�������ҵĽ�ָ���ҽ��ܾ������ܿ�ʷ����")

	MisResultTalk("<t>��ð�����ָ�ֻ����ˣ������ҿ���������ɯ���������")

	MisResultCondition(HasMission, 510)
	MisResultCondition(NoRecord, 510)
	MisResultCondition(HasItem, 2416, 1)
	
	MisResultAction(TakeItem, 2416, 1)
	MisResultAction(AddExp, 30000, 30000)
	MisResultAction(AddMoney, 35000, 35000)
	MisResultAction(ClearMission, 510)
	MisResultAction(SetRecord, 510)
	
	InitTrigger()
	TriggerCondition(1, IsItem, 2416)
	TriggerAction(1, AddNextFlag, 510, 10, 1)
	RegCurTrigger(5101)

-- ŵ��� >> �����ı��
	DefineMission(578,"�����ı��",511)
	
	MisBeginTalk("<t>�Ǹ�������ô˵���ء�����ϲ��һ��Ů��������������顭��<n><t>���Ҳ�����˼���ڡ������ܰ��Ұ������ָ�͸��������������ķ�Ӧ�𡭡�<n><t>������ܽ����ҵİ��⡭����һ�����л��ġ������ˡ�����Ů��������ɯ��")

	MisBeginCondition(HasRecord, 510)
	MisBeginCondition(NoRecord, 511)
	MisBeginCondition(NoMission, 511)
	MisBeginBagNeed(1)

	MisBeginAction(AddMission, 511)
	MisBeginAction(GiveItem, 2416, 1,4)
	MisHelpTalk("<t>����ɯ�ס�������ɯ�ס�������")
	MisNeed(MIS_NEED_DESP, "<t>��ŵ��ٰ�����ָ�͸�����ɯ�ף�����̽����ɯ�׵ķ�Ӧ")

	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisResultCondition(AlwaysFailure)

-- ����ɯ�� >> �����ı��
	DefineMission(579, "�����ı��", 511,COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure)
	
	MisResultTalk("<t>ŵ��ٽ����������������Ǻο��أ�")
	MisResultCondition(HasMission, 511)
	MisResultCondition(NoRecord, 511)
	MisResultCondition(HasItem, 2416, 1)

	MisResultAction(AddMoney, 35000, 35000)
	MisResultAction(TakeItem, 2416, 1)
	MisResultAction(ClearMission, 511)
	MisResultAction(SetRecord, 511)

-- ����ɯ�� >> ����ɯ�׵���
	DefineMission(580,"����ɯ�׵���",512)

	MisBeginTalk("<t>�Ҹе��ܲ���������������ֵĸо�<n><t>�����Ǳߺ������Щ״�����Һܵ���������������ȥ���Ǳ߿�����<n><t>���ҽ��������Ϊ������")

	MisBeginCondition(HasRecord, 511)
	MisBeginCondition(NoRecord, 512)
	MisBeginCondition(NoMission, 512)
	
	MisCancelAction(SystemNotice, "�������޷��ж�")
	MisBeginAction(AddMission, 512)
	MisHelpTalk("<t>���ܵ��������뱣������ƽ����")
	MisNeed(MIS_NEED_DESP, "������ɯ������ȥ��������")

	MisResultCondition(AlwaysFailure)


-- ���� >> ����ɯ�׵���
	DefineMission(581, "����ɯ�׵���", 512,COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>������ɯ��Ҫ��������<n><t>��������ÿɺã�����߳��˵�С״����ûʲô������ģ�ϣ������Ҫ̫Ϊ�ҵ���")

	MisResultCondition(HasMission, 512)
	MisResultCondition(NoRecord, 512)
	
	MisResultAction(AddMoney, 35000, 35000)
	MisResultAction(ClearMission, 512)
	MisResultAction(SetRecord, 512)

-- ���� >> ����
	DefineMission(582,"����",513)

	MisBeginTalk("<t>����֮ǰ�Ѽ��ĲƱ�����������ϵ������������ˣ��������˼�����ĵ�����<n><t>��������Ҫ��ȥ��������������ĲƱ����Ҵ��������ҽ�������������һһ���<n><t>��ô����û����ɡ�<n><t>ȥ�ɣ�������ɱ������Űɣ���֪�������������ѣ�����һ�����������������һ�������صĽ�����ġ�")
	
	MisBeginCondition(HasRecord, 512)
	MisBeginCondition(NoRecord, 513)
	MisBeginCondition(NoMission, 513)
	
	MisBeginAction(AddMission, 513)
	MisBeginAction(AddTrigger, 5131,TE_GETITEM, 2417, 1)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_ITEM, 2417, 1, 10, 1)

	MisHelpTalk("<t>�㻹û�ѲƱ���������")

	MisResultTalk("<t>���ҿ�������������һ�ַǳ����������䰡���������Ž⿪��Щ�񶾵����䡣<n><t>!^($����%*#��a2����1&s?~*#^%!����(��������������ֵ����ģ�ΪʲôҪ˵���أ�)��̫���ˣ����ǳɹ��ˣ�")

	MisResultCondition(HasMission, 513)
	MisResultCondition(NoRecord, 513)
	MisResultCondition(HasItem, 2417, 1)
	
	MisResultAction(TakeItem, 2417, 1)
	MisResultAction(AddExp, 500000, 500000)
	MisResultAction(AddMoney, 800000, 800000)
	MisResultAction(ClearMission, 513)
	MisResultAction(SetRecord, 513)

	InitTrigger()
	TriggerCondition(1, IsItem, 2417)
	TriggerAction(1, AddNextFlag, 513, 10, 1)
	RegCurTrigger(5131)

-- ���� >> ����

	DefineMission(583,"����",514)
	
	MisBeginTalk("<t>�����Ѿ��ɹ��Ƴ������麣�������ԵĲƱ��ϵ���������<n><t>��������û�вƱ���û���������������Щ�����ǻ���ʲô���������ǿ���<n><t>������ʱ�򷢶��ܹ����ˣ���������֮ǰ��������Ҹ����ҵĺ����ѽܿ�ʷ������Щ�º���")

	MisBeginCondition(HasRecord, 513)
	MisBeginCondition(NoRecord, 514)
	MisBeginCondition(NoMission, 514)

	MisBeginAction(AddMission, 514)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisHelpTalk("<t>����ô��û�������������������������ڣ����Ƿ��𷴹��ĺ�ʱ��")
	MisNeed(MIS_NEED_DESP, "���������߽ܿ�ʷ���������Ѿ����ƽ����")

	MisResultCondition(AlwaysFailure)

-- �ܿ�ʷ���� >> ����
	DefineMission(584, "����", 514,COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>��֪���ˣ���������չ�����������أ��������ǲ�������ǧ���ѷ�Ļ���ɣ�")
	MisResultCondition(HasMission, 514)
	MisResultCondition(NoRecord, 514)

	MisResultAction(AddMoney, 30000, 30000)
	MisResultAction(ClearMission, 514)
	MisResultAction(SetRecord, 514)

-- �ܿ�ʷ���� >> ����Ĵ���
	DefineMission(585,"�����Ĵ���",515)
	
	MisBeginTalk("<t>��ս��ʱ�����ˣ����ɣ��Ͳ����������ǰ�֮ǰ�Ķ���ԩԩ�������˽�ɣ�<n><t>���ѣ�������ܰ��Ҹɵ�а��İͲ��������Ĵ��������û�������һ����úó�л���<n><t>����ʵ������������˭���Ǻ�����������Ĵ�����")
	MisBeginCondition(HasRecord, 514)
	MisBeginCondition(NoRecord, 515)
	MisBeginCondition(NoMission,515)
	
	MisBeginAction(AddMission, 515)
	MisBeginAction(AddTrigger, 5151, TE_KILL, 805, 1)
	MisBeginAction(AddTrigger, 5152, TE_GETITEM, 2428, 1)

	MisNeed(MIS_NEED_KILL, 805, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 2428, 1,20, 1)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisHelpTalk("<t>�����İͲ�������Ҳ�н��죡")

	MisResultTalk("<t>̫���ˣ��Ҳ��Ǻ�����������Ĵ���������")

	MisResultCondition(HasMission, 515)
	MisResultCondition(HasFlag, 515, 10)
	MisResultCondition(HasItem, 2428,1)
	MisResultCondition(NoRecord, 515)

	MisResultAction(TakeItem, 2428, 1)
	MisResultAction(ClearMission, 515)
	MisResultAction(SetRecord, 515)

	MisResultAction(AddExp, 500000,500000)
	MisResultAction(AddMoney, 800000,800000)

	InitTrigger()
	TriggerCondition(1,IsMonster, 805)
	TriggerAction(1,AddNextFlag, 515, 10, 1)
	RegCurTrigger(5151)

	InitTrigger()
	TriggerCondition(1, IsItem, 2428)
	TriggerAction(1, AddNextFlag , 515, 20, 1)
	RegCurTrigger(5152)


-- �ܿ�ʷ���� >> ����
	DefineMission(586,"����",516)
	
	MisBeginTalk("<t>һ�ж������ˣ���˵����������ɯ�׽����<n><t>����ϲ�ϼ�ϲѽ~�����������Ұ���������͸�����ɯ�ף�Ϊʲô�Ҳ������ͣ�<n><t>�׳գ������NPC�Լ����������")

	MisBeginCondition(HasRecord, 515)
	MisBeginCondition(NoRecord, 516)
	MisBeginCondition(NoMission, 516)
	MisBeginBagNeed(1)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisBeginAction(AddMission, 516)
	MisBeginAction(GiveItem, 2433, 1,4)
	MisHelpTalk("<t>���������ͷ����~�����ڰ�����ŶŶ~��������С��������")
	MisNeed(MIS_NEED_DESP, "��ܿ������������ɯ�ף���ף�����������")
	
	MisResultCondition(AlwaysFailure)

-- �ܿ�ʷ���� >> ����
	DefineMission(587,"����",516,COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>�ǽܿ˵�����Ү~��𿪿�����<n><t>ʲô�һö����ͷѫ�£���С����")
	MisResultCondition(HasMission, 516)
	MisResultCondition(NoRecord, 516)
	MisResultCondition(HasItem, 2433, 1)
	
	MisResultAction(TakeItem, 2433, 1)
	MisResultAction(AddMoney, 30000, 30000)
	MisResultAction(ClearMission, 516)
	MisResultAction(SetRecord, 516)

-- ����ɯ�� >> ��������
	DefineMission(588,"��������",517)
	
	MisBeginTalk("<t>���ܺ�����������<n><t>���Ұ���ö��ָ����ŵ��ٽ���������������ᵽ�ҵ�����ġ�")

	MisBeginCondition(HasRecord, 516)
	MisBeginCondition(NoRecord, 517)
	MisBeginCondition(NoMission, 517)
	MisBeginBagNeed(1)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisBeginAction(AddMission, 517)
	MisBeginAction(GiveItem, 2416, 1,4)
	MisHelpTalk("<t>��������ȥ�ĺ��أ�����̩����ά�ģ����ձȺ���")
	MisNeed(MIS_NEED_DESP, "������ɯ�װѽ���ָ����ŵ���")
	
	MisResultCondition(AlwaysFailure)

-- ŵ��� >> ��������
	DefineMission(589,"��������",517,COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>�Ȳ���ͷ���αز���<n><t>��Ȼ��Ե����������<n><t>�������֣���ˮ�޺�<n><t>������Ϧ������İ·����")
	MisResultCondition(HasMission, 517)
	MisResultCondition(NoRecord, 517)
	MisResultCondition(HasItem, 2416, 1)
	
	MisResultAction(TakeItem, 2416, 1)
	MisResultAction(AddMoney, 30000, 30000)
	MisResultAction(ClearMission, 517)
	MisResultAction(SetRecord, 517)

-- ŵ���  >> ŵ��ٵ�ף��
	DefineMission(590,"ŵ��ٵ�ף��",518)
	
	MisBeginTalk("<t>����ͨ�ˣ���Ӧ�úúõ�ף�����Ƕ����������ﰧ��̾��<n><t>�����Ҵ����͸����ǵ�������ܰ���ת����������")

	MisBeginCondition(HasRecord, 517)
	MisBeginCondition(NoRecord, 518)
	MisBeginCondition(NoMission, 518)
	MisBeginBagNeed(1)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisBeginAction(AddMission, 518)
	MisBeginAction(GiveItem, 2435, 1,4)
	MisHelpTalk("<t>����ɯ��~ϣ������������Ե�ܹ���һ��")
	MisNeed(MIS_NEED_DESP, "��ŵ����ͽ�����������ɯ��")
	
	MisResultCondition(AlwaysFailure)

-- ����ɯ��>> ŵ��ٵ�ף��
	DefineMission(591,"ŵ��ٵ�ף��",518,COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>ŵ��ٽ�������лл���������ҵ�����<n><t>лл��лл����")
	MisResultCondition(HasMission, 518)
	MisResultCondition(NoRecord, 518)
	MisResultCondition(HasItem, 2435, 1)
	
	MisResultAction(TakeItem, 2435, 1)
	MisResultAction(AddMoney,300000, 300000)
	MisResultAction(ClearMission, 518)
	MisResultAction(SetRecord, 518)
	
end
DuplicateMission001()
























