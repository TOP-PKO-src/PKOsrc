------------------------------------------------------------
--MissionScript05.lua Created by Robin 2005.05.27.
--
--��������
------------------------------------------------------------
print( "loading MissionScript05.lua" )

jp= JumpPage
amp=AutoMissionPage
ct=CloseTalk
am=AddMission
MissionCheck = HasFlag
mc=MissionCheck

----------------------------------------------------------
--							--
--							--
--		��������	 				--
--							--
--							--
----------------------------------------------------------
	-->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>��������ʼ
function AreaMission001()

-----------------------------------��ȡ�䳲
	DefineMission( 600, "��ȡ�䳲", 600 )
	
	MisBeginTalk( "<t>�׻�˵������������������������<n><t>��<rҰ����>Խ��Խ��Ᵽ�������ɱ������û���õġ�<n><t>�鷳�㵽<rҰ����>���ϳ�͵5��<y�䳲>��<n><t>��ʧ�˷䳲���ǻ���ô���š�<n><t>���䳲����Ұ�����û�ĵ��򸽽�����Ҫע���������ľ���䳲��������ĳ�����ϣ��ҵ������������������ȡ�á���" )
	MisBeginCondition(LvCheck, ">", 19 )
	MisBeginCondition(NoMission, 600)
	MisBeginCondition(NoRecord, 600)
	MisBeginAction(AddMission, 600)
	MisBeginAction(AddTrigger, 6001, TE_GETITEM, 4085, 5 )
	MisCancelAction(ClearMission, 600)

	MisNeed(MIS_NEED_ITEM, 4085, 5, 10, 5)
		
	MisHelpTalk("<t><rҰ����>���˺�ʹ�ģ�͵<y�䳲>��ʱ��ҪС�ķ�����")
	MisResultTalk("<t>�٣��ҵ��������ðɣ��������ˣ�")
	MisResultCondition(NoRecord, 600)
	MisResultCondition(HasMission, 600)
	MisResultCondition(HasItem, 4085, 5)
	MisResultAction(TakeItem, 4085, 5)
	MisResultAction(ClearMission, 600)
	MisResultAction(SetRecord, 600)
	MisResultAction(AddExp, 800, 800)
	MisResultAction(AddMoney,270,270)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4085 )	
	TriggerAction( 1, AddNextFlag, 600, 10, 5 )
	RegCurTrigger( 6001 )

-----------------------------------����Ұ����
	DefineMission( 601, "����Ұ����", 601 )
	
	MisBeginTalk( "<t>��Ӵ��Ӵ����������<Ұ����>Խ��Խ�����ˣ��Ҳ���·�����ǲ��۵Ļ��ԣ��ͱ���������һ����<n><t>�������׵ø���ͷ�Ƶģ������ˣ�<n><t>�鷳��ȥ���10ֻ<rҰ����>����ѵ��ѵ��ЩҰ���ļһ<n><t>��˵������ ��1623,3139�� ������û��" )
	MisBeginCondition(LvCheck, ">", 19 )
	MisBeginCondition(HasRecord, 600)
	MisBeginCondition(NoMission, 601)
	MisBeginCondition(NoRecord, 601)
	MisBeginAction(AddMission, 601)
	MisBeginAction(AddTrigger, 6011, TE_KILL, 139, 10 )
	MisCancelAction(ClearMission, 601)

	MisNeed(MIS_NEED_KILL, 139, 10, 10, 10)
	
	MisHelpTalk("<t>��Ӵ������ʹ���㻹û������Щ<rҰ����>��")
	MisResultTalk("<t>�ߺߣ�����<rҰ����>�ɸ�֪�������಻����ô���۸��ģ�")
	MisResultCondition(NoRecord, 601)
	MisResultCondition(HasMission, 601)
	MisResultCondition(HasFlag, 601, 19 )
	MisResultAction(ClearMission, 601)
	MisResultAction(SetRecord, 601)
	MisResultAction(AddExp, 800, 800)
	MisResultAction(AddMoney,270,270)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 139 )	
	TriggerAction( 1, AddNextFlag, 601, 10, 10 )
	RegCurTrigger( 6011 )

-----------------------------------��������
	DefineMission( 602, "��������", 602 )
	
	MisBeginTalk( "<t>���������������أ���������һ���¾�������������������<rèͷӥ>�����������Ҳ�����˯��<n><t>����ʹ��ˣ��ɲ���������ôʧ�ߣ��鷳��ɱ��10ֻ<rèͷӥ>������˯���þ�����Щ���ֵļһ������ ��1384,3065�� ������" )
	MisBeginCondition(LvCheck, ">", 20 )
	MisBeginCondition(HasRecord, 603)
	MisBeginCondition(NoMission, 602)
	MisBeginCondition(NoRecord, 602)
	MisBeginAction(AddMission, 602)
	MisBeginAction(AddTrigger, 6021, TE_KILL, 224, 10 )
	MisCancelAction(ClearMission, 602)

	MisNeed(MIS_NEED_KILL, 224, 10, 10, 10)
	
	MisHelpTalk("<t>��ɱ��10ֻ<rèͷӥ>�Ϳ����ˡ�")
	MisResultTalk("<t>̫��л���ˣ�������������˯�����Ⱦ�����")
	MisResultCondition(NoRecord, 602)
	MisResultCondition(HasMission, 602)
	MisResultCondition(HasFlag, 602, 19 )
	MisResultAction(ClearMission, 602)
	MisResultAction(SetRecord, 602)
	MisResultAction(AddExp, 1000, 1000)
	MisResultAction(AddMoney,285,285)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 224 )	
	TriggerAction( 1, AddNextFlag, 602, 10, 10 )
	RegCurTrigger( 6021 )


-----------------------------------ѧ��èͷӥ
	DefineMission( 603, "ѧ��èͷӥ", 603 )
	
	MisBeginTalk( "<t>�ң���һ�����ۻ��ˡ��������쾹Ȼ����<rèͷӥ>��צ����ץ��һ���飬���ѵ����ڿ�������̫�����ˣ�<n><t>�鷳��ȡ5��<yèͷӥצ��>�����������о��о�����������<n><t><rèͷӥ>һ�㶼�� ��1384,3065�� ������û��" )
	MisBeginCondition(LvCheck, ">", 20 )
	MisBeginCondition(NoMission, 603)
	MisBeginCondition(NoRecord, 603)
	MisBeginAction(AddMission, 603)
	MisBeginAction(AddTrigger, 6031, TE_GETITEM, 4432, 5 )
	MisCancelAction(ClearMission, 603)

	MisNeed(MIS_NEED_ITEM, 4432, 5, 10, 5)
	
	MisHelpTalk("<t>ֻҪ5��<yèͷӥצ��>���Ҿ��ܷ���������")
	MisResultTalk("<t>���������<rèͷӥ>�������ط���һ���������ûʲô�ر�����֣��ѵ��������ۻ��ˣ�")
	MisResultCondition(NoRecord, 603)
	MisResultCondition(HasMission, 603)
	MisResultCondition(HasItem, 4432, 5)
	MisResultAction(TakeItem, 4432, 5 )
	MisResultAction(ClearMission, 603)
	MisResultAction(SetRecord, 603)
	MisResultAction(AddExp, 1000, 1000)
	MisResultAction(AddMoney,571,571)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4432 )	
	TriggerAction( 1, AddNextFlag, 603, 10, 5 )
	RegCurTrigger( 6031 )

-----------------------------------��թ��èͷӥ
	DefineMission( 604, "��թ��èͷӥ", 604 )
	
	MisBeginTalk( "<t>�Բ��𣬿��Ե�����һ������ǰ���������濴��ʱ��һֻ<rèͷӥ>ӭ��������ץ�˼�ҳ��ͷ����ˡ�<n><t>�����èͷӥ���������ˣ���������������ҳȥ�����ˡ�<n><t>��������Һ���Ҫ�����ܰ��Ұ��⼸ҳ<yɢ�����ҳ>ȡ�����𣿣��������èͷӥ�������ҵ���ɢ�����ҳ������ϸ����èͷӥ��û�ĵط����ң����ǵ��ѿ��ܾ���ĳ�����ϡ���" )
	MisBeginCondition(LvCheck, ">", 21 )
	MisBeginCondition(NoMission, 604)
	MisBeginCondition(NoRecord, 604)
	MisBeginAction(AddMission, 604)
	MisBeginAction(AddTrigger, 6041, TE_GETITEM, 4086, 5 )
	MisCancelAction(ClearMission, 604)

	MisNeed(MIS_NEED_ITEM, 4086, 5, 10, 5)
	
	MisHelpTalk("<t>��Щȡ���ҵ���ҳ�ɣ�")
	MisResultTalk("<t>̫���ˣ�лл�㡣")
	MisResultCondition(NoRecord, 604)
	MisResultCondition(HasMission, 604)
	MisResultCondition(HasItem, 4086, 5)
	MisResultAction(TakeItem, 4086, 5 )
	MisResultAction(ClearMission, 604)
	MisResultAction(SetRecord, 604)
	MisResultAction(AddExp, 1100, 1100)
	MisResultAction(AddMoney,300,300)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4086 )	
	TriggerAction( 1, AddNextFlag, 604, 10, 5 )
	RegCurTrigger( 6041 )

-----------------------------------����β���ջ�
	DefineMission( 605, "����β���ջ�", 605 )
	
	MisBeginTalk( "<t>��������������������һ��Ҫ��Ӧ�ң�<n><t>��ģ����Ӧ�ˣ���ô����ҽ�5��<y�����β>�����ɣ��Ҷ���<r������>��������ˮ�أ�<n><t><r������>�����ǵ�β���ڣ�1384,3065�� ��������Ŷ�� " )
	MisBeginCondition(LvCheck, ">", 22 )
	MisBeginCondition(NoMission, 605)
	MisBeginCondition(NoRecord, 605)
	MisBeginAction(AddMission, 605)
	MisBeginAction(AddTrigger, 6051, TE_GETITEM, 4433, 5 )
	MisCancelAction(ClearMission, 605)

	MisNeed(MIS_NEED_ITEM, 4433, 5, 10, 5)
	
	MisHelpTalk("<t><t>���Ӧ�Ұ���ȡ<y�����β>�����ܷ���Ŷ��")
	MisResultTalk("<t>�٣�������ģ���Щ<r������>�ò���Թ���������ǵ�β�Ͱɣ��Ǻǡ�")
	MisResultCondition(NoRecord, 605)
	MisResultCondition(HasMission, 605)
	MisResultCondition(HasItem, 4433, 5)
	MisResultAction(TakeItem, 4433, 5 )
	MisResultAction(ClearMission, 605)
	MisResultAction(SetRecord, 605)
	MisResultAction(AddExp, 1300, 1300)
	MisResultAction(AddMoney,632,632)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4433 )	
	TriggerAction( 1, AddNextFlag, 605, 10, 5 )
	RegCurTrigger( 6051 )

-----------------------------------������ķ���
	DefineMission( 606, "������ķ���", 606 )
	
	MisBeginTalk( "<t>�������ƿ���������һ������ô��Щ<r������>���ܵ���Ժ�����������ˣ�<n><t>�㿴����������ô�󣬳���б�����ܵ���Ժ������ƻ�������ô�ܵ��ˣ�<n><t>�鷳��ɱ��10ֻ���ҵ�<r������>������������ ��1384,3065�� �������ƻ��أ� " )
	MisBeginCondition(LvCheck, ">", 22 )
	MisBeginCondition(HasRecord, 605)
	MisBeginCondition(NoMission, 606)
	MisBeginCondition(NoRecord, 606)
	MisBeginAction(AddMission, 606)
	MisBeginAction(AddTrigger, 6061, TE_KILL, 264, 10 )
	MisCancelAction(ClearMission, 606)

	MisNeed(MIS_NEED_KILL, 264, 10, 10, 10)
	
	MisHelpTalk("<t>����ɱ10ֻ������Ϳ����ˡ�")
	MisResultTalk("<t>�ţ���Щ�ҵ�Ժ�����徻���ˣ�лл")
	MisResultCondition(NoRecord, 606)
	MisResultCondition(HasMission, 606)
	MisResultCondition(HasFlag, 606, 19 )
	MisResultAction(ClearMission, 606)
	MisResultAction(SetRecord, 606)
	MisCancelAction(ClearMission, 607)
	MisResultAction(AddExp, 1300, 1300)
	MisResultAction(AddMoney,316,316)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 264 )	
	TriggerAction( 1, AddNextFlag, 606, 10, 10 )
	RegCurTrigger( 6061 )

-----------------------------------�����ж�
	DefineMission( 607, "�����ж�", 607 )
	
	MisBeginTalk( "<t>�٣����ѣ����ŵ�һ����ֵ�ζ������Ŷ���϶��Ǹ�����<r�����>ɢ�������ġ�<n><t>��Щ�������Щ�Ź֣����ٷ������ζ��������ɢ����һ�ɹ�ζ����ó������ǡ�<n><t>�鷳����ɱ10ֻ<r�����>���𣿾�˵<r�����>ֻ������ ��1414,2896�� ������ " )
	MisBeginCondition(HasRecord, 608)
	MisBeginCondition(LvCheck, ">", 23 )
	MisBeginCondition(NoMission, 607)
	MisBeginCondition(NoRecord, 607)
	MisBeginAction(AddMission, 607)
	MisBeginAction(AddTrigger, 6071, TE_KILL, 295, 10 )
	MisCancelAction(ClearMission, 607)

	MisNeed(MIS_NEED_KILL, 295, 10, 10, 10)
	
	MisHelpTalk("<t>��ô�򵥵�������Ҳ�겻���𣿿�ȥ��ɱ10ֻ<r�����>��")
	MisResultTalk("<t>�������治��")
	MisResultCondition(NoRecord, 607)
	MisResultCondition(HasMission, 607)
	MisResultCondition(HasFlag, 607, 19 )
	MisResultAction(ClearMission, 607)
	MisResultAction(SetRecord, 607)
	MisResultAction(AddExp, 1500, 1500)
	MisResultAction(AddMoney,332,332)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 295 )	
	TriggerAction( 1, AddNextFlag, 607, 10, 10 )
	RegCurTrigger( 6071 )

-----------------------------------��������
	DefineMission( 608, "��������", 608 )
	
	MisBeginTalk( "<t>����Ϊ<r������>ͻȻ�������ЩͻȻɢ��������ζ����<r�����>�кܶ��ϵ��<n><t>���һ�ȱ��֤�ݣ�����ȥ�����ռ�5��<r�����>��<y��������>�����о�һ�����ǵĽṹ�𣿾�˵<r�����>ֻ������ ��1414,2896�� ������ " )
	MisBeginCondition(LvCheck, ">", 24 )
	MisBeginCondition(NoMission, 608)
	MisBeginCondition(NoRecord, 608)
	MisBeginAction(AddMission, 608)
	MisBeginAction(AddTrigger, 6081, TE_GETITEM, 4460, 5 )
	MisCancelAction(ClearMission, 608)

	MisNeed(MIS_NEED_ITEM, 4460, 5, 10, 5)
	
	MisHelpTalk("<t>�ҵ�5��<y��������>����")
	MisResultTalk("<t>ԭ����ˣ���<��������>��ζ��ʹ������<r������>�����ˣ�")
	MisResultCondition(NoRecord, 608)
	MisResultCondition(HasMission, 608)
	MisResultCondition(HasItem, 4460, 5)
	MisResultAction(TakeItem, 4460, 5 )
	MisResultAction(ClearMission, 608)
	MisResultAction(SetRecord, 608)
	MisResultAction(AddExp, 1500, 1500)
	MisResultAction(AddMoney,664,664)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4460 )	
	TriggerAction( 1, AddNextFlag, 608, 10, 5 )
	RegCurTrigger( 6081 )

-----------------------------------��ʧ�Ľ��
	DefineMission( 609, "��ʧ�Ľ��", 609 )
	
	MisBeginTalk( "<t>���ѣ�����֪���ҵģ���һ���Ǹ��������ˣ�����Щ<rɽ��>Ϊʲôƫƫ�����ҵ�Ǯ�����ҵĽ�Ҵ��������ߣ�<n><t>���ѣ��Ҵ򲻹���һ�����ˣ�������ֻ�����㵽ɽ��������ҵ�<y��Ҵ�>ȡ�����ˣ�<n><t>����˵��Щɽ�����ǰ����������Ķ�����������Ӫ�����ľ������Ҫ��ϸ���ҿ�����" )
	MisBeginCondition(LvCheck, ">", 24 )
	MisBeginCondition(NoMission, 609)
	MisBeginCondition(NoRecord, 609)
	MisBeginAction(AddMission, 609)
	MisBeginAction(AddTrigger, 6091, TE_GETITEM, 4087, 1 )
	MisCancelAction(ClearMission, 609)

	MisNeed(MIS_NEED_ITEM, 4087, 1, 10, 1)
	
	MisHelpTalk("<t><rɽ��>���ܰ��ҵ�<y��Ҵ�>����Ǯ�����ˣ�����ϸ���ҡ�")
	MisResultTalk("<t>�����ҵľ������˰���<n><t>û����İ�æ���ҿɲ�֪������ô����ȥ��")
	MisResultCondition(NoRecord, 609)
	MisResultCondition(HasMission, 609)
	MisResultCondition(HasItem, 4087, 1)
	MisResultAction(TakeItem, 4087, 1 )
	MisResultAction(ClearMission, 609)
	MisResultAction(SetRecord, 609)
	MisResultAction(AddExp, 1800, 1800)
	MisResultAction(AddMoney,1394,1394)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4087 )	
	TriggerAction( 1, AddNextFlag, 609, 10, 1 )
	RegCurTrigger( 6091 )


-----------------------------------�ɶ��ɽ��
	DefineMission( 610, "�ɶ��ɽ��", 610 )
	
	MisBeginTalk( "<t>�٣����ѣ��ֵ����չ���ֵ�ʱ���ˣ�һȺ�׶��<rɽ��>Ǳ�����⸽�����Ż����ٹ�·�˵Ľ�Һͻ��<n><t>��켩��10��<rɽ��>�����������������Ͱɣ�<n><t>��Щ������ɽ���� ��1043,3066�� ������û�� " )
	MisBeginCondition(LvCheck, ">", 24 )
	MisBeginCondition(NoMission, 610)
	MisBeginCondition(NoRecord, 610)
	MisBeginAction(AddMission, 610)
	MisBeginAction(AddTrigger, 6101, TE_KILL, 93, 10 )
	MisCancelAction(ClearMission, 610)

	MisNeed(MIS_NEED_KILL, 93, 10, 10, 10)
	
	MisHelpTalk("<t>������10��<rɽ��>�������ͽ�ɣ�")
	MisResultTalk("<t>�٣��ɵ�Ư������ЩǮ����Ӧ�õı��꣡")
	MisResultCondition(NoRecord, 610)
	MisResultCondition(HasMission, 610)
	MisResultCondition(HasFlag, 610, 19 )
	MisResultAction(ClearMission, 610)
	MisResultAction(SetRecord, 610)
	MisResultAction(AddExp, 1800, 1800)
	MisResultAction(AddMoney,348,348)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 93 )	
	TriggerAction( 1, AddNextFlag, 610, 10, 10 )
	RegCurTrigger( 6101 )


-----------------------------------���������
	DefineMission( 611, "���������", 611 )
	
	MisBeginTalk( "<t>��˵<r������>���ּ����ǻ۵Ļ���������������������衣<n><t>��û�������ֳ���������ʵ�ڲ����������ִ��ԡ�<n><t>�鷳��ȡ��2��<y�����޼��>�������о��о����𣿴������������صĻ������� ��1414,2896�� ������ " )
	MisBeginCondition(LvCheck, ">", 25 )
	MisBeginCondition(NoMission, 611)
	MisBeginCondition(NoRecord, 611)
	MisBeginAction(AddMission, 611)
	MisBeginAction(AddTrigger, 6111, TE_GETITEM, 4088, 2 )
	MisCancelAction(ClearMission, 611)

	MisNeed(MIS_NEED_ITEM, 4088, 2, 10, 2)
	
	MisHelpTalk("<t>ֻҪ2��<y�����޼��>�ͺá�")
	MisResultTalk("<t>лл�㣡��������ҾͿ��Ժú��о��о���")
	MisResultCondition(NoRecord, 611)
	MisResultCondition(HasMission, 611)
	MisResultCondition(HasItem, 4088, 2)
	MisResultAction(TakeItem, 4088, 2 )
	MisResultAction(ClearMission, 611)
	MisResultAction(SetRecord, 611)
	MisResultAction(AddExp, 2000, 2000)
	MisResultAction(AddMoney,730,730)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4088 )	
	TriggerAction( 1, AddNextFlag, 611, 10, 2 )
	RegCurTrigger( 6111 )

-----------------------------------��������
	DefineMission( 612, "��������", 612 )
	
	MisBeginTalk( "<t>���ɴ�½�ϵ����ǳƺ�<r������>Ϊ��������Ϊ������Ŀ���������������趯����̵Ļ�֦������ʮ�ֺ��ˡ�<n><t>��ϣ�����ܰ�æ��ȥ20��<t������>��������ľ����ܹ���������������������صĻ������� ��1414,2896�� ������ " )
	MisBeginCondition(LvCheck, ">", 25 )
	MisBeginCondition(NoMission, 612)
	MisBeginCondition(NoRecord, 612)
	MisBeginAction(AddMission, 612)
	MisBeginAction(AddTrigger, 6121, TE_KILL, 85, 20 )
	MisCancelAction(ClearMission, 612)

	MisNeed(MIS_NEED_KILL, 85, 20, 10, 20)
	
	MisHelpTalk("<t>ֻҪ����20��<r������>�Ϳ����ˡ�")
	MisResultTalk("<t>�٣���ɵò�������ľ��񶼽���л�㡣")
	MisResultCondition(NoRecord, 612)
	MisResultCondition(HasMission, 612)
	MisResultCondition(HasFlag, 612, 29 )
	MisResultAction(ClearMission, 612)
	MisResultAction(SetRecord, 612)
	MisResultAction(AddExp, 2000, 2000)
	MisResultAction(AddMoney,365,365)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 85 )	
	TriggerAction( 1, AddNextFlag, 612, 10, 20 )
	RegCurTrigger( 6121 )


-----------------------------------�������
	DefineMission( 613, "�������", 613 )
	
	MisBeginTalk( "<t>�٣����ѣ�����������ʱ���������ھٰ�һ��������ı�������أ�<n><t>ֻҪ���10ֻ<rȭ������>���н��������Ŷ��<n><t>����������ȱ���֣����Լ�ȥ���𣿲����ص��� ��1117,2923�� ������ " )
	MisBeginCondition(HasRecord, 614 )
	MisBeginCondition(LvCheck, ">", 26 )
	MisBeginCondition(NoMission, 613)
	MisBeginCondition(NoRecord, 613)
	MisBeginAction(AddMission, 613)
	MisBeginAction(AddTrigger, 6131, TE_KILL, 76, 10 )
	MisCancelAction(ClearMission, 613)

	MisNeed(MIS_NEED_KILL, 76, 10, 10, 10)
	
	MisHelpTalk("<t>Ҫ��10ֻ<rȭ������>���н�����Ŷ��")
	MisResultTalk("<t>Ŷ���治����Щ����������ˣ�")
	MisResultCondition(NoRecord, 613)
	MisResultCondition(HasMission, 613)
	MisResultCondition(HasFlag, 613, 19 )
	MisResultAction(ClearMission, 613)
	MisResultAction(SetRecord, 613)
	MisResultAction(AddExp, 2300, 2300)
	MisResultAction(AddMoney,382,382)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 76 )	
	TriggerAction( 1, AddNextFlag, 613, 10, 10 )
	RegCurTrigger( 6131 )

-----------------------------------ȭ������
	DefineMission( 614, "ȭ������", 614 )
	
	MisBeginTalk( "<t>���ѣ����԰��Ҹ�æ�𣿹���������ҵܵ������ˣ�����Ҫһ��<yȭ������>���������<n><t>�����ɽҰ�����������ⶫ���أ�û�취����ֻ������ȥ��һ��<rȭ������>��<yȭ������>������<n><t>��Ը��������æ����˵��Щ<rȭ������>���� ��1117,2923�� ��������̨���أ�����Ǹ��û���Ŷ��" )
	MisBeginCondition(LvCheck, ">", 26 )
	MisBeginCondition(NoMission, 614)
	MisBeginCondition(NoRecord, 614)
	MisBeginAction(AddMission, 614)
	MisBeginAction(AddTrigger, 6141, TE_GETITEM, 4435, 1 )
	MisCancelAction(ClearMission, 614)

	MisNeed(MIS_NEED_ITEM, 4435, 1, 10, 1)
	
	MisHelpTalk("<t>��ֻҪһ��<yȭ������>�͹��ˣ�")
	MisResultTalk("<t>лл�㣡����Ϊ��Ϊ�һ�����һ��ǿ����")
	MisResultCondition(NoRecord, 614)
	MisResultCondition(HasMission, 614)
	MisResultCondition(HasItem, 4435, 1)
	MisResultAction(TakeItem, 4435, 1 )
	MisResultAction(ClearMission, 614)
	MisResultAction(SetRecord, 614)
	MisResultAction(AddExp, 2300, 2300)
	MisResultAction(AddMoney,382,382)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4435 )	
	TriggerAction( 1, AddNextFlag, 614, 10, 1 )
	RegCurTrigger( 6141 )

-----------------------------------��ԭ�������
	DefineMission( 615, "��ԭ�������", 615 )
	
	MisBeginTalk( "<t>������<r�����ԭ��>��һ�����������̵���Ȼ����Ҿ��𼱡�<n><t>���Ǽ�ֱ�������˷�ʱ�䣡<n><t>�Һ޲��ܰ����ǿ���ߣ�Ŷ��������������Ͳ��ô��ڣ�<n><t>�����ȥɱ��10ֻ<r�����ԭ��>����Щ�����ļһ��Ƕ����˰�������ˣ����� ��1198,3116�� ���������� " )
	MisBeginCondition(LvCheck, ">", 27 )
	MisBeginCondition(NoMission, 615)
	MisBeginCondition(NoRecord, 615)
	MisBeginAction(AddMission, 615)
	MisBeginAction(AddTrigger, 6151, TE_KILL, 135, 10 )
	MisCancelAction(ClearMission, 615)

	MisNeed(MIS_NEED_KILL, 135, 10, 10, 10)
	
	MisHelpTalk("<t>ɱɱɱ��ɱ��<r�����ԭ��>��")
	MisResultTalk("<t>Ŷ��������ʹ����ˣ�лл��Ŷ��")
	MisResultCondition(NoRecord, 615)
	MisResultCondition(HasMission, 615)
	MisResultCondition(HasFlag, 615, 19 )
	MisResultAction(ClearMission, 615)
	MisResultAction(SetRecord, 615)
	MisResultAction(AddExp, 2600, 2600)
	MisResultAction(AddMoney,400,400)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 135 )	
	TriggerAction( 1, AddNextFlag, 615, 10, 10 )
	RegCurTrigger( 6151 )

-----------------------------------͵�Թ���
	DefineMission( 616, "͵�Թ���", 616 )
	
	MisBeginTalk( "<t>�٣����ѣ��Ҹ���������ܣ�<r�����ԭ��>�����������ϵļ�Ǯ�ɸ��ˣ�<n><t>�������ҿ�Ӧ����������Ȼ���<n><t>�鷳��ȥ<r�����ԭ��>���ѵĵط�͵10��<y����>��<n><t>��ʱ������Ǯ���ҷ���һ����Σ���˵�������� ��1198,3116�� ����������<n><t> ��ֻҪ�ڳ����ԭ�������������ϸ���ң���һ�����ڲݴ����ҵ����ǵĳ�Ѩ�����Ѷ��������ء���" )
	MisBeginCondition(LvCheck, ">", 27 )
	MisBeginCondition(NoMission, 616)
	MisBeginCondition(NoRecord, 616)
	MisBeginAction(AddMission, 616)
	MisBeginAction(AddTrigger, 6161, TE_GETITEM, 4089, 10 )
	MisCancelAction(ClearMission, 616)

	MisNeed(MIS_NEED_ITEM, 4089, 10, 10, 10)
	
	MisHelpTalk("<t>10�������û���������Ҫ����׬ǮŶ��")
	MisResultTalk("<t>�ٺ٣����¿ɷ����ˣ�лл���æ���´������ֲ��£��һ�������Ŷ��")
	MisResultCondition(NoRecord, 616)
	MisResultCondition(HasMission, 616)
	MisResultCondition(HasItem, 4089, 10)
	MisResultAction(TakeItem, 4089, 10 )
	MisResultAction(ClearMission, 616)
	MisResultAction(SetRecord, 616)
	MisResultAction(AddExp, 2600, 2600)
	MisResultAction(AddMoney,400,400)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4089 )	
	TriggerAction( 1, AddNextFlag, 616, 10, 10 )
	RegCurTrigger( 6161 )

-----------------------------------��˽���
	DefineMission( 617, "��˽���", 617 )
	
	MisBeginTalk( "<t>ǰЩ���ӣ�����<r�����ԭ��>��<y����>���˲��ٲ�ԭ�꣬���˴��Ǯ��<n><t>�����г����������й���ˡ�<n><t>�鷳��ȥ�ռ�5��<y��õĹ��>����������׼����������˽��<p���Ǳ�>ȥ��<n><t>��Щ�һ�Ҳ�湻���ģ������� ��1198,3116�� ������" )
	MisBeginCondition(HasRecord, 616)
	MisBeginCondition(LvCheck, ">", 28 )
	MisBeginCondition(NoMission, 617)
	MisBeginCondition(NoRecord, 617)
	MisBeginAction(AddMission, 617)
	MisBeginAction(AddTrigger, 6171, TE_GETITEM, 4465, 5 )
	MisCancelAction(ClearMission, 617)

	MisNeed(MIS_NEED_ITEM, 4465, 5, 10, 5)
	
	MisHelpTalk("<t>�켯��5��<y��õĹ��>����Ŷ��")
	MisResultTalk("<t>�٣�������Ч�ʣ�лл����")
	MisResultCondition(NoRecord, 617)
	MisResultCondition(HasMission, 617)
	MisResultCondition(HasItem, 4465, 5)
	MisResultAction(TakeItem, 4465, 5 )
	MisResultAction(ClearMission, 617)
	MisResultAction(SetRecord, 617)
	MisResultAction(AddExp, 3000, 3000)
	MisResultAction(AddMoney,835,835)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4465 )	
	TriggerAction( 1, AddNextFlag, 617, 10, 5 )
	RegCurTrigger( 6171 )

-----------------------------------а�������
	DefineMission( 618, "а�������", 618 )
	
	MisBeginTalk( "<t>�ٺ٣����ѣ���͵͵�����㣬����Һ���������ѧ��һ�ֶ񶾵����䣬��Ҫ�����������ҵĳ���<b������>��<n><t>�����أ������ڻ�����һζ<y���������>���鷳���<rҰ��>���ϰ�10ֻ<y���������>����������������䣡<n><t>����<rҰ��>ֻ������ ��910,2971�� ������")
	MisBeginCondition(LvCheck, ">", 28 )
	MisBeginCondition(NoMission, 618)
	MisBeginCondition(NoRecord, 618)
	MisBeginAction(AddMission, 618)
	MisBeginAction(AddTrigger, 6181, TE_GETITEM, 4443, 10 )
	MisCancelAction(ClearMission, 618)

	MisNeed(MIS_NEED_ITEM, 4443, 10, 10, 10)
	
	MisHelpTalk("<t>��Ҫ10ֻ<y���������>����һֻ��һֻ�����С�")
	MisResultTalk("<t>���ף��ػ𣡱��䣡�������������ˣ�<b������>������������ˣ�")
	MisResultCondition(NoRecord, 618)
	MisResultCondition(HasMission, 618)
	MisResultCondition(HasItem, 4443, 10)
	MisResultAction(TakeItem, 4443, 10 )
	MisResultAction(ClearMission, 618)
	MisResultAction(SetRecord, 618)
	MisResultAction(AddExp, 3000, 3000)
	MisResultAction(AddMoney,835,835)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4443 )	
	TriggerAction( 1, AddNextFlag, 618, 10, 10 )
	RegCurTrigger( 6181 )

-----------------------------------Ұ�������
	DefineMission( 619, "Ұ�������", 619 )
	
	MisBeginTalk( "<t>�����Һ���<rҰ��>�ˣ���Щ�һ�����ڸ�ʲô�����ռ����˶���<n><t>���������ӳ����׳�������Ϊ��Ĺ�����̣�һȺһȺ���ܵ����������У�<n><t>���ȥɱ��10ֻ<rҰ��>�������ﰲ��һ�°ɣ�<n><t>������������ ��910,2971�� ���������أ�")
	MisBeginCondition(HasRecord, 618)
	MisBeginCondition(LvCheck, ">", 29 )
	MisBeginCondition(NoMission, 619)
	MisBeginCondition(NoMission, 620)
	MisBeginCondition(NoRecord, 619)
	MisBeginAction(AddMission, 619)
	MisBeginAction(AddTrigger, 6191, TE_KILL, 64, 10 )
	MisCancelAction(ClearMission, 619)

	MisNeed(MIS_NEED_KILL, 64, 10, 10, 10)
	
	MisHelpTalk("<t>�Ͻ�ɱ����Щ����������յ�<rҰ��>�ɣ�")
	MisResultTalk("<t>Ŷ�������徻���ˣ�лл��Ŷ��")
	MisResultCondition(NoRecord, 619)
	MisResultCondition(HasMission, 619)
	MisResultCondition(HasFlag, 619, 19 )
	MisResultAction(ClearMission, 619)
	MisResultAction(SetRecord, 619)
	MisResultAction(AddExp, 3400, 3400)
	MisResultAction(AddMoney,424,424)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 64 )	
	TriggerAction( 1, AddNextFlag, 619, 10, 10 )
	RegCurTrigger( 6191 )

-----------------------------------��սҰ��
	DefineMission( 620, "��սҰ��", 620 )
	
	MisBeginTalk( "<t>���ѣ������է�����벻�����������֤���Լ���ʵ���أ����и������⡣<n><t>��������Ƕ���������Щ�Ĵ��ε���<rҰ��>�������ֺ���<rҰ��>�������������������ǡ�<n><t>�����ȥɱ��5ֻ<rҰ��>��֤���Լ���ʵ����<n><t>���������Լ���Ӣ�۵Ļ�����ȥ ��911,2973�� ���������ǵ���ɫ���ưɣ�")
	MisBeginCondition(LvCheck, ">", 29 )
	MisBeginCondition(NoMission, 620)
	MisBeginCondition(NoMission, 619)
	MisBeginCondition(NoRecord, 620)
	MisBeginAction(AddMission, 620)
	MisBeginAction(AddTrigger, 6201, TE_KILL, 64, 5 )
	MisCancelAction(ClearMission, 620)

	MisNeed(MIS_NEED_KILL, 64, 5, 10, 5)
	
	MisHelpTalk("<t>Ҫɱ��5ֻ<rҰ��>����������֤�����ʵ����")
	MisResultTalk("<t>�٣����ѣ���ɵ��治��")
	MisResultCondition(NoRecord, 620)
	MisResultCondition(HasMission, 620)
	MisResultCondition(HasFlag, 620, 14 )
	MisResultAction(ClearMission, 620)
	MisResultAction(SetRecord, 620)
	MisResultAction(AddExp, 3400, 3400)
	MisResultAction(AddMoney,424,424)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 64 )	
	TriggerAction( 1, AddNextFlag, 620, 10, 5 )
	RegCurTrigger( 6201 )

-----------------------------------����ҩ��
	DefineMission( 621, "����ҩ��", 621 )
	
	MisBeginTalk( "t>�������ѣ������������·��Ū����һ������ҩ�ġ�<n><t>������Ӧ�����ϰ�����ҩ�Ľ�������վȥ��ֿ�Ŀ��ա�<n><t>����������ʲôȥ�أ�<n><t>�����͵�����������ң�ȥ<r��ԭ¹>��û�Ĳ�ԭժ6��<y���ҩ��>������Ƭ��ԭ�����أ����� �������ˣ�<n><t>���� ��1360,2683�� ������")
	MisBeginCondition(LvCheck, ">", 29 )
	MisBeginCondition(NoMission, 621)
	MisBeginCondition(NoRecord, 621)
	MisBeginAction(AddMission, 621)
	MisBeginAction(AddTrigger, 6211, TE_GETITEM, 4090, 6 )
	MisCancelAction(ClearMission, 621)

	MisNeed(MIS_NEED_ITEM, 4090, 6, 10, 6)
	
	MisHelpTalk("<t>�ҵ�6��<y���ҩ��>����")
	MisResultTalk("<t>ร���Ĵ�������û������������̫��л���ˣ�")
	MisResultCondition(NoRecord, 621)
	MisResultCondition(HasMission, 621)
	MisResultCondition(HasItem, 4090, 6)
	MisResultAction(TakeItem, 4090, 6 )
	MisResultAction(ClearMission, 621)
	MisResultAction(SetRecord, 621)
	MisResultAction(AddExp, 3400, 3400)
	MisResultAction(AddMoney,424,424)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4090 )	
	TriggerAction( 1, AddNextFlag, 621, 10, 6 )
	RegCurTrigger( 6211 )

-----------------------------------��ԭ¹������
	DefineMission( 622, "��ԭ¹������", 622 )
	
	MisBeginTalk( "<t>�Ҳ����ף�Ϊʲô�����<r��ԭ¹>�ȱ�ĵط���½�ܵö��죬���ҷ�ӦҲ��������أ�<n><t>�鷳��ȥ�ռ�5��<y��Ӳ¹��>������ȥ���������׺ͱ��¹��ʲô��ͬ�����������ݵĶ������������ ��1360,2683�� ������")
	MisBeginCondition(LvCheck, ">", 30 )
	MisBeginCondition(NoMission, 622)
	MisBeginCondition(NoRecord, 622)
	MisBeginAction(AddMission, 622)
	MisBeginAction(AddTrigger, 6221, TE_GETITEM, 4372, 5 )
	MisCancelAction(ClearMission, 622)

	MisNeed(MIS_NEED_ITEM, 4372, 5, 10, 5)
	
	MisHelpTalk("<t>��Ҫ��5��<y��Ӳ¹��>�أ���ô��û������")
	MisResultTalk("<t>������ʲô��û�����������������ͱ��¹��һģһ������")
	MisResultCondition(NoRecord, 622)
	MisResultCondition(HasMission, 622)
	MisResultCondition(HasItem, 4372, 5)
	MisResultAction(TakeItem, 4372, 5 )
	MisResultAction(ClearMission, 622)
	MisResultAction(SetRecord, 622)
	MisResultAction(AddExp, 3800, 3800)
	MisResultAction(AddMoney,863,863)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4372 )	
	TriggerAction( 1, AddNextFlag, 622, 10, 5 )
	RegCurTrigger( 6221 )

