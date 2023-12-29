--------------------------------------------------------------------------
--									--
--									--
--MissionScript02.lua Created by Robin 2005.03.31.			--
--									--
--									--
--------------------------------------------------------------------------
print( "loading MissionScript02.lua" )

jp= JumpPage
amp=AutoMissionPage
ct=CloseTalk
am=AddMission
MissionCheck = HasFlag
mc=MissionCheck

----------------------------------------------------------
--							--
--							--
--		��ʷ����	 				--
--							--
--		227725,276925				--
----------------------------------------------------------
	-->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>��ʷ����ʼ
function HistoryMission001()

----------------------------��ϯ����Ŀ���
	DefineMission( 200, "��ϯ����Ŀ���", 200 )
	
	MisBeginTalk( "<t>��!���������ɣ������������а�������ϯ���顪��<b˹����>�����Ŀ���ת����㣬��������Ѿ������Ĵ�������ϯ�������������������㣬�пյĻ���ȥ��2219,2749�������ɡ�" )
	MisBeginCondition(NoRecord, 200)
	MisBeginCondition(NoMission, 200)
	MisBeginCondition(NoMission, 201)
	MisBeginCondition(NoMission, 202)
	MisBeginCondition(LvCheck, ">",9)
	MisBeginAction(AddMission, 200)
	MisCancelAction(ClearMission, 200)
		
	MisNeed(MIS_NEED_DESP, "�Ұ����ǵ���ϯ���顪��˹����������2219,2749��̸̸")
	
	MisHelpTalk("<t>�㻹ûȥ�ݷ�˹���������𣿿�ȥ�ɣ�")
	MisResultCondition(AlwaysFailure )

	



----------------------------��ϯ����Ŀ���
	DefineMission( 201, "��ϯ����Ŀ���", 201 )
	
	MisBeginTalk( "<t>��!���������ɣ������������а�������ϯ���顪��<b˹����>�����Ŀ���ת����㣬��������Ѿ������Ĵ�������ϯ�������������������㣬�пյĻ���ȥ��2219,2749�������ɡ�" )
	MisBeginCondition(NoRecord, 200)
	MisBeginCondition(NoMission, 200)
	MisBeginCondition(NoMission, 201)
	MisBeginCondition(NoMission, 202)
	MisBeginCondition(LvCheck, ">",9)
	MisBeginAction(AddMission, 201)
	MisCancelAction(ClearMission, 201)
		
	MisNeed(MIS_NEED_DESP, "�Ұ����ǵ���ϯ���顪��˹����������2219,2749��̸̸")
	
	MisHelpTalk("<t>�㻹ûȥ�ݷ�˹���������𣿿�ȥ�ɣ�")
	MisResultCondition(AlwaysFailure )


----------------------------��ϯ����Ŀ���
	DefineMission( 202, "��ϯ����Ŀ���", 202 )
	
	MisBeginTalk( "<t>��!���������ɣ������������а�������ϯ���顪��<b˹����>�����Ŀ���ת����㣬��������Ѿ������Ĵ�������ϯ�������������������㣬�пյĻ���ȥ��2219,2749�������ɡ�" )
	MisBeginCondition(NoRecord, 200)
	MisBeginCondition(NoMission, 200)
	MisBeginCondition(NoMission, 201)
	MisBeginCondition(NoMission, 202)
	MisBeginCondition(LvCheck, ">",9)
	MisBeginAction(AddMission, 202)
	MisCancelAction(ClearMission, 202)
		
	MisNeed(MIS_NEED_DESP, "�Ұ����ǵ���ϯ���顪��˹����������2219,2749��̸̸")
	
	MisHelpTalk("<t>�㻹ûȥ�ݷ�˹���������𣿿�ȥ�ɣ�")
	MisResultCondition(AlwaysFailure )


-----------------------------------��ϯ����Ŀ���
	DefineMission( 203, "��ϯ����Ŀ���", 200, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Ŷ�������ˣ��ܸ��˼����㣬����˵��һЩ����£������������Ǹ�����ð�վ�����ˣ�������Щ����Ҫ������ȥ����")
	MisResultCondition(NoRecord, 200)
	MisResultCondition(HasMission, 200)
	MisResultAction(ClearMission, 200 )
	MisResultAction(SetRecord, 200 )
	MisResultAction(AddExp,250,250)
	MisResultAction(AddMoney,999,999)
	MisResultAction(AddExpAndType,2,875,875)



-----------------------------------��ϯ����Ŀ���
	DefineMission( 204, "��ϯ����Ŀ���", 201, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Ŷ�������ˣ��ܸ��˼����㣬����˵��һЩ����£������������Ǹ�����ð�վ�����ˣ�������Щ����Ҫ������ȥ����")
	MisResultCondition(NoRecord, 200)
	MisResultCondition(HasMission, 201)
	MisResultAction(ClearMission, 201 )
	MisResultAction(SetRecord, 200 )
	MisResultAction(AddExp,250,250)
	MisResultAction(AddMoney,999,999)
	MisResultAction(AddExpAndType,2,875,875)


-----------------------------------��ϯ����Ŀ���
	DefineMission( 205, "��ϯ����Ŀ���", 202, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Ŷ�������ˣ��ܸ��˼����㣬����˵��һЩ����£������������Ǹ�����ð�վ�����ˣ�������Щ����Ҫ������ȥ����")
	MisResultCondition(NoRecord, 200)
	MisResultCondition(HasMission, 202)
	MisResultAction(ClearMission, 202 )
	MisResultAction(SetRecord, 200 )
	MisResultAction(AddExp,250,250)
	MisResultAction(AddMoney,999,999)
	MisResultAction(AddExpAndType,2,875,875)


----------------------------СС�Ŀ���
	DefineMission( 206, "СС�Ŀ���", 203 )
	
	MisBeginTalk( "<t>��ʵ������Ҫ�����������ɴ�½��һЩ��ֵ����顣<n><t>���ǣ��ڴ�֮ǰ�����ǵö������СС�Ŀ��顣<n><t>ȥ<p������ͷ>��2277,2831����<b�����ٽ�������˹>�ɣ������������ġ�" )
	MisBeginCondition(NoRecord, 203)
	MisBeginCondition(NoMission, 203)
	MisBeginCondition(HasRecord, 200)
	MisBeginAction(AddMission, 203)
	MisCancelAction(ClearMission, 203)
		
	MisNeed(MIS_NEED_DESP, "ȥ<p������ͷ>��<b�����ٽ�������˹>��2277,2831��̸̸")
	
	MisHelpTalk("<t>��ô������ʲô��������ȥ>��<b�����ٽ�������˹>�ɣ������������ġ�")
	MisResultCondition(AlwaysFailure )

-----------------------------------СС�Ŀ���
	DefineMission( 207, "СС�Ŀ���", 203, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>�ߡ�˹������һ�����֣���Ȼ�Ҹ������������ǿ��������Ǻ�������<n><t>�ðɣ���׼��׼������Ҫ����һ�����������")
	MisResultCondition(NoRecord, 203)
	MisResultCondition(HasMission, 203)
	MisResultAction(ClearMission, 203 )
	MisResultAction(SetRecord, 203 )
	MisResultAction(AddExp,230,230)
	MisResultAction(AddMoney,1000,1000)
	MisResultAction(AddExpAndType,2,875,875)



-------------------------------------------------�����Ļ�ʳ����
	DefineMission( 208, "�����Ļ�ʳ����", 204 )

	MisBeginTalk( "<t>����������Ҳ������ʲô���񡭡������ɣ����ȥ�����ǲɼ�һЩ�����Ļ�ʳ���ϰɡ�<n><t>���ϰ���5��<y��ˮ����>��10Ƭ<y������>��10��<y�����>���������" )
	MisBeginCondition(NoRecord, 204)
	MisBeginCondition(HasRecord, 203)
	MisBeginCondition(NoMission, 204)
	MisBeginAction(AddMission, 204)
	MisBeginAction(AddTrigger, 2041, TE_GETITEM, 3963, 5 )		--��ˮ����
	MisBeginAction(AddTrigger, 2042, TE_GETITEM, 3964, 10 )		--������
	MisBeginAction(AddTrigger, 2043, TE_GETITEM, 3116, 10 )
	MisCancelAction(ClearMission, 204)

	MisNeed(MIS_NEED_ITEM, 3963, 5, 10, 5)
	MisNeed(MIS_NEED_ITEM, 3964, 10, 20, 10)
	MisNeed(MIS_NEED_ITEM, 3116, 10, 30, 10)

	MisResultTalk("<t>�š�������ֽŵ�������������Ȼ���������Ǻ��������в��ġ�")
	MisHelpTalk("<t>��ô�ˣ�������ô�򵥵�������ɲ��ˣ���ס��<n><t>��5��<y��ˮ����>��10Ƭ<y������>��10��<y�����>��")
	MisResultCondition(HasMission, 204)
	MisResultCondition(HasItem, 3963, 5 )
	MisResultCondition(HasItem, 3964, 10 )
	MisResultCondition(HasItem, 3116, 10 )
	MisResultAction(TakeItem, 3963, 5 )
	MisResultAction(TakeItem, 3964, 10 )
	MisResultAction(TakeItem, 3116, 10 )
	MisResultAction(ClearMission, 204)
	MisResultAction(SetRecord, 204 )
	MisResultAction(AddExp,230,230)
	MisResultAction(AddMoney,1000,1000)	
	MisResultAction(AddExpAndType,2,875,875)


	InitTrigger()
	TriggerCondition( 1, IsItem, 3963)	
	TriggerAction( 1, AddNextFlag, 204, 10, 5 )
	RegCurTrigger( 2041 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3964)	
	TriggerAction( 1, AddNextFlag, 204, 20, 10 )
	RegCurTrigger( 2042 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3116)	
	TriggerAction( 1, AddNextFlag, 204, 30, 10 )
	RegCurTrigger( 2043 )

----------------------------��ʧ���Ƶ�
	DefineMission( 209, "��ʧ���Ƶ�", 205 )
	
	MisBeginTalk( "<t>��Ȼ�����ˣ��ܵø�����Ƚ���ʽ������ȥ��ɣ�����������ӵ������������˵һ����<b�Ƶ�>�ĺ��Ӳ����ˣ��������˿�����������<p����>����ȥ�ˣ�ȥ�����ҵ���" )
	MisBeginCondition(NoRecord, 205)
	MisBeginCondition(HasRecord, 204)
	MisBeginCondition(NoMission, 205)
	MisBeginAction(AddMission, 205)
	MisCancelAction(ClearMission, 205)
		
	MisNeed(MIS_NEED_DESP, "�ҵ����ꡤ�Ƶ£�1962,2694��")
	
	MisHelpTalk("<t>�������˿���<b�Ƶ�>������<p����>����ȥ�ˣ����ȥ�����ҵ���")
	MisResultCondition(AlwaysFailure )

-----------------------------------��ʧ���Ƶ�
	DefineMission( 210, "��ʧ���Ƶ�", 205, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>�ף����������ҵ�����ֻ�ǵ�����������ֵ�ɽ���ܵģ�")
	MisResultCondition(NoRecord, 205)
	MisResultCondition(HasMission, 205)
	MisResultAction(ClearMission, 205 )
	MisResultAction(SetRecord, 205 )
	MisResultAction(AddExp,230,230)
	MisResultAction(AddMoney,1100,1100)
	MisResultAction(AddExpAndType,2,875,875)


----------------------------���ٽ��ر�
	DefineMission( 211, "���ٽ��ر�", 206 )
	
	MisBeginTalk( "<t>�벻�����ܵ����������������ٽ����������鷳�������лл�������⣬�����Ұ�����Ž������ɣ��һ������￴һ����ͻؼ��ˡ�" )
	MisBeginCondition(NoRecord, 206)
	MisBeginCondition(HasRecord, 205)
	MisBeginCondition(NoMission, 206)
	MisBeginAction(AddMission, 206)
	MisBeginAction(GiveItem, 3965, 1, 4)		--�Ƶµ���
	MisCancelAction(ClearMission, 206)
	MisBeginBagNeed(1)
		
	MisNeed(MIS_NEED_DESP, "���Ž��������ٽ�������˹��2277,2831��")
	
	MisHelpTalk("<t>�㻹�������ҿ�һ��ͻ�ȥ��")
	MisResultCondition(AlwaysFailure )

-----------------------------------���ٽ��ر�
	DefineMission( 212, "���ٽ��ر�", 206, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>���������ҵ������Ƶ��ˡ�����������������Ӵ�����ҡ����ҡ���")
	MisResultCondition(NoRecord, 206)
	MisResultCondition(HasMission, 206)
	MisResultCondition(HasItem, 3965, 1)		--�Ƶµ���
	MisResultAction(TakeItem, 3965, 1 ) 
	MisResultAction(ClearMission, 206 )
	MisResultAction(SetRecord, 206 )
	MisResultAction(AddExp,230,230)
	MisResultAction(AddMoney,1100,1100)	
	MisResultAction(AddExpAndType,2,875,875)


-------------------------------------------------ȫ��ʳ���ж�
	DefineMission( 213, "ȫ��ʳ���ж�", 207 )

	MisBeginTalk( "<t>�������������桭���治����˼�������˽�����硭����ͺ󡭡�����ȫ����ȫ��ʳ���ж��������С���������������������<y�������>����ȥ������2250,2770��<bҩ�̵�ķ>�ǡ����ҽ�ҩ���ɡ����죡" )
	MisBeginCondition(NoRecord, 207)
	MisBeginCondition(HasRecord, 206)
	MisBeginCondition(NoMission, 207)
	MisBeginAction(AddMission, 207)
	MisBeginAction(GiveItem, 3966, 1, 4)			--�������
	MisBeginAction(AddTrigger, 2071, TE_GETITEM, 3967, 1 )		--��ˮ����
	MisCancelAction(ClearMission, 207)
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_ITEM, 3967, 1, 10, 1)

	MisResultTalk("<t>���������º��ˣ�ู��������������治����ϲ����")
	MisHelpTalk("<t>��ҩ������������û������")
	MisResultCondition(HasMission, 207)
	MisResultCondition(HasItem, 3967, 1 )
	MisResultAction(TakeItem, 3967, 1 )
	MisResultAction(ClearMission, 207)
	MisResultAction(SetRecord, 207 )
	MisResultAction(AddExp,250,250)
	MisResultAction(AddMoney,1200,1200)
	MisResultAction(AddExpAndType,2,875,875)


	InitTrigger()
	TriggerCondition( 1, IsItem, 3967)	
	TriggerAction( 1, AddNextFlag, 207, 10, 1 )
	RegCurTrigger( 2071 )

-----------------------------------ȫ��ʳ���ж�
	DefineMission( 214, "ȫ��ʳ���ж�", 207, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Ŷ������ȫ��ʳ���ж���<n><t>�������о�һ�������͵���Ʒ�����ţ������Ļ�ʳ�����")
	MisResultCondition(NoRecord, 207)
	MisResultCondition(NoFlag, 207, 1 )
	MisResultCondition(HasMission, 207)
	MisResultCondition(HasItem, 3966, 1)		--�Ƶµ���
	MisResultAction(TakeItem, 3966, 1 ) 
	MisResultAction(SetFlag, 207, 1 )
	
-------------------------------------------------��ҩԭ��
	DefineMission( 215, "��ҩԭ��", 208 )

	MisBeginTalk( "<t>���о��������ͣ�������������ˮ�����ϣ��ҿ���������ҩ��������Ҫ�㹻��ԭ�ϡ�<n><t>�һ�ȱ��3��<y����>��3��<yС��β��>��3��<y��Ӳ�Ŀ�>�����ܰ��Ұ���Щԭ��Ū����" )
	MisBeginCondition(NoRecord, 208)
	MisBeginCondition(HasMission, 207)
	MisBeginCondition(NoMission, 208)
	MisBeginCondition(HasFlag, 207, 1)
	MisBeginAction(AddMission, 208)
	MisBeginAction(AddTrigger, 2081, TE_GETITEM, 1678, 3 )		--����
	MisBeginAction(AddTrigger, 2082, TE_GETITEM, 3968, 3 )		--С��β��
	MisBeginAction(AddTrigger, 2083, TE_GETITEM, 1614, 3 )		--��Ӳ�Ŀ�
	MisCancelAction(ClearMission, 208)

	MisNeed(MIS_NEED_ITEM, 1678, 3, 10, 3)
	MisNeed(MIS_NEED_ITEM, 3968, 3, 20, 3)
	MisNeed(MIS_NEED_ITEM, 1614, 3, 30, 3)

	MisPrize(MIS_PRIZE_ITEM, 3967, 1, 4)
	MisPrizeSelAll()

	MisResultTalk("<t>̫���ˣ����һ�£������ϰѽ�ҩ���ã�<n><t>����������������������������ˣ����úÿ���")
	MisHelpTalk("<t>����Ҫ3��<y����>��3��<yС��β��>��3��<y��Ӳ�Ŀ�>����ô������������")
	MisResultCondition(HasMission, 208)
	MisResultCondition(HasItem, 1678, 3 )
	MisResultCondition(HasItem, 3968, 3 )
	MisResultCondition(HasItem, 1614, 3 )
	MisResultAction(TakeItem, 1678, 3 )
	MisResultAction(TakeItem, 3968, 3 )
	MisResultAction(TakeItem, 1614, 3 )
	MisResultAction(ClearMission, 208)
	MisResultAction(SetRecord, 208 )
	MisResultAction(AddExp,250,250)
	MisResultAction(AddMoney,1200,1200)
	MisResultAction(AddExpAndType,2,875,875)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1678)	
	TriggerAction( 1, AddNextFlag, 208, 10, 3 )
	RegCurTrigger( 2081 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3968)	
	TriggerAction( 1, AddNextFlag, 208, 20, 3 )
	RegCurTrigger( 2082 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1614)	
	TriggerAction( 1, AddNextFlag, 208, 30, 3 )
	RegCurTrigger( 2083 )

----------------------------�Ƶµ�ί��
	DefineMission( 216, "�Ƶµ�ί��", 209 )
	
	MisBeginTalk( "<t>��ǰ<b�Ƶ�>���Ҽ������ţ�˵�����Ǹ�������Ⱥ�г����˺ö����͵�ɽ����Ҳ��˹������Ҫ�����������¼�֮һ��<n><t>��ֵ�ɽ���ж�����ˮ������Щ�����Ҳ��˽�Ķ��������������ȥ�ͣ�2250,2770����<bҩ�̵�ķ>���ġ�" )
	MisBeginCondition(NoRecord, 209)
	MisBeginCondition(HasRecord, 207)
	MisBeginCondition(NoMission, 209)
	MisBeginAction(AddMission, 209)
	MisCancelAction(ClearMission, 209)
		
	MisNeed(MIS_NEED_DESP, "���ķ��2250,2770��ѯ�ʹ��ڲб�ɽ�����")
	
	MisHelpTalk("<t>��ô�ˣ����ķѯ�ʹ��б�ɽ���������")
	MisResultCondition(AlwaysFailure )

-----------------------------------�Ƶµ�ί��
	DefineMission( 217, "�Ƶµ�ί��", 209, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>���ڲб���ɽ����Ҳ��˵�ˣ����ƺ��ж������鱴��һ��������������죬������ԭ��Ҫ���顣")
	MisResultCondition(NoRecord, 209)
	MisResultCondition(HasMission, 209)
	MisResultAction(ClearMission, 209 )
	MisResultAction(SetRecord, 209 )
	MisResultAction(AddExp,280,280)
	MisResultAction(AddMoney,1300,1300)
	MisResultAction(AddExpAndType,2,875,875)


-------------------------------------------------����ԭ��
	DefineMission( 218, "����ԭ��", 210 )

	MisBeginTalk( "<t>�ţ��ҿ��ǹ��ˣ������ȵ���һ��<r�б�ɽ��>�ɡ�<n><t>�ӣ�1968,2697��������<r�б�ɽ��>������5��<y�б�ɽ��Ŀ�ˮ>���ң�Ȼ�ҿ������ǵ��׳���Щʲô��" )
	MisBeginCondition(NoRecord, 210)
	MisBeginCondition(HasRecord, 209)
	MisBeginCondition(NoMission, 210)
	MisBeginAction(AddMission, 210)
	MisBeginAction(AddTrigger, 2101, TE_GETITEM, 3969, 5 )		--�б�ɽ��Ŀ�ˮ
	MisCancelAction(ClearMission, 210)

	MisNeed(MIS_NEED_ITEM, 3969, 5, 10, 5)

	MisResultTalk("<t>�ܺã�Ҫ֪������ˮ���ѧ�ʿɴ��ˣ������ҾͿ��Բ�һ����ʲôӰ������Щɽ��")
	MisHelpTalk("<t>��ô�ˣ���û���õ�5��<y�б�ɽ��Ŀ�ˮ>��")
	MisResultCondition(HasMission, 210)
	MisResultCondition(HasItem, 3969, 5 )
	MisResultAction(TakeItem, 3969, 5 )
	MisResultAction(ClearMission, 210)
	MisResultAction(SetRecord, 210 )
	MisResultAction(AddExp,280,280)
	MisResultAction(AddMoney,1300,1300)
	MisResultAction(AddExpAndType,2,875,875)


	InitTrigger()
	TriggerCondition( 1, IsItem, 3969)	
	TriggerAction( 1, AddNextFlag, 210, 10, 5 )
	RegCurTrigger( 2101 )

-------------------------------------------------�������
	DefineMission( 219, "�������", 211 )

	MisBeginTalk( "<t>�ҵ��о�������ȷʵ����Щ��ֵ�Ԫ�ش�������Щ�����˵�ɽ���ʳ����ڣ������һ�����ȷ����<n><t>�����ɣ���<p�����ǵ��Ա�>�ĺ����ߣ�2048,2514��������һֻ��ֵ�<r��ˮ����>��ȥ�õ�����<y������>������������һ�����о���" )
	MisBeginCondition(NoRecord, 211)
	MisBeginCondition(HasRecord, 210)
	MisBeginCondition(NoMission, 211)
	MisBeginAction(AddMission, 211)
	MisBeginAction(AddTrigger, 2111, TE_GETITEM, 3970, 1 )		--�б�ɽ��Ŀ�ˮ
	MisCancelAction(ClearMission, 211)

	MisNeed(MIS_NEED_ITEM, 3970, 1, 10, 1)

	MisResultTalk("<t>̫���ˣ����õ�<y������>���㿴��������ֵĹ���һ���Ǳ�������ģ���Ҫ�úõ��о�һ�¡�")
	MisHelpTalk("<t>��ô���Ը�����<r��ˮ����>��ʵ�ڲ��еĻ�������Щ����һ��ȥ�ɡ�")
	MisResultCondition(HasMission, 211)
	MisResultCondition(HasItem, 3970, 1 )
	MisResultAction(TakeItem, 3970, 1 )
	MisResultAction(ClearMission, 211)
	MisResultAction(SetRecord, 211 )
	MisResultAction(AddExp,1500,1500)
	MisResultAction(AddMoney,6000,6000)	
	MisResultAction(AddExpAndType,2,875,875)


	InitTrigger()
	TriggerCondition( 1, IsItem, 3970)	
	TriggerAction( 1, AddNextFlag, 211, 10, 1 )
	RegCurTrigger( 2111 )

----------------------------��ķ�ı�����
	DefineMission( 220, "��ķ�ı�����", 212 )
	
	MisBeginTalk( "<t>�ޣ�����о�������Ҫ������һЩʱ�䡣<n><t>�����ɣ����ȼ򵥵�дһ�ݱ����飬������<y������>������2219,2749����<b��ϯ���顤˹����>�����ɡ�" )
	MisBeginCondition(NoRecord, 212)
	MisBeginCondition(HasRecord, 211)
	MisBeginCondition(NoMission, 212)
	MisBeginAction(AddMission, 212)
	MisBeginAction(GiveItem, 3971, 1, 4)
	MisCancelAction(ClearMission, 212)
	MisBeginBagNeed(1)
		
	MisNeed(MIS_NEED_DESP, "�������齻����������ϯ���飨2219,2749��")
	
	MisHelpTalk("<t>��ô�ˣ���ȥ�ɣ�")
	MisResultCondition(AlwaysFailure )

-----------------------------------��ķ�ı�����
	DefineMission( 221, "��ķ�ı�����", 212, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>�ţ����ǵ�ķ�ı����飬�ܺã�����������Ĳ��룬������Щ��չ�ˡ�")
	MisResultCondition(NoRecord, 212)
	MisResultCondition(HasMission, 212)
	MisResultCondition(HasItem, 3971, 1)
	MisResultAction(TakeItem, 3971, 1 )
	MisResultAction(ClearMission, 212 )
	MisResultAction(SetRecord, 212 )
	MisResultAction(AddExp,350,350)
	MisResultAction(AddMoney,1500,1500)
	MisResultAction(AddExpAndType,2,3400,3400)


----------------------------������
	DefineMission( 222, "������", 213 )
	
	MisBeginTalk( "<t>ҥ��<p�Ͽ󲹸�վ>�鷳���ϣ���������Ƽ���ȥ������1909,2820����<b�����ΰ����￨��>�������������µ������ڵ����㡣" )
	MisBeginCondition(NoRecord, 213)
	MisBeginCondition(HasRecord, 212)
	MisBeginCondition(NoMission, 213)
	MisBeginAction(AddMission, 213)
	MisBeginAction(GiveItem, 3972, 1, 4)
	MisCancelAction(ClearMission, 213)
	MisBeginBagNeed(1)
		
	MisNeed(MIS_NEED_DESP, "���Ƽ��Ž��������ΰ����￨����1909,2820��")
	
	MisHelpTalk("<t>��ô�ˣ���ȥ<p�Ͽ󲹸�վ>�ɡ�")
	MisResultCondition(AlwaysFailure )

-----------------------------------������
	DefineMission( 223, "������", 213, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>�����˹���������������ˣ��ܺã����������ء�")
	MisResultCondition(NoRecord, 213)
	MisResultCondition(HasMission, 213)
	MisResultCondition(HasItem , 3972, 1)
	MisResultAction(TakeItem , 3972, 1 )
	MisResultAction(ClearMission, 213 )
	MisResultAction(SetRecord, 213 )
	MisResultAction(AddExp,400,400)
	MisResultAction(AddMoney,1500,1500)	
	MisResultAction(AddExpAndType,2,3401,3401)


-------------------------------------------------Ѱ�Ҷ�ʧ�Ĺ���
	DefineMission( 224, "Ѱ�Ҷ�ʧ�Ĺ���", 214 )

	MisBeginTalk( "<t>���������ܶ�󹤵Ĺ��߲����ˣ��鷳���ڿ�����Χ�ܱ����ҹ����䣬��Щ��ʧ�Ĺ���Ӧ�þ������档" )
	MisBeginCondition(NoRecord, 214)
	MisBeginCondition(HasRecord, 213)
	MisBeginCondition(NoMission, 214)
	MisBeginAction(AddMission, 214)
	MisBeginAction(AddTrigger, 2141, TE_GETITEM, 3973, 5 )		--����������
	MisBeginAction(AddTrigger, 2142, TE_GETITEM, 3974, 3 )		--�����İ�ȫñ
	MisBeginAction(AddTrigger, 2143, TE_GETITEM, 3975, 5 )		--�����Ŀ��
	MisCancelAction(ClearMission, 214)

	MisNeed(MIS_NEED_ITEM, 3973, 5, 10, 5)
	MisNeed(MIS_NEED_ITEM, 3974, 3, 20, 3)
	MisNeed(MIS_NEED_ITEM, 3975, 5, 30, 5)

	MisResultTalk("<t>̫���ˣ����߶��һ����ˣ����Ȼ���ܸɣ�")
	MisHelpTalk("<t>��ô�ˣ��Ҳ�������ֻҪΧ�ƿ�����Χת����Ȧ��������û��ʲô���Ե��˻��߹��")
	MisResultCondition(HasMission, 214)
	MisResultCondition(HasItem, 3973, 5 )
	MisResultCondition(HasItem, 3974, 3 )
	MisResultCondition(HasItem, 3975, 5 )
	MisResultAction(TakeItem, 3973, 5 )
	MisResultAction(TakeItem, 3974, 3 )
	MisResultAction(TakeItem, 3975, 5 )
	MisResultAction(ClearMission, 214)
	MisResultAction(SetRecord, 214 )
	MisResultAction(AddExp,450,450)
	MisResultAction(AddMoney,1600,1600)	
	MisResultAction(AddExpAndType,2,3402,3402)


	InitTrigger()
	TriggerCondition( 1, IsItem, 3973)	
	TriggerAction( 1, AddNextFlag, 214, 10, 5 )
	RegCurTrigger( 2141 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3974)	
	TriggerAction( 1, AddNextFlag, 214, 20, 3 )
	RegCurTrigger( 2142 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3975)	
	TriggerAction( 1, AddNextFlag, 214, 30, 5 )
	RegCurTrigger( 2143 )

-------------------------------------------------�������ݹ�
	DefineMission( 225, "�������ݹ�", 215 )

	MisBeginTalk( "<t>�Ҹ��������Ҫ�Ĺ������ǽ��𸽽���ɽ�������������<r���ݹ�>������ɽ����������ϰ��������������<n><t>���ھ�����ȥ����1594,2689�����������ݹ��������" )
	MisBeginCondition(NoRecord, 215)
	MisBeginCondition(HasRecord, 214)
	MisBeginCondition(NoMission, 215)
	MisBeginAction(AddMission, 215)
	MisBeginAction(AddTrigger, 2151, TE_KILL, 252, 10 )		--���ݹ�
	MisCancelAction(ClearMission, 215)

	MisNeed(MIS_NEED_KILL, 252, 10, 10, 10)

	MisResultTalk("<t>̫���ˣ���������ݹ������Ǿ��ܶԸ���Щɽ���ˣ�")
	MisHelpTalk("<t>��Ҫ����Ŷ����Щ<r���ݹ�>���ǻ�ҧ�˵ģ���")
	MisResultCondition(HasMission, 215)
	MisResultCondition(HasFlag, 215, 19 )
	MisResultAction(ClearMission, 215)
	MisResultAction(SetRecord, 215 )
	MisResultAction(AddExp,500,500)
	MisResultAction(AddMoney,1700,1700)	
	MisResultAction(AddExpAndType,2,3403,3403)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 252)	
	TriggerAction( 1, AddNextFlag, 215, 10, 10 )
	RegCurTrigger( 2151 )

-------------------------------------------------��ķ��ί��
	DefineMission( 226, "��ķ��ί��", 216 )

	MisBeginTalk( "<t>���յ�����ҩ�̵�ķ�����ţ������о��ƺ�������һЩ�鷳������Ҫ�������㵽<yз����θ��ʯ>�����о���<n><t>���<r����з��>��֪�����ӿ���һֱ���ߣ��쵽����֮ǰ��������ҵ���������������...�����ǣ�1783,2507��" )
	MisBeginCondition(NoRecord, 216)
	MisBeginCondition(HasRecord, 215)
	MisBeginCondition(NoMission, 216)
	MisBeginAction(AddMission, 216)
	MisBeginAction(AddTrigger, 2161, TE_GETITEM, 3976, 1 )		--з����θ��ʯ
	MisCancelAction(ClearMission, 216)

	MisNeed(MIS_NEED_ITEM, 3976, 1, 10, 1)

	MisResultTalk("<t>Ŷ�����õ���ķ��Ҫ�Ķ����ˣ������Ͼ������ȥ��")
	MisHelpTalk("<t>��û��ȥ��<r����з��>�𣿴ӿ���һֱ���ߣ��쵽����֮ǰ��������ҵ�����")
	MisResultCondition(HasMission, 216)
	MisResultCondition(HasItem, 3976, 1 )
	MisResultAction(TakeItem, 3976, 1)
	MisResultAction(ClearMission, 216)
	MisResultAction(SetRecord, 216 )
	MisResultAction(AddExp,3000,3000)
	MisResultAction(AddMoney,9000,9000)	
	MisResultAction(AddExpAndType,2,3404,3404)


	InitTrigger()
	TriggerCondition( 1, IsItem, 3976 )	
	TriggerAction( 1, AddNextFlag, 216, 10, 1 )
	RegCurTrigger( 2161 )

-------------------------------------------------ɽ������ͼ
	DefineMission( 227, "ɽ������ͼ", 217 )

	MisBeginTalk( "<t>ҥ���������������ڶ���ɽ���Ļ��ͼ����ݵ�ͼ������̫�����ˣ���Ҫ��취�㵽�������ȥ��2217,2547���������ҿ�" )
	MisBeginCondition(NoRecord, 217)
	MisBeginCondition(HasRecord, 216)
	MisBeginCondition(NoMission, 217)
	MisBeginAction(AddMission, 217)
	MisBeginAction(AddTrigger, 2171, TE_GETITEM, 3977, 1 )		--ɽ������ͼ
	MisCancelAction(ClearMission, 217)

	MisNeed(MIS_NEED_ITEM, 3977, 1, 10, 1)

	MisResultTalk("<t>������õ��ˣ�������ģ�������Щɽ���ܲ����ˡ�")
	MisHelpTalk("<t>û��ͷ������Ҳһ������ȥ������Χ���˰ɣ�Ҳ����а����ġ�")
	MisResultCondition(HasMission, 217)
	MisResultCondition(HasItem, 3977, 1 )
	MisResultAction(TakeItem, 3977, 1)
	MisResultAction(ClearMission, 217)
	MisResultAction(SetRecord, 217 )
	MisResultAction(AddExp,750,750)
	MisResultAction(AddMoney,2000,2000)
	MisResultAction(AddExpAndType,2,11833,11833)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3977 )	
	TriggerAction( 1, AddNextFlag, 217, 10, 1 )
	RegCurTrigger( 2171 )

-------------------------------------------------ͻϮɽ����
	DefineMission( 228, "ͻϮɽ����", 218 )

	MisBeginTalk( "<t>�������ɽ����ͼ����������<p���￩������վ>������Զ�ĵط��ۼ�����ϣ����������̽�Թ���һ�Σ�����һЩ��1043,3066��<rɽ��>���õ�3��<yɽ��������>�������ұ��档" )
	MisBeginCondition(NoRecord, 218)
	MisBeginCondition(HasRecord, 217)
	MisBeginCondition(NoMission, 218)
	MisBeginAction(AddMission, 218)
	MisBeginAction(AddTrigger, 2181, TE_GETITEM, 1841, 3 )		--ɽ��������
	MisCancelAction(ClearMission, 218)

	MisNeed(MIS_NEED_ITEM, 1841, 3, 10, 3)

	MisResultTalk("<t>�ܺã��������Ƕ���Ⱥ�޷�����ļһ�ĵ�һ����ȭ��")
	MisHelpTalk("<t>��ô�ˣ���û���ռ���<yɽ��������>��")
	MisResultCondition(HasMission, 218)
	MisResultCondition(HasItem, 1841, 3 )
	MisResultAction(TakeItem, 1841, 3 )
	MisResultAction(ClearMission, 218)
	MisResultAction(SetRecord, 218 )
	MisResultAction(AddExp,1000,1000)
	MisResultAction(AddMoney,2200,2200)	
	MisResultAction(AddExpAndType,2,11833,11833)


	InitTrigger()
	TriggerCondition( 1, IsItem, 1841 )	
	TriggerAction( 1, AddNextFlag, 218, 10, 3 )
	RegCurTrigger( 2181 )

-------------------------------------------------������
	DefineMission( 229, "������", 219 )

	MisBeginTalk( "<t>������֪�����ɽ����������һ������<r�����ߡ�>�ļһ���Ǹ��ǳ����̽ƻ��Ļ��������Ƕ��ڰ�����<n><t>�ҵ���1052,3037��������ɽ���Ĵ�Ӫȥ����һ����һ���ܹ���������һ�ģ�Ȼ�󣬴�����" )
	MisBeginCondition(NoRecord, 219)
	MisBeginCondition(HasRecord, 218)
	MisBeginCondition(NoMission, 219)
	MisBeginAction(AddMission, 219)
	MisBeginAction(AddTrigger, 2191, TE_KILL, 211, 1 )		--ɽ�����졤����
	MisCancelAction(ClearMission, 219)

	MisNeed(MIS_NEED_KILL, 211, 1, 10, 1)

	MisResultTalk("<t>�ܺã�����ɽ�������죬��Ⱥɽ���Ͳ���Ϊ���ˣ�����¸Һ��ǻ������������壡")
	MisHelpTalk("<t>���ں�����û��ϵ��������������ǣ�һ��ȥս���ɣ�")
	MisResultCondition(HasMission, 219)
	MisResultCondition(HasFlag, 219, 10 )
	MisResultAction(ClearMission, 219)
	MisResultAction(SetRecord, 219 )
	MisResultAction(AddExp,5000,5000)
	MisResultAction(AddMoney,10000,10000)	
	MisResultAction(AddExpAndType,2,11833,11833)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 211 )	
	TriggerAction( 1, AddNextFlag, 219, 10, 1 )
	RegCurTrigger( 2191 )

----------------------------ȥɳĮ
	DefineMission( 230, "ȥɳĮ", 220 )
	
	MisBeginTalk( "<t>���ٴνӵ���<b˹����>�������ż����������<y��ϯ�������>��ȥԶ��ħŮ֮����ɳᰳǵģ�898,3640������ǵ�ɳ��<b���峤����>�������˽����Ĺ��ڱ������������ɡ�" )
	MisBeginCondition(NoRecord, 220)
	MisBeginCondition(HasRecord, 219)
	MisBeginCondition(NoMission, 220)
	MisBeginAction(AddMission, 220)
	MisBeginAction(GiveItem, 3978, 1, 4)
	MisCancelAction(ClearMission, 220)
	MisBeginBagNeed(1)
		
	MisNeed(MIS_NEED_DESP, "ȥɳᰳ������峤��898,3640������")
	
	MisHelpTalk("<t>��Ȼ��Ҳ��ϣ����������������ң����ǣ�����ĸ����ˣ�������ڣ�")
	MisResultCondition(AlwaysFailure )

-----------------------------------ȥɳĮ
	DefineMission( 231, "ȥɳĮ", 220, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Ŷ����ӭ�㣬Զ�������Ŀ��ˣ�˹������������˵��������Ϊ���˽�������������ģ�������Ҳ�ǿ���Ů���ּ�⣬��һ���ᾡ��������ġ�")
	MisResultCondition(NoRecord, 220)
	MisResultCondition(HasMission, 220)
	MisResultCondition(HasItem, 3978, 1)
	MisResultAction(TakeItem, 3978, 1 )
	MisResultAction(ClearMission, 220 )
	MisResultAction(SetRecord, 220 )
	MisResultAction(AddExp,1100,1100)
	MisResultAction(AddMoney,2300,2300)
	MisResultAction(AddExpAndType,2,5000,5000)


----------------------------�����ԭ��
	DefineMission( 232, "�����ԭ��", 221 )
	
	MisBeginTalk( "<t>��˵�����������еĸۿڸ�����һֻ��˵�����򣬺����ʲô<bС������>����Ȼ��û�������������ƾ�����ν�ı�������ɡ�<n><t>�����ɣ�����ȥ������Ȼ���������ң���ֻ��ֵ�������ڣ�898,3683������" )
	MisBeginCondition(NoRecord, 221)
	MisBeginCondition(HasRecord, 220)
	MisBeginCondition(NoMission, 221)
	MisBeginAction(AddMission, 221)
	MisCancelAction(ClearMission, 221)
		
	MisNeed(MIS_NEED_DESP, "��С��������898,3683��̸̸��Ȼ���ȥ�����峤����������.�898,3640��")
	
	MisResultTalk("<t>�ޣ����Ѿ���С������̸���ˣ��Ǻǣ�����������ɳᰳ��ƶ�������ĿŶ��")
	MisHelpTalk("<t>���<bС������>�Ĺ����𣿷��ģ�����˵����")
	MisResultCondition(HasMission, 221 )
	MisResultCondition(NoRecord, 221 )
	MisResultCondition(HasFlag, 221, 1 )
	MisResultAction(ClearMission, 221 )
	MisResultAction(SetRecord, 221 )
	MisResultAction(AddExp,1200,1200)
	MisResultAction(AddMoney,2400,2400)	
	MisResultAction(AddExpAndType,2,5000,5000)

-----------------------------------�����ԭ��
	DefineMission( 233, "�����ԭ��", 221, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>�㣬��ã��Ҿ���С��������<n><t>��֪��������ô��˵���ģ�<n><t>�ðɣ��ǻ����ںܾ���ǰ����һ����ȥ����ɢ������֪������Ҳ���и���ģ��㣡<n><t>�ǵú����ǿ���һ��ԲԲ����һ���Ķ����������˳嵽�˰��ߣ�����ȥ�ܿɿ���ζ�����ӣ������Ҿͳ�������<n><t>�������Ƕ�ô�����ڳ��԰����������һ����ֵ������֮���ҷ����Һ�Ȼ�ܹ�ʹ����������������ˣ�<n><t>�Դ��һ�˵���Ժ󣬺��ĵ�<b���峤>������ɳᰳ��ﰲ����һ���ң��´���ȥ����ʱ�����������������ʺã���~")
	MisResultCondition(NoRecord, 221)
	MisResultCondition(HasMission, 221)
	MisResultCondition(NoFlag, 221, 1)
	MisResultAction(SetFlag, 221, 1 )
	


----------------------------��ɭ�ıʼǱ�
	DefineMission( 234, "��ɭ�ıʼǱ�", 222 )
	
	MisBeginTalk( "<t>���Դ�Ư����<y��ֵĵ�>�������ţ��Ҽǵ����������ı��������й����أ��������롭�����ˣ�<n><t>��<b��������ɭ>��<y�����ռ�>��<n><t>����ɳᰳǴ�ͼ���������������һ����������ɭ����ĺ����ռǡ��������ܿ�ϧ����������֮ǰ����ͼ��ݱ������ˣ�<n><t>�ܶ��뺽���йص����׶��������ˣ���ɭ�ĺ����ռ�Ҳ�����桭����Ȼ��<n><t>�����������ϼ�������ף�<n><t>����������٣��������ڻ����ص��飬Ŀǰ�ĸ����˺�����<bѲ�߱�������>����Ӧ�þ��ڳ��⣨958,3549����������ܰ���������һ�µĻ���Ҳ�����ҵ��ı�<y�����ռ�>��" )
	MisBeginCondition(NoRecord, 222)
	MisBeginCondition(HasRecord, 221)
	MisBeginCondition(NoMission, 222)
	MisBeginAction(AddMission, 222)
	MisCancelAction(ClearMission, 222)
		
	MisNeed(MIS_NEED_DESP, "ȥ�����ˣ�958,3549���˽�һ�������¼��ĵ������")
	
	MisHelpTalk("<t><b����>Ӧ�þ��ڳ��ſڣ���ȥ�ɣ���ס��Ҫ�����ҵ����ף�")
	MisResultCondition(AlwaysFailure )

-----------------------------------��ɭ�ıʼǱ�
	DefineMission( 235, "��ɭ�ıʼǱ�", 222, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>������ã��Ҿ������ˡ�<n><t>������׮���ٰ������ɵ����ذ�����˭��ȥ��ͼ��ݰ����������������Ĳ߻�����֪�������ж����Ҿ��������ȥ��ɳ�����Ҳ��ɹ��ģ�<n><t>������Щ�һ��Ȼֻ�����˼����飡����̫����ˣ�")
	MisResultCondition(NoRecord, 222)
	MisResultCondition(HasMission, 222)
	MisResultAction(ClearMission, 222 )
	MisResultAction(SetRecord, 222 )
	MisResultAction(AddExp,1200,1200)
	MisResultAction(AddMoney,2400,2400)
	MisResultAction(AddExpAndType,2,5000,5000)


----------------------------����
	DefineMission( 236, "����", 223 )
	
	MisBeginTalk( "<t>���������ڵ���õ�����������������¿϶����������ϳ�����ЩΣ�յ�<rɳ��>�Ǹɵģ�<n><t>������ƬɳĮ������֯��һ�ﲻ�����ӣ�<n><t>�����ɣ�������������ʶһ����ֵ�ɳ�ˣ����Գ�<b����������>���ƺ����������ε����첻����������<p�Ͳ�����վ>��������<p��������>��ģ�1080,3086����ȥ�����˽�һ�°ɡ�" )
	MisBeginCondition(NoRecord, 223)
	MisBeginCondition(HasRecord, 222)
	MisBeginCondition(NoMission, 223)
	MisBeginAction(AddMission, 223)
	MisCancelAction(ClearMission, 223)
		
	MisNeed(MIS_NEED_DESP, "�ҵ�������������1080,3086��ѯ��������")
	
	MisHelpTalk("<t>���ģ����<b����������>��������ɳ�ˣ�һ�㲻�������ֵġ�")
	MisResultCondition(AlwaysFailure )

-----------------------------------����
	DefineMission( 237, "����", 223, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Ӵ�����Ȼ���ҵ��ң��治�򵥰���<n><t>�Ҳ���Ϊ���Ǹ�ɳᰳ����ͼ��ݵ��°ɣ��Ǻǣ������޹�Ŷ�����!�ҿ��㻹�����˰ɣ�������������ʲô�ô��أ���˵���ҿ��Ǹ�ɳ��Ŷ��<n><t>�㲻���Ҹɵ��㣿")
	MisResultCondition(NoRecord, 223)
	MisResultCondition(HasMission, 223)
	MisResultAction(ClearMission, 223 )
	MisResultAction(SetRecord, 223 )
	MisResultAction(AddExp,600,600)
	MisResultAction(AddMoney,2400,2400)
	MisResultAction(AddExpAndType,2,5000,5000)


-------------------------------------------------�ڼ�
	DefineMission( 238, "�ڼ�", 224 )

	MisBeginTalk( "<t>�ðɺðɣ�������ô�г�������ӣ��Ҿ͸�����ɣ���ȷʵ��֪��һ�����ٵ����ܡ�<n><t>����������Ҳ���ܰװ׸����㰡����ҲҪ�е�ô��ǲ��ǣ�<n><t>��ʵ�����ںܿ���һ���£�������Щɵ��ɳ���Ƕ��������ң���������֮�к�û�����Ű���<n><t>���Ƕ�û���ӵ��°���������ܰ��ҳ�Ϊ��Щ�һ������Ļ������Ҿͽ���֪���ĸ����㣡<n><t>���ڣ����һ��Ҫ������֤���������ʵ��Ϊ�Ұ��£�ȥ���10��<rɳ��>��5��<rɳ��ʿ>����õ��Ļ����������Ұɡ�" )
	MisBeginCondition(NoRecord, 224)
	MisBeginCondition(HasRecord, 223)
	MisBeginCondition(NoMission, 224)
	MisBeginAction(AddMission, 224)
	MisBeginAction(AddTrigger, 2241, TE_KILL, 45, 10 )		--ɳ��
	MisBeginAction(AddTrigger, 2242, TE_KILL, 49, 5 )		--ɳ��ʿ
	MisCancelAction(ClearMission, 224)

	MisNeed(MIS_NEED_KILL, 45, 10, 10, 10)
	MisNeed(MIS_NEED_KILL, 49, 5, 20, 5)

	MisResultTalk("<t>�ࡣ��ҹ�Ȼû�����㣬��ȷ�������ʵ��������ɳ�˶�����˵����������ʲô�ϰ���")
	MisHelpTalk("<t>�����㲻��Ŷ���ҵ��Ǻ��뽫����͸¶���㣬Ҫ֪����һ������̫�����ܲ��ܸ��߱���֪����ʱ��Ҳ���ú����ܵġ�")
	MisResultCondition(HasMission, 224)
	MisResultCondition(HasFlag, 224, 19 )
	MisResultCondition(HasFlag, 224, 24 )
	MisResultAction(ClearMission, 224)
	MisResultAction(SetRecord, 224 )
	MisResultAction(AddExp,1400,1400)
	MisResultAction(AddMoney,2550,2550)	
	MisResultAction(AddExpAndType,2,5000,5000)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 45 )	
	TriggerAction( 1, AddNextFlag, 224, 10, 10 )
	RegCurTrigger( 2241 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 49 )	
	TriggerAction( 1, AddNextFlag, 224, 20, 5 )
	RegCurTrigger( 2242 )

-------------------------------------------------ս����ɳĮ
	DefineMission( 239, "ս����ɳĮ", 225 )

	MisBeginTalk( "<t>��֪����������Ⱥɳ�ˣ��и����죬���Ƕ�����<r����>������һ�ֻ�Ǹ���Ѫ��ɱ�İ׳գ�<n><t>���Ҹ����ĺܶ�ܺõĽ��鶼�������߷磬�������Ͳ������ң���Ȼ�������ҿ���ֻ��ȡ������Ϊ�µ�ɳ�������ˣ����ǣ�����Ĵ򲻹������Ͼ������ļ�������Ĵ��Է�����ˣ�<n><t>���ڣ���ϣ��������ȥ�������<n><t>���������ϵ�<yɳĮ����֤֮>�������ң�Ҫ��<rɳ�����졤����>�Ļ���������һֱ���ߣ��ܿ�����ҵ�����Ӫ�ء�<n><t>֮���ҵõ�������Ҫ�ģ���Ҳ��֪������֪���ġ�" )
	MisBeginCondition(NoRecord, 225)
	MisBeginCondition(HasRecord, 224)
	MisBeginCondition(NoMission, 225)
	MisBeginAction(AddMission, 225)
	MisBeginAction(AddTrigger, 2251, TE_GETITEM, 3979, 1 )		--ɳĮ����֤֮
	MisCancelAction(ClearMission, 225)

	MisNeed(MIS_NEED_ITEM, 3979, 1, 10, 1)

	MisResultTalk("<t>�������������������ڣ���֪������˭�����Ҿ���ͳ����ƬɳĮ��ʵ����ǿ��ɳ�˵����죡��������")
	MisHelpTalk("<t>��ô���㻹û�ж����𣿿�ȥ�ɣ���������������أ�")
	MisResultCondition(HasMission, 225 )
	MisResultCondition(HasItem, 3979, 1 )
	MisResultAction(TakeItem, 3979, 1 )
	MisResultAction(ClearMission, 225 )
	MisResultAction(SetRecord, 225 )
	MisResultAction(AddExp,669,669)
	MisResultAction(AddMoney,1275,1275)	
	MisResultAction(AddExpAndType,2,5000,5000)

	
	InitTrigger()
	TriggerCondition( 1, IsItem, 3979 )	
	TriggerAction( 1, AddNextFlag, 225, 10, 1 )
	RegCurTrigger( 2251 )

----------------------------����
	DefineMission( 240, "����", 226 )
	
	MisBeginTalk( "<t>������˻���˵���㻰�ģ���Ȼ������ҳ�Ϊ��ɳ�˵����䣬��ô�Ҿ͸������������ͼ��ݵ��¡�<n><t>��ʵ�����¾�������ɳ�˺�Ǳ����ɳᰳ���ĺ����ϻ�ɵģ�<n><t>��Ҳ��֪������ɳᰳǸ����ĺ�����һ֧�ǳ������ĺ����ţ�����<r���ܿ˺����š�>��������Ҫ�õ�<b��������ɭ>�ĺ����ռǣ��鿴�����Ƿ�����ɭ�ı��ص����ܡ�<n><t>������Щ�����Ѿ��������ŵĳ�Ա�����ˣ������ȥ�����Ǹ�������µ����ˣ�������������¾�����<b������>���ģ��б��¾������Ұɣ�" )
	MisBeginCondition(NoRecord, 226)
	MisBeginCondition(HasRecord, 225)
	MisBeginCondition(NoMission, 226)
	MisBeginAction(AddMission, 226)
	MisCancelAction(ClearMission, 226)
		
	MisNeed(MIS_NEED_DESP, "�����������������ˣ�958,3549��")
	
	MisHelpTalk("<t>���Ѿ�����֪���Ķ��������ˣ����Ѿ�û��ʲô���԰�����ˡ�")
	MisResultCondition(AlwaysFailure )

-----------------------------------����
	DefineMission( 241, "����", 226, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>����ԭ�������Ȼ��<b������>���ģ�����⡣<n><t>�����������Ѿ���ɳ�˵������ˣ��Ҹ�����û�취�ˣ���������Ҳ�ܸ����峤����һ�������ˣ����ǵ�лл���Э���ġ�")
	MisResultCondition(NoRecord, 226)
	MisResultCondition(HasMission, 226)
	MisResultAction(ClearMission, 226 )
	MisResultAction(SetRecord, 226 )
	MisResultAction(AddExp,1500,1500)
	MisResultAction(AddMoney,2650,2650)
	MisResultAction(AddExpAndType,2,5000,5000)


----------------------------��������Ϣ
	DefineMission( 242, "��������Ϣ", 227 )
	
	MisBeginTalk( "<t>��Ȼ�����Ǹ�<b������>û�취�����ǻ��ǿ��Ե���һ�º����ŵ�����ģ����������ڱ�����ȥ�����峤���˻㱨����<n><t>�����ɣ������ȥɳᰳǸۿڸ����ң�867,3660����<b������Ա������>���ʣ��ǵ����Ƚ��˽⸽����û�ĺ����ŵ���Ϣ��" )
	MisBeginCondition(NoRecord, 227)
	MisBeginCondition(HasRecord, 226)
	MisBeginCondition(NoMission, 227)
	MisBeginAction(AddMission, 227)
	MisCancelAction(ClearMission, 227)
		
	MisNeed(MIS_NEED_DESP, "ȥ�����ݣ�867,3660��̸̸")
	
	MisHelpTalk("<t>Ҫ��<b������Ա������>������Ե�ɳᰳǸۿڸ���ȥ������")
	MisResultCondition(AlwaysFailure )

-----------------------------------��������Ϣ
	DefineMission( 243, "��������Ϣ", 227, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>��֪�������ŵ���Ϣ���ţ��������Ҷ����ˣ���ȷʵ֪���ܶ�ม�<n><t>����<b��������ɭ>�ĺ����ŵĴ�����£����Ǻ�����������ȥ��<bӣ��������>�����飬������������������<r�ܿ˺�����>���£�������ңԶ�ı��Ǳ������<b����������>���£��Ҷ�֪������֪��ʲô�;����ʰɣ�")
	MisResultCondition(NoRecord, 227 )
	MisResultCondition(HasMission, 227 )
	MisResultAction(ClearMission, 227 )
	MisResultAction(SetRecord, 227 )
	MisResultAction(AddExp,749,749)
	MisResultAction(AddMoney,1333,1333)	
	MisResultAction(AddExpAndType,2,5000,5000)


----------------------------�ܿ˺�����
	DefineMission( 244, "�ܿ˺�����", 228 )
	
	MisBeginTalk( "<t>Ŷ��ԭ������֪���Ǹ�<r�ܿ˺�����>���°���û��ǰ��ʱ�俪ʼ����ﺣ���ŵĳ�Ա��Ƶ���ĳ����ڳ��������Ϊ���ǲ�û���������ǣ��������Ǹ�λ��Ҳû��������������������˵��������������������ϲ�ɳĮ���ͱȽ�����ˡ�<n><t>����ɳĮ����ɳ���ǵĵ��̰���<n><t>�ѵ����Ǵ��������ɽ�����𣿹�����������<n><t>ɳĮ����£�����Ҫ�ң�1118,3611�������������ָ����<b÷�����ǡ�è��>���ʣ������������֪��һЩ���ܣ�ҥ����������������ɳᰳ�֮�������ʹ�ߣ�ȥ���ʿ��ɣ����Ǻ����ź����򶫣���һ�ҳ�����������ܿ�������" )
	MisBeginCondition(NoRecord, 228)
	MisBeginCondition(HasRecord, 227)
	MisBeginCondition(NoMission, 228)
	MisBeginAction(AddMission, 228)
	MisCancelAction(ClearMission, 228)
		
	MisNeed(MIS_NEED_DESP, "��è�ۣ�1118,3611������")
	
	MisHelpTalk("ȥ�ɣ����ź����򶫣���һ�ҳ�������������ҵ�<b÷�����ǡ�è��>��1118,3611����")
	MisResultCondition(AlwaysFailure )

-----------------------------------�ڽܿ˺�����
	DefineMission( 245, "�ܿ˺�����", 228, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>����Ҫ֪��<r�ܿ˺�����>���°����ţ����������Ҳ��������ȽϹ�ע�ģ����ǵĻ��Щ����Ƶ���ˣ����˵��Ļ���ʲô�¼���������")
	MisResultCondition(NoRecord, 228 )
	MisResultCondition(HasMission, 228 )
	MisResultAction(ClearMission, 228 )
	MisResultAction(SetRecord, 228 )
	MisResultAction(AddExp,1700,1700)
	MisResultAction(AddMoney,2800,2800)
	MisResultAction(AddExpAndType,2,5000,5000)


-------------------------------------------------�ѿ˴���
	DefineMission( 246, "�ѿ˴���", 229 )

	MisBeginTalk( "<t>��Ȼ�Һ�����㣬������֧���������ºܹ��أ����������޷�׼ȷ֪̽���ǵ���ͼ��<n><t>�������������ǵ�����<r�ѿ˴���>��������������ȫ�Ǹ���³��֪���Դ���ҹ�����������һ������һ�����ǲ�֪����ָʹ�ߡ�<n><t>�����ѿ˴������˶�˵�������������һ�����ص�<yС��>���������Ǳ��ܵĺ����ܣ�������а취��<y�ѿ˵�С��>Ū���ֵĻ���һ���������ҿ���Щ��˿����<n><t>��������������һֱ��ȥ����һ���ܹ��ҵ����ġ�" )
	MisBeginCondition(NoRecord, 229)
	MisBeginCondition(HasRecord, 228)
	MisBeginCondition(NoMission, 229)
	MisBeginAction(AddMission, 229)
	MisBeginAction(AddTrigger, 2291, TE_GETITEM, 3980, 1 )		--�ѿ˵�С��
	MisCancelAction(ClearMission, 229)

	MisNeed(MIS_NEED_ITEM, 3980, 1, 10, 1)

	MisResultTalk("<t>�������<r�ѿ˴���>����Я����С����̫���ˣ�лл�㡣<n><t>�������������һ�£�������ʲô���õĶ�����")
	MisHelpTalk("<t>��ô��û���ҵ�<r�ѿ˴���>��ֻҪ���ź������ߣ�һ���ܹ������ġ�")
	MisResultCondition(HasMission, 229 )
	MisResultCondition(HasItem, 3980, 1 )
	MisResultAction(TakeItem, 3980, 1 )
	MisResultAction(ClearMission, 229 )
	MisResultAction(SetRecord, 229 )
	MisResultAction(AddExp,4680,4680)
	MisResultAction(AddMoney,7075,7075)	
	MisResultAction(AddExpAndType,2,5000,5000)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3980 )	
	TriggerAction( 1, AddNextFlag, 229, 10, 1 )
	RegCurTrigger( 2291 )

----------------------------Ѱ��������
	DefineMission( 247, "Ѱ��������", 230 )
	
	MisBeginTalk( "<t>���Ѿ������ѿ˵�С���ˣ���������������������ռ��ˡ�J�����ţ��������<r�ѿ˴���>ʹ���˺ܶྴ�����<r�ܿ˺�����>�����һЩ��������ϸ�㱨�������<r���š�J��>���ˣ��Ҽ����Ѿ����Կ϶���������š�J�����˲���<r�ܿ˺�����>���������졣<n><t>��������û��֪������˭��<n><t>����һ�����⣬���������ǰ�����ŷ�ã�Ȼ��ϣ�����ܴ������<y���񵽵ġ���>ȥ��½��תת����Ȼϣ����ã����˵������Ŀ����ҵ��Ǹ����š�J����������Ŷ��" )
	MisBeginCondition(NoRecord, 230)
	MisBeginCondition(HasRecord, 229)
	MisBeginCondition(NoMission, 230)
	MisBeginAction(AddMission, 230)
	MisBeginAction(GiveItem, 3981, 1, 4 )
	MisCancelAction(ClearMission, 230)
	MisBeginBagNeed(1)
		
	MisNeed(MIS_NEED_DESP, "�ҵ������˴��š�J��")
	
	MisHelpTalk("<t>��Ȼ���Ҫ���е���֣����������ţ����Ǹ��о�������ˣ������Լ���ֱ������һ���ܹ��ҵ��Ǹ��ռ��˵ġ�")
	MisResultCondition(AlwaysFailure )

-----------------------------------Ѱ��������
	DefineMission( 248, "Ѱ��������", 230, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>�ף�������ô�õ�����ŵģ������ģ���<n><t>�Ҿ����Ǹ���J������<n><t>Ϊʲô���ǡ�J�����������һʱҲ���Ͳ�����������ʵ����֪���Ļ����ҿ�������������Щɳ�˺���̸̸����Ŷ�������ڲ���֪���ˣ��ܺúܺã���������<n><t>���ˣ���Ȼ����Ų����Ǻ���Ҫ�������һ���Ҫ��һ�£���û���������ɣ��Ͼ��������ҵ�˽���ż�����û������̫���ˣ���Ҳ��������ģ�лл������Ŀ���")
	MisResultCondition(NoRecord, 230 )
	MisResultCondition(HasMission, 230 )
	MisResultCondition(HasItem, 3981, 1 )
	MisResultAction(TakeItem, 3981, 1 )
	MisResultAction(ClearMission, 230 )
	MisResultAction(SetRecord, 230 )
	MisResultAction(ObligeAcceptMission, 5 )
	MisResultAction(AddExp,936,936)
	MisResultAction(AddMoney,1415,1415)	
	MisResultAction(AddExpAndType,2,7000,7000)


----------------------------�㱨������
	DefineMission( 249, "�㱨������", 5, COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>�����벻����ԭ�������˻���<b����������>����������ǳ����ڸ����¼�������ҵ����������ˣ���Ȼ�һ�û��������ˣ������Ѿ���˵�˺ܶ����Ĵ��š�")
	MisResultCondition(HasMission, 5 )
	MisResultCondition(NoRecord, 5 )
	MisResultAction(ClearMission, 5 )
	MisResultAction(SetRecord, 5 )
	MisResultAction(AddExp,2000,2000)
	MisResultAction(AddMoney,2800,2800)
	MisResultAction(AddExpAndType,2,7000,7000)


----------------------------ȥ����
	DefineMission( 250, "ȥ����", 232 )
	
	MisBeginTalk( "<t>��Ȼ�������йغ�����������Ƚ����Ҵ���ɣ���˵���ܰ�����˹����������ָ���ڵ���������������¼���Ҳ���ҿ��Ը���һЩСС�İ�����<n><t>��ȥ�����Ǳ������Ǹ������ѩ�ĵط����������Ҳ���鷳���ϡ�<n><t>�����ǲ���ǰ�����Ĳ������ﲻ֪Ϊ�ι�������������������ж���Ϊ��һƬ���棬�����Ǿ�ס�ı��Ǳ��ϳ�������ȫ�����ˡ�<n><t>����㲻����Σ�յĻ���ȥ���Ǳ���1365,570����һ������<b��ŷ>�Ľ�ʿ��Ҳ���������ĵ���������չ�ɡ�" )
	MisBeginCondition(NoRecord, 232)
	MisBeginCondition(HasRecord, 5 )
	MisBeginCondition(NoMission, 232)
	MisBeginAction(AddMission, 232)
	MisCancelAction(ClearMission, 232)
		
	MisNeed(MIS_NEED_DESP, "ȥ��������ŷ��1365,570�����������й�������������")
	
	MisHelpTalk("<t>��ȥ�ɣ���ȥ�ѣ�ʱ�䲻���ˡ�")
	MisResultCondition(AlwaysFailure )

-----------------------------------ȥ����
	DefineMission( 251, "ȥ����", 232, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>�Բ�����û��ʲô���԰�����ģ����Ǳ����ڱ���������˽�����������Σ��֮�У���û��ʲô�й���������������Щ����ı������⣡<n><t>��Ҳ����Ϊ������Щ���ܹ��ı���Ǳ�����״��")
	MisResultCondition(NoRecord, 232 )
	MisResultCondition(HasMission, 232 )
	MisResultAction(ClearMission, 232 )
	MisResultAction(SetRecord, 232 )
	MisResultAction(AddExp,2000,2000)
	MisResultAction(AddMoney,2900,2900)
	MisResultAction(AddExpAndType,2,7000,7000)


----------------------------���Ǳ���Σ��
	DefineMission( 252, "���Ǳ���Σ��", 233 )
	
	MisBeginTalk( "<t>������Ϊ��֮ǰ�Դ�����λԶ�������Ŀ��˵�̬�ȱ�ʾǸ�⣬����ҵ�����������Щ���Ź�ͷ�ˡ�<n><t>����ε��¼�æ���ˣ���һ��Ҫ��һ��û��ѩ�ĵط�ȥ�úöȸ��١���<n><t>�Բ��������ڵ�ͷ�Ժ����е㲻�����ѣ�Ҳ������������Ŀǰ��״�����㻹��ȥ�����ǵ��쵼��<b�����˹>����̸̸�ɣ�����Ψһ������������ͬ�ʹ���Ĺ���,���ڣ�1346,451���Ƕ���" )
	MisBeginCondition(NoRecord, 233)
	MisBeginCondition(HasRecord, 232)
	MisBeginCondition(NoMission, 233)
	MisBeginAction(AddMission, 233)
	MisCancelAction(ClearMission, 233)
		
	MisNeed(MIS_NEED_DESP, "��ȥ���Ǳ����塤�����˹��1346,451��ѯ�ʹ��ڱ��Ǳ���Σ������")
	
	MisHelpTalk("<t><b�����˹>���˺�ƽ�׽��˵ģ�ȥ�����ɣ���������Ҫ��Ϣһ�£�����ȴ��Ҫ�������")
	MisResultCondition(AlwaysFailure )

-----------------------------------ȥ����
	DefineMission( 253, "���Ǳ���Σ��", 233, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>�ǳ���ӭ�㣬Զ���Ŀ��ˣ���ԭ�����޷��ó�ʲô�ö���������㣬Ҫ֪�������ڵı��Ǳ�����˵�Ǵ���һ�����������Ĺؼ�ʱ�̣�<n><t>�������������ûʵ��ϳ��Ѿ�����Щ���µ��������ռ���������д����Ĳ���������������<n><t>������ˣ����ǻ��ǻ�����ȥ��������һ������һ���������ǵļ�԰�ģ�")
	MisResultCondition(NoRecord, 233 )
	MisResultCondition(HasMission, 233 )
	MisResultAction(ClearMission, 233 )
	MisResultAction(SetRecord, 233 )
	MisResultAction(AddExp,2000,2000)
	MisResultAction(AddMoney,2900,2900)
	MisResultAction(AddExpAndType,2,7000,7000)


----------------------------����
	DefineMission( 254, "����", 234 )
	
	MisBeginTalk( "<t>����������Щ�鷳��ʹ���ǵĴ�����ø��Ӽ���ˣ�֮ǰ��һ��������������Ԯ��������·���⵽Ϯ�������û���ʹû�뵽֮�����԰����ǵĲ�������Ҳ��Ϯ���ˣ���������Ψһ��ϣ���ͼ��������һ������ɳᰳǵĲ��������ˡ������ǣ��������������ʶ�û���ʹ<n><t>������ԵĻ�����������ȥ�����ң�1237,613����<bѲ�߱���СĪ>���ʣ�������ȥӭ�Ӳ������ˡ�" )
	MisBeginCondition(NoRecord, 234)
	MisBeginCondition(HasRecord, 233)
	MisBeginCondition(NoMission, 234)
	MisBeginAction(AddMission, 234)
	MisCancelAction(ClearMission, 234)
		
	MisNeed(MIS_NEED_DESP, "��СĪ��1237,613�������йز���������")
	
	MisHelpTalk("<t>�����ʹ�<bѲ�߱���СĪ�����𣿰����ˣ�")
	MisResultCondition(AlwaysFailure )

-----------------------------------����
	DefineMission( 255, "����", 234, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t><b�����˹>�������������𣿺ܱ�Ǹ���ҵ����ڻ�û�п��������ӣ��ҵ��������һ֧������Ҳ�������鷳�ˣ�")
	MisResultCondition(NoRecord, 234 )
	MisResultCondition(HasMission, 234 )
	MisResultAction(ClearMission, 234 )
	MisResultAction(SetRecord, 234 )
	MisResultAction(AddExp,2000,2000)
	MisResultAction(AddMoney,2800,2800)
	MisResultAction(AddExpAndType,2,7000,7000)


----------------------------Ѱ�Ҳ�����
	DefineMission( 256, "Ѱ�Ҳ�����", 235 )
	
	MisBeginTalk( "<t>�Ҳ�ȷ�������ӻ᲻������������鷳��������ܣ��һᵽ���棨1028,649����<p������˹����վ>ȥ�쿴һ�£��������ֵ��Ļ����˲����ӡ�<n><t>���ԣ����ܲ������ҵ�����ȥ�쿴һ���أ����������ɳᰳǲ����ӵĻ�����Ҫ���˸��߲����ӳ�<b����˹����ɳ>�����Ƕ����ڴ�������" )
	MisBeginCondition(NoRecord, 235)
	MisBeginCondition(HasRecord, 234)
	MisBeginCondition(NoMission, 235)
	MisBeginAction(AddMission, 235)
	MisCancelAction(ClearMission, 235)
		
	MisNeed(MIS_NEED_DESP, "�ҵ������ӳ�����˹����ɳ��1028,649���˽����")
	
	MisHelpTalk("<t>ϣ�����ܹ��ҵ������ӣ���ס������������������һ�㣬<p������˹����վ>�����Ǳߡ�")
	MisResultCondition(AlwaysFailure )

-----------------------------------Ѱ�Ҳ�����
	DefineMission( 257, "Ѱ�Ҳ�����", 235, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>���ˡ���ȫ���ˡ����ҵĲ�����ȫ����û�ˡ���")
	MisResultCondition(NoRecord, 235 )
	MisResultCondition(HasMission, 235 )
	MisResultAction(ClearMission, 235 )
	MisResultAction(SetRecord, 235 )
	MisResultAction(AddExp,2000,2000)
	MisResultAction(AddMoney,2800,2800)	
	MisResultAction(AddExpAndType,2,7000,7000)


-------------------------------------------------����Ʒ���
	DefineMission( 258, "����Ʒ���", 236 )

	MisBeginTalk( "<t>���ǵĲ������ۿ���Ҫ���ﰢ����˹����վʱ����Ȼ��������ѩ�˰�Χ�ˣ������ǻ�û�и������ô����֮ǰ����Щ�ޱȸߴ�����͹����˻���ų嵽�����ǵĶ�����ǰ��<n><t>���˾��ȵ��ǣ���Щǿ׳�Ĺ�������˵Ĵ��������е�һ���ֹ����������ǵ�ע����������Ʒȴ����Ȼ���ֵ���һ��ѩ�������ˣ�<n><t>����һֱ׷�����������ܣ��ڿ�Ҫ���������ߵ�ʱ�򣬺�Ȼ������һֻ���Ӿ޴�ֲ���ѩ�ˣ�<n><t>�ܿ����Ǿͱ���ɢ�ˣ���Ҳ�Ǻò����ײ��ӻ��˲���վ����<n><t>��Ȼû��ʲôϣ���ˣ�����������ܵĻ�������������һ�<y�����Ĳ���Ʒ>��" )
	MisBeginCondition(NoRecord, 236)
	MisBeginCondition(HasRecord, 235)
	MisBeginCondition(NoMission, 236)
	MisBeginAction(AddMission, 236)
	MisBeginAction(AddTrigger, 2361, TE_GETITEM, 3982, 15 )		--�����Ĳ���Ʒ
	MisCancelAction(ClearMission, 236)

	MisNeed(MIS_NEED_ITEM, 3982, 15, 10, 15)

	MisResultTalk("<t>�찡��������ô�쵽�ģ�����Щ����Ʒ�����������ˣ�̫���ˣ�̫���ˣ�")
	MisHelpTalk("<t>�����һֱ����ȥ����һ����������Щ���µ�<rѩ��>�ģ���ס������򲻹��Ļ������ܰɣ�")
	MisResultCondition(HasMission, 236 )
	MisResultCondition(HasItem, 3982, 15 )
	MisResultAction(TakeItem, 3982, 15 )
	MisResultAction(ClearMission, 236 )
	MisResultAction(SetRecord, 236 )
	MisResultAction(AddExp,2000,2000)
	MisResultAction(AddMoney,2800,2800)
	MisResultAction(AddExpAndType,2,7000,7000)

	
	InitTrigger()
	TriggerCondition( 1, IsItem, 3982 )	
	TriggerAction( 1, AddNextFlag, 236, 10, 15 )
	RegCurTrigger( 2361 )


----------------------------���Ͳ���Ʒ
	DefineMission( 259, "���Ͳ���Ʒ", 237 )
	
	MisBeginTalk( "<t>��Ȼ�������Щ����Ʒ������ģ���ô�����������������ף����Ұ���Щ<y��صĲ���Ʒ>�͵����Ǳ�����ɣ��ǵý������ǣ�1365,570����<b��ʿ����ŷ>��" )
	MisBeginCondition(NoRecord, 237)
	MisBeginCondition(HasRecord, 236)
	MisBeginCondition(NoMission, 237)
	MisBeginAction(AddMission, 237)
	MisBeginAction(GiveItem, 3983, 15, 4)
	MisCancelAction(ClearMission, 237)
	MisBeginBagNeed(1)
		
	MisNeed(MIS_NEED_DESP, "������Ʒ���͵����Ǳ���������ʿ����ŷ��1365,570��")
	
	MisHelpTalk("<t>�������ɣ����Ǳ��ľ�����Ӧ����������Щ����Ʒ�ء�")
	MisResultCondition(AlwaysFailure )

-----------------------------------���Ͳ���Ʒ
	DefineMission( 260, "���Ͳ���Ʒ", 237, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>���������ĺ���Ϣ��������Ʒ���������ˣ�<n><t>������Щ���������ҿ��ĵ������ˣ����治֪������θ�л�㰡��")
	MisResultCondition(NoRecord, 237 )
	MisResultCondition(HasMission, 237)
	MisResultCondition(HasItem, 3983, 15 )
	MisResultAction(TakeItem, 3983, 15 )
	MisResultAction(ClearMission, 237 )
	MisResultAction(SetRecord, 237 )
	MisResultAction(AddExp,2300,2300)
	MisResultAction(AddMoney,2900,2900)	
	MisResultAction(AddExpAndType,2,7000,7000)


----------------------------�¼�����
	DefineMission( 261, "�¼�����", 238 )
	
	MisBeginTalk( "<t>������ôһ˵���벻��������ĺͱ����������Щ��ϵ��<n><t>�Ҽǵñ�ԭ�ϣ�1141,575���Ƕ��и��о�Ա����<b������>������ѩԭ�ϵ����������о�������ͨ��������˹����վ�Ĵ�·�ߣ��ܿ�������ҵ����ġ�" )
	MisBeginCondition(NoRecord, 238)
	MisBeginCondition(HasRecord, 237)
	MisBeginCondition(NoMission, 238)
	MisBeginAction(AddMission, 238)
	MisCancelAction(ClearMission, 238)
		
	MisNeed(MIS_NEED_DESP, "�Ұ����ȣ�1141,575���˽�ѩԭ��������")
	
	MisHelpTalk("<b������>����ͨ��������˹����վ��·�ϡ�")
	MisResultCondition(AlwaysFailure )

-----------------------------------�¼�����
	DefineMission( 262, "�¼�����", 238, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>˵��������ʱ�ڵ�ѩԭ���ȷʵ��Щ���죬���ǵ������ƺ����Խ��Խ���ˣ�������Եģ�����Ҳ���Խ��Խ�������ˣ��������԰����ң������ҿ��Խ��и���һ���ĵ�����о���")
	MisResultCondition(NoRecord, 238 )
	MisResultCondition(HasMission, 238)
	MisResultAction(ClearMission, 238 )
	MisResultAction(SetRecord, 238 )
	MisResultAction(AddExp,2600,2600)
	MisResultAction(AddMoney,3000,3000)
	MisResultAction(AddExpAndType,2,7000,7000)


-------------------------------------------------ѩԭ����
	DefineMission( 263, "ѩԭ����", 239 )

	MisBeginTalk( "<t>����Ƭ��ԭ��½�ϣ����ˣ�1495,667��������ѩ�ˣ����м��ֱȽϵ��͵����飬���У�1746,530��������<b��Ƥѩ����>�ͣ�873,646��������<bѩŮ>��Ȼ����������Ҳ�Ѿ������ȥ�������ദ�ˣ�Ҳ��ĳ��Ӱ����ѩ�˵�����Ҳ������Ӱ�����������<n><t>������ȥҪ�������ȡ��һЩ��Ҫ���о���ֱ���5��<yѩ���޵ļ���ʯ>��5��<yѩŮ�ļ���ʯ>��5��<yѩ�˵ļ���ʯ>��<n><t>�о���Щ����ʯ���������˽⵽��Щ���������ʲô��Ѱ���ľ�����" )
	MisBeginCondition(NoRecord, 239)
	MisBeginCondition(HasRecord, 238)
	MisBeginCondition(NoMission, 239)
	MisBeginAction(AddMission, 239)
	MisBeginAction(AddTrigger, 2391, TE_GETITEM, 3984, 5 )		--ѩ���޵ļ���ʯ
	MisBeginAction(AddTrigger, 2392, TE_GETITEM, 4069, 5 )		--ѩŮ�ļ���ʯ
	MisBeginAction(AddTrigger, 2393, TE_GETITEM, 4070, 5 )		--ѩ�˵ļ���ʯ
	MisCancelAction(ClearMission, 239)

	MisNeed(MIS_NEED_ITEM, 3984, 5, 10, 5)
	MisNeed(MIS_NEED_ITEM, 4069, 5, 20, 5)
	MisNeed(MIS_NEED_ITEM, 4070, 5, 30, 5)

	MisResultTalk("<t>��Щ��������Ҫ��ȫ���о������ˣ����ҿ��������ޣ�<n><t>���Ƕ�ô��ֵ����󰡣���Щ����ʯ���Ҵ�û�����ġ���")
	MisHelpTalk("<t>���ռ����㹻�ļ���ʯ���𣿸Ͽ�ȥ�ɣ�������һ���ܰ쵽�ġ�")
	MisResultCondition(HasMission, 239 )
	MisResultCondition(HasItem, 3984, 5 )
	MisResultCondition(HasItem, 4069, 5 )
	MisResultCondition(HasItem, 4069, 5 )
	MisResultAction(TakeItem, 3984, 5 )
	MisResultAction(TakeItem, 4069, 5 )
	MisResultAction(TakeItem, 4070, 5 )
	MisResultAction(ClearMission, 239 )
	MisResultAction(SetRecord, 239 )
	MisResultAction(AddExp,3000,3000)
	MisResultAction(AddMoney,3000,3000)	
	MisResultAction(AddExpAndType,2,7000,7000)

	
	InitTrigger()
	TriggerCondition( 1, IsItem, 3984 )	
	TriggerAction( 1, AddNextFlag, 239, 10, 5 )
	RegCurTrigger( 2391 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4069 )	
	TriggerAction( 1, AddNextFlag, 239, 20, 5 )
	RegCurTrigger( 2392 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4070 )	
	TriggerAction( 1, AddNextFlag, 239, 30, 5 )
	RegCurTrigger( 2393 )

-------------------------------------------------Ѱ��ѩ����
	DefineMission( 264, "Ѱ��ѩ����", 240 )

	MisBeginTalk( "<t>�Ҷ���Щ����ʯ�����˷��������ּ����������Ҫ����ѩ���ܵ��˱Ƚϴ��Ӱ�죬����������ֻ����Ϊѩ�˵ı仯���е��������ˣ��ؼ�����Щѩ�ˣ����Ǳ�ñ���ǰ����֯���ˣ���˵����������һ�����죬ȥ�ҵ����ǵ����죬������������ʲô����<n><t>��Ȼ���ҿ��Կ϶����<rѩ����>һ�������ͨ��ѩ�˸�ǿ׳��Σ�գ����ǣ�����ܹ��õ�<yѩ�����ļ���ʯ>����һ�����Ը����Ҹ������Ϣ��" )
	MisBeginCondition(NoRecord, 240)
	MisBeginCondition(HasRecord, 239)
	MisBeginCondition(NoMission, 240)
	MisBeginAction(AddMission, 240)
	MisBeginAction(AddTrigger, 2401, TE_GETITEM, 4071, 1 )		--ѩ���޵ļ���ʯ
	MisCancelAction(ClearMission, 240)

	MisNeed(MIS_NEED_ITEM, 4071, 1, 10, 1)

	MisResultTalk("<t>�ۣ������ѩ�����ļ���ʯ�������Ǻ������ļ���ʯ�ܲ�һ�������Һúÿ������������Ȳ������ˡ�")
	MisHelpTalk("<t>���ɷ��ϣ�<rѩ����>һ����ʮ��Σ�յ�������ǣ���Ҳ��ȫ���������������������һ���ܹ�������ģ�")
	MisResultCondition(HasMission, 240 )
	MisResultCondition(HasItem, 4071, 1 )
	MisResultAction(TakeItem, 4071, 1 )
	MisResultAction(ClearMission, 240 )
	MisResultAction(SetRecord, 240 )
	MisResultAction(AddExp,16000,16000)
	MisResultAction(AddMoney,16000,16000)	
	MisResultAction(AddExpAndType,2,7000,7000)

	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4071 )	
	TriggerAction( 1, AddNextFlag, 240, 10, 1 )
	RegCurTrigger( 2401 )

----------------------------�����ǵ�����
	DefineMission( 265, "�����ǵ�����", 241 )
	
	MisBeginTalk( "<t>����ϸ���о����<yѩ�����ļ���ʯ>�����ܹ��϶���ԭ����ֻ��һֻ������ͨ��ѩ�ˣ���֪��������ʲô��ֵ�ʳ�������������ν��ͻ�䣬����˵�����Ѿ�����ѩ���ˣ����������������ԶԶ�ĸ���������ѩ�ˣ����ԲŻ��Ϊѩ��֮���ġ�<n><t>������һ����Կ϶����ǣ�����ʹѩ�˱����ʳ����Բ��ǲ��Ա��أ�����֮ǰ�ĵ���Ҳ��ʾ�����˱�ԭ��½�����ɴ�½�Լ�ħŮ֮����ɳᰳǶ������Ƶ��¼�������<n><t>�ǵ������ҵĵ�ʦ<b��Ϳɽ��>�����������������������ĺ��󱦲ػ���ĳ�ֵ�ʲô�Ķ��������˵��˾ͻ�õ����������������ʱ��ֻ����ĳ���񻯴�˵���ѣ����Ը���û�������ϡ�<n><t>���ڿ�������һ�����������ִ�˵�е�ʳ������ˡ�<n><t>�ҵĵ�ʦ��ס��<p������>�ڵģ�2272,2700�����������Ҫ��������Ļ�����ô����ȥ������ɡ�" )
	MisBeginCondition(NoRecord, 241 )
	MisBeginCondition(HasRecord, 240 )
	MisBeginCondition(NoMission, 241 )
	MisBeginAction(AddMission, 241 )
	MisCancelAction(ClearMission, 241 )
		
	MisNeed(MIS_NEED_DESP, "�����Ϳɽ�ˣ�2272,2700��̸̸�й�ѩ�˵�����")
	
	MisHelpTalk("<t><b��Ϳɽ��>��ס�ڰ����ǣ���Ȼ�Ǹ��Źֵ���ͷ����ֻҪ���ܹ�������ϲ��������һ���ᾡ��������ġ�")
	MisResultCondition(AlwaysFailure )

-----------------------------------�����ǵ�����
	DefineMission( 266, "�����ǵ�����", 241, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>�š���ɶ����Ϳɽ�ˡ����Ҳ���ʶ���������Ǹ���Ӣ������ͷ��������һ���ǵġ�")
	MisResultCondition(NoRecord, 241 )
	MisResultCondition(HasMission, 241)
	MisResultAction(ClearMission, 241 )
	MisResultAction(SetRecord, 241 )
	MisResultAction(AddExp,3200,3200)
	MisResultAction(AddMoney,3100,3100)	
	MisResultAction(AddExpAndType,2,9035,9035)



-------------------------------------------------��Ϳɽ��
	DefineMission( 267, "��Ϳɽ��", 242 )

	MisBeginTalk( "<t>ʲô�����ʳ���û��˵�������������Լ�˵�ģ�����ûӡ��Ŷ����<n><t>�������������һƿ�����ưɵ�С����<b����>���Ƶ�<yɽ��˱���>�Ļ����ٺ١���Ҳ���һ��ܼ�����һЩƤƤëë�ġ�" )
	MisBeginCondition(NoRecord, 242)
	MisBeginCondition(HasRecord, 241)
	MisBeginCondition(NoMission, 242)
	MisBeginAction(AddMission, 242)
	MisBeginAction(AddTrigger, 2421, TE_GETITEM, 4072, 1 )		--ѩ���޵ļ���ʯ
	MisCancelAction(ClearMission, 242)

	MisNeed(MIS_NEED_ITEM, 4072, 1, 10, 1)

	MisResultTalk("<t>��~����ľ�ζ������Ȼ���ǵ������Ƶ��������ҵ�θ�ڣ��ã��ã�")
	MisHelpTalk("<t>����Ҵ�����������<yɽ��˱���>Ŷ��")
	MisResultCondition(HasMission, 242 )
	MisResultCondition(HasItem, 4072, 1 )
	MisResultAction(TakeItem, 4072, 1 )
	MisResultAction(ClearMission, 242 )
	MisResultAction(SetRecord, 242 )
	MisResultAction(AddExp,7000,7000)
	MisResultAction(AddMoney,6000,6000)	
	MisResultAction(AddExpAndType,2,9035,9035)
		
	InitTrigger()
	TriggerCondition( 1, IsItem, 4072 )	
	TriggerAction( 1, AddNextFlag, 242, 10, 1 )
	RegCurTrigger( 2421 )

-----------------------------------��Ϳɽ��
	DefineMission( 268, "��Ϳɽ��", 242, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>��ҪҪ����ƿ��ԣ�����Ҫ�Ĳ��ϱ������Լ�����Ŷ��")
	MisResultCondition(NoRecord, 242 )
	MisResultCondition(HasMission, 242)
	MisResultCondition(NoFlag, 242, 1 )
	MisResultAction(SetFlag, 242, 1 )


-------------------------------------------------ɽ��˱���
	DefineMission( 269, "ɽ��˱���", 243 )

	MisBeginTalk( "<t>��<yɽ��˱���>�Ļ����������������ڣ�969,2587��������<r�ֹ�>������ҵ�<y�ֹ군>2�����ӣ�910,2971��������<rҰ��>�ǵõ�<yҰ���������>2�ݣ��ӣ�1414,2896����<r������>����õ�<y�����޵�����>2�����ڣ�1900,2643���Ŀ������ҵ�<r��Ѫ����>�㵽<y����Ľᾧ��ĩ>2����ô�����ܼ򵥰ɣ�������Щ�������Ұɡ�" )
	MisBeginCondition(NoRecord, 243)
	MisBeginCondition(HasMission, 242)
	MisBeginCondition(HasFlag, 242, 1)
	MisBeginCondition(NoMission, 243)
	MisBeginAction(AddMission, 243)
	MisBeginAction(AddTrigger, 2431, TE_GETITEM, 4073, 2 )		--�ֹ군
	MisBeginAction(AddTrigger, 2432, TE_GETITEM, 4074, 2 )		--Ұ���������
	MisBeginAction(AddTrigger, 2433, TE_GETITEM, 4075, 2 )		--�����޵�����
	MisBeginAction(AddTrigger, 2434, TE_GETITEM, 4076, 2 )		--����Ľᾧ��ĩ
	MisCancelAction(ClearMission, 243)

	MisNeed(MIS_NEED_ITEM, 4073, 2, 10, 2)
	MisNeed(MIS_NEED_ITEM, 4074, 2, 12, 2)
	MisNeed(MIS_NEED_ITEM, 4075, 2, 14, 2)
	MisNeed(MIS_NEED_ITEM, 4076, 2, 16, 2)


	MisResultTalk("<t>��û�뵽��������ܽ���Щ����ȫ���㵽���ˣ�<n><t>��������Щֻ�ǻ���ԭ�ϣ���Ҫ����þƿ�û��ô�򵥡�")
	MisHelpTalk("<t>��ô�ˣ������ռ������ǣ����Ҿ�����Ϊ���ˡ�")
	MisResultCondition(HasMission, 243 )
	MisResultCondition(HasItem, 4073, 2 )
	MisResultCondition(HasItem, 4074, 2 )
	MisResultCondition(HasItem, 4075, 2 )
	MisResultCondition(HasItem, 4076, 2 )
	MisResultAction(TakeItem, 4073, 2 )
	MisResultAction(TakeItem, 4074, 2 )
	MisResultAction(TakeItem, 4075, 2 )
	MisResultAction(TakeItem, 4076, 2 )
	MisResultAction(ClearMission, 243 )
	MisResultAction(SetRecord, 243 )
	MisResultAction(AddExp,3200,3200)
	MisResultAction(AddMoney,3100,3100)
	MisResultAction(AddExpAndType,2,9035,9035)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4073 )	
	TriggerAction( 1, AddNextFlag, 243, 10, 2 )
	RegCurTrigger( 2431 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4074 )	
	TriggerAction( 1, AddNextFlag, 243, 12, 2 )
	RegCurTrigger( 2432 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4075 )	
	TriggerAction( 1, AddNextFlag, 243, 14, 2 )
	RegCurTrigger( 2433 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4076 )	
	TriggerAction( 1, AddNextFlag, 243, 16, 2 )
	RegCurTrigger( 2434 )


----------------------------�������
	DefineMission( 270, "�������", 244 )
	
	MisBeginTalk( "<t>��Ȼ����ô�г��⣬��ô�Ҿ���͸¶һ�����Ϣ����ɡ�<n><t>������<b�̻�᳤>��ǰ������ӵ�й�һö��˵������Ĺ�ʵ��<n><t>���ŵĻ������ȥ���������Ǽһ��ڣ�2241,2748��" )
	MisBeginCondition(NoRecord, 244 )
	MisBeginCondition(HasRecord, 242 )
	MisBeginCondition(NoMission, 244 )
	MisBeginAction(AddMission, 244 )
	MisCancelAction(ClearMission, 244 )
		
	MisNeed(MIS_NEED_DESP, "���̻�᳤��2241,2748���˽����")
	
	MisHelpTalk("<t>�þơ����þƣ�")
	MisResultCondition(AlwaysFailure )

-----------------------------------�������
	DefineMission( 271, "�������", 244, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>����˵ʲô�����ֳ�֥���ù��ӵ�����˭���ǵã�ʲô�����Ǹ���Ϳ���������ʵģ����ȥ�������������������Լ����ʣ��ߣ�")
	MisResultCondition(NoRecord, 244 )
	MisResultCondition(HasMission, 244)
	MisResultAction(ClearMission, 244 )
	MisResultAction(SetRecord, 244 )
	MisResultAction(ObligeAcceptMission, 6 )
	MisResultAction(SystemNotice, "�������ѯ��δ����" )
	MisResultAction(AddExp,3500,3500)
	MisResultAction(AddMoney,3150,3150)
	MisResultAction(AddExpAndType,2,9035,9035)


----------------------------ѯ��δ��
	DefineMission( 272, "ѯ��δ��", 6 )
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>�����������ҵ����ˣ�����������Ǹ��һ�����������ˣ�����Ȼ��Ը�����ˣ���Ҫ����Ҫ������������취��")
	MisResultCondition(HasMission, 6 )
	MisResultAction(ClearMission, 6 )
	MisResultAction(SetRecord, 6 )
	MisResultAction(AddExp,1768,1768)
	MisResultAction(AddMoney,1565,1565)
	MisResultAction(AddExpAndType,2,9035,9035)


----------------------------�᳤�İѱ�
	DefineMission( 273, "�᳤�İѱ�", 246 )
	
	MisBeginTalk( "<t>Ҫ<b�̻�᳤>�Ǹ�����̺��������ǻ���Ҫץס���İѱ����ţ���Щ����Ҳ������˵��<n><t>�����ɣ���֪����2277,2831�������ٽ�������˹�ɣ�ȥ����̸̸��һ��������а�����" )
	MisBeginCondition(NoRecord, 246 )
	MisBeginCondition(HasRecord, 6 )
	MisBeginCondition(NoMission, 246 )
	MisBeginAction(AddMission, 246 )
	MisCancelAction(ClearMission, 246 )
		
	MisNeed(MIS_NEED_DESP, "�Һ����ٽ���2277,2831������")
	
	MisHelpTalk("<t>ȥ��ȥ�ɣ��������Ʒ�ơ�")
	MisResultCondition(AlwaysFailure )

-----------------------------------�᳤�İѱ�
	DefineMission( 274, "�᳤�İѱ�", 246, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>�����������Ǹ�����ͷ�������Լ������ˣ���Ҫ������ˮ���üһ<n><t>�����������������ϯ������ģ����ְ���Ҵ�æ���ȡ����ȣ���һ����ϣ�")
	MisResultCondition(NoRecord, 246 )
	MisResultCondition(HasMission, 246)
	MisResultAction(ClearMission, 246 )
	MisResultAction(SetRecord, 246 )
	MisResultAction(AddExp,3600,3600)
	MisResultAction(AddMoney,3100,3100)	
	MisResultAction(AddExpAndType,2,9035,9035)


-------------------------------------------------�Ͽ�̽��
	DefineMission( 275, "�Ͽ�̽��", 247 )

	MisBeginTalk( "<t>�Ҿ͸���һ����ʾ�ɡ����Ӱ��������ų�ȥ��һֱ�����ߣ��ܿ�����ҵ�һ���������������ߣ���ᷢ����һ���������Ŀ�����ڣ��Ǿ��Ǻܶ���ǰ������ķϿ�<n><t>����������ֵ��������<r�ཬ��>������ʲô���ԣ������ƺ�����ϵͳ�ֲ���ô�ã������ǰ����̻�ӡ�Ƶ�ĳ��ֽƬ�����Ǻ��������ģ�ȥ�����ҵ���Щ<y�ƾɵ�ֽƬ>��������һ������ץ���̻�᳤�İѱ���" )
	MisBeginCondition(NoRecord, 247)
	MisBeginCondition(HasRecord, 246)
	MisBeginCondition(NoMission, 247)
	MisBeginAction(AddMission, 247)
	MisBeginAction(AddTrigger, 2471, TE_GETITEM, 4081, 10 )		--�ƾɵ�ֽƬ
	MisCancelAction(ClearMission, 247)

	MisNeed(MIS_NEED_ITEM, 4081, 10, 10, 10)

	MisResultTalk("<t>�ԣ���ЩֽƬ������Ҫ��ȥ�ҵġ�<n><t>�������ǰ���ЩֽƬճ�������������浽��д��Щʲô��������")
	MisHelpTalk("<t>��ô��ûȥ������ס����Щ<y�ƾɵ�ֽƬ>һ������<r�ཬ��>�Ķ����")
	MisResultCondition(HasMission, 247 )
	MisResultCondition(HasItem, 4081, 10 )
	MisResultAction(TakeItem, 4081, 10 )
	MisResultAction(ClearMission, 247 )
	MisResultAction(SetRecord, 247 )
	MisResultAction(AddExp,4000,4000)
	MisResultAction(AddMoney,3200,3200)
	MisResultAction(AddExpAndType,2,9035,9035)

	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4081 )	
	TriggerAction( 1, AddNextFlag, 247, 10, 10 )
	RegCurTrigger( 2471 )

----------------------------ֽƬ������
	DefineMission( 276, "ֽƬ������", 248 )
	
	MisBeginTalk( "<t>������Ҳ�����ˣ���ЩֽƬ����һ��<y���ϵ�������>�����������ˣ�����<b�̻�᳤>����Ŷ��<n><t>��������ȥ��������<y������>���ܶ�����<n><t>���������һ��ȥ�������治֪���Ǽһ����һ��ʲô��ɫ����" )
	MisBeginCondition(NoRecord, 248 )
	MisBeginCondition(HasRecord, 247 )
	MisBeginCondition(NoMission, 248 )
	MisBeginAction(AddMission, 248 )
	MisBeginAction(GiveItem, 4082, 1, 4 )
	MisCancelAction(ClearMission, 248 )
	MisBeginBagNeed(1)
		
	MisNeed(MIS_NEED_DESP, "���Ź��ϵ�������ȥ���̻�᳤��2241,2748��")
	
	MisHelpTalk("<t>���������Ѿ��������Ǽһ�ı����ˣ����ȥ�ɣ�")
	MisResultCondition(AlwaysFailure )

-----------------------------------ֽƬ������
	DefineMission( 277, "ֽƬ������", 248, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>����ô�����ˣ������������������������ģ��㡭���㵽����Ҫ֪��ʲô��")
	MisResultCondition(NoRecord, 248 )
	MisResultCondition(HasMission, 248)
	MisResultCondition(HasItem, 4082, 1)
	MisResultAction(ClearMission, 248 )
	MisResultAction(SetRecord, 248 )
	MisResultAction(AddExp,4000,4000)
	MisResultAction(AddMoney,3200,3200)
	MisResultAction(AddExpAndType,2,9035,9035)


----------------------------���ܵľ���
	DefineMission( 278, "���ܵľ���", 249 )
	
	MisBeginTalk( "<t>�ðɺðɣ��Ҿ͸���˵һ�°ɡ������꣬��Զ����ңԶ����֮���������ﲶ����һֻ�����<r����>�������ִ�һ�����ص���������������ν�е�����ʳ�<n><t>��ʱ��Ϊ�˱��˶�Ŀ����װ������ʳ����������ķ����˹ؾ��޵������ԣ�������û�п����Ǹ����ﵽ����ʲô���ġ���û�뵽���ǣ����ҵĴ��ӵִ�����ۿ�ʼж��ʱ���Ǹ����ӱ����ˣ�������ע�⵽֮ǰ���Ǹ������ľ��޾�Ȼ������Ȼ����ֵ���ǵĴ���ʳ������ˣ�<n><t>Ȼ�������Ƿ���֮ǰ������Ȼ�����������ˣ�<n><t>������㵽�˳���������������������������Ŀ��ǣ�<n><t>�Ҳ��ò����������ϣ�������ܹ�ץס����һ���Ǿ�Ȼû��һ�������ĵ���<n><t>����£���Ҳ����ȥ���ʳ��ſڵģ�2192,2767��<b����>��������Ҳ�μ���׷����ֻ���޵��ж���һ��Ҳ�ǵõġ�" )
	MisBeginCondition(NoRecord, 249 )
	MisBeginCondition(HasRecord, 248 )
	MisBeginCondition(NoMission, 249 )
	MisBeginAction(AddMission, 249 )
	MisCancelAction(ClearMission, 249 )
		
	MisNeed(MIS_NEED_DESP, "�ұ��أ�2192,2767���˽���޵����")
	
	MisHelpTalk("<t><b����>���ڰ��������Ÿ���������ͷ�ܴ󣬺ܺ��ϵġ�")
	MisResultCondition(AlwaysFailure )

-----------------------------------���ܵľ���
	DefineMission( 279, "���ܵľ���", 249, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>�ۣ������ʷϿ������ֻ���µľ������Ǹ��һ���Ǻ�Σ�յģ����һ��ܴ����أ�<n><t>�ǵõ�������ȥΧ����ʱ��������ȥ���Ҳ����������Ǳ���ƭ������ת��")
	MisResultCondition(NoRecord, 249 )
	MisResultCondition(HasMission, 249)
	MisResultAction(ClearMission, 249 )
	MisResultAction(SetRecord, 249 )
	MisResultAction(AddExp,5000,5000)
	MisResultAction(AddMoney,1700,1700)	
	MisResultAction(AddExpAndType,2,9035,9035)




-------------------------------------------------���ϵ�������
	DefineMission( 280, "���ϵ�������", 250 )

	MisBeginTalk( "<t>��Ȼ���ҵ��������������ô��Ҳ����ʳ�ԣ�����������Ȼ��Ч��ֻҪ���ܸɵ��Ͽ����<r����>���������ϵ�<y����>������һ�����ֽ���<n><t>���������ҿ���Ҳû��������°ɣ�" )
	MisBeginCondition(NoRecord, 250)
	MisBeginCondition(HasRecord, 248)
	MisBeginCondition(NoMission, 250)
	MisBeginCondition(HasItem, 4082, 1)
	MisBeginAction(AddMission, 250)
	MisBeginAction(AddTrigger, 2501, TE_GETITEM, 4083, 1 )		--����x1
	MisCancelAction(ClearMission, 250)

	MisNeed(MIS_NEED_ITEM, 4083, 1, 10, 1)

	MisPrize(MIS_PRIZE_MONEY, 34464, 1)
	MisPrizeSelAll()

	MisResultTalk("<t>�찡�����ǲ����ˣ��㾹Ȼ��Ĵ�����ֻ���ޣ�<n><t>�����ðɺðɣ��һ�����ҵ�ŵ�Եģ���Ȼ���ۡ����������úã�������Ľ��ͣ�")
	MisHelpTalk("<t>��ô�ˣ�����ȥ�𣿹������ҵ�Ǯ�ɲ�����ô��׬��Ŷ��")
	MisResultCondition(HasMission, 250 )
	MisResultCondition(HasItem, 4083, 1 )
	MisResultCondition(HasItem, 4082, 1 )
	MisResultAction(TakeItem, 4083, 1 )
	MisResultAction(TakeItem, 4082, 1 )
	MisResultAction(ClearMission, 250 )
	MisResultAction(SetRecord, 250 )
	MisResultAction(AddExp,13245,13245)
	MisResultAction(AddExpAndType,2,9035,9035)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4083 )	
	TriggerAction( 1, AddNextFlag, 250, 10, 1 )
	RegCurTrigger( 2501 )

----------------------------���µĹ���
	DefineMission( 281, "���µĹ���", 251 )
	
	MisBeginTalk( "<t>˵����Ҳ����֣���������ƺ���ϲ��<b�����̡�����>����<y���Ƹ��>����ʱ������������˶����ڳ�<y���Ƹ��>ʱ�ܵ������Ĺ����������������ˣ����������ϵ�<y���Ƹ��>Ҳ�������ˡ�����������Ҳһ������" )
	MisBeginCondition(NoRecord, 251 )
	MisBeginCondition(HasRecord, 249 )
	MisBeginCondition(NoMission, 251 )
	MisBeginAction(AddMission, 251 )
	MisCancelAction(ClearMission, 251 )
		
	MisNeed(MIS_NEED_DESP, "�������̱��٣�2277,2769������")
	
	MisHelpTalk("<t>һ���𱴵����̵ĸ�㣬�ҵĶ��ӾͿ�ʼ���ˣ�Ҫ�����һ��й������������Ͼ�ȥ�ݷ�һ�������˼��ء�")
	MisResultCondition(AlwaysFailure )

-----------------------------------���µĹ���
	DefineMission( 282, "���µĹ���", 251, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>˵�����������ĸ�㻹�����ܻ�ӭ�أ����е��˶�ϲ���ԣ������ҳ������ܶ�ġ�<n><t>���Ŵ���Ҹ���Ʒ���ҵĸ�㣬�Ҿ;��õ����������һ������õ�Ӵ�����˶��ˣ���˵����ֻ���ڷϿ���Ŀ�������Ҳ��ϲ���ҵĸ���أ�")
	MisResultCondition(NoRecord, 251 )
	MisResultCondition(HasMission, 251)
	MisResultAction(ClearMission, 251 )
	MisResultAction(SetRecord, 251 )
	MisResultAction(AddExp,4000,4000)
	MisResultAction(AddMoney,2000,2000)	
	MisResultAction(AddExpAndType,2,9035,9035)


----------------------------�����̵ĸ��
	DefineMission( 283, "�����̵ĸ��", 252 )
	
	MisBeginTalk( "<t>��ѽ������ͺܿ�ϧ�ˣ���Ϊ���������С����<b�󹤴����>�����������ҽ������ĸ�㶼�����ˣ������������û�취�����ҵ������ˡ�<n><t>�����Ǹ�������θ����Ȼ�ã�����������ô�࣬һ�����������ϳ���ģ������ȥ���������Ļ���˵�������ϵ��ϡ�" )
	MisBeginCondition(NoRecord, 252 )
	MisBeginCondition(HasRecord, 251 )
	MisBeginCondition(NoMission, 252 )
	MisBeginAction(AddMission, 252 )
	MisCancelAction(ClearMission, 252 )
		
	MisNeed(MIS_NEED_DESP, "�ҿ󹤴���296,57��̸̸")
	
	MisHelpTalk("<t>�����ĸ����ǺܺóԵ�ร����ȥ���ˣ�˵����<b�����>�ͳ����ˡ�")
	MisResultCondition(AlwaysFailure )

-----------------------------------�����̵ĸ��
	DefineMission( 284, "�����̵ĸ��", 252, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>��ѽ��������Ҫ�����������ø��ģ�̫��ϧ�ˣ��Ѿ�û���ˡ������Ҷ�û�гԵ������ء���")
	MisResultCondition(NoRecord, 252 )
	MisResultCondition(HasMission, 252)
	MisResultAction(ClearMission, 252 )
	MisResultAction(SetRecord, 252 )
	MisResultAction(AddExp,4000,4000)
	MisResultAction(AddMoney,2000,2000)
	MisResultAction(AddExpAndType,2,9035,9035)


-------------------------------------------------�����ߵı㵱
	DefineMission( 285, "�����ߵı㵱", 253 )

	MisBeginTalk( "<t>���챾�����Ǹ����ĵ����ӣ�����������������ô�����Ƹ�㣬�Ҵ���װ��Щ�ɰ��Ĳ�ݮ���ı㵱�и߸����˵����ϰ࣬˭֪������һת�۵Ĺ����ҵı㵱�б�͵�ˣ�<n><t>��һֻ<r��������>���ҿ����ˣ��������Ѿ��ӵ��Ͽ���ȥ�ˣ��Ǹ��ط�̫�ֲ��ˣ��Ҳ���ȥ��<n><t>�������Ұɣ����ҵı㵱�ж��������Ȼ���������ɻ��������û�ˡ�����������ļһﾭ����û�ڣ�229,28��һ��" )
	MisBeginCondition(HasRecord, 252)
	MisBeginCondition(NoMission, 253)
	MisBeginCondition(NoRecord, 250)
	MisBeginCondition(NoRecord, 253)  --��ʱ�����ظ���
	MisBeginCondition(NoMission, 4)
	MisBeginAction(AddMission, 253)
	MisBeginAction(AddTrigger, 2531, TE_GETITEM, 4084, 1 )		--�㵱x1
	MisCancelAction(ClearMission, 253)

	MisNeed(MIS_NEED_ITEM, 4084, 1, 10, 1)

	MisPrize(MIS_PRIZE_ITEM, 3917, 1, 4)
	MisPrizeSelAll()

	MisResultTalk("<t>��~�������ҵĴ���˰���<n><t>�ҵı㵱���ҵı㵱����������û�о����Ҹ����ˣ����̫���ˣ�<n><t>�������<y��ݮ����>���㣡��ס��ǧ���<p�Ͽ����>ȥ�ԣ��ر�������ĳ�������ˣ��и�����ȥ��ʲô����ĳ�Ѩһ���ĵط�����˵ֻҪ������ԺóԵĸ�㣬�ͻᱻ�ֲ��Ĺ���Ϯ���ģ�����")
	MisHelpTalk("<t>��������������ǲ��Ǳ����Щ���ˣ�������̫�����ˡ����ҵı㵱������")
	MisResultCondition(HasMission, 253 )
	MisResultCondition(HasItem, 4084, 1 )
	MisResultAction(TakeItem, 4084, 1 )
	MisResultAction(ClearMission, 253 )
	MisResultAction(SetRecord, 253 )
	MisResultAction(ObligeAcceptMission, 4 )
	MisResultAction(AddTrigger, 109, TE_KILL, 99, 1 )
	--MisResultAction(AddTrigger, 108, TE_GAMETIME, TT_MULTITIME, 60, 1 )
	MisResultAction(AddExp,4500,4500)
	MisResultAction(AddMoney,2000,2000)
	MisResultAction(AddExpAndType,2,9035,9035)
	MisResultBagNeed(1)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4084 )	
	TriggerAction( 1, AddNextFlag, 253, 10, 1 )
	RegCurTrigger( 2531 )
	InitTrigger()
	TriggerCondition( 1, NoMisssionFailure, 4 )
	TriggerCondition( 1, IsMonster, 99 )
	TriggerAction( 1, AddNextFlag, 4, 10, 1 )
	RegCurTrigger( 109 )
	--InitTrigger()
	--TriggerCondition( 1, NoFlag, 4, 10 )
	--TriggerAction( 1, SystemNotice, "����ʱ���ʱ�ѵ������վ�������ʧ�ܣ�" )
	--TriggerAction( 1, SetMissionFailure, 4 )
	--RegCurTrigger( 108 )

-------------------------------------------------���ϲ���վ
	DefineMission( 286, "���ϲ���վ", 254 )

	MisBeginTalk( "<t>���꣬���齨��һ֧ǿ����̴��ӣ��������ﵺð�գ����������Ƿ�����һ�������������������ǷϿ�����Ǹ���������������ذ�����չ���Ļ���һ�����ܸ��Ҵ�����С�ĲƸ���<n><t>�ڻغ���·�ϣ��ҵĴ��Ӿ���һ��СС�ĺ��ϲ���վ���ţ��Ǹ�����վ�������<pT9����վ>�������������һ���ˣ����Գ��Լ���<b����³������>��ְҵ���򵼡�<n><t>�����Ҷ���һ�����ص���Ʒ������˵�Ǿ��ǵ��꺽��ʷ�ϵĴ�������<b��������ɭ>����ʳ�ú������������ʳ����õ��˻�ӵ�����������������ĳƺ�������û˵����Ϊ��ʱ��Ҳ���Ǻ��������Ļ�����������ʱ�����������ж����ʮ�����ң����Ծ�������������<n><t>�������£���Ҳ�Ѿ�֪���ˣ������������Ҫ�˽���Щ�����Ժ����������������ʳ������飬�ͱ������Ǹ��Ǹ�<b����³������>��������Ҳ�����ҵ�T9����վ���ٺ٣����ˣ�ȥ<p������ͷ>�ģ�2243,2826����������ĺ���ָ�ӡ�ѩ�����ʰɡ�" )
	MisBeginCondition(NoRecord, 254)
	MisBeginCondition(HasRecord, 250)
	MisBeginCondition(NoMission, 254)
	MisBeginAction(AddMission, 254)
	MisCancelAction(ClearMission, 254)

	MisNeed(MIS_NEED_DESP, "�򺣸�ָ�ӡ�ѩ��2243,2826��ѯ��<pT9����վ>��λ�á�")

	MisHelpTalk("<t>�Ҹ�����ģ��Ѿ��Ǻܾ���ǰ�����ˣ��ҿɲ��϶��Ǹ�<b����³������>�ǲ��ǻ���<pT9���ϲ���վ>���")
	MisResultCondition(AlwaysFailure )

-------------------------------------------------ɽ��˱���
	DefineMission( 288, "ɽ��˱���", 255 )

	MisBeginTalk( "<t>����<yɽ��˱���>����Ҫ����������Ҫ���ϣ��ӣ�1655,2563��������<r����è>�ǵõ����ռ���<y��Ҷ�ϵ�¶��>2�ݣ��ӣ�1817,2472��������<r���鱴>�ǵõ�<y���յ������>2�ݣ��ٴӣ�1624,3017��������<r��˽��>����㵽<y��˽����>2�ݣ�����ٴӣ�1161,2639��������<r��������>����Ū��<y�����˽��>3�ݾͺ��ˣ���Щ��������Ĺؼ���" )
	MisBeginCondition(NoRecord, 255)
	MisBeginCondition(HasRecord, 243)
	MisBeginCondition(HasMission, 242)
	MisBeginCondition(NoMission, 255)
	MisBeginAction(AddMission, 255)
	MisBeginAction(AddTrigger, 2551, TE_GETITEM, 4077, 2 )		--��Ҷ�ϵ�¶��
	MisBeginAction(AddTrigger, 2552, TE_GETITEM, 4078, 2 )		--���յ������
	MisBeginAction(AddTrigger, 2553, TE_GETITEM, 4079, 2 )		--��˽����
	MisBeginAction(AddTrigger, 2554, TE_GETITEM, 4080, 3 )		--�����˽��
	MisCancelAction(ClearMission, 255)

	MisNeed(MIS_NEED_ITEM, 4077, 2, 18, 2)
	MisNeed(MIS_NEED_ITEM, 4078, 2, 20, 2)
	MisNeed(MIS_NEED_ITEM, 4079, 2, 22, 2)
	MisNeed(MIS_NEED_ITEM, 4080, 3, 24, 3)

	MisPrize(MIS_PRIZE_ITEM, 4072, 1, 4)
	MisPrizeSelAll()

	MisResultTalk("<t>��û�뵽��������ܽ���Щ����ȫ���㵽���ˣ�<n><t>�ðɣ������Ҿ�¶һ�ָ��㿴�����ҵĵ��ƹ������һ����Ŷ��")
	MisHelpTalk("<t>��ô�ˣ������ռ������ǣ����Ҿ�����Ϊ���ˡ�")
	MisResultCondition(HasMission, 255 )
	MisResultCondition(HasItem, 4077, 2 )
	MisResultCondition(HasItem, 4078, 2 )
	MisResultCondition(HasItem, 4079, 2 )
	MisResultCondition(HasItem, 4080, 3 )
	MisResultAction(TakeItem, 4077, 2 )
	MisResultAction(TakeItem, 4078, 2 )
	MisResultAction(TakeItem, 4079, 2 )
	MisResultAction(TakeItem, 4080, 3 )
	MisResultAction(ClearMission, 255 )
	MisResultAction(SetRecord, 255 )
	MisResultAction(AddExp,1595,1595)
	MisResultAction(AddMoney,1538,1538)
	MisResultAction(AddExpAndType,2,9035,9035)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4077 )	
	TriggerAction( 1, AddNextFlag, 255, 18, 2 )
	RegCurTrigger( 2551 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4078 )	
	TriggerAction( 1, AddNextFlag, 255, 20, 2 )
	RegCurTrigger( 2552 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4079 )	
	TriggerAction( 1, AddNextFlag, 255, 22, 2 )
	RegCurTrigger( 2553 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4080 )	
	TriggerAction( 1, AddNextFlag, 255, 24, 3 )
	RegCurTrigger( 2554 )

-----------------------------------���ϲ���վ
	DefineMission( 289, "���ϲ���վ", 254, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>�ף�T9����վ���ҵ�����ָ��Ҳ�ü����ˣ����Ǵ���Ҳû����˵���������վ�����Բ��𣬿������ǰﲻ�����ˡ�")
	MisResultCondition(NoRecord, 254 )
	MisResultCondition(HasMission, 254)
	MisResultAction(ClearMission, 254 )
	MisResultAction(SetRecord, 254 )
	MisResultAction(AddExp,5000,5000)	
	MisResultAction(AddMoney,2000,2000)	
	MisResultAction(AddExpAndType,2,26625,26625)


-------------------------------------------------���߻��ͼ
	DefineMission( 290, "���߻��ͼ", 256 )

	MisBeginTalk( "<t>��Ȼ�Ҳ�֪������Ҳ����˻�֪���ġ�<n><t>������֪���ϵĲ���վ�кö������⵽��������Ϯ�������ݻ٣������ؽ���ʱ�������������<n><t>�ǵ����ڰ�������ѧԺ���޵�ʱ��������ʦ˵��<p���¶�����վ>����һλ����Ϊ��<r���߻��ͼ>���ĺ���ָ�ӣ����ֺ���С����������ߡ����ˣ�<n><t>�ԣ����ǽ���<b�Ͱ�>��Ҳ������Ե�ȥ�������ʣ��������Ϸ��ձȽϴ����Ҫ������׼����<n><t>���ˣ����������Ǹ�����վ�����꣬Ӧ������ħŮ֮���ģ�2024,2752����������������Ҳ�ﲻ�����ˣ�ף����ˣ�" )
	MisBeginCondition(NoRecord, 256)
	MisBeginCondition(HasRecord, 254)
	MisBeginCondition(NoMission, 256)
	MisBeginAction(AddMission, 256)
	MisCancelAction(ClearMission, 256)

	MisNeed(MIS_NEED_DESP, "��<p���¶�����վ>��<b����ָ�ӡ��Ͱ�>��2024,2752��ѯ��<pT9����վ>��λ�á�")

	MisHelpTalk("<t>���ϵķ������Ǻܴ�ģ�Ҫ�������˵Ļ����������ȫ��׼����<n><t>��ֻҪ����ã�����Ҫ���㣬����Ҫע�ⲻҪ��ʧ�������ʹ���״�Ļ��ͻ�ȽϷ��㣬��ǧ��ǵò�Ҫѡ���½Ŷ��")
	MisResultCondition(AlwaysFailure )

-----------------------------------���߻��ͼ
	DefineMission( 291, "���߻��ͼ", 256, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>�ţ�����˭������ô֪��T9����վ������֣��ҿɲ���ʲô�����ˣ�Ҳ�������Ͱ�һЩ��Ҫ��Ϣ���߲��ɿ����ˣ�")
	MisResultCondition(NoRecord, 256 )
	MisResultCondition(HasMission, 256)
	MisResultAction(ClearMission, 256 )
	MisResultAction(SetRecord, 256 )
	MisResultAction(AddExp,2649,2649)
	MisResultAction(AddMoney,1680,1680)
	MisResultAction(AddExpAndType,2,26625,26625)


-------------------------------------------------��սˮĸ
	DefineMission( 292, "��սˮĸ", 257 )

	MisBeginTalk( "<t>�����Ҫ��������֪��ʲô��Ϣ�Ļ�����ȻҲҪ��Щ��ʾ�԰ɡ�<n><t>Ҳ���㲻֪���������ҳ��ˡ����߻��ͼ���ĳƺ��⣬����һ���������Ĵºţ����ǡ������ë����<n><t>��Ȼ����Ҳ����̫���ţ���Ҳ�����Ϊ���㣬�����һ����һʱ�벻��T9����վ�����������ˡ�<n><t>Ҳ������Ϊ����������ڲ����Լ�����״���Ĺ�ϵ��<n><t>�š���ÿ�������岻�ʵ�ʱ�򣬾ͻ�ʲôҲ�Բ��£�Ψһ��Եģ���ֻ����<y����ˮĸ����>�����ĺ��ʸ��������ɣ�����Ҹ�15��������ʱҲ���Ҿ��������ˡ�<n><t>��Щˮĸ�ܺ��ҵģ������������վ��������ȥ��ذ���" )
	MisBeginCondition(NoRecord, 257)
	MisBeginCondition(HasRecord, 256)
	MisBeginCondition(NoMission, 257)
	MisBeginAction(AddMission, 257)
	MisBeginAction(AddTrigger, 2571, TE_GETITEM, 4140, 15 )		--��Ҷ�ϵ�¶��
	MisCancelAction(ClearMission, 257)

	MisNeed(MIS_NEED_DESP, "��<p���¶�����վ>�İͰ£�2024,2752��������15��<y����ˮĸ����>��")
	MisNeed(MIS_NEED_ITEM, 4140, 15, 10, 15)

	MisResultTalk("<t>�ϡ����㲻�����ô��Ͱ쵽�ˣ��ţ��������Ǻ���֪���Ǹ�ʲôʲô����վ��������ͺ���ͺá���")
	MisHelpTalk("<t>���û����Ŷ����ô���һ�û�а�����Ҫ�Ķ��������������㣬�ҵĿڷ���Ǻ��ϵģ�")
	MisResultCondition(HasMission, 257 )
	MisResultCondition(HasItem, 4140, 15 )
	MisResultAction(TakeItem, 4140, 15 )
	MisResultAction(ClearMission, 257 )
	MisResultAction(SetRecord, 257 )
	MisResultAction(AddExp,5848,5848)
	MisResultAction(AddMoney,3422,3422)	
	MisResultAction(AddExpAndType,2,26625,26625)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4140 )	
	TriggerAction( 1, AddNextFlag, 257, 10, 15 )
	RegCurTrigger( 2571 )

-------------------------------------------------�ܴ�
	DefineMission( 293, "�ܴ�", 258 )

	MisBeginTalk( "<t>������ô�г��⣬����Ҳ���ܶ���̫�����ˣ������ҾͲ��������ˣ�ֻҪ�������Ұ�һ���£��Ҿ͸��߽�����Ҫ֪����ʵ������㣬��ô�����һ��Ǻ�ͨ�����İɣ�<n><t>���㲻������һ������ͬ���ˣ����Ҫ�����ºܼ�Ŷ���㿴���������������������˵�������½�ı�����ͷ��<n><t>�ٺ١���Զ��Զ�˵㣬������ֵ�ã��Բ��ԣ�<n><t>Ҫ������·���죬Ҳ��������ȥ�ģ�" )
	MisBeginCondition(NoRecord, 258)
	MisBeginCondition(HasRecord, 257)
	MisBeginCondition(NoMission, 258)
	MisBeginAction(AddMission, 258)
	MisBeginAction(GiveItem, 4141, 1, 4)
	MisCancelAction(ClearMission, 258)
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "��<y�ͰµĻ���>����������ͷ��<b����ָ�ӡ�ϯ��>��1214,681��")

	MisHelpTalk("<t>ιι������ô��û����������Ѿ��ѻ��ﶼ��ȥ�ˣ��ɲ��ܷ���Ŷ��")
	MisResultCondition(AlwaysFailure )

-----------------------------------�ܴ�
	DefineMission( 294, "�ܴ�", 258, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>���Ǹ��Ͱ��ͻ��İɣ����Ŀ����������Ͱµ��Ѿ���һ�������촬�������ˣ��ҿɵ��˲���ʱ���ء�<n><t>������·�������鷳�˰ɣ�������Ͽɲ�̫ƽŶ��<n><t>���ˣ����⻹�з�<y�Ͱµ���>Ҫ�����㣬��һ�����Լ�����")
	MisResultCondition(NoRecord, 258 )
	MisResultCondition(HasMission, 258)
	MisResultCondition(HasItem, 4141, 1)
	MisResultAction(TakeItem, 4141, 1 )
	MisResultAction(ClearMission, 258 )
	MisResultAction(SetRecord, 258 )
	MisResultAction(AddExp,2924,2924)	
	MisResultAction(AddMoney,1711,1711)	
	MisResultAction(AddExpAndType,2,26625,26625)


-------------------------------------------------�����ֵ�
	DefineMission( 295, "�����ֵ�", 259 )

	MisBeginTalk( "<t>�ɰ���������<n><t>����㿴��������ţ�˵������ĺ��г���İ��Ұѻ����͵��ˡ�<n><t>��ô��Ҫ����˵��<n><t>�ܱ�Ǹ������ƭ���㣬�Ҳ������Ǹ���˵�е�<r���߻��ͼ>����Ȼ����ȷʵ�ǡ������ë����������<n><t>������Ҳ����������ʵ��Ҳȷʵ֪��˭�������ġ����߻��ͼ������Ϊ�Ǹ��˾����ҵ��ֵܣ������ֵܣ����Ժܶ��˶����Ҵ������ˡ�<n><t>������Ȼ������ô���г��⣬��Ҳ���������ƭ�㣬�����Ҹ����㣬�ҵ��ֵ�����ס��<b���Ǳ�>�ģ�1320,585�����������ֽ���<b³����>�������ҵ���ȥ��������һ������ܾ��ġ�<n><t>���ܺ��ҵģ���Ϊ�����ú���һ������" )
	MisBeginCondition(NoRecord, 259)
	MisBeginCondition(HasRecord, 258)
	MisBeginCondition(NoMission, 259)
	MisBeginAction(AddMission, 259)
	MisBeginAction(GiveItem, 4142, 1, 4)
	MisBeginBagNeed(1)
	MisCancelAction(ClearMission, 259)

	MisNeed(MIS_NEED_DESP, "����<y�Ͱµ���>ȥ�ͱ��Ǳ���<b³����>��1320.585��̸̸��")

	MisHelpTalk("<t>�����Ѿ��͵��ˣ�����Ҳ�õ��ˣ���ûʲô���԰�����ˡ�")
	MisResultCondition(AlwaysFailure )

-----------------------------------�����ֵ�
	DefineMission( 296, "�����ֵ�", 259, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Ŷ�������ҵܵܵ��ţ�����������һ���ܺ��ߡ�<n><t>������һ��������������Ҫ��ð����׽Ū���ˣ�����ϣ����Ҳ��Ҫ�������Ͱ�ֻ��ϲ����������ѣ���û�ж���ġ�")
	MisResultCondition(NoRecord, 259 )
	MisResultCondition(HasMission, 259)
	MisResultCondition(HasItem, 4142, 1)
	MisResultAction(TakeItem, 4142, 1 )
	MisResultAction(ClearMission, 259 )
	MisResultAction(SetRecord, 259 )
	MisResultAction(AddExp,3225,3225)	
	MisResultAction(AddMoney,1742,1742)	
	MisResultAction(AddExpAndType,2,26625,26625)


-------------------------------------------------׼���
	DefineMission( 297, "׼���", 260 )

	MisBeginTalk( "<t>��Ȼ��֪����ν�ġ�T9����վ��������ʲô�ط���������������ڸ����㣬��һ���ἱ�ŸϹ�ȥ�ġ�<n><t>�����Ǹ��ط��鲼��Σ�գ����ԣ���ϣ����ӵ���㹻���Ա�������<n><t>�����ɣ�����������ĵĻ�����ϣ�����ܹ�������׼�����<n><t>�����ݴ��ӱ�����ͷ������һֱ�򶫺��У�����������ʳ����ĵ��̺�����򶫣�ֱ���㵽�����������û�ĺ���<n><t>ɱ����Щ�����㣬���Ҵ�12��<y���������Ƭ>�����������Ļ����ܸ�������һ���������Ʒ��")
	MisBeginCondition(NoRecord, 260)
	MisBeginCondition(HasRecord, 259)
	MisBeginCondition(NoMission, 260)
	MisBeginAction(AddMission, 260)
	MisBeginAction(AddTrigger, 2601, TE_GETITEM, 4143, 12)		
	MisCancelAction(ClearMission, 260)

	MisNeed(MIS_NEED_DESP, "����12��<y���������Ƭ>�������Ǳ���³������1320.585����")
	MisNeed(MIS_NEED_ITEM, 4143, 12, 10, 12)

	MisResultTalk("<t>������ɹ��ˣ�ף���㣡<n><t>�����������������������Ƭ������<r���۽�ָ>�ɣ�������ö��ָ���ˣ��ܹ����׵ĸ��ܵ���������Ī���������")
	MisHelpTalk("<t>����㻹û��׼���ã�Ҳ���ü��ų������Ͼ��ں��ϻ��ǰ�ȫ����Ҫ��")
	MisResultCondition(HasMission, 260 )
	MisResultCondition(HasItem, 4143, 12 )
	MisResultAction(TakeItem, 4143, 12 )
	MisResultAction(GiveItem, 4144, 1, 4 )
	MisResultAction(ClearMission, 260 )
	MisResultAction(SetRecord, 260 )
	MisResultAction(AddExp,7110,7110)	
	MisResultAction(AddMoney,3548,3548)	
	MisResultAction(AddExpAndType,2,26625,26625)
	MisResultBagNeed(1)

	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4143 )	
	TriggerAction( 1, AddNextFlag, 260, 10, 12 )
	RegCurTrigger( 2601 )

-------------------------------------------------ף��֮��
	DefineMission( 298, "ף��֮��", 261 )

	MisBeginTalk( "<t>�š�����������ö���۽�ָ��Ȼ�ܹ����ܵ��󺣵�������������Ҫ�ܹ�����ʹ�õ���������ȴ��Ҫ���������ֶβ����������������������ڻ����������<n><t>�ӱ��Ǳ������ߣ����������ش��������ܵ���<b��������վ>��������λ<b��������ʦ>��ӵ����������������˵���Ǳ������ִ���������Ʒ������̥���ǳ�Ϊӵ����Ȼ֮���ļ�Ʒ��ȥ�ɣ��������˴�ʦ��ף�����������Ұɡ�" )
	MisBeginCondition(NoRecord, 261)
	MisBeginCondition(NoMission, 261)
	MisBeginCondition(HasRecord, 260)
	MisBeginAction(AddMission, 261)
	MisCancelAction(ClearMission, 261)

	MisNeed(MIS_NEED_DESP, "����<y���۽�ָ>ǰ��<b��������վ>����<b��������ʦ>��2664,654����ף����")

	MisHelpTalk("<t>��Ľ�ָ������û�б�������������ȥ�ɣ��ҵ���������ʦ����ȥ�ɡ�")
	MisResultCondition(AlwaysFailure )

-----------------------------------ף��֮��
	DefineMission( 299, "ף��֮��", 261, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>�����ð���ߣ�������Ѱ��ָ�����𣿻��ǽ���Ϊ��һö��ָ��������Σ����ҵ����ˡ�")
	MisResultCondition(NoRecord, 261)
	MisResultCondition(HasMission, 261)
	MisResultAction(ClearMission, 261 )
	MisResultAction(SetRecord, 261 )
	MisResultAction(AddExp,3916,3916)
	MisResultAction(AddMoney,1807,1807)
	MisResultAction(AddExpAndType,2,26625,26625)


-------------------------------------------------��������
	DefineMission( 300, "��������", 262 )

	MisBeginTalk( "<t>�ܶ��˶�����Ҫ����Ϊ���ǵ���Ʒף����������ʵ�ϣ�ֻ�к��ٵļ�������Ը�Գ��ˣ�������Ϊ��������ֻ������������������ʲô���칦�ܣ�������Ʒ�����ߵ���������ʹȻ��<n><t>�������ܹ������ɹ��ģ���ô�Ǹ���Ʒ�ĳ�����һ��ӵ��һ�ż�ǿ�����顣<n><t>�������Ϊ�Լ�ͬ��ӵ��һ�ż�ǿ���ĵĻ�����֤�����ҿ���<n><t>�����Ӫ��վ������Զ�ĵط�����2746,450���������Ŵ����Ĳ��𹭼��֣������е�һ������ǰ�����Ǳ����������������֣�����������Ĳ��������ص����������ƣ����ڳ�Ϊ�˿��µ���ʬ���⡣<n><t>������ܹ���������Ҳ�����ʹ��������ð�����ͬʱ��Ҳ��֤����ȷʵӵ��һ����ǿ���ģ�ȥ�ɣ�ֻҪ�ܹ�����һСƬ�����Ĺ�ԡ��Ϳ����ˡ�")
	MisBeginCondition(NoRecord, 262)
	MisBeginCondition(HasRecord, 261)
	MisBeginCondition(NoMission, 262)
	MisBeginAction(AddMission, 262)
	MisBeginAction(AddTrigger, 2621, TE_GETITEM, 4145, 1)		
	MisCancelAction(ClearMission, 262)

	MisNeed(MIS_NEED_DESP, "����һƬ�����Ĺ�ԡ�����������վ�Ŀ�������2664,654����")
	MisNeed(MIS_NEED_ITEM, 4145, 1, 10, 1)

	MisResultTalk("<t>�������ˣ������������ӵ��һ�ż�ǿ�����顣<n><t>�����ҿ���Ϊ��Ľ�ָ�����ˣ��������ܹ���Զ����ס��żᶨ���ġ�")
	MisHelpTalk("<t>����мᶨ�����飬��ô�������Ҳ����ǿ����������ʲô���ۣ������㶼����������")
	MisResultCondition(HasMission, 262 )
	MisResultCondition(HasItem, 4144, 1 )
	MisResultCondition(HasItem, 4145, 1 )
	MisResultAction(TakeItem, 4145, 1 )
	MisResultAction(TakeItem, 4144, 1 )
	MisResultAction(GiveItem, 4146, 1 , 4)
	MisResultAction(ClearMission, 262 )
	MisResultAction(SetRecord, 262 )
	MisResultAction(SystemNotice, "������񡰷��ر��ǡ�" )
	MisResultAction(ObligeAcceptMission, 7 )
	MisResultAction(AddExp,8620,8620)	
	MisResultAction(AddMoney,3682,3682)	
	MisResultAction(AddExpAndType,2,26625,26625)
	MisResultBagNeed(1)

		
	InitTrigger()
	TriggerCondition( 1, IsItem, 4145 )	
	TriggerAction( 1, AddNextFlag, 262, 10, 1 )
	RegCurTrigger( 2621 )

-----------------------------------���ر���
	DefineMission( 302, "���ر���", 7, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>�𾴵����ѣ���֪����õ���ף���ˡ�<n><t>������ȷʵ֤�����Լ���ʵ����ͬʱ������Ҳ׼�����ˡ�")
	MisResultCondition(NoRecord, 7 )
	MisResultCondition(HasMission, 7)
	MisResultAction(ClearMission, 7 )
	MisResultAction(SetRecord, 7 )
	MisResultAction(AddExp,5211,5211)	
	MisResultAction(AddMoney,1910,1910)	
	MisResultAction(AddExpAndType,2,26625,26625)



-------------------------------------------------ǰ��t9
	DefineMission( 303, "ǰ��t9", 264 )

	MisBeginTalk( "<t>����˵��T9����վ��ʵ���Ѿ��������ˣ���10��ǰ��һ�Ӻ���Ϯ���������ʱ��һ���ܺ����������̴��������ﲹ�������Ա����˼��ҵĺ�ս��ս���Ľ���Ժ���ȫ����û���գ�T9����վҲ��Ϊ�ܵ����������ݻ١�<n><t>������Ȼ�ؽ��ˣ������Ѿ�������<y�����ﲹ��վ>�ˣ���Ϊ���Ѿ���10��ǰ�����ˣ����Լ���û�˻��ǵ�T9����վ��������ˡ�<n><t>�����Ҫȥ����Ļ���ǧ��С�ģ������Ǻ����ĵ��̡�<n><t>�������������ħŮ֮����2042��635������������ܰ�ȫ��������Ļ�������������ģ�2042,635���ҵ�����ָ��<b����ָ�ӡ���Ŧ>�����������ġ�" )
	MisBeginCondition(NoRecord, 264)
	MisBeginCondition(HasRecord, 7)
	MisBeginCondition(NoMission, 264)
	MisBeginAction(AddMission, 264)
	MisCancelAction(ClearMission, 264)

	MisNeed(MIS_NEED_DESP, "ǰ��ħŮ֮����<y�����ﲹ��վ>ͬ<b����ָ�ӡ���Ŧ>��2042,635��̸̸��")

	MisHelpTalk("<t>����Ϊ���������Щͬ��һ�������Ƚϰ�ȫ��")
	MisResultCondition(AlwaysFailure )

-----------------------------------ǰ��t9
	DefineMission( 304, "ǰ��t9", 264, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Ŷ���벻�����Ȼ����Ѱ��T9����վ�ģ��������10��ǰ��T9����վ����")
	MisResultCondition(NoRecord, 264 )
	MisResultCondition(HasMission, 264)
	MisResultAction(ClearMission, 264 )
	MisResultAction(SetRecord, 264 )
	MisResultAction(AddExp,12572,12572)
	MisResultAction(AddMoney,3966,3966)	
	MisResultAction(AddExpAndType,2,26625,26625)


-------------------------------------------------ǰ��t9
	DefineMission( 305, "˭�ǰ���³", 265 )

	MisBeginTalk( "<t>��Ȼ���������ǰ��T9����վ�����ǣ�����T9��ʱ�Ǳ������Ǵݻٵģ�����ֱ�����ں����ǻ��ǳ��������ĺ����û������ԭ����������˶��뿪�ˣ������������Ҳ�Ǿ������������ߣ�ֻ���Һͺ����ǻ����ˣ�����ûʲô���µġ�<n><t>������Ҳ�ǲ���վ�ؽ��Ժ�����ģ������Ҳ�֪���а���³����ˡ�<n><t>�������������վ����ı�ѩ���ϵģ�2362,657���и�����<r������>���Ϻ������Ҽǵ���˵���ܶ���ǰ��ס�����������ˣ�˵������֪�����㵹�ǿ���ȥ���ʿ���" )
	MisBeginCondition(NoRecord, 265)
	MisBeginCondition(HasRecord, 264)
	MisBeginCondition(NoMission, 265)
	MisBeginAction(AddMission, 265)
	MisCancelAction(ClearMission, 265)

	MisNeed(MIS_NEED_DESP, "�򺣵������ף�2362,657��ѯ�ʰ���³��ȥ��")

	MisHelpTalk("<t>����Ϊ���������Щͬ��һ�������Ƚϰ�ȫ��")
	MisResultCondition(AlwaysFailure )

-----------------------------------ǰ��t9
	DefineMission( 306, "˭�ǰ���³", 265, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>˭�ǰ���·���Ҳ�֪�����Һ��㲻�죬�������ң�����")
	MisResultCondition(NoRecord, 265 )
	MisResultCondition(HasMission, 265)
	MisResultAction(ClearMission, 265 )
	MisResultAction(SetRecord, 265 )
	MisResultAction(AddExp,8292,8292)	
	MisResultAction(AddMoney,2097,2097)	
	MisResultAction(AddExpAndType,2,26625,26625)


-------------------------------------------------�����𶯶�
	DefineMission( 307, "�����𶯶�", 266 )

	MisBeginTalk( "<t>����ĺܷ������������Ҫ������֪��ʲô���Ǿ͵ð��Ұ���£�<n><t>������֪�������������棬��֧<r�����𶯶�>������˵�Ǻ��������Ǳ����Ǻ��������ģ������������������<n><t>���ϵĺ����кܶ඼��ϴ�ֲ��ɵ����ˣ�����һ�������Ƿ��֣����ᱻ������թ����󻹱����ŵ���������<n><t>ȥ������һ���ѵ����5��<r�����𶯶�Ա>��������ʱ�Ҿͺ���ú�̸̸��")
	MisBeginCondition(NoRecord, 266)
	MisBeginCondition(HasRecord, 265)
	MisBeginCondition(NoMission, 262)
	MisBeginAction(AddMission, 266)
	MisBeginAction(AddTrigger, 2661, TE_KILL, 667, 5)		
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "���5��<r�����𶯶�Ա>�ٺͽ����ף�2362,657��̸̸��")
	MisNeed(MIS_NEED_KILL, 667, 5, 10, 5)

	MisResultTalk("<t>�������������㻹������������Ȼ��������һ���������Ͳ��ҿ����ĵ�С���ܺúܺã�")
	MisHelpTalk("<t>��ô�ˣ����ˣ�û�õļһ�߿���")
	MisResultCondition(HasMission, 266 )
	MisResultCondition(HasFlag, 266 , 14)
	MisResultAction(ClearMission, 266 )
	MisResultAction(SetRecord, 266 )
	MisResultAction(AddExp,21776,21776)	
	MisResultAction(AddMoney,4436,4436)	
	MisResultAction(AddExpAndType,2,26625,26625)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 667 )
	TriggerAction( 1, AddNextFlag, 266, 10, 5 )
	RegCurTrigger( 2661 )

-------------------------------------------------�ּ��ܿ�
	DefineMission( 308, "�ּ��ܿ�", 267 )

	MisBeginTalk( "<t>С���ѣ������Ǻܶ��ҵ�θ��Ŷ����Ȼ���µ����������ĺ������ã�<n><t>��ʵ����ǰ�Ǹ�����³�����������ϣ����ǵ�ʱ���Ѿ������ˣ������Լ�Ϊ<r³�ð�>�����Լ���û��֪�������ǰ���³��<n><t>����������һ������ĺ����������һ���ӾͲ³���³�ð����ǰ���³��������˵������³����һ���뿪�ˣ��Ҽǵ��Ǹ������Գ��ǽܿ˺����ŵ����죡<n><t>�ٺ٣�����;��úڽܿ˺����ŵ��Ǹ�ʲô�ѿ�һ�������񣬹�Ȼ�Ǹ���ð�Ĵ�����<n><t>�������Ҫ�Ұ���³�Ļ�����õ��ܿ˺����ŵĴ�Ӫ<y��ɳ��>ȥ������" )
	MisBeginCondition(NoRecord, 267)
	MisBeginCondition(HasRecord, 266)
	MisBeginCondition(NoMission, 267)
	MisBeginAction(AddMission, 267)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "����<y��ɳ��>�в��ͽܿ˴�����1672,3777��̸̸��")

	MisHelpTalk("<t>����Ժ��뵱�����ˣ��������ң��Ҿ�������һ���ܺϵ�����")
	MisResultCondition(AlwaysFailure )

-----------------------------------�ּ��ܿ�
	DefineMission( 309, "�ּ��ܿ�", 267, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Ŷ�������ּ����ˣ���������һ���Ѿ��µ��Ҿ��Ǻڽܿ˺����������������˰ɣ�<n><t>��������ñ𵽴���˵�������˿��Ǻܵ͵��ģ���֪���İɡ���")
	MisResultCondition(NoRecord, 267 )
	MisResultCondition(HasMission, 267)
	MisResultAction(ClearMission, 267 )
	MisResultAction(SetRecord, 267 )
	MisResultAction(AddExp,13026,13026)
	MisResultAction(AddMoney,2303,2303)
	MisResultAction(AddExpAndType,2,26625,26625)



-------------------------------------------------�Ժ�����
	DefineMission( 310, "�Ժ�����", 268 )

	MisBeginTalk( "�ţ��Ǹ�������˵��������û��������Ը���ɣ���ϣ���´����������ң������Ҿ������齻����죡���Ȼ�ȥ�ɡ�" )
	MisBeginCondition(NoRecord, 268)
	MisBeginCondition(HasRecord, 267)
	MisBeginCondition(NoMission, 268)
	MisBeginAction(AddMission, 268)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "�ҽܿ˴�����1672,3777����̸̸")

	MisHelpTalk("�š������������������ҵĵ������Ŷ")
	MisResultCondition(AlwaysFailure )


-----------------------------------���վ���
	DefineMission( 311, "���վ���", 4, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>�治�����ţ����Ȼ���Ǹ����޽���ˣ��Һó���㰡����̫�����ˣ��Ժ��ҾͿ��԰��ĵĳ������̵Ĳ�ݮ��������")
	MisResultCondition(HasMission, 4 )
	MisResultCondition(NoRecord, 4 )
	MisResultCondition(NoMisssionFailure, 4 )
	MisResultCondition(HasFlag, 4, 10 )
	MisResultAction(ClearMission, 4 )
	MisResultAction(SetRecord, 4 )
	MisResultAction(AddExp,2649,2649)
	MisResultAction(AddMoney,1680,1680)
	MisResultAction(AddExpAndType,2,9035,9035)
	MisResultAction(ClearTrigger, 108)


-------------------------------------------------�����顱
	DefineMission( 312, "�����顱", 269 )

	MisBeginTalk( "<t>�����Ǹ�˭���ţ���������ԣ�С�����᣿�����ֿϣ�<n><t>���ˣ����ֲ�����Ҫ���԰ɣ���˵�������ˣ���˭��������³������³��������Ϥ�����֣�������ǰ�����������һȥ���ص��Ǹ���С�Ӱɣ��㿴������8000���£����ܸ������������أ����磬���Լ�ȥ���ҿ��ɣ��ҵ�����ÿ�����м�¼�Լ����ֵ�<r�ռ�>���������ǽ���������֪����^_^!<n><t>������ƺ�������ʲô���������ǲ����ײĲ������ˣ������ҡ��衱����<r�ռ�>�������ɡ�")
	MisBeginCondition(NoRecord, 269)
	MisBeginCondition(HasRecord, 267)
	MisBeginCondition(NoMission, 269)
	MisBeginCondition(HasMission, 268)
	MisBeginAction(AddMission, 269)
	MisBeginAction(ClearMission, 268 )
	MisBeginAction(SetRecord, 268 )
	MisBeginAction(AddTrigger, 2691, TE_GETITEM, 3790, 1)
	MisBeginAction(AddTrigger, 2692, TE_GETITEM, 3791, 1)
	MisBeginAction(AddTrigger, 2693, TE_GETITEM, 3792, 1)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_ITEM, 3790, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 3791, 1, 11, 1)
	MisNeed(MIS_NEED_ITEM, 3792, 1, 12, 1)
	MisNeed(MIS_NEED_DESP, "�ҽܿ˵����¡��衱һЩ<r�ռ�>��֤����ȷʵ�����������")


	MisResultTalk("<t>�������õĺ����������µĻռǰ�����ô�����ҵ�������ϰɣ���ʲô�ջ���<n><t>�ȵȣ������������������Ѫ����ô���£�<n><t>�ѵ�����������ɣ�<n><t>���ˣ��㻹�Ǳ�����ˣ��һ��������ֵܰ��Ҹɻ��أ�������³������Ҳ�����Ұ������Ҳ����ˣ����������������ƨ�£����Ұ��ֵܰ����ã����������ң��Ұ�һ�ж������㡣")
	MisHelpTalk("<t>��ô�����ҵĹ����ƶȲ���ɣ�ֻҪ��һ��һ���������һ�����ҵ���Ҫ���ˡ�")
	MisResultCondition(HasMission, 269 )
	MisResultCondition(HasItem, 3790 , 1)
	MisResultCondition(HasItem, 3791 , 1)
	MisResultCondition(HasItem, 3792 , 1)
	MisResultAction(TakeItem, 3790, 1 )
	MisResultAction(TakeItem, 3791, 1 )
	MisResultAction(TakeItem, 3792, 1 )
	MisResultAction(ClearMission, 269 )
	MisResultAction(SetRecord, 269 )
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 3790 )
	TriggerAction( 1, AddNextFlag, 269, 10, 1 )
	RegCurTrigger( 2691 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3791 )
	TriggerAction( 1, AddNextFlag, 269, 11, 1 )
	RegCurTrigger( 2692 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3792)
	TriggerAction( 1, AddNextFlag, 269, 12, 1 )
	RegCurTrigger( 2693 )

-------------------------------------------------³�°�������
	DefineMission( 313, "³�°�������", 270 )

	MisBeginTalk( "<t>������Ӧ��֪��������³�ڼ�����֮ǰ�͸�����³�°��˰ɣ�������ƭ�����ҽܿ˴����ģ���һֱ��֪������һ���������˽���������Ϊ��������ͨ���Ķ��󣬵�Ȼ�����ͨ�������ǲ���֪���ģ��Ǻǣ������ܲ��л�����಻Ϊ��֪�������أ�Ŷ���Բ��������ˡ�<n><t>���ҵ���в�£����ܿ�������ҵĺ����ţ����ǲ��ã�Ҳ�����������İ����ǰ��������һ�ֺ���ֵĴ�Ⱦ����Ϊ�˲��������ǣ���һ���������ҹ�����Լ������������ˣ���֪�������⸽����������������˹���У���������һ���ڰ���ҹ���ҹ��ƣ�����Ҫ�ҵ��������Ѿ��Ǻ����һ�����ˡ�<n><t>��������������һЩ��������������֪�������Ĺ�أ������������еĲƸ�������ģ���������������еĲƸ����Ǵ�ҵģ����ԣ�������Ҫ<r³�°�������>�Ļ������ҵ��ֵ���Ҫ�ɣ��������������һ�㡣")
	MisBeginCondition(NoRecord, 270)
	MisBeginCondition(HasRecord, 269)
	MisBeginCondition(NoMission, 270)
	MisBeginAction(AddMission, 270)
	MisBeginAction(AddTrigger, 2701, TE_GETITEM, 4219, 1)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "�ҽܿ˵������ǡ�Ҫ����<r³�°�������>")
	MisNeed(MIS_NEED_ITEM, 4219, 1, 10, 1)

	MisResultTalk("<t>�ԣ��������<r³�°�������>�ˣ���������Ҳ��֪���⾿���Ǹ�ʲô��������Ҫ�Ǹ���Ȥ�Ļ�����ʹ��һ�����ԡ�")
	MisHelpTalk("<t>�ҵ�<r³�°�������>����������û��Ű���ҵ����£����ˣ�����û˵����������������Ұ�")
	MisResultCondition(HasMission, 270 )
	MisResultCondition(HasItem, 4219 , 1)
	MisResultAction(TakeItem, 4219, 1 )
	MisResultAction(GiveItem, 4220, 1, 4 )
	MisResultAction(ClearMission, 270 )
	MisResultAction(SetRecord, 270 )
	MisResultAction(AddExp,30000,30000)
	MisResultAction(AddMoney,5000,5000)
	MisResultAction(AddExpAndType,2,20000,20000)
	MisResultAction(GiveItem,1815,1,4)
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4219 )
	TriggerAction( 1, AddNextFlag, 270, 10, 1 )
	RegCurTrigger( 2701 )


-----------------------------------����֮Ѫ1
	DefineMission( 314, "����֮Ѫ", 8, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Ŷ������һ�ֽ���ˮ��֮�ĵĶ�������˵����ӳ�ճ�ˮ�ֵ����ģ����ܹ�������ĵ����ʵ��ˣ��Ϳ��Ի��ˮ��֮���б���Ķ��������ǣ����ڹ��ո��ӣ��Ѿ�ʧ���þ��ˣ�������˵�������³�°������<n><t>����������ҪһЩ�����ˣ��������ң�ȥ��1346,451����<b���Ǳ����塤�����˹>�ɣ���Ӧ��֪����ô����")
	MisResultCondition(NoRecord, 8 )
	MisResultCondition(HasMission, 8)
	MisResultAction(ClearMission, 8 )
	MisResultAction(SetRecord, 8 )
	MisResultAction(ObligeAcceptMission, 11 )

-----------------------------------����֮��1
	DefineMission( 315, "����֮��", 9, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Ŷ������һ�ֽ���ˮ��֮�ĵĶ�������˵����ӳ�ճ�ˮ�ֵ����ģ����ܹ�������ĵ����ʵ��ˣ��Ϳ��Ի��ˮ��֮���б���Ķ��������ǣ����ڹ��ո��ӣ��Ѿ�ʧ���þ��ˣ�������˵�������³�°������<n><t>����������ҪһЩ�����ˣ��������ң�ȥ��2277,2831����<b�����ٽ�������˹>�ɣ���Ӧ��֪����ô����")
	MisResultCondition(NoRecord, 9 )
	MisResultCondition(HasMission, 9)
	MisResultAction(ClearMission, 9)
	MisResultAction(SetRecord, 9 )
	MisResultAction(ObligeAcceptMission, 12 )

-----------------------------------����֮��1
	DefineMission( 316, "����֮��", 10, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Ŷ������һ�ֽ���ˮ��֮�ĵĶ�������˵����ӳ�ճ�ˮ�ֵ����ģ����ܹ�������ĵ����ʵ��ˣ��Ϳ��Ի��ˮ��֮���б���Ķ��������ǣ����ڹ��ո��ӣ��Ѿ�ʧ���þ��ˣ�������˵�������³�°������<n><t>����������ҪһЩ�����ˣ��������ң�ȥ��2219,2749����<b��������ϯ���顤˹����>�ɣ���Ӧ��֪����ô����")
	MisResultCondition(NoRecord, 10 )
	MisResultCondition(HasMission, 10)
	MisResultAction(ClearMission, 10)
	MisResultAction(SetRecord, 10 )
	MisResultAction(ObligeAcceptMission, 13 )

-------------------------------------------------����֮Ѫ2
	DefineMission( 317, "����֮Ѫ", 271 )

	MisBeginTalk( "<t>����֮Ѫ�𣿺þ�û����������ˣ������������õ���һ��ˮ��֮�İɣ���ν�ĺ���֮Ѫ��ʵ���ǵ��˵���Ѫ��ֻ�л�ϵ��˵���Ѫ����ˮ�������һ������ĺ�����<n><t>�����˵�Ѫ����ˮ��֮���ϣ���ͻ�õ�����Ķ�����<n><t>����λ�ڣ�2389,575���������ǰ�<y�����𶯶�>��������ţ��㲻����������һ��ʵ�顣")
	MisBeginCondition(NoRecord, 271)
	MisBeginCondition(NoMission, 271)
	MisBeginCondition(HasMission, 11)
	MisBeginCondition(HasItem, 4221 , 1)
	MisBeginAction(ClearMission, 11)
	MisBeginAction(SetRecord, 11)
	MisBeginAction(AddMission, 271)
	MisBeginAction(AddTrigger, 2711, TE_KILL, 667, 30)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "ɱ��30��<y�����𶯶�Ա>��Ȼ������� <b���Ǳ����塤�����˹>��1346,451��")
	MisNeed(MIS_NEED_KILL, 667, 30, 10, 30)

	MisResultTalk("<t>���Ѿ�ɱ���㹻��<b�����𶯶�Ա>������ˮ��֮��Ӧ���Ѿ�������������<n><t><p���ҽ�ˮ��֮�Ĵӱ������ó���ʱ��ˮ��֮���Ѿ����ѿ�����¶���������һ��Կ�ף����ҵ����ƺ�Ҳ������һ��Ѫɫ����>")
	MisHelpTalk("<t>��ô�����ǰ�<b�����𶯶�Ա>���������")
	MisResultCondition(HasMission, 271 )
	MisResultCondition(HasItem, 4221 , 1)
	MisResultCondition(HasFlag, 271, 39)
	MisResultAction(TakeItem, 4221, 1 )
	MisResultAction(GiveItem, 4222, 1, 4 )
	MisResultAction(ClearMission, 271 )
	MisResultAction(SetRecord, 271 )
	MisResultAction(AddExp,50000,50000)
	MisResultAction(AddMoney,5000,5000)
	MisResultAction(AddExpAndType,2,20000,20000)
	MisResultAction(GiveItem,1814,1,4)
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 667 )
	TriggerAction( 1, AddNextFlag, 271, 10, 30 )
	RegCurTrigger( 2711 )

-------------------------------------------------����֮��2
	DefineMission( 318, "����֮��", 272 )

	MisBeginTalk( "<t>����֮�����Ѿ��þ�û���ἰ������ˣ��û����Ǹ�������Ʈ���ź���֮�������ˣ����������۹⿴�ң��Ҳ���ͨ���ߣ���ν�ĺ���֮�꣬��30��ǰ������ʹ�õľ��죬����һ����ô��Ѫ����������ഺ����������ӭ�����ձ��ܰɡ���<n><t>�ȱ�æ���ܣ��ѵ��㲻���ˮ��֮���ˣ����ں���֮��ֻ���ܲ���չ���������ˣ������Ը����<r200��>���ҿ��Կ�������ʹ��һ�º���֮��Ŷ")
	MisBeginCondition(NoRecord, 272)
	MisBeginCondition(NoMission, 272)
	MisBeginCondition(HasMission, 12)
	MisBeginCondition(HasItem, 4221 , 1)
	MisBeginAction(ClearMission, 12)
	MisBeginAction(SetRecord, 12)
	MisBeginAction(AddMission, 272)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "��<r200��>�������ٽ�������˹��2277,2831��")

	MisResultTalk("<t>�����㻹��������<r200��>��������Ժ����������㹻�ᶨ�ˣ���ʵ����û��ʲô����֮��ľ��죬���Ѿ�֤������Ժ������ҳϣ��ó����ˮ��֮�İɣ����������Ѿ��������ˡ�")
	MisHelpTalk("<t>��һ�ƣ���һ�������ڵĺ���֮��Ŷ��ֻ��<r200��>����")
	MisResultCondition(HasMission, 272 )
	MisResultCondition(HasItem, 4221 , 1)
	MisResultCondition(HasMoney, 2000000 )
	MisResultAction(TakeItem, 4221, 1 )
	MisResultAction(GiveItem, 4222, 1, 4 )
	MisResultAction(ClearMission, 272 )
	MisResultAction(SetRecord, 272 )
	MisResultAction(AddExp,80000,80000)
	MisResultAction(AddMoney,8000,8000)
	MisResultAction(AddExpAndType,2,30000,30000)
	MisResultAction(GiveItem,1814,1,4)
	MisResultBagNeed(2)

-------------------------------------------------����֮��3
	DefineMission( 319, "����֮��", 273 )

	MisBeginTalk( "<t>����֮�ˣ����õ���ˮ��֮�ģ�<n><t>����ҿ���������������ô������Ŷ���ȿȣ��������˿���һҹ��������ȴȱ���㹻����������ʵ��һ�������������ˣ���ʹĬĬ����Ҳ��һ��Ӣ�ۡ�<n><t>����Ϊ��֤�������������������ĺ��󣬵�<p��������77��3971>���괦ȥһ�˰ɣ�������ʹ��һ��ˮ��֮�ģ�������������¸ҵ���ꡣ")
	MisBeginCondition(NoRecord, 273)
	MisBeginCondition(NoMission, 273)
	MisBeginCondition(HasMission, 13)
	MisBeginCondition(HasItem, 4221 , 1)
	MisBeginAction(ClearMission, 13)
	MisBeginAction(SetRecord, 13)
	MisBeginAction(AddMission, 273)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "ȥ <p��������77��3971����>��ʹ��<r³�°�������>,Ȼ������Ұ�������ϯ���顤˹���أ�2219,2749��")

	MisResultTalk("<t>��˵ˮ��֮��Ϊ���޸��˴�ֻ�������������ֵĲ������������Ѿ���������¸ҵ�����ˡ�<n><t>��������Ĺ��ϵ�Կ�ף����Լ��鿴һ�£�Ӧ�����µ�������")
	MisHelpTalk("<t>����ô�������Ϊ��֤���������������뵽<p��������77��3971>����ȥһ�Ρ�")
	MisResultCondition(HasMission, 273 )
	MisResultCondition(HasMission, 14 )
	MisResultCondition(HasItem, 4221 , 1)
	MisResultAction(TakeItem, 4221, 1 )
	MisResultAction(GiveItem, 4222, 1, 4 )
	MisResultAction(ClearMission, 273 )
	MisResultAction(SetRecord, 14 )
	MisResultAction(ClearMission, 14 )
	MisResultAction(SetRecord, 273 )
	MisResultAction(AddExp,80000,80000)
	MisResultAction(AddMoney,8000,8000)
	MisResultAction(AddExpAndType,2,30000,30000)
	MisResultBagNeed(1)

-------------------------------------------------³�°�������
	DefineMission( 320, "��������", 274 )

	MisBeginTalk( "<t>���ǡ��������Եȣ��Һ˶�һ�¡���<n><t>�Բ���������ʱ�޷�����ߵĶ������㣬�������еļ�¼��Ҫȡ����ߵĶ�������Ҫ�õ�<r���Ǳ����塤�����˹>,<r�����ٽ�������˹>,<r��������ϯ���顤˹����>,<r��������.��>����λ���˵ĵ�ǩ���ſ��ԣ�ף����ˣ����ߺã���һλ����")
	MisBeginCondition(NoRecord, 274)
	MisBeginCondition(NoMission, 274)
	MisBeginCondition(HasMission, 15)
	MisBeginCondition(HasItem, 4222, 1)
	MisBeginAction(AddMission, 274)
	MisBeginAction(ClearMission, 15)
	MisBeginAction(SetRecord, 15)
	MisBeginAction(AddTrigger, 2741, TE_GETITEM, 4223, 1)
	MisBeginAction(AddTrigger, 2742, TE_GETITEM, 4224, 1)
	MisBeginAction(AddTrigger, 2743, TE_GETITEM, 4225, 1)
	MisBeginAction(AddTrigger, 2744, TE_GETITEM, 4226, 1)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "�õ���λ���˵�ǩ���������������еĳ��ɣ�743,1534��")
	MisNeed(MIS_NEED_ITEM, 4223, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 4224, 1, 20, 1)
	MisNeed(MIS_NEED_ITEM, 4225, 1, 30, 1)
	MisNeed(MIS_NEED_ITEM, 4226, 1, 40, 1)

	MisResultTalk("<t>�����Ҫ����ǩ�����ò�����α��İɣ��ҿ����������������������������Ժ���һ��Ҫ���������ɳ��Ǹ��ظ���ͷ�ͷ��Ĺ��̽���������<n><t>���������𣬡��������㣬��Ҫ�Ķ������治֪�������Ƥֽ������ʲô�ã���Ȼ���ص���ô����")
	MisHelpTalk("<t>û�õ���λ���˵�ǩ��֮ǰ�������ң����кܶ���˵�������")
	MisResultCondition(HasMission, 274 )
	MisResultCondition(HasItem, 4223 , 1)
	MisResultCondition(HasItem, 4224 , 1)
	MisResultCondition(HasItem, 4225 , 1)
	MisResultCondition(HasItem, 4226 , 1)
	MisResultCondition(HasItem, 4222 , 1)
	MisResultAction(TakeItem, 4222, 1 )
	MisResultAction(TakeItem, 4223, 1 )
	MisResultAction(TakeItem, 4224, 1 )
	MisResultAction(TakeItem, 4225, 1 )
	MisResultAction(TakeItem, 4226, 1 )
	MisResultAction(GiveItem, 4227, 1, 4 )
	MisResultAction(ClearMission, 274 )
	MisResultAction(SetRecord, 274 )
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4223 )
	TriggerAction( 1, AddNextFlag, 274, 10, 1 )
	RegCurTrigger( 2741 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4224 )
	TriggerAction( 1, AddNextFlag, 274, 20, 1 )
	RegCurTrigger( 2742 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4225 )
	TriggerAction( 1, AddNextFlag, 274, 30, 1 )
	RegCurTrigger( 2743 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4226 )
	TriggerAction( 1, AddNextFlag, 274, 40, 1 )
	RegCurTrigger( 2744 )

-------------------------------------------------����������
	DefineMission( 321, "����������", 275 )

	MisBeginTalk( "<t>��������ѣ����ͷ�ϵĻ����Ѿ�й¶�������ݣ����ﲻ��ӭ�������ˣ����߰ɣ����һ�û�иı����֮ǰ��<n><t>ʲô����˵�����Ǻ��������ѣ��ѵ�������������Ǹ��ˣ�����ʲô��֤���������ǵ�����<n><t>��˵�����𶯶����ǵ�ȷ��һ�������ѡ���ǰ︯�ܵļһ���ʱ������Щ�ˣ��������ɱ���㹻��<y�����𶯶�Ա>���һ����Կ���Ϊ��ǩ��")
	MisBeginCondition(NoRecord, 275)
	MisBeginCondition(NoRecord, 276)
	MisBeginCondition(NoMission, 275)
	MisBeginCondition(HasMission, 274)
	MisBeginCondition(HasNavyGuild)
	MisBeginAction(AddMission, 275)
	MisBeginAction(AddTrigger, 2751, TE_KILL, 667, 30)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "ɱ��30��<y�����𶯶�Ա>��Ȼ������� <b���Ǳ����塤�����˹>��1346,451��")
	MisNeed(MIS_NEED_KILL, 667, 30, 10, 30)

	MisResultTalk("<t>���õ��˵���Ѫ֤��������ҳϣ��ӽ��Ժ�����Ǳ��Ǳ��Ĺ�������к��������ѣ��������أ��ó����ǩ����ɣ��һ�Ϊ��ǩ���ҵ�����")
	MisHelpTalk("<t>����ô��������������ֿտգ���˹�أ��Ͷ��������ڸ�ʲô����ô������һ���һ������ҵ���ǰ��")
	MisResultCondition(HasMission, 275 )
	MisResultCondition(HasFlag, 275, 39)
	MisResultAction(GiveItem, 4223, 1, 4 )
	MisResultAction(ClearMission, 275 )
	MisResultAction(SetRecord, 275 )
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 667 )
	TriggerAction( 1, AddNextFlag, 275, 10, 30 )
	RegCurTrigger( 2751 )

-----------------------------------�Ҳ��Ǻ���
	DefineMission( 322, "�Ҳ��Ǻ���", 274, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>����Ҫ�ҵ�ǩ����ֻҪ���Ǻ������Һ�Ը������æ��")
	MisResultCondition(NoRecord, 274 )
	MisResultCondition(NoRecord, 275 )
	MisResultCondition(NoFlag, 274, 1 )
	MisResultCondition(HasMission, 274)
	MisResultCondition(NoNavyGuild)
	MisResultAction(GiveItem, 4223, 1, 4)
	MisResultAction(SetFlag, 274, 1 )
	MisResultBagNeed(1)

-------------------------------------------------�����ϵ
	DefineMission( 323, "�����ϵ", 277 )

	MisBeginTalk( "<t>����Ҫ�ҵ�ǩ���������޽ܻ�û���ĸ�����������޳ܵ�Ҫ�����ٽ���ǩ����<n><t>���ǡ���������ģ�����������Ǹ��ˣ��Ǹ���һ�������Ǻ����е�����һ�����������ͨ�ˣ��뺣�������ϵ֮���������Ұ�")
	MisBeginCondition(NoRecord, 277)
	MisBeginCondition(NoRecord, 278 )
	MisBeginCondition(NoMission, 277)
	MisBeginCondition(HasMission, 274)
	MisBeginCondition(HasPirateGuild)
	MisBeginAction(AddMission, 277)
	MisBeginAction(AddTrigger, 2771, TE_KILL, 145, 10)
	MisBeginAction(AddTrigger, 2772, TE_KILL, 146, 10)
	MisBeginAction(AddTrigger, 2773, TE_KILL, 291, 10)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "ɱ��<r�ܿ˺����ŵ���Ա>��֤�����뺣�������ϵ")
	MisNeed(MIS_NEED_KILL, 145, 10, 10, 10)
	MisNeed(MIS_NEED_KILL, 146, 10, 20, 10)
	MisNeed(MIS_NEED_KILL, 291, 10, 30, 10)

	MisResultTalk("<t>�ܺã����ֿ�����һ����Ϊ���꣬��ȥ�ɣ��ҵ�ǩ����������㻹���õ�������ǩ���������Բ���ġ���Ҳ���ǲ����ܵ�")
	MisHelpTalk("<t>�ϲ���Ƿϲ���Զ�������ں��ϵĺ�����������޷�����Щ�˻����ϵ���Ͳ�Ҫ������������Ⱦ�ҵĿ���")
	MisResultCondition(HasMission, 277 )
	MisResultCondition(HasFlag, 277, 19)
	MisResultCondition(HasFlag, 277, 29)
	MisResultCondition(HasFlag, 277, 39)
	MisResultAction(GiveItem, 4224, 1, 4 )
	MisResultAction(ClearMission, 277 )
	MisResultAction(SetRecord, 277 )
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 145 )
	TriggerAction( 1, AddNextFlag, 277, 10, 10 )
	RegCurTrigger( 2771 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 146 )
	TriggerAction( 1, AddNextFlag, 277, 20, 10 )
	RegCurTrigger( 2772 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 291 )
	TriggerAction( 1, AddNextFlag, 277, 30, 10 )
	RegCurTrigger( 2773 )

-----------------------------------�Ҳ��Ǻ���
	DefineMission( 324, "�Ҳ��Ǻ���", 274, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>����Ҫ�ҵ�ǩ����û�뵽�㻹���ҵ�fans�����㣬Ư���ɡ�")
	MisResultCondition(NoRecord, 274 )
	MisResultCondition(NoRecord, 277 )
	MisResultCondition(HasMission, 274)
	MisResultCondition(NoFlag, 274, 2 )
	MisResultCondition(NoPirateGuild)
	MisResultAction(GiveItem, 4224, 1, 4)
	MisResultAction(SetFlag, 274, 2 )
	MisResultBagNeed(1)

-------------------------------------------------�¶���սʿ
	DefineMission( 325, "�¶���սʿ", 279 )

	MisBeginTalk( "<t>��Ϊһ���¶������ˣ���������������е����ѣ��κ��Ի󶼻�ʹ��ɥ����<n><t>�����ˣ���������ô���ʱ��Ҳ�ǹ���һ�˴�������ģ�����Ҫ�����㣬ֻ����ǿ���˲ſ������ܹ¶���ȥ�ɣ�֤�����ǿ�����ҿ��������������Ǹ������ڵȴ����ˣ��һ������ԥ�ظ����ҵ�ǩ��")
	MisBeginCondition(NoRecord, 279)
	MisBeginCondition(NoRecord, 280 )
	MisBeginCondition(NoMission, 279)
	MisBeginCondition(HasMission, 274)
	MisBeginCondition(NoGuild)
	MisBeginAction(AddMission, 279)
	MisBeginAction(AddTrigger, 2791, TE_KILL, 145, 5)
	MisBeginAction(AddTrigger, 2792, TE_KILL, 146, 5)
	MisBeginAction(AddTrigger, 2793, TE_KILL, 291, 5)
	MisBeginAction(AddTrigger, 2794, TE_KILL, 667, 5)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "ɱ��������ɱ��������֤������һ���¶����¸ҵ�սʿ")
	MisNeed(MIS_NEED_KILL, 145, 5, 10, 5)
	MisNeed(MIS_NEED_KILL, 146, 5, 20, 5)
	MisNeed(MIS_NEED_KILL, 291, 5, 30, 5)
	MisNeed(MIS_NEED_KILL, 667, 5, 40, 5)

	MisResultTalk("<t>��������۾��ﻹ���ܿ�����ԥ�������㻹����Ҫ��һ������������������Ȼ�������һϵ��λ���׳�٣��һ��Ǻ����⿴���ҵ�ǩ�����Զ����ṩ����")
	MisHelpTalk("<t>��Ҫ����ԥ����ãֻ������ɥ������������Ѿ�����˹¶�����Щ����һ��ð�հɣ��ǽ�������������Ȥ����Ȼ����Ҳ��ʧȥ�¶���Ȩ��")
	MisResultCondition(HasMission, 279 )
	MisResultCondition(HasFlag, 279, 14)
	MisResultCondition(HasFlag, 279, 24)
	MisResultCondition(HasFlag, 279, 34)
	MisResultCondition(HasFlag, 279, 44)
	MisResultAction(GiveItem, 4225, 1, 4 )
	MisResultAction(ClearMission, 279 )
	MisResultAction(SetRecord, 279 )
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 145 )
	TriggerAction( 1, AddNextFlag, 279, 10, 5 )
	RegCurTrigger( 2791 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 146 )
	TriggerAction( 1, AddNextFlag, 279, 20, 5 )
	RegCurTrigger( 2792 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 291 )
	TriggerAction( 1, AddNextFlag, 279, 30, 5 )
	RegCurTrigger( 2793 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 667 )
	TriggerAction( 1, AddNextFlag, 279, 40, 5 )
	RegCurTrigger( 2794 )

-----------------------------------ǿ��ĺ��
	DefineMission( 326, "ǿ��ĺ��", 274, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>��Ȼ����ǿ��Ĺ��������ϣ�������Ҳ��������ʲô���������������飬�ҵ�ǩ���͸����ˡ�")
	MisResultCondition(NoRecord, 274 )
	MisResultCondition(NoRecord, 279 )
	MisResultCondition(NoFlag, 274, 3 )
	MisResultCondition(HasMission, 274)
	MisResultCondition(HasGuild)
	MisResultAction(GiveItem, 4225, 1, 4)
	MisResultAction(SetFlag, 274, 3 )
	MisResultBagNeed(1)

-------------------------------------------------ϴˢ���
	DefineMission( 327, "ϴˢ���", 281 )

	MisBeginTalk( "<t>�����ǰ����ƽ�ȣ��������Ǻ������Ǻ��������ǹ¶������ˣ���������ʱ�����ס��Ů����Զף�����ǣ���������Ҫ���ľ���ϴˢ���ȥ��񣬵���ϴˢ�����е����֮���ҵ�ǩ����Ȼ�������������С�")
	MisBeginCondition(NoRecord, 281)
	MisBeginCondition(NoMission, 281)
	MisBeginCondition(HasMission, 274)
	MisBeginAction(AddMission, 281)
	MisBeginAction(AddTrigger, 2811, TE_KILL, 620, 30)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "��<y��Ӱ������>֮Ѫϴˢ��ȥ����񣬻�������ɳᰳǵġ����峤����������.���898,3640��")
	MisNeed(MIS_NEED_KILL, 620, 30, 10, 30)

	MisResultTalk("<t>ԸŮ����Զף���㴿����ģ�������ǩ����ϣ����������������Ҳϣ��������Զ������Ŵ�����ģ�Ϊ���˴�����ů��")
	MisHelpTalk("<t>������û��ϴ�壬����Ŭ���ɣ�����Զվ��������")
	MisResultCondition(HasMission, 281 )
	MisResultCondition(HasFlag, 281, 39)
	MisResultAction(GiveItem, 4226, 1, 4 )
	MisResultAction(ClearMission, 281 )
	MisResultAction(SetRecord, 281 )
	MisResultAction(AddExp,80000,80000)
	MisResultAction(AddMoney,10000,10000)
	MisResultAction(AddExpAndType,2,30000,30000)
	MisResultAction(GiveItem,3885,1,4)
	MisResultBagNeed(2)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 620 )
	TriggerAction( 1, AddNextFlag, 281, 10, 30 )
	RegCurTrigger( 2811 )

-----------------------------------³�°�������
	DefineMission( 328, "³�°�������", 16, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>����ô�����ˣ��ҵ��ֵ����Ѿ�û��ʲô�����ṩ���ˣ�������Ź����ǰɡ�<n><t>ʲô�����õ���³�°������飿�Ǹ�ֻ����λ��������ǩ������ȡ���Ķ���������ҿ���")
	MisResultCondition(NoRecord, 16 )
	MisResultCondition(HasMission, 16)
	MisResultCondition(HasItem, 4227, 1)
	MisResultAction(ClearMission, 16)
	MisResultAction(SetRecord, 16 )

----------------------------���������
	DefineMission( 329, "���������", 282 )
	
	MisBeginTalk( "<t>����������³����һﻹ����ô�������ģ����ǲ��Ǿ�����������ָ������������ǾͶ��ˣ�������Ƥ�����⴦��������ң���Ҳ�ⲻ����������������ƽ�ҩ��������Ҳ��ֻ�����������ˡ�<n><t>���У���2193,2730��<bСɽ��>���������˵���ģ���ȥ�����ɣ���Ȼ����˵��������ȥ�ģ����򣬺���Ը�����" )
	MisBeginCondition(NoRecord, 282)
	MisBeginCondition(HasRecord, 16)
	MisBeginCondition(NoMission, 282)
	MisBeginCondition(HasItem, 4227, 1)
	MisBeginAction(AddMission, 282)
	MisCancelAction(SystemNotice, "�������޷��ж�")
		
	MisNeed(MIS_NEED_DESP, "��<bСɽ����2193,2730��>�ƽ����������")
	
	MisHelpTalk("<t>��ס��ǧ����Сɽ��˵���������ȥ�����ģ��������Ը���")
	MisResultCondition(AlwaysFailure )

-----------------------------------���������
	DefineMission( 330, "���������", 282, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>���ҿ���������ζ��������û�����������������ҩˮ��ζ����û�뵽���ϻ����˻��������ҩˮ���ҿ���Ϊ��������ҩ����������Ҫ�ȸ�������˭����˵�һ�������ҩ�ġ�")
	MisResultCondition(NoRecord, 282 )
	MisResultCondition(HasMission, 282)
	MisResultCondition(HasItem, 4227, 1)
	MisResultAction(ClearMission, 282)
	MisResultAction(SetRecord, 282 )

----------------------------�ܿ˽���
	DefineMission( 331, "�ܿ˽���", 283 )
	
	MisBeginTalk( "<t>ʲô�������Ǹ��������������޳ܵ�<b�ܿ�>����˵�ģ�������������ȥ���ɣ��Ҳ��������ģ��Һ޲�������ʧ�����Լ���Ҳ�벻�����Ǹ��䷽������Զһ�㣬�Ҳ����ٿ����㣬����<b�ܿ�>���������Сɽ���ʺ���ȫ�ҡ�" )
	MisBeginCondition(NoRecord, 283)
	MisBeginCondition(HasRecord, 282)
	MisBeginCondition(NoMission, 283)
	MisBeginCondition(NoRecord, 284)
	MisBeginCondition(NoMission, 284)
	MisBeginCondition(HasItem, 4227, 1)
	MisBeginAction(AddMission, 283)
	MisCancelAction(SystemNotice, "�������޷��ж�")
		
	MisNeed(MIS_NEED_DESP, "�ң�1672,3777���Ľܿ�̸һ�½��췢��������")
	
	MisHelpTalk("<t>����ô������ʧ����Ҫ�����ܽ�Һ������ſ���ʧ�𣿹��ؽܿ�����ȥ�������")
	MisResultCondition(AlwaysFailure )

-------------------------------------------------�ƹݴ���
	DefineMission( 332, "�ƹݴ���", 284 )

	MisBeginTalk( "<t>Ŷ���Ӿƹ�֪������?һ����������������Լ�˵�ģ��������ӿڳ������ջ�ˮ����<n><t>���ˣ������ҵ��ң�Ҳ��������Ե���ҾͰ��䷽������ɣ���Ҫ����������Щ�������ҾͰ������ý�ҩ��<n><t>�����������Ҫ<rѪ�ȵ����β��3��>��<r���ˮĸ֮��5��>��<r���������7��>��<r��ɫ���౳��9��>����ȥ��ذ������һ�û�иı����⡣")
	MisBeginCondition(NoRecord, 284)
	MisBeginCondition(NoMission, 284)
	MisBeginCondition(NoMission, 283)
	MisBeginCondition(NoRecord, 283)
	MisBeginCondition(HasRecord, 282)
	MisBeginCondition(HasItem, 4227, 1)
	MisBeginAction(AddMission, 284)
	MisBeginAction(AddTrigger, 2841, TE_GETITEM, 1255, 3)
	MisBeginAction(AddTrigger, 2842, TE_GETITEM, 1291, 5)
	MisBeginAction(AddTrigger, 2843, TE_GETITEM, 1365, 7)
	MisBeginAction(AddTrigger, 2844, TE_GETITEM, 1292, 9)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "��Сɽ����2193,2730���������ƽ�ҩ��ԭ��")
	MisNeed(MIS_NEED_ITEM, 1255, 3, 10, 3)
	MisNeed(MIS_NEED_ITEM, 1291, 5, 20, 5)
	MisNeed(MIS_NEED_ITEM, 1365, 7, 30, 7)
	MisNeed(MIS_NEED_ITEM, 1292, 9, 40, 9)

	MisResultTalk("<t>�ܺã��һ��������㿴����Ƥ��д��Щʲô�����������������ȥ�ɣ�����������̫��û�����ˣ������ʲô�����ÿɱ�Թ�ҡ�")
	MisHelpTalk("<t>�㻹û�и㵽ԭ������Ѫ��򽡢���ˮĸ��˿��ͻƱ�ʯ����Ӧ�ò����Ұ�����������������ޣ�������Ҫ�ı������ˡ�")
	MisResultCondition(HasMission, 284 )
	MisResultCondition(HasItem, 1255, 3)
	MisResultCondition(HasItem, 1291, 5)
	MisResultCondition(HasItem, 1365, 7)
	MisResultCondition(HasItem, 1292, 9)
	MisResultAction(TakeItem, 1255, 3)
	MisResultAction(TakeItem, 1291, 5)
	MisResultAction(TakeItem, 1365, 7)
	MisResultAction(TakeItem, 1292, 9)
	MisResultAction(GiveItem, 4228, 1, 4)
	MisResultAction(SetRecord, 284 )
	MisResultAction(ClearMission, 284 )
	MisResultBagNeed(1)
	

	InitTrigger()
	TriggerCondition( 1, IsItem, 1255 )
	TriggerAction( 1, AddNextFlag, 284, 10, 3 )
	RegCurTrigger( 2841 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1291 )
	TriggerAction( 1, AddNextFlag, 284, 20, 5 )
	RegCurTrigger( 2842 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1365 )
	TriggerAction( 1, AddNextFlag, 284, 30, 7 )
	RegCurTrigger( 2843 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1292 )
	TriggerAction( 1, AddNextFlag, 284, 40, 9 )
	RegCurTrigger( 2844 )

----------------------------�������
	DefineMission( 333, "�������", 285 )
	
	MisBeginTalk( "<t>���ģ����Ȼ�����ҵ��Ҹ棬�Ҳ���˵����Ҫ���ҵ�������<n><t>���ˣ������˰���������ȻСɽ���Ѿ������ˣ���ôֻ��һ���˿�����ֹ���ˣ�ȥ��2224,2887����<p�����ư�Ů������>�ɣ�����Ψһ�ܰ���������ˡ�<n><t>����Ϊʲô�����������˾ư�Ů�����Ⱦ�֪���ˡ�" )
	MisBeginCondition(NoRecord, 285)
	MisBeginCondition(HasMission, 283)
	MisBeginCondition(NoMission, 285)
	MisBeginAction(AddMission, 285)
	MisBeginAction(SetRecord, 283)
	MisBeginAction(ClearMission, 283)
	MisCancelAction(SystemNotice, "�������޷��ж�")
		
	MisNeed(MIS_NEED_DESP, "��<b�����ư�Ů������>��2224,2887����æ")
	
	MisHelpTalk("<t>���ڵ�ʲô��������ȥ�Ҿư�Ů�����ȣ���һСɽ�����ʧ���ˣ��鷳�ɾʹ��ˡ�")
	MisResultCondition(AlwaysFailure )

-------------------------------------------------�������
	DefineMission( 334, "�������", 286 )

	MisBeginTalk( "<t>ʲô��Сɽ������Ϊ�ܿ˱������𣿶���ô�����ˣ������������ӣ�������������Ϊ������ʥѩɽ�Ͼ�����Сɽ�����ܿ˴�����һ���ȣ��Դ˱�����˳�ޣ�������������һ�������<n><t>�����Ȼ���Ҷ��𣬻���������������ζ�Թ�ɣ���֪��Сɽ����������о��Ϲ�һ�壬������ܴ�<y������Ϲ���ʿ>����ȡ��һ��<r���µ��Ϲ�ͷ>�������һ��а취���㡣")
	MisBeginCondition(NoRecord, 286)
	MisBeginCondition(NoMission, 286)
	MisBeginCondition(HasRecord, 283)
	MisBeginCondition(HasMission, 285)
	MisBeginAction(AddMission, 286)
	MisBeginAction(AddTrigger, 2861, TE_GETITEM, 4735, 1)
	MisBeginAction(SetRecord, 285)
	MisBeginAction(ClearMission, 285)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "��<p�����ư�Ů������>��2224,2887������һ��<r���µ��Ϲ�ͷ>")
	MisNeed(MIS_NEED_ITEM, 4735, 1, 10, 1)

	MisResultTalk("<t>�Ǻǣ��㿴����Ư�����Ϲ�ͷ��������˵��������ô��Ϊ�ģ������������΢�ӹ�һ�µĻ��͸����ˣ����Ե�һ�¡�����������Щ�֣���������������ҩˮ��ҩ���㻻��")
	MisHelpTalk("<t>�㻹û�õ����µ��Ϲ�ͷ��û���Ǹ�������Ҳ�ﲻ���㡣")
	MisResultCondition(HasMission, 286 )
	MisResultCondition(HasItem, 4735, 1)
	MisResultAction(TakeItem, 4735, 1)
	MisResultAction(GiveItem, 4229, 1, 4)
	MisResultAction(SetRecord, 286 )
	MisResultAction(ClearMission, 286 )
	MisResultAction(ObligeAcceptMission, 17 )
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4735 )
	TriggerAction( 1, AddNextFlag, 286, 10, 1 )
	RegCurTrigger( 2861 )

-----------------------------------�������
	DefineMission( 335, "�������", 17, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>�Ҳ���������ʧ�����Ȼ�������ȵȣ����������ŵ���ʲô��һ�ſ��µ��Ϲ�ͷ���������滹�е��ȵ��ױ�ǩ����Ŷ���ܰ����������һ�������ҩˮ��ҩ���㻻�ġ�<n><t>������˵�Ļ���׼���������ⳡ�������û�е�����̫��ʱ�䡣��")
	MisResultCondition(NoRecord, 17 )
	MisResultCondition(HasMission, 17 )
	MisResultCondition(HasItem, 4229, 1)
	MisResultAction(TakeItem, 4229, 1 )
	MisResultAction(SetRecord, 17 )
	MisResultAction(ClearMission, 17 )
	MisResultAction(GiveItem, 4228, 1, 4 )
	MisResultBagNeed(1)

-------------------------------------------------��������
	DefineMission( 336, "��������", 287 )

	MisBeginTalk( "<t>Ŷ�����ϵ�ʫ�䰡���Ѿ�ûʲô�����������˵�ˣ������һ��Ҫ֪�����Ҿ͸�������ˣ���˵�������������ػ���һ����������ã��Ǹ����õ��۾����ǿ��ű��صķ��򣬶��ڱ��ص��Ϸ�Ϊ����������Ѫ�����ͻ��������˵�еı��أ�����������û����ʲô�����õ������أ��㲻��ȥ���԰�<n><t>����������ô������㣬��Ҫȥ�����������ò�����<y������Ů��>�ɣ�����ܿ˲�����ҿ�������Ц�ɡ�<n><t>�ã�Ŀ��<r���������>�������ǣ������Ұɡ���")
	MisBeginCondition(NoRecord, 287)
	MisBeginCondition(NoRecord, 18)
	MisBeginCondition(HasMission, 18)
	MisBeginCondition(HasItem, 4227, 1)
	MisBeginAction(TakeItem, 4227, 1)
	MisBeginAction(AddMission, 287)
	MisBeginAction(AddTrigger, 2871, TE_GETITEM, 4230, 1)
	MisBeginAction(SetRecord, 18)
	MisBeginAction(ClearMission, 18)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "���սܿ�˵�Ļ�ȥ�ң�2822,1970��������<y������Ů��>�õ�<r���������>��Ȼ�����ҽܿ�̸̸��")
	MisNeed(MIS_NEED_ITEM, 4230, 1, 10, 1)

	MisResultTalk("<t>�Ҿ�˵��һ�����ҵ���������ã��㿴�������������������һ�����ܹ��������������")
	MisHelpTalk("<t>���ҵ���������������ҵ���һ��Ҫ���ҿ�һ�¡�")
	MisResultCondition(HasMission, 287 )
	MisResultCondition(HasItem, 4230, 1)
	MisResultAction(SetRecord, 287 )
	MisResultAction(ClearMission, 287 )
	MisResultAction(ObligeAcceptMission, 19 )
	MisResultAction(AddExp,300000,300000)
	MisResultAction(AddMoney,300000,300000)
	MisResultAction(AddExpAndType,2,30000,30000)
	MisResultAction(GiveItem,3463,10,4)
	MisResultAction(GiveItem,1092,5,4)
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4230 )
	TriggerAction( 1, AddNextFlag, 287, 10, 1 )
	RegCurTrigger( 2871 )

-----------------------------------�Ե��ռ�
	DefineMission( 337, "�Ե��ռ�", 20, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Ŷ���û�������ְ���Ϊʲô���ֳ������ҵ���ǰ���ұ�����Ϊ��Ҳ���������ˣ������ˣ����ǲ�����㷭��ģ��������������Ĳ��������κ��˷����������֣����߰ɣ�����һ�ֱ���������֣��������Ϲ�ϵ���˶�û�к��³��ġ���<n><t>Ҳ��ֻ���ǰ���ν��Ů��׷�����ǲŻ���������ȥð�����հ�")
	MisResultCondition(NoRecord, 20 )
	MisResultCondition(HasMission, 20 )
	MisResultCondition(HasItem, 4231, 1)
	MisResultAction(SetRecord, 20 )
	MisResultAction(ClearMission, 20 )
	
----------------------------Ů���׷����
	DefineMission( 338, "Ů���׷����", 288 )
	
	MisBeginTalk( "<t>���ڣ�Ů���׷��������֪����Ӧ�þ���ס�ڣ�898,3640����<b���峤����������.��>�ɡ���" )
	MisBeginCondition(NoRecord, 288)
	MisBeginCondition(HasRecord, 20)
	MisBeginCondition(NoMission, 288)
	MisBeginCondition(HasItem, 4231, 1)
	MisBeginAction(AddMission, 288)
	MisCancelAction(SystemNotice, "�������޷��ж�")
		
	MisNeed(MIS_NEED_DESP, "��<b���峤����������.��>��898,3640����һ���ռ�")
	
	MisHelpTalk("<t>�������Ѿ�����֪�������鶼�������ˣ���ȥ�ұ��˰ɡ�")
	MisResultCondition(AlwaysFailure )

-----------------------------------Ů���׷����
	DefineMission( 339, "Ů���׷����", 288, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>����ռ��ÿ�������Щħ������ִ��ҵ��������ÿ�����Ҫ�������ҵ��۾���<n><t>����Ϊ�����Ǹ�ס�ڣ�862,3303����<bʥŮ������>���������˻�ִ��������ħ������֣�û�뵽�����˸���һ�����о��������ֵ��˶������к��³��ģ�ԸŮ��ͷ����ǡ�")
	MisResultCondition(NoRecord, 288)
	MisResultCondition(HasMission, 288 )
	MisResultCondition(HasItem, 4231, 1)
	MisResultAction(SetRecord, 288 )
	MisResultAction(ClearMission, 288 )

----------------------------ʥŮ
	DefineMission( 340, "ʥŮ", 289 )
	
	MisBeginTalk( "<t>�Ҹ����㣬����ò�Ҫ��ס�ڣ�862,3303����<bʥŮ������>���Ϲ�ϵ�������㽫��ɲ��ܻ�ӭ���ˡ�<n><t>����Щ��ͷ�Ӷ���ô�ˣ�Ϊʲô�����������ֶ���������һ���������峤����������.�����˼���ƺ��Ǹ�<bʥŮ������>���������ֺ����о������磬ȥ�������������ɣ�" )
	MisBeginCondition(NoRecord, 289)
	MisBeginCondition(HasRecord, 288)
	MisBeginCondition(NoMission, 289)
	MisBeginCondition(HasItem, 4231, 1)
	MisBeginAction(AddMission, 289)
	MisCancelAction(SystemNotice, "�������޷��ж�")
		
	MisNeed(MIS_NEED_DESP, "��<bʥŮ������>��862,3303��̸һ���ռ�")
	
	MisHelpTalk("<t>�ٸ���ǿ��һ�Σ�������ﳶ�Ϲ�ϵ�����Ǹ�������ˡ�")
	MisResultCondition(AlwaysFailure )

-------------------------------------------------�ϵ�֤��
	DefineMission( 341, "�ϵ�֤��", 290 )

	MisBeginTalk( "<t>�Դ��Ǽ��·����Ժ����峤����������.���Ѿ�ȫ���ֹ�˹����������Ե��о���������������Ҳֻ����������ܼ����ҵ��о���<n><t>�ҿ���Ϊ�㷭����������ݣ���������Ҫ����֤�����Ů����ҳϣ�ֻ���ĵ���������ǿ���˲ſ���֪�����ֵ����ݣ�������ʷ�ı��罫�ٴ����ݣ����ڷ�������ȥ���ʣ�862,3500����<b����١��ʵ�ά��>��֪����")
	MisBeginCondition(NoRecord, 290)
	MisBeginCondition(HasMission, 289)
	MisBeginCondition(HasItem, 4231, 1)
	MisBeginAction(AddMission, 290)
	MisBeginAction(AddTrigger, 2901, TE_GETITEM, 3954, 1)
	MisBeginAction(SetRecord, 289)
	MisBeginAction(ClearMission, 289)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "��<b����١��ʵ�ά��>��862,3500��֤����������ͼ�ǿ")
	MisNeed(MIS_NEED_ITEM, 3954, 1, 15, 1)

	MisResultTalk("<t>�ܺã��Ȿ������ÿ������ҩʦ������˱ر��ĵ��ߣ��ܹ��õ��������ٴ���١��ʵ�ά���Ѿ���ͬ�����Ů����ҳϣ������أ�Ҳ�������ҵ�ŵ�ԣ���ȥ�����Ѿ�������ˣ�ϣ�����ܺú��������������")
	MisHelpTalk("<t>������л�����һ˿�ɻ󣬵����ܹ���ȫ���Ů������У����Ҿ����ҳ���Ů��֮���������Ұ�")
	MisResultCondition(HasMission, 290 )
	MisResultCondition(HasItem, 3954, 1)
	MisResultCondition(HasItem, 4231, 1)
	MisResultAction(TakeItem, 4231, 1)
	MisResultAction(TakeItem, 3954, 1)
	MisResultAction(GiveItem, 4232, 1, 4)
	MisResultAction(SetRecord, 290 )
	MisResultAction(ClearMission, 290 )
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3954 )
	TriggerAction( 1, AddNextFlag, 290, 15, 1 )
	RegCurTrigger( 2901 )


-----------------------------------�ϵ�֤��
	DefineMission( 342, "�ϵ�֤��", 290, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>���ӣ������һ���Ϊҩʦ��ʱ���Ҿ�Ԥ���ˣ�������һ��������ң������Ķ�Ů����ҳ������Ϊҩʦ��һ����Ѿ���֤���ˣ����㣬��������ϵ�֤����ȥ����Ӧ����������ɡ�")
	MisResultCondition(NoRecord, 290)
	MisResultCondition(NoItem, 3954, 1)
	MisResultCondition(HasMission, 290 )
	MisResultCondition(PfEqual, 5)
	MisResultCondition(HasItem, 4231, 1)
	MisResultAction(GiveItem, 3954, 1, 4 )
	MisResultBagNeed(1)
	
-----------------------------------�ϵ�֤��
	DefineMission( 343, "�ϵ�֤��", 290, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>���ӣ������һ���Ϊҩʦ��ʱ���Ҿ�Ԥ���ˣ�������һ��������ң������Ķ�Ů����ҳ������Ϊҩʦ��һ����Ѿ���֤���ˣ����㣬��������ϵ�֤����ȥ����Ӧ����������ɡ�")
	MisResultCondition(NoRecord, 290)
	MisResultCondition(NoItem, 3954, 1)
	MisResultCondition(HasMission, 290 )
	MisResultCondition(PfEqual, 13)
	MisResultCondition(HasItem, 4231, 1)
	MisResultAction(GiveItem, 3954, 1, 4 )
	MisResultBagNeed(1)
	
-----------------------------------�ϵ�֤��
	DefineMission( 344, "�ϵ�֤��", 290, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>���ӣ������һ���Ϊҩʦ��ʱ���Ҿ�Ԥ���ˣ�������һ��������ң������Ķ�Ů����ҳ������Ϊҩʦ��һ����Ѿ���֤���ˣ����㣬��������ϵ�֤����ȥ����Ӧ����������ɡ�")
	MisResultCondition(NoRecord, 290)
	MisResultCondition(NoItem, 3954, 1)
	MisResultCondition(HasMission, 290 )
	MisResultCondition(PfEqual, 14)
	MisResultCondition(HasItem, 4231, 1)
	MisResultAction(GiveItem, 3954, 1, 4 )
	MisResultBagNeed(1)
	
-----------------------------------�ϵ�֤��
	DefineMission( 345, "�ϵ�֤��", 290, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>������������ְҵ��·��ʱ����͸�������ʾ����˵����Ҳ��������������һ��������ҽ�����е��ɻ�����ָ����������ȷ�ĵ�·�����һ�Ϊ����������10�����顣<n><t>�����׼�����ˣ��������ң���ס���������Ŀ������ǲ������˳��ġ�")
	MisResultCondition(NoRecord, 290)
	MisResultCondition(NoFlag, 290, 1)
	MisResultCondition(NoItem, 3954, 1)
	MisResultCondition(HasMission, 290 )
	MisResultCondition(NoPfEqual, 5)
	MisResultCondition(NoPfEqual, 13)
	MisResultCondition(NoPfEqual, 14)
	MisResultCondition(HasItem, 4231, 1)
	MisResultAction(SetFlag, 290, 1 )

-------------------------------------------------Ů��Ŀ���
	DefineMission( 346, "Ů��Ŀ���", 291 )

	MisBeginTalk( "<t>�������Ѿ�����������׼������ô���ǿ�ʼ�ɣ������ǣ�440��1440��������<y�ֽ�ʬ>�������ǳ��߰�")
	MisBeginCondition(NoRecord, 291)
	MisBeginCondition(HasMission, 290)
	MisBeginCondition(HasFlag, 290, 1)
	MisBeginAction(AddMission, 291)
	MisBeginAction(AddTrigger, 2911, TE_KILL, 42, 10)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "��һ������")
	MisNeed(MIS_NEED_KILL, 42, 10, 10, 10)

	MisResultTalk("<t>��ϲͨ����һ�أ�Ů������ͬ�ڡ�")
	MisHelpTalk("<t>Ŭ���ɣ����ӣ�Ů����Զ����ͬ��")
	MisResultCondition(HasMission, 291 )
	MisResultCondition(HasFlag, 291, 19)
	MisResultAction(SetRecord, 291 )
	MisResultAction(ClearMission, 291 )
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 42 )
	TriggerAction( 1, AddNextFlag, 291, 10, 10 )
	RegCurTrigger( 2911 )

-------------------------------------------------Ů��Ŀ���
	DefineMission( 347, "Ů��Ŀ���", 292 )

	MisBeginTalk( "<t>��ϲ�㴳����һ�أ��������ǣ�511,1721��������<y������ʿ>�������ǻع����صĻ�����")
	MisBeginCondition(NoRecord, 292)
	MisBeginCondition(HasRecord, 291)
	MisBeginCondition(HasMission, 290)
	MisBeginAction(AddMission, 292)
	MisBeginAction(AddTrigger, 2921, TE_KILL, 267, 10)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "�ڶ�������")
	MisNeed(MIS_NEED_KILL, 267, 10, 10, 10)

	MisResultTalk("<t>��ϲͨ���ڶ��أ�Ů������ͬ�ڡ�")
	MisHelpTalk("<t>Ŭ���ɣ����ӣ�Ů����Զ����ͬ��")
	MisResultCondition(HasMission, 292 )
	MisResultCondition(HasFlag, 292, 19)
	MisResultAction(SetRecord, 292 )
	MisResultAction(ClearMission, 292 )
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 267 )
	TriggerAction( 1, AddNextFlag, 292, 10, 10 )
	RegCurTrigger( 2921 )

-------------------------------------------------Ů��Ŀ���
	DefineMission( 348, "Ů��Ŀ���", 293 )

	MisBeginTalk( "<t>�������ǣ�919��1581��������<y���������>��С�����Ĺ���")
	MisBeginCondition(NoRecord, 293)
	MisBeginCondition(HasRecord, 292)
	MisBeginCondition(HasMission, 290)
	MisBeginAction(AddMission, 293)
	MisBeginAction(AddTrigger, 2931, TE_KILL, 541, 10)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "����������")
	MisNeed(MIS_NEED_KILL, 541, 10, 10, 10)

	MisResultTalk("<t>��ϲͨ�������أ�Ů������ͬ�ڡ�")
	MisHelpTalk("<t>Ŭ���ɣ����ӣ�Ů����Զ����ͬ��")
	MisResultCondition(HasMission, 293 )
	MisResultCondition(HasFlag, 293, 19)
	MisResultAction(SetRecord, 293 )
	MisResultAction(ClearMission, 293 )
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 541 )
	TriggerAction( 1, AddNextFlag, 293, 10, 10 )
	RegCurTrigger( 2931 )

-------------------------------------------------Ů��Ŀ���
	DefineMission( 349, "Ů��Ŀ���", 294 )

	MisBeginTalk( "<t>���Ĺ��ǣ�360��1440��������<y������ʿ�ӳ�>������ɱ�����ǻ�����������")
	MisBeginCondition(NoRecord, 294)
	MisBeginCondition(HasRecord, 293)
	MisBeginCondition(HasMission, 290)
	MisBeginAction(AddMission, 294)
	MisBeginAction(AddTrigger, 2941, TE_KILL, 565, 10)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "���ĵ�����")
	MisNeed(MIS_NEED_KILL, 565, 10, 10, 10)

	MisResultTalk("<t>��ϲͨ�����Ĺأ�Ů������ͬ�ڡ�")
	MisHelpTalk("<t>Ŭ���ɣ����ӣ�Ů����Զ����ͬ��")
	MisResultCondition(HasMission, 294 )
	MisResultCondition(HasFlag, 294, 19)
	MisResultAction(SetRecord, 294 )
	MisResultAction(ClearMission, 294 )
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 565 )
	TriggerAction( 1, AddNextFlag, 294, 10, 10 )
	RegCurTrigger( 2941 )

-------------------------------------------------Ů��Ŀ���
	DefineMission( 350, "Ů��Ŀ���", 295 )

	MisBeginTalk( "<t>������ǣ�360��1440��������<y�����ʬ>����а��ĸ����߿�Щ��Ϣ��")
	MisBeginCondition(NoRecord, 295)
	MisBeginCondition(HasRecord, 294)
	MisBeginCondition(HasMission, 290)
	MisBeginAction(AddMission, 295)
	MisBeginAction(AddTrigger, 2951, TE_KILL, 52, 10)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "���������")
	MisNeed(MIS_NEED_KILL, 52, 10, 10, 10)

	MisResultTalk("<t>��ϲͨ������أ�Ů������ͬ�ڡ�")
	MisHelpTalk("<t>Ŭ���ɣ����ӣ�Ů����Զ����ͬ��")
	MisResultCondition(HasMission, 295 )
	MisResultCondition(HasFlag, 295, 19)
	MisResultAction(SetRecord, 295 )
	MisResultAction(ClearMission, 295 )
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 52 )
	TriggerAction( 1, AddNextFlag, 295, 10, 10 )
	RegCurTrigger( 2951 )

-------------------------------------------------Ů��Ŀ���
	DefineMission( 351, "Ů��Ŀ���", 296 )

	MisBeginTalk( "<t>�������ǣ�445��1571��������<y��Ѫ����>��ʥ�ְ������ƻ���")
	MisBeginCondition(NoRecord, 296)
	MisBeginCondition(HasRecord, 295)
	MisBeginCondition(HasMission, 290)
	MisBeginAction(AddMission, 296)
	MisBeginAction(AddTrigger, 2961, TE_KILL, 666, 10)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "����������")
	MisNeed(MIS_NEED_KILL, 666, 10, 10, 10)

	MisResultTalk("<t>��ϲͨ�������أ�Ů������ͬ�ڡ�")
	MisHelpTalk("<t>Ŭ���ɣ����ӣ�Ů����Զ����ͬ��")
	MisResultCondition(HasMission, 296 )
	MisResultCondition(HasFlag, 296, 19)
	MisResultAction(SetRecord, 296 )
	MisResultAction(ClearMission, 296 )
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 666 )
	TriggerAction( 1, AddNextFlag, 296, 10, 10 )
	RegCurTrigger( 2961 )

-------------------------------------------------Ů��Ŀ���
	DefineMission( 352, "Ů��Ŀ���", 297 )

	MisBeginTalk( "<t>���߹��ǣ�360��1340��������<y�ֲ��������ʬ>����Ҫ�������������ʬ�Ƚϣ����򣬳Կ��������Լ�")
	MisBeginCondition(NoRecord, 297)
	MisBeginCondition(HasRecord, 296)
	MisBeginCondition(HasMission, 290)
	MisBeginAction(AddMission, 297)
	MisBeginAction(AddTrigger, 2971, TE_KILL, 508, 10)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "���ߵ�����")
	MisNeed(MIS_NEED_KILL, 508, 10, 10, 10)

	MisResultTalk("<t>��ϲͨ�����߹أ�Ů������ͬ�ڡ�")
	MisHelpTalk("<t>Ŭ���ɣ����ӣ�Ů����Զ����ͬ��")
	MisResultCondition(HasMission, 297 )
	MisResultCondition(HasFlag, 297, 19)
	MisResultAction(SetRecord, 297 )
	MisResultAction(ClearMission, 297 )
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 508 )
	TriggerAction( 1, AddNextFlag, 297, 10, 10 )
	RegCurTrigger( 2971 )

-------------------------------------------------Ů��Ŀ���
	DefineMission( 353, "Ů��Ŀ���", 298 )

	MisBeginTalk( "<t>�ڰ˹��ǣ�622,3518��������<y������Ϲ���ʿ>��а��Ķ�ħ���������ɢ��")
	MisBeginCondition(NoRecord, 298)
	MisBeginCondition(HasRecord, 297)
	MisBeginCondition(HasMission, 290)
	MisBeginAction(AddMission, 298)
	MisBeginAction(AddTrigger, 2981, TE_KILL, 518, 10)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "�ڰ˵�����")
	MisNeed(MIS_NEED_KILL, 518, 10, 10, 10)

	MisResultTalk("<t>��ϲͨ���ڰ˹أ�Ů������ͬ�ڡ�")
	MisHelpTalk("<t>Ŭ���ɣ����ӣ�Ů����Զ����ͬ��")
	MisResultCondition(HasMission, 298 )
	MisResultCondition(HasFlag, 298, 19)
	MisResultAction(SetRecord, 298 )
	MisResultAction(ClearMission, 298 )
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 518 )
	TriggerAction( 1, AddNextFlag, 298, 10, 10 )
	RegCurTrigger( 2981 )

-------------------------------------------------Ů��Ŀ���
	DefineMission( 354, "Ů��Ŀ���", 299 )

	MisBeginTalk( "<t>�����ڶ����ǣ�662��2460��������<y�ֲ��Ŀ�ľ��>���ƻ���̬ƽ��ļһ�")
	MisBeginCondition(NoRecord, 299)
	MisBeginCondition(HasRecord, 298)
	MisBeginCondition(HasMission, 290)
	MisBeginAction(AddMission, 299)
	MisBeginAction(AddTrigger, 2991, TE_KILL, 547, 10)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "�ھŵ�����")
	MisNeed(MIS_NEED_KILL, 547, 10, 10, 10)

	MisResultTalk("<t>��ϲͨ���ھŹأ�Ů������ͬ�ڡ�")
	MisHelpTalk("<t>Ŭ���ɣ����ӣ�Ů����Զ����ͬ��")
	MisResultCondition(HasMission, 299 )
	MisResultCondition(HasFlag, 299, 19)
	MisResultAction(SetRecord, 299 )
	MisResultAction(ClearMission, 299 )
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 547 )
	TriggerAction( 1, AddNextFlag, 299, 10, 10 )
	RegCurTrigger( 2991 )

-------------------------------------------------Ů��Ŀ���
	DefineMission( 355, "Ů��Ŀ���", 300 )

	MisBeginTalk( "<t>���һ����<yȮ��>��������Ů����ʥ��Ϣ���������ˣ��ͷ�����")
	MisBeginCondition(NoRecord, 300)
	MisBeginCondition(HasRecord, 299)
	MisBeginCondition(HasMission, 290)
	MisBeginAction(AddMission, 300)
	MisBeginAction(AddTrigger, 3001, TE_KILL, 190, 1)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "��ʮ������")
	MisNeed(MIS_NEED_KILL, 190, 1, 10, 1)

	MisResultTalk("<t>���Ѿ�������ж�֤��������ҳϣ��������ɣ�������Ӧ�õģ�Ը����Զ�������������Ů��Ů������ͬ�ڡ�")
	MisHelpTalk("<t>Ŭ���ɣ����ӣ�Ů����Զ����ͬ��")
	MisResultCondition(HasMission, 300 )
	MisResultCondition(HasFlag, 300, 10)
	MisResultAction(SetRecord, 300 )
	MisResultAction(ClearMission, 300 )
	MisResultAction(GiveItem, 3954, 1, 4 )
	MisResultAction(AddExp,350000,350000)
	MisResultAction(AddMoney,10000,10000)
	MisResultAction(AddExpAndType,2,40000,40000)
	MisResultAction(GiveItem,3844,15,4)
	MisResultBagNeed(2)

		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 190 )
	TriggerAction( 1, AddNextFlag, 300, 10, 1 )
	RegCurTrigger( 3001 )


-----------------------------------����С��
	DefineMission( 356, "����С��", 21, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>����˵��������Ķ�����<n><t>ԭ��ȷʵû���ἰ�������Ǹ�����������֣�Ҫ����û����2222,2889���ľƹ��ҵ���˵��Ҳ���벻�����ء�")
	MisResultCondition(NoRecord, 21)
	MisResultCondition(HasMission, 21 )
	MisResultAction(SetRecord, 21 )
	MisResultAction(ClearMission, 21 )

----------------------------����С��
	DefineMission( 357, "����С��", 301 )
	
	MisBeginTalk( "<t>�������Ǹ��ƹ���ʱ���Ǻ�˵�ģ�˭֪�����ľ�����ģ��Ǿ��Ǽٵġ�<n><t>��ʥŮ����˼�����Ǿƹ��ҵ���֪�����ڴ���������飬�Ǹ��ƹ��𣿣��Ҽǵ��ϴ�������������꣬����Ȼ������һ�������ĵ�ַ�������Ҳ�㳤���ڱ����£�������Ҫȥ�������治֪���Ǹ��ǻ�����" )
	MisBeginCondition(NoRecord, 301)
	MisBeginCondition(HasRecord, 21)
	MisBeginCondition(NoMission, 301)
	MisBeginAction(AddMission, 301)
	MisCancelAction(SystemNotice, "�������޷��ж�")
		
	MisNeed(MIS_NEED_DESP, "��<b�ƹ��ҵ���>��2222,2889��̸̸������")
	
	MisHelpTalk("<t><b�ƹ��ҵ���>����˺����ڰ����ǵľư����")
	MisResultCondition(AlwaysFailure )

-------------------------------------------------ð�վ���
	DefineMission( 358, "ð�վ���", 302 )

	MisBeginTalk( "<t>����С�򣡣�����ô֪��������ֵģ��������Ǿ����޷������Ǹ��ط��ģ�����Ҳ��������κ��˹��ڴ���С����κ�����ˣ��Ҳ����ٿ�������ķ����ˣ����ǡ���������˵���ǣ�����֤�����ʵ������������ð�վ������սʤ���ϵ�һ�������<n><t>�����õ�ð�վ����֤���������Ұɣ������ˣ����겻���𣿷�Ҫȥ������������֪����ô��ġ�")
	MisBeginCondition(NoRecord, 302)
	MisBeginCondition(HasMission, 301)
	MisBeginCondition(HasItem, 4232, 1)
	MisBeginAction(AddMission, 302)
	MisBeginAction(SetRecord, 301)
	MisBeginAction(ClearMission, 301)
	MisBeginAction(AddTrigger, 3021, TE_GETITEM, 3962, 1)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "��<bСɽ��>��2193,2730��ȡ��ð�վ����֤���������ƹ��ҵ��ڣ�2222,2889��")
	MisNeed(MIS_NEED_ITEM, 3962, 1, 10, 1)

	MisResultTalk("<t>������õ���ð�վ����֤�����ȿȣ��Ǹ�����ʵ���������������Ҳ��������˵�ģ������������Ҳ��֪����<n><t>�����ȵȣ���Ҫ��ʲô���л��ú�˵���Ȱ�����ľ�ƿ���º��������ˣ��α���ô�����أ�����û˵��ʲô����֪���������̡�������Ӧ����ʶ�ɣ��йش�����������Ҷ�������˵�ģ��ƺ������ʹ������кܴ����ϵ��")
	MisHelpTalk("<t>��ð�վ����֤�����ò����ļһ��ʹ�������㴺�����������������������Ƕ�һ����ù�ļһ��ϧ��������ɣ������ˡ�")
	MisResultCondition(HasMission, 302 )
	MisResultCondition(HasItem, 3962, 1 )
	MisResultCondition(HasItem, 4232, 1 )
	MisResultAction(TakeItem, 4232, 1 )
	MisResultAction(TakeItem, 3962, 1 )
	MisResultAction(SetRecord, 302 )
	MisResultAction(SetRecord, 312 )
	MisResultAction(ClearMission, 302 )
			
	InitTrigger()
	TriggerCondition( 1, IsItem, 3962 )
	TriggerAction( 1, AddNextFlag, 302, 10, 1 )
	RegCurTrigger( 3021 )

-----------------------------------ð�վ���
	DefineMission( 359, "ð�վ���", 302, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>�þò�����������Ҫð�վ����֤�����Ǹ�����������ӵ�й�������������������������֪����ʲô����<n><t>����ˣ����㣬���������������·����Ѫ�ɣ�Ը����Զ����ð�վ���")
	MisResultCondition(NoRecord, 302)
	MisResultCondition(NoRecord, 312)
	MisResultCondition(NoItem, 3962, 1)
	MisResultCondition(HasMission, 302 )
	MisResultCondition(PfEqual, 4)
	MisResultAction(GiveItem, 3962, 1, 4 )
	MisResultBagNeed(1)

-----------------------------------ð�վ���
	DefineMission( 360, "ð�վ���", 302, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>�þò�����������Ҫð�վ����֤�����Ǹ�����������ӵ�й�������������������������֪����ʲô����<n><t>����ˣ����㣬���������������·����Ѫ�ɣ�Ը����Զ����ð�վ���")
	MisResultCondition(NoRecord, 302)
	MisResultCondition(NoRecord, 312)
	MisResultCondition(NoItem, 3962, 1)
	MisResultCondition(HasMission, 302 )
	MisResultCondition(PfEqual, 16)
	MisResultAction(GiveItem, 3962, 1, 4 )
	MisResultBagNeed(1)

-----------------------------------ð�վ���
	DefineMission( 361, "ð�վ���", 302, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>ʲô����һ������������ð�վ����֤�����ǿ���һ��������Ĺ��̰��������ȷ�������Ľ���һ�п���Ļ����������Ұɡ�")
	MisResultCondition(NoRecord, 302)
	MisResultCondition(NoRecord, 312)
	MisResultCondition(NoFlag, 302, 5)
	MisResultCondition(NoItem, 3962, 1)
	MisResultCondition(HasMission, 302 )
	MisResultCondition(NoPfEqual, 4)
	MisResultCondition(NoPfEqual, 16)
	MisResultAction(SetFlag, 302, 5 )

-------------------------------------------------ð�տ���
	DefineMission( 362, "ð�տ���", 303 )

	MisBeginTalk( "<t>���ҿ����㶼Ϊ��ο�������Щʲô��Ŷ�����������ã���������������ı��֣����Ѿ���ö���Ŀ����ˣ�׼���������������Ȼ������Ĵ������ܺ��Ŀ���ɡ�<n><t>��ĵ�һ�����˾��Ǽ��ɺ�����1950,1286��������<yӣ��13����ͻ����>��ȥ����10���һ�����壬���У���ס�Ժ�Ŀ��鶼��Ҫ������10�����ҾͲ����������ˡ�")
	MisBeginCondition(NoRecord, 303)
	MisBeginCondition(HasFlag, 302, 5)
	MisBeginCondition(HasMission, 302)
	MisBeginAction(AddMission, 303)
	MisBeginAction(AddTrigger, 3031, TE_KILL, 574, 10)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "��һ��")
	MisNeed(MIS_NEED_KILL, 574, 10, 10, 10)

	MisResultTalk("<t>�ã���һ�����Ѿ������ˣ���Ҫ������")
	MisHelpTalk("<t>��ô�򵥵Ŀ��鶼ͨ����������Ҫð�յ�֤����")
	MisResultCondition(HasMission, 303 )
	MisResultCondition(HasFlag, 303, 19)
	MisResultAction(SetRecord, 303 )
	MisResultAction(ClearMission, 303 )
	
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 574 )
	TriggerAction( 1, AddNextFlag, 303, 10, 10 )
	RegCurTrigger( 3031 )

-------------------------------------------------ð�տ���
	DefineMission( 363, "ð�տ���", 304 )

	MisBeginTalk( "<t>������������Ⱥ����370,2317��������<y��Ѫ���>�����Ǿ�ֻ��ͷ����ѣ�ûʲô�Ѷ�")
	MisBeginCondition(NoRecord, 304)
	MisBeginCondition(HasRecord, 303)
	MisBeginCondition(HasMission, 302)
	MisBeginAction(AddMission, 304)
	MisBeginAction(AddTrigger, 3041, TE_KILL, 638, 10)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "�ڶ���")
	MisNeed(MIS_NEED_KILL, 638, 10, 10, 10)

	MisResultTalk("<t>�ã��ڶ������Ѿ������ˣ���Ҫ������")
	MisHelpTalk("<t>��ô�򵥵Ŀ��鶼ͨ����������Ҫð�յ�֤����")
	MisResultCondition(HasMission, 304 )
	MisResultCondition(HasFlag, 304, 19)
	MisResultAction(SetRecord, 304 )
	MisResultAction(ClearMission, 304 )
	
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 638 )
	TriggerAction( 1, AddNextFlag, 304, 10, 10 )
	RegCurTrigger( 3041 )



-------------------------------------------------ð�տ���
	DefineMission( 364, "ð�տ���", 305 )

	MisBeginTalk( "<t>�������ǡ�������Ⱥ����441,2957��������<y���ˮĸ>�������������Լ�������֣�����û�������ǹ���һ˿�硣")
	MisBeginCondition(NoRecord, 305)
	MisBeginCondition(HasRecord, 304)
	MisBeginCondition(HasMission, 302)
	MisBeginAction(AddMission, 305)
	MisBeginAction(AddTrigger, 3051, TE_KILL, 583, 10)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "������")
	MisNeed(MIS_NEED_KILL, 583, 10, 10, 10)

	MisResultTalk("<t>�ã����������Ѿ������ˣ���Ҫ������")
	MisHelpTalk("<t>��ô�򵥵Ŀ��鶼ͨ����������Ҫð�յ�֤����")
	MisResultCondition(HasMission, 305 )
	MisResultCondition(HasFlag, 305, 19)
	MisResultAction(SetRecord, 305 )
	MisResultAction(ClearMission, 305 )
	
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 583 )
	TriggerAction( 1, AddNextFlag, 305, 10, 10 )
	RegCurTrigger( 3051 )

-------------------------------------------------ð�տ���
	DefineMission( 365, "ð�տ���", 306 )

	MisBeginTalk( "<t>�������Ǽ��ɺ�����3149,3836�������ı�̬<y˿��>����֪���ĸ���������֣���û���������³�˿����")
	MisBeginCondition(NoRecord, 306)
	MisBeginCondition(HasRecord, 305)
	MisBeginCondition(HasMission, 302)
	MisBeginAction(AddMission, 306)
	MisBeginAction(AddTrigger, 3061, TE_KILL, 660, 10)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "���Ļ�")
	MisNeed(MIS_NEED_KILL, 660, 10, 10, 10)

	MisResultTalk("<t>�ã����Ĺ����Ѿ������ˣ���Ҫ������")
	MisHelpTalk("<t>��ô�򵥵Ŀ��鶼ͨ����������Ҫð�յ�֤����")
	MisResultCondition(HasMission, 306 )
	MisResultCondition(HasFlag, 306, 19)
	MisResultAction(SetRecord, 306 )
	MisResultAction(ClearMission, 306 )
	
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 660 )
	TriggerAction( 1, AddNextFlag, 306, 10, 10 )
	RegCurTrigger( 3061 )




-------------------------------------------------ð�տ���
	DefineMission( 366, "ð�տ���", 307 )

	MisBeginTalk( "<t>�������е���̣���ĵ���������Ⱥ���2631,2048�������ɰ���<y�Ʊ�ʯ����>����֪���������ϵĻƱ�ʯ�����ǲ�����ġ�")
	MisBeginCondition(NoRecord, 307)
	MisBeginCondition(HasRecord, 306)
	MisBeginCondition(HasMission, 302)
	MisBeginAction(AddMission, 307)
	MisBeginAction(AddTrigger, 3071, TE_KILL, 584, 10)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "���廷")
	MisNeed(MIS_NEED_KILL, 584, 10, 10, 10)

	MisResultTalk("<t>�ã���������Ѿ������ˣ���Ҫ������")
	MisHelpTalk("<t>��ô�򵥵Ŀ��鶼ͨ����������Ҫð�յ�֤����")
	MisResultCondition(HasMission, 307 )
	MisResultCondition(HasFlag, 307, 19)
	MisResultAction(SetRecord, 307 )
	MisResultAction(ClearMission, 307 )
	
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 584 )
	TriggerAction( 1, AddNextFlag, 307, 10, 10 )
	RegCurTrigger( 3071 )

-------------------------------------------------ð�տ���
	DefineMission( 367, "ð�տ���", 308 )

	MisBeginTalk( "<t>��������Ŷ�����ˮĸ���ֵܣ�����Ⱥ����1275,3634��������<y쫷�ˮĸ>������Ķ��֣������������棬ʹ���س顣")
	MisBeginCondition(NoRecord, 308)
	MisBeginCondition(HasRecord, 307)
	MisBeginCondition(HasMission, 302)
	MisBeginAction(AddMission, 308)
	MisBeginAction(AddTrigger, 3081, TE_KILL, 603, 10)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "������")
	MisNeed(MIS_NEED_KILL, 603, 10, 10, 10)

	MisResultTalk("<t>�ã����������Ѿ������ˣ���Ҫ������")
	MisHelpTalk("<t>��ô�򵥵Ŀ��鶼ͨ����������Ҫð�յ�֤����")
	MisResultCondition(HasMission, 308 )
	MisResultCondition(HasFlag, 308, 19)
	MisResultAction(SetRecord, 308 )
	MisResultAction(ClearMission, 308 )
	
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 603 )
	TriggerAction( 1, AddNextFlag, 308, 10, 10 )
	RegCurTrigger( 3081 )


-------------------------------------------------ð�տ���
	DefineMission( 368, "ð�տ���", 309 )

	MisBeginTalk( "<t>������������Ⱥ����3785,1975��������<y���걦ʯ����>�����ǿ��������ﰢ��Ը��ԭ���ҡ�")
	MisBeginCondition(NoRecord, 309)
	MisBeginCondition(HasRecord, 308)
	MisBeginCondition(HasMission, 302)
	MisBeginAction(AddMission, 309)
	MisBeginAction(AddTrigger, 3091, TE_KILL, 622, 10)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "���߻�")
	MisNeed(MIS_NEED_KILL, 622, 10, 10, 10)

	MisResultTalk("<t>�ã����߹����Ѿ������ˣ���Ҫ������")
	MisHelpTalk("<t>��ô�򵥵Ŀ��鶼ͨ����������Ҫð�յ�֤����")
	MisResultCondition(HasMission, 309 )
	MisResultCondition(HasFlag, 309, 19)
	MisResultAction(SetRecord, 309 )
	MisResultAction(ClearMission, 309 )
	
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 622 )
	TriggerAction( 1, AddNextFlag, 309, 10, 10 )
	RegCurTrigger( 3091 )




-------------------------------------------------ð�տ���
	DefineMission( 369, "ð�տ���", 310 )

	MisBeginTalk( "<t>�����������ɺ�����2790,1286��������<yӣ��13����ָ�ӽ�>����ε��ѶȱȽϴ��Ѿ��������ˣ����ס����")
	MisBeginCondition(NoRecord, 310)
	MisBeginCondition(HasRecord, 309)
	MisBeginCondition(HasMission, 302)
	MisBeginAction(AddMission, 310)
	MisBeginAction(AddTrigger, 3101, TE_KILL, 650, 10)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "�ڰ˻�")
	MisNeed(MIS_NEED_KILL, 650, 10, 10, 10)

	MisResultTalk("<t>�ã��ڰ˹����Ѿ������ˣ���Ҫ������")
	MisHelpTalk("<t>��ô�򵥵Ŀ��鶼ͨ����������Ҫð�յ�֤����")
	MisResultCondition(HasMission, 310 )
	MisResultCondition(HasFlag, 310, 19)
	MisResultAction(SetRecord, 310 )
	MisResultAction(ClearMission, 310 )
	
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 650 )
	TriggerAction( 1, AddNextFlag, 310, 10, 10 )
	RegCurTrigger( 3101 )


-------------------------------------------------ð�տ���
	DefineMission( 370, "ð�տ���", 311 )

	MisBeginTalk( "<t>������������Ⱥ����370,2317��������<y�д̵Ĺ���>������ʵ��̫�а���հ�ˣ�Ϊ��ε���������������ǡ�")
	MisBeginCondition(NoRecord, 311)
	MisBeginCondition(HasRecord, 310)
	MisBeginCondition(HasMission, 302)
	MisBeginAction(AddMission, 311)
	MisBeginAction(AddTrigger, 3111, TE_KILL, 585, 10)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "�ھŻ�")
	MisNeed(MIS_NEED_KILL, 585, 10, 10, 10)

	MisResultTalk("<t>�ã��ھŹ����Ѿ������ˣ���Ҫ������")
	MisHelpTalk("<t>��ô�򵥵Ŀ��鶼ͨ����������Ҫð�յ�֤����")
	MisResultCondition(HasMission, 311 )
	MisResultCondition(HasFlag, 311, 19)
	MisResultAction(SetRecord, 311 )
	MisResultAction(ClearMission, 311 )
	
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 585 )
	TriggerAction( 1, AddNextFlag, 311, 10, 10 )
	RegCurTrigger( 3111 )

-------------------------------------------------ð�տ���
	DefineMission( 371, "ð�տ���", 312 )

	MisBeginTalk( "<t><t>���Ҳ��Ϊ������Щ�����ˣ������ƻ�λ��ħŮ֮����2891,260����<y��������֧Ԯ��>�ɣ����뿴���ǰ�һﲻ���·���ʲô���ӡ�")
	MisBeginCondition(NoRecord, 312)
	MisBeginCondition(HasRecord, 311)
	MisBeginCondition(HasMission, 302)
	MisBeginAction(AddMission, 312)
	MisBeginAction(AddTrigger, 3121, TE_KILL, 611, 10)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "��ʮ��")
	MisNeed(MIS_NEED_KILL, 611, 10, 10, 10)

	MisResultTalk("<t>û�뵽�����ͨ�������еĿ��飬�����Щð���߶����Ӿ���ð�վ����أ����㣬��Ӧ������ָ�ϡ�")
	MisHelpTalk("<t>��ô�򵥵Ŀ��鶼ͨ����������Ҫð�յ�֤����")
	MisResultCondition(HasMission, 312 )
	MisResultCondition(HasFlag, 312, 19)
	MisResultAction(SetRecord, 312 )
	MisResultAction(ClearMission, 312 )
        MisResultAction(GiveItem, 3962, 1, 4 )	
	MisResultAction(AddExp,250000,250000)
	MisResultAction(AddMoney,50000,50000)
	MisResultAction(AddExpAndType,2,40000,40000)
	MisResultAction(GiveItem,3845,6,4)
	MisResultBagNeed(2)

			
	InitTrigger()
	TriggerCondition( 1, IsMonster, 611 )
	TriggerAction( 1, AddNextFlag, 312, 10, 10 )
	RegCurTrigger( 3121 )

----------------------------����
	DefineMission( 372, "����", 313 )
	
	MisBeginTalk( "<t>�ҽ�����ȥ�ң�2277,2769����<b�����̱���>���ʣ���һ��֪������Ҫ�Ķ�����" )
	MisBeginCondition(NoRecord, 313)
	MisBeginCondition(HasRecord, 302)
	MisBeginCondition(NoMission, 313)
	MisBeginAction(AddMission, 313)
	MisCancelAction(SystemNotice, "�������޷��ж�")
		
	MisNeed(MIS_NEED_DESP, "��<b�����̱���>��2277,2769���Ի�")
	
	MisHelpTalk("<t>��<b�����̱���>���������������")
	MisResultCondition(AlwaysFailure )


----------------------------����
	DefineMission( 373, "����", 313, COMPLETE_SHOW )

	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>����˵ʲô�������򣬴����򣬶����е����ְ�������Ӧ����30���˰ɣ��Ҹ����е���˵����������飬���Ƕ������ң�Ц�������Σ������������ᵽ���ϣ������Ҷ�Ҫ�����ˣ���ȴ�������ҵ���ǰ����˵�����������������")
	MisResultCondition(NoRecord, 313)
	MisResultCondition(HasMission, 313)
	MisResultAction(SetRecord, 313 )
	MisResultAction(ClearMission, 313 )

-----------------------------------����
	DefineMission( 374, "����", 315 )

	MisBeginTalk( "<t>�Բ����ҿ���˵�˺ܶ�ϻ��������㲻�����ţ��������Ǵ�����ľ���<n><t>��������һ���Ŀڣ����ֵ������ڴ������ֱ����һ����������ʱ�������˾��ˣ����ǳ����Ĵ����޵ֿ��ĳ�û�ˣ��ұ������Ľ��Ӿ����Դ������ʧȥ��ϵ������û�����������������ձ����������ڰ����ǵĹ¶�Ժ�����ܵ����ҵļ��ˣ������ȥ�����ǣ�û���������ҵ�˵����û���˿�ð��ȥ��Ƭδ֪���������Ӿ�����һ�����ȥ�����������ˣ���ع���Ҳ�ز�ȥ�ˣ������Ҫȥ����ð�յĻ���������Ұ�һ����������ȥ�������ͷ���l�����������������Ӧ������������Ҿ͸����㴺�����λ�á�")
	MisBeginCondition(NoRecord, 315)
	MisBeginCondition(HasRecord, 313)
	MisBeginCondition(NoMission, 315)
	MisBeginAction(AddMission, 315)
	MisBeginAction(AddTrigger, 3151, TE_GETITEM, 4235, 1)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "ȡ��<b����>�����������еĶ���")
	MisNeed(MIS_NEED_ITEM, 4235, 1, 1, 1)

	MisResultTalk("<t>�ú��ӣ��Ҿ�֪����һ�����õ������ģ���������������ѵ�ʱ����ģ��ҵĽ�㻹��һ��һģһ���ģ����������񿴼��ҵĽ�㣬����Ұ�������ش�����ɣ����ֽ����ҵĽ�㣬����������ŵĻ���<n><t>���ˣ�����Ǻ��֣�������ʧ�����ʱ��Ϳ�һ�۰ɡ�<n><t>�����û�Ǵ�Ļ�������Ĵ��λ����������Ⱥ���Ķ��Ϸ���������Χ�����ﵺ���ĵ������㿴��һ��ê�͵����ʱ�����봺����Ͳ�Զ�ˣ�ף����˺��ӡ�")
	MisHelpTalk("<t>�ҵĶ����ͷ������������������ȥ��ذ�����֪��������Ϲ�ͷ���ܳŶ��")
	MisResultCondition(HasMission, 315 )
	MisResultCondition(HasItem, 4235, 1)
	MisResultAction(GiveItem, 4237, 1 , 4)
	MisResultAction(SetRecord, 315 )
	MisResultAction(ClearMission, 315 )
	MisResultBagNeed(1)
	
		
	InitTrigger()
	TriggerCondition( 1, IsItem, 4235 )
	TriggerAction( 1, AddNextFlag, 315, 1, 1 )
	RegCurTrigger( 3151 )


-----------------------------------���ٵĶ���
	DefineMission( 375, "���ٵĶ���", 316 )

	MisBeginTalk( "<t>������飬�����Ѿ�����˵���ˣ���������Ǳ�������ϣ�������治֪��������һ����������ļһ�ƾʲô�����Ŀ��԰�ȫ�İ����ŵĶ����͹�ȥ��<n><t>������Σ���ʹ���������Ҳ�ã��������ܴ�����ŷ���µ�����ɱ��<y���ͼ�����100ֻ>�ļ�¼��֤�������������������õ����ŵĶ�����<n><t>���ִ��Ͷ���һ�������ڣ�3101,666������")
	MisBeginCondition(NoRecord, 316)
	MisBeginCondition(HasMission, 315)
	MisBeginCondition(NoMission, 316)
	MisBeginCondition(NoPfEqual, 1)
	MisBeginCondition(NoPfEqual, 2)
	MisBeginCondition(NoPfEqual, 8)
	MisBeginCondition(NoPfEqual, 9)
	MisBeginCondition(NoPfEqual, 12)
	MisBeginAction(AddMission, 316)
	MisBeginAction(AddTrigger, 3161, TE_KILL, 504, 100)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "������ŷ���µļ�¼")
	MisNeed(MIS_NEED_KILL, 504, 100, 1, 100)

	MisResultTalk("<t>û�뵽�����ȥ�ˣ����һ���ɫ����������񣬿��������г�Ц��ŷ�Ĳ����ˣ����������㣬���ŵĶ��������ܺ�Ŷ����Ȼ���Ҳ���Ź���ġ�<n><t>���ˣ��������۾ưɷ���Ա�����Ⱥ�����һ�����ƺ������������룬��Ҫ����ʱ�䣬����ȥ�������ɡ�")
	MisHelpTalk("<t>����ɱ��<y���ͼ�����100ֻ>�ļ�¼�ǲ���̫���ˣ������ڿ���Ҫ��Ҫ���������Ѷȡ�")
	MisResultCondition(HasMission, 316 )
	MisResultCondition(HasFlag, 316, 100)
	MisResultAction(SetRecord, 316 )
	MisResultAction(ClearMission, 316 )
        MisResultAction(GiveItem, 4235, 1, 4 )	
	MisResultBagNeed(1)
 		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 504 )
	TriggerAction( 1, AddNextFlag, 316, 1, 100 )
	RegCurTrigger( 3161 )


-------------------------------------------------����
	DefineMission( 376, "����", 315 , COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>������飬�����Ѿ�����˵�ˣ�������ô������������Ը��������ˣ������ϵ��˺�Ҳ֤�������ǵ�Ӣ�£���ȥ�ɣ���������ϣ���������Ʊ���������ȴ����������Ը��<n><t>���ˣ��������۾ưɷ���Ա�����Ⱥ�����һ�����ƺ������������룬��Ҫ����ʱ�䣬����ȥ�������ɡ�")
	MisResultCondition(NoRecord, 315)
	MisResultCondition(NoFlag, 315, 10)
	MisResultCondition(NoItem, 4235, 1)
	MisResultCondition(HasMission, 315 )
	MisResultCondition(PfEqual, 1)
	MisResultAction(GiveItem, 4235, 1, 4 )
	MisResultAction(SetFlag, 315, 10 )
	MisResultBagNeed(1)

-------------------------------------------------����
	DefineMission( 377, "����", 315 , COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>������飬�����Ѿ�����˵�ˣ�������ô������������Ը��������ˣ������ϵ��˺�Ҳ֤�������ǵ�Ӣ�£���ȥ�ɣ���������ϣ���������Ʊ���������ȴ����������Ը��<n><t>���ˣ��������۾ưɷ���Ա�����Ⱥ�����һ�����ƺ������������룬��Ҫ����ʱ�䣬����ȥ�������ɡ�")
	MisResultCondition(NoRecord, 315)
	MisResultCondition(NoFlag, 315, 20)
	MisResultCondition(NoItem, 4235, 1)
	MisResultCondition(HasMission, 315 )
	MisResultCondition(PfEqual, 8)
	MisResultAction(GiveItem, 4235, 1, 4 )
	MisResultAction(SetFlag, 315, 20 )
	MisResultBagNeed(1)

-------------------------------------------------����
	DefineMission( 560, "����", 315 , COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>������飬�����Ѿ�����˵�ˣ�������ô������������Ը��������ˣ������ϵ��˺�Ҳ֤�������ǵ�Ӣ�£���ȥ�ɣ���������ϣ���������Ʊ���������ȴ����������Ը��<n><t>���ˣ��������۾ưɷ���Ա�����Ⱥ�����һ�����ƺ������������룬��Ҫ����ʱ�䣬����ȥ�������ɡ�")
	MisResultCondition(NoRecord, 315)
	MisResultCondition(NoFlag, 315, 30)
	MisResultCondition(NoItem, 4235, 1)
	MisResultCondition(HasMission, 315 )
	MisResultCondition(PfEqual, 9)
	MisResultAction(GiveItem, 4235, 1, 4 )
	MisResultAction(SetFlag, 315, 30 )
	MisResultBagNeed(1)

-------------------------------------------------����
	DefineMission( 561, "����", 315 , COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>������飬�����Ѿ�����˵�ˣ�������ô������������Ը��������ˣ������ϵ��˺�Ҳ֤�������ǵ�Ӣ�£���ȥ�ɣ���������ϣ���������Ʊ���������ȴ����������Ը��<n><t>���ˣ��������۾ưɷ���Ա�����Ⱥ�����һ�����ƺ������������룬��Ҫ����ʱ�䣬����ȥ�������ɡ�")
	MisResultCondition(NoRecord, 315)
	MisResultCondition(NoFlag, 315, 40)
	MisResultCondition(NoItem, 4235, 1)
	MisResultCondition(HasMission, 315 )
	MisResultCondition(PfEqual, 2)
	MisResultAction(GiveItem, 4235, 1, 4 )
	MisResultAction(SetFlag, 315, 40 )
	MisResultBagNeed(1)

-------------------------------------------------����
	DefineMission( 562, "����", 315 , COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>������飬�����Ѿ�����˵�ˣ�������ô������������Ը��������ˣ������ϵ��˺�Ҳ֤�������ǵ�Ӣ�£���ȥ�ɣ���������ϣ���������Ʊ���������ȴ����������Ը��<n><t>���ˣ��������۾ưɷ���Ա�����Ⱥ�����һ�����ƺ������������룬��Ҫ����ʱ�䣬����ȥ�������ɡ�")
	MisResultCondition(NoRecord, 315)
	MisResultCondition(NoFlag, 315, 50)
	MisResultCondition(NoItem, 4235, 1)
	MisResultCondition(HasMission, 315 )
	MisResultCondition(PfEqual, 12)
	MisResultAction(GiveItem, 4235, 1, 4 )
	MisResultAction(SetFlag, 315, 50 )
	MisResultBagNeed(1)



-----------------------------------���ϵ�����
	DefineMission( 378, "���ϵ�����", 317 )

	MisBeginTalk( "<t>���ϵ�������������һ�����ԣ����Ǻ��������һ�����Ƶģ��Ҽǵú����Ǻ�����������ɳ̲��ɢ����ʱ��񵽵ġ�<n><t>ʲô������Ҫ�����У��Һ�ϲ���ģ����˳�5000���Ҷ�û����ʲô����Ը���1��飬���У�������Һ������Ѱ�����������ٶ�ǮҲ������5���������룬����10����һ��Ҳ���У��оͳɽ���һ�ֽ�Ǯ��һ�ֽ�����")
	MisBeginCondition(NoRecord, 317)
	MisBeginCondition(HasRecord, 316)
	MisBeginCondition(HasItem, 4235, 1)
	MisBeginCondition(NoMission, 317)
	MisBeginAction(AddMission, 317)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "��10����<b�ưɷ���Ա������>��990,1263��������")
	
	MisResultTalk("<t>�Ǻǣ�10����������ˣ���������Ȼ˵�˾�Ҫ���������㣬Ҫ���ܺ�Ŷ���Ժ�����õġ�")
	MisHelpTalk("<t>����Ǯ�������ң�����ʵ�����������ģ����������ҵķ��ϲſ����ģ����Ȼ���뽵�ۡ�")
	MisResultCondition(HasMoney, 100000 )
	MisResultCondition(HasMission, 317 )
	MisResultAction(TakeMoney, 100000 )
	MisResultAction(GiveItem, 4236, 1, 4 )
	MisResultAction(SetRecord, 317 )
	MisResultAction(ClearMission, 317 )
	MisResultAction(AddExp,180000,180000)
	MisResultAction(AddMoney,15000,15000)
	MisResultAction(AddExpAndType,2,40000,40000)
	MisResultAction(GiveItem,3848,30,4)
	MisResultBagNeed(2)
	

-----------------------------------����֮��
	DefineMission( 379, "����֮��", 318 )

	MisBeginTalk( "<t>���ڵ���λ��ƫƧ������þö�û�˾����ˣ���˵���Ǳ�һ���������������ģ�������վ���������������ˡ�<n><t>�⸽��ʱ����û����Σ�յ����������Щ�����Σ�յ���ӣ��13�����ţ����Ǿ���װ����ˮ���ˣ����������Ĵ�ֻȥ��Ԯ��Ȼ��Ϯ����Щ��ֻ��������ղ������ľ�����Щ�˰ɣ�����ǰ��������䴬�ͱ�Ϯ���ˡ�<n><t>��Ȼ�������������������������ǰ�<r����Ʒ>�������ɣ��һὫ������һ���ָ�����Ϊ���ꡣ")
	MisBeginCondition(NoRecord, 318)
	MisBeginCondition(HasMission, 22)
	MisBeginCondition(NoMission, 318)
	MisBeginAction(SetRecord, 22)
	MisBeginAction(ClearMission, 22)
	MisBeginAction(AddMission, 318)
	MisBeginAction(AddTrigger, 3181, TE_GETITEM, 4238, 1)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "�ﲹ��վ���˶��<r����Ʒ>")
	MisNeed(MIS_NEED_ITEM, 4238, 1, 1, 1)

	MisResultTalk("<t>̫���ˣ���Ȼ����ȫ���Ĳ������������������´β�������֮ǰ��������ˣ��ǳ���л�㣬���Ǵ�Ӧ����ı��ꡣ")
	MisHelpTalk("<t>����Ұɣ�û����Щ�����Ҿ�Ҫ�����ڵ����ˣ�������������С���м仹��һ�����һؼҵ����ӣ�������������һ��������������ʧ��")
	MisResultCondition(HasMission, 318 )
	MisResultCondition(HasItem, 4238, 1 )
	MisResultAction(TakeItem, 4238, 1 )
	MisResultAction(SetRecord, 318 )
	MisResultAction(ClearMission, 318 )
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4238 )
	TriggerAction( 1, AddNextFlag, 318, 1, 1 )
	RegCurTrigger( 3181 )


----------------------------����֮��
	DefineMission( 380, "����֮��", 319 )
	
	MisBeginTalk( "<t>��֪������Ϊ�Ҷ�ز����Ѿ��ܷ����ˣ�ʵ�ڲ�Ӧ�ü����鷳���æ�����ǣ��㿴���ˣ����ڲ������϶��Ǻ�������һ�β�����֪��ʲôʱ������������æ��������������һ������վ���ֵ�˵һ�£��������ð�����׼����" )
	MisBeginCondition(NoRecord, 319)
	MisBeginCondition(HasRecord, 318)
	MisBeginCondition(NoMission, 319)
	MisBeginAction(AddMission, 319)
	MisCancelAction(SystemNotice, "�������޷��ж�")
		
	MisNeed(MIS_NEED_DESP, "�뺣��ָ�ӡ������ף�2041,1355���Ի�")
	
	MisHelpTalk("�Ѳ���Ʒ���ٵ��������<b��������վ>��<b����ָ�ӡ�������>��")
	MisResultCondition(AlwaysFailure )



-----------------------------------����֮��
	DefineMission( 381, "����֮��", 320 )

	MisBeginTalk( "<t>ʲô,��˵ʲô,��û�и��,��û�в���,��������,���治����ˣ��������٣���Ҫ������������٣���ҵ���������ͷû���ԣ����ò����˻��ˡ�<n><t>�����˰������������ף��ͷ��͵��������ܲ��ܰ���һ��æ��<n><t>�⸽����һ���泡����û����ʳ�Ե�ʱ���ǵ�����ȥ����Եģ�����������ȴ��һȺ�����ռ�ˣ�����������������С������һ���Ӷ��򲻹���Щ�����ˣ���������Ͳ�һ���ˣ���������һ�����Դ����Щ������ԡ������ܲ��ܰ��Ҵ�Щ��������Ժ��һ��ʱ���ҿ���Ҫ����Щ��������ˡ�")
	MisBeginCondition(NoRecord, 320)
	MisBeginCondition(HasMission, 319)
	MisBeginCondition(NoMission, 320)
	MisBeginAction(ClearMission, 319)
	MisBeginAction(SetRecord, 319)
	MisBeginAction(AddMission, 320)
	MisBeginAction(AddTrigger, 3201, TE_GETITEM, 1478, 20)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "�ﺣ��ָ�ӡ������ף�2041,1355������20��<r����Ƭ>")
	MisNeed(MIS_NEED_ITEM, 1478, 20, 1, 20)

	MisResultTalk("<t>�㿴���Ҿ�˵��һ�����õ��ģ��������Ѿ�ûʣ��ʲô���Ը���Ķ����ˣ�ֻ��һ����Ϣ��Ҳ�����ܸ���Ȥ��")
	MisHelpTalk("<t>ʲô����ûѧ����ļ��ܣ�Ŷ����ߵ£�������ֻ�е����ˡ�")
	MisResultCondition(HasMission, 320)
	MisResultCondition(HasItem, 1478, 20 )
        MisResultAction(TakeItem, 1478, 20 )
	MisResultAction(SetRecord, 320 )
	MisResultAction(ClearMission, 320 )
  	
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 1478 )
	TriggerAction( 1, AddNextFlag, 320, 1, 20 )
	RegCurTrigger( 3201 )



-----------------------------------����֮��
	DefineMission( 382, "����֮��", 321 )
	MisBeginCondition(NoMission, 321)
	MisBeginCondition(HasRecord, 320)
	MisBeginCondition(NoMission, 321)
	MisBeginAction(AddMission, 321)	

	MisBeginTalk("<t>��֪�������������и��ֹ�����Ϳ�������һ�������ҩ���������ҩ����ˣ��������������������������֣���������ｻ����<n><t>���������۹⿴���ң�ʵ�������㣬�Ҳ�֪����ô�����������߰�����֪����һ����֪���䷽����������һ������վ�ģ�3153,674��������ָ�ӣ���ȥ�������ˣ���˵���ҽ��ܵģ�������ô�����ҿɻ������ľ��������ء�")
	
	MisNeed(MIS_NEED_DESP, "��<b����ز���վ>��<b����ָ�ӡ����ڶ�>��3153,674����̸")
	
	MisResultCondition(AlwaysFailure )


-----------------------------------����֮��
	DefineMission( 383, "����֮��", 321, COMPLETE_SHOW )
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>�����ļһ�����ڵ�����˵�ˣ�Ҫ���ǿ������ȹ���һ�εķ��ϣ��Ҳ�����������<n><t>�������ܷ���ҩ��Ŷ����û����˵�������ҩ�����ƽ����ܷ���ҩ���ҵĵ�ȷ������������ҩ��ԭ�Ϻ����ҵģ����������ҵ�ԭ�ϣ��ҿ���Ϊ��������")
	MisResultCondition(NoRecord, 321)
	MisResultCondition(HasMission, 321)
	MisResultAction(ClearMission, 321)
	MisResultAction(SetRecord, 321)

-----------------------------------����֮��
	DefineMission( 384, "����֮��", 323 )

	MisBeginTalk( "<t>Ҫ��������ҩ������ҪŪ����ë�̵���ǣ���׳����ǣ����õ���Ǹ�30�������Ǹ�������ʲô��˼����ҩ���ֶ����һ���ƭ�㲻�ɡ�")
	MisBeginCondition(NoRecord, 323)
	MisBeginCondition(HasRecord, 321)
	MisBeginCondition(NoMission, 323)
	MisBeginAction(AddMission, 323)
	MisBeginAction(AddTrigger, 3231, TE_GETITEM, 4938, 30)
	MisBeginAction(AddTrigger, 3232, TE_GETITEM, 4957, 30)
	MisBeginAction(AddTrigger, 3233, TE_GETITEM, 4976, 30)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "Ϊ����ָ�ӡ����ڶ���3153,674��������������ҩ��ԭ��")
	MisNeed(MIS_NEED_ITEM, 4938, 30, 1, 30)
	MisNeed(MIS_NEED_ITEM, 4957, 30, 31, 30)
	MisNeed(MIS_NEED_ITEM, 4976, 30, 61, 30)

	MisResultTalk("<t>��,��,������Щ��,���һ��,������������(�Ǻ�,����������������������˵ʲô��^_^),�ȿ�,����ô��,����ô��,�������Ȱ�~~~")
	MisHelpTalk("<t>ʲô���㲻֪�����ֹ�����������Щԭ�ϣ�I����you����ס�ˣ��д̵Ĺ��㣬�����Ĺ��㣬ʳ�����㣬ʲô���㻹��֪�������������û���������Լ���ȥhttp://inews.moliyo.com/hdw_2/kop/kopmap.shtml")
	MisResultCondition(HasMission, 323 )
	MisResultCondition(HasItem, 4938, 30)
	MisResultCondition(HasItem, 4957, 30)
	MisResultCondition(HasItem, 4976, 30)
	MisResultAction(TakeItem, 4938, 30 )
	MisResultAction(TakeItem, 4957, 30 )
	MisResultAction(TakeItem, 4976, 30 )
	MisResultAction(SetRecord, 323 )
	MisResultAction(ClearMission, 323 )
	
		
	InitTrigger()
	TriggerCondition( 1, IsItem, 4938 )
	TriggerAction( 1, AddNextFlag, 323, 1, 30 )
	RegCurTrigger( 3231 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4957 )
	TriggerAction( 1, AddNextFlag, 323, 31, 30 )
	RegCurTrigger( 3232 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4976 )
	TriggerAction( 1, AddNextFlag, 323, 61, 30 )
	RegCurTrigger( 3233 )



-----------------------------------����֮��
	DefineMission( 385, "����֮��", 324 )

	MisBeginTalk( "<t>�������ҿ첻���ˡ������������Ǳ�Ӧ�����Ҳ���͵�����ҩ�ģ��㿴���������ڱ�Ӧ���ˡ�����������ʹ�డ���������ɣ������ȵȣ�����ľ���ô������һ������<n><t>�Ҳ�Ҫ���������㣬�Ⱦ��Ұɣ��ҵ�ҩ���Ǵ�<p�����ﲹ��վ>��2042,635����<b����ָ�ӡ���Ŧ>����͵�����ģ���һ��֪����ô���ƽ�ҩ���㿴����ʲô���������ˣ��������һ�°ɡ�")
	MisBeginCondition(NoRecord, 324)
	MisBeginCondition(HasRecord, 323)
	MisBeginCondition(NoMission, 324)
	MisBeginAction(AddMission, 324)
	MisBeginAction(AddTrigger, 3241, TE_GETITEM, 4254, 1)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "��<p�����ﲹ��վ>��<b����ָ�ӡ���Ŧ>��2042,635��������<r���ܽ�ҩ>")
	MisNeed(MIS_NEED_ITEM, 4254, 1, 1, 1)

	MisResultTalk("<t>��~���ÿ��ҩ����Ҫ����Ϊ�˱�������������Ҳ����Եģ�����Ⱑ���ձ��Ȼ���˶���û���߼��ġ�<n><t>ʲô����˵ʲô��Ǯ�ģ���������������һ�æ���ؼ�����")
	MisHelpTalk("<t>���������Ѿ�û������˵���ˣ������ȫ������")
	MisResultCondition(HasMission, 324 )
	MisResultCondition(HasMission, 325 )
	MisResultCondition(HasItem, 4254, 1)
	MisResultAction(TakeItem, 4254, 1)
	MisResultAction(SetRecord, 324 )
	MisResultAction(ClearMission, 324 )

		
	InitTrigger()
	TriggerCondition( 1, IsItem, 4254 )
	TriggerAction( 1, AddNextFlag, 324, 1, 1 )
	RegCurTrigger( 3241 )

-----------------------------------����֮��
	DefineMission( 386, "����֮��", 325 )

	MisBeginTalk( "<t>ʲô������ָ�ӡ����ڶ�˵�Լ��������ܷ���ҩ����͵����Ϊ������ҩ��<n><t>����ã�����ȥ���ɣ�ÿ�ζ�����������͵ҩ����ץҩ�ֲ���Ǯ�����ˣ�����Ƿ��10���Ǯ�أ�������֮ǰ��������������ҡ�<n><t>���ˣ����ˣ�������˾��ǿ�Ӳ�����������ǽ�ҩ������������ָ�ӡ����ڶ���˳�����˵�ҵ�������Ǯ���������������ϧ�����Ļ������������Ǹ��ˣ������Ǹ����ܡ��������ˣ����������˵��")
	MisBeginCondition(NoRecord, 325)
	MisBeginCondition(HasMission, 324)
	MisBeginCondition(NoMission, 325)
	MisBeginAction(AddMission, 325)
	MisBeginAction(GiveItem, 4254, 1, 4 )	
	MisCancelAction(SystemNotice, "�������޷��ж�")
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "�����ܽ�ҩ����<b����ָ�ӡ����ڶ�>��3153,674����������Ҫ��10���Ƿ��")

	MisResultTalk("<t>ʲô���Ǹ��һ����װ�����Ʋ����ˣ��ã��´���ҩ��������<n><t>��˵�Ǹ����ˣ���������̸һ�����ܷ���ҩ�����顣")
	MisHelpTalk("<t>��ȥѽ�������ٵ�һ���Ҿ�Ҫ�ı�������~~")
	MisResultCondition(HasMission, 325)
	MisResultCondition(HasRecord, 324)
	MisResultAction(SetRecord, 325 )
	MisResultAction(ClearMission, 325 )	

-----------------------------------����֮��
	DefineMission( 387, "����֮��", 326 )

	MisBeginTalk( "<t>�Ǹ�ҩ�����ҴӺ��е�һ���������̳����ģ���ʼ�һ�������������ã�ֱ���Ұ���ҩ���������ҩ��һֻ�����֮���Ȼ�������˻���������Ҫ������ǰһ�����������ˣ��Ҳ�����������ģ����ǣ�Ϊʱ�����Ǹ�ҩ������ֻ����ҧ���˶����������������ֻʣ������֮һ�����������Ϊʲô����ָ�ӡ����ڶ�����ҩ����ҩ���ж���ԭ��<n><t>��������Ϊ���һ�ʧȥ��ҩ���Ļ����ҿ��԰��㳢���������ܷ���ҩ��")
	MisBeginCondition(NoRecord, 326)
	MisBeginCondition(HasRecord, 325)
	MisBeginCondition(NoMission, 326)
	MisBeginAction(AddMission, 326)
	MisBeginAction(AddTrigger, 3261, TE_GETITEM, 4255, 10)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "�ҵ����ܷ���ҩ��<rҩ����Ƭ>")
	MisNeed(MIS_NEED_ITEM, 4255, 10, 1, 10)

	MisResultTalk("<t>��������������Щ����������������д��ʲô���������������ټӰ����������ף�������ô���£����һλҩ��Ȼֻд��һ�룬��Ҫ����ô�찡�������ˣ��ȶ���������˵�����£��������ĸ��������Ķ��������˵ģ��㿴����������ˣ���ȥ���Ͽ쳢����<n><t>�㿴����˵����û�°ɣ����ڣ��㲻������������˶������������ǵĻ��ˡ�")
	MisHelpTalk("<t>��û������Ƭ�𣿰�����ô��ʱ���ˣ���Ϊ���ˡ�<n><t>�����û�´����ɺ��������Ⱥ������������")
	MisResultCondition(HasMission, 326 )
	MisResultCondition(HasItem, 4255, 10)
	MisResultAction(TakeItem, 4255, 10 )
	MisResultAction(SetRecord, 326 )
	MisResultAction(SetRecord, 330 )
	MisResultAction(ClearMission, 326 )
	MisResultAction(AddExp,320000,320000)
	MisResultAction(AddExpAndType,2,50000,50000)
	MisResultAction(GiveItem,3846,1,4)
	MisResultBagNeed(1)
		
	InitTrigger()
	TriggerCondition( 1, IsItem, 4255 )
	TriggerAction( 1, AddNextFlag, 326, 1, 10)
	RegCurTrigger( 3261 )

----------------------------��������
	DefineMission( 559, "��������", 387 )
	
	MisBeginTalk( "<t>��Щ�˶���˵ʲô������ô�����������ѵ�����һ�����ԣ�<n><t>�����ô�죿���ˣ���2277,2769����<b�����̱���>�Ǵ���߹�����ȴ��˵���ǵ����ԣ���һ��֪��Щʲô��" )
	MisBeginCondition(NoRecord, 387)
	MisBeginCondition(NoMission, 387)
	MisBeginCondition(NoRecord, 327)
	MisBeginCondition(NoRecord, 330)
	MisBeginAction( AddMission, 387 )
	MisCancelAction(SystemNotice, "�������޷��ж�" )
		
	MisNeed(MIS_NEED_DESP, "��<b�����̱���>��2277,2769���Ի�")
	
	MisHelpTalk( "��<b�����̱���≯һ��" )
	MisResultCondition( AlwaysFailure )

----------------------------��������
	DefineMission( 388, "��������", 327)
	
	MisBeginTalk( "<t>Ŷ��С���ӣ���ȥ������������<n><t>ʲô����˵������������˵ʲô��<n><t>�ѵ���û�г����ܷ���ҩ��<n><t>��Щ�����˰�����֪������ʲô�����˵Ĺ��Ķ������Է磬���ٸ�����һ�Σ������ˣ���1310,530����<b�ưɷ���Ա���Ű���>֪��һ���䷽������������Ҫ�ܶ�Ǯ�����ӣ��ҵ�ҩ��һ��İ���˸��ҵģ����������ʱ��Ҳ�������ǰ�����������ഺ�ڰ�~~" )
	MisBeginCondition(NoRecord, 327)
	MisBeginCondition(HasMission, 387)
	MisBeginCondition(NoMission, 327)
	MisBeginAction(SetRecord, 387)
	MisBeginAction(ClearMission, 387)
	MisBeginAction(AddMission, 327)
	MisCancelAction(SystemNotice, "�������޷��ж�")
		
	MisNeed(MIS_NEED_DESP, "ȥ��<b�ưɷ���Ա���Ű���>��1310,530����һ�����ܷ���ҩ")
	
	MisHelpTalk("��<b�ưɷ���Ա���Ű���>�Ի�")
	MisResultCondition(AlwaysFailure )



-----------------------------------��������
	DefineMission( 389, "��������", 328 )

	MisBeginTalk( "<t>����Ҫ���ܷ���ҩ��ҩ����<n><t>���Һ��ˣ�������ר�ų��۸���ҩ�ĵ��䷽���۸����ͯ�����ۣ���˵�����ܷ���ҩ�����ܷ��뺣�����룬���ܷ��뺣�����أ�ֻҪ��һ�žͿ�����������������ܡ�����ʲô������ұ��죿����ô�ɰ������࣬����Ĺ�����죬�����ǡ�������ʲô����˵��Ը���10������ҵ�ҩ�������ұ��죬��̫���ˣ��Ҷ���ľ����������Ͻ�ˮ���������������۹⿴���ң��ұ��컹������<n><t>������Ҫ��10�������ҩ���ˣ��ҵ���Ҫ��Ҫ���أ�")
	MisBeginCondition(NoRecord, 328)
	MisBeginCondition(HasMission, 327)
	MisBeginCondition(NoMission, 328)
	MisBeginAction(SetRecord, 327)
	MisBeginAction(ClearMission, 327)
	MisBeginAction(AddMission, 328)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "<r10�򺣵���>")
	
	MisResultTalk("<t>��Ȼ����ʶ����������ҩ��ҩ��������ˡ�")
	MisHelpTalk("<t>10���ò�������������ѧ�˼ҵ��������ҾͲ�˵ʲô�ˣ����õ�ҩ��Ҳû���á�")
	MisResultCondition(HasMoney, 100000 )
	MisResultCondition(HasMission, 328 )
	MisResultAction(TakeMoney, 100000 )
	MisResultAction(SetRecord, 328 )
	MisResultAction(ClearMission, 328 )
        MisResultAction(GiveItem, 4256, 1, 4 )
	MisResultBagNeed(1)


-----------------------------------��������
	DefineMission( 391, "��������", 330 )

	MisBeginTalk( "<t>�����𣬺þò����ˣ��Ҳ���˵�㣬����˵����ҩ�����ԣ����а��ģ�500��ǰ���˷�ӡ�Ŀ�����꣬Ҫ��������5���ҩ���ܽ��ѣ��������������Ѿ�����������ٴ��ˣ���������ļһ�����������ȡЦ��Ҫ��ҩ����Ϊ�֡�<n><t>���ˣ���̸�Ǹ��һ��ˣ�Ϊ������ҩ�����Ʒ��˲��ٰɣ��Ǹ��Ű���������ҪǮ����Ȼ���Ѿ����˿Ӻ�����ô�࣬��Ҳ�Ͳ���Ϊ���ˣ���ҩ�Ҹ��������ۣ�ֻҪ<r5��>���ˡ�<n><t>׼����Ǯ�������ң��ǵ�����<r5��>��Ҫ�����ҡ�")
	MisBeginCondition(NoRecord, 30)
	MisBeginCondition(NoRecord, 330)
	MisBeginCondition(HasMission, 30)
	MisBeginAction(AddMission, 330)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "�����䷽ҩ�����<r5�򺣵���>")

	MisResultTalk("<t>��ô�죿���ǲ���Ҫ̫���ˣ������ټ�5���ɣ����������õ���ʲô����ֻ�ǿ���Ц���ѣ��αص����أ��㿴��ҩ���Ѿ�׼�����ˣ���ѵ��ӷ��£����ε���<n><t>����������ܷ���ҩ����԰�<n><t>(���������˾�Ȼû�����⣿�����Ѿ�������ܷ���Ĺ����ˣ���û��ʲô�����������������ˡ�")
	MisHelpTalk("<t>��Ǯ��ҩ��ûǮûҩ��5��������ҩ��������")
	MisResultCondition(HasMission, 330 )
	MisResultCondition(HasItem, 4938, 30)
	MisResultCondition(HasItem, 4957, 30)
	MisResultCondition(HasItem, 4976, 30)
	MisResultCondition(HasItem, 4974, 10)
	MisResultCondition(HasMoney, 50000 )
	MisResultAction(SetRecord, 30)
	MisResultAction(ClearMission, 30)
	MisResultAction(TakeItem, 4938, 30)
	MisResultAction(TakeItem, 4957, 30)
	MisResultAction(TakeItem, 4976, 30)
	MisResultAction(TakeItem, 4974, 10)
	MisResultAction(TakeMoney, 50000 )
	MisResultAction(SetRecord, 330 )
	MisResultAction(ClearMission, 330 )
      	MisResultAction(AddExp,550000,550000)
	MisResultAction(AddMoney,10000,10000)
	MisResultAction(AddExpAndType,2,50000,50000)
	MisResultAction(GiveItem,3908,1,4)	
	MisResultAction(GiveItem,4708,1,4)
	MisResultBagNeed(3)

----------------------------Զ���ǿ�
	DefineMission( 392, "Զ���ǿ�", 331)
	
	MisBeginTalk( "<t>��ã������ˣ���һ��������ɣ����þ������������ÿһ���˶�����������ѾͶ��ˣ����������о��ϻ�����Զ���ǿͣ��������Ѿ������������˵Ŀ����ˣ����Ұ���������������˰ɡ�<n><t>���ţ����ǿ��˵ı�־����������ʹ�������˶�һ�»��ɣ����Ƕ���������д���ġ�" )
	MisBeginCondition(NoRecord, 331)
	MisBeginCondition(HasRecord, 315)
	MisBeginCondition(NoMission, 331)
	MisBeginAction(AddTrigger, 3311, TE_GETITEM, 4242, 7 )
	MisBeginAction(AddMission, 331)
	MisCancelAction(SystemNotice, "�������޷��ж�")
		
	MisNeed(MIS_NEED_DESP, "�������������һ�£���ʶһ����������")
	MisNeed(MIS_NEED_ITEM, 4242, 7, 10, 7)	

	MisResultTalk("<t>��������������˵�����Ҷ��ӵ���Ϣ����Ŷ���㿴���������һ���Ϊ������֣�أ�������Ҷ��ӵ��¡�������������˵�����ʲô���أ������ҡ�<n><t>��ô������������˻���������û������Ϊ��ɣ�")
	MisHelpTalk("<t>�Ѿ��������˶��Ķ����к����𣿿�ȥ�ɣ��кܶ��˶�����Ҫ�����ء�")
	MisResultCondition(HasMission, 331)
	MisResultCondition(HasItem, 4242, 7)
	MisResultAction(TakeItem, 4242, 7 )
	MisResultAction(SetRecord, 331 )
	MisResultAction(ClearMission, 331 )
	MisResultAction(AddExp,100000,100000)
	MisResultAction(AddMoney,30000,30000)
	MisResultAction(AddExpAndType,2,50000,50000)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4242 )
	TriggerAction( 1, AddNextFlag, 331, 10, 7)
	RegCurTrigger( 3311 )

----------------------------Զ���ǿ�
	DefineMission( 393, "Զ���ǿ�", 331, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>С���ӣ�������ܹ��������֤����һ����һ����ʵ���ļһ�Ժ���������ʲô���ⶼ���������ң���һ�������Ŭ�������㡣")
	MisResultCondition(NoRecord, 331)
	MisResultCondition(NoFlag, 331, 1)
	MisResultCondition(HasMission, 331)
	MisResultAction(SetFlag, 331, 1)
	MisResultAction(GiveItem, 4242, 1, 4)
	MisResultBagNeed(1)

----------------------------Զ���ǿ�
	DefineMission( 394, "Զ���ǿ�", 331, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>���ƣ��·����Ƴ������ˣ����ô�������������һ�������˷Ǳ�Ѱ����ð�հɣ��Ժ�ð��ǰ�ǵ��������￴�����ҵ������һ���������⡣")
	MisResultCondition(NoRecord, 331)
	MisResultCondition(NoFlag, 331, 2)
	MisResultCondition(HasMission, 331)
	MisResultAction(SetFlag, 331, 2)
	MisResultAction(GiveItem, 4242, 1, 4)
	MisResultBagNeed(1)
	
----------------------------Զ���ǿ�
	DefineMission( 395, "Զ���ǿ�", 331, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>��ã�Զ���Ŀ��ˣ����ÿ����������ȶ����ˣ���������û�У������ӻ��࣬�����ð�����������ѣ������Һ��ˣ��������һ�����Ҿ�������8�ۡ�")
	MisResultCondition(NoRecord, 331)
	MisResultCondition(NoFlag, 331, 3)
	MisResultCondition(HasMission, 331)
	MisResultAction(SetFlag, 331, 3)
	MisResultAction(GiveItem, 4242, 1, 4)
	MisResultBagNeed(1)
	
---------------------------Զ���ǿ�
	DefineMission( 396, "Զ���ǿ�", 331, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>�ϣ�С���ѣ������İ����벻��������ʵ���Ʒ��ȥ���������иճ�¯���������ѣ�����������������˵㣬������8�ۣ���ô����Ŷ����Ҫ����������Ҫ��ó��Ʒ��ʱ��ǵ������Ұ���������ʲô���С�")
	MisResultCondition(NoRecord, 331)
	MisResultCondition(NoFlag, 331, 4)
	MisResultCondition(HasMission, 331)
	MisResultAction(SetFlag, 331, 4)
	MisResultAction(GiveItem, 4242, 1, 4)
	MisResultBagNeed(1)
	
----------------------------Զ���ǿ�
	DefineMission( 397, "Զ���ǿ�", 331, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>���뿪�����������Һ��ˣ�����û����Ͷ�߹��ҵĴ��ͼ�����<n><t>���߰����ǵ����뿪����ʱ�������Ұ���")
	MisResultCondition(NoRecord, 331)
	MisResultCondition(NoFlag, 331, 5)
	MisResultCondition(HasMission, 331)
	MisResultAction(SetFlag, 331, 5)
	MisResultAction(GiveItem, 4242, 1, 4)
	MisResultBagNeed(1)
	

----------------------------Զ���ǿ�
	DefineMission( 398, "Զ���ǿ�", 331, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>�ּ����ˣ��������")
	MisResultCondition(NoRecord, 331)
	MisResultCondition(NoFlag, 331, 6)
	MisResultCondition(HasMission, 331)
	MisResultAction(SetFlag, 331, 6)
	MisResultAction(GiveItem, 4242, 1, 4)
	MisResultBagNeed(1)

----------------------------Զ���ǿ�
	DefineMission( 399, "Զ���ǿ�", 331, COMPLETE_SHOW)

	MisBeginCondition( AlwaysFailure )
	
	MisResultTalk("<t>IC��IP��IQ����ͳͳ���������룬��ע�⣬�ⲻ�Ǵ�٣��������ʲô�������������ֻ�г�ʾ���ϵ��������ȡ�����м��мǡ�")
	MisResultCondition(NoRecord, 331)
	MisResultCondition(NoFlag, 331, 7)
	MisResultCondition(HasMission, 331)
	MisResultAction(SetFlag, 331, 7)
	MisResultAction(GiveItem, 4242, 1, 4)
	MisResultBagNeed(1)

-----------------------------------�����㾦
	DefineMission( 510, "�����㾦", 339 )

	MisBeginTalk( "<t>����Ҫһ��Ư�������밡�������Ը�����һ��<b���ϵ�����>���ҿ��Ը�����һ�����ܡ�")
	MisBeginCondition(NoRecord, 339)
	MisBeginCondition(HasRecord, 338)
	MisBeginCondition(NoMission, 339)
        MisBeginCondition(HasItem, 4236,1)
	MisBeginAction(AddMission, 339)
	MisBeginAction(AddTrigger, 3391, TE_GETITEM, 4236, 1 )
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "��<b�����ܹܡ���ī>��3290,2512��һ��<b���ϵ�����>")
	MisNeed(MIS_NEED_ITEM, 4236, 1, 1, 1)

	MisResultTalk("<t>��Ȼ��ϸ�����ô����ĵ��ߣ�����͸������ҵ����ܡ�")
	MisHelpTalk("<t>ʲô����û�����룿�������ոջ������ģ��ѵ����ۻ��ˡ�")
	MisResultCondition(HasMission, 339 )
	MisResultCondition(HasItem, 4236, 1 )
	MisResultAction(TakeItem, 4236, 1 )	
	MisResultAction(SetRecord, 339 )
	MisResultAction(ClearMission, 339 )
    


-----------------------------------�����㾦
	DefineMission( 511, "�����㾦", 340 )

	MisBeginTalk( "<t>���ܾ���~~~~~�������㱻ƭ�ˣ���ֻ����������������������ڻ��������۾����ѣ���л��֧����Ŷ�����������о��ϻ������ͷ��͵��������磬���ٸ�����ЩȾ�Ϲ����ɣ���ֻ��һ��Ϳ�����ɡ�����ͼ���ˣ����У����С�")
	MisBeginCondition(NoRecord, 340)
	MisBeginCondition(HasRecord, 339)
	MisBeginCondition(NoMission, 340)
	MisBeginAction(AddMission, 340)
	MisBeginAction(AddTrigger, 3401, TE_GETITEM, 1787, 5)
	MisBeginAction(AddTrigger, 3402, TE_GETITEM, 1788, 5)
	MisBeginAction(AddTrigger, 3403, TE_GETITEM, 1789, 5)
	MisBeginAction(AddTrigger, 3404, TE_GETITEM, 1790, 5)
	MisBeginAction(AddTrigger, 3405, TE_GETITEM, 1791, 5)
	MisBeginAction(AddTrigger, 3406, TE_GETITEM, 1792, 5)
	MisBeginAction(AddTrigger, 3407, TE_GETITEM, 1793, 5)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "<r��ɫȾ��>*5<r��ɫȾ��>*5<r��ɫȾ��>*<r��ɫȾ��>*5<r��ɫȾ��>*5<r��ɫȾ��>*5<r��ɫȾ��>*5")
	MisNeed(MIS_NEED_ITEM, 1787, 5, 1, 5)
	MisNeed(MIS_NEED_ITEM, 1788, 5, 6, 5)
	MisNeed(MIS_NEED_ITEM, 1789, 5, 11, 5)
	MisNeed(MIS_NEED_ITEM, 1790, 5, 16, 5)
	MisNeed(MIS_NEED_ITEM, 1791, 5, 21, 5)
	MisNeed(MIS_NEED_ITEM, 1792, 5, 26, 5)
	MisNeed(MIS_NEED_ITEM, 1793, 5, 31, 5)

	MisResultTalk("<t>����ô������ô�����㿴���ҵ�ë�ʶ����ˣ����²��ð��ˡ�")
	MisHelpTalk("<t>��ȥ��ذ��������ҵ�ë�ʸ��ˣ���ɫȾ��ÿ��5����������Ŷ��")
	MisResultCondition(HasMission, 340)
	MisResultCondition(HasItem, 1787, 5)
	MisResultCondition(HasItem, 1787, 5)
	MisResultCondition(HasItem, 1788, 5)
	MisResultCondition(HasItem, 1789, 5)
	MisResultCondition(HasItem, 1790, 5)
	MisResultCondition(HasItem, 1791, 5)
	MisResultCondition(HasItem, 1792, 5)
	MisResultCondition(HasItem, 1793, 5)
	MisResultAction(TakeItem, 1787, 5 )	
	MisResultAction(TakeItem, 1788, 5 )	
	MisResultAction(TakeItem, 1789, 5 )	
	MisResultAction(TakeItem, 1790, 5 )	
	MisResultAction(TakeItem, 1791, 5 )	
	MisResultAction(TakeItem, 1792, 5 )	
	MisResultAction(TakeItem, 1793, 5 )	
	MisResultAction(SetRecord, 340 )
	MisResultAction(ClearMission, 340 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1787 )
	TriggerAction( 1, AddNextFlag, 340, 1, 5 )
	RegCurTrigger( 3401 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1788 )
	TriggerAction( 1, AddNextFlag, 340, 6, 5 )
	RegCurTrigger( 3402 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1789 )
	TriggerAction( 1, AddNextFlag, 340, 11, 5 )
	RegCurTrigger( 3403 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1790 )
	TriggerAction( 1, AddNextFlag, 340, 16, 5 )
	RegCurTrigger( 3404 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1791 )
	TriggerAction( 1, AddNextFlag, 340, 21, 5 )
	RegCurTrigger( 3405 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1792 )
	TriggerAction( 1, AddNextFlag, 340, 26, 5 )
	RegCurTrigger( 3406 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1793 )
	TriggerAction( 1, AddNextFlag, 340, 31, 5 )
	RegCurTrigger( 3407 )

-----------------------------------�����㾦
	DefineMission( 512, "�����㾦", 341 )

	MisBeginTalk( "<t>��֪������������Ҫ�ľ��ǵ㾦�ˣ�����ë�ʸ��ˣ�������������һ����������Ҫ��ϴ���ë��������Ҫ30��������ˮ��Ҫ�ҵ�����ȥ�Ұ�����Ҫ����ģ���Ҫ����ģ��������<r30ƿ������ˮ>������Ҫ������ë�ʰ����������")
	MisBeginCondition(NoRecord, 341)
	MisBeginCondition(HasRecord, 340)
	MisBeginCondition(NoMission, 341)
	MisBeginAction(AddMission, 341)
	MisBeginAction(AddTrigger, 3411, TE_GETITEM, 1649, 30)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "��<b�����ܹܡ���ī>��3290,2512����ȥ<r30ƿ������ˮ>")
	MisNeed(MIS_NEED_ITEM, 1649, 30, 1, 30)

	MisResultTalk("<t>����ô��ô������ë�ʸɿ�����ô�ã���о�������ˣ������ұ�о����")
	MisHelpTalk("<t>�ð������Ȼ���ֻ��������һ����������")
	MisResultCondition(HasMission, 341)
	MisResultCondition(HasItem, 1649, 30)
	MisResultAction(TakeItem, 1649, 30 )
	MisResultAction(SetRecord, 341 )
	MisResultAction(ClearMission, 341 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1649 )
	TriggerAction( 1, AddNextFlag, 341, 1, 30 )
	RegCurTrigger( 3411 )
	

-----------------------------------�����㾦
	DefineMission( 513, "�����㾦", 342 )

	MisBeginTalk( "<t>��֧ë�ʵı�о���ú���β�ʹ������е�ë���ɵģ����ܷ�ӳ�����˵��ģ�����ʲô������û���ˣ�Ҫ�ָ���֧�ʣ�������Ҫ<r10������β��>��������һ�������Ĺ���ȥ����Ū������Ҫ����ң���Ҫ����ң�Ҫ��Ȼ���Ҿ������ͷ��������<n><t>����β����ôŪ���ߣ�ȥ��3322,2460���Һ���ʿҪ�ɡ�")
	MisBeginCondition(NoMission, 342)
	MisBeginCondition(NoRecord, 342)
	MisBeginCondition(HasRecord, 341)
	MisBeginAction(AddMission, 342)
	MisBeginAction(AddTrigger, 3421, TE_GETITEM, 165, 10)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "��<b�����ܹܡ���ī>��3290,2512����ȥ<r10������β��>")
	MisNeed(MIS_NEED_ITEM, 165, 10, 1, 10)

	MisResultTalk("<t>��Ư���ĺ���β�Ͱ����ҵ�����þ��ˣ����ڿ���������Χ���ˣ�лл�㰡��<n><t>������˼ƭ������ô�ã���֧ë�ʲ����Ǹ�������ѣ���Ͳ��ܻ��ˣ�����ʵ���ˣ���������װ�æ�ģ�������㣬ϣ�������Ժ��ð���а�����")
	MisHelpTalk("<t>�㻹�ҿ��ֻ���������������ͷ�������ҵ�ë�ʡ�")
	MisResultCondition(HasMission, 342)
	MisResultCondition(HasItem, 165, 10)
	MisResultAction(TakeItem, 165, 10 )
	MisResultAction(SetRecord, 342 )
	MisResultAction(ClearMission, 342 )
	MisResultAction(AddExp,700000,700000)
	MisResultAction(AddMoney,10000,10000)
	MisResultAction(GiveItem,3885,1,4)	
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 165 )
	TriggerAction( 1, AddNextFlag, 342, 1, 10 )
	RegCurTrigger( 3421 )


-----------------------------------ʧ��
	DefineMission( 514, "ʧ��", 343 )

	MisBeginTalk( "<t>��Ȼ�����ˣ���Ҳ�Ͳ������ˡ�<n><t>��������ӵ������и�<p����ˮ��>���������������ӵĹ�ˮ���ģ�����һ����΢�ĵ������һ��ͨ�����صĺ��������ȱ�ڣ�֮�������ں�������еĶ�ħ��һ˲��������������������Ϣ��������<p����ˮ��>�Ĺ�����Ա������˽�ʬ��������<p����ˮ��>��������ͳ���������ʵ�������ͨ����<n><t>�ҵĶ��ӣ���֪�������е��к��Ӷ�������̽�պͱ��أ�ǰ������һȺ����һ��ȥ<p����ˮ��>̽�գ�һȥ����û����Ѷ���Ҽ����뵽�µ�ˮ��ȥ���������������ס�ˣ�������ʵ�ڵ����ҵĶ������������һ����ȥ��������Ĳ�ϣ����ȥ����̽�յģ���������˵�������ȥ��ʱ�򣬰�����������һ���ҵĶ��ɡ�")
	MisBeginCondition(NoRecord, 343)
	MisBeginCondition(NoMission, 343)
	MisBeginCondition(HasRecord, 331)
   	MisBeginAction(AddMission, 343)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "��<p����ˮ��>������<�Ƶ��ϰ塤���>���ӵ�����")

	MisResultTalk("<t>��˵�и���ʬ����������Ÿ�����������һ�����ҿ����Ķ��ˣ��Ҳ�����Ҳ֪����˵��ʲô����һ���Т˳�ģ���ôƫƫ�ͳ������������ء�")
	MisHelpTalk("<t>�����ˣ�������Ψһ��ϣ���ˣ�ϣ�����ܴ����Һ���Ϣ��")
	MisResultCondition(HasMission, 343 )
	MisResultCondition(HasFlag, 343, 2 )
	MisResultAction(SetRecord, 343 )
	MisResultAction(ClearMission, 343 )

-----------------------------------ʧ��
	DefineMission( 515, "ʧ��", 343 , COMPLETE_SHOW)

	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>Ŷ����ȵȣ��һ�û�б���ȫ��Ⱦ�����һ������Ե�ʱ��������˵���һ��ɣ�������ҵ�ĸ��˵������Զ��������Т�����ܻ�ȥТ�������˼��ˣ��������أ��һ������ף����ġ�<n><t>���ˣ���ĸ�׵����ֽ���٣�ס�ڣ�3287,2501����лл���ˡ�")
	MisResultCondition(NoRecord, 343)
	MisResultCondition(HasMission, 343)
	MisResultCondition(NoFlag, 343, 2)
	MisResultAction(SetFlag, 343, 2)
	
-----------------------------------ʧ��
	DefineMission( 516, "ʧ��", 345 )

	MisBeginTalk( "<t>������֪����3279,2501����<r�ӻ����ˡ�³�ȶ�>�����п��Կ��ƽ�ʬ����<r���>��������пյĻ���������һ�˰ɣ���ʵ�ұ�������ȥ�ģ������Դ��ϴ������Ҷ��ӵĹ�ϵ���Ҹ㽩����ʵ��û����ȥ�����ˡ�<n><t>��������Ҷ��ӱ����ڵ���ˮ�����ˣ�����飬��һ�����æ�ģ��������ˡ�")
	MisBeginCondition(NoRecord, 345)
	MisBeginCondition(NoRecord, 347)
	MisBeginCondition(HasRecord, 343)
	MisBeginCondition(NoMission, 345)
  	MisBeginAction(AddMission, 345)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "��<b�ӻ����ˡ�³�ȶ�>��3279,2501������<r���>")

	MisHelpTalk("<t>³�ȶ��ϰ�æ����ϣ�������ü���")
	MisResultCondition(AlwaysFailure )

-----------------------------------���
	DefineMission( 517, "���", 346 )

	MisBeginTalk( "<t>ʲô�������������ڵ���ˮ�����ˣ���ôƫƫ�����ʱ�����Ǽ������ˣ���������ɣ����������Ҫ�õ���ʬͷ�ϵ�<r���>��ֻ������Щ������а��֮����<r���>������������л���Ч����<r���>��<n><t>�ϴ�������<r���>��ԭ���Ǽ�����ǰ����һ�����������ҵģ�����ù��ˣ�����Ҳûʲô���µ���ˮ���ˣ���ˣ�Ҳ�ܾ�û�������ˣ��������Ծ�������<r20�Ź��>�����뻹���ü�����������")
	MisBeginCondition(NoRecord, 346)
	MisBeginCondition(HasMission, 345)
	MisBeginCondition(NoMission, 346)
  	MisBeginAction(AddMission, 346)
	MisBeginAction(AddTrigger, 3461, TE_GETITEM, 4262, 20)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "��<b�ӻ����ˡ�³�ȶ�>��3279,2501������<r20�Ź��>")
	MisNeed(MIS_NEED_ITEM, 4262, 20, 1, 20)

	MisResultTalk("<t>��ѹ�����ң�ϣ�������ü������������������������~~~~~�����㣬��������������ȥ���������������������Լ���ͷ�ϡ�")
	MisHelpTalk("<t>ץ��ʱ�䣬�����˿��¾��������ˣ���ס����ҲҪ20�Ź����")
	MisResultCondition(HasMission, 346 )
	MisResultCondition(HasItem, 4262, 20)
	MisResultAction(TakeItem, 4262,20 )
	MisResultAction(GiveItem, 4244, 1, 4)
	MisResultAction(SetRecord, 346 )
	MisResultAction(ClearMission, 346 )
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4262 )
	TriggerAction( 1, AddNextFlag, 346, 1, 20 )
	RegCurTrigger( 3461 )

-----------------------------------���
	DefineMission( 518, "���", 347 )

	MisBeginTalk( "<t>��������������Ҽǵ����Ѿ�����ʧȥ����ʶ����<n><t>��ô���ѹ����ˣ�����ʲô��³�ȶ��������<n><t>�Ҿ�֪�����������ң����ǣ����Ѿ��ز�ȥ�ˣ���ʹ����ס������Ľ�ʬ�������������Ҳ��Զ�����������ˣ����Ҹ�³�ȶ�˵�����������Ұ�")
	MisBeginCondition(NoRecord, 347)
	MisBeginCondition(NoMission, 347)
	MisBeginCondition(HasRecord, 346)
	MisBeginCondition(HasItem, 4244, 1)
	MisBeginAction(TakeItem, 4244, 1)
  	MisBeginAction(AddMission, 347)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "��<b��ʬ��������>�����뿪����ˮ������Ϣ����<b�ӻ����ˡ�³�ȶ�>��3279,2501��")
	
	MisResultCondition(AlwaysFailure )

-----------------------------------���
	DefineMission( 519, "���", 347 , COMPLETE_SHOW)

	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>��˵��������ԶҲ�벻���Ǹ���������ˮ�������ǲ�����Ҳȥ�����ɣ�û�����ڵ����ӣ���Щ�������Ѽ⵶ÿ������ҵ��˿ڣ��Ҳ��������������ټ����ˣ���һ�ж������ɡ�")
	MisResultCondition(NoRecord, 347)
	MisResultCondition(HasMission, 347)
	MisResultAction(SetRecord, 347)
	MisResultAction(ClearMission, 347)
	MisResultAction(AddExp,1000000,1000000)
	MisResultAction(AddMoney,20000,20000)
	MisResultAction(GiveItem, 3883, 5, 4)
	MisResultAction(GiveItem, 3884, 5, 4)
	MisResultBagNeed(2)

-----------------------------------�����漣
	DefineMission( 520, "�����漣", 349 )

	MisBeginTalk( "<t>�����ˣ��ҿ��������еı��ˣ���һ����Ϊĳ���������İɡ�<n><t>�����Ű��𣿵������ڵ�ʱ�򣬿��Դ���һ���漣���������������������˵Ļ�������Ҫ�ҵ�Ů������ᣬ��������࣬�������ë���������������Ƕ��ǰ���֤��������������ҵ���Щ�����Ļ��������ҿ�����һ�����ϵĴ�˵�Ȼ������ˡ�")
	MisBeginCondition(NoRecord, 349)
	MisBeginCondition(NoRecord, 356)
	MisBeginCondition(HasRecord, 347)
	MisBeginCondition(NoMission, 349)
	MisBeginCondition(NoMission, 356)
	MisBeginAction(AddMission, 349)
	MisBeginAction(AddTrigger, 3491, TE_GETITEM, 4245, 1 )
	MisBeginAction(AddTrigger, 3492, TE_GETITEM, 4246, 1 )
	MisBeginAction(AddTrigger, 3493, TE_GETITEM, 4247, 1 )
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "����<rŮ�������>,<r���������>,<r�������ë>")
	MisNeed(MIS_NEED_ITEM, 4245, 1, 5, 1)
	MisNeed(MIS_NEED_ITEM, 4246, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 4247, 1, 15, 1)

	MisResultTalk("<t>Ů�������Ϊ���˶������ǲ�������������������������˵����ᣬ���鰮���������������ë�Ǹ�ĸ�ļ��У��ǴȰ����������������ܹ�����������������ʱ�򣬰��ͻ������漣�ķ���������ǹ��ϴ�˵�����ݣ����������������ں���һ����ɵ���������������������µĹؼ�������������������ֻҪ����������Ϳ�����������һ����̫�����߶���")
	MisHelpTalk("<t>�ϵ�Ů�ˣ���ѧ�����ˣ����¸ҵ�սʿ�����ָ����ȥ�����ǰɡ�")
	MisResultCondition(HasMission, 349 )
	MisResultCondition(HasItem, 4245, 1 )	
	MisResultCondition(HasItem, 4246, 1 )	
	MisResultCondition(HasItem, 4247, 1 )
	MisResultAction(TakeItem, 4245, 1 )	
	MisResultAction(TakeItem, 4246, 1 )	
	MisResultAction(TakeItem, 4247, 1 )
        MisResultAction(GiveItem, 4248, 1 ,4)	
	MisResultAction(SetRecord, 349 )
	MisResultAction(ClearMission, 349 )
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4245)	
	TriggerAction( 1, AddNextFlag, 349, 5, 1 )
	RegCurTrigger( 3491 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4246)	
	TriggerAction( 1, AddNextFlag, 349, 10, 1 )
	RegCurTrigger( 3492 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4247)	
	TriggerAction( 1, AddNextFlag, 349, 15, 1 )
	RegCurTrigger( 3493 )

-----------------------------------Ů�������
	DefineMission( 521, "Ů�������", 350 )

	MisBeginTalk( "<t>�ж������ˣ���Ȼ�����˼ǵ������˵��Ů������᲻�Ǳ�Ķ�����������ֻ����ɳ������е�<r�����ˮ��ɳ>��ֻ�����ϵ��˲��ܴ�������ֻ�л��Ű��ĵ��˲��������������п������ĵ�����ֻ���������³����㲻��ȥ���ԡ�")
	MisBeginCondition(NoRecord, 350)
	MisBeginCondition(NoMission, 350)
	MisBeginCondition(HasMission, 349)
 	MisBeginAction(AddMission, 350)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "��<pɳ��>�����<r�����ˮ��ɳ>")

	MisResultTalk("<t>����������Ȼ��õ���Ȼ�Ļر��������ˮ��ɳ�Ѿ���������������õ�֤����")
	MisHelpTalk("<t>��ס�������ˮ��ɳ����ɳ�ߵľ�ͷ�������ػ��ĵط���")
	MisResultCondition(HasMission, 350)
	MisResultCondition(HasItem, 4245, 1)
 	MisResultAction(SetRecord, 350 )
	MisResultAction(ClearMission, 350 )



-----------------------------------���������
	DefineMission( 522, "���������", 351 )

	MisBeginTalk( "<t>������������<r����Ļʹ�>��û�뵽����ô������˾�Ȼ֪�������<n><t>���������������һ���͸������ӵ�һ����ʯ�����������ڻʹ��ϣ�������������������ʧȥ���ټ�����������˵������������䣬���е�������ַ��Ѱ�����ʯ�ĵ�������ȥ�޷����㲻��ȥ���ԡ�")
	MisBeginCondition(NoRecord, 351)
	MisBeginCondition(NoMission, 351)
	MisBeginCondition(HasMission, 349)
 	MisBeginAction(AddMission, 351)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "��<p������ַ>����<r����Ļʹ�>")

	MisResultTalk("<t>������ҵ�������Ļʹڣ�̫����˼���ˣ�Ҳ������Ŀ�������Ǹ���˵��")
	MisHelpTalk("<t>�Ҹҿ϶�����Ļʹھ�����Ƭ����֮�У�����ص��𣬾�û�л���֪���ˡ�")
	MisResultCondition(HasMission, 351)
	MisResultCondition(HasItem, 4246, 1)
 	MisResultAction(SetRecord, 351 )
	MisResultAction(ClearMission, 351 )

	-----------------------------------�������ë
	DefineMission( 523, "�������ë", 352 )

	MisBeginTalk( "<t>�������ë�����������ڶ���ʿ׷��ĳƺ��أ�������Ϊ������ߵĳƺţ����õ����ķ����𣬺ܼ򵥣��ڱ�����ѩ�����ĵط���һ���Թ����Թ��������౦�䣬�ҵ��������û������<r������ë>�Ϳ����ˣ�������������õ���")
	MisBeginCondition(NoRecord, 352)
	MisBeginCondition(NoMission, 352)
	MisBeginCondition(HasMission, 349)
 	MisBeginAction(AddMission, 352)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "��<pħ������>�����<r������ë>")

	MisResultTalk("<t>�ܴ��ر�����ë���ˣ����ǵ�������������˼������ĳЩԭ���Ҳ��ܸ�����ǰ�����˵����֣��������������֪���ġ�")
	MisHelpTalk("<t>��ס���Թ������������˶����ҵ��ģ����ܻ��Ŵ��ر�����ë�ģ�������Ҳû�����ˡ�")
	MisResultCondition(HasMission, 352)
	MisResultCondition(HasItem, 4247, 1)
 	MisResultAction(SetRecord, 352 )
	MisResultAction(ClearMission, 352 )

-----------------------------------�����漣
	DefineMission( 524, "�����漣", 353 )

	MisBeginTalk( "<t>����˵��ֻҪ�����������Ϳ��Իص��������������<n><t>ʵ��̫��л�ˣ����ֿ��Լ���³�ȶ��ˣ���ȥ�������������Ͼ�ȥ��������һ��Ҳ�Ȳ����ˣ�������������ȿ�����Ҫ��Ӧһ��ʱ�䡣")
	MisBeginCondition(NoRecord, 353)
	MisBeginCondition(NoMission, 353)
	MisBeginCondition(HasRecord, 349)
	MisBeginCondition(HasItem, 4248,1)
	MisBeginAction(TakeItem, 4248, 1)
  	MisBeginAction(AddMission, 353)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "������Ϣ����<b�ӻ����ˡ�³�ȶ�>��3279,2501��")

	MisHelpTalk("<t>����̫��л�ˣ����治֪�����������㣬Ը������Զƽ����")
	MisResultCondition(AlwaysFailure )

-----------------------------------�����漣
	DefineMission( 525, "�����漣", 353 , COMPLETE_SHOW)

	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>��˵ʲô����ʵ�����Ǹ����ϵĴ�˵���ҵ����������Ͼ��ܻ��������ˣ��ң��Ҹ���ʲô���������أ��㿴��������������۾�����ô�����ʱ�������������أ���Ҳûʲô�ܰ�æ�ģ���������Ժ������ˮ����ʱ���ҿ�����Ѱ������Ƶ���ʬ���Ļ�����������Ϊ����СС�ı���ɡ�")
	MisResultCondition(NoRecord, 353)
	MisResultCondition(HasMission, 353)
	MisResultAction(SetRecord, 353)
	MisResultAction(ClearMission, 353)	
	MisResultAction(AddExp,2000000,2000000)
	MisResultAction(AddExpAndType,2,50000,50000)
	MisResultAction(GiveItem,3348,10,4)
	MisResultAction(GiveItem,3349,10,4)
	MisResultAction(GiveItem,3350,10,4)
	MisResultBagNeed(3)

-----------------------------------ʬ��
	DefineMission( 526, "ʬ��", 355 )

	MisBeginTalk( "<t>����ʬ����������ʬ�����鷳�ģ����Ѿ��ܾò������ֻ����ˣ������������Ը���ռ����ϣ����ҽ��㹻��Ǯ�Ļ����ҿ��԰�����������ÿ�Ż���5000�顣<n><t>�����Ը��Ļ���ȥ�ռ�<r20�Ź��>�������Ҿ������㣬���������ˮ����ʬͷ�ϵ����ֶ�����")
	MisBeginCondition(NoRecord, 355)
	MisBeginCondition(NoMission, 355)
	MisBeginCondition(HasRecord, 353)
 	MisBeginAction(AddMission, 355)
	MisBeginAction(AddTrigger, 3551, TE_GETITEM, 4262, 20)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "�ռ�<r20�Ź��>��������ʬ����<r����>")
	MisNeed(MIS_NEED_ITEM, 4262, 20, 1, 20)

	MisResultTalk("<t>��׬���ˣ���ô����������һ�򻤷��ˣ������ˣ���Ȼ���ռ����㹻�Ĺ�����ҾͰ������ɣ���Զ�㣬С�������㣬���в���͵����������<n><t>���㱾�֣����������͵��һ�ۣ����׾������ˣ������𣬸��㣬��Ļ�����<n><t>������Ժ����������Ļ��ǵ��������ҡ�")
	MisHelpTalk("<t>����20��������뵱�����Լ���ȥҲ��һ��һ��û�뵽����ô�ϡ�")
	MisResultCondition(HasMission, 355)
	MisResultCondition(HasItem, 4262, 20)
	MisResultAction(TakeItem, 4262, 20)
        MisResultAction(GiveItem, 4249, 12 ,4)	
 	MisResultAction(SetRecord, 355 )
	MisResultAction(ClearMission, 355 )
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4262 )
	TriggerAction( 1, AddNextFlag, 355, 1, 20 )
	RegCurTrigger( 3551 )

-----------------------------------ʧ��
	DefineMission( 527, "ʧ��", 345, COMPLETE_SHOW )

	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>ʲô���ҵĶ���Ҳ�ز�������Ҳ�ã�ֻҪ�������žͺã�������Ѿ���������̫����鷳�ˣ����ˣ������������ɣ����ǣ��Ǹ������Ĺ���һ�������İɣ���̫�Բ��������ˡ�<n><t>�����������㻹�ǰ����ҵĴ�æ����������˻���Զ������ģ����������ʲô���԰�æ�Ļ����뾡�ܿ��ڡ�")
	MisResultCondition(HasRecord, 347)
	MisResultCondition(NoRecord, 353)
	MisResultCondition(NoRecord, 345)
	MisResultCondition(NoRecord, 349)
	MisResultCondition(HasMission, 345)
	MisResultCondition(NoMission, 353)
	MisResultCondition(NoMission, 349)
	MisResultAction(ClearMission, 345 )
	MisResultAction(SetRecord, 345 )
	
-----------------------------------ʧ��
	DefineMission( 528, "ʧ��", 345 , COMPLETE_SHOW)

	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>��ʵ���˰����漣�����վ����ҵĶ���<n><t>̫��л���ˣ������������Զ��ӭ�㣬�������֮���Ѿ��õ���ȫ���˵���ͬ������Զ�Ǵ���������ϱ��������ң���һ����һ���Ҹ��ģ����������ʲô���԰�æ�ģ��뾡���ᡣ")
	MisResultCondition(HasRecord, 353)
	MisResultCondition(NoRecord, 345)
	MisResultCondition(HasMission, 345)
	MisResultAction(ClearMission, 345 )
	MisResultAction(SetRecord, 345 )
	MisResultAction(SetRecord, 354 )

-----------------------------------�����ʵ
	DefineMission( 529, "�����ʵ", 358 )

	MisBeginTalk( "<t>���˻��������������ʵ��<n><t>��û�Թ������û�Թ�����������˵��û���������û������ʲô���찡������������Щ����������ֻ�ܺͣ�3196,2509����<b����>�йأ���ô����ҳ��Ϲ�ϵ����ʵ����������Ҳ��Ϲ���ߣ���Щʲô����Ĺ�ʵ����Ҳ�϶�û��������֪�������ﴵţ��˵�ø����һ����")
	MisBeginCondition(NoRecord, 358)
	MisBeginCondition(HasRecord, 345)
	MisBeginCondition(NoMission, 358)
  	MisBeginAction(AddMission, 358)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "��<b����>��3195,2506��̸һ������Ĺ�ʵ")

	MisHelpTalk("<t>�Ҷ�˵��֪��������һ����̫�Ż���ƭ���޲��ɡ�")
	MisResultCondition(AlwaysFailure )
-----------------------------------�����ʵ
	DefineMission( 530, "�����ʵ", 359 )

	MisBeginTalk( "<t>�Ǹ���̫̫����˵�Ҵ�ţ�����������ˣ���˵����Ĺ�ʵ�ˣ���������ɭ��Ҳ��������<n><t>ʲô���㲻���ţ�����͸��㿴֤�ݣ��㿴���ؿ�������˰̣����Ǻ���ɭ������ʱ�����µģ��뵱��������ʲô����˵Ҫ��������Ĺ�ʵ������������������Ǹ����㿴�����ƻ��Ҳ�����������Ǳ��Ǹ������Ҳ�����������ðɣ��ҳ��ϣ����Ѿ��þ�û������������Ĺ�ʵ�ˣ����һ����һ��ǰ����֣�����ҵģ�����������һ����ʲô³���ˡ�<n><t>��Ҫ����Ҫ�Ļ�������ȥ�ң�3298,2534����<b����֣>���ʡ�")
	MisBeginCondition(NoRecord, 359)
	MisBeginCondition(NoMission, 359)
	MisBeginCondition(HasMission, 358)
	MisBeginAction(SetRecord, 358 )
	MisBeginAction(ClearMission, 358 )
  	MisBeginAction(AddMission, 359)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "��<b����������֣>��3298,2534��̸һ������Ĺ�ʵ")

	MisHelpTalk("<t>��Ҫ����Ҫ��ƻ������������Ļ���ʱ���������Ұ���")
	MisResultCondition(AlwaysFailure )

-----------------------------------�����ʵ
	DefineMission( 531, "�����ʵ", 360 )

	MisBeginTalk( "<t>����Ĺ�ʵ~~��������û������û�������㲻Ҫ����������Ҳ�����ˣ��벻Ҫɱ�ң�������뿪�����ʲôҲ��Ҫ����ֻ�����ι۵ģ������Ѿ��Բ�����͵�ģ������뿪�ɣ�����Ҳ����<p�������>ȥ�ˣ������ǵ������Ҳ�Ҫ�����ˣ���������û�˿��Ի��Ż��������е��˶����ˣ�������~~~~<n><t><p�������>���Ҽǵ�����ˮ������һ��ȱ�ڣ�Ӧ����ͨ����������İɣ����뵽����һ�������ҵ�����˷��ߵߵ����ɣ���һ�������صĹ�ʵ�йأ�һ����")
	MisBeginCondition(NoRecord, 360)
	MisBeginCondition(NoMission, 360)
	MisBeginCondition(HasMission, 359)
	MisBeginAction(ClearMission, 359 )
  	MisBeginAction(AddMission, 360)
	MisBeginAction(AddTrigger, 3601, TE_GETITEM, 4263, 1)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "��<p�������>����һ��")
	MisNeed(MIS_NEED_ITEM, 4263, 1, 1, 1)

	MisHelpTalk("<t>����һֻ��СѼ����ѽ��ѽŶ~~~~")
	MisResultCondition(AlwaysFailure )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4263 )
	TriggerAction( 1, AddNextFlag, 360, 1, 1 )
	RegCurTrigger( 3601 )

-----------------------------------��ħ�Ĺ�ʵ
	DefineMission( 532, "��ħ�Ĺ�ʵ", 361 )

	MisBeginTalk( "<t>�������Ǹ����������찡�����ù�������վ���Ǳ߸��ҿ���û������վ���Ǳߣ������ľ���������Ŷ��������������ߣ�������Ķ�ħ�Ĺ�ʵ������ԽԶԽ�ã������Ҳ��Ҫ�ٴ����Ƕ������������������ҵġ�<n><t>�����Ща��Ķ������ߣ��Ҳ����ٿ������ǣ����������Ұɣ��Ҳ����ٿ��������ˣ���������ߣ�����~~~~")
	MisBeginCondition(NoRecord, 361)
	MisBeginCondition(HasMission, 360)
	MisBeginCondition(NoMission, 361)
	MisBeginCondition(HasItem, 4263, 1)
	MisBeginAction(ClearMission, 360 )
 	MisBeginAction(AddMission, 361)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "����<p��ʵ�Ĳ���>�������� <p����������֣>��3298,2534��")

	MisResultTalk("<t>�������ڸо��ö��ˣ���ϣ���㲻Ҫ�����Ҹղŵļ������֣�������������������������飬��Ҳ�����һ�������ġ�")
	MisHelpTalk("<t>�����Ща��Ķ������ߣ��Ҳ����ٿ������ǣ����������Ұɣ��Ҳ����ٿ��������ˣ���������ߣ�����~~~~")
	MisResultCondition(HasMission, 361)
	MisResultCondition(NoItem, 4263, 1)
   	MisResultAction(SetRecord, 361 )
	MisResultAction(ClearMission, 361 )

-----------------------------------����֣����
	DefineMission( 533, "����֣����", 362 )

	MisBeginTalk( "<t>�Թ���������˵����������Ѿ�û�����֡������ֹ�ʵ���ǰɣ�<n><t>�����Щ����ˣ�����Ҫ����һ�£������ǲ����Ǹ��ط��Ǵ��ˣ����һ�������ʱ�������Ұ�������͸���3290,2512����<b��ī>�ɣ�ǧ����͵��Ŷ���ͺ�֮���������ң��һ�������������鶼�����㡣")
	MisBeginCondition(NoRecord, 362)
	MisBeginCondition(NoMission, 362)
	MisBeginCondition(HasRecord, 361)
 	MisBeginAction(AddMission, 362)
 	MisBeginAction(GiveItem, 4250,1,4)
	MisBeginBagNeed(1)

	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "��<r�ۺ�ɫ����>�͸� <b��ī>��3290,2512��")

	MisResultTalk("<t>���Ѿ��͹�ȥ�ˣ�����������˵ʲô������������Ŷ���ȿȣ������������Ѿ�������һЩ�����ˣ�������˵���°ɡ�")
	MisHelpTalk("<t>������͹�ȥ��Ҫ����������������飬û�취����ע���������ˡ�")
	MisResultCondition(HasMission, 362)
	MisResultCondition(HasFlag, 362, 10)
   	MisResultAction(SetRecord, 362 )
	MisResultAction(ClearMission, 362 )

-----------------------------------��ħ�Ĺ�ʵ
	DefineMission( 534, "��ħ�Ĺ�ʵ", 363 )

	MisBeginTalk( "<t>���ڵ���ˮ����Ӧ�ü�������ֻ�޴�ı����˰ɣ�û����Ҳû��ϵ����ֻ�����ʹ�ҷ�ߵ�Ԫ�׽��ܸ�����ʶ���ѣ�����������Ҫ˵���ص�ġ�<n><t>�ص������ϴ��ἰ������Ĺ�ʵ����ʵ����һ�ָ��ӱ�׼�������ֽж�ħ��ʵ����˵���������˻��ö�ħ������������ʧȥһ�����Ҹ���˵��ʵ����ֱ���������ں������������ֻ����֮ǰ���Ҷ��ǲ����������˵�ġ�<n><t>���ˣ����������и��˿���֤���ǿ��µĶ�ħ��ʵ��������������ҲӦ�ü������ˣ��������ϵ����ӣ���ʵ���������������ò�϶��ˡ�<n><t>�����������Ʋ�������Լ����ħ��ʵ�йأ�����֪���Ķ��������ˣ���������ô���Ϳ����Լ��ˡ�<n><t>�ҿ�û˵���ǾƵ��ϰ�Ŷ��")
	MisBeginCondition(NoRecord, 363)
	MisBeginCondition(NoMission, 363)
	MisBeginCondition(HasRecord, 362)
  	MisBeginAction(AddMission, 363)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "��<p�Ƶ��ϰ塤���>��3287,2501��̸һ�¶�ħ��ʵ")

	MisHelpTalk("<t>��֪�����Ѿ����������ˣ��������Ҿ�һ���ɣ���������ô����µ����飬�ҵķ財��Ҫ�����ˡ�")
	MisResultCondition(AlwaysFailure )
	

-----------------------------------������
	DefineMission( 535, "������", 364 )

	MisBeginTalk( "<t>��Ҫ��������������������õģ�����ȥ���������̽�յ�ʱ����ᷢ������Ϊ���ʡ�ܶ�ʱ��Ͳ���Ҫ�Ŀ�֧��<n><t>ֻҪ���ռ�3�����ޣ�3����ǣ�3��ˮâ���ҾͿ��԰�����һֻ�����������Ա�֤��15�����ڲ��ܸ�ʴ��Ӱ�졣")
	MisBeginCondition(NoMission, 364)
 	MisBeginAction(AddMission, 364)
	MisBeginAction(AddTrigger, 3641, TE_GETITEM, 4259, 3)
	MisBeginAction(AddTrigger, 3642, TE_GETITEM, 4260, 3)
	MisBeginAction(AddTrigger, 3643, TE_GETITEM, 4261, 3)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "��<b�ӻ����ˡ�³�ȶ�>��3279,2501������������������ԭ��")
	MisNeed(MIS_NEED_ITEM, 4259, 3, 1, 3)
	MisNeed(MIS_NEED_ITEM, 4260, 3, 5, 3)
	MisNeed(MIS_NEED_ITEM, 4261, 3, 10, 3)

	MisResultTalk("<t>û�뵽����ô����ռ����㹻��ԭ�ϣ�����͸���������������")
	MisHelpTalk("<t>��ô������ԭ�����𣿼�ס��3��<r����>��3��<r���>��3��<rˮâ>��")
	MisResultCondition(HasMission, 364)
	MisResultCondition(HasItem, 4259, 3)
	MisResultCondition(HasItem, 4260, 3)
	MisResultCondition(HasItem, 4261, 3)
	MisResultAction(TakeItem, 4259, 3)
	MisResultAction(TakeItem, 4260, 3)
	MisResultAction(TakeItem, 4261, 3)
	MisResultAction(GiveItem, 4251, 1 ,4)	
 	MisResultAction(SetRecord, 364 )
 	MisResultAction(ClearMission, 364 )
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4259 )
	TriggerAction( 1, AddNextFlag, 364, 1, 3 )
	RegCurTrigger( 3641 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4260 )
	TriggerAction( 1, AddNextFlag, 364, 5, 3 )
	RegCurTrigger( 3642 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4261 )
	TriggerAction( 1, AddNextFlag, 364, 10, 3 )
	RegCurTrigger( 3643)

-----------------------------------��֮��
	DefineMission( 536, "��֮��", 24 , COMPLETE_SHOW)
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>��֮�����Ѿ��кö���û�п������ֶ����������һ�����ô���һ�ţ���һ���Ǽ����Ǹ������ˣ����������ĺ��Ӱ������ˣ�����˵��ЩҲû���ˣ�����Щ��ȥ�������ˡ�<n><t>ʲô����һ����֪�����������ɣ�����ѡ��һ�ǰ���ű�ʯ��������͵�ʲô���鶼û�������������Ҹ�������ڱ�ʯ�����飬���Լ�ȥ�⿪��ʯ�����ܣ�������������Ұɡ�")
	MisResultCondition(NoRecord, 24)
	MisResultCondition(HasMission, 24)
	MisResultCondition(HasItem, 4252, 1)
	MisResultAction(SetRecord, 24)
	MisResultAction(ClearMission, 24)

-----------------------------------������֮��
	DefineMission( 537, "������֮��", 366 )

	MisBeginTalk( "<t>��ѱ�ʯ���ң��Ҹ���<r20���>��Ȼ��͵�ʲô��û�����������Ѿ��������𣿱��������ⲻ��������������׷����ܲ���ʵ�ֵ����飬<r20���>�Ľ����������ø���������")
	MisBeginCondition(NoRecord, 366)
	MisBeginCondition(NoMission, 366)
	MisBeginCondition(NoMission, 367)
	MisBeginCondition(NoRecord, 367)
	MisBeginCondition(HasRecord, 24)	
	MisBeginCondition(HasItem, 4252,1)	
 	MisBeginAction(AddMission, 366)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "��<r��֮��>��<b��ջ�ϰ塤��Ů>��3302,2501�����ﻻ20��")

	MisResultTalk("<t>��������ͨ�ˣ���Ͷ��ˣ��α�Ϊ�˲�֪����������ʧ20���أ��ٺ٣�����֮�������Ұɣ�")
	MisHelpTalk("<t>�ޣ����������֮���أ��ѵ��㲻���������������ô��")
	MisResultCondition(HasMission, 366)
	MisResultCondition(HasItem, 4252,1)
        MisResultAction(TakeItem, 4252, 1)	
        MisResultAction(AddMoney, 200000, 200000)	
 	MisResultAction(SetRecord, 366 )
 	MisResultAction(ClearMission, 366 )

-----------------------------------��֮��Ĵ�˵
	DefineMission( 538, "��֮��Ĵ�˵", 367 )

	MisBeginTalk( "<t>����֪����֮�����������Ҳֻ��֪��һ����˵���ѡ�<n><t>����Ҫ׼��һ�£���Ϊ�����˵����̫���ˣ���Ҫ����һ���ҵ�˼·��������������Ұ�")
	MisBeginCondition(NoRecord, 366)
	MisBeginCondition(HasRecord, 24)
	MisBeginCondition(NoMission, 366)
	MisBeginCondition(NoMission, 367)
	MisBeginCondition(NoRecord, 367)
	MisBeginCondition(HasItem, 4252,1)
	MisBeginAction(AddMission, 367)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "����������Ů����")

	MisResultTalk("<t>��֪����Ϊ�˽⿪��ʯ�����ܣ��㽫��ʧ20�򣬶����ܽ⿪����֮��һ�����ã����Ծɼ���𣿺ã�����Ҳ�ã���Ȼ���Ѿ�����׼�����������ǿ�ʼ�ɡ�<n><t>��˵�У�������������ʱ�������һ�����ᣬ����������˲�䶳���Ϊ��ʯ���������֮�ᣬ�����������ˣ�����֮����Ⱦ���Լ�����Ѫ�����ĵ�����Ϳ��Խ����е����Ļ��⡣<n><t>���ǣ����ڱ�����ǿ�󣬼���û�����ܹ������֮�ᣬ����һ�������֮��ĺ������Ǻ�ɰ��һ��ӵ�������΢Ц�����ả����<n><t>���ǣ�˭��û���뵽���ǣ��������Լ�����Ѫ������������֮���Ϻ󣬱��緢���ˣ���������֮�������������Ȼ������µı��������룬���ں������������Ӧ�þ������ɡ�<n><t>�㽫��ɱ����Ӧ���Ƕ�����һ�ֽ��Ѱɣ������Ұ�֪���Ķ��������ˣ���֮��Ҳ��������У���������ô���Ϳ����Լ��ˡ�")
	MisHelpTalk("<t>�ޣ����������֮���أ�")
	MisResultCondition(HasMission, 367)
	MisResultCondition(HasItem, 4252, 1)
	MisResultAction(SetRecord, 367 )
 	MisResultAction(ClearMission, 367 )
	MisResultAction(ObligeAcceptMission, 25 )




-----------------------------------��֮�������
	DefineMission( 539, "��֮�������", 25, COMPLETE_SHOW )
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>����ô��õ���֮��ģ��Һ���û��äĿ�����Ǹ���˵ʹ�����������������һ�������ˡ�<n><t>��˵ȷʵ����ģ�ֻ��������һ���ط�û��˵���ף��������Ѫ������������Ϊ���������������Ҫ������ĳͷ���")
	MisResultCondition(NoRecord, 25)
	MisResultCondition(HasMission, 25)
	MisResultCondition(HasItem, 4252, 1)
	MisResultAction(SetRecord, 25)
	MisResultAction(ClearMission, 25)

-----------------------------------ʥˮ
	DefineMission( 540, "ʥˮ", 369 )

	MisBeginTalk( "<t>ʹ��Ҳ�����������ı��ֻ�м�סʹ�࣬�˲��ܲ��ϳɳ������ǣ���һ���˱�����̫����˵�ʹ���ʱ��ͻ�Ӱ�쵽�Լ��ĽŲ�����Ϊ�˸�������һ�����ᣬ�Ŵ����˱�����������������ϴ���˵�ʹ�࣬����һ������Υ�����⣬Ϊ���Լ���ʹ��ʹ����֮�ᣬ���ͻᱻ�ͷ���Ϊ�µı�����ֻ����������ϴ�����ϴ�������˵�ʹ��������ܵõ����ѡ�<n><t>���룬����λ���ѿ϶��ǲ�֪������µģ���Ҫ�������ѵĻ�����ֻ��ȥħŮ������һ���ˣ�<p����Ⱥ��3800��550>�����ĺ�ˮ����Ů���ף������ϴȥ���е���񣬶����������ǰ������������ң��һ��������ô�õġ�")
	MisBeginCondition(NoRecord, 369)
	MisBeginCondition(NoMission, 369)
	MisBeginCondition(HasRecord, 25 )
	MisBeginAction(GiveItem, 4239,1,4)
 	MisBeginAction(AddMission, 369)
	MisBeginBagNeed(1)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "��<p����Ⱥ��3800��550>���� <r����ƿ>����һƿ��ˮ")

	MisResultTalk("<t>�����㻹ͦ��ģ����ҿ�������û���ô�ˮ��")
	MisHelpTalk("<t>����ʲô�����𣿼�סֻ��<p����Ⱥ��3800��550>����ĺ�ˮ�ſ��ԣ�����û����ĺ�ˮ���ԵĻ�������Ը���")
	MisResultCondition(HasMission, 369 )
	MisResultCondition(HasItem, 4257,1)
        MisResultAction(TakeItem, 4257, 1)
	MisResultAction(GiveItem, 4240, 1, 4)
	MisResultAction(SetRecord, 369 )
 	MisResultAction(ClearMission, 369 )
	MisResultBagNeed(1)
 
 -----------------------------------ʥˮ
	DefineMission( 541, "����", 370 )

	MisBeginTalk( "<t>��ʥˮ����ϴ����������񣬽���������֮���ϾͿɽ�����������ѣ�Ը����Զ������������֮�ġ�")
	MisBeginCondition(HasRecord, 369)
	MisBeginCondition(NoRecord, 370)
	MisBeginCondition(NoMission, 370)
	MisBeginAction(AddMission, 370)
	MisCancelAction(SystemNotice, "�������޷��ж�")
	
	MisNeed(MIS_NEED_DESP, "ʹ��<rʥˮ>���<r��֮��>�е����")

	MisHelpTalk("<t>ʹ��ʥˮ���������Ѱɡ�")
	MisResultCondition(AlwaysFailure )
	
 
 -----------------------------------��ɰ�Ĵ��
	DefineMission( 542, "��ɰ�Ĵ��", 26 , COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>��ʴ���Ѿ��þ�û�ж����ˣ���˵�������˰���ת�����㣿�ðɣ���������һ�򰴹��°��£��������˵�����չ������Ļ���Ǯ��������ˡ�<n><t>������һ�£�Ȼ���������������롰������ƭ��ľ�������۾������������������һ���ֺ��Ұ�����ȷ�ϼ������չ����Ӧ��������")
	MisResultCondition(NoRecord, 26)
	MisResultCondition(HasMission, 26)
	MisResultAction(ClearMission, 26)
	MisResultAction(SetRecord, 26)
        MisResultAction(AddMoney, 200000)	
	MisResultAction(AddExp,1000000,1000000)
	MisResultAction(AddMoney,250000,250000)
	MisResultAction(AddExpAndType,2,60000,60000)

-----------------------------------����֣������
	DefineMission( 543, "����֣������", 372 )

	MisBeginTalk( "<t>���ǡ������ȱ��ߣ���������ǲ���~��~��~�ˣ�<n><t>��ĬҲû�ã���ͷ�ϵĺ��Ѿ��������ˣ��ұ�������ɱ����ڵģ��ȱ��ܣ��������˻�����ʵ���͸���һ���Ĺ����µĻ��ᣬ����˵��3195,2506����<r����>�Ǳ߽��˲����»�����Ҫ���ܰ���Ū��һ���Ҿ������㡣")
	MisBeginCondition(NoRecord, 372)
	MisBeginCondition(NoMission, 372)
	MisBeginCondition(HasMission, 27)
 	MisBeginAction(AddMission, 372)
	MisBeginAction(SetRecord, 27)
	MisBeginAction(ClearMission, 27)
	MisBeginAction(AddTrigger, 3721, TE_GETITEM, 4241, 1)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "Ϊ<b�����ܹܡ���ī>�ӣ�3196,2509����<bó�����ˡ�����>����Ū��һ��<r�³���װ>")
	MisNeed(MIS_NEED_ITEM, 4241, 1, 1, 1)

	MisResultTalk("<t>Ŷ���ԣ���������������·��ķ��ϣ�����ξ��Ĺ��㣬������Ҫ�ǵ�������˵�Ļ������Ҳ���ë�ʴ����㡣")
	MisHelpTalk("<t>ʲô���㻹ûȥ�����������Ҫɱ������ˡ���")
	MisResultCondition(HasMission, 372)
	MisResultCondition(HasItem, 4241, 1)
	MisResultAction(TakeItem, 4241, 1 )
 	MisResultAction(SetRecord, 372 )
	MisResultAction(ClearMission, 372 )
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4241 )
	TriggerAction( 1, AddNextFlag, 372, 1, 1 )
	RegCurTrigger( 3721 )
 


 -----------------------------------����֣����
	DefineMission( 544, "����֣����", 362 , COMPLETE_SHOW)

	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>��������������һﻹ���ǡ������Ҷ���֪��˵ʲô���ˡ�<n><t>Ŷ�������⣬����˵�㣬���ȥ����˵���������İɣ��ԣ�����һ�䣬�����˵�˾������ˡ�")
	MisResultCondition(NoRecord, 362)
	MisResultCondition(NoFlag, 362, 10)
	MisResultCondition(HasMission, 362)
	MisResultCondition(HasItem, 4250, 1)
	MisResultAction(TakeItem, 4250, 1)
	MisResultAction(SetFlag, 362, 10)
	
-----------------------------------�»�
	DefineMission( 545, "�»�", 372 , COMPLETE_SHOW)

	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>����ô֪����������»��ˣ�������һ���Ǹ��мң�����������������Ӧ�ø��˵ģ����ǣ�ͬ�г�������һ�Ҵ�������Ҳû������ʵ���ǵ��ĵø��˲���������Ҫ��������ҳ�����̽һ�µĻ����ҿ�����Ѹ���һ���������µķ�װ��")
	MisResultCondition(NoRecord, 372)
	MisResultCondition(NoFlag, 372, 10)
	MisResultCondition(HasMission, 372)
	MisResultAction(SetFlag, 372, 10)
	
-----------------------------------������̽
	DefineMission( 546, "������̽", 375 )

	MisBeginTalk( "<t>�������Ӧ���ҳ�����̽�ˣ�̫���ˣ����ȵ�<p2500��2260>����ȥ��һ�°ɣ�������Զ����������ط�Ӧ�ÿ��Կ����ҵĴ��ġ�")
	MisBeginCondition(NoRecord, 375)
	MisBeginCondition(NoMission, 376)
	MisBeginCondition(NoMission, 375)
	MisBeginCondition(NoRecord, 376)
	MisBeginCondition(HasMission, 372)
	MisBeginCondition(HasFlag, 372, 10)
	MisBeginAction(AddMission, 375)
	MisBeginAction(GiveItem, 4258,1,4)
	MisBeginBagNeed(1)

	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "�������򸽽���<p2500��2260>ʹ��<r��Զ��>�鿴һ��")

	MisResultTalk("<t>���Ѿ������ҵĴ�����̫���ˣ������ҵ��Ŀ�������ˣ����㣬��������ˣ����ˣ�����Զ�����ң����Ҳ������ء�")
	MisHelpTalk("<t>������������<p2500��2260>����ס����ȥ��أ��������Ϣ��")
       	MisResultCondition(HasMission, 28)
	MisResultCondition(HasItem, 4258, 1)
	MisResultAction(TakeItem, 4258, 1)
	MisResultAction(GiveItem, 4241, 1,4)	
 	MisResultAction(SetRecord, 375 )
 	MisResultAction(ClearMission, 375 )
 	MisResultAction(ClearMission, 28 )
	MisResultAction(AddExp,2000000,2000000)
	MisResultAction(AddExpAndType,2,60000,60000)
	MisResultBagNeed(1)

 -----------------------------------��������
	DefineMission( 547, "��������", 376 )

	MisBeginTalk( "<t>�㲻ԭ�����ҳ����������ˣ���Ҳ����Ҫ�㣬����·�������8�ۣ���10���ɣ������û��Ҫ���Ǯ������ʵ���ˣ�����ƭ�ͻ��أ���˵�ǲ���")
	MisBeginCondition(NoRecord, 375)
	MisBeginCondition(NoMission, 376)
	MisBeginCondition(NoMission, 375)
	MisBeginCondition(NoRecord, 376)
	MisBeginCondition(HasMission, 372)	
	MisBeginAction(AddMission, 376)
	MisCancelAction(SystemNotice, "�������޷��ж�")
	
	MisResultTalk("<t>��ʵ�һ���ͦϣ������ҳ��������ģ���������Ȼ��ϳ�10��飬��Ҳ�����ˡ�")
	MisHelpTalk("<t>10��飬��һ�ֶ����С�")
	MisResultCondition(HasMission, 376)
	MisResultCondition(HasMoney, 100000)
        MisResultAction(TakeMoney, 100000)	
        MisResultAction(GiveItem, 4241, 1,4)	
 	MisResultAction(SetRecord, 376 )
 	MisResultAction(ClearMission, 376 )
	MisResultBagNeed(1)

-----------------------------------��ħ�Ĺ�ʵ
	DefineMission( 548, "��ħ�Ĺ�ʵ", 363 , COMPLETE_SHOW)

	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>ʲô��ħ��ʵ���Ҳ��Ǹ���˵���Ҳ�֪���𣿻��У���ʵ��ֻ��100�꣬���������С�����أ����������˺������<n><t>���������ô��ô�������ű���˵�Ļ�����֪����Ӧ�ð�����ܸ���������ʶ��Ҫ���ǿ��������Ҷ��˵ķ��ϣ��������ɨ�ѳ����ˣ�����˵һ�Σ��Ҳ����ϣ���ֻ��100�ꡣ")
	MisResultCondition(NoRecord, 363)
	MisResultCondition(NoFlag, 363, 22)
	MisResultCondition(HasMission, 363)
	MisResultAction(SetFlag, 363, 22)
	MisResultAction(AddExp,2500000,2500000)
	MisResultAction(AddExpAndType,2,50000,50000)

-----------------------------------��ħ�Ĺ�ʵ
	DefineMission( 550, "��ħ�Ĺ�ʵ", 363, COMPLETE_SHOW )

	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>ŭ����Ҫ������ʲô��ħ��ʵ�ģ��ɱ���Ҳ������ˡ������ȵȣ���ڴ����Ǹ���������ô���£����Ӧ��������Щ�꺣����ʧ�ٵ�����Ů�Ķ���������ô���������ϣ�ʲô������������л��л�أ�����̫���ˣ�ʲô����˵���Ѿ�150���ˣ�������Ǹ����������ˣ��ҳ�����ȷʵ�Թ�һ����ħ��ʵ��Ҳ�������������ʵ��ԭ���Ҳ��ܱ������������ò���������ҿ�û��һǧ����ô�ϡ�<n><t>��������ϣ�ȷʵ�������ֹ������Ķ�ħ��ʵ���ҳԵ��Ǹ���ʵ�������Ǹ�ʱ��͵�ģ�������һֱ���ҳ��ϣ���֪����һ����ħ��ʵ�ļ۸�����������ƽ����Գ��ܵġ�<n><t>���ǣ��Դ��Ǹ��ˣ�����Ӧ�ö�֪���ģ���ɭ��ΰ��ĺ���֮���뿪�����֮�󣬶�ħ��ʵ�Ͷ���ʧ�����ˣ�û��֪����ħ��ʵ���������ģ�Ҳû��֪��Ϊʲô��һҹ֮�����еĶ�ħ��ʵ����ʧ�ˡ�<n><t>�����˶�˵�Ǻ����������Ĳ����մ��������еĶ�ħ��ʵ����Ҳ���ǲ²���ˡ�")
	MisResultCondition(NoRecord, 363)
	MisResultCondition(HasFlag, 363, 22)
	MisResultCondition(HasMission, 363)
	MisResultCondition(HasItem, 4235, 1)
	MisResultAction(TakeItem, 4235, 1)
	MisResultAction(SetRecord, 363)
	MisResultAction(ClearMission, 363)
	MisResultAction(AddMoney,50000,50000)
	MisResultAction(AddExpAndType,2,60000,60000)
	MisResultAction(GiveItem,3351,15,4)
	MisResultAction(GiveItem,3352,15,4)
	MisResultAction(GiveItem,3353,15,4)
	MisResultBagNeed(3)


 -----------------------------------��ɭ
	DefineMission( 551, "��ɭ", 380 )

	MisBeginTalk( "<t>������ɭ�����������������������ˣ������ǵ������еĴ���Ҳ�����˰ɣ������ǵĴ��ӣ����������й����ż������С����������Ŀ���ء�<n><t>���ڿ�ʲô���ҵ����ܺ������������˼Һ���ɭ����һ��֮Ե�أ�����ô��ô���Ű��������˼ҵ�˽�£�<p���Ұ���Щծ�ֻ����ٸ��㽲>���������԰���")
	MisBeginCondition(HasRecord, 363)
	MisBeginCondition(NoRecord, 380)
	MisBeginCondition(NoMission, 380)
	MisBeginAction(AddMission, 380)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "��<b�Ƶ��ϰ塤���>��3287,2501������������")

	MisResultTalk("<t>�������е��ʶ��������������ż������㽲��ɭ�Ĺ��¡�")
	MisHelpTalk("<t>�Ҳ���˵��������Ҫ����һЩծ���𣿵��Ҵ���������ٸ���˵��")
	MisResultCondition(HasRecord, 386)
	MisResultCondition(HasMission, 380)
  	MisResultAction(SetRecord, 380 )
 	MisResultAction(ClearMission, 380 )
	


-----------------------------------����
	DefineMission( 552, "����", 381 )

	MisBeginTalk( "<t>����֪��Ϊʲô��Ϳɽ�˲����㷭������������Ϊ�����������ڿ����������һƪ���º��뿪������ȥѰ���λ��е�С�򣬴Ӵ�һȥ���أ�����Ϳɽ��Ҳ���ٸ��˷������������ˡ�<n><t>���Ǹ��ɰ���С�к������������������˵���������Ĵ�ֻ��ħŮ����3757��1248��ʧ���ˣ�����ȥ���ҵ���һ����<n><t>������һ��ˮ��̽���������԰���������ˮ�еĶ�����")
	MisBeginCondition(NoRecord, 381)
	MisBeginCondition(NoMission, 381)
	MisBeginCondition(HasRecord, 290)
	MisBeginAction(AddMission, 381)
  	MisBeginAction(GiveItem,4253,1,4)
	MisBeginBagNeed(1)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	
	MisNeed(MIS_NEED_DESP, "��ħŮ֮����3757��1248������һ��")
	MisResultCondition(AlwaysFailure )


-----------------------------------����
	DefineMission( 553, "����", 382 )

	MisBeginTalk( "<t>û�������������ʶ���������ǵ��������������Ǹ���������̵ĺ����ˡ�<n><t>��������ҽ�����2272,2700����<b��Ϳɽ��>�ɣ���Ȼ���ܶ�������ܴ󣬵��ǣ�ÿ���˶�����Ҫ�����ʵ��һ��")
	MisBeginCondition(NoMission, 382)
	MisBeginCondition(HasMission, 29)
	MisBeginCondition(HasItem, 4233,1)
	MisBeginAction(ClearMission, 29)
	MisBeginAction(SetRecord, 29)
	MisBeginAction(AddMission, 382)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "��<rƿ����>����<b��Ϳɽ�ˣ�2272,2700��>")
	
	MisResultCondition(AlwaysFailure )
-----------------------------------����
	DefineMission( 554, "����", 382, COMPLETE_SHOW )


	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>�����֪�����������ˣ���������н�����Ž�����Ҳ���Ƕ��ҵ�һ�㰲ο��")
	MisResultCondition(HasMission, 382)
	MisResultCondition(HasItem, 4233, 1)
	MisResultAction(TakeItem, 4233, 1)
	MisResultAction(ClearMission, 382)
	MisResultAction(SetRecord, 382)

-----------------------------------����
	DefineMission( 555, "����", 383 )

	MisBeginTalk( "<t>��Ȼ��������͵���Ӧ�ò������ű������������顣<n><t>��������������ܰ��ҽ�ѵһ��ħŮ֮�����ǰ����ĺ����Ļ����һ��ǻ�ܸм���ġ�")
	MisBeginCondition(NoRecord, 383)
 	MisBeginCondition(HasRecord, 382)
 	MisBeginCondition(NoMission, 383)
	MisBeginAction(AddMission, 383)
	MisBeginAction(AddTrigger, 3831, TE_KILL, 594, 10)
	MisBeginAction(AddTrigger, 3832, TE_KILL, 593, 5)
	MisBeginAction(AddTrigger, 3833, TE_KILL, 656, 1)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "�ܿ˺���ͻ����*10��1950,3515���������ܿ˺���֧Ԯ��*5��2210,3769���������ܿ˺���ָ�ӽ�*1��1966,3769������")
	MisNeed(MIS_NEED_KILL, 594, 10, 1, 10)
	MisNeed(MIS_NEED_KILL, 593, 5, 11, 5)
	MisNeed(MIS_NEED_KILL, 656, 1, 16, 1)

	MisResultTalk("<t>��л��ʵ��̫��л�ˣ���ʵ�ڲ�֪����˵Щʲô�ã�����������ܶ����Ժ��ð����Щ�����������ҵ����и�л������������ߵ����ϰ�")
	MisHelpTalk("<t>�����̫Ϊ����Ļ������ˣ�������ƴ������Ϲ�ͷ���ǰ�ʳ�˵ļһ�ͬ���ھ���")
	MisResultCondition(HasMission, 383 )
	MisResultCondition(HasFlag, 383, 10)
	MisResultCondition(HasFlag, 383, 15)
	MisResultCondition(HasFlag, 383, 16)
 	MisResultAction(SetRecord, 383 )
 	MisResultAction(ClearMission, 383 )
	MisResultAction(AddMoney,100000,100000)
	MisResultAction(AddExpAndType,2,60000,60000)
	MisResultAction(GiveItem,3878,1,4)
	MisResultAction(GiveItem,4715,1,4)
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 594 )
	TriggerAction( 1, AddNextFlag, 383, 1, 10 )
	RegCurTrigger( 3831 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 593 )
	TriggerAction( 1, AddNextFlag, 383, 11, 5 )
	RegCurTrigger( 3832 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 656 )
	TriggerAction( 1, AddNextFlag, 383, 16, 1 )
	RegCurTrigger( 3833 )

-----------------------------------��ȥ
	DefineMission( 556, "��ȥ", 384 )

	MisBeginTalk( "<t>����֪�����峤����������.��Ϊʲô��ô��ŭ���𣿿����ҽ��µķ����֪���ˣ�������ǰ���Ӻ���Ư���˼���д���������ֵıʼǣ����������ȵķ��룬�����˽��˺ܶ�ɳ�֮������磬��������˾���̽�����ȳ���ȥ����ߵ����磬Ȼ���Ǹ�������뿪�����ų�������������Ů��ı������յ�����Ů��ķ�ŭ����罫�����ų�����ɳ��֮�£��㿴���������ҵĽ��¡�<n><t>���ֻ�������˻��ǵõ���ʷ�������峤����������.���ŭ��ԭ�򣬵������������ҷ����ԭ��˵ʵ�����Һ���֪����Щ�ʼ���д��ʲô�����ԣ����������͵��ͼ����롰�衱�Ǽ����ʼǳ������������ǣ��Ҿͱ�Ҫ���������ס�ˡ�<n><t>��˵ͼ���ʧ�Թ�����֪����Щ�ʼǻ�����������ܰ�����<r���ϵıʼ�>�������ҿ��Ը���Щ����ɳ���µĺö���")
	MisBeginCondition(NoRecord, 384)
	MisBeginCondition(NoMission, 384)
	MisBeginCondition(HasRecord, 290)
 	MisBeginAction(AddMission, 384)
	MisBeginAction(AddTrigger, 3841, TE_GETITEM, 4234, 1)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "��<bʥŮ������>��862,3303���ҵ�<r���ϵıʼ�>")
	MisNeed(MIS_NEED_ITEM, 4234, 1, 1, 1)

	MisResultTalk("<t>�ԣ����������û�뵽����ô����ҵ������Ѿ��е㻳��������Ǹ�͵ͼ������ˣ�������û��ϵ����ֻҪ����ʼǣ��������ҲŲ����أ����ˣ����Ǵ�Ӧ����Ķ�����")
	MisHelpTalk("<t>ͼ��ݱ���Ҳ����һ�����ˣ��Ҳ��������ˣ�Ҳ�����ø��ٵ���ƭ�Ұ���")
	MisResultCondition(HasMission, 384)
	MisResultCondition(HasItem,4234,1)
	MisResultAction(TakeItem, 4234,1 )
 	MisResultAction(SetRecord, 384 )
	MisResultAction(ClearMission, 384 )
	MisResultAction(AddExpAndType,2,60000,60000)
	
	MisResultAction(GiveItem,3878,1,4)
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4234 )
	TriggerAction( 1, AddNextFlag, 384, 1, 1 )
	RegCurTrigger( 3841 )

-----------------------------------��ȥ
	DefineMission( 557, "��ȥ", 384, COMPLETE_SHOW )

	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>���ϵıʼ��𣿺�����������������ڲ���ʲôֵǮ�Ķ������ַ����ֵ����ˣ�ȥ������Ҫ�ɣ����ÿ�����������Ҳû������")
	MisResultCondition(NoRecord, 384)
	MisResultCondition(HasMission, 384)
	MisResultCondition(NoItem, 4234, 1)
	MisResultCondition(NoFlag, 384, 10)
	MisResultAction(SetFlag, 384, 10)

	
-----------------------------------------��ծ
      DefineMission(558,"��ծ",386)

      MisBeginCondition(HasMission,380)
      MisBeginCondition(NoRecord,386)
      MisBeginCondition(NoMission,386)
 
      MisBeginTalk("<t>ʲô����Ҫ������ծ��������̫���ˣ���ʵҲû����ծ��ֻ��200����ѣ����㣬����������������ˣ�Ҫ�����ܰ��Ұ�ծ�ֻ������Ҿ���ǰ����֪�������齲���㡣")
      MisBeginAction(AddMission,386)
      MisBeginAction(GiveItem,0948,1,4)
      MisBeginBagNeed(1)
      MisCancelAction(SystemNotice, "�������޷��ж�") 

      MisNeed(MIS_NEED_DESP, "�������<r��Ů,³�ȶ�,����,����,����,�ȸǺ͸ۿ�ָ��˪��>�ֻ�������Ƿ��ծ��") 
      
      MisHelpTalk("<t>�ҿ������ɫ����̫�ð����ǲ����ǰ��˲��ϻ�Ǯ����������һ���������ӣ������ֲ�����ߡ������ծҪ��ȫ����Լ������в���200�򰡣�200��")
      
      MisResultTalk("<t>ʵ����̫��л����������200��һ�㶼�������û��ôΪ����ɡ�<n><t>���СС������͵��Ҵ�л��ģ����պð���")
    
      MisResultCondition(NoRecord,386)
      MisResultCondition(HasFlag,386, 100)
      MisResultCondition(HasFlag ,386, 101)
      MisResultCondition(HasFlag,386, 102)
      MisResultCondition(HasRecord,389)
      MisResultCondition(HasRecord,391)
      MisResultCondition(HasRecord,400)
      MisResultCondition(HasRecord,393)
	  MisResultCondition(HasItem,0948,1)
      MisResultCondition(HasMoney,2000000)
      MisResultAction(TakeMoney,2000000)
      MisResultAction(TakeItem,0948,1)
      MisResultAction(GiveItem,0189,1,4)
      MisResultBagNeed(1)
      MisResultAction(ClearMission,380)
      MisResultAction(ClearMission, 386 )
      MisResultAction(SetRecord, 380 )
      MisResultAction(SetRecord,386)

      ----------------------------------��ծ      �����Σ�
      DefineMission(567,"��ծ",386, COMPLETE_SHOW )
      
      MisBeginCondition( AlwaysFailure )
      MisResultTalk("<t>���ǰ���������ծ�������ã��������͹�ȥ�أ�����10�򱾽�����10����Ϣ��<n><t>������10����Ϣ��������ž����Ǹ�ʲô�ģ���")
      MisResultCondition(HasMission,386)
      MisResultCondition(HasItem,0948,1)
      MisResultCondition(NoRecord,386)
      MisResultCondition(NoFlag, 386, 100)
      MisResultAction(AddMoney,200000)
      MisResultAction(SetFlag, 386, 100)
     


      ------------------------------------��ծ
       DefineMission(568,"��ծ",386, COMPLETE_SHOW )
      
      MisBeginCondition( AlwaysFailure )
      MisResultTalk("<t>Ŷ���㿴��һ������ͷ������Ǯ����������Ҫ����Ϊ�˸������ſ�������Ҳ����Ƿ����ô��ծ�������кã��ٿ��޼���ɣ�Ҫ����������ֻ��10��飬������ȥ��ʣ�µ�����ҵ�һ�º���Ҳ���࣬������Ϣ��10��")
      MisResultCondition(HasMission,386)
      MisResultCondition(HasItem,0948,1)
      MisResultCondition(NoRecord,386)
      MisResultCondition(NoFlag,386,101)
      MisResultAction(AddMoney,100000)
      MisResultAction(SetFlag,386,101)
    


      ----------------------------------------��Ů��ծ��
      DefineMission(569,"��Ůծ��",389)

      MisBeginCondition(HasMission,386)
      MisBeginCondition(HasItem,0948,1)
      MisBeginCondition(NoRecord,389 )
      MisBeginCondition(NoMission,389 )
      MisBeginAction(AddMission,389)
      MisCancelAction(SystemNotice, "�������޷��ж�")

      MisBeginTalk("<t>�㿴������ԣ�����Ҿ������ˣ�����߱Ƚ�æ�������ȥ������һ�˰ɣ������֪ͨһ����ī����û�Ǵ�Ļ����������Ϣ��20��ɡ�")
      
      MisNeed(MIS_NEED_DESP, "��������ī��3290,2512����ȥȡ20��")

      MisHelpTalk("<t>���Ѿ�����ī˵���ˣ���ȥȡ�Ϳ�����")
       
     MisResultCondition(AlwaysFailure)

-------------------------------------------��Ů��ծ��
     DefineMission(570,"��Ů��ծ��",389, COMPLETE_SHOW)

     MisBeginCondition(AlwaysFailure)

     MisResultTalk("<t>������ȡ��Ů��Ǯ�İɣ����㣬һ��20�򣬶��ˣ���������Ҫ��������࣬200���ѡ�")

     MisResultCondition(HasMission,389)
     MisResultCondition(NoRecord,389)
     MisResultCondition(HasMoney,200)
     MisResultAction(TakeMoney,200)
     MisResultAction(AddMoney,200000)
     MisResultAction(ClearMission, 389 )
     MisResultAction(SetRecord, 389 )
     


---------------------------------------------��ծ
     DefineMission(563,"��ծ",386, COMPLETE_SHOW )
      
      MisBeginCondition( AlwaysFailure )
      MisResultTalk("<t>ʲô����ô���Ҫ��ԭ������˵��3���µ����ǿ�������������Ǯ��������������в���ʲô���ٹ�һ����Ҫ��30���ǻ������˰ɣ� ������20����ȥ�ɣ�")
      MisResultCondition(HasMission,386)
      MisResultCondition(HasItem,0948,1)
      MisResultCondition(NoRecord,386)
      MisResultCondition(NoFlag, 386, 102)
      MisResultAction(AddMoney,200000)
      MisResultAction(SetFlag, 386, 102)



     ---------------------------------------------�ӻ����˵�ծ��
      DefineMission(564,"�ӻ����˵�ծ��",391)

      MisBeginTalk("<t>�㿴�����ڵĻ�Ʊ�г�һƬ��ã�������ȴû�������Ʊ��ԭ�ϣ���������԰��ҵ�����ˮ����Ū���Ʊ��ԭ�����������ҿ��Ժܿ�׬�㻹���Ǯ��")
      MisBeginCondition(HasMission,386)
      MisBeginCondition(HasItem,0948,1)
      MisBeginCondition(NoRecord,391)
      MisBeginCondition(NoMission,391)
      MisBeginAction(AddMission,391)
   
      MisBeginAction(AddTrigger, 3911, TE_GETITEM, 0176, 3 )		--��ȱ�Ĺ�ʬ��
      MisBeginAction(AddTrigger, 3912, TE_GETITEM, 0177, 3 )		--����Ĺ�ʬ��
      MisBeginAction(AddTrigger, 3913, TE_GETITEM, 0178, 3 )		--�����Ĺ�ʬ��
      MisCancelAction(SystemNotice, "�������޷��ж�")
      
      MisNeed(MIS_NEED_DESP, "ȥ����ˮ���дӽ�ʬ�����õ���ȱ�Ĺ�ʬ��3�飬����Ĺ�ʬ��3�飬�����Ĺ�ʬ��3��")
      MisNeed(MIS_NEED_ITEM, 0176, 3, 10, 3)
      MisNeed(MIS_NEED_ITEM, 0177, 3, 20, 3)
      MisNeed(MIS_NEED_ITEM, 0178, 3, 30, 3)
      
      MisHelpTalk("<t>����ٲ�������Ʊ�Ļ��ʹ���̻��ˣ���Ҳ��ûǮ�����ˣ���ʱ����ֻ����·һ���ˡ�")  
      MisResultTalk("<t>������������Щ���ֿ�������Ʊ�ˣ���ȥ�������������д���40�������ţ���һ������׬�ı���ࡣ<n><t>��2������˽�˸���ġ�")
      MisResultCondition(HasMission, 391 )
      MisResultCondition(HasItem, 0176, 3 )
      MisResultCondition(HasItem, 0177, 3 )
      MisResultCondition(HasItem, 0178, 3 )
      MisResultAction(TakeItem, 0176, 3 )
      MisResultAction(TakeItem, 0177, 3 )
      MisResultAction(TakeItem, 0178, 3 )
      MisResultAction(AddMoney,420000)
      MisResultAction(ClearMission, 391 )
      MisResultAction(SetRecord, 391 )
      
      InitTrigger() 
   TriggerCondition( 1, IsItem, 0176 )	
   TriggerAction( 1, AddNextFlag, 391, 10, 3 )
    RegCurTrigger(3911)
    
      InitTrigger() 
   TriggerCondition( 1, IsItem, 0177 )	
   TriggerAction( 1, AddNextFlag, 391, 20, 3 )
    RegCurTrigger(3912) 
     
      InitTrigger() 
   TriggerCondition( 1, IsItem, 0178 )	
   TriggerAction( 1, AddNextFlag, 391, 30, 3 )
    RegCurTrigger(3913)

--------------------------------------------------------�ۿ�ָ�ӡ�˪���ծ��
     DefineMission(565,"�ۿ�ָ�ӡ�˪���ծ��",392)

      MisBeginTalk("<t>�ٿ��޼��������ֻҪ������ҩ���˵��������ĺ���˾������Ϳ���׬��40���Ҷ���ð��ˣ��͵�����һ�����˳����ˣ��㿴��������ʵ����û�б��ֵǮ�Ķ����ˡ�<n><t>��������������һ�˵Ļ����ҿ������յ���������ϸ���Ǯ��")
      MisBeginCondition(HasMission,386)
      MisBeginCondition(HasItem,0948,1)
      MisBeginCondition(NoRecord,392)
      MisBeginCondition(NoMission,392)
      MisBeginAction(AddMission,392)
      MisBeginAction(GiveItem,0949,1,4)
      MisCancelAction(SystemNotice, "�������޷��ж�")
      MisBeginBagNeed(1)

      MisNeed(MIS_NEED_DESP, "��ҩ����������ҩ�ݸ��������ĺ���˾�713,1416��")
      MisHelpTalk("<t>��ô���������͵���������������")
       
      MisResultTalk("<t>�����Ѿ��͵�������̫���ˣ�ǮӦ�����Ͼͻ���ҵ��ʻ��ϣ����ҿ�����������Ȼ���ˣ���ȵȣ�����������㡣<n><t>���㣬���������ŵ�40�򣬻�����2���Ǵ�л��ġ�" )
      MisResultCondition(HasRecord,392) 
      MisResultAction(AddMoney,420000)
      MisResultAction(ClearMission,392 )
      MisResultAction(SetRecord,400)

  -------------------------------------------------------�ۿ�ָ�ӡ�˪���ծ��

  DefineMission(566,"�ۿ�ָ�ӡ�˪���ծ��",392, COMPLETE_SHOW )

      MisBeginCondition( AlwaysFailure )
      MisResultTalk("<t>Ŷ��������𣿲���Ӧ�����ϴ��Ǹ�С�������������ˣ�ֻҪҩ�ĺþͿ����ˣ��Ϲ�أ����������һ��Ǯ�����Ŀ������Ի�ȥ�ˡ�")
      MisResultCondition(HasMission,392)
      MisResultCondition(NoRecord,392)
      MisResultCondition(HasItem,0949,1)
      MisResultAction(TakeItem,0949,1)
      MisResultAction(SetRecord,392)
      
       

   -----------------------------------------------------ó�����ˡ������ծ��

      DefineMission(572,"ó�����ˡ������ծ��",393)

      MisBeginTalk("<t>�㿴���ұ����ǿ������ϸ���Ǯ�ģ��������ܲ��ң��������ұ��ܵ�5��ˮ������ǰ���춪�ˣ������ڴ�Ǯ׼���⳥�˼ң��������������һض�ʧ��ˮ�����ҿ������ϻ�Ǯ��<n><t>�������û�´�Ļ���ˮ����һ���Ǳ�����ĺ���͵���ˡ�")

      MisBeginCondition(HasMission,386)
      MisBeginCondition(HasItem,0948,1)
      MisBeginCondition(NoRecord,393)
      MisBeginCondition(NoMission,393)
      MisBeginAction(AddMission,393)
   
      MisBeginAction(AddTrigger, 3931, TE_GETITEM, 1864, 5 )		 
      MisCancelAction(SystemNotice, "�������޷��ж�")
      
      MisNeed(MIS_NEED_DESP, "�Ӻ��������ҵ�5��ˮ����")
      MisNeed(MIS_NEED_ITEM, 1864, 5, 10, 5)
      
      
      MisHelpTalk("<t>����ò���ˮ�����Ҿ������ˡ�")  
      MisResultTalk("<t>�����ҵľ������˰�������40�����һ������ŵģ�����2�����Ҵ�л��ģ������٣�����������Ҳ�����װ���")
      MisResultCondition(HasMission, 393 )
      MisResultCondition(HasItem, 1864, 5 )
      MisResultAction(TakeItem, 1864, 5 )
      MisResultAction(AddMoney,420000)
      MisResultAction(ClearMission, 393 )
      MisResultAction(SetRecord, 393)

	  InitTrigger() 
   TriggerCondition( 1, IsItem, 1864 )	
   TriggerAction( 1, AddNextFlag, 393, 10, 5 )
    RegCurTrigger(3931)

--------------------------------------------��ɭ
     DefineMission(571,"��ɭ",394)
     MisBeginTalk("<t>�㿴��һ�¶���200�������ϣ���ô���ֽ�������Ҳ�����㰡��<n><t>����������ЩǮ�浽���������ٸ��㽲��ɭ���°�")
     MisBeginCondition(HasRecord,386)
      MisBeginCondition(NoMission, 394)
     MisBeginCondition(NoRecord, 394)
     MisBeginAction(AddMission, 394)
     MisCancelAction(SystemNotice, "�������޷��ж�")

     MisNeed(MIS_NEED_DESP, "��<b�Ƶ��ϰ塤���>��3287,2501����Ǯ�浽������")
     MisHelpTalk("<t>Ǯ��û���أ��㲻Ҫ�ż���")
      MisResultTalk("<t>�������ܵ�Ǯ�����")
     MisResultCondition(NoRecord, 394)
     MisResultCondition(HasMission, 394)
     MisResultAction(SetRecord, 394 )
     MisResultAction(ClearMission, 394 )

----------------------------------------׷��
	 DefineMission(592,"׷��",395)
	
	MisBeginTalk( "<t>���Ǻܾ���ǰ�������ˣ������������Ը����������֮һ����ɭ���Ǹ�ʱ����ΰ��ĺ��������˵�΢Ц��������ܡ���<n><t>���ϣ��㿴����һ�������Ǽ��¾ͻ�ͷ�ۣ������ɣ�����һ�������<b����>���������������̽�գ����һ�����⿪���ŵġ�ȥ���Ǳ���<bҩ���ϰ塤���>(1352,499)���������һ���������𾪵��ջ�" )
	MisBeginCondition(NoRecord, 395)
	MisBeginCondition(NoMission, 395)
	MisBeginCondition(HasRecord,394)
	MisBeginAction(AddMission,395)
	MisBeginAction(GiveItem, 1051, 1, 4)	----------------Īа����	
	MisBeginBagNeed(1)
	MisCancelAction(SystemNotice, "�������޷��ж�")
		
	MisNeed(MIS_NEED_DESP, "��ҩ���ϰ塤���̸̸")
	
	MisHelpTalk("<t>�㻹ûȥ��ҩ���ϰ塤����𣿿�ȥ�ɣ�")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------׷��
	DefineMission(593, "׷��", 395, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>�ϵ۰�����ÿ��ʧ�ߣ�")
	MisResultCondition(NoRecord, 395)
	MisResultCondition(HasMission,395)
	MisResultAction(ClearMission,395)
	MisResultAction(SetRecord, 395)
       -----------------------------------------------------��յĶ���
	DefineMission(594,"��յĶ���",396)
	
	MisBeginTalk( "<t>��������������Σ�ҹҹ�Ѱ�����֪�Ǽ����ף����벷һ�ԣ������⼸����æ�����ܰ��Ҹ�<b����������������>(3262,2502)˵һ����" )
	MisBeginCondition(NoRecord, 396)
	MisBeginCondition(NoMission, 396)
	MisBeginCondition(HasRecord,395)
	MisBeginAction(AddMission,396)
	MisCancelAction(SystemNotice, "�������޷��ж�")
		
	MisNeed(MIS_NEED_DESP, "������������������˵һ��")
	
	MisHelpTalk("<t>�㻹ûȥ�����������𣿿�ȥ�ɣ�")
	MisResultCondition(AlwaysFailure)
----------------------------------------------------��յĶ���
	DefineMission(5065,"��յĶ���",396)

	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>�����������������㵽����������")
	MisResultCondition(NoRecord, 396)
	MisResultCondition(HasMission,396)
	MisResultAction(ClearMission,396)
	MisResultAction(SetRecord, 396)
	

---------------------------------------------------------------����ʿ����
	DefineMission(595,"����ʿ����",397)

      MisBeginTalk("<t>����˵��һ�㲻��������������Ļ����������̫��������������ҿ���һƬ���ľ�Ϊ�������ɡ�<n><t>###����**##%����<y�����ʿ>����,ȥɱ10ֻ����ʿ��3322,2460����")

      MisBeginCondition(HasRecord,396)
      MisBeginCondition(NoRecord,397)
      MisBeginCondition(NoMission,397)
      MisBeginCondition(HasItem,1051,1)----------Īа����
      MisBeginAction(TakeItem,1051,1)
      MisBeginAction(AddMission,397)
      MisBeginAction(AddTrigger, 3971, TE_KILL, 748, 10)
   
      MisCancelAction(SystemNotice, "�������޷��ж�")
      MisNeed(MIS_NEED_DESP, "��ɱ10ֻ����ʿ��")
      MisNeed(MIS_NEED_KILL, 748, 10, 10, 10)

      MisHelpTalk("<t>ɱ��������10ֻ�����ʿ��")  
      MisResultTalk("<t>��ı��ֺܲ����Ҷ���Ҫ����Ϊͽ�ˡ�")
      MisResultCondition(HasMission, 397 )
      MisResultCondition(HasFlag, 397, 19)
      MisResultAction(AddMoney,100000)
      MisResultAction(ClearMission, 397 )
      MisResultAction(SetRecord, 397)

      InitTrigger()
      TriggerCondition( 1, IsMonster, 748 )
      TriggerAction( 1, AddNextFlag, 397, 10, 10 )
      RegCurTrigger( 3971 )
-------------------------------------------------------Ϊ��ս���
	DefineMission(5066,"Ϊ��ս���",992)
	
	MisBeginTalk( "<t> �����˿���֮��������л�ҡ�ȥ���Ǳ���<bҩ���ϰ塤���>(1352,499)��" )
	
	MisBeginCondition(HasRecord,397)
	MisBeginCondition(NoRecord, 992)
	MisBeginCondition(NoMission, 992)
	MisBeginAction(AddMission,992)
	MisCancelAction(SystemNotice, "�������޷��ж�")
		
	MisNeed(MIS_NEED_DESP, "�Ҵ��Ϊ�����ΰ�")
	
	MisHelpTalk("<t>�������²������ģ���Ϊ���������죡")
	MisResultCondition(AlwaysFailure)
----------------------------------------------------Ϊ��ս���
	DefineMission(5067,"Ϊ��ս���",992)

	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>�����ҽ�����������ĥ�ˣ�����ЩǮ�����ǳ�л�ɣ��������б��°���")

	MisResultCondition(HasMission,992)
	MisResultCondition(NoRecord, 992)
	MisResultAction(ClearMission,992)
	MisResultAction(SetRecord, 992)
	MisResultAction(AddMoney,20000)

	------------------------------------------------------------�����ȵĶ���
       DefineMission(596,"�����ȵĶ���",398)
	
	MisBeginTalk( "<t>��������������װɣ��ҵ�Ư���ھ�<b���г��ɡ�������>(1360,519)�������Ҳ�з��ա�" )
	MisBeginCondition(NoRecord, 398)
	MisBeginCondition(NoMission, 398)
	MisBeginCondition(HasRecord,992)
	MisBeginAction(AddMission,398)
	MisCancelAction(SystemNotice, "�������޷��ж�")
		
	MisNeed(MIS_NEED_DESP, "�����г��ɡ�������(1360,519)")
	
	MisHelpTalk("<t>�㻹ûȥ�Ҳ�������")
	MisResultCondition(AlwaysFailure)
	----------------------------------------------�����ȵĶ���
	 DefineMission(597,"�����ȵĶ���",398)
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>��ҩ���ϰ塤��ո��������̫�ж��ˣ�ԭ�������˹����ҡ�")
	MisResultCondition(NoRecord, 398)
	MisResultCondition(HasMission,398)
	MisResultAction(ClearMission,398)
	MisResultAction(SetRecord, 398)	
	------------------------------------------------��Ȳ�����
	 DefineMission(598,"��Ȳ�����",399)
	
	MisBeginTalk( "<t>������һҹû˯�ã�����һ��������û�У����ܰ�������������(3262,2502)��ǩ��<b�ǵû���������ԭ��>" )
	MisBeginCondition(NoRecord, 399)
	MisBeginCondition(NoMission, 399)
	MisBeginCondition(HasRecord,398)
	MisBeginAction(AddMission,399)
	MisCancelAction(SystemNotice, "�������޷��ж�")
		
	MisNeed(MIS_NEED_DESP, "������������������˵һ��")
	
	MisHelpTalk("<t>�㻹ûȥ�����������𣿿�ȥ�ɣ�")

	MisResultTalk("<t>лл���������ˣ������ҵ�һ��л�⡣�Ҹոպ�����˵��������(3262,2502)�������㣬��������Ҫ����")
	MisResultCondition(NoRecord, 399)
	MisResultCondition(HasMission,399)
	MisResultCondition(HasRecord,950)
	MisResultAction(ClearMission,399)
	MisResultAction(SetRecord, 399)

	--------------------------------------------------------����ˮ����
	DefineMission( 599, "����ˮ����", 996 )

	MisBeginTalk( "<t>�������������������ģ�����������˵���������ˮ���򣬻�ȱ2��<y��ɫˮ��>�ڼ��ɴ�½��<b���͵�Ѫ���>��2550,400�������У�3��<yˮ����ʯ>�ڼ��ɵ�<b�ֲ��������ʬ>(360,1340) �������У��㲻��ܾ��Ұɡ�" )------------++++++
	MisBeginCondition(NoRecord, 399)
	MisBeginCondition(NoRecord, 996)
	MisBeginCondition(NoMission, 996)
	MisBeginCondition(HasMission,399)
	MisBeginAction(AddMission, 996)
	MisBeginAction(AddTrigger, 9961, TE_GETITEM, 3366,2 )		--��ɫˮ��
	MisBeginAction(AddTrigger, 9962, TE_GETITEM, 1635, 3 )		--ˮ����ʯ
	MisCancelAction(SystemNotice, "�������޷��ж�")

        MisNeed(MIS_NEED_DESP, "��ס���û�2��<y��ɫˮ��>��3��<yˮ����ʯ>��")
	MisNeed(MIS_NEED_ITEM, 3366,2, 10, 2)
	MisNeed(MIS_NEED_ITEM, 1635, 3, 20, 3)


	MisResultTalk("<t>���㵽���˳�������ģ���û�㵽��ô�졣")
	MisHelpTalk("<t>��ô�ˣ�������ô�򵥵�������ɲ��ˣ�")
	MisResultCondition(HasMission, 996)
	MisResultCondition(HasItem, 3366, 2 )
	MisResultCondition(HasItem, 1635, 3 )
	
	MisResultAction(TakeItem, 3366, 2 )
	MisResultAction(TakeItem, 1635, 3 )
	
	MisResultAction(ClearMission, 996)
	MisResultAction(SetRecord, 996 )---------------------set996
	MisResultAction(AddExp,800000,800000)
	MisResultAction(AddMoney,200000,200000)	


	InitTrigger()
	TriggerCondition( 1, IsItem,3366)	
	TriggerAction( 1, AddNextFlag, 996, 10, 2 )
	RegCurTrigger( 9961 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1635)	
	TriggerAction( 1, AddNextFlag, 996, 20, 3 )
	RegCurTrigger(9962 )

	----------------------------------------------------------------------------��������
	DefineMission( 5000, "��������", 950 )

	MisBeginTalk( "<t>###����**##%������Ǵ�����<y����>��3306,2444�����֣���Ź�����,ɱ5ֻ��" )
	MisBeginCondition(NoRecord, 950 )
	MisBeginCondition(NoRecord, 399)
	MisBeginCondition(NoMission, 950 )
	MisBeginCondition(HasRecord,996)-----------------
	MisBeginAction(AddMission,  950 )
	MisBeginAction(AddTrigger,  9501, TE_KILL,761, 5 )	----------����
	MisCancelAction(SystemNotice, "�������޷��ж�")
	
	MisNeed(MIS_NEED_DESP, "ɱ5ֻ����������")
	MisNeed(MIS_NEED_KILL,761,5, 10, 5)

	MisResultTalk("<t>��ȥ֪ͨ������(1360,519)�������Ϣ�ɡ�")
	MisHelpTalk("<t>��ô�ˣ������ˣ�ɱ5ֻ����������")
	MisResultCondition(HasMission,  950 )
	MisResultCondition(NoRecord,  950)
	MisResultCondition(HasFlag,  950, 14 )
	MisResultAction(ClearMission, 950 )
	MisResultAction(SetRecord,  950  )
	MisResultAction(AddExp,2000000,2000000)
	MisResultAction(AddMoney,800000,800000)	
	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 761)	
	TriggerAction( 1, AddNextFlag,   950 , 10,5)
	RegCurTrigger(   9501 )

---------------------------------------------------------------------��������

	DefineMission( 5001, "��������", 951 )

	MisBeginTalk( "<t>���ּ��������β������ɺϣ�һ����һ������ں��棬���㵽��һ��<y����>��3135,2469������ȥ�ַ����ɣ��Ҳ��������ġ�ɱ1ֻ��" )--------++++++0
	MisBeginCondition(NoRecord, 951 )
	MisBeginCondition(HasRecord, 399)
	MisBeginCondition(NoMission, 951 )
	MisBeginAction(AddMission,  951)
	MisBeginAction(AddTrigger,  9511, TE_KILL, 776, 1 )----------------����
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "ɱ����1ֻ")
	MisNeed(MIS_NEED_KILL,776,1, 10, 1)

	MisResultTalk("<t>�����ɶ�������Ķ����ˣ���Ľ���̫���ˣ������Ҵ����б�ج�β��Ƶ��˸���Ľ�����")
	MisHelpTalk("<t>С�Ĵ����ϵĺ�����ס��!")
	MisResultCondition(HasMission,  951)
	MisResultCondition(NoRecord,  951)
	MisResultCondition(HasFlag,  951, 10 )
	MisResultAction(ClearMission,  951 )
	MisResultAction(SetRecord,  951  )
	MisResultAction(AddExp,2500000,2500000)
	MisResultAction(AddMoney,800000,800000)	
	MisResultAction(AddExpAndType,2,60000,60000)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 776)	
	TriggerAction( 1, AddNextFlag,  951 , 10,1)
	RegCurTrigger(   9511 )

-----------------------------------------------------------------------�ش�����

	DefineMission( 5002, "�ش�����",952 )

	MisBeginTalk( "<t>�����ˣ������ü��֮���������ش�����ܣ���������ռ��������һЩ���ţ������ȥ�Ѹ�������ħŮ������<yѸ�ݵı���ˮĸ>(3750,1275)����1ֻ�ɡ�" )
	MisBeginCondition(NoRecord,952 )
	MisBeginCondition(HasRecord, 951)
	MisBeginCondition(NoMission,952 )
	MisBeginAction(AddMission, 952)
	MisBeginAction(AddTrigger,9521, TE_KILL, 621, 1 )		----Ѹ�ݵı���ˮĸ
	MisCancelAction(SystemNotice, "�������޷��ж�")

	 MisNeed(MIS_NEED_DESP, "ɱħŮ������Ѹ�ݵı���ˮĸ1ֻ��")----------++++1
	MisNeed(MIS_NEED_KILL,621,1, 10, 1)

	MisResultTalk("<t>�Եȣ���Ϊ��ռ��һ�¡�")
	MisHelpTalk("<t>����������Ѹ�ݵı���ˮĸ(3750,1275)")
	MisResultCondition(HasMission,952 )
	MisResultCondition(HasFlag, 952, 10 )
	MisResultAction(ClearMission, 952 )
	MisResultAction(SetRecord,952 )
	MisResultAction(AddMoney,800000,800000)	
	MisResultAction(AddExpAndType,2,60000,60000)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 621)	
	TriggerAction( 1, AddNextFlag,  952 , 10,1)
	RegCurTrigger( 9521 )
------------------------------------------------------------------��ɭ����

	DefineMission( 5003, "��ɭ����", 953)
	
	MisBeginTalk( "<t>�Һ������������������ҵ��ˣ�����Ϊ�㲷��һ�ԣ���Ĺ��Ҳ���żȻ�ģ�����Ǽ̳���ɭ����������ˣ����������ҽ�����ȥ�ʴ������<b�Ƶ��ϰ塤���>(3287,2501)��")
	MisBeginCondition(NoRecord, 953 )
	MisBeginCondition(HasRecord, 952)
	MisBeginCondition(NoMission, 953 )
	MisBeginAction(AddMission, 953 )
	MisCancelAction(SystemNotice, "�������޷��ж�")
		
	MisNeed(MIS_NEED_DESP, "�ҵ����ѯ����ɭ�������")
	MisHelpTalk("<t>���������ġ�")
	MisResultCondition(AlwaysFailure )

	---------------------------------------��ɭ����

	DefineMission(5004,"��ɭ����",953,COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>��ô������������ǰ���𺣵�����ɭ��ͷ�ۣ�")
	MisResultCondition(HasMission, 953)
	MisResultCondition(NoRecord, 953)
	MisResultAction(ClearMission, 953)
	MisResultAction(SetRecord, 953)

-----------------------------------------------------�������

	DefineMission( 5005, "�������", 954 )

	MisBeginTalk( "<t>��������������ʲô������������������������Ϲ�ͷ�Ѿ��߲����ˣ����ܰ����Ҽ�<y�������·�>��������˵���Ͽ�������Ѫ��������ʲô�������ˡ�" )
	MisBeginCondition(NoRecord, 954)
	MisBeginCondition(HasRecord,  953)
	MisBeginCondition(NoMission, 954)
	MisBeginAction(AddMission,  954)
	MisBeginAction(AddTrigger,  9541, TE_GETITEM,  0376,1 )		
	MisCancelAction(SystemNotice, "�������޷��ж�")

	 MisNeed(MIS_NEED_DESP, "�õؾ��������ϵ��������·�1������")
	MisNeed(MIS_NEED_ITEM,  0376,1, 10, 1)
	
	MisResultTalk("<t>лл��ϰ��������̫�ţ�")
	MisHelpTalk("<t>���ɴ�½�ĵؾ�����(546,2726)���Ͼ���")-------------------+++++2
	MisResultCondition(HasMission,  954)
	MisResultCondition(NoRecord, 954)
	MisResultCondition(HasItem, 0376, 1 )
	MisResultAction(TakeItem,  0376, 1 )
	MisResultAction(ClearMission,  954)
	MisResultAction(SetRecord,  954 )
	MisResultAction(AddExp,1000000,1000000)
	MisResultAction(AddMoney,800000,800000)	
	

	InitTrigger()
	TriggerCondition( 1, IsItem,0376)	
	TriggerAction( 1, AddNextFlag,954, 10, 1 )
	RegCurTrigger( 9541 )

------------------------------------------------------------------ħ����ͷ��

	DefineMission( 5006, "ħ����ͷ��", 955 )

	MisBeginTalk( "<t>�������·��о�û�к�̫�࣬�ѵ�����·�ϵ���̫����ʹ��ʧЧ�ˣ�������̫�����ˣ�������Ҫ�Լ��ӹ�����������3��<yħ����ͷ>����,��<b���������>(919,1581)���ϣ���Ҫĥ�ɷ�ĩ�����·��ϡ�" )
	MisBeginCondition(NoRecord,  955)
	MisBeginCondition(HasRecord,  954)
	MisBeginCondition(NoMission, 955)
	MisBeginAction(AddMission,  955)
	MisBeginAction(AddTrigger,  9551, TE_GETITEM,  1626,3 )		
	MisCancelAction(SystemNotice, "�������޷��ж�")

	 MisNeed(MIS_NEED_DESP, "����������������ҵ�ħ����ͷ3��")
	MisNeed(MIS_NEED_ITEM,  1626,3, 10, 3)
	
	MisResultTalk("<t>����ٶȻ��ܿ��")
	MisHelpTalk("<t>ħ����ͷ�ڼ��ɴ�½�����������(919,1581)���Ͼ���")--------------------++++++3
	MisResultCondition(HasMission,  955)
	MisResultCondition(NoRecord, 955)
	MisResultCondition(HasItem, 1626, 3 )
	MisResultAction(TakeItem,  1626, 3 )
	MisResultAction(ClearMission,  955)
	MisResultAction(SetRecord,  955 )
	MisResultAction(AddExp,200000,200000)
	MisResultAction(AddMoney,700000,700000)	
	MisResultAction(AddExpAndType,2,60000,60000)

	InitTrigger()
	TriggerCondition( 1, IsItem,1626)	
	TriggerAction( 1, AddNextFlag, 955, 10, 3 )
	RegCurTrigger( 9551 )
------------------------------------------------------------------------�߼�Ӫ��Ʒ

	DefineMission( 5007, "�߼�Ӫ��Ʒ", 956)

	MisBeginTalk( "<t>�ҵ���ɫ�ǲ��Ǻö��ˣ�Ҫ�����˿�Ϊ���ҵ�1���и߼�Ӫ���ɷֵ�<yЫʨ��>�����ɵĶ���Ыʨ662,2460�����У������Ҿ������ϻָ�����������һЩӦ��������£��㲻Ը�����������" )
	MisBeginCondition(NoRecord,  956)
	MisBeginCondition(HasRecord,  955)
	MisBeginCondition(NoMission, 956)
	MisBeginAction(AddMission,  956)
	MisBeginAction(AddTrigger,  9561, TE_GETITEM,  4783,1 )		
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "���ض���Ыʨ���ϵ�Ыʨ��1��")
	MisNeed(MIS_NEED_ITEM,  4783,1, 10, 1)
	
	MisResultTalk("<t>�⻹��࣬��ǰ;��")
	MisHelpTalk("<t>������ڲ�����,������Ыʨ�ǣ�")
	MisResultCondition(HasMission,  956)
	MisResultCondition(NoRecord, 956)
	MisResultCondition(HasItem, 4783, 1)
	MisResultAction(TakeItem,  4783, 1 )
	MisResultAction(ClearMission,  956)
	MisResultAction(SetRecord,  956)
	MisResultAction(AddExp,800000,800000)
	MisResultAction(AddMoney,100000,100000)	
	

	InitTrigger()
	TriggerCondition( 1, IsItem,4783)	
	TriggerAction( 1, AddNextFlag, 956, 10, 1 )
	RegCurTrigger( 9561 )
---------------------------------------------------------------------------�����Ĺ�ȥ
	 DefineMission(5008,"�����Ĺ�ȥ",957)
	
	MisBeginTalk( "<t>��Ȼ�����������������ң�˵����೾������¸�����֪���ˡ�ÿ���˶������ǵĹ�ȥ����Ҳ�����⣬��Ҫ�����ң����䲻���Ǳ���ת�Ӹ���ģ�Ҫ���Լ�ȥѰ�һ�����ɳ��³ǵĴ���ٸʵ�ά����862��3500��Ӧ�ÿ��Ը���һ����ʾ, <b�õ�������������>����" )
	MisBeginCondition(NoRecord, 957)
	MisBeginCondition(NoMission, 957)
	MisBeginCondition(HasRecord,956)
	MisBeginAction(AddMission,957)
	MisCancelAction(SystemNotice, "�������޷��ж�")
		
	MisNeed(MIS_NEED_DESP, "��ɳ��³ǵĴ���ٸʵ�ά����862��3500���õ���ʾ")
	
	MisHelpTalk("<t>�ʵ�ά��(862��3500)������̵����ţ�ȥ������")
		
	MisResultTalk("<t>�һؼ����ƺ�û������е����ģ��ҿ��ó������ã����ʵ���֮���ܼ򵥣�������ҪΪ�����������Ҳſ��Ը����㡣")
	MisResultCondition(NoRecord, 957)
	MisResultCondition(HasMission, 957)
	MisResultCondition(HasRecord, 999)---
	MisResultAction(ClearMission, 957)
	MisResultAction(SetRecord,  957 )
	MisResultAction(AddExp,800000,800000)
	MisResultAction(AddMoney,200000,200000)	
	MisResultAction(AddExpAndType,2,60000,60000)


------------------------------------------------------------------------��¡֮�ػ�����1��

	DefineMission(5009,"�ػ���",958)
	
	MisBeginTalk( "<t>�����ҵ����������Ĺ�ȥ����ʵ��ȥ����˯����Ĵ��������Ҫ��<b�ػ���>���Ѽ��䡣�ػ��������������ܹ��죬��������Ǿ�˵ֻ��<b��������>��1254��3491��֪����������,<b�õ������������������>��" )
	MisBeginCondition(NoRecord, 958)
	MisBeginCondition(NoMission, 958)
	MisBeginCondition(HasMission, 957)
	MisBeginCondition(NoRecord,957)
	MisBeginCondition(IsChaType,1)
	MisBeginAction(AddMission,958)
	MisCancelAction(SystemNotice, "�������޷��ж�")
		
	MisNeed(MIS_NEED_DESP, "���������ӵõ��ػ���������������")
	
	MisHelpTalk("<t>�������������Ӿ��ں��ߣ�1254��3491��")
	MisResultTalk("<t>�����۾�����ȥ�ɡ�<n><t>�����ڶ�ħ������������ά����������¡�塣�����������û�һ�����ڼ�į�������㡣�ڸ����Լ������ħ��Ϊ�����Լ�����ͬ�����ɱ�����㱬�������������������Ѻ���㴳���ħ����ɽ�ڲ�������������������������֮�š����������֪�����е���ʵ��ͬʱҲ����ʧ�����Ҷ���˯��һ�������Ůħ��ʦ���ʵĵ��������ѣ�����ʼ������һ���������磬Ѱ�ұ��ء���������Ƿֵ��������ʼ���Ѱ�ұ��أ����㻹����ʵ��Ѱ�����롣<n><t>��ȥ�Ҵ������<b�Ƶ��ϰ塤���>��3287,2501���ɣ�Ը�����㡣")
	
	MisResultCondition(NoRecord, 958)
	MisResultCondition(HasRecord, 962)
	MisResultCondition(HasMission, 958)
	MisResultCondition(HasItem, 1043, 1 )--------�ػ���
	MisResultAction(TakeItem,  1043, 1 )
	MisResultAction(ClearMission, 958)
	MisResultAction(SetRecord,  958 )
	MisResultAction(SetRecord,  999 )------
	MisResultAction(AddExp,2000000,2000000)
	MisResultAction(AddMoney,600000,600000)	
	MisResultAction(AddExpAndType,2,60000,60000)

	
---------------------------------------------------------------------------Ѫʯ��1��

	DefineMission(5010,"Ѫʯ",959)
	
	MisBeginTalk( "<t>�ػ��������������Ǽ�����ط������������⴫���������ܰ����ҵ���Ѱ���Ѿõ�Ѫʯ��ǰ�����ҵõ���Ϣ��Ѫʯ��<b����������>(1080,3086)���<b�õ�Ѫʯ�ٻ�������>!" )
	MisBeginCondition(NoRecord, 959)
	MisBeginCondition(NoMission, 959)
	MisBeginCondition(HasMission, 958)
	MisBeginCondition(NoRecord,958)
	MisBeginAction(AddMission,959)

	MisCancelAction(SystemNotice, "�������޷��ж�")
		
	MisNeed(MIS_NEED_DESP, "�������������õ�Ѫʯ��")
	
	MisHelpTalk("<t>������������ħŮ֮���Ľƻ�ɳ��.")
	

	MisResultTalk("<t>�������������ɵ�ϣ��������Ͳ�����ʯ������ʲôչ���᣿���ʯͷ���м�ֵ�ģ��Ǽ�Ѫʯ�е���Ʒ�����ˣ�����˵��ЩҲû���á�")
	MisResultCondition(NoRecord, 959)
	MisResultCondition(HasMission, 959)
	MisResultCondition(HasRecord, 960)
	MisResultCondition(HasItem, 1040, 1)
	MisResultAction(TakeItem, 1040, 1 )
	MisResultAction(ClearMission, 959)
	MisResultAction(SetRecord,  959 )

	
---------------------------------------------------------------------------���뺯��1��

	DefineMission( 5011, "���뺯", 960 )
	
	MisBeginTalk( "<t>�������ӵ���������һ��Ҫ���ģ������Ҷ����ʯͷ������Ȥ�������͸����˹��906��3539���ˣ���������һ����ʯչ������������������������뺯���������뺯�л��ἰ���µģ����������������æ�ġ�" )
	MisBeginCondition(NoRecord, 960)
	MisBeginCondition(HasMission, 959)
	MisBeginCondition(NoMission,960)
	MisBeginCondition(NoRecord,959)
	MisBeginAction(AddMission, 960)
	MisBeginAction(GiveItem, 1041, 1, 4)	----------���뺯	
	MisCancelAction(SystemNotice, "�������޷��ж�")
	MisBeginBagNeed(1)
		
	MisNeed(MIS_NEED_DESP, "�����뺯����ħŮ֮�������г������˹")
	
	MisHelpTalk("<t>�������ߣ�")
	MisResultCondition(AlwaysFailure)
	
-----------------------------------------------------------------------���뺯��1��

	DefineMission(5012,"���뺯",960,COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>���˼ҵĶ�����Ҫ��ȥ�����д�����Ҳ��ϡ�������������û��˧��˳������")
	MisResultCondition(NoRecord, 960)
	MisResultCondition(HasMission, 960)
	MisResultCondition(HasItem, 1041, 1)
	MisResultAction(TakeItem, 1041, 1 )
	MisResultAction(GiveItem, 1040, 1,4)--------------Ѫʯ
	MisResultAction(ClearMission, 960 )
	MisResultAction(SetRecord,  960 )
	MisResultBagNeed(1)

	-----------------------------------------------------------------�ػ���ҩ��(1) 
	DefineMission(5014, "�ػ���ҩ��", 961 )

	MisBeginTalk( "<t>�ػ��������Ϻܼ򵥣�����Ⱥ����ҹ����ˮ��3289��1746�����ϵ�<y������ҹ������Ƭ>10����ħŮ������Ǳ�о����(900,1308)���ϵ�<y�ִ��͸�����β��>1����ֻ��������Ҫ���⼼�ɣ���ȥ�����ɣ��Ұ�����á�" )
	MisBeginCondition(NoRecord, 961)
	MisBeginCondition(HasRecord, 959)
	MisBeginCondition(NoMission, 961)
	MisBeginAction(AddMission, 961)
	MisBeginAction(AddTrigger, 9611, TE_GETITEM, 1234,10)		
	MisBeginAction(AddTrigger, 9612, TE_GETITEM, 1260, 1 )
	
	MisCancelAction(SystemNotice, "�������޷��ж�")

	 MisNeed(MIS_NEED_DESP, "�ҵ��ִ��͸�����β��1���Ͱ�����ҹ������Ƭ10Ƭ")
	MisNeed(MIS_NEED_ITEM, 1234,10, 10,10)
	MisNeed(MIS_NEED_ITEM, 1260, 1, 20, 1)
	
	MisResultTalk("<t>�䷽���²����⴫������С�����С������ȥ�Ҵ���ٰɣ������� ��")
	MisHelpTalk("<t>��������ֺ����׵ģ�")
	MisResultCondition(HasMission,961)
	MisResultCondition(NoRecord, 961)
	MisResultCondition(HasItem, 1234, 10 )
	MisResultCondition(HasItem, 1260, 1 )
	
	MisResultAction(TakeItem, 1234, 10 )
	MisResultAction(TakeItem, 1260, 1 )
	
	MisResultAction(ClearMission, 961)
	MisResultAction(SetRecord, 961 )
	MisResultAction(GiveItem, 1043, 1, 4)-------�ػ���
	MisResultAction(AddExp,800000,800000)	
	MisResultAction(AddExpAndType,2,60000,60000)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem,1234)	
	TriggerAction( 1, AddNextFlag, 961, 10, 10 )
	RegCurTrigger(9611 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1260)	
	TriggerAction( 1, AddNextFlag, 961, 20, 1 )
	RegCurTrigger(9612 )
	
	
------------------------------------------------------���º�����(1) 

	DefineMission( 5015, "���º�����", 962 )

	MisBeginTalk( "<t>��û�뵽�������Ӿ�Ȼ��ô���׾͸�����ػ�����Ӵ���Ҳ������������Ҫ�ģ��ػ����Ǻ��ȵģ�Ҫ���²ſ��Ժȣ���������Ҫ��ǿ����Ч����<y������>1��" )
	MisBeginCondition(NoRecord,  962)
	MisBeginCondition(HasRecord,  961)
	MisBeginCondition(NoMission,962)
	MisBeginAction(AddMission,  962)
	MisBeginAction(AddTrigger,  9621, TE_GETITEM,  3362,1)--------������		
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "�õ���ǿ����Ч���ĺ�����1��")
	MisNeed(MIS_NEED_ITEM,  3362,1, 10, 1)
	
	MisResultTalk("<t>�����������������Ҫ�����ð�վ����������壡")
	MisHelpTalk("<t>���񴺵��ĺ���ʿ�ͺ������϶�����ȥ���ҿ��������ڣ�3322,2460������")-------------------++++++++4
	MisResultCondition(HasMission,  962)
	MisResultCondition(NoRecord,962)
	MisResultCondition(HasItem, 3362, 1 )
	MisResultAction(TakeItem,  3362, 1 )
	MisResultAction(ClearMission,  962)
	MisResultAction(SetRecord,  962)
	MisResultAction(AddExp,500000,500000)
	MisResultAction(AddMoney,200000,200000)

	InitTrigger()
	TriggerCondition( 1, IsItem,3362)	
	TriggerAction( 1, AddNextFlag, 962, 10, 1 )
	RegCurTrigger( 9621 )



------------------------------------------------------------------Ů��Ļ���֮���佺�ң�2��
	DefineMission(5017,"���佺��",963)
	
	MisBeginTalk( "<t>�����ҵ����������Ĺ�ȥ����ʵ��ȥ����˯����Ĵ��������Ҫ��һ��<y���佺��>���Ѽ��䡣����ϡ�е�ҩ�ﲻ�����ﶼ�����������ȥ���ʰ����ǵ�<b����������>��2159��2792����������Ϣ������Դ�����ض���׼ȷ,<b�õ����齺�Һ��������>��" )
	MisBeginCondition(NoRecord, 963)
	MisBeginCondition(NoMission, 963)
	MisBeginCondition(HasMission, 957)
	MisBeginCondition(NoRecord, 957)
	MisBeginCondition(IsChaType,3)----������
	MisBeginAction(AddMission,963)
	MisCancelAction(SystemNotice, "�������޷��ж�")
		
	MisNeed(MIS_NEED_DESP, "�����������ŵõ����佺�ҵ���Ϣ��")
	
	MisHelpTalk("<t>�����������ڰ����ǣ�2159��2792��")
	MisResultTalk("<t>�������������ô���׾��õ��ˡ����Ѿ�Ϊ���������������۾�����ȥ�ɡ�<n><t>���ǹ����������ˮ�֣��������õĺ���֪ʶ�������ټ���10����ѵ�Ů����������ɻ�����������ٰ��ˮ�ִ���������������;ʹ����Υ���ĵ�ҩ������������ί̨��������ȡ�����ʸ������е������㶹���ó��������������ԣ����²��ܺ�����Ը���ʵ����Ϊ��һ����ʵ���������ֻ��30�꣬���ڶ�ħ֮�����Դ��˸е�һ��:����Ϊ�����̲�Ҫƴ�����Լ������������飬����ʱ�俼�Ǻ��.��Ϊ��ָ����ǰ���ķ���<n><t>��ȥ�Ҵ������<b�Ƶ��ϰ塤���>��3287,2501���ɣ�Ը�����㡣") 
	MisResultCondition(NoRecord, 963)
	MisResultCondition(HasMission, 963)
	MisResultCondition(HasRecord, 967)
	MisResultCondition(HasItem,  1050, 1 )-------���佺��
	MisResultAction(TakeItem,  1050,1 )
	MisResultAction(ClearMission, 963)
	MisResultAction(SetRecord,  963 )
	MisResultAction(SetRecord,  999 )------
	MisResultAction(AddExp,2000000,2000000)
	MisResultAction(AddMoney,600000,600000)	
	MisResultAction(AddExpAndType,2,60000,60000)

--------------------------------------------------------------------��֮���꣨2��
	DefineMission(5018," ��֮����",964)
	
	MisBeginTalk( "<t>�����ˣ����佺�ҵ����Ǻ���Ҫ����Ϣ��ֻ�������������õ��˲ſ���֪����<n><t>�㿴����ò˥�ϣ���ʵ�������ʱ���Ư����������׷������ء�������һֱϲ��ɳᰳǵ�<b���ö�>��˵�����þ�û�������ˣ����ܰ����͸�С������֮���������" )
	MisBeginCondition(NoRecord, 964)
	MisBeginCondition(NoMission, 964)
	MisBeginCondition(HasMission, 963)
	MisBeginCondition(NoRecord,963)
	MisBeginAction(AddMission,964)
	MisBeginAction(GiveItem, 2303, 1, 4)---------+++++????
	MisCancelAction(SystemNotice, "�������޷��ж�")
	MisBeginBagNeed(1)	
	MisNeed(MIS_NEED_DESP, "����������������֮�����ɳᰳǵ����öȣ�852��3549����")
	
	MisHelpTalk("<t>�治������Ϊʲô��Ҫ�һؼ��䣬��ʱ���������Ը�Լ�ʲô�����ǵã���ÿ���Щ��")
	
	MisResultCondition(AlwaysFailure)
	----------------------------------------------------------------------��֮���꣨2��
	DefineMission(5019,"��֮����",964,COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>лл�㣬��Ҳ֪���������⣬��ϧ�����˷ǡ���˵����ʯ����ʯ�����ᣬ�����Һ�������Ҳ�ѽ�Ե��<b�ӿ���>������һ��˳����Ȼ�ɡ�")
	MisResultCondition(NoRecord, 964)
	MisResultCondition(HasMission, 964)
	MisResultCondition(HasItem,2303, 1)-------------++++++???
	MisResultAction(TakeItem, 2303, 1 )-------------++++++????
	MisResultAction(ClearMission,964)
	MisResultAction(SetRecord,  964)
	MisResultAction(AddMoney,80000,80000)	
		
	

---------------------------------------------------------------���ƣ�����


	DefineMission( 5020, "����", 965)

	MisBeginTalk( "<t>����������˵Ҳ����ν����Щ����ֵ��һ���غ�ġ���֪���ǲ�����������Ե�ʣ��Ҿ������ȱ�ƱȽ����أ���Ҳֱ�������������Ը����Ҵ�1ƬħŮ������<b��ˮ������>��900,2000�����ϵ�<y��ɫ���౳��>���ƣ������Ҿ��ܰ��ĵİ����æ��" )--------------+++++5
	MisBeginCondition(NoRecord,  965)
	MisBeginCondition(HasRecord,  964)
	MisBeginCondition(NoMission,965)
	MisBeginAction(AddMission,  965)
	MisBeginAction(AddTrigger,  9651, TE_GETITEM,  1296,1)	
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "����ɫ���౳�������������Ų��ƣ�")
	MisNeed(MIS_NEED_ITEM,  1296,1, 10, 1)
	
	MisResultTalk("<t>�������¸ҵĺ��ӣ�")
	MisHelpTalk("<t>���ᱳʹ�ȳ��,��¥Ҳû�о�����!")
	MisResultCondition(HasMission,965)
	MisResultCondition(NoRecord, 965)
	MisResultCondition(HasItem, 1296, 1 )
	MisResultAction(TakeItem,  1296, 1)
	MisResultAction(ClearMission,  965)
	MisResultAction(SetRecord,  965)
	MisResultAction(AddExp,800000,800000)
	MisResultAction(AddMoney,100000,100000)	
	MisResultAction(AddExpAndType,2,60000,60000)

	InitTrigger()
	TriggerCondition( 1, IsItem,1296)	
	TriggerAction( 1, AddNextFlag,965, 10, 1 )
	RegCurTrigger( 9651 )

--------------------------------------------------����Ҷ������
	DefineMission(5021, "����Ҷ", 966 )

	MisBeginTalk( "<t>��Ȼ�����ң���������Ȼ��ϣ�������ҵ�����������֪���ˣ���ֻ�����˲���й¶���ܣ�<n><t>���£���˵�������ң������㻹�и����ᣬȥ�õ�1Ƭ<y����Ҷ>,�ؾ����ϣ�1381,3134���Ǻ�����У��������Ż����ҾͲ�ɱ�㻹�����㽡�佺�ҵ����䡣"  )
	MisBeginCondition(NoRecord,  966 )
	MisBeginCondition(HasRecord,  965)
	MisBeginCondition(NoMission, 966 )
	MisBeginAction(AddMission,  966 )
	MisBeginAction(AddTrigger,  9661, TE_GETITEM,  3143,1)
	MisCancelAction(SystemNotice, "�������޷��ж�")

        MisNeed(MIS_NEED_DESP, "�ø���Ҷ�������Լ�������")
	MisNeed(MIS_NEED_ITEM,  3143,1, 10, 1)
	
	MisResultTalk("<t>�����������þ���")
	MisHelpTalk("<t>ȥ�õ�1Ƭ����Ҷ,ħŮ�����ĵؾ����ϣ�1381,3134������")-----------------------++++++++6
	MisResultCondition(HasMission,  966 )
	MisResultCondition(NoRecord, 966 )
	MisResultCondition(HasItem, 3143, 1 )
	MisResultAction(TakeItem,  3143,1 )
	MisResultAction(ClearMission,  966 )
	MisResultAction(SetRecord, 966 )
	MisResultAction(AddExp,800000,800000)	
	MisResultAction(AddExpAndType,2,60000,60000)

	InitTrigger()
	TriggerCondition( 1, IsItem,3143)	
	TriggerAction( 1, AddNextFlag, 966 , 10, 1 )
	RegCurTrigger( 9661 )

--------------------------------------------------------------------------------------������(2)
	DefineMission( 5022, "������", 967 )

	MisBeginTalk( "<t>��Ȼ�����ס�˻��ᣬ�Ҿ͸�����ʵ������ʵ������н��佺�ң������˻��м����ȥ���������ڵĸ����ã�Ϊ�˱��⸱���ã��ҽ�����ȥ��1��ħŮ������<bǱ�о����>��900,1308����<yճ���͸�����Ѫ>���Ұ������һ�¡�" )------------------++++++++7
	MisBeginCondition(NoRecord,  967)
	MisBeginCondition(HasRecord,  966 )
	MisBeginCondition(NoMission, 967)
	MisBeginAction(AddMission,  967)
	MisBeginAction(AddTrigger,  9671, TE_GETITEM,  1351,1)
	MisCancelAction(SystemNotice, "�������޷��ж�")
	
	MisNeed(MIS_NEED_DESP, "��ճ���͸�����Ѫ�������佺�ҵĸ����ã�")
	MisNeed(MIS_NEED_ITEM,  1351,1, 10, 1)
	
	MisResultTalk("<t>�����ˣ����û�ȥ��������ٰɡ�������˺ܵ͵��ģ�����ҵ�������߱��ˣ�")
	MisHelpTalk("<t>��1��ճ���͸�����Ѫ")
	MisResultCondition(HasMission, 967)
	MisResultCondition(NoRecord, 967)
	MisResultCondition(HasItem, 1351, 1 )
	MisResultAction(TakeItem,  1351,1 )
	MisResultAction(ClearMission, 967)
	MisResultAction(SetRecord,  967)
	MisResultAction(GiveItem, 1050, 1, 4)-------���佺��
	MisResultAction(AddExp,800000,800000)
	MisResultAction(AddMoney,100000,100000)	
	MisResultAction(AddExpAndType,2,60000,60000)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem,1351)	
	TriggerAction( 1, AddNextFlag, 967, 10, 1 )
	RegCurTrigger( 9671 )


		
	
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--------------------------------------------------��Ѫ��֮��������(3) 
	DefineMission(5024,"��������",968)
	
	MisBeginTalk( "<t>�����ҵ����������Ĺ�ȥ����ʵ��ȥ����˯����Ĵ������Ļ���Ҫ�Ӱ��鿪ʼ���ѡ����ǵ�<b�׶�����>��1244��3186����������������Ҫ�Ļ��䣬<b�ҵ��ܻ��������Ķ�����������>��" )
	MisBeginCondition(NoRecord, 968)
	MisBeginCondition(NoMission, 968)
	MisBeginCondition(HasMission, 957)
	MisBeginCondition(NoRecord,957)
	MisBeginCondition(IsChaType,2)
	MisBeginAction(AddMission,968)
	MisCancelAction(SystemNotice, "�������޷��ж�")
		
	MisNeed(MIS_NEED_DESP, "���׶�����Ѱ���������䡣")
	
	MisHelpTalk("<t>�׶�������ħŮ֮��")
	MisResultTalk("<t>��Ը����������Ѹ�ԭ���������һ��ɣ������۾�����.<n><t>�����˺�ħ��Ļ�Ѫ����������ף�����е��Ҵ��ߣ�ĸ����һ���������12���ʱ�򣬸���ħ�����ݱ�¶��������������ĸ��Ҳ���ѳ�飬֮������Ÿ���д�в�Ҫ�����������鿪ʼð�գ�������ħ��Ѫ�����ʹ�㵽���ܵ����ӣ�û�����Ҵ�Ը������㣬���жԴ󺣵�����Ͷ�δ֪��ս�������㸸��ȥ�����׶����������㷢��Ҫ�������ϵİ��ˣ�������������ˣ��ѹ������ġ�<n><t>��ȥ�Ҵ������<b�Ƶ��ϰ塤���>��3287,2501���ɣ�Ը�����㡣") 
	MisResultCondition(NoRecord, 968)
	MisResultCondition(HasMission, 968)
	MisResultCondition(HasRecord, 972)
	MisResultCondition(HasItem, 1042, 1 )
	MisResultAction(TakeItem, 1042, 1 )
	MisResultAction(ClearMission, 968)
	MisResultAction(SetRecord,  968 )
	MisResultAction(SetRecord,  999 )------
	MisResultAction(AddExp,2000000,2000000)
	MisResultAction(AddMoney,800000,800000)	
	MisResultAction(AddExpAndType,2,60000,60000)
---------------------------------------------------�չ�������(3)
	DefineMission(5025, "�չ�������", 969 )

	MisBeginTalk( "<t>��������������Ĺ�ȥ�𣿶Բ����ҵļ���Ҳ����֧<y�չ�������>ȼ���ˡ�������б��´������ɴ�½��<b��ɫ�ཬ��>�������֧����ͻ���������" )------------------++++++8
	MisBeginCondition(NoRecord,  969)
	MisBeginCondition(HasMission, 968)
	MisBeginCondition(NoRecord,  968)
	MisBeginCondition(NoMission, 969)
	MisBeginAction(AddMission,  969)
	MisBeginAction(AddTrigger,  9691, TE_GETITEM,  4823,1)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "ȥ��ɫ�ཬ�����õ��׶�����Ҫ���չ�������")
	MisNeed(MIS_NEED_ITEM,  4823,1, 10, 1)
	
	MisResultTalk("<t>�����б��£�")
	MisHelpTalk("<t>��1֧�չ�������")
	MisResultCondition(HasMission, 969)
	MisResultCondition(NoRecord, 969)
	MisResultCondition(HasItem, 4823, 1 )
	MisResultAction(TakeItem,  4823,1)
	MisResultAction(ClearMission,  969)
	MisResultAction(SetRecord,  969)
	MisResultAction(AddExp,80000,80000)	
	MisResultAction(AddExpAndType,2,60000,60000)

	InitTrigger()
	TriggerCondition( 1, IsItem,4823)	
	TriggerAction( 1, AddNextFlag, 969, 10, 1 )
	RegCurTrigger( 9691 )

---------------------------------------------------------��ԭ����(3)
	DefineMission(5026,"��ԭ����",970)
	
	MisBeginTalk( "<t>��ϧ������ȥ�������ҵ��ˣ�������ŵ����Բ����ˣ���������Ҫ֪����ȥ����<b��ķ>Ҫ<y��ԭ��>�ɡ�<b�ֵõ���ԭ���ٻ�������>" )
	MisBeginCondition(NoRecord, 970)
	MisBeginCondition(NoMission, 970)
	MisBeginCondition(HasRecord, 969)
	MisBeginAction(AddMission,970)
	MisBeginAction(AddTrigger,  9701, TE_GETITEM,  1042,1)
	MisCancelAction(SystemNotice, "�������޷��ж�")
		
	MisNeed(MIS_NEED_DESP, "�ҵ�ķҪ��ԭ����")
	
	MisHelpTalk("<t>��ķ��Ȼ�ڰ����ǣ�2250��2770����")
	MisResultTalk("<t>�ҵ���һ���������ϡ����ԣ�ִ��֮�֣��������ϡ�<n><t>����ӡ��������������İ��ˡ���һ�ж��Ǿ��Σ��Ҳ�����˵ʲô�ˣ���һ�������ȥ��<b�ʵ�ά��>�ɡ�")
	MisResultCondition(HasMission,970)
	MisResultCondition(NoRecord, 970)
	MisResultCondition(HasRecord, 971)
	MisResultCondition(HasItem,1042, 1 )----------��ԭ��
	MisResultAction(TakeItem, 1042, 1 )
	MisResultAction(ClearMission, 970)
	MisResultAction(SetRecord, 970)
	MisResultAction(GiveItem, 1042, 1, 4)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem,1042)	
	TriggerAction( 1, AddNextFlag, 970, 10, 1 )
	RegCurTrigger(9701 )

	--------------------------------------------------��ԭ��ԭ��(3)

	DefineMission( 5027, "��ԭ��ԭ��", 971 )

	MisBeginTalk( "<t>�����û�и�ԭ���ˣ���������Ѿ���æ�ˣ�û�ղ�ҩ���������Լ�ȥ��3��<y�˷ܼ�>�����ɵĲ�ԭ�Թ�¹��1503,2698�������У���3��<y���񻨲�>�����ɵĲ�����ʿ��511,1721�������У���1��ħŮ������Ǳ�о���򽣨900,1308����<yճ���͸�����Ѫ>����ԭ�ϡ�" )-------------++++++9
	MisBeginCondition(NoRecord, 971 )
	MisBeginCondition(HasMission, 970)
	MisBeginCondition(NoRecord, 970)
	MisBeginCondition(NoMission, 971)
	MisBeginAction(AddMission, 971 )
	MisBeginAction(AddTrigger, 9711, TE_GETITEM, 1351,1)		
	MisBeginAction(AddTrigger, 9712, TE_GETITEM, 3134, 3 )
	MisBeginAction(AddTrigger, 9713, TE_GETITEM, 3147, 3 )
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "�ҵ�ճ���͸�����Ѫ1�ݣ��˷ܼ�3�������񻨲�3������ķ")
	MisNeed(MIS_NEED_ITEM, 1351,1, 10,1)
	MisNeed(MIS_NEED_ITEM, 3134, 3, 20, 3)
	MisNeed(MIS_NEED_ITEM,  3147,3, 30, 3)

	MisResultTalk("<t>��ô��������ˣ�����������ĺܼ��ã��ҾͼӰ�Ϊ����Ƹ�ԭ���� ����һ�¾ͺã�")
	MisHelpTalk("<t>�Ӱ໹ĩ�мӰ��")
	MisResultCondition(HasMission, 971)
	MisResultCondition(NoRecord, 971)
	MisResultCondition(HasItem, 1351, 1 )
	MisResultCondition(HasItem, 3134, 3 )
	MisResultCondition(HasItem,  3147, 3)
	
	MisResultAction(TakeItem, 1351, 1 )
	MisResultAction(TakeItem, 3134, 3 )
	MisResultAction(TakeItem,  3147, 3 )
	
	MisResultAction(GiveItem, 1042, 1, 4)
	MisResultAction(ClearMission, 971)
	MisResultAction(SetRecord, 971 )
	MisResultAction(AddExp,800000,800000)
	MisResultAction(AddMoney,200000,200000)	
	MisResultAction(AddExpAndType,2,60000,60000)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem,1351)	
	TriggerAction( 1, AddNextFlag, 971, 10, 1 )
	RegCurTrigger(9711 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3134)	
	TriggerAction( 1, AddNextFlag, 971, 20, 3 )
	RegCurTrigger(9712 )
	InitTrigger()
	TriggerCondition( 1, IsItem,  3147)	
	TriggerAction( 1, AddNextFlag, 971, 30, 3 )
	RegCurTrigger(9713 )
	--------------------------------------------------------------�ͷŰ���(3)
	DefineMission( 5028, "�ͷŰ���", 972)
	
	MisBeginTalk( "<t><b�׶�����>һ����������ģ�����ĺܲ��̣������Ŀ����ǽ���������ʹ��֮�ϵĻ����Ҳ�Ը������㣬��������һ֧���ǲݣ����ע��ǰԵ���������������������ǡ�" )
	MisBeginCondition(NoRecord, 972)
	MisBeginCondition(HasRecord, 971)
	MisBeginCondition(NoMission, 972)
	MisBeginCondition(HasItem, 1042, 1 )
	MisBeginAction(AddMission, 972)
	MisBeginAction(GiveItem, 1054, 1, 4)		
	MisCancelAction(SystemNotice, "�������޷��ж�")
	MisBeginBagNeed(1)
		
	MisNeed(MIS_NEED_DESP, "�����ǲݸ��׶�����")
	
	MisHelpTalk("<t>�׶�������ħŮ֮��(1244��3186)")
	MisResultCondition(AlwaysFailure)
------------------------------------------------------------------�ͷŰ���(3)
	DefineMission(5029, "�ͷŰ���", 972 ,COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>���ͷ��ҵķ�ʽ�����㣬��Ը�⡣") 
	MisResultCondition(NoRecord, 972)
	MisResultCondition(HasMission, 972)
	MisResultCondition(HasItem, 1054, 1 )
	MisResultAction(TakeItem, 1054, 1 )
	MisResultAction(ClearMission, 972)
	MisResultAction(SetRecord,  972)

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

----------------------------------------------------------------����̫֮��ʯ(4)

	DefineMission(5031,"̫��ʯ",973)
	
	MisBeginTalk( "<t>�����ҵ����������Ĺ�ȥ����ʵ��ȥ����˯����Ĵ��������Ҫ�ҵ�<y����̫��ʯ>������̫��ʯ����һ����Բ������������ų����̼����������˯�ļ��䡣̫��ʯ�Ĳش��ҽ�����ȥ��һ��ɳᰳǵ�<b���ö�>����˵����������<b�õ�̫��ʯ��������>��" )----------------++++++10
	MisBeginCondition(NoRecord, 973)
	MisBeginCondition(NoMission, 973)
	MisBeginCondition(HasMission, 957)
	MisBeginCondition(NoRecord, 957)
	MisBeginCondition(IsChaType,4)
	MisBeginAction(AddMission,973)
	MisCancelAction(SystemNotice, "�������޷��ж�")
		
	MisNeed(MIS_NEED_DESP, "��ɳᰳǵ����öȴ���̫��ʯ�����䡣")
	
	MisHelpTalk("<t>���ö���(852��3549)")
	MisResultTalk("<t>���Ǻ����������ĺ������������������С������ò��������Զ����˥��Ҳ���᳤�������Ǵ����򹹽����������ʹ������е���Ȼ��ѧ���������Ľ������������Ը����������ǹ��﹵ͨ���������ɵ������˿ڣ������������һ�޶��ĵ��ߡ��������������Ļ������ʣ��������������׷��Ķ���12�������������޷����������׷�������˺�Х����������׷�����ӻ���������û���˸����׷���㣬����Ҳ����ͨ��Ҫ����������������ĺ�����һ����к���ð�ա�<n><t>��ȥ�Ҵ������<b�Ƶ��ϰ塤���>��3287,2501���ɣ�Ը�����㡣") 
	MisResultCondition(NoRecord, 973)
	MisResultCondition(HasMission, 973)
	MisResultCondition(HasRecord,  977)
	MisResultCondition(HasItem, 1045, 1)----------��ʯ
	MisResultCondition(HasItem, 1048, 1)-----------��ʯ
	MisResultAction(TakeItem,  1045, 1 )
	MisResultAction(TakeItem,  1048, 1 )
	MisResultAction(ClearMission, 973)
	MisResultAction(SetRecord,  973 )
	MisResultAction(SetRecord,  999 )------
	MisResultAction(AddExp,2000000,2000000)
	MisResultAction(AddMoney,800000,800000)	
	MisResultAction(AddExpAndType,2,60000,60000)
------------------------------------------------------���Ųر�ͼ
	DefineMission(5032,"���Ųر�ͼ",974)
	
	MisBeginTalk( "<t>���������ҹ���̫��ʯ���������Ǻö���ǰ�����ˣ�����Ӱ��ܴ������Ǹ߼����ܣ������㲻��������֪�����������ܿ��ٵİ��Ұ�����<y�ر�ͼ>����ħŮ֮����<b��������>(1254,3491)��" )
	MisBeginCondition(NoRecord, 974)
	MisBeginCondition(NoMission,974)
	MisBeginCondition(HasMission, 973)
	MisBeginCondition(NoRecord,973)
	MisBeginAction(GiveItem, 1053, 1, 4)------���Ųر�ͼ
	MisBeginAction(AddMission,974)
	MisCancelAction(SystemNotice, "�������޷��ж�")
	--MisBeginAction(AddTrigger, 9741, TE_GETITEM, 1044,1)
	MisBeginBagNeed(1)	
		
	MisNeed(MIS_NEED_DESP, "�Ѳر�ͼ������������")
	
	MisHelpTalk("<t>��˵����������ǰ��ֻ����!")
	
	MisResultCondition(AlwaysFailure)

	------------------------------------------���Ųر�ͼ

	DefineMission(5033,"���Ųر�ͼ",974,COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>��ʵ������Ĳ���ʲô�ر�ͼ������һ����ͨ�����˱�ǵ�ֽ����û�д򿪹����ɼ�����ֵ�����ŵ��ˣ��ҾͰ����ܸ����㣺̫��ʯ��<y��ʯ>��<y��ʯ>�������������֪��̫��ʯ���ܵ���ֻ����������������һ��<y��ʯ>���͸���ɡ�")
	MisResultCondition(NoRecord, 974)
	MisResultCondition(HasMission,974)
	MisResultCondition(HasItem,1053, 1)
	MisResultAction(TakeItem, 1053, 1 )
	MisResultAction(ClearMission, 974)
	MisResultAction(SetRecord, 974)
	MisResultAction(GiveItem, 1045, 1, 4)--------��ʯ
	MisResultBagNeed(1)
	--------------------------------------------------��ʯ������
	DefineMission(5034,"��ʯ������",975)
	
	MisBeginTalk( "<t>�����ߣ��Ǻðɣ���������ִ���Ҿ�͸©һ����㣬��ʯ������ȥ��������ҩ��<b��ķ>�ɡ�Ϊʹ���ܹ������㣬�����<y�Ƽ���>������Ϊ֤����" )
	MisBeginCondition(NoRecord, 975)
	MisBeginCondition(NoMission, 975)
	MisBeginCondition(HasRecord, 974)
	MisBeginAction(GiveItem, 1046, 1, 4)-------�Ƽ���
	MisBeginAction(AddMission,975)
	MisCancelAction(SystemNotice, "�������޷��ж�")
	MisBeginBagNeed(1)
		
	MisNeed(MIS_NEED_DESP, "ȥ��������ҩ�̵�ķ��")
	
	MisHelpTalk("<t>��ķ(2250,2770)�ڰ����ǣ�")
	MisResultCondition(AlwaysFailure)

--------------------------------------------------��ʯ������
	DefineMission(5035,"��ʯ������",975,COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>������֪��̫��ʯ���ܵ��˺��٣����������ǲ����������ű��˵ģ���ϲ��ͨ�������ǵĿ��顣")
	MisResultCondition(NoRecord, 975)
	MisResultCondition(HasMission,975)
	MisResultCondition(HasItem,1046, 1)
	MisResultAction(TakeItem, 1046, 1 )
	MisResultAction(ClearMission, 975 )
	MisResultAction(SetRecord, 975)
	----------------------------------------------����ˮ

	DefineMission( 5036, "����ˮ", 976 )

	MisBeginTalk( "<t>��Ȼ���Ƕ��������㣬�ҾͲ��������ˡ�<r�����ڰ�������ϯִ�й�˹���ص�������>��ֻ����ʯ��һ�ֺ�ҫ�۵�ʯͷ�����ۿ��ᱻ���ˣ���������ҪΪ������һ�ֽ�����ˮ�ı���ҩˮ����������ҵ�3��<y���񻨲�>���ɵĲ�����ʿ��511,1721�������У�1������Ⱥ�������͵�ˮ�����ࣨ2140,3787����<yǿ�ⱳ��>��10��<y������ˮ>ħŮ����ɳ�ع꣨1197,3270�������С�" )
	MisBeginCondition(NoRecord, 976 )
	MisBeginCondition(HasRecord, 975)
	MisBeginCondition(NoMission, 976)
	MisBeginAction(AddMission, 976 )
	MisBeginAction(AddTrigger, 9761, TE_GETITEM, 1362,1)		
	MisBeginAction(AddTrigger, 9762, TE_GETITEM, 3134, 3 )
	MisBeginAction(AddTrigger, 9763, TE_GETITEM, 1649, 10 )
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "�ҵ�3�����񻨲裬1��ǿ�ⱳ����10��������ˮ��������ˮ")
	MisNeed(MIS_NEED_ITEM, 1362,1, 10,1)
	MisNeed(MIS_NEED_ITEM, 3134, 3, 20, 3)
	MisNeed(MIS_NEED_ITEM, 1649,10, 30, 10)

	MisResultTalk("<t>�Ѿ�����ҩˮ�ˣ������<rȥ����������ϯִ�й�˹����Ѱ����ʯ��>����������Ϳ��ҩˮ��")
	MisHelpTalk("<t>ȥ������ˮ�����ϰɣ���������������<rȥ����������ϯִ�й�˹����Ѱ����ʯ>��")
	MisResultCondition(HasMission, 976 )
	MisResultCondition(NoRecord, 976)
	MisResultCondition(HasItem, 1362, 1 )
	MisResultCondition(HasItem, 3134, 3 )
	MisResultCondition(HasItem,1649, 10)
	
	MisResultAction(TakeItem, 1362, 1 )
	MisResultAction(TakeItem, 3134, 3 )
	MisResultAction(TakeItem,1649, 10 )
	
	MisResultAction(GiveItem, 1047, 1, 4)------------- ����ˮ
	MisResultAction(ClearMission, 976 )
	MisResultAction(SetRecord, 976  )
	MisResultAction(AddMoney,100000,100000)	
	MisResultAction(AddExpAndType,2,60000,60000)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem,1362)	
	TriggerAction( 1, AddNextFlag, 976, 10, 1 )
	RegCurTrigger(9761 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3134)	
	TriggerAction( 1, AddNextFlag, 976 , 20, 3 )
	RegCurTrigger(9762 )
	InitTrigger()
	TriggerCondition( 1, IsItem,1649)	
	TriggerAction( 1, AddNextFlag, 976 , 30, 10 )
	RegCurTrigger(9763 )

--------------------------------------------------------------------------����֮��
	DefineMission(5037, "����֮��", 977)

	MisBeginTalk( "<t>�ö���û�����ҹ���ʯ�ˣ���ʯ���ҵ��������������������⻯ѧ�ɷݵ�����֮����һʱ�䷢�Ӳ������ã����ҵľ�����Ҫһ��<b��������ĵ���ľʬ��>���е�<y��ʬ��>�ϵĻ�ѧ������֮��Ӧ��" )
	MisBeginCondition(NoRecord,  977)
	MisBeginCondition(HasRecord,  976)
	MisBeginCondition(NoMission, 977)
	MisBeginCondition(HasItem, 1047, 1 )
	MisBeginAction(TakeItem, 1047, 1 )
	MisBeginAction(AddMission,  977)
	MisBeginAction(AddTrigger,  9771, TE_GETITEM,  4782,1 )		
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "�ڵ�������ĵ���ľʬ�������ҵ���ʬ��")
	MisNeed(MIS_NEED_ITEM,  4782,1, 10, 1)
	
	MisResultTalk("<t>��ʯ����֮������Ư�������᲻�������ˣ���ʱ�治�ô�Ӧ�㣬��ȥ��<b�ʵ�ά��>�ɡ�")
	MisHelpTalk("<t>��������ĵ���ľʬ��������Ŷ")
	MisResultCondition(HasMission,  977)
	MisResultCondition(HasItem, 4782, 1)
	MisResultAction(TakeItem,  4782, 1 )
	MisResultAction(GiveItem, 1048, 1, 4)------------- ��ʯ
	MisResultAction(ClearMission,  977)
	MisResultAction(SetRecord,  977 )
	MisResultAction(AddMoney,100000,100000)	
	MisResultAction(AddExpAndType,2,60000,60000)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem,4782)	
	TriggerAction( 1, AddNextFlag, 977, 10, 1 )
	RegCurTrigger( 9771 )


	--------------------------------------------------ħ��

	DefineMission( 5043, "ħ��", 978)

	MisBeginTalk( "<t>���и����������ֵ����˲�֪����ħ�䣬���¶�����˵ߵ����ýųԷ���������·���Һܷ��գ���˵���Ǳ�����<b�����˹>(1346,451)������Ҳ�й�ħ�䣬������ָ�ҩ������<b�õ���ȵķ���������>" )
	MisBeginCondition(NoRecord,  978)
	MisBeginCondition(HasRecord, 957)
	MisBeginCondition(NoMission, 978)
	MisBeginAction(AddMission, 978)
	MisCancelAction(SystemNotice, "�������޷��ж�")
	MisNeed(MIS_NEED_DESP, "�������˹̸̸")

	MisResultTalk("<t>���������º��ˣ��ҵ��ֵ��о��ˣ�лл�㣡")
	MisHelpTalk("<t>��û�㶨��")
	MisResultCondition(HasMission, 978)
	MisResultCondition(NoRecord,  978)
	MisResultCondition(HasItem, 1052, 1 )--------ʥ�黤��
	MisResultAction(TakeItem, 1052, 1 )
	MisResultAction(ClearMission, 978)
	MisResultAction(SetRecord, 978 )
	MisResultAction(AddExp,1000000,1000000)
	MisResultAction(AddMoney,200000,200000)	
	MisResultAction(AddExpAndType,2,60000,60000)	
	

-------------------------------------------------������ì
	DefineMission( 5045, "������ì", 979 )

	MisBeginTalk( "<t>�ǵ������׽���һλ��ʦ����ħ��󣬾�Ȼ�����棬�������ϵۣ�ħ����������������Ү�վ͸�����˹�����ˡ����Ǹ���Ц������������ħ��Ľ����������֣������Ҵ�Ӧ������������͸©�����Խ��ħ�䡣<n><t>Ŷ������������Һ���˵©�ˣ�<n><t>���Ȱ���ȥ�ҵ������ڼ�į֮��1��ķ���������ʦ��<y�����������ì>1ֻ�����Ⱥ�����������һ�¡�" )
	MisBeginCondition(NoRecord, 979 )
	MisBeginCondition(HasMission, 978)
	MisBeginCondition(NoRecord, 978 )
	MisBeginCondition(NoMission, 979 )
	MisBeginAction(AddMission, 979)

	MisBeginAction(AddTrigger, 9791, TE_GETITEM, 4739, 1 )		--��ì
	MisCancelAction(SystemNotice, "�������޷��ж�")
	
	MisNeed(MIS_NEED_DESP, "�ڷ���������ʦ�����ҵ������������ì")
	MisNeed(MIS_NEED_ITEM, 4739,1, 10, 1)
	
	MisResultTalk("<t>�������ݺݵس������ң�һ��Ҳ���չ˹�������ϡ�")
	MisHelpTalk("<t>1ֻ����������ʦ�ļ����������ì")
	MisResultCondition(HasMission, 979)
	MisResultCondition(NoRecord, 979 )
	MisResultCondition(HasItem, 4739, 1 )
	MisResultAction(TakeItem, 4739, 1 )

	MisResultAction(ClearMission, 979)
	MisResultAction(SetRecord, 979)
	MisResultAction(AddMoney,200000,200000)	
	MisResultAction(AddExpAndType,2,60000,60000)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4739)	
	TriggerAction( 1, AddNextFlag, 979, 10, 1)
	RegCurTrigger( 9791 )
----------------------------------------------------�ַ��ֲ��������ʬ

	DefineMission(5046, "�ַ���ʬ", 980 )

	MisBeginTalk( "<t>������˵Ҫ��ȥɱ��1ֻ<y�ֲ��������ʬ>���ɹ��������� ")
	MisBeginCondition(NoRecord,   980)
	MisBeginCondition(HasRecord,  979)
	MisBeginCondition(NoMission,  980)
	MisBeginAction(AddMission,   980)
	MisBeginAction(AddTrigger,   9801, TE_KILL, 508,1 )		
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_KILL,  508,1, 10, 1)
	
	MisResultTalk("<t>��ӭ��ʿ������")
	MisHelpTalk("<t>�ֲ��������ʬ�ڼ��ɣ�360,1340)����")----------------+++++11
	MisResultCondition(HasMission,  980)
	MisResultCondition(HasFlag, 980, 10 )
	MisResultAction(ClearMission,   980)
	MisResultAction(SetRecord,   980 )
	MisResultAction(AddExp,800000,800000)
	MisResultAction(AddMoney,200000,200000)	
	

	InitTrigger()
	TriggerCondition( 1, IsMonster,508)	
	TriggerAction( 1, AddNextFlag,  980, 10, 1 )
	RegCurTrigger(  9801 )

----------------------------------------------------�������

	DefineMission(5047,"�������",981)
	
	MisBeginTalk( "<t><b������>�����ң����ܳɹ��ַ��ֲ��������ʬ�Ϳ���ȥ������1894,2798���ˡ�����֤����������������������ߣ���������պ��������Ҫ�ġ�" )
	MisBeginCondition(NoRecord, 981)
	MisBeginCondition(NoMission, 981)
	MisBeginCondition(HasRecord, 980)
	MisBeginAction(GiveItem, 1025, 1, 4)----------�������
	MisBeginAction(AddMission,981)
	MisCancelAction(SystemNotice, "�������޷��ж�")
	MisBeginBagNeed(1)
		
	MisNeed(MIS_NEED_DESP, "ȥ�����������ġ�")
	
	MisHelpTalk("<t>�������ڼ��ɴ�½��")-----------------------++++++12
	MisResultCondition(AlwaysFailure)
	------------------------------------------------�������
	DefineMission(5048,"�������",981,COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>���ҵ������ĳ�����������ҵ����⣬��Ը�㲻������̫ʧ��")
	MisResultCondition(NoRecord, 981)
	MisResultCondition(HasMission,981)
	MisResultCondition(HasItem,1025, 1)
	MisResultAction(TakeItem, 1025, 1 )
	MisResultAction(ClearMission, 981 )
	MisResultAction(SetRecord, 981 )
-----------------------------------------------------�ռ�����
	DefineMission( 5049, "�ռ�����", 982 )

	MisBeginTalk( "<t>����������ö��߶�ʧ�ˣ���˵����һЩ��������ͻ���������ħ����������һȺа��ĺ���Ҳ��������Ϊ�˺��ϵ�ƽ�����Ǳ��������õ��������ҵ�һ���ռ����룬�Խ⿪��ߵ���һ�����󡣴�˵����д��<yˮâ>��" )
	MisBeginCondition(NoRecord, 982  )
	MisBeginCondition(HasRecord,981)
	MisBeginCondition(NoMission, 982  )
	MisBeginAction(AddMission, 982 )
	MisBeginAction(AddTrigger, 9821, TE_GETITEM, 4261, 1 )		--ˮâ
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "�õ��������ˮ�������ϵ�ˮâ")
	MisNeed(MIS_NEED_ITEM,4261,1, 10, 1)
	
	MisResultTalk("<t>���Ǻ����Ľ�����")
	MisHelpTalk("<t>��������ı������ˮ���ӣ�486, 327��������")
	MisResultCondition(HasMission, 982 )
	MisResultCondition(NoRecord,982 )
	MisResultCondition(HasItem, 4261,1 )
	MisResultAction(TakeItem, 4261,1 )
	
	MisResultAction(ClearMission, 982 )
	MisResultAction(SetRecord, 982 )
	MisResultAction(AddExp,800000,800000)
	MisResultAction(AddMoney,100000,100000)	
	MisResultAction(AddExpAndType,2,60000,60000)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4261)	
	TriggerAction( 1, AddNextFlag,  982 , 10,1)
	RegCurTrigger( 9821 )
-------------------------------------------------����֮ʯ

	DefineMission( 5050, "����֮ʯ", 983 )

	MisBeginTalk( "<t>���������ӳ�������޵�ʯ����������.����ʲô��˼�����ҵ�<y�޵�ʯ>���԰ɡ�" )
	MisBeginCondition(NoRecord, 983)
	MisBeginCondition(HasRecord,  982 )
	MisBeginCondition(NoMission, 983 )
	MisBeginAction(AddMission, 983)
	MisBeginAction(AddTrigger, 9831, TE_GETITEM, 2487, 1 )		--�޵�ʯ
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "�ҵ��޵�ʯ�˽���ߵ���������")
	MisNeed(MIS_NEED_ITEM,2487,1, 10, 1)
	
	MisResultTalk("<t>�ӵ���������һ���ʬ������")
	MisHelpTalk("<t>��������ĵ���ľʬ��������.")
	MisResultCondition(HasMission, 983)
	MisResultCondition(NoRecord, 983)
	MisResultCondition(HasItem, 2487,1 )
	MisResultAction(TakeItem, 2487,1 )
	MisResultAction(ClearMission,983)
	MisResultAction(SetRecord, 983)
	MisResultAction(AddExp,800000,800000)
	MisResultAction(AddMoney,200000,200000)	
	MisResultAction(AddExpAndType,2,60000,60000)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 2487)	
	TriggerAction( 1, AddNextFlag,  983, 10,1)
	RegCurTrigger(  9831 )

----------------------------------------------------------�������

	DefineMission( 5051, "�������", 984 )

	MisBeginTalk( "<t>ԭ����ö��������ڰ���ռ��ʦռ�й���ע����а�������--���𣡷���������߶����л��������Ұ�ĺ�ħ����̫Σ���˱���������ߡ���˵<b������ػ���ʹ>(335,2121)�ǵ�<y�������ʹ�⻷>������а��Ĺ�Ч��" )
	MisBeginCondition(NoRecord,  984)
	MisBeginCondition(HasRecord,  983)
	MisBeginCondition(NoMission,  984 )
	MisBeginAction(AddMission,  984)
	MisBeginAction(AddTrigger,  9841, TE_GETITEM,4738, 1 )		--�������ʹ�⻷
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "�Ӷ�����ػ���ʹ�ǵõ��������ʹ�⻷")
	MisNeed(MIS_NEED_ITEM,4738,1, 10, 1)
	
	MisResultTalk("<t>����Ϊ���Եõ�������ߵ����������ǿջ�ϲһ����")
	MisHelpTalk("<t>������ػ���ʹ�ڼ���(335,2121).")
	MisResultCondition(HasMission, 984)
	MisResultCondition(NoRecord,  984)
	MisResultCondition(HasItem, 4738,1 )
	MisResultAction(TakeItem, 4738,1 )
	
	MisResultAction(ClearMission,  984)
	MisResultAction(SetRecord,  984)
	MisResultAction(AddMoney,300000,300000)	
	MisResultAction(AddExpAndType,2,60000,60000)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4738)	
	TriggerAction( 1, AddNextFlag,   984, 10,1)
	RegCurTrigger(   9841 )

-------------------------------------------------------ħ���ڴ�
	DefineMission( 5052, "ħ���ڴ�", 985 )

	MisBeginTalk( "<t>��Ȼ�ѽ������ߵ�а�񣬵��������̫�����ˣ�������������������Ψһ�취����װ��<yħ���ڴ�>�������ٽ�������˹��2277��2831����������æ�ģ����Ѿ��������Ź�ȥ�ˣ������ߴ������ɡ�" )
	MisBeginCondition(NoRecord,   985)
	MisBeginCondition(HasRecord, 984)
	MisBeginCondition(NoMission,  985)
	MisBeginAction(AddMission,  985)
	MisBeginAction(GiveItem, 1025, 1, 4)----------�������
	MisCancelAction(SystemNotice, "�������޷��ж�")
	MisBeginBagNeed(1)
	
	MisNeed(MIS_NEED_DESP, "�Ҽ��ɵĺ����ٽ�����˹�����������")----------------++++13
	MisHelpTalk("<t>���ģ���µ��̰�ģ��ƽϣ����ֻ��һ�����������Ц��������������ĳ�̬����Ҫ�ú÷�ʡһ�¡�")
	
	MisResultCondition(AlwaysFailure)
	
-------------------------------------------------------ħ���ڴ�
	DefineMission( 5053, "ħ���ڴ�", 985, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>�������̰����ǿû��ռ����ߣ���ǰ;���������������ҽ�����Ľ��ħ���<yʥ�黤��>��ȥ��������<b���>(3287,2501)�����ɡ�")
	MisResultCondition(NoRecord,  985)
	MisResultCondition(HasMission,  985)
	MisResultCondition(HasItem,1025, 1)
	MisResultAction(TakeItem, 1025, 1 )
	MisResultAction(ClearMission,  985)
	MisResultAction(SetRecord,  985)
	MisResultAction(GiveItem, 1052, 1,4)
	MisResultAction(AddMoney,80000,80000)
	MisResultBagNeed(1)
	
------------------------------------------------------����ϵĽ��

	DefineMission( 5054, "����ϵĽ��", 986 )

	MisBeginTalk( "<t>ʥ�黤���ϵĽ�ɫ���Ĳ�����ˣ���������̫��û�����ˣ�����Ҫ��10ö<y���>ĥ�ɵĽ��ʹ���ָ�Ч���������������������Ҳû�й�ϵ��������Ҫ�Ĵ𰸾ͻᱻ�����ǡ�" )
	MisBeginCondition(NoRecord, 986)
	MisBeginCondition(HasRecord, 978)
	MisBeginCondition(NoMission,986 )
	MisBeginAction(AddMission, 986)
	MisBeginAction(AddTrigger, 9861, TE_GETITEM, 2438, 10 )		--���
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "�����ú������ϵĽ�Ҹ����")
	MisNeed(MIS_NEED_ITEM,2438,10, 10, 10)
	
	MisResultTalk("<t>���Ǹ�ֵ���и����ˣ�")
	MisHelpTalk("<t>�ر�����������ú��������ܴ򵽽��Ŷ")
	MisResultCondition(HasMission, 986)
	MisResultCondition(NoRecord,986)
	MisResultCondition(HasItem,2438,10 )
	MisResultAction(TakeItem, 2438,10 )
	MisResultAction(ClearMission, 986)
	MisResultAction(SetRecord,986)
	MisResultAction(AddExp,800000,800000)
	MisResultAction(AddMoney,100000,100000)	
	MisResultAction(AddExpAndType,2,60000,60000)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 2438)	
	TriggerAction( 1, AddNextFlag,  986, 10,10)
	RegCurTrigger( 9861 )
-------------------------------------------------------��ٵ�ָ��
	DefineMission(5055,"��ٵ�ָ��",987)
	
	MisBeginTalk( "<t>���ӣ����໹Ҫ���Լ�ȥѰ�ң�·�ڽ��£��ҿ��Ը�����һ����Ҫ��Ϣ��ȥ���Ǹ�<b����������ְҵ��·����>�ɡ�" )
	MisBeginCondition(NoRecord, 987)
	MisBeginCondition(NoMission,987)
	MisBeginCondition(HasRecord,986)
	MisBeginAction(AddMission,987)	
	MisCancelAction(SystemNotice, "�������޷��ж�")
		
	MisNeed(MIS_NEED_DESP, "��ְҵ������̸̸")
	
	MisHelpTalk("<t>�㻹ûȥ�𣿿�ȥ�ɣ�")
	MisResultCondition(AlwaysFailure)
-----------------------------------------------------��ٵ�ָ�㣨���أ�
	DefineMission(5056, "��ٵ�ָ��", 987, COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>����Ǹ���̫�����Ǹ������鷳��")
	MisResultCondition(NoRecord, 987)
	MisResultCondition(HasMission,987)
	MisResultCondition(NoPfEqual, 5)
	MisResultCondition(NoPfEqual, 13)
	MisResultCondition(NoPfEqual, 14)
	MisResultCondition(NoPfEqual, 2)
	MisResultCondition(NoPfEqual, 12)
	MisResultCondition(NoPfEqual, 4)
	MisResultCondition(NoPfEqual, 16)
	MisResultAction(ClearMission,987)
	MisResultAction(SetRecord, 987)

-----------------------------------------------------��ٵ�ָ�㣨��ŷ��
	DefineMission(5057, "��ٵ�ָ��", 987, COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>����Ǹ���̫�����Ǹ������鷳��")
	MisResultCondition(NoRecord, 987)
	MisResultCondition(HasMission,987)
	MisResultCondition(NoPfEqual, 5)
	MisResultCondition(NoPfEqual, 13)
	MisResultCondition(NoPfEqual, 14)
	MisResultCondition(NoPfEqual, 1)
	MisResultCondition(NoPfEqual, 8)
	MisResultCondition(NoPfEqual, 4)
	MisResultCondition(NoPfEqual, 9)
	MisResultCondition(NoPfEqual, 16)
	MisResultAction(ClearMission,987)
	MisResultAction(SetRecord, 987)

	-----------------------------------------------------��ٵ�ָ�㣨Сɽ����
	DefineMission(5058, "��ٵ�ָ��", 987 , COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>����Ǹ���̫�����Ǹ������鷳��")
	MisResultCondition(NoRecord, 987)
	MisResultCondition(HasMission,987)
	MisResultCondition(NoPfEqual, 5)
	MisResultCondition(NoPfEqual, 13)
	MisResultCondition(NoPfEqual, 14)
	MisResultCondition(NoPfEqual, 1)
	MisResultCondition(NoPfEqual, 8)
	MisResultCondition(NoPfEqual, 2)
	MisResultCondition(NoPfEqual, 9)
	MisResultCondition(NoPfEqual, 12)
	MisResultAction(ClearMission,987)
	MisResultAction(SetRecord, 987)

	-----------------------------------------------------��ٵ�ָ��(�ʵ�ά��)
	DefineMission(5059, "��ٵ�ָ��", 987 , COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>����Ǹ���̫�����Ǹ������鷳��")
	MisResultCondition(NoRecord, 987)
	MisResultCondition(HasMission,987)
	MisResultCondition(NoPfEqual,1)
	MisResultCondition(NoPfEqual, 8)
	MisResultCondition(NoPfEqual, 9)
	MisResultCondition(NoPfEqual, 2)
	MisResultCondition(NoPfEqual, 12)
	MisResultCondition(NoPfEqual, 4)
	MisResultCondition(NoPfEqual, 16)
	MisResultAction(ClearMission,987)
	MisResultAction(SetRecord, 987)


-----------------------------------------------------ְҵ�����˵Ľ��飨if��ʿ��
	DefineMission( 5060, "���صĽ���",988 )

	MisBeginTalk( "<t>�����ܱ���į�վ�����ʹ��������Ҳ����ã��֪�����ʱ��<n><t>ÿ����ʱ�Ҷ���ȥǱ�����С��㲻��Ҳ����һ�¡�<n><t>ɱ����į֮��1��ı�ŭ��������1ֻ" )
	MisBeginCondition(NoRecord, 988)
	MisBeginCondition(HasRecord, 987)
	MisBeginCondition(NoMission, 988 )
	MisBeginCondition(NoPfEqual, 5)
	MisBeginCondition(NoPfEqual, 13)
	MisBeginCondition(NoPfEqual, 14)
	MisBeginCondition(NoPfEqual, 2)
	MisBeginCondition(NoPfEqual, 12)
	MisBeginCondition(NoPfEqual, 4)
	MisBeginCondition(NoPfEqual, 16)
	MisBeginAction(AddMission, 988 )
	MisBeginAction(AddTrigger, 9881, TE_KILL, 524, 1 )		--��ŭ��������
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_KILL,524,1, 10, 1)
	
	MisResultTalk("<t>����ĺܳ�ɫ�����������ǲ������Ļ��һЩ�ˣ���ϲ�㣡")
	MisHelpTalk("<t>��������˺��ף���Ҫ���С�ġ�")
	MisResultCondition(HasMission, 988 )
	MisResultCondition(HasFlag, 988, 10 )
	MisResultAction(ClearMission, 988 )
	MisResultAction(SetRecord, 988 )
	MisResultAction(AddExp,800000,800000)
	MisResultAction(AddMoney,200000,200000)	
	MisResultAction(AddExpAndType,2,60000,60000)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 524)	
	TriggerAction( 1, AddNextFlag,  988 , 10,1)
	RegCurTrigger(  9881 )

-----------------------------------------------------��ŷ�Ľ��飨if���ˣ�
	DefineMission( 5061, "��ŷ�Ľ���", 989 )

	MisBeginTalk( "<t>Ц���ܱ�˼����û����ʹ�����ٻ�����ʱ������ã��֪���롣ÿ����ʱ�Ҷ���ȥ��������Ư�����㲻��Ҳ����һ�¡�<n><t>�ռ����ɵ������(435,1690)��<y��������ռ�> 1������į֮��1������ݵ�ʥ�����ֵ�<y���ݵ�ʥ��֮��>1��" )
	MisBeginCondition(NoRecord, 989)
	MisBeginCondition(HasRecord, 987)
	MisBeginCondition(NoMission, 989 )
	MisBeginCondition(NoPfEqual, 5)
	MisBeginCondition(NoPfEqual, 13)
	MisBeginCondition(NoPfEqual, 14)
	MisBeginCondition(NoPfEqual, 1)
	MisBeginCondition(NoPfEqual, 8)
	MisBeginCondition(NoPfEqual, 4)
	MisBeginCondition(NoPfEqual, 9)
	MisBeginCondition(NoPfEqual, 16)
	MisBeginAction(AddMission, 989 )
	MisBeginAction(AddTrigger, 9891, TE_GETITEM, 4789, 1 )		
	MisBeginAction(AddTrigger, 9892, TE_GETITEM, 4741, 1 )	
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "�ռ���������ռ�1��,y���ݵ�ʥ��֮��1��")
	MisNeed(MIS_NEED_ITEM, 4789,1, 10, 1)
	MisNeed(MIS_NEED_ITEM,4741,1, 20, 1)
	
	MisResultTalk("<t>���Ǹ���ɫ����ʿ������Ư�����ǲ��Ǿ��û�￪���˺ܶ࣡")
	MisHelpTalk("<t>ȥĥ���Լ������ǰ�")
	MisResultCondition(HasMission,989 )
	MisResultCondition(HasItem, 4789,1 )
	MisResultCondition(HasItem,4741,1 )
	MisResultAction(TakeItem,  4789,1 )
	MisResultAction(TakeItem, 4741,1 )
	MisResultAction(ClearMission, 989 )
	MisResultAction(SetRecord, 989 )
	MisResultAction(AddExp,800000,800000)
	MisResultAction(AddMoney,200000,200000)	
	MisResultAction(AddExpAndType,2,60000,60000)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster,  4789)	
	TriggerAction( 1, AddNextFlag,  989 , 10,1)
	RegCurTrigger(  9891 )
	InitTrigger()
	TriggerCondition( 1, IsMonster,4741)	
	TriggerAction( 1, AddNextFlag,  989 , 20,1)
	RegCurTrigger(  9892 )

---------------------------------------------------------------Сɽ���Ľ��飨ifð���ߣ�
	DefineMission( 5062, "Сɽ���Ľ���", 990 )

	MisBeginTalk( "<t>�Ҹ��ܱ����紵ɢ����ʹ��ǰ�����������ʱ������ã��֪���롣ÿ����ʱ�Ҷ���ȥ�ŷ�Զ�����㲻��Ҳ����һ�¡�<n><t>ȥ����Ⱥ�������ղ���վ��194,1718�� Զ���ɣ��Һ���ָ���Ƕ��������� ��" )
	MisBeginCondition(NoRecord, 990)
	MisBeginCondition(HasRecord, 987)
	MisBeginCondition(NoMission, 990 )
	MisBeginCondition(NoPfEqual, 5)
	MisBeginCondition(NoPfEqual, 13)
	MisBeginCondition(NoPfEqual, 14)
	MisBeginCondition(NoPfEqual, 1)
	MisBeginCondition(NoPfEqual, 8)
	MisBeginCondition(NoPfEqual, 2)
	MisBeginCondition(NoPfEqual, 9)
	MisBeginCondition(NoPfEqual, 12)
	MisBeginAction(AddMission, 990 )
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisHelpTalk("<t>ȥ����Ⱥ�������ղ���վ��194,1718�� Զ���ɣ��Һ���ָ���Ƕ���������")
	MisNeed(MIS_NEED_DESP, "�Һ���ָ���Ƕ���������")

	MisResultCondition(AlwaysFailure)
---------------------------------------------------------------ְҵ�����˵Ľ���
	DefineMission( 5063, "Сɽ���Ľ���", 990,COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>���Ǹ���ɫ����ʿ������Զ�����ǲ��Ǿ��û�￪���˺ܶ࣡��������һ��������Զ������ӭ�㣬Զ���Ŀ��ˡ����Զ����ʹ�����������ġ�")
	MisHelpTalk("<t>��������ʿ��ְҵ��")
	MisResultCondition(NoRecord, 990)
	MisResultCondition(HasMission,990)
	MisResultCondition(NoPfEqual, 5)
	MisResultCondition(NoPfEqual, 13)
	MisResultCondition(NoPfEqual, 14)
	MisResultCondition(NoPfEqual, 1)
	MisResultCondition(NoPfEqual, 8)
	MisResultCondition(NoPfEqual, 2)
	MisResultCondition(NoPfEqual, 9)
	MisResultCondition(NoPfEqual, 12)
	MisResultAction(ClearMission, 990 )
	MisResultAction(SetRecord, 990 )
	MisResultAction(AddExp,800000,800000)
	MisResultAction(AddMoney,200000,200000)	
	MisResultAction(AddExpAndType,2,60000,60000)
	-------------------------------------------------------�ʵ�ά���Ľ��飨ifҩʦ��
	DefineMission( 5064, "�ʵ�ά���Ľ���", 991 )

	MisBeginTalk( "<t>ϣ���ܱ������ʪ����ʹ��֪��ǰ���Ҳ����ã��֪�����ʱ��<n><t>�׶�����(1244��3186)���������ô����" )
	MisBeginCondition(NoRecord, 991)
	MisBeginCondition(HasRecord, 987)
	MisBeginCondition(NoMission, 991 )
	MisBeginCondition(NoPfEqual,1)
	MisBeginCondition(NoPfEqual, 8)
	MisBeginCondition(NoPfEqual, 9)
	MisBeginCondition(NoPfEqual, 2)
	MisBeginCondition(NoPfEqual, 12)
	MisBeginCondition(NoPfEqual, 4)
	MisBeginCondition(NoPfEqual, 16)
	MisBeginAction(AddMission, 991 )
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "ȥ���׶��������ġ�")
	MisHelpTalk("<t>�׶�������ħŮ֮��(1244��3186)")
	MisResultCondition(AlwaysFailure)

-------------------------------�ʵ�ά���Ľ���
	DefineMission( 5072, "�ʵ�ά���Ľ���", 991,COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>�Ҷ���ɴ���ٵ������ˡ�")
	MisHelpTalk("<t>����¸ҡ�")
	MisResultCondition(NoRecord, 991)
	MisResultCondition(HasMission,991)
	MisResultAction(ClearMission, 991 )
	MisResultAction(SetRecord, 991 )

	
	-------------------------------------------------------ʯ������־
	DefineMission( 5073, "ʯ������־", 998 )

	MisBeginTalk( "<t>���Լ�ʹ��һ��ʯ��Ƥ�����ܡ�" )
	MisBeginCondition(NoRecord, 998)
	MisBeginCondition(HasRecord, 991)
	MisBeginCondition(NoMission, 998 )
	MisBeginAction(AddMission, 998 )
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "���Լ�ʹ��һ��ʯ��Ƥ�����ܡ�")
	MisHelpTalk("<t>��ǿ����־�Ǻ����Ļ���������")
	MisResultTalk("<t>ÿ���˶����Լ���Ӣ�ۣ����Ƿ�����Լ���ǿ�˺ܶ࣡")

	MisResultCondition(HasMission, 998 )
	MisResultCondition(HasState, 92 )
	MisResultAction(ClearMission, 998 )
	MisResultAction(SetRecord, 998 )
	MisResultAction(AddExp,800000,800000)
	MisResultAction(AddMoney,200000,200000)	
	MisResultAction(AddExpAndType,2,60000,60000)
		
	----------------------------------------���ߵ���
     DefineMission(5068,"���ߵ���",993)
     MisBeginTalk("<t>��������õ��˳�ֵ�֤����<n><t>������һ���ǳ���Ҫ��ְҵͳ�Ʊ���һ�¸��㽲���ߵ���")
     MisBeginCondition(HasRecord,988)
     MisBeginCondition(NoMission, 993)
     MisBeginCondition(NoRecord, 993)
     MisBeginAction(AddMission, 993)
     MisCancelAction(SystemNotice, "�������޷��ж�")

     MisNeed(MIS_NEED_DESP, "�Ȱ����ǵı�������ͳ�Ʊ�")
     MisHelpTalk("<t>ͳ�Ʊ�û�����أ��㲻Ҫ�ż��")
     MisResultTalk("<t>��ͳ�Ʊ�ɲ���һ�����ɵ���")
     MisResultCondition(NoRecord, 993)---------Ӧ��ΪNoRecord
     MisResultCondition(HasMission, 993)
     MisResultAction(SetRecord, 993 )
     MisResultAction(ClearMission, 993 )
----------------------------------------���ߵ���
      DefineMission(5069,"���ߵ���",994)
     MisBeginTalk("<t>��������õ��˳�ֵ�֤����<n><t>������һ���ǳ���Ҫ��ְҵͳ�Ʊ���һ�¸��㽲���ߵ���")
     MisBeginCondition(HasRecord,989)
      MisBeginCondition(NoMission, 994)
     MisBeginCondition(NoRecord, 994)
     MisBeginAction(AddMission, 994)
     MisCancelAction(SystemNotice, "�������޷��ж�")

     MisNeed(MIS_NEED_DESP, "�ȱ��Ǳ�����ŷ����ͳ�Ʊ�")
     MisHelpTalk("<t>ͳ�Ʊ�û�����أ��㲻Ҫ�ż��")
      MisResultTalk("<t>��ͳ�Ʊ�ɲ���һ�����ɵ���")
     MisResultCondition(NoRecord, 994)---------Ӧ��ΪNoRecord
     MisResultCondition(HasMission, 994)
     MisResultAction(SetRecord, 994 )
     MisResultAction(ClearMission, 994 )

     ----------------------------------------���ߵ���
      DefineMission(5070,"���ߵ���",995)
     MisBeginTalk("<t>��������õ��˳�ֵ�֤����<n><t>������һ���ǳ���Ҫ��ͳ�Ʊ���һ�¸��㽲���ߵ���")
     MisBeginCondition(HasRecord,998)
      MisBeginCondition(NoMission, 995)
     MisBeginCondition(NoRecord, 995)
     MisBeginAction(AddMission, 995)
     MisCancelAction(SystemNotice, "�������޷��ж�")

     MisNeed(MIS_NEED_DESP, "��ħŮ֮�����׶���������ͳ�Ʊ�")
     MisHelpTalk("<t>ͳ�Ʊ�û�����أ��㲻Ҫ�ż��")
      MisResultTalk("<t>��ͳ�Ʊ�ɲ���һ�����ɵ���.")
     MisResultCondition(NoRecord, 995)---------Ӧ��ΪNoRecord
     MisResultCondition(HasMission, 995)
     MisResultAction(SetRecord, 995 )
     MisResultAction(ClearMission, 995 )
	----------------------------------------���ߵ���
      DefineMission(5071,"���ߵ���",997)
     MisBeginTalk("<t>��������õ��˳�ֵ�֤����<n><t>������һ���ǳ���Ҫ��ͳ�Ʊ���һ�¸��㽲���ߵ���")
     MisBeginCondition(HasRecord,990)
      MisBeginCondition(NoMission, 997)
     MisBeginCondition(NoRecord, 997)
     MisBeginAction(AddMission, 997)
     MisCancelAction(SystemNotice, "�������޷��ж�")

     MisNeed(MIS_NEED_DESP, "�Ⱥ���ָ������ͳ�Ʊ�")
     MisHelpTalk("<t>ͳ�Ʊ�û�����أ��㲻Ҫ�ż��")
      MisResultTalk("<t>��ͳ�Ʊ�ɲ���һ�����ɵ���")
     MisResultCondition(NoRecord, 997)---------Ӧ��ΪNoRecord
     MisResultCondition(HasMission, 997)
     MisResultAction(SetRecord, 997 )
     MisResultAction(ClearMission, 997 )

-------------------------------------------------------˭������-------------�������̻�᳤�����׵���˹
	DefineMission( 5167, "˭������", 1500 )

	MisBeginTalk( "<t>���ߵ���ݺܹ���,��Ҳ���Ǻ����,�������ɳᰵ����ö�,�������̻�᳤�����׵���˹,���ǵ��̻�᳤�����������е�һ����ѯ��,ʱ�����ֻ����һλŶ." )
	MisBeginCondition(NoRecord,1500)
	MisBeginCondition(HasRecord, 993)
	MisBeginCondition(NoMission, 1500 )
	MisBeginAction(AddMission, 1500 )
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "ȥ��ɳᰵ����ö�,�������̻�᳤�����׵���˹,���ǵ��̻�᳤�����������е�һ������.")
	MisHelpTalk("<t>���ö���(853,3549),�������̻�᳤�����׵���˹��(2242,2748),��������(1294,498)")
	MisResultCondition(AlwaysFailure)




-------------------------------------------------------˭������---------��ŷ
	DefineMission( 5168, "˭������", 1501 )

	MisBeginTalk( "<t>���ߵ���ݺܹ���,��Ҳ���Ǻ����,�������ɳᰵ����ö�,�������̻�᳤�����׵���˹,���ǵ��̻�᳤�����������е�һ����ѯ��,ʱ�����ֻ����һλŶ" )
	MisBeginCondition(NoRecord,1501)
	MisBeginCondition(HasRecord, 994)
	MisBeginCondition(NoMission, 1501 )
	MisBeginAction(AddMission, 1501 )
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "ȥ��ɳᰵ����ö�,�������̻�᳤�����׵���˹,���ǵ��̻�᳤�����������е�һ������.")
	MisHelpTalk("<t>���ö���(853,3549),�������̻�᳤�����׵���˹��(2242,2748),��������(1294,498)")
	MisResultCondition(AlwaysFailure)



	-------------------------------------------------------˭������------------�׶�����
	DefineMission( 5074, "˭������", 1502 )

	MisBeginTalk( "<t>���ߵ���ݺܹ���,��Ҳ���Ǻ����,�������ɳᰵ����ö�,�������̻�᳤�����׵���˹,���ǵ��̻�᳤�����������е�һ����ѯ��,ʱ�����ֻ����һλŶ" )
	MisBeginCondition(NoRecord,1502)
	MisBeginCondition(HasRecord, 995)
	MisBeginCondition(NoMission, 1502 )
	MisBeginAction(AddMission, 1502 )
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "ȥ��ɳᰵ����ö�,�������̻�᳤�����׵���˹,���ǵ��̻�᳤�����������е�һ������.")
	MisHelpTalk("<t>���ö���(853,3549),�������̻�᳤�����׵���˹��(2242,2748),��������(1294,498)")
	MisResultCondition(AlwaysFailure)

	


-------------------------------------------------------˭������------------�Ƕ�����
	DefineMission( 5075, "˭������", 1503 )

	MisBeginTalk( "<t>���ߵ���ݺܹ���,��Ҳ���Ǻ����,�������ɳᰵ����ö�,�������̻�᳤�����׵���˹,���ǵ��̻�᳤�����������е�һ����ѯ��,ʱ�����ֻ����һλŶ." )
	MisBeginCondition(NoRecord,1503)
	MisBeginCondition(HasRecord, 997)
	MisBeginCondition(NoMission, 1503 )
	MisBeginAction(AddMission, 1503 )
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "ȥ��ɳᰵ����ö�,�������̻�᳤�����׵���˹,���ǵ��̻�᳤�����������е�һ��������.")
	MisHelpTalk("<t>���ö���(853,3549),�������̻�᳤�����׵���˹��(2242,2748),��������(1294,498)")
	MisResultCondition(AlwaysFailure)

	


	
-------------------------------˭������
	DefineMission( 5076, "˭������", 1500,COMPLETE_SHOW )----------�������̻�᳤�����׵���˹
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>ÿһ�������ɳ�����־���궼��õ����ߵĵ㲦,��Ҳ�����ҹ�����,Ѱ�ҵĵ�·�Ǽ�����,��Ҫ������׼����.")
	MisResultCondition(NoRecord, 1500)
	MisResultCondition(HasMission,1500)
	MisResultAction(ClearMission, 1500 )
	MisResultAction(SetRecord, 1500 )
	MisResultAction(SetRecord, 1504 )

	-------------------------------˭������
	DefineMission( 5077, "˭������", 1501,COMPLETE_SHOW )----------�������̻�᳤�����׵���˹
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>ÿһ�������ɳ�����־���궼��õ����ߵĵ㲦,��Ҳ�����ҹ�����,Ѱ�ҵĵ�·�Ǽ�����,��Ҫ������׼����.")
	MisResultCondition(NoRecord, 1501)
	MisResultCondition(HasMission,1501)
	MisResultAction(ClearMission, 1501 )
	MisResultAction(SetRecord, 1501 )
	MisResultAction(SetRecord, 1504 )

	-------------------------------˭������
	DefineMission( 5078, "˭������", 1502,COMPLETE_SHOW )----------�������̻�᳤�����׵���˹
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>ÿһ�������ɳ�����־���궼��õ����ߵĵ㲦,��Ҳ�����ҹ�����,Ѱ�ҵĵ�·�Ǽ�����,��Ҫ������׼����.")
	MisResultCondition(NoRecord, 1502)
	MisResultCondition(HasMission,1502)
	MisResultAction(ClearMission, 1502 )
	MisResultAction(SetRecord, 1502 )
	MisResultAction(SetRecord, 1504 )

	-------------------------------˭������
	DefineMission( 5079, "˭������", 1503,COMPLETE_SHOW )----------�������̻�᳤�����׵���˹
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>ÿһ�������ɳ�����־���궼��õ����ߵĵ㲦,��Ҳ�����ҹ�����,Ѱ�ҵĵ�·�Ǽ�����,��Ҫ������׼����.")
	MisResultCondition(NoRecord, 1503)
	MisResultCondition(HasMission,1503)
	MisResultAction(ClearMission, 1503 )
	MisResultAction(SetRecord, 1503 )
	MisResultAction(SetRecord, 1504 )
-------------------------------˭������
	DefineMission( 5080, "˭������", 1500,COMPLETE_SHOW )----------���ö�
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>����������?��������һ�£�IQ�����߽�ֹǿ��.�۹���������")
	MisResultCondition(NoRecord, 1500)
	MisResultCondition(HasMission,1500)
	MisResultAction(ClearMission, 1500 )
	MisResultAction(SetRecord, 1500 )
	MisResultAction(SetRecord, 1505 )


-------------------------------˭������
	DefineMission( 5081, "˭������", 1501,COMPLETE_SHOW )-----------���ö�
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>����������?��������һ�£�IQ�����߽�ֹǿ��.�۹���������")
	MisResultCondition(NoRecord, 1501)
	MisResultCondition(HasMission,1501)
	MisResultAction(ClearMission, 1501 )
	MisResultAction(SetRecord, 1501 )
	MisResultAction(SetRecord, 1505 )

-------------------------------˭������
	DefineMission( 5082, "˭������", 1502,COMPLETE_SHOW )-----------���ö�
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>����������?��������һ�£�IQ�����߽�ֹǿ��.�۹���������")
	MisResultCondition(NoRecord, 1502)
	MisResultCondition(HasMission,1502)
	MisResultAction(ClearMission, 1502 )
	MisResultAction(SetRecord, 1502 )
	MisResultAction(SetRecord, 1505 )

-------------------------------˭������
	DefineMission( 5083, "˭������", 1503,COMPLETE_SHOW )-----------���ö�
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>����������?��������һ�£�IQ�����߽�ֹǿ��.�۹���������")
	MisResultCondition(NoRecord, 1503)
	MisResultCondition(HasMission,1503)
	MisResultAction(ClearMission, 1503 )
	MisResultAction(SetRecord, 1503 )
	MisResultAction(SetRecord, 1505 )


	-------------------------------˭������
	DefineMission( 5084, "˭������", 1500,COMPLETE_SHOW )----------������
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>����,��ʵ��Ҳ�ǻ۹���,�������о��������Ϊʲô�ѷ������ö�Ϊʲô�н�������")
	MisResultCondition(NoRecord, 1500)
	MisResultCondition(HasMission,1500)
	MisResultAction(ClearMission, 1500 )
	MisResultAction(SetRecord, 1500 )
	MisResultAction(SetRecord, 1506 )


-------------------------------˭������
	DefineMission( 5085, "˭������", 1501,COMPLETE_SHOW )-----------������
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>����,��ʵ��Ҳ�ǻ۹���,�������о��������Ϊʲô�ѷ������ö�Ϊʲô�н�������")
	MisResultCondition(NoRecord, 1501)
	MisResultCondition(HasMission,1501)
	MisResultAction(ClearMission, 1501 )
	MisResultAction(SetRecord, 1501 )
	MisResultAction(SetRecord, 1506 )

-------------------------------˭������
	DefineMission( 5086, "˭������", 1502,COMPLETE_SHOW )-----------������
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>����,��ʵ��Ҳ�ǻ۹���,�������о��������Ϊʲô�ѷ������ö�Ϊʲô�н�������")
	MisResultCondition(NoRecord, 1502)
	MisResultCondition(HasMission,1502)
	MisResultAction(ClearMission, 1502 )
	MisResultAction(SetRecord, 1502 )
	MisResultAction(SetRecord, 1506 )

-------------------------------˭������
	DefineMission( 5087, "˭������", 1503,COMPLETE_SHOW )-----------������
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>����,��ʵ��Ҳ�ǻ۹���,�������о��������Ϊʲô�ѷ������ö�Ϊʲô�н�������")
	MisResultCondition(NoRecord, 1503)
	MisResultCondition(HasMission,1503)
	MisResultAction(ClearMission, 1503 )
	MisResultAction(SetRecord, 1503 )
	MisResultAction(SetRecord, 1506 )

-------------------------------------------------------������ͽ-------------�������̻�᳤�����׵���˹
	DefineMission( 5088, "������ͽ", 1507 )

	MisBeginTalk( "<t>�����Ǹ���ֵ���,��ֻ�Ӽ����ļ�ǿ���ܸ߳�����.��ȥ������͸©���ߵ��µ��˰�,�������Ҷ�����м���СС�Ŀ���." )
	MisBeginCondition(NoRecord,1507)
	MisBeginCondition(HasRecord, 1504)
	MisBeginCondition(NoMission, 1507 )
	MisBeginAction(AddMission, 1507 )
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "ȥ������͸©���ߵ��µ���.��ʾ���Ƕ����ᡢ�׶�������ŷ�������е�һλ")
	MisHelpTalk("<t>�׶�������ħŮ֮��(1244,3186),�Ƕ�����������Ⱥ�������ղ���վ��194,1718��")
	MisResultCondition(AlwaysFailure)
--------------------------------------------------------������ͽ
	DefineMission( 5089, "������ͽ", 1507,COMPLETE_SHOW )--------����
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>�������̻�᳤�����׵���˹˵�����ְҵ����Ϥ,���������������Ƿ��Ǻϸ�Ľ�����ͽ.")
	MisResultCondition(NoRecord, 1507)
	MisResultCondition(HasMission,1507)
	MisResultCondition(NoPfEqual, 5)
	MisResultCondition(NoPfEqual, 13)
	MisResultCondition(NoPfEqual, 14)
	MisResultCondition(NoPfEqual, 2)
	MisResultCondition(NoPfEqual, 12)
	MisResultCondition(NoPfEqual, 4)
	MisResultCondition(NoPfEqual, 16)
	MisResultAction(ClearMission,1507)
	MisResultAction(SetRecord, 1507)
	MisResultAction(SetRecord, 1514)

	


	--------------------------------------------------------������ͽ
	DefineMission( 5090, "������ͽ", 1507,COMPLETE_SHOW )---------��ŷ
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>�������̻�᳤�����׵���˹˵�����ְҵ����Ϥ,���������������Ƿ��Ǻϸ�Ľ�����ͽ.")
	MisResultCondition(NoRecord, 1507)
	MisResultCondition(HasMission,1507)
	MisResultCondition(NoPfEqual, 5)
	MisResultCondition(NoPfEqual, 13)
	MisResultCondition(NoPfEqual, 14)
	MisResultCondition(NoPfEqual, 1)
	MisResultCondition(NoPfEqual, 8)
	MisResultCondition(NoPfEqual, 4)
	MisResultCondition(NoPfEqual, 9)
	MisResultCondition(NoPfEqual, 16)
	MisResultAction(ClearMission,1507)
	MisResultAction(SetRecord, 1507)
	MisResultAction(SetRecord, 1515)

--------------------------------------------------------������ͽ
	DefineMission( 5091, "������ͽ", 1507,COMPLETE_SHOW )---------�Ƕ�����
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Сɽ���������æ�ú�,ί���������׵���˹�������Ƿ��Ǻϸ�Ľ�����ͽ.")
	MisResultCondition(NoRecord, 1507)
	MisResultCondition(HasMission,1507)
	MisResultCondition(NoPfEqual, 5)
	MisResultCondition(NoPfEqual, 13)
	MisResultCondition(NoPfEqual, 14)
	MisResultCondition(NoPfEqual, 1)
	MisResultCondition(NoPfEqual, 8)
	MisResultCondition(NoPfEqual, 2)
	MisResultCondition(NoPfEqual, 9)
	MisResultCondition(NoPfEqual, 12)
	MisResultAction(ClearMission,1507)
	MisResultAction(SetRecord, 1507)
	MisResultAction(SetRecord, 1516)

	--------------------------------------------------------������ͽ
	DefineMission( 5092, "������ͽ", 1507,COMPLETE_SHOW )---------�׶�����
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>�������Ǵ���ٵ�רְ����,������ٿ������Ƿ��Ǻϸ�Ľ�����ͽ.")
	MisResultCondition(NoRecord, 1507)
	MisResultCondition(HasMission,1507)
	MisResultCondition(NoPfEqual,1)
	MisResultCondition(NoPfEqual, 8)
	MisResultCondition(NoPfEqual, 9)
	MisResultCondition(NoPfEqual, 2)
	MisResultCondition(NoPfEqual, 12)
	MisResultCondition(NoPfEqual, 4)
	MisResultCondition(NoPfEqual, 16)
	MisResultAction(ClearMission,1507)
	MisResultAction(SetRecord, 1507)
	MisResultAction(SetRecord, 1517)

---------------------------------------------------------------------���س�����ͽ

	DefineMission( 5093, "������ͽ", 1508 )

	MisBeginTalk( "<t>�����ʵ����Ҫ��ʵ��ĥ��.���Ȳ�ɱ���ɵ�<b�ؾ�սʿ>��314,2641��5��" )
	MisBeginCondition(NoRecord, 1508 )
	MisBeginCondition(HasRecord, 1507 )
	MisBeginCondition(HasRecord, 1514 )
	MisBeginCondition(NoMission, 1508 )
	MisBeginAction(AddMission,  1508)
	MisBeginAction(AddTrigger,  15081, TE_KILL, 67, 5 )----------------�ؾ�սʿ
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "��ɱ���ɵĵؾ�սʿ5ֻ������")
	MisNeed(MIS_NEED_KILL,67,5, 10, 5)

	MisResultTalk("<t>�����Һϸ�ĳ�����ͽ��,�ٽ�����!")
	MisHelpTalk("<t>�Ը��ؾ��������.")
	MisResultCondition(HasMission,  1508)
	MisResultCondition(NoRecord,  1508)
	MisResultCondition(HasFlag,  1508, 14 )
	MisResultAction(ClearMission,  1508 )
	MisResultAction(SetRecord,  1508  )
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 67)	
	TriggerAction( 1, AddNextFlag,  1508 , 10,5)
	RegCurTrigger(   15081 )

	---------------------------------------------------------------------���ض�����ͽ

	DefineMission( 5094, "������ͽ", 1509 )

	MisBeginTalk( "<t>����ָ����һЩ��ͽ,������ɱ5ֻа��Ĳ�����ʿ��580,2121�����㲻��,�Ұ��������ʦ����,��Ҫ������?" )
	MisBeginCondition(NoRecord, 1509 )
	MisBeginCondition(HasRecord, 1508 )
	MisBeginCondition(NoMission, 1509 )
	MisBeginAction(AddMission,  1509)
	MisBeginAction(AddTrigger,  15091, TE_KILL, 549, 5 )----------------а��Ĳ�����
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "��ɱ���ɵ�а��Ĳ�����ʿ5ֻ������")
	MisNeed(MIS_NEED_KILL,549,5, 10, 5)

	MisResultTalk("<t>��ı��ֻ�����,���ٲ��ᱻ���ʦ����")
	MisHelpTalk("<t>Ҫ����,һ��С���겻�ɾͿ��ܱ����ʦ��.")
	MisResultCondition(HasMission,  1509)
	MisResultCondition(NoRecord,  1509)
	MisResultCondition(HasFlag,  1509, 14 )
	MisResultAction(ClearMission,  1509 )
	MisResultAction(SetRecord,  1509  )
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 549)	
	TriggerAction( 1, AddNextFlag,  1509 , 10,5)
	RegCurTrigger(   15091 )

	---------------------------------------------------------------------����������ͽ

	DefineMission( 5095, "������ͽ", 1510 )

	MisBeginTalk( "<t>��ȥ��ս6ֻ����а����Ϲ���ʿ(340,1581)" )
	MisBeginCondition(NoRecord, 1510 )
	MisBeginCondition(HasRecord, 1509 )
	MisBeginCondition(NoMission, 1510 )
	MisBeginAction(AddMission,  1510)
	MisBeginAction(AddTrigger,  15101, TE_KILL, 546, 6 )----------------а����Ϲ���ʿ
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "��ɱ����а����Ϲ���ʿ6ֻ������")
	MisNeed(MIS_NEED_KILL,546,6, 10, 6)

	MisResultTalk("<t>��������Խ��Խ����!")
	MisHelpTalk("<t>��Ҫ����ҵ����߾ͼӿ�Ų���.")
	MisResultCondition(HasMission,  1510)
	MisResultCondition(NoRecord,  1510)
	MisResultCondition(HasFlag,  1510, 15 )
	MisResultAction(ClearMission,  1510 )
	MisResultAction(SetRecord,  1510  )
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 546)	
	TriggerAction( 1, AddNextFlag,  1510 , 10,6)
	RegCurTrigger(   15101 )



---------------------------------------------------------------------���ظ߼���ͽ

	DefineMission( 5096, "�߼���ͽ", 1511 )

	MisBeginTalk( "<t>��Ҫ��Ϊ�����µĽ�����ͽ��Ҫȥ��ɱ8ֻ���ɵ�<b��Ӱ����>(450,2121)" )
	MisBeginCondition(NoRecord, 1511 )
	MisBeginCondition(HasRecord, 1510 )
	MisBeginCondition(NoMission, 1511 )
	MisBeginAction(AddMission,  1511)
	MisBeginAction(AddTrigger,  15111, TE_KILL, 201, 8 )----------------��Ӱ����
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "��ɱ���ɵİ�Ӱ����8ֻ������")
	MisNeed(MIS_NEED_KILL,201,8, 10, 8)

	MisResultTalk("<t>������ĺͼ��ܶ�ͨ���˿���.")
	MisHelpTalk("<t>���һ����ͽ�ʸ�����,��Ҫ����.")
	MisResultCondition(HasMission,  1511)
	MisResultCondition(NoRecord,  1511)
	MisResultCondition(HasFlag,  1511, 17 )
	MisResultAction(ClearMission,  1511 )
	MisResultAction(SetRecord,  1511  )
	MisResultAction(AddExp,1500000,1500000)
	MisResultAction(AddMoney,500000,500000)	
	MisResultAction(AddExpAndType,2,60000,60000)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 201)	
	TriggerAction( 1, AddNextFlag,  1511 , 10,8)
	RegCurTrigger(   15111 )


	
	---------------------------------------------------------------------��ŷ������ͽ

	DefineMission( 5097, "������ͽ", 1512 )

	MisBeginTalk( "<t>���Ǳ�Խ��Խ����,�㲻��ȥ��㲶ɱ5ֻ���������<bС����>(348,436)������" )
	MisBeginCondition(NoRecord, 1512 )
	MisBeginCondition(HasRecord, 1507 )
	MisBeginCondition(HasRecord, 1515 )
	MisBeginCondition(NoMission, 1512 )
	MisBeginAction(AddMission,  1512)
	MisBeginAction(AddTrigger,  15121, TE_KILL, 187, 5 )----------------С����
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "��ɱ5ֻ���������С��������ŷ")
	MisNeed(MIS_NEED_KILL,187,5, 10, 5)

	MisResultTalk("<t>���ܸо����������������.")
	MisHelpTalk("<t>ɱ��һֱ�����Ǽ����ܴ��ı��´�ʩ.")
	MisResultCondition(HasMission,  1512)
	MisResultCondition(NoRecord,  1512)
	MisResultCondition(HasFlag,  1512, 14 )
	MisResultAction(ClearMission,  1512 )
	MisResultAction(SetRecord,  1512  )
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 187)	
	TriggerAction( 1, AddNextFlag,  1512 , 10,5)
	RegCurTrigger(   15121 )


	---------------------------------------------------------------------��ŷ������ͽ

	DefineMission( 5098, "������ͽ", 1513 )

	MisBeginTalk( "<t>��������!��ɱ5ֻ���ɾ��ڵķ��������ˣ�561,2334��" )
	MisBeginCondition(NoRecord, 1513 )
	MisBeginCondition(HasRecord, 1512 )
	MisBeginCondition(NoMission, 1513 )
	MisBeginAction(AddMission,  1513)
	MisBeginAction(AddTrigger,  15131, TE_KILL, 543, 5 )----------------����������
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "��ɱ5ֻ���ɾ��ڵķ��������˸���ŷ")
	MisNeed(MIS_NEED_KILL,543,5, 10, 5)

	MisResultTalk("<t>���ܸо��������������������.")
	MisHelpTalk("<t>ɱ�����һֱ�����Ǽ����ܴ��ı��´�ʩ.")
	MisResultCondition(HasMission,  1513)
	MisResultCondition(NoRecord,  1513)
	MisResultCondition(HasFlag,  1513, 14 )
	MisResultAction(ClearMission,  1513 )
	MisResultAction(SetRecord,  1513  )
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 543)	
	TriggerAction( 1, AddNextFlag,  1513 , 10,5)
	RegCurTrigger(   15131 )


	---------------------------------------------------------------------��ŷ������ͽ

	DefineMission( 5099, "������ͽ", 1518 )

	MisBeginTalk( "<t>��Ҫ����!��ɱ6ֻ���ɾ��ڵ�����սʿ�ӳ�(472,2484)" )
	MisBeginCondition(NoRecord, 1518 )
	MisBeginCondition(HasRecord, 1513 )
	MisBeginCondition(NoMission, 1518 )
	MisBeginAction(AddMission,  1518)
	MisBeginAction(AddTrigger,  15181, TE_KILL, 566, 6 )----------------����սʿ�ӳ�
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "��ɱ6ֻ���ɾ��ڵ�����սʿ�ӳ�����ŷ")
	MisNeed(MIS_NEED_KILL,566,6, 10, 6)

	MisResultTalk("<t>���ܸо����������һֱ������.")
	MisHelpTalk("<t>ɱ�ֵ�ȷ�����Ǽ����ܴ��ı��´�ʩ.")
	MisResultCondition(HasMission,  1518)
	MisResultCondition(NoRecord,  1518)
	MisResultCondition(HasFlag,  1518, 15 )
	MisResultAction(ClearMission,  1518 )
	MisResultAction(SetRecord,  1518  )
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 566)	
	TriggerAction( 1, AddNextFlag,  1518 , 10,6)
	RegCurTrigger(   15181 )


	---------------------------------------------------------------------��ŷ�߼���ͽ

	DefineMission( 5100, "�߼���ͽ", 1519 )

	MisBeginTalk( "<t>���һ������!��ɱ8ֻ���ɵ�<b��������>(450,2121)" )
	MisBeginCondition(NoRecord, 1519 )
	MisBeginCondition(HasRecord, 1518 )
	MisBeginCondition(NoMission, 1519 )
	MisBeginAction(AddMission,  1519)
	MisBeginAction(AddTrigger,  15191, TE_KILL, 511, 8)----------------��������
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "��ɱ8ֻ���ɾ��ڵľ������˸���ŷ")
	MisNeed(MIS_NEED_KILL,511,8, 10, 8)

	MisResultTalk("<t>��ϲ������ڲ��ص����ڱ��Ǳ���ð,���ҳ�Ϊ�ҵĽ�����ͽ.")
	MisHelpTalk("<t>��Ҫ�������Ǽ����ܴ��ı��´�ʩ.")
	MisResultCondition(HasMission,  1519)
	MisResultCondition(NoRecord,  1519)
	MisResultCondition(HasFlag,  1519, 17 )
	MisResultAction(ClearMission,  1519 )
	MisResultAction(SetRecord,  1519  )
	MisResultAction(AddExp,1500000,1500000)
	MisResultAction(AddMoney,500000,500000)	
	MisResultAction(AddExpAndType,2,60000,60000)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 511)	
	TriggerAction( 1, AddNextFlag,  1519 , 10,8)
	RegCurTrigger(   15191 )

	---------------------------------------------------------------------�׶�������ͽ

	DefineMission( 5101, "������ͽ", 1520 )

	MisBeginTalk( "<t>�����������Ͷ�߼��ɵ�<bа��Ĳ�����ʿ>(580,2121)��ò��ªӰ������,�����Ҵ�����ٸ����㻷��սʿ�����,ȥ��������." )
	MisBeginCondition(NoRecord, 1520 )
	MisBeginCondition(HasRecord, 1507 )
	MisBeginCondition(HasRecord, 1517)
	MisBeginCondition(NoMission, 1520 )
	MisBeginAction(AddMission,  1520)
	MisBeginAction(AddTrigger,  15201, TE_KILL, 549, 5 )----------------а��Ĳ�����ʿ
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "��ɱ5ֻ���ɾ��ڵ�а��Ĳ�����ʿ���׶�����")
	MisNeed(MIS_NEED_KILL,549,5, 10, 5)

	MisResultTalk("<t>��Ȼ���ó������ǵĴ�,���������˾������ǵĲ�����.")
	MisHelpTalk("<t>����ɱ��Ҫ����Ŷ.")
	MisResultCondition(HasMission,  1520)
	MisResultCondition(NoRecord,  1520)
	MisResultCondition(HasFlag,  1520, 14 )
	MisResultAction(ClearMission,  1520 )
	MisResultAction(SetRecord,  1520  )

	InitTrigger()
	TriggerCondition( 1, IsMonster, 549)	
	TriggerAction( 1, AddNextFlag,  1520 , 10,5)
	RegCurTrigger(   15201 )



---------------------------------------------------------------------�׶�������ͽ

	DefineMission( 5102, "������ͽ", 1521 )

	MisBeginTalk( "<t>�Һܿ�����ħŮ������<bħŮ����>��1014,2550������Ϊ��Ư����̬��,��!�ѵ������Ư��?ɱ2ֻ������ǵ�����" )
	MisBeginCondition(NoRecord, 1521 )
	MisBeginCondition(HasRecord, 1520 )
	MisBeginCondition(NoMission, 1521 )
	MisBeginAction(AddMission,  1521)
	MisBeginAction(AddTrigger,  15211, TE_KILL, 587, 2 )----------------
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "��ɱ2ֻħŮ������ħŮ�������׶�����")
	MisNeed(MIS_NEED_KILL,587,2, 10, 2)

	MisResultTalk("<t>��ǰ;��")
	MisHelpTalk("<t>Ŷ.......")
	MisResultCondition(HasMission,  1521)
	MisResultCondition(NoRecord,  1521)
	MisResultCondition(HasFlag,  1521, 11 )
	MisResultAction(ClearMission,  1521 )
	MisResultAction(SetRecord,  1521  )
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 587)	
	TriggerAction( 1, AddNextFlag,  1521 , 10,2)
	RegCurTrigger(   15211 )



	---------------------------------------------------------------------�׶�������ͽ

	DefineMission( 5103, "������ͽ", 1522 )

	MisBeginTalk( "<t>ħŮ�����ı�������Ⱥ����<b��������>(1038,2317)����Ҫ�����ǵĽ��ñ���,ѹ��ס���������뷨" )
	MisBeginCondition(NoRecord, 1522 )
	MisBeginCondition(HasRecord, 1521 )
	MisBeginCondition(NoMission, 1522 )
	MisBeginAction(AddMission,  1522)
	MisBeginAction(AddTrigger,  15221, TE_KILL, 606, 3 )----------------
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "��ɱ3ֻ����Ⱥ���������������׶�����")
	MisNeed(MIS_NEED_KILL,606,3, 10, 3)

	MisResultTalk("<t>��˭��������ǰ��ҫ������")
	MisHelpTalk("<t>ɱ�����������㲻Ҫ��������.")
	MisResultCondition(HasMission,  1522)
	MisResultCondition(NoRecord,  1522)
	MisResultCondition(HasFlag,  1522, 12 )
	MisResultAction(ClearMission,  1522 )
	MisResultAction(SetRecord,  1522  )
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 606)	
	TriggerAction( 1, AddNextFlag,  1522 , 10,3)
	RegCurTrigger(   15221 )

---------------------------------------------------------------------�׶��߼���ͽ

	DefineMission( 5104, "�߼���ͽ", 1523 )

	MisBeginTalk( "<t>�������ܹ����������ĺ�������������,�Ҿ���������һ������:�Ʒ�8����������ϲ�һ�������ҫ��ĳ�������,�����ǿ�������Ŷ,�Ժ�����������ӻ���û졭��" )
	MisBeginCondition(NoRecord, 1523 )
	MisBeginCondition(HasRecord, 1522 )
	MisBeginCondition(NoMission, 1523 )
	MisBeginAction(AddMission,  1523)
	MisBeginAction(AddTrigger,  15231, TE_KILL, 735, 8 )----------------
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "��ɱ8���ﵺ�ĺ�������ϲ(2799,3010)���׶����� ")
	MisNeed(MIS_NEED_KILL,735,8, 10,8)

	MisResultTalk("<t>��ϲ���Ϊ����ٵĽ�����ͽ!")
	MisHelpTalk("<t>��˵��Ư��,��ʵû����ô������......")
	MisResultCondition(HasMission,  1523)
	MisResultCondition(NoRecord,  1523)
	MisResultCondition(HasFlag,  1523, 17 )
	MisResultAction(ClearMission,  1523 )
	MisResultAction(SetRecord,  1523  )
	MisResultAction(AddExp,1500000,1500000)
	MisResultAction(AddMoney,500000,500000)	
	MisResultAction(AddExpAndType,2,60000,60000)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 735)	
	TriggerAction( 1, AddNextFlag,  1523 , 10,8)
	RegCurTrigger(   15231 )


---------------------------------------------------------------------�Ƕ�������ͽ

	DefineMission( 5105, "������ͽ", 1524 )

	MisBeginTalk( "<t>�����ں������ల�ŵ���,�����������½̫Զ�޷�ͨ��.��˵�������Ǽ��ܹ���������Ⲩ,�㲻��ȥħŮ���������͵Ĺ��㣨900,1308�������ҵ�2ö����" )
	MisBeginCondition(NoRecord, 1524 )
	MisBeginCondition(HasRecord, 1516 )
	MisBeginCondition(HasRecord, 1507 )
	MisBeginCondition(NoMission, 1524 )
	MisBeginAction(AddMission,  1524)
	MisBeginAction(AddTrigger,  15241, TE_GETITEM, 1350, 2 )----------------
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "�ռ��������Ǽ�2ö���Ƕ����� ")
	MisNeed(MIS_NEED_ITEM,1350,2, 10, 2)

	MisResultTalk("<t>���к��ϵ����߶���м�������")
	MisHelpTalk("<t>��������ʣ��,�һ��������������͸�����,�Ǻ�!")
	MisResultCondition(HasMission,  1524)
	MisResultCondition(NoRecord,  1524)
	MisResultCondition(HasItem, 1350, 2)
	MisResultAction(TakeItem,  1350, 2 )
	MisResultAction(ClearMission,  1524 )
	MisResultAction(SetRecord,  1524  )
	
	InitTrigger()
	TriggerCondition( 1, IsItem,1350)	
	TriggerAction( 1, AddNextFlag, 1524, 10, 2 )
	RegCurTrigger( 15241 )

	---------------------------------------------------------------------�Ƕ�������ͽ

	DefineMission( 5106, "������ͽ", 1525 )

	MisBeginTalk( "<t>����һ������,�ҿɲ�ϣ����Щ���ϵĹ���Ҳ�������ֹ�,���ǻ�ѭ�Ź���ڵ�����������������ֻ.���ܲ����ҵ��������ε����ֲ������<bħŮ��֮�ᾧ>." )
	MisBeginCondition(NoRecord, 1525 )
	MisBeginCondition(HasRecord, 1524 )
	MisBeginCondition(NoMission, 1525 )
	MisBeginAction(AddMission,  1525)
	MisBeginAction(AddTrigger,  15251, TE_GETITEM, 1295, 2 )----------------
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "��ħŮ������ħŮ����(1014,2550)�����ҵ�ħŮ��֮�ᾧ2����Ƕ����� ")
	MisNeed(MIS_NEED_ITEM,1295,2, 10, 2)

	MisResultTalk("<t>�Ը����־�Ҫ�����ֵĶ������������......����......�Ǻǣ���˵��Щ�ˣ�лл��")
	MisHelpTalk("<t>��ʵ�ǲ�Ӧ�����ɱ�ֵģ��Ͼ�����Ҳ��Ϊ�����棬�˺������������ģ��������������ģ���������������.......")
	MisResultCondition(HasMission,  1525)
	MisResultCondition(NoRecord,  1525)
	MisResultCondition(HasItem, 1295, 2)
	MisResultAction(TakeItem,  1295, 2 )
	MisResultAction(ClearMission,  1525 )
	MisResultAction(SetRecord,  1525  )
	
	InitTrigger()
	TriggerCondition( 1, IsItem,1295)	
	TriggerAction( 1, AddNextFlag, 1525, 10, 2 )
	RegCurTrigger( 15251 )



---------------------------------------------------------------------�Ƕ�������ͽ

	DefineMission( 5107, "������ͽ", 1526 )

	MisBeginTalk( "<t>��������������,ʹ�Ҳ����˶��㽵�Ϳ����Ѷȵľ���,��99�����������,��Ҫե��֭��." )
	MisBeginCondition(NoRecord, 1526 )
	MisBeginCondition(HasRecord, 1525 )
	MisBeginCondition(NoMission, 1526 )
	MisBeginAction(AddMission,  1526)
	MisBeginAction(AddTrigger,  15261, TE_GETITEM, 3116, 99 )----------------
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "�Ӿ��������õ�99����������Ƕ����� ")
	MisNeed(MIS_NEED_ITEM,3116,99, 10, 99)

	MisResultTalk("<t>��˵�����ֹ�֭���Գ������ϣ���Ҫ�⴫Ŷ")
	MisHelpTalk("<t>��ҪС���������Ŷ")
	MisResultCondition(HasMission,  1526)
	MisResultCondition(NoRecord,  1526)
	MisResultCondition(HasItem, 3116, 99)
	MisResultAction(TakeItem,  3116, 99 )
	MisResultAction(ClearMission,  1526 )
	MisResultAction(SetRecord,  1526  )
	
	InitTrigger()
	TriggerCondition( 1, IsItem,3116)	
	TriggerAction( 1, AddNextFlag, 1526, 10, 99 )
	RegCurTrigger( 15261 )


	---------------------------------------------------------------------�Ƕ��߼���ͽ

	DefineMission( 5108, "�߼���ͽ", 1527 )

	MisBeginTalk( "<t>������ĺ������Ѿ��õ���֤��,������ȥ֤�����������,<b����Ӻ�����ͻ����>����ıȽϽ�˶,�㲻����������,����<r����Ӻ���ͻ���ֻռ�>�����������." )
	MisBeginCondition(NoRecord, 1527 )
	MisBeginCondition(HasRecord, 1526 )
	MisBeginCondition(NoMission, 1527 )
	MisBeginAction(AddMission,  1527)
	MisBeginAction(AddTrigger,  15271, TE_GETITEM, 4802, 1 )----------------
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "�Ӻ���Ӻ�����ͻ�������ϵõ�1������Ӻ���ͻ���ֻռǸ��Ƕ����� ")
	MisNeed(MIS_NEED_ITEM,4802,1, 10, 1)

	MisResultTalk("<t>��ϲ���ΪСɽ���Ľ�����ͽ")
	MisHelpTalk("<t>��ܵ��˵�ȻҪ�õ�����������������ŷ�")
	MisResultCondition(HasMission,  1527)
	MisResultCondition(NoRecord,  1527)
	MisResultCondition(HasItem, 4802, 1)
	MisResultAction(TakeItem,  4802, 1 )
	MisResultAction(ClearMission,  1527 )
	MisResultAction(SetRecord,  1527  )
	MisResultAction(AddExp,1500000,1500000)
	MisResultAction(AddMoney,500000,500000)	
	MisResultAction(AddExpAndType,2,60000,60000)

	InitTrigger()
	TriggerCondition( 1, IsItem,4802)	
	TriggerAction( 1, AddNextFlag, 1527, 10, 1 )
	RegCurTrigger( 15271 )

-------------------------------------------------------�ϸ����ͽ--------����
	DefineMission( 5109, "�ϸ����ͽ", 1528 )

	MisBeginTalk( "<t>���Ѿ����Һϸ����ͽ,ȥ�Ұ������̻�᳤�����׵���˹��" )
	MisBeginCondition(NoRecord,1528)
	MisBeginCondition(HasRecord, 1511)
	MisBeginCondition(NoMission, 1528 )
	MisBeginAction(AddMission, 1528 )
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "<t>ȥ�Ұ������̻�᳤�����׵���˹����")
	MisHelpTalk("<t>�������̻�᳤�����׵���˹��(2242,2748)")
	MisResultCondition(AlwaysFailure)



--------------------------------------------------------�ϸ����ͽ
	DefineMission( 5110, "�ϸ����ͽ", 1528,COMPLETE_SHOW )----------�������̻�᳤�����׵���˹
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>����µ�Ч�������к����ʼ�!")
	MisResultCondition(NoRecord, 1528)
	MisResultCondition(HasMission, 1528)
	MisResultAction(ClearMission,1528)
	MisResultAction(SetRecord, 1528)
	MisResultAction(SetRecord, 1577)-------------
	

-------------------------------------------------------�ϸ����ͽ--------��ŷ
	DefineMission( 5111, "�ϸ����ͽ", 1529 )

	MisBeginTalk( "<t>���Ѿ����Һϸ����ͽ,ȥ�Ұ������̻�᳤�����׵���˹��" )
	MisBeginCondition(NoRecord,1529)
	MisBeginCondition(HasRecord, 1519)
	MisBeginCondition(NoMission, 1529 )
	MisBeginAction(AddMission, 1529 )
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "<t>ȥ�Ұ������̻�᳤�����׵���˹����")
	MisHelpTalk("<t>�������̻�᳤�����׵���˹��(2242,2748)")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------�ϸ����ͽ
	DefineMission( 5112, "�ϸ����ͽ", 1529,COMPLETE_SHOW )------�������̻�᳤�����׵���˹(2242,2748)
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>����µ�Ч�������к����ʼ�!")
	MisResultCondition(NoRecord, 1529)
	MisResultCondition(HasMission, 1529)
	MisResultAction(ClearMission,1529)
	MisResultAction(SetRecord, 1529)
	MisResultAction(SetRecord, 1577)-------------


	-------------------------------------------------------�ϸ����ͽ--------�׶�
	DefineMission( 5113, "�ϸ����ͽ", 1530 )

	MisBeginTalk( "<t>���Ѿ��Ǵ���ٵĺϸ���ͽ��,ȥ�Ұ������̻�᳤�����׵���˹��" )
	MisBeginCondition(NoRecord,1530)
	MisBeginCondition(HasRecord, 1523)
	MisBeginCondition(NoMission, 1530 )
	MisBeginAction(AddMission, 1530 )
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "<t>ȥ�Ұ������̻�᳤�����׵���˹����")
	MisHelpTalk("<t>�������̻�᳤�����׵���˹��(2242,2748)")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------�ϸ����ͽ
	DefineMission( 5114, "�ϸ����ͽ", 1530,COMPLETE_SHOW )------���׵���˹
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>����µ�Ч�������к����ʼ�!")
	MisResultCondition(NoRecord, 1530)
	MisResultCondition(HasMission, 1530)
	MisResultAction(ClearMission,1530)
	MisResultAction(SetRecord, 1530)
	MisResultAction(SetRecord, 1577)-------------

	-------------------------------------------------------�ϸ����ͽ--------�Ƕ�
	DefineMission( 5115, "�ϸ����ͽ", 1531 )

	MisBeginTalk( "<t>���Ѿ���Сɽ�������ϸ����ͽ,ȥ�����׵���˹��" )
	MisBeginCondition(NoRecord,1531)
	MisBeginCondition(HasRecord, 1527)
	MisBeginCondition(NoMission, 1531 )
	MisBeginAction(AddMission, 1531 )
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "<t>ȥ�Ұ������̻�᳤�����׵���˹����")
	MisHelpTalk("<t>�������̻�᳤�����׵���˹��(2242,2748)")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------�ϸ����ͽ
	DefineMission( 5116, "�ϸ����ͽ", 1531,COMPLETE_SHOW )------���׵���˹
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>����µ�Ч�������к����ʼɣ�")
	MisResultCondition(NoRecord, 1531)
	MisResultCondition(HasMission, 1531)
	MisResultAction(ClearMission,1531)
	MisResultAction(SetRecord, 1531)
	MisResultAction(SetRecord, 1577)-------------

-------------------------------------------------------ΰ�������----------���ö�
	DefineMission( 5117, "ΰ�������", 1532 )

	MisBeginTalk( "<t>��ȥ��8��������˻��һЩ��ɽ���ֵ���ʾ���Ϳ��Ի���������" )
	MisBeginCondition(NoRecord,1532)
	MisBeginCondition(HasRecord, 1505)
	MisBeginCondition(NoMission, 1532 )
	MisBeginAction(AddMission, 1532 )
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "<t>��ȥ�Ұ����� <r��װ����������>(2265,2704)")
	MisHelpTalk("<t>ǧ��Ҫ����Щ���˹�����������������ⷢ��")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------ΰ�������
	DefineMission( 5118, "ΰ�������", 1532,COMPLETE_SHOW )-------------��װ����������
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>�ҵ���ʵ�����<bˮ��>������......")
	MisResultCondition(NoRecord, 1532)
	MisResultCondition(HasMission, 1532)
	MisResultAction(ClearMission,1532)
	MisResultAction(SetRecord, 1532)



---------------------------------------------------------------------һ����

	DefineMission( 5119, "һ����", 1533 )

	MisBeginTalk( "<t>ˮ���ָʾ��ңԶ�İ����ţ������������һ���Ž�����Ŀ����." )------��װ����������
	MisBeginCondition(NoRecord, 1533 )
	MisBeginCondition(HasRecord, 1532 )
	MisBeginCondition(NoMission, 1533 )
	MisBeginAction(AddMission,  1533)
	MisBeginAction(AddTrigger,  15331, TE_KILL, 642, 2 )----------------���͵Ĺ���
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "��ɱ2ֻħŮ�������͵Ĺ���(900,1308)����װ����������")
	MisNeed(MIS_NEED_KILL,642,2, 10, 2)

	MisResultTalk("<t>��ˮ�ĵط�����ˮ������ף��.")
	MisHelpTalk("<t>ע�Ᵽ���ҵ����.")
	MisResultCondition(HasMission,  1533)
	MisResultCondition(NoRecord,  1533)
	MisResultCondition(HasFlag,  1533, 11 )
	MisResultAction(ClearMission,  1533 )
	MisResultAction(SetRecord,  1533  )
	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 642)	
	TriggerAction( 1, AddNextFlag,  1533 , 10,2)
	RegCurTrigger(   15331 )


-------------------------------------------------------���һ����------------��װ����������
	DefineMission( 5120, "���һ����", 1534 )

	MisBeginTalk( "<t>��ȥ�ұ�������վ��<b��������ʦ(2664,654)>��" )
	MisBeginCondition(NoRecord,1534)
	MisBeginCondition(HasRecord, 1533)
	MisBeginCondition(NoMission, 1534 )
	MisBeginAction(AddMission, 1534 )
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "<t>ȥ�ұ�������վ�Ŀ�������ʦ(2664,654)")
	MisHelpTalk("<t>������Ŀ����û����������ô��")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------���һ����
	DefineMission( 5121, "���һ����", 1534,COMPLETE_SHOW )-------------��������ʦ
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>���Ѿ��ڲ�֪�����������˽ӽ���ĵ�·.")
	MisResultCondition(NoRecord, 1534)
	MisResultCondition(HasMission, 1534)
	MisResultAction(ClearMission,1534)
	MisResultAction(SetRecord, 1534)

---------------------------------------------------------------------������

	DefineMission( 5122, "������", 1535 )

	MisBeginTalk( "<t>һ����ֻ��СС������,�����.��������<r����>���˵�������ŵĿ���." )------��������ʦ
	MisBeginCondition(NoRecord, 1535 )
	MisBeginCondition(HasRecord, 1534 )
	MisBeginCondition(NoMission, 1535 )
	MisBeginAction(AddMission,  1535)
	MisBeginAction(AddTrigger,  15351, TE_KILL, 652, 2 )----------------���͵ı�ʯ����
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "��ɱ2ֻħŮ�������͵ı�ʯ����(866,2171)����������ʦ")
	MisNeed(MIS_NEED_KILL,652,2, 10, 2)

	MisResultTalk("<t>�л��ֵĵط�,���л������ľ��.")
	MisHelpTalk("<t>ע�Ᵽ���ҵ����.")
	MisResultCondition(HasMission,  1535)
	MisResultCondition(NoRecord,  1535)
	MisResultCondition(HasFlag,  1535, 11 )
	MisResultAction(ClearMission,  1535 )
	MisResultAction(SetRecord,  1535  )
	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 652)	
	TriggerAction( 1, AddNextFlag,  1535 , 10,2)
	RegCurTrigger(   15351 )


-------------------------------------------------------��������------------��������ʦ
	DefineMission( 5123, "��������", 1536 )

	MisBeginTalk( "<t>��ȥ��ɳȪ����վ��<b����(789,3112)>��" )
	MisBeginCondition(NoRecord,1536)
	MisBeginCondition(HasRecord, 1535)
	MisBeginCondition(NoMission, 1536 )
	MisBeginAction(AddMission, 1536 )
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "<t>ȥ��ɳȪ����վ��<b����(789,3112)>")
	MisHelpTalk("<t>ף�����ܹ�ͨ��������")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------��������
	DefineMission( 5124, "��������", 1536,COMPLETE_SHOW )-------------����
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>����ǰ����,������ͨ��.")
	MisResultCondition(NoRecord, 1536)
	MisResultCondition(HasMission, 1536)
	MisResultAction(ClearMission,1536)
	MisResultAction(SetRecord, 1536)

---------------------------------------------------------------------������

	DefineMission( 5125, "������", 1537 )

	MisBeginTalk( "<t>����<b����>������,���������²�����ս." )------����
	MisBeginCondition(NoRecord, 1537 )
	MisBeginCondition(HasRecord, 1536 )
	MisBeginCondition(NoMission, 1537 )
	MisBeginAction(AddMission,  1537)
	MisBeginAction(AddTrigger,  15371, TE_KILL, 587, 2 )----------------���͵ı�ʯ����
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "��ɱ2ֻħŮ����ħŮ����(1014,2550)������")
	MisNeed(MIS_NEED_KILL,587,2, 10, 2)

	MisResultTalk("<t>����紵�����ͷ��,�����,�Ƿ���İ���")
	MisHelpTalk("<t>ע�Ᵽ���ҵ����.")
	MisResultCondition(HasMission,  1537)
	MisResultCondition(NoRecord,  1537)
	MisResultCondition(HasFlag,  1537, 11 )
	MisResultAction(ClearMission,  1537 )
	MisResultAction(SetRecord,  1537  )
	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 587)	
	TriggerAction( 1, AddNextFlag,  1537 , 10,2)
	RegCurTrigger(   15371 )


-------------------------------------------------------���������------------����
	DefineMission( 5126, "���������", 1538 )

	MisBeginTalk( "<t>��ȥ����Ӫ�ز���վ��<b��˾(2138,545)>�ǰ�" )
	MisBeginCondition(NoRecord,1538)
	MisBeginCondition(HasRecord, 1537)
	MisBeginCondition(NoMission, 1538 )
	MisBeginAction(AddMission, 1538 )
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "<t>ȥ������Ӫ�ز���վ��<b��˾(2138,545)>")
	MisHelpTalk("<t>�¸ҵ���������Ű�.")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------���������
	DefineMission( 5127, "���������", 1538,COMPLETE_SHOW )-------------��˾
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>��ʿ,�����ſɲ������������ô�򵥰�.")
	MisResultCondition(NoRecord, 1538)
	MisResultCondition(HasMission, 1538)
	MisResultAction(ClearMission,1538)
	MisResultAction(SetRecord, 1538)



---------------------------------------------------------------------������

	DefineMission( 5128, "������", 1539 )

	MisBeginTalk( "<t>�ҵ����������<b����>���ĸ�,��!��ϲ�㴳��������,����һ�غ����׵�." )------��˾
	MisBeginCondition(NoRecord, 1539 )
	MisBeginCondition(HasRecord, 1538 )
	MisBeginCondition(NoMission, 1539 )
	MisBeginAction(AddMission,  1539)
	MisBeginAction(AddTrigger,  15391, TE_KILL, 570, 5 )----------------����Ӻ�����ս��Ա
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "��ɱ5������Ⱥ������Ӻ�����ս��Ա(1588,1708)����˾")
	MisNeed(MIS_NEED_KILL,570,5, 10, 5)

	MisResultTalk("<t>���֮��,����鲼.���������Ľ�ɫ!")
	MisHelpTalk("<t>ע�Ᵽ���ҵ����.")
	MisResultCondition(HasMission,  1539)
	MisResultCondition(NoRecord,  1539)
	MisResultCondition(HasFlag,  1539, 14 )
	MisResultAction(ClearMission,  1539 )
	MisResultAction(SetRecord,  1539  )
	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 570)	
	TriggerAction( 1, AddNextFlag,  1539 , 10,5)
	RegCurTrigger(   15391 )


-------------------------------------------------------���������------------��˾
	DefineMission( 5129, "���������", 1540 )

	MisBeginTalk( "<t>��ȥ����������<b��ҽ����ɳ(773,1549)>" )
	MisBeginCondition(NoRecord,1540)
	MisBeginCondition(HasRecord, 1539)
	MisBeginCondition(NoMission, 1540 )
	MisBeginAction(AddMission, 1540 )
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "<t>ȥ����������<b��ҽ����ɳ(773,1549)>")
	MisHelpTalk("<t>�Ͽ��߰�,��Լ����һ��ȥ��ɳ��.")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------���������
	DefineMission( 5130, "���������", 1540,COMPLETE_SHOW )-------------��ҽ����ɳ
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>��ӭ��ս������!")
	MisResultCondition(NoRecord, 1540)
	MisResultCondition(HasMission, 1540)
	MisResultAction(ClearMission,1540)
	MisResultAction(SetRecord, 1540)


---------------------------------------------------------------------������

	DefineMission( 5131, "������", 1541 )

	MisBeginTalk( "<t>2088��ĵ�һ��ѩ����������Ҫ��һЩ,������<bѩ��>�������˵Ķ���Ԥ��." )------��ҽ����ɳ
	MisBeginCondition(NoRecord, 1541 )
	MisBeginCondition(HasRecord, 1540 )
	MisBeginCondition(NoMission, 1541 )
	MisBeginAction(AddMission,  1541)
	MisBeginAction(AddTrigger,  15411, TE_KILL, 589, 2 )----------------��������
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "��ɱ2ֻ����Ⱥ����������(3634,3808)����ҽ����ɳ")
	MisNeed(MIS_NEED_KILL,589,2, 10, 2)

	MisResultTalk("<t>�ӡ���Ȼ����������?!")
	MisHelpTalk("<t>ע�Ᵽ���ҵ����.")
	MisResultCondition(HasMission,  1541)
	MisResultCondition(NoRecord,  1541)
	MisResultCondition(HasFlag,  1541, 11 )
	MisResultAction(ClearMission,  1541 )
	MisResultAction(SetRecord,  1541  )
	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 589)	
	TriggerAction( 1, AddNextFlag,  1541 , 10,2)
	RegCurTrigger(   15411 )


-------------------------------------------------------���������------------��ҽ����ɳ
	DefineMission( 5132, "���������", 1542 )

	MisBeginTalk( "<t>Ф�в���վ��<b����˹(136,3432)>�ڵ���!" )
	MisBeginCondition(NoRecord,1542)
	MisBeginCondition(HasRecord, 1541)
	MisBeginCondition(NoMission, 1542 )
	MisBeginAction(AddMission, 1542 )
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "<t>ȥ��Ф�в���վ��<b����˹(136,3432)>")
	MisHelpTalk("<t>����˹��æ,����һ��ͻ�������.")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------���������
	DefineMission( 5133, "���������", 1542,COMPLETE_SHOW )-------------����˹
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>��������Ȱ��������ò�Ҫ������,������һ����ܵ��ͷ���!�ǵ��������ʱ����ܱ�������ë�ε���,�����ұ�����ץס���չ�����ë,������......")
	MisResultCondition(NoRecord, 1542)
	MisResultCondition(HasMission, 1542)
	MisResultAction(ClearMission,1542)
	MisResultAction(SetRecord, 1542)

---------------------------------------------------------------------������

	DefineMission( 5134, "������", 1543 )

	MisBeginTalk( "<t><r����>���ҵ�����,�����ǵ�������.���������ɱ6ֻ��į֮��1��İ���è." )------����˹
	MisBeginCondition(NoRecord, 1543 )
	MisBeginCondition(HasRecord, 1542 )
	MisBeginCondition(NoMission, 1543 )
	MisBeginAction(AddMission,  1543)
	MisBeginAction(AddTrigger,  15431, TE_KILL, 36, 6 )----------------����è
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "��ɱ6ֻ��į֮��1��İ���è������˹")
	MisNeed(MIS_NEED_KILL,36,6, 10, 6)

	MisResultTalk("<t>�ұ�֤����ŭ��ʱ������һ��,�����ܿ���.")
	MisHelpTalk("<t>ע�Ᵽ���ҵ����.")
	MisResultCondition(HasMission,  1543)
	MisResultCondition(NoRecord,  1543)
	MisResultCondition(HasFlag,  1543, 15 )
	MisResultAction(ClearMission,  1543 )
	MisResultAction(SetRecord,  1543  )
	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 36)	
	TriggerAction( 1, AddNextFlag,  1543 , 10,6)
	RegCurTrigger(   15431 )

-------------------------------------------------------���������------------����˹
	DefineMission( 5135, "���������", 1544 )

	MisBeginTalk( "<t>�����ҵ�ף��ȥ�Ұ�����˹����վ��<b���(1037,671)>��!" )
	MisBeginCondition(NoRecord,1544)
	MisBeginCondition(HasRecord, 1543)
	MisBeginCondition(NoMission, 1544 )
	MisBeginAction(AddMission, 1544 )
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "<t>ȥ�Ұ�����˹����վ��<b���(1037,671)>")
	MisHelpTalk("<t>ȼ����������.")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------���������
	DefineMission( 5136, "���������", 1544,COMPLETE_SHOW )-------------���
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>���˵�����,Ҳ��һ����!")
	MisResultCondition(NoRecord, 1544)
	MisResultCondition(HasMission, 1544)
	MisResultAction(ClearMission,1544)
	MisResultAction(SetRecord, 1544)

---------------------------------------------------------------------������

	DefineMission( 5137, "������", 1545 )

	MisBeginTalk( "<t>����<y����>��ˡ����,�����Ų�����Ϸ�Ŀ�ʼ." )------���
	MisBeginCondition(NoRecord, 1545 )
	MisBeginCondition(HasRecord, 1544 )
	MisBeginCondition(NoMission, 1545 )
	MisBeginAction(AddMission,  1545)
	MisBeginAction(AddTrigger,  15451, TE_KILL, 263, 7 )----------------�ؾ�սʿ��
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "��ɱ7ֻɳ�ߵĵؾ�սʿ��(1392,3066)�����")
	MisNeed(MIS_NEED_KILL,263,7, 10, 7)

	MisResultTalk("<t>������Ҳ���Ǻ�һ��.")
	MisHelpTalk("<t>ע�Ᵽ���ҵ����.")
	MisResultCondition(HasMission,  1545)
	MisResultCondition(NoRecord,  1545)
	MisResultCondition(HasFlag,  1545, 16 )
	MisResultAction(ClearMission,  1545 )
	MisResultAction(SetRecord,  1545  )
	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 263)	
	TriggerAction( 1, AddNextFlag,  1545 , 10,7)
	RegCurTrigger(   15451 )

-------------------------------------------------------���������------------���
	DefineMission( 5138, "���������", 1546 )

	MisBeginTalk( "<t>ȥ�����ò���վ��<b�մ�(515,2437)>�ǰ�." )
	MisBeginCondition(NoRecord,1546)
	MisBeginCondition(HasRecord, 1545)
	MisBeginCondition(NoMission, 1546 )
	MisBeginAction(AddMission, 1546 )
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "<t>ȥ�����ò���վ��<b�մ�(515,2437)>")
	MisHelpTalk("<t>������,����Ԥ����һ���ܹ�ͨ��������.")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------���������
	DefineMission( 5139, "���������", 1546,COMPLETE_SHOW )-------------�մ�
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>���ݺͰ����������������!")
	MisResultCondition(NoRecord, 1546)
	MisResultCondition(HasMission, 1546)
	MisResultAction(ClearMission,1546)
	MisResultAction(SetRecord, 1546)

---------------------------------------------------------------------������

	DefineMission( 5140, "������", 1547 )

	MisBeginTalk( "<t>������<b����>�ĵڰ�����,������������Ǹ���." )------�մ�
	MisBeginCondition(NoRecord, 1547 )
	MisBeginCondition(HasRecord, 1546 )
	MisBeginCondition(NoMission, 1547 )
	MisBeginAction(AddMission,  1547)
	MisBeginAction(AddTrigger,  15471, TE_KILL, 808, 8 )----------------����ʿ��
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "��ɱ8ֻ���ձ�����ʿ�����մ�")
	MisNeed(MIS_NEED_KILL,808,8, 10,8)

	MisResultTalk("<t>����Ŭ���������Ҷ������.��������Ķ���,���ð�����������������ĸ���.")
	MisHelpTalk("<t>����Ӧ���ں������ء�������ͷ����.")
	MisResultCondition(HasMission,  1547)
	MisResultCondition(NoRecord,  1547)
	MisResultCondition(HasFlag,  1547, 17 )
	MisResultAction(ClearMission,  1547 )
	MisResultAction(SetRecord,  1547  )
	MisResultAction(AddExp,3000000,3000000)
	MisResultAction(AddMoney,1000000,1000000)	
	MisResultAction(AddExpAndType,2,120000,120000)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 808)	
	TriggerAction( 1, AddNextFlag,  1547 , 10,8)
	RegCurTrigger(   15471 )

-------------------------------------------------------�ս��ŵ�ָʾ------------�մ�
	DefineMission( 5141, "�ս��ŵ�ָʾ", 1548 )

	MisBeginTalk( "<t>����һ��<r����>,�û�ȥ�����ö�Ҫ�𰸰�." )
	MisBeginCondition(NoRecord,1548)
	MisBeginCondition(HasRecord, 1547)
	MisBeginCondition(NoMission, 1548 )
	MisBeginAction(AddMission, 1548 )
	MisBeginAction(GiveItem, 2917,1,4)----------------------------------------------------����
	MisCancelAction(SystemNotice, "�������޷��ж�")
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "<t>��������ȥ�����ö�")
	MisHelpTalk("<t>�������ľ��ȥ�Ҵ𰸰�.")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------�ս��ŵ�ָʾ
	DefineMission( 5142, "�ս��ŵ�ָʾ", 1548,COMPLETE_SHOW )-------------���ö�
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>�ܵõ�����˵�����������ܶೣ���޿��ܼ���Ŭ��.")
	MisResultCondition(NoRecord, 1548)
	MisResultCondition(HasMission, 1548)
	MisResultCondition(HasItem,2917,1)--------------����
	MisResultAction(TakeItem, 2917,1)-------------����
	MisResultAction(ClearMission,1548)
	MisResultAction(SetRecord, 1548)

	---------------------------------------------------------------------������������

	DefineMission( 5143, "������������", 1549 )

	MisBeginTalk( "<t>ÿ����ɫ�ĺ���������ò���ǻ۲���,����������������.����ҽ������������֤���Լ�������������." )------������
	MisBeginCondition(NoRecord, 1549 )
	MisBeginCondition(HasRecord, 1506 )
	MisBeginCondition(NoMission, 1549 )
	MisBeginAction(AddMission,  1549)
	MisBeginAction(AddTrigger,  15491, TE_KILL, 546, 10 )----------------а����Ϲ���ʿ
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "��ɱ10ֻ���ɴ�½��а����Ϲ���ʿ(340,1581)��������")
	MisNeed(MIS_NEED_KILL,546,10, 10,10)

	MisResultTalk("<t>��.")
	MisHelpTalk("<t>��Ҫ�������ǵ��Ϲ�ͷŶ......")
	MisResultCondition(HasMission,  1549)
	MisResultCondition(NoRecord,  1549)
	MisResultCondition(HasFlag,  1549, 19 )
	MisResultAction(ClearMission,  1549 )
	MisResultAction(SetRecord,  1549  )
	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 546)	
	TriggerAction( 1, AddNextFlag,  1549 , 10,10)
	RegCurTrigger(   15491 )



---------------------------------------------------------------------������������

	DefineMission( 5144, "������������", 1550 )

	MisBeginTalk( "<t>��Ȼ���Ǹ����̵�,������һֱ������Ϊά����Ȩ����Ů��Ӣ����ʿ,�Ǹ�...��ɲ�����Ϊ�Ҷ�ȡ2�Ѵ�˵�е�<b�����彣>." )------������
	MisBeginCondition(NoRecord, 1550 )
	MisBeginCondition(HasRecord, 1549 )
	MisBeginCondition(NoMission, 1550 )
	MisBeginAction(AddMission,  1550)
	MisBeginAction(AddTrigger,  15501, TE_GETITEM, 4893, 2 )----------------�����彣
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "��ȡ2�Ѽ��ɴ�½�������(435,1690)���ϵ�<b�����彣>��������.")
	MisNeed(MIS_NEED_ITEM, 4893, 2, 10, 2)

	MisResultTalk("<t>ǿ.")
	MisHelpTalk("<t>�Ҵ����ǰѱ����ܾ���,��Ҫ����ʧ����......")
	MisResultCondition(HasMission,  1550)
	MisResultCondition(NoRecord,  1550)
	MisResultCondition(HasItem, 4893, 2)
	MisResultAction(TakeItem, 4893, 2 )
	MisResultAction(ClearMission,  1550 )
	MisResultAction(SetRecord,  1550  )
	

	InitTrigger()
	TriggerCondition( 1, IsItem, 4893)	
	TriggerAction( 1, AddNextFlag,  1550 , 10,2)
	RegCurTrigger(   15501 )


---------------------------------------------------------------------������������

	DefineMission( 5145, "������������", 1551 )

	MisBeginTalk( "<t>����˵����˹��Ϊ����ʱ����һ��������,����ǰ��ë���չ���.��������Щ����,���ƺ�����Щ��Ƥ��������˺ܶ�...�Ǹ�...����������.��������ֻ��������ץ��һֻС������β��......��Ȼ���Ҳ���,������Ҫ������Ϊǿ......" )------������
	MisBeginCondition(NoRecord, 1551 )
	MisBeginCondition(HasRecord, 1550 )
	MisBeginCondition(NoMission, 1551 )
	MisBeginAction(AddMission,  1551)
	MisBeginAction(AddTrigger,  15511, TE_KILL, 606, 3 )----------------��������
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "��ɱ3ֻ����Ⱥ������������(1038,2317)��������")
	MisNeed(MIS_NEED_KILL,606,3, 10,3)

	MisResultTalk("<t>�����ҵĽ�ѵ,��ǧ���㲻Ҫ��������Ŷ,���䲻Ҫ��ƭ��.")
	MisHelpTalk("<t>�������,����˼��.�һ�����ʲô...����������......")
	MisResultCondition(HasMission,  1551)
	MisResultCondition(NoRecord,  1551)
	MisResultCondition(HasFlag,  1551, 12 )
	MisResultAction(ClearMission,  1551 )
	MisResultAction(SetRecord,  1551  )
	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 606)	
	TriggerAction( 1, AddNextFlag,  1551 , 10,3)
	RegCurTrigger(   15511 )

---------------------------------------------------------------------������������

	DefineMission( 5146, "������������", 1552 )

	MisBeginTalk( "<t>��������һ����,�ǵ������ǰ��ȥ������ˣ,���ں����һ�͵��<b��������>��һ����֮�ᾧ...����!Ҫ������˵����˹����,�ҿ϶���������������ݵ���˵������." )------������
	MisBeginCondition(NoRecord, 1552 )
	MisBeginCondition(HasRecord, 1551 )
	MisBeginCondition(NoMission, 1552 )
	MisBeginAction(AddMission,  1552)
	MisBeginAction(AddTrigger,  15521, TE_KILL, 589, 3 )----------------��������
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "��ɱ3ֻ����Ⱥ���ĺ�������(3634,3808)��������")
	MisNeed(MIS_NEED_KILL,589,3, 10,3)

	MisResultTalk("<t>лл��Ϊ�ҽ�����֮��,���ҷ�Ȱ������ά������.")
	MisHelpTalk("<t>ո��Ҫ����!!")
	MisResultCondition(HasMission,  1552)
	MisResultCondition(NoRecord,  1552)
	MisResultCondition(HasFlag,  1552, 12 )
	MisResultAction(ClearMission,  1552 )
	MisResultAction(SetRecord,  1552  )
	MisResultAction(AddExp1500000,1500000)
	MisResultAction(AddMoney,500000,500000)	
	MisResultAction(AddExpAndType,2,60000,60000)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 589)	
	TriggerAction( 1, AddNextFlag,  1552 , 10,3)
	RegCurTrigger(   15521 )

-------------------------------------------------------�յ׽���------------���׵���˹
	DefineMission( 5147, "�յ׽���", 1553 )

	MisBeginTalk( "<t>�ܺ�!���Ѿ��߱��˽������ߵ㲦������,���߾���<b����үү>,���<b�ɵ�ʯ>���������ҵ�,���ø�������������ӵ�." )
	MisBeginCondition(NoRecord,1553)
	MisBeginCondition(HasRecord, 1577)
	MisBeginCondition(NoMission, 1553 )
	MisBeginAction(GiveItem, 2918, 1, 4)		------------�ɵ�ʯ
	MisBeginAction(AddMission, 1553 )
	MisCancelAction(SystemNotice, "�������޷��ж�")
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "<t>�����ɵ�ʯȥ�ұ�������վ�Ĺ���үү(808,373)")
	MisHelpTalk("<t>��˵��û������,����үү�ȴ�˵�еĻ�Ҫ��Ӧ��.")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------�յ׽���
	DefineMission( 5148, "�յ׽���", 1553,COMPLETE_SHOW )-------------����үү
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>������,������.˭�������Ҷ�����!")
	MisResultCondition(NoRecord, 1553)
	MisResultCondition(HasMission, 1553)
	MisResultCondition(HasItem, 2918, 1)------------�ɵ�ʯ
	MisResultAction(TakeItem, 2918, 1 )-----�ɵ�ʯ
	MisResultAction(ClearMission,1553)
	MisResultAction(SetRecord, 1553)
	MisResultAction(SetRecord, 1556)

-------------------------------------------------------�յ׽���------------���ö�
	DefineMission( 5149, "�յ׽���", 1554 )

	MisBeginTalk( "<t>���Ѿ��߱��˽������ߵ㲦������,���߾���<b����үү>,���<b�ɵ�ʯ>���������ҵ�,���ø�������������ӵ�." )
	MisBeginCondition(NoRecord,1554)
	MisBeginCondition(HasRecord, 1548)
	MisBeginCondition(NoMission, 1554 )
	MisBeginAction(GiveItem, 2918, 1, 4)		------------�ɵ�ʯ
	MisBeginAction(AddMission, 1554 )
	MisCancelAction(SystemNotice, "�������޷��ж�")
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "<t>�����ɵ�ʯȥ�ұ�������վ�Ĺ���үү(808,373)")
	MisHelpTalk("<t>��˵��û������,����үү�ȴ�˵�еĻ�Ҫ��Ӧ��.")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------�յ׽���
	DefineMission( 5150, "�յ׽���", 1554,COMPLETE_SHOW )-------------����үү
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>������,������.˭�������Ҷ�����!")
	MisResultCondition(NoRecord, 1554)
	MisResultCondition(HasMission, 1554)
	MisResultCondition(HasItem, 2918, 1)------------�ɵ�ʯ
	MisResultAction(TakeItem, 2918, 1 )-----�ɵ�ʯ
	MisResultAction(ClearMission,1554)
	MisResultAction(SetRecord, 1554)
	MisResultAction(SetRecord, 1556)

-------------------------------------------------------�յ׽���------------������
	DefineMission( 5151, "�յ׽���", 1555 )

	MisBeginTalk( "<t>�������ڵ�����Ӧ�ÿ��������߽�̸��,���߾���<b����үү>,���<b�ɵ�ʯ>���������ҵ�,���ø�������������ӵ�." )
	MisBeginCondition(NoRecord,1555)
	MisBeginCondition(HasRecord, 1552)
	MisBeginCondition(NoMission, 1555 )
	MisBeginAction(GiveItem, 2918, 1, 4)		------------�ɵ�ʯ
	MisBeginAction(AddMission, 1555 )
	MisCancelAction(SystemNotice, "�������޷��ж�")
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "<t>�����ɵ�ʯȥ�ұ�������վ�Ĺ���үү(808,373)")
	MisHelpTalk("<t>��˵��û������,����үү�ȴ�˵�еĻ�Ҫ��Ӧ��.")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------�յ׽���
	DefineMission( 5152, "�յ׽���", 1555,COMPLETE_SHOW )-------------����үү
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>������,������.˭�������Ҷ�����!")
	MisResultCondition(NoRecord, 1555)
	MisResultCondition(HasMission, 1555)
	MisResultCondition(HasItem, 2918, 1)------------�ɵ�ʯ
	MisResultAction(TakeItem, 2918, 1 )-----�ɵ�ʯ
	MisResultAction(ClearMission,1555)
	MisResultAction(SetRecord, 1555)
	MisResultAction(SetRecord, 1556)

------------------------------------------------------�����ǵľ���------------����үү
	DefineMission( 5169, "�����ǵľ���", 1557 )

	MisBeginTalk( "<t>��˭������?��ȥ�ʱ�������վ�Ķ���������(795,363)��." )
	MisBeginCondition(NoRecord,1557)
	MisBeginCondition(HasRecord, 1556)
	MisBeginCondition(NoMission, 1557 )
	MisBeginAction(AddMission, 1557 )
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "<t>ȥ�Ҷ�������������")
	MisHelpTalk("<t>�������Ǹ��鷳�ֹ�ִ����̫��.")
	MisResultCondition(AlwaysFailure)


	--------------------------------------------------------�����ǵľ���
	DefineMission( 5153, "�����ǵľ���", 1557,COMPLETE_SHOW )-------------����������
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>��Ϊʲô��������?�ѵ�����ʹ��˾Ͳ��ܺ�����������?ѡ��<rHello>Ȼ�������ش���һ������")
	MisResultCondition(NoRecord, 1557)
	MisResultCondition(HasMission, 1557)
	MisResultAction(ClearMission,1557)
	MisResultAction(SetRecord, 1557)
	
---------------------------------------------------------------------��̫�ŵ��ǻ�

	DefineMission( 5154, "��̫�ŵ��ǻ�", 1561 )

	MisBeginTalk( "<t>�����Ǹ�����֮��,��������һ������." )------����������
	MisBeginCondition(NoRecord,1561)
	MisBeginCondition(HasRecord, 1558)
	MisBeginCondition(HasRecord, 1559)
	MisBeginCondition(NoMission, 1561 )
	MisBeginAction(AddMission, 1561 )
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "���<r��Hello��>�ش𶬴������ŵ�����")
	
	MisResultTalk("<t>����������ͻ�����������������.")
	MisHelpTalk("<t>˼�������ߵĹ�ͬ����,��Ȼ��Ҳ���������")
	MisResultCondition(NoRecord, 1561)
	MisResultCondition(HasMission, 1561)
	MisResultCondition(HasRecord, 1562)
	MisResultCondition(HasRecord, 1564)
	MisResultAction(ClearMission,1561)
	MisResultAction(SetRecord, 1561)
	

---------------------------------------------------------------------���ƴ�Ⱦ��

	DefineMission( 5155, "���ƴ�Ⱦ��", 1566 )-----����������

	MisBeginTalk( "<t>��ô�򵥵������㶼���,�ҿ����Ǳ����Ŵ�Ⱦ�˿��µĳٶ�֢.���ֲ�Ҫ�����ֲ�������,��ȥѧϰ�����װ�" )------����������
	MisBeginCondition(NoRecord,1566)
	MisBeginCondition(HasRecord, 1558)
	MisBeginCondition(HasRecord, 1560)
	MisBeginCondition(NoMission, 1566 )
	MisBeginAction(AddMission, 1566 )
	MisBeginAction(AddTrigger,  15661, TE_GETITEM, 2743, 1 )
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "����1��3�����׸�����������")
	MisNeed(MIS_NEED_ITEM,2743,1, 10, 1)

	MisResultTalk("<t>���ò���,��Ϊ����˴�Ⱦ��,������һ�����.")
	MisHelpTalk("<t>���Ƕ���ĳͷ�")
	MisResultCondition(NoRecord, 1566)
	MisResultCondition(HasMission, 1566)
	MisResultCondition(HasItem, 2743, 1)
	MisResultAction(TakeItem,  2743, 1 )
	MisResultAction(ClearMission,1566)
	MisResultAction(SetRecord, 1566)
	MisResultAction(SetRecord, 1559)


	InitTrigger()
	TriggerCondition( 1, IsItem,2743)	
	TriggerAction( 1, AddNextFlag, 1566, 10, 1 )
	RegCurTrigger( 15661 )
---------------------------------------------------------------------�ֶ����Ʒ�

	DefineMission( 5156, "�ֶ����Ʒ�", 1567 )-----����������

	
	MisBeginTalk( "<t>��ô�򵥵������㶼���,�ҿ����Ǳ����Ŵ�Ⱦ�˿��µĳٶ�֢.���ֲ�Ҫ�����ֲ�������,��ȥѧϰ�����ⵯ��" )------����������
	MisBeginCondition(NoRecord,1567)
	MisBeginCondition(HasRecord, 1562)
	MisBeginCondition(HasRecord, 1565)
	MisBeginCondition(HasRecord, 1561)
	MisBeginCondition(NoMission, 1567 )
	MisBeginAction(AddMission, 1567 )
	MisBeginAction(AddTrigger,  15671, TE_GETITEM, 2744, 1 )
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "����1��3�����ⵯ������������")
	MisNeed(MIS_NEED_ITEM,2744,1, 10, 1)

	MisResultTalk("<t>���ò���,��Ϊ����˴�Ⱦ��,������һ�����.")
	MisHelpTalk("<t>���Ƕ���ĳͷ�")
	MisResultCondition(NoRecord, 1567)
	MisResultCondition(HasMission, 1567)
	MisResultCondition(HasItem, 2744, 1)
	MisResultAction(TakeItem,  2744, 1 )
	MisResultAction(ClearMission,1567)
	MisResultAction(SetRecord, 1567)
	


	InitTrigger()
	TriggerCondition( 1, IsItem,2744)	
	TriggerAction( 1, AddNextFlag, 1567, 10, 1 )
	RegCurTrigger( 15671 )



-------------------------------------------------------�����ػ���-----------------����������
	DefineMission( 5157, "�����ػ���", 1568 )

	MisBeginTalk( "<t>�㱻ΰ��Ķ����״ͷ�Ϊ�����ػ��ߣ��������ȥ�͹���ͷ̸̸��������ʡһ���Լ�." )
	MisBeginCondition(NoRecord,1568)
	MisBeginCondition(HasRecord, 1561)
	MisBeginCondition(HasRecord, 1564)
	MisBeginCondition(NoMission, 1568 )
	MisBeginAction(AddMission, 1568 )
	MisCancelAction(SystemNotice, "�������޷��ж�")
	
	MisNeed(MIS_NEED_DESP, "<t>ȥ�ҹ���үү����")
	MisHelpTalk("<t>��ȥ��,ά������Ϳ�������Щ��������.")
	
	MisResultCondition(AlwaysFailure)

	-------------------------------------------------------�����ػ���
	DefineMission( 5158, "�����ػ���", 1568,COMPLETE_SHOW )-------------����
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>��˵���������Ϸ����ˣ���ûƭ�Ұɣ��۹����������ɴ˿����������ȷ���������������������������а����㱻ΰ��Ĺ��Ŵͷ�Ϊ�����ػ���")
	MisResultCondition(NoRecord, 1568)
	MisResultCondition(HasMission, 1568)
	MisResultAction(ClearMission,1568)
	MisResultAction(SetRecord, 1568)
	MisResultAction(SetRecord, 1571)


	-------------------------------------------------------�����ػ���-----------------����������
	DefineMission( 5159, "�����ػ���", 1569 )

	MisBeginTalk( "<t>�㱻ΰ��Ķ����״ͷ�Ϊ�����ػ��ߣ��������ȥ�͹���ͷ̸̸��������ʡһ���Լ�." )
	MisBeginCondition(NoRecord,1569)
	MisBeginCondition(HasRecord, 1567)
	MisBeginCondition(NoMission, 1569 )
	MisBeginAction(AddMission, 1569 )
	MisCancelAction(SystemNotice, "�������޷��ж�")
	
	MisNeed(MIS_NEED_DESP, "<t>ȥ�ҹ���үү����")
	MisHelpTalk("<t>��ȥ��,ά������Ϳ�������Щ��������.")
	
	MisResultCondition(AlwaysFailure)


--------------------------------------------------------�����ػ���

	DefineMission( 5160, "�����ػ���", 1569,COMPLETE_SHOW )-------------����
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>��˵���������Ϸ����ˣ���ûƭ�Ұɣ��۹����������ɴ˿����������ȷ���������������������������а����㱻ΰ��Ĺ��Ŵͷ�Ϊ�����ػ���")
	MisResultCondition(NoRecord, 1569)
	MisResultCondition(HasMission, 1569)
	MisResultAction(ClearMission,1569)
	MisResultAction(SetRecord, 1569)
	MisResultAction(SetRecord, 1571)

	MisResultAction(AddExp,300000,300000)
	MisResultAction(AddMoney,100000,100000)	
	MisResultAction(AddExpAndType,2,20000,20000)
-----------------------------------------------------���ص�����

	DefineMission( 5161, "���ص�����",1570 )

	MisBeginTalk( "<t>�ҿ���Ҳûʲô����,��������æ,��һֱ���о��йع�������������ƽⷽ��.�ݿɿ���Ϣ,���ձȵ�������ͧ����д����������Ŀ��Ƭ,�����о�һ��." )
	MisBeginCondition(NoRecord, 1570)
	MisBeginCondition(HasRecord, 1571)
	MisBeginCondition(NoMission,1570 )
	MisBeginAction(AddMission, 1570)
	MisBeginAction(AddTrigger, 15701, TE_GETITEM, 2408, 1 )		--����AB
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "��������ͧ�ϵĿ���AB������")
	MisNeed(MIS_NEED_ITEM,2408,1, 10, 1)
	
	MisResultTalk("<t>����ҿ���!�����ƺ�ûʲô������......�ѵ�������?")
	MisHelpTalk("<t>������ͧ�ں��������г�û")
	MisResultCondition(HasMission, 1570)
	MisResultCondition(NoRecord,1570)
	MisResultCondition(HasItem,2408,1 )
	MisResultAction(TakeItem, 2408,1 )
	MisResultAction(ClearMission, 1570)
	MisResultAction(SetRecord,1570)
	
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 2408)	
	TriggerAction( 1, AddNextFlag,  1570, 10,1)
	RegCurTrigger( 15701 )

----------------------------------------------------���ص�����

	DefineMission( 5162, "���ص�����",1572 )

	MisBeginTalk( "<t>ʲô���ﰡ?��ȫ��������ʲô�ر�.��Ȼ�п���ABһ���п���BC,�㲻������������ЩüĿ" )
	MisBeginCondition(NoRecord, 1572)
	MisBeginCondition(HasRecord, 1570)
	MisBeginCondition(NoMission,1572 )
	MisBeginAction(AddMission, 1572)
	MisBeginAction(AddTrigger, 15721, TE_GETITEM, 2409, 1 )		--����BC
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "�������ͧ�ϵĿ���BC������")
	MisNeed(MIS_NEED_ITEM,2409,1, 10, 1)
	
	MisResultTalk("<t>���ø���,����Ԥ�����Ҫ�з���.")
	MisHelpTalk("<t>�����ͧ�ں��������г�û")
	MisResultCondition(HasMission, 1572)
	MisResultCondition(NoRecord,1572)
	MisResultCondition(HasItem,2409,1 )
	MisResultAction(TakeItem, 2409,1 )
	MisResultAction(ClearMission, 1572)
	MisResultAction(SetRecord,1572)
	
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 2409)	
	TriggerAction( 1, AddNextFlag,  1572, 10,1)
	RegCurTrigger( 15721 )


	----------------------------------------------------���ص�����

	DefineMission( 5163, "���ص�����",1573 )

	MisBeginTalk( "<t>�����о������һ���Ҫһ����������CD�Ķ���." )
	MisBeginCondition(NoRecord, 1573)
	MisBeginCondition(HasRecord, 1572)
	MisBeginCondition(NoMission,1573 )
	MisBeginAction(AddMission, 1573)
	MisBeginAction(AddTrigger, 15731, TE_GETITEM, 2410, 1 )		--����CD
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "������ʿ�����ϵĿ���CD������")
	MisNeed(MIS_NEED_ITEM,2410,1, 10, 1)
	
	MisResultTalk("<t>��������������,����������Ԥ��Ҫ�з���.")
	MisHelpTalk("<t>����ʿ���ں��������г�û")
	MisResultCondition(HasMission, 1573)
	MisResultCondition(NoRecord,1573)
	MisResultCondition(HasItem,2410,1 )
	MisResultAction(TakeItem, 2410,1 )
	MisResultAction(ClearMission, 1573)
	MisResultAction(SetRecord,1573)
	
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 2410)	
	TriggerAction( 1, AddNextFlag,  1573, 10,1)
	RegCurTrigger( 15731 )


----------------------------------------------------���ص�����

	DefineMission( 5164, "���ص�����",1574 )

	MisBeginTalk( "<t>�㿴����Ҳ��ɵ��,��ô�Ͳ�֪���ѿ���DEһ���������?������û�в��ͷ��." )
	MisBeginCondition(NoRecord, 1574)
	MisBeginCondition(HasRecord, 1573)
	MisBeginCondition(NoMission,1574 )
	MisBeginAction(AddMission, 1574)
	MisBeginAction(AddTrigger, 15741, TE_GETITEM, 2411, 1 )		--����DE
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "������ʿ�����ϵĿ���DE������")
	MisNeed(MIS_NEED_ITEM,2411,1, 10, 1)
	
	MisResultTalk("<t>���ܸо����������������.")
	MisHelpTalk("<t>����ʿ���ں��������г�û")
	MisResultCondition(HasMission, 1574)
	MisResultCondition(NoRecord,1574)
	MisResultCondition(HasItem,2411,1 )
	MisResultAction(TakeItem, 2411,1 )
	MisResultAction(ClearMission, 1574)
	MisResultAction(SetRecord,1574)
	
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 2411)	
	TriggerAction( 1, AddNextFlag,  1574, 10,1)
	RegCurTrigger( 15741 )


----------------------------------------------------���ص�����

	DefineMission( 5165, "���ص�����",1575 )

	MisBeginTalk( "<t>����������Ӧ��֪����һ������ʲô�����˰�.ԭ���ǲ��������о��Ĺؼ�����" )
	MisBeginCondition(NoRecord, 1575)
	MisBeginCondition(HasRecord, 1574)
	MisBeginCondition(NoMission,1575 )
	MisBeginAction(AddMission, 1575)
	MisBeginAction(AddTrigger, 15751, TE_GETITEM, 2412, 1 )		--����EF
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "������������ϵĿ���EF������")
	MisNeed(MIS_NEED_ITEM,2412,1, 10, 1)
	
	MisResultTalk("<t>��һ�¸������ҵ��о����......")
	MisHelpTalk("<t>��������ڵ�����ͷ�����¾�е�⡢����ʵ���Ҿ��г�û")
	MisResultCondition(HasMission, 1575)
	MisResultCondition(NoRecord,1575)
	MisResultCondition(HasItem,2412,1 )
	MisResultAction(TakeItem, 2412,1 )
	MisResultAction(ClearMission, 1575)
	MisResultAction(SetRecord,1575)
	MisResultAction(AddExp,1500000,1500000)
	MisResultAction(AddMoney,400000,400000)	
	MisResultAction(AddExpAndType,2,80000,80000)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 2412)	
	TriggerAction( 1, AddNextFlag,  1575, 10,1)
	RegCurTrigger( 15751 )


----------------------------------------������о����
     DefineMission(5166,"������о����",1576)
     MisBeginTalk("<t>��һ�¸������ҵ��о����......")
     MisBeginCondition(NoRecord,1576)
      MisBeginCondition(NoMission, 1576)
     MisBeginCondition(HasRecord, 1575)
     MisBeginAction(AddMission, 1576)
     MisCancelAction(SystemNotice, "�������޷��ж�")

     MisNeed(MIS_NEED_DESP, "�ȹ��Ÿ����������о����.")
     MisHelpTalk("<t>�㲻Ҫ�ż���......")
      MisResultTalk("<t>ԭ���������Щ��Ƭһ���ϵ��û��,�ұ�ƭ��.����,�Ҳ���������.")
     MisResultCondition(HasRecord, 1576)---------Ӧ��ΪNoRecord
     MisResultCondition(HasMission, 1576)
     MisResultAction(ClearMission, 1576 )
     MisResultAction(SetRecord, 1576 )



end
HistoryMission001()