-----------------------------------¹Ƥ����
	DefineMission( 623, "¹Ƥ����", 623 )
	
	MisBeginTalk( "<t>�٣����ѣ�������˵������ǰ�Ǹ����۲��۵Ĵ󺣵����������ڽܿ˺����Ŵ���˲��ܵ���������<n><t>��������Ҫ��<y�ϵ�¹Ƥ>���Ƴɵ��ϵ�¹Ƥ���£�����������ȥȡ5��<y�ϵ�¹Ƥ>�����ġ�<n><t>Ϊʲô����Ϊ�㲻ȥ���ҿɾ�Ҫ�ݺݽ�ѵ���ˣ�<n><t>ȥ ��1360,2683�� ����ɱ��<r��ԭ¹>�Ϳ��Եõ�<y�ϵ�¹Ƥ>����ȥ��")
	MisBeginCondition(LvCheck, ">", 30 )
	MisBeginCondition(NoMission, 623)
	MisBeginCondition(NoRecord, 623)
	MisBeginAction(AddMission, 623)
	MisBeginAction(AddTrigger, 6231, TE_GETITEM, 4091, 5 )
	MisCancelAction(ClearMission, 623)

	MisNeed(MIS_NEED_ITEM, 4091, 5, 10, 5)
	
	MisHelpTalk("<t>��ȥ��5��<y�ϵ�¹Ƥ>����Ȼ�����㣡")
	MisResultTalk("<t>�Ǻǣ�����ֽŻ������䣬���ò���")
	MisResultCondition(NoRecord, 623)
	MisResultCondition(HasMission, 623)
	MisResultCondition(HasItem, 4091, 5)
	MisResultAction(TakeItem, 4091, 5 )
	MisResultAction(ClearMission, 623)
	MisResultAction(SetRecord, 623)
	MisResultAction(AddExp, 3800, 3800)
	MisResultAction(AddMoney,863,863)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4091 )	
	TriggerAction( 1, AddNextFlag, 623, 10, 5 )
	RegCurTrigger( 6231 )

-----------------------------------ѩ��èͷӥ
	DefineMission( 624, "ѩ��èͷӥ", 624 )
	
	MisBeginTalk( "<t>Ŷ����������<rѩ��èͷӥ>�ˣ�������û��û�˵ؽУ�������ͷʹ���ѣ�<n><t>������ȥ���Ҿ�Ҫ��������ˣ��鷳��ɱ��5ֻ<rѩ��èͷӥ>�����Ҷ����徻���������Щ���ĵļһ������� ��1360,2683�� ������")
	MisBeginCondition(LvCheck, ">", 31 )
	MisBeginCondition(NoMission, 624)
	MisBeginCondition(NoRecord, 624)
	MisBeginAction(AddMission, 624)
	MisBeginAction(AddTrigger, 6241, TE_KILL, 225, 5 )
	MisCancelAction(ClearMission, 624)

	MisNeed(MIS_NEED_KILL, 225, 5, 10, 5)
	
	MisHelpTalk("<t>��ɱ��5ֻ<rѩ��èͷӥ>�Ϳ����ˡ�")
	MisResultTalk("<t>̫��л���ˣ��������ܰ����ع�һ�����ˡ�")
	MisResultCondition(NoRecord, 624)
	MisResultCondition(HasMission, 624)
	MisResultCondition(HasFlag, 624, 14 )
	MisResultAction(ClearMission, 624)
	MisResultAction(SetRecord, 624)
	MisResultAction(AddExp, 4300, 4300)
	MisResultAction(AddMoney,438,438)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 225 )	
	TriggerAction( 1, AddNextFlag, 624, 10, 5 )
	RegCurTrigger( 6241 )

-----------------------------------������Ϊ
	DefineMission( 625, "������Ϊ", 625 )
	
	MisBeginTalk( "<t>�٣����������ã�������Ҫ�����أ���֪����ǰ����Ū����һ��������ҩ�ģ���֪��Ϊʲô����ȫ����Ϊ<rѩ��èͷӥ>������<y���������>�Ŀ���������������ҩ����ȥ�����ˣ�<n><t>Ϊ�˱�����Щ<rѩ��èͷӥ>����Ҫ����ɱ�����ǣ�Ȼ�����5ֻ<y���������>���ң�<n><t>���ǵ��ϳ������� ��1360,2683�� ������")
	MisBeginCondition(LvCheck, ">", 31 )
	MisBeginCondition(HasRecord, 621)
	MisBeginCondition(NoMission, 625)
	MisBeginCondition(NoRecord, 625)
	MisBeginAction(AddMission, 625)
	MisBeginAction(AddTrigger, 6251, TE_GETITEM, 4451, 5 )
	MisCancelAction(ClearMission, 625)

	MisNeed(MIS_NEED_ITEM, 4451, 5, 10, 5)
	
	MisHelpTalk("<t><y5�����������>��ûŪ����")
	MisResultTalk("<t>������������Щ����������ʹ���ˣ�")
	MisResultCondition(NoRecord, 625)
	MisResultCondition(HasMission, 625)
	MisResultCondition(HasItem, 4451, 5)
	MisResultAction(TakeItem, 4451, 5 )
	MisResultAction(ClearMission, 625)
	MisResultAction(SetRecord, 625)
	MisResultAction(AddExp, 4300, 4300)
	MisResultAction(AddMoney,877,877)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4451 )	
	TriggerAction( 1, AddNextFlag, 625, 10, 5 )
	RegCurTrigger( 6251 )

-----------------------------------�����ԭ��
	DefineMission( 626, "�����ԭ��", 626 )
	
	MisBeginTalk( "<t><r��ԭ��>�������͵�����Ҵ���û���������Ǹ�����в���లȫ�����<n><t>��Ҫ����ɱ��5ֻ<r��ԭ��>��������Ⱥ����ȷ����һ�����İ�ȫ��<n><t>��Ⱥ�ƺ��Ѿ��ۼ��� ��1143,2705�� �����ˡ�<n><t>��ע�⣬��Щ����Ⱥ��Ⱥ�صģ�����ǧ��Ҫ����Χ�ˡ���")
	MisBeginCondition(LvCheck, ">", 32 )
	MisBeginCondition(NoMission, 626)
	MisBeginCondition(NoRecord, 626)
	MisBeginAction(AddMission, 626)
	MisBeginAction(AddTrigger, 6261, TE_KILL, 136, 5 )
	MisCancelAction(ClearMission, 626)

	MisNeed(MIS_NEED_KILL, 136, 5, 10, 5)
	
	MisHelpTalk("<t>��û��ɱ��5ֻ<r��ԭ��>��Ҫ�ӰѾ�������")
	MisResultTalk("<t>�٣���ɵò���")
	MisResultCondition(NoRecord, 626)
	MisResultCondition(HasMission, 626)
	MisResultCondition(HasFlag, 626, 14 )
	MisResultAction(ClearMission, 626)
	MisResultAction(SetRecord, 626)
	MisResultAction(AddExp, 4800, 4800)
	MisResultAction(AddMoney,446,446)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 136 )	
	TriggerAction( 1, AddNextFlag, 626, 10, 5 )
	RegCurTrigger( 6261 )


-----------------------------------���̵���ɱ
	DefineMission( 627, "���̵���ɱ", 627 )
	
	MisBeginTalk( "<t>��˵����ǰ�Ǹ��޶����ĺ�������������Ȼ�Ǹ��б��Ĵ󻵵���<n><t>�������<r��ԭ��>�ܲ�˳�ۣ���Ҫ��ɱ����Щ�ǣ�Ȼ����5ֻ<yѸ��֮צ>������װ�����ң�������������<n><t>��˵��Ⱥ������ ��1143,2705�� ������û��")
	MisBeginCondition(HasRecord, 623)
	MisBeginCondition(LvCheck, ">", 32 )
	MisBeginCondition(NoMission, 627)
	MisBeginCondition(NoRecord, 627)
	MisBeginAction(AddMission, 627)
	MisBeginAction(AddTrigger, 6271, TE_GETITEM, 4469, 5 )
	MisCancelAction(ClearMission, 627)

	MisNeed(MIS_NEED_ITEM, 4469, 5, 10, 5)
	
	MisHelpTalk("<t>��Ҫ��5ֻ<yѸ��֮צ>�أ���ȥŪ����")
	MisResultTalk("<t>�٣�ֻ�����ֶ�����������ҵ����ң�")
	MisResultCondition(NoRecord, 627)
	MisResultCondition(HasMission, 627)
	MisResultCondition(HasItem, 4469, 5)
	MisResultAction(TakeItem, 4469, 5 )
	MisResultAction(ClearMission, 627)
	MisResultAction(SetRecord, 627)
	MisResultAction(AddExp, 4800, 4800)
	MisResultAction(AddMoney,892,892)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4469 )	
	TriggerAction( 1, AddNextFlag, 627, 10, 5 )
	RegCurTrigger( 6271 )

-----------------------------------�������ǵĴ���
	DefineMission( 628, "�������ǵĴ���", 628 )
	
	MisBeginTalk( "<t>��һ�ȣ��������һ��æ�������ҹ����ͼҵıؾ�֮·�ϣ�����һȺ<r��������>��<n><t>���ǲ��������׼��˾ʹ��������ˣ�ֻ���ƺ�Զ��Զ��·�ؼҡ�<n><t>�����㣬������ɱ5ֻ<r��������>��������ƽ�����Һ�����Щ���������� ��1161,2639�� �����ε���")
	MisBeginCondition(LvCheck, ">", 33 )
	MisBeginCondition(NoMission, 628)
	MisBeginCondition(NoRecord, 628)
	MisBeginAction(AddMission, 628)
	MisBeginAction(AddTrigger, 6281, TE_KILL, 80, 5 )
	MisCancelAction(ClearMission, 628)

	MisNeed(MIS_NEED_KILL, 80, 5, 10, 5)
	
	MisHelpTalk("<t>�������Щ<r��������>����")
	MisResultTalk("<t>лл������̫��л���ˣ�")
	MisResultCondition(NoRecord, 628)
	MisResultCondition(HasMission, 628)
	MisResultCondition(HasFlag, 628, 14 )
	MisResultAction(ClearMission, 628)
	MisResultAction(SetRecord, 628)
	MisResultAction(AddExp, 5400, 5400)
	MisResultAction(AddMoney,453,453)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 80 )	
	TriggerAction( 1, AddNextFlag, 628, 10, 5 )
	RegCurTrigger( 6281 )

-----------------------------------����ħ��ʯ
	DefineMission( 629, "����ħ��ʯ", 629 )
	
	MisBeginTalk( "<t>�꣬����һ�����ܣ���������ң��Ҳ�ϣ���е�������֪����<n><t>�����㣬��<r��������>��Ϣ�ĵط������������<y����ħ��ʯ>����˵�Ǻ������һ�ֻ����Ŷ��<n><t>������ȥ����ȡ��3��<y����ħ��ʯ>���Һ������������ʯͷ������ ��1161,2639�� ���������ҵ���������Щ�ݴ������⣬��ϸһ����ܷ��֡�")
	MisBeginCondition(LvCheck, ">", 33 )
	MisBeginCondition(NoMission, 629)
	MisBeginCondition(NoRecord, 629)
	MisBeginAction(AddMission, 629)
	MisBeginAction(AddTrigger, 6291, TE_GETITEM, 4092, 3 )
	MisCancelAction(ClearMission, 629)

	MisNeed(MIS_NEED_ITEM, 4092, 3, 10, 3)
	
	MisHelpTalk("<t>Ҫ��֪������ȡ3��<y����ħ��ʯ>����Ŷ��")
	MisResultTalk("<t>Ŷ����������<y����ħ��ʯ>��лл��Ŷ��")
	MisResultCondition(NoRecord, 629)
	MisResultCondition(HasMission, 629)
	MisResultCondition(HasItem, 4092, 3)
	MisResultAction(TakeItem, 4092, 3 )
	MisResultAction(ClearMission, 629)
	MisResultAction(SetRecord, 629)
	MisResultAction(AddExp, 5400, 5400)
	MisResultAction(AddMoney,453,453)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4092 )	
	TriggerAction( 1, AddNextFlag, 629, 10, 3 )
	RegCurTrigger( 6291 )

-----------------------------------̽���ٶ���ţ
	DefineMission( 630, "̽���ٶ���ţ", 630 )
	
	MisBeginTalk( "<t>�Ҿ��ú����棬Ϊʲô<r�ٶ���ţ>���ж���ô�ٻ���ȴ��Σ��ʱ�����ܱܿ�Σ���أ��ѵ��������ϰ����״ﲻ�ɣ�<n><t>�鷳���<r�ٶ���ţ>����ȡ5��<y�̶̵���ţ����>����������ϸ�о��о���������һ�㶼�� ��1227,2742�� ������û��")
	MisBeginCondition(LvCheck, ">", 34 )
	MisBeginCondition(NoMission, 630)
	MisBeginCondition(NoRecord, 630)
	MisBeginAction(AddMission, 630)
	MisBeginAction(AddTrigger, 6301, TE_GETITEM, 4473, 5 )
	MisCancelAction(ClearMission, 630)

	MisNeed(MIS_NEED_ITEM, 4473, 5, 10, 5)
	
	MisHelpTalk("<t>����Ŷ����㼯��5��<y�̶̵���ţ����>Ŷ��")
	MisResultTalk("<t>Ŷ��ԭ����<y�̶̵���ţ����>�������ǵ��״�ѽ��")
	MisResultCondition(NoRecord, 630)
	MisResultCondition(HasMission, 630)
	MisResultCondition(HasItem, 4473, 5)
	MisResultAction(TakeItem, 4473, 5 )
	MisResultAction(ClearMission, 630)
	MisResultAction(SetRecord, 630)
	MisResultAction(AddExp, 6100, 6100)
	MisResultAction(AddMoney,923,923)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4473 )	
	TriggerAction( 1, AddNextFlag, 630, 10, 5 )
	RegCurTrigger( 6301 )

-----------------------------------�����̵ĳٶ���ţ
	DefineMission( 631, "�����̵ĳٶ���ţ", 631 )
	
	MisBeginTalk( "<t>�Ҳ�ϲ�������̵�<r�ٶ���ţ>��<n><t>���������Ƕ����������˷�����һ��������޲������Ǵ������������ʧ��<n><t>��֪�������ͷ����˽�������Ǹ�������������ˣ�ʱ������ҵĽ�Ǯ��<n><t>Ŷ���Ҿ���������������Ͳ��ô��ڡ�<n><t>ֻҪ�������ɱ��10ֻ<r�ٶ���ţ>���Ҿ͸���߶�Ľ����������Ǻ����Ѿ����� ��1227,2742�� �����˰ɡ�")
	MisBeginCondition(LvCheck, ">", 34 )
	MisBeginCondition(NoMission, 631)
	MisBeginCondition(NoRecord, 631)
	MisBeginAction(AddMission, 631)
	MisBeginAction(AddTrigger, 6311, TE_KILL, 127, 10 )
	MisCancelAction(ClearMission, 631)

	MisNeed(MIS_NEED_KILL, 127, 10, 10, 10)
	
	MisHelpTalk("<t>ɱɱɱ��ɱ��<r�ٶ���ţ>��")
	MisResultTalk("<t>Ŷ��������ʹ����ˣ�лл��Ŷ��")
	MisResultCondition(NoRecord, 631)
	MisResultCondition(HasMission, 631)
	MisResultCondition(HasFlag, 631, 19 )
	MisResultAction(ClearMission, 631)
	MisResultAction(SetRecord, 631)
	MisResultAction(AddExp, 6100, 6100)
	MisResultAction(AddMoney,461,461)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 127 )	
	TriggerAction( 1, AddNextFlag, 631, 10, 10 )
	RegCurTrigger( 6311 )


-----------------------------------����֮��
	DefineMission( 632, "����֮��", 632 )
	
	MisBeginTalk( "<t>�������ϵ�һ�ж�Դ��Ů�����Ķ��ݲŵ��Է��ܣ�Ȼ��ȴ����Щ��Υ����Ů��Ľ̵������˾����������ֻרע�ڼ����ķ�չ�ϡ�<n><t>�Ҿ���������������Գͷ���Щ���Ů����־���ˣ���ʹ����������Ҳ�������֮����<n><t>���ѣ��鷳��ȥ���ཬ������ȡ5֧<y��ֵ�����>���������������ʽ������Щ���������� ��934,2747�� ������")
	MisBeginCondition(LvCheck, ">", 35 )
	MisBeginCondition(NoMission, 632)
	MisBeginCondition(NoRecord, 632)
	MisBeginAction(AddMission, 632)
	MisBeginAction(AddTrigger, 6321, TE_GETITEM, 4450, 5 )
	MisCancelAction(ClearMission, 632)

	MisNeed(MIS_NEED_ITEM, 4450, 5, 10, 5)
	
	MisHelpTalk("<t>����Ҫ5֧<y��ֵ�����>�������������ʽ��")
	MisResultTalk("<t>лл��Ϊ������һ�У�")
	MisResultCondition(NoRecord, 632)
	MisResultCondition(HasMission, 632)
	MisResultCondition(HasItem, 4450, 5)
	MisResultAction(TakeItem, 4450, 5 )
	MisResultAction(ClearMission, 632)
	MisResultAction(SetRecord, 632)
	MisResultAction(AddExp, 6800, 6800)
	MisResultAction(AddMoney,939,939)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4450 )	
	TriggerAction( 1, AddNextFlag, 632, 10, 5 )
	RegCurTrigger( 6321 )

-----------------------------------���д�������
	DefineMission( 633, "���д�������", 633 )
	
	MisBeginTalk( "<t>�٣����ѣ����ã���������һ�����̵���������<n><t>һλ����͸¶�����Ĵ��������һֻ<r���д���>��������ϣ��������������ĵط�����<r���д���>���֣��������ؽ����<r���д���>��<n><t>ֻҪ����ɱ��10ֻ ��935,2687�� ������ <r���д���>�����ܵõ���۵Ļر���<n><t>��ô������Ը��������������")
	MisBeginCondition(LvCheck, ">", 36 )
	MisBeginCondition(NoMission, 633)
	MisBeginCondition(NoRecord, 633)
	MisBeginAction(AddMission, 633)
	MisBeginAction(AddTrigger, 6331, TE_KILL, 128, 10 )
	MisCancelAction(ClearMission, 633)

	MisNeed(MIS_NEED_KILL, 128, 10, 10, 10)
	
	MisHelpTalk("<t>�����ɱ��10ֻ<r���д���>�����õ��ͽ�")
	MisResultTalk("<t>�����ɵò����������ĳ��ͣ��´�������������")
	MisResultCondition(NoRecord, 633)
	MisResultCondition(HasMission, 633)
	MisResultCondition(HasFlag, 633, 19 )
	MisResultAction(ClearMission, 633)
	MisResultAction(SetRecord, 633)
	MisResultAction(AddExp, 7600, 7600)
	MisResultAction(AddMoney,477,477)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 128 )	
	TriggerAction( 1, AddNextFlag, 633, 10, 10 )
	RegCurTrigger( 6331 )

-----------------------------------ͻ������Ķ���
	DefineMission( 634, "ͻ������Ķ���", 634 )
	
	MisBeginTalk( "<t>����������ë���񣡺٣�������ⲻ��ɣ�<n><t>�����ҵ�Ȼ�����Լ�ȥ�ռ� ��ë����Ϊ����ǰ�Ǹ����������ĺ�����ʲô���鶼������ȥ����<n><t>������Ȼ�㱿�ֱ��ţ��һ��ǽ���һ�£�����ȥȡ5֧<y��˸�������ë>��������������ɣ�<n><t>�����ȥ ��935,2687�� ���ҿ���")
	MisBeginCondition(LvCheck, ">", 36 )
	MisBeginCondition(NoMission, 634)
	MisBeginCondition(NoRecord, 634)
	MisBeginAction(AddMission, 634)
	MisBeginAction(AddTrigger, 6341, TE_GETITEM, 4472, 5 )
	MisCancelAction(ClearMission, 634)

	MisNeed(MIS_NEED_ITEM, 4472, 5, 10, 5)
	
	MisHelpTalk("<t><y��˸�������ë>ֻ��<r���д���>���ϲ����أ�")
	MisResultTalk("<t>�Ǻǣ������µĶ����ˣ�")
	MisResultCondition(NoRecord, 634)
	MisResultCondition(HasMission, 634)
	MisResultCondition(HasItem, 4472, 5)
	MisResultAction(TakeItem, 4472, 5 )
	MisResultAction(ClearMission, 634)
	MisResultAction(SetRecord, 634)
	MisResultAction(AddExp, 7600, 7600)
	MisResultAction(AddMoney,955,955)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4472 )	
	TriggerAction( 1, AddNextFlag, 634, 10, 5 )
	RegCurTrigger( 6341 )

-----------------------------------�����ٻ�ʯ
	DefineMission( 635, "�����ٻ�ʯ", 635 )
	
	MisBeginTalk( "<t>��ʵ˵���󲿷����˶�����������������ģ��ҵ�ȻҲ�������ˡ�<n><t>����������Ҷ�����ʷǰ�������Ļ�ʯ����<n><t>�ҿ�û�ط�ȥ�����ֶ����Ļ�ʯ����<n><t>�鷳��ȥ��3��<y����Ŀֹ군>���ҡ�<n><t>�Ҽӹ�һ�£��������ɼٻ�ʯ�������Ǹ�ԩ��ͷ��������<n><t>��Щ�ڹ�ľۼ����� ��969,2587�� ������")
	MisBeginCondition(LvCheck, ">", 37 )
	MisBeginCondition(NoMission, 635)
	MisBeginCondition(NoRecord, 635)
	MisBeginAction(AddMission, 635)
	MisBeginAction(AddTrigger, 6351, TE_GETITEM, 4093, 3 )
	MisCancelAction(ClearMission, 635)

	MisNeed(MIS_NEED_ITEM, 4093, 3, 10, 3)
	
	MisHelpTalk("<t>�ҵ�3��<y����Ŀֹ군>����")
	MisResultTalk("<t>�Ǻǣ�����úܲ���������õõ�һ��Ǯ�������ɲ�Ҫ�����¸��߱���Ŷ��")
	MisResultCondition(NoRecord, 635)
	MisResultCondition(HasMission, 635)
	MisResultCondition(HasItem, 4093, 3)
	MisResultAction(TakeItem, 4093, 3 )
	MisResultAction(ClearMission, 635)
	MisResultAction(SetRecord, 635)
	MisResultAction(AddExp, 8500, 8500)
	MisResultAction(AddMoney,486,486)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4093 )	
	TriggerAction( 1, AddNextFlag, 635, 10, 3 )
	RegCurTrigger( 6351 )

-----------------------------------����̦޺
	DefineMission( 636, "����̦޺", 636 )
	
	MisBeginTalk( "<t>�������ȵ������˻��������˺ö�ˮ�ݣ���Ҳ�Բ���ȥ���������ᡣ<n><t>���鷳���æȥ<r��Ƥ����>���ѱ߲�5��<y���̵�̦޺>���ң���������̦޺ҩ������ˮ���ϰܻܰ��������һ�㶼�� ��732,2697�� �������ѡ�")
	MisBeginCondition(LvCheck, ">", 38 )
	MisBeginCondition(NoMission, 636)
	MisBeginCondition(NoRecord, 636)
	MisBeginAction(AddMission, 636)
	MisBeginAction(AddTrigger, 6361, TE_GETITEM, 4094, 5 )
	MisCancelAction(ClearMission, 636)

	MisNeed(MIS_NEED_ITEM, 4094, 5, 10, 5)
	
	MisHelpTalk("<t>����Ҫ5��<y���̵�̦޺>������̦޺ҩ����")
	MisResultTalk("<t>лл�㣬�ҷ���̦޺ҩ���о��ö��ˣ�")
	MisResultCondition(NoRecord, 636)
	MisResultCondition(HasMission, 636)
	MisResultCondition(HasItem, 4094, 5)
	MisResultAction(TakeItem, 4094, 5 )
	MisResultAction(ClearMission, 636)
	MisResultAction(SetRecord, 636)
	MisResultAction(AddExp, 9500, 9500)
	MisResultAction(AddMoney,495,495)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4094 )	
	TriggerAction( 1, AddNextFlag, 636, 10, 5 )
	RegCurTrigger( 6361 )


-----------------------------------Ѱ�ҹ⻬��ʯͷ
	DefineMission( 637, "Ѱ�ҹ⻬��ʯͷ", 637 )
	
	MisBeginTalk( "<t>�ҵ�����<b���˹>�Ǹ����������������ˣ������������ڽ�����<p���Ǳ�>�ĺ�լ��������һ����<n><t>����<p���Ǳ�>�캮�ض����Ҳ�������Ҫ�Ĳ��ϡ�<n><t>����<r��ʯ��>���ϵ�<y�⻬��ʯͷ>���ܷ�������Ҫ������ȥ<r��ʯ��>������5��<y�⻬��ʯͷ>�����𣿾�˵�����׶�Ĺ����û�� ��682,2592�� ������")
	MisBeginCondition(LvCheck, ">", 39 )
	MisBeginCondition(NoMission, 637)
	MisBeginCondition(NoRecord, 637)
	MisBeginAction(AddMission, 637)
	MisBeginAction(AddTrigger, 6371, TE_GETITEM, 4455, 5 )
	MisCancelAction(ClearMission, 637)

	MisNeed(MIS_NEED_ITEM, 4455, 5, 10, 5)
	
	MisHelpTalk("<t>����Ҫ5��<y�⻬��ʯͷ>��")
	MisResultTalk("<t>�٣�����Ԥ���һ����<n><t>����ʯͷӦ�þ���<b���˹>��Ҫ������ʯͷ��")
	MisResultCondition(NoRecord, 637)
	MisResultCondition(HasMission, 637)
	MisResultCondition(HasItem, 4455, 5)
	MisResultAction(TakeItem, 4455, 5 )
	MisResultAction(ClearMission, 637)
	MisResultAction(SetRecord, 637)
	MisResultAction(AddExp, 10000, 10000)
	MisResultAction(AddMoney,1008,1008)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4455 )	
	TriggerAction( 1, AddNextFlag, 637, 10, 5 )
	RegCurTrigger( 6371 )



-----------------------------------�Źֵ��ղؼ�
	DefineMission( 638, "�Źֵ��ղؼ�", 638 )
	
	MisBeginTalk( "<t>������ǧ��ٹ֣�����ʲô�����˶��С�<n><t>����ʶ��һ������<b�ط�>���Ǹ����������ղؼҡ�<n><t>��ϲ���ռ����ֹŹֵ����١�<n><t>�ⲻ���������Ҫ�Ұ�æ�ռ�5��<y������������ͷ>��<n><t>���Ǽ����Ҵ�����ȥ���أ����ѣ����ܰ���ȥ����5��<y������������ͷ>�������ȥ ��892,3273�� ����������������˵�����������ҵ�����")
	MisBeginCondition(LvCheck, ">", 9 )
	MisBeginCondition(NoMission, 638)
	MisBeginCondition(NoRecord, 638)
	MisBeginAction(AddMission, 638)
	MisBeginAction(AddTrigger, 6381, TE_GETITEM, 4415, 5 )
	MisCancelAction(ClearMission, 638)

	MisNeed(MIS_NEED_ITEM, 4415, 5, 10, 5)
	
	MisHelpTalk("<t>����Ҫ5��<y������������ͷ>������<b�ط�>���")
	MisResultTalk("<t>�٣���ı����ռ����ˣ�лл��Ŷ��")
	MisResultCondition(NoRecord, 638)
	MisResultCondition(HasMission, 638)
	MisResultCondition(HasItem, 4415, 5)
	MisResultAction(TakeItem, 4415, 5 )
	MisResultAction(ClearMission, 638)
	MisResultAction(SetRecord, 638)
	MisResultAction(AddExp, 120, 120)
	MisResultAction(AddMoney,299,299)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4415 )	
	TriggerAction( 1, AddNextFlag, 638, 10, 5 )
	RegCurTrigger( 6381 )

-----------------------------------�����������
	DefineMission( 639, "�����������", 639 )
	
	MisBeginTalk( "Ŷ�����ѣ�����Ҳ����������Щ<r������>�ˣ�������ɳ�������Լ�����й�ﻮ�ָ��Ե���أ���õ���ɢ������ζ��<n><t>�鷳����ɱ10ֻ<r������>������������������ˣ���Щ��������������� ��892,3273�� ������")
	MisBeginCondition(LvCheck, ">", 9 )
	MisBeginCondition(NoMission, 639)
	MisBeginCondition(NoRecord, 639)
	MisBeginAction(AddMission, 639)
	MisBeginAction(AddTrigger, 6391, TE_KILL, 62, 10 )
	MisCancelAction(ClearMission, 639)

	MisNeed(MIS_NEED_KILL, 62, 10, 10, 10)
	
	MisHelpTalk("<t>��Ӧ�ò���ʲô���ѵ��£�������ɡ�")
	MisResultTalk("<t>лл�㣡̫��л�ˣ�")
	MisResultCondition(NoRecord, 639)
	MisResultCondition(HasMission, 639)
	MisResultCondition(HasFlag, 639, 19 )
	MisResultAction(ClearMission, 639)
	MisResultAction(SetRecord, 639)
	MisResultAction(AddExp, 120, 120)
	MisResultAction(AddMoney,149,149)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 62 )	
	TriggerAction( 1, AddNextFlag, 639, 10, 10 )
	RegCurTrigger( 6391 )


-----------------------------------������ķ�����
	DefineMission( 640, "������ķ�����", 640 )
	
	MisBeginTalk( "<t>�ҷ���ɳ����ɢ������ζ��Ȼ����<r������>��ȴ������Դ�����ǵ���й�<n><t>������������ڻ���ʮ�����������ȥ<r������>��û�ĵط�����5ƿ<y������ķ�����>�������ҷ���һ����<n><t>��Щ�һ�һ�������� ��892,3273�� ������")
	MisBeginCondition(LvCheck, ">", 10 )
	MisBeginCondition(NoMission, 640)
	MisBeginCondition(NoRecord, 640)
	MisBeginAction(AddMission, 640)
	MisBeginAction(AddTrigger, 6401, TE_GETITEM, 4095, 5 )
	MisCancelAction(ClearMission, 640)

	MisNeed(MIS_NEED_ITEM, 4095, 5, 10, 5)
	
	MisHelpTalk("<t>��û���ռ���5ƿ<y������ķ�����>��")
	MisResultTalk("<t>Ŷ��ԭ��<r������>�ǽ����˷����ڣ���Щ��ζ��Դ��������������صķ�����ģ�")
	MisResultCondition(NoRecord, 640)
	MisResultCondition(HasMission, 640)
	MisResultCondition(HasItem, 4095, 5)
	MisResultAction(TakeItem, 4095, 5 )
	MisResultAction(ClearMission, 640)
	MisResultAction(SetRecord, 640)
	MisResultAction(AddExp, 150, 150)
	MisResultAction(AddMoney,318,318)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4095 )	
	TriggerAction( 1, AddNextFlag, 640, 10, 5 )
	RegCurTrigger( 6401 )


-----------------------------------����С��
	DefineMission( 641, "����С��", 641 )
	
	MisBeginTalk( "<t>�ҷǳ�����<rС��>���������ǳ�Ⱥ���ĳ�����ɳĮ�ϣ����Ҹе��־塣<n><t>��������취��������Щ<rС��>�������𣿱���ɱ��10ֻ<rС��>��<n><t>�٣���Ӧ����ô�죬�������ɱ10ֻ<rС��>�ɣ�<n><t>������ ��687,3093�� ������û��")
	MisBeginCondition(LvCheck, ">", 10 )
	MisBeginCondition(NoMission, 641)
	MisBeginCondition(NoRecord, 641)
	MisBeginAction(AddMission, 641)
	MisBeginAction(AddTrigger, 6411, TE_KILL, 100, 10 )
	MisCancelAction(ClearMission, 641)

	MisNeed(MIS_NEED_KILL, 100, 10, 10, 10)
	
	MisHelpTalk("<t>��ɱ��10ֻ<rС��>���𣿿�Ҫ����Ŷ��")
	MisResultTalk("<t>̫лл���ˣ�ֻҪ<rС��>�������������٣��ҾͲ��ú���һ��������ɳĮ���ˡ�")
	MisResultCondition(NoRecord, 641)
	MisResultCondition(HasMission, 641)
	MisResultCondition(HasFlag, 641, 19 )
	MisResultAction(ClearMission, 641)
	MisResultAction(SetRecord, 641)
	MisResultAction(AddExp, 150, 150)
	MisResultAction(AddMoney,159,159)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 100 )	
	TriggerAction( 1, AddNextFlag, 641, 10, 10 )
	RegCurTrigger( 6411 )

-----------------------------------��ɱС��
	DefineMission( 642, "��ɱС��", 642 )
	
	MisBeginTalk( "<t>�����ҵ�����<b�ط�>�Ǹ��ϻ����Ǯ�ռ��Ź����ٵ��ˣ��ų��ǻ��������ղؼҡ�<n><t>����ȴ��ϲ�������Ⱥá�<n><t>�ⲻ������ξ�Ȼ���߼۹���5ֻδ�����<rС��>��<yС��צ>�����Ƕ�ô���̵���ѽ��<n><t>�ҿ������������������������ۺܸߣ����������Ȥ���ҿ��԰�����½����㡣<n><t>��Щ�����ļһ������� ��687,3093�� ������")
	MisBeginCondition(LvCheck, ">", 11 )
	MisBeginCondition(LvCheck, ">", 11 )
	MisBeginCondition(NoMission, 642)
	MisBeginCondition(NoRecord, 642)
	MisBeginAction(AddMission, 642)
	MisBeginAction(AddTrigger, 6421, TE_GETITEM, 4096, 5 )
	MisCancelAction(ClearMission, 642)

	MisNeed(MIS_NEED_ITEM, 4096, 5, 10, 5)
	
	MisHelpTalk("<t>����Ҫ�ռ���5ֻ<rС��>��<yС��צ>��")
	MisResultTalk("<t>�������Ѿ��ռ����� �𣿺ðɣ���Щ������ı��꣬���úá�")
	MisResultCondition(NoRecord, 642)
	MisResultCondition(HasMission, 642)
	MisResultCondition(HasItem, 4096, 5)
	MisResultAction(TakeItem, 4096, 5 )
	MisResultAction(ClearMission, 642)
	MisResultAction(SetRecord, 642)
	MisResultAction(AddExp, 190, 190)
	MisResultAction(AddMoney,339,339)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4096 )	
	TriggerAction( 1, AddNextFlag, 642, 10, 5 )
	RegCurTrigger( 6421 )

-----------------------------------����ɱ��������
	DefineMission( 643, "����ɱ��������", 643 )
	
	MisBeginTalk( "<t>���࣡��϶��Ǹ����ࡣ<n><t>���Ǹ��������ˣ��հ�������Ϳ���������·��<rɱ��������>��<n><t>��̫�����ˣ����벻ͨ����ֲ����ô���߶��أ����ģ�����ɱ��10ֻ<rɱ��������>�������۲�����Ϊ���ɡ�<n><t>��Щ������ ��884,3156�� �����ε���")
	MisBeginCondition(LvCheck, ">", 12 )
	MisBeginCondition(NoMission, 643)
	MisBeginCondition(NoRecord, 643)
	MisBeginAction(AddMission, 643)
	MisBeginAction(AddTrigger, 6431, TE_KILL, 43, 10 )
	MisCancelAction(ClearMission, 643)

	MisNeed(MIS_NEED_KILL, 43, 10, 10, 10)
	
	MisHelpTalk("<t>��ɱ��10ֻ<rɱ��������>����")
	MisResultTalk("<t>лл���Ҹо��ö��ˣ�")
	MisResultCondition(NoRecord, 643)
	MisResultCondition(HasMission, 643)
	MisResultCondition(HasFlag, 643, 19 )
	MisResultAction(ClearMission, 643)
	MisResultAction(SetRecord, 643)
	MisResultAction(AddExp, 240, 240)
	MisResultAction(AddMoney,180,180)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 43 )	
	TriggerAction( 1, AddNextFlag, 643, 10, 10 )
	RegCurTrigger( 6431 )



-----------------------------------��ҩ���
	DefineMission( 644, "��ҩ���", 644 )
	
	MisBeginTalk( "<t>ɳĮ������������˸о����ʣ��������и��洫�ط���������Զ�����������˸е����һ�㡣<n><t>������ζҩ��Ҫ��<rɱ��������>��<y�޴�����������>��ҩ����<n><t>�ҿ�ûû���´����Щ��һ�鷳��ȡ5��<y�޴�����������>���Һ�����Щ�������� ��884,3156�� ����ɹ̫����")
	MisBeginCondition(LvCheck, ">", 13 )
	MisBeginCondition(NoMission, 644)
	MisBeginCondition(NoRecord, 644)
	MisBeginAction(AddMission, 644)
	MisBeginAction(AddTrigger, 6441, TE_GETITEM, 4421, 5 )
	MisCancelAction(ClearMission, 644)

	MisNeed(MIS_NEED_ITEM, 4421, 5, 10, 5)
	
	MisHelpTalk("<t>Ҫ��5��<y�޴�����������>�Ҳ�����ҩ��")
	MisResultTalk("<t>лл��İ�æ�������ҿ��԰�����Щ�������������ˡ�")
	MisResultCondition(NoRecord, 644)
	MisResultCondition(HasMission, 644)
	MisResultCondition(HasItem, 4421, 5)
	MisResultAction(TakeItem, 4421, 5 )
	MisResultAction(ClearMission, 644)
	MisResultAction(SetRecord, 644)
	MisResultAction(AddExp, 290, 290)
	MisResultAction(AddMoney,384,384)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4421 )	
	TriggerAction( 1, AddNextFlag, 644, 10, 5 )
	RegCurTrigger( 6441 )


-----------------------------------�����Ƶ�ˮ��
	DefineMission( 645, "�����Ƶ�ˮ��", 645 )
	
	MisBeginTalk( "<t>�٣��㿴�ҷ�����ʲô��<rɱ��������>��ɳĮ�г��ò���ˮ�����ܣ�<n><t>ԭ��������һ��<y�����Ƶ�ˮ��>��������Ȼˮ���ܷ��Էǳ��ã����԰���<rɱ��������>�ȹ�ȱˮ���ѹأ�<n><t>��������ˮ�ҵĹ����һ����ر���������ܰ���ȥ��5��<y�����Ƶ�ˮ��>������<rɱ��������>һ�㶼�� ��884,3156�� ����ɹ̫����")
	MisBeginCondition(LvCheck, ">", 13 )
	MisBeginCondition(NoMission, 645)
	MisBeginCondition(HasRecord, 644)
	MisBeginCondition(NoRecord, 645)
	MisBeginAction(AddMission, 645)
	MisBeginAction(AddTrigger, 6451, TE_GETITEM, 4097, 5 )
	MisCancelAction(ClearMission, 645)

	MisNeed(MIS_NEED_ITEM, 4097, 5, 10, 5)
	
	MisHelpTalk("<t>��ʲôʱ����ܸ�����5��<y�����Ƶ�ˮ��>��")
	MisResultTalk("<t>����о�˵�����ܳ�Ϊ������������о��أ�")
	MisResultCondition(NoRecord, 645)
	MisResultCondition(HasMission, 645)
	MisResultCondition(HasItem, 4097, 5)
	MisResultAction(TakeItem, 4097, 5 )
	MisResultAction(ClearMission, 645)
	MisResultAction(SetRecord, 645)
	MisResultAction(AddExp, 290, 290)
	MisResultAction(AddMoney,384,384)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4097 )	
	TriggerAction( 1, AddNextFlag, 645, 10, 5 )
	RegCurTrigger( 6451 )

----------------------------------������������
	DefineMission( 646, "������������", 646 )
	
	MisBeginTalk( "<t>������˭������ô��<r��������>�������һƬɳĮ����<r��������>������ȥ�ģ��氭�ۡ�<n><t>�鷳�����10ֻ ��687,3093�� ������<r��������>����")
	MisBeginCondition(LvCheck, ">", 14 )
	MisBeginCondition(NoMission, 646)
	MisBeginCondition(NoRecord, 646)
	MisBeginAction(AddMission, 646)
	MisBeginAction(AddTrigger, 6461, TE_KILL, 294, 10 )
	MisCancelAction(ClearMission, 646)

	MisNeed(MIS_NEED_KILL, 294, 10, 10, 10)
	
	MisHelpTalk("<t>��û����10ֻ<r��������>��")
	MisResultTalk("<t>лл����������治��")
	MisResultCondition(NoRecord, 646)
	MisResultCondition(HasMission, 646)
	MisResultCondition(HasFlag, 646, 19 )
	MisResultAction(ClearMission, 646)
	MisResultAction(SetRecord, 646)
	MisResultAction(AddExp, 360, 360)
	MisResultAction(AddMoney,204,204)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 294 )	
	TriggerAction( 1, AddNextFlag, 646, 10, 10 )
	RegCurTrigger( 6461 )

-----------------------------------��ζ��֭��
	DefineMission( 647, "��ζ��֭��", 647 )
	
	MisBeginTalk( "<t><r��������>��<y��ζ��֭��>��ζ���֭�࣬������һ�����˿��ܵ����á�<n><t>�������������ɵ����ϣ��������˵��б���Ϊ���С�<n><t>������һ�ϻ��ͱ����ϣ��鷳����ȥ�ռ�5��<y��ζ��֭��>����<n><t>������� ��687,3093�� ������<r��������>�����ҵ����ǡ�")
	MisBeginCondition(LvCheck, ">", 14 )
	MisBeginCondition(NoMission, 647)
	MisBeginCondition(NoRecord, 647)
	MisBeginAction(AddMission, 647)
	MisBeginAction(AddTrigger, 6471, TE_GETITEM, 4475, 5 )
	MisCancelAction(ClearMission, 647)

	MisNeed(MIS_NEED_ITEM, 4475, 5, 10, 5)
	
	MisHelpTalk("<t>��û���ռ���5��<y��ζ��֭��>��")
	MisResultTalk("<t>�٣�лл����ЩǮ�Ǹ���ı��꣡")
	MisResultCondition(NoRecord, 647)
	MisResultCondition(HasMission, 647)
	MisResultCondition(HasItem, 4475, 5)
	MisResultAction(TakeItem, 4475, 5 )
	MisResultAction(ClearMission, 647)
	MisResultAction(SetRecord, 647)
	MisResultAction(AddExp, 360, 360)
	MisResultAction(AddMoney,408,408)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4475 )	
	TriggerAction( 1, AddNextFlag, 647, 10, 5 )
	RegCurTrigger( 6471 )

----------------------------------�������˵
	DefineMission( 648, "�������˵", 648 )
	
	MisBeginTalk( "<t>�ഫ<r�����>��û�ĵط��ͻ������ѳ��֡�<n><t>��Ȼ��֪�������˵�ɲ��ɿ�����<r�����>�ĳ���ȷʵ��ʹ�����Ļ̡̻�<n><t>��ϣ�����ܿ���10ֻ ��885,3027�� ������<r�����>��������ľ����ܹ��������")
	MisBeginCondition(LvCheck, ">", 15 )
	MisBeginCondition(NoMission, 648)
	MisBeginCondition(NoRecord, 648)
	MisBeginAction(AddMission, 648)
	MisBeginAction(AddTrigger, 6481, TE_KILL, 203, 10 )
	MisCancelAction(ClearMission, 648)

	MisNeed(MIS_NEED_KILL, 203, 10, 10, 10)
	
	MisHelpTalk("<t>ֻҪ����10��<r�����>�ͺ��ˣ�")
	MisResultTalk("<t>�٣��������治��")
	MisResultCondition(NoRecord, 648)
	MisResultCondition(HasMission, 648)
	MisResultCondition(HasFlag, 648, 19 )
	MisResultAction(ClearMission, 648)
	MisResultAction(SetRecord, 648)
	MisResultAction(AddExp, 450, 450)
	MisResultAction(AddMoney,216,216)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 203 )	
	TriggerAction( 1, AddNextFlag, 648, 10, 10 )
	RegCurTrigger( 6481 )


-----------------------------------��ľ�괺
	DefineMission( 649, "��ľ�괺", 649 )
	
	MisBeginTalk( "<t>������һ����ɳĮ������ĳ�ʶ��<r�����>��<y�������>��ˮ�����ͣ��������ˮ�֣�����סˮ�֣��Ե���ɳĮ�ĸ��<n><t>�Ҷ���������ܺ��棬������5��<y�������>���ҷ���һ����<r�����>һ�������� ��885,3027�� ������")
	MisBeginCondition(LvCheck, ">", 16 )
	MisBeginCondition(NoMission, 649)
	MisBeginCondition(NoRecord, 649)
	MisBeginAction(AddMission, 649)
	MisBeginAction(AddTrigger, 6491, TE_GETITEM, 4098, 5 )
	MisCancelAction(ClearMission, 649)

	MisNeed(MIS_NEED_ITEM, 4098, 5, 10, 5)
	
	MisHelpTalk("<t>����Ҫ5��<y�������>���о���")
	MisResultTalk("<t>������������Ľṹ̫�����ˣ��ҷ�����������")
	MisResultCondition(NoRecord, 649)
	MisResultCondition(HasMission, 649)
	MisResultCondition(HasItem, 4098, 5)
	MisResultAction(TakeItem, 4098, 5 )
	MisResultAction(ClearMission, 649)
	MisResultAction(SetRecord, 649)
	MisResultAction(AddExp, 550, 550)
	MisResultAction(AddMoney,459,459)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4098 )	
	TriggerAction( 1, AddNextFlag, 649, 10, 5 )
	RegCurTrigger( 6491 )

-----------------------------------���׼���
	DefineMission( 650, "���׼���", 650 )
	
	MisBeginTalk( "<t>�����ء�������һ������������Ů�ˣ����������<rɳ������>��Ȼ��Ⱥ���Ĵ�����ң�<n><t>�����������ҵ�<y�������>����������ĸ����ĸ����ĸ���������ҵı���Ҳ��ܶ�������<n><t>�����㣬��æ�����һ�����<rɳ������>�ĳ�Ѩ������ ��716,3290�� ������<n><t>��ϸ���ҿ����ǲ��ǰ��ҵı�������ľ������Ƿ��ھ�Ͱ���ˣ�")
	MisBeginCondition(LvCheck, ">", 17 )
	MisBeginCondition(NoMission, 650)
	MisBeginCondition(NoRecord, 650)
	MisBeginAction(AddMission, 650)
	MisBeginAction(AddTrigger, 6501, TE_GETITEM, 4099, 1 )
	MisCancelAction(ClearMission, 650)

	MisNeed(MIS_NEED_ITEM, 4099, 1, 10, 1)
	
	MisHelpTalk("<t>���أ����ҵ��ҵ�<y�������>����")
	MisResultTalk("<t>Ŷ�����治֪������ô��л���ˣ��Ժ�����������鷳����һ���ᾡ������ģ�")
	MisResultCondition(NoRecord, 650)
	MisResultCondition(HasMission, 650)
	MisResultCondition(HasItem, 4099, 1)
	MisResultAction(TakeItem, 4099, 1 )
	MisResultAction(ClearMission, 650)
	MisResultAction(SetRecord, 650)
	MisResultAction(AddExp, 650, 650)
	MisResultAction(AddMoney,242,242)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4099 )	
	TriggerAction( 1, AddNextFlag, 650, 10, 1 )
	RegCurTrigger( 6501 )


----------------------------------Χ������
	DefineMission( 651, "Χ������", 651 )
	
	MisBeginTalk( "<t>���<rɳ������>Խ��Խ�����ˣ����ǲ���������ã�������С���͸�Ů��������Ϊ�ǲ�ֵ��ԭ�µġ�<n><t>�ҳ��߼�����������<rɳ������>����ʿ��ֻҪ�ܸɵ�10��<rɳ������>���Ҿ͸����ͽ�<n><t><rɳ������>��û�� ��716,3290�� ������")
	MisBeginCondition(LvCheck, ">", 18 )
	MisBeginCondition(NoMission, 651)
	MisBeginCondition(NoRecord, 651)
	MisBeginAction(AddMission, 651)
	MisBeginAction(AddTrigger, 6511, TE_KILL, 131, 10 )
	MisCancelAction(ClearMission, 651)

	MisNeed(MIS_NEED_KILL, 131, 10, 10, 10)
	
	MisHelpTalk("<t>�����ͽ���ȸɵ�10��<rɳ������>Ŷ��")
	MisResultTalk("<t>�ɵ�Ư����������Ӧ�õ��ͽ�")
	MisResultCondition(NoRecord, 651)
	MisResultCondition(HasMission, 651)
	MisResultCondition(HasFlag, 651, 19 )
	MisResultAction(ClearMission, 651)
	MisResultAction(SetRecord, 651)
	MisResultAction(AddExp, 750, 750)
	MisResultAction(AddMoney,256,256)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 131 )	
	TriggerAction( 1, AddNextFlag, 651, 10, 10 )
	RegCurTrigger( 6511 )

----------------------------------�׺ݶ���
	DefineMission( 652, "�׺ݶ���", 652 )
	
	MisBeginTalk( "<t>��������ļ�ַ�<r����>����ʿ��<n><t>�����⸽��<r����>��Ⱥ��ûƵ����������Ϊ�����涼���ò����ߣ��ٳ�����ȥ������Ҳ���Ҫ�ķ����أ�<n><t>�����������׺�<r����>�Կ����ˣ�ֻҪ��ɱ��10ֻ ��718,2938�� ������<r����>���Ҿͻά�����߶��ͽ�")
	MisBeginCondition(LvCheck, ">", 19 )
	MisBeginCondition(NoMission, 652)
	MisBeginCondition(NoRecord, 652)
	MisBeginAction(AddMission, 652)
	MisBeginAction(AddTrigger, 6521, TE_KILL, 101, 10 )
	MisCancelAction(ClearMission, 652)

	MisNeed(MIS_NEED_KILL, 101, 10, 10, 10)
	
	MisHelpTalk("<t>ֻҪ����ɱ��10ֻ<r��>����ʿ���Ҷ�����������")
	MisResultTalk("<t>��ɵ�̫Ư���ˣ���Щ����������ģ�����ȥ�ɣ�")
	MisResultCondition(NoRecord, 652)
	MisResultCondition(HasMission, 652)
	MisResultCondition(HasFlag, 652, 19 )
	MisResultAction(ClearMission, 652)
	MisResultAction(SetRecord, 652)
	MisResultAction(AddExp, 880, 880)
	MisResultAction(AddMoney,270,270)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 101 )	
	TriggerAction( 1, AddNextFlag, 652, 10, 10 )
	RegCurTrigger( 6521 )

----------------------------------ɳ�ع�֮��
	DefineMission( 653, "ɳ�ع�֮��", 653 )
	
	MisBeginTalk( "<t><rɳ�ع�>�����첻�������˴̼�����·�Ϻ��ֱײ��ײ������·�ˡ�<n><t>�������������ȥ���������˳Բ�����<n><t>�鷳��ɱ��10ֻ ��1197,3270�� ������<rɳ�ع�>����")
	MisBeginCondition(LvCheck, ">", 19 )
	MisBeginCondition(NoMission, 653)
	MisBeginCondition(NoRecord, 653)
	MisBeginAction(AddMission, 653)
	MisBeginAction(AddTrigger, 6531, TE_KILL, 134, 10 )
	MisCancelAction(ClearMission, 653)

	MisNeed(MIS_NEED_KILL, 134, 10, 10, 10)
	
	MisHelpTalk("<t>ֻҪ��ɱ10ֻ<rɳ�ع�>�����ˣ�")
	MisResultTalk("<t>�٣��������治��")
	MisResultCondition(NoRecord, 653)
	MisResultCondition(HasMission, 653)
	MisResultCondition(HasFlag, 653, 19 )
	MisResultAction(ClearMission, 653)
	MisResultAction(SetRecord, 653)
	MisResultAction(AddExp, 880, 880)
	MisResultAction(AddMoney,270,270)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 134 )	
	TriggerAction( 1, AddNextFlag, 653, 10, 10 )
	RegCurTrigger( 6531 )

-----------------------------------�ƶ�����
	DefineMission( 654, "�ƶ�����", 654 )
	
	MisBeginTalk( "<t><rɳ�ع�>�ж��ٻ�������Ӵ�ʹ������Ӳ�Ĺ���ϳ���һЩ��С��ɳĮֲ�������֮�ء�<n><t>��������ҪһЩ<yɳĮֲ������>���ḻ�ҵĻ�԰���֣�����ȡ5��<rɳ�ع�>���ϵ�<yɳĮֲ������>������������� ��1197,3270�� �����ҵ����ǡ�")
	MisBeginCondition(LvCheck, ">", 20 )
	MisBeginCondition(NoMission, 654)
	MisBeginCondition(NoRecord, 654)
	MisBeginAction(AddMission, 654)
	MisBeginAction(AddTrigger, 6541, TE_GETITEM, 4466, 5 )
	MisCancelAction(ClearMission, 654)

	MisNeed(MIS_NEED_ITEM, 4466, 5, 10, 5)
	
	MisHelpTalk("<t>��һ���������Ҫ5��<rɳ�ع�>���ϵ�<yɳĮֲ������>��")
	MisResultTalk("<t>Ŷ��������Щ���ӣ�лл���ˣ�")
	MisResultCondition(NoRecord, 654)
	MisResultCondition(HasMission, 654)
	MisResultCondition(HasItem, 4466, 5)
	MisResultAction(TakeItem, 4466, 5 )
	MisResultAction(ClearMission, 654)
	MisResultAction(SetRecord, 654)
	MisResultAction(AddExp, 1000, 1000)
	MisResultAction(AddMoney,571,571)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4466 )	
	TriggerAction( 1, AddNextFlag, 654, 10, 5 )
	RegCurTrigger( 6541 )

----------------------------------δ�����
	DefineMission( 655, "δ�����", 655 )
	
	MisBeginTalk( "<t>�Ҽ�������һ�����ﵽ<p������>ȥ��<n><t>����ʮ�ֲ�������Ϊ;���ҽ�����ɳ��Ӫ�ء�<n><t>��Щ<rɳ��>�ǳ�ǿ��������������˴��ģ������ҵĻ���ҿ�û���м�֮����<n><t>���������Ӷ�㣬��ȥɳ��Ӫ�ؼ���10�� ��1339,3300�� ������<rɳ��>��������·ʱ�Ƚϰ�ȫ��")
	MisBeginCondition(LvCheck, ">", 21 )
	MisBeginCondition(NoMission, 655)
	MisBeginCondition(NoRecord, 655)
	MisBeginAction(AddMission, 655)
	MisBeginAction(AddTrigger, 6551, TE_KILL, 45, 10 )
	MisCancelAction(ClearMission, 655)

	MisNeed(MIS_NEED_KILL, 45, 10, 10, 10)
	
	MisHelpTalk("<t>��ȥ��ɳ��Ӫ�غ�<rɳ��>��������")
	MisResultTalk("<t>лл����Щ�ҿ��Է���ȥ�������������ˡ�")
	MisResultCondition(NoRecord, 655)
	MisResultCondition(HasMission, 655)
	MisResultCondition(HasFlag, 655, 19 )
	MisResultAction(ClearMission, 655)
	MisResultAction(SetRecord, 655)
	MisResultAction(AddExp, 1200, 1200)
	MisResultAction(AddMoney,300,300)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 45 )	
	TriggerAction( 1, AddNextFlag, 655, 10, 10 )
	RegCurTrigger( 6551 )

-----------------------------------Ģ��Ũ��
	DefineMission( 656, "Ģ��Ũ��", 656 )
	
	MisBeginTalk( "<t>������һ������ǰ������ȥ��<rɳ�ع�>���Ҿ��Զ�������ת����ð��������Ģ��Ũ���ˣ�<n><t>�Ұ�������Ũ�ɿڵ�ζ���ˣ��鷳��ȥ��5��<rɳ�ع�>��<yɡ״Ģ��>���������ҳ����ʰɣ�<n><t><rɳ�ع�>һ�������� ��1334,3438�� ������")
	MisBeginCondition(LvCheck, ">", 22 )
	MisBeginCondition(NoMission, 656)
	MisBeginCondition(NoRecord, 656)
	MisBeginAction(AddMission, 656)
	MisBeginAction(AddTrigger, 6561, TE_GETITEM, 4476, 5 )
	MisCancelAction(ClearMission, 656)

	MisNeed(MIS_NEED_ITEM, 4476, 5, 10, 5)
	
	MisHelpTalk("<t>���ֶ��ص�<yɡ״Ģ��>ֻ��<rɳ�ع�>����Ŷ��")
	MisResultTalk("<t>�٣�����<yɡ״Ģ��>����Ģ��Ũ����Ȼ���ڲ�ͬ��̫��ζ�ˣ�")
	MisResultCondition(NoRecord, 656)
	MisResultCondition(HasMission, 656)
	MisResultCondition(HasItem, 4476, 5)
	MisResultAction(TakeItem, 4476, 5 )
	MisResultAction(ClearMission, 656)
	MisResultAction(SetRecord, 656)
	MisResultAction(AddExp, 1400, 1400)
	MisResultAction(AddMoney,632,632)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4476 )	
	TriggerAction( 1, AddNextFlag, 656, 10, 5 )
	RegCurTrigger( 6561 )

-----------------------------------���ܵ�ɳ�ع�
	DefineMission( 657, "���ܵ�ɳ�ع�", 657 )
	
	MisBeginTalk( "<t>����ϲ����Ū�Լ�������Ļ����ˡ�<n><t>�����죬���ڻ�����ɢ�����ܾ��������ﲻ�Ծ���<n><t>ԭ����������<rɳ�ع�>�����ˣ��Ҳ�����������ȥ�����ˣ������ҵĻ����ﲻ��һ��û��<rɳ�ع�>������̫�������ˡ�<n><t>�鷳��ȥ����<rɳ�ع�>�ĵط�����5��<yɳĮ����>��������<rɳ�ع�>һ�������� ��1334,3438�� ������<n><t>��Щ���Ӻ����׷��֣�һ����ڲݴ���װ׵�һ�ѣ�")
	MisBeginCondition(LvCheck, ">", 22 )
	MisBeginCondition(NoMission, 657)
	MisBeginCondition(NoRecord, 657)
	MisBeginAction(AddMission, 657)
	MisBeginAction(AddTrigger, 6571, TE_GETITEM, 4100, 5 )
	MisCancelAction(ClearMission, 657)

	MisNeed(MIS_NEED_ITEM, 4100, 5, 10, 5)
	
	MisHelpTalk("<t>�Һ���Ҫ5��<yɳĮ����>��")
	MisResultTalk("<t>����̫���ˡ�<n><t>�ҵĻ����ﲻ�����ܿ���<rɳ�ع�>�ˣ�")
	MisResultCondition(NoRecord, 657)
	MisResultCondition(HasMission, 657)
	MisResultCondition(HasItem, 4100, 5)
	MisResultAction(TakeItem, 4100, 5 )
	MisResultAction(ClearMission, 657)
	MisResultAction(SetRecord, 657)
	MisResultAction(AddExp, 1400, 1400)
	MisResultAction(AddMoney,316,316)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4100 )	
	TriggerAction( 1, AddNextFlag, 657, 10, 5 )
	RegCurTrigger( 6571 )

-----------------------------------�ཬ������
	DefineMission( 658, "�ཬ������", 658 )
	
	MisBeginTalk( "<t>�٣����ѣ����������ã�ɳĮ��һ��һ�ȵĴ��ཬ������Ҫ��ʼ�ˣ��ܰ��Ҵ� ��1438,3413�� ������<r����>����ȡ5��<y���ǵ��ཬ>�����ཬ������ս�����Һ���Ҫ�������ɳĮ������Ҫ�Ľ���֮һ�أ�<n><t>��һ����׼���㹻����ཬ��Ӧս��")
	MisBeginCondition(LvCheck, ">", 23 )
	MisBeginCondition(NoMission, 658)
	MisBeginCondition(NoRecord, 658)
	MisBeginAction(AddMission, 658)
	MisBeginAction(AddTrigger, 6581, TE_GETITEM, 4436, 5 )
	MisCancelAction(ClearMission, 658)

	MisNeed(MIS_NEED_ITEM, 4436, 5, 10, 5)
	
	MisHelpTalk("<t>������Ŷ������Ҫ5��<y���ǵ��ཬ>��")
	MisResultTalk("<t>Ը����Ҳ����ͬ�ڣ��ٺ٣�ף����ȡ������ʤ���ɣ�")
	MisResultCondition(NoRecord, 658)
	MisResultCondition(HasMission, 658)
	MisResultCondition(HasItem, 4436, 5)
	MisResultAction(TakeItem, 4436, 5 )
	MisResultAction(ClearMission, 658)
	MisResultAction(SetRecord, 658)
	MisResultAction(AddExp, 1600, 1600)
	MisResultAction(AddMoney,664,664)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4436 )	
	TriggerAction( 1, AddNextFlag, 658, 10, 5 )
	RegCurTrigger( 6581 )

----------------------------------̰��������
	DefineMission( 659, "̰��������", 659 )
	
	MisBeginTalk( "<t>�ޣ��ޣ�������һ���ཬ������<r����>��Զ������ģ�<n><t>��Щ�ɶ��<r����>������ռ��ɳĮ��Ϊ�������ˮԴ���������������������������нӽ�ˮԴ���ˡ�<n><t>����̰���ļһ���ܲ��ܽ�ѵ��ѵ��Щ���ˣ���ɱ10�� ��1438,3413�� ������<r����>�أ�")
	MisBeginCondition(LvCheck, ">", 23 )
	MisBeginCondition(NoMission, 659)
	MisBeginCondition(NoRecord, 659)
	MisBeginAction(AddMission, 659)
	MisBeginAction(AddTrigger, 6591, TE_KILL, 251, 10 )
	MisCancelAction(ClearMission, 659)

	MisNeed(MIS_NEED_KILL, 251, 10, 10, 10)
	
	MisHelpTalk("<t>ץ��ʱ�䣬��ѵ��Щ�����Դ��<r����>�ɡ�")
	MisResultTalk("<t>�٣��������治��")
	MisResultCondition(NoRecord, 659)
	MisResultCondition(HasMission, 659)
	MisResultCondition(HasFlag, 659, 19 )
	MisResultAction(ClearMission, 659)
	MisResultAction(SetRecord, 659)
	MisResultAction(AddExp, 1600, 1600)
	MisResultAction(AddMoney,332,332)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 251 )	
	TriggerAction( 1, AddNextFlag, 659, 10, 10 )
	RegCurTrigger( 6591 )

----------------------------------Σ��ɳ��ʿ
	DefineMission( 660, "Σ��ɳ��ʿ", 660 )
	
	MisBeginTalk( "<t>�����ܳ�Ϊ<rɳ��ʿ>���˶�����ǿ�ö�֮ʿ��<n><t>���ǵĴ��ڶ�ɳĮ��˵ֻ����һ���޴����в��<n><t>�ҿ����㣬�¸ҵ������ˣ�����Щ<rɳ��ʿ>��һ��ս�ɡ�<n><t>������֪�Ѷ��ˣ��뿪������ѣ���ֻҪսʤ10�� ��1027,3011�� ������<rɳ��ʿ>�Ϳ����ˣ�")
	MisBeginCondition(LvCheck, ">", 24 )
	MisBeginCondition(NoMission, 660)
	MisBeginCondition(NoRecord, 660)
	MisBeginAction(AddMission, 660)
	MisBeginAction(AddTrigger, 6601, TE_KILL, 49, 10 )
	MisCancelAction(ClearMission, 660)

	MisNeed(MIS_NEED_KILL, 49, 10, 10, 10)
	
	MisHelpTalk("<t>սʤ10��<rɳ��ʿ>���Ǽ����׵��£������������ܹ�������")
	MisResultTalk("<t>�¸ҵ������ˣ�ף���㿭�����飡")
	MisResultCondition(NoRecord, 660)
	MisResultCondition(HasMission, 660)
	MisResultCondition(HasFlag, 660, 19 )
	MisResultAction(ClearMission, 660)
	MisResultAction(SetRecord, 660)
	MisResultAction(AddExp, 1800, 1800)
	MisResultAction(AddMoney,348,348)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 49 )	
	TriggerAction( 1, AddNextFlag, 660, 10, 10 )
	RegCurTrigger( 6601 )

----------------------------------����ʳ��֩��
	DefineMission( 661, "����ʳ��֩��", 661 )
	
	MisBeginTalk( "<t>���������������ˣ��Ҹղ��ں�̲�������棬��Ȼ������һȺ�޴����ɫ֩��ɱ��������Ӷ��ų�����צ�ӣ�����Ҫץס�ҳ��أ�<n><t>̫�����ˣ�����Ⱦ��ң���ɱ�����ߵ�10ֻ ��1093,2948�� ������<rʳ��֩��>�ɣ�")
	MisBeginCondition(LvCheck, ">", 25 )
	MisBeginCondition(NoMission, 661)
	MisBeginCondition(NoRecord, 661)
	MisBeginAction(AddMission, 661)
	MisBeginAction(AddTrigger, 6611, TE_KILL, 210, 10 )
	MisCancelAction(ClearMission, 661)

	MisNeed(MIS_NEED_KILL, 210, 10, 10, 10)
	
	MisHelpTalk("<t>Ŷ����Щ<rʳ��֩��>��һ�˸ߣ�̫�����ˣ�")
	MisResultTalk("<t>�����ǹ����˵ã�����ô�ֲ���<rʳ��֩��>��������Ķ��֡�")
	MisResultCondition(NoRecord, 661)
	MisResultCondition(HasMission, 661)
	MisResultCondition(HasFlag, 661, 19 )
	MisResultAction(ClearMission, 661)
	MisResultAction(SetRecord, 661)
	MisResultAction(AddExp, 2000, 2000)
	MisResultAction(AddMoney,365,365)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 210 )	
	TriggerAction( 1, AddNextFlag, 661, 10, 10 )
	RegCurTrigger( 6611 )

-----------------------------------ֱ�����ߵ���
	DefineMission( 662, "ֱ�����ߵ���", 662 )
	
	MisBeginTalk( "<t>�Һܺ��棬Ϊʲô��һ�ֽ���<r����>���������������һ����������ֱ�������أ��������ǵ�ëƤ���Ǻ�ɫ�ģ�������ء�<n><t>�һ�������һ����ͨ�Ǳ����Ĳ��<n><t>�鷳����5�� ��1473,3295�� ������<r����>��<y�޴����צ>��������һ�����о���")
	MisBeginCondition(LvCheck, ">", 25 )
	MisBeginCondition(NoMission, 662)
	MisBeginCondition(NoRecord, 662)
	MisBeginAction(AddMission, 662)
	MisBeginAction(AddTrigger, 6621, TE_GETITEM, 4439, 5 )
	MisCancelAction(ClearMission, 662)

	MisNeed(MIS_NEED_ITEM, 4439, 5, 10, 5)
	
	MisHelpTalk("<t>��Ҫ5��<y�޴����צ>���ܼ����о���")
	MisResultTalk("<t>�٣���Ȼ�����ڻ��Ҳ���<r����>�����ԭ�򣬵������ڿ���ȷ�������Ǻ���ͨ��������ǧ˿���Ƶ���ϵ��")
	MisResultCondition(NoRecord, 662)
	MisResultCondition(HasMission, 662)
	MisResultCondition(HasItem, 4439, 5)
	MisResultAction(TakeItem, 4439, 5 )
	MisResultAction(ClearMission, 662)
	MisResultAction(SetRecord, 662)
	MisResultAction(AddExp, 2000, 2000)
	MisResultAction(AddMoney,730,730)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4439 )	
	TriggerAction( 1, AddNextFlag, 662, 10, 5 )
	RegCurTrigger( 6621 )

-----------------------------------���֩��
	DefineMission( 663, "���֩��", 663 )
	
	MisBeginTalk( "<t>���ѣ����������ã��ҵ�<yǮ��>��<rʳ��֩��>͵���ˣ�������µ�нˮ��װ���������أ�<n><t>���ǵģ���Щ֩�����������񱣬���ǽ�Ķ���͵���ˣ��ø���Щ<rʳ��֩��>һ���ѵ��<n><t>���ѣ��鷳�㵽��1093,2948������<rʳ��֩��>��Ӫ�أ����ҵ�<yǮ��>�һ����ɡ�<n><t>��Щ֩����������Ǹ�Ӫ�ص�ľ��ľͰ����Ϣ�������ҵ�Ǯ��һ��Ҳ�����")
	MisBeginCondition(LvCheck, ">", 26 )
	MisBeginCondition(NoMission, 663)
	MisBeginCondition(NoRecord, 663)
	MisBeginAction(AddMission, 663)
	MisBeginAction(AddTrigger, 6631, TE_GETITEM, 4101, 1 )
	MisCancelAction(ClearMission, 663)

	MisNeed(MIS_NEED_ITEM, 4101, 1, 10, 1)
	
	MisHelpTalk("<t>���õ�<rʳ��֩��>͵�ߵ�<yǮ��>���𣿲�Ҫ�ż������ǿ��ܰ�Ǯ���صú����Ρ�")
	MisResultTalk("<t>�ٺ٣�лл��Ŷ�������ҵ��Ҷ�ʧ�Ľ���ˣ�������ƽ������ЩǮ�ɣ�")
	MisResultCondition(NoRecord, 663)
	MisResultCondition(HasMission, 663)
	MisResultCondition(HasItem, 4101, 1)
	MisResultAction(TakeItem, 4101, 1 )
	MisResultAction(ClearMission, 663)
	MisResultAction(SetRecord, 663)
	MisResultAction(AddExp, 2400, 2400)
	MisResultAction(AddMoney,382,382)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4101 )	
	TriggerAction( 1, AddNextFlag, 663, 10, 1 )
	RegCurTrigger( 6631 )

-----------------------------------����Կ��
	DefineMission( 664, "����Կ��", 664 )
	
	MisBeginTalk( "<t>С��һ�㣬���ѣ������ڸ�����Ļ�����ɲ����ٸ��߱����ˡ�<n><t>�ҵ��������ں����������������ĸ�ĸȴ����Ӧ���ǵĽ�����<n><t>�����Ѿ���������˽����<n><t>��Ϊ���ǵ����ѣ�����������һ��ʵ�õ����<n><t>���ѣ����ܰ��Ҵ� ��1255,2974�� ������<r����ʿ>��������2��<y����Կ��>���Ҿ�����˽����;�У�<y����Կ��>������ʮ����Ҫ��")
	MisBeginCondition(LvCheck, ">", 26 )
	MisBeginCondition(NoMission, 664)
	MisBeginCondition(NoRecord, 664)
	MisBeginAction(AddMission, 664)
	MisBeginAction(AddTrigger, 6641, TE_GETITEM, 4478, 2 )
	MisCancelAction(ClearMission, 664)

	MisNeed(MIS_NEED_ITEM, 4478, 2, 10, 2)
	
	MisHelpTalk("<t>���õ�2��<y����Կ��>����Ҫץ��ʱ��ѽ��")
	MisResultTalk("<t>лл�㣡���ѣ�")
	MisResultCondition(NoRecord, 664)
	MisResultCondition(HasMission, 664)
	MisResultCondition(HasItem, 4478, 2)
	MisResultAction(TakeItem, 4478, 2 )
	MisResultAction(ClearMission, 664)
	MisResultAction(SetRecord, 664)
	MisResultAction(AddExp, 2400, 2400)
	MisResultAction(AddMoney,765,765)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4478 )	
	TriggerAction( 1, AddNextFlag, 664, 10, 2 )
	RegCurTrigger( 6641 )

----------------------------------��������
	DefineMission( 665, "��������", 665 )
	
	MisBeginTalk( "<t>�׻�˵������������������������<n><t>��<rɳ��>Խ��Խ��Ᵽ�������Ϊ��<rɳ������>���������ǣ���Ȼ����ֻ��һȺ�ں�֮�ڣ��ɲ�������<n><t>�鷳�����ھ�ȥɱ�� ��1170,3026�� ������<rɳ������>������Щɳ��ʧȥ���죬����ô���ţ�")
	MisBeginCondition(LvCheck, ">", 27 )
	MisBeginCondition(NoMission, 665)
	MisBeginCondition(NoRecord, 665)
	MisBeginAction(AddMission, 665)
	MisBeginAction(AddTrigger, 6651, TE_KILL, 106, 1 )
	MisCancelAction(ClearMission, 665)

	MisNeed(MIS_NEED_KILL, 106, 1, 10, 1)
	
	MisHelpTalk("<t><rɳ������>�ܴ�����Ҳ����������ҪС��Ŷ��")
	MisResultTalk("<t>�٣��ҵ��������ðɣ��������ˣ�")
	MisResultCondition(NoRecord, 665)
	MisResultCondition(HasMission, 665)
	MisResultCondition(HasFlag, 665, 10 )
	MisResultAction(ClearMission, 665)
	MisResultAction(SetRecord, 665)
	MisResultAction(AddExp, 2700, 2700)
	MisResultAction(AddMoney,400,400)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 106 )	
	TriggerAction( 1, AddNextFlag, 665, 10, 1 )
	RegCurTrigger( 6651 )

----------------------------------��ս����ʿ
	DefineMission( 666, "��ս����ʿ", 666 )
	
	MisBeginTalk( "<t>��ɳĮ����˵ɳ��ʿ���������Ǳ����Ǹ�������ȴ����Щ<r����ʿ>������չ���Լ���ʵ��ô��<n><t>ȥɱ10����1255,2974�� ������<r����ʿ>�������ơ�������о����ˣ���������ν��")
	MisBeginCondition(LvCheck, ">", 28 )
	MisBeginCondition(NoMission, 666)
	MisBeginCondition(NoRecord, 666)
	MisBeginAction(AddMission, 666)
	MisBeginAction(AddTrigger, 6661, TE_KILL, 200, 10 )
	MisCancelAction(ClearMission, 666)

	MisNeed(MIS_NEED_KILL, 200, 10, 10, 10)
	
	MisHelpTalk("<t>10��<r����ʿ>Ӵ���㵽���в��а����ѣ���Ȱ�㻹�ǿ��ܰ�")
	MisResultTalk("<t>�š��������������ǿǿ���������ҵ����ǲ���ˣ�������ˣ��ܵ���˵�㻹�㲻����������Ǹ���Ľ������úø�Ŷ")
	MisResultCondition(NoRecord, 666)
	MisResultCondition(HasMission, 666)
	MisResultCondition(HasFlag, 666, 19 )
	MisResultAction(ClearMission, 666)
	MisResultAction(SetRecord, 666)
	MisResultAction(AddExp, 3000, 3000)
	MisResultAction(AddMoney,417,417)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 200 )	
	TriggerAction( 1, AddNextFlag, 666, 10, 10 )
	RegCurTrigger( 6661 )

-----------------------------------����ʹ�
	DefineMission( 667, "����ʹ�", 667 )
	
	MisBeginTalk( "<t>�����������ʹ����ˣ������Ǵ��������εġ�<n><t>��Ȼ�Һ�������Щ�������޵�<r��������>��������̳���<y����ʹ�>�ļ�Ǯ���ǣ��һ���Ҫ���˰����ռ�����<n><t>���ѣ���Ը������ռ�10��<y����ʹ�>���һḶ�㹤Ǯ�ġ�<n><t><r��������>һ�������ڣ�1507,2970��������<n><t>��˵����ʹڳ��ļ��ʺ�С������Ҳ����������Ƹ���������ȽϺã��ԣ������̳������������֡�")
	MisBeginCondition(LvCheck, ">", 29 )
	MisBeginCondition(NoMission, 667)
	MisBeginCondition(NoRecord, 667)
	MisBeginAction(AddMission, 667)
	MisBeginAction(AddTrigger, 6671, TE_GETITEM, 1757, 10 )
	MisCancelAction(ClearMission, 667)

	MisNeed(MIS_NEED_ITEM, 1757, 10, 10, 10)
	
	MisHelpTalk("<t>��һ�����������<y����ʹ�>��ֵǮ��ʱ��<n><t>�����ҿɾͿ��ˣ�")
	MisResultTalk("<t>лл�㣬��Щ����Ӧ�õĹ�Ǯ��")
	MisResultCondition(NoRecord, 667)
	MisResultCondition(HasMission, 667)
	MisResultCondition(HasItem, 1757, 10)
	MisResultAction(TakeItem, 1757, 10 )
	MisResultAction(ClearMission, 667)
	MisResultAction(SetRecord, 667)
	MisResultAction(AddExp, 3400, 3400)
	MisResultAction(AddMoney,849,849)


	InitTrigger()
	TriggerCondition( 1, IsItem, 1757 )	
	TriggerAction( 1, AddNextFlag, 667, 10, 10 )
	RegCurTrigger( 6671 )

-----------------------------------ˮ��ñ
	DefineMission( 668, "ˮ��ñ", 668 )
	
	MisBeginTalk( "<t>ι����һ�£��ܲ��ܰ��Ҹ�æ����ǰ���ڸ�������һֻ���ཱུ�<rˮ�����>�ǳ��ɰ���<n><t>�ر�������<yˮ�����ñ>����һ�����飬��˼Ľ�롣<n><t>�鷳��ӣ�995,365��������<yˮ�����>������2��<yˮ�����ñ>���Һ�����ʵ��̫ϲ����ñ���ˣ�")
	MisBeginCondition(LvCheck, ">", 9 )
	MisBeginCondition(NoMission, 668)
	MisBeginCondition(NoRecord, 668)
	MisBeginAction(AddMission, 668)
	MisBeginAction(AddTrigger, 6681, TE_GETITEM, 4102, 2 )
	MisCancelAction(ClearMission, 668)

	MisNeed(MIS_NEED_ITEM, 4102, 2, 10, 2)
	
	MisHelpTalk("<t>�������<yˮ�����ñ>����ѽ��")
	MisResultTalk("<t>�ۣ���Ȼ�ÿɰ���лл��Ŷ��")
	MisResultCondition(NoRecord, 668)
	MisResultCondition(HasMission, 668)
	MisResultCondition(HasItem, 4102, 2)
	MisResultAction(TakeItem, 4102, 2 )
	MisResultAction(ClearMission, 668)
	MisResultAction(SetRecord, 668)
	MisResultAction(AddExp, 120, 120)
	MisResultAction(AddMoney,299,299)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4102 )	
	TriggerAction( 1, AddNextFlag, 668, 10, 2 )
	RegCurTrigger( 6681 )

-----------------------------------����֮��
	DefineMission( 669, "����֮��", 669 )
	
	MisBeginTalk( "<t><rˮ����>�Ǳ�ԭ�ϳ����ĵ͵Ⱦ��顣<n><t>���ǼȲ�ϲ�����ű���Ҳ��ϲ�����˴��ţ����Ƕ�������������<n><t>Ҳ��ˣ����������ɵ�<y����֮��>�ܸ���һ�ְ�����͵ĸо���<n><t>��ϣ����ӵ��2��<y����֮��>����������ϵ�ƽ�������ܰ����ռ�����<rˮ����>һ���û�� ��1079,518�� ������")
	MisBeginCondition(LvCheck, ">", 9 )
	MisBeginCondition(NoMission, 669)
	MisBeginCondition(NoRecord, 669)
	MisBeginAction(AddMission, 669)
	MisBeginAction(AddTrigger, 6691, TE_GETITEM, 4418, 2 )
	MisCancelAction(ClearMission, 669)

	MisNeed(MIS_NEED_ITEM, 4418, 2, 10, 2)
	
	MisHelpTalk("<t>��ֻҪ2��<y����֮��>���㹻�ˡ�")
	MisResultTalk("<t>лл�㣬��������Ҫ��<y����֮��>��")
	MisResultCondition(NoRecord, 669)
	MisResultCondition(HasMission, 669)
	MisResultCondition(HasItem, 4418, 2)
	MisResultAction(TakeItem, 4418, 2 )
	MisResultAction(ClearMission, 669)
	MisResultAction(SetRecord, 669)
	MisResultAction(AddExp, 120, 120)
	MisResultAction(AddMoney,299,299)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4418 )	
	TriggerAction( 1, AddNextFlag, 669, 10, 2 )
	RegCurTrigger( 6691 )

-----------------------------------����ˮ��
	DefineMission( 670, "����ˮ��", 670 )
	
	MisBeginTalk( "<t>����Ȼ��ʯ����������ˮ�������ٶ�����覴ã�Ȼ����֪������ʲô�취��<rˮ����>ȴ��������<y������ˮ��>����Щˮ���ں����϶���ֵ���ǡ�<n><t>ֻҪ��Ը��Ϊ�Ҵ򹤣������ǵ�������5��<y������ˮ��>���Ҿ�֧������߶�нˮ��<n><t>�����ȥ��1079,518�� �������ҿ���")
	MisBeginCondition(LvCheck, ">", 10 )
	MisBeginCondition(NoMission, 670)
	MisBeginCondition(NoRecord, 670)
	MisBeginAction(AddMission, 670)
	MisBeginAction(AddTrigger, 6701, TE_GETITEM, 4103, 5 )
	MisCancelAction(ClearMission, 670)

	MisNeed(MIS_NEED_ITEM, 4103, 5, 10, 5)
	
	MisHelpTalk("<t><rˮ����>�ܻỤ�����ǵı��ҪС��Ŷ��")
	MisResultTalk("<t>Ŷ���㿴����󣬲����Ǻų�û��覴õ�<y������ˮ��>ѽ��")
	MisResultCondition(NoRecord, 670)
	MisResultCondition(HasMission, 670)
	MisResultCondition(HasItem, 4103, 5)
	MisResultAction(TakeItem, 4103, 5 )
	MisResultAction(ClearMission, 670)
	MisResultAction(SetRecord, 670)
	MisResultAction(AddExp, 150, 150)
	MisResultAction(AddMoney,318,318)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4103 )	
	TriggerAction( 1, AddNextFlag, 670, 10, 5 )
	RegCurTrigger( 6701 )

----------------------------------��¹����
	DefineMission( 671, "��¹����", 671 )
	
	MisBeginTalk( "<t>��������и���񱣬��ϲ����<t��¹>���������������ǽе�Խ��ң���Խ���ġ�<n><t>�����ڻ�Ǯ����ȥɱ��885,333��������<r��¹>��ֻҪ����ɱ10ֻ<r��¹>�������������ǵİ������Ҿ͸�Ǯ���㣬��ô������Ǯ������׬�ɣ�")
	MisBeginCondition(LvCheck, ">", 11 )
	MisBeginCondition(NoMission, 671)
	MisBeginCondition(NoRecord, 671)
	MisBeginAction(AddMission, 671)
	MisBeginAction(AddTrigger, 6711, TE_KILL, 266, 10 )
	MisCancelAction(ClearMission, 671)

	MisNeed(MIS_NEED_KILL, 266, 10, 10, 10)
	
	MisHelpTalk("<t>��ô���㹤���úܲ�����Ŷ��10ֻ<r��¹>Ӧ�ú�������ɱ�")
	MisResultTalk("<t>�����úܲ���������Ĺ�Ǯ��")
	MisResultCondition(NoRecord, 671)
	MisResultCondition(HasMission, 671)
	MisResultCondition(HasFlag, 671, 19 )
	MisResultAction(ClearMission, 671)
	MisResultAction(SetRecord, 671)
	MisResultAction(AddExp, 190, 190)
	MisResultAction(AddMoney,169,169)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 266 )	
	TriggerAction( 1, AddNextFlag, 671, 10, 10 )
	RegCurTrigger( 6711 )

----------------------------------���ֵ�С����
	DefineMission( 672, "���ֵ�С����", 672 )
	
	MisBeginTalk( "<t>������ܣ��Ҿ��Բ����������¹�����ġ�<n><t>��Ϊ�Ƿ��ֵ�С����ʵ����̫�ɰ��ˡ�<n><t>���������˶����̲�ס��������<n><t>������������ͬһ�������ȴ���ò�������Ϊ����֮�ͣ���Ϊ���������Ŷ��룬���˼ҵĳ�����ȥ�������ԡ�<n><t>�鷳����ɱ10ֻ��885,333��������¹����죬������Щ��첻����͵�����Ժ���")
	MisBeginCondition(LvCheck, ">", 12 )
	MisBeginCondition(NoMission, 672)
	MisBeginCondition(NoRecord, 672)
	MisBeginAction(AddMission, 672)
	MisBeginAction(AddTrigger, 6721, TE_KILL, 34, 10 )
	MisCancelAction(ClearMission, 672)

	MisNeed(MIS_NEED_KILL, 34, 10, 10, 10)
	
	MisHelpTalk("<t>��ֻҪɱ��10ֻ¹�����ͺ��ˣ���ʵ����ĺ�ϲ����������ġ�")
	MisResultTalk("<t>���뾭����ε��¼���¹�����Ӧ�û�����һ���˰ɡ�")
	MisResultCondition(NoRecord, 672)
	MisResultCondition(HasMission, 672)
	MisResultCondition(HasFlag, 672, 19 )
	MisResultAction(ClearMission, 672)
	MisResultAction(SetRecord, 672)
	MisResultAction(AddExp, 240, 240)
	MisResultAction(AddMoney,180,180)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 34 )	
	TriggerAction( 1, AddNextFlag, 672, 10, 10 )
	RegCurTrigger( 6721 )

-----------------------------------��˼����
	DefineMission( 673, "��˼����", 673 )
	
	MisBeginTalk( "<t>�ڱ�ԭ��½�ϣ�������һ����˵����<yޢޢͷ��>�����봰�ڣ���˼�������2��֮�ڣ��ͻ���֡�<n><t>����Ϊ���˵ķ��ԣ��������˺ܾò��������ˡ�<n><t>���ܰ���Ū��2��<yޢޢͷ��>�����ҵȴ��������������һ����������ڣ�738,426���������ҿ���")
	MisBeginCondition(LvCheck, ">", 13 )
	MisBeginCondition(NoMission, 673)
	MisBeginCondition(NoRecord, 673)
	MisBeginAction(AddMission, 673)
	MisBeginAction(AddTrigger, 6731, TE_GETITEM, 1839, 2 )
	MisCancelAction(ClearMission, 673)

	MisNeed(MIS_NEED_ITEM, 1839, 2, 10, 2)
	
	MisHelpTalk("<t>������һ��Ҳ�ã���������õ�2��<yޢޢͷ��>��")
	MisResultTalk("<t>лл�㣬����Ͱ�<yޢޢͷ��>�ҵ�����ȥ��")
	MisResultCondition(NoRecord, 673)
	MisResultCondition(HasMission, 673)
	MisResultCondition(HasItem, 1839, 2)
	MisResultAction(TakeItem, 1839, 2 )
	MisResultAction(ClearMission, 673)
	MisResultAction(SetRecord, 673)
	MisResultAction(AddExp, 290, 290)
	MisResultAction(AddMoney,384,384)


	InitTrigger()
	TriggerCondition( 1, IsItem, 1839 )	
	TriggerAction( 1, AddNextFlag, 673, 10, 2 )
	RegCurTrigger( 6731 )


----------------------------------�鷳��ѩ����
	DefineMission( 674, "�鷳��ѩ����", 674 )
	
	MisBeginTalk( "<t><rѩ����>���������ķ���������򣬿������Ƿ����ĳ�����ȴ�ᱻ<rѩ����>���ܵ�������<rѩ����>�Ŀ��ҡ�<n><t>Ϊ�˲����������µ�<rѩ����>����ϣ��������ɱ10ֻ ��743,358�� ������<rѩ����>����ȷ����������������ǵİ�ȫ��")
	MisBeginCondition(LvCheck, ">", 14 )
	MisBeginCondition(NoMission, 674)
	MisBeginCondition(NoRecord, 674)
	MisBeginAction(AddMission, 674)
	MisBeginAction(AddTrigger, 6741, TE_KILL, 46, 10 )
	MisCancelAction(ClearMission, 674)

	MisNeed(MIS_NEED_KILL, 46, 10, 10, 10)
	
	MisHelpTalk("<t>��ֻҪɱ10ֻ<rѩ����>�ͺ��ˣ�����Ҫ��ɱ�䡣")
	MisResultTalk("<t>����Ϊ�˱����Լ���������<rѩ����>��������Ҳ���Ȳ����ѵġ�")
	MisResultCondition(NoRecord, 674)
	MisResultCondition(HasMission, 674)
	MisResultCondition(HasFlag, 674, 19 )
	MisResultAction(ClearMission, 674)
	MisResultAction(SetRecord, 674)
	MisResultAction(AddExp, 360, 360)
	MisResultAction(AddMoney,204,204)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 46 )	
	TriggerAction( 1, AddNextFlag, 674, 10, 10 )
	RegCurTrigger( 6741 )

-----------------------------------��������
	DefineMission( 675, "��������", 675 )
	
	MisBeginTalk( "<t>��������һ�ֻ����������ɹ��������Լ�����δ���Լ������ӡ�<n><t>���Ѿ������ò���ˣ���������5��<y��������>���������ߣ����ܰ���ȡ5��<y��������>����<n><t>��������������ڣ�743,358�� ������<rѩ����>�����ҵ���")
	MisBeginCondition(LvCheck, ">", 14 )
	MisBeginCondition(NoMission, 675)
	MisBeginCondition(NoRecord, 675)
	MisBeginAction(AddMission, 675)
	MisBeginAction(AddTrigger, 6751, TE_GETITEM, 4427, 5 )
	MisCancelAction(ClearMission, 675)

	MisNeed(MIS_NEED_ITEM, 4427, 5, 10, 5)
	
	MisHelpTalk("<t>��Ҫ��5��<y��������>ʲôʱ���ܸ����أ�")
	MisResultTalk("<t>���µ�����ȫ�ˣ��ҿ��԰��������ˡ�")
	MisResultCondition(NoRecord, 675)
	MisResultCondition(HasMission, 675)
	MisResultCondition(HasItem, 4427, 5)
	MisResultAction(TakeItem, 4427, 5 )
	MisResultAction(ClearMission, 675)
	MisResultAction(SetRecord, 675)
	MisResultAction(AddExp, 360, 360)
	MisResultAction(AddMoney,408,408)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4427 )	
	TriggerAction( 1, AddNextFlag, 675, 10, 5 )
	RegCurTrigger( 6751 )


----------------------------------��������Ⱦ
	DefineMission( 676, "��������Ⱦ", 676 )
	
	MisBeginTalk( "<t>���<r��������>Խ��Խ�����ˣ�ˢ����ʱ��һ�㶼��ע��������Щס�����ε����ǣ�ÿ���峿��ʱ��������ˮ���Ǻ�ɫ��ī֭��һֱ���������ȥ���ò����������ֿ�ʼϴ���ˣ���������ȥ����û�취��ˮ�ˣ�������˵���ܶ�ζ�û���ã�����ֻ���ȸ����ǵ���ɫ�����ˡ�<n><t>��ȥ�ɵ�10�� ��657,411�� ������<r��������>�����ǻ᲻��ѧ�Ե�")
	MisBeginCondition(LvCheck, ">", 15 )
	MisBeginCondition(NoMission, 676)
	MisBeginCondition(NoRecord, 676)
	MisBeginAction(AddMission, 676)
	MisBeginAction(AddTrigger, 6761, TE_KILL, 233, 10 )
	MisCancelAction(ClearMission, 676)

	MisNeed(MIS_NEED_KILL, 233, 10, 10, 10)
	
	MisHelpTalk("<t>�ɵ�����Ҫ10��Ŷ����Ȼ�����ǲ�������в")
	MisResultTalk("<t>�������������е�Ч����Ŷ������������ˮ���ˡ�<n><t>лл�㣬����Ǹ���ı��ꡣ")
	MisResultCondition(NoRecord, 676)
	MisResultCondition(HasMission, 676)
	MisResultCondition(HasFlag, 676, 19 )
	MisResultAction(ClearMission, 676)
	MisResultAction(SetRecord, 676)
	MisResultAction(AddExp, 450, 450)
	MisResultAction(AddMoney,216,216)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 233 )	
	TriggerAction( 1, AddNextFlag, 676, 10, 10 )
	RegCurTrigger( 6761 )

-----------------------------------����ñ��
	DefineMission( 677, "����ñ��", 677 )
	
	MisBeginTalk( "<t>Ŷ�������˵���Ǹ�̰�ĵ��ˣ����Ѿ�ӵ����<yˮ�����ñ>��ȴ����Ҫӵ�пɰ���<y����ñ��>��<n><t>����ñ��Ҳ�ÿɰ����϶����ʺϴ�����ͷ���ء�<n><t>���ԣ���Ը��Ϊ������2��<y����ñ��>�𣿣�657,411�� ������<r��������>��������������ñ�ӡ�")
	MisBeginCondition(LvCheck, ">", 15 )
	MisBeginCondition(NoMission, 677)
	MisBeginCondition(NoRecord, 677)
	MisBeginCondition(HasRecord, 668)
	MisBeginAction(AddMission, 677)
	MisBeginAction(AddTrigger, 6771, TE_GETITEM, 1840, 2 )
	MisCancelAction(ClearMission, 677)

	MisNeed(MIS_NEED_ITEM, 1840, 2, 10, 2)
	
	MisHelpTalk("<t>��Ҫ��<y����ñ��>�أ���Ҫ���ҵ�̫��Ŷ��")
	MisResultTalk("<t>Ŷ�����<y����ñ��>��Ȼ���������Ŀɰ���")
	MisResultCondition(NoRecord, 677)
	MisResultCondition(HasMission, 677)
	MisResultCondition(HasItem, 1840, 2)
	MisResultAction(TakeItem, 1840, 2 )
	MisResultAction(ClearMission, 677)
	MisResultAction(SetRecord, 677)
	MisResultAction(AddExp, 450, 450)
	MisResultAction(AddMoney,433,433)


	InitTrigger()
	TriggerCondition( 1, IsItem, 1840 )	
	TriggerAction( 1, AddNextFlag, 677, 10, 2 )
	RegCurTrigger( 6771 )

----------------------------------����ѩ�ع�
	DefineMission( 678, "����ѩ�ع�", 678 )
	
	MisBeginTalk( "<t>������Ģ��������ʲôĢ���Ҷ����ᣡ<n><t>��һ����Ģ�����������ǧ���ڹ����͹����⸽����һȺ<rѩ�ع�>��Ҳ����ʮ�ֵ�θ�ڣ��鷳������ǳ������𣿵�Ȼ��Ҳ����Ҫɱ��һֻ��ʣ��ֻҪ����10ֻ ��952,550�� ������<rѩ�ع�>���Ҿͺܸм����ˣ�")
	MisBeginCondition(LvCheck, ">", 16 )
	MisBeginCondition(NoMission, 678)
	MisBeginCondition(NoRecord, 678)
	MisBeginAction(AddMission, 678)
	MisBeginAction(AddTrigger, 6781, TE_KILL, 130, 10 )
	MisCancelAction(ClearMission, 678)

	MisNeed(MIS_NEED_KILL, 130, 10, 10, 10)
	
	MisHelpTalk("<t>��ȥ10ֻ<rѩ�ع�>Ӧ���Ǻ�������ɵ�����Ŷ��")
	MisResultTalk("<t>лл�㣡�����Ҹо��������")
	MisResultCondition(NoRecord, 678)
	MisResultCondition(HasMission, 678)
	MisResultCondition(HasFlag, 678, 19 )
	MisResultAction(ClearMission, 678)
	MisResultAction(SetRecord, 678)
	MisResultAction(AddExp, 550, 550)
	MisResultAction(AddMoney,229,229)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 130 )	
	TriggerAction( 1, AddNextFlag, 678, 10, 10 )
	RegCurTrigger( 6781 )

-----------------------------------ѩ��Ģ��
	DefineMission( 679, "ѩ��Ģ��", 679 )
	
	MisBeginTalk( "<t>��һ������ͣ����ں�θ�ھͶ���̫���ˣ�һ������ͼ�Ӳ�Ķ������Բ��¡�<n><t>���ã�952,550�� ��������<yѩ��Ģ��>����ζ�������ָ���Ӫ�������ܰ���ժ5��<yѩ��Ģ��>������")
	MisBeginCondition(LvCheck, ">", 16 )
	MisBeginCondition(NoMission, 679)
	MisBeginCondition(NoRecord, 679)
	MisBeginAction(AddMission, 679)
	MisBeginAction(AddTrigger, 6791, TE_GETITEM, 4104, 5 )
	MisCancelAction(ClearMission, 679)

	MisNeed(MIS_NEED_ITEM, 4104, 5, 10, 5)
	
	MisHelpTalk("<t>��û���õ�<yѩ��Ģ��>�����������������ͷ��")
	MisResultTalk("<t>�٣�ζ���治���ҽ������п�Ҳ���������")
	MisResultCondition(NoRecord, 679)
	MisResultCondition(HasMission, 679)
	MisResultCondition(HasItem, 4104, 5)
	MisResultAction(TakeItem, 4104, 5 )
	MisResultAction(ClearMission, 679)
	MisResultAction(SetRecord, 679)
	MisResultAction(AddExp, 550, 550)
	MisResultAction(AddMoney,459,459)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4104 )	
	TriggerAction( 1, AddNextFlag, 679, 10, 5 )
	RegCurTrigger( 6791 )


----------------------------------�ٶ۵�ѩ����ţ
	DefineMission( 680, "�ٶ۵�ѩ����ţ", 680 )
	
	MisBeginTalk( "<t><rѩ����ţ>���������̵ģ����ǵ����ҵ�·ǰ�����ü��ζ���Щ���Ұ��ء�<n><t>����ʹ��ˣ����ܲ�����������鷳���æɱ��10ֻ ��657,334�� ������<rѩ����ţ>����")
	MisBeginCondition(LvCheck, ">", 17 )
	MisBeginCondition(NoMission, 680)
	MisBeginCondition(NoRecord, 680)
	MisBeginAction(AddMission, 680)
	MisBeginAction(AddTrigger, 6801, TE_KILL, 228, 10 )
	MisCancelAction(ClearMission, 680)

	MisNeed(MIS_NEED_KILL, 228, 10, 10, 10)
	
	MisHelpTalk("<t>���ȥ��<rѩ����ţ>�ɣ�")
	MisResultTalk("<t>лл�㣬���û<rѩ����ţ>��·�ˣ�")
	MisResultCondition(NoRecord, 680)
	MisResultCondition(HasMission, 680)
	MisResultCondition(HasFlag, 680, 19 )
	MisResultAction(ClearMission, 680)
	MisResultAction(SetRecord, 680)
	MisResultAction(AddExp, 650, 650)
	MisResultAction(AddMoney,242,242)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 228 )	
	TriggerAction( 1, AddNextFlag, 680, 10, 10 )
	RegCurTrigger( 6801 )

-----------------------------------����ʯ
	DefineMission( 681, "����ʯ", 681 )
	
	MisBeginTalk( "<t>��<rѩ����ţ>�Ŀ�����ֺ�����ʯͷ����Ϊ<y����ʯ>��<n><t>���ǿ���Ů��Ϊ����������ֲ�﹵ͨ�����µ�ʯͷ��<n><t>��Ȼ������û����֪����ô������ʯͷ�ˣ����Ҳ������Ů�������Ķ��ݡ�<n><t>�鷳��ȥȡ5��<y����ʯ>�����������о�һ�º���������ڣ�657,334�� �����ҵ�������ţ��")
	MisBeginCondition(LvCheck, ">", 18 )
	MisBeginCondition(NoMission, 681)
	MisBeginCondition(NoRecord, 681)
	MisBeginAction(AddMission, 681)
	MisBeginAction(AddTrigger, 6811, TE_GETITEM, 4105, 5 )
	MisCancelAction(ClearMission, 681)

	MisNeed(MIS_NEED_ITEM, 4105, 5, 10, 5)
	
	MisHelpTalk("<t>���ҵ�5��<y����ʯ>����������<rѩ����ţ>�Ŀ��")
	MisResultTalk("<t>лл�㣡����Ϳ�ʼ�����о���")
	MisResultCondition(NoRecord, 681)
	MisResultCondition(HasMission, 681)
	MisResultCondition(HasItem, 4105, 5)
	MisResultAction(TakeItem, 4105, 5 )
	MisResultAction(ClearMission, 681)
	MisResultAction(SetRecord, 681)
	MisResultAction(AddExp, 750, 750)
	MisResultAction(AddMoney,513,513)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4105 )	
	TriggerAction( 1, AddNextFlag, 681, 10, 5 )
	RegCurTrigger( 6811 )

-----------------------------------��ţ����
	DefineMission( 682, "��ţ����", 682 )
	
	MisBeginTalk( "<t>���Ӵ���ʲô���У��⻰һ��û��<n><t>�����ѵ�����<b�ط�>���Ǹ����������ղؼҡ�<n><t>��ϲ���ռ����ֹŹֵ����١�<n><t>�ⲻ���������Ҫ�Ұ�æ�ռ�5<y��������ţ����>��<n><t>���Ǽ����Ҵ�����ȥ���أ����ѣ����ܰ���ȥ����5��<y��������ţ����>��<n><t>������ڣ�657,334�� ������<rѩ����ţ>�����ҵ����ǡ�")
	MisBeginCondition(LvCheck, ">", 19 )
	MisBeginCondition(NoMission, 682)
	MisBeginCondition(NoRecord, 682)
	MisBeginAction(AddMission, 682)
	MisBeginAction(AddTrigger, 6821, TE_GETITEM, 4428, 5 )
	MisCancelAction(ClearMission, 682)

	MisNeed(MIS_NEED_ITEM, 4428, 5, 10, 5)
	
	MisHelpTalk("<t>����Ҫ5��<y��������ţ����>������<b�ط�>���")
	MisResultTalk("<t>�٣���ı����ռ����ˣ�лл��Ŷ��")
	MisResultCondition(NoRecord, 682)
	MisResultCondition(HasMission, 682)
	MisResultCondition(HasItem, 4428, 5)
	MisResultAction(TakeItem, 4428, 5 )
	MisResultAction(ClearMission, 682)
	MisResultAction(SetRecord, 682)
	MisResultAction(AddExp, 880, 880)
	MisResultAction(AddMoney,541,541)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4428 )	
	TriggerAction( 1, AddNextFlag, 682, 10, 5 )
	RegCurTrigger( 6821 )

-----------------------------------Ѱ�ұ�ѩ֮��
	DefineMission( 683, "Ѱ�ұ�ѩ֮��", 683 )
	
	MisBeginTalk( "<t>���ѣ����һ�ȣ��ҵ��������˱�ԭ�Ȳ�������Σ�ڵ�Ϧ��ֻ�У�1055,738��������<r����ѩ����>���ϵ�<y��ѩ֮��>�ܹ�����һ����<n><t>�������ռ�5��<y��ѩ֮��>��������������������ȫ������άϵ�ˣ�")
	MisBeginCondition(LvCheck, ">", 19 )
	MisBeginCondition(NoMission, 683)
	MisBeginCondition(NoRecord, 683)
	MisBeginAction(AddMission, 683)
	MisBeginAction(AddTrigger, 6831, TE_GETITEM, 4431, 5 )
	MisCancelAction(ClearMission, 683)

	MisNeed(MIS_NEED_ITEM, 4431, 5, 10, 5)
	
	MisHelpTalk("<t>��ȥ�ռ�5��<y��ѩ֮��>����")
	MisResultTalk("<t>Ŷ�����������ˣ�лл��ѽ��")
	MisResultCondition(NoRecord, 683)
	MisResultCondition(HasMission, 683)
	MisResultCondition(HasItem, 4431, 5)
	MisResultAction(TakeItem, 4431, 5 )
	MisResultAction(ClearMission, 683)
	MisResultAction(SetRecord, 683)
	MisResultAction(AddExp, 880, 880)
	MisResultAction(AddMoney,541,541)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4431 )	
	TriggerAction( 1, AddNextFlag, 683, 10, 5 )
	RegCurTrigger( 6831 )


----------------------------------����ѩ����
	DefineMission( 684, "����ѩ����", 684 )
	
	MisBeginTalk( "<t>��˵<r����ѩ����>���ٻ���<rѩŮ>�������Ǵ������ѡ�<n><t>��Ȼ���ִ�˵�ܿ�����ҥ������Ҳ����һ�����Ŷȵġ�<n><t>�鷳��ɱ���ܱߵ�10����1055,738��������<r����ѩ����>���������������ﰲ������ɡ�")
	MisBeginCondition(LvCheck, ">", 19 )
	MisBeginCondition(NoMission, 684)
	MisBeginCondition(NoRecord, 684)
	MisBeginAction(AddMission, 684)
	MisBeginAction(AddTrigger, 6841, TE_KILL, 255, 10 )
	MisCancelAction(ClearMission, 684)

	MisNeed(MIS_NEED_KILL, 255, 10, 10, 10)
	
	MisHelpTalk("<t>�㻹ûɱ��10��<r����ѩ����>Ŷ��")
	MisResultTalk("<t>лл��Ŷ������ֵ���������´��в����һ�������ġ�")
	MisResultCondition(NoRecord, 684)
	MisResultCondition(HasMission, 684)
	MisResultCondition(HasFlag, 684, 19 )
	MisResultAction(ClearMission, 684)
	MisResultAction(SetRecord, 684)
	MisResultAction(AddExp, 880, 880)
	MisResultAction(AddMoney,270,270)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 255 )	
	TriggerAction( 1, AddNextFlag, 684, 10, 10 )
	RegCurTrigger( 6841 )

----------------------------------���ܳ���
	DefineMission( 685, "���ܳ���", 685 )
	
	MisBeginTalk( "<t>����˵�������ֶ����ڼ���֮��Ӧ�ö��ߵģ���<rѩ�ܱ���>ȴ��Ϊ�������⺮���˴�½����������������ò�����Ҫ�����ˡ�<n><t>���ǵ�����ת��ɿ���������Щ����ɭ�ֵ��ˣ�ÿ��Ѳ��ɭ�ֶ��ᱻ���úö���<rѩ�ܱ���>Ϯ����Ū��ƣ��������<n><t>�鷳��ȥ��ɱ10ֻ ��958,661�� ������<rѩ�ܱ���>��������ǵ��鷳����")
	MisBeginCondition(LvCheck, ">", 20 )
	MisBeginCondition(NoMission, 685)
	MisBeginCondition(NoRecord, 685)
	MisBeginAction(AddMission, 685)
	MisBeginAction(AddTrigger, 6851, TE_KILL, 142, 10 )
	MisCancelAction(ClearMission, 685)

	MisNeed(MIS_NEED_KILL, 142, 10, 10, 10)
	
	MisHelpTalk("<t>������������ʲô����ȥ��ɱ10ֻ<rѩ�ܱ���>ѽ��")
	MisResultTalk("<t>�٣����������������ô������һȺ<rѩ�ܱ���>��������Ķ��֡�")
	MisResultCondition(NoRecord, 685)
	MisResultCondition(HasMission, 685)
	MisResultCondition(HasFlag, 685, 19 )
	MisResultAction(ClearMission, 685)
	MisResultAction(SetRecord, 685)
	MisResultAction(AddExp, 1000, 1000)
	MisResultAction(AddMoney,285,285)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 142 )	
	TriggerAction( 1, AddNextFlag, 685, 10, 10 )
	RegCurTrigger( 6851 )

-----------------------------------ѩ֮��
	DefineMission( 686, "ѩ֮��", 686 )
	
	MisBeginTalk( "<t>�Ҵӹ�Į��ɳĮ������ֻΪ׷Ѱ<rѩŮ>�Ĵ�˵��ֻ���������<n><t>��˵��<rѩŮ>�ǿ���Ů�����Լ�����ò�Ƴɣ����ǵ������ܻ���һƬƬ<y������ѩƬ>������������ԭ��½��<n><t>��������������2�꣬�������ҵ�<rѩŮ>���ټ���<n><t>���ѣ����ܰ����ҵ�5Ƭ<y������ѩƬ>��֤��<rѩŮ>�Ĵ����𣿴�����<rѩŮ>�ڣ�873,646��������û����")
	MisBeginCondition(LvCheck, ">", 21 )
	MisBeginCondition(NoMission, 686)
	MisBeginCondition(NoRecord, 686)
	MisBeginAction(AddMission, 686)
	MisBeginAction(AddTrigger, 6861, TE_GETITEM, 4438, 5 )
	MisCancelAction(ClearMission, 686)

	MisNeed(MIS_NEED_ITEM, 4438, 5, 10, 5)
	
	MisHelpTalk("<t>���ҵ�5Ƭ<y������ѩƬ>����")
	MisResultTalk("<t>��������Ǵ�˵�е�<y������ѩƬ>�����Ǿ�������������")
	MisResultCondition(NoRecord, 686)
	MisResultCondition(HasMission, 686)
	MisResultCondition(HasItem, 4438, 5)
	MisResultAction(TakeItem, 4438, 5 )
	MisResultAction(ClearMission, 686)
	MisResultAction(SetRecord, 686)
	MisResultAction(AddExp, 1200, 1200)
	MisResultAction(AddMoney,601,601)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4438 )	
	TriggerAction( 1, AddNextFlag, 686, 10, 5 )
	RegCurTrigger( 6861 )


-----------------------------------��ѩ��ʯ
	DefineMission( 687, "��ѩ��ʯ", 687 )
	
	MisBeginTalk( "<t>�٣����ѣ���֪���������ں����Ͻм���ߵĶ�������<rѩŮ>�����ٿر���ѩ<y��ѩ��ʯ>�ˣ�<n><t>��Ȼ��֪����<rѩŮ>����͵�������Ǽ����£�������Ǯ׬˭�ں��أ�<n><t>�����ڳ��߼�����ȥ ��873,646�� ������<rѩŮ>����͵5��<y��ѩˮ��>����Ը���𣿣���Щ��ʯ����ѩŮ��û������������˾͸Ͽ�񣡣�")
	MisBeginCondition(LvCheck, ">", 22 )
	MisBeginCondition(NoMission, 687)
	MisBeginCondition(NoRecord, 687)
	MisBeginAction(AddMission, 687)
	MisBeginAction(AddTrigger, 6871, TE_GETITEM, 4106, 5 )
	MisCancelAction(ClearMission, 687)

	MisNeed(MIS_NEED_ITEM, 4106, 5, 10, 5)
	
	MisHelpTalk("<t>��Ҫ��<rѩŮ>��������õ�<y��ѩ��ʯ>���ɲ���������Ŷ��")
	MisResultTalk("<t>�٣��������治����ȫ��������֣�")
	MisResultCondition(NoRecord, 687)
	MisResultCondition(HasMission, 687)
	MisResultCondition(HasItem, 4106, 5)
	MisResultAction(TakeItem, 4106, 5 )
	MisResultAction(ClearMission, 687)
	MisResultAction(SetRecord, 687)
	MisResultAction(AddExp, 1400, 1400)
	MisResultAction(AddMoney,316,316)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4106 )	
	TriggerAction( 1, AddNextFlag, 687, 10, 5 )
	RegCurTrigger( 6871 )

----------------------------------��ԹѩŮ
	DefineMission( 688, "��ԹѩŮ", 688 )
	
	MisBeginTalk( "<t>���ѣ����������ã�������⸽����<rѩŮ>����������һȺ�����أ�<n><t>�����������������γɱ����½��ѩƬ�����������<y��ѩ��ʯ>�ܲٿر���ѩ��<n><t>���������鲻�õ�ʱ�򣬹���������Թ��������ܶ������أ�<n><t>�鷳��ȥ��ɱ10������Σ�յ�<yѩŮ>��������ڣ�873,646�������ҵ����ǡ�")
	MisBeginCondition(LvCheck, ">", 22 )
	MisBeginCondition(NoMission, 688)
	MisBeginCondition(NoRecord, 688)
	MisBeginAction(AddMission, 688)
	MisBeginAction(AddTrigger, 6881, TE_KILL, 281, 10 )
	MisCancelAction(ClearMission, 688)

	MisNeed(MIS_NEED_KILL, 281, 10, 10, 10)
	
	MisHelpTalk("<t>ֻҪɱ��10��<rѩŮ>�͹��ˣ��㲻��Ҫ̫��ǿ�Լ���")
	MisResultTalk("<t>�������ˣ���Щ����Ӧ�õı��꣡")
	MisResultCondition(NoRecord, 688)
	MisResultCondition(HasMission, 688)
	MisResultCondition(HasFlag, 688, 19 )
	MisResultAction(ClearMission, 688)
	MisResultAction(SetRecord, 688)
	MisResultAction(AddExp, 1400, 1400)
	MisResultAction(AddMoney,316,316)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 281 )	
	TriggerAction( 1, AddNextFlag, 688, 10, 10 )
	RegCurTrigger( 6881 )

----------------------------------����ѩ����
	DefineMission( 689, "����ѩ����", 689 )
	
	MisBeginTalk( "<t>���������Ҹղű�һȺ<rѩ����>׷������Щ�����ǳԵ�����̫�����ˡ�<n><t>���ѣ��Ⱦ��ң��콫��965,775����Χ��10ֻ<rѩ����>ɱ����")
	MisBeginCondition(LvCheck, ">", 23 )
	MisBeginCondition(NoMission, 689)
	MisBeginCondition(NoRecord, 689)
	MisBeginAction(AddMission, 689)
	MisBeginAction(AddTrigger, 6891, TE_KILL, 137, 10 )
	MisCancelAction(ClearMission, 689)

	MisNeed(MIS_NEED_KILL, 137, 10, 10, 10)
	
	MisHelpTalk("<t>�㻹û��ȥ��ɱ<rѩ����>��")
	MisResultTalk("<t>Ŷ��лл�㣬�����ҵľ������ˣ�")
	MisResultCondition(NoRecord, 689)
	MisResultCondition(HasMission, 689)
	MisResultCondition(HasFlag, 689, 19 )
	MisResultAction(ClearMission, 689)
	MisResultAction(SetRecord, 689)
	MisResultAction(AddExp, 1600, 1600)
	MisResultAction(AddMoney,332,332)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 137 )	
	TriggerAction( 1, AddNextFlag, 689, 10, 10 )
	RegCurTrigger( 6891 )

-----------------------------------Ӫ�����߸�
	DefineMission( 690, "Ӫ�����߸�", 690 )
	
	MisBeginTalk( "<t>�ˣ����ѣ����������á�<n><t>���������Թ��߸࣬��������ֻ�� ��891,750�� ������������ϲ��У�<n><t>������Ȼ����ɲ�������Ӧ���ģ����ܰ�æȡ5�����߸������")
	MisBeginCondition(LvCheck, ">", 24 )
	MisBeginCondition(NoMission, 690)
	MisBeginCondition(NoRecord, 690)
	MisBeginAction(AddMission, 690)
	MisBeginAction(AddTrigger, 6901, TE_GETITEM, 4442, 5 )
	MisCancelAction(ClearMission, 690)

	MisNeed(MIS_NEED_ITEM, 4442, 5, 10, 5)
	
	MisHelpTalk("<t>�ˣ����ʱ�ܴ��Ź��߸�����أ�")
	MisResultTalk("<t>Ŷ����������ڹ��߸��ζ����̫��ζ�ˡ�")
	MisResultCondition(NoRecord, 690)
	MisResultCondition(HasMission, 690)
	MisResultCondition(HasItem, 4442, 5)
	MisResultAction(TakeItem, 4442, 5 )
	MisResultAction(ClearMission, 690)
	MisResultAction(SetRecord, 690)
	MisResultAction(AddExp, 1800, 1800)
	MisResultAction(AddMoney,697,697)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4442 )	
	TriggerAction( 1, AddNextFlag, 690, 10, 5 )
	RegCurTrigger( 6901 )

----------------------------------�������ڹ�
	DefineMission( 691, "�������ڹ�", 691 )
	
	MisBeginTalk( "<t>�ˣ����ѣ��������￴��һ����������<n><t>���������ڹ꣬���г��Ŵ���һ���ĳ����ӣ�������������<n><t>���������˵�����ǽ���꣬������ǰ��δ��������������Ըе����𾪣�Ҳ�ֲܿ���<n><t>���ѣ��鷳��ɱ�� ��891,750�� ������10ֻ�������Ҿ�����Щ���������أ�")
	MisBeginCondition(LvCheck, ">", 24 )
	MisBeginCondition(NoMission, 691)
	MisBeginCondition(NoRecord, 691)
	MisBeginAction(AddMission, 691)
	MisBeginAction(AddTrigger, 6911, TE_KILL, 265, 10 )
	MisCancelAction(ClearMission, 691)

	MisNeed(MIS_NEED_KILL, 265, 10, 10, 10)
	
	MisHelpTalk("<t>�ˣ��㻹ûȥ��ɱ�����")
	MisResultTalk("<t>Ŷ�������Ǹ�ֵ���������ˣ�лл��Ŷ��")
	MisResultCondition(NoRecord, 691)
	MisResultCondition(HasMission, 691)
	MisResultCondition(HasFlag, 691, 19 )
	MisResultAction(ClearMission, 691)
	MisResultAction(SetRecord, 691)
	MisResultAction(AddExp, 1800, 1800)
	MisResultAction(AddMoney,348,348)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 265 )	
	TriggerAction( 1, AddNextFlag, 691, 10, 10 )
	RegCurTrigger( 6911 )

----------------------------------Ұ��Ӳ��з
	DefineMission( 692, "Ұ��Ӳ��з", 692 )
	
	MisBeginTalk( "<t>�٣����Ǽ����Ҿ�Ȼ������һȺ Ұ����<rӲ��з>��<n><t>������������������ǵĴ�зǯ�������ҵĻ���<n><t>��ð����ҽ�ѵ��ѵ��Щ�ӻ���<rӲ��з>������Խ��Խ�޷������ˣ�<n><t>ֻҪ��ɱ10ֻ ��994,857�� ������<rӲ��з>�Ϳ��ԣ���Ը����")
	MisBeginCondition(LvCheck, ">", 25 )
	MisBeginCondition(NoMission, 692)
	MisBeginCondition(NoRecord, 692)
	MisBeginAction(AddMission, 692)
	MisBeginAction(AddTrigger, 6921, TE_KILL, 143, 10 )
	MisCancelAction(ClearMission, 692)

	MisNeed(MIS_NEED_KILL, 143, 10, 10, 10)
	
	MisHelpTalk("<t>���Ӧ����ɱ��10ֻ<rӲ��з>��Ŷ����������Ŷ��")
	MisResultTalk("<t>�Ǻǣ�����<rӲ��з>������������Ϊ�˰ɡ�")
	MisResultCondition(NoRecord, 692)
	MisResultCondition(HasMission, 692)
	MisResultCondition(HasFlag, 692, 19 )
	MisResultAction(ClearMission, 692)
	MisResultAction(SetRecord, 692)
	MisResultAction(AddExp, 2000, 2000)
	MisResultAction(AddMoney,365,365)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 143 )	
	TriggerAction( 1, AddNextFlag, 692, 10, 10 )
	RegCurTrigger( 6921 )

-----------------------------------����з�ѽ�
	DefineMission( 693, "����з�ѽ�", 693 )
	
	MisBeginTalk( "<t>��֪���Ұᵽ�����ѩ�صĵط�֮����ԵĶ�����ʲô�����߸ࣿ��������<yӲ��з��>���ɵ�з�ѽ���<n><t>����<rӲ��з>�����ǵ��ѱ����úܺã����ܰ���ȡ5��<yӲ��з��>������������� ��994,857�� �����ҵ�֮���з��")
	MisBeginCondition(LvCheck, ">", 25 )
	MisBeginCondition(NoMission, 693)
	MisBeginCondition(NoRecord, 693)
	MisBeginAction(AddMission, 693)
	MisBeginAction(AddTrigger, 6931, TE_GETITEM, 4107, 5 )
	MisCancelAction(ClearMission, 693)

	MisNeed(MIS_NEED_ITEM, 4107, 5, 10, 5)
	
	MisHelpTalk("<t>��Ҫ��<yӲ��з��>�û�������")
	MisResultTalk("<t>лл����������ˡ�")
	MisResultCondition(NoRecord, 693)
	MisResultCondition(HasMission, 693)
	MisResultCondition(HasItem, 4107, 5)
	MisResultAction(TakeItem, 4107, 5 )
	MisResultAction(ClearMission, 693)
	MisResultAction(SetRecord, 693)
	MisResultAction(AddExp, 2000, 2000)
	MisResultAction(AddMoney,730,730)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4107 )	
	TriggerAction( 1, AddNextFlag, 693, 10, 5 )
	RegCurTrigger( 6931 )

-----------------------------------��ʳר��
	DefineMission( 694, "��ʳר��", 694 )
	
	MisBeginTalk( "<t>��Ϊ<r���غ���>�����ڱ�ԭ֮�ϣ������������������������ס���γ�<y��ס�ĺ�����>��<n><t>��Щ�����˲�����Щ����������<n><t>��ʵ�����С���<y��ס�ĺ�����>�Ƿǳ���ζ�ġ�<n><t>��������˵����Щ����������ˣ��鷳��ȥ��5��<y��ס�ĺ�����>������˵<r���غ���>�ڣ�802,750���������ֹ���")
	MisBeginCondition(LvCheck, ">", 26 )
	MisBeginCondition(NoMission, 694)
	MisBeginCondition(NoRecord, 694)
	MisBeginAction(AddMission, 694)
	MisBeginAction(AddTrigger, 6941, TE_GETITEM, 4464, 5 )
	MisCancelAction(ClearMission, 694)

	MisNeed(MIS_NEED_ITEM, 4464, 5, 10, 5)
	
	MisHelpTalk("<t>�٣���������5��<y��ס�ĺ�����>�أ�")
	MisResultTalk("<t>лл�㣡������Ҫ��Щ������")
	MisResultCondition(NoRecord, 694)
	MisResultCondition(HasMission, 694)
	MisResultCondition(HasItem, 4464, 5)
	MisResultAction(TakeItem, 4464, 5 )
	MisResultAction(ClearMission, 694)
	MisResultAction(SetRecord, 694)
	MisResultAction(AddExp, 2400, 2400)
	MisResultAction(AddMoney,765,765)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4464 )	
	TriggerAction( 1, AddNextFlag, 694, 10, 5 )
	RegCurTrigger( 6941 )

-----------------------------------�ɼ�����֮��
	DefineMission( 695, "�ɼ�����֮��", 695 )
	
	MisBeginTalk( "<t>�٣����ѣ��ܵ�����Щʱ�����ҵ����ѽ���������֮���������Ȥ���������ռ�5��ѩ��Ĵ���֮�飬���ܰ���ȥ�ռ�5��������<n><t>������ڣ�1060,805��������<rѩ��>�����ҵ�����ѩ�顣")
	MisBeginCondition(LvCheck, ">", 27 )
	MisBeginCondition(NoMission, 695)
	MisBeginCondition(NoRecord, 695)
	MisBeginAction(AddMission, 695)
	MisBeginAction(AddTrigger, 6951, TE_GETITEM, 4481, 5 )
	MisCancelAction(ClearMission, 695)

	MisNeed(MIS_NEED_ITEM, 4481, 5, 10, 5)
	
	MisHelpTalk("<t><y����֮��>��<rѩ��>����ꡣ")
	MisResultTalk("<t>лл�㣬����ͷ���������������˲����ˡ�")
	MisResultCondition(NoRecord, 695)
	MisResultCondition(HasMission, 695)
	MisResultCondition(HasItem, 4481, 5)
	MisResultAction(TakeItem, 4481, 5 )
	MisResultAction(ClearMission, 695)
	MisResultAction(SetRecord, 695)
	MisResultAction(AddExp, 2700, 2700)
	MisResultAction(AddMoney,800,800)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4481 )	
	TriggerAction( 1, AddNextFlag, 695, 10, 5 )
	RegCurTrigger( 6951 )

----------------------------------���˵�ѩ����
	DefineMission( 696, "���˵�ѩ����", 696 )
	
	MisBeginTalk( "<t><r����ѩ����>�Ķ��������ֽý���<n><t>������Ϊ�����������ʣ�Ҳ�������ס������˺ܴ���鷳��<n><t>��������Ͷ��<r����ѩ����>�����Ǵ������鷳��<n><t>������ɱ10ֻ��908,842��������<r����ѩ����>���������Ǵ������Ⱥ���")
	MisBeginCondition(LvCheck, ">", 28 )
	MisBeginCondition(NoMission, 696)
	MisBeginCondition(NoRecord, 696)
	MisBeginAction(AddMission, 696)
	MisBeginAction(AddTrigger, 6961, TE_KILL, 256, 10 )
	MisCancelAction(ClearMission, 696)

	MisNeed(MIS_NEED_KILL, 256, 10, 10, 10)
	
	MisHelpTalk("<t>����Ҫ����ɱ10ֻ<r����ѩ����>Ӵ��")
	MisResultTalk("<t>�٣��������治��ϣ�����Ǳ��ֳ��ں�����")
	MisResultCondition(NoRecord, 696)
	MisResultCondition(HasMission, 696)
	MisResultCondition(HasFlag, 696, 19 )
	MisResultAction(ClearMission, 696)
	MisResultAction(SetRecord, 696)
	MisResultAction(AddExp, 3000, 3000)
	MisResultAction(AddMoney,417,417)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 256 )	
	TriggerAction( 1, AddNextFlag, 696, 10, 10 )
	RegCurTrigger( 6961 )

----------------------------------ԭʼѩ��
	DefineMission( 697, "ԭʼѩ��", 697 )
	
	MisBeginTalk( "<t>�٣����ѣ��벻��������չʾ������֣��������и�����Ŷ��<n><t>�⸽����ס�Ŵ�Զ��ʱ���ʹ��ڵ�<rѩ��>�����������Ӵ󣬹�������ǿ�������㷲��������±����ǹ�����<n><t>��Ը�������ʱ��һ��Ӣ�ۣ���ɱ10ֻ ��1495,667�� ������<rѩ��>��")
	MisBeginCondition(LvCheck, ">", 29 )
	MisBeginCondition(NoMission, 697)
	MisBeginCondition(NoRecord, 697)
	MisBeginAction(AddMission, 697)
	MisBeginAction(AddTrigger, 6971, TE_KILL, 98, 10 )
	MisCancelAction(ClearMission, 697)

	MisNeed(MIS_NEED_KILL, 98, 10, 10, 10)
	
	MisHelpTalk("<t>���ģ�<rѩ��>�����̺ܵͣ�ֻҪ���ܵÿ죬һ���������˵ġ�")
	MisResultTalk("<t>�٣��������治��ϣ�����Ǳ��ֳ��ں�����")
	MisResultCondition(NoRecord, 697)
	MisResultCondition(HasMission, 697)
	MisResultCondition(HasFlag, 697, 19 )
	MisResultAction(ClearMission, 697)
	MisResultAction(SetRecord, 697)
	MisResultAction(AddExp, 3400, 3400)
	MisResultAction(AddMoney,424,424)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 98 )	
	TriggerAction( 1, AddNextFlag, 697, 10, 10 )
	RegCurTrigger( 6971 )

-----------------------------------ʧ���¼�
	DefineMission( 698, "ʧ���¼�", 698 )
	
	MisBeginTalk( "<t>��<p���Ǳ��³�>���������Ƶ������ʧ���¼���<n><t>�һ��ɴ����루1495,667�� ������<rѩ��>�йأ���Ŀǰ��û�г�ֵ�֤�ݡ�<n><t>��ϣ�����ܲ��������¡�<n><t>��ֻ�����5��<rѩ��ָ��>�����һ��������ָ����Ĳ�������֤�����ƶ��Ƿ���ȷ�Ϳ����ˡ�")
	MisBeginCondition(LvCheck, ">", 29 )
	MisBeginCondition(NoMission, 698)
	MisBeginCondition(NoRecord, 698)
	MisBeginAction(AddMission, 698)
	MisBeginAction(AddTrigger, 6981, TE_GETITEM, 4446, 5 )
	MisCancelAction(ClearMission, 698)

	MisNeed(MIS_NEED_ITEM, 4446, 5, 10, 5)
	
	MisHelpTalk("<t>��ô�򵥵������㻹û�������")
	MisResultTalk("<t>��֣���Ȼ<rѩ��ָ��>��Ĳ�����������ѪҺ�ļ��󣬵��Ǻ�������Ѫ���ѵ�ʧ���¼������<rѩ��>�޹���")
	MisResultCondition(NoRecord, 698)
	MisResultCondition(HasMission, 698)
	MisResultCondition(HasItem, 4446, 5)
	MisResultAction(TakeItem, 4446, 5 )
	MisResultAction(ClearMission, 698)
	MisResultAction(SetRecord, 698)
	MisResultAction(AddExp, 3400, 3400)
	MisResultAction(AddMoney,849,849)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4446 )	
	TriggerAction( 1, AddNextFlag, 698, 10, 5 )
	RegCurTrigger( 6981 )

----------------------------------��ǿ��ʤ����
	DefineMission( 699, "��ǿ��ʤ����", 699 )
	
	MisBeginTalk( "<t>��Ӵ����Ӵ���㿴�������ϵ��������ⶼ����Щ������<rս��������>Ū�����ġ�<n><t>����̫����ǿ��ʤ�ˣ�ֻҪ��������������������ֻ��һ������Ҳ�����������ս���ġ�<n><t>�鷳��ɱ10ֻ��1453,560��������<rս��������>����Ҫ��������·�������������������ˡ�")
	MisBeginCondition(LvCheck, ">", 30 )
	MisBeginCondition(NoMission, 699)
	MisBeginCondition(NoRecord, 699)
	MisBeginAction(AddMission, 699)
	MisBeginAction(AddTrigger, 6991, TE_KILL, 296, 10 )
	MisCancelAction(ClearMission, 699)

	MisNeed(MIS_NEED_KILL, 296, 10, 10, 10)
	
	MisHelpTalk("<t>��ȥ��ɱ10ֻ<rս��������>������")
	MisResultTalk("<t>�ɵ�Ư������Щ�ͽ����Ҽν���ģ�")
	MisResultCondition(NoRecord, 699)
	MisResultCondition(HasMission, 699)
	MisResultCondition(HasFlag, 699, 19 )
	MisResultAction(ClearMission, 699)
	MisResultAction(SetRecord, 699)
	MisResultAction(AddExp, 3900, 3900)
	MisResultAction(AddMoney,431,431)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 296 )	
	TriggerAction( 1, AddNextFlag, 699, 10, 10 )
	RegCurTrigger( 6991 )

----------------------------------�����ѩ����
	DefineMission( 800, "�����ѩ����", 800 )
	
	MisBeginTalk( "<t>�������������Ǳ��Ǳ��̻�᳤�������ȫ�ǵ����˸���<n><t>��������<r��Ƥѩ����>��ר�Ÿ����ö��鵷�ң����ò������˶����ҵ�<p���Ǳ�>���������ˣ�<n><t>�鷳����ɱ10ֻ��1746,530��������<r��Ƥѩ����>��ά��<p���Ǳ�>��������ҵó�ס�")
	MisBeginCondition(LvCheck, ">", 32 )
	MisBeginCondition(NoMission, 800)
	MisBeginCondition(NoRecord, 800)
	MisBeginAction(AddMission, 800)
	MisBeginAction(AddTrigger, 8001, TE_KILL, 257, 10 )
	MisCancelAction(ClearMission, 800)

	MisNeed(MIS_NEED_KILL, 257, 10, 10, 10)
	
	MisHelpTalk("<t>Ҫ��ɱ10ֻ<r��Ƥѩ����>����Ŷ��")
	MisResultTalk("<t>��ʰ����Щ<r��Ƥѩ����>��ͨ�̵ĵ�·��ȫ���ˡ�")
	MisResultCondition(NoRecord, 800)
	MisResultCondition(HasMission, 800)
	MisResultCondition(HasFlag, 800, 19 )
	MisResultAction(ClearMission, 800)
	MisResultAction(SetRecord, 800)
	MisResultAction(AddExp, 4900, 4900)
	MisResultAction(AddMoney,446,446)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 257 )	
	TriggerAction( 1, AddNextFlag, 800, 10, 10 )
	RegCurTrigger( 8001 )

-----------------------------------��걦ʯ
	DefineMission( 801, "��걦ʯ", 801 )
	
	MisBeginTalk( "<t><p���Ǳ��³�>��ʧ���¼����ڳ������������Ǵ󲿷ֶ���ʧ��<r��Ƥѩ����>��û�ĵط����һ��������¼���<r��Ƥѩ����>�Ѳ��˹�ϵ��<n><t>���ܴӣ�1746,530��������<r��Ƥѩ����>������5��<y��걦ʯ>���ң������ҵ�����")
	MisBeginCondition(LvCheck, ">", 33 )
	MisBeginCondition(NoMission, 801)
	MisBeginCondition(NoRecord, 801)
	MisBeginAction(AddMission, 801)
	MisBeginAction(AddTrigger, 8011, TE_GETITEM, 4108, 5 )
	MisCancelAction(ClearMission, 801)

	MisNeed(MIS_NEED_ITEM, 4108, 5, 10, 5)
	
	MisHelpTalk("<t>���ҵ�5��<y��걦ʯ>����")
	MisResultTalk("<t>��ѽ��ԭ����Щʧ�ٵ��˵���궼��������<r��걦ʯ>��ȥ�ˣ�<n><t>�ҵ�ȥ�����Ҳ�Ҫ����<r��Ƥѩ����>��")
	MisResultCondition(NoRecord, 801)
	MisResultCondition(HasMission, 801)
	MisResultCondition(HasItem, 4108, 5)
	MisResultAction(TakeItem, 4108, 5 )
	MisResultAction(ClearMission, 801)
	MisResultAction(SetRecord, 801)
	MisResultAction(AddExp, 5500, 5500)
	MisResultAction(AddMoney,907,907)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4108 )	
	TriggerAction( 1, AddNextFlag, 801, 10, 5 )
	RegCurTrigger( 8011 )

----------------------------------��ɱ�޹�
	DefineMission( 802, "��ɱ�޹�", 802 )
	
	MisBeginTalk( "<t>��Ҫ��ȥ��ɱ��2165,462��������10ֻ<r�����>��û���κ����ɣ�ֻ���ҿ���˳����Щ������������ˡ�<n><t>��Ȼ���Ҳ�������׸ɵģ����������ˣ��һᷢ�ͽ����ġ�")
	MisBeginCondition(LvCheck, ">", 34 )
	MisBeginCondition(NoMission, 802)
	MisBeginCondition(NoRecord, 802)
	MisBeginAction(AddMission, 802)
	MisBeginAction(AddTrigger, 8021, TE_KILL, 141, 10 )
	MisCancelAction(ClearMission, 802)

	MisNeed(MIS_NEED_KILL, 141, 10, 10, 10)
	
	MisHelpTalk("<t>Ҫ���ͽ����ɱ��10ֻ<r�����>��˵��")
	MisResultTalk("<t>�٣��������Ǹ�����ͽ�")
	MisResultCondition(NoRecord, 802)
	MisResultCondition(HasMission, 802)
	MisResultCondition(HasFlag, 802, 19 )
	MisResultAction(ClearMission, 802)
	MisResultAction(SetRecord, 802)
	MisResultAction(AddExp, 6200, 6200)
	MisResultAction(AddMoney,461,461)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 141 )	
	TriggerAction( 1, AddNextFlag, 802, 10, 10 )
	RegCurTrigger( 8021 )

-----------------------------------�������ϵ��˿�
	DefineMission( 803, "�������ϵ��˿�", 803 )
	
	MisBeginTalk( "<t>��ǰЩ�����⵽<r������ʿ>��Ϯ������Ȼ���˼���������ֱ�������˿���΢�ܺ��ͻ��ʹ���̡�<n><t>����˵��2165,462������<r�ͺ���>���ϵ�<y�ᷢ�ȵĹ��>�������˿ڵ����Ϻ�����Ч��<n><t>���ܰ�æȡ5��<y�ᷢ�ȵĹ��>���������˿�����")
	MisBeginCondition(LvCheck, ">", 34 )
	MisBeginCondition(NoMission, 803)
	MisBeginCondition(NoRecord, 803)
	MisBeginAction(AddMission, 803)
	MisBeginAction(AddTrigger, 8031, TE_GETITEM, 4468, 5 )
	MisCancelAction(ClearMission, 803)

	MisNeed(MIS_NEED_ITEM, 4468, 5, 10, 5)
	
	MisHelpTalk("<t>��ѽ���˿�����ʹ�ˣ���ʲôʱ�����ռ���5��<y�ᷢ�ȵĹ��>��")
	MisResultTalk("<t>����лл�㣬����<y�ᷢ�ȵĹ��>���Ҹо��ö��ˡ�")
	MisResultCondition(NoRecord, 803)
	MisResultCondition(HasMission, 803)
	MisResultCondition(HasItem, 4468, 5)
	MisResultAction(TakeItem, 4468, 5 )
	MisResultAction(ClearMission, 803)
	MisResultAction(SetRecord, 803)
	MisResultAction(AddExp, 6900, 6900)
	MisResultAction(AddMoney,939,939)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4468 )	
	TriggerAction( 1, AddNextFlag, 803, 10, 5 )
	RegCurTrigger( 8031 )

----------------------------------����֮��
	DefineMission( 804, "����֮��", 804 )
	
	MisBeginTalk( "<t>�٣��㿴����Щ<r����>������˵������ʲô�Ƽ���ͳ����ı��������Ů������͵�������������ȫ��һ���ģ�<n><t>Ҳ����˵���Ǿ���а��Ĳ���ѽ��<n><t>���ѣ������Ҳ����Ů�������鷳���æ����10ֻ��2266,590��������<r����>����")
	MisBeginCondition(LvCheck, ">", 36 )
	MisBeginCondition(NoMission, 804)
	MisBeginCondition(NoRecord, 804)
	MisBeginAction(AddMission, 804)
	MisBeginAction(AddTrigger, 8041, TE_KILL, 297, 10 )
	MisCancelAction(ClearMission, 804)

	MisNeed(MIS_NEED_KILL, 297, 10, 10, 10)
	
	MisHelpTalk("<t>���Ӧ����ɱ10ֻ<r����>����ô�����ڻ�û�а쵽��")
	MisResultTalk("<t>лл���Э����")
	MisResultCondition(NoRecord, 804)
	MisResultCondition(HasMission, 804)
	MisResultCondition(HasFlag, 804, 19 )
	MisResultAction(ClearMission, 804)
	MisResultAction(SetRecord, 804)
	MisResultAction(AddExp, 7700, 7700)
	MisResultAction(AddMoney,477,477)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 297 )	
	TriggerAction( 1, AddNextFlag, 804, 10, 10 )
	RegCurTrigger( 8041 )

-----------------------------------��Ы֮��
	DefineMission( 805, "��Ы֮��", 805 )
	
	MisBeginTalk( "<t>���ѣ����������ã��ҵ�Ů��<b����>��<r��Ы>�ݹ�֮��һֱ���Ե����ڣ�<n><t>������Ҫ���������鲻����ȥ���ҩ��<n><t>�鷳��ȥ�ռ�5��<y�ⶾЫ��Ѫ>���ҡ�<n><t>��Ҫ�Զ������������ȵ�����������Ե���2370,548�������ҵ�����Ы�ӡ�")
	MisBeginCondition(LvCheck, ">", 37 )
	MisBeginCondition(NoMission, 805)
	MisBeginCondition(NoRecord, 805)
	MisBeginAction(AddMission, 805)
	MisBeginAction(AddTrigger, 8051, TE_GETITEM, 4482, 5 )
	MisCancelAction(ClearMission, 805)

	MisNeed(MIS_NEED_ITEM, 4482, 5, 10, 5)
	
	MisHelpTalk("<t>�²��˳٣����ռ�5��<y�ⶾЫ��Ѫ>���ҡ�")
	MisResultTalk("<t>̫���ˣ�<y�ⶾЫ��Ѫ>��Ч�ˣ������ѹ����ˡ�")
	MisResultCondition(NoRecord, 805)
	MisResultCondition(HasMission, 805)
	MisResultCondition(HasItem, 4482, 5)
	MisResultAction(TakeItem, 4482, 5 )
	MisResultAction(ClearMission, 805)
	MisResultAction(SetRecord, 805)
	MisResultAction(AddExp, 8600, 8600)
	MisResultAction(AddMoney,972,972)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4482 )	
	TriggerAction( 1, AddNextFlag, 805, 10, 5 )
	RegCurTrigger( 8051 )

----------------------------------��·�ȷ�
	DefineMission( 806, "��·�ȷ�", 806 )
	
	MisBeginTalk( "<t>�٣����ѣ����������ã�<n><t>�Ҵ�����ҵ�Ů��<b����>һ��ȥ<p���Ǳ�>�ȼ٣��������ǵıؾ�֮·ȴ���׺ݵ�<r������>ռ���ˡ�<n><t>������ɱ10ֻ��1981,530��������<r������>�������ǿ���һ��·����")
	MisBeginCondition(LvCheck, ">", 38 )
	MisBeginCondition(NoMission, 806)
	MisBeginCondition(NoRecord, 806)
	MisBeginAction(AddMission, 806)
	MisBeginAction(AddTrigger, 8061, TE_KILL, 259, 10 )
	MisCancelAction(ClearMission, 806)

	MisNeed(MIS_NEED_KILL, 259, 10, 10, 10)
	
	MisHelpTalk("<t>����Ҫ��ɱ��10ֻ<r������>��")
	MisResultTalk("<t>лл�㣡��������ܹ�����ȥ�ȼ��ˡ�")
	MisResultCondition(NoRecord, 806)
	MisResultCondition(HasMission, 806)
	MisResultCondition(HasFlag, 806, 19 )
	MisResultAction(ClearMission, 806)
	MisResultAction(SetRecord, 806)
	MisResultAction(AddExp, 9600, 9600)
	MisResultAction(AddMoney,495,495)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 259 )	
	TriggerAction( 1, AddNextFlag, 806, 10, 10 )
	RegCurTrigger( 8061 )

-----------------------------------ѩӰ��
	DefineMission( 807, "ѩӰ��", 807 )
	
	MisBeginTalk( "<t>�٣����ѣ�������⣨2269,590��������<rѩ����>�ɣ���֪������Ϊʲôһֱ�ǻ���������ô���ӵĵش���������Ϊ�������ػ�һ�ѽ���<yѩӰ��>�ı�����<n><t>�Ҷ���ѽ��ܸ���Ȥ�����ѣ���Ը��ȥ������һ���𣿣�����������ܺ���Ŷ������һ�Ѳ���ʯͷ��Ľ���ȥ���������ɣ���")
	MisBeginCondition(LvCheck, ">", 38 )
	MisBeginCondition(NoMission, 807)
	MisBeginCondition(NoRecord, 807)
	MisBeginAction(AddMission, 807)
	MisBeginAction(AddTrigger, 8071, TE_GETITEM, 4109, 1 )
	MisCancelAction(ClearMission, 807)

	MisNeed(MIS_NEED_ITEM, 4109, 1, 10, 1)
	
	MisHelpTalk("<t>�㻹û���ҵ��ǰ�<yѩӰ��>��")
	MisResultTalk("<t>�٣������ǰѾ����ý���")
	MisResultCondition(NoRecord, 807)
	MisResultCondition(HasMission, 807)
	MisResultCondition(HasItem, 4109, 1)
	MisResultAction(TakeItem, 4109, 1 )
	MisResultAction(ClearMission, 807)
	MisResultAction(SetRecord, 807)
	MisResultAction(AddExp, 9600, 9600)
	MisResultAction(AddMoney,495,495)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4109 )	
	TriggerAction( 1, AddNextFlag, 807, 10, 1 )
	RegCurTrigger( 8071 )

----------------------------------��ʿ����
	DefineMission( 808, "��ʿ����", 808 )
	
	MisBeginTalk( "<t>Ҳ�������ܿ����������������Ķ�����Ե�ʣ��ҳ��������⸽����ʿ����İ�������<n><t>������Щ<r������ʿ>�������κ�֮����������������<n><t>ֻҪ�ܷ������ǵ��������壬���ܽ�����ǵ���ꡣ<n><t>���ѣ���Ը������ң���ɱ10����2269,470��������<r������ʿ>���Խ�����ǵ������")
	MisBeginCondition(LvCheck, ">", 39 )
	MisBeginCondition(NoMission, 808)
	MisBeginCondition(NoRecord, 808)
	MisBeginAction(AddMission, 808)
	MisBeginAction(AddTrigger, 8081, TE_KILL, 268, 10 )
	MisCancelAction(ClearMission, 808)

	MisNeed(MIS_NEED_KILL, 268, 10, 10, 10)
	
	MisHelpTalk("<t>���ѣ����Ӧ��Ҫ��ɱ10��<r������ʿ>���ɲ���ʳ��Ŷ��")
	MisResultTalk("<t>лл��������Щ����ŵ�<r������ʿ>Ҳ��м���ġ�")
	MisResultCondition(NoRecord, 808)
	MisResultCondition(HasMission, 808)
	MisResultCondition(HasFlag, 808, 19 )
	MisResultAction(ClearMission, 808)
	MisResultAction(SetRecord, 808)
	MisResultAction(AddExp, 10600, 10600)
	MisResultAction(AddMoney,504,504)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 268 )	
	TriggerAction( 1, AddNextFlag, 808, 10, 10 )
	RegCurTrigger( 8081 )

----------------------------------��Ѫ�Ĺ���
	DefineMission( 809, "��Ѫ�Ĺ���", 809 )
	
	MisBeginTalk( "<t>��<p����>���һ�ֿ��˵�ѪҺ��������Ĺ�����ǵ����ֽ���<r��Ѫ����>��<n><t>�������ǵĴ��ڣ��ܶ�󹤶����ڹ���ʱ����ƶѪ����<n><t>����״�������˿�����ȥ��<n><t>�鷳����ɱ10ֻ��2���<r��Ѫ����>���ÿ��ǵ����Ӻù������")
	MisBeginCondition(LvCheck, ">", 29 )
	MisBeginCondition(NoMission, 809)
	MisBeginCondition(NoRecord, 809)
	MisBeginAction(AddMission, 809)
	MisBeginAction(AddTrigger, 8091, TE_KILL, 82, 10 )
	MisCancelAction(ClearMission, 809)

	MisNeed(MIS_NEED_KILL, 82, 10, 10, 10)
	
	MisHelpTalk("<t>��Ҫɱ��10ֻ<r��Ѫ����>����Ŷ��")
	MisResultTalk("<t>�Ҹ�л��Ϊ������һ�У�")
	MisResultCondition(NoRecord, 809)
	MisResultCondition(HasMission, 809)
	MisResultCondition(HasFlag, 809, 19 )
	MisResultAction(ClearMission, 809)
	MisResultAction(SetRecord, 809)
	MisResultAction(AddExp, 3500, 3500)
	MisResultAction(AddMoney,424,424)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 82 )	
	TriggerAction( 1, AddNextFlag, 809, 10, 10 )
	RegCurTrigger( 8091 )

-----------------------------------����İ�ȫñ
	DefineMission( 810, "����İ�ȫñ", 810 )
	
	MisBeginTalk( "<t>���������<b³³>�����<p����>��ȥ�档<n><t>�������������˶�û�а�ȫñ�����˲�׼���ǽ�ȥ��<n><t>���ܰ���ȥ��������<r��צ����>������2��<y����İ�ȫñ>�������ˣ�������ĺ���ȥ<p����>�棡")
	MisBeginCondition(LvCheck, ">", 32 )
	MisBeginCondition(NoMission, 810)
	MisBeginCondition(NoRecord, 810)
	MisBeginAction(AddMission, 810)
	MisBeginAction(AddTrigger, 8101, TE_GETITEM, 4448, 2 )
	MisCancelAction(ClearMission, 810)

	MisNeed(MIS_NEED_ITEM, 4448, 2, 10, 2)
	
	MisHelpTalk("<t>ʲôʱ���Ҳ����õ�2��<y����İ�ȫñ>ѽ��")
	MisResultTalk("<t>Ŷ��̫��л���ˣ��Һ�<b³³>���Է���ȥ������")
	MisResultCondition(NoRecord, 810)
	MisResultCondition(HasMission, 810)
	MisResultCondition(HasItem, 4448, 2)
	MisResultAction(TakeItem, 4448, 2 )
	MisResultAction(ClearMission, 810)
	MisResultAction(SetRecord, 810)
	MisResultAction(AddExp, 4900, 4900)
	MisResultAction(AddMoney,892,892)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4448 )	
	TriggerAction( 1, AddNextFlag, 810, 10, 2 )
	RegCurTrigger( 8101 )


-----------------------------------������ཬ
	DefineMission( 811, "������ཬ", 811 )
	
	MisBeginTalk( "<t>�������ˣ��Ҹ�����<p����>�ͷ���һ���ཬ�������������ģ��Ҵ���û�뵽���ཬҲ������ӵ��������һ�죡<n><t>���ܴ����ǵ������ռ�5��<yճ���������>���ҷ���һ����������ô���������ĺ�����Щ��ֵı������ﾭ���ڣ�934,2747����û��")
	MisBeginCondition(LvCheck, ">", 33 )
	MisBeginCondition(NoMission, 811)
	MisBeginCondition(NoRecord, 811)
	MisBeginAction(AddMission, 811)
	MisBeginAction(AddTrigger, 8111, TE_GETITEM, 4363, 5 )
	MisCancelAction(ClearMission, 811)

	MisNeed(MIS_NEED_ITEM, 4363, 5, 10, 5)
	
	MisHelpTalk("<t>���ռ���5��<yճ���������>����")
	MisResultTalk("<t>Ŷ����Щ<r�ཬ��>��������Ȼ�ṹ�򵥣���ʵ����ȴ�ܸ����أ�")
	MisResultCondition(NoRecord, 811)
	MisResultCondition(HasMission, 811)
	MisResultCondition(HasItem, 4363, 5)
	MisResultAction(TakeItem, 4363, 5 )
	MisResultAction(ClearMission, 811)
	MisResultAction(SetRecord, 811)
	MisResultAction(AddExp, 5500, 5500)
	MisResultAction(AddMoney,907,907)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4363 )	
	TriggerAction( 1, AddNextFlag, 811, 10, 5 )
	RegCurTrigger( 8111 )

----------------------------------�����ཬ��
	DefineMission( 812, "�����ཬ��", 812 )
	
	MisBeginTalk( "<t>���أ�������ȥ<p����>���ھ��ʯ����Ҫ�������á�<n><t>����һ��<r�ཬ��>�����������Ͷ��������ҵ����·��ϡ�<n><t>���أ������ʲ��������������������ɱ10ֻ��934,2747��������<r�ཬ��>������")
	MisBeginCondition(LvCheck, ">", 34 )
	MisBeginCondition(NoMission, 812)
	MisBeginCondition(NoRecord, 812)
	MisBeginAction(AddMission, 812)
	MisBeginAction(AddTrigger, 8121, TE_KILL, 253, 10 )
	MisCancelAction(ClearMission, 812)

	MisNeed(MIS_NEED_KILL, 253, 10, 10, 10)
	
	MisHelpTalk("<t>�㻹ûɱ��10ֻ<r�ཬ��>���ҵȵú��ż�Ŷ��")
	MisResultTalk("<t>лл�㣡лл�㣡")
	MisResultCondition(NoRecord, 812)
	MisResultCondition(HasMission, 812)
	MisResultCondition(HasFlag, 812, 19 )
	MisResultAction(ClearMission, 812)
	MisResultAction(SetRecord, 812)
	MisResultAction(AddExp, 6200, 6200)
	MisResultAction(AddMoney,461,461)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 253 )	
	TriggerAction( 1, AddNextFlag, 812, 10, 10 )
	RegCurTrigger( 8121 )


----------------------------------��צ����
	DefineMission( 813, "��צ����", 813 )
	
	MisBeginTalk( "<t>����<p�Ͽ�>��̽��ʱ�⵽��<r��צ����>��ͻȻϮ����<n><t>������������צ�ݺݵ�ץ�����ң��������ҵ��˿ڻ���������ʹ��<n><t>�������Һݺݵؽ�ѵһ����Щ<r��צ����>��ֻҪ����ɱ10ֻ�Ͽ�����<r��צ����>���У�")
	MisBeginCondition(LvCheck, ">", 35 )
	MisBeginCondition(NoMission, 813)
	MisBeginCondition(NoRecord, 813)
	MisBeginAction(AddMission, 813)
	MisBeginAction(AddTrigger, 8131, TE_KILL, 88, 10 )
	MisCancelAction(ClearMission, 813)

	MisNeed(MIS_NEED_KILL, 88, 10, 10, 10)
	
	MisHelpTalk("<t>�㻹ûɱ��10ֻ<r��צ����>Ŷ")
	MisResultTalk("<t>лл�㣬�������泩���ˣ�")
	MisResultCondition(NoRecord, 813)
	MisResultCondition(HasMission, 813)
	MisResultCondition(HasFlag, 813, 19 )
	MisResultAction(ClearMission, 813)
	MisResultAction(SetRecord, 813)
	MisResultAction(AddExp, 6900, 6900)
	MisResultAction(AddMoney,469,469)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 88 )	
	TriggerAction( 1, AddNextFlag, 813, 10, 10 )
	RegCurTrigger( 8131 )

-----------------------------------�������｣
	DefineMission( 814, "�������｣", 814 )
	
	MisBeginTalk( "<t><r��������>��ʹ�õ���������֣�������һ�ֽ���<y�������｣>��������<n><t>��������׼ȷ�ʸߣ�ɱ�����ּ����ҷǳ�����Ȥ��<n><t>����ȥ<p�Ͽ�>���Ѳ�<r��������>���ռ�10��<y�������｣>�����ҿ�����<n><t>������ڷϿ�����ҵ�<r��������>���ټ���")
	MisBeginCondition(LvCheck, ">", 33 )
	MisBeginCondition(NoMission, 814)
	MisBeginCondition(NoRecord, 814)
	MisBeginAction(AddMission, 814)
	MisBeginAction(AddTrigger, 8141, TE_GETITEM, 3935, 10 )
	MisCancelAction(ClearMission, 814)

	MisNeed(MIS_NEED_ITEM, 3935, 10, 10, 10)
	
	MisHelpTalk("<t>���ҵ�10��<y�������｣>����")
	MisResultTalk("<t>Ŷ��лл����̫������<y�������｣>�ˣ�")
	MisResultCondition(NoRecord, 814)
	MisResultCondition(HasMission, 814)
	MisResultCondition(HasItem, 3935, 10)
	MisResultAction(TakeItem, 3935, 10 )
	MisResultAction(ClearMission, 814)
	MisResultAction(SetRecord, 814)
	MisResultAction(AddExp, 8600, 8600)
	MisResultAction(AddMoney,972,972)


	InitTrigger()
	TriggerCondition( 1, IsItem, 3935 )	
	TriggerAction( 1, AddNextFlag, 814, 10, 10 )
	RegCurTrigger( 8141 )

-----------------------------------����
	DefineMission( 837, "����", 837 )
	
	MisBeginTalk( "<t>�����ˣ���һ�����������ӵ°ɣ�����һ��������������ӣ�һ������ս�����ϡ�<n><t>�����֤�����Լ��Ļ���ȥɱ5������սʿ�����Ǿ��ڿ����ӵµĶ��Ϸ��򣬲�����������һ������ȥ�ġ�")
	MisBeginCondition(LvCheck, ">", 39 )
	MisBeginCondition(NoMission, 837)
	MisBeginCondition(NoRecord, 837)
	MisBeginAction(AddMission, 837)
	MisBeginAction(AddTrigger, 8371, TE_KILL, 248, 5 )
	MisCancelAction(ClearMission, 837)

	MisNeed(MIS_NEED_DESP, "��Ϊ���ϡ������£�646,2088��ɱ��5������սʿ")
	MisNeed(MIS_NEED_KILL, 248, 5, 10, 5)

	MisHelpTalk("5������սʿ���ѣ��㻹����ԥʲô����ȥ��")
	MisResultTalk("�ܺã��������ҵ����Σ����������Ծ���Ҫ����Ŀ���")
	MisResultCondition(NoRecord, 837)
	MisResultCondition(HasMission, 837)
	MisResultCondition(HasFlag, 837, 14)
	MisResultAction(ClearMission, 837)
	MisResultAction(SetRecord, 837)
	MisResultAction(AddExp,15692,15692)
	MisResultAction(AddMoney,1026,1026)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 248 )	
	TriggerAction( 1, AddNextFlag, 837, 10, 5 )
	RegCurTrigger( 8371 )


-----------------------------------����
	DefineMission( 838, "����", 838 )
	
	MisBeginTalk( "<t>������һ�ε�ս����ɳ��˲��������Ȼȡ�����ҵ����Σ������һ������ڿ�����һ�£��Ͼ�5������սʿ����һ������˵̫���ˡ�<n><t>��ε�Ŀ����30������սʿ������㻹��������ɵĻ����ҽ����������һ��������")
	--MisBeginCondition(LvCheck, ">", 40 )
	MisBeginCondition(HasRecord, 837)
	MisBeginCondition(NoMission, 838)
	MisBeginCondition(NoRecord, 838)
	MisBeginAction(AddMission, 838)
	MisBeginAction(AddTrigger, 8381, TE_KILL, 248, 30 )
	MisCancelAction(ClearMission, 838)
	
	MisNeed(MIS_NEED_DESP, "��Ϊ���ϡ������£�646,2088��ɱ��30������սʿ")
	MisNeed(MIS_NEED_KILL, 248, 30, 10, 30)
	
	MisHelpTalk("Ŀ����30������սʿ��������˾����ڷ�����")
	MisResultTalk("������̫���ˣ���ȥ�ɣ�������Ӧ�õĽ���")
	MisResultCondition(NoRecord, 838)
	MisResultCondition(HasMission, 838)
	MisResultCondition(HasFlag, 838, 39)
	MisResultAction(ClearMission, 838)
	MisResultAction(SetRecord, 838)
	MisResultAction(AddExp,15692,15692)
	MisResultAction(AddMoney,1026,1026)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 248 )	
	TriggerAction( 1, AddNextFlag, 838, 10, 30 )
	RegCurTrigger( 8381 )


-----------------------------------������Ŀ��
	DefineMission( 839, "������Ŀ��", 839 )
	
	MisBeginTalk( "<t>�����������ӿɽ�Ҳ��������ս���Ѿ����ҿ��������ʵ������Ҳ�ø�������������Ŀ���ˡ�<n><t>��������ս����ҲӦ���ռ���һЩ���������˰ɣ������Ը������е�12�����ң��һ��Ը����������Щ������㽻����")
	--MisBeginCondition(LvCheck, ">", 40 )
	MisBeginCondition(HasRecord, 838)
	MisBeginCondition(NoMission, 839)
	MisBeginCondition(NoRecord, 839)
	MisBeginAction(AddMission, 839)
	MisBeginAction(AddTrigger, 8391, TE_GETITEM, 4914, 12 )
	MisCancelAction(ClearMission, 839)
	
	MisNeed(MIS_NEED_DESP, "��Ϊ���ϡ������£�646,2088���һ�12����������")
	MisNeed(MIS_NEED_ITEM, 4914, 12, 10, 12)
	
	MisHelpTalk("���ڵ�ʲô������Ҫ12���������ƣ���ȥ��������")
	MisResultTalk("�쿴������ʲô�����İ����������ư��������������������ô���׵�����֮�֣���������ˣ���Ҫ��������Ľ�����<n><t>��������������Щ�����Ķ�����Ŷ��Ŷ����")
	MisResultCondition(NoRecord, 839)
	MisResultCondition(HasMission, 839)
	MisResultCondition(HasItem, 4914, 12)
	MisResultAction(TakeItem, 4914, 12)
	MisResultAction(ClearMission, 839)
	MisResultAction(SetRecord, 839)
	MisResultAction(AddExp,15692,15692)
	MisResultAction(AddMoney,1026,1026)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4914 )	
	TriggerAction( 1, AddNextFlag, 839, 10, 12 )
	RegCurTrigger( 8391 )



-----------------------------------���񰮺���
	DefineMission( 840, "���񰮺���", 840 )
	
	MisBeginTalk( "<t>��ã�����һ�����񰮺��ߣ�������ڹ�˼һ�����͸��񣬵��ǣ����ڸ��������ֶ��������ռ�ţ��Ҹ���û�п���ʹ�õ�������<n><t>������㲻æ�Ļ����ܲ��ܰ��ҵ����ߵ��������ռ�5���ɿݵ���֦���һᾡ�����ܵı������")
	MisBeginCondition(LvCheck, ">", 42 )
	--MisBeginCondition(HasRecord, 838)
	MisBeginCondition(NoMission, 840)
	MisBeginCondition(NoRecord, 840)
	MisBeginAction(AddMission, 840)
	MisBeginAction(AddTrigger, 8401, TE_GETITEM, 4915, 5 )
	MisCancelAction(ClearMission, 840)
	
	MisNeed(MIS_NEED_DESP, "�ﺣ����΢�磨622,2106������5���ɿݵ�����")
	MisNeed(MIS_NEED_ITEM, 4915, 5, 10, 5)
	
	MisHelpTalk("��л��İ�æ������Ҫ5���ɿݵ��������ҵ��˼ǵ�������")
	MisResultTalk("����Ҫ�ľ��������Ŷ���ҵ�����籡����������̫��л���ˣ�������Ľ�����ԸŮ������")
	MisResultCondition(NoRecord, 840)
	MisResultCondition(HasMission, 840)
	MisResultCondition(HasItem, 4915, 5)
	MisResultAction(TakeItem, 4915, 5)
	MisResultAction(ClearMission, 840)
	MisResultAction(SetRecord, 840)
	MisResultAction(AddExp,19294,19294)	
	MisResultAction(AddMoney,1064,1064)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4915 )	
	TriggerAction( 1, AddNextFlag, 840, 10, 5 )
	RegCurTrigger( 8401 )

-----------------------------------����
	DefineMission( 841, "����", 841 )
	
	MisBeginTalk( "<t>�㿴��������˵��һ�������Ѿ�֪�������ֲ���������䷽��������һ�ֶ��ص��������ɵģ���������ֻ���ڲ���վ���ߵ�����������ҵ������ǣ��Ǳ߱���ľ��ռ���ţ����ܵ��Ǳ߰�����һ���ɿݵ�������������һ��ʵ����<n><t>��Ȼ˳����ɱ5����ľ���油��վ������ǳ�����")
	--MisBeginCondition(LvCheck, ">", 42 )
	MisBeginCondition(HasRecord, 844)
	MisBeginCondition(NoMission, 841)
	MisBeginCondition(NoRecord, 841)
	MisBeginAction(AddMission, 841)
	MisBeginAction(AddTrigger, 8411, TE_GETITEM, 4915, 1 )
	MisBeginAction(AddTrigger, 8412, TE_KILL, 107, 5 )
	MisCancelAction(ClearMission, 841)
	
	MisNeed(MIS_NEED_DESP, "ɱ��5����ľ��������ِ��ħ����628,2095������һ���ɿݵ���֦")
	MisNeed(MIS_NEED_ITEM, 4915, 1, 20, 1)
	MisNeed(MIS_NEED_KILL, 107, 5, 10, 5)
	
	MisHelpTalk("��ȥɱ5����ľ������1���ɿݵ���������")
	MisResultTalk("��������Ҫ�ľ�����������������ǿ������ܸ����Ǵ���ʲô")
	MisResultCondition(NoRecord, 841)
	MisResultCondition(HasMission, 841)
	MisResultCondition(HasItem, 4915, 1)
	MisResultCondition(HasFlag, 841, 14)
	MisResultAction(TakeItem, 4915, 1)
	MisResultAction(ClearMission, 841)
	MisResultAction(SetRecord, 841)
	MisResultAction(AddExp,19294,19294)
	MisResultAction(AddMoney,1064,1064)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4915 )	
	TriggerAction( 1, AddNextFlag, 841, 20, 1 )
	RegCurTrigger( 8411 )
	InitTrigger()
	TriggerCondition( 1, IsMonster,	107 )	
	TriggerAction( 1, AddNextFlag, 841, 10, 5 )
	RegCurTrigger( 8412 )

-----------------------------------���������
	DefineMission( 842, "���������", 842 )
	
	MisBeginTalk( "<t>�ˣ����ѣ�����İ��������Ѿ����׸㶮�˲�����������Ʒ��������ھͲ�����ĸɿݵ����������������ˡ�<n><t>��ô���������ռ�15���ɿݵ��������ҾͰ����������Ļ����ָ���1/5")
	--MisBeginCondition(LvCheck, ">", 42 )
	MisBeginCondition(HasRecord, 841)
	MisBeginCondition(NoMission, 842)
	MisBeginCondition(NoRecord, 842)
	MisBeginAction(AddMission, 842)
	MisBeginAction(AddTrigger, 8421, TE_GETITEM, 4915, 15 )
	MisCancelAction(ClearMission, 842)
	
	MisNeed(MIS_NEED_DESP, "Ϊ���������򣬰�ِ��ħ����628,2095������15���ɿݵ���֦")
	MisNeed(MIS_NEED_ITEM, 4915, 15, 10, 15)
	
	MisHelpTalk("����Ҫ15���ɿݵ���֦�����õ������ˣ�")
	MisResultTalk("������������Щ�ҾͿ�����������Ĳ��������ˣ���Ů��ף���㣬�����������վ�Ӵ�Զ���˺ڰ�")
	MisResultCondition(NoRecord, 842)
	MisResultCondition(HasMission, 842)
	MisResultCondition(HasItem, 4915, 15)
	MisResultAction(TakeItem, 4915, 15)
	MisResultAction(ClearMission, 842)
	MisResultAction(SetRecord, 842)
	MisResultAction(AddExp,19294,19294)	
	MisResultAction(AddMoney,1064,1064)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4915 )	
	TriggerAction( 1, AddNextFlag, 842, 10, 15 )
	RegCurTrigger( 8421 )

-----------------------------------��ɫ����
	DefineMission( 843, "��ɫ����", 843 )
	
	MisBeginTalk( "<t>������Һ�Ȼ���ֲ���վ��߶��˺ܶ�ͷ���ϲ�������ĺ�ɫ���������Ű�ı�̬��Ϊ������Ϊ�Բ���վ��С�����ǻ���ɲ���Ӱ�졣<n><t>�鷳��ȥ��������һ�£�˳���������������Ҷ��Ǹ��ղ���������ܸ���Ȥ��")
	MisBeginCondition(LvCheck, ">", 42 )
	--MisBeginCondition(HasRecord, 844)
	MisBeginCondition(NoMission, 843)
	MisBeginCondition(NoRecord, 843)
	MisBeginAction(AddMission, 843)
	MisBeginAction(AddTrigger, 8431, TE_GETITEM, 4823, 1 )
	MisBeginAction(AddTrigger, 8432, TE_KILL, 503, 5 )
	MisCancelAction(ClearMission, 843)
	
	MisNeed(MIS_NEED_DESP, "ɱ��5����ɫ���ཬ�֣�����ِ��ħ����628,2095������1������ͷ�ϵ�����")
	MisNeed(MIS_NEED_ITEM, 4823, 1, 20, 1)
	MisNeed(MIS_NEED_KILL, 503, 5, 10, 5)
	
	MisHelpTalk("��ɫ�ཬ�־��ڲ���վ��������ȥ����Ūһ���չ���������")
	MisResultTalk("�������������̫����ˣ�����ȼ�գ�ȴû������ʧ�ļ����⾿����Ϊʲô������ͷʹ")
	MisResultCondition(NoRecord, 843)
	MisResultCondition(HasMission, 843)
	MisResultCondition(HasItem, 4823, 1)
	MisResultCondition(HasFlag, 843, 14)
	MisResultAction(TakeItem, 4823, 1)
	MisResultAction(ClearMission, 843)
	MisResultAction(SetRecord, 843)
	MisResultAction(AddExp,19294,19294)
	MisResultAction(AddMoney,1064,1064)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4823 )	
	TriggerAction( 1, AddNextFlag, 843, 20, 1 )
	RegCurTrigger( 8431 )
	InitTrigger()
	TriggerCondition( 1, IsMonster,	503 )	
	TriggerAction( 1, AddNextFlag, 843, 10, 5 )
	RegCurTrigger( 8432 )

-----------------------------------�����о�
	DefineMission( 844, "�����о�", 844 )
	
	MisBeginTalk( "<t>Ŷ���㻹�����ﰡ���ϴζ�������æ��������Ǹ������Ѿ������ˣ������յģ��������зֽ��õ��ġ�<n><t>���ǣ��һ���û��Ū���Ǹ���������ܣ����ܲ����ٰ���Ū10�����������һ���ܸ������Ľṹ���ҷ��ġ�")
	--MisBeginCondition(LvCheck, ">", 42 )
	MisBeginCondition(HasRecord, 843)
	MisBeginCondition(NoMission, 844)
	MisBeginCondition(NoRecord, 844)
	MisBeginAction(AddMission, 844)
	MisBeginAction(AddTrigger, 8441, TE_GETITEM, 4823, 10 )
	MisCancelAction(ClearMission, 844)
	
	MisNeed(MIS_NEED_DESP, "��ِ��ħ����628,2095��Ū��10��������������о�")
	MisNeed(MIS_NEED_ITEM, 4823, 10, 10, 10)
	
	MisHelpTalk("����Ҫ10���չ�����������ҵ��о�����ȥ����Ū��")
	MisResultTalk("̫���ˣ����ֿ��Լ����ҵ��о��ˣ���������ô�������˷ܵ�ʱ���Ǻ�Σ�յ�")
	MisResultCondition(NoRecord, 844)
	MisResultCondition(HasMission, 844)
	MisResultCondition(HasItem, 4823, 10)
	MisResultAction(TakeItem, 4823, 10)
	MisResultAction(ClearMission, 844)
	MisResultAction(SetRecord, 844)
	MisResultAction(AddExp,19294,19294)
	MisResultAction(AddMoney,1064,1064)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4823 )	
	TriggerAction( 1, AddNextFlag, 844, 10, 10 )
	RegCurTrigger( 8441 )


-----------------------------------��ʯ��
	DefineMission( 845, "��ʯ��", 845 )
	
	MisBeginTalk( "<t>���������վ���ߵļ�Ӳ����ʯ���Ǻ����쳣���˷ܣ�����վ��ö��˶��������ˡ�<n><t>��·�����˰������ܲ��ܰ���ȥ�Ǳ�ȥ�𿪼�����ʯ�֣��������Ǿ���������ʲô���ѽ��������֪��")
	MisBeginCondition(LvCheck, ">", 45 )
	--MisBeginCondition(HasRecord, 844)
	MisBeginCondition(NoMission, 845)
	MisBeginCondition(NoRecord, 845)
	MisBeginAction(AddMission, 845)
	MisBeginAction(AddTrigger, 8451, TE_GETITEM, 4825, 1 )
	MisBeginAction(AddTrigger, 8452, TE_KILL, 505, 5 )
	MisCancelAction(ClearMission, 845)
	
	MisNeed(MIS_NEED_DESP, "�ɵ�5����Ӳ����ʯ�֣���1��΢��ʯͷ��Ƭ���������ݡ���ʯ��626,2100��")
	MisNeed(MIS_NEED_ITEM, 4825, 1, 20, 1)
	MisNeed(MIS_NEED_KILL, 505, 5, 10, 5)
	
	MisHelpTalk("�㻹û���ҵ���Ӳ����ʯ�������Ǿ��ڴ��ӱ�����Խ�����ཬ�ֵ���غ��򶫱����߾͵���")
	MisResultTalk("����΢���Ĺ⣬��ȷ�����Ǳ�����������������롭��")
	MisResultCondition(NoRecord, 845)
	MisResultCondition(HasMission, 845)
	MisResultCondition(HasItem, 4825, 1)
	MisResultCondition(HasFlag, 845, 14)
	MisResultAction(TakeItem, 4825, 1)
	MisResultAction(ClearMission, 845)
	MisResultAction(SetRecord, 845)
	MisResultAction(AddExp,26112,26112)	
	MisResultAction(AddMoney,1125,1125)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4825 )	
	TriggerAction( 1, AddNextFlag, 845, 20, 1 )
	RegCurTrigger( 8451 )
	InitTrigger()
	TriggerCondition( 1, IsMonster,	505 )	
	TriggerAction( 1, AddNextFlag, 845, 10, 5 )
	RegCurTrigger( 8452 )

-----------------------------------΢��ʯͷ���о�
	DefineMission( 846, "΢��ʯͷ���о�", 846 )
	
	MisBeginTalk( "<t>�Բ�������æ�ţ�û�п����㡣<n><t>�����������һ���������ˣ��������ϻش�������΢��ʯͷ��Ƭ��������Ƭ������̫С����һʱ���޷�����㹻�����ϡ�<n><t>�����������ʱ��Ļ����ܰ�����Ū6��һ���Ķ�����")
	--MisBeginCondition(LvCheck, ">", 42 )
	MisBeginCondition(HasRecord, 845)
	MisBeginCondition(NoMission, 846)
	MisBeginCondition(NoRecord, 846)
	MisBeginAction(AddMission, 846)
	MisBeginAction(AddTrigger, 8461, TE_GETITEM, 4825, 6 )
	MisCancelAction(ClearMission, 846)
	
	MisNeed(MIS_NEED_DESP, "��6��΢��ʯͷ��Ƭ���������ݡ���ʯ��626,2100�����������о�")
	MisNeed(MIS_NEED_ITEM, 4825, 6, 10, 6)
	
	MisHelpTalk("6��΢��ʯͷ��Ƭ���������")
	MisResultTalk("������Щ������һ��������Щʲô���ԣ�һ���ܣ��ҷ��ģ�Ŷ���Բ������Ǹ��㱨����")
	MisResultCondition(NoRecord, 846)
	MisResultCondition(HasMission, 846)
	MisResultCondition(HasItem, 4825, 6)
	MisResultAction(TakeItem, 4825, 6)
	MisResultAction(ClearMission, 846)
	MisResultAction(SetRecord, 846)
	MisResultAction(AddExp,26112,26112)	
	MisResultAction(AddMoney,1125,1125)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4825 )	
	TriggerAction( 1, AddNextFlag, 846, 10, 6 )
	RegCurTrigger( 8461 )


-----------------------------------��֤
	DefineMission( 847, "��֤", 847 )
	
	MisBeginTalk( "<t>���룬���Ѿ��ҵ���Щ���������ǣ�����ҪһЩ��������֤һ�¡�<n><t>���������鷳��ģ���Ϊ��Ͼ�����ʲô��ȫ�Ĳ��£����ǣ�������һ����������վ��������ȥ������ģ��Ǿ���ȥ����վ���߲�����ʿ�ۼ��ĵط�������Ūһ������ͷ���������������ܾ��Ļ�����Ҳ��������")
	--MisBeginCondition(LvCheck, ">", 45 )
	MisBeginCondition(HasRecord, 846)
	MisBeginCondition(NoMission, 847)
	MisBeginCondition(NoRecord, 847)
	MisBeginAction(AddMission, 847)
	MisBeginAction(AddTrigger, 8471, TE_GETITEM, 4917, 1 )
	MisBeginAction(AddTrigger, 8472, TE_KILL, 267, 5 )
	MisCancelAction(ClearMission, 847)
	
	MisNeed(MIS_NEED_DESP, "ɱ��5��������ʿ�������ǵ�ͷ�����������ݡ���ʯ��626,2100��")
	MisNeed(MIS_NEED_ITEM, 4917, 1, 20, 1)
	MisNeed(MIS_NEED_KILL, 267, 5, 10, 5)
	
	MisHelpTalk("�ٶ�ɱ����������ʿ���õ����ǵ�ͷ�������Ǿ��ڲ���վ������Զһ��ĵط�")
	MisResultTalk("�����������ˣ��Ҿ�˵��һ���еģ���վ�������ˣ���������ң�������֤һ���ҵ����۰�")
	MisResultCondition(NoRecord, 847)
	MisResultCondition(HasMission, 847)
	MisResultCondition(HasItem, 4917, 1)
	MisResultCondition(HasFlag, 847, 14)
	MisResultAction(TakeItem, 4917, 1)
	MisResultAction(ClearMission, 847)
	MisResultAction(SetRecord, 847)
	MisResultAction(AddExp,28832,28832)
	MisResultAction(AddMoney,1146,1146)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4917 )	
	TriggerAction( 1, AddNextFlag, 847, 20, 1 )
	RegCurTrigger( 8471 )
	InitTrigger()
	TriggerCondition( 1, IsMonster,	267 )	
	TriggerAction( 1, AddNextFlag, 847, 10, 5 )
	RegCurTrigger( 8472 )


-----------------------------------����ͷ��
	DefineMission( 848, "����ͷ��", 848 )
	
	MisBeginTalk( "<t>���������ã��쿴���ͷ����<n><t>����ʶ�˰ɣ�����������ϻش����ҵĲ���ͷ������΢��ʯͷ��Ƭ��ĥ���ɵģ�û�뵽΢��ʯͷ��Ƭ��Ȼ�����ֹ�Ч�������Ը���ٰ���Ū10������ͷ�������������ҿ��Խ�����ͷ�����������һ��ָ���")
	--MisBeginCondition(LvCheck, ">", 42 )
	MisBeginCondition(HasRecord, 847)
	MisBeginCondition(NoMission, 848)
	MisBeginCondition(NoRecord, 848)
	MisBeginAction(AddMission, 848)
	MisBeginAction(AddTrigger, 8481, TE_GETITEM, 4917, 10 )
	MisCancelAction(ClearMission, 848)
	
	MisNeed(MIS_NEED_DESP, "��10������ͷ�������ݡ���ʯ��626,2100��")
	MisNeed(MIS_NEED_ITEM, 4917, 10, 10, 10)
	
	MisHelpTalk("10������ͷ�����������ҵȵú��ļ�")
	MisResultTalk("������Щ���ҾͿ�������������˵�еĲ���ͷ���ˣ��Ǻǣ���ô����ِ��ħ����628,2095��һ����׬Ǯ��")
	MisResultCondition(NoRecord, 848)
	MisResultCondition(HasMission, 848)
	MisResultCondition(HasItem, 4917, 10)
	MisResultAction(TakeItem, 4917, 10)
	MisResultAction(ClearMission, 848)
	MisResultAction(SetRecord, 848)
	MisResultAction(AddExp,28832,28832)
	MisResultAction(AddMoney,1146,1146)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4917 )	
	TriggerAction( 1, AddNextFlag, 848, 10, 10 )
	RegCurTrigger( 8481 )

-----------------------------------�߽�
	DefineMission( 849, "�߽�", 849 )
	
	MisBeginTalk( "<t>�������������ι۵�������ǣ����������Ĳ���ʱ����������������Χ�����ر��ǳ�����Ⱥ��Ӣ����սʿ����ͣ��ɧ�ž�������������ǵ��˵�ս�������ǣ������ɱ��20�������ľ�Ӣ����սʿ��һ�����Դ���߽����ǵ�ʿ����<n><t>��ô����Ը����������")
	MisBeginCondition(LvCheck, ">", 47 )
	MisBeginCondition(NoMission, 849)
	MisBeginCondition(NoRecord, 849)
	MisBeginAction(AddMission, 849)
	MisBeginAction(AddTrigger, 8491, TE_KILL, 513, 20 )
	MisCancelAction(ClearMission, 849)

	MisNeed(MIS_NEED_DESP, "�溣���ܲ���ı������������У��653,1505���ɵ�20����Ӣ����սʿ��֤�����ʵ��")
	MisNeed(MIS_NEED_KILL, 513, 20, 10, 20)

	MisHelpTalk("ɱ��20����Ӣ����սʿ����֤������¸�")
	MisResultTalk("�ɵ�Ư�������Ѿ��ɹ��߽��˵��ˣ�ҲΪ���Լ����������������ţ�������Ӧ�õ�")
	MisResultCondition(NoRecord, 849)
	MisResultCondition(HasMission, 849)
	MisResultCondition(HasFlag, 849, 29)
	MisResultAction(ClearMission, 849)
	MisResultAction(SetRecord, 849)
	MisResultAction(AddExp,31809,31809)
	MisResultAction(AddMoney,1167,1167)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 513 )	
	TriggerAction( 1, AddNextFlag, 849, 10, 20 )
	RegCurTrigger( 8491 )

-----------------------------------Ѫ�ȵĴ���
	DefineMission( 850, "Ѫ�ȵĴ���", 850 )
	
	MisBeginTalk( "<t>�����������֪���������û׷���ҾͲ�һ���ˣ����������������ղؼң�ֻ���ϵȵ��������ܽ����ҵķ��䡣<n><t>������ҿ����˾�Ӣ����սʿ�Ĵ��ӣ���֪��������մ����ͬ����Ѫ�������һ������޷��˵�������������<n><t>���ܱ���˵ʲô��������˿�Ϊ������10��Ѫ�ȵĴ��ӣ��ҿ��Ը����ܸߵı���")
	MisBeginCondition(LvCheck, ">", 48 )
	--MisBeginCondition(HasRecord, 847)
	MisBeginCondition(NoMission, 850)
	MisBeginCondition(NoRecord, 850)
	MisBeginAction(AddMission, 850)
	MisBeginAction(AddTrigger, 8501, TE_GETITEM, 4833, 10 )
	MisCancelAction(ClearMission, 850)
	
	MisNeed(MIS_NEED_DESP, "���������ˡ��ݲ���ά˹��741,1563����10��Ѫ�ȵĴ��ӻ������������ղص���")
	MisNeed(MIS_NEED_ITEM, 4833, 10, 10, 10)
	
	MisHelpTalk("��Ҫ10��Ѫ�ȵĴ��ӣ�����ø���")
	MisResultTalk("���ģ���������Ѫɫ��ֻ�д�ս�����ռ��������ž��м�ֵ����˵����")
	MisResultCondition(NoRecord, 850)
	MisResultCondition(HasMission, 850)
	MisResultCondition(HasItem, 4833, 10)
	MisResultAction(TakeItem, 4833, 10)
	MisResultAction(ClearMission, 850)
	MisResultAction(SetRecord, 850)
	MisResultAction(AddExp,35066,35066)	
	MisResultAction(AddMoney,1189,1189)



	InitTrigger()
	TriggerCondition( 1, IsItem, 4833 )	
	TriggerAction( 1, AddNextFlag, 850, 10, 10 )
	RegCurTrigger( 8501 )


-----------------------------------��һ��ԭ��
	DefineMission( 851, "��һ��ԭ��", 851 )
	
	MisBeginTalk( "<t>ûʲô�����߿�һ�㣬�Ҳ���Ū������·���û�������ҵ�������û������ҵ�˼ά��Ψһ����־ͬ���ϵ����Ѿ�����������ľ��ţ����ڣ�����Ҫ��˭��������������أ������ؼ��ǣ��һ�ȱ�ټ���������Ҫ��ԭ�ϰ���<n><t>�㻹û�ߣ���������Ϊ��Ū����һ��ԭ�ϰɣ�����ʬ�Ľ�ʬ��ָ�ף����������Ҫ�ĵ�һ��ԭ��")
	MisBeginCondition(LvCheck, ">", 47 )
	--MisBeginCondition(HasRecord, 847)
	MisBeginCondition(NoMission, 851)
	MisBeginCondition(NoRecord, 851)
	MisBeginAction(AddMission, 851)
	MisBeginAction(AddTrigger, 8511, TE_GETITEM, 4883, 8 )
	MisCancelAction(ClearMission, 851)
	
	MisNeed(MIS_NEED_DESP, "Ħ�����˺��ᡤ�ƶ���651,1585����Ҫ8����ʬָ�׽���ʵ�飬ȥ����Ū��")
	MisNeed(MIS_NEED_ITEM, 4883, 8, 10, 8)
	
	MisHelpTalk("8����ʬ��ָ�ף����������������ҵ�ԭ��")
	MisResultTalk("�������������ÿ�����Ū�����ҵ�ԭ�ϣ���������ˣ�˳��������Ľ������ҿɲ�����˵�������˵���")
	MisResultCondition(NoRecord, 851)
	MisResultCondition(HasMission, 851)
	MisResultCondition(HasItem, 4883, 8)
	MisResultAction(TakeItem, 4883, 8)
	MisResultAction(ClearMission, 851)
	MisResultAction(SetRecord, 851)
	MisResultAction(AddExp,31809,31809)	
	MisResultAction(AddMoney,1167,1167)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4883 )	
	TriggerAction( 1, AddNextFlag, 851, 10, 8 )
	RegCurTrigger( 8511 )

-----------------------------------����
	DefineMission( 852, "����", 852 )
	
	MisBeginTalk( "<t>��Ҫ���ң����Ѿ�ʧȥ�˻���ȥ���������ǰ�����Ľ�ʬ�����Ƕ��������޶�����������֪���ǲ������ǵĴ����������ɽ�ʬ��������Ҫ�����ҵ�������Ҳ����Ȼ����һ����<n><t>���ǣ��һ���ʹ����Щ��ʬ�����Ҿ������Լ����ֵģ�˭֪���ĸ������ҵ������أ����ܰ��ҳ�ȥɱ15������ʬ��Ϊ�ҵ��޶�������")
	MisBeginCondition(LvCheck, ">", 47 )
	MisBeginCondition(NoMission, 852)
	MisBeginCondition(NoRecord, 852)
	MisBeginAction(AddMission, 852)
	MisBeginAction(AddTrigger, 8521, TE_KILL, 41, 15 )
	MisCancelAction(ClearMission, 852)

	MisNeed(MIS_NEED_DESP, "�滤���������Կˣ�706,1465��ɱ��15������ʬ")
	MisNeed(MIS_NEED_KILL, 41, 15, 10, 15)

	MisHelpTalk("���и���Щ�����Ľ�ʬ����ʹ�����ҵȴ���ĺ���Ϣ")
	MisResultTalk("лл�������ҵ������ǿ����ڵ��°�Ϣ�ˣ��ٴθ�л�㣬Ըʤ��֮������ͬ��")
	MisResultCondition(NoRecord, 852)
	MisResultCondition(HasMission, 852)
	MisResultCondition(HasFlag, 852, 24)
	MisResultAction(ClearMission, 852)
	MisResultAction(SetRecord, 852)
	MisResultAction(AddExp,31809,31809)	
	MisResultAction(AddMoney,1167,1167)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 41 )	
	TriggerAction( 1, AddNextFlag, 852, 10, 15 )
	RegCurTrigger( 8521 )

-----------------------------------������ԭ��
	DefineMission( 853, "������ԭ��", 853 )
	
	MisBeginTalk( "<t>�����Ѿ����ǵ�һ�μ����ˣ���Ҳ��Ҫ����ʲô�ˣ���������Ҫ������ԭ�ϣ��޴�������޴̣������Ҹ�����ȥ�������˰ɣ��������������������˻���������޵�ʱ��͵���")
	--MisBeginCondition(LvCheck, ">", 47 )
	MisBeginCondition(HasRecord, 854)
	MisBeginCondition(NoMission, 853)
	MisBeginCondition(NoRecord, 853)
	MisBeginAction(AddMission, 853)
	MisBeginAction(AddTrigger, 8531, TE_GETITEM, 4834, 10 )
	MisCancelAction(ClearMission, 853)
	
	MisNeed(MIS_NEED_DESP, "�޴�������������Ħ�����˺��ᡤ�ƶ���651,1585������ʵ��ĵ�����ԭ�ϣ�ȥ����Ū8����")
	MisNeed(MIS_NEED_ITEM, 4834, 10, 10, 10)
	
	MisHelpTalk("��10���޴����������̾���ô����")
	MisResultTalk("�ٺ٣����ˣ���������ԭ�ϣ�ֻҪ�������֣��ٺ٣��ٺ٣��㻹վ�������ʲô����Ҫ���ʱ���һ�����")
	MisResultCondition(NoRecord, 853)
	MisResultCondition(HasMission, 853)
	MisResultCondition(HasItem, 4834, 10)
	MisResultAction(TakeItem, 4834, 10)
	MisResultAction(ClearMission, 853)
	MisResultAction(SetRecord, 853)
	MisResultAction(AddExp,35066,35066)	
	MisResultAction(AddMoney,1189,1189)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4834 )	
	TriggerAction( 1, AddNextFlag, 853, 10, 10 )
	RegCurTrigger( 8531 )

-----------------------------------�ڶ���ԭ��
	DefineMission( 854, "�ڶ���ԭ��", 854 )
	
	MisBeginTalk( "<t>���ϴεı��ֺܺã���������������˵����һ��������Ҫ���Ǽ���ԭ�ϣ�����ʬ��ָ�ײ����ǵ�һ��ԭ�ϣ���Ը�����������<n><t>����Ҫ�ĵڶ���ԭ���ǽ�ʬ��ͷ�������ң�ֻҪ�ֽ�ʬ����Ҫ�����")
	--MisBeginCondition(LvCheck, ">", 47 )
	MisBeginCondition(HasRecord, 851)
	MisBeginCondition(NoMission, 854)
	MisBeginCondition(NoRecord, 854)
	MisBeginAction(AddMission, 854)
	MisBeginAction(AddTrigger, 8541, TE_GETITEM, 4884, 10 )
	MisCancelAction(ClearMission, 854)
	
	MisNeed(MIS_NEED_DESP, "Ħ�����˺��ᡤ�ƶ���651,1585������Ҫ�ڶ���ԭ���ˣ�����ǽ�ʬͷ��������Ҫ10��")
	MisNeed(MIS_NEED_ITEM, 4884, 10, 10, 10)
	
	MisHelpTalk("�����10����ʬͷ�����Ҳ������ظ�һ����")
	MisResultTalk("�𶯣�����·��ϻ���һ��ͷ�����԰������ң�����һ���Ұ������¹�")
	MisResultCondition(NoRecord, 854)
	MisResultCondition(HasMission, 854)
	MisResultCondition(HasItem, 4884, 10)
	MisResultAction(TakeItem, 4884, 10)
	MisResultAction(ClearMission, 854)
	MisResultAction(SetRecord, 854)
	MisResultAction(AddExp,35066,35066)
	MisResultAction(AddMoney,1189,1189)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4884 )	
	TriggerAction( 1, AddNextFlag, 854, 10, 10 )
	RegCurTrigger( 8541 )

-----------------------------------��������
	DefineMission( 855, "��������", 855 )
	
	MisBeginTalk( "<t>����ͷ��ŭ���Ѿ�ƽϢ�ˣ�������ֻ�����������������Ҹ������ǣ�ֻҪ���н�ʬ�Ĵ��ھͲ����а��������ӣ���ʱ����ǰｩʬһ���ѵ�ˣ�<n><t>ȥ����ɱ15���ֽ�ʬ�ɣ��������������")
	--MisBeginCondition(LvCheck, ">", 47 )
	MisBeginCondition(HasRecord, 852)
	MisBeginCondition(NoMission, 855)
	MisBeginCondition(NoRecord, 855)
	MisBeginAction(AddMission, 855)
	MisBeginAction(AddTrigger, 8551, TE_KILL, 42, 15 )
	MisCancelAction(ClearMission, 855)

	MisNeed(MIS_NEED_DESP, "�滤���������Կˣ�706,1465��ɱ��15���ֽ�ʬ")
	MisNeed(MIS_NEED_KILL, 42, 15, 10, 15)

	MisHelpTalk("��ô�����ǰ������ǲ��ǳԵ��˿�ͷ")
	MisResultTalk("�������ˣ��ǰ�����ģ������˵���������������Ƕ������ˣ������¸ң������ҵ�һ�����⣬���°�")
	MisResultCondition(NoRecord, 855)
	MisResultCondition(HasMission, 855)
	MisResultCondition(HasFlag, 855, 24)
	MisResultAction(ClearMission, 855)
	MisResultAction(SetRecord, 855)
	MisResultAction(AddExp,35066,35066)	
	MisResultAction(AddMoney,1189,1189)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 42 )	
	TriggerAction( 1, AddNextFlag, 855, 10, 15 )
	RegCurTrigger( 8551 )

-----------------------------------����Χ��
	DefineMission( 856, "����Χ��", 856 )
	
	MisBeginTalk( "<t>��Ӣ����սʿ�Ѿ���ʵ�ˣ��������Ǹ�����ѵһ���ڳ���������ǰ������ˣ�<n><t>������Ծɱ����Ű���Ķ�־�Ļ���ȥ���Ҹɵ�5��������ʦ��15�����ɵ������˰ɣ������ǿ����������")
	--MisBeginCondition(LvCheck, ">", 47 )
	MisBeginCondition(HasRecord, 849)
	MisBeginCondition(NoMission, 856)
	MisBeginCondition(NoRecord, 856)
	MisBeginAction(AddMission, 856)
	MisBeginAction(AddTrigger, 8561, TE_KILL, 515, 15 )
	MisBeginAction(AddTrigger, 8562, TE_KILL, 38, 5 )
	MisCancelAction(ClearMission, 856)

	MisNeed(MIS_NEED_DESP, "��ʰ��5��������ʦ��15�����ɵ������ˣ�Ȼ������������ܲ���ı������������У��653,1505������")
	MisNeed(MIS_NEED_KILL, 515, 15, 10, 15)
	MisNeed(MIS_NEED_KILL, 38, 5, 30, 5)

	MisHelpTalk("�����ǻ��ڳ��½������㶼����ʲô��")
	MisResultTalk("�����������ǰ�������Ҫ����һ�����ˣ��ⶼ����Ĺ��ͣ��ҵ���ʿ")
	MisResultCondition(NoRecord, 856)
	MisResultCondition(HasMission, 856)
	MisResultCondition(HasFlag, 856, 24)
	MisResultCondition(HasFlag, 856, 34)
	MisResultAction(ClearMission, 856)
	MisResultAction(SetRecord, 856)
	MisResultAction(AddExp,38628,38628)
	MisResultAction(AddMoney,1212,1212)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 515 )	
	TriggerAction( 1, AddNextFlag, 856, 10, 15 )
	RegCurTrigger( 8561 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 38 )	
	TriggerAction( 1, AddNextFlag, 856, 30, 5 )
	RegCurTrigger( 8562 )

-----------------------------------ս���Ľ���
	DefineMission( 857, "ս���Ľ���", 857 )
	
	MisBeginTalk( "<t>��˵���ǻ��˾�Ӣ����սʿ��Ӣ�ۣ���˵���ѵ����������ˣ�<n><t>��˵Ц�ˣ�����������׼����һЩ���������͸���λӢ�۵�ս���Ľ����أ���������ó�ʲô֤�ݵĻ�����Щ���������")
	--MisBeginCondition(LvCheck, ">", 47 )
	MisBeginCondition(HasRecord, 856)
	MisBeginCondition(NoMission, 857)
	MisBeginCondition(NoRecord, 857)
	MisBeginAction(AddMission, 857)
	MisBeginAction(AddTrigger, 8571, TE_GETITEM, 4919, 5 )
	MisBeginAction(AddTrigger, 8572, TE_GETITEM, 4835, 5 )
	MisCancelAction(ClearMission, 857)
	
	MisNeed(MIS_NEED_DESP, "���������ɣ�711,1414����Ҫ5��������ߺ�5����ֵĹ�ͷ����������֤����Ĺ���")
	MisNeed(MIS_NEED_ITEM, 4919, 5, 10, 5)
	MisNeed(MIS_NEED_ITEM, 4835, 5, 20, 5)
	
	MisHelpTalk("�߿����㻹û����������Ҫ�Ķ���")
	MisResultTalk("Ŷ���ҳ����������Ӣ�ۣ����㣬������Ӧ�õ�ս���Ľ���")
	MisResultCondition(NoRecord, 857)
	MisResultCondition(HasMission, 857)
	MisResultCondition(HasItem, 4919, 5)
	MisResultCondition(HasItem, 4835, 5)
	MisResultAction(TakeItem, 4835, 5)
	MisResultAction(TakeItem, 4919, 5)
	MisResultAction(ClearMission, 857)
	MisResultAction(SetRecord, 857)
	MisResultAction(AddExp,42522,42522)	
	MisResultAction(AddMoney,1235,1235)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4919 )	
	TriggerAction( 1, AddNextFlag, 857, 10, 5 )
	RegCurTrigger( 8571 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4835 )	
	TriggerAction( 1, AddNextFlag, 857, 20, 5 )
	RegCurTrigger( 8572 )

-----------------------------------�µ�����
	DefineMission( 858, "�µ�����", 858 )
	
	MisBeginTalk( "<t>����ս���ļ���������ͬ�����Ѿ��ѷ�ʤ���ˣ����ڼ���Ҫ����һ�����͵����������ǣ�������ͷ�����ϲ��㣬����û������ȥ�ռ����ϡ�<n><t>�����Ը���æ�Ļ�������ػ���ʹ��ʥ�����ֵ����зֱ�ȡ���۶ϵ���ʹ֮�Ⱥ��𻵵�ʥ��֮������")
	--MisBeginCondition(LvCheck, ">", 47 )
	MisBeginCondition(HasRecord, 856)
	MisBeginCondition(NoMission, 858)
	MisBeginCondition(NoRecord, 858)
	MisBeginAction(AddMission, 858)
	MisBeginAction(AddTrigger, 8581, TE_GETITEM, 4918, 1 )
	MisBeginAction(AddTrigger, 8582, TE_GETITEM, 4921, 1 )
	MisCancelAction(ClearMission, 858)
	
	MisNeed(MIS_NEED_DESP, "�����ܲ���ı������������У��653,1505����Ҫ�۶ϵ���ʹ֮�Ⱥ��𻵵�ʥ��֮�����о���������")
	MisNeed(MIS_NEED_ITEM, 4918, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 4921, 1, 20, 1)
	
	MisHelpTalk("����Ҫ�۶ϵ���ʹ֮�Ⱥ��𻵵�ʥ��֮����������Ǵ�����")
	MisResultTalk("��Ȼ��Щ���𣬲����Ծ��ܿ������յĻԻͣ����ǵ��о�Աһ������������Ļ����������Ϻõ�������Ըս��ף����")
	MisResultCondition(NoRecord, 858)
	MisResultCondition(HasMission, 858)
	MisResultCondition(HasItem, 4918, 1)
	MisResultCondition(HasItem, 4921, 1)
	MisResultAction(TakeItem, 4921, 1)
	MisResultAction(TakeItem, 4918, 1)
	MisResultAction(ClearMission, 858)
	MisResultAction(SetRecord, 858)
	MisResultAction(AddExp,42522,42522)	
	MisResultAction(AddMoney,1235,1235)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4918 )	
	TriggerAction( 1, AddNextFlag, 858, 10, 1 )
	RegCurTrigger( 8581 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4921 )	
	TriggerAction( 1, AddNextFlag, 858, 20, 1 )
	RegCurTrigger( 8582 )

-----------------------------------������ʹ
	DefineMission( 859, "������ʹ", 859 )
	
	MisBeginTalk( "<t>�����������ػ���ʹ������Ҳ�ܽ�����ʹ��<n><t>���������������ֻ�ܻ����˼䣬������æ������Щ�������ʹ��Ϣ��")
	MisBeginCondition(LvCheck, ">", 50 )
	--MisBeginCondition(HasRecord, 849)
	MisBeginCondition(NoMission, 859)
	MisBeginCondition(NoRecord, 859)
	MisBeginAction(AddMission, 859)
	MisBeginAction(AddTrigger, 8591, TE_KILL, 284, 12 )
	MisCancelAction(ClearMission, 859)

	MisNeed(MIS_NEED_DESP, "ɱ��12���ػ���ʹ��Ȼ��ص����������ɣ�711,1414������")
	MisNeed(MIS_NEED_KILL, 284, 12, 10, 12)

	MisHelpTalk("��ȥ����Щ�������ʹ��Ϣ��")
	MisResultTalk("Ŷ����������ʹ����Ը���������������·������")
	MisResultCondition(NoRecord, 859)
	MisResultCondition(HasMission, 859)
	MisResultCondition(HasFlag, 859, 21)
	MisResultAction(ClearMission, 859)
	MisResultAction(SetRecord, 859)
	MisResultAction(AddExp,42522,42522)
	MisResultAction(AddMoney,1235,1235)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 284 )	
	TriggerAction( 1, AddNextFlag, 859, 10, 12 )
	RegCurTrigger( 8591 )

-----------------------------------Զ��
	DefineMission( 860, "Զ��", 860 )
	
	MisBeginTalk( "<t>�Ǳ������Ĺ����Ѿ���ʼ�����ˣ����ǣ������ʥѩɽ��ĵ��˻��ڴ������������ǻ�û�����ɵ�ʱ����������ǽ���֯һ��Զ�������ʿ������Ը��μ���<n><t>��εĵ����Ƕ���Ĳ�����ʿ�����������")
	MisBeginCondition(LvCheck, ">", 51 )
	MisBeginCondition(HasRecord, 858)
	MisBeginCondition(NoMission, 860)
	MisBeginCondition(NoRecord, 860)
	MisBeginAction(AddMission, 860)
	MisBeginAction(AddTrigger, 8601, TE_KILL, 521, 8 )
	MisBeginAction(AddTrigger, 8602, TE_KILL, 541, 8 )
	MisCancelAction(ClearMission, 860)

	MisNeed(MIS_NEED_DESP, "�ɵ�����Ĳ�����ʿ����������ָ�8���������Ǻ����ܲ���ı������������У��653,1505������Ҫ�� ")
	MisNeed(MIS_NEED_KILL, 521, 8, 10, 8)
	MisNeed(MIS_NEED_KILL, 541, 8, 30, 8)

	MisHelpTalk("�㻹�������ʲô��Զ���ĺŽ��Ѿ������ˣ����������ǣ����������������")
	MisResultTalk("���Զ���Ľ��������������˵��ˣ���Ϊ���Ǵ����˿ɿ����鱨��ϣ������Զ��������������ս���ҵ���ʿ")
	MisResultCondition(NoRecord, 860)
	MisResultCondition(HasMission, 860)
	MisResultCondition(HasFlag, 860, 17)
	MisResultCondition(HasFlag, 860, 37)
	MisResultAction(ClearMission, 860)
	MisResultAction(SetRecord, 860)
	MisResultAction(AddExp,46776,46776)
	MisResultAction(AddMoney,1258,1258)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 521 )	
	TriggerAction( 1, AddNextFlag, 860, 10, 8 )
	RegCurTrigger( 8601 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 541 )	
	TriggerAction( 1, AddNextFlag, 860, 30, 8 )
	RegCurTrigger( 8602 )

-----------------------------------�����ͷ��
	DefineMission( 861, "�����ͷ��", 861 )
	
	MisBeginTalk( "<t>��˵��Զ���ƻ���<n><t>��֪������û�вμӣ����Զ����Ŀ��֮һ����Ĳ�����ʿ������Ķ����ͷ�����������������ղ�Ʒ֮һ��Ҫ��˭�ܸ���5�����һ�м�������")
	MisBeginCondition(LvCheck, ">", 51 )
	MisBeginCondition(HasRecord, 850)
	MisBeginCondition(NoMission, 861)
	MisBeginCondition(NoRecord, 861)
	MisBeginAction(AddMission, 861)
	MisBeginAction(AddTrigger, 8611, TE_GETITEM, 4837, 5 )
	MisCancelAction(ClearMission, 861)
	
	MisNeed(MIS_NEED_DESP, "��������ˡ��ݲ���ά˹��741,1563���ռ�5�������ͷ��")
	MisNeed(MIS_NEED_ITEM, 4837, 5, 10, 5)
	
	MisHelpTalk("�����ͷ���������ͷ��������Ҫ�����ظ�����Ҫ5�������ͷ��")
	MisResultTalk("��ô���������߰�������������ҿ���")
	MisResultCondition(NoRecord, 861)
	MisResultCondition(HasMission, 861)
	MisResultCondition(HasItem, 4837, 5)
	MisResultAction(TakeItem, 4837, 5)
	MisResultAction(ClearMission, 861)
	MisResultAction(SetRecord, 861)
	MisResultAction(AddExp,46776,46776)
	MisResultAction(AddMoney,1258,1258)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4837 )	
	TriggerAction( 1, AddNextFlag, 861, 10, 5 )
	RegCurTrigger( 8611 )


-----------------------------------������ԭ��
	DefineMission( 862, "������ԭ��", 862 )
	
	MisBeginTalk( "<t>������ԭ�����������߹ǣ����ڲ�������һ�ֽ�����������ֵĹ��<n><t>�ҿ��Ը����㣬��û�м������ܻ��Ŵ��������߹ǣ��ϻػ���һ���������߹��ǲ��������ϵģ��㻹��ȥ��")
	MisBeginCondition(LvCheck, ">", 52 )
	MisBeginCondition(HasRecord, 853)
	MisBeginCondition(NoMission, 862)
	MisBeginCondition(NoRecord, 862)
	MisBeginAction(AddMission, 862)
	MisBeginAction(AddTrigger, 8621, TE_GETITEM, 4858, 8 )
	MisCancelAction(ClearMission, 862)
	
	MisNeed(MIS_NEED_DESP, "Ħ�����˺��ᡤ�ƶ���651,1585������Ҫԭ���ˣ�8���������߹ǣ��໬����ԭ�ϰ�")
	MisNeed(MIS_NEED_ITEM, 4858, 8, 10, 8)
	
	MisHelpTalk("�����ֻ��һ������ҿ�����߹�Ҳ��������ӡ���")
	MisResultTalk("������Ҫ���������࿴�ˣ��������߹��㶼���õ�������������ȥ��Ҳ���Ǳ���")
	MisResultCondition(NoRecord, 862)
	MisResultCondition(HasMission, 862)
	MisResultCondition(HasItem, 4858, 8)
	MisResultAction(TakeItem, 4858, 8)
	MisResultAction(ClearMission, 862)
	MisResultAction(SetRecord, 862)
	MisResultAction(AddExp,51423,51423)
	MisResultAction(AddMoney,1282,1282)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4858 )	
	TriggerAction( 1, AddNextFlag, 862, 10, 8 )
	RegCurTrigger( 8621 )

-----------------------------------ʥ�ֿ���
	DefineMission( 863, "ʥ�ֿ���", 863 )
	
	MisBeginTalk( "<t>��ԡʥ�ֵ����⣬���������˵Ŀ��飬�㽫�����ʥ��������ȥ�ɣ���ս10��ʥ�����֣�ԸŮ������ͬ��")
	MisBeginCondition(LvCheck, ">", 52 )
	--MisBeginCondition(HasRecord, 863)
	MisBeginCondition(NoMission, 863)
	MisBeginCondition(NoRecord, 863)
	MisBeginAction(AddMission, 863)
	MisBeginAction(AddTrigger, 8631, TE_KILL, 261, 10 )
	MisCancelAction(ClearMission, 863)

	MisNeed(MIS_NEED_DESP, "ɱ��10��ʥ��������ͨ����Ů�����٣�740,1451���Ŀ��� ")
	MisNeed(MIS_NEED_KILL, 261, 10, 10, 10)

	MisHelpTalk("����Ļ��кڰ������ڷ��������ü�")
	MisResultTalk("ף���㣬���Ѿ�ͨ����ʥ�ֵĿ��飬Ů���ʱ������ͬ��")
	MisResultCondition(NoRecord, 863)
	MisResultCondition(HasMission, 863)
	MisResultCondition(HasFlag, 863, 19)
	MisResultAction(ClearMission, 863)
	MisResultAction(SetRecord, 863)
	MisResultAction(AddExp,51423,51423)
	MisResultAction(AddMoney,1282,1282)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 261 )	
	TriggerAction( 1, AddNextFlag, 863, 10, 10 )
	RegCurTrigger( 8631 )


-----------------------------------���һ��ԭ��
	DefineMission( 864, "���һ��ԭ��", 864 )
	
	MisBeginTalk( "<t>��������˵����Ҳ�������ˣ���ֻʣ���һ��ԭ���ˣ��������������ھ�ɱ���㣬�����ɹ��ˣ������������һͬ������������<n><t>���һ��ԭ����ʬ����Ƭ���������ʬ�ļһ�����")
	MisBeginCondition(LvCheck, ">", 53 )
	MisBeginCondition(HasRecord, 862)
	MisBeginCondition(NoMission, 864)
	MisBeginCondition(NoRecord, 864)
	MisBeginAction(AddMission, 864)
	MisBeginAction(AddTrigger, 8641, TE_GETITEM, 4886, 10 )
	MisCancelAction(ClearMission, 864)
	
	MisNeed(MIS_NEED_DESP, "10��ʬ����Ƭ��Ħ�����˺��ᡤ�ƶ���651,1585������ԭ������")
	MisNeed(MIS_NEED_ITEM, 4886, 10, 10, 10)
	
	MisHelpTalk("���һ���ˣ���Ҫ����ǿ��һ������Ҫ10��ʬ����Ƭ")
	MisResultTalk("ûʲô���赲���ˣ�������������ԭ�ϣ��ҽ���Ϊ��һ����������")
	MisResultCondition(NoRecord, 864)
	MisResultCondition(HasMission, 864)
	MisResultCondition(HasItem, 4886, 10)
	MisResultAction(TakeItem, 4886, 10)
	MisResultAction(ClearMission, 864)
	MisResultAction(SetRecord, 864)
	MisResultAction(AddExp,56496,56496)	
	MisResultAction(AddMoney,1306,1306)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4886 )	
	TriggerAction( 1, AddNextFlag, 864, 10, 10 )
	RegCurTrigger( 8641 )

-----------------------------------Ļ�����Ӱ
	DefineMission( 865, "Ļ�����Ӱ", 865 )
	
	MisBeginTalk( "<t>��������������֪����ָ�ӽ�ʬ���ŵ�Ļ����Ӱ�����Ǿ��������ʬ��һȺ���˶��ĵķ���Ĺ��<n><t>�������ģ����Ҹɵ�������а��ɣ���ս���е������ǰ�Ϣ")
	MisBeginCondition(LvCheck, ">", 53 )
	MisBeginCondition(HasRecord, 855)
	MisBeginCondition(NoMission, 865)
	MisBeginCondition(NoRecord, 865)
	MisBeginAction(AddMission, 865)
	MisBeginAction(AddTrigger, 8651, TE_KILL, 52, 10 )
	MisCancelAction(ClearMission, 865)

	MisNeed(MIS_NEED_DESP, "ɱ��10�������ʬ����ȥ�������������Կˣ�706,1465������ ")
	MisNeed(MIS_NEED_KILL, 52, 10, 10, 10)

	MisHelpTalk("�㶨Ļ�����Ӱ����ֻ�����ǲ����ˣ��ҵļ��˲��ܰ�Ϣ")
	MisResultTalk("�������Ҳ��ʧ�ˣ�Ը����ս���е����鰲Ϣ������")
	MisResultCondition(NoRecord, 865)
	MisResultCondition(HasMission, 865)
	MisResultCondition(HasFlag, 865, 19)
	MisResultAction(ClearMission, 865)
	MisResultAction(SetRecord, 865)
	MisResultAction(AddExp,56496,56496)	
	MisResultAction(AddMoney,1306,1306)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 52 )	
	TriggerAction( 1, AddNextFlag, 865, 10, 10 )
	RegCurTrigger( 8651 )

-----------------------------------���ĵ���
	DefineMission( 866, "���ĵ���", 866 )
	
	MisBeginTalk( "<t>Զ���ܳɹ������ڵ���ʣ�µľݵ�ֻ�����ߺ����ˣ���������Ҳ�����ŵ�����ǿ��Ļ������Ҳ����ŷǾ�����Աǰ����������������ֵĻ������ǽ��ޱȻ�ӭ��<n><t>��ε�Ŀ����������ʿ�ӳ���ÿ�˵�����ݶ���10��������������")
	MisBeginCondition(LvCheck, ">", 53 )
	MisBeginCondition(HasRecord, 860)
	MisBeginCondition(NoMission, 866)
	MisBeginCondition(NoRecord, 866)
	MisBeginAction(AddMission, 866)
	MisBeginAction(AddTrigger, 8661, TE_KILL, 565, 10 )
	MisBeginAction(AddTrigger, 8662, TE_GETITEM, 4879, 1 )
	MisCancelAction(ClearMission, 866)

	MisNeed(MIS_NEED_DESP, "ɱ��10��������ʿ�ӳ������������ܲ���ı������������У��653,1505����ȥ1����ʿ�ӳ�֤֮����֤������¸� ")
	MisNeed(MIS_NEED_KILL, 565, 10, 10, 10)
	MisNeed(MIS_NEED_ITEM, 4879, 1, 20, 1)

	MisHelpTalk("�����ǵ�Ȼ�ģ����ڻ�ͷ�����ü���10��������ʿ�ӳ��ɲ����������")
	MisResultTalk("���ĵ����Ѿ����������ˣ����ǵ�֮������ս���������ľ��񽫰���Ĺ�������")
	MisResultCondition(NoRecord, 866)
	MisResultCondition(HasMission, 866)
	MisResultCondition(HasFlag, 866, 19)
	MisResultCondition(HasItem, 4879, 1)
	MisResultAction(TakeItem, 4879, 1)
	MisResultAction(ClearMission, 866)
	MisResultAction(SetRecord, 866)
	MisResultAction(AddExp,56496,56496)
	MisResultAction(AddMoney,1306,1306)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 565 )	
	TriggerAction( 1, AddNextFlag, 866, 10, 10 )
	RegCurTrigger( 8661 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4879 )	
	TriggerAction( 1, AddNextFlag, 866, 20, 1 )
	RegCurTrigger( 8662 )

-----------------------------------��Ѫ����
	DefineMission( 867, "��Ѫ����", 867 )
	
	MisBeginTalk( "<t>Զ��������ͷ����е�а��û�˱���ӵ�и�ǿ������������ܰ�Ѫ��ϴ�񣬰���������밵Ѫ������ײ������Ҫսʤ15����Ѫ������֤����Ⱥڰ����ֲ�������")
	MisBeginCondition(LvCheck, ">", 54 )
	--MisBeginCondition(HasRecord, 860)
	MisBeginCondition(NoMission, 867)
	MisBeginCondition(NoRecord, 867)
	MisBeginAction(AddMission, 867)
	MisBeginAction(AddTrigger, 8671, TE_KILL, 666, 15 )
	MisCancelAction(ClearMission, 867)

	MisNeed(MIS_NEED_DESP, "�ɵ�15����Ѫ���֣������������Ů�����٣�740,1451������Ҫ��ɵĿ��� ")
	MisNeed(MIS_NEED_KILL, 666, 15, 10, 15 )

	MisHelpTalk("����Ļ����ڹ��������ڷ��������ü�")
	MisResultTalk("ǿ�߰������Ѿ��ڰ�Ѫ���ܵ���ϴ���ڽ���·;�ϣ���ؽ�������ʤ")
	MisResultCondition(NoRecord, 867)
	MisResultCondition(HasMission, 867)
	MisResultCondition(HasFlag, 867, 24)
	MisResultAction(ClearMission, 867)
	MisResultAction(SetRecord, 867)
	MisResultAction(AddExp,62032,62032)
	MisResultAction(AddMoney,1331,1331)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 666 )	
	TriggerAction( 1, AddNextFlag, 867, 10, 15 )
	RegCurTrigger( 8671 )

-----------------------------------��֮��
	DefineMission( 868, "��֮��", 868 )
	
	MisBeginTalk( "<t>Ѫ�ȵĴ��ӣ������ͷ�������ĳ����������������������������Ҫ��������ʲô�����һ��������֮����û��˵������ʧȥ�˻��ŵļ�ֵ�ˡ�<n><t>������ܰ���Ū��5�ѣ��ҿ�����һ��ļҲ����㻻")
	MisBeginCondition(LvCheck, ">", 54 )
	MisBeginCondition(HasRecord, 861)
	MisBeginCondition(NoMission, 868)
	MisBeginCondition(NoRecord, 868)
	MisBeginAction(AddMission, 868)
	MisBeginAction(AddTrigger, 8681, TE_GETITEM, 4922, 5 )
	MisCancelAction(ClearMission, 868)
	
	MisNeed(MIS_NEED_DESP, "��������ˡ��ݲ���ά˹��741,1563��Ū��5����֮�������������ղ�")
	MisNeed(MIS_NEED_ITEM, 4922, 5, 10, 5)
	
	MisHelpTalk("���˰�֮�����ұ������󣬿�ȥŪ5�Ѹ���")
	MisResultTalk("�������صĺڰ������������Ļ��ߣ�����������Ҫ���ռ�Ʒ�������ǰ����ҵĴ�æ��������ı���")
	MisResultCondition(NoRecord, 868)
	MisResultCondition(HasMission, 868)
	MisResultCondition(HasItem, 4922, 5)
	MisResultAction(TakeItem, 4922, 5)
	MisResultAction(ClearMission, 868)
	MisResultAction(SetRecord, 868)
	MisResultAction(AddExp,62032,62032)	
	MisResultAction(AddMoney,1331,1331)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4922 )	
	TriggerAction( 1, AddNextFlag, 868, 10, 5 )
	RegCurTrigger( 8681 )


-----------------------------------�ֿ�ѩ����
	DefineMission( 869, "�ֿ�ѩ����", 869 )
	
	MisBeginTalk( "<t>��������⵽��ѩ���˵����֣���Ȼ��ǰҲ�й����Ƶ����󣬲�������θ�����֯�ԣ���֪���ǲ�����ʲôԭ����ԭ������ǵֿ���Щѩ������<n><t>��Ȼ�����ڣ�����ֻ������ȥɱ�ٶ�ѩ���ˣ���Щ�ٶ۵ļһﾭ�������ڣ�2471,502��������������������")
	MisBeginCondition(LvCheck, ">", 35 )
	--MisBeginCondition(HasRecord, 860)
	MisBeginCondition(NoMission, 869)
	MisBeginCondition(NoRecord, 869)
	MisBeginAction(AddMission, 869)
	MisBeginAction(AddTrigger, 8691, TE_KILL, 516, 15 )
	MisCancelAction(ClearMission, 869)

	MisNeed(MIS_NEED_DESP, "ɱ��15���ٶ�ѩ���ˣ�Ȼ���򷨵϶���2680,657������ ")
	MisNeed(MIS_NEED_KILL, 516, 15, 10, 15 )

	MisHelpTalk("�㻹�������ʲô��ѩ�����Ѿ�Ҫ�򵽲���վ��")
	MisResultTalk("���ڵֿ�ѩ���˵�ս���б��ֳ�ɫ��ϣ�������Ժ��ս����Ҳ�ܼ�������")
	MisResultCondition(NoRecord, 869)
	MisResultCondition(HasMission, 869)
	MisResultCondition(HasFlag, 869, 24)
	MisResultAction(ClearMission, 869)
	MisResultAction(SetRecord, 869)
	MisResultAction(AddExp,9170,9170)	
	MisResultAction(AddMoney,939,939)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 516 )	
	TriggerAction( 1, AddNextFlag, 869, 10, 15 )
	RegCurTrigger( 8691 )

-----------------------------------��������
	DefineMission( 870, "��������", 870 )
	
	MisBeginTalk( "<t>�ֵ��������ǻ�ļ��ڣ�������������˼ҵ�С��Ҫ�����ˣ���˭����վ�����������ǵĴ�ׯ�أ�İ���ˣ���Ը���𣿰���������һЩ����սʿ�ɡ�<n><t>��Ⱥ���������������ڣ�2580,553�������ε���")
	MisBeginCondition(LvCheck, ">", 36 )
	--MisBeginCondition(HasRecord, 860)
	MisBeginCondition(NoMission, 870)
	MisBeginCondition(NoRecord, 870)
	MisBeginAction(AddMission, 870)
	MisBeginAction(AddTrigger, 8701, TE_KILL, 271, 15 )
	MisCancelAction(ClearMission, 870)

	MisNeed(MIS_NEED_DESP, "�����ﰬ�ǡ�������2675,631��ɱ��15������սʿ��֤����������ׯ�ľ��� ")
	MisNeed(MIS_NEED_KILL, 271, 15, 10, 15 )

	MisHelpTalk("�����Ǿ��ڲ���վ���ߣ���ȥ�ɵ�����")
	MisResultTalk("���������ǻ���ʵһ�����ˣ���Ĵ����ô��Ӹ��Ӱ�ȫ�ˣ�лл��")
	MisResultCondition(NoRecord, 870)
	MisResultCondition(HasMission, 870)
	MisResultCondition(HasFlag, 870, 24)
	MisResultAction(ClearMission, 870)
	MisResultAction(SetRecord, 870)
	MisResultAction(AddExp,10238,10238)
	MisResultAction(AddMoney,955,955)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 271 )	
	TriggerAction( 1, AddNextFlag, 870, 10, 15 )
	RegCurTrigger( 8701 )

-----------------------------------������
	DefineMission( 871, "������", 871 )
	
	MisBeginTalk( "<t>������߶���һЩ���ã����ǿ��Ǻ�ֵǮ�ģ���������ܰ���Ū������Ĵ󵶣�����Ĵ��ӣ����õ�ľ��ÿ��5�ѣ���һ������㱨�꣡<n><t>������ڣ�2580��553�����������ˣ���2811,565�������ĳٶ۵�ѩħ�ˣ���2471,502�������ĳٶ۵�ѩ���������ҵ����ǡ�")
	MisBeginCondition(LvCheck, ">", 36 )
	--MisBeginCondition(HasRecord, 861)
	MisBeginCondition(NoMission, 871)
	MisBeginCondition(NoRecord, 871)
	MisBeginAction(AddMission, 871)
	MisBeginAction(AddTrigger, 8711, TE_GETITEM, 4836, 5 )
	MisBeginAction(AddTrigger, 8712, TE_GETITEM, 4907, 5 )
	MisBeginAction(AddTrigger, 8713, TE_GETITEM, 4838, 5 )
	MisCancelAction(ClearMission, 871)
	
	MisNeed(MIS_NEED_DESP, "���׿��ʷ��ޣ�2662,648����ս�����ռ�����Ĵ󵶣�����Ĵ��ӣ����õ�ľ����5��")
	MisNeed(MIS_NEED_ITEM, 4836, 5, 10, 5)
	MisNeed(MIS_NEED_ITEM, 4907, 5, 10, 5)
	MisNeed(MIS_NEED_ITEM, 4838, 5, 10, 5)
	
	MisHelpTalk("��Ҫ�Ķ���һЩ���������Ȼ��˵Ū���������治֪��˭ʲô��")
	MisResultTalk("����������Щ�����ø������ĵ������ˡ��ݲ���ά˹,�ֿ���ƭ��һ��Ǯ��������")
	MisResultCondition(NoRecord, 871)
	MisResultCondition(HasMission, 871)
	MisResultCondition(HasItem, 4836, 5)
	MisResultCondition(HasItem, 4907, 5)
	MisResultCondition(HasItem, 4838, 5)
	MisResultAction(TakeItem, 4836, 5)
	MisResultAction(TakeItem, 4907, 5)
	MisResultAction(TakeItem, 4838, 5)
	MisResultAction(ClearMission, 871)
	MisResultAction(SetRecord, 871)
	MisResultAction(AddExp,10238,10238)	
	MisResultAction(AddMoney,955,955)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4836 )	
	TriggerAction( 1, AddNextFlag, 871, 10, 5 )
	RegCurTrigger( 8711 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4907 )	
	TriggerAction( 1, AddNextFlag, 871, 20, 5 )
	RegCurTrigger( 8712 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4838 )	
	TriggerAction( 1, AddNextFlag, 871, 30, 5 )
	RegCurTrigger( 8713 )


-----------------------------------������ս��
	DefineMission( 872, "������ս��", 872 )
	
	MisBeginTalk( "<t>ս�������ˣ�����������ԵĽ��Ǹ���ǿ���ѩ���ˣ������Ǳ�׾�ĳٶ�ѩ���ˣ���ô������Ը���������̼���������<n><t>����Ŀǰ�Ѿ����ˣ�2587,455�������ˡ�")
	MisBeginCondition(LvCheck, ">", 37 )
	MisBeginCondition(HasRecord, 869)
	MisBeginCondition(NoMission, 872)
	MisBeginCondition(NoRecord, 872)
	MisBeginAction(AddMission, 872)
	MisBeginAction(AddTrigger, 8721, TE_KILL, 194, 15 )
	MisCancelAction(ClearMission, 872)

	MisNeed(MIS_NEED_DESP, "���϶���2680,657��ϣ����ɱ��15��ѩ���� ")
	MisNeed(MIS_NEED_KILL, 194, 15, 10, 15 )

	MisHelpTalk("ս���Ѿ��������뱣ס������ֻŬ��ɱ���ˣ���ɱ�˼�ֻѩ�����ˣ�")
	MisResultTalk("���Ȼû�й����ҵ�ϣ������ʹս������ô������������ֻҪ����������һ������ȡ��ʤ��")
	MisResultCondition(NoRecord, 872)
	MisResultCondition(HasMission, 872)
	MisResultCondition(HasFlag, 872, 24)
	MisResultAction(ClearMission, 872)
	MisResultAction(SetRecord, 872)
	MisResultAction(AddExp,11413,11413)	
	MisResultAction(AddMoney,972,972)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 194 )	
	TriggerAction( 1, AddNextFlag, 872, 10, 15 )
	RegCurTrigger( 8721 )

-----------------------------------���˴�
	DefineMission( 873, "���˴�", 873 )
	
	MisBeginTalk( "<t>���ǵ����𣿾����Ǹ������õģ�����Ҳ�Ҫ�����ˣ���Ҫ���˴󵶣�����Ū��5�ѣ��һ����ܸߵı��꣡<n><t>��Ȼ������Դӣ�2587,455��������ѩ���������ҵ���Щ����Ҫ�Ķ�����")
	MisBeginCondition(LvCheck, ">", 38 )
	MisBeginCondition(HasRecord, 871)
	MisBeginCondition(NoMission, 873)
	MisBeginCondition(NoRecord, 873)
	MisBeginAction(AddMission, 873)
	MisBeginAction(AddTrigger, 8731, TE_GETITEM, 4861, 5 )
	MisCancelAction(ClearMission, 873)
	
	MisNeed(MIS_NEED_DESP, "�ռ�5�Ѿ��˴󵶸��׿��ʷ��ޣ�2662,648��")
	MisNeed(MIS_NEED_ITEM, 4861, 5, 10, 5)
	
	MisHelpTalk("������5�Ѿ��˴󵶣������������")
	MisResultTalk("����Ǿ��˵Ĵ����ֿ�����һ����")
	MisResultCondition(NoRecord, 873)
	MisResultCondition(HasMission, 873)
	MisResultCondition(HasItem, 4861, 5)
	MisResultAction(TakeItem, 4861, 5)
	MisResultAction(ClearMission, 873)
	MisResultAction(SetRecord, 873)
	MisResultAction(AddExp,11413,11413)
	MisResultAction(AddMoney,972,972)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4861 )	
	TriggerAction( 1, AddNextFlag, 873, 10, 5 )
	RegCurTrigger(8731)

-----------------------------------�ֿ�ѩħ��
	DefineMission( 874, "�ֿ�ѩħ��", 874 )
	
	MisBeginTalk( "<t>������Ѿ�������ֿ�ѩ���ˣ����ǣ�������ѩħ�˵���ѩ���˵Ļ�����������ˣ���ʹ��ٶ۵�ѩħ��Ҳ��������ѩ�������ݣ�С�Ĳ��ǳ��ٵ��ط���<n><t>��Σ�����Ҫѵ�����˶Կ�ѩħ�ˣ�Ŀ���ǣ�2811,565��������û�ĳٶ۵�ѩħ�ˣ���Ҫ����")
	MisBeginCondition(LvCheck, ">", 38 )
	MisBeginCondition(HasRecord, 872)
	MisBeginCondition(NoMission, 874)
	MisBeginCondition(NoRecord, 874)
	MisBeginAction(AddMission, 874)
	MisBeginAction(AddTrigger, 8741, TE_KILL, 517, 12 )
	MisCancelAction(ClearMission, 874)

	MisNeed(MIS_NEED_DESP, "ɱ��12���ٶ۵�ѩħ�ˣ�Ȼ���ȥ�򷨵϶���2680,657������ ")
	MisNeed(MIS_NEED_KILL, 517, 12, 10, 12 )

	MisHelpTalk("ѩħ�˸�ѩ���˿��ǲ�ͬ�ģ��������ľͷ�����")
	MisResultTalk("սʤ�˳ٶ۵�ѩħ��ûʲô�ý����ģ�ֻ�������Ŀ�꿴����˲����н���")
	MisResultCondition(NoRecord, 874)
	MisResultCondition(HasMission, 874)
	MisResultCondition(HasFlag, 874, 21)
	MisResultAction(ClearMission, 874)
	MisResultAction(SetRecord, 874)
	MisResultAction(AddExp,12706,12706)
	MisResultAction(AddMoney,990,990)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 517 )	
	TriggerAction( 1, AddNextFlag, 874, 10, 12 )
	RegCurTrigger( 8741 )

-----------------------------------������ţ
	DefineMission( 875, "������ţ", 875 )
	
	MisBeginTalk( "<t>�������վ���ճ���Ʒ�������Զ��������ǣ�����Ҳ����һ����˳�ģ���ô����Ҫ��Ҫ���ԣ�����������ǲ��Ը�����ţ��ÿ��Ҫ��ɱ20ֻ����Ŷ��<n><t>׼�����˾����ɣ���Щ����Ӳ�ǵļһ�ͨ�����ڣ�2733,651��������û")
	MisBeginCondition(LvCheck, ">", 38 )
	--MisBeginCondition(HasRecord, 872)
	MisBeginCondition(NoMission, 875)
	MisBeginCondition(NoRecord, 875)
	MisBeginAction(AddMission, 875)
	MisBeginAction(AddTrigger, 8751, TE_KILL, 501, 20 )
	MisBeginAction(AddTrigger, 8752, TE_GETITEM, 4821, 6 )
	MisCancelAction(ClearMission, 875)

	MisNeed(MIS_NEED_DESP, "����20��������ţ����6�����ǵĽǸ����ﰬ�ǡ�������2675,631�� ")
	MisNeed(MIS_NEED_KILL, 501, 20, 10, 20 )
	MisNeed(MIS_NEED_ITEM, 4821, 6, 40, 6 )

	MisHelpTalk("ֻ��һЩ��ţ���ѣ����Щ���ǵĴ��Ǹ���")
	MisResultTalk("����Ŷ�����Ѿ�֤�������������˵��츳������Ŭ��")
	MisResultCondition(NoRecord, 875)
	MisResultCondition(HasMission, 875)
	MisResultCondition(HasFlag, 875, 29)
	MisResultCondition(HasItem, 4821, 6)
	MisResultAction(TakeItem, 4821, 6)
	MisResultAction(ClearMission, 875)
	MisResultAction(SetRecord, 875)
	MisResultAction(AddExp,12706,12706)
	MisResultAction(AddMoney,990,990)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 501 )	
	TriggerAction( 1, AddNextFlag, 875, 10, 20 )
	RegCurTrigger( 8751 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4821 )	
	TriggerAction( 1, AddNextFlag, 875, 40, 6 )
	RegCurTrigger( 8752 )

-----------------------------------�µ�������
	DefineMission( 876, "�µ�������", 876 )
	
	MisBeginTalk( "<t>����սʿ�ո���Щ������ȴ�������µ������ߣ������Ϯ���ǲ��𹭼��֣��ѵ������������������䣬��Ȼ�����������������ˣ��ܲ�����һ�ΰ������ǣ��������ǵĲ���վ�أ�<n><t>������Щ�������������Ѿ����ˣ�2746,451�������������ǵ���ɫ���ưɣ�")
	MisBeginCondition(LvCheck, ">", 39 )
	MisBeginCondition(HasRecord, 870)
	MisBeginCondition(NoMission, 876)
	MisBeginCondition(NoRecord, 876)
	MisBeginAction(AddMission, 876)
	MisBeginAction(AddTrigger, 8761, TE_KILL, 270, 12 )
	MisCancelAction(ClearMission, 876)

	MisNeed(MIS_NEED_DESP, "������ׯ��ɱ��12�����𹭼��֣�Ȼ��ȥ���ﰬ�ǡ�������2675,631������ ")
	MisNeed(MIS_NEED_KILL, 270, 12, 10, 12 )

	MisHelpTalk("С����Щ���𹭼��֣�������Ȼû���۾�����������Ļ��Ǻ�׼��")
	MisResultTalk("�ǰﲻ�𹭼������ܵ������滬����ף���㣬���ִ���һ��Ư����ʤ��")
	MisResultCondition(NoRecord, 876)
	MisResultCondition(HasMission, 876)
	MisResultCondition(HasFlag, 876, 21)
	MisResultAction(ClearMission, 876)
	MisResultAction(SetRecord, 876)
	MisResultAction(AddExp,14128,14128)	
	MisResultAction(AddMoney,1008,1008)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 270 )	
	TriggerAction( 1, AddNextFlag, 876, 10, 12 )
	RegCurTrigger( 8761 )

-----------------------------------����װ��Ʒ
	DefineMission( 877, "����װ��Ʒ", 877 )
	
	MisBeginTalk( "<t>���𹭼��ֵļ������ƺ����źܺÿ������ã��������Ƿ�Ը�Ᵽ������վ������һ��Ҫ����Ū���������ü��ң���ʵ��̫��Ҫ�ˣ�<n><t>������ڣ�2746,451�������ҵ����𹭼��ֵ���Ӱ��")
	MisBeginCondition(LvCheck, ">", 39 )
	--MisBeginCondition(HasRecord, 871)
	MisBeginCondition(NoMission, 877)
	MisBeginCondition(NoRecord, 877)
	MisBeginAction(AddMission, 877)
	MisBeginAction(AddTrigger, 8771, TE_GETITEM, 4911, 10 )
	MisCancelAction(ClearMission, 877)
	
	MisNeed(MIS_NEED_DESP, "Ϊ��ά�������2678,631���ռ�10�����ü���")
	MisNeed(MIS_NEED_ITEM, 4911, 10, 10, 10)
	
	MisHelpTalk("����Ҫ���ü����ϵ�������װ���ҵ����棬��ȥ����ŪЩ��")
	MisResultTalk("��Щ�����ϵ����øպÿ�������װ���ҵ����棬�Ǻǣ�̫��л����")
	MisResultCondition(NoRecord, 877)
	MisResultCondition(HasMission, 877)
	MisResultCondition(HasItem, 4911, 10)
	MisResultAction(TakeItem, 4911, 10)
	MisResultAction(ClearMission, 877)
	MisResultAction(SetRecord, 877)
	MisResultAction(AddExp,14128,14128)	
	MisResultAction(AddMoney,1008,1008)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4911 )	
	TriggerAction( 1, AddNextFlag, 877, 10, 10 )
	RegCurTrigger(8771)

-----------------------------------��������
	DefineMission( 878, "��������", 878 )
	
	MisBeginTalk( "<t>���˵�ѵ���Ѿ������ˣ�Ҫ������ʽ��ս���ˣ�����Ҫ�������룬�����������ѩħ�ˣ�׼�����˾ͳ����ɣ�<n><t>Ŀ����λ�ڣ�2855,451��������ѩħ���ϳ���")
	MisBeginCondition(LvCheck, ">", 39 )
	MisBeginCondition(HasRecord, 874)
	MisBeginCondition(NoMission, 878)
	MisBeginCondition(NoRecord, 878)
	MisBeginAction(AddMission, 878)
	MisBeginAction(AddTrigger, 8781, TE_KILL, 195, 12 )
	MisCancelAction(ClearMission, 878)

	MisNeed(MIS_NEED_DESP, "�ɵ�12��ѩħ�ˣ�Ȼ��ȥ���϶���2680,657������ȡ���� ")
	MisNeed(MIS_NEED_KILL, 195, 12, 10, 12 )

	MisHelpTalk("��ε�Ŀ����ѩħ�ˣ�׼���þͳ�����")
	MisResultTalk("�����뵽ѩħ�˵ĵ��̵��¼��Ѿ��õ���ȫ���˵���ͬ���ҳ����������ǿ��")
	MisResultCondition(NoRecord, 878)
	MisResultCondition(HasMission, 878)
	MisResultCondition(HasFlag, 878, 21)
	MisResultAction(ClearMission, 878)
	MisResultAction(SetRecord, 878)
	MisResultAction(AddExp,14128,14128)
	MisResultAction(AddMoney,1008,1008)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 195 )	
	TriggerAction( 1, AddNextFlag, 878, 10, 12 )
	RegCurTrigger( 8781 )

-----------------------------------����ľ��
	DefineMission( 879, "����ľ��", 879 )
	
	MisBeginTalk( "<t>��˵Ҫȥ�ַ�ѩħ���ˣ���֪���ֻ���ض��پ���ľ�����ҵ�������ʼ�����ˣ�������Ҳ�μӰɣ�Ϊ�Ҵ���10������ľ�����һ��ǻ������ı���ģ�ѩħ��һ�㶼�ڣ�2855,451��������û��")
	MisBeginCondition(LvCheck, ">", 39 )
	MisBeginCondition(HasRecord, 873)
	MisBeginCondition(NoMission, 879)
	MisBeginCondition(NoRecord, 879)
	MisBeginAction(AddMission, 879)
	MisBeginAction(AddTrigger, 8791, TE_GETITEM, 4862, 10 )
	MisCancelAction(ClearMission, 879)
	
	MisNeed(MIS_NEED_DESP, "Ϊ�׿��ʷ��ޣ�2662,648���ռ�10������ľ��")
	MisNeed(MIS_NEED_ITEM, 4862, 10, 10, 10)
	
	MisHelpTalk("Ū������ľ����������������Щѩ���˵�����")
	MisResultTalk("����Ǿ���ľ�����������ҿ����˽�������Ķ��������ҵĿڴ�")
	MisResultCondition(NoRecord, 879)
	MisResultCondition(HasMission, 879)
	MisResultCondition(HasItem, 4862, 10)
	MisResultAction(TakeItem, 4862, 10)
	MisResultAction(ClearMission, 879)
	MisResultAction(SetRecord, 879)
	MisResultAction(AddExp,14128,14128)
	MisResultAction(AddMoney,1008,1008)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4862 )	
	TriggerAction( 1, AddNextFlag, 879, 10, 10 )
	RegCurTrigger(8791)

-----------------------------------�к�
	DefineMission( 880, "�к�", 880 )
	
	MisBeginTalk( "<t>���Ѿ���������̫���æ�ˣ��治Ӧ��������ð�գ����ǣ�����վ�Ѿ�û�и���ı����ˣ�����Ӣ���ù�����������ĳ�����ᣬ�ȴ���������������к���������")
	MisBeginCondition(LvCheck, ">", 41 )
	MisBeginCondition(HasRecord, 876)
	MisBeginCondition(NoMission, 880)
	MisBeginCondition(NoRecord, 880)
	MisBeginAction(AddMission, 880)
	MisBeginAction(AddTrigger, 8801, TE_KILL, 502, 12 )
	MisCancelAction(ClearMission, 880)

	MisNeed(MIS_NEED_DESP, "���ﰬ�ǡ�������2675,631��Ҫ����ɱ��12����Ӣ���ù��������������˵�ʵ�� ")
	MisNeed(MIS_NEED_KILL, 502, 12, 10, 12 )

	MisHelpTalk("�����ˣ��õ����ѵ��߹����𣿶�������˵�ǿ�����Ψһ�ļ�����")
	MisResultTalk("������Щ���Ҽ�������Щս���ϵ����£������ˣ�С��Щ����Ҫ����ļ���Ϊ�㵣��")
	MisResultCondition(NoRecord, 880)
	MisResultCondition(HasMission, 880)
	MisResultCondition(HasFlag, 880, 21)
	MisResultAction(ClearMission, 880)
	MisResultAction(SetRecord, 880)
	MisResultAction(AddExp,17409,17409)
	MisResultAction(AddMoney,1045,1045)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 502 )	
	TriggerAction( 1, AddNextFlag, 880, 10, 12 )
	RegCurTrigger( 8801 )

-----------------------------------���ջԻ�
	DefineMission( 881, "���ջԻ�", 881 )
	
	MisBeginTalk( "<t>�������Ӣ���ù���������<n><t>�����ǿ��������µİܽ������ǣ����ڣ�Ӣ����ĺ����ʹ���뿴һ��������ƽ����ս��Ʒ���ѵ��߹Ƕ����ˣ������ˣ��ܰ��Ҵ�����������")
	MisBeginCondition(LvCheck, ">", 41 )
	--MisBeginCondition(HasRecord, 873)
	MisBeginCondition(NoMission, 881)
	MisBeginCondition(NoRecord, 881)
	MisBeginAction(AddMission, 881)
	MisBeginAction(AddTrigger, 8811, TE_GETITEM, 4822, 8 )
	MisCancelAction(ClearMission, 881)
	
	MisNeed(MIS_NEED_DESP, "�濭�ġ��ǣ�2688,628������8�����ѵ��߹������������Ը")
	MisNeed(MIS_NEED_ITEM, 4822, 8, 10, 8)
	
	MisHelpTalk("�����ˣ��õ����ѵ��߹����𣿶�������˵�ǿ�����Ψһ�ļ�����")
	MisResultTalk("������Щ���Ҽ�������Щս���ϵ����£������ˣ�С��Щ����Ҫ����ļ���Ϊ�㵣��")
	MisResultCondition(NoRecord, 881)
	MisResultCondition(HasMission, 881)
	MisResultCondition(HasItem, 4822, 8)
	MisResultAction(TakeItem, 4822, 8)
	MisResultAction(ClearMission, 881)
	MisResultAction(SetRecord, 881)
	MisResultAction(AddExp,17409,17409)
	MisResultAction(AddMoney,1045,1045)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4822 )	
	TriggerAction( 1, AddNextFlag, 881, 10, 8 )
	RegCurTrigger(8811)

----------------------------------���Ա�������
	DefineMission( 882, "���Ա�������", 882 )
	
	MisBeginTalk( "<t>�ϻصĲ��������Ĳ������죬����Ҫ���ԵĶ����Ǳ������̣���ؿɲ����������ˣ��������ĵĻ��������ԵĿ��ܾ�����")
	MisBeginCondition(LvCheck, ">", 41 )
	MisBeginCondition(HasRecord, 875)
	MisBeginCondition(NoMission, 882)
	MisBeginCondition(NoRecord, 882)
	MisBeginAction(AddMission, 882)
	MisBeginAction(AddTrigger, 8821, TE_KILL, 530, 10 )
	MisBeginAction(AddTrigger, 8822, TE_GETITEM, 4850, 1 )
	MisCancelAction(ClearMission, 882)

	MisNeed(MIS_NEED_DESP, "����10���������̣�����1������֮����Ƭ�����ﰬ�ǡ�������2675,631�� ")
	MisNeed(MIS_NEED_KILL, 530, 10, 10, 10 )
	MisNeed(MIS_NEED_ITEM, 4850, 1, 20, 1 )

	MisHelpTalk("�������̵Ĳ��Թ������е�����ˣ��ǵ�Ҫ�ѱ���֮�ĵ���Ƭ������Ŷ")
	MisResultTalk("��Ư������Ƭ����������ά�����˵������Ҫ�Ķ���һ���������")
	MisResultCondition(NoRecord, 882)
	MisResultCondition(HasMission, 882)
	MisResultCondition(HasFlag, 882, 19)
	MisResultCondition(HasItem, 4850, 1)
	MisResultAction(TakeItem, 4850, 1)
	MisResultAction(ClearMission, 882)
	MisResultAction(SetRecord, 882)
	MisResultAction(AddExp,17409,17409)
	MisResultAction(AddMoney,1045,1045)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 530 )	
	TriggerAction( 1, AddNextFlag, 882, 10, 10 )
	RegCurTrigger( 8821 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4850 )	
	TriggerAction( 1, AddNextFlag, 882, 20, 1 )
	RegCurTrigger( 8822 )

-----------------------------------����֮��
	DefineMission( 883, "����֮��", 883 )
	
	MisBeginTalk( "<t>��˵��μӹ����Ա��������ˣ�����һ������������֮�ĵ���Ƭ�˰ɣ���Ӧ�ü�ʶ�����������˰ɡ�<n><t>����л��ᣬ���ܰ����ռ�5����ʵ�ڸм�����")
	MisBeginCondition(LvCheck, ">", 41 )
	MisBeginCondition(HasRecord, 882)
	MisBeginCondition(NoMission, 883)
	MisBeginCondition(NoRecord, 883)
	MisBeginAction(AddMission, 883)
	MisBeginAction(AddTrigger, 8831, TE_GETITEM, 4850, 5 )
	MisCancelAction(ClearMission, 883)
	
	MisNeed(MIS_NEED_DESP, "����ά�������2678,631����ȥ5������֮����Ƭ")
	MisNeed(MIS_NEED_ITEM, 4850, 5, 10, 5)
	
	MisHelpTalk("���Ӧ�Ҹ���5������֮�ĵ���Ƭ��Ū������")
	MisResultTalk("����֮����Ƭ��ÿ�ο��������������˶��������ˣ���ʵ��̫���˲�����")
	MisResultCondition(NoRecord, 883)
	MisResultCondition(HasMission, 883)
	MisResultCondition(HasItem, 4850, 5)
	MisResultAction(TakeItem, 4850, 5)
	MisResultAction(ClearMission, 883)
	MisResultAction(SetRecord, 883)
	MisResultAction(AddExp,17409,17409)	
	MisResultAction(AddMoney,1045,1045)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4850 )	
	TriggerAction( 1, AddNextFlag, 883, 10, 5 )
	RegCurTrigger(8831)


-----------------------------------ˮ����
	DefineMission( 884, "ˮ����", 884 )
	
	MisBeginTalk( "<t>����˵��һ�����ϵĴ�˵���ñ���֮�ĵ���Ƭ�ʹ���ˮ�����Ժϳ�ˮ���ģ����Ǹ��Ǳ���ΰ���ʫ����Ϊ�������������Ķ�����<n><t>���˰ﵽ�ף�ȥ��ˮ����Ҫ��������ˮ���ɣ���ָм�")
	MisBeginCondition(LvCheck, ">", 43 )
	MisBeginCondition(HasRecord, 883)
	MisBeginCondition(NoMission, 884)
	MisBeginCondition(NoRecord, 884)
	MisBeginAction(AddMission, 884)
	MisBeginAction(AddTrigger, 8841, TE_GETITEM, 4895, 5 )
	MisCancelAction(ClearMission, 884)
	
	MisNeed(MIS_NEED_DESP, "����ά�������2678,631����ȥ5����������")
	MisNeed(MIS_NEED_ITEM, 4895, 5, 10, 5)
	
	MisHelpTalk("���Ӧ�ҵĴ���ˮ���أ���ɲ��ܷ���Ŷ")
	MisResultTalk("���ˣ������ҾͿ�������ˮ�����ˣ���Ȼ��Щ��ϧ����������֪����ˮ���Ĳ�������������������Ķ���")
	MisResultCondition(NoRecord, 884)
	MisResultCondition(HasMission, 884)
	MisResultCondition(HasItem, 4895, 5)
	MisResultAction(TakeItem, 4895, 5)
	MisResultAction(ClearMission, 884)
	MisResultAction(SetRecord, 884)
	MisResultAction(AddExp,21361,21361)	
	MisResultAction(AddMoney,1084,1084)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4895 )	
	TriggerAction( 1, AddNextFlag, 884, 10, 5 )
	RegCurTrigger(8841)

-----------------------------------���Լ�����
	DefineMission( 885, "���Լ�����", 885 )
	
	MisBeginTalk( "<t>��������˵�Ļ��������������ڹ�ȥ�Ĳ��Լ������ж��У���������ȥ�޻أ��Ҳ�ϣ�����������ٴη���������μӵ������ھ��˳������в��벶�Ե����԰�ȫΪ�أ�׼��������")
	MisBeginCondition(LvCheck, ">", 43 )
	MisBeginCondition(HasRecord, 882)
	MisBeginCondition(NoMission, 885)
	MisBeginCondition(NoRecord, 885)
	MisBeginAction(AddMission, 885)
	MisBeginAction(AddTrigger, 8851, TE_KILL, 504, 8 )
	MisBeginAction(AddTrigger, 8852, TE_GETITEM, 4824, 3 )
	MisCancelAction(ClearMission, 885)

	MisNeed(MIS_NEED_DESP, "ɱ��8ͷ���ͼ����ܣ�����3�ŷ�����������ȥ�����ﰬ�ǡ�������2675,631�� ")
	MisNeed(MIS_NEED_KILL, 504, 8, 10, 8 )
	MisNeed(MIS_NEED_ITEM, 4824, 3, 20, 3 )

	MisHelpTalk("���ʶ���������˰ɣ���Ҫ�£�����ֻ������������")
	MisResultTalk("�쿴��Щ������������������ʱ�����ٿ��������˾����������֮��")
	MisResultCondition(NoRecord, 885)
	MisResultCondition(HasMission, 885)
	MisResultCondition(HasFlag, 885, 17)
	MisResultCondition(HasItem, 4824, 3)
	MisResultAction(TakeItem, 4824, 3)
	MisResultAction(ClearMission, 885)
	MisResultAction(SetRecord, 885)
	MisResultAction(AddExp,21361,21361)	
	MisResultAction(AddMoney,1084,1084)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 504 )	
	TriggerAction( 1, AddNextFlag, 885, 10, 8 )
	RegCurTrigger( 8851 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4824 )	
	TriggerAction( 1, AddNextFlag, 885, 20, 3 )
	RegCurTrigger( 8852 )

-----------------------------------��������
	DefineMission( 886, "��������", 886 )
	
	MisBeginTalk( "<t>��ѩ���˵�ս�������㻹�������°ѣ��������Ҫ�Կ��ĵ����Ǿ������졪���ֲ�ѩ���ˣ����ǽ�������������ʷ��û�������ġ�<n><t>��ʿ�ǣ��ú���������������")
	MisBeginCondition(LvCheck, ">", 44 )
	MisBeginCondition(HasRecord, 872)
	MisBeginCondition(NoMission, 886)
	MisBeginCondition(NoRecord, 886)
	MisBeginAction(AddMission, 886)
	MisBeginAction(AddTrigger, 8861, TE_KILL, 194, 16 )
	MisCancelAction(ClearMission, 886)

	MisNeed(MIS_NEED_DESP, "�淨�϶���2680,657���ɵ�16��ѩ���� ")
	MisNeed(MIS_NEED_KILL, 194, 16, 10, 16 )

	MisHelpTalk("������ֲ�ѩ�������𣿲�Ҫ�����ǿ�����ɱ������")
	MisResultTalk("����ѩ����Ҳ�����ˣ��������������κ��˶�û���������飬�����������������Ѷ��Ժ�")
	MisResultCondition(NoRecord, 886)
	MisResultCondition(HasMission, 886)
	MisResultCondition(HasFlag, 886, 25)
	MisResultAction(ClearMission, 886)
	MisResultAction(SetRecord, 886)
	MisResultAction(AddExp,23628,23628)	
	MisResultAction(AddMoney,1104,1104)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 194 )	
	TriggerAction( 1, AddNextFlag, 886, 10, 16 )
	RegCurTrigger( 8861 )

-----------------------------------�ֲ����˴�
	DefineMission( 887, "�ֲ����˴�", 887 )
	
	MisBeginTalk( "<t>�ּ����㣬��Ҳ�����˵ʲô�ˡ�<n><t>���������˾��������ж��Ļ�����ô��5�ѿֲ����˴󵶸��ң����귽�治��˵�˰ɣ��ҵļ۸�һ�����")
	MisBeginCondition(LvCheck, ">", 43 )
	MisBeginCondition(HasRecord, 883)
	MisBeginCondition(NoMission, 887)
	MisBeginCondition(NoRecord, 887)
	MisBeginAction(AddMission, 887)
	MisBeginAction(AddTrigger, 8871, TE_GETITEM, 4910, 5 )
	MisCancelAction(ClearMission, 887)
	
	MisNeed(MIS_NEED_DESP, "Ϊ�׿��ʷ��ޣ�2662,648���ռ�5�ѿֲ����˴�")
	MisNeed(MIS_NEED_ITEM, 4910, 5, 10, 5)
	
	MisHelpTalk("������5�ѿֲ����˴󵶣��ҿ��Ǹ���Ǯ��")
	MisResultTalk("�ֲ����˴󵶣���˵�е�ɱ����������Ȼ����������ô����Ҫ��Ҫ������������ԣ��Ǻǣ�˵˵���ѣ��αص�����")
	MisResultCondition(NoRecord, 887)
	MisResultCondition(HasMission, 887)
	MisResultCondition(HasItem, 4910, 5)
	MisResultAction(TakeItem, 4910, 5)
	MisResultAction(ClearMission, 887)
	MisResultAction(SetRecord, 887)
	MisResultAction(AddExp,23628,23628)	
	MisResultAction(AddMoney,1104,1104)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4910 )	
	TriggerAction( 1, AddNextFlag, 887, 10, 5 )
	RegCurTrigger(8871)

-----------------------------------���˹�����
	DefineMission( 888, "���˹�����", 888 )
	
	MisBeginTalk( "<t>���������һȺ���˹����־ۼ����˴������棬�������ǵ�������ʲô���������ֲ�������������������������ġ�<n><t>����������������ҽ�ѵһ����Ⱥ����")
	MisBeginCondition(LvCheck, ">", 45 )
	MisBeginCondition(HasRecord, 880)
	MisBeginCondition(NoMission, 888)
	MisBeginCondition(NoRecord, 888)
	MisBeginAction(AddMission, 888)
	MisBeginAction(AddTrigger, 8881, TE_KILL, 272, 20 )
	MisBeginAction(AddTrigger, 8882, TE_GETITEM, 4916, 5 )
	MisCancelAction(ClearMission, 888)

	MisNeed(MIS_NEED_DESP, "ɱ��20�����˹����֣���5���۶ϵ����˶̹������ﰬ�ǡ�������2675,631��֤����Ĺ��� ")
	MisNeed(MIS_NEED_KILL, 272, 20, 10, 20 )
	MisNeed(MIS_NEED_ITEM, 4916, 5, 40, 5 )

	MisHelpTalk("��Щ�ڴ�ׯ��Χ�����˹�������ô���ˣ�����û������˵��������ѵ����")
	MisResultTalk("����һ���������湦���ɹ��������ͼ͵Ϯ����վ�ĵ��ˣ��Ҷ���֪������ô��л����")
	MisResultCondition(NoRecord, 888)
	MisResultCondition(HasMission, 888)
	MisResultCondition(HasFlag, 888, 29)
	MisResultCondition(HasItem, 4916, 5)
	MisResultAction(TakeItem, 4916, 5)
	MisResultAction(ClearMission, 888)
	MisResultAction(SetRecord, 888)
	MisResultAction(AddExp,26112,26112)
	MisResultAction(AddMoney,1125,1125)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 272 )	
	TriggerAction( 1, AddNextFlag, 888, 10, 20 )
	RegCurTrigger( 8881 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4916 )	
	TriggerAction( 1, AddNextFlag, 888, 40, 5 )
	RegCurTrigger( 8882 )

-----------------------------------����ħ��
	DefineMission( 889, "����ħ��", 889 )
	
	MisBeginTalk( "<t>���Ǽ�����Ե�����ǿ��ħ�ˡ����ֲ�ѩħ�ˣ�����û�������ַ������ж��л��Ż�������������Ҫ�������������<n><t>���������ˣ���������������")
	MisBeginCondition(LvCheck, ">", 45 )
	MisBeginCondition(HasRecord, 878)
	MisBeginCondition(NoMission, 889)
	MisBeginCondition(NoRecord, 889)
	MisBeginAction(AddMission, 889)
	MisBeginAction(AddTrigger, 8891, TE_KILL, 545, 15 )
	MisCancelAction(ClearMission, 889)

	MisNeed(MIS_NEED_DESP, "�ɵ�15���ֲ�ѩħ�ˣ�Ȼ��ȥ�ҷ��϶���2680,657����ȡ���� ")
	MisNeed(MIS_NEED_KILL, 545, 15, 10, 15 )

	MisHelpTalk("�㻹ûȥɱѩħ���������ٸ���һ���Ҹ棬��������˳������ü�")
	MisResultTalk("����ħ��Ҳ�����ˣ���������ϻ���ʲô���㲻����������")
	MisResultCondition(NoRecord, 889)
	MisResultCondition(HasMission, 889)
	MisResultCondition(HasFlag, 889, 24)
	MisResultAction(ClearMission, 889)
	MisResultAction(SetRecord, 889)
	MisResultAction(AddExp,26112,26112)
	MisResultAction(AddMoney,1125,1125)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 545 )	
	TriggerAction( 1, AddNextFlag, 889, 10, 15 )
	RegCurTrigger( 8891 )

-----------------------------------�ֲ�����ľ��
	DefineMission( 890, "�ֲ�����ľ��", 890 )
	
	MisBeginTalk( "<t>��ʵ���㲻�������ҵģ�������ܻ��Ż����Ļ�������5�ѿֲ�����ľ�������Һ��ˣ��һ�ֱ�Ӹ��㱨�꣬����û��")
	MisBeginCondition(LvCheck, ">", 45 )
	MisBeginCondition(HasRecord, 887)
	MisBeginCondition(NoMission, 890)
	MisBeginCondition(NoRecord, 890)
	MisBeginAction(AddMission, 890)
	MisBeginAction(AddTrigger, 8901, TE_GETITEM, 4912, 5 )
	MisCancelAction(ClearMission, 890)
	
	MisNeed(MIS_NEED_DESP, "Ϊ�׿��ʷ��ޣ�2662,648���ռ�5���ֲ�����ľ��")
	MisNeed(MIS_NEED_ITEM, 4912, 5, 10, 5)
	
	MisHelpTalk("����Ū���ֲ�����ľ�����Ҷ���Щ�Ȳ�����")
	MisResultTalk("���������أ�����ħ��ʹ�õ�������������������Ҷ����ˣ��һ���Զ�ǵ����")
	MisResultCondition(NoRecord, 890)
	MisResultCondition(HasMission, 890)
	MisResultCondition(HasItem, 4912, 5)
	MisResultAction(TakeItem, 4912, 5)
	MisResultAction(ClearMission, 890)
	MisResultAction(SetRecord, 890)
	MisResultAction(AddExp,26112,26112)
	MisResultAction(AddMoney,1125,1125)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4912 )	
	TriggerAction( 1, AddNextFlag, 890, 10, 5 )
	RegCurTrigger(8901)

-----------------------------------Ϊ��������ս
	DefineMission( 891, "Ϊ��������ս", 891 )
	
	MisBeginTalk( "<t>��������ս������ĳЩ��ƽ��������˵�����Ǻ��޼�ֵ���ˣ���Ϊ�����Ǽ���Ϊ��������ս������Ҫ��Եĵ����Ǿ�Ӣ������ʿ����������ڱ�Դ�����ġ�<n><t>Ȼ�������ǽ��������Ը����֮�񱣻���")
	MisBeginCondition(LvCheck, ">", 46 )
	MisBeginCondition(HasRecord, 888)
	MisBeginCondition(NoMission, 891)
	MisBeginCondition(NoRecord, 891)
	MisBeginAction(AddMission, 891)
	MisBeginAction(AddTrigger, 8911, TE_KILL, 506, 10 )
	MisBeginAction(AddTrigger, 8912, TE_GETITEM, 4826, 1 )
	MisCancelAction(ClearMission, 891)

	MisNeed(MIS_NEED_DESP, "�ɵ�10����Ӣ������ʿ��������ʿ����֤֮��ȥ�����ﰬ�ǡ�������2675,631�� ")
	MisNeed(MIS_NEED_KILL, 506, 10, 10, 10 )
	MisNeed(MIS_NEED_ITEM, 4826, 1, 20, 1 )

	MisHelpTalk("���õ���ʿ����֤֮�𣿻�û�У��ǾͿ�ȥɱ��Ӣ������ʿ��֤�����ʵ��")
	MisResultTalk("��ȥ�������������վ��ߵ��������㽫��Ϊ���ﴫ˵�е�����ú��˴���")
	MisResultCondition(NoRecord, 891)
	MisResultCondition(HasMission, 891)
	MisResultCondition(HasFlag, 891, 19)
	MisResultCondition(HasItem, 4826, 1)
	MisResultAction(TakeItem, 4826, 1)
	MisResultAction(ClearMission, 891)
	MisResultAction(SetRecord, 891)
	MisResultAction(AddExp,28832,28832)
	MisResultAction(AddMoney,1146,1146)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 506 )	
	TriggerAction( 1, AddNextFlag, 891, 10, 10 )
	RegCurTrigger( 8911 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4826 )	
	TriggerAction( 1, AddNextFlag, 891, 20, 1 )
	RegCurTrigger( 8912 )


-----------------------------------����������
	DefineMission( 892, "����������", 892 )
	
	MisBeginTalk( "<t>��ʵ���ǵĲ����ж������Լ����ܾ�Ӧ�ý����ˣ����������һ�ֽ������˵Ĺ����������Ÿ��ӵ�����٣���������ʹ������û�м�����������Ϊ��<n><t>���ǣ��ҽ��췢��֪ͨ��Ը�Ⲷ�������˵Ŀ������������쵽���Ľ���")
	MisBeginCondition(LvCheck, ">", 49 )
	MisBeginCondition(HasRecord, 885)
	MisBeginCondition(NoMission, 892)
	MisBeginCondition(NoRecord, 892)
	MisBeginAction(AddMission, 892)
	MisBeginAction(AddTrigger, 8921, TE_KILL, 196, 15 )
	MisCancelAction(ClearMission, 892)

	MisNeed(MIS_NEED_DESP, "����15�������ˣ�Ȼ��ȥ�����ﰬ�ǡ�������2675,631�� ")
	MisNeed(MIS_NEED_KILL, 196, 15, 10, 15 )

	MisHelpTalk("���в��Ե��㹻���������𣿼�ס��Ҫ15ֻŶ")
	MisResultTalk("��������Ҳ�ɵ��ˣ����������ܹ���ѵһ���ǰ�ֻ������Ÿ��Ӵ�ٵĵͼ������ˣ�����������ˣ�һ�㼼��������û��")
	MisResultCondition(NoRecord, 892)
	MisResultCondition(HasMission, 892)
	MisResultCondition(HasFlag, 892, 24)
	MisResultAction(ClearMission, 892)
	MisResultAction(SetRecord, 892)
	MisResultAction(AddExp,38628,38628)
	MisResultAction(AddMoney,1212,1212)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 196 )	
	TriggerAction( 1, AddNextFlag, 892, 10, 15 )
	RegCurTrigger( 8921 )

-----------------------------------������ս��
	DefineMission( 893, "������ս��", 893 )
	
	MisBeginTalk( "<t>������ֻȱ��������ս�����������ˣ�ֻҪ�����������Ϳ��Է����ˣ��Ǻǡ���<n><t>ûʲô������û��ϵ����ֻҪ����������ս���Ϳ����ˣ���Ǯ�������Ϲ��")
	MisBeginCondition(LvCheck, ">", 49 )
	MisBeginCondition(HasRecord, 890)
	MisBeginCondition(NoMission, 893)
	MisBeginCondition(NoRecord, 893)
	MisBeginAction(AddMission, 893)
	MisBeginAction(AddTrigger, 8931, TE_GETITEM, 4920, 5 )
	MisCancelAction(ClearMission, 893)
	
	MisNeed(MIS_NEED_DESP, "Ϊ�׿��ʷ��ޣ�2662,648���ռ�5��������ս��")
	MisNeed(MIS_NEED_ITEM, 4920, 5, 10, 5)
	
	MisHelpTalk("���Ӧ�ҵ�5��������ս���أ�û�����������ǲ����Ǯ��")
	MisResultTalk("����˵��Ū����������ս���������ҿ������ҽ����������Ļر�")
	MisResultCondition(NoRecord, 893)
	MisResultCondition(HasMission, 893)
	MisResultCondition(HasItem, 4920, 5)
	MisResultAction(TakeItem, 4920, 5)
	MisResultAction(ClearMission, 893)
	MisResultAction(SetRecord, 893)
	MisResultAction(AddExp,38628,38628)
	MisResultAction(AddMoney,1212,1212)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4920 )	
	TriggerAction( 1, AddNextFlag, 893, 10, 5 )
	RegCurTrigger(8931)


	---------------------------------------------------------------
	--							     --
	--			���ձȺ����汾			     --
	--							     --
	---------------------------------------------------------------


----------------------------------------
--                                    --
--              ��������              --
--                                    --
----------------------------------------

--���� >> �����
	DefineMission(894, "�����", 894)
	MisBeginTalk("<t>�٣�İ���ˣ���������~�����㣬�ҿ������������<n><t>���������������µĻ�������ȥ�������ذ��Ǽ���������������̨���һ��ˣ������Ƕ������������Բ��£�<n><t>�����û�����㣬�ǿɲ���һ�����������ģ��������������׼����")
	
	MisBeginCondition(NoRecord, 894)
	MisBeginCondition(NoMission, 894)
	MisBeginCondition(HasPirateGuild)

	MisBeginAction(AddMission, 894)
	MisBeginAction(AddTrigger, 8941, TE_KILL, 801, 4)

	MisCancelAction(ClearMission, 894)

	MisNeed(MIS_NEED_KILL, 801, 4, 10, 4)
	

	MisHelpTalk("<t>�㻹�ڵ�ʲô�����ų��һ������͵�����ұ����㣡")
	MisResultTalk("<t>�ܺ�~���������㻹���������ӣ������֮ǰ˵��ʲôð���Ļ�������ԭ��<n><t>���Ѿ�������¼��������ҵ����ѽܿ�ʷ�����ˣ���������е���Ȥ���㲻��ȥ�����￴��")

	MisResultCondition(HasMission , 894)
	MisResultCondition(NoRecord, 894)
	MisResultCondition(HasFlag, 894, 13)
	MisResultCondition(HasPirateGuild)

	MisResultAction(ClearMission, 894)
	MisResultAction(SetRecord, 894)

	MisResultAction(AddExp, 80000,80000)
	MisResultAction(AddMoney, 40000,40000)

	InitTrigger()
	TriggerCondition(1, IsMonster, 801)
	TriggerAction(1, AddNextFlag, 894, 10, 4)
	RegCurTrigger(8941)
		

--�ܿ�ʷ���� >> ��ǿ�ĺ���

	DefineMission(895, "��ǿ�ĺ���", 895)
	MisBeginTalk("<t>��������˵�ˣ���С�ӰѺ������ص���������<n><t>����������Ͳ������������Ϣʱ�����ӣ�һ�������û����ͷ��������ɣ�<n><t>����������ӵ�ʵ������ǿ��������Ȼ������У�������ܰ���������30������ʿ����15���������<n><t>�������鲿�ӵ�ʵ��һ�������ۿ۵ģ���ô�����ֵܣ��ҿ�����Ӵ~")
	
	MisBeginCondition(HasRecord, 894)
	MisBeginCondition(NoRecord, 895)
	MisBeginCondition(NoMission, 895)
	MisBeginCondition(HasPirateGuild)

	MisBeginAction(AddMission, 895)
	MisBeginAction(AddTrigger, 8951, TE_KILL, 808, 30)
	MisBeginAction(AddTrigger, 8952, TE_KILL, 817, 15)

	MisCancelAction(ClearMission, 895)

	MisNeed(MIS_NEED_KILL, 808, 30, 30, 30)
	MisNeed(MIS_NEED_KILL, 817, 15, 70, 15)
	

	MisHelpTalk("<t>��ϣ����������������������ʧ����")
	MisResultTalk("<t>��ʿ�����Ӣ�����ҿ�����ϣ�����������ǻ����ܵ�������<n><t>��ս��ʱ�����ˣ���Ӧ������Ϣһ�£��������ս���ڵ������ǡ�")

	MisResultCondition(HasMission ,895)
	MisResultCondition(NoRecord , 895)
	MisResultCondition(HasFlag, 895, 59)
	MisResultCondition(HasFlag, 895, 84)
	MisResultCondition(HasPirateGuild)

	MisResultAction(ClearMission, 895)
	MisResultAction(SetRecord, 895)

	MisResultAction(AddExp, 200000,200000)
	MisResultAction(AddMoney, 150000,150000)

	InitTrigger()
	TriggerCondition(1, IsMonster, 808)
	TriggerAction(1, AddNextFlag, 895, 30, 30)
	RegCurTrigger(8951)
		
	InitTrigger()
	TriggerCondition(1, IsMonster, 817)
	TriggerAction(1, AddNextFlag, 895, 70, 15)
	RegCurTrigger(8952)
	
	
-- �ܿ�ʷ���� >> �������׼�

	DefineMission(896, "�������׼�", 896)
	MisBeginTalk("<t>��׼�������𣬾�ս��ʱ�̵��ˣ�����Ҫ��ɵ�����˾���������ͷ­��������<n><t>��֪���������ʵ������������ؽ���������󣬵�Ȼ�����ǲ���������")
	
	MisBeginCondition(HasRecord, 895)
	MisBeginCondition(NoRecord, 896)
	MisBeginCondition(NoMission, 896)
	MisBeginCondition(HasPirateGuild)

	MisBeginAction(AddMission, 896)
	MisBeginAction(AddTrigger, 8961, TE_KILL, 807, 1)
	MisBeginAction(AddTrigger, 8962, TE_GETITEM, 2387, 1)

	MisCancelAction(ClearMission, 896)

	MisNeed(MIS_NEED_KILL, 807, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 2387, 1, 20, 1)
	

	MisHelpTalk("<t>���Űɣ������ǣ����������Ὣ���Ǳ�Ϊ�ҽ���")
	MisResultTalk("<t>���ɣ��������ˣ��Ҿ�֪����һ�����еģ�����������˾���Ҳ�н��죡")

	MisResultCondition(HasMission, 896)
	MisResultCondition(NoRecord, 896)
	MisResultCondition(HasFlag, 896, 10)
	MisResultCondition(HasItem, 2387, 1)
	MisResultBagNeed(1)
	MisResultCondition(HasPirateGuild)

	MisResultAction(TakeItem, 2387, 1)
	MisResultAction(ClearMission, 896)
	MisResultAction(SetRecord, 896)

	MisResultAction(AddExp, 500000,500000)
	MisResultAction(AddMoney, 1000000,1000000)

	InitTrigger()
	TriggerCondition(1, IsMonster, 807)
	TriggerAction(1, AddNextFlag, 896, 10, 1)
	RegCurTrigger(8961)
		
	InitTrigger()
	TriggerCondition(1, IsItem, 2387)
	TriggerAction(1, AddNextFlag, 896, 20, 1)
	RegCurTrigger(8962)




----------------------------------------
--                                    --
--              ��������              --
--                                    --
----------------------------------------

-- ��ٽ��� >> ������ʳ��
	DefineMission(897, "������ʳ��", 897)

	MisBeginTalk("<t>���õ��ϵ����麣��Խ��Խ�����ˣ���˵���ǵ�ơ�ƺͿ������̺��ḻ������<n><t>����������Ƕ����Ҵ���5ƿơ�ƺ�5�ݿ��⣬��Ҫ����������Щ������ʩ��ʲôħ����")
	MisBeginCondition(NoRecord, 897)
	MisBeginCondition(NoMission,897)
	MisBeginCondition(HasNavyGuild)

	MisBeginAction(AddMission, 897)
	MisBeginAction(AddTrigger, 8971,TE_GETITEM, 2413, 5)
	MisBeginAction(AddTrigger, 8972,TE_GETITEM, 2414, 5)
	
	MisCancelAction(ClearMission, 897)

	MisNeed(MIS_NEED_ITEM, 2413, 5, 10, 5)
	MisNeed(MIS_NEED_ITEM, 2414, 5, 20, 5)

	MisHelpTalk("<t>�ѵ�����Ҳ��Ҫ��ʳ������")

	MisResultTalk("<t>�ɵò���~���ҿ�����������֣��ⲻ������ͨ��ơ�ƺͿ�����<n><t>����ҥ���ǲ����ŵģ�������Ȼ����ϲ���ⶫ�������ǾͲ�Ӧ���������ǣ���ȥ�ɣ�������Ľ���~")
	
	MisResultCondition(HasMission, 897)
	MisResultCondition(NoRecord, 897)
	MisResultCondition(HasItem, 2413, 5)
	MisResultCondition(HasItem, 2414, 5)
	MisResultCondition(HasNavyGuild)

	MisResultAction(TakeItem , 2413, 5)
	MisResultAction(TakeItem , 2414, 5)
	MisResultAction(ClearMission, 897)
	MisResultAction(SetRecord, 897)

	MisResultAction(AddExp ,200000, 200000)
	MisResultAction(AddMoney ,100000, 100000)

	InitTrigger()
	TriggerCondition(1, IsItem, 2413)
	TriggerAction(1,AddNextFlag, 897, 10, 5)
	RegCurTrigger(8971)

	InitTrigger()
	TriggerCondition(1, IsItem, 2414)
	TriggerAction(1,AddNextFlag, 897, 20, 5)
	RegCurTrigger(8972)
	
-- ��ٽ��� >>  ���𺣵�
	DefineMission(898, "���𺣵�", 898)

	MisBeginTalk("<t>�٣���ʿ������֮ǰ���������Ѿ��ͺ����Ǵ�������˰ɣ������µ�����������<n><t>����Ҫ��ȥ�ռ�15�������Ĺ�ͷ����������ʲô�ã�����ɣ����Ǿ��»��ܣ�����������ִ�������������𣿿�ȥ�ɡ�")
	MisBeginCondition(HasRecord, 897)
	MisBeginCondition(NoRecord, 898)
	MisBeginCondition(NoMission,898)
	MisBeginCondition(HasNavyGuild)

	MisBeginAction(AddMission, 898)
	MisBeginAction(AddTrigger, 8981, TE_GETITEM, 2419, 15)
	
	MisCancelAction(ClearMission, 898)

	MisNeed(MIS_NEED_ITEM, 2419, 15, 30, 15)

	MisHelpTalk("<t>��û�ռ���30�������Ĺ�ͷ�����㻹�������ʲô��")

	MisResultTalk("<t>������ȷ����Щ��ͷ�������б�Ҫ��ȡ��һ���ж���<n><t>������Ľ���ȥ�ú���Ϣһ�£�֮��ص����������������µ���ս�ˡ�")
	
	MisResultCondition(HasMission, 898)
	MisResultCondition(NoRecord, 898)
	MisResultCondition(HasItem, 2419, 15)
	MisResultCondition(HasNavyGuild)

	MisResultAction(TakeItem , 2419, 15)
	MisResultAction(ClearMission, 898)
	MisResultAction(SetRecord, 898)

	MisResultAction(AddExp ,250000, 250000)
	MisResultAction(AddMoney ,150000, 150000)

	InitTrigger()
	TriggerCondition(1, IsItem, 2419)
	TriggerAction(1,AddNextFlag, 898, 30, 15)
	RegCurTrigger(8981)


-- ��ٽ��� >> ������ĺ������
	DefineMission(899, "������ĺ������", 899)

	MisBeginTalk("<t>��׼��������������������Ҫ����ϸ��<n><t>���Ƿ���������Ż������������ұ�����ġ������顱�ŷ����ģ���Ҫ��ȥ�ݻ����Ҵ�<n><t>ͬʱ�����ǵĴ������������ң�����һ����������������麣���ǻ���Ϊû��ָ�Ӷ���һȺ��ͷ��Ӭ�㱻���Ǹɵ�<n><t>��ס����ε������Σ�գ���Ҫ��������׼����")
	MisBeginCondition(HasRecord, 898)
	MisBeginCondition(NoRecord, 899)
	MisBeginCondition(NoMission,899)
	MisBeginCondition(HasNavyGuild)

	MisBeginAction(AddMission, 899)
	MisBeginAction(AddTrigger, 8991,TE_KILL, 815, 1)
	MisBeginAction(AddTrigger, 8992,TE_GETITEM, 2429, 1 )
	
	MisCancelAction(ClearMission, 899)

	MisNeed(MIS_NEED_KILL, 815, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 2429, 1, 20, 1)

	MisHelpTalk("<t>�����Ѿ��ڽἯ�У�һ��û�˺�����ţ����ǽ������ܹ�������ʱ�򣬺ߺߣ�")

	MisResultTalk("<t>�ϵ۰���������������޵��������ɣ���Ҫ������������Ӧ�õĽ�����")
	
	MisResultCondition(HasMission, 899)
	MisResultCondition(NoRecord, 899)
	MisResultCondition(HasFlag, 899, 10)
	MisResultCondition(HasItem, 2429, 1)
	MisResultCondition(HasNavyGuild)

	MisResultAction(TakeItem , 2429, 1)
	MisResultAction(ClearMission, 899)
	MisResultAction(SetRecord, 899)

	MisResultAction(AddExp ,500000, 500000)
	MisResultAction(AddMoney ,1000000, 1000000)

	InitTrigger()
	TriggerCondition(1, IsMonster, 815, 1)
	TriggerAction(1,AddNextFlag, 899, 10,1)
	RegCurTrigger(8991)

	InitTrigger()
	TriggerCondition(1, IsItem, 2429, 1)
	TriggerAction(1,AddNextFlag, 899, 20,1)
	RegCurTrigger(8992)


end
AreaMission001()