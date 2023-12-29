-------------------------------------------------------------------
--									--
--									--
--NPCScript07.lua Created by knight.gong 2005.7.12.				--
--									--
--									--
--------------------------------------------------------------------------
print( "loading NPCScript07.lua" )



 ---------------------------------------------����ܶ�Ա(1)

	DefineMission( 900, "����ܶ�Ա", 900)

	MisBeginTalk( "<t>��ҪƯ���ĳ�費���Ǿͱ���Ҫͨ���Ҹ���Ŀ���.<n><t>ȥ����ɱ10���������ٴ�����������������Ұ�.<n><t>����л�����Ư���ĳ��Ŷ.")
	MisBeginCondition(LvCheck, ">", 59 )
	MisBeginCondition(HasItem, 0844, 1)
	MisBeginCondition(NoMission, 900)
	MisBeginAction(AddMission, 900)
	MisBeginAction(AddTrigger, 9001, TE_KILL, 748, 10 )
	MisCancelAction(ClearMission, 900)

	MisNeed(MIS_NEED_DESP, "����������ɱ��10�������� ")	
	MisNeed(MIS_NEED_KILL, 748, 10, 10, 10)
	 
	MisHelpTalk("<t>��ȥ��ȥ��,Ϊ��Ư���ĳ��Ŷ")	
	MisResultTalk("<t>�ٶȵ���������!<n><t>����������õĻ�,������ͻ�������Ҫ�ĳ��Ŷ")
	MisResultCondition(HasMission, 900)
	MisResultCondition(HasFlag, 900, 19 )
	MisResultCondition(HasItem,0844,1)
	MisResultAction(TakeItem, 0844,1)
	MisResultAction(ClearMission,900)
	MisResultAction(GiveItem, 1852, 1, 4)
	MisResultBagNeed(1)
		
	InitTrigger() 
	TriggerCondition( 1, IsMonster, 748 )	
	TriggerAction( 1, AddNextFlag, 900, 10, 10 )
	RegCurTrigger(9001)



	-------------------------------------------------����ܶ�Ա(2)
	DefineMission(901,"����ܶ�Ա",901)

	MisBeginTalk("<t>��ҪƯ���ĳ�費���Ǿͱ���Ҫͨ���Ҹ���Ŀ���.<n><t>�������ȥɱɭ��20��������20�����ཬ��10����������10��,ȭ���� ��10���ٴ�����������������ҵĻ�,����ͻ��л�����Ư���ĳ���")

	MisBeginCondition(LvCheck, "<", 60 )
	MisBeginCondition(HasItem, 0844, 1)
	MisBeginCondition(NoMission,901)
	MisBeginAction(AddMission, 901) 
	MisBeginAction(AddTrigger, 9011, TE_KILL, 103, 20)
	MisBeginAction(AddTrigger, 9012, TE_KILL, 70, 20)
	MisBeginAction(AddTrigger, 9013, TE_KILL, 253, 10)
	MisBeginAction(AddTrigger, 9014, TE_KILL, 85, 10)
	MisBeginAction(AddTrigger, 9015, TE_KILL, 76, 10)
	MisCancelAction(ClearMission, 901)

	MisNeed(MIS_NEED_DESP, "���Ϳɽ��(2272,2700)�ɵ�ɭ��20��������20�����ཬ��10����������10��,ȭ������10�� ")
	MisNeed(MIS_NEED_KILL, 103, 20, 10, 20)
	MisNeed(MIS_NEED_KILL, 70, 20, 30, 20)
	MisNeed(MIS_NEED_KILL, 253, 10, 50, 10)
	MisNeed(MIS_NEED_KILL, 85, 10, 60, 10)
	MisNeed(MIS_NEED_KILL, 76, 10, 70, 10)

	MisHelpTalk("<t>��ȥ��ȥ��,Ϊ��Ư���ĳ��")
	MisResultTalk("<t>�ٶȵ���������!<n><t>����������õĻ�,������ͻ�������Ҫ�ĳ��Ŷ")
	MisResultCondition(HasMission, 901)
	MisResultCondition(HasFlag, 901, 29)
	MisResultCondition(HasFlag, 901, 49)
	MisResultCondition(HasFlag, 901, 59)
	MisResultCondition(HasFlag, 901, 69)
	MisResultCondition(HasFlag, 901, 79)
	MisResultCondition(HasItem, 0844, 1)
	MisResultAction(TakeItem, 0844, 1)
	MisResultAction(ClearMission, 901)
	MisResultAction(GiveItem, 1852, 1, 4)
	MisResultBagNeed(1) 

	InitTrigger() 
	TriggerCondition( 1, IsMonster, 103 )	
	TriggerAction( 1, AddNextFlag, 901, 10, 20 )
	RegCurTrigger(9011)

	InitTrigger() 
	TriggerCondition( 1, IsMonster, 70 )	
	TriggerAction( 1, AddNextFlag, 901, 30, 20 )
	RegCurTrigger(9012)

	InitTrigger() 
	TriggerCondition( 1, IsMonster, 253 )	
	TriggerAction( 1, AddNextFlag, 901, 50, 10 )
	RegCurTrigger(9013)

	InitTrigger() 
	TriggerCondition( 1, IsMonster, 85 )	
	TriggerAction( 1, AddNextFlag, 901, 60, 10 )
	RegCurTrigger(9014)

	InitTrigger() 
	TriggerCondition( 1, IsMonster, 76 )	
	TriggerAction( 1, AddNextFlag, 901, 70, 10 )
	RegCurTrigger(9015)


	-------------------------------------------------����ѽڳ����� �ۻư��ݱٰ�а
	DefineMission( 902, "����ѽڳ����� �ۻư��ݱٰ�а", 902)

	MisBeginTalk("<t>����,���޽��еĹ������������,������һЩ�������½���,����԰���ȥ�Ѽ�������Ʒ��?")

	MisBeginCondition(LvCheck, ">",15  )
	MisBeginCondition(NoMission,902)
	MisBeginCondition(NoRecord,902)
	MisBeginAction(AddMission,902)
	MisBeginAction(AddTrigger, 9021, TE_GETITEM, 3116, 10 )		--�����
	MisBeginAction(AddTrigger, 9022, TE_GETITEM, 3131, 10 )		--�����ʵ
	MisBeginAction(AddTrigger, 9023, TE_GETITEM, 4419, 5 )		--�����ķ���
	MisCancelAction(ClearMission, 902)

	MisNeed(MIS_NEED_DESP, "����ԭ�ҵ������10���������ʵ10��,�����ķ���5��")
	MisNeed(MIS_NEED_ITEM, 3116, 10, 10, 10)
	MisNeed(MIS_NEED_ITEM, 3131, 10, 20, 10)
	MisNeed(MIS_NEED_ITEM, 4419, 5, 30, 5)

	MisHelpTalk("<t>����,���ڵ�������,��ס�Ǿ����10���������ʵ10��,�����ķ���5��")
	MisResultTalk("<t>ϣ����Щ������ι�����ǲź�,�������ǾͲ������������.")
	MisResultCondition(HasMission, 902)
	MisResultCondition(NoRecord,902)
	MisResultCondition(HasItem, 3116, 10)
	MisResultCondition(HasItem, 3131, 10 )
	MisResultCondition(HasItem, 4419, 5 )
	MisResultAction(TakeItem, 3116, 10 )
	MisResultAction(TakeItem, 3131, 10 )
	MisResultAction(TakeItem, 4419, 5 )
	MisResultAction(ClearMission, 902)
	MisResultAction(SetRecord, 902 )
	
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 3116)	
	TriggerAction( 1, AddNextFlag, 902, 10, 10 )
	RegCurTrigger( 9021 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3131)	
	TriggerAction( 1, AddNextFlag, 902, 20, 10 )
	RegCurTrigger( 9022 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4419)	
	TriggerAction( 1, AddNextFlag, 902, 30, 5 )
	RegCurTrigger( 9023 )

	-------------------------------------------------- ����ѽڳ����� �ۻư��ݱٰ�а
	DefineMission( 903, "����ѽڳ����� �ۻư��ݱٰ�а", 903)
	
	MisBeginTalk("<t>�찡!!��Щ������Ȼ����,����Ҫ�ٶ���Щ��Ʒ��,�������鷳�������?")
	MisBeginCondition(NoMission,902)
	MisBeginCondition(NoMission,903)
	MisBeginCondition(HasRecord,902)
	MisBeginCondition(NoRecord,903)
	MisBeginAction(AddMission,903)
	MisBeginAction(AddTrigger, 9031, TE_GETITEM, 1779, 10 )		--ҩƿ 
	MisBeginAction(AddTrigger, 9032, TE_GETITEM, 1584, 20 )		--�ж��Ĵ� 
	MisBeginAction(AddTrigger, 9033, TE_GETITEM, 1650, 10 )		--����Ч��ˮ
	MisCancelAction(ClearMission, 903)

	MisNeed(MIS_NEED_DESP, "��ȥ����ԭ�ҵ�ҩƿ 10�����ж��Ĵ�20��,����Ч��ˮ10��")
	MisNeed(MIS_NEED_ITEM, 1779, 10, 10, 10)
	MisNeed(MIS_NEED_ITEM, 1584, 20, 20, 20)
	MisNeed(MIS_NEED_ITEM, 1650, 10, 40, 10)

	MisHelpTalk("<t>��, ���޽��е���Щ���ﰡ!")
	MisResultTalk("<t>�������Ӧ�ò����ٳ��������˰�.")
	MisResultCondition(HasMission, 903)
	MisResultCondition(NoRecord,903)
	MisResultCondition(HasItem, 1779, 10)
	MisResultCondition(HasItem, 1584, 20 )
	MisResultCondition(HasItem, 1650, 10 )
	MisResultAction(TakeItem, 1779, 10 )
	MisResultAction(TakeItem, 1584, 20 )
	MisResultAction(TakeItem, 1650, 10 )
	MisResultAction(ClearMission, 903)
	MisResultAction(SetRecord, 903 )


	InitTrigger()
	TriggerCondition( 1, IsItem, 1779)	
	TriggerAction( 1, AddNextFlag, 903, 10, 10 )
	RegCurTrigger( 9031 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1584)	
	TriggerAction( 1, AddNextFlag, 903, 20, 20 )
	RegCurTrigger( 9032 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1650)	
	TriggerAction( 1, AddNextFlag, 903, 40, 10 )
	RegCurTrigger( 9033 )


-------------------------------------------------- ����ѽڳ����� �ۻư��ݱٰ�а
	DefineMission( 904, "����ѽڳ����� �ۻư��ݱٰ�а", 904)

	MisBeginTalk("<t>��!Ϊ��ƽϢ���޽��Ĺ���,�һ����˼��������,����������,Ⱦ�ϲ���,��Ȼ��֪��ʲôҩ��������Ȭ��,��û�취�Լ�ȥ�Ѽ�ԭ��,��������Ҳɼ�ԭ�ϻ���,����������ҩ.")

	MisBeginCondition(NoMission,904)
	MisBeginCondition(NoRecord,904)
	MisBeginCondition(HasRecord,903)
	MisBeginAction(AddMission,904)
	MisBeginAction(AddTrigger, 9041, TE_GETITEM, 3129, 5 )		--ҩ�ò�Ҷ
	MisBeginAction(AddTrigger, 9042, TE_GETITEM, 1681, 5 )		--����
	MisCancelAction(ClearMission, 904)

	MisNeed(MIS_NEED_DESP, "����ԭ��ҩ�ò�Ҷ5��������5�������β�")
	MisNeed(MIS_NEED_ITEM, 3129, 5, 10, 5)
	MisNeed(MIS_NEED_ITEM, 1681, 5, 20, 5)

	MisHelpTalk("<t>��,����һ���ļ�����!")
	MisResultTalk("<t>лл�������ô��æ,Ϊ�˱�����,��Щ��Ʒ����ȥ��")
	MisResultCondition(HasMission, 904)
	MisResultCondition(NoRecord,904)
	MisResultCondition(HasItem, 3129, 5)
	MisResultCondition(HasItem, 1681, 5 )
	MisResultAction(TakeItem, 3129, 5 )
	MisResultAction(TakeItem, 1681, 5 )
	MisResultAction(GiveItem, 263, 3, 4)
	MisResultAction(GiveItem, 264, 3, 4)
	MisResultAction(GiveItem, 265, 3 ,4)
	MisResultAction(ClearMission, 904)
	MisResultAction(SetRecord,  904 )
	MisResultBagNeed(3)
	
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 3129)	
	TriggerAction( 1, AddNextFlag, 904, 10, 5 )
	RegCurTrigger( 9041 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1681)	
	TriggerAction( 1, AddNextFlag, 904, 20, 5 )
	 RegCurTrigger( 9042 )
	 
  -------------------------------------------------- ������������
	DefineMission( 905, "������������", 905)
	MisBeginTalk("<t> ��֪��ô����ֹ�����,���������������ԡ������̡����١����ĸ��,��˵�Թ��������������յ����Ժ���Եõ�ǿ�������,��������3��Ŷ����֪��������Ϊʲô��ô�����˰�,�Ǻ�.<n><t>��ô��Ҳ�볢�����⵰��ɲ���ʲô�˶��ܳԵ���,��Ҫ׼��һ�š�����Ʒ��ȯ��,Ȼ�󵽰����ǡ������̡����١�����,���Ż�ָ���һС���.")
	MisBeginCondition(NoMission,905)
	MisBeginCondition(HasItem, 1097, 1 )
	MisBeginCondition(NoRecord,905)
	MisBeginAction(AddMission,905)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "ȥ�������̡����ٰ�")
	MisHelpTalk("<t>��ȥ�������̰�,���˾�û�е�����!")
	
	MisResultCondition(AlwaysFailure )


	 -------------------------------------------------- ������������
	DefineMission ( 906, "������������", 905,COMPLETE_SHOW)
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>�ǡ��᳤��������˾��������������İ�,�š�����������������,�Ǻ�.������Ʒ��ȯ����������,��һ�鵰������ȥ��")
	MisResultCondition(HasMission,905)
	MisResultCondition(HasItem, 1097, 1 )
	MisResultAction(ClearMission, 905 )
	MisResultAction(TakeItem, 1097, 1 )
	MisResultAction(GiveItem, 3338, 1, 4 )
	MisResultAction(SetRecord, 905 )
	MisCancelAction(SystemNotice, "�������޷��ж�")
	MisBeginBagNeed(1)	

	-------------------------------Ѱ����ʧ�İ���֮���Ѱ�һ���
	DefineMission( 907, "Ѱ�һ���", 906)
	
	MisBeginTalk( "<t>�Һ�����!������,�����ҵ���,���������,�Ҳ���ʧȥ��.��֪����������ߵ�������������(1333,558).�����ܰ���ȥ�Ǹ���������")
	MisBeginCondition(NoRecord, 913 )
	MisBeginCondition(NoMission, 906 )
	MisBeginAction(AddMission, 906 )
	MisCancelAction(ClearMission, 906)
		
	MisNeed(MIS_NEED_DESP, "�ҵ�����(1333,558)")
	MisHelpTalk("<t>��������ߵ�������������(1333,558).")
	MisResultCondition(AlwaysFailure )

	---------------------------------------Ѱ����ʧ�İ���֮���Ѱ�һ���

	DefineMission(908,"Ѱ�һ���",906,COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>������������Ѱɣ�������Ҫ�ҵ��˻���ĺ�����!")
	MisResultCondition(HasMission, 906)
	MisBeginCondition(NoRecord, 913)
	MisResultAction(ClearMission, 906)
	MisResultAction(SetRecord, 913)

	----------------------------------Ѱ����ʧ�İ���֮���ϲ�����±�
	DefineMission ( 909, "�±����", 907)

	MisBeginTalk("<t>������ô���ܹ�����������������У�������,����ϲ�����±���,�������10���±���.")
	MisBeginCondition(HasRecord,913)
	MisBeginCondition(NoMission,907)
	MisBeginCondition(NoRecord,907)
	MisBeginAction(AddMission,907)
	MisBeginAction(AddTrigger, 9071, TE_GETITEM, 3915, 10)
	MisCancelAction(ClearMission, 907)
	

	MisNeed(MIS_NEED_DESP, "ȥ������ҵ�10���±�")
	MisNeed(MIS_NEED_ITEM, 3915, 10, 10, 10)

	MisHelpTalk("<t>Ҫ�������±�Ŷ")
	MisResultTalk("<t>��������ĺܲ���Ŷ,����ϲ�����±���,лл��!") 
	
	MisResultCondition(HasMission, 907)
	MisResultCondition(NoRecord,907)
	MisResultCondition(HasItem, 3915, 10)
	MisResultAction(TakeItem, 3915, 10 )
	MisResultAction(ClearMission, 907)
	MisResultAction(SetRecord, 907 )
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 3915)	
	TriggerAction( 1, AddNextFlag, 907, 10, 10 )
	RegCurTrigger( 9071 )
	
-------------------------------------------------------	Ѱ����ʧ�İ���֮���������
	DefineMission(910,"���������",908)
	
	MisBeginTalk("<t>�õ�,����,�ҿ�����������,�����ת����,�����ѻ����Ѿ���ǰ�����Ѫ��ҽ����Ч������,����һ����,�ǻ�������ǰд��,����ת������,�㽻������,�����ڰ�˳��.")

	MisBeginCondition(HasRecord, 907)
	MisBeginCondition(NoRecord, 908)
	MisBeginCondition(NoMission, 908)
	MisBeginBagNeed(1)

	MisBeginAction(AddMission, 908)
	MisBeginAction(GiveItem, 1005,1,4)

	MisHelpTalk("<t>Ը�ϵ۱������ĵ���,�����ɳ�(917,3572)")
	MisNeed(MIS_NEED_DESP, "����������������ת�������")

	MisCancelAction(ClearMission, 908)

	MisResultCondition(AlwaysFailure)




-----------------------------------Ѱ����ʧ�İ���֮���������
	DefineMission( 911, "���������", 908, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>ʲô������������ҵ���.<n><t>�ŵ���������:�ҵ����,���㿴������ŵ�ʱ��,���Ѿ�������һ��������������.�Ҳ������㿴���Ҳ԰׵���,����������Ϊ�ҿ�����ʹ��,Ω�а����׿�����������.�Ȳ���ͷ,�αز���,������Ե,��������,ǰ������.��ˮ�޺�,��Ϧ��Ϧ.��Ψһ������ֻ�а�����Զ�ز����������.��,�һ�����һ������Ϊ��ף����.�ഺɢ��,��ȴ����.���ĵ�������,���������ĵ���,�һ�һ������,������һƬ�Ʋ�.<n><t>����Ϊʲô��˶���,��..�쳤�ؾ���ʱ��,�˺������޾���.")
	MisResultCondition(HasMission, 908)
	MisResultCondition(NoRecord,908)
	MisResultCondition(HasItem, 1005, 1)
	MisResultAction(TakeItem, 1005, 1)
	MisResultAction(GiveItem, 1006, 1, 4)
	MisResultAction(ClearMission, 908)
	MisResultAction(SetRecord, 908)

	
	-------------------------------------------------------------Ѱ����ʧ�İ���֮���������
	DefineMission ( 912, "����֮ˮ", 909)
	
	MisBeginTalk("<t>��˵��������ˮ������ˮ,ֻ�а����ǵĵ�ķ(2250,2770)֪���䷽,�����һ��,һ��ǧ��.")
	
	MisBeginCondition(HasRecord,908)
	MisBeginCondition(NoRecord,909)
	MisBeginCondition(NoMission,909)
	MisBeginAction(AddMission,909)
	MisCancelAction(ClearMission, 909)
	
	MisHelpTalk("<t>��, ���Խ��ǣ�Ω������ˮ")
	MisNeed(MIS_NEED_DESP, "��ȥ������ҵ�����ˮ")


	MisResultCondition(AlwaysFailure)


------------------------------------------------------------------------Ѱ����ʧ�İ���֮���������



	DefineMission(913,"����֮ˮ", 909,COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure)
	MisResultTalk("<t>�������������Ѱ���<n><t>����˵�����ǵĹ���,���˸�,�����������˰�")
	MisResultCondition(HasMission, 909)
	MisResultCondition(NoRecord, 909)
	MisResultAction(ClearMission, 909)
	MisResultAction(SetRecord, 909)



	
	
	-------------------------------------------------------------Ѱ����ʧ�İ���֮��������ˮ
	DefineMission ( 914, "��������ˮ", 910)
	
	MisBeginTalk("<t>������������ˮ�İ�,����ˮ���䷽�ܷ���,��ȥ�ɼ�1��������ˮ,1������֮��,2��ҩ�ò�Ҷ,3������Ч��ˮ,Ȼ�����������.")
	
	MisBeginCondition(NoMission,910)
	MisBeginCondition(HasRecord,909)
	MisBeginCondition(NoRecord,910)
	MisBeginAction(AddMission,910)
	MisBeginAction(AddTrigger, 9101, TE_GETITEM, 1649, 1)
	MisBeginAction(AddTrigger, 9102, TE_GETITEM, 4418, 1)
	MisBeginAction(AddTrigger, 9103, TE_GETITEM, 3129, 2)
	MisBeginAction(AddTrigger, 9104, TE_GETITEM, 1650, 3)	
	MisCancelAction(ClearMission, 910)

	MisNeed(MIS_NEED_DESP, "��Ҫ������ˮ1��,����֮��1��,ҩ�ò�Ҷ2��,����Ч��ˮ3��")
	MisNeed(MIS_NEED_ITEM, 1649, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 4418, 1, 20, 1)
	MisNeed(MIS_NEED_ITEM, 3129, 2, 30, 2)
	MisNeed(MIS_NEED_ITEM, 1650, 3, 40, 3)

	MisHelpTalk("<t>�����ҵ�������ˮ1��,����֮��1��,ҩ�ò�Ҷ2��,����Ч��ˮ3��Ŷ")
	MisResultTalk("<t>�ܺ�,��Щ������������ˮ���䷽��Ʒ.")
	MisResultCondition(HasMission, 910)
	MisResultCondition(NoRecord,910)
	MisResultCondition(HasItem, 1649, 1)
	MisResultCondition(HasItem, 4418, 1)
	MisResultCondition(HasItem, 3129, 2)
	MisResultCondition(HasItem, 1650, 3)
	MisResultAction(TakeItem, 1649, 1 )
	MisResultAction(TakeItem, 4418, 1)
	MisResultAction(TakeItem, 3129, 2 )
	MisResultAction(TakeItem,1650, 3 )
	MisResultAction(ClearMission, 910)
	MisResultAction(SetRecord, 910 )
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 1649)	
	TriggerAction( 1, AddNextFlag, 910, 10, 1 )
	RegCurTrigger( 9101 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4418)	
	TriggerAction( 1, AddNextFlag, 910, 20, 1 )
	RegCurTrigger( 9102 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3129)	
	TriggerAction( 1, AddNextFlag, 910, 30, 2 )
	RegCurTrigger( 9103 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1650)	
	TriggerAction( 1, AddNextFlag, 910, 40, 3 )
	RegCurTrigger( 9104 )
	
	
	-----------------------------------------------------------------Ѱ����ʧ�İ���֮�������ƿ
	DefineMission ( 915, "�������ƿ", 911)
	
	MisBeginTalk("<t>��������ˮ��һ�������ˮ,�κ�����װ������,������Ѹ��������,ֻ�������ʵ��������ܱ�������ˮ������.ȥѰ��һ�����ƿ��,������֪,Ħ���̳��г���.�������,�Ϳ����Ƴ�����ˮ��.")

	MisBeginCondition(NoMission,911)
	MisBeginCondition(HasRecord,910)
	MisBeginCondition(NoRecord,911)
	MisBeginAction(AddMission,911)
	MisBeginAction(AddTrigger, 9111, TE_GETITEM, 1007, 1)
	MisCancelAction(ClearMission, 911)
	MisNeed(MIS_NEED_DESP, "��Ҫ���ƿһ��")
	MisNeed(MIS_NEED_ITEM, 1007, 1, 80, 1)

	MisHelpTalk("<t>ȥ�̳ǹ������ƿ��!")
	MisResultTalk("<t>�õ�,�������ƿ,�ҾͿ��԰����Ƴ�����ˮ��.")


	MisResultCondition(HasMission, 911)
	MisResultCondition(NoRecord,911)
	MisResultCondition(HasItem, 1007, 1)
	MisResultAction(TakeItem, 1007, 1 )
	MisResultAction(ClearMission, 911)
	MisResultAction(SetRecord,  911 )

	
	InitTrigger()
	TriggerCondition( 1, IsItem, 1007)	
	TriggerAction( 1, AddNextFlag, 911, 80, 1 )
	RegCurTrigger( 9111 )


-------------------------------------------------------------------Ѱ����ʧ�İ���֮����ˮ

DefineMission(916,"����",912)
	
	MisBeginTalk("<t>��ȥ��,����ˮ������,��Ը���������(917,3572)����ʹ,��!")

	MisBeginCondition(HasRecord, 911)
	MisBeginCondition(NoRecord, 912)
	MisBeginCondition(NoMission, 912)
	MisBeginBagNeed(1)

	MisBeginAction(AddMission, 912)
	MisBeginAction(GiveItem, 1008,1,4)

	MisHelpTalk("<t>��ȥ������ĵ��˰�!")
	MisNeed(MIS_NEED_DESP, "�����ư���֮�˵�����ˮ�������")

	MisCancelAction(ClearMission, 912)
	MisResultCondition(AlwaysFailure)




-------------------------------------------------------------------Ѱ����ʧ�İ���֮����ˮ
	DefineMission( 917, "����", 912, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure )

	
	MisResultTalk("<t>����Ǵ�˵�е�����ˮ,������ҵ���!лл��,���������氮�Ĵ���֮��,�͸���,��ʾ��л.<n><t>��!����ˮ,���������������")
	MisResultCondition(HasMission, 912)
	MisResultCondition(NoRecord,912)
	MisResultCondition(HasItem, 1008, 1)
	MisResultAction(TakeItem, 1008, 1 )
	MisResultAction(GiveItem, 1009, 1 ,4)
	MisResultAction(ClearMission, 912)
	MisResultAction(SetRecord, 912 )
	MisResultAction(ClearRecord, 909)
	MisResultAction(ClearRecord, 910)
	MisResultAction(ClearRecord, 911)
	MisResultAction(ClearRecord, 912)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 1008)	
	TriggerAction( 1, AddNextFlag, 912, 10, 1 )
	RegCurTrigger( 9121 ) 


	--------------------------------------------------------------------��������

	DefineMission( 918, "��������", 914 )
	MisBeginTalk("<t>����,������Ŀݽ�֮ʱ,ȥѰ������ˮ��,�ҽ�ʹ����Ļ������.")
	MisBeginCondition(NoMission, 914)
	MisBeginCondition(HasItem,1010,1)------------�д���֮��ʹ�ú�Ŀݽ�֮��
	MisBeginCondition(NoRecord,914)
	MisBeginAction(AddMission,914)
	MisBeginAction(AddTrigger, 9141, TE_GETITEM, 1008, 1)
	MisCancelAction(ClearMission, 914)

	MisNeed(MIS_NEED_DESP, "��Ҫ����ˮһ��������ݽ�֮��")
	MisNeed(MIS_NEED_ITEM, 1008, 1, 10, 1)

	MisHelpTalk("<t>�ҵ�һ������ˮ,������ͬ�ݽ�֮��һ�𽻸�����������")
	MisResultTalk("<t>�ܺ�,����.���������ˮ,��������,�㽫�¸ҵ�ȥ�������.")

	MisResultCondition(HasMission, 914)
	MisResultCondition(NoRecord,914)
	MisResultCondition(HasItem, 1008, 1)
	MisResultCondition(HasItem, 1010, 1)------------�пݽ�֮��
	MisResultAction(TakeItem, 1008, 1 )
	MisResultAction(TakeItem, 1010, 1 )
	MisResultAction(GiveItem, 1013,1,4)------------������֮��
	MisResultAction(ClearMission, 914)
	MisResultAction(SetRecord, 914)
	MisResultAction(ClearRecord, 914)---------------���Է�����

	InitTrigger()
	TriggerCondition( 1, IsItem, 1008)	
	TriggerAction( 1, AddNextFlag, 914, 10, 1 )
	RegCurTrigger( 9141 )
	
	
	-----------------------------------------------------------------------Ѫ�ȵĸ߸�Ь
	DefineMission( 919, "Ѫ�ȵĸ߸�Ь", 915)
	
	MisBeginTalk( "<t>���ϡ����ұ��ϰ������ͷ,������Ѫ����,����ô��������һ˫�߸�Ь����ʲô���㲻������˵�ģ��ð�,�ð�,�����ҵ����˵�,�������ȥ�Ұ����ǵ�<bҽ��С�㡤��>(2244,2770),���˿��������ְ�����.���ϡ������ϡ���")
	MisBeginCondition(NoRecord, 915 )
	MisBeginCondition(NoMission, 915 )
	MisBeginAction(AddMission, 915 )
	MisBeginAction(GiveItem, 1026,1,4)------����ҽԺ���˵�
	MisCancelAction(ClearMission, 915)
	MisBeginBagNeed(1)
	
	MisNeed(MIS_NEED_DESP, "�Ұ����ǵ�ҽ��С�㡤����֤")
	MisHelpTalk("<t>ҽ��С���������2244,2770")
	MisResultCondition(AlwaysFailure )

------------------------------------------------------------------------------Ѫ�ȵĸ߸�Ь
	DefineMission( 920, "Ѫ�ȵĸ߸�Ь", 915, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>�����ô����������!")
	MisResultCondition(HasMission, 915)
	MisResultCondition(NoRecord,915)
	MisResultCondition(HasItem, 1026, 1)
	MisResultAction(TakeItem, 1026, 1 )
	MisResultAction(ClearMission, 915)
	MisResultAction(SetRecord, 915 )
	 
-------------------------------------------------------------------------------��Ѳ�߱���֤

	DefineMission( 921, "��Ѳ�߱���֤", 916 )

	MisBeginTalk("<t>����,�������˵�����������ߵ�,��ʱ���˿��������Ǳ�ĳ�����Ƹ߸�Ь���������.�����ߺ�����һ�����ݵ����ˡ�����������ôŪ�˵��ҾͲ������,����Ǻ�Ů���Ѵ�ܰ�,hoho����������Ц,��˵ɳᰳ�<bѲ�߱�������>(959,3549)���ڵ����������,�����ȥ������.")
	MisBeginCondition(NoMission, 916)
	MisBeginCondition(HasRecord,915)
	MisBeginCondition(NoRecord,916)
	MisBeginAction(AddMission, 916 )
	MisCancelAction(ClearMission, 916)
	MisResultCondition(AlwaysFailure )
	-------------------------------------------------------------------��Ѳ�߱���֤
	DefineMission( 922, "��Ѳ�߱���֤", 916, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>Ѳ�߱��治�Ǻõ���,����������,���ʻ���ô���!")
	MisResultCondition(HasMission, 916)
	MisResultCondition(NoRecord,916)
	MisResultAction(ClearMission, 916)
	MisResultAction(SetRecord, 916 )

	 
	---------------------------------------------------------------�߸�Ь��������
	DefineMission( 923, "�߸�Ь��������", 917)
	
	MisBeginTalk( "<t>����������˵�Ǽ����顭������,�ҵ�����һ��ʱ����,���������š����������鲻̫��˵��������.�¼�˫����˵�Լ����ܺ���,���ִ��˵��ǶԷ�,�鷳�İ�����������,����Ů�ϰ���ߵ����˵�,��Ȼ�ּ���Щģ��,�������ǿ�����Ϊ������.")
	MisBeginCondition(NoRecord, 917 )
	MisBeginCondition(NoMission, 917)
	MisBeginCondition(HasRecord, 916 )
	MisBeginAction(AddMission, 917 )
	MisBeginAction(GiveItem, 1027,1,4)------Ů�ϰ�����˵�
	MisBeginAction(AddTrigger, 9171, TE_GETITEM, 1030, 1)
	MisBeginBagNeed(1)

	MisCancelAction(ClearMission, 917)
	MisNeed(MIS_NEED_ITEM, 1030, 1, 10, 1)

	MisResultTalk("<t>ֻ���¸��߸���ά������!")
	MisHelpTalk("<t>�����˵��ٻ�����,�����")
	MisResultCondition(HasMission,  917)
	MisResultCondition(NoRecord , 917)
	MisResultCondition(HasItem,1030,1 )
	MisResultAction(TakeItem, 1030, 1 )-------
	MisResultAction(ClearMission,   917)
	MisResultAction(SetRecord,  917 )
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 1030)	
	TriggerAction( 1, AddNextFlag, 917, 10, 1 )
	RegCurTrigger( 9171 )
-------------------------------------------------------------------------�߸�Ь��������--------------
	DefineMission( 924, "�߸�Ь��������", 918)------------

	MisBeginTalk( "<t>ԭ��������������������߸�Ь,�����˸е�����,Ϊ�˲�������Σ��Ⱥ��,�����ڽ��������㱣��.лл!")---------------
	MisBeginCondition(NoRecord, 918 )
	--MisBeginCondition(NoMission, 918 )
	MisBeginCondition(HasRecord, 917 )
	--MisBeginAction(AddMission, 918 )
	MisBeginAction(GiveItem, 1029,1,4)----------
	MisBeginAction(AddExp,500,500)
	--MisBeginAction(ClearMission, 918 )
	MisBeginAction(SetRecord, 918 )
	MisCancelAction(ClearMission, 918)
	MisBeginBagNeed(1)---------------

	MisHelpTalk("<t>�˼����й���!")----------

	MisResultCondition(AlwaysFailure )---------


	--------------------------------------------------------------------��������1

	DefineMission( 6000, "�������", 1000 )
	MisBeginTalk("<t>����,�Ƿ���˵��������ͣ����ÿ500��ԡ������һ��.ԭ��ÿ���б����ĺ������л���ת��,���Դ��Ǵ�ʥս֮��,����ת��������֮ʯ���ұ�����ɢ���˼�,��һЩ�ҳ���������ػ�.������ܼ���������Ƭ�Ҿ�ʩ�÷���ʹ��ת��.����ռ�Ƿ���<r���ɴ�½��ĳ������>���п���,�㲻��ȥ��������.")
	MisBeginCondition(NoMission, 1000)
	MisBeginCondition(NoRecord,1000)
	MisBeginCondition(HasCredit,9999)
	MisBeginAction(AddMission,1000)
	MisBeginAction(AddTrigger, 10001, TE_GETITEM, 2226, 1)
	MisBeginAction(AddTrigger, 10002, TE_GETITEM, 2227, 1)
	MisBeginAction(AddTrigger, 10003, TE_GETITEM, 2228, 1)
	MisBeginAction(AddTrigger, 10004, TE_GETITEM, 2229, 1)
	MisBeginAction(AddTrigger, 10005, TE_GETITEM, 2230, 1)
	MisBeginAction(AddTrigger, 10006, TE_GETITEM, 2231, 1)
	MisBeginAction(AddTrigger, 10007, TE_GETITEM, 2232, 1)
	MisBeginAction(AddTrigger, 10008, TE_GETITEM, 2233, 1)
	
	
	MisCancelAction(ClearMission, 1000)

	MisNeed(MIS_NEED_DESP, "��������֮ʯ��8Ƭ��Ƭ.")
	MisNeed(MIS_NEED_ITEM, 2226, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 2227, 1, 20, 1)
	MisNeed(MIS_NEED_ITEM, 2228, 1, 30, 1)
	MisNeed(MIS_NEED_ITEM, 2229, 1, 40, 1)
	MisNeed(MIS_NEED_ITEM, 2230, 1, 50, 1)
	MisNeed(MIS_NEED_ITEM, 2231, 1, 60, 1)
	MisNeed(MIS_NEED_ITEM, 2232, 1, 70, 1)
	MisNeed(MIS_NEED_ITEM, 2233, 1, 80, 1)
	
	

	MisHelpTalk("<t>�ǰ�Ƭ��Ƭɢ�����������,��Ҫ���ð���ǧ�������׼��")
	MisResultTalk("<t>�����ϵ۴�����漣,�ȴ�ת����ΰ��ʱ�̰�.")

	MisResultCondition(HasMission, 1000)
	MisResultCondition(NoRecord,1000)
	MisResultCondition(HasItem, 2226, 1)
	MisResultCondition(HasItem, 2227, 1)
	MisResultCondition(HasItem, 2228, 1)
	MisResultCondition(HasItem, 2229, 1)
	MisResultCondition(HasItem, 2230, 1)
	MisResultCondition(HasItem, 2231, 1)
	MisResultCondition(HasItem, 2232, 1)
	MisResultCondition(HasItem, 2233, 1)
	
	
	MisResultAction(TakeItem, 2226, 1 )
	MisResultAction(TakeItem, 2227, 1 )
	MisResultAction(TakeItem, 2228, 1 )
	MisResultAction(TakeItem, 2229, 1 )
	MisResultAction(TakeItem, 2230, 1 )
	MisResultAction(TakeItem, 2231, 1 )
	MisResultAction(TakeItem, 2232, 1 )
	MisResultAction(TakeItem, 2233, 1 )
	
	
	MisResultAction(GiveItem, 2235,1,4)------------������֮ʯ
	MisResultAction(ClearMission, 1000)
	MisResultAction(ZSSTOP)
	MisResultAction(SetRecord, 1000)
	MisResultBagNeed(1)
	


	InitTrigger()
	TriggerCondition( 1, IsItem, 2226)	
	TriggerAction( 1, AddNextFlag, 1000, 10, 1 )
	RegCurTrigger( 10001 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2227)	
	TriggerAction( 1, AddNextFlag, 1000, 20, 1 )
	RegCurTrigger( 10002 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2228)	
	TriggerAction( 1, AddNextFlag, 1000, 30, 1 )
	RegCurTrigger( 10003 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2229)	
	TriggerAction( 1, AddNextFlag, 1000, 40, 1 )
	RegCurTrigger( 10004 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2230)	
	TriggerAction( 1, AddNextFlag, 1000, 50, 1 )
	RegCurTrigger( 10005 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2231)	
	TriggerAction( 1, AddNextFlag, 1000, 60, 1 )
	RegCurTrigger( 10006 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2232)	
	TriggerAction( 1, AddNextFlag, 1000, 70, 1 )
	RegCurTrigger( 10007 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2233)	
	TriggerAction( 1, AddNextFlag, 1000, 80, 1 )
	RegCurTrigger( 10008 )
	
-------------------------------------------------��ѩ��	
	DefineMission (5500, "��ѩ��", 818)
	
	MisBeginTalk("<t>����ʥ���ڿ���Ư����,�����ѩ,���������������ѩ�̿����ٴ̼�������,����������?��Ļ���ȥ����20��<b��ɫ�����>,�ҿ���Ϊ������<rСѩ��>,����ˬ��һ��.")

	MisBeginCondition(NoMission,818)
	MisBeginCondition(NoRecord,818)
	MisBeginAction(AddMission,818)
	MisBeginAction(AddTrigger, 8181, TE_KILL, 218, 20 )
	MisCancelAction(ClearMission, 818)
	
	--MisNeed(MIS_NEED_DESP, "����20�������")
	MisNeed(MIS_NEED_KILL, 218, 20, 10, 20)

	MisHelpTalk("<t>Ʈѩ��ʥ�������Ͼ�Ҫ��ʼ��")
	MisResultTalk("<t>����,����ô����������,һ���Ǵ�ѩ�̵ĺ���,�����Ҿ���Ϊ��������Сѩ��,�����������ʥ����.")


	MisResultCondition(HasMission, 818)
	MisResultCondition(NoRecord,818)
	MisResultCondition(HasFlag, 818, 29 )
	MisResultAction(ClearMission, 818)
	MisResultAction(SetRecord,  818 )
	MisResultAction(ClearRecord, 818)---------------���Է�����
	MisResultAction(GiveItem, 2896, 10, 4)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 218)	
	TriggerAction( 1, AddNextFlag, 818, 10, 20 )
	RegCurTrigger( 8181 )

	-------------------------------------------------��ѩ��	
	DefineMission (5501, "��ѩ��", 819)
	
	MisBeginTalk("<t>����ʥ���ڿ���Ư����,�����ѩ,���������������ѩ�̿����ٴ̼�������,����������?��Ļ���ȥ����20��<b�����>,�ҿ���Ϊ������<rСѩ��>,����ˬ��һ��.")

	MisBeginCondition(NoMission,819)
	MisBeginCondition(NoRecord,819)
	MisBeginAction(AddMission,819)
	MisBeginAction(AddTrigger, 8191, TE_KILL, 75, 20 )
	MisCancelAction(ClearMission, 819)
	
	--MisNeed(MIS_NEED_DESP, "����20����ɫ�����")
	MisNeed(MIS_NEED_KILL, 75, 20, 10, 20)

	MisHelpTalk("<t>Ʈѩ��ʥ�������Ͼ�Ҫ��ʼ��")
	MisResultTalk("<t>����,����ô����������,һ���Ǵ�ѩ�̵ĺ���,�����Ҿ���Ϊ��������Сѩ��,�����������ʥ����.")


	MisResultCondition(HasMission, 819)
	MisResultCondition(NoRecord,819)
	MisResultCondition(HasFlag, 819, 29 )
	MisResultAction(ClearMission, 819)
	MisResultAction(SetRecord,  819 )
	MisResultAction(ClearRecord, 819)---------------���Է�����
	MisResultAction(GiveItem, 2896, 10, 4)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 75)	
	TriggerAction( 1, AddNextFlag, 819, 10, 20 )
	RegCurTrigger( 8191 )

-------------------------------------------------��ѩ��	
	DefineMission (5502, "��ѩ��", 820)
	
	MisBeginTalk("<t>����ʥ���ڿ���Ư����,�����ѩ,���������������ѩ�̿����ٴ̼�������,����������?��Ļ���ȥ����20��<bѩ�ؾ����>,�ҿ���Ϊ������<rСѩ��>,����ˬ��һ��.")

	MisBeginCondition(NoMission,820)
	MisBeginCondition(NoRecord,820)
	MisBeginAction(AddMission,820)
	MisBeginAction(AddTrigger, 8201, TE_KILL, 216, 20 )
	MisCancelAction(ClearMission, 820)
	
	--MisNeed(MIS_NEED_DESP, "����20��ѩ�ؾ����")
	MisNeed(MIS_NEED_KILL, 216, 20, 10, 20)

	MisHelpTalk("<t>Ʈѩ��ʥ�������Ͼ�Ҫ��ʼ��")
	MisResultTalk("<t>����,����ô����������,һ���Ǵ�ѩ�̵ĺ���,�����Ҿ���Ϊ��������Сѩ��,�����������ʥ����.")


	MisResultCondition(HasMission, 820)
	MisResultCondition(NoRecord,820)
	MisResultCondition(HasFlag, 820, 29 )
	MisResultAction(ClearMission, 820)
	MisResultAction(SetRecord,  820 )
	MisResultAction(ClearRecord, 820)---------------���Է�����
	MisResultAction(GiveItem, 2896, 10, 4)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 216)	
	TriggerAction( 1, AddNextFlag, 820, 10, 20 )
	RegCurTrigger( 8201 )

-----------------------------------------------��ʿ��֤��
	DefineMission(6001,"��ʿ��֤��",1002)

      MisBeginTalk("<t> ������ǻۺ����������������ɾ����Щ�����Ķ�ħ!���ݵ�ʥ������15ֻ,���ݵİ�Ӱ����15ֻ,����ĵؾ�����15ֻ,а����ػ���ʹ15ֻ,���̵İ�Ӱ����15ֻ,���̵�ʥ������15ֻ.")

      MisBeginCondition(HasRecord,1001)
      MisBeginCondition(NoRecord,1002)
      MisBeginCondition(NoMission,1002)
      MisBeginCondition(HasCredit,9999 )
      MisBeginAction(TakeCredit, 9999 )
      MisBeginAction(AddMission,1002)
      MisBeginAction(AddTrigger, 10021, TE_KILL,525, 15)
      MisBeginAction(AddTrigger, 10022, TE_KILL,526, 15)
      MisBeginAction(AddTrigger, 10023, TE_KILL, 532, 15)
      MisBeginAction(AddTrigger, 10024, TE_KILL, 550, 15)
      MisBeginAction(AddTrigger, 10025, TE_KILL, 554, 15)
      MisBeginAction(AddTrigger, 10026, TE_KILL, 553, 15)
      MisCancelAction(ClearMission, 1002)

      MisNeed(MIS_NEED_DESP, "��ɱ15ֻ���ݵ�ʥ������,15ֻ���ݵİ�Ӱ����,15ֻ����ĵؾ�����,15ֻа����ػ���ʹ,15ֻ���̵İ�Ӱ����,15ֻ���̵�ʥ������!")
      MisNeed(MIS_NEED_KILL, 525, 15, 10, 15)
      MisNeed(MIS_NEED_KILL, 526, 15, 30, 15)
      MisNeed(MIS_NEED_KILL, 532, 15, 50, 15)
      MisNeed(MIS_NEED_KILL, 550, 15, 70, 15)
      MisNeed(MIS_NEED_KILL, 554, 15, 90, 15)
      MisNeed(MIS_NEED_KILL, 553, 15, 110, 15)

      MisHelpTalk("<t>ɱ������,���������.")  
      MisResultTalk("<t>�����ֻ�����,�Ժ���һ��.�������ǻ۵���Ƭ����ȥ.ϣ��������ʵ��ת��������,��˵ת���������ѡְҵ......")
      MisResultCondition(HasMission,1002 )
      MisResultCondition(NoRecord,1002)
      MisResultCondition(HasFlag, 1002, 24)
      MisResultCondition(HasFlag, 1002, 44)
      MisResultCondition(HasFlag, 1002, 64)
      MisResultCondition(HasFlag, 1002, 84)
      MisResultCondition(HasFlag, 1002, 104)
      MisResultCondition(HasFlag, 1002, 124)
      MisResultAction(GiveItem, 2228, 1, 4 )
      MisResultAction(ClearMission, 1002 )
      MisResultAction(SetRecord, 1002)
      MisResultBagNeed(1)

      InitTrigger()
      TriggerCondition( 1, IsMonster, 525 )
      TriggerAction( 1, AddNextFlag, 1002, 10, 15 )
      RegCurTrigger( 10021 )
       InitTrigger()
      TriggerCondition( 1, IsMonster, 526 )
      TriggerAction( 1, AddNextFlag, 1002, 30, 15 )
      RegCurTrigger( 10022 )
       InitTrigger()
      TriggerCondition( 1, IsMonster,532  )
      TriggerAction( 1, AddNextFlag, 1002, 50, 15 )
      RegCurTrigger( 10023 )
       InitTrigger()
      TriggerCondition( 1, IsMonster, 550 )
      TriggerAction( 1, AddNextFlag, 1002, 70, 15 )
      RegCurTrigger( 10024 )
       InitTrigger()
      TriggerCondition( 1, IsMonster, 554 )
      TriggerAction( 1, AddNextFlag, 1002, 90, 15 )
      RegCurTrigger( 10025 )
       InitTrigger()
      TriggerCondition( 1, IsMonster,553)
      TriggerAction( 1, AddNextFlag, 1002, 110, 15 )
      RegCurTrigger( 10026 )




------------------------------------------------------С��������
	DefineMission( 6002, "С��������", 1003 )

	MisBeginTalk( "<t>������������Ʒ,�Ǹ�ңԶ�Ķ���С����ּһ�һ������ܾ��㡭���ҿ�û˵��������Ƭ��." )------------
	MisBeginCondition(NoRecord,   1003)
	MisBeginCondition(HasRecord, 1002)
	MisBeginCondition(NoMission,  1003)
	MisBeginAction(AddMission,  1003)
	MisCancelAction(ClearMission, 1003)
	MisNeed(MIS_NEED_DESP, "Ѱ�ٶ���С��������ػ���")
	MisHelpTalk("<t>��ֻ�ܸ�������ô����.")
	
	MisResultCondition(AlwaysFailure)
	
-------------------------------------------------------С��������
	DefineMission( 6003, "С��������", 1003, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>�Ҷ��ֳ�������,�������ϵó���?!")
	MisResultCondition(NoRecord,  1003)
	MisResultCondition(HasMission,  1003)
	MisResultAction(SetRecord,  1003)
	MisResultAction(ClearMission,  1003)

------------------------------------------------------------������
	DefineMission( 6004, "������", 1004 )

	MisBeginTalk( "<t>��������ϲ��Ϊ�ѱ���,�����ҵ�30��<b�޴�������޻�>,30��<b��Ʒ���ӽ�>,30��<bǧ�˼�ѹ����Դ>��������,�ٺ�......" )
	MisBeginCondition(NoRecord, 1004)
	MisBeginCondition(HasRecord, 1003)
	MisBeginCondition(NoMission, 1004)
	MisBeginAction(AddMission, 1004)
	MisBeginAction(AddTrigger, 10041, TE_GETITEM, 4730, 30 )
	MisBeginAction(AddTrigger, 10042, TE_GETITEM, 1358, 30 )
	MisBeginAction(AddTrigger, 10043, TE_GETITEM, 2619, 30 )
	MisCancelAction(ClearMission, 1004)
	
	MisNeed(MIS_NEED_ITEM, 4730, 30, 10, 30)
	MisNeed(MIS_NEED_ITEM, 1358, 30, 50, 30)
	MisNeed(MIS_NEED_ITEM, 2619, 30, 90, 30)

	MisResultTalk("<t>��Щ����������ę́�ı���ԭ�ϰ�!ǰ��ʱ��Ϊ�˼��ʳ��׽��,��ԭ�϶�������,ʧ�߰�!")
	MisHelpTalk("<t>�ҷ��ֽ�Ƹ��������𵽼���Ч��,����......")
	MisResultCondition(HasMission, 1004)
	MisResultCondition(HasItem, 4730, 30 )
	MisResultCondition(HasItem, 1358, 30 )
	MisResultCondition(HasItem, 2619, 30 )
	MisResultAction(TakeItem, 4730, 30 )
	MisResultAction(TakeItem, 1358, 30 )
	MisResultAction(TakeItem, 2619, 30 )
	MisResultAction(ClearMission, 1004)
	MisResultAction(SetRecord, 1004 )
	
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4730)	
	TriggerAction( 1, AddNextFlag, 1004, 10, 30 )
	RegCurTrigger( 10041 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1358)	
	TriggerAction( 1, AddNextFlag, 1004, 50, 30 )
	RegCurTrigger( 10042 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2619)	
	TriggerAction( 1, AddNextFlag, 1004, 90, 30 )
	RegCurTrigger( 10043 )




------------------------------------------------------------��Ƽ�
	DefineMission( 6005, "��Ƽ�", 1005)

	MisBeginTalk( "<t>��Ȼ�Ǻ��ϳ��þ�,ֻ���Լ���̫�鷳��.���Ҹղźȵ�̫��,û����ʲôζ���ͺȹ���.�Ҳ��㲻����Ϊ��Ū��ƿ��������" )
	MisBeginCondition(NoRecord, 1005)
	MisBeginCondition(HasRecord, 1004)
	MisBeginCondition(NoMission, 1005)
	MisBeginAction(AddMission, 1005)
	MisBeginAction(AddTrigger, 10051, TE_GETITEM, 1087, 30 )		
	MisCancelAction(ClearMission, 1005)
	
	MisNeed(MIS_NEED_ITEM, 1087, 30, 10, 30)

	MisResultTalk("<t>�þ�!�þ�!")
	MisHelpTalk("<t>Ҫ�찡,����û�кȾƵ������˱���ҷ���������")
	MisResultCondition(HasMission, 1005)
	MisResultCondition(HasItem, 1087, 30 )
	MisResultAction(TakeItem, 1087, 30 )
	MisResultAction(ClearMission, 1005)
	MisResultAction(SetRecord, 1005 )
	
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 1087)	
	TriggerAction( 1, AddNextFlag, 1005, 10, 30 )
	RegCurTrigger( 10051 )

------------------------------------------------------------��Ƽ�
	DefineMission( 6006, "��Ƽ�", 1006)

	MisBeginTalk( "<t>�Ҽǵ��и�����˵��,Ҫ��֪���ſ���ζ����ę́��ʲô��ͬ��Ҫ�׿ڳ�һ��.��һ��������Ϊ����Ū��ƿ�ſ�������" )
	MisBeginCondition(NoRecord, 1006)
	MisBeginCondition(HasRecord, 1005)
	MisBeginCondition(NoMission, 1006)
	MisBeginAction(AddMission, 1006)
	MisBeginAction(AddTrigger, 10061, TE_GETITEM, 1088, 20 )		--
	MisCancelAction(ClearMission, 1006)
	
	MisNeed(MIS_NEED_ITEM, 1088, 20, 10, 20)

	MisResultTalk("<t>���Խ���?Ψ�жſ�!")
	MisHelpTalk("<t>��Ȱ�����Щð�ƻ�����,�պȹ��Ƶ���ʲô�¶����ó���")
	MisResultCondition(HasMission, 1006)
	MisResultCondition(HasItem, 1088, 20 )
	MisResultAction(TakeItem, 1088, 20 )
	MisResultAction(ClearMission, 1006)
	MisResultAction(SetRecord, 1006 )
	

	InitTrigger()
	TriggerCondition( 1, IsItem, 1088)	
	TriggerAction( 1, AddNextFlag, 1006, 10, 20 )
	RegCurTrigger( 10061 )



------------------------------------------------------------��Ƽ�
	DefineMission( 6007, "��Ƽ�", 1007)

	MisBeginTalk( "<t>�����ҷ���Ʒ��,���û���ę́�Ƚ��ʺ��ҵĿ�ζ,����Ϊ��Ӧ���ھƽ��в���20ƿ�Ա㲻ʱ֮��.��Ҳ��������Ϊ�İ�?" )
	MisBeginCondition(NoRecord, 1007)
	MisBeginCondition(HasRecord, 1006)
	MisBeginCondition(NoMission, 1007)
	MisBeginAction(AddMission, 1007)
	MisBeginAction(AddTrigger, 10071, TE_GETITEM, 1087, 20 )		--
	MisCancelAction(ClearMission, 1007)
	
	MisNeed(MIS_NEED_ITEM, 1087, 20, 10, 20)

	MisResultTalk("<t>����Խ��Խ��,��.......��......����")
	MisHelpTalk("<t>��Զ��Ҫ��ƹ�����,������������.")
	MisResultCondition(HasMission, 1007)
	MisResultCondition(HasItem, 1087, 20 )
	MisResultAction(TakeItem, 1087, 20 )
	MisResultAction(ClearMission, 1007)
	MisResultAction(SetRecord, 1007 )
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 1087)	
	TriggerAction( 1, AddNextFlag, 1007, 10, 20 )
	RegCurTrigger( 10071 )

------------------------------------------------------------��Ƽ�
	DefineMission( 6008, "��Ƽ�", 1008)

	MisBeginTalk( "<t>��Ҫ���!��������Ⱦ�̫��,��ʼ��θ��Ѫ�ļ���.˭��������ֹ��,��Ҫ��θ!��˵�˲ξ�����θ�ļ�Ʒ.��......�����װ�?" )
	MisBeginCondition(NoRecord, 1008)
	MisBeginCondition(HasRecord, 1007)
	MisBeginCondition(NoMission, 1008)
	MisBeginAction(AddMission, 1008)
	MisBeginAction(AddTrigger, 10081, TE_GETITEM, 1089, 15 )		--
	MisCancelAction(ClearMission, 1008)
	
	MisNeed(MIS_NEED_ITEM, 1089, 15, 10, 15)

	MisResultTalk("<t>ò�ƻ��Ǿ���Ҳ�þ�û�кȹ���......")
	MisHelpTalk("<t>������,�ȾƲ���̰��,��������µ�......")
	MisResultCondition(HasMission, 1008)
	MisResultCondition(HasItem, 1089, 15 )
	MisResultAction(TakeItem, 1089, 15 )
	MisResultAction(ClearMission, 1008)
	MisResultAction(SetRecord, 1008 )
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 1089)	
	TriggerAction( 1, AddNextFlag, 1008, 10, 15 )
	RegCurTrigger( 10081 )


------------------------------------------------------Ѱ��ħ������
	DefineMission( 6009, "Ѱ��ħ������", 1009 )

	MisBeginTalk( "<t>Ϊ��ʾ��л,���������µ���Ƭ�������Ҳ��ȫЩ,����������������������.�һ�㱼ǵ�ħ�����и��һ�Ҳ����Ƭ,��˭����......�·�......�·���Ҫ�Լ�ȥ�ú�����,�ǵ���˵ת�����ܵ�����Ե㶼�������·���...������..." )
	MisBeginCondition(NoRecord,   1009)
	MisBeginCondition(HasRecord, 1008)
	MisBeginCondition(NoMission,  1009)
	MisBeginAction(AddMission,  1009)
	MisBeginAction(GiveItem, 2227, 1, 4 )
	MisCancelAction(ClearMission, 1009)
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Ѱ��ħ���������ػ���")
	MisHelpTalk("<t>��ʵ���벻������")
	
	MisResultCondition(AlwaysFailure)
	
-------------------------------------------------------Ѱ��ħ������
	DefineMission( 6010, "Ѱ��ħ������", 1009, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>�������ħ������,��ʵ�ҴӲ����ӳ���,ֻ��Ϊ����ָ·,��Ϊ�Ҿ�������·......")
	MisResultCondition(NoRecord,  1009)
	MisResultCondition(HasMission,  1009)
	MisResultAction(SetRecord,  1009)
	MisResultAction(ClearMission,  1009)
----------------------------------------------------------���ձȹ۹���
	DefineMission( 6011, "���ձȹ۹�һ����", 1010 )
	MisBeginTalk("<t>���Ǻܾ���ǰ������,�����Ƭ����������ج��.��������֮ǰ�������ԭ��,ֻ����������������.���ձ�ȥ�����?����˵�Ƿ羰����,��˳��ȥ��������˾��,Ҫ���ܻ��Ż����һῼ�ǰ���Ƭ������.")
				
	MisBeginCondition(NoMission, 1010)
	MisBeginCondition(HasRecord, 1009)
	MisBeginCondition(NoRecord,1010)	
	MisBeginAction(AddMission,1010)
	MisBeginAction(AddTrigger, 10101, TE_KILL, 807, 1)--����˾��(807)  
	MisCancelAction(ClearMission, 1010)

	MisNeed(MIS_NEED_DESP, "��ɱ����˾��")
	MisNeed(MIS_NEED_KILL, 807,1, 10, 1)
	
	
	MisResultTalk("<t>�ӵ�������޺�,ֻ�ǹ�̫��!")
	MisHelpTalk("<t>������������˵��ëë���")
	MisResultCondition(HasMission,  1010)
	MisResultCondition(HasFlag, 1010, 10)
	MisResultCondition(NoRecord , 1010)
	MisResultAction(ClearMission,  1010)
	MisResultAction(SetRecord,  1010 )
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 807)	
	TriggerAction( 1, AddNextFlag, 1010, 10, 1 )
	RegCurTrigger( 10101 )

	


----------------------------------------------------------���ձȹ۹���
	DefineMission( 6012, "���ձȹ۹������", 1011 )
	MisBeginTalk("<t>��֪���ǲ���ǰ���ͽ���������,�ҶԼ��ձȵ����������嶼�ܷ���.�������е��������ǿ��Ǵ�,Ц�Ǵ�,�����Ǵ�,����Ҳ�Ǵ�......��Ȼ���������Ҿ�����΢�����,�����ǰͲ���")
				
	MisBeginCondition(NoMission, 1011)
	MisBeginCondition(NoRecord,1011)
	MisBeginCondition(HasRecord, 1010)
	MisBeginAction(AddMission,1011)
	MisBeginAction(AddTrigger, 10111, TE_KILL, 805, 1)--�Ͳ���(805)
	MisCancelAction(ClearMission, 1011)

	MisNeed(MIS_NEED_DESP, "��ɱ�Ͳ�����")
	MisNeed(MIS_NEED_KILL, 805,1, 10, 1)
	

	MisResultTalk("<t>�Ҿ�֪����ϲ���ڼ��ձȴ�ɱ��.")
	MisHelpTalk("<t>�������!")
	MisResultCondition(HasMission,  1011)
	MisResultCondition(HasFlag, 1011, 10)
	MisResultCondition(NoRecord , 1011)
	MisResultAction(ClearMission,  1011)
	MisResultAction(SetRecord,  1011 )
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 805)	
	TriggerAction( 1, AddNextFlag, 1011, 10, 1 )
	RegCurTrigger( 10111 )
	
	----------------------------------------------------------���ձȹ۹���
	DefineMission( 6013, "���ձȹ۹��ٴ���", 1012 )
	MisBeginTalk("<t>���ó�������ü��ձ����չ۹��β������,����л��,���Ѿ�Ϊ���������ٴ���,�¸¸�......��������ֻ����İ�צʷǰ����")
				
	MisBeginCondition(NoMission, 1012)
	MisBeginCondition(NoRecord,1012)
	MisBeginCondition(HasRecord, 1011)
	MisBeginAction(AddMission,1012)
	MisBeginAction(AddTrigger, 10121, TE_KILL, 796, 1)---ʷǰ������
	
	MisCancelAction(ClearMission, 1012)

	MisNeed(MIS_NEED_DESP, "��ɱʷǰ������!")
	MisNeed(MIS_NEED_KILL, 796,1, 10, 1)
	

	MisResultTalk("<t>�����û�������.��������۷�����,��Ƭ�����������Ƭ����ȥ��,ҲףԸ���ջ���������İ���.")
	MisHelpTalk("<t>����ֻ��צ�㳹�����������!")
	MisResultCondition(HasMission,  1012)
	MisResultCondition(HasFlag, 1012, 10)
	MisResultCondition(NoRecord , 1012)
	MisResultAction(GiveItem, 2226, 1, 4 )
	MisResultAction(ClearMission,  1012)
	MisResultAction(SetRecord,  1012 )
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 796)	
	TriggerAction( 1, AddNextFlag, 1012, 10, 1 )
	RegCurTrigger( 10121 )
	
	------------------------------------------------------˭���ػ���
	DefineMission( 6014, "˭���ػ���", 1013 )

	MisBeginTalk( "<t>����,�ӿ�Ѱ�ҵĽŲ���,ת�������Է���.�һ�㱼ǵñ��Ǳ�Ҳ��һ���ػ���......" )
	MisBeginCondition(NoRecord,   1013)
	MisBeginCondition(HasRecord, 1012)
	MisBeginCondition(NoMission,  1013)
	MisBeginAction(AddMission,  1013)
	MisCancelAction(ClearMission, 1013)
	

	MisNeed(MIS_NEED_DESP, "Ѱ����һ���ػ���")
	MisHelpTalk("<t>������?��Ҫ��������?")
	
	MisResultCondition(AlwaysFailure)

	-------------------------------------------------���˽ڵ�����----------ɳȪ����վ��NPC�ƷƶԻ��������Խ�ɫ��	
	DefineMission (5503, "���˽ڵ�����", 825)
	
	MisBeginTalk("<t>��Ҫ����������������õĻ�����?ȥ���Ҳɼ�1��õ�廨��10������֮��,�ҽ�����㾪ϲ,�������һ��ϲ����Ŷ.")

	MisBeginCondition(NoMission,825)
	MisBeginCondition(NoRecord,825)
	MisBeginCondition(LvCheck, ">",30)
	MisBeginCondition(NoChaType,3)
	MisBeginCondition(NoChaType,4)
	MisBeginAction(AddMission,825)
	MisBeginAction(AddTrigger, 8251, TE_GETITEM, 3343, 1)
	MisBeginAction(AddTrigger, 8252, TE_GETITEM, 4418, 10)
	MisCancelAction(ClearMission, 825)
	
	MisNeed(MIS_NEED_DESP, "�ɼ�1��õ�廨��10������֮��")
	MisNeed(MIS_NEED_ITEM, 3343, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 4418, 10, 20, 10 )

	MisHelpTalk("<t>��������˽ڻ���ѩ��?")
	MisResultTalk("<t>�ܺ�,����Ǽ��˶������,�㽫��������İ�����,��һ����Ϊ�㶯���!")


	MisResultCondition(HasMission, 825)
	MisResultCondition(NoRecord,825)
	MisResultCondition(HasItem, 3343, 1)
	MisResultCondition(HasItem, 4418, 10)
	MisResultAction(TakeItem, 3343, 1 )
	MisResultAction(TakeItem, 4418, 10 )
	MisResultAction(ClearMission, 825)
	MisResultAction(SetRecord,  825 )
	MisResultAction(GiveItem, 2904, 1, 4)
	MisResultBagNeed(1)
	
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 3343)	
	TriggerAction( 1, AddNextFlag, 825, 10, 1 )
	RegCurTrigger( 8251 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4418)	
	TriggerAction( 1, AddNextFlag, 825, 20, 10 )
	RegCurTrigger( 8252 )

-------------------------------------------------���˽ڵ�����----------��������վ��NPC���϶��Ի�����Ů�Խ�ɫ��	
	DefineMission (5504, "���˽ڵ�����", 826)
	
	MisBeginTalk("<t>��Ҫ����������������õĻ�����?ȥ���Ҳɼ�1��õ�廨��10������֮��,�ҽ�����㾪ϲ,�������һ��ϲ����Ŷ.")

	MisBeginCondition(NoMission,826)
	MisBeginCondition(NoRecord,826)
	MisBeginCondition(LvCheck, ">",30)
	MisBeginCondition(NoChaType,1)
	MisBeginCondition(NoChaType,2)
	MisBeginAction(AddMission,826)
	MisBeginAction(AddTrigger, 8261, TE_GETITEM, 3343, 1)
	MisBeginAction(AddTrigger, 8262, TE_GETITEM, 4418, 10)
	MisCancelAction(ClearMission, 826)
	
	MisNeed(MIS_NEED_DESP, "�ɼ�1��õ�廨��10������֮��")
	MisNeed(MIS_NEED_ITEM, 3343, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 4418, 10, 20, 10 )

	MisHelpTalk("<t>��������˽ڻ���ѩ��?")
	MisResultTalk("<t>�ܺ�,����ǲſ��������,�㽫��������İ�����,��һ����Ϊ�㶯���!")


	MisResultCondition(HasMission, 826)
	MisResultCondition(NoRecord,826)
	MisResultCondition(HasItem, 3343, 1)
	MisResultCondition(HasItem, 4418, 10)
	MisResultAction(TakeItem, 3343, 1 )
	MisResultAction(TakeItem, 4418, 10 )
	MisResultAction(ClearMission, 826)
	MisResultAction(SetRecord,  826 )
	MisResultAction(GiveItem, 2905, 1, 4)
	MisResultBagNeed(1)
	
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 3343)	
	TriggerAction( 1, AddNextFlag, 826, 10, 1 )
	RegCurTrigger( 8261 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4418)	
	TriggerAction( 1, AddNextFlag, 826, 20, 10 )
	RegCurTrigger( 8262 )


-----------------------------------------------������̩---------��������
	DefineMission(5505,"������̩",827)

      MisBeginTalk("<t> ��Ҫ���µ�һ��������ľ����?��ȥ�����ԭ�������������������������������Ұ����ս����������ѩ������1��.")

      MisBeginCondition(NoRecord,827)
      MisBeginCondition(NoMission,827)
      MisBeginAction(AddMission,827)
      MisBeginAction(AddTrigger, 8271, TE_KILL,239, 1)
      MisBeginAction(AddTrigger, 8272, TE_KILL,237, 1)
      MisBeginAction(AddTrigger, 8273, TE_KILL, 264, 1)
      MisBeginAction(AddTrigger, 8274, TE_KILL, 295, 1)
      MisBeginAction(AddTrigger, 8275, TE_KILL, 64, 1)
      MisBeginAction(AddTrigger, 8276, TE_KILL, 296, 1)
      MisBeginAction(AddTrigger, 8277, TE_KILL, 144, 1)
      MisCancelAction(ClearMission, 827)

      MisNeed(MIS_NEED_DESP, "��ԭ�������������������������������Ұ����ս����������ѩ������1��!")
      MisNeed(MIS_NEED_KILL, 239, 1, 10, 1)
      MisNeed(MIS_NEED_KILL, 237, 1, 20, 1)
      MisNeed(MIS_NEED_KILL, 264, 1, 30, 1)
      MisNeed(MIS_NEED_KILL, 295, 1, 40, 1)
      MisNeed(MIS_NEED_KILL, 64, 1, 50, 1)
      MisNeed(MIS_NEED_KILL, 296, 1, 60, 1)
      MisNeed(MIS_NEED_KILL, 144, 1, 70, 1)


      MisHelpTalk("<t>ϲӭ���ꡢ������̩.")  
      MisResultTalk("<t>����ɵúܺ�!")
      MisResultCondition(HasMission,827 )
      MisResultCondition(NoRecord,827)
      MisResultCondition(HasFlag, 827, 10)
      MisResultCondition(HasFlag, 827, 20)
      MisResultCondition(HasFlag, 827, 30)
      MisResultCondition(HasFlag, 827, 40)
      MisResultCondition(HasFlag, 827, 50)
      MisResultCondition(HasFlag, 827, 60)
      MisResultCondition(HasFlag, 827, 70)
      MisResultAction(GiveItem, 855, 10, 4 )
      MisResultAction(ClearMission, 827 )
      MisResultAction(SetRecord, 827)
      MisResultBagNeed(1)

      InitTrigger()
      TriggerCondition( 1, IsMonster, 239 )
      TriggerAction( 1, AddNextFlag, 827, 10, 1 )
      RegCurTrigger( 8271 )
       InitTrigger()
      TriggerCondition( 1, IsMonster, 237 )
      TriggerAction( 1, AddNextFlag, 827, 20, 1 )
      RegCurTrigger( 8272 )
       InitTrigger()
      TriggerCondition( 1, IsMonster,264  )
      TriggerAction( 1, AddNextFlag, 827, 30, 1 )
      RegCurTrigger( 8273 )
       InitTrigger()
      TriggerCondition( 1, IsMonster, 295 )
      TriggerAction( 1, AddNextFlag, 827, 40, 1 )
      RegCurTrigger( 8274 )
       InitTrigger()
      TriggerCondition( 1, IsMonster, 64 )
      TriggerAction( 1, AddNextFlag, 827, 50, 1 )
      RegCurTrigger( 8275 )
       InitTrigger()
      TriggerCondition( 1, IsMonster,296)
      TriggerAction( 1, AddNextFlag, 827, 60, 1 )
      RegCurTrigger( 8276 )

      InitTrigger()
      TriggerCondition( 1, IsMonster,144)
      TriggerAction( 1, AddNextFlag, 827, 70, 1 )
      RegCurTrigger( 8277 )

-------------------------------------------------��������----------��������	
	DefineMission (5506, "��������", 828)
	
	MisBeginTalk("<t>����û������������,�����ǲ��������!��ȥ�ɼ����������ݰ�,<b�̳ǿ����ҵ�>,����������л�����������ӥ��ʯ������ʯ������֮��Ů��С����һ�Ƚ��ȳ�������Ŷ!��Ȼ��Ҳ����������,<r�ҽ���ȡ��30000������>.")

	MisBeginCondition(NoMission,828)
	MisBeginCondition(HasRecord,827)
	MisBeginCondition(NoRecord,828)
	MisBeginAction(AddMission,828)
	MisBeginAction(AddTrigger, 8281, TE_GETITEM, 2908, 1)
	MisCancelAction(ClearMission, 828)
	
	MisNeed(MIS_NEED_ITEM, 2908, 1, 10, 1)
	

	MisHelpTalk("<t>��ȥ��,��ϲ������")
	MisResultTalk("<t>�ܺ�,������������������ر���,�Ͽ�򿪿�һ�°�!")

	MisResultCondition(HasMission, 828)
	MisResultCondition(NoRecord,828)
	MisResultCondition(HasItem, 2908, 1)
	MisResultCondition(HasMoney, 30000)
	MisResultAction(TakeItem, 2908, 1 )
	MisResultAction(TakeMoney,30000 )
	MisResultAction(ClearMission, 828)
	MisResultAction(SetRecord,  828 )
	MisResultAction(GiveItem, 2909, 1, 4)
	MisResultAction(ClearRecord, 828)---------------���Է�����
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 2908)	
	TriggerAction( 1, AddNextFlag, 828, 10, 1 )
	RegCurTrigger( 8281 )

	
-----------------------------------------------������ѹ�����---------�����̳�����ָ��
	DefineMission(5507,"ѹ�����",829)

      MisBeginTalk("<t> ���굽��,�ɰ�����������һ�������,ȥ��׽20ֻ������,�㽫��ú�����ѹ���һ��,��˵������ų����ö���Ŷ!")

      MisBeginCondition(NoRecord,829)
      MisBeginCondition(NoMission,829)
      MisBeginCondition(LvCheck, ">",45)
      MisBeginAction(AddMission,829)
      MisBeginAction(AddTrigger, 8291, TE_KILL,237, 20)
      MisCancelAction(ClearMission, 829)

      MisNeed(MIS_NEED_DESP, "��׽20ֻ������!")
      MisNeed(MIS_NEED_KILL, 237, 20, 10, 20)
     
      MisHelpTalk("<t>ʱ�䲻���˰�.")  
      MisResultTalk("<t>���Ĳ���!������Ǻ���������ѹ���!ֻҪ�ڳ�Ϧ֮ҹ2��17����23:00--2��18���賿1���ѹ���,�㽫�л���õ���������Ŷ!")
      MisResultCondition(HasMission,829 )
      MisResultCondition(NoRecord,829)
      MisResultCondition(HasFlag, 829, 29)
      MisResultAction(GiveItem, 2910, 1, 4 )
      MisResultAction(ClearMission, 829 )
      MisResultAction(SetRecord, 829)
      MisResultBagNeed(1)

      InitTrigger()
      TriggerCondition( 1, IsMonster, 237 )
      TriggerAction( 1, AddNextFlag, 829, 10, 20 )
      RegCurTrigger( 8291 )
       
-------------------------------------------------��Ϊ����----------��������	
	DefineMission (5508, "��Ϊ����", 830)
	
	MisBeginTalk("<t>��������Ϊ����?ֱ������������!����,��������Ե��,�ҿ��԰��������Ը,����һ���λð������!����,����֮ǰ,���������ҵĿ���,��֤�����Ӣ���Լ�����! ")

	MisBeginCondition(NoMission,830)
	MisBeginCondition(LvCheck, ">",30)
	MisBeginCondition(NoRecord,830)
	MisBeginAction(AddMission,830)
	MisBeginAction(AddTrigger, 8301, TE_GETITEM, 4418, 10 )
	MisCancelAction(ClearMission, 830)
	
	MisNeed(MIS_NEED_ITEM, 4418, 10, 10, 10 )
	

	MisHelpTalk("<t>��Ҫ��������˵ȵ�̫��Ŷ!")
	MisResultTalk("<t>�ܺ�!����ɵĺܺ�!�������ɽ����õ�Ե�ָ�ע��������.�������Ե����,����,Ҳ���ӽ��������Ҫ�����Լ��ĵ�������Ŷ!")

	MisResultCondition(HasMission, 830)
	MisResultCondition(NoRecord,830)
	MisResultCondition(HasItem, 4418, 10)
	MisResultAction(TakeItem, 4418, 10 )
	MisResultAction(ClearMission, 830)
	MisResultAction(SetRecord,  830 )
	MisResultAction(GiveItem, 2916, 1, 4)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4418)	
	TriggerAction( 1, AddNextFlag, 830, 10, 10 )
	RegCurTrigger( 8301 )


	-------------------------------------------------���֮��----------��������	
	DefineMission (5509, "���֮��", 831)
	
	MisBeginTalk("<t>������!ȥ��Ѱ����������֮����!Ѱ�Һ��Լ�ӵ��<b��ͬ�������>����һ��,��Ҫ�ҵ�����ǧ����Եһ��ǣ��<r����>.���������������˴�<r��Ե��>һ����.")

	MisBeginCondition(NoMission,831)
	MisBeginCondition(NoMission,832)
	MisBeginCondition(HasRecord,830)
	MisBeginCondition(NoRecord,831)
	MisBeginCondition(NoRecord,832)
	MisBeginCondition(NoChaType,1)
	MisBeginCondition(NoChaType,2)
	MisBeginCondition(HasItem, 2902, 1)
	MisBeginAction(AddTrigger, 8311, TE_GETITEM, 2903, 1 )
	MisBeginAction(AddTrigger, 8312, TE_GETITEM, 2845, 1 )
	MisBeginAction(AddMission,831)
	MisCancelAction(ClearMission, 831)
	

	MisNeed(MIS_NEED_ITEM, 2903, 1, 10, 1 )
	MisNeed(MIS_NEED_ITEM, 2845, 1, 20, 1 )


	MisHelpTalk("<t>�ǵô�������˺����Ǿ���<r��ͬ�������Ե��>һ������")
	MisResultTalk("<t>��������һ��!��ϲ����!��Ϊף�����������������������,ÿ��ֻ�ܴ�һ��,ÿ��������һ�׽�����,Ը�������������ߵ�һ��!")

	MisResultCondition(HasMission, 831)
	MisResultCondition(NoRecord,831)
	MisResultCondition(HasItem, 2902, 1)
	MisResultCondition(HasItem, 2903, 1)
	MisResultCondition(HasItem, 2845, 1)
	MisResultCondition(CheckItem,2902,2903)
	MisResultAction(TakeItem, 2902, 1 )
	MisResultAction(TakeItem, 2903, 1 )
	MisResultAction(TakeItem, 2845, 1 )
	MisResultAction(ClearMission, 831)
	MisResultAction(SetRecord,  831 )
	MisResultAction(GiveItem, 2915, 2, 4)
	MisResultAction(Starteffect,  370 )
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsItem, 2903)	
	TriggerAction( 1, AddNextFlag, 831, 10, 1 )
	RegCurTrigger( 8311 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2845)	
	TriggerAction( 1, AddNextFlag, 831, 20, 1 )
	RegCurTrigger( 8312 )
		-------------------------------------------------���֮��----------��������	
	DefineMission (5536, "���֮��", 832)
	
	MisBeginTalk("<t>������!ȥ��Ѱ����������֮����!Ѱ�Һ��Լ�ӵ��<b��ͬ�������>����һ��,��Ҫ�ҵ�����ǧ����Եһ��ǣ��<r����>.���������������˴�<r��Ե��>һ����.")

	MisBeginCondition(NoMission,832)
	MisBeginCondition(NoMission,831)
	MisBeginCondition(HasRecord,830)
	MisBeginCondition(NoRecord,831)
	MisBeginCondition(NoRecord,832)
	MisBeginCondition(NoChaType,3)
	MisBeginCondition(NoChaType,4)
	MisBeginCondition(HasItem, 2903, 1)
	MisBeginAction(AddTrigger, 8321, TE_GETITEM, 2902, 1 )
	MisBeginAction(AddTrigger, 8322, TE_GETITEM, 2845, 1 )
	MisBeginAction(AddMission,832)
	MisCancelAction(ClearMission, 832)
	

	MisNeed(MIS_NEED_ITEM, 2902, 1, 10, 1 )
	MisNeed(MIS_NEED_ITEM, 2845, 1, 20, 1 )


	MisHelpTalk("<t>�ǵô�������˺����Ǿ���<r��ͬ�������Ե��>һ������")
	MisResultTalk("<t>��������һ��!��ϲ����!��Ϊף�����������������������,ÿ��ֻ�ܴ�һ��,ÿ��������һ�׽�����,Ը�������������ߵ�һ��!")

	MisResultCondition(HasMission, 832)
	MisResultCondition(NoRecord,832)
	MisResultCondition(HasItem, 2902, 1)
	MisResultCondition(HasItem, 2903, 1)
	MisResultCondition(HasItem, 2845, 1)
	MisResultCondition(CheckItem,2902,2903)
	MisResultAction(TakeItem, 2902, 1 )
	MisResultAction(TakeItem, 2903, 1 )
	MisResultAction(TakeItem, 2845, 1 )
	MisResultAction(ClearMission, 832)
	MisResultAction(SetRecord,  832 )
	MisResultAction(GiveItem, 2915, 2, 4)
	MisResultAction(Starteffect,  370 )
	MisResultBagNeed(2)


	InitTrigger()
	TriggerCondition( 1, IsItem, 2902)	
	TriggerAction( 1, AddNextFlag, 832, 10, 1 )
	RegCurTrigger( 8321 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2845)	
	TriggerAction( 1, AddNextFlag, 832, 20, 1 )
	RegCurTrigger( 8322 )



	-------------------------------------------------��ս����˹1	
	DefineMission (5510, "��ս����˹", 743)
	
	MisBeginTalk("<t>���Ϊ��������һ��ʿ��?����ս�Լ��ļ�����?�Ǿ�����������һ�º�����07�����߰�!����ԴӰ����ǳ���,�����һվ��������վ,�����ָ��Ա���������һվ.<r�Ȿ��ս�����Ϊ���ʱ,���ڱ�֤�㱳����һ��ҪΪ��,�ǵ���սȫ�̶�Ҫ���Ȿ����ڱ�����һ��,��ҪŲ��>,��ȥ��.")

	MisBeginCondition(NoMission,743)
	MisBeginCondition(NoRecord,743)
	MisBeginCondition(CheckBagEmp,0)
	MisBeginAction(AddMission,743)
	MisBeginAction(AddChaItem1, 2911)
	MisCancelAction(SystemNotice, "�������޷��ж�")
	MisBeginBagNeed(1)
	
	MisNeed(MIS_NEED_DESP, "��һվ����������վ,����ָ�ӡ�������(3097,3530)����Ҫ�ҵ���.")
	
	MisHelpTalk("<t>ÿ����Ҫ������װ���˶������ֶ���Ŷ")
	MisResultCondition(AlwaysFailure )

	---------------------------------------��ս����˹1

	DefineMission(5511,"��ս����˹",743,COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>������,��ʿ!")
	MisResultCondition(HasMission, 743)
	MisResultCondition(CheckBag, 2911,0,1)
	MisResultCondition(NoRecord,743)
	MisResultAction(ClearMission, 743)
	MisResultAction(SetRecord,743 )
	


	-------------------------------------------------��ս����˹2	
	DefineMission (5512, "��ս����˹2", 744)
	
	MisBeginTalk("<t>����ٶȲ��Ǻܿ찡,�Ѿ����˾���������.������Ĺٷ�֤��,�Ͽ������!Ф�в���վ�ĺ���ָ�ӡ�����˹�ڽ����ĵ���.")

	MisBeginCondition(NoMission,744)
	MisBeginCondition(HasRecord, 743)
	MisBeginCondition(NoRecord,744)
	MisBeginCondition(CheckBag, 2911,0,1)
	MisBeginAction(AddMission,744)
	MisCancelAction(SystemNotice, "�������޷��ж�")
	
	MisNeed(MIS_NEED_DESP, "��һվ��Ф�в���վ,��Ҫ�ҵ�����ָ�ӡ�����˹(136,3432)")
	
	MisHelpTalk("<t>ÿ����Ҫ������װ���˶������ֶ���Ŷ")
	MisResultCondition(AlwaysFailure )

	---------------------------------------��ս����˹2

	DefineMission(5513,"��ս����˹2",744,COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>���ʱ�������Ĳ��Ǻ�ǿ��")
	MisResultCondition(HasMission, 744)
	MisResultCondition(NoRecord,744)
	MisResultCondition(CheckBag, 2911,0,1)
	MisResultAction(ClearMission, 744)
	MisResultAction(SetRecord,  744 )

	

	-------------------------------------------------��ս����˹3	
	DefineMission (5514, "��ս����˹3", 745)
	
	MisBeginTalk("<t>������Ĺٷ�֤��,���߰�!С�ϲ���վ�ĺ���ָ�ӡ��ϵ�������Ҳ�ż���")

	MisBeginCondition(NoMission,745)
	MisBeginCondition(HasRecord, 744)
	MisBeginCondition(NoRecord,745)
	MisBeginCondition(CheckBag, 2911,0,1)
	MisBeginAction(AddMission,745)
	MisCancelAction(SystemNotice, "�������޷��ж�")
	
	MisNeed(MIS_NEED_DESP, "��һվ��С�ϲ���վ,��Ҫ�ҵ�����ָ�ӡ��ϵ���(1544,3712)")
	
	MisHelpTalk("<t>ÿ����Ҫ������װ���˶������ֶ���Ŷ")
	MisResultCondition(AlwaysFailure )

	---------------------------------------��ս����˹3

	DefineMission(5515,"��ս����˹3",745,COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>���̻�˳����?")
	MisResultCondition(HasMission, 745)
	MisResultCondition(NoRecord,745)
	MisResultCondition(CheckBag, 2911,0,1)
	MisResultAction(ClearMission, 745)
	MisResultAction(SetRecord,  745 )



	-------------------------------------------------��ս����˹4	
	DefineMission (5516, "��ս����˹4", 746)
	
	MisBeginTalk("<t>�����Ϊ�Ӵ�Զ������ʿ,��Լ���ʱ�䶼û��.��Ƥ�Ų���վ�ĺ���ָ�ӡ����������ӿ϶�Ҳ���ù�.")

	MisBeginCondition(NoMission,746)
	MisBeginCondition(HasRecord, 745)
	MisBeginCondition(NoRecord,746)
	MisBeginCondition(CheckBag, 2911,0,1)
	MisBeginAction(AddMission,746)
	MisCancelAction(SystemNotice, "�������޷��ж�")
	
	MisNeed(MIS_NEED_DESP, "��һվ�ǰ�Ƥ�Ų���վ,��Ҫ�ҵ�����ָ�ӡ�����(3194,3507)")
	
	MisHelpTalk("<t>ÿ����Ҫ������װ���˶������ֶ���Ŷ")
	MisResultCondition(AlwaysFailure )

	---------------------------------------��ս����˹4

	DefineMission(5517,"��ս����˹4",746,COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t> ��һ·����,��һ���̵����ٱ�����,����˵̩̹��˾������⸽������.")
	MisResultCondition(HasMission, 746)
	MisResultCondition(NoRecord,746)
	MisResultCondition(CheckBag, 2911,0,1)
	MisResultAction(ClearMission, 746)
	MisResultAction(SetRecord,  746 )
	


	-------------------------------------------------��ս����˹5	
	DefineMission (5518, "��ս����˹5", 747)
	
	MisBeginTalk("<t>��Ȼ���Ϸ�����޺�,��Ҫץ��ʱ���·Ŷ!������װֻ��һ��!���ҿ���������վ����Զ��.")

	MisBeginCondition(NoMission,747)
	MisBeginCondition(HasRecord,746)
	MisBeginCondition(NoRecord,747)
	MisBeginCondition(CheckBag, 2911,0,1)
	MisBeginAction(AddMission,747)
	MisCancelAction(SystemNotice, "�������޷��ж�")
	
	MisNeed(MIS_NEED_DESP, "��һվ�ǿ���������վ,��Ҫ�ҵ�����ָ�ӡ��µ�(738,3803)")
	
	MisHelpTalk("<t>ÿ����Ҫ������װ���˶������ֶ���Ŷ")
	MisResultCondition(AlwaysFailure )

	---------------------------------------��ս����˹5

	DefineMission(5519,"��ս����˹5",747,COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t> ����ٶ���ɳ�ع�һ������!")
	MisResultCondition(HasMission, 747)
	MisResultCondition(NoRecord,747)
	MisResultCondition(CheckBag, 2911,0,1)
	MisResultAction(ClearMission, 747)
	MisResultAction(SetRecord,  747 )
	


	-------------------------------------------------��ս����˹6	
	DefineMission (5520, "��ս����˹6", 748)
	
	MisBeginTalk("<t>�����ĵ��Ͽ��ܻ������ĵ�����,�ҷ�Ȱ�����������ղ���վ����ǰ��,��������ĸ���ʱ����������.")

	MisBeginCondition(NoMission,748)
	MisBeginCondition(HasRecord,747)
	MisBeginCondition(NoRecord,748)
	MisBeginCondition(CheckBag, 2911,0,1)
	MisBeginAction(AddMission,748)
	MisCancelAction(SystemNotice, "�������޷��ж�")
	
	MisNeed(MIS_NEED_DESP, "��һվ�������ղ���վ,��Ҫ�ҵ�����ָ�ӡ��Ƕ�����(194,1715)")
	
	MisHelpTalk("<t>ÿ����Ҫ������װ���˶������ֶ���Ŷ")
	MisResultCondition(AlwaysFailure )

	---------------------------------------��ս����˹6

	DefineMission(5521,"��ս����˹6",748,COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t> �����������Ǻ����ıر�Ʒ")
	MisResultCondition(HasMission, 748)
	MisResultCondition(NoRecord,748)
	MisResultCondition(CheckBag, 2911,0,1)
	MisResultAction(ClearMission, 748)
	MisResultAction(SetRecord,  748 )
	


	-------------------------------------------------��ս����˹7	
	DefineMission (5522, "��ս����˹7", 749)
	
	MisBeginTalk("<t>����������!������Ӣ��Ӧ��������!��һվ�����Ų���վ.")

	MisBeginCondition(NoMission,749)
	MisBeginCondition(HasRecord,748)
	MisBeginCondition(NoRecord,749)
	MisBeginCondition(CheckBag, 2911,0,1)
	MisBeginAction(AddMission,749)
	MisCancelAction(SystemNotice, "�������޷��ж�")
	
	MisNeed(MIS_NEED_DESP, "��һվ���Ų���վ,��Ҫ�ҵ�����ָ�ӡ�������(3498,923)")
	
	MisHelpTalk("<t>ÿ����Ҫ������װ���˶������ֶ���Ŷ")
	MisResultCondition(AlwaysFailure )

	---------------------------------------��ս����˹7

	DefineMission(5523,"��ս����˹7",749,COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t> ��˵������ս���˺ܶ�??���ǡ���")
	MisResultCondition(HasMission, 749)
	MisResultCondition(NoRecord,749)
	MisResultCondition(CheckBag, 2911,0,1)
	MisResultAction(ClearMission, 749)
	MisResultAction(SetRecord,  749 )
	


	-------------------------------------------------��ս����˹8	
	DefineMission (5524, "��ս����˹8", 750)
	
	MisBeginTalk("<t>���ǵ����Ų���վ����ʿ���Ǻܶ�,�ѵ���Щ�һﶼ�ں���������???�����ﲹ��վ�ĺ���ָ�ӡ���Ŧ������ͥ������!")

	MisBeginCondition(NoMission,750)
	MisBeginCondition(HasRecord,749)
	MisBeginCondition(NoRecord,750)
	MisBeginCondition(CheckBag, 2911,0,1)
	MisBeginAction(AddMission,750)
	MisCancelAction(SystemNotice, "�������޷��ж�")
	
	MisNeed(MIS_NEED_DESP, "��һվ�����ﲹ��վ,��Ҫ�ҵ�����ָ�ӡ���Ŧ(2042,635)")
	
	MisHelpTalk("<t>ÿ����Ҫ������װ���˶������ֶ���Ŷ")
	MisResultCondition(AlwaysFailure )

	---------------------------------------��ս����˹8

	DefineMission(5525,"��ս����˹8",750,COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t> �������������������,û������������Ҳû�б����ֳԵ�")
	MisResultCondition(HasMission, 750)
	MisResultCondition(NoRecord,750)
	MisResultCondition(CheckBag, 2911,0,1)
	MisResultAction(ClearMission, 750)
	MisResultAction(SetRecord,  750 )
	
	

	-------------------------------------------------��ս����˹9	
	DefineMission (5526, "��ս����˹9", 751)
	
	MisBeginTalk("<t>ң�뵱���Һ�����ʱ�򡭡��Բ���,��������ܸ�ʱ��.����ָ�ӡ�³�����ո۲���վ����.")

	MisBeginCondition(NoMission,751)
	MisBeginCondition(HasRecord,750)
	MisBeginCondition(NoRecord,751)
	MisBeginCondition(CheckBag, 2911,0,1)
	MisBeginAction(AddMission,751)
	MisCancelAction(SystemNotice, "�������޷��ж�")
	
	MisNeed(MIS_NEED_DESP, "��һվ�ո۲���վ,��Ҫ�ҵ�����ָ�ӡ�³��(464,468)")
	
	MisHelpTalk("<t>ÿ����Ҫ������װ���˶������ֶ���Ŷ")
	MisResultCondition(AlwaysFailure )

	---------------------------------------��ս����˹9

	DefineMission(5527,"��ս����˹9",751,COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>��Ŧ�Ǹ��׳���ϲ���˷ѱ��˵�ʱ��,�ѵ�����֪�����ʱ��ܱ�����?���������������.����������������,����߶߶,�����,�ѵ��Ͳ���ѧѧ����?���ָ����֡�����Ҫ����,��˵����!")
	MisResultCondition(HasMission, 751)
	MisResultCondition(NoRecord,751)
	MisResultCondition(CheckBag, 2911,0,1)
	MisResultAction(ClearMission, 751)
	MisResultAction(SetRecord,  751 )
	



	-------------------------------------------------��ս����˹10	
	DefineMission (5528, "��ս����˹10", 752)
	
	MisBeginTalk("<t>��һվ������ز���վ��")

	MisBeginCondition(NoMission,752)
	MisBeginCondition(HasRecord,751)
	MisBeginCondition(NoRecord,752)
	MisBeginCondition(CheckBag, 2911,0,1)
	MisBeginAction(AddMission,752)
	MisCancelAction(SystemNotice, "�������޷��ж�")
	
	MisNeed(MIS_NEED_DESP, "��һվ����ز���վ,��Ҫ�ҵ�����ָ�ӡ����ڶ�(3153,674)")
	
	MisHelpTalk("<t>ÿ����Ҫ������װ���˶������ֶ���Ŷ")
	MisResultCondition(AlwaysFailure )

	---------------------------------------��ս����˹10

	DefineMission(5529,"��ս����˹10",752,COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t> �Ҳ��ò�˵����ٶ�Ҫ�ӿ���.")
	MisResultCondition(HasMission, 752)
	MisResultCondition(NoRecord,752)
	MisResultCondition(CheckBag, 2911,0,1)
	MisResultAction(ClearMission, 752)
	MisResultAction(SetRecord,  752 )
	


	-------------------------------------------------��ս����˹11	
	DefineMission (5530, "��ս����˹11", 753)
	
	MisBeginTalk("<t>�����Ѿ�������ǰ�����������վ��,��Ҫ����!")

	MisBeginCondition(NoMission,753)
	MisBeginCondition(HasRecord,752)
	MisBeginCondition(NoRecord,753)
	MisBeginCondition(CheckBag, 2911,0,1)
	MisBeginAction(AddMission,753)
	MisCancelAction(SystemNotice, "�������޷��ж�")
	
	MisNeed(MIS_NEED_DESP, "��һվ��������վ,��Ҫ�ҵ�����ָ�ӡ�������(2041,1355)")
	
	MisHelpTalk("<t>ÿ����Ҫ������װ���˶������ֶ���Ŷ")
	MisResultCondition(AlwaysFailure )

	---------------------------------------��ս����˹11

	DefineMission(5531,"��ս����˹11",753,COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t> ��ӭ������������վ!")
	MisResultCondition(HasMission, 753)
	MisResultCondition(NoRecord,753)
	MisResultCondition(CheckBag, 2911,0,1)
	MisResultAction(ClearMission, 753)
	MisResultAction(SetRecord,  753 )
	
	


	-------------------------------------------------��ս����˹12	
	DefineMission (5532, "��ս����˹12", 754)
	
	MisBeginTalk("<t>Ϊ�����Ϻ�����,��Ҫ���ֶ�����.����������վȥ��,�����������ܽ�.")

	MisBeginCondition(NoMission,754)
	MisBeginCondition(HasRecord,753)
	MisBeginCondition(NoRecord,754)
	MisBeginCondition(CheckBag, 2911,0,1)
	MisBeginAction(AddMission,754)
	MisCancelAction(SystemNotice, "�������޷��ж�")
	
	MisNeed(MIS_NEED_DESP, "��һվ��������վ,��Ҫ�ҵ�����ָ�ӡ���Ү��(1497,1707)")
	
	MisHelpTalk("<t>ÿ����Ҫ������װ���˶������ֶ���Ŷ")
	MisResultCondition(AlwaysFailure )

	---------------------------------------��ս����˹12

	DefineMission(5533,"��ս����˹12",754,COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t> ��ȷ���Լ��߾�ȫ����?")
	MisResultCondition(HasMission, 754)
	MisResultCondition(NoRecord,754)
	MisResultCondition(CheckBag, 2911,0,1)
	MisResultAction(ClearMission, 754)
	MisResultAction(SetRecord,  754 )
	
	


	
	-------------------------------------------------��ս����˹13	
	DefineMission (5534, "��ս����˹13", 755)
	
	MisBeginTalk("<t>ʤ��Ů������������,���޷��˵ĳ����յ��!")

	MisBeginCondition(NoMission,755)
	MisBeginCondition(HasRecord,754)
	MisBeginCondition(NoRecord,755)
	MisBeginCondition(CheckBag, 2911,0,1)
	MisBeginAction(AddMission,755)
	MisCancelAction(SystemNotice, "�������޷��ж�")
	
	MisNeed(MIS_NEED_DESP, "��һվ��������,��Ҫ�ҵ�ˮ�֡��ϰ�(1083,1285)")
	
	MisHelpTalk("<t>ÿ����Ҫ������װ���˶������ֶ���Ŷ")
	MisResultCondition(AlwaysFailure )

	---------------------------------------��ս����˹13

	DefineMission(5535,"��ս����˹13",755,COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t> ����ĺ��¸Ұ�!������ǵ��������ϰ�!�㲻��������ĺܿ�ϧ��!�Ȿ<r�ú���>�ϼ�¼�����ȫ������ʱ��,�򿪿�����.����������Ľ���.")
	MisResultCondition(HasMission, 755)
	MisResultCondition(NoRecord,755)
	MisResultCondition(HasItem,2911,1)
	MisResultCondition(CheckBag, 2911,0,1)
	MisResultAction(AddChaItem2, 2912)
	MisResultAction(ClearMission, 755)
	MisResultAction(SetRecord,  755 )
	MisResultBagNeed(2)
	MisResultAction(ClearRecord, 743)---------------���Է�����
	MisResultAction(ClearRecord, 744)---------------���Է�����
	MisResultAction(ClearRecord, 745)---------------���Է�����
	MisResultAction(ClearRecord, 746)---------------���Է�����
	MisResultAction(ClearRecord, 747)---------------���Է�����
	MisResultAction(ClearRecord, 748)---------------���Է�����
	MisResultAction(ClearRecord, 749)---------------���Է�����
	MisResultAction(ClearRecord, 750)---------------���Է�����
	MisResultAction(ClearRecord, 751)---------------���Է�����
	MisResultAction(ClearRecord, 752)---------------���Է�����
	MisResultAction(ClearRecord, 753)---------------���Է�����
	MisResultAction(ClearRecord, 754)---------------���Է�����
	MisResultAction(ClearRecord, 755)---------------���Է�����

	-------------------------------------------------�Ҷ�Ӣ��----------��Ůݷ��	
	DefineMission (5536, "�Ѫ����֮�Ҷ�Ӣ��", 1060)
	
	MisBeginTalk("<t>����Hero�϶����Ҷ�����,10���Ҷ������϶��Ѳ����� ")

	MisBeginCondition(NoMission,1060)
	MisBeginCondition(HasRecord,833)
	MisBeginCondition(NoRecord,1060)
	MisBeginAction(AddMission,1060)
	MisCancelAction(ClearMission, 1060)
	
	MisHelpTalk("<t>��10���Ҷ������أ���Ҫ����Ŷ!")
	MisResultTalk("<t>�����֪��10���Ҷ�����������˵�������Ѷ�")

	MisResultCondition(HasMission, 1060)
	MisResultCondition(NoRecord,1060)
	MisResultCondition(HasFightingPoint,10)
	MisResultAction(TakeFightingPoint, 10 )
	MisResultAction(ClearMission, 1060)
	MisResultAction(SetRecord,  1060 )
	MisResultAction(GiveItem, 2944, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------����Ӣ��----------��Ůݷ��	
	DefineMission (5537, "�Ѫ����֮����Ӣ��", 1061)
	
	MisBeginTalk("<t>Ҫ������Ӣ����������500��ô��?������һ��֪���ܶ����������İ취,������ͽ�ȵ�.. ")

	MisBeginCondition(NoMission,1061)
	MisBeginCondition(HasRecord,833)
	MisBeginCondition(NoRecord,1061)
	MisBeginAction(AddMission,1061)
	MisCancelAction(ClearMission, 1061)
	
	MisHelpTalk("<t>��ȥ��,�һ�����Ҫ����Ҫ��!")
	MisResultTalk("<t>���Ȼ���а취")

	MisResultCondition(HasMission, 1061)
	MisResultCondition(NoRecord,1061)
	MisResultCondition(HasCredit,500 )
	MisResultAction(TakeCredit, 500 )
	MisResultAction(ClearMission, 1061)
	MisResultAction(SetRecord,  1061 )
	MisResultAction(GiveItem, 2945, 1, 4)
	MisResultBagNeed(1)


	-------------------------------------------------�ȼ�Ӣ��----------��Ůݷ��	
	DefineMission (5538, "�Ѫ����֮�ȼ�Ӣ��", 1062)
	
	MisBeginTalk("<t>�ȼ��ﵽ40������ı�׼,��˵�㲻��Ŷ ")

	MisBeginCondition(NoMission,1062)
	MisBeginCondition(HasRecord,833)
	MisBeginCondition(NoRecord,1062)
	MisBeginAction(AddMission,1062)
	MisCancelAction(ClearMission, 1062)
	
	MisHelpTalk("<t>�ȼ�����40���㲻����˼�����İ�?")
	MisResultTalk("<t>�������,�ٲ�����Ҫ��ȥ�Ļ�����")

	MisResultCondition(HasMission, 1062)
	MisResultCondition(NoRecord,1062)
	MisResultCondition(LvCheck, ">", 39 )
	MisResultAction(ClearMission, 1062)
	MisResultAction(SetRecord,  1062 )
	MisResultAction(GiveItem, 2946, 1, 4)
	MisResultBagNeed(1)
	

	-------------------------------------------------����Ӣ��----------��Ůݷ��	
	DefineMission (5539, "�Ѫ����֮����Ӣ��", 1063)
	
	MisBeginTalk("<t>�������������ǻ۵Ľᾧ,�����㲻������ʧ����.100�������ոպ�Ŷ ")

	MisBeginCondition(NoMission,1063)
	MisBeginCondition(HasRecord,833)
	MisBeginCondition(NoRecord,1063)
	MisBeginAction(AddMission,1063)
	MisCancelAction(ClearMission, 1063)
	
	MisHelpTalk("<t>��������Ҫ��,��ǵô�����������")
	MisResultTalk("<t>����ô�佱����?��������һ����")

	MisResultCondition(HasMission, 1063)
	MisResultCondition(NoRecord,1063)
	MisResultCondition(HasHonorPoint,100 )
	MisResultAction(TakeHonorPoint, 100 )
	MisResultAction(ClearMission, 1063)
	MisResultAction(SetRecord,  1063 )
	MisResultAction(GiveItem, 2947, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------�ɼ���ʹ----------��Ůݷ��	
	DefineMission (5540, "�Ѫ����֮�ɼ���ʹ", 1064)
	
	MisBeginTalk("<t>��֪����,�ҵ�����������һö�ɼ�ѫ��,�������Ҫ�����ó�����׼���� ")

	MisBeginCondition(NoMission,1064)
	MisBeginCondition(HasRecord,833)
	MisBeginCondition(NoRecord,1064)
	MisBeginAction(AddMission,1064)
	MisBeginAction(AddTrigger, 10641, TE_GETITEM, 3116, 15 )---------------�����15
	MisBeginAction(AddTrigger, 10642, TE_GETITEM, 1678, 15 )---------------����15
	MisBeginAction(AddTrigger, 10643, TE_GETITEM, 4809, 15 )-------------�Ϲ�ͷ15
	MisBeginAction(AddTrigger, 10644, TE_GETITEM, 0855, 20 )---------------����Ӳ��20
	MisBeginAction(AddTrigger, 10645, TE_GETITEM, 4503, 1 )---------------�ʹ�1��
	MisBeginAction(AddTrigger, 10646, TE_GETITEM, 1848, 50 )-------------���50
	MisCancelAction(ClearMission, 1064)
	

	MisNeed(MIS_NEED_ITEM, 3116, 15, 1, 15 )
	MisNeed(MIS_NEED_ITEM, 1678, 15, 16, 15 )
	MisNeed(MIS_NEED_ITEM, 4809, 15, 31, 15 )
	MisNeed(MIS_NEED_ITEM, 0855, 20, 46, 20 )
	MisNeed(MIS_NEED_ITEM, 4503, 1, 66, 1 )
	MisNeed(MIS_NEED_ITEM, 1848, 50, 67, 50 )

	MisHelpTalk("<t>��Щ�����������ҵ���,��ȥ��")
	MisResultTalk("<t>��������������Բɼ�����������")

	MisResultCondition(HasMission, 1064)
	MisResultCondition(NoRecord,1064)
	MisResultCondition(HasItem, 3116, 15 )
	MisResultCondition(HasItem, 1678, 15 )
	MisResultCondition(HasItem, 4809, 15 )
	MisResultCondition(HasItem, 0855, 20 )
	MisResultCondition(HasItem, 4503, 1 )
	MisResultCondition(HasItem, 1848, 50 )

	MisResultAction(TakeItem, 3116, 15 )
	MisResultAction(TakeItem, 1678, 15 )
	MisResultAction(TakeItem, 4809, 15 )
	MisResultAction(TakeItem, 0855, 20 )
	MisResultAction(TakeItem, 4503, 1 )
	MisResultAction(TakeItem, 1848, 50 )
	MisResultAction(ClearMission, 1064)
	MisResultAction(SetRecord,  1064 )
	MisResultAction(GiveItem, 2948, 1, 4)
	MisResultAction(GiveItem, 2990, 1, 4)
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3116)	
	TriggerAction( 1, AddNextFlag, 1064, 1, 15 )
	RegCurTrigger( 10641 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1678)	
	TriggerAction( 1, AddNextFlag, 1064, 16, 15 )
	RegCurTrigger( 10642 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4809)	
	TriggerAction( 1, AddNextFlag, 1064, 31, 15 )
	RegCurTrigger( 10643 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 0855)	
	TriggerAction( 1, AddNextFlag, 1064, 46, 20 )
	RegCurTrigger( 10644 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4503)	
	TriggerAction( 1, AddNextFlag, 1064, 66, 1 )
	RegCurTrigger( 10645 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1848)	
	TriggerAction( 1, AddNextFlag, 1064, 67, 50 )
	RegCurTrigger( 10646 )

	----------------------------------------------------------��˯�İ���----------��Ůݷ��
	DefineMission( 5541, "�Ѫ����֮��˯����", 1065 )
	MisBeginTalk("<t>��Զ���и����Ű���������װ�Ļ��һ�,����������û,���������Һ��氮���ľ�������,����������Զ��˯��?")
				
	MisBeginCondition(NoMission, 1065)
	MisBeginCondition(HasRecord,836)
	MisBeginCondition(NoRecord,1065)
	MisBeginAction(AddMission,1065)
	MisBeginAction(AddTrigger, 10651, TE_KILL, 1009, 1)---�����ػ���
	
	MisCancelAction(ClearMission, 1065)

	MisNeed(MIS_NEED_DESP, "��ɱ�氮���İ����ػ���(2566,2454)!")
	MisNeed(MIS_NEED_KILL, 1009,1, 10, 1)
	

	MisResultTalk("<t>Ӣ�۾����ĺ��²���ÿ�춼��������Ŷ,����������������.")
	MisHelpTalk("<t>���ϵ۴������������?���ֱ�����ܵ�.")
	MisResultCondition(HasMission,  1065)
	MisResultCondition(HasFlag, 1065, 10)
	MisResultCondition(NoRecord , 1065)
	MisResultAction(GiveItem, 2950, 1, 4 )
	MisResultAction(ClearMission,  1065)
	MisResultAction(SetRecord,  1065 )
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 1009)	
	TriggerAction( 1, AddNextFlag, 1065, 10, 1 )
	RegCurTrigger( 10651 )






-------------------------------------------------�Ҷ�Ӣ��----------��Ůݷ��	
	DefineMission (5542, "�Ѫ����֮�Ҷ�Ӣ��", 1066)
	
	MisBeginTalk("<t>����Hero�϶����Ҷ�����,20���Ҷ������϶��Ѳ����� ")

	MisBeginCondition(NoMission,1066)
	MisBeginCondition(HasRecord,834)
	MisBeginCondition(NoRecord,1066)
	MisBeginAction(AddMission,1066)
	MisCancelAction(ClearMission, 1066)
	
	MisHelpTalk("<t>��20���Ҷ�������,��Ҫ����Ŷ!")
	MisResultTalk("<t>�����֪��20���Ҷ�����������˵�������Ѷ�")

	MisResultCondition(HasMission, 1066)
	MisResultCondition(NoRecord,1066)
	MisResultCondition(HasFightingPoint,20 )
	MisResultAction(TakeFightingPoint, 20 )
	MisResultAction(ClearMission, 1066)
	MisResultAction(SetRecord,  1066 )
	MisResultAction(GiveItem, 2944, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------����Ӣ��----------��Ůݷ��	
	DefineMission (5543, "�Ѫ����֮����Ӣ��", 1067)
	
	MisBeginTalk("<t>Ҫ������Ӣ����������1000��ô��?������һ��֪���ܶ����������İ취,������ͽ�ȵ�.. ")

	MisBeginCondition(NoMission,1067)
	MisBeginCondition(HasRecord,834)
	MisBeginCondition(NoRecord,1067)
	MisBeginAction(AddMission,1067)
	MisCancelAction(ClearMission, 1067)
	
	MisHelpTalk("<t>��ȥ��,�һ�����Ҫ����Ҫ��!")
	MisResultTalk("<t>���Ȼ���а취")

	MisResultCondition(HasMission, 1067)
	MisResultCondition(NoRecord,1067)
	MisResultCondition(HasCredit,1000 )
	MisResultAction(TakeCredit, 1000 )
	MisResultAction(ClearMission, 1067)
	MisResultAction(SetRecord,  1067 )
	MisResultAction(GiveItem, 2945, 1, 4)
	MisResultBagNeed(1)


	-------------------------------------------------�ȼ�Ӣ��----------��Ůݷ��	
	DefineMission (5544, "�Ѫ����֮�ȼ�Ӣ��", 1068)
	
	MisBeginTalk("<t>�ȼ��ﵽ45������ı�׼,��˵�㲻��Ŷ ")

	MisBeginCondition(NoMission,1068)
	MisBeginCondition(HasRecord,834)
	MisBeginCondition(NoRecord,1068)
	MisBeginAction(AddMission,1068)
	MisCancelAction(ClearMission, 1068)
	
	MisHelpTalk("<t>�ȼ�����45���㲻����˼�����İ�?")
	MisResultTalk("<t>�������,�ٲ�����Ҫ��ȥ�Ļ�����")

	MisResultCondition(HasMission, 1068)
	MisResultCondition(NoRecord,1068)
	MisResultCondition(LvCheck, ">", 44 )
	MisResultAction(ClearMission, 1068)
	MisResultAction(SetRecord,  1068 )
	MisResultAction(GiveItem, 2946, 1, 4)
	MisResultBagNeed(1)
	

	-------------------------------------------------����Ӣ��----------��Ůݷ��	
	DefineMission (5545, "�Ѫ����֮����Ӣ��", 1069)
	
	MisBeginTalk("<t>�������������ǻ۵Ľᾧ,�����㲻������ʧ����.200�������ոպ�Ŷ ")

	MisBeginCondition(NoMission,1069)
	MisBeginCondition(HasRecord,834)
	MisBeginCondition(NoRecord,1069)
	MisBeginAction(AddMission,1069)
	MisCancelAction(ClearMission, 1069)
	
	MisHelpTalk("<t>��������Ҫ��,��ǵô�����������")
	MisResultTalk("<t>����ô�佱����?��������һ����")

	MisResultCondition(HasMission, 1069)
	MisResultCondition(NoRecord,1069)
	MisResultCondition(HasHonorPoint,200 )
	MisResultAction(TakeHonorPoint, 200 )
	MisResultAction(ClearMission, 1069)
	MisResultAction(SetRecord,  1069 )
	MisResultAction(GiveItem, 2947, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------�ɼ���ʹ----------��Ůݷ��	
	DefineMission (5546, "�Ѫ����֮�ɼ���ʹ", 1070)
	
	MisBeginTalk("<t>��֪����,�ҵ�����������һö�ɼ�ѫ��,�������Ҫ�����ó�����׼���� ")

	MisBeginCondition(NoMission,1070)
	MisBeginCondition(HasRecord,834)
	MisBeginCondition(NoRecord,1070)
	MisBeginAction(AddMission,1070)
	MisBeginAction(AddTrigger, 10701, TE_GETITEM, 3116, 15 )---------------�����15
	MisBeginAction(AddTrigger, 10702, TE_GETITEM, 1678, 15 )---------------����15
	MisBeginAction(AddTrigger, 10703, TE_GETITEM, 4809, 15 )-------------�Ϲ�ͷ15
	MisBeginAction(AddTrigger, 10704, TE_GETITEM, 0855, 20 )---------------����Ӳ��20
	MisBeginAction(AddTrigger, 10705, TE_GETITEM, 4503, 1 )---------------�ʹ�1��
	MisBeginAction(AddTrigger, 10706, TE_GETITEM, 1848, 40 )-------------����40
	MisBeginAction(AddTrigger, 10707, TE_GETITEM, 2673, 10 )-------------��Ӱ������LV1  10
	MisCancelAction(ClearMission, 1070)
	

	MisNeed(MIS_NEED_ITEM, 3116, 15, 1, 15 )
	MisNeed(MIS_NEED_ITEM, 1678, 15, 16, 15 )
	MisNeed(MIS_NEED_ITEM, 4809, 15, 31, 15 )
	MisNeed(MIS_NEED_ITEM, 0855, 20, 46, 20 )
	MisNeed(MIS_NEED_ITEM, 4503, 1, 66, 1 )
	MisNeed(MIS_NEED_ITEM, 1848, 40, 67, 40 )
	MisNeed(MIS_NEED_ITEM, 2673, 10, 107, 10 )

	MisHelpTalk("<t>��Щ�����������ҵ���,��ȥ��")
	MisResultTalk("<t>��������������Բɼ�����������")

	MisResultCondition(HasMission, 1070)
	MisResultCondition(NoRecord,1070)
	MisResultCondition(HasItem, 3116, 15 )
	MisResultCondition(HasItem, 1678, 15 )
	MisResultCondition(HasItem, 4809, 15 )
	MisResultCondition(HasItem, 0855, 20 )
	MisResultCondition(HasItem, 4503, 1 )
	MisResultCondition(HasItem, 1848, 40 )
	MisResultCondition(HasItem, 2673, 10 )

	MisResultAction(TakeItem, 3116, 15 )
	MisResultAction(TakeItem, 1678, 15 )
	MisResultAction(TakeItem, 4809, 15 )
	MisResultAction(TakeItem, 0855, 20 )
	MisResultAction(TakeItem, 4503, 1 )
	MisResultAction(TakeItem, 1848, 40 )
	MisResultAction(TakeItem, 2673, 10 )
	MisResultAction(ClearMission, 1070)
	MisResultAction(SetRecord,  1070 )
	MisResultAction(GiveItem, 2948, 1, 4)
	MisResultAction(GiveItem, 2990, 1, 4)
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3116)	
	TriggerAction( 1, AddNextFlag, 1070, 1, 15 )
	RegCurTrigger( 10701 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1678)	
	TriggerAction( 1, AddNextFlag, 1070, 16, 15 )
	RegCurTrigger( 10702 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4809)	
	TriggerAction( 1, AddNextFlag, 1070, 31, 15 )
	RegCurTrigger( 10703 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 0855)	
	TriggerAction( 1, AddNextFlag, 1070, 46, 20 )
	RegCurTrigger( 10704 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4503)	
	TriggerAction( 1, AddNextFlag, 1070, 66, 1 )
	RegCurTrigger( 10705 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1848)	
	TriggerAction( 1, AddNextFlag, 1070, 67, 40 )
	RegCurTrigger( 10706 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2673)	
	TriggerAction( 1, AddNextFlag, 1070, 107, 10 )
	RegCurTrigger( 10707 )

	



-------------------------------------------------�Ҷ�Ӣ��----------��Ůݷ��	
	DefineMission (5547, "�Ѫ����֮�Ҷ�Ӣ��", 1071)
	
	MisBeginTalk("<t>����Hero�϶����Ҷ�����,50���Ҷ������϶��Ѳ����� ")

	MisBeginCondition(NoMission,1071)
	MisBeginCondition(HasRecord,835)
	MisBeginCondition(NoRecord,1071)
	MisBeginAction(AddMission,1071)
	MisCancelAction(ClearMission, 1071)
	
	MisHelpTalk("<t>��50���Ҷ������أ���Ҫ����Ŷ!")
	MisResultTalk("<t>�����֪��50���Ҷ�����������˵�������Ѷ�")

	MisResultCondition(HasMission, 1071)
	MisResultCondition(NoRecord,1071)
	MisResultCondition(HasFightingPoint,50 )
	MisResultAction(TakeFightingPoint, 50 )
	MisResultAction(ClearMission, 1071)
	MisResultAction(SetRecord,  1071 )
	MisResultAction(GiveItem, 2944, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------����Ӣ��----------��Ůݷ��	
	DefineMission (5548, "�Ѫ����֮����Ӣ��", 1072)
	
	MisBeginTalk("<t>Ҫ������Ӣ����������3000��ô��?������һ��֪���ܶ����������İ취,������ͽ�ȵ�.. ")

	MisBeginCondition(NoMission,1072)
	MisBeginCondition(HasRecord,835)
	MisBeginCondition(NoRecord,1072)
	MisBeginAction(AddMission,1072)
	MisCancelAction(ClearMission, 1072)
	
	MisHelpTalk("<t>��ȥ��,�һ�����Ҫ����Ҫ��!")
	MisResultTalk("<t>���Ȼ���а취")

	MisResultCondition(HasMission, 1072)
	MisResultCondition(NoRecord,1072)
	MisResultCondition(HasCredit,3000 )
	MisResultAction(TakeCredit, 3000 )
	MisResultAction(ClearMission, 1072)
	MisResultAction(SetRecord,  1072 )
	MisResultAction(GiveItem, 2945, 1, 4)
	MisResultBagNeed(1)


	-------------------------------------------------�ȼ�Ӣ��----------��Ůݷ��	
	DefineMission (5549, "�Ѫ����֮�ȼ�Ӣ��", 1073)
	
	MisBeginTalk("<t>�ȼ��ﵽ50������ı�׼,��˵�㲻��Ŷ ")

	MisBeginCondition(NoMission,1073)
	MisBeginCondition(HasRecord,835)
	MisBeginCondition(NoRecord,1073)
	MisBeginAction(AddMission,1073)
	MisCancelAction(ClearMission, 1073)
	
	MisHelpTalk("<t>�ȼ�����50���㲻����˼�����İ�?")
	MisResultTalk("<t>�������,�ٲ�����Ҫ��ȥ�Ļ�����")

	MisResultCondition(HasMission, 1073)
	MisResultCondition(NoRecord,1073)
	MisResultCondition(LvCheck, ">", 49 )
	MisResultAction(ClearMission, 1073)
	MisResultAction(SetRecord,  1073 )
	MisResultAction(GiveItem, 2946, 1, 4)
	MisResultBagNeed(1)
	

	-------------------------------------------------����Ӣ��----------��Ůݷ��	
	DefineMission (5550, "�Ѫ����֮����Ӣ��", 1074)
	
	MisBeginTalk("<t>�������������ǻ۵Ľᾧ,�����㲻������ʧ����.500�������ոպ�Ŷ ")

	MisBeginCondition(NoMission,1074)
	MisBeginCondition(HasRecord,835)
	MisBeginCondition(NoRecord,1074)
	MisBeginAction(AddMission,1074)
	MisCancelAction(ClearMission, 1074)
	
	MisHelpTalk("<t>��������Ҫ��,��ǵô�����������")
	MisResultTalk("<t>����ô�佱����?��������һ����")

	MisResultCondition(HasMission, 1074)
	MisResultCondition(NoRecord,1074)
	MisResultCondition(HasHonorPoint,500 )
	MisResultAction(TakeHonorPoint, 500 )
	MisResultAction(ClearMission, 1074)
	MisResultAction(SetRecord,  1074 )
	MisResultAction(GiveItem, 2947, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------�ɼ���ʹ----------��Ůݷ��	
	DefineMission (5551, "�Ѫ����֮�ɼ���ʹ", 1075)
	
	MisBeginTalk("<t>��֪����,�ҵ�����������һö�ɼ�ѫ��,�������Ҫ�����ó�����׼���� ")

	MisBeginCondition(NoMission,1075)
	MisBeginCondition(HasRecord,835)
	MisBeginCondition(NoRecord,1075)
	MisBeginAction(AddMission,1075)
	MisBeginAction(AddTrigger, 10751, TE_GETITEM, 3116, 15 )---------------�����15
	MisBeginAction(AddTrigger, 10752, TE_GETITEM, 1678, 15 )---------------����15
	MisBeginAction(AddTrigger, 10753, TE_GETITEM, 4809, 15 )-------------�Ϲ�ͷ15
	MisBeginAction(AddTrigger, 10754, TE_GETITEM, 0855, 20 )---------------����Ӳ��20
	MisBeginAction(AddTrigger, 10755, TE_GETITEM, 4503, 1 )---------------�ʹ�1��
	MisBeginAction(AddTrigger, 10756, TE_GETITEM, 1848, 40 )-------------����40
	MisBeginAction(AddTrigger, 10757, TE_GETITEM, 2673, 10 )-------------��Ӱ������LV1  10
	MisBeginAction(AddTrigger, 10758, TE_GETITEM, 0227, 4 )-------------�ػ���������  4
	MisCancelAction(ClearMission, 1075)
	

	MisNeed(MIS_NEED_ITEM, 3116, 15, 1, 15 )
	MisNeed(MIS_NEED_ITEM, 1678, 15, 16, 15 )
	MisNeed(MIS_NEED_ITEM, 4809, 15, 31, 15 )
	MisNeed(MIS_NEED_ITEM, 0855, 20, 46, 20 )
	MisNeed(MIS_NEED_ITEM, 4503, 1, 66, 1 )
	MisNeed(MIS_NEED_ITEM, 1848, 40, 67, 40 )
	MisNeed(MIS_NEED_ITEM, 2673, 10, 107, 10 )
	MisNeed(MIS_NEED_ITEM, 0227, 4, 117, 4 )

	MisHelpTalk("<t>��Щ�����������ҵ���,��ȥ��")
	MisResultTalk("<t>��������������Բɼ�����������")

	MisResultCondition(HasMission, 1075)
	MisResultCondition(NoRecord,1075)
	MisResultCondition(HasItem, 3116, 15 )
	MisResultCondition(HasItem, 1678, 15 )
	MisResultCondition(HasItem, 4809, 15 )
	MisResultCondition(HasItem, 0855, 20 )
	MisResultCondition(HasItem, 4503, 1 )
	MisResultCondition(HasItem, 1848, 40 )
	MisResultCondition(HasItem, 2673, 10 )
	MisResultCondition(HasItem, 0227, 4 )

	MisResultAction(TakeItem, 3116, 15 )
	MisResultAction(TakeItem, 1678, 15 )
	MisResultAction(TakeItem, 4809, 15 )
	MisResultAction(TakeItem, 0855, 20 )
	MisResultAction(TakeItem, 4503, 1 )
	MisResultAction(TakeItem, 1848, 40 )
	MisResultAction(TakeItem, 2673, 10 )
	MisResultAction(TakeItem, 0227, 4 )
	MisResultAction(ClearMission, 1075)
	MisResultAction(SetRecord,  1075 )
	MisResultAction(GiveItem, 2948, 1, 4)
	MisResultAction(GiveItem, 2990, 1, 4)
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3116)	
	TriggerAction( 1, AddNextFlag, 1075, 1, 15 )
	RegCurTrigger( 10751 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1678)	
	TriggerAction( 1, AddNextFlag, 1075, 16, 15 )
	RegCurTrigger( 10752 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4809)	
	TriggerAction( 1, AddNextFlag, 1075, 31, 15 )
	RegCurTrigger( 10753 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 0855)	
	TriggerAction( 1, AddNextFlag, 1075, 46, 20 )
	RegCurTrigger( 10754 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4503)	
	TriggerAction( 1, AddNextFlag, 1075, 66, 1 )
	RegCurTrigger( 10755 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1848)	
	TriggerAction( 1, AddNextFlag, 1075, 67, 40 )
	RegCurTrigger( 10756 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2673)	
	TriggerAction( 1, AddNextFlag, 1075, 107, 10 )
	RegCurTrigger( 10757 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 0227)	
	TriggerAction( 1, AddNextFlag, 1075, 117, 4 )
	RegCurTrigger( 10758 )


	

	----------------------------------------------------------�罻��ʹ----------��Ůݷ��
	DefineMission( 5552, "�Ѫ����֮�罻��ʹ", 1076 )
	MisBeginTalk("<t>�����Ǵ����˵�ְҵ,Ҫ�������Եÿ�����,������Ҫȥ��ʶЩ��������Ҫ�Ͳ���Ҫ����")
				
	MisBeginCondition(NoMission, 1076)
	MisBeginCondition(NoRecord,1076)
	MisBeginCondition(HasRecord, 836)
	MisBeginAction(AddMission,1076)
	MisCancelAction(ClearMission, 1076)

	MisNeed(MIS_NEED_DESP, "��ɳᰵ��������ӡ���ɳ��(1254,3491)����")
	
	MisHelpTalk("<t>�������Ǻ���ҲҪȥ��,��������")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------�罻��ʹ-----------------�������ӡ���ɳ��
	DefineMission(5553, "�罻��ʹ", 1076, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>��֪����?������Ⱥ����˧����,Ҳ����Ⱥ������Ӿ��...")
	MisResultCondition(NoRecord, 1076)
	MisResultCondition(HasMission,1076)
	MisResultAction(ClearMission,1076)
	MisResultAction(SetRecord, 1076)

	----------------------------------------------------------�罻��ʹ1----------�������ӡ���ɳ��
	DefineMission( 5554, "�罻��ʹ2", 1077 )
	MisBeginTalk("<t>���ڷ�ǰ���������,ֻԸ������ÿ�쾭����·�ڵ�һ����,�����ÿ�쾭���Ǹ�·��,����ȴ������һֻ��...")
	MisBeginCondition(NoMission, 1077)
	MisBeginCondition(NoRecord,1077)
	MisBeginCondition(HasRecord, 1076)
	MisBeginAction(AddMission,1077)
	MisCancelAction(ClearMission, 1077)

	MisNeed(MIS_NEED_DESP, "�ұ��ǵĲ�ݮ����(1010,350)����")
	
	MisHelpTalk("<t>����һֻ��,ˮ��Ŀ���...")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------�罻��ʹ1-------------��ݮ����
	DefineMission(5555, "�罻��ʹ2", 1077, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>���!�ҵĴ�ʹ!")
	MisResultCondition(NoRecord, 1077)
	MisResultCondition(HasMission,1077)
	MisResultAction(ClearMission,1077)
	MisResultAction(SetRecord, 1077)

	----------------------------------------------------------�罻��ʹ2----------��ݮ����
	DefineMission( 5556, "�罻��ʹ3", 1078 )
	MisBeginTalk("<t>�ҿ����������ֲ����۵Ľ�ɫ,����������������Ϊ..���������������")
				
	MisBeginCondition(NoMission, 1078)
	MisBeginCondition(NoRecord,1078)
	MisBeginCondition(HasRecord, 1077)
	MisBeginAction(AddMission,1078)
	MisCancelAction(ClearMission, 1078)

	MisNeed(MIS_NEED_DESP, "�Ҽ��ɵ����ߡ���Ϳɽ��(2272,2700)����")
	
	MisHelpTalk("<t>��λ�ɰ������������ϵ۶����ʵĲŻ���")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------�罻��ʹ2--------���ߡ���Ϳɽ��
	DefineMission(5557, "�罻��ʹ3", 1078, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>�򵥵��������Ҹ�...")
	MisResultCondition(NoRecord, 1078)
	MisResultCondition(HasMission,1078)
	MisResultAction(ClearMission,1078)
	MisResultAction(SetRecord, 1078)



	----------------------------------------------------------�罻��ʹ3----------���ߡ���Ϳɽ��
	DefineMission( 5558, "�罻��ʹ4", 1079 )
	MisBeginTalk("<t>������?лл!�����������ǻ������ִ����.������ȥ���һ������ר�ҡ�ɳ÷��,�����Ҹ��˽��ǻ�.")
				
	MisBeginCondition(NoMission, 1079)
	MisBeginCondition(NoRecord,1079)
	MisBeginCondition(HasRecord, 1078)
	MisBeginAction(AddMission,1079)
	MisCancelAction(ClearMission, 1079)

	MisNeed(MIS_NEED_DESP, "��ɳᰵ�����ר�ҡ�ɳ÷��(664,3093)����")
	
	MisHelpTalk("<t>�����ǿ��Դ����漣��,������,��ס��仰.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------�罻��ʹ3--------����ר�ҡ�ɳ÷��
	DefineMission(5559, "�罻��ʹ4", 1079, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>��Ϳɽ������λǫ������߰�!")
	MisResultCondition(NoRecord, 1079)
	MisResultCondition(HasMission,1079)
	MisResultAction(ClearMission,1079)
	MisResultAction(SetRecord, 1079)


	----------------------------------------------------------�罻��ʹ4----------����ר�ҡ�ɳ÷��
	DefineMission( 5560, "�罻��ʹ5", 1080 )
	MisBeginTalk("<t>�ҵ������ǽ�������,Ϊƽ���˹�������.��Ҳ�������,��ʲô��?��³³һ������?")
				
	MisBeginCondition(NoMission, 1080)
	MisBeginCondition(NoRecord,1080)
	MisBeginCondition(HasRecord, 1079)
	MisBeginAction(AddMission,1080)
	MisCancelAction(ClearMission, 1080)

	MisNeed(MIS_NEED_DESP, "�ұ��ǵ�³³(2668,634)����")
	
	MisHelpTalk("<t>�����������Ӱ��,����̫�������ͷ��û�й���.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------�罻��ʹ4--------³³
	DefineMission(5561, "�罻��ʹ5", 1080, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>�ҵ�������ÿ�춼�а����ǳ�.......")
	MisResultCondition(NoRecord, 1080)
	MisResultCondition(HasMission,1080)
	MisResultAction(ClearMission,1080)
	MisResultAction(SetRecord, 1080)


	----------------------------------------------------------�罻��ʹ5----------³³
	DefineMission( 5562, "�罻��ʹ6", 1081 )
	MisBeginTalk("<t>���ÿ�춼�а����ǳ����ܺ��ھӽ��һ��ȥңԶ�ļ���ȥ������͸�����,���������и���δ�������������...")
				
	MisBeginCondition(NoMission, 1081)
	MisBeginCondition(NoRecord,1081)
	MisBeginCondition(HasRecord, 1080)
	MisBeginAction(AddMission,1081)
	MisCancelAction(ClearMission, 1081)

	MisNeed(MIS_NEED_DESP, "�Ҽ��ɵĹ�����(526,2432)����")
	
	MisHelpTalk("<t>���ȥ�ҶԹ�������ף��.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------�罻��ʹ5--------������
	DefineMission(5563, "�罻��ʹ6", 1081, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>��Ҳ��³³��������?³³��������?")
	MisResultCondition(NoRecord, 1081)
	MisResultCondition(HasMission,1081)
	MisResultAction(ClearMission,1081)
	MisResultAction(SetRecord, 1081)



	----------------------------------------------------------�罻��ʹ6----------������
	DefineMission( 5564, "�罻��ʹ7", 1082 )
	MisBeginTalk("<t>�Һ�ϲ�������ֲ����������,ңԶ������,û�н���,��ȻҲ������ƭ����,����˵�и������������Ƕ���˵����һֻ��,���ܰ��Ҳ�֤һ����")
				
	MisBeginCondition(NoMission, 1082)
	MisBeginCondition(NoRecord,1082)
	MisBeginCondition(HasRecord, 1081)
	MisBeginAction(AddMission,1082)
	MisCancelAction(ClearMission, 1082)

	MisNeed(MIS_NEED_DESP, "��ɳᰵ�С������(898,3683)����")
	
	MisHelpTalk("<t>��ϣ��������һ���������ʿ......")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------�罻��ʹ6--------С������
	DefineMission(5565, "�罻��ʹ7", 1082, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>����ôû��������,��һֱ����һֻ��,ֻ�Ǻ������Խ�����Ļ�")
	MisResultCondition(NoRecord, 1082)
	MisResultCondition(HasMission,1082)
	MisResultAction(ClearMission,1082)
	MisResultAction(SetRecord, 1082)


	----------------------------------------------------------�罻��ʹ7----------С������
	DefineMission( 5566, "�罻��ʹ8", 1083 )
	MisBeginTalk("<t>��Ҫ���罻Ӣ����?���ܸ���һ���ѹ�ͨ������,����������ս��,��!")
				
	MisBeginCondition(NoMission, 1083)
	MisBeginCondition(NoRecord,1083)
	MisBeginCondition(HasRecord, 1082)
	MisBeginAction(AddMission,1083)
	MisCancelAction(ClearMission, 1083)

	MisNeed(MIS_NEED_DESP, "�Ҽ��ɵ�����ҽ��������ϣ��(1004,2973)����")
	
	MisHelpTalk("<t>ף�����,����!")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------�罻��ʹ8--------����ҽ��������ϣ��
	DefineMission(5567, "�罻��ʹ8", 1083, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>���������Ҳ������,��Ϊ��������˵����ڹ۲����,û�뵽����Ҳ������,����������Ӹ�����������")
	MisResultCondition(NoRecord, 1083)
	MisResultCondition(HasMission,1083)
	MisResultAction(ClearMission,1083)
	MisResultAction(SetRecord, 1083)


	----------------------------------------------------------�罻��ʹ8----------����ҽ��������ϣ��
	DefineMission( 5568, "�罻��ʹ9", 1084 )
	MisBeginTalk("<t>���º͵�һ�����ǲ�������,��Ȼ��Ҳ���ܹ���,˭����Ʒ���������һ˫���ڷ��������۾���?˵�����þò�����,�����ʺ�������?")
				
	MisBeginCondition(NoMission, 1084)
	MisBeginCondition(NoRecord,1084)
	MisBeginCondition(HasRecord, 1083)
	MisBeginAction(AddMission,1084)
	MisCancelAction(ClearMission, 1084)

	MisNeed(MIS_NEED_DESP, "��ɳᰵķƷ�(797,3129)����")
	
	MisHelpTalk("<t>��Ҫ�㳹�׸ı���ҵ�ӡ��")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------�罻��ʹ8--------�Ʒ�
	DefineMission(5569, "�罻��ʹ9", 1084, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>����ϣ������һ������׽������,���Ǹ�������")
	MisResultCondition(NoRecord, 1084)
	MisResultCondition(HasMission,1084)
	MisResultAction(ClearMission,1084)
	MisResultAction(SetRecord, 1084)

	----------------------------------------------------------�罻��ʹ10----------�Ʒ�
	DefineMission( 5572, "�罻��ʹ10", 1086 )
	MisBeginTalk("<t>��˵����,�������������һ��������ɯ�׵�Ů��,ǰ�����ں��߼�һֻƯ��ƿ,������ʰ�����˲μ����")
				
	MisBeginCondition(NoMission, 1086)
	MisBeginCondition(NoRecord,1086)
	MisBeginCondition(HasRecord, 1084)
	MisBeginAction(AddMission,1086)
	MisCancelAction(ClearMission, 1086)

	MisNeed(MIS_NEED_DESP, "�Ҳر����������ɯ��(616,965)����")
	
	MisHelpTalk("<t>��������ᰡ......")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------�罻��ʹ10--------����ɯ��
	DefineMission(5573, "�罻��ʹ10", 1086, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>������˼��ҵ����뺯��?!лл������������Ϣ����һ���ύ���˵ģ�")
	MisResultCondition(NoRecord, 1086)
	MisResultCondition(HasMission,1086)
	MisResultAction(ClearMission,1086)
	MisResultAction(SetRecord, 1086)

	----------------------------------------------------------�罻��ʹ11----------����ɯ��
	DefineMission( 5574, "�罻��ʹ11", 1087 )
	MisBeginTalk("<t>�㿴�ҵ����ܿ��Ҫ��ʼ��,�һ�Ҫȥ������,���ܰ�������<�����ܲ�ָ�ӹ١���.��˹��׼��>��?")
				
	MisBeginCondition(NoMission, 1087)
	MisBeginCondition(NoRecord,1087)
	MisBeginCondition(HasRecord, 1086)
	MisBeginAction(AddMission,1087)
	MisCancelAction(ClearMission, 1087)

	MisNeed(MIS_NEED_DESP, "���������ĺ����ܲ�ָ�ӹ١���.��˹��׼��(808,1521)����")
	
	MisHelpTalk("<t>��Ҫ��ʶ�����ĺ���Ů����...")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------�罻��ʹ11--------�����ܲ�ָ�ӹ١���.��˹��׼��
	DefineMission(5575, "�罻��ʹ11", 1087, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>�ҴӲ��ܾ���Ů������,������...")
	MisResultCondition(NoRecord, 1087)
	MisResultCondition(HasMission,1087)
	MisResultAction(ClearMission,1087)
	MisResultAction(SetRecord, 1087)

	----------------------------------------------------------�罻��ʹ12----------�����ܲ�ָ�ӹ١���.��˹��׼��
	DefineMission( 5576, "�罻��ʹ12", 1088 )
	MisBeginTalk("<t>�����Ҵ�Ӧд��ʫ���͸�ɳᰵ�ĢĢ,��֪������дʫ�����һ�׵ģ�����Ҹ�������������,��Ҳ��ܿ콫ʫ���͹�ȥ��,��!��ʵ��Ϊ�������ǲ�Ӧ��˵�ѵ�")
				
	MisBeginCondition(NoMission, 1088)
	MisBeginCondition(NoRecord,1088)
	MisBeginCondition(HasRecord, 1087)
	MisBeginAction(AddMission,1088)
	MisCancelAction(ClearMission, 1088)

	MisNeed(MIS_NEED_DESP, "��ɳᰵ�ĢĢ(1209,3196)����")
	
	MisHelpTalk("<t>һ������������һλ������˵��ζ�������Ļ���,Ŷ,�ɰ�������ɯ��...")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------�罻��ʹ12--------ĢĢ
	DefineMission(5577, "�罻��ʹ12", 1088, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>����ôǿ׳���˶�������?�����Ľ���")
	MisResultCondition(NoRecord, 1088)
	MisResultCondition(HasMission,1088)
	MisResultAction(ClearMission,1088)
	MisResultAction(SetRecord, 1088)


	----------------------------------------------------------�罻��ʹ13----------ĢĢ
	DefineMission( 5578, "�罻��ʹ13", 1089 )
	MisBeginTalk("<t>��ʵ���ҵ����Ѻܳ�ݽ����ĲŻ�,����õ��������ָ壮�����ʲôʱ���п�˳�����֪ͨ����,лл��")
				
	MisBeginCondition(NoMission, 1089)
	MisBeginCondition(NoRecord,1089)
	MisBeginCondition(HasRecord, 1088)
	MisBeginAction(AddMission,1089)
	MisCancelAction(ClearMission, 1089)

	MisNeed(MIS_NEED_DESP, "�Ҽ��ɵ�����(1893,2812)����")
	
	MisHelpTalk("<t>���Ի��Ϊδ��ΰ���ʫ����")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------�罻��ʹ13--------����
	DefineMission(5579, "�罻��ʹ13", 1089, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>ԭ����дʫ��Ľ���Ҳ�ǻ������İ�?")
	MisResultCondition(NoRecord, 1089)
	MisResultCondition(HasMission,1089)
	MisResultAction(ClearMission,1089)
	MisResultAction(SetRecord, 1089)

	----------------------------------------------------------�罻��ʹ14----------����
	DefineMission( 5580, "�罻��ʹ14", 1090 )
	MisBeginTalk("<t>��ϣ�������ܿ���������лл�㣮�ҽ�����Ư�������򡤱�Ȫ������ʶ��")
				
	MisBeginCondition(NoMission, 1090)
	MisBeginCondition(NoRecord,1090)
	MisBeginCondition(HasRecord, 1089)
	MisBeginAction(AddMission,1090)
	MisCancelAction(ClearMission, 1090)

	MisNeed(MIS_NEED_DESP, "�ұ��ǵ����򡤱�Ȫ(1380,523)����")
	
	MisHelpTalk("<t>���򡤱�Ȫ�ڱ���סŶ")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------�罻��ʹ14--------���򡤱�Ȫ        
	DefineMission(5581, "�罻��ʹ14", 1090, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>����ʧ��ǰ�Ǻ�Ư���ģ�")
	MisResultCondition(NoRecord, 1090)
	MisResultCondition(HasMission,1090)
	MisResultAction(ClearMission,1090)
	MisResultAction(SetRecord, 1090)

	----------------------------------------------------------�罻��ʹ15----------���򡤱�Ȫ
	DefineMission( 5582, "�罻��ʹ15", 1091 )
	MisBeginTalk("<t>�����˺ܶ�,���ܰ��Ҵ������Ÿ���á�Ƥ����?��˵�������������ԭ��,������ú��һ���������Ϊ�����Ե�")
				
	MisBeginCondition(NoMission, 1091)
	MisBeginCondition(NoRecord,1091)
	MisBeginCondition(HasRecord, 1090)
	MisBeginAction(AddMission,1091)
	MisCancelAction(ClearMission, 1091)

	MisNeed(MIS_NEED_DESP, "�Ҽ��ɵ���á�Ƥ��(1113,2779)����")
	
	MisHelpTalk("<t>��������,����ĺܰ���")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------�罻��ʹ15-------- ��á�Ƥ��
	DefineMission(5583, "�罻��ʹ15", 1091, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>�ҵ���������?�����ô�찡?")
	MisResultCondition(NoRecord, 1091)
	MisResultCondition(HasMission,1091)
	MisResultAction(ClearMission,1091)
	MisResultAction(SetRecord, 1091)


	----------------------------------------------------------�罻��ʹ16----------��á�Ƥ��
	DefineMission( 5584, "�罻��ʹ16", 1092 )
	MisBeginTalk("<t>��ʵ�����ԭ������,ֻ��һֱ��æͨ���ߡ��¹��۵���,����û��д�Ÿ���,����Ҹ�ͨ���ߡ��¹���˵����Ǹ,�ҹ���������ϵ��")
				
	MisBeginCondition(NoMission, 1092)
	MisBeginCondition(NoRecord,1092)
	MisBeginCondition(HasRecord, 1091)
	MisBeginAction(AddMission,1092)
	MisCancelAction(ClearMission, 1092)

	MisNeed(MIS_NEED_DESP, "�ұ��ǵ�ͨ���ߡ��¹���(2134,555)����")
	
	MisHelpTalk("<t>�����¹��ۻ��½��ҵ�")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------�罻��ʹ16-------- ͨ���ߡ��¹���
	DefineMission(5585, "�罻��ʹ16", 1092, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>�����ö�,��������ҿ��ò�,�Ͳ���ʧȥ����.")
	MisResultCondition(NoRecord, 1092)
	MisResultCondition(HasMission,1092)
	MisResultAction(ClearMission,1092)
	MisResultAction(SetRecord, 1092)


	----------------------------------------------------------�罻��ʹ17----------ͨ���ߡ��¹���
	DefineMission( 5586, "�罻��ʹ17", 1093 )
	MisBeginTalk("<t>������ȥ,����������ĵ��Ǻ���������̰��֢��û�к�ת")
				
	MisBeginCondition(NoMission, 1093)
	MisBeginCondition(NoRecord,1093)
	MisBeginCondition(HasRecord, 1092)
	MisBeginAction(AddMission,1093)
	MisCancelAction(ClearMission, 1093)

	MisNeed(MIS_NEED_DESP, "�Ҽ��ɵ�����(1535,3071)����")
	
	MisHelpTalk("<t>��������һ��������ĺ���,˼ά�ں���Ư��")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------�罻��ʹ17-------- ����
	DefineMission(5587, "�罻��ʹ17", 1093, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>�Һ������Լ��Ĳ�֢,��Ҫ����,�������ı��ֵû�������")
	MisResultCondition(NoRecord, 1093)
	MisResultCondition(HasMission,1093)
	MisResultAction(ClearMission,1093)
	MisResultAction(SetRecord, 1093)

	----------------------------------------------------------�罻��ʹ18----------����
	DefineMission( 5588, "�罻��ʹ18", 1094 )
	MisBeginTalk("<t>��̫���˹���Ҳ�ܷ�,��ʱ�����滳�������ǲ��Ǽ������������Ĳ���������·����������վ�ӿ��Ÿ�<b����>˵�Һܺ�")
				
	MisBeginCondition(NoMission, 1094)
	MisBeginCondition(NoRecord,1094)
	MisBeginCondition(HasRecord, 1093)
	MisBeginAction(AddMission,1094)
	MisCancelAction(ClearMission, 1094)

	MisNeed(MIS_NEED_DESP, "�ұ��ǵ�����(798,369)����")
	
	MisHelpTalk("<t>��ϣ���б��ĸо�")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------�罻��ʹ18-------- ����
	DefineMission(5589, "�罻��ʹ18", 1094, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>˵ʵ�����Ǻܶʼ�����")
	MisResultCondition(NoRecord, 1094)
	MisResultCondition(HasMission,1094)
	MisResultAction(ClearMission,1094)
	MisResultAction(SetRecord, 1094)

	----------------------------------------------------------�罻��ʹ19----------����
	DefineMission( 5590, "�罻��ʹ19", 1095 )
	MisBeginTalk("<t>���һֱ��æд��,�ҿᰮ������ʷʫ,���������кܶ಻���ĵط�,���ܰ����ӿ��Ÿ�<b������΢��>��?����������д���ǻۣ�")
				
	MisBeginCondition(NoMission, 1095)
	MisBeginCondition(NoRecord,1095)
	MisBeginCondition(HasRecord, 1094)
	MisBeginAction(AddMission,1095)
	MisCancelAction(ClearMission, 1095)

	MisNeed(MIS_NEED_DESP, "�Ҽ��ɵĺ�����΢��(622,2106)����")
	
	MisHelpTalk("<t>����������������ΰ���ʫ����")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------�罻��ʹ19-------- ������΢��
	DefineMission(5591, "�罻��ʹ19", 1095, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>�ǺǺ�...�ҵ�����?�ǺǺ�...")
	MisResultCondition(NoRecord, 1095)
	MisResultCondition(HasMission,1095)
	MisResultAction(ClearMission,1095)
	MisResultAction(SetRecord, 1095)


		----------------------------------------------------------�罻��ʹ20----------������΢��
	DefineMission( 5592, "�罻��ʹ20", 1096 )
	MisBeginTalk("<t>����ҵ�����������ô���ǻ۵Ļ�,��֪�����׹��ﵱ��Ϊʲô���ҵ����ǵĴ���.������Ƿ��ĳ��һ�����飮Ӧ�ø�������ʼ��û�������Ǽ��£������Ұ�")
				
	MisBeginCondition(NoMission, 1096)
	MisBeginCondition(NoRecord,1096)
	MisBeginCondition(HasRecord, 1095)
	MisBeginAction(AddMission,1096)
	MisCancelAction(ClearMission, 1096)

	MisNeed(MIS_NEED_DESP, "�ҵ�������ʹ(690,1043)����")
	
	MisHelpTalk("<t>лл�������ˣ�ȥ��")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------�罻��ʹ20-------- ��������ʹ
	DefineMission(5593, "�罻��ʹ20", 1096, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>���Ǻܶ���ǰ������,�����ǵð�")
	MisResultCondition(NoRecord, 1096)
	MisResultCondition(HasMission,1096)
	MisResultAction(ClearMission,1096)
	MisResultAction(SetRecord, 1096)

		----------------------------------------------------------�罻��ʹ21----------��������ʹ
	DefineMission( 5594, "�罻��ʹ21", 1097 )
	MisBeginTalk("<t>��Ҫ��Ƿ��һ��������?�����ǻ���Ŷ���Һ��������ô���ʹ,�������������ҵ�Ǯ,�ôߴ�����")
				
	MisBeginCondition(NoMission, 1097)
	MisBeginCondition(NoRecord,1097)
	MisBeginCondition(HasRecord, 1096)
	MisBeginAction(AddMission,1097)
	MisCancelAction(ClearMission, 1097)

	MisNeed(MIS_NEED_DESP, "�����ô���ʹ(474,1054)����")
	
	MisHelpTalk("<t>����ͷ��,Ƿծ���Ǵ�ү")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------�罻��ʹ21-------- ���ô���ʹ
	DefineMission(5595, "�罻��ʹ21", 1097, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>̫С����,�ǵ�Ǯ�����ǵ���,����������?")
	MisResultCondition(NoRecord, 1097)
	MisResultCondition(HasMission,1097)
	MisResultAction(ClearMission,1097)
	MisResultAction(SetRecord, 1097)

	----------------------------------------------------------�罻Ӣ��22----------���ô���ʹ
	DefineMission( 5596, "�罻Ӣ��22", 1098 )
	MisBeginTalk("<t>��ϲ��������������罻��������˵<b����>������")
				
	MisBeginCondition(NoMission, 1098)
	MisBeginCondition(NoRecord,1098)
	MisBeginCondition(HasRecord, 1097)
	MisBeginAction(AddMission,1098)
	MisCancelAction(ClearMission, 1098)

	MisNeed(MIS_NEED_DESP, "������(740,1451)����")
	
	MisHelpTalk("<t>����ͷ��,Ƿծ���Ǵ�ү")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------�罻Ӣ��22------- ����
	DefineMission(5597, "�罻Ӣ��22", 1098, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>���Ѿ�ͨ�����罻����,�͸���һöѫ��")
	MisResultCondition(NoRecord, 1098)
	MisResultCondition(HasMission,1098)
	MisResultAction(ClearMission,1098)
	MisResultAction(SetRecord, 1098)
	MisResultAction(GiveItem, 2949, 1, 4)
	MisResultBagNeed(1)




	

	-------------------------------------------------�ر�����	
	DefineMission (5600, "�Ѫ����֮�ر��ж�", 1101)
	
	MisBeginTalk("<t>��������ǰ����ر��ж�,����Բ��μ�,��Ȼ���μӵ�û��������.<b15�����ڿ���99�þ����Ҳ���Ǻ�����Ŷ>")

	MisBeginCondition(NoMission,1101)
	MisBeginCondition(NoRecord,1101)
	MisBeginCondition(HasRecord,835)
	MisBeginCondition(HasRecord,1071)
	MisBeginCondition(HasRecord,1072)
	MisBeginCondition(HasRecord,1073)
	MisBeginCondition(HasRecord,1074)
	MisBeginCondition(HasRecord,1075)
	MisBeginCondition(HasRecord,1065)
	MisBeginCondition(HasRecord,1098)
	MisBeginAction(AddMission,1101)
	MisBeginAction(AddChaItem3, 2952)---------�ر��ж���
	MisBeginAction(AddTrigger, 11011, TE_KILL, 75, 99 )
	MisCancelAction(ClearMission, 1101)
	MisBeginBagNeed(1)
	
	MisNeed(MIS_NEED_KILL, 75, 99, 1, 99)

	MisHelpTalk("<t>��ȥ��,��ֻ��15����Ŷ")
	MisResultTalk("<t>��������.���������ڵ�.")


	MisResultCondition(HasMission, 1101)
	MisResultCondition(NoRecord,1101)
	MisResultCondition(HasFlag, 1101, 99 )
	MisResultAction(AddChaItem4, 2952)----�ر��ж���
	MisResultAction(ClearMission, 1101)
	MisResultAction(SetRecord,  1101 )
	MisResultAction(GiveItem, 2955, 1, 4)------------���򴬳���װ����
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 75)	
	TriggerAction( 1, AddNextFlag, 1101, 1, 99 )
	RegCurTrigger( 11011 )





	----------------------------------------------------------���˽ڵĹ�ʵ
	DefineMission( 5601, "���˽ڵĹ�ʵ", 1102)

	MisBeginTalk( "<t> ���������˽�Ŷ!����ϲ��׽Ū����,��Ҳ��ҽ����ҵĿ���,�����һ���Ϊ��Ŀɰ�������ĳЩ����.�ð�,��һ������Ƚ�BT,����Ҫ��������׼����!ȥ�����Ѽ�100���������!" )
	MisBeginCondition(NoRecord, 1102)
	MisBeginCondition(NoMission, 1102)
	MisBeginCondition(LvCheck, ">", 10 )
	MisBeginAction(AddMission, 1102)
	MisBeginAction(AddTrigger, 11021, TE_GETITEM, 3116, 100 )		
	MisCancelAction(ClearMission, 1102)
	
	MisNeed(MIS_NEED_ITEM, 3116, 100, 10, 100)

	MisResultTalk("<t>����湻��ֱ��,�Ǻ�,Ӧ���Ǹ�����,������һ�����˽ڵ�����")
	MisHelpTalk("<t>100���ɰ������˽ڹ�ʵ��ʲô����?��Ҳ��֪��...")
	MisResultCondition(HasMission, 1102)
	MisResultCondition(HasItem, 3116, 100 )
	MisResultAction(TakeItem, 3116, 100 )
	MisResultAction(ClearMission, 1102)
	MisResultAction(SetRecord, 1102 )
	MisResultAction(GiveItem, 2953, 1, 4)------------���˽ڵ�����
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 3116)	
	TriggerAction( 1, AddNextFlag, 1102, 10, 100 )
	RegCurTrigger( 11021 )



	------------------------------------------------------���˽ڵĿ���
	DefineMission( 5602, "���˽ڵĿ���", 1103)

	MisBeginTalk( "<t> ����������Ǯ,���ź�ֱ��������ܾ���!�������ͷ�ȽϽ�,�ҵ��ñ���Ҫ��ѧ��,ȱ��һ��ѧ��!���ܽ���100����?" )
	MisBeginCondition(NoRecord, 1103)
	MisBeginCondition(HasRecord, 1102)
	MisBeginCondition(NoMission, 1103)
	MisBeginAction(AddMission, 1103)	
	MisCancelAction(ClearMission, 1103)
	
	MisResultTalk("<t>�㲻��ָ���һ�Ǯ�����?!")
	MisHelpTalk("<t>�㲻Ҫ��ôС����,���п��������о�ϲ��")
	MisResultCondition(HasMission, 1103)
	MisResultCondition(HasMoney, 1000000 )
	MisResultAction(TakeMoney, 1000000 )
	MisResultAction(ClearMission, 1103)
	MisResultAction(SetRecord, 1103 )



	------------------------------------------------------���˽ڵ�����
	DefineMission( 5603, "���˽ڵ�����", 1104)

	MisBeginTalk( "<t> ������ɵ�Ŀɰ�,���������?����!ʲô?���һ�Ǯ?������!����...������ȥ����41����������,�ҿ��Կ��ǰ�Ǯ������" )
	MisBeginCondition(NoRecord, 1104)
	MisBeginCondition(HasRecord, 1103)
	MisBeginCondition(NoMission, 1104)
	MisBeginCondition(HaveNoItem, 2954)
	MisBeginAction(AddMission, 1104)	
	MisBeginAction(GiveItem, 2954, 1, 4)------------����֤��
	MisCancelAction(ClearMission, 1104)
	MisBeginBagNeed(1)
	
	MisResultTalk("<t>������Ǻ��������ޱ����ɰ�����,�ұ����ɵ�����۷�!����,����㰲ο.����ɵ�˷�ɵ��,�ҿɳԲ���!")
	MisHelpTalk("<t>ʲô������?������������Ϊ��")
	MisResultCondition(HasMission, 1104)
	MisResultCondition(CheckPoint, 2954 )
	MisResultAction(TakeItem, 2954,1,4)
	MisResultAction(GiveItem, 0853,1,4)
	MisResultAction(ClearMission, 1104)
	MisResultAction(SetRecord, 1104 )
	MisResultBagNeed(1)


--------------------------------------------------˭���ػ���--------·�ˡ���
	DefineMission( 6015, "˭���ػ���", 1013, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>ͼͼҲ���ǵģ����Ǹ������鷳")
	MisResultCondition(NoRecord, 1013)
	MisResultCondition(HasMission, 1013)
	MisResultAction(SetRecord, 1013)
	MisResultAction(ClearMission, 1013)

--------------------------------------------------�ѣ����Ƿ���-------·�ˡ���
	DefineMission( 6016, "�ѣ����Ƿ�", 1014)
	MisBeginTalk("<t>ת��֮·��������ô�򵥵ģ�ȥ�����峤����������.�����ʰɡ�")
	MisBeginCondition(NoRecord, 1014)
	MisBeginCondition(NoMission, 1014)
	MisBeginCondition(HasRecord, 1013)
	MisBeginAction(AddMission, 1014)
	MisBeginAction(ZSSTART)
	MisCancelAction(ClearMission, 1014)

	MisNeed(MIS_NEED_DESP, "<t>ȥ�����峤����������.��ȥ����ת��֮·�������")
	MisHelpTalk("<t>ȥ�����峤����������.��ɣ�������ɳ�֮�ǡ�")

	MisResultCondition(AlwaysFailure)



---------------------------------------------------�ѣ����Ƿ���----------���峤����������.��
	DefineMission( 6017, "�ѣ����Ƿ���", 1014, COMPLETE_SHOW )
	MisBeginCondition(AlwaysFailure )
	MisResultTalk("<t>ѡ����������Ժ����뻻��·���ߵĻ������������ң�����Ҫ������С�Ĵ���")
	MisResultCondition(NoRecord, 1014)
	MisResultCondition(HasMission, 1014)
	MisResultCondition(HasRecord, 1059)
	MisResultAction(ClearMission, 1014)
	MisResultAction(SetRecord, 1014)

---------------------------------------------------����ת��֮·-----------���峤����������.��
	DefineMission( 6018, "����ת��֮·", 1017)
	MisBeginTalk("<t>·�����Լ�ѡ��ģ����ڻ�ȥ��·�ˡ����ɣ��������ָ���ġ�")
	MisBeginCondition(NoRecord, 1017)
	MisBeginCondition(NoMission, 1017)
	MisBeginCondition(HasRecord, 1014)
	MisBeginAction(AddMission, 1017)
	MisCancelAction(ClearMission, 1017)

	MisNeed(MIS_NEED_DESP, "<t>ȥ��·�ˡ���")
	MisHelpTalk("<t>ȥ��·�ˡ����ɡ�")

	MisResultCondition(AlwaysFailure)

--------------------------------------------------����ת��֮·---------------·�ˡ���
	DefineMission( 6019, "����ת��֮·", 1017, COMPLETE_SHOW )
	MisBeginCondition(AlwaysFailure)
	MisResultTalk("<t>ѡ������ϲ���ĵ�·������ô�����Ǽ����ɣ�")
	MisResultCondition(NoRecord, 1017)
	MisResultCondition(HasMission, 1017)
	MisResultAction(ClearMission, 1017)
	MisResultAction(SetRecord, 1017)

---------------------------------------------------��޵�����---------·�ˡ���
	DefineMission( 6020, "��޵�����", 1018)
	MisBeginTalk("<t>��Ȼ��ѡ��������֮·�����Ҿ�ָ��ָ����ɣ���������Ǻ��ѵ�Ŷ.��,�⼸���һ��ҿ����ǲ�ˬ,����ȫ����һ�ξ�����.")
	MisBeginCondition(NoRecord,1000)
	MisBeginCondition(HasRecord,1017)
	MisBeginCondition(HasRecord,1015)
	MisBeginCondition(NoRecord,1018)
	MisBeginCondition(NoMission,1018)
	MisBeginAction(AddMission,1018)
	MisBeginAction(AddTrigger, 10181, TE_KILL,678, 1)
	MisBeginAction(AddTrigger, 10182, TE_KILL,679, 1)
	MisBeginAction(AddTrigger, 10183, TE_KILL,789, 1)
	MisCancelAction(ClearMission,1018)

	MisNeed(MIS_NEED_DESP, "����ħ��ѩ�������죬ѩ����ͺ���")
	MisNeed(MIS_NEED_KILL, 678, 1, 10, 1)
	MisNeed(MIS_NEED_KILL, 679, 1, 20, 1)
	MisNeed(MIS_NEED_KILL, 789, 1, 30, 1)

	MisHelpTalk("<t>һ�����ǲ��еģ�����Щ����ȥ�ɣ�")
	MisResultTalk("<t>лл�����ѣ�������������Ҫ��.")
	MisResultCondition(HasMission,1018)
	MisResultCondition(NoRecord,1018)
	MisResultCondition(HasFlag, 1018, 10)
	MisResultCondition(HasFlag, 1018, 20)
	MisResultCondition(HasFlag, 1018, 30)
	MisResultAction(SetRecord,1018)
	MisResultAction(SetRecord,1056)
	MisResultAction(ClearMission,1018)
	MisResultAction(GiveItem, 2229, 1, 4)
	MisResultAction(GiveItem, 2230, 1, 4)
	MisResultAction(GiveItem, 2231, 1, 4)
	MisResultAction(GiveItem, 2232, 1, 4)
	MisResultAction(GiveItem, 2233, 1, 4)
	MisResultBagNeed(5)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 678 )
	TriggerAction( 1, AddNextFlag, 1018, 10, 1 )
	RegCurTrigger( 10181 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 679 )
	TriggerAction( 1, AddNextFlag, 1018, 20, 1 )
	RegCurTrigger( 10182 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 789 )
	TriggerAction( 1, AddNextFlag, 1018, 30, 1 )
	RegCurTrigger( 10183 )

----------------------------------------------��ʱ����ս---------·�ˡ���
	DefineMission( 6021, "��ʱ����ս", 1019)
	MisBeginTalk("<t>��ѡ����鷳֮·���Ǻã����������������ս����˹���ȳ�,����ȥ�����?ȥ���°�,�����������30���������Ŷ")
	MisBeginCondition( NoRecord, 1000)
	MisBeginCondition( NoRecord, 1019)
	MisBeginCondition( NoMission, 1019)
	MisBeginCondition( HasRecord, 1017)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission, 1019)
	MisCancelAction(ClearMission,1019)

	MisNeed(MIS_NEED_DESP, "��30�����������ս����˹")

	MisHelpTalk("<t>ֻҪ���ù����ĺú����ϵ�ʱ��С��1800���Ҿ�������أ���ס��ֻ�ܴ�һ���ú��������ң�")
	MisResultTalk("<t>�ܹ���")
	MisResultCondition( HasItem, 2912, 1)
	MisResultCondition( LessTime, 1800)
	MisResultCondition( NoRecord, 1019)
	MisResultCondition( HasMission, 1019)
	MisResultAction( SetRecord, 1019)
	MisResultAction( ClearMission, 1019)


--------------------------------------------��ʱ����ս-------------·�ˡ���
	DefineMission( 6022, "��ʱ����ս", 1020)
	MisBeginTalk("<t>��ȥ��һ�ΰ�,����������������;�ķ羰��,����ɵ�ʱ��������7��Сʱ���������ֲ�ϲ��һֱ���ˣ������㻹�Ǳ�����8Сʱ�ڻ���Ŷ")
	MisBeginCondition( NoRecord, 1020)
	MisBeginCondition( NoMission, 1020)
	MisBeginCondition( HasRecord, 1019)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission, 1020)
	MisCancelAction( ClearMission, 1020)

	MisNeed(MIS_NEED_DESP, "��ɼ���˹������սʱ��������7СʱС��8Сʱ")

	MisHelpTalk("<t>���ù����ĺú����ϵ�ʱ��������25200��С��28800��Ŷ����ס��ֻ�ܴ�һ���ú��������ң�")
	MisResultTalk("<t>��ɫ������!")
	MisResultCondition( MoreTime, 25200)
	MisResultCondition( LessTime, 28800)
	MisResultCondition( NoRecord, 1020)
	MisResultCondition( HasMission, 1020)
	MisResultAction( SetRecord, 1020)
	MisResultAction( ClearMission, 1020)



-----------------------------------------------��ʱ����ս------------·�ˡ���
	DefineMission( 6023, "��ʱ����ս", 1021)
	MisBeginTalk("<t>�������һ�ΰ�,�������볬��5Сʱ��������5����Сʱ��������ȫ�̡�")
	MisBeginCondition( NoRecord, 1021)
	MisBeginCondition( NoMission, 1021)
	MisBeginCondition( HasRecord, 1020)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission, 1021)
	MisCancelAction( ClearMission, 1021)

	MisNeed(MIS_NEED_DESP, "��ɼ���˹������սʱ�����С��5����Сʱ������5Сʱ")

	MisHelpTalk("<t>���ù����ĺú����ϵ�ʱ�������18000�뵽19800��֮��Ŷ����ס��ֻ�ܴ�һ���ú��������ң�")
	MisResultTalk("<t>�������ܵ���ô����ķ��ϣ����Ͽ�����!")
	MisResultCondition( LessTime, 19800)
	MisResultCondition( MoreTime, 18000)
	MisResultCondition( NoRecord, 1021)
	MisResultCondition( HasMission, 1021)

	MisResultAction( SetRecord, 1021)
	MisResultAction( ClearMission, 1021)

---------------------------------------------Ѱ�������ػ���------·�ˡ���
	DefineMission( 6024, "Ѱ�������ػ���", 1022)
	MisBeginTalk("<t>��һ���ػ�������������ȥ�����ɡ�")
	MisBeginCondition( NoRecord, 1022)
	MisBeginCondition( NoMission, 1022)
	MisBeginCondition( HasRecord, 1021)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission, 1022)
	MisCancelAction( ClearMission, 1022)

	MisNeed(MIS_NEED_DESP, "ȥ�����������ػ���")
	MisHelpTalk("<t>ȥ�����ɣ�������������")

	MisResultCondition(AlwaysFailure)

-----------------------------------------------Ѱ�������ػ���--------������פ��������ʹ��������
	DefineMission( 6025, "Ѱ�������ػ���", 1022,COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>���������ˣ������ˣ�")
	MisResultCondition( NoRecord, 1022)
	MisResultCondition( HasMission, 1022)
	MisResultAction( SetRecord, 1022)
	MisResultAction( ClearMission, 1022)

-------------------------------------------------���򹬵�ս��---------------������פ��������ʹ��������
	DefineMission( 6026, "���򹬵�ս��", 1023)
	MisBeginTalk("<t>����֮���Ѿ���ʼת��,ʮ�����Ĵ����Ѿ���,ȥ�����ҵ�������ӡ��")
	MisBeginCondition( NoRecord, 1023)
	MisBeginCondition( NoMission, 1023)
	MisBeginCondition( HasRecord, 1022)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission, 1023)
	MisBeginAction(AddTrigger, 10231, TE_GETITEM, 2942, 1 )
	MisCancelAction( ClearMission, 1023)

	MisNeed(MIS_NEED_DESP, "���Ű���ȫ�׿�װ���Ű�����ӡ����������פ��������ʹ��������")
	MisNeed(MIS_NEED_ITEM, 2942, 1, 10 ,1)

	MisHelpTalk("<t>���Ű���ȫ�׿�װ���Ű�����ӡ������")
	MisResultTalk("<t>��Ȼ�Ǳ�����֮��ѡ�е��˰�")
	MisResultCondition( HasItem, 2942, 1)
	MisResultCondition( BaiyangOn )
	MisResultAction( SetRecord, 1023)
	MisResultAction( ClearMission, 1023)

	InitTrigger()
	TriggerCondition( 1, IsItem, 2942)	
	TriggerAction( 1, AddNextFlag, 1023, 10, 1 )
	RegCurTrigger( 10231 )

--------------------------------------------------Ѱ��ɳ��ػ���--------------------������פ��������ʹ��������
	DefineMission( 6027, "Ѱ��ɳ��ػ���", 1024)
	MisBeginTalk("<t>ȥ�����ɳ�ĳ���Ѱ����һ���ػ��߰�")
	MisBeginCondition( NoRecord, 1024)
	MisBeginCondition( NoMission, 1024)
	MisBeginCondition( HasRecord, 1023)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission, 1024)
	MisCancelAction( ClearMission, 1024)

	MisNeed(MIS_NEED_DESP, "Ѱ��ɳᰳǵ��ػ���")
	MisHelpTalk("<t>ȥ�����ɳ�ĳ��а�")
	
	MisResultCondition(AlwaysFailure)

-----------------------------------------------------Ѱ��ɳ��ػ���--------------------·�ˡ�ɺ����
	DefineMission( 6028, "Ѱ��ɳ��ػ���", 1024, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>��Ҫ����ƽʱ��ų��������,�ͺ�����~��")
	MisResultCondition( NoRecord, 1024)
	MisResultCondition( HasMission, 1024)
	MisResultAction( SetRecord, 1024)
	MisResultAction( ClearMission, 1024)

-------------------------------------------------------��������--------------------·�ˡ�ɺ����
	DefineMission( 6029, "��������", 1025)
	MisBeginTalk("<t>����������������������㹻���˽���?���Ҵ������λ������а�,·;�л��кܶ���Ϊ���ṩ�����ģ�������Ӧ������Ҳ����ȡ��һ����������Ϊ����Ŷ����һվ�ǷϿ󲹸�վ,ȥ���������������")
	MisBeginCondition( NoMission, 1025)
	MisBeginCondition( NoRecord, 1025)
	MisBeginCondition( HasRecord, 1024)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission, 1025)
	MisCancelAction( ClearMission, 1025)

	MisNeed(MIS_NEED_DESP, "ȥ��������̸̸����������������500���Ż�����")
	MisHelpTalk("<t>�������ڷϿ󲹸�վ")

	MisResultCondition(AlwaysFailure)

-------------------------------------------------------��������-----------------������
	DefineMission( 6030, "��������", 1025, COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>��������?ע����ϢŶ��")
	MisResultCondition( NoRecord, 1025)
	MisResultCondition( HasMission, 1025)
	MisResultCondition( HasCredit, 500)
	MisResultAction( DelRoleCredit, 500)
	MisResultAction( SetRecord, 1025)
	MisResultAction( ClearMission, 1025)

--------------------------------------------------------��������------------------������
	DefineMission( 6031, "��������", 1026)
	MisBeginTalk("<t>��һվ�ǰͲ�����վ,ȥ���׶�����")
	MisBeginCondition( NoMission, 1026)
	MisBeginCondition( NoRecord, 1026)
	MisBeginCondition( HasRecord, 1025)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission,1026)
	MisCancelAction( ClearMission, 1026)

	MisNeed(MIS_NEED_DESP, "ȥ���׶�����̸̸����������������500���Ż�����")
	MisHelpTalk("<t>�׶������ڰͲ�����վ")

	MisResultCondition(AlwaysFailure)

---------------------------------------------------------��������----------------�׶�����
	DefineMission( 6032, "��������", 1026, COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>��������?ע����ϢŶ��")
	MisResultCondition( NoRecord, 1026)
	MisResultCondition( HasMission, 1026)
	MisResultCondition( HasCredit, 500)
	MisResultAction( DelRoleCredit, 500)
	MisResultAction( SetRecord, 1026)
	MisResultAction( ClearMission, 1026)

----------------------------------------------------------��������-----------------�׶�����
	DefineMission( 6033, "��������", 1027)
	MisBeginTalk("<t>��һվ�ǰ�����˹����վ,ȥ��ޱ���")
	MisBeginCondition( NoMission, 1027)
	MisBeginCondition( NoRecord, 1027)
	MisBeginCondition( HasRecord, 1026)
	MisBeginCondition( HasRecord, 1016)
 	MisBeginAction( AddMission,1027)
	MisCancelAction( ClearMission, 1027)

	MisNeed(MIS_NEED_DESP, "ȥ��ޱ���̸̸����������������500���Ż�����")
	MisHelpTalk("<t>�ܲ��������ܲ��˵Ļ������ȥ�����峤����������.��ȥ���������ת��֮·��")

	MisResultCondition(AlwaysFailure)

---------------------------------------------------------��������-------------------ޱ���
	DefineMission( 6034, "��������", 1027, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>��������ע����ϢŶ��")
	MisResultCondition( NoRecord, 1027)
	MisResultCondition( HasMission, 1027)
	MisResultCondition( HasCredit, 500)
	MisResultAction( DelRoleCredit, 500)
	MisResultAction( SetRecord, 1027)
	MisResultAction( ClearMission, 1027)

-----------------------------------------------------------��������------------------ޱ���
	DefineMission( 6035, "��������", 1028)
	MisBeginTalk("<t>��һվ���߶�ŵ����վ,ȥ�Ҳ�������")
	MisBeginCondition( NoMission, 1028)
	MisBeginCondition( NoRecord, 1028)
	MisBeginCondition( HasRecord, 1027)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission,1028)
	MisCancelAction( ClearMission, 1028)

	MisNeed(MIS_NEED_DESP, "ȥ�Ҳ�������̸̸����������������500���Ż�����")
	MisHelpTalk("<t>�����������߶�ŵ����վ")

	MisResultCondition(AlwaysFailure)

------------------------------------------------------------��������---------------��������
	DefineMission( 6036, "��������", 1028, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>��������ע����ϢŶ��")
	MisResultCondition( NoRecord, 1028)
	MisResultCondition( HasMission, 1028)
	MisResultCondition( HasCredit, 500)
	MisResultAction( DelRoleCredit, 500)
	MisResultAction( SetRecord, 1028)
	MisResultAction( ClearMission, 1028)

---------------------------------------------------------------��������------------��������
	DefineMission( 6037, "��������", 1029)
	MisBeginTalk("<t>��һվ��ɳȪ����վ,ȥ�ҵϵ�����")
	MisBeginCondition( NoMission, 1029)
	MisBeginCondition( NoRecord, 1029)
	MisBeginCondition( HasRecord, 1028)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission,1029)
	MisCancelAction( ClearMission, 1029)

	MisNeed(MIS_NEED_DESP, "ȥ�ҵϵ�����̸̸����������������500���Ż�����")
	MisHelpTalk("<t>�ϵ�������ɳȪ����վ")

	MisResultCondition(AlwaysFailure)

--------------------------------------------------------------��������-----------�ϵ�����
	DefineMission( 6038, "��������", 1029, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>��������ע����ϢŶ��")
	MisResultCondition( NoRecord, 1029)
	MisResultCondition( HasMission, 1029)
	MisResultCondition( HasCredit, 500)
	MisResultAction( DelRoleCredit, 500)
	MisResultAction( SetRecord, 1029)
	MisResultAction( ClearMission, 1029)

--------------------------------------------------------------��������-----------�ϵ�����
	DefineMission( 6039, "��������", 1030)
	MisBeginTalk("<t>��һվ�Ǳ�������վ,ȥ��³³")
	MisBeginCondition( NoMission, 1030)
	MisBeginCondition( NoRecord, 1030)
	MisBeginCondition( HasRecord, 1029)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission,1030)
	MisCancelAction( ClearMission, 1030)

	MisNeed(MIS_NEED_DESP, "ȥ��³³̸̸����������������500���Ż�����")
	MisHelpTalk("<t>³³�ڱ�������վ")

	MisResultCondition(AlwaysFailure)

--------------------------------------------------------------��������-----------³³
	DefineMission( 6040, "��������", 1030, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>��������ע����ϢŶ��")
	MisResultCondition( NoRecord, 1030)
	MisResultCondition( HasMission, 1030)
	MisResultCondition( HasCredit, 500)
	MisResultAction( DelRoleCredit, 500)
	MisResultAction( SetRecord, 1030)
	MisResultAction( ClearMission, 1030)

--------------------------------------------------------------��������-----------³³
	DefineMission( 6041, "��������", 1031)
	MisBeginTalk("<t>��һվ�ǹ��￩������վ,ȥ������")
	MisBeginCondition( NoMission, 1031)
	MisBeginCondition( NoRecord, 1031)
	MisBeginCondition( HasRecord, 1030)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission,1031)
	MisCancelAction( ClearMission, 1031)

	MisNeed(MIS_NEED_DESP, "ȥ������̸̸����������������500���Ż�����")
	MisHelpTalk("<t>�����ڹ��￩������վ")

	MisResultCondition(AlwaysFailure)

--------------------------------------------------------------��������-------------����
	DefineMission( 6042, "��������", 1031, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>��������ע����ϢŶ��")
	MisResultCondition( NoRecord, 1031)
	MisResultCondition( HasMission, 1031)
	MisResultCondition( HasCredit, 500)
	MisResultAction( DelRoleCredit, 500)
	MisResultAction( SetRecord, 1031)
	MisResultAction( ClearMission, 1031)

--------------------------------------------------------------��������-------------����
	DefineMission( 6043, "��������", 1032)
	MisBeginTalk("<t>��һվ�����ò���վ,ȥ���մ�")
	MisBeginCondition( NoMission, 1032)
	MisBeginCondition( NoRecord, 1032)
	MisBeginCondition( HasRecord, 1031)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission,1032)
	MisCancelAction( ClearMission, 1032)

	MisNeed(MIS_NEED_DESP, "ȥ���մ�̸̸����������������500���Ż�����")
	MisHelpTalk("<t>�մ������ò���վ")

	MisResultCondition(AlwaysFailure)

---------------------------------------------------------------��������--------------�մ�
	DefineMission( 6044, "��������", 1032, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>��������ע����ϢŶ��")
	MisResultCondition( NoRecord, 1032)
	MisResultCondition( HasMission, 1032)
	MisResultCondition( HasCredit, 500)
	MisResultAction( DelRoleCredit, 500)
	MisResultAction( GiveItem, 3128, 10, 4)
	MisResultAction( SetRecord, 1032)
	MisResultAction( ClearMission, 1032)
	MisResultBagNeed(1)


---------------------------------------------------------------��������--------------�մ�
	DefineMission( 6045, "��������", 1033)
	MisBeginTalk("<t>��һվ������Ӫ�ز���վ,ȥ����˾")
	MisBeginCondition( NoMission, 1033)
	MisBeginCondition( NoRecord, 1033)
	MisBeginCondition( HasRecord, 1032)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission,1033)
	MisCancelAction( ClearMission, 1033)

	MisNeed(MIS_NEED_DESP, "ȥ����˾̸̸����������������500���Ż�����")
	MisHelpTalk("<t>��˾������Ӫ�ز���վ")

	MisResultCondition(AlwaysFailure)

----------------------------------------------------------------��������--------------��˾
	DefineMission( 6046, "��������", 1033, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>��������ע����ϢŶ��")
	MisResultCondition( NoRecord, 1033)
	MisResultCondition( HasMission, 1033)
	MisResultCondition( HasCredit, 500)
	MisResultAction( DelRoleCredit, 500)
	MisResultAction( SetRecord, 1033)
	MisResultAction( ClearMission, 1033)

----------------------------------------------------------------��������--------------��˾
	DefineMission( 6047, "��������", 1034)
	MisBeginTalk("<t>��һվ�ǿ����ӵ²���վ,ȥ�Һ�����΢��")
	MisBeginCondition( NoMission, 1034)
	MisBeginCondition( NoRecord, 1034)
	MisBeginCondition( HasRecord, 1033)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission,1034)
	MisCancelAction( ClearMission, 1034)

	MisNeed(MIS_NEED_DESP, "ȥ�Һ�����΢��̸̸����������������500���Ż�����")
	MisHelpTalk("<t>������΢���ڿ����ӵ²���վ")

	MisResultCondition(AlwaysFailure)

-----------------------------------------------------------------��������-------------������΢��
	DefineMission( 6048, "��������", 1034, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>��������ע����ϢŶ��")
	MisResultCondition( NoRecord, 1034)
	MisResultCondition( HasMission, 1034)
	MisResultCondition( HasCredit, 500)
	MisResultAction( DelRoleCredit, 500)
	MisResultAction( SetRecord, 1034)
	MisResultAction( ClearMission, 1034)

-----------------------------------------------------------------��������-------------������΢��
	DefineMission( 6049, "��������", 1035)
	MisBeginTalk("<t>��һվ�Ǳ�������վ,ȥ������")
	MisBeginCondition( NoMission, 1035)
	MisBeginCondition( NoRecord, 1035)
	MisBeginCondition( HasRecord, 1034)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission,1035)
	MisCancelAction( ClearMission, 1035)

	MisNeed(MIS_NEED_DESP, "ȥ������̸̸����������������500���Ż�����")
	MisHelpTalk("<t>�����ڱ�������վ")

	MisResultCondition(AlwaysFailure)

----------------------------------------------------------------��������---------------����
	DefineMission( 6050, "��������", 1035, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>��������ע����ϢŶ��")
	MisResultCondition( NoRecord, 1035)
	MisResultCondition( HasMission, 1035)
	MisResultCondition( HasCredit, 500)
	MisResultAction( DelRoleCredit, 500)
	MisResultAction( SetRecord, 1035)
	MisResultAction( ClearMission, 1035)

----------------------------------------------------------------��������---------------����
	DefineMission( 6051, "��������", 1036)
	MisBeginTalk("<t>��һվ������ɭ�ֲ���վ,ȥ������ҽ��������ϣ��")
	MisBeginCondition( NoMission, 1036)
	MisBeginCondition( NoRecord, 1036)
	MisBeginCondition( HasRecord, 1035)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission,1036)
	MisCancelAction( ClearMission, 1036)

	MisNeed(MIS_NEED_DESP, "ȥ������ϣ��̸̸����������������500���Ż�����")
	MisHelpTalk("<t>����ϣ��������ɭ�ֲ���վ")

	MisResultCondition(AlwaysFailure)

----------------------------------------------------------------��������---------------����ϣ��
	DefineMission( 6052, "��������", 1036, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>��������ע����ϢŶ��")
	MisResultCondition( NoRecord, 1036)
	MisResultCondition( HasMission, 1036)
	MisResultCondition( HasCredit, 500)
	MisResultAction( DelRoleCredit, 500)
	MisResultAction( GiveItem, 3139, 10, 4)
	MisResultAction( SetRecord, 1036)
	MisResultAction( ClearMission, 1036)
	MisResultBagNeed(1)


----------------------------------------------------------------��������-------------------����ϣ��
	DefineMission( 6053, "��������", 1037)
	MisBeginTalk("<t>���н�����,����Ի�ȥ��·�ˡ�ɺ����")
	MisBeginCondition( NoMission, 1037)
	MisBeginCondition( NoRecord, 1037)
	MisBeginCondition( HasRecord, 1036)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission,1037)
	MisCancelAction( ClearMission, 1037)

	MisNeed(MIS_NEED_DESP, "ȥ��·�ˡ�ɺ����")
	MisHelpTalk("<t>ȥ��·�ˡ�ɺ����")

	MisResultCondition(AlwaysFailure)

---------------------------------------------------------------��������--------------------·�ˡ�ɺ����
	DefineMission( 6054, "��������", 1037, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>��ô��?���������а�?��������һ����?�Ǻ�,����Ц�����ý��ţ�")
	MisResultCondition( NoRecord, 1037)
	MisResultCondition( HasMission, 1037)
	MisResultCondition( HasCredit, 500)
	MisResultAction( DelRoleCredit, 500)
	MisResultAction( SetRecord, 1037)
	MisResultAction( ClearMission, 1037)

--------------------------------------------------------------Ѱ�������ػ���--------------·�ˡ�ɺ����
	DefineMission( 6055, "Ѱ�������ػ���", 1038)
	MisBeginTalk("<t>ȥ���õ��������һλ�ػ��߰ɡ�")
	MisBeginCondition( NoMission, 1038)
	MisBeginCondition( NoRecord, 1038)
	MisBeginCondition( HasRecord, 1037)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission,1038)
	MisCancelAction( ClearMission, 1038)

	MisNeed(MIS_NEED_DESP, "ȥ����һλ�ػ���")
	MisHelpTalk("<t>��һλ�ػ��߾������õ���ڡ�")

	MisResultCondition(AlwaysFailure)

-------------------------------------------------------------Ѱ�������ػ���--------------���ô���ʹ
	DefineMission( 6056, "Ѱ�������ػ���", 1038, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>�����Ů����")
	MisResultCondition( NoRecord, 1038)
	MisResultCondition( HasMission, 1038)
	MisResultAction( SetRecord, 1038)
	MisResultAction( ClearMission, 1038)
	
------------------------------------------------------------�ϵ�֤��-------------------���ô���ʹ
	DefineMission( 6057, "�ϵ�֤��", 1039)
	MisBeginTalk("<t>��õ��ҵ��Ͽ���û����,�������������֤�����Ů�����.������9����ʥ����,���ҽ�����ȫ��������")
	MisBeginCondition( NoRecord, 1039)
	MisBeginCondition( NoMission, 1039)
	MisBeginCondition( HasRecord, 1038)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction(AddTrigger, 10391, TE_GETITEM, 3007, 9 )
	MisBeginAction( AddMission, 1039)
	MisBeginAction( GiveItem, 3006, 9, 4)
	MisBeginBagNeed(1)
	MisCancelAction( ClearMission, 1039)

	MisNeed(MIS_NEED_ITEM, 3007, 9, 10, 9)

	MisResultTalk("<t>�ɵĲ���")
	MisHelpTalk("<t>ʹ����Щ��ʥ������Ϳ��Ե������ǡ�")
	MisResultCondition( NoRecord, 1039)
	MisResultCondition( HasMission, 1039)
	MisResultCondition( HasItem, 3007, 9)
	MisResultAction( TakeItem, 3007, 9)
	MisResultAction( SetRecord, 1039)
	MisResultAction( ClearMission, 1039)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3007)	
	TriggerAction( 1, AddNextFlag, 1039, 10, 9 )
	RegCurTrigger( 10391 )


------------------------------------------------------------�ϵ�֤��-------------------���ô���ʹ
	DefineMission( 6058, "�ϵ�֤��", 1040)
	MisBeginTalk("<t>��Ȼ����ô�о���,���ٰ��Ұ���99����ʥ��������ɡ�")
	MisBeginCondition( NoRecord, 1040)
	MisBeginCondition( NoMission, 1040)
	MisBeginCondition( HasRecord, 1039)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction(AddTrigger, 10401, TE_GETITEM, 3007, 99 )
	MisBeginAction( AddMission, 1040)
	MisBeginAction( GiveItem, 3006, 99, 4)
	MisBeginBagNeed(1)
	MisCancelAction( ClearMission, 1040)

	MisNeed(MIS_NEED_ITEM, 3007, 99, 10, 99)

	MisResultTalk("<t>�����ģ�")
	MisHelpTalk("<t>ʹ����Щ��ʥ������Ϳ��Ե������ǡ�")
	MisResultCondition( NoRecord, 1040)
	MisResultCondition( HasMission, 1040)
	MisResultCondition( HasItem, 3007, 99)
	MisResultAction( TakeItem, 3007, 99)
	MisResultAction( SetRecord, 1040)
	MisResultAction( ClearMission, 1040)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3007)	
	TriggerAction( 1, AddNextFlag, 1040, 10, 99 )
	RegCurTrigger( 10401 )

------------------------------------------------------------�ϵ�֤��-------------------���ô���ʹ
	DefineMission( 6059, "�ϵ�֤��", 1041)
	MisBeginTalk("<t>���һ�������ˣ������и�Ů��ĵ�����ÿ��ʹ�ö���Ϊ�������ע��1������������������ע�����������Ұɣ���ס��ֻ����һ��Ů�����")
	MisBeginCondition( NoRecord, 1041)
	MisBeginCondition( NoMission, 1041)
	MisBeginCondition( HasRecord, 1040)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction(AddTrigger, 10411, TE_GETITEM, 3010, 1 )
	MisBeginAction( AddMission, 1041)
	MisBeginAction( GiveNSDX, 3010 )
	MisBeginBagNeed(1)
	MisCancelAction( ClearMission, 1041)
	
	MisNeed(MIS_NEED_ITEM, 3010, 1, 10, 1)

	MisResultTalk("<t>Ů�����Զע����,������ġ�")
	MisHelpTalk("<t>�ܲ��������ܲ��˵Ļ������ȥ�����峤����������.��ȥ���������ת��֮·��")
	MisResultCondition( NoRecord, 1041)
	MisResultCondition( HasMission, 1041)
	MisResultCondition( CheckEnergy )
	MisResultAction( TakeItem, 3010, 1)
	MisResultAction( SetRecord, 1041)
	MisResultAction( ClearMission, 1041)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3010)	
	TriggerAction( 1, AddNextFlag, 1041, 10, 1 )
	RegCurTrigger( 10411 )

----------------------------------------------------------Ѱ�ð����ػ���--------------���ô���ʹ
	DefineMission( 6060, "Ѱ�ð����ػ���", 1042)
	MisBeginTalk("<t>ȥ����������һλ�ػ��߰ɣ����ɲ���Ӧ��Ŷ��")
	MisBeginCondition( NoRecord, 1042)
	MisBeginCondition( NoMission, 1042)
	MisBeginCondition( HasRecord, 1041)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission, 1042)
	MisCancelAction( ClearMission, 1042)

	MisNeed(MIS_NEED_DESP, "ȥ������Ѱ����һλ�ػ���")
	MisHelpTalk("<t>ȥ������Ѱ����һλ�ػ��߰ɡ�")

	MisResultCondition(AlwaysFailure)

-----------------------------------------------------------Ѱ�ð����ػ���--------------ˮ�֡�����
	DefineMission( 6061, "Ѱ�ð����ػ���", 1042, COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>�������Ϸ��?")
	MisResultCondition( NoRecord, 1042)
	MisResultCondition( HasMission, 1042)
	MisResultAction( SetRecord, 1042)
	MisResultAction( ClearMission, 1042)

------------------------------------------------------------������Ϸ-----------------ˮ�֡�����
	DefineMission( 6062, "������Ϸ", 1043)
	MisBeginTalk("<t>���������С��Ϸ�ɣ���ȥ����ɱ110������ݣ��ٻ����ش��ҵ����⡣")
	MisBeginCondition( NoRecord, 1043)
	MisBeginCondition( NoMission, 1043)
	MisBeginCondition( HasRecord, 1042)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission, 1043)
	MisBeginAction( AddTrigger, 10431, TE_KILL, 75, 110)
	MisCancelAction( ClearMission, 1043)

	MisNeed(MIS_NEED_DESP, "��ɱ110�������")
	MisNeed(MIS_NEED_KILL, 75, 110, 10, 110)

	MisResultTalk("<t>ɱ�ĺܿ���")
	MisHelpTalk("<t>������ڰ�������Χ��������,ɱ���Ҫ�ش���һ������Ŷ��")
	MisResultCondition( NoRecord, 1043)
	MisResultCondition( HasMission, 1043)
	MisResultCondition( HasFlag, 1043, 10)
	MisResultCondition( HasRecord, 1058)
	MisResultAction( SetRecord, 1043)
	MisResultAction( ClearMission, 1043)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 75 )
	TriggerAction( 1, AddNextFlag, 1043, 10, 110 )
	RegCurTrigger( 10431 )

------------------------------------------------------------������Ϸ-----------------ˮ�֡�����
	DefineMission( 6063, "������Ϸ", 1046)
	MisBeginTalk("<t>ȥ����ȥɱ110����ɫ����ݰɣ�")
	MisBeginCondition( NoRecord, 1046)
	MisBeginCondition( NoMission, 1046)
	MisBeginCondition( HasRecord, 1043)
	MisBeginCondition( HasRecord, 1044)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission, 1046)
	MisBeginAction( AddTrigger, 10461, TE_KILL, 218, 110)
	MisCancelAction( ClearMission, 1046)

	MisNeed(MIS_NEED_DESP, "��ɱ110����ɫ�����")
	MisNeed(MIS_NEED_KILL, 218, 110, 10, 110)

	MisResultTalk("<t>ɱ�ĺܿ���")
	MisHelpTalk("<t>��ɫ�������ɳᰳ���Χ�������ǡ�")
	MisResultCondition( NoRecord, 1046)
	MisResultCondition( HasMission, 1046)
	MisResultCondition( HasFlag, 1046, 10)
	MisResultCondition( HasRecord, 1058)
	MisResultAction( SetRecord, 1046)
	MisResultAction( SetRecord, 1057)
	MisResultAction( ClearMission, 1046)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 218 )
	TriggerAction( 1, AddNextFlag, 1046, 10, 110 )
	RegCurTrigger( 10461 )

---------------------------------------------------------------������Ϸ------------------ˮ�֡�����
	DefineMission( 6064, "������Ϸ", 1047)
	MisBeginTalk("<t>ȥ����ȥɱ110��ѩ�ؾ���ݰɣ�")
	MisBeginCondition( NoRecord, 1047)
	MisBeginCondition( NoMission, 1047)
	MisBeginCondition( HasRecord, 1045)
	MisBeginCondition( HasRecord, 1043)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission, 1047)
	MisBeginAction( AddTrigger, 10471, TE_KILL, 216, 110)
	MisCancelAction( ClearMission, 1047)

	MisNeed(MIS_NEED_DESP, "��ɱ110��ѩ�ؾ����")
	MisNeed(MIS_NEED_KILL, 216, 110, 10, 110)

	MisResultTalk("<t>ɱ�ĺܿ���")
	MisHelpTalk("<t>��ɫ�������ɳᰳ���Χ�������ǡ�")
	MisResultCondition( NoRecord, 1047)
	MisResultCondition( HasMission, 1047)
	MisResultCondition( HasFlag, 1047, 10)
	MisResultCondition( HasRecord, 1058)
	MisResultAction( SetRecord, 1047)
	MisResultAction( SetRecord, 1057)
	MisResultAction( ClearMission, 1047)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 216 )
	TriggerAction( 1, AddNextFlag, 1047, 10, 110 )
	RegCurTrigger( 10471 )

---------------------------------------------------------------������Ϸ------------------ˮ�֡�����
	DefineMission( 6065, "������Ϸ", 1048)
	MisBeginTalk("<t>��һ��Ŀ���Ǻ���������Ҳȥ���Ҳ�ɱ110���ɡ�")
	MisBeginCondition( NoRecord, 1048)
	MisBeginCondition( NoMission, 1048)
	MisBeginCondition( HasRecord, 1057)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission, 1048)
	MisBeginAction( AddTrigger, 10481, TE_KILL, 233, 110)
	MisCancelAction( ClearMission, 1048)

	MisNeed(MIS_NEED_DESP, "��ɱ110����������")
	MisNeed(MIS_NEED_KILL, 233, 110, 10, 110)

	MisResultTalk("<t>���Ǹ��������Ϸ��������")
	MisHelpTalk("<t>�����������ڰ�����Զ����")
	MisResultCondition( NoRecord, 1048)
	MisResultCondition( HasMission, 1048)
	MisResultCondition( HasFlag, 1048, 10)
	MisResultAction( SetRecord, 1048)
	MisResultAction( ClearMission, 1048)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 233)
	TriggerAction( 1, AddNextFlag, 1048, 10, 110 )
	RegCurTrigger( 10481 )

---------------------------------------------------------------������Ϸ------------------ˮ�֡�����
	DefineMission( 6066, "������Ϸ", 1049)
	MisBeginTalk("<t>��һ��Ŀ����ѩԭ������ȥ���Ҳ�ɱ110���ɡ�")
	MisBeginCondition( NoRecord, 1049)
	MisBeginCondition( NoMission, 1049)
	MisBeginCondition( HasRecord, 1048)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission, 1049)
	MisBeginAction( AddTrigger, 10491, TE_KILL, 235, 110)
	MisCancelAction( ClearMission, 1049)

	MisNeed(MIS_NEED_DESP, "��ɱ110��ѩԭ����")
	MisNeed(MIS_NEED_KILL, 235, 110, 10, 110)

	MisResultTalk("<t>���Ǹ��������Ϸ��������")
	MisHelpTalk("<t>ѩԭ�������ڱ��ǲ�Զ����")
	MisResultCondition( NoRecord, 1049)
	MisResultCondition( HasMission, 1049)
	MisResultCondition( HasFlag, 1049, 10)
	MisResultAction( SetRecord, 1049)
	MisResultAction( ClearMission, 1049)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 235)
	TriggerAction( 1, AddNextFlag, 1049, 10, 110 )
	RegCurTrigger( 10491 )

---------------------------------------------------------------������Ϸ------------------ˮ�֡�����
	DefineMission( 6067, "������Ϸ", 1050)
	MisBeginTalk("<t>��һ��Ŀ���Ǻ���ޢޢ��ȥ���Ҳ�ɱ110���ɡ�")
	MisBeginCondition( NoRecord, 1050)
	MisBeginCondition( NoMission, 1050)
	MisBeginCondition( HasRecord, 1049)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission, 1050)
	MisBeginAction( AddTrigger, 10501, TE_KILL, 232, 110)
	MisCancelAction( ClearMission, 1050)

	MisNeed(MIS_NEED_DESP, "��ɱ110������ޢޢ")
	MisNeed(MIS_NEED_KILL, 232, 110, 10, 110)

	MisResultTalk("<t>���Ǹ��������Ϸ��������")
	MisHelpTalk("<t>�㲻���������Ϸ����Ȥ��")
	MisResultCondition( NoRecord, 1050)
	MisResultCondition( HasMission, 1050)
	MisResultCondition( HasFlag, 1050, 10)
	MisResultAction( SetRecord, 1050)
	MisResultAction( ClearMission, 1050)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 232)
	TriggerAction( 1, AddNextFlag, 1050, 10, 110 )
	RegCurTrigger( 10501 )

---------------------------------------------------------------������Ϸ------------------ˮ�֡�����
	DefineMission( 6068, "������Ϸ", 1051)
	MisBeginTalk("<t>����Ŀ����ѩԭޢޢ��ȥ���Ҳ�ɱ110���ɡ�")
	MisBeginCondition( NoRecord, 1051)
	MisBeginCondition( NoMission, 1051)
	MisBeginCondition( HasRecord, 1050)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission, 1051)
	MisBeginAction( AddTrigger, 10511, TE_KILL, 234, 110)
	MisCancelAction( ClearMission, 1051)

	MisNeed(MIS_NEED_DESP, "��ɱ110��ѩԭޢޢ")
	MisNeed(MIS_NEED_KILL, 234, 110, 10, 110)

	MisResultTalk("<t>��Ϸ�����������ϧ����ľ������Ҹж���������Ӧ�õĽ�����")
	MisHelpTalk("<t>���Ͱ�")
	MisResultCondition( NoRecord, 1051)
	MisResultCondition( HasMission, 1051)
	MisResultCondition( HasFlag, 1051, 10)
	MisResultAction( SetRecord, 1051)
	MisResultAction( SetRecord, 1056)
	MisResultAction( ClearMission, 1051)
	MisResultAction(GiveItem, 2229, 1, 4)
	MisResultAction(GiveItem, 2230, 1, 4)
	MisResultAction(GiveItem, 2231, 1, 4)
	MisResultAction(GiveItem, 2232, 1, 4)
	MisResultAction(GiveItem, 2233, 1, 4)
	MisResultBagNeed(5)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 234)
	TriggerAction( 1, AddNextFlag, 1051, 10, 110 )
	RegCurTrigger( 10511 )

-------------------------------------------------����˾��ԭ��----------��˾���	
	DefineMission (5604, "����˾��ԭ��", 1107)
	
	MisBeginTalk("<t>�װ�������,Ҫ����˾��?�ҵ���˾�ɱ����������һ�����,�볢��һ����?�ð�!�����Ҽ�������˾ԭ�ϰ�! ")

	MisBeginCondition(NoMission,1107)
	MisBeginCondition(NoRecord,1107)
	MisBeginAction(AddMission,1107)
	MisBeginAction(AddTrigger, 11071, TE_GETITEM, 1649, 1 )---------------1��������ˮ
	MisBeginAction(AddTrigger, 11072, TE_GETITEM, 1690, 1 )---------------1����ţ����
	MisBeginAction(AddTrigger, 11073, TE_GETITEM, 3116, 1 )-------------1�������
	MisCancelAction( ClearMission, 1107)
	
	MisNeed(MIS_NEED_ITEM, 1649, 1, 10, 1 )
	MisNeed(MIS_NEED_ITEM, 1690, 1, 20, 1 )
	MisNeed(MIS_NEED_ITEM, 3116, 1, 30, 1 )

	MisHelpTalk("<t>��Щ�����������ҵ���,��ȥ��")
	MisResultTalk("<t>̫����,���㿴��������������������ζ��")

	MisResultCondition(HasMission, 1107)
	MisResultCondition(NoRecord,1107)
	MisResultCondition(HasItem, 1649, 1 )
	MisResultCondition(HasItem, 1690, 1 )
	MisResultCondition(HasItem, 3116, 1 )
	
	MisResultAction(TakeItem, 1649, 1 )
	MisResultAction(TakeItem, 1690, 1 )
	MisResultAction(TakeItem, 3116, 1 )
	
	MisResultAction(ClearMission, 1107)
	MisResultAction(SetRecord,  1107 )
	
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 1649)	
	TriggerAction( 1, AddNextFlag, 1107, 10, 1 )
	RegCurTrigger( 11071 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1690)	
	TriggerAction( 1, AddNextFlag, 1107, 20, 1 )
	RegCurTrigger( 11072 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3116)	
	TriggerAction( 1, AddNextFlag, 1107, 30, 1 )
	RegCurTrigger( 11073 )


	-------------------------------------------------������˾----------��˾���	
	DefineMission (5605, "������˾", 1108)
	
	MisBeginTalk("<t>��Ͽ쳢�����������ŵ���Ʒ��ȯ��! ")

	MisBeginCondition(NoMission,1108)
	MisBeginCondition(HasRecord,1107)
	MisBeginCondition(NoRecord,1108)
	MisBeginAction(AddMission,1108)
	MisBeginAction(AddTrigger, 11081, TE_GETITEM, 1097, 2 )---------------2������Ʒ��ȯ
	MisCancelAction( ClearMission, 1108)
	
	MisNeed(MIS_NEED_ITEM, 1097, 2, 10, 2 )

	MisHelpTalk("<t>Ҫ��Ŷ,���������")
	MisResultTalk("<t>���ÿ佱��!����Ļ����Ѿ������ˡ�")

	MisResultCondition(HasMission, 1108)
	MisResultCondition(NoRecord,1108)
	MisResultCondition(HasItem, 1097, 2 )
	MisResultAction(TakeItem, 1097, 2 )
	MisResultAction(GiveItem, 2989,1,4)-------������˾
	MisResultAction(ClearMission, 1108)
	MisResultAction(SetRecord,  1108 )
	MisResultAction(ClearRecord, 1107)---------------���Է�����
	MisResultAction(ClearRecord, 1108)---------------���Է�����
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 1097)	
	TriggerAction( 1, AddNextFlag, 1108, 10, 2 )
	RegCurTrigger( 11081 )

	-------------------------------------------------������ʿ----------��˾���	
	DefineMission (5606, "������ʿ", 1109)
	
	MisBeginTalk("<t>�װ�������,����Ʒҵ,����������ζ�Ѿ���ͷ��Ʒ��!ֻҪ�����������ĵ���,�Ǵ�СҲ�����,�����˼���,�޲������Ƴ籸��.ֻ��ҪƷ��Ʒ�Ƶ���,���ȵ�ȥ������������Ա����������֤֮! ")

	MisBeginCondition(NoMission,1109)
	MisBeginCondition(NoRecord,1109)
	MisBeginAction(AddMission,1109)
	MisBeginAction(AddTrigger, 11091, TE_GETITEM, 3849, 1 )---------------1������֤֮
	MisCancelAction( ClearMission, 1109)
	
	MisNeed(MIS_NEED_ITEM, 3849, 1, 10, 1 )

	MisHelpTalk("<t>Ҫ��Ŷ,���������")
	MisResultTalk("<t>���ÿ佱��!����Ļ����Ѿ������ˡ�")

	MisResultCondition(HasMission, 1109)
	MisResultCondition(NoRecord,1109)
	MisResultCondition(HasItem, 3849, 1 )
	MisResultAction(ClearMission, 1109)
	MisResultAction(SetRecord,  1109 )
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 3849)	
	TriggerAction( 1, AddNextFlag, 1109, 10, 1 )
	RegCurTrigger( 11091 )


	-------------------------------------------------Ʒ�Ƶ���----------��˾���	
	DefineMission (5607, "Ʒ�Ƶ���", 1110)
	
	MisBeginTalk("<t>��Ȼ������Ҫ��һ�ŵ���Ʒ��ȯ�ſ���Ŷ! ")

	MisBeginCondition(NoMission,1110)
	MisBeginCondition(HasRecord,1109)
	MisBeginCondition(NoRecord,1110)
	MisBeginAction(AddMission,1110)
	MisBeginAction(AddTrigger, 11101, TE_GETITEM, 1097, 1 )---------------1������Ʒ��ȯ
	MisCancelAction( ClearMission, 1110)
	
	MisNeed(MIS_NEED_ITEM, 1097, 1, 10, 1 )
	MisHelpTalk("<t>�ҵ���������Ҫ��һ�ŵ���Ʒ��ȯ�ſ��ԳԵ���Ŷ")
	MisResultTalk("<t>�ҿ�����Ŷ")
	

	MisResultCondition(HasMission, 1110)
	MisResultCondition(NoRecord,1110)
	MisResultCondition(HasItem, 1097, 1 )
	MisResultAction(TakeItem, 1097, 1 )
	MisResultAction(GiveItem, 2988,1,4)------Ʒ�Ƶ���
	MisResultAction(ClearMission, 1110)
	MisResultAction(SetRecord,  1110 )
	MisResultAction(ClearRecord, 1109)---------------���Է�����
	MisResultAction(ClearRecord, 1110)---------------���Է�����
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 1097)	
	TriggerAction( 1, AddNextFlag, 1110, 10, 1 )
	RegCurTrigger( 11101 )


--	-----------------------------------------------------�������ǿ�������
--	DefineMission( 6069, "��������", 1400)
--
--	MisBeginTalk( "<t>����е�������ɬ��ֻҪ����Ҹ�Сæ���Ҿͻ������Ļر�Ŷ")
--	MisBeginCondition( LvCheck, ">", 10)
--	MisBeginCondition( NoRecord, 1400)
--	MisBeginCondition( NoMission, 1400)
--	MisBeginAction( AddMission, 1400 )
--	MisBeginAction( AddTrigger, 14001, TE_GETITEM, 1604, 10 )
--	MisBeginAction( AddTrigger, 14002, TE_GETITEM, 1777, 5 )
--	MisBeginAction( AddTrigger, 14002, TE_GETITEM, 1692, 5 )
--	MisBeginAction( AddTrigger, 14002, TE_GETITEM, 4334, 5 )
--	MisBeginAction( AddTrigger, 14002, TE_GETITEM, 4511, 1 )
--	MisCancelAction(ClearMission, 1400)
--
--	MisNeed(MIS_NEED_ITEM, 1604, 10, 10, 10)
--	MisNeed(MIS_NEED_ITEM, 1779, 5, 20, 5)
--	MisNeed(MIS_NEED_ITEM, 1692, 5, 30, 5)
--	MisNeed(MIS_NEED_ITEM, 4334, 5, 40, 5)
--	MisNeed(MIS_NEED_ITEM, 4511, 1, 50, 1)
--
--	MisResultTalk("<t>�ɵĲ���Ŷ���ø���Ľ��������ٵģ�")
--	MisHelpTalk("<t>��ë���ܱ��������� 1905��2853�����ģ���������ɭ�飨���� 2220��2638�����ģ������ƵĻ���ɱ�������ƣ�ħŮ884��3156�����ģ����ëƤ��ˮ����죨���� 994��365�����ģ�ճ������ˮ����ˮ�ݣ����ɺ���3000��2566������")
--	MisResultCondition( HasMission, 1400)
--	MisResultCondition( NoRecord, 1400)
--	MisResultCondition( HasItem, 1604, 10)
--	MisResultCondition( HasItem, 1777, 5)
--	MisResultCondition( HasItem, 1692, 5)
--	MisResultCondition( HasItem, 4334, 5)
--	MisResultCondition( HasItem, 4511, 1)
--	MisResultAction( TakeItem, 1604, 10)
--	MisResultAction( TakeItem, 1777, 5)
--	MisResultAction( TakeItem, 1692, 5)
--	MisResultAction( TakeItem, 4334, 5)
--	MisResultAction( TakeItem, 4511, 1)
--	MisResultAction( SetRecord, 1400)
--	MisResultAction( ClearMission, 1400)
--	MisResultAction( AddMoney, 10000, 10000)
--
--	InitTrigger()
--	TriggerCondition( 1, IsItem, 1604)	
--	TriggerAction( 1, AddNextFlag, 1400, 10, 10 )
--	RegCurTrigger( 14001 )
--
--	InitTrigger()
--	TriggerCondition( 1, IsItem, 1777)	
--	TriggerAction( 1, AddNextFlag, 1400, 20, 5 )
--	RegCurTrigger( 14002 )
--
--	InitTrigger()
--	TriggerCondition( 1, IsItem, 1692)	
--	TriggerAction( 1, AddNextFlag, 1400, 30, 5 )
--	RegCurTrigger( 14003 )
--
--	InitTrigger()
--	TriggerCondition( 1, IsItem, 4334)	
--	TriggerAction( 1, AddNextFlag, 1400, 40, 5 )
--	RegCurTrigger( 14004 )
--
--	InitTrigger()
--	TriggerCondition( 1, IsItem, 4511)	
--	TriggerAction( 1, AddNextFlag, 1400, 50, 1 )
--	RegCurTrigger( 14005 )
--
--
--	----------------------------------------------------------�����������˴���
--	DefineMission ( 6070 , "���˴��� " , 1401 )
--	MisBeginTalk("<t>��õ����˴�������Ҫ�Ļ��Ͱ��ҽ��������Щ����ɣ�30��ɽ����20����צ����10������սʿ��5��ɽ������?���ߣ�5����ʯ���࣬5�����㣬20���ٶ۵�������20��ʳ��ˮĸ��")
--	MisBeginCondition( NoMission, 1401)
--	MisBeginCondition( NoRecord, 1401)
--	MisBeginAction( AddMission, 1401)
--	MisBeginAction( AddTrigger, 14011, TE_KILL, 93, 30)
--	MisBeginAction( AddTrigger, 14012, TE_KILL, 88, 20)
--	MisBeginAction( AddTrigger, 14013, TE_KILL, 248, 10)
--	MisBeginAction( AddTrigger, 14014, TE_KILL, 211, 5)
--	MisBeginAction( AddTrigger, 14015, TE_KILL, 58, 5)
--	MisBeginAction( AddTrigger, 14016, TE_KILL, 242, 5)
--	MisBeginAction( AddTrigger, 14017, TE_KILL, 578, 20)
--	MisBeginAction( AddTrigger, 14018, TE_KILL, 596, 20)
--	MisCancelAction(ClearMission, 1401)
--
--	MisNeed(MIS_NEED_KILL, 93, 30, 10, 30)
--	MisNeed(MIS_NEED_KILL, 88, 20, 20, 20)
--	MisNeed(MIS_NEED_KILL, 248, 10, 30, 10)
--	MisNeed(MIS_NEED_KILL, 211, 5, 40, 5)
--	MisNeed(MIS_NEED_KILL, 58, 5, 50, 5)
--	MisNeed(MIS_NEED_KILL, 242, 5, 60, 5)
--	MisNeed(MIS_NEED_KILL, 578, 20, 70, 20)
--	MisNeed(MIS_NEED_KILL, 596, 20, 80, 20)
--
--	MisResultTalk("<t>ף�����Ŷ~")
--	MisHelpTalk("<t>���ϵĹֱ��뿪��ȥ��Ŷ")
--	MisResultCondition( HasMission, 1401)
--	MisResultCondition( NoRecord, 1401)
--	MisResultCondition( HasFlag, 1401, 10)
--	MisResultCondition( HasFlag, 1401, 20)
--	MisResultCondition( HasFlag, 1401, 30)
--	MisResultCondition( HasFlag, 1401, 40)
--	MisResultCondition( HasFlag, 1401, 50)
--	MisResultCondition( HasFlag, 1401, 60)
--	MisResultCondition( HasFlag, 1401, 70)
--	MisResultCondition( HasFlag, 1401, 80)
--	MisResultAction( SetRecord, 1401)
--	MisResultAction( ClearMission, 1401)
--	MisResultAction( GiveItem, 4312)
--	MisResultBagNeed(1)
--
--	InitTrigger()
--	TriggerCondition( 1, IsMonster, 93 )
--	TriggerAction( 1, AddNextFlag, 1401, 10, 30 )
--	RegCurTrigger( 14011 )
--	InitTrigger()
--	TriggerCondition( 1, IsMonster, 88 )
--	TriggerAction( 1, AddNextFlag, 1401, 20, 20 )
--	RegCurTrigger( 14012 )
--	InitTrigger()
--	TriggerCondition( 1, IsMonster, 248 )
--	TriggerAction( 1, AddNextFlag, 1401, 30, 10 )
--	RegCurTrigger( 14013 )
--	InitTrigger()
--	TriggerCondition( 1, IsMonster, 211 )
--	TriggerAction( 1, AddNextFlag, 1401, 40, 5 )
--	RegCurTrigger( 14014 )
--	InitTrigger()
--	TriggerCondition( 1, IsMonster, 58 )
--	TriggerAction( 1, AddNextFlag, 1401, 50, 5 )
--	RegCurTrigger( 14015 )
--	InitTrigger()
--	TriggerCondition( 1, IsMonster, 242 )
--	TriggerAction( 1, AddNextFlag, 1401, 60, 5 )
--	RegCurTrigger( 14016 )
--	InitTrigger()
--	TriggerCondition( 1, IsMonster, 578 )
--	TriggerAction( 1, AddNextFlag, 1401, 70, 20 )
--	RegCurTrigger( 14017 )
--	InitTrigger()
--	TriggerCondition( 1, IsMonster, 596 )
--	TriggerAction( 1, AddNextFlag, 1401, 80, 30 )
--	RegCurTrigger( 14018 )


------------------------------------------------------------------�µ�ĥ��---ת����ʹ
	DefineMission( 6071, "�µ�ĥ��", 1402)
	MisBeginTalk("<t>�㻹��Ҫ�����ĥ���������������Χ�ľ���ݺܲ����֣�ȥ����һ�£�")
	MisBeginCondition( CheckZS )
	MisBeginCondition( NoRecord, 1402)
	MisBeginCondition( NoMission, 1402)
	MisBeginAction( AddMission, 1402)
	MisCancelAction( ClearMission ,1402)

	MisNeed( MIS_NEED_DESP, "�����������Χ�ľ����")
	MisHelpTalk("<t>ȥ��������Χ������ʲô��������������")

	MisResultCondition( AlwaysFailure )

-------------------------------------------------------------------�µ�ĥ��---Թ���
	DefineMission( 6072, "�µ�ĥ��", 1402, COMPLETE_SHOW)

	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>�úް����úް�������")
	MisResultCondition( HasMission, 1402)
	MisResultCondition( NoRecord, 1402)
	MisResultAction( AddSailExp , 10, 10)
	MisResultAction( SetRecord, 1402)
	MisResultAction( ClearMission, 1402)

-----------------------------------------------------------------����ݵ�Թ��----Թ���
	DefineMission( 6073, "����ݵ�Թ��", 1403)

	MisBeginTalk("<t>�ش���һ�����⣡")
	MisBeginCondition( CheckZS )
	MisBeginCondition( HasRecord, 1402)
	MisBeginCondition( NoRecord, 1403)
	MisBeginCondition( NoMission, 1403)
	MisBeginAction( AddMission, 1403)
	MisCancelAction( ClearMission, 1403)

	MisNeed( MIS_NEED_DESP, "�ش�Թ��ݵ�����")
	
	MisResultTalk( "<t>��Ҫ����")
	MisHelpTalk( "<t>�ش��ҵ����⣬��Ҫ�ӱ�")
	MisResultCondition( HasRecord, 1404)
	MisResultCondition( HasMission, 1403)
	MisResultAction( SetRecord, 1403)
	MisResultAction( ClearMission, 1403)
	MisResultAction( AddSailExp, 10, 10)

---------------------------------------------------------------Թ��ݵ�Ҫ��------Թ���
	DefineMission( 6074, "Թ��ݵ�Ҫ��", 1408)

	MisBeginTalk("<t>�Ҳ����İ�����ҲҪ����һ��������ȥ����ɱ��ȥ����Ȼ����20��Ѫ֮��Լ�������ң�")
	MisBeginCondition( NoMission, 1408)
	MisBeginCondition( NoRecord, 1408)
	MisBeginCondition( HasRecord, 1403)
	MisBeginCondition( HasRecord, 1405)
	MisBeginCondition( CheckZS )
	MisBeginAction( AddMission, 1408)
	MisBeginAction( AddTrigger, 14081, TE_GETITEM, 2383, 20 )
	MisCancelAction( ClearMission, 1408)

	MisNeed( MIS_NEED_ITEM, 2383 , 20, 10, 20)
	
	MisResultTalk( "<t>������ɱ�˵ĸо������ɣ��Ժ�Ҫ���Ŭ������")
	MisHelpTalk( "<t>Ѫ֮��Լȥʥս��ɱ�˾����ˣ�����")
	MisResultCondition( HasMission, 1408)
	MisResultCondition( NoRecord, 1408)
	MisResultCondition( HasItem, 2383, 20)
	MisResultAction( TakeItem ,2383, 20)
	MisResultAction( AddSailExp, 20, 20)
	MisResultAction( SetRecord, 1408)
	MisResultAction( SetRecord, 1409)
	MisResultAction( ClearMission, 1408)

	InitTrigger()
	TriggerCondition( 1, IsItem, 2383)	
	TriggerAction( 1, AddNextFlag, 1408, 10, 20 )
	RegCurTrigger( 14081 )

-------------------------------------------------------------Թ��ݵ�Ҫ��------Թ���
	DefineMission( 6075, "Թ��ݵ�Ҫ��", 1410)

	MisBeginTalk( "<t>������Ͳ��������ǣ��ߺߣ���Ҳ���ô����㣡(�����������ˣ�Ҳ���õ�ˮ�������԰�ｵ����)")
	MisBeginCondition( NoRecord, 1410)
	MisBeginCondition( NoMission, 1410)
	MisBeginCondition( HasRecord, 1406)
	MisBeginCondition( HasRecord, 1403)
	MisBeginCondition( CheckZS )
	MisBeginAction( AddMission, 1410)
	MisBeginAction( AddTrigger, 14101, TE_GETITEM, 1649, 10 )
	MisCancelAction( ClearMission, 1410)

	MisNeed( MIS_NEED_ITEM, 1649 , 10, 10, 10)

	MisResultTalk( "<t>��Ȼ����ô�г��⣬���Ҿ��ٸ���һ�λ��ᡣ")
	MisHelpTalk( "�����ң�")
	MisResultCondition( HasMission, 1410)
	MisResultCondition( NoRecord, 1410)
	MisResultCondition( HasItem, 1649, 10)
	MisResultAction( SetRecord, 1410)
	MisResultAction( SetRecord, 1405)
	MisResultAction( TakeItem, 1649, 10)
	MisResultAction( ClearMission, 1410)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1649)	
	TriggerAction( 1, AddNextFlag, 1410, 10, 10 )
	RegCurTrigger( 14101 )

-------------------------------------------------------Թ��ݵ�Ҫ��
	DefineMission( 6076, "Թ��ݵ�Ҫ��", 1411)
	MisBeginTalk( "<t>�ɶ���һ��Ҳɱ���Һܶ����ݣ�����100W�⳥�𣬲�Ȼ�Ҳ���Ź���ģ�")
	MisBeginCondition( NoRecord, 1411)
	MisBeginCondition( NoMission, 1411)
	MisBeginCondition( HasRecord, 1403)
	MisBeginCondition( HasRecord, 1407)
	MisBeginCondition( CheckZS )
	MisBeginAction( AddMission, 1411)
	MisCancelAction( ClearMission, 1411)

	MisNeed( MIS_NEED_DESP, "<t>��Թ���100W��Ϊ�⳥")
	
	MisResultTalk( "<t>���ǮԶԶ���������ҵ�������ʧ�ģ������Ҵ��˴�������ǿ�Ź���ɡ�")
	MisHelpTalk("<t>�����Ǯ��")
	MisResultCondition( HasMission, 1411)
	MisResultCondition( NoRecord, 1411)
	MisResultCondition( HasMoney, 1000000)
	MisResultAction( TakeMoney, 1000000)
	MisResultAction( AddSailExp, 20, 20)
	MisResultAction( SetRecord, 1411)
	MisResultAction( SetRecord, 1409)
	MisResultAction( ClearMission, 1411)

---------------------------------------------------------�㱨���-------Թ���
	DefineMission( 6077, "�㱨���", 1412)
	MisBeginTalk( "<t>����ʶ�࣬����ͷŹ��㣬�Ժ����С���ŵ㣡")
	MisBeginCondition( NoRecord, 1412)
	MisBeginCondition( NoMission, 1412)
	MisBeginCondition( HasRecord, 1409)
	MisBeginCondition( CheckZS )
	MisBeginAction( AddMission, 1412)
	MisCancelAction( ClearMission, 1412)

	MisNeed( MIS_NEED_DESP, "ȥ�ҳǱ����������ػ㱨��ߵ��鱨")
	MisHelpTalk( "<t>���߿�����������ǰ������ȥ�ģ�")

	MisResultCondition( AlwaysFailure )

---------------------------------------------------------�㱨���------�Ǳ�����������
	DefineMission( 6078, "�㱨���", 1412, COMPLETE_SHOW)

	MisBeginCondition( AlwaysFailure)

	MisResultTalk( "<t>ʲô������ݵı��ң�����С�²�ֵ�����ǹ�ע����һֻ�־Ϳ��԰�����ȫ���������")
	MisResultCondition( HasMission, 1412)
	MisResultCondition( NoRecord, 1412)
	MisResultAction( SetRecord, 1412)
	MisResultAction( ClearMission, 1412)
	MisResultAction( AddSailExp, 5, 5)

---------------------------------------------------------�ռ���ë-------�Ǳ�����������
	DefineMission( 6079, "�ռ���ë", 1413)
	MisBeginTalk( "<t>������Ҫ�������һ���Ͼ��������������������ת��������ë�����ˣ�ȥ������100��ѩ�׵���ë��100����ɫ��ë�ɡ�")
	MisBeginCondition( NoMission, 1413)
	MisBeginCondition( NoRecord, 1413)
	MisBeginCondition( HasRecord, 1412)
	MisBeginCondition( CheckZS )
	MisBeginAction( AddMission, 1413)
	MisBeginAction( AddTrigger, 14131, TE_GETITEM, 4364, 100)
	MisBeginAction( AddTrigger, 14132, TE_GETITEM, 4347, 100)
	MisCancelAction( ClearMission, 1413)

	MisNeed( MIS_NEED_ITEM, 4364, 100, 10, 100)
	MisNeed( MIS_NEED_ITEM, 4347, 100, 20, 100)

	MisResultTalk( "<t>�ɵĺã�")
	MisHelpTalk( "<t>ѩ�׵���ë��ѩ��èͷӥ������1360,2683�����ģ���ɫ��ë��èͷӥ������1461,3018������Ŷ��")
	MisResultCondition( HasMission, 1413)
	MisResultCondition( NoRecord, 1413)
	MisResultCondition( HasItem, 4364, 100)
	MisResultCondition( HasItem, 4347, 100)
	MisResultAction( TakeItem, 4364, 100)
	MisResultAction( TakeItem, 4347, 100)
	MisResultAction( AddSailExp, 40, 40)
	MisResultAction( SetRecord, 1413)
	MisResultAction( ClearMission, 1413)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4364)	
	TriggerAction( 1, AddNextFlag, 1413, 10, 100 )
	RegCurTrigger( 14131 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4347)	
	TriggerAction( 1, AddNextFlag, 1413, 20, 100 )
	RegCurTrigger( 14132 )

--------------------------------------------------------��������--------�Ǳ�����������
	DefineMission( 6080, "��������", 1414)
	MisBeginTalk("<t>������ʱûʲôҪ��æ���ˣ���ȥ���������￴���ɣ�����ǵû������ҡ�")
	MisBeginCondition( HasRecord, 1413)
	MisBeginCondition( NoRecord, 1414)
	MisBeginCondition( NoMission, 1414)
	MisBeginCondition( CheckZS )
	MisBeginAction( AddMission, 1414)
	MisCancelAction( ClearMission, 1414)

	MisNeed( MIS_NEED_DESP, "<t>�ڳ����俴��˭��Ҫ������")

	MisResultTalk( "<t>��������ô����˰������˲���")
	MisHelpTalk( "<t>�����кܶ�����Ҫ������ȥ������ǰɡ�")
	MisResultCondition( HasMission, 1414)
	MisResultCondition( NoRecord, 1414)
	MisResultCondition( HasRecord, 1428)
	MisResultCondition( HasRecord, 1417)
	MisResultCondition( HasRecord, 1420)
	MisResultCondition( HasRecord, 1422)
	MisResultCondition( HasRecord, 1424)
	MisResultAction( AddSailExp, 10,10)
	MisResultAction( SetRecord, 1414)
	MisResultAction( ClearMission, 1414)

---------------------------------------------------------õ�������----�ư�Ů������
	DefineMission( 6081, "õ�������", 1415)
	MisBeginTalk("<t>����������һ���������ӣ����ϵ���һ��õ�壬����������̫˧�ˣ�����˫��������С���ǣ���Ҫ����Ҳ�����������ҿ��£�")
	MisBeginCondition( NoChaType, 3)
	MisBeginCondition( NoChaType, 4)
	MisBeginCondition( HasMission, 1414)
	MisBeginCondition( CheckZS )
	MisBeginCondition( NoMission, 1415)
	MisBeginCondition( NoRecord, 1415)
	MisBeginAction( AddMission, 1415)
	MisCancelAction( ClearMission, 1415)

	MisNeed( MIS_NEED_DESP, "�ư�Ů�������뿴�����õ�廨������")

	MisResultTalk( "<t>���������������Ҳ���Դ��80��")
	MisHelpTalk( "<t>������õ�������")
	MisResultCondition( HasState, 110)
	MisResultCondition( HasMission, 1415)
	MisResultCondition( NoRecord, 1415)
	MisResultAction( SetRecord, 1415)
	MisResultAction( AddSailExp, 20, 20)
	MisResultAction( SetRecord, 1428)
	MisResultAction( ClearMission, 1415)


---------------------------------------------------------õ�������----�ƹ����ҵ���
	DefineMission( 6082, "õ�������", 1416)
	MisBeginTalk( "<t>����������һ����Ů�����ϵ���һ��õ�壬̫�����ˣ��������º������������Ķ�������Ҫ����Ҳ�����������ҿ��£�")
	MisBeginCondition( HasMission, 1414)
	MisBeginCondition( NoRecord, 1416)
	MisBeginCondition( NoMission, 1416)
	MisBeginCondition( NoChaType, 1)
	MisBeginCondition( NoChaType, 2)
	MisBeginCondition( CheckZS )
	MisBeginAction( AddMission, 1416)
	MisCancelAction( ClearMission, 1416)

	MisNeed( MIS_NEED_DESP, "�ƹ����ҵ����뿴�����õ�廨������")

	MisResultTalk( "<t>������ͦ���˵ģ����ò��������Ư���")
	MisHelpTalk( "<t>������õ�������")
	MisResultCondition( HasState, 110)
	MisResultCondition( HasMission, 1416)
	MisResultCondition( NoRecord, 1416)
	MisResultAction( SetRecord, 1416)
	MisResultAction( SetRecord, 1428)
	MisResultAction( AddSailExp, 20, 20)
	MisResultAction( ClearMission, 1416)
---------------------------------------------------------��ù��ģ��----��������ʦ������
	DefineMission( 6085, "��ù��ģ��", 1417)
	MisBeginTalk( "<t>����������һ���µķ��ͣ��������Ӻͼ����е㲻���ã�ȥ������Щ���ɣ�")
	MisBeginCondition( NoMission, 1417)
	MisBeginCondition( NoRecord, 1417)
	MisBeginCondition( HasMission, 1414)
	MisBeginCondition( CheckZS )
	MisBeginAction( AddMission, 1417)
	MisBeginAction( AddTrigger, 14171, TE_GETITEM, 1804, 5)
	MisBeginAction( AddTrigger, 14172, TE_GETITEM, 1805, 5)
	MisCancelAction( ClearMission, 1417)

	MisNeed( MIS_NEED_ITEM, 1804, 5, 10, 5)
	MisNeed( MIS_NEED_ITEM, 1805, 5, 20, 5)
	
	MisResultTalk( "<t>����̫��л�ˣ���һ����������Ƴ��µķ��͵ģ�")
	MisResultCondition( HasMission, 1417)
	MisResultCondition( HasItem, 1804, 5)
	MisResultCondition( HasItem, 1805, 5)
	MisResultCondition( NoRecord, 1417)
	MisResultAction( TakeItem, 1804, 5)
	MisResultAction( TakeItem, 1805, 5)
	MisResultAction( AddSailExp, 20, 20)
	MisResultAction( SetRecord, 1417)
	MisResultAction( ClearMission, 1417)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1804)	
	TriggerAction( 1, AddNextFlag, 1417, 10, 5 )
	RegCurTrigger( 14171 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1805)	
	TriggerAction( 1, AddNextFlag, 1417, 20, 5 )
	RegCurTrigger( 14172 )


----------------------------------------------------------�����׵�����----·�ˡ���
	DefineMission( 6086, "�����׵�����", 1418)
	MisBeginTalk( "<t>�Ҳ�Ҫ�������׵İ�����Ҳ�뵱���ǣ����Һͺ���˾��١���˹����˵�£���ҲҪ��һ��������")
	MisBeginCondition( NoMission, 1418)
	MisBeginCondition( NoRecord, 1418)
	MisBeginCondition( CheckZS )
	MisBeginCondition( HasMission, 1414)
	MisBeginAction( AddMission, 1418)
	MisCancelAction( ClearMission, 1418)

	MisNeed( MIS_NEED_DESP, "ȥ�Һ���˾��١���˹����ת��һ��·�ˡ��׵�Ը����")

	MisResultCondition( AlwaysFailure )

------------------------------------------------------------�����׵�����----����˾��١���˹����
	DefineMission( 6087, "�����׵�����", 1418, COMPLETE_SHOW)
	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>·�ˡ����뵱��������û�����ɣ�")
	MisResultCondition( HasMission, 1418)
	MisResultCondition( NoRecord, 1418)
	MisResultAction( SetRecord, 1418)
	MisResultAction( AddSailExp, 5, 5)
	MisResultAction( ClearMission, 1418)

-------------------------------------------------------------�����׵�����----����˾��١���˹����
	DefineMission( 6088, "�����׵�����", 1419)
	MisBeginTalk( "<t>ȥ����·�ˡ���,���뵱����������ȥ����5������Ӻ���֧Ԯ��,5������Ӻ���ͻ������")
	MisBeginCondition( NoMission, 1419)
	MisBeginCondition( NoRecord, 1419)
	MisBeginCondition( HasMission, 1414)
	MisBeginCondition( HasRecord, 1418)
	MisBeginCondition( CheckZS )
	MisBeginAction( AddMission, 1419)
	MisCancelAction( ClearMission, 1419)

	MisNeed( MIS_NEED_DESP, "ת��·�ˡ��׵�˹���޵�Ҫ��")

	MisResultCondition( AlwaysFailure )


--------------------------------------------------------------�����׵�����----·�ˡ���
	DefineMission( 6089, "�����׵�����", 1419, COMPLETE_SHOW)
	MisBeginCondition( AlwaysFailure )
	
	MisResultTalk( "<t>��˹�����������˼����������")
	MisResultCondition( HasMission, 1419)
	MisResultCondition( NoRecord, 1419)
	MisResultAction( AddSailExp, 5, 5)
	MisResultAction( SetRecord, 1419)
	MisResultAction( ClearMission, 1419)

-------------------------------------------------------------�����׵�����----·�ˡ���
	DefineMission( 6090, "�����׵�����", 1420)
	MisBeginTalk( "<t>�������˵̫���˰�,���������������,����ȥ�ɵ���Щ�һ�ɣ�")
	MisBeginCondition( NoMission, 1420)
	MisBeginCondition( NoRecord, 1420)
	MisBeginCondition( HasMission, 1414)
	MisBeginCondition( HasRecord, 1419)
	MisBeginCondition( CheckZS )
	MisBeginAction( AddMission, 1420)
	MisBeginAction( AddTrigger, 14201, TE_KILL, 630, 5)
	MisBeginAction( AddTrigger, 14202, TE_KILL, 631, 5)
	MisCancelAction( ClearMission, 1420)

	MisNeed( MIS_NEED_DESP, "��ɱ5��5������Ӻ���֧Ԯ����5������Ӻ���ͻ����")
	MisNeed( MIS_NEED_KILL, 630, 5, 10, 5)
	MisNeed( MIS_NEED_KILL, 631, 5, 20, 5)
	
	MisResultTalk( "<t>���Ѿ��õ������������ˣ�̫��л����")
	MisResultCondition( HasMission, 1420)
	MisResultCondition( NoRecord, 1420)
	MisResultCondition( HasFlag, 1420, 14)
	MisResultCondition( HasFlag, 1420, 24)
	MisResultAction( SetRecord, 1420)
	MisResultAction( ClearMission, 1420)
	MisResultAction( AddSailExp, 20, 20)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 630 )
	TriggerAction( 1, AddNextFlag, 1420, 10, 5 )
	RegCurTrigger( 14201 )

	InitTrigger()
	TriggerCondition( 1, IsMonster, 631 )
	TriggerAction( 1, AddNextFlag, 1420, 20, 5 )
	RegCurTrigger( 14202 )


---------------------------------------------------------------�������-----------���г��ɡ�Ħ����
	DefineMission( 6091, "�������", 1421)
	MisBeginTalk( "<t>�������и�������Ҫ�͸����ǵ����г���,��������Ҫ����һ���ܵĿ���ͻ�Ա,���ܰ�����?")
	MisBeginCondition( NoMission, 1421)
	MisBeginCondition( NoRecord, 1421)
	MisBeginCondition( CheckZS )
	MisBeginCondition( HasMission, 1414)
	MisBeginAction( AddMission, 1421)
	MisCancelAction( ClearMission, 1421)

	MisNeed( MIS_NEED_DESP, "<t>�������м���װ������Ħ���ţ�����Ҫ�����ܵ��㹻����ͻ�Ա��")

	MisResultTalk( "<t>����������ܵĺܿ찡��")
	MisHelpTalk( "<t>���ܵ�̫���ˣ�ȥ��Щ���ƶ��ٶȵ�װ���ɣ�")
	MisResultCondition( HasMission, 1421)
	MisResultCondition( NoRecord, 1421)
	MisResultCondition( CheckSpeed, 550)
	MisResultAction( SetRecord, 1421)
	MisResultAction( AddSailExp, 20, 20)
	MisResultAction( ClearMission, 1421)

---------------------------------------------------------------�������-----------���г��ɡ�Ħ����
	DefineMission( 6092, "�������", 1422)
	MisBeginTalk( "<t>�ҿ�����������ٶȣ�ȥ���Ұ���������͸����ǵ����г��ɡ������ȡ�")
	MisBeginCondition( NoMission, 1422)
	MisBeginCondition( NoRecord, 1422)
	MisBeginCondition( HasRecord, 1421)
	MisBeginAction( AddMission, 1422)
	MisBeginAction( GiveItem, 956, 1, 4)
	MisCancelAction( ClearMission, 1422)

	MisNeed( MIS_NEED_DESP, "�Ѱ����͸����ǵ����г��ɡ�������")
	MisHelpTalk( "<t>���г��ɡ��������ڱ��Ǳ�")

	MisResultCondition( AlwaysFailure )

------------------------------------------------------------�������--------------���г��ɡ�������
	DefineMission( 6093, "�������", 1422, COMPLETE)
	MisBeginCondition( AlwaysFailure )
	
	MisResultTalk( "<t>�ۣ���ô�صİ����㻹�͵���ô��ʱ������̫��л���ˣ�")
	MisResultCondition( HasMission, 1422)
	MisResultCondition( NoRecord, 1422)
	MisResultCondition( HasItem, 956, 1)
	MisResultAction( TakeItem, 956, 1)
	MisResultAction( SetRecord, 1422)
	MisResultAction( ClearMission, 1422)
	MisResultAction( AddSailExp, 5, 5)

----------------------------------------------------------��������----------------���ߡ���Ϳɽ��
	DefineMission( 6094, "��������", 1423)
	MisBeginTalk( "<t>������Ҫ����鰡,�����б�����㿴�°�,����˳����Ұ����͸�����˹��ͼͼ��")
	MisBeginCondition( NoRecord, 1423)
	MisBeginCondition( NoMission, 1423)
	MisBeginCondition( HasMission, 1414)
	MisBeginCondition( CheckZS )
	MisBeginAction( AddMission, 1423)
	MisBeginAction( GiveItem, 957, 1, 4)
	MisCancelAction( ClearMission, 1423)

	MisNeed( MIS_NEED_DESP, "�����͵�����˹��ͼͼ��")
	MisHelpTalk( "<t>�ǵ��Լ��ȿ�����")

	MisResultCondition( AlwaysFailure )

-----------------------------------------------------------��������-----------------����˹��ͼͼ
	DefineMission( 6095, "��������", 1423)
	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>�Ȿ���㿴����������������Ŷ��")
	MisResultCondition( HasMission, 1423)
	MisResultCondition( NoRecord, 1423)
	MisResultCondition( HasItem, 957, 1)
	MisResultAction( TakeItem, 957, 1)
	MisResultAction( AddSailExp, 5, 5)
	MisResultAction( SetRecord, 1423)
	MisResultAction( ClearMission, 1423)

-----------------------------------------------------------��������-----------------����˹��ͼͼ
	DefineMission( 6096, "��������", 1424)
	MisBeginTalk( "<t>��Ȼ��˵����鿴����������������ɡ�")
	MisBeginCondition( NoMission, 1424)
	MisBeginCondition( NoRecord, 1424)
	MisBeginCondition( HasRecord, 1423)
	MisBeginAction( AddMission, 1424)
	MisCancelAction( ClearMission, 1424)

	MisNeed( MIS_NEED_DESP, "�ش�����˹��ͼͼ��������")
	MisHelpTalk( "<t>��Щ���ⶼ�ܼ򵥵ģ��㲻��ش𲻳����ɣ�")
		
	MisResultTalk( "<t>�࿴�����ܻ��кô��ģ�")
	MisResultCondition( HasMission, 1424)
	MisResultCondition( NoRecord, 1424)
	MisResultCondition( HasRecord, 1429)
	MisResultAction( AddSailExp, 5, 5)
	MisResultAction( SetRecord, 1424)
	MisResultAction( ClearMission, 1424)

-----------------------------------------------------------��̽����--------------�Ǳ�����������
	DefineMission( 6097, "��̽����", 1425)
	MisBeginTalk( "<t>�����ҵĹ۲죬���Ǹ�ֵ���и����ε��˰�,���ڸ������Ҫ������,��������ɳ���һС��ʿ��ȥ���������̽����,�������ǵ����ڻ�û���������ܰ���ȥ������?")
	MisBeginCondition( NoMission, 1425)
	MisBeginCondition( NoRecord, 1425)
	MisBeginCondition( HasRecord, 1414)
	MisBeginCondition( CheckZS )
	MisBeginAction( AddMission, 1425)
	MisCancelAction( ClearMission, 1425)

	MisNeed( MIS_NEED_DESP, "ȥ����2��������")
	MisHelpTalk( "<t>��ȥ�ɣ����С�ģ�")
	
	MisResultCondition( AlwaysFailure )

-----------------------------------------------------------��̽����--------------���˵�����սʿ
	DefineMission( 6098, "��̽����", 1425, COMPLETE_SHOW)
	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>���ǡ��������ܵ����������Ĺ�������ҡ����������ˡ�����")
	MisResultCondition( HasMission, 1425)
	MisResultCondition( NoRecord, 1425)
	MisResultAction( SetRecord, 1425)
	MisResultAction( AddSailExp, 10, 10)
	MisResultAction( ClearMission, 1425)

-----------------------------------------------------------��̽����---------------���˵�����սʿ
	DefineMission( 6099, "��̽����", 1426)
	MisBeginCondition( NoMission, 1426)
	MisBeginCondition( NoRecord, 1426)
	MisBeginCondition( HasRecord, 1425)
	MisBeginAction( AddMission, 1426)
	MisBeginAction( GiveItem, 958, 1, 4)
	MisCancelAction( ClearMission, 1426)

	MisNeed( MIS_NEED_DESP, "���Ұ�����鱨�ͻظ��Ǳ����������أ�������������ô���ֵܲŻ�������")
	MisHelpTalk( "<t>�������ˣ�")

	MisResultCondition( AlwaysFailure )

-----------------------------------------------------------��̽����--------------�Ǳ�����������
	DefineMission( 6100, "��̽����", 1426, COMPLETE_SHOW)
	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>ʲô��ȫ����û�ˣ��ⲻ���ܣ�")
	MisResultCondition( HasMission, 1426)
	MisResultCondition( NoRecord, 1426)
	MisResultCondition( HasItem, 958, 1)
	MisResultAction( TakeItem, 958, 1)
	MisResultAction( AddSailExp, 10, 10)
	MisResultAction( SetRecord, 1426)
	MisResultAction( ClearMission, 1426)

-----------------------------------------------------------���صĸ���-----------�Ǳ�����������
	DefineMission( 6101, "���صĸ���", 1427)
	MisBeginTalk( "<t>��һ��Ҫɱ����Ⱥ���ų��Ĵ����棬ȥ��ȥ�����Ǳ���ȥ֤����������ɣ�")
	MisBeginCondition( NoMission, 1427)
	MisBeginCondition( NoRecord, 1427)
	MisBeginCondition( HasRecord, 1426)
	MisBeginAction( AddMission, 1427)
	MisBeginAction( AddTrigger, 14271, TE_KILL, 791, 1)
	MisBeginAction( AddTrigger, 14272, TE_KILL, 793, 1)
	MisBeginAction( AddTrigger, 14273, TE_KILL, 794, 1)
	MisCancelAction( ClearMission, 1427)

	MisNeed( MIS_NEED_KILL, 791, 1, 10, 1)
	MisNeed( MIS_NEED_KILL, 793, 1, 30, 1)
	MisNeed( MIS_NEED_KILL, 794, 1, 50, 1)

	MisResultTalk( "<t>��л�㣬���Ѿ�֤��������һ����������ʿ���Ժ�Ϳ���ȥɳᰳǵ�NPC����ȡ����ĥ���Լ�����ת���ȼ��ˡ�")
	MisHelpTalk( "<t>С�ĵ㣬��Щ������ɲ��öԸ���")
	MisResultCondition( HasMission, 1427)
	MisResultCondition( NoRecord, 1427)
	MisResultCondition( HasFlag, 1427, 10)
	MisResultCondition( HasFlag, 1427, 30)
	MisResultCondition( HasFlag, 1427, 50)
	MisResultAction( AddSailExp, 50, 50)
	MisResultAction( SetRecord, 1427)
	MisResultAction( ClearMission, 1427)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 791 )
	TriggerAction( 1, AddNextFlag, 1427, 10, 1 )
	RegCurTrigger( 14271 )

	InitTrigger()
	TriggerCondition( 1, IsMonster, 793 )
	TriggerAction( 1, AddNextFlag, 1427, 30, 1 )
	RegCurTrigger( 14272 )

	InitTrigger()
	TriggerCondition( 1, IsMonster, 794 )
	TriggerAction( 1, AddNextFlag, 1427, 50, 1 )
	RegCurTrigger( 14273 )


----------------------------------------------------��ս������----------BOSS��ս�Ǽ�Ա
	DefineMission( 6102, "��ս������", 1430)
	MisBeginTalk( "<t>����λ�ں�����Ѩ2�㣬�������Ϸ����ǿ���BOSS֮һŶ����ȷ��������ս��")
	MisBeginCondition( NoMission, 1430)
	MisBeginCondition( NoRecord, 1431)
	MisBeginCondition( HasRecord, 1427)
	MisBeginCondition( Checksailexpless, 9880)
	MisBeginAction(	AddMission, 1430)
	MisBeginAction( SetRecord, 1431)
	MisBeginAction( AddTrigger, 14301, TE_KILL, 789, 1)
	MisCancelAction( ClearMission, 1430)
	MisCancelAction( ClearRecord, 1431)

	MisNeed( MIS_NEED_KILL, 789, 1, 10, 1)

	MisResultTalk( "<t>ÿһ�ε�ս�����������Ǳ�ĸ���ǿ��")
	MisHelpTalk( "<t>ע�ⰲȫŶ��")
	MisResultCondition( HasFlag, 1430, 10)
	MisResultCondition( HasMission, 1430)
	MisResultAction( AddSailExp, 120, 120)
	MisResultAction( ClearMission, 1430)
	MisResultAction( ClearRecord, 1431)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 789 )
	TriggerAction( 1, AddNextFlag, 1430, 10, 1 )
	RegCurTrigger( 14301 )

------------------------------------------------------��ս��ѩ����--------BOSS��ս�Ǽ�Ա
	DefineMission( 6103, "��ս��ѩ����", 1432)
	MisBeginTalk( "<t>ѩ����λ��ħ������1�㣬�������Ϸ����ǿ���BOSS֮һŶ����ȷ��������ս��")
	MisBeginCondition( NoMission, 1432)
	MisBeginCondition( NoRecord, 1431)
	MisBeginCondition( HasRecord, 1427)
	MisBeginCondition( Checksailexpless, 9880)
	MisBeginAction(	AddMission, 1432)
	MisBeginAction( SetRecord, 1431)
	MisBeginAction( AddTrigger, 14321, TE_KILL, 679, 1)
	MisCancelAction( ClearMission, 1432)
	MisCancelAction( ClearRecord, 1431)

	MisNeed( MIS_NEED_KILL, 679, 1, 10, 1)

	MisResultTalk( "<t>ÿһ�ε�ս�����������Ǳ�ĸ���ǿ��")
	MisHelpTalk( "<t>ע�ⰲȫŶ��")
	MisResultCondition( HasFlag, 1432, 10)
	MisResultCondition( HasMission, 1432)
	MisResultAction( AddSailExp, 50, 50)
	MisResultAction( ClearMission, 1432)
	MisResultAction( ClearRecord, 1431)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 679 )
	TriggerAction( 1, AddNextFlag, 1432, 10, 1 )
	RegCurTrigger( 14321 )

------------------------------------------------------��ս����������--------BOSS��ս�Ǽ�Ա
	DefineMission( 6104, "��ս����������", 1433)
	MisBeginTalk( "<t>��������λ��ħ������2�㣬�������Ϸ����ǿ���BOSS֮һŶ����ȷ��������ս��")
	MisBeginCondition( NoMission, 1433)
	MisBeginCondition( NoRecord, 1431)
	MisBeginCondition( HasRecord, 1427)
	MisBeginCondition( Checksailexpless, 9880)
	MisBeginAction(	AddMission, 1433)
	MisBeginAction( SetRecord, 1431)
	MisBeginAction( AddTrigger, 14331, TE_KILL, 678, 1)
	MisCancelAction( ClearMission, 1433)
	MisCancelAction( ClearRecord, 1431)

	MisNeed( MIS_NEED_KILL, 678, 1, 10, 1)

	MisResultTalk( "<t>ÿһ�ε�ս�����������Ǳ�ĸ���ǿ��")
	MisHelpTalk( "<t>ע�ⰲȫŶ��")
	MisResultCondition( HasFlag, 1433, 10)
	MisResultCondition( HasMission, 1433)
	MisResultAction( AddSailExp, 50, 50)
	MisResultAction( ClearMission, 1433)
	MisResultAction( ClearRecord, 1431)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 678 )
	TriggerAction( 1, AddNextFlag, 1433, 10, 1 )
	RegCurTrigger( 14331 )

-------------------------------------------------------��ս���Ͳ���--------BOSS��ս�Ǽ�Ա
	DefineMission( 6105, "��ս���Ͳ���", 1434)
	MisBeginTalk( "<t>�Ͳ���λ�ڼ��ձ����õ��ϣ��������Ϸ����ǿ���BOSS֮һŶ����ȷ��������ս��")
	MisBeginCondition( NoMission, 1434)
	MisBeginCondition( NoRecord, 1431)
	MisBeginCondition( HasRecord, 1427)
	MisBeginCondition( Checksailexpless, 9880)
	MisBeginAction(	AddMission, 1434)
	MisBeginAction( SetRecord, 1431)
	MisBeginAction( AddTrigger, 14341, TE_KILL, 805, 1)
	MisCancelAction( ClearMission, 1434)
	MisCancelAction( ClearRecord, 1431)

	MisNeed( MIS_NEED_KILL, 805, 1, 10, 1)

	MisResultTalk( "<t>ÿһ�ε�ս�����������Ǳ�ĸ���ǿ��")
	MisHelpTalk( "<t>ע�ⰲȫŶ��")
	MisResultCondition( HasFlag, 1434, 10)
	MisResultCondition( HasMission, 1434)
	MisResultAction( AddSailExp, 75, 75)
	MisResultAction( ClearMission, 1434)
	MisResultAction( ClearRecord, 1431)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 805 )
	TriggerAction( 1, AddNextFlag, 1434, 10, 1 )
	RegCurTrigger( 14341 )

-------------------------------------------------------��ս������˾��--------BOSS��ս�Ǽ�Ա
	DefineMission( 6106, "��ս������˾��", 1435)
	MisBeginTalk( "<t>����˾��λ�ڼ��ձȵ���ʵ�����У��������Ϸ����ǿ���BOSS֮һŶ����ȷ��������ս��")
	MisBeginCondition( NoMission, 1435)
	MisBeginCondition( NoRecord, 1431)
	MisBeginCondition( HasRecord, 1427)
	MisBeginCondition( Checksailexpless, 9880)
	MisBeginAction(	AddMission, 1435)
	MisBeginAction( SetRecord, 1431)
	MisBeginAction( AddTrigger, 14351, TE_KILL, 807, 1)
	MisCancelAction( ClearMission, 1435)
	MisCancelAction( ClearRecord, 1431)

	MisNeed( MIS_NEED_KILL, 807, 1, 10, 1)

	MisResultTalk( "<t>ÿһ�ε�ս�����������Ǳ�ĸ���ǿ��")
	MisHelpTalk( "<t>ע�ⰲȫŶ��")
	MisResultCondition( HasFlag, 1435, 10)
	MisResultCondition( HasMission, 1435)
	MisResultAction( AddSailExp, 75, 75)
	MisResultAction( ClearMission, 1435)
	MisResultAction( ClearRecord, 1431)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 807 )
	TriggerAction( 1, AddNextFlag, 1435, 10, 1 )
	RegCurTrigger( 14351 )

-------------------------------------------------------��ս��������--------BOSS��ս�Ǽ�Ա
	DefineMission( 6107, "��ս��������", 1436)
	MisBeginTalk( "<t>������λ�ڼ��ձ����õ��ϣ��������Ϸ����ǿ���BOSS֮һŶ����ȷ��������ս��")
	MisBeginCondition( NoMission, 1436)
	MisBeginCondition( NoRecord, 1431)
	MisBeginCondition( HasRecord, 1427)
	MisBeginCondition( Checksailexpless, 9880)
	MisBeginAction(	AddMission, 1436)
	MisBeginAction( SetRecord, 1431)
	MisBeginAction( AddTrigger, 14361, TE_KILL, 796, 1)
	MisCancelAction( ClearMission, 1436)
	MisCancelAction( ClearRecord, 1431)

	MisNeed( MIS_NEED_KILL, 796, 1, 10, 1)

	MisResultTalk( "<t>ÿһ�ε�ս�����������Ǳ�ĸ���ǿ��")
	MisHelpTalk( "<t>ע�ⰲȫŶ��")
	MisResultCondition( HasFlag, 1436, 10)
	MisResultCondition( HasMission, 1436)
	MisResultAction( AddSailExp, 75, 75)
	MisResultAction( ClearMission, 1436)
	MisResultAction( ClearRecord, 1431)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 796 )
	TriggerAction( 1, AddNextFlag, 1436, 10, 1 )
	RegCurTrigger( 14361 )

-------------------------------------------------------��ս��������--------BOSS��ս�Ǽ�Ա
	DefineMission( 6108, "��ս��������", 1437)
	MisBeginTalk( "<t>������λ�ڼ��ձ���������Ϸ����ǿ���BOSS֮һŶ����ȷ��������ս��")
	MisBeginCondition( NoMission, 1437)
	MisBeginCondition( NoRecord, 1431)
	MisBeginCondition( HasRecord, 1427)
	MisBeginCondition( Checksailexpless, 9880)
	MisBeginAction(	AddMission, 1437)
	MisBeginAction( SetRecord, 1431)
	MisBeginAction( AddTrigger, 14371, TE_KILL, 815, 1)
	MisCancelAction( ClearMission, 1437)
	MisCancelAction( ClearRecord, 1431)

	MisNeed( MIS_NEED_KILL, 815, 1, 10, 1)

	MisResultTalk( "<t>ÿһ�ε�ս�����������Ǳ�ĸ���ǿ��")
	MisHelpTalk( "<t>ע�ⰲȫŶ��")
	MisResultCondition( HasFlag, 1437, 10)
	MisResultCondition( HasMission, 1437)
	MisResultAction( AddSailExp, 75, 75)
	MisResultAction( ClearMission, 1437)
	MisResultAction( ClearRecord, 1431)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 815 )
	TriggerAction( 1, AddNextFlag, 1437, 10, 1 )
	RegCurTrigger( 14371 )

-------------------------------------------------------��ս��������ʿ-����------BOSS��ս�Ǽ�Ա
	DefineMission( 6109, "��ս��������ʿ-����", 1438)
	MisBeginTalk( "<t>������ʿ-����λ�ڵ�����㣬�������Ϸ����ǿ���BOSS֮һŶ����ȷ��������ս��")
	MisBeginCondition( NoMission, 1438)
	MisBeginCondition( NoRecord, 1431)
	MisBeginCondition( HasRecord, 1427)
	MisBeginCondition( Checksailexpless, 9880)
	MisBeginAction(	AddMission, 1438)
	MisBeginAction( SetRecord, 1431)
	MisBeginAction( AddTrigger, 14381, TE_KILL, 974, 1)
	MisCancelAction( ClearMission, 1438)
	MisCancelAction( ClearRecord, 1431)

	MisNeed( MIS_NEED_KILL, 974, 1, 10, 1)

	MisResultTalk( "<t>ÿһ�ε�ս�����������Ǳ�ĸ���ǿ��")
	MisHelpTalk( "<t>ע�ⰲȫŶ��")
	MisResultCondition( HasFlag, 1438, 10)
	MisResultCondition( HasMission, 1438)
	MisResultAction( AddSailExp, 90, 90)
	MisResultAction( ClearMission, 1438)
	MisResultAction( ClearRecord, 1431)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 974 )
	TriggerAction( 1, AddNextFlag, 1438, 10, 1 )
	RegCurTrigger( 14381 )

-------------------------------------------------------��ս��ڤ���-���ն�------BOSS��ս�Ǽ�Ա
	DefineMission( 6110, "��ս��ڤ���-���ն�", 1439)
	MisBeginTalk( "<t>ڤ���-���ն�λ�ڵ������㣬�������Ϸ����ǿ���BOSS֮һŶ����ȷ��������ս��")
	MisBeginCondition( NoMission, 1439)
	MisBeginCondition( NoRecord, 1431)
	MisBeginCondition( HasRecord, 1427)
	MisBeginCondition( Checksailexpless, 9880)
	MisBeginAction(	AddMission, 1439)
	MisBeginAction( SetRecord, 1431)
	MisBeginAction( AddTrigger, 14391, TE_KILL, 975, 1)
	MisCancelAction( ClearMission, 1439)
	MisCancelAction( ClearRecord, 1431)

	MisNeed( MIS_NEED_KILL, 975, 1, 10, 1)

	MisResultTalk( "<t>ÿһ�ε�ս�����������Ǳ�ĸ���ǿ��")
	MisHelpTalk( "<t>ע�ⰲȫŶ��")
	MisResultCondition( HasFlag, 1439, 10)
	MisResultCondition( HasMission, 1439)
	MisResultAction( AddSailExp, 90, 90)
	MisResultAction( ClearMission, 1439)
	MisResultAction( ClearRecord, 1431)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 975 )
	TriggerAction( 1, AddNextFlag, 1439, 10, 1 )
	RegCurTrigger( 14391 )

-------------------------------------------------------��ս��ڤ��-������˹------BOSS��ս�Ǽ�Ա
	DefineMission( 6111, "��ս��ڤ��-������˹", 1440)
	MisBeginTalk( "<t>ڤ��-������˹λ�ڵ����߲㣬�������Ϸ����ǿ���BOSS֮һŶ����ȷ��������ս��")
	MisBeginCondition( NoMission, 1440)
	MisBeginCondition( NoRecord, 1431)
	MisBeginCondition( HasRecord, 1427)
	MisBeginCondition( Checksailexpless, 9880)
	MisBeginAction(	AddMission, 1440)
	MisBeginAction( SetRecord, 1431)
	MisBeginAction( AddTrigger, 14401, TE_KILL, 976, 1)
	MisCancelAction( ClearMission, 1440)
	MisCancelAction( ClearRecord, 1431)

	MisNeed( MIS_NEED_KILL, 976, 1, 10, 1)

	MisResultTalk( "<t>ÿһ�ε�ս�����������Ǳ�ĸ���ǿ��")
	MisHelpTalk( "<t>ע�ⰲȫŶ��")
	MisResultCondition( HasFlag, 1440, 10)
	MisResultCondition( HasMission, 1440)
	MisResultAction( AddSailExp, 90, 90)
	MisResultAction( ClearMission, 1440)
	MisResultAction( ClearRecord, 1431)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 976 )
	TriggerAction( 1, AddNextFlag, 1440, 10, 1 )
	RegCurTrigger( 14401 )

-------------------------------------------------------��ս��ڤ��-������˹------BOSS��ս�Ǽ�Ա
	DefineMission( 6112, "��ս��ڤ��-������˹", 1441)
	MisBeginTalk( "<t>ڤ��-������˹λ�ڵ����˲㣬�������Ϸ����ǿ���BOSS֮һŶ����ȷ��������ս��")
	MisBeginCondition( NoMission, 1441)
	MisBeginCondition( NoRecord, 1431)
	MisBeginCondition( HasRecord, 1427)
	MisBeginCondition( Checksailexpless, 9880)
	MisBeginAction(	AddMission, 1441)
	MisBeginAction( SetRecord, 1431)
	MisBeginAction( AddTrigger, 14411, TE_KILL, 977, 1)
	MisCancelAction( ClearMission, 1441)
	MisCancelAction( ClearRecord, 1431)

	MisNeed( MIS_NEED_KILL, 977, 1, 10, 1)

	MisResultTalk( "<t>ÿһ�ε�ս�����������Ǳ�ĸ���ǿ��")
	MisHelpTalk( "<t>ע�ⰲȫŶ��")
	MisResultCondition( HasFlag, 1441, 10)
	MisResultCondition( HasMission, 1441)
	MisResultAction( AddSailExp, 90, 90)
	MisResultAction( ClearMission, 1441)
	MisResultAction( ClearRecord, 1431)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 977 )
	TriggerAction( 1, AddNextFlag, 1441, 10, 1 )
	RegCurTrigger( 14411 )

-------------------------------------------------------��ս��ڤ����-����------BOSS��ս�Ǽ�Ա
	DefineMission( 6113, "��ս��ڤ����-����", 1442)
	MisBeginTalk( "<t>ڤ����-����λ�ڵ����Ų㣬�������Ϸ����ǿ���BOSS֮һŶ����ȷ��������ս��")
	MisBeginCondition( NoMission, 1442)
	MisBeginCondition( NoRecord, 1431)
	MisBeginCondition( HasRecord, 1427)
	MisBeginCondition( Checksailexpless, 9880)
	MisBeginAction(	AddMission, 1442)
	MisBeginAction( SetRecord, 1431)
	MisBeginAction( AddTrigger, 14421, TE_KILL, 978, 1)
	MisCancelAction( ClearMission, 1442)
	MisCancelAction( ClearRecord, 1431)

	MisNeed( MIS_NEED_KILL, 978, 1, 10, 1)

	MisResultTalk( "<t>ÿһ�ε�ս�����������Ǳ�ĸ���ǿ��")
	MisHelpTalk( "<t>ע�ⰲȫŶ��")
	MisResultCondition( HasFlag, 1442, 10)
	MisResultCondition( HasMission, 1442)
	MisResultAction( AddSailExp, 90, 90)
	MisResultAction( ClearMission, 1442)
	MisResultAction( ClearRecord, 1431)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 978 )
	TriggerAction( 1, AddNextFlag, 1442, 10, 1 )
	RegCurTrigger( 14422 )

	-------------------------------------------------�Ҷ�Ӣ��----------�Ű���	
	DefineMission (5608, "Ѫ����ţ֮�Ҷ�Ӣ��", 1114)
	
	MisBeginTalk("<t>��ţ��һ�������˵�����,������ȥ�Ҷ�������������")

	MisBeginCondition(NoMission,1114)
	MisBeginCondition(HasRecord,1111)
	MisBeginCondition(NoRecord,1114)
	MisBeginAction(AddMission,1114)
	MisCancelAction(ClearMission, 1114)
	
	MisNeed(MIS_NEED_DESP, "���30���Ҷ�����")
	MisHelpTalk("<t>30���Ҷ�����,����Ŷ!")
	MisResultTalk("<t>�����úܿ���.��Ҫ̫����Ŷ,���������������Ĳ�����")

	MisResultCondition(HasMission, 1114)
	MisResultCondition(NoRecord,1114)
	MisResultCondition(HasFightingPoint,30 )
	MisResultAction(TakeFightingPoint, 30 )
	MisResultAction(ClearMission, 1114)
	MisResultAction(SetRecord,  1114 )
	MisResultAction(GiveItem, 3028, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------����Ӣ��----------�Ű���	
	DefineMission (5609, "Ѫ����ţ֮����Ӣ��", 1115)
	
	MisBeginTalk("<t>Ҫ������ţ��,��������Ǻ���Ҫ��. ")

	MisBeginCondition(NoMission,1115)
	MisBeginCondition(HasRecord,1111)
	MisBeginCondition(NoRecord,1115)
	MisBeginAction(AddMission,1115)
	MisCancelAction(ClearMission, 1115)
	
	MisNeed(MIS_NEED_DESP, "���1000����������")
	MisHelpTalk("<t>���˶�˵�ҵ����ֺ�ʫ��,�������?")
	MisResultTalk("<t>�ҶĶ�������ȡ��ö����ѫ�µ�,���ó�����һ�������׷������.")

	MisResultCondition(HasMission, 1115)
	MisResultCondition(NoRecord,1115)
	MisResultCondition(HasCredit,1000 )
	MisResultAction(TakeCredit, 1000 )
	MisResultAction(ClearMission, 1115)
	MisResultAction(SetRecord,  1115 )
	MisResultAction(GiveItem, 3029, 1, 4)
	MisResultBagNeed(1)


	-------------------------------------------------�ȼ�Ӣ��----------�Ű���	
	DefineMission (5610, "Ѫ����ţ֮�ȼ�Ӣ��", 1116)
	
	MisBeginTalk("<t>���д�����ţ������ʿ�ȼ����ﵽ��55������Ҳ��������,��Ȼ������ʿ������������ڲ�ͬ. ")

	MisBeginCondition(NoMission,1116)
	MisBeginCondition(HasRecord,1111)
	MisBeginCondition(NoRecord,1116)
	MisBeginAction(AddMission,1116)
	MisCancelAction(ClearMission, 1116)
	
	MisNeed(MIS_NEED_DESP, "�ȼ��ﵽ55��")
	MisHelpTalk("<t>55���Ա�����˵�����е���....")
	MisResultTalk("<t>��ö�ȼ�ѫ���͸����,��ֵ��ӵ����.")

	MisResultCondition(HasMission, 1116)
	MisResultCondition(NoRecord,1116)
	MisResultCondition(LvCheck, ">", 54 )
	MisResultAction(ClearMission, 1116)
	MisResultAction(SetRecord,  1116 )
	MisResultAction(GiveItem, 3030, 1, 4)
	MisResultBagNeed(1)
	

	-------------------------------------------------����Ӣ��----------�Ű���	
	DefineMission (5611, "Ѫ����ţ֮����Ӣ��", 1117)
	
	MisBeginTalk("<t>300���������ҶԽ�ţ������Ӣ�۵����Ҫ����.��Ϊ�������������вŻ�����ʿ,һ���Ǻܿ���������. ")

	MisBeginCondition(NoMission,1117)
	MisBeginCondition(HasRecord,1111)
	MisBeginCondition(NoRecord,1117)
	MisBeginAction(AddMission,1117)
	MisCancelAction(ClearMission, 1117)
	
	MisNeed(MIS_NEED_DESP, "���300����������")
	MisHelpTalk("<t>�ǵ���������������Ŷ")
	MisResultTalk("<t>�����������˺������Ǿưɻ�ӭ��,������Ʒò������������.����������˫�ӹ���Զ��.")

	MisResultCondition(HasMission, 1117)
	MisResultCondition(NoRecord,1117)
	MisResultCondition(HasHonorPoint,300 )
	MisResultAction(TakeHonorPoint, 300 )
	MisResultAction(ClearMission, 1117)
	MisResultAction(SetRecord,  1117 )
	MisResultAction(GiveItem, 3031, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------�ɼ���ʹ----------�Ű���	
	DefineMission (5612, "Ѫ����ţ֮�ɼ���ʹ", 1118)
	
	MisBeginTalk("<t>�ռ��ܿ���һ����ʿ������,��֪����,���Զ�һ���ɹ����Ƕ�ô��Ҫ.������Ŭ����͵��,�һ�Ϊ�㱣����ö�ɼ�ѫ�µ�. ")

	MisBeginCondition(NoMission,1118)
	MisBeginCondition(HasRecord,1111)
	MisBeginCondition(NoRecord,1118)
	MisBeginAction(AddMission,1118)
	MisBeginAction(AddTrigger, 11181, TE_GETITEM, 4804, 10 )---------------���̵������޻�10
	MisBeginAction(AddTrigger, 11182, TE_GETITEM, 4720, 10 )---------------�޴������10
	MisBeginAction(AddTrigger, 11183, TE_GETITEM, 3129, 10 )-------------ҩ�ò�Ҷ10
	MisBeginAction(AddTrigger, 11184, TE_GETITEM, 2588, 5 )--------------�����ӡ5��
	MisBeginAction(AddTrigger, 11185, TE_GETITEM, 4494, 1 )--------------�޴��зǯ1��
	MisBeginAction(AddTrigger, 11186, TE_GETITEM, 1682, 50 )-------------Ȯ��50��
	MisBeginAction(AddTrigger, 11187, TE_GETITEM, 1138, 10 )--------------����̽����LV1  10��
	MisBeginAction(AddTrigger, 11188, TE_GETITEM, 0227, 1 )-------------�ػ���������1��
	MisCancelAction(ClearMission, 1118)
	

	MisNeed(MIS_NEED_ITEM, 4804, 10, 1, 10 )
	MisNeed(MIS_NEED_ITEM, 4720, 10, 11, 10 )
	MisNeed(MIS_NEED_ITEM, 3129, 10, 21, 10 )
	MisNeed(MIS_NEED_ITEM, 2588, 5, 31, 5 )
	MisNeed(MIS_NEED_ITEM, 4494, 1, 36, 1 )
	MisNeed(MIS_NEED_ITEM, 1682, 50, 37, 50 )
	MisNeed(MIS_NEED_ITEM, 1138, 10, 87, 10 )
	MisNeed(MIS_NEED_ITEM, 0227, 1, 97, 1 )

	MisHelpTalk("<t>����Щ�����Ķ���,�Ҳ���Ϊ�����")
	MisResultTalk("<t>�����������кܶ���������ֵİ���,��ʵ���Լ�Ҳ��֪����ҪȮ�ݺ�зǯ��ʲô��.")

	MisResultCondition(HasMission, 1118)
	MisResultCondition(NoRecord,1118)
	MisResultCondition(HasItem, 4804, 10 )
	MisResultCondition(HasItem, 4720, 10 )
	MisResultCondition(HasItem, 3129, 10 )
	MisResultCondition(HasItem, 2588, 5 )
	MisResultCondition(HasItem, 4494, 1 )
	MisResultCondition(HasItem, 1682, 50 )
	MisResultCondition(HasItem, 1138, 10 )
	MisResultCondition(HasItem, 0227, 1 )

	MisResultAction(TakeItem, 4804, 10 )
	MisResultAction(TakeItem, 4720, 10 )
	MisResultAction(TakeItem, 3129, 10 )
	MisResultAction(TakeItem, 2588, 5 )
	MisResultAction(TakeItem, 4494, 1 )
	MisResultAction(TakeItem, 1682, 50 )
	MisResultAction(TakeItem, 1138, 10 )
	MisResultAction(TakeItem, 0227, 1 )
	MisResultAction(ClearMission, 1118)
	MisResultAction(SetRecord,  1118 )
	MisResultAction(GiveItem, 3032, 1, 4)
	MisResultAction(GiveItem, 3036, 1, 4)
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4804)	
	TriggerAction( 1, AddNextFlag, 1118, 1, 10 )
	RegCurTrigger( 11181 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4720)	
	TriggerAction( 1, AddNextFlag, 1118, 11, 10 )
	RegCurTrigger( 11182 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3129)	
	TriggerAction( 1, AddNextFlag, 1118, 21, 10 )
	RegCurTrigger( 11183 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2588)	
	TriggerAction( 1, AddNextFlag, 1118, 31, 5 )
	RegCurTrigger( 11184 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4494)	
	TriggerAction( 1, AddNextFlag, 1118, 36, 1 )
	RegCurTrigger( 11185 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1682)	
	TriggerAction( 1, AddNextFlag, 1118, 37, 50 )
	RegCurTrigger( 11186 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1138)	
	TriggerAction( 1, AddNextFlag, 1118, 87, 10 )
	RegCurTrigger( 11187 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 0227)	
	TriggerAction( 1, AddNextFlag, 1118, 97, 1 )
	RegCurTrigger( 11188 )


	----------------------------------------------------------��ţĩ��----------�Ű���
	DefineMission( 5613, "Ѫ����ţ֮��ţĩ��", 1119 )
	MisBeginTalk("<t>�ƺ��������˵Ķ�����������й�,����BOSSѫ��")
				
	MisBeginCondition(NoMission, 1119)
	MisBeginCondition(HasRecord,1152)
	MisBeginCondition(NoRecord,1119)
	MisBeginAction(AddMission,1119)
	MisBeginAction(AddTrigger, 11191, TE_KILL, 1038, 1)---��ţ�ػ���
	
	MisCancelAction(ClearMission, 1119)

	MisNeed(MIS_NEED_DESP, "��ɱ��ţ�ػ���(2436,2405)!")
	MisNeed(MIS_NEED_KILL, 1038,1, 10, 1)
	

	MisResultTalk("<t>���о��Ķ��ǵľ�������һ�����õļ���Ƹ�Ŷ.�����ֲƸ����ܶ���,���ӵ���˱�����Զ���ῴ��������.")
	MisHelpTalk("<t>�Ǹ����µļһ����ſɰ���ơ�ƶ�,���Ⲣ��˵������Ե�������.")
	MisResultCondition(HasMission,  1119)
	MisResultCondition(HasFlag, 1119, 10)
	MisResultCondition(NoRecord , 1119)
	MisResultAction(GiveItem, 3034, 1, 4 )
	MisResultAction(ClearMission,  1119)
	MisResultAction(SetRecord,  1119 )
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 1038)	
	TriggerAction( 1, AddNextFlag, 1119, 10, 1 )
	RegCurTrigger( 11191 )






-------------------------------------------------�Ҷ�Ӣ��----------�Ű���	
	DefineMission (5614, "Ѫ����ţ֮�Ҷ�Ӣ��", 1120)
	
	MisBeginTalk("<t>��ţ��һ�������˵�����,������ȥ�Ҷ�������������")

	MisBeginCondition(NoMission,1120)
	MisBeginCondition(HasRecord,1112)
	MisBeginCondition(NoRecord,1120)
	MisBeginAction(AddMission,1120)
	MisCancelAction(ClearMission, 1120)
	
	MisNeed(MIS_NEED_DESP, "���60���Ҷ�����")
	MisHelpTalk("<t>60���Ҷ�����,����Ŷ!")
	MisResultTalk("<t>�����úܿ���.��Ҫ̫����Ŷ,���������������Ĳ�����")

	MisResultCondition(HasMission, 1120)
	MisResultCondition(NoRecord,1120)
	MisResultCondition(HasFightingPoint,60 )
	MisResultAction(TakeFightingPoint, 60 )
	MisResultAction(ClearMission, 1120)
	MisResultAction(SetRecord,  1120 )
	MisResultAction(GiveItem, 3028, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------����Ӣ��----------�Ű���	
	DefineMission (5615, "Ѫ����ţ֮����Ӣ��", 1121)
	
	MisBeginTalk("<t>Ҫ������ţ��,��������Ǻ���Ҫ��.  ")

	MisBeginCondition(NoMission,1121)
	MisBeginCondition(HasRecord,1112)
	MisBeginCondition(NoRecord,1121)
	MisBeginAction(AddMission,1121)
	MisCancelAction(ClearMission, 1121)
	
	MisNeed(MIS_NEED_DESP, "���3000����������")
	MisHelpTalk("<t>���˶�˵�ҵ����ֺ�ʫ��,�������?")
	MisResultTalk("<t>�ҶĶ�������ȡ��ö����ѫ�µ�,���ó�����һ�������׷������.")

	MisResultCondition(HasMission, 1121)
	MisResultCondition(NoRecord,1121)
	MisResultCondition(HasCredit,3000 )
	MisResultAction(TakeCredit,3000  )
	MisResultAction(ClearMission, 1121)
	MisResultAction(SetRecord,  1121 )
	MisResultAction(GiveItem, 3029, 1, 4)
	MisResultBagNeed(1)


	-------------------------------------------------�ȼ�Ӣ��----------�Ű���	
	DefineMission (5616, "Ѫ����ţ֮�ȼ�Ӣ��", 1122)
	
	MisBeginTalk("<t>���д�����ţ������ʿ�ȼ����ﵽ��60��,��Ҳ��������,��Ȼ������ʿ������������ڲ�ͬ. ")

	MisBeginCondition(NoMission,1122)
	MisBeginCondition(HasRecord,1112)
	MisBeginCondition(NoRecord,1122)
	MisBeginAction(AddMission,1122)
	MisCancelAction(ClearMission, 1122)
	
	MisNeed(MIS_NEED_DESP, "�ȼ��ﵽ60��")
	MisHelpTalk("<t>60���Ա�����˵�����е���....")
	MisResultTalk("<t>��ö�ȼ�ѫ���͸����,��ֵ��ӵ����.")

	MisResultCondition(HasMission, 1122)
	MisResultCondition(NoRecord,1122)
	MisResultCondition(LvCheck, ">", 59 )
	MisResultAction(ClearMission, 1122)
	MisResultAction(SetRecord,  1122 )
	MisResultAction(GiveItem, 3030, 1, 4)
	MisResultBagNeed(1)
	

	-------------------------------------------------����Ӣ��----------�Ű���	
	DefineMission (5617, "Ѫ����ţ֮����Ӣ��", 1123)
	
	MisBeginTalk("<t>500���������ҶԽ�ţ������Ӣ�۵����Ҫ����.��Ϊ�������������вŻ�����ʿ,һ���Ǻܿ���������. ")

	MisBeginCondition(NoMission,1123)
	MisBeginCondition(HasRecord,1112)
	MisBeginCondition(NoRecord,1123)
	MisBeginAction(AddMission,1123)
	MisCancelAction(ClearMission, 1123)
	
	MisNeed(MIS_NEED_DESP, "���500����������")
	MisHelpTalk("<t>�ǵ���������������Ŷ")
	MisResultTalk("<t>�����������˺������Ǿưɻ�ӭ��,������Ʒò������������.����������˫�ӹ���Զ��.")

	MisResultCondition(HasMission, 1123)
	MisResultCondition(NoRecord,1123)
	MisResultCondition(HasHonorPoint,500 )
	MisResultAction(TakeHonorPoint, 500 )
	MisResultAction(ClearMission, 1123)
	MisResultAction(SetRecord,  1123 )
	MisResultAction(GiveItem, 3031, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------�ɼ���ʹ----------�Ű���	
	DefineMission (5618, "Ѫ����ţ֮�ɼ���ʹ", 1124)
	
	MisBeginTalk("<t>�ռ��ܿ���һ����ʿ������,��֪����,���Զ�һ���ɹ����Ƕ�ô��Ҫ.������Ŭ����͵��,�һ�Ϊ�㱣����ö�ɼ�ѫ�µ�.")

	MisBeginCondition(NoMission,1124)
	MisBeginCondition(HasRecord,1112)
	MisBeginCondition(NoRecord,1124)
	MisBeginAction(AddMission,1124)
	MisBeginAction(AddTrigger, 11241, TE_GETITEM, 4804, 15 )-------------------���̵������޻�15    
	MisBeginAction(AddTrigger, 11242, TE_GETITEM, 4720, 15 )-------------------�޴������15          
	MisBeginAction(AddTrigger, 11243, TE_GETITEM, 3129, 15 )-----------------ҩ�ò�Ҷ15               
	MisBeginAction(AddTrigger, 11244, TE_GETITEM, 2588, 10 )----------------�����ӡ10��               
	MisBeginAction(AddTrigger, 11245, TE_GETITEM, 4494, 1 )------------------�޴��зǯ1��            
	MisBeginAction(AddTrigger, 11246, TE_GETITEM, 1682, 40 )-----------------Ȯ��40��                  
	MisBeginAction(AddTrigger, 11247, TE_GETITEM, 1138, 20 )------------------����̽����LV1  20�� 
	MisBeginAction(AddTrigger, 11248, TE_GETITEM, 0227, 3 )---------------�ػ���������3��          
	MisCancelAction(ClearMission, 1124)
	

	MisNeed(MIS_NEED_ITEM, 4804, 15, 1, 15 )
	MisNeed(MIS_NEED_ITEM, 4720, 15, 16, 15 )
	MisNeed(MIS_NEED_ITEM, 3129, 15, 31, 15 )
	MisNeed(MIS_NEED_ITEM, 2588, 10, 46, 10 )
	MisNeed(MIS_NEED_ITEM, 4494, 1, 56, 1 )
	MisNeed(MIS_NEED_ITEM, 1682, 40, 57, 40 )
	MisNeed(MIS_NEED_ITEM, 1138, 20, 97, 20 )
	MisNeed(MIS_NEED_ITEM, 0227, 3, 117, 3 )

	MisHelpTalk("<t>����Щ�����Ķ���,�Ҳ���Ϊ�����")
	MisResultTalk("<t>�����������кܶ���������ֵİ���,��ʵ���Լ�Ҳ��֪����ҪȮ�ݺ�зǯ��ʲô��.")

	MisResultCondition(HasMission, 1124)
	MisResultCondition(NoRecord,1124)
	MisResultCondition(HasItem, 4804, 15 )
	MisResultCondition(HasItem, 4720, 15 )
	MisResultCondition(HasItem, 3129, 15 )
	MisResultCondition(HasItem, 2588, 10 )
	MisResultCondition(HasItem, 4494, 1 )
	MisResultCondition(HasItem, 1682, 40 )
	MisResultCondition(HasItem, 1138, 20 )
	MisResultCondition(HasItem, 0227, 3 )

	MisResultAction(TakeItem, 4804, 15 )
	MisResultAction(TakeItem, 4720, 15 )
	MisResultAction(TakeItem, 3129, 15 )
	MisResultAction(TakeItem, 2588, 10 )
	MisResultAction(TakeItem, 4494, 1 )
	MisResultAction(TakeItem, 1682, 40 )
	MisResultAction(TakeItem, 1138, 20 )
	MisResultAction(TakeItem, 0227, 3 )
	MisResultAction(ClearMission, 1124)
	MisResultAction(SetRecord,  1124 )
	MisResultAction(GiveItem, 3032, 1, 4)
	MisResultAction(GiveItem, 3036, 1, 4)
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4804)	
	TriggerAction( 1, AddNextFlag, 1124, 1, 15 )
	RegCurTrigger( 11241 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4720)	
	TriggerAction( 1, AddNextFlag, 1124, 16, 15 )
	RegCurTrigger( 11242 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3129)	
	TriggerAction( 1, AddNextFlag, 1124, 31, 15 )
	RegCurTrigger( 11243 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2588)	
	TriggerAction( 1, AddNextFlag, 1124, 46, 10 )
	RegCurTrigger( 11244 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4494)	
	TriggerAction( 1, AddNextFlag, 1124, 56, 1 )
	RegCurTrigger( 11245 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1682)	
	TriggerAction( 1, AddNextFlag, 1124, 57, 40 )
	RegCurTrigger( 11246 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1138)	
	TriggerAction( 1, AddNextFlag, 1124, 97, 20 )
	RegCurTrigger( 11247 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 0227)	
	TriggerAction( 1, AddNextFlag, 1124, 117, 3 )
	RegCurTrigger( 11248 )

	



-------------------------------------------------�Ҷ�Ӣ��----------�Ű���	
	DefineMission (5619, "Ѫ����ţ֮�Ҷ�Ӣ��", 1125)
	
	MisBeginTalk("<t>��ţ��һ�������˵�����,������ȥ�Ҷ������������� ")

	MisBeginCondition(NoMission,1125)
	MisBeginCondition(HasRecord,1113)
	MisBeginCondition(NoRecord,1125)
	MisBeginAction(AddMission,1125)
	MisCancelAction(ClearMission, 1125)
	
	MisNeed(MIS_NEED_DESP, "���100���Ҷ�����")
	MisHelpTalk("<t>100���Ҷ�����,����Ŷ!")
	MisResultTalk("<t>�����úܿ���.��Ҫ̫����Ŷ,���������������Ĳ�����")

	MisResultCondition(HasMission, 1125)
	MisResultCondition(NoRecord,1125)
	MisResultCondition(HasFightingPoint,100 )
	MisResultAction(TakeFightingPoint, 100 )
	MisResultAction(ClearMission, 1125)
	MisResultAction(SetRecord,  1125 )
	MisResultAction(GiveItem, 3028, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------����Ӣ��----------�Ű���	
	DefineMission (5620, "Ѫ����ţ֮����Ӣ��", 1126)
	
	MisBeginTalk("<t>Ҫ������ţ��,��������Ǻ���Ҫ��.")

	MisBeginCondition(NoMission,1126)
	MisBeginCondition(HasRecord,1113)
	MisBeginCondition(NoRecord,1126)
	MisBeginAction(AddMission,1126)
	MisCancelAction(ClearMission, 1126)
	
	MisNeed(MIS_NEED_DESP, "���5000����������")
	MisHelpTalk("<t>���˶�˵�ҵ����ֺ�ʫ��,�������?")
	MisResultTalk("<t>�ҶĶ�������ȡ��ö����ѫ�µ�,���ó�����һ�������׷������.")

	MisResultCondition(HasMission, 1126)
	MisResultCondition(NoRecord,1126)
	MisResultCondition(HasCredit,5000 )
	MisResultAction(TakeCredit, 5000 )
	MisResultAction(ClearMission, 1126)
	MisResultAction(SetRecord,  1126 )
	MisResultAction(GiveItem, 3029, 1, 4)
	MisResultBagNeed(1)


	-------------------------------------------------�ȼ�Ӣ��----------�Ű���	
	DefineMission (5621, "Ѫ����ţ֮�ȼ�Ӣ��", 1127)
	
	MisBeginTalk("<t>���д�����ţ������ʿ�ȼ����ﵽ��65��,��Ҳ��������,��Ȼ������ʿ������������ڲ�ͬ.")

	MisBeginCondition(NoMission,1127)
	MisBeginCondition(HasRecord,1113)
	MisBeginCondition(NoRecord,1127)
	MisBeginAction(AddMission,1127)
	MisCancelAction(ClearMission, 1127)
	
	MisNeed(MIS_NEED_DESP, "�ȼ��ﵽ65��")
	MisHelpTalk("<t>65���Ա�����˵�����е���....")
	MisResultTalk("<t>��ö�ȼ�ѫ���͸����,��ֵ��ӵ����.")

	MisResultCondition(HasMission, 1127)
	MisResultCondition(NoRecord,1127)
	MisResultCondition(LvCheck, ">", 64 )
	MisResultAction(ClearMission, 1127)
	MisResultAction(SetRecord,  1127 )
	MisResultAction(GiveItem, 3030, 1, 4)
	MisResultBagNeed(1)
	

	-------------------------------------------------����Ӣ��----------�Ű���	
	DefineMission (5622, "Ѫ����ţ֮����Ӣ��", 1128)
	
	MisBeginTalk("<t>800���������ҶԽ�ţ������Ӣ�۵����Ҫ����.��Ϊ�������������вŻ�����ʿ,һ���Ǻܿ���������.  ")

	MisBeginCondition(NoMission,1128)
	MisBeginCondition(HasRecord,1113)
	MisBeginCondition(NoRecord,1128)
	MisBeginAction(AddMission,1128)
	MisCancelAction(ClearMission, 1128)
	
	MisNeed(MIS_NEED_DESP, "���800����������")
	MisHelpTalk("<t>�ǵ���������������Ŷ")
	MisResultTalk("<t>�����������˺������Ǿưɻ�ӭ��,������Ʒò������������.����������˫�ӹ���Զ��.")

	MisResultCondition(HasMission, 1128)
	MisResultCondition(NoRecord,1128)
	MisResultCondition(HasHonorPoint,800 )
	MisResultAction(TakeHonorPoint, 800 )
	MisResultAction(ClearMission, 1128)
	MisResultAction(SetRecord,  1128 )
	MisResultAction(GiveItem, 3031, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------�ɼ���ʹ----------�Ű���	
	DefineMission (5623, "Ѫ����ţ֮�ɼ���ʹ", 1129)
	
	MisBeginTalk("<t>�ռ��ܿ���һ����ʿ������,��֪����,���Զ�һ���ɹ����Ƕ�ô��Ҫ.������Ŭ����͵��,�һ�Ϊ�㱣����ö�ɼ�ѫ�µ�.")

	MisBeginCondition(NoMission,1129)
	MisBeginCondition(HasRecord,1113)
	MisBeginCondition(NoRecord,1129)
	MisBeginAction(AddMission,1129)
	MisBeginAction(AddTrigger, 11291, TE_GETITEM, 4804, 10 )---------------------���̵������޻�10    
	MisBeginAction(AddTrigger, 11292, TE_GETITEM, 4720, 10 )---------------------�޴������10          
	MisBeginAction(AddTrigger, 11293, TE_GETITEM, 3129, 10 )-------------------ҩ�ò�Ҷ10               
	MisBeginAction(AddTrigger, 11294, TE_GETITEM, 2588, 15 )------------------�����ӡ15��             
	MisBeginAction(AddTrigger, 11295, TE_GETITEM, 4494, 5 )--------------------�޴��зǯ5��             
	MisBeginAction(AddTrigger, 11296, TE_GETITEM, 1682, 40 )-------------------Ȯ��40��                  
	MisBeginAction(AddTrigger, 11297, TE_GETITEM, 1138, 25 )--------------------����̽����LV1  25�� 
	MisBeginAction(AddTrigger, 11298, TE_GETITEM, 0227, 5 )----------------------�ػ���������5��            
	MisCancelAction(ClearMission, 1129)						                                     
	

	MisNeed(MIS_NEED_ITEM, 4804, 10, 1, 10 )
	MisNeed(MIS_NEED_ITEM, 4720, 10, 11, 10 )
	MisNeed(MIS_NEED_ITEM, 3129, 10, 21, 10 )
	MisNeed(MIS_NEED_ITEM, 2588, 15, 31, 15 )
	MisNeed(MIS_NEED_ITEM, 4494, 5, 46, 5)
	MisNeed(MIS_NEED_ITEM, 1682, 40, 51, 40 )
	MisNeed(MIS_NEED_ITEM, 1138, 25, 91, 25 )
	MisNeed(MIS_NEED_ITEM, 0227, 5, 116, 5 )

	MisHelpTalk("<t>����Щ�����Ķ���,�Ҳ���Ϊ�����")
	MisResultTalk("<t>�����������кܶ���������ֵİ���,��ʵ���Լ�Ҳ��֪����ҪȮ�ݺ�зǯ��ʲô��.")

	MisResultCondition(HasMission, 1129)
	MisResultCondition(NoRecord,1129)
	MisResultCondition(HasItem, 4804, 10 )
	MisResultCondition(HasItem, 4720, 10 )
	MisResultCondition(HasItem, 3129, 10 )
	MisResultCondition(HasItem, 2588, 15 )
	MisResultCondition(HasItem, 4494,  5 )
	MisResultCondition(HasItem, 1682, 40 )
	MisResultCondition(HasItem, 1138, 25 )
	MisResultCondition(HasItem, 0227, 5 )

	MisResultAction(TakeItem, 4804, 10 )
	MisResultAction(TakeItem, 4720, 10 )
	MisResultAction(TakeItem, 3129, 10 )
	MisResultAction(TakeItem, 2588, 15 )
	MisResultAction(TakeItem, 4494, 5 )
	MisResultAction(TakeItem, 1682, 40 )
	MisResultAction(TakeItem, 1138, 25 )
	MisResultAction(TakeItem, 0227, 5 )
	MisResultAction(ClearMission, 1129)
	MisResultAction(SetRecord,  1129 )
	MisResultAction(GiveItem, 3032, 1, 4)
	MisResultAction(GiveItem, 3036, 1, 4)
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4804)	
	TriggerAction( 1, AddNextFlag, 1129, 1, 10 )
	RegCurTrigger( 11291 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4720)	
	TriggerAction( 1, AddNextFlag, 1129, 11, 10 )
	RegCurTrigger( 11292 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3129)	
	TriggerAction( 1, AddNextFlag, 1129, 21, 10 )
	RegCurTrigger( 11293 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2588)	
	TriggerAction( 1, AddNextFlag, 1129, 31, 15 )
	RegCurTrigger( 11294 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4494)	
	TriggerAction( 1, AddNextFlag, 1129, 46, 5 )
	RegCurTrigger( 11295 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1682)	
	TriggerAction( 1, AddNextFlag, 1129, 51, 40 )
	RegCurTrigger( 11296 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1138)	
	TriggerAction( 1, AddNextFlag, 1129, 91, 25 )
	RegCurTrigger( 11297 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 0227)	
	TriggerAction( 1, AddNextFlag, 1129, 116, 5 )
	RegCurTrigger( 11298 )


	

	----------------------------------------------------------�罻��ʹ----------�Ű���
	DefineMission( 5624, "Ѫ����ţ֮�罻��ʹ", 1130 )
	MisBeginTalk("<t>���Ǿư��������ܲ�,��Ҫ�����������ȱ���ʽ�.��ɷ����������һ��,˳���ʶһЩ������������")
				
	MisBeginCondition(NoMission, 1130)
	MisBeginCondition(NoRecord,1130)
	MisBeginCondition(HasRecord, 1152)-------------------�µ�id,����id
	MisBeginAction(AddMission,1130)
	MisCancelAction(ClearMission, 1130)

	MisNeed(MIS_NEED_DESP, "�Ҽ��ɵ�ِ��ħ��(628,2095)����")
	
	MisHelpTalk("<t>������ʱ����������ĳ�����")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------�罻��ʹ-----------------ِ��ħ��

	DefineMission(5625, "�罻��ʹ", 1130, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>�ư�?���Ҷ�����,���ҵ�����Ҳ֪���Ҿ�������,��һֱ����Ժ�.")
	MisResultCondition(NoRecord, 1130)
	MisResultCondition(HasMission,1130)
	MisResultAction(ClearMission,1130)
	MisResultAction(SetRecord, 1130)

	----------------------------------------------------------�罻��ʹ2----------ِ��ħ��
	DefineMission( 5626, "�罻��ʹ2", 1131 )
	MisBeginTalk("<t>лл��������,��֪�����Ƿ��·��ɳ�,�Һܵ������Ѱ���Ĵ���,��������Ұ��Ⱥ�����������������,�Բݲ�����,��Ը���ǲ�����.")
				
	MisBeginCondition(NoMission, 1131)
	MisBeginCondition(NoRecord,1131)
	MisBeginCondition(HasRecord, 1130)
	MisBeginAction(AddMission,1131)
	MisCancelAction(ClearMission, 1131)

	MisNeed(MIS_NEED_DESP, "��ɳᰵ�ʥŮ������(862,3303)����")
	
	MisHelpTalk("<t>ʥ��������������߰��㡢��������,����ȵ��Ͼƿ͵���������?...")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------�罻��ʹ2-------------ʥŮ������
	DefineMission(5627, "�罻��ʹ2", 1131, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>���!Ը����������!Ը�������������õ�����������.Ը�Ҹ�ʱ��Χ����......")
	MisResultCondition(NoRecord, 1131)
	MisResultCondition(HasMission,1131)
	MisResultAction(ClearMission,1131)
	MisResultAction(SetRecord, 1131)

	----------------------------------------------------------�罻��ʹ3----------ʥŮ������
	DefineMission( 5628, "�罻��ʹ3", 1132 )
	MisBeginTalk("<t>���Ů��Ļ���,�Ҳŵ�������Щ��δ�ڸĵ����ﰲȻ�ദ,˵���Ⱦ���ʵ�ڲ�����,��������һ�°�̩")
				
	MisBeginCondition(NoMission, 1132)
	MisBeginCondition(NoRecord,1132)
	MisBeginCondition(HasRecord, 1131)
	MisBeginAction(AddMission,1132)
	MisCancelAction(ClearMission, 1132)

	MisNeed(MIS_NEED_DESP, "������Ӫ�ز���վ�İ�̩(2128,540)����")
	
	MisHelpTalk("<t>����Ը�����ö��Һܸ�ʫ��,ֻ�Ǻ������")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------�罻��ʹ3--------��̩
	DefineMission(5629, "�罻��ʹ3", 1132, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>�����Ϊ�������������һֱû����ʵ��,����Щ�ź�.����һֻ��,ˮ��Ŀ���......������ȥ......")
	MisResultCondition(NoRecord, 1132)
	MisResultCondition(HasMission,1132)
	MisResultAction(ClearMission,1132)
	MisResultAction(SetRecord, 1132)



	----------------------------------------------------------�罻��ʹ4----------��̩
	DefineMission( 5630, "�罻��ʹ4", 1133 )
	MisBeginTalk("<t>�������?NO!�ⲻ�ʺ�����������������.�����̡�����֪���˾���Ҳ����ĵ�����ҳ���,Ϊ��������ζ,��һֱ����ԭ��.")
				
	MisBeginCondition(NoMission, 1133)
	MisBeginCondition(NoRecord,1133)
	MisBeginCondition(HasRecord, 1132)
	MisBeginAction(AddMission,1133)
	MisCancelAction(ClearMission, 1133)

	MisNeed(MIS_NEED_DESP, "���氢̩�ʺ���ɵ������̡�����(2277,2769)")
	
	MisHelpTalk("<t>˵�𵰸��Ҿ�����ˮ..")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------�罻��ʹ4--------�����̡�����
	DefineMission(5631, "�罻��ʹ4", 1133, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>����?��̩���С��è��������?�Ҳ��������������ĵ���,�Ǻ�.")
	MisResultCondition(NoRecord, 1133)
	MisResultCondition(HasMission,1133)
	MisResultAction(ClearMission,1133)
	MisResultAction(SetRecord, 1133)


	----------------------------------------------------------�罻��ʹ5----------�����̡�����
	DefineMission( 5632, "�罻��ʹ5", 1134 )
	MisBeginTalk("<t>��Ҫ�ӽ���Щ�������̩��,���ھưɲ��ʺ�����������,лл��,��������Ա���ȿ�����Ȥ")
				
	MisBeginCondition(NoMission, 1134)
	MisBeginCondition(NoRecord,1134)
	MisBeginCondition(HasRecord, 1133)
	MisBeginAction(AddMission,1134)
	MisCancelAction(ClearMission, 1134)

	MisNeed(MIS_NEED_DESP, "���氮���Ľ���Ա���ȿ�(2519,2397)����")
	
	MisHelpTalk("<t>�뵽��̩Ҫ�������˵Ŀ�ˮ,�Ҿ͸��ż���������.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------�罻��ʹ5--------����Ա���ȿ�
	DefineMission(5633, "�罻��ʹ5", 1134, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>�Ⱦ����ֺ��������´�����,�ҿ������̻�������,����.�ܻ�����Щ�������̵ĵ��ⳤ�������.")
	MisResultCondition(NoRecord, 1134)
	MisResultCondition(HasMission,1134)
	MisResultAction(ClearMission,1134)
	MisResultAction(SetRecord, 1134)


	----------------------------------------------------------�罻��ʹ6----------����Ա���ȿ�
	DefineMission( 5634, "�罻��ʹ6", 1135 )
	MisBeginTalk("<t>����æ�����һ�������ȥ�ư�,Ҫ���ҵľ��Ѻ���ָ�ӡ��µ�Ҳ��ȥ�ͺ���.")
				
	MisBeginCondition(NoMission, 1135)
	MisBeginCondition(NoRecord,1135)
	MisBeginCondition(HasRecord, 1134)
	MisBeginAction(AddMission,1135)
	MisCancelAction(ClearMission, 1135)

	MisNeed(MIS_NEED_DESP, "�ҿ���������վ�ĺ���ָ�ӡ��µ�(738,3803)����")
	
	MisHelpTalk("<t>��֪���Ű����ǲ��Ǹ�Ư����.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------�罻��ʹ6--------����ָ�ӡ��µ�
	DefineMission(5635, "�罻��ʹ6", 1135, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>����һ��������˵�оƺȾ���ζ���й����Լ��..")
	MisResultCondition(NoRecord, 1135)
	MisResultCondition(HasMission,1135)
	MisResultAction(ClearMission,1135)
	MisResultAction(SetRecord, 1135)



	----------------------------------------------------------�罻��ʹ7----------����ָ�ӡ��µ�
	DefineMission( 5636, "�罻��ʹ7", 1136 )
	MisBeginTalk("<t>Цʲô?��ͷ�Ͳ���������?��!����֪ͨ�������ˡ���ķ����ȡ��Ҫ�ı���,�ҵȲ���Ҫȥ�ư���")
				
	MisBeginCondition(NoMission, 1136)
	MisBeginCondition(NoRecord,1136)
	MisBeginCondition(HasRecord, 1135)
	MisBeginAction(AddMission,1136)
	MisCancelAction(ClearMission, 1136)

	MisNeed(MIS_NEED_DESP, "�Ҽ��ɵı������ˡ���ķ(2061,2543)����")
	
	MisHelpTalk("<t>�Ҿ���������Щ�ɰ�������,Ҫ����ô��Ǯ�ݾư���?")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------�罻��ʹ7--------�������ˡ���ķ
	DefineMission(5637, "�罻��ʹ7", 1136, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>�µ�һֱ����ûǮ���Ͼƹ�,�ҽ�˲ſ�������������.")
	MisResultCondition(NoRecord, 1136)
	MisResultCondition(HasMission,1136)
	MisResultAction(ClearMission,1136)
	MisResultAction(SetRecord, 1136)


	----------------------------------------------------------�罻��ʹ8----------�������ˡ���ķ
	DefineMission( 5638, "�罻��ʹ8", 1137 )
	MisBeginTalk("<t>Ϊʲô����������?�������˶����⸱������,�ܲ��ܳ��ɽܿ��������ﲻһ��")
				
	MisBeginCondition(NoMission, 1137)
	MisBeginCondition(NoRecord,1137)
	MisBeginCondition(HasRecord, 1136)
	MisBeginAction(AddMission,1137)
	MisCancelAction(ClearMission, 1137)

	MisNeed(MIS_NEED_DESP, "����ɳ���Ľܿ˴���(1672,3777)����")
	
	MisHelpTalk("<t>��˵��û������,���ﲻ̫ƽҪС��!")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------�罻��ʹ8--------�ܿ˴���
	DefineMission(5639, "�罻��ʹ8", 1137, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>���Ѿ�ϰ���˱�Ů�˰�Ľ,�����˼���")
	MisResultCondition(NoRecord, 1137)
	MisResultCondition(HasMission,1137)
	MisResultAction(ClearMission,1137)
	MisResultAction(SetRecord, 1137)


	----------------------------------------------------------�罻��ʹ9----------�ܿ˴���
	DefineMission( 5640, "�罻��ʹ9", 1138 )
	MisBeginTalk("<t>�̺������˵Ļ���,�ƾ��Ǻ����Ļ��,�о����ǲ��������.��֪���ҵ�������˶���������������ɽ�᲻��μ�,��Ȼ��������������������.")
				
	MisBeginCondition(NoMission, 1138)
	MisBeginCondition(NoRecord,1138)
	MisBeginCondition(HasRecord, 1137)
	MisBeginAction(AddMission,1138)
	MisCancelAction(ClearMission, 1138)

	MisNeed(MIS_NEED_DESP, "����֮���Ķ���������������ɽ(2221,3285)����")
	
	MisHelpTalk("<t>����������������ɽһֱ������������ͬ���д辭����.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------�罻��ʹ9--------����������������ɽ
	DefineMission(5641, "�罻��ʹ9", 1138, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>����һ��Զ���ĺ���,�ո�ѧ�����������.##@@#$,�Һ�ϲ����Ƭ���˵ĺ���.&*&%,��˵�����ĺ��к��,���Ƿ·��ʺϺ�����.�Ҹ�������Ƭ��½ʱ����ܿ˴��������˺�������.")
	MisResultCondition(NoRecord, 1138)
	MisResultCondition(HasMission,1138)
	MisResultAction(ClearMission,1138)
	MisResultAction(SetRecord, 1138)

	----------------------------------------------------------�罻��ʹ10----------����������������ɽ
	DefineMission( 5642, "�罻��ʹ10", 1139 )
	MisBeginTalk("<t>�ܿ�ҲҪȥ?!���һ��ǿ���һ�°�.�����һ��Ǻ����ѽ���Ա����ɪ�����ȥ��.")
				
	MisBeginCondition(NoMission, 1139)
	MisBeginCondition(NoRecord,1139)
	MisBeginCondition(HasRecord, 1138)
	MisBeginAction(AddMission,1139)
	MisCancelAction(ClearMission, 1139)

	MisNeed(MIS_NEED_DESP, "��������Ľ���Ա����ɪ��(2279,1112)����")
	
	MisHelpTalk("<t>�һ��ǵ���ɪ���Լ���")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------�罻��ʹ10--------����Ա����ɪ��
	DefineMission(5643, "�罻��ʹ10", 1139, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>�Һ�ϲ������������������ɽ,���������ֽ����������Ը������ķ��")
	MisResultCondition(NoRecord, 1139)
	MisResultCondition(HasMission,1139)
	MisResultAction(ClearMission,1139)
	MisResultAction(SetRecord, 1139)

	----------------------------------------------------------�罻��ʹ11----------����Ա����ɪ��
	DefineMission( 5644, "�罻��ʹ11", 1140 )
	MisBeginTalk("<t>����ܿ�ȥ�ư�,�Ҿ��붫��������������ɽȥ����,���˻����ټ���Ϊ��.��,�����Ǹ�ϲ�������ֵ�С�к���ķһ������Ȥȥ�ư�")
				
	MisBeginCondition(NoMission, 1140)
	MisBeginCondition(NoRecord,1140)
	MisBeginCondition(HasRecord, 1139)
	MisBeginAction(AddMission,1140)
	MisCancelAction(ClearMission, 1140)

	MisNeed(MIS_NEED_DESP, "��ɳ᰾ɳǵĺ�ķ(826,3347)����")
	
	MisHelpTalk("<t>��Ը��Ҫ�̻�С����,��Ҫ�������������ǵ�����...")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------�罻��ʹ11--------��ķ
	DefineMission(5645, "�罻��ʹ11", 1140, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>С�����ǲ�Ӧ��ȥ�ưɵ�,����...�����ٷ��˧�к�����!�ҿ϶���ȥ��,лл��ĺ���Ϣ.")
	MisResultCondition(NoRecord, 1140)
	MisResultCondition(HasMission,1140)
	MisResultAction(ClearMission,1140)
	MisResultAction(SetRecord, 1140)

	----------------------------------------------------------�罻��ʹ12----------��ķ
	DefineMission( 5646, "�罻��ʹ12", 1141 )
	MisBeginTalk("<t>��ʿ��ȵ����˲����������,�����ҵ�ԭ��.����Ҫ�����ҵ��������.")
				
	MisBeginCondition(NoMission, 1141)
	MisBeginCondition(NoRecord,1141)
	MisBeginCondition(HasRecord, 1140)
	MisBeginAction(AddMission,1141)
	MisCancelAction(ClearMission, 1141)

	MisNeed(MIS_NEED_DESP, "�Ұ�����˹����վ�����(1037,671)����")
	
	MisHelpTalk("<t>�һ�û��ȥ���ư�,Ҫ������֤��?���������������ǻؼ���?")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------�罻��ʹ12--------���
	DefineMission(5647, "�罻��ʹ12", 1141, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>˵ʵ��ÿһ�κ�ķ�����鶼�ܴ̼�,����ÿ����˱��������Ҳ������Ҷ�����.")
	MisResultCondition(NoRecord, 1141)
	MisResultCondition(HasMission,1141)
	MisResultAction(ClearMission,1141)
	MisResultAction(SetRecord, 1141)


	----------------------------------------------------------�罻��ʹ13----------���
	DefineMission( 5648, "�罻��ʹ13", 1142 )
	MisBeginTalk("<t>��Ȼ�ҷ�����,��Ҳ���������Ľ���,����ȥ�ư������������ı�־,����...�ٺ�,�����·������ɭ�ֲ���վ���æ������Ʒ���ˡ���������Ƿ���Ư�������,��������һ��ȥ�ư�,���ܴ���̫����.")
				
	MisBeginCondition(NoMission, 1142)
	MisBeginCondition(NoRecord,1142)
	MisBeginCondition(HasRecord, 1141)
	MisBeginAction(AddMission,1142)
	MisCancelAction(ClearMission, 1142)

	MisNeed(MIS_NEED_DESP, "������ɭ�ֲ���վ����Ʒ���ˡ����(996,2969)����")
	
	MisHelpTalk("<t>��Ʒ���ˡ�����Ǻ����۹���鱦�м�,Сʱ�����������Ǵ���ȥ���ﹺ���鱦,��ÿ�ζ���佱����Ư��,�����ҺóԵ��ǹ�.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------�罻��ʹ13--------��Ʒ���ˡ����
	DefineMission(5649, "�罻��ʹ13", 1142, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>�����ȥ�ư�?��ȳ�����,�����������ò�ƺ�һ��Ҳû�ܵ�Ӱ��,��һֱ��������������Ŀͻ�.")
	MisResultCondition(NoRecord, 1142)
	MisResultCondition(HasMission,1142)
	MisResultAction(ClearMission,1142)
	MisResultAction(SetRecord, 1142)

	----------------------------------------------------------�罻��ʹ14----------��Ʒ���ˡ����
	DefineMission( 5650, "�罻��ʹ14", 1143 )
	MisBeginTalk("<t>����������ʱ��һ��ȥ�ưɾͽ�ʶ�˺���������,���ǵ���������,�ҵ��鱦��������һֱ��˳���������չ��Ƿֲ�����.����㷽��ȥ��ѩ��,�����ʺ���.")
				
	MisBeginCondition(NoMission, 1143)
	MisBeginCondition(NoRecord,1143)
	MisBeginCondition(HasRecord, 1142)
	MisBeginAction(AddMission,1143)
	MisCancelAction(ClearMission, 1143)

	MisNeed(MIS_NEED_DESP, "�ұ�ѩ���ĺ���������(2362,657)����")
	
	MisHelpTalk("<t>��ѩ����ħŮ֮��Ŷ.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------�罻��ʹ14--------����������        
	DefineMission(5651, "�罻��ʹ14", 1143, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>����,��Ҳ���ҵ�һ��ȥ�ư�,��ʱ���һ��Ǹ�С�������,Ϊ�˵�һ�γ���׳����ȥ�ȾƵ�.��֪��Ϊʲô�������ʮ��ͶԵ,���������,���������ʱ������һ��Ů��,�����ҾͲ���һֱ�Ǹ��������ˣ�")
	MisResultCondition(NoRecord, 1143)
	MisResultCondition(HasMission,1143)
	MisResultAction(ClearMission,1143)
	MisResultAction(SetRecord, 1143)

	----------------------------------------------------------�罻��ʹ15----------����������
	DefineMission( 5652, "�罻��ʹ15", 1144 )
	MisBeginTalk("<t>��������������Ҫ���뺣���ŵ���˹��С��,��ϧ������̫С��,��Ҫ�������Ⱦ�׳���ǲ��е�.")
				
	MisBeginCondition(NoMission, 1144)
	MisBeginCondition(NoRecord,1144)
	MisBeginCondition(HasRecord, 1143)
	MisBeginAction(AddMission,1144)
	MisCancelAction(ClearMission, 1144)

	MisNeed(MIS_NEED_DESP, "�ұ��Ǳ�����˹��С��(1379,612)����")
	
	MisHelpTalk("<t>��������,����ĺܰ���")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------�罻��ʹ15-------- ��˹��С��
	DefineMission(5653, "�罻��ʹ15", 1144, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>�ҵ������ǳ�Ϊ����˹һ���Ľ��ƺ���.")
	MisResultCondition(NoRecord, 1144)
	MisResultCondition(HasMission,1144)
	MisResultAction(ClearMission,1144)
	MisResultAction(SetRecord, 1144)


	----------------------------------------------------------�罻��ʹ16----------��˹��С��
	DefineMission( 5654, "�罻��ʹ16", 1145 )
	MisBeginTalk("<t>Ϊ���ҵ�����,�Ҳ��Ҹÿ�ʼѧϰ��Ӿ�������Ϳ�����.���ڿ������뺣��ָ�ӡ�������Ӧ���ܰ����ҵ�æ")
				
	MisBeginCondition(NoMission, 1145)
	MisBeginCondition(NoRecord,1145)
	MisBeginCondition(HasRecord, 1144)
	MisBeginAction(AddMission,1145)
	MisCancelAction(ClearMission, 1145)

	MisNeed(MIS_NEED_DESP, "�ҹ�������վ�ĺ���ָ�ӡ�������(2041,1355)����")
	
	MisHelpTalk("<t>����һ����ִ�ŵ���,Ϊ�˿︴����ó�׵Ĺ�ƽ��Ը����һ������ĺ���.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------�罻��ʹ16-------- ����ָ�ӡ�������
	DefineMission(5655, "�罻��ʹ16", 1145, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>��Ҫ����ѧ����,����,�ҵĿ�����������Զ��������.")
	MisResultCondition(NoRecord, 1145)
	MisResultCondition(HasMission,1145)
	MisResultAction(ClearMission,1145)
	MisResultAction(SetRecord, 1145)


	----------------------------------------------------------�罻��ʹ17----------����ָ�ӡ�������
	DefineMission( 5656, "�罻��ʹ17", 1146 )
	MisBeginTalk("<t>�ư��ҾͲ�ȥ��,���ﰵ���ܶ�,����Ҳ�վ���������Զ���Ĵ�ֻ,��֪�����ж����˻��Ϊ����������.�����������һ������ķ������,�ǵ���˵��Ҫ��ȥ����һ��,���ҽ��ܺ�ȥ����.")
				
	MisBeginCondition(NoMission, 1146)
	MisBeginCondition(NoRecord,1146)
	MisBeginCondition(HasRecord, 1145)
	MisBeginAction(AddMission,1146)
	MisCancelAction(ClearMission, 1146)

	MisNeed(MIS_NEED_DESP, "�ҰͲ�����վ������ķ������(1202,3179)����")
	
	MisHelpTalk("<t>����ķ�������Ǹ������־����������,�������İ�.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------�罻��ʹ17-------- ����ķ������
	DefineMission(5657, "�罻��ʹ17", 1146, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>����һ��Ϊ��������������Է�����������.����Ů����Ҳ��ô��Ϊ.")
	MisResultCondition(NoRecord, 1146)
	MisResultCondition(HasMission,1146)
	MisResultAction(ClearMission,1146)
	MisResultAction(SetRecord, 1146)

	----------------------------------------------------------�罻��ʹ18----------����ķ������
	DefineMission( 5658, "�罻��ʹ18", 1147 )
	MisBeginTalk("<t>����Ҫ����,����ʲô�¾Ϳ��˵.�ư�?����һ���ύ���ѵĺõط�,������Ҫ�ı��г̼ƻ���.������ܰ��Ҹ��������޹����������վ����������̺ܶ�,��Ҫ��ע��ۿڽӴ�ָ�ӵĻ��һ�ʮ�ָ�л��.")
				
	MisBeginCondition(NoMission, 1147)
	MisBeginCondition(NoRecord,1147)
	MisBeginCondition(HasRecord, 1146)
	MisBeginAction(AddMission,1147)
	MisCancelAction(ClearMission, 1147)

	MisNeed(MIS_NEED_DESP, "��˼˼������վ�ĺ���ָ�ӡ�������(2297,3723)����")
	
	MisHelpTalk("<t>����˯��,������Ӧ�ø�ע�سɳ�.��������������?��һֱ���������е���־����.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------�罻��ʹ18-------- ����ָ�ӡ�������
	DefineMission(5659, "�罻��ʹ18", 1147, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>��ӭ��ĵ���,��л���������Ϣ.��������ȱ������,Ҫ��Ҫ���������ҵ�����?")
	MisResultCondition(NoRecord, 1147)
	MisResultCondition(HasMission,1147)
	MisResultAction(ClearMission,1147)
	MisResultAction(SetRecord, 1147)

	----------------------------------------------------------�罻��ʹ19----------����ָ�ӡ�������
	DefineMission( 5660, "�罻��ʹ19", 1148 )
	MisBeginTalk("<t>����ָ���Ǹ��в��ҷ�æ��ְҵ.˵��æ�Һ����Ѿ��ܾ�ûȥ�������ɰ�������ɯ����,��֪�����Ƿ�������.")
				
	MisBeginCondition(NoMission, 1148)
	MisBeginCondition(NoRecord,1148)
	MisBeginCondition(HasRecord, 1147)
	MisBeginAction(AddMission,1148)
	MisCancelAction(ClearMission, 1148)

	MisNeed(MIS_NEED_DESP, "�Ҳر����������ɯ��(616,965)����")
	
	MisHelpTalk("<t>����ɯ��Сʱ���Ư����һ����Ϳ.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------�罻��ʹ19-------- ����ɯ��
	DefineMission(5661, "�罻��ʹ19", 1148, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>�ȴ�һ������ʹ��¶���,����������ݼ���.")
	MisResultCondition(NoRecord, 1148)
	MisResultCondition(HasMission,1148)
	MisResultAction(ClearMission,1148)
	MisResultAction(SetRecord, 1148)


		----------------------------------------------------------�罻��ʹ20----------����ɯ��
	DefineMission( 5662, "�罻��ʹ20", 1149 )
	MisBeginTalk("<t>�Ҿ����῿һЩ������鱦����ĥ�Ⱥ��ʱ��,�󹤴�������Ÿ���˵�ڿ�ʱ�ҵ�һ��ǧ����ĸ��,�����ڳ�Ǯ,����һ��������������.���,�ڿ���ô���ڵ���ĸ��?")
				
	MisBeginCondition(NoMission, 1149)
	MisBeginCondition(NoRecord,1149)
	MisBeginCondition(HasRecord, 1148)
	MisBeginAction(AddMission,1149)
	MisCancelAction(ClearMission, 1149)

	MisNeed(MIS_NEED_DESP, "������2��Ŀ󹤴����(296,57)����")
	
	MisHelpTalk("<t>лл�������ˣ�ȥ��")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------�罻��ʹ20-------- �󹤴����
	DefineMission(5663, "�罻��ʹ20", 1149, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>��������˺������鱦��Ư��Ů�˵��,����ǧ����ĸ�̺���.")
	MisResultCondition(NoRecord, 1149)
	MisResultCondition(HasMission,1149)
	MisResultAction(ClearMission,1149)
	MisResultAction(SetRecord, 1149)

		----------------------------------------------------------�罻��ʹ21----------�󹤴����
	DefineMission( 5664, "�罻��ʹ21", 1150 )
	MisBeginTalk("<t>��ϲ��������������罻����������������������������˸�����˽�,������̽�պ��а���.����˵�����ľưɷ���Ա<b�Ű���>������.")
				
	MisBeginCondition(NoMission, 1150)
	MisBeginCondition(NoRecord,1150)
	MisBeginCondition(HasRecord, 1149)
	MisBeginAction(AddMission,1150)
	MisCancelAction(ClearMission, 1150)

	MisNeed(MIS_NEED_DESP, "�ҰŰ���(1310,530)����")
	
	MisHelpTalk("<t>�Ű������������.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------�罻Ӣ��21------- �Ű���
	DefineMission(5667, "�罻Ӣ��21", 1150, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>���Ѿ�ͨ�����罻����,�͸���һöѫ��")
	MisResultCondition(NoRecord, 1150)
	MisResultCondition(HasMission,1150)
	MisResultAction(ClearMission,1150)
	MisResultAction(SetRecord, 1150)
	MisResultAction(GiveItem, 3033, 1, 4)
	MisResultBagNeed(1)

--	-------------------------------------------------�ر�����	--------�Ű���
--	DefineMission (5668, "Ѫ����ţ֮�ر��ж�", 1153)
--	
--	MisBeginTalk("<t>��������ǽ�ţ���ر��ж�,����Բ��μ�,��Ȼ���μӵ�û��������.<b10�����ں��е����ﲹ��վ�Һ���ָ�ӡ���Ŧ(2042,6351)>")
--
--	MisBeginCondition(NoMission,1153)
--	MisBeginCondition(NoRecord,1153)
--	MisBeginCondition(HasRecord,1113)
--	MisBeginCondition(HasRecord,1114)
--	MisBeginCondition(HasRecord,1115)
--	MisBeginCondition(HasRecord,1116)
--	MisBeginCondition(HasRecord,1117)
--	MisBeginCondition(HasRecord,1118)
--	MisBeginCondition(HasRecord,1150)
--	MisBeginCondition(HasRecord,1119)
--	MisBeginAction(AddMission,1153)
--	MisBeginAction(AddChaItem3, 2952)---------��ţ�ر��ж���
--	MisCancelAction(ClearMission, 1153)
--	MisBeginBagNeed(1)
--	
--	MisNeed(MIS_NEED_DESP, "���е������ﲹ��վ�Һ���ָ�ӡ���Ŧ(2042,635)����")
--	MisHelpTalk("<t>��ȥ��,��ֻ��15����Ŷ")
--
--	MisResultCondition(AlwaysFailure)	
--
--	--------------------------------------�ر�����----����ָ�ӡ���Ŧ
--
--	DefineMission(5669, "Ѫ����ţ֮�ر��ж�", 1153, COMPLETE_SHOW )
--	
--	MisBeginCondition(AlwaysFailure )
--
--	MisResultTalk("<t>��������.���������ڵ�.")
--	MisResultCondition(HasMission, 1153)
--	MisResultCondition(NoRecord,1153)
--	MisResultAction(AddChaItem5, 2952)----�ر��ж���
--	MisResultAction(ClearMission, 1153)
--	MisResultAction(SetRecord,  1153 )
--	MisResultAction(GiveItem, 3035, 1, 4)------------��ţ������װ����
--	MisResultBagNeed(1)
	
---------------------------------------------------�ر�����	--------�Ű���
--	DefineMission (5673, "Ѫ����ţ֮�ر��ж�", 1159)
--	
--	MisBeginTalk("<t>��������ǽ�ţ���ر��ж�,����Բ��μ�,��Ȼ���μӵ�û��������.<b10�����ں��е����ﲹ��վ�Һ���ָ�ӡ���Ŧ(2042,6351)>")
--
--	MisBeginCondition(NoMission,1159)
--	MisBeginCondition(NoRecord,1159)
--	MisBeginCondition(HasRecord,1112)
--	MisBeginCondition(HasRecord,1120)
--	MisBeginCondition(HasRecord,1121)
--	MisBeginCondition(HasRecord,1122)
--	MisBeginCondition(HasRecord,1123)
--	MisBeginCondition(HasRecord,1124)
--	MisBeginCondition(HasRecord,1150)
--	MisBeginCondition(HasRecord,1119)
--	MisBeginAction(AddMission,1159)
--	MisBeginAction(AddChaItem3, 2952)---------��ţ�ر��ж���
--	MisCancelAction(ClearMission, 1159)
--	MisBeginBagNeed(1)
--	
--	MisNeed(MIS_NEED_DESP, "���е������ﲹ��վ�Һ���ָ�ӡ���Ŧ(2042,635)����")
--	MisHelpTalk("<t>��ȥ��,��ֻ��15����Ŷ")
--
--	MisResultCondition(AlwaysFailure)	
--
--	--------------------------------------�ر�����----����ָ�ӡ���Ŧ
--
--	DefineMission(5674, "Ѫ����ţ֮�ر��ж�", 1159, COMPLETE_SHOW )
--	
--	MisBeginCondition(AlwaysFailure )
--
--	MisResultTalk("<t>��������.���������ڵ�.")
--	MisResultCondition(HasMission, 1159)
--	MisResultCondition(NoRecord,1159)
--	MisResultAction(AddChaItem5, 2952)----�ر��ж���
--	MisResultAction(ClearMission, 1159)
--	MisResultAction(SetRecord,  1159 )
--	MisResultAction(GiveItem, 3035, 1, 4)------------��ţ������װ����
--	MisResultBagNeed(1)
--	
-------------------------------------------------�ر�����	--------�Ű���
	DefineMission (5675, "Ѫ����ţ֮�ر��ж�", 1160)
	
	MisBeginTalk("<t>��������ǽ�ţ���ر��ж�,����Բ��μ�,��Ȼ���μӵ�û��������.�����㵨����ʱ����.<b7�����ڸϵ����õ��ҽܿ�ʷ����(230,579)>����.")

	MisBeginCondition(NoMission,1160)
	MisBeginCondition(NoRecord,1160)
	MisBeginCondition(HasRecord,1113)
	MisBeginCondition(HasRecord,1125)
	MisBeginCondition(HasRecord,1126)
	MisBeginCondition(HasRecord,1127)
	MisBeginCondition(HasRecord,1128)
	MisBeginCondition(HasRecord,1129)
	MisBeginCondition(HasRecord,1150)
	MisBeginCondition(HasRecord,1119)
	MisBeginAction(AddMission,1160)
	MisBeginAction(AddChaItem3, 2952)---------��ţ�ر��ж���
	MisCancelAction(ClearMission, 1160)
	MisBeginBagNeed(1)
	
	MisNeed(MIS_NEED_DESP, "�ҽܿ�ʷ����(230,579)����")
	MisHelpTalk("<t>��ȥ��,��ֻ��7����Ŷ")

	MisResultCondition(AlwaysFailure)	

	--------------------------------------�ر�����----�ܿ�ʷ����

	DefineMission(5676, "Ѫ����ţ֮�ر��ж�", 1160, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>�Ҵ����õ�?�е���!����������������Ⱥ�¸ҵļһ�,���������æ��һ����Ϳ.")
	MisResultCondition(HasMission, 1160)
	MisResultCondition(NoRecord,1160)
	MisResultAction(AddChaItem5, 2952)----�ر��ж���
	MisResultAction(ClearMission, 1160)
	MisResultAction(SetRecord,  1160 )
	MisResultAction(GiveItem, 3035, 1, 4)------------��ţ������װ����
	MisResultBagNeed(1)
	


-------------------------------------------------��ţ֮ˮ�ֹ��ؽ���----------�Ű���	
	DefineMission (5670, "��ţ֮ˮ�ֹ��ؽ���", 1156)
	
	MisBeginTalk("<t>����7öѫ�¾Ϳ�����������һ�����ţ����ӡ��˫�ӹ�����Ʊ��.���кཱܶ��Ŷ ")

	MisBeginCondition(NoMission,1156)
	MisBeginCondition(HasRecord,1111)
	MisBeginCondition(HasRecord,1114)
	MisBeginCondition(HasRecord,1115)
	MisBeginCondition(HasRecord,1116)
	MisBeginCondition(HasRecord,1117)
	MisBeginCondition(HasRecord,1118)
	MisBeginCondition(HasRecord,1150)
	MisBeginCondition(HasRecord,1119)
	MisBeginCondition(NoRecord,1156)
	MisBeginAction(AddMission,1156)  
	MisBeginAction(AddTrigger, 11561, TE_GETITEM, 3028, 1 )		
	MisBeginAction(AddTrigger, 11562, TE_GETITEM, 3029, 1 )		
	MisBeginAction(AddTrigger, 11563, TE_GETITEM, 3030, 1 )		
 	MisBeginAction(AddTrigger, 11564, TE_GETITEM, 3031, 1 )		
	MisBeginAction(AddTrigger, 11565, TE_GETITEM, 3032, 1 )		
	MisBeginAction(AddTrigger, 11566, TE_GETITEM, 3033, 1 )		
	MisBeginAction(AddTrigger, 11567, TE_GETITEM, 3034, 1 )	
	MisCancelAction(ClearMission, 1156)						                                     
	
	MisNeed(MIS_NEED_ITEM, 3028, 1, 10, 1 )
	MisNeed(MIS_NEED_ITEM, 3029, 1, 20, 1 )
	MisNeed(MIS_NEED_ITEM, 3030, 1, 30, 1 )
	MisNeed(MIS_NEED_ITEM, 3031, 1, 40, 1 )
	MisNeed(MIS_NEED_ITEM, 3032, 1, 50, 1)
	MisNeed(MIS_NEED_ITEM, 3033, 1, 60, 1 )
	MisNeed(MIS_NEED_ITEM, 3034, 1, 70, 1 )
	
	MisHelpTalk("<t>������ԥʲô?�����һ�������")
	MisResultTalk("<t>��һ����˫�ӹ�,�и����˵Ľ����͸��̼�����ս�ڵ���.")

	MisResultCondition(HasMission, 1156)
	MisResultCondition(NoRecord,1156)
	MisResultCondition(HasItem, 3028, 1 )
	MisResultCondition(HasItem, 3029, 1 )
	MisResultCondition(HasItem, 3030, 1 )
	MisResultCondition(HasItem, 3031, 1 )
	MisResultCondition(HasItem, 3032, 1 )
	MisResultCondition(HasItem, 3033, 1 )
	MisResultCondition(HasItem, 3034, 1 )

	MisResultAction(TakeItem, 3028, 1 )
	MisResultAction(TakeItem, 3029, 1 )
	MisResultAction(TakeItem, 3030, 1 )
	MisResultAction(TakeItem, 3031, 1 )
	MisResultAction(TakeItem, 3032, 1 )
	MisResultAction(TakeItem, 3033, 1 )
	MisResultAction(TakeItem, 3034, 1 )

	MisResultAction(ClearMission, 1156)
	MisResultAction(SetRecord,  1156 )
	MisResultAction(GiveItem, 3026, 1, 4)
	MisResultAction(GiveItem, 3027, 1, 4)
	MisResultAction(GiveItem, 0227, 10, 4)
	MisResultAction(AddMoney,100000,100000)
	MisResultAction(JINNiuSS)
	MisResultBagNeed(3)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3028)	
	TriggerAction( 1, AddNextFlag, 1156, 10, 1 )
	RegCurTrigger( 11561 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3029)	
	TriggerAction( 1, AddNextFlag, 1156, 20, 1 )
	RegCurTrigger( 11562 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3030)	
	TriggerAction( 1, AddNextFlag, 1156, 30, 1 )
	RegCurTrigger( 11563 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3031)	
	TriggerAction( 1, AddNextFlag, 1156, 40, 1 )
	RegCurTrigger( 11564 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3032)	
	TriggerAction( 1, AddNextFlag, 1156, 50, 1 )
	RegCurTrigger( 11565 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3033)	
	TriggerAction( 1, AddNextFlag, 1156, 60, 1 )
	RegCurTrigger( 11566 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3034)	
	TriggerAction( 1, AddNextFlag, 1156, 70, 1 )
	RegCurTrigger( 11567 )
----------------------------------------------��ţ֮�������ؽ���----------�Ű���	
	DefineMission (5671, "��ţ֮�������ؽ���", 1157)
	
	MisBeginTalk("<t>����7öѫ�¾Ϳ�����������һ�����ţ����ӡ��˫�ӹ�����Ʊ��.���кཱܶ��Ŷ ")

	MisBeginCondition(NoMission,1157)
	MisBeginCondition(HasRecord,1112)
	MisBeginCondition(HasRecord,1120)
	MisBeginCondition(HasRecord,1121)
	MisBeginCondition(HasRecord,1122)
	MisBeginCondition(HasRecord,1123)
	MisBeginCondition(HasRecord,1124)
	MisBeginCondition(HasRecord,1150)
	MisBeginCondition(HasRecord,1119)
	MisBeginCondition(NoRecord,1157)
	MisBeginAction(AddMission,1157)
	MisBeginAction(AddTrigger, 11571, TE_GETITEM, 3028, 1 )		
	MisBeginAction(AddTrigger, 11572, TE_GETITEM, 3029, 1 )		
	MisBeginAction(AddTrigger, 11573, TE_GETITEM, 3030, 1 )		
 	MisBeginAction(AddTrigger, 11574, TE_GETITEM, 3031, 1 )		
	MisBeginAction(AddTrigger, 11575, TE_GETITEM, 3032, 1 )		
	MisBeginAction(AddTrigger, 11576, TE_GETITEM, 3033, 1 )		
	MisBeginAction(AddTrigger, 11577, TE_GETITEM, 3034, 1 )		
	MisCancelAction(ClearMission, 1157)						                                     
	
	MisNeed(MIS_NEED_ITEM, 3028, 1, 10, 1 )
	MisNeed(MIS_NEED_ITEM, 3029, 1, 20, 1 )
	MisNeed(MIS_NEED_ITEM, 3030, 1, 30, 1 )
	MisNeed(MIS_NEED_ITEM, 3031, 1, 40, 1 )
	MisNeed(MIS_NEED_ITEM, 3032, 1, 50, 1)
	MisNeed(MIS_NEED_ITEM, 3033, 1, 60, 1 )
	MisNeed(MIS_NEED_ITEM, 3034, 1, 70, 1 )
	
	MisHelpTalk("<t>������ԥʲô?�����һ�������")
	MisResultTalk("<t>��һ����˫�ӹ�,�и����˵Ľ����͸��̼�����ս�ڵ���.")

	MisResultCondition(HasMission, 1157)
	MisResultCondition(NoRecord,1157)
	MisResultCondition(HasItem, 3028, 1 )
	MisResultCondition(HasItem, 3029, 1 )
	MisResultCondition(HasItem, 3030, 1 )
	MisResultCondition(HasItem, 3031, 1 )
	MisResultCondition(HasItem, 3032, 1 )
	MisResultCondition(HasItem, 3033, 1 )
	MisResultCondition(HasItem, 3034, 1 )

	MisResultAction(TakeItem, 3028, 1 )
	MisResultAction(TakeItem, 3029, 1 )
	MisResultAction(TakeItem, 3030, 1 )
	MisResultAction(TakeItem, 3031, 1 )
	MisResultAction(TakeItem, 3032, 1 )
	MisResultAction(TakeItem, 3033, 1 )
	MisResultAction(TakeItem, 3034, 1 )

	MisResultAction(ClearMission, 1157)
	MisResultAction(SetRecord,  1157 )
	MisResultAction(GiveItem, 3026, 1, 4)
	MisResultAction(GiveItem, 3027, 1, 4)
	MisResultAction(GiveItem, 0227, 20, 4)
	MisResultAction(AddMoney,200000,200000)
	MisResultAction(JINNiuHD)
	MisResultBagNeed(3)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3028)	
	TriggerAction( 1, AddNextFlag, 1157, 10, 1 )
	RegCurTrigger( 11571 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3029)	
	TriggerAction( 1, AddNextFlag, 1157, 20, 1 )
	RegCurTrigger( 11572 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3030)	
	TriggerAction( 1, AddNextFlag, 1157, 30, 1 )
	RegCurTrigger( 11573 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3031)	
	TriggerAction( 1, AddNextFlag, 1157, 40, 1 )
	RegCurTrigger( 11574 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3032)	
	TriggerAction( 1, AddNextFlag, 1157, 50, 1 )
	RegCurTrigger( 11575 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3033)	
	TriggerAction( 1, AddNextFlag, 1157, 60, 1 )
	RegCurTrigger( 11576 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3034)	
	TriggerAction( 1, AddNextFlag, 1157, 70, 1 )
	RegCurTrigger( 11577 )

	---------------------------------------------��ţ֮�������ؽ���----------�Ű���	
	DefineMission (5672, "��ţ֮�������ؽ���", 1158)
	
	MisBeginTalk("<t>����7öѫ�¾Ϳ�����������һ�����ţ����ӡ��˫�ӹ�����Ʊ��.���кཱܶ��Ŷ ")

	MisBeginCondition(NoMission,1158)
	MisBeginCondition(HasRecord,1113)
	MisBeginCondition(HasRecord,1125)
	MisBeginCondition(HasRecord,1126)
	MisBeginCondition(HasRecord,1127)
	MisBeginCondition(HasRecord,1128)
	MisBeginCondition(HasRecord,1129)
	MisBeginCondition(HasRecord,1150)
	MisBeginCondition(HasRecord,1119)
	MisBeginCondition(NoRecord,1158)
	MisBeginAction(AddMission,1158)   
	MisBeginAction(AddTrigger, 11581, TE_GETITEM, 3028, 1 )		
	MisBeginAction(AddTrigger, 11582, TE_GETITEM, 3029, 1 )		
	MisBeginAction(AddTrigger, 11583, TE_GETITEM, 3030, 1 )		
 	MisBeginAction(AddTrigger, 11584, TE_GETITEM, 3031, 1 )		
	MisBeginAction(AddTrigger, 11585, TE_GETITEM, 3032, 1 )		
	MisBeginAction(AddTrigger, 11586, TE_GETITEM, 3033, 1 )		
	MisBeginAction(AddTrigger, 11587, TE_GETITEM, 3034, 1 )	
	MisCancelAction(ClearMission, 1158)						                                     
	
	MisNeed(MIS_NEED_ITEM, 3028, 1, 10, 1 )
	MisNeed(MIS_NEED_ITEM, 3029, 1, 20, 1 )
	MisNeed(MIS_NEED_ITEM, 3030, 1, 30, 1 )
	MisNeed(MIS_NEED_ITEM, 3031, 1, 40, 1 )
	MisNeed(MIS_NEED_ITEM, 3032, 1, 50, 1)
	MisNeed(MIS_NEED_ITEM, 3033, 1, 60, 1 )
	MisNeed(MIS_NEED_ITEM, 3034, 1, 70, 1 )
	
	MisHelpTalk("<t>������ԥʲô?�����һ�������")
	MisResultTalk("<t>��һ����˫�ӹ�,�и����˵Ľ����͸��̼�����ս�ڵ���.")

	MisResultCondition(HasMission, 1158)
	MisResultCondition(NoRecord,1158)
	MisResultCondition(HasItem, 3028, 1 )
	MisResultCondition(HasItem, 3029, 1 )
	MisResultCondition(HasItem, 3030, 1 )
	MisResultCondition(HasItem, 3031, 1 )
	MisResultCondition(HasItem, 3032, 1 )
	MisResultCondition(HasItem, 3033, 1 )
	MisResultCondition(HasItem, 3034, 1 )

	MisResultAction(TakeItem, 3028, 1 )
	MisResultAction(TakeItem, 3029, 1 )
	MisResultAction(TakeItem, 3030, 1 )
	MisResultAction(TakeItem, 3031, 1 )
	MisResultAction(TakeItem, 3032, 1 )
	MisResultAction(TakeItem, 3033, 1 )
	MisResultAction(TakeItem, 3034, 1 )

	MisResultAction(ClearMission, 1158)
	MisResultAction(SetRecord,  1158 )
	MisResultAction(GiveItem, 3026, 1, 4)
	MisResultAction(GiveItem, 3027, 1, 4)
	MisResultAction(GiveItem, 0227, 30, 4)
	MisResultAction(AddMoney,300000,300000)
	MisResultAction(JINNiuCZ)
	MisResultBagNeed(3)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3028)	
	TriggerAction( 1, AddNextFlag, 1158, 10, 1 )
	RegCurTrigger( 11581 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3029)	
	TriggerAction( 1, AddNextFlag, 1158, 20, 1 )
	RegCurTrigger( 11582 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3030)	
	TriggerAction( 1, AddNextFlag, 1158, 30, 1 )
	RegCurTrigger( 11583 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3031)	
	TriggerAction( 1, AddNextFlag, 1158, 40, 1 )
	RegCurTrigger( 11584 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3032)	
	TriggerAction( 1, AddNextFlag, 1158, 50, 1 )
	RegCurTrigger( 11585 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3033)	
	TriggerAction( 1, AddNextFlag, 1158, 60, 1 )
	RegCurTrigger( 11586 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3034)	
	TriggerAction( 1, AddNextFlag, 1158, 70, 1 )
	RegCurTrigger( 11587 )

--	-----------------------------------------------------���ⱦ��-----------��������
--
--       DefineMission(6126,"���ⱦ��",1452)
--
--	MisBeginTalk("<t>��������о�һ���²�ɫ��ҪЩ�ر�Ĳ���,�Ҳ���һ��Ը���æ,��Ϊ�ر�����Ŷ.")
--	MisBeginCondition(NoMission, 1452)
--	MisBeginCondition(NoRecord,1452)
--	MisBeginAction(AddMission,1452)
--	MisBeginAction(AddTrigger, 14521, TE_GETITEM, 4325, 5)
--	MisBeginAction(AddTrigger, 14522, TE_GETITEM, 1680, 5)
--	MisBeginAction(AddTrigger, 14523, TE_GETITEM, 4433, 5)
--	MisBeginAction(AddTrigger, 14524, TE_GETITEM, 4357, 5)
--	MisBeginAction(AddTrigger, 14525, TE_GETITEM, 4461, 40)
--	MisBeginAction(AddTrigger, 14526, TE_GETITEM, 4462, 40)
--
--
--	MisCancelAction(ClearMission, 1452)
--
--	MisNeed(MIS_NEED_DESP, "�ռ���ѩ����β 5��(����1179,371),�ۺ���β 5��(����1950,2563),������β 5��(����1384,3065),�ֲڵ���β 5��(����910,2971),�������� 40 ����1455,560)�� ǿ׳���� 40(����2266,590).")
--	MisNeed(MIS_NEED_ITEM, 4325, 5, 10, 5)
--	MisNeed(MIS_NEED_ITEM, 1680, 5, 15, 5)
--	MisNeed(MIS_NEED_ITEM, 4433, 5, 20, 5)
--	MisNeed(MIS_NEED_ITEM, 4357, 5, 25, 5)
--	MisNeed(MIS_NEED_ITEM, 4461, 40, 30, 40)
--	MisNeed(MIS_NEED_ITEM, 4462, 40, 70, 40)
--
--	
--	
--	MisHelpTalk("<t>�����������,�һ������õ�����")
--	MisResultTalk("<t>������ص����������������Ҫ�͸���Ľ�����,���кܶ�����Ҫ��æ,����Ծ�����������.")
--
--	MisResultCondition(HasMission, 1452)
--	MisResultCondition(NoRecord,1452)
--	MisResultCondition(HasItem, 4325, 5)
--	MisResultCondition(HasItem, 1680, 5)
--	MisResultCondition(HasItem, 4433, 5)
--	MisResultCondition(HasItem, 4357, 5)
--	MisResultCondition(HasItem, 4461, 40)
--	MisResultCondition(HasItem, 4462, 40)
--
--	
--	
--	MisResultAction(TakeItem, 4325, 5 )
--	MisResultAction(TakeItem, 1680, 5 )
--	MisResultAction(TakeItem, 4433, 5 )
--	MisResultAction(TakeItem, 4357, 5 )
--	MisResultAction(TakeItem, 4461, 40 )
--	MisResultAction(TakeItem, 4462, 40 )
--
--	
--	
--	MisResultAction(GiveItem, 2909,1,4)------------������������
--	MisResultAction(ClearMission, 1452)
--	MisResultAction(SetRecord, 1452)
--	MisResultAction(ClearRecord, 1452)---------------���Է�����
--	MisResultBagNeed(1)
--	
--
--
--	InitTrigger()
--	TriggerCondition( 1, IsItem, 4325)	
--	TriggerAction( 1, AddNextFlag, 1452, 10, 5 )
--	RegCurTrigger( 14521 )
--
--	InitTrigger()
--	TriggerCondition( 1, IsItem, 1680)	
--	TriggerAction( 1, AddNextFlag, 1452, 15, 5 )
--	RegCurTrigger( 14522 )
--	
--	InitTrigger()
--	TriggerCondition( 1, IsItem, 4433)	
--	TriggerAction( 1, AddNextFlag, 1452, 20, 5 )
--	RegCurTrigger( 14523 )
--	
--	InitTrigger()
--	TriggerCondition( 1, IsItem, 4357)	
--	TriggerAction( 1, AddNextFlag, 1452, 25, 5 )
--	RegCurTrigger( 14524 )
--	
--	InitTrigger()
--	TriggerCondition( 1, IsItem, 4461)	
--	TriggerAction( 1, AddNextFlag, 1452, 30, 40 )
--	RegCurTrigger( 14525 )
--	
--	InitTrigger()
--	TriggerCondition( 1, IsItem, 4462)	
--	TriggerAction( 1, AddNextFlag, 1452, 70, 40 )
--	RegCurTrigger( 14526 )

-------------------------------------------------�Ҷ�Ӣ��----------�������¿�	--------ˮ��
	DefineMission (5673, "�λ�˫��֮�Ҷ�Ӣ��", 1163)
	
	MisBeginTalk("<t>˫��������,����ʮ������,�ڸ�����Ҳ���ܱ��ֳ��Լ��Ĳ���.������������λ�������?")

	MisBeginCondition(NoMission,1163)
	MisBeginCondition(HasRecord,1159)
	MisBeginCondition(NoRecord,1163)
	MisBeginAction(AddMission,1163)
	MisCancelAction(ClearMission, 1163)
	
	MisNeed(MIS_NEED_DESP, "���5���Ҷ�����")
	MisHelpTalk("<t>�Ҷ��������Դ��Ҷ��������!")
	MisResultTalk("<t>���ó���ע����һ��Ϊս����������.")

	MisResultCondition(HasMission, 1163)
	MisResultCondition(NoRecord,1163)
	MisResultCondition(HasFightingPoint,5 )
	MisResultAction(TakeFightingPoint, 5 )
	MisResultAction(ClearMission, 1163)
	MisResultAction(SetRecord,  1163 )
	MisResultAction(GiveItem, 1874, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------����Ӣ��----------�������¿�	--------ˮ��
	DefineMission (5674, "�λ�˫��֮����Ӣ��", 1164)
	
	MisBeginTalk("<t>�������,��������֪������һ�����Լ���Ҫ����ˣ������λ�˫�ӹ������Ҫ��Ҳ����һЩ. ")

	MisBeginCondition(NoMission,1164)
	MisBeginCondition(HasRecord,1159)
	MisBeginCondition(NoRecord,1164)
	MisBeginAction(AddMission,1164)
	MisCancelAction(ClearMission, 1164)
	
	MisNeed(MIS_NEED_DESP, "���2000����������")
	MisHelpTalk("<t>��ʲô��,������?����Ϊ2000�������ܺû���?")
	MisResultTalk("<t>��ö����ѫ����������֤Ӣ�۵�.")

	MisResultCondition(HasMission, 1164)
	MisResultCondition(NoRecord,1164)
	MisResultCondition(HasCredit,2000 )
	MisResultAction(TakeCredit, 2000 )
	MisResultAction(ClearMission, 1164)
	MisResultAction(SetRecord,  1164 )
	MisResultAction(GiveItem, 1875, 1, 4)
	MisResultBagNeed(1)


	-------------------------------------------------�ȼ�Ӣ��----------�������¿�	---------ˮ��
	DefineMission (5741, "�λ�˫��֮�ȼ�Ӣ��", 1165)
	
	MisBeginTalk("<t>�¸ҵ�����,���ҿ�����Ƿ���������,����֤����ֻ���Ҳ�һ��,����... ")

	MisBeginCondition(NoMission,1165)
	MisBeginCondition(HasRecord,1159)
	MisBeginCondition(NoRecord,1165)
	MisBeginAction(AddMission,1165)
	MisCancelAction(ClearMission, 1165)
	
	MisNeed(MIS_NEED_DESP, "�ȼ��ﵽ60��")
	MisHelpTalk("<t>��Ȼ,60��������˵��������.")
	MisResultTalk("<t>���ò�����,���ȷֻ�����Բ�һ�����,��ö�ȼ�ѫ���������.")

	MisResultCondition(HasMission, 1165)
	MisResultCondition(NoRecord,1165)
	MisResultCondition(LvCheck, ">", 59 )
	MisResultAction(ClearMission, 1165)
	MisResultAction(SetRecord,  1165 )
	MisResultAction(GiveItem, 1876, 1, 4)
	MisResultBagNeed(1)
	

	-------------------------------------------------����Ӣ��----------�������¿�	----------ˮ��
	DefineMission (5742, "�λ�˫��֮����Ӣ��", 1166)
	
	MisBeginTalk("<t>��˵�к���������ΰ�������֮�Ӿ�����..�ҵ�����,������ܵ���󺣵�ͬ�е���,��Ҫ����Ϊ������. ")

	MisBeginCondition(NoMission,1166)
	MisBeginCondition(HasRecord,1159)
	MisBeginCondition(NoRecord,1166)
	MisBeginAction(AddMission,1166)
	MisCancelAction(ClearMission, 1166)
	
	MisNeed(MIS_NEED_DESP, "���500����������")
	MisHelpTalk("<t>ȥΪ������ս��!")
	MisResultTalk("<t>���Ǹ��ܲ���������֮��.")

	MisResultCondition(HasMission, 1166)
	MisResultCondition(NoRecord,1166)
	MisResultCondition(HasHonorPoint,500 )
	MisResultAction(TakeHonorPoint, 500 )
	MisResultAction(ClearMission, 1166)
	MisResultAction(SetRecord,  1166 )
	MisResultAction(GiveItem, 1877, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------�ɼ���ʹ----------�������¿�	------------ˮ��
	DefineMission (5677, "�λ�˫��֮�ɼ���ʹ", 1167)
	
	MisBeginTalk("<t>�ɼ�ѫ����������Щ��������ǿ���˵�����,�����ĵĻ���ȥ���԰�. ")

	MisBeginCondition(NoMission,1167)
	MisBeginCondition(HasRecord,1159)
	MisBeginCondition(NoRecord,1167)
	MisBeginAction(AddMission,1167)
	MisBeginAction(AddTrigger, 11671, TE_GETITEM, 1346, 10 )---------------Ѫ�ȵ����Ѫ10
	MisBeginAction(AddTrigger, 11672, TE_GETITEM, 4526, 10 )--------------- ����ĳ�ì10
	MisBeginAction(AddTrigger, 11673, TE_GETITEM, 1608, 10 )-------------����Ƥë10--------
	MisBeginAction(AddTrigger, 11674, TE_GETITEM, 4495, 1 )--------------ɽ������1��
	MisBeginAction(AddTrigger, 11675, TE_GETITEM, 1612, 20 )--------------�����Ľ�20��
	MisBeginAction(AddTrigger, 11676, TE_GETITEM, 1140, 20 )-------------��ֻ������LV1 20��
	MisBeginAction(AddTrigger, 11677, TE_GETITEM, 3094, 5 )--------------Ŭ��������5��
	MisCancelAction(ClearMission, 1167)
	

	MisNeed(MIS_NEED_ITEM, 1346, 10, 1, 10 )
	MisNeed(MIS_NEED_ITEM, 4526, 10, 11, 10 )
	MisNeed(MIS_NEED_ITEM, 1608, 10, 21, 10 )
	MisNeed(MIS_NEED_ITEM, 4495, 1, 31, 1 )
	MisNeed(MIS_NEED_ITEM, 1612, 20, 32, 20 )
	MisNeed(MIS_NEED_ITEM, 1140, 20, 52, 20 )
	MisNeed(MIS_NEED_ITEM, 3094, 5, 72, 5 )
	

	MisHelpTalk("<t>��Ҫ��Ϊ������,��ȥ��")
	MisResultTalk("<t>��Щ������������Խ��,��ס,�����������еĶ��������Լ��ļ�ֵ,��Ҫ���Ǽ����ʱ���������ȥ����.")

	MisResultCondition(HasMission, 1167)
	MisResultCondition(NoRecord,1167)
	MisResultCondition(HasItem, 1346, 10 )
	MisResultCondition(HasItem, 4526, 10 )
	MisResultCondition(HasItem, 1608, 10 )
	MisResultCondition(HasItem, 4495, 1 )
	MisResultCondition(HasItem, 1612, 20 )
	MisResultCondition(HasItem, 1140, 20 )
	MisResultCondition(HasItem, 3094, 5 )


	MisResultAction(TakeItem, 1346, 10 )
	MisResultAction(TakeItem, 4526, 10 )
	MisResultAction(TakeItem, 1608, 10 )
	MisResultAction(TakeItem, 4495, 1)
	MisResultAction(TakeItem, 1612, 20 )
	MisResultAction(TakeItem, 1140, 20 )
	MisResultAction(TakeItem, 3094, 5 )
	
	MisResultAction(ClearMission, 1167)
	MisResultAction(SetRecord,  1167 )
	MisResultAction(GiveItem, 1878, 1, 4)
	MisResultAction(GiveItem, 1882, 1, 4)
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1346)	
	TriggerAction( 1, AddNextFlag, 1167, 1, 10 )
	RegCurTrigger( 11671 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4526)	
	TriggerAction( 1, AddNextFlag, 1167, 11, 10 )
	RegCurTrigger( 11672 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1608)	
	TriggerAction( 1, AddNextFlag, 1167, 21, 10 )
	RegCurTrigger( 11673 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4495)	
	TriggerAction( 1, AddNextFlag, 1167, 31, 1 )
	RegCurTrigger( 11674 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1612)	
	TriggerAction( 1, AddNextFlag, 1167, 36, 20 )
	RegCurTrigger( 11675 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1140)	
	TriggerAction( 1, AddNextFlag, 1167, 37, 20 )
	RegCurTrigger( 11676 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3094)	
	TriggerAction( 1, AddNextFlag, 1167, 87, 5 )
	RegCurTrigger( 11677 )


	----------------------------------------------------------˫��ĩ��----------�������¿�
	DefineMission( 5678, "�λ�˫��֮˫��ĩ��", 1168 )
	MisBeginTalk("<t>BOSSѫ�������Ӣ��������ζ�Ľ���,��Ҫ�Ļ���ȥɱ�����µ�˫���ػ���.")
				
	MisBeginCondition(NoMission, 1168)
	MisBeginCondition(HasRecord,1162)
	MisBeginCondition(NoRecord,1168)
	MisBeginAction(AddMission,1168)
	MisBeginAction(AddTrigger, 11681, TE_KILL, 1039, 1)---˫���ػ���
	
	MisCancelAction(ClearMission, 1168)

	MisNeed(MIS_NEED_DESP, "��ɱ˫���ػ���ħŮ֮��(2527, 2467)!")
	MisNeed(MIS_NEED_KILL, 1039,1, 10, 1)
	

	MisResultTalk("<t>˫ͷ�ı۵Ĺ���������С�ĵĽ���.����Զ���޷�������ɱ������!")
	MisHelpTalk("<t>��˵��ֻ˫ͷ��,��ͬ����,��ҪС��.")
	MisResultCondition(HasMission,  1168)
	MisResultCondition(HasFlag, 1168, 10)
	MisResultCondition(NoRecord , 1168)
	MisResultAction(GiveItem, 1880, 1, 4 )
	MisResultAction(ClearMission,  1168)
	MisResultAction(SetRecord,  1168 )
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 1039)	
	TriggerAction( 1, AddNextFlag, 1168, 10, 1 )
	RegCurTrigger( 11681 )

-------------------------------------------------�Ҷ�Ӣ��----------�������¿�	
	DefineMission (5679, "�λ�˫��֮�Ҷ�Ӣ��", 1169)
	
	MisBeginTalk("<t>˫��������,����ʮ������,�ڸ�����Ҳ���ܱ��ֳ��Լ��Ĳ���.������������λ�������?")

	MisBeginCondition(NoMission,1169)
	MisBeginCondition(HasRecord,1204)
	MisBeginCondition(NoRecord,1169)
	MisBeginAction(AddMission,1169)
	MisCancelAction(ClearMission, 1169)
	
	MisNeed(MIS_NEED_DESP, "���10���Ҷ�����")
	MisHelpTalk("<t>�Ҷ��������Դ��Ҷ��������!")
	MisResultTalk("<t>���ó���ע����һ��Ϊս����������.")

	MisResultCondition(HasMission, 1169)
	MisResultCondition(NoRecord,1169)
	MisResultCondition(HasFightingPoint,10 )
	MisResultAction(TakeFightingPoint, 10 )
	MisResultAction(ClearMission, 1169)
	MisResultAction(SetRecord,  1169 )
	MisResultAction(GiveItem, 1874, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------����Ӣ��----------�������¿�	
	DefineMission (5680, "�λ�˫��֮����Ӣ��", 1170)
	
	MisBeginTalk("<t>�������,��������֪������һ�����Լ���Ҫ����ˣ������λ�˫�ӹ������Ҫ��Ҳ����һЩ.")

	MisBeginCondition(NoMission,1170)
	MisBeginCondition(HasRecord,1204)
	MisBeginCondition(NoRecord,1170)
	MisBeginAction(AddMission,1170)
	MisCancelAction(ClearMission, 1170)
	
	MisNeed(MIS_NEED_DESP, "���5000����������")
	MisHelpTalk("<t>��ʲô��,������?����Ϊ5000�������ܺû���?")
	MisResultTalk("<t>��ö����ѫ����������֤Ӣ�۵�.")

	MisResultCondition(HasMission, 1170)
	MisResultCondition(NoRecord,1170)
	MisResultCondition(HasCredit,5000 )
	MisResultAction(TakeCredit,5000  )
	MisResultAction(ClearMission, 1170)
	MisResultAction(SetRecord,  1170 )
	MisResultAction(GiveItem, 1875, 1, 4)
	MisResultBagNeed(1)


	-------------------------------------------------�ȼ�Ӣ��----------�������¿�	
	DefineMission (5681, "�λ�˫��֮�ȼ�Ӣ��", 1171)
	
	MisBeginTalk("<t>�¸ҵ�����,���ҿ�����Ƿ���������,����֤����ֻ���Ҳ�һ��,����... ")

	MisBeginCondition(NoMission,1171)
	MisBeginCondition(HasRecord,1204)
	MisBeginCondition(NoRecord,1171)
	MisBeginAction(AddMission,1171)
	MisCancelAction(ClearMission, 1171)
	
	MisNeed(MIS_NEED_DESP, "�ȼ��ﵽ65��")
	MisHelpTalk("<t>��Ȼ,65��������˵��������.")
	MisResultTalk("<t>���ò�����,���ȷֻ�����Բ�һ�����,��ö�ȼ�ѫ���������.")

	MisResultCondition(HasMission, 1171)
	MisResultCondition(NoRecord,1171)
	MisResultCondition(LvCheck, ">", 64 )
	MisResultAction(ClearMission, 1171)
	MisResultAction(SetRecord,  1171 )
	MisResultAction(GiveItem, 1876, 1, 4)
	MisResultBagNeed(1)
	

	-------------------------------------------------����Ӣ��----------�������¿�	
	DefineMission (5682, "�λ�˫��֮����Ӣ��", 1172)
	
	MisBeginTalk("<t>��˵�к���������ΰ�������֮�Ӿ�����..�ҵ�����,������ܵ���󺣵�ͬ�е���,��Ҫ����Ϊ������.")

	MisBeginCondition(NoMission,1172)
	MisBeginCondition(HasRecord,1204)
	MisBeginCondition(NoRecord,1172)
	MisBeginAction(AddMission,1172)
	MisCancelAction(ClearMission, 1172)
	
	MisNeed(MIS_NEED_DESP, "���700����������")
	MisHelpTalk("<t>ȥΪ������ս��!")
	MisResultTalk("<t>���Ǹ��ܲ���������֮��.")

	MisResultCondition(HasMission, 1172)
	MisResultCondition(NoRecord,1172)
	MisResultCondition(HasHonorPoint,700 )
	MisResultAction(TakeHonorPoint, 700 )
	MisResultAction(ClearMission, 1172)
	MisResultAction(SetRecord,  1172 )
	MisResultAction(GiveItem, 1877, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------�ɼ���ʹ----------�������¿�	
	DefineMission (5683, "�λ�˫��֮�ɼ���ʹ", 1173)
	
	MisBeginTalk("<t>�ɼ�ѫ����������Щ��������ǿ���˵�����,�����ĵĻ���ȥ���԰�. ")

	MisBeginCondition(NoMission,1173)
	MisBeginCondition(HasRecord,1204)
	MisBeginCondition(NoRecord,1173)
	MisBeginAction(AddMission,1173)
	MisBeginAction(AddTrigger, 11731, TE_GETITEM, 1346, 15 )-------------------Ѫ�ȵ����Ѫ15
	MisBeginAction(AddTrigger, 11732, TE_GETITEM, 4526, 15 )-------------------����ĳ�ì15          
	MisBeginAction(AddTrigger, 11733, TE_GETITEM, 1608, 15 )-----------------����Ƥë15               
	MisBeginAction(AddTrigger, 11734, TE_GETITEM, 4495, 2 )----------------ɽ������2��               
	MisBeginAction(AddTrigger, 11735, TE_GETITEM, 1612, 30)------------------�����Ľ�30��            
	MisBeginAction(AddTrigger, 11736, TE_GETITEM, 2724, 20 )-----------------��ֻ������LV2 20��                  
	MisBeginAction(AddTrigger, 11737, TE_GETITEM, 3094, 10 )------------------Ŭ��������10��          
	MisCancelAction(ClearMission, 1173)
	

	MisNeed(MIS_NEED_ITEM, 1346, 15, 1, 15 )
	MisNeed(MIS_NEED_ITEM, 4526, 15, 16, 15 )
	MisNeed(MIS_NEED_ITEM, 1608, 15, 31, 15 )
	MisNeed(MIS_NEED_ITEM, 4495,  2, 46, 2 )
	MisNeed(MIS_NEED_ITEM, 1612, 30, 48, 30 )
	MisNeed(MIS_NEED_ITEM, 2724, 20, 78, 20 )
	MisNeed(MIS_NEED_ITEM, 3094, 10, 98, 10 )
	

	MisHelpTalk("<t>��Ҫ��Ϊ������,��ȥ��")
	MisResultTalk("<t>��Щ������������Խ��,��ס,�����������еĶ��������Լ��ļ�ֵ,��Ҫ���Ǽ����ʱ���������ȥ����..")

	MisResultCondition(HasMission, 1173)
	MisResultCondition(NoRecord,1173)
	MisResultCondition(HasItem, 1346, 15 )
	MisResultCondition(HasItem, 4526, 15 )
	MisResultCondition(HasItem, 1608, 15 )
	MisResultCondition(HasItem, 4495, 2 )
	MisResultCondition(HasItem, 1612, 30 )
	MisResultCondition(HasItem, 2724, 20 )
	MisResultCondition(HasItem, 3094, 10 )


	MisResultAction(TakeItem, 1346, 15 )
	MisResultAction(TakeItem, 4526, 15 )
	MisResultAction(TakeItem, 1608, 15 )
	MisResultAction(TakeItem, 4495, 2 )
	MisResultAction(TakeItem, 1612, 30 )
	MisResultAction(TakeItem, 2724, 20 )
	MisResultAction(TakeItem, 3094, 10 )

	MisResultAction(ClearMission, 1173)
	MisResultAction(SetRecord,  1173 )
	MisResultAction(GiveItem, 1878, 1, 4)
	MisResultAction(GiveItem, 1882, 1, 4)
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1346)	
	TriggerAction( 1, AddNextFlag, 1173, 1, 15 )
	RegCurTrigger( 11731 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4526)	
	TriggerAction( 1, AddNextFlag, 1173, 16, 15 )
	RegCurTrigger( 11732 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1608)	
	TriggerAction( 1, AddNextFlag, 1173, 31, 15 )
	RegCurTrigger( 11733 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4495)	
	TriggerAction( 1, AddNextFlag, 1173, 46, 2 )
	RegCurTrigger( 11734 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1612)	
	TriggerAction( 1, AddNextFlag, 1173, 48, 30 )
	RegCurTrigger( 11735 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2724)	
	TriggerAction( 1, AddNextFlag, 1173,78, 20 )
	RegCurTrigger( 11736 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3094)	
	TriggerAction( 1, AddNextFlag, 1173, 98, 10 )
	RegCurTrigger( 11737 )


-------------------------------------------------�Ҷ�Ӣ��----------�������¿�	
	DefineMission (5684, "�λ�˫��֮�Ҷ�Ӣ��", 1174)
	
	MisBeginTalk("<t>˫��������,����ʮ������,�ڸ�����Ҳ���ܱ��ֳ��Լ��Ĳ���.������������λ�������? ")

	MisBeginCondition(NoMission,1174)
	MisBeginCondition(HasRecord,1161)
	MisBeginCondition(NoRecord,1174)
	MisBeginAction(AddMission,1174)
	MisCancelAction(ClearMission, 1174)
	
	MisNeed(MIS_NEED_DESP, "���15���Ҷ�����")
	MisHelpTalk("<t>�Ҷ��������Դ��Ҷ��������!")
	MisResultTalk("<t>���ó���ע����һ��Ϊս����������.")

	MisResultCondition(HasMission, 1174)
	MisResultCondition(NoRecord,1174)
	MisResultCondition(HasFightingPoint,15 )
	MisResultAction(TakeFightingPoint, 15 )
	MisResultAction(ClearMission, 1174)
	MisResultAction(SetRecord,  1174 )
	MisResultAction(GiveItem, 1874, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------����Ӣ��----------�������¿�	
	DefineMission (5685, "�λ�˫��֮����Ӣ��", 1175)
	
	MisBeginTalk("<t>�������,��������֪������һ�����Լ���Ҫ����ˣ������λ�˫�ӹ������Ҫ��Ҳ����һЩ.")

	MisBeginCondition(NoMission,1175)
	MisBeginCondition(HasRecord,1161)
	MisBeginCondition(NoRecord,1175)
	MisBeginAction(AddMission,1175)
	MisCancelAction(ClearMission, 1175)
	
	MisNeed(MIS_NEED_DESP, "���8000����������")
	MisHelpTalk("<t>��ʲô��,������?����Ϊ8000�������ܺû���?")
	MisResultTalk("<t>��ö����ѫ����������֤Ӣ�۵�.")

	MisResultCondition(HasMission, 1175)
	MisResultCondition(NoRecord,1175)
	MisResultCondition(HasCredit,8000 )
	MisResultAction(TakeCredit, 8000 )
	MisResultAction(ClearMission, 1175)
	MisResultAction(SetRecord,  1175 )
	MisResultAction(GiveItem, 1875, 1, 4)
	MisResultBagNeed(1)


	-------------------------------------------------�ȼ�Ӣ��----------�������¿�	
	DefineMission (5686, "�λ�˫��֮�ȼ�Ӣ��", 1176)
	
	MisBeginTalk("<t>�¸ҵ�����,���ҿ�����Ƿ���������,����֤����ֻ���Ҳ�һ��,����....")

	MisBeginCondition(NoMission,1176)
	MisBeginCondition(HasRecord,1161)
	MisBeginCondition(NoRecord,1176)
	MisBeginAction(AddMission,1176)
	MisCancelAction(ClearMission, 1176)
	
	MisNeed(MIS_NEED_DESP, "�ȼ��ﵽ70��")
	MisHelpTalk("<t>��Ȼ,70��������˵��������.")
	MisResultTalk("<t>���ò�����,���ȷֻ�����Բ�һ�����,��ö�ȼ�ѫ���������.")

	MisResultCondition(HasMission, 1176)
	MisResultCondition(NoRecord,1176)
	MisResultCondition(LvCheck, ">", 69 )
	MisResultAction(ClearMission, 1176)
	MisResultAction(SetRecord,  1176 )
	MisResultAction(GiveItem, 1876, 1, 4)
	MisResultBagNeed(1)
	

	-------------------------------------------------����Ӣ��----------�������¿�	
	DefineMission (5687, "�λ�˫��֮����Ӣ��", 1177)
	
	MisBeginTalk("<t>��˵�к���������ΰ�������֮�Ӿ�����..�ҵ�����,������ܵ���󺣵�ͬ�е���,��Ҫ����Ϊ������.")

	MisBeginCondition(NoMission,1177)
	MisBeginCondition(HasRecord,1161)
	MisBeginCondition(NoRecord,1177)
	MisBeginAction(AddMission,1177)
	MisCancelAction(ClearMission, 1177)
	
	MisNeed(MIS_NEED_DESP, "���1000����������")
	MisHelpTalk("<t>ȥΪ������ս��!")
	MisResultTalk("<t>���Ǹ��ܲ���������֮��.")

	MisResultCondition(HasMission, 1177)
	MisResultCondition(NoRecord,1177)
	MisResultCondition(HasHonorPoint,1000 )
	MisResultAction(TakeHonorPoint, 1000 )
	MisResultAction(ClearMission, 1177)
	MisResultAction(SetRecord,  1177 )
	MisResultAction(GiveItem, 1877, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------�ɼ���ʹ----------�������¿�	
	DefineMission (5688, "�λ�˫��֮�ɼ���ʹ", 1178)
	
	MisBeginTalk("<t>�ɼ�ѫ����������Щ��������ǿ���˵�����,�����ĵĻ���ȥ���԰�. ")

	MisBeginCondition(NoMission,1178)
	MisBeginCondition(HasRecord,1161)
	MisBeginCondition(NoRecord,1178)
	MisBeginAction(AddMission,1178)
	MisBeginAction(AddTrigger, 11781, TE_GETITEM, 1346, 20 )---------------------Ѫ�ȵ����Ѫ20 
	MisBeginAction(AddTrigger, 11782, TE_GETITEM, 3433, 1 )---------------------��ŵ��ʯ1��          
	MisBeginAction(AddTrigger, 11783, TE_GETITEM, 4495, 3 )-------------------ɽ������3��               
	MisBeginAction(AddTrigger, 11784, TE_GETITEM, 1612, 30 )------------------�����Ľ�30��             
	MisBeginAction(AddTrigger, 11785, TE_GETITEM, 2724, 30 )--------------------��ֻ������LV2 30��             
	MisBeginAction(AddTrigger, 11786, TE_GETITEM, 3094, 30 )-------------------Ŭ��������30��                              
	MisCancelAction(ClearMission, 1178)						                                     
	

	MisNeed(MIS_NEED_ITEM, 1346, 20, 1, 20 )
	MisNeed(MIS_NEED_ITEM, 3433, 1, 21, 1 )
	MisNeed(MIS_NEED_ITEM, 4495, 3, 22, 3 )
	MisNeed(MIS_NEED_ITEM, 1612, 30, 25, 30 )
	MisNeed(MIS_NEED_ITEM, 2724, 30, 55, 30)
	MisNeed(MIS_NEED_ITEM, 3094, 30, 85, 30 )


	MisHelpTalk("<t>��Ҫ��Ϊ������,��ȥ��")
	MisResultTalk("<t>��Щ������������Խ��,��ס,�����������еĶ��������Լ��ļ�ֵ,��Ҫ���Ǽ����ʱ���������ȥ����.")

	MisResultCondition(HasMission, 1178)
	MisResultCondition(NoRecord,1178)
	MisResultCondition(HasItem, 1346, 20 )
	MisResultCondition(HasItem, 3433, 1 )
	MisResultCondition(HasItem, 4495, 3 )
	MisResultCondition(HasItem, 1612, 30 )
	MisResultCondition(HasItem, 2724, 30 )
	MisResultCondition(HasItem, 3094, 30 )


	MisResultAction(TakeItem, 1346, 20 )
	MisResultAction(TakeItem, 3433, 1 )
	MisResultAction(TakeItem, 4495, 3 )
	MisResultAction(TakeItem, 1612, 30 )
	MisResultAction(TakeItem, 2724, 30 )
	MisResultAction(TakeItem, 3094, 30 )

	MisResultAction(ClearMission, 1178)
	MisResultAction(SetRecord,  1178 )
	MisResultAction(GiveItem, 1878, 1, 4)
	MisResultAction(GiveItem, 1882, 1, 4)
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1346)	
	TriggerAction( 1, AddNextFlag, 1178, 1, 20 )
	RegCurTrigger( 11781 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3433)	
	TriggerAction( 1, AddNextFlag, 1178, 21, 1 )
	RegCurTrigger( 11782 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4495)	
	TriggerAction( 1, AddNextFlag, 1178, 22, 3 )
	RegCurTrigger( 11783 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1612)	
	TriggerAction( 1, AddNextFlag, 1178, 25, 30 )
	RegCurTrigger( 11784 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2724)	
	TriggerAction( 1, AddNextFlag, 1178, 55, 30 )
	RegCurTrigger( 11785 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3094)	
	TriggerAction( 1, AddNextFlag, 1178, 85, 30 )
	RegCurTrigger( 11786 )

	----------------------------------------------------------�罻��ʹ----------�������¿�
	DefineMission( 5689, "�λ�˫��֮�罻��ʹ", 1179 )
	MisBeginTalk("<t>����˵��ϲ����ţ,�ѵ������ҵĴ���?�м������˲�������?��ʵ�һ��Ǻ���������,��Щ����ҵ������ǿ�����֤.������Ҫ��ʥ���ھٰ��ɶ�,�������Ҫ̽��ѫ�¾Ͱ���ȥ�������ǰ�.")
				
	MisBeginCondition(NoMission, 1179)
	MisBeginCondition(NoRecord,1179)
	MisBeginCondition(HasRecord, 1162)-------------------�µ�id,����id
	MisBeginAction(AddMission,1179)
	MisCancelAction(ClearMission, 1179)

	MisNeed(MIS_NEED_DESP, "���������Ļ���������(711,1414)����")
	
	MisHelpTalk("<t>��ȥ��,ʱ�����Ǳ�����Ĺ��ÿ�.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------�罻��ʹ-----------------����������

	DefineMission(5690, "�罻��ʹ", 1179, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>�������¿�?����ʶ��,����ţ�ı����������ж��ŵ�.")
	MisResultCondition(NoRecord, 1179)
	MisResultCondition(HasMission,1179)
	MisResultAction(ClearMission,1179)
	MisResultAction(SetRecord, 1179)

	----------------------------------------------------------�罻��ʹ2----------����������
	DefineMission( 5691, "�罻��ʹ2", 1180 )
	MisBeginTalk("<t>�Ҹո�18���ʱ���������������,������ʶ�˵¿˾ͷ������������...�����ɶ����ܲ��ܲμӻ�Ҫ����û�м���,�ҿ�û��������ô����")
				
	MisBeginCondition(NoMission, 1180)
	MisBeginCondition(NoRecord,1180)
	MisBeginCondition(HasRecord, 1179)
	MisBeginAction(AddMission,1180)
	MisCancelAction(ClearMission, 1180)

	MisNeed(MIS_NEED_DESP, "��ɳᰵ�Ѳ�߱�������(958,3549)����")
	
	MisHelpTalk("<t>�ڳ�����Ƥ���µ�����ǲ���ô����.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------�罻��ʹ2-------------Ѳ�߱�������
	DefineMission(5692, "�罻��ʹ2", 1180, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>���!�Ҷӳ�����,����������?")
	MisResultCondition(NoRecord, 1180)
	MisResultCondition(HasMission,1180)
	MisResultAction(ClearMission,1180)
	MisResultAction(SetRecord, 1180)

	----------------------------------------------------------�罻��ʹ3----------Ѳ�߱�������
	DefineMission( 5693, "�罻��ʹ3", 1181 )
	MisBeginTalk("<t>�¿˵�ʥ���ɶ�?�ܲ���,���Ѿ��ȹ��˺ܶ���¶����ĵ�ʥ������.�������Ѿ�Լ����˾��,�����������һ����˾�����")
				
	MisBeginCondition(NoMission, 1181)
	MisBeginCondition(NoRecord,1181)
	MisBeginCondition(HasRecord, 1180)
	MisBeginAction(AddMission,1181)
	MisCancelAction(ClearMission, 1181)

	MisNeed(MIS_NEED_DESP, "������Ӫ�ز���վ����˾(2138,545)����")
	
	MisHelpTalk("<t>˵ʵ���ҶԵ¿��Ѿ�ûʲôӡ����,�Ǻ�..")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------�罻��ʹ3--------��˾
	DefineMission(5694, "�罻��ʹ3", 1181, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>�μӵ¿˵�ʥ���ɶ��Ǹ����õ�����,��Ȼ�Ҳ�ϲ���¿�,������ϲ���ɶ��ϵĹ���.")
	MisResultCondition(NoRecord, 1181)
	MisResultCondition(HasMission,1181)
	MisResultAction(ClearMission,1181)
	MisResultAction(SetRecord, 1181)



	----------------------------------------------------------�罻��ʹ4----------��˾
	DefineMission( 5695, "�罻��ʹ4", 1182 )
	MisBeginTalk("<t>������ȥ�¶�άƽԭ���æ���߿���������˹,��֪��һ��ֲ�������Ч����������֭.")
				
	MisBeginCondition(NoMission, 1182)
	MisBeginCondition(NoRecord,1182)
	MisBeginCondition(HasRecord, 1181)
	MisBeginAction(AddMission,1182)
	MisCancelAction(ClearMission, 1182)

	MisNeed(MIS_NEED_DESP, "�ҵ¶�άƽԭ��Ѳ�߱�������˹(2065,2732)����")
	
	MisHelpTalk("<t>���������Ϣ��ܸ���Ȥ��.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------�罻��ʹ4--------Ѳ�߱�������˹
	DefineMission(5696, "�罻��ʹ4", 1182, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>����?������ֲ��,����Ϊʲô�������һЩ����,�������н���������.����һ�����С����.")
	MisResultCondition(NoRecord, 1182)
	MisResultCondition(HasMission,1182)
	MisResultAction(ClearMission,1182)
	MisResultAction(SetRecord, 1182)


	----------------------------------------------------------�罻��ʹ5----------Ѳ�߱�������˹
	DefineMission( 5697, "�罻��ʹ5", 1183 )
	MisBeginTalk("<t>��˵�¿�?����¿���ʶ������,����һ���ܲ���������,��Ȼ����ţ,ȴ��һ������ϵ�����.��һ����ȥ�μ������ɶ�.�������Ը�����֪ͨ��������˹,���������ʶ̫��,��Ҫ����ȥ����һ�����.")
				
	MisBeginCondition(NoMission, 1183)
	MisBeginCondition(NoRecord,1183)
	MisBeginCondition(HasRecord, 1182)
	MisBeginAction(AddMission,1183)
	MisCancelAction(ClearMission, 1183)

	MisNeed(MIS_NEED_DESP, "���ϲ�ɳĮ�Ķ�������˹(1131,3153)����")
	
	MisHelpTalk("<t>��������˹�Ǹ��Ӳ�������С��,Ӧ����¿�ѧϰ.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------�罻��ʹ5--------��������˹
	DefineMission(5698, "�罻��ʹ5", 1183, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>���Ӳ�����?�������������ø�������ͬ����?")
	MisResultCondition(NoRecord, 1183)
	MisResultCondition(HasMission,1183)
	MisResultAction(ClearMission,1183)
	MisResultAction(SetRecord, 1183)


	----------------------------------------------------------�罻��ʹ6----------��������˹
	DefineMission( 5699, "�罻��ʹ6", 1184 )
	MisBeginTalk("<t>��ʵ��������ǮҲ���ҵ�ԭ��,׷�����������ǲ���ֻ�����Ե�,�����Ǹ��ɰ���Ů��,�Ҳ�Ҫ���ܿ�.��֪������û������.")
				
	MisBeginCondition(NoMission, 1184)
	MisBeginCondition(NoRecord,1184)
	MisBeginCondition(HasRecord, 1183)
	MisBeginAction(AddMission,1184)
	MisCancelAction(ClearMission, 1184)

	MisNeed(MIS_NEED_DESP, "������(798,369)����")
	
	MisHelpTalk("<t>������һ���������ŵ���������.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------�罻��ʹ6--------����
	DefineMission(5700, "�罻��ʹ6", 1184, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>��Ȼ����Ӧ���п�����ػ����ۺ���ʱ�,�������Ҳ�������Ҫ��.")
	MisResultCondition(NoRecord, 1184)
	MisResultCondition(HasMission,1184)
	MisResultAction(ClearMission,1184)
	MisResultAction(SetRecord, 1184)


	----------------------------------------------------------�罻��ʹ7----------����
	DefineMission( 5701, "�罻��ʹ7", 1185 )
	MisBeginTalk("<t>�����崿���������СŮ��,���й��ڰ��������ĺ���ʵ�Ĺ����Ҷ���ͨ���Ų��������˽⵽��.")
				
	MisBeginCondition(NoMission, 1185)
	MisBeginCondition(NoRecord,1185)
	MisBeginCondition(HasRecord, 1184)
	MisBeginAction(AddMission,1185)
	MisCancelAction(ClearMission, 1185)

	MisNeed(MIS_NEED_DESP, "�Ҽ��ɵĹŲ���(1507,3105)����")
	
	MisHelpTalk("<t>�Ҵ�û������λ��ѧ��ʦ,�����Ҳ�����һ����һλ�������ص���������.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------�罻��ʹ7--------�Ų���
	DefineMission(5702, "�罻��ʹ7", 1185, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>�ҵ���ʵ��������?�ҵĶ���̫����.���������������ˮ׼���Ҷ����������ȼ������.")
	MisResultCondition(NoRecord, 1185)
	MisResultCondition(HasMission,1185)
	MisResultAction(ClearMission,1185)
	MisResultAction(SetRecord, 1185)


	----------------------------------------------------------�罻��ʹ8----------�Ų���
	DefineMission( 5703, "�罻��ʹ8", 1186 )
	MisBeginTalk("<t>��ʵ��ԭ���������������������,���Ǵκ��Ѻ�Ʈ����������ɵ�,�Һ͵¿˱�Ī������Ļ�������ò.��֪������һﶮ�����ñ���,���ǿ���������,�Ǹ�ȥ��һ����.�㲻��?����������֤��.")
				
	MisBeginCondition(NoMission, 1186)
	MisBeginCondition(NoRecord,1186)
	MisBeginCondition(HasRecord, 1185)
	MisBeginAction(AddMission,1186)
	MisCancelAction(ClearMission, 1186)

	MisNeed(MIS_NEED_DESP, "�ұ�ѩ������ָ�ӡ�����(2372,737)����")
	
	MisHelpTalk("<t>�Һû����ҵ�����!")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------�罻��ʹ8--------����ָ�ӡ�����
	DefineMission(5704, "�罻��ʹ8", 1186, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>�Ų����͵¿˻���?���ǵ���,ÿ�쾭��������˶��ܶ�.˵ʵ�����ǵ�����������������ʲô����,Ҳ��̸����˭����.�Ǻ�")
	MisResultCondition(NoRecord, 1186)
	MisResultCondition(HasMission,1186)
	MisResultAction(ClearMission,1186)
	MisResultAction(SetRecord, 1186)


	----------------------------------------------------------�罻��ʹ9----------����ָ�ӡ�����
	DefineMission( 5705, "�罻��ʹ9", 1187 )
	MisBeginTalk("<t>�̺������˵Ļ���,�ƾ��Ǻ����Ļ��,�о����ǲ��������.��֪���ҵ�������˶���������������ɽ�᲻��μ�,��Ȼ��������������������.����ɰ�������...")
				
	MisBeginCondition(NoMission, 1187)
	MisBeginCondition(NoRecord,1187)
	MisBeginCondition(HasRecord, 1186)
	MisBeginAction(AddMission,1187)
	MisCancelAction(ClearMission, 1187)

	MisNeed(MIS_NEED_DESP, "�Ұ�����˹��ԭ�Ĳ�ݮ����(1010,350)����")
	
	MisHelpTalk("<t>���ż�ֱ�Ǳ�ѩ��ʢ����õ��.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------�罻��ʹ9--------��ݮ����
	DefineMission(5706, "�罻��ʹ9", 1187, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>�����в���үү˵����ô�ɰ���?����Ϊ��ϲ���Ҳ�Խ�������ҿɰ�.")
	MisResultCondition(NoRecord, 1187)
	MisResultCondition(HasMission,1187)
	MisResultAction(ClearMission,1187)
	MisResultAction(SetRecord, 1187)

	----------------------------------------------------------�罻��ʹ10----------��ݮ����
	DefineMission( 5707, "�罻��ʹ10", 1188 )
	MisBeginTalk("<t>�¿��������ĺ�����?��Ҳ��������?����ҪΪ��׼��������...��ʲô������?�а취��,���������������������,�����к���Ȥ��ֽ��.���뺣������ϲ��ֽ����Ϸ��.")
				
	MisBeginCondition(NoMission, 1188)
	MisBeginCondition(NoRecord,1188)
	MisBeginCondition(HasRecord, 1187)
	MisBeginAction(AddMission,1188)
	MisCancelAction(ClearMission, 1188)

	MisNeed(MIS_NEED_DESP, "�ұ���ƽԭ����������(1136,2778)����")
	
	MisHelpTalk("<t>��֪�����������ϲ��ϰ�ֽ���͸�����...")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------�罻��ʹ10--------��������
	DefineMission(5708, "�罻��ʹ10", 1188, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>����Ҳע�⵽�ҵĲŻ���?���гɾ͸а�!")
	MisResultCondition(NoRecord, 1188)
	MisResultCondition(HasMission,1188)
	MisResultAction(ClearMission,1188)
	MisResultAction(SetRecord, 1188)

	----------------------------------------------------------�罻��ʹ11----------��������
	DefineMission( 5709, "�罻��ʹ11", 1189 )
	MisBeginTalk("<t>�Ҳ���������������СŮ��һ����ȥ�μӺ�����Party,�һ������������һ��ȥ��.˵��ʥ����ʹ������һ����,����ԭ�Ͻ�ȱ,���Ҫ��������Ա��������˹�Ļ�����ܲ��ᰴʱ�͵���,�����·����ɳ������˵��һ�º���?��������.")
				
	MisBeginCondition(NoMission, 1189)
	MisBeginCondition(NoRecord,1189)
	MisBeginCondition(HasRecord, 1188)
	MisBeginAction(AddMission,1189)
	MisCancelAction(ClearMission, 1189)

	MisNeed(MIS_NEED_DESP, "����ɳ���Ľ���Ա��������˹(1739,3748)����")
	
	MisHelpTalk("<t>������ӿ������ͺ�ֵ���и�.����Ա��������˹����ɳ��.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------�罻��ʹ11--------����Ա��������˹
	DefineMission(5710, "�罻��ʹ11", 1189, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>��Ҫ��ʱ!��������Ϊ�˿ɰ���Ů��ʲô�����Է���,����������������ѵ�����...")
	MisResultCondition(NoRecord, 1189)
	MisResultCondition(HasMission,1189)
	MisResultAction(ClearMission,1189)
	MisResultAction(SetRecord, 1189)

	----------------------------------------------------------�罻��ʹ12----------����Ա��������˹
	DefineMission( 5711, "�罻��ʹ12", 1190 )
	MisBeginTalk("<t>�������������Ҳû��̫���¿�������.�һ�ȥ�μӵ¿˵�����,�ܾ�ûȥ�ݷù�������.�Ų���Ҳȥ��?̫����,�����Ʒ���ˡ����Ҳ�ܲμ�,�ǽ���һ��������ʥ����.")
				
	MisBeginCondition(NoMission, 1190)
	MisBeginCondition(NoRecord,1190)
	MisBeginCondition(HasRecord, 1189)
	MisBeginAction(AddMission,1190)
	MisCancelAction(ClearMission, 1190)

	MisNeed(MIS_NEED_DESP, "�ұ�������վ����Ʒ���ˡ����(2673,657)����")
	
	MisHelpTalk("<t>��������ȥ�Ļ��һ�����ź���,ϣ������԰���.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------�罻��ʹ12--------��Ʒ���ˡ����
	DefineMission(5712, "�罻��ʹ12", 1190, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>������,������˹����һ�����˵��Щ���˸ж��Ļ�.������.")
	MisResultCondition(NoRecord, 1190)
	MisResultCondition(HasMission,1190)
	MisResultAction(ClearMission,1190)
	MisResultAction(SetRecord, 1190)


	----------------------------------------------------------�罻��ʹ13----------��Ʒ���ˡ����
	DefineMission( 5713, "�罻��ʹ13", 1191 )
	MisBeginTalk("<t>�����Ƕ��꾭Ӫ�鱦��Ʒʹ�ҵ��Ը�ҲŮ�Ի���.Ϊ�����Լ�ʼ�ձ������ӵ�����,��������ʼ��������ζʮ��Ŀ��ݡ���ʯ��������.")
				
	MisBeginCondition(NoMission, 1191)
	MisBeginCondition(NoRecord,1191)
	MisBeginCondition(HasRecord, 1190)
	MisBeginAction(AddMission,1191)
	MisCancelAction(ClearMission, 1191)

	MisNeed(MIS_NEED_DESP, "�ҿ����ӵ²���վ�Ŀ��ݡ���ʯ(626,2100)����")
	
	MisHelpTalk("<t>�����˳�㵽�����ӵ²���վתת,�����������·��.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------�罻��ʹ13--------���ݡ���ʯ
	DefineMission(5714, "�罻��ʹ13", 1191, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>���ﲻ��һ���ʺ������ס�ĵط�,�����ǵ��㲻ϲ������ھ�ʱ,���ָо��͸�ǿ��.")
	MisResultCondition(NoRecord, 1191)
	MisResultCondition(HasMission,1191)
	MisResultAction(ClearMission,1191)
	MisResultAction(SetRecord, 1191)

	----------------------------------------------------------�罻��ʹ14----------���ݡ���ʯ
	DefineMission( 5715, "�罻��ʹ14", 1192 )
	MisBeginTalk("<t>�оۻ���Բμ�?��Ȼ���кܾòŵ�ʥ����,�������������Ϣ��Ȼ���Ҿ��ú����,���ٿ���Զ��ĳ����.���뽻��Ա���ȿ�Ҳ����ѵ�,������ȥ������.")
				
	MisBeginCondition(NoMission, 1192)
	MisBeginCondition(NoRecord,1192)
	MisBeginCondition(HasRecord, 1191)
	MisBeginAction(AddMission,1192)
	MisCancelAction(ClearMission, 1192)

	MisNeed(MIS_NEED_DESP, "���氮���Ľ���Ա���ȿ�(2519,2397)����")
	
	MisHelpTalk("<t>�氮���ĵ��������ε�,��֪����?")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------�罻��ʹ14--------����Ա���ȿ�        
	DefineMission(5716, "�罻��ʹ14", 1192, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>��Ϳ��ݡ���ʯ�����ҵľ��ǰ������ڶ��ҵ�ծ��,�ҳ����Ҳ���һ���ɹ��Ľ���Ա,�������Ȿ������.��¹�ʥ�������˱�ծ��.")
	MisResultCondition(NoRecord, 1192)
	MisResultCondition(HasMission,1192)
	MisResultAction(ClearMission,1192)
	MisResultAction(SetRecord, 1192)

	----------------------------------------------------------�罻��ʹ15----------����Ա���ȿ�
	DefineMission( 5717, "�罻��ʹ15", 1193 )
	MisBeginTalk("<t>��˽�˾ۻ�û�������ĵ��Ŀɲ���,Ϊ���Ǹ����õ�����,����Ϊ��Ӧ�ð��������������ζ���ĵ���������.")
				
	MisBeginCondition(NoMission, 1193)
	MisBeginCondition(NoRecord,1193)
	MisBeginCondition(HasRecord, 1192)
	MisBeginAction(AddMission,1193)
	MisCancelAction(ClearMission, 1193)

	MisNeed(MIS_NEED_DESP, "�Ұ�����˹����վ����������(1059,661)����")
	
	MisHelpTalk("<t>��������,Ϊ����ζ�ĵ���.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------�罻��ʹ15-------- ��������
	DefineMission(5718, "�罻��ʹ15", 1193, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>��Щ����ľۻ�������Ӧ������Ϊ��ζ�ĵ���.")
	MisResultCondition(NoRecord, 1193)
	MisResultCondition(HasMission,1193)
	MisResultAction(ClearMission,1193)
	MisResultAction(SetRecord, 1193)


	----------------------------------------------------------�罻��ʹ16----------��������
	DefineMission( 5719, "�罻��ʹ16", 1194 )
	MisBeginTalk("<t>���������͵���������?���Ѿ�����������,�Ͽ󲹸�վ�Ĵ���ˡ����մ����ҵ�ѧͽ,��ȥ��������.")
				
	MisBeginCondition(NoMission, 1194)
	MisBeginCondition(NoRecord,1194)
	MisBeginCondition(HasRecord, 1193)
	MisBeginAction(AddMission,1194)
	MisCancelAction(ClearMission, 1194)

	MisNeed(MIS_NEED_DESP, "�ҷϿ󲹸�վ�Ĵ���ˡ����մ�(1907,2798)����")
	
	MisHelpTalk("<t>Ҳ���Ƕ�������ʱ����.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------�罻��ʹ16-------- ����ˡ����մ�
	DefineMission(5720, "�罻��ʹ16", 1194, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>�ҵ�ȷ�̳�������ʦ�ľ�տ����,���İ�,����������.")
	MisResultCondition(NoRecord, 1194)
	MisResultCondition(HasMission,1194)
	MisResultAction(ClearMission,1194)
	MisResultAction(SetRecord, 1194)


	----------------------------------------------------------�罻��ʹ17----------����ˡ����մ�
	DefineMission( 5721, "�罻��ʹ17", 1195 )
	MisBeginTalk("<t>��������Ҫһ����������ְ�æ.����׶�����æ�Ļ�,��Ӧ���������ѡ.")
				
	MisBeginCondition(NoMission, 1195)
	MisBeginCondition(NoRecord,1195)
	MisBeginCondition(HasRecord, 1194)
	MisBeginAction(AddMission,1195)
	MisCancelAction(ClearMission, 1195)

	MisNeed(MIS_NEED_DESP, "���ϲ�ɳĮ���׶�����(1244,3186)����")
	
	MisHelpTalk("<t>�׶�������һ����ϸ�Ĳ��Һ������ĵ�Ů��.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------�罻��ʹ17-------- �׶�����
	DefineMission(5722, "�罻��ʹ17", 1195, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>���!��ӭ������.�ҽ��ܺ��մ������,��Ϊ�ҶԹ�������������������.")
	MisResultCondition(NoRecord, 1195)
	MisResultCondition(HasMission,1195)
	MisResultAction(ClearMission,1195)
	MisResultAction(SetRecord, 1195)

	----------------------------------------------------------�罻��ʹ18----------�׶�����
	DefineMission( 5723, "�罻��ʹ18", 1196 )
	MisBeginTalk("<t>��������������Ƭ�λõ��ϲ�ɳĮһ����ļ�����,Ҫ��ô��ף��?��������Ҫ����Ҫ��л����ָ�ӡ�������,����ָ�������������.������ʵ���߲���,��������ְҵ��ʦ��רְ������.���������Ұ�.")
				
	MisBeginCondition(NoMission, 1196)
	MisBeginCondition(NoRecord,1196)
	MisBeginCondition(HasRecord, 1195)
	MisBeginAction(AddMission,1196)
	MisCancelAction(ClearMission, 1196)

	MisNeed(MIS_NEED_DESP, "��˼˼������վ�ĺ���ָ�ӡ�������(2297,3723)����")
	
	MisHelpTalk("<t>���Ȱ��ҵĹ���������,��л��Ƭ����������.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------�罻��ʹ18-------- ����ָ�ӡ�������
	DefineMission(5724, "�罻��ʹ18", 1196, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>ʱ����úÿ찡.ת���Ѿ�һ����,�Ǹ�СŮ����Ȼ���ǵ���.�Ǻ�....")
	MisResultCondition(NoRecord, 1196)
	MisResultCondition(HasMission,1196)
	MisResultAction(ClearMission,1196)
	MisResultAction(SetRecord, 1196)

	----------------------------------------------------------�罻��ʹ19----------����ָ�ӡ�������
	DefineMission( 5725, "�罻��ʹ19", 1197 )
	MisBeginTalk("<t>ʱ�����,�Ҹյ������ʱ����һ��С����.�ܻ����ǰ��������.��֪�����ô���ʹ���ڹ�����ô����.")
				
	MisBeginCondition(NoMission, 1197)
	MisBeginCondition(NoRecord,1197)
	MisBeginCondition(HasRecord, 1196)
	MisBeginAction(AddMission,1197)
	MisCancelAction(ClearMission, 1197)

	MisNeed(MIS_NEED_DESP, "�����ô���ʹ(474,1054)����")
	
	MisHelpTalk("<t>����ְλ��һ������Ҫ��λ��.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------�罻��ʹ19-------- ���ô���ʹ
	DefineMission(5726, "�罻��ʹ19", 1197, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>��֪�������ϵ�ʱ���Ƿ�Ҳ���������Ӱ.")
	MisResultCondition(NoRecord, 1197)
	MisResultCondition(HasMission,1197)
	MisResultAction(ClearMission,1197)
	MisResultAction(SetRecord, 1197)


		----------------------------------------------------------�罻��ʹ20----------���ô���ʹ
	DefineMission( 5727, "�罻��ʹ20", 1198 )
	MisBeginTalk("<t>��������ʥ����һ�������,ɣ������Ӧ�͸���һЩ�������̻���,��֪�������ǲ��ǵ���.")
				
	MisBeginCondition(NoMission, 1198)
	MisBeginCondition(NoRecord,1198)
	MisBeginCondition(HasRecord, 1197)
	MisBeginAction(AddMission,1198)
	MisCancelAction(ClearMission, 1198)

	MisNeed(MIS_NEED_DESP, "�ҽ���Ա��ɣ��(1003,1306)����")
	
	MisHelpTalk("<t>лл��������.ȥ��")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------�罻��ʹ20-------- ����Ա��ɣ��
	DefineMission(5728, "�罻��ʹ20", 1198, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>����ô��������?�����ǰ�������,�Ҳ�������ʧ����.")
	MisResultCondition(NoRecord, 1198)
	MisResultCondition(HasMission,1198)
	MisResultAction(ClearMission,1198)
	MisResultAction(SetRecord, 1198)

		----------------------------------------------------------�罻��ʹ21----------����Ա��ɣ��
	DefineMission( 5729, "�罻��ʹ21", 1199 )
	MisBeginTalk("<t>��ϲ��������������罻���񣮸ж���ÿһ���Ȱ�����������е�����,��Ϊӵ����,���ǻ�����Ҹ�.���������ʱ����,�¿��ڵ�����.")
				
	MisBeginCondition(NoMission, 1199)
	MisBeginCondition(NoRecord,1199)
	MisBeginCondition(HasRecord, 1198)
	MisBeginAction(AddMission,1199)
	MisCancelAction(ClearMission, 1199)

	MisNeed(MIS_NEED_DESP, "��ɳᰳǺ������¿�(794,3669)����")
	
	MisHelpTalk("<t>�¿����������.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------�罻Ӣ��21------- �������¿�
	DefineMission(5730, "�罻Ӣ��21", 1199, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>�����Ҽ��������ɫ���罻��ʹ,��öѫ������֮����.")
	MisResultCondition(NoRecord, 1199)
	MisResultCondition(HasMission,1199)
	MisResultAction(ClearMission,1199)
	MisResultAction(SetRecord, 1199)
	MisResultAction(GiveItem, 1879, 1, 4)
	MisResultBagNeed(1)


-------------------------------------------------�ر�����	--------�������¿�
	DefineMission (5731, "�λ�˫��֮�ر��ж�", 1200)
	
	MisBeginTalk("<t>��������ǽ�ţ���ر��ж�,����Բ��μ�,��Ȼ���μӵ�û��������.��֪��<b�����>���ֶ�����?�Ҽ���һ��,��һ��Ը����ҵ��ǰ�.")

	MisBeginCondition(NoMission,1200)
	MisBeginCondition(NoRecord,1200)
	MisBeginCondition(HasRecord,1161)
	MisBeginCondition(HasRecord,1174)
	MisBeginCondition(HasRecord,1175)
	MisBeginCondition(HasRecord,1176)
	MisBeginCondition(HasRecord,1177)
	MisBeginCondition(HasRecord,1178)
	MisBeginCondition(HasRecord,1199)
	MisBeginCondition(HasRecord,1168)
	MisBeginAction(AddMission,1200)
	MisBeginAction(AddTrigger, 12001, TE_GETITEM, 0854, 1 )---------------------����� 
	MisCancelAction(ClearMission, 1200)
	
	
	MisNeed(MIS_NEED_ITEM, 0854, 1, 1, 1 )
	MisHelpTalk("<t>�Ҳ���һ����Ǯ����,����ϲ���ղس�Ʊ...")

	MisResultTalk("<t>�������������ִ󷽵���,Ҳֻ�д󷽵����䴩����˫�ӿ�װ.")

	MisResultCondition(HasMission, 1200)
	MisResultCondition(NoRecord,1200)
	MisResultCondition(HasItem, 0854, 1 )
	MisResultAction(TakeItem, 0854, 1 )
	MisResultAction(GiveItem, 1881, 1, 4)
	MisResultAction(ClearMission, 1200)
	MisResultAction(SetRecord,  1200 )
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 0854)	
	TriggerAction( 1, AddNextFlag, 1200, 1, 1 )
	RegCurTrigger( 12001 )	


	
-------------------------------------------------˫��֮ˮ�ֹ��ؽ���----------�������¿�	
	DefineMission (5733, "˫��֮ˮ�ֹ��ؽ���", 1201)
	
	MisBeginTalk("<t>����7öѫ�¾Ϳ�����������һ���˫�ӹ���ӡ�;�з������Ʊ��.���кཱܶ��Ŷ ")

	MisBeginCondition(NoMission,1201)
	MisBeginCondition(HasRecord,1159)
	MisBeginCondition(HasRecord,1163)
	MisBeginCondition(HasRecord,1164)
	MisBeginCondition(HasRecord,1165)
	MisBeginCondition(HasRecord,1166)
	MisBeginCondition(HasRecord,1167)
	MisBeginCondition(HasRecord,1168)
	MisBeginCondition(HasRecord,1199)
	MisBeginCondition(NoRecord,1201)
	MisBeginAction(AddMission,1201)  
	MisBeginAction(AddTrigger, 12011, TE_GETITEM, 1874, 1 )		
	MisBeginAction(AddTrigger, 12012, TE_GETITEM, 1875, 1 )		
	MisBeginAction(AddTrigger, 12013, TE_GETITEM, 1876, 1 )		
 	MisBeginAction(AddTrigger, 12014, TE_GETITEM, 1877, 1 )		
	MisBeginAction(AddTrigger, 12015, TE_GETITEM, 1878, 1 )		
	MisBeginAction(AddTrigger, 12016, TE_GETITEM, 1879, 1 )		
	MisBeginAction(AddTrigger, 12017, TE_GETITEM, 1880, 1 )	
	MisCancelAction(ClearMission, 1201)						                                     
	
	MisNeed(MIS_NEED_ITEM, 1874, 1, 10, 1 )
	MisNeed(MIS_NEED_ITEM, 1875, 1, 20, 1 )
	MisNeed(MIS_NEED_ITEM, 1876, 1, 30, 1 )
	MisNeed(MIS_NEED_ITEM, 1877, 1, 40, 1 )
	MisNeed(MIS_NEED_ITEM, 1878, 1, 50, 1)
	MisNeed(MIS_NEED_ITEM, 1879, 1, 60, 1 )
	MisNeed(MIS_NEED_ITEM, 1880, 1, 70, 1 )
	
	MisHelpTalk("<t>������ԥʲô?�����һ�������")
	MisResultTalk("<t>��һ���Ǿ�з��,�и����˵Ľ����͸��̼�����ս�ڵ���.")

	MisResultCondition(HasMission, 1201)
	MisResultCondition(NoRecord,1201)
	MisResultCondition(HasItem, 1874, 1 )
	MisResultCondition(HasItem, 1875, 1 )
	MisResultCondition(HasItem, 1876, 1 )
	MisResultCondition(HasItem, 1877, 1 )
	MisResultCondition(HasItem, 1878, 1 )
	MisResultCondition(HasItem, 1879, 1 )
	MisResultCondition(HasItem, 1880, 1 )

	MisResultAction(TakeItem, 1874, 1 )
	MisResultAction(TakeItem, 1875, 1 )
	MisResultAction(TakeItem, 1876, 1 )
	MisResultAction(TakeItem, 1877, 1 )
	MisResultAction(TakeItem, 1878, 1 )
	MisResultAction(TakeItem, 1879, 1 )
	MisResultAction(TakeItem, 1880, 1 )

	MisResultAction(ClearMission, 1201)
	MisResultAction(SetRecord,  1201 )
	MisResultAction(GiveItem, 1865, 1, 4)
	MisResultAction(GiveItem, 1866, 1, 4)
	MisResultAction(GiveItem, 1002, 30, 4)
	MisResultAction(AddMoney,500000,500000)
	MisResultAction(ShuangZiSS)
	MisResultBagNeed(3)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1874)	
	TriggerAction( 1, AddNextFlag, 1201, 10, 1 )
	RegCurTrigger( 12011 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1875)	
	TriggerAction( 1, AddNextFlag, 1201, 20, 1 )
	RegCurTrigger( 12012 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1876)	
	TriggerAction( 1, AddNextFlag, 1201, 30, 1 )
	RegCurTrigger( 12013 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1877)	
	TriggerAction( 1, AddNextFlag, 1201, 40, 1 )
	RegCurTrigger( 12014 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1878)	
	TriggerAction( 1, AddNextFlag, 1201, 50, 1 )
	RegCurTrigger( 12015 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1879)	
	TriggerAction( 1, AddNextFlag, 1201, 60, 1 )
	RegCurTrigger( 12016 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1880)	
	TriggerAction( 1, AddNextFlag, 1201, 70, 1 )
	RegCurTrigger( 12017 )
----------------------------------------------˫��֮�������ؽ���----------�������¿�	
	DefineMission (5734, "˫��֮�������ؽ���", 1202)
	
	MisBeginTalk("<t>����7öѫ�¾Ϳ�����������һ���˫�ӹ���ӡ�;�з������Ʊ��.���кཱܶ��Ŷ ")

	MisBeginCondition(NoMission,1202)
	MisBeginCondition(HasRecord,1204)
	MisBeginCondition(HasRecord,1169)
	MisBeginCondition(HasRecord,1170)
	MisBeginCondition(HasRecord,1171)
	MisBeginCondition(HasRecord,1172)
	MisBeginCondition(HasRecord,1173)
	MisBeginCondition(HasRecord,1168)
	MisBeginCondition(HasRecord,1199)
	MisBeginCondition(NoRecord,1202)
	MisBeginAction(AddMission,1202)
	MisBeginAction(AddTrigger, 11571, TE_GETITEM, 1874, 1 )		
	MisBeginAction(AddTrigger, 11572, TE_GETITEM, 1875, 1 )		
	MisBeginAction(AddTrigger, 11573, TE_GETITEM, 1876, 1 )		
 	MisBeginAction(AddTrigger, 11574, TE_GETITEM, 1877, 1 )		
	MisBeginAction(AddTrigger, 11575, TE_GETITEM, 1878, 1 )		
	MisBeginAction(AddTrigger, 11576, TE_GETITEM, 1879, 1 )		
	MisBeginAction(AddTrigger, 11577, TE_GETITEM, 1880, 1 )		
	MisCancelAction(ClearMission, 1202)						                                     
	
	MisNeed(MIS_NEED_ITEM, 1874, 1, 10, 1 )
	MisNeed(MIS_NEED_ITEM, 1875, 1, 20, 1 )
	MisNeed(MIS_NEED_ITEM, 1876, 1, 30, 1 )
	MisNeed(MIS_NEED_ITEM, 1877, 1, 40, 1 )
	MisNeed(MIS_NEED_ITEM, 1878, 1, 50, 1)
	MisNeed(MIS_NEED_ITEM, 1879, 1, 60, 1 )
	MisNeed(MIS_NEED_ITEM, 1880, 1, 70, 1 )
	
	MisHelpTalk("<t>������ԥʲô?�����һ�������")
	MisResultTalk("<t>��һ���Ǿ�з��,�и����˵Ľ����͸��̼�����ս�ڵ���.")

	MisResultCondition(HasMission, 1202)
	MisResultCondition(NoRecord,1202)
	MisResultCondition(HasItem, 1874, 1 )
	MisResultCondition(HasItem, 1875, 1 )
	MisResultCondition(HasItem, 1876, 1 )
	MisResultCondition(HasItem, 1877, 1 )
	MisResultCondition(HasItem, 1878, 1 )
	MisResultCondition(HasItem, 1879, 1 )
	MisResultCondition(HasItem, 1880, 1 )

	MisResultAction(TakeItem, 1874, 1 )
	MisResultAction(TakeItem, 1875, 1 )
	MisResultAction(TakeItem, 1876, 1 )
	MisResultAction(TakeItem, 1877, 1 )
	MisResultAction(TakeItem, 1878, 1 )
	MisResultAction(TakeItem, 1879, 1 )
	MisResultAction(TakeItem, 1880, 1 )

	MisResultAction(ClearMission, 1202)
	MisResultAction(SetRecord,  1202 )
	MisResultAction(GiveItem, 1865, 1, 4)
	MisResultAction(GiveItem, 1866, 1, 4)
	MisResultAction(GiveItem, 1002, 60, 4)
	MisResultAction(AddMoney,700000,700000)
	MisResultAction(ShuangZiHD)
	MisResultBagNeed(3)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1874)	
	TriggerAction( 1, AddNextFlag, 1157, 10, 1 )
	RegCurTrigger( 12021 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1875)	
	TriggerAction( 1, AddNextFlag, 1202, 20, 1 )
	RegCurTrigger( 12022 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1876)	
	TriggerAction( 1, AddNextFlag, 1202, 30, 1 )
	RegCurTrigger( 12023 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1877)	
	TriggerAction( 1, AddNextFlag, 1202, 40, 1 )
	RegCurTrigger( 12024 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1878)	
	TriggerAction( 1, AddNextFlag, 1202, 50, 1 )
	RegCurTrigger( 12025 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1879)	
	TriggerAction( 1, AddNextFlag, 1202, 60, 1 )
	RegCurTrigger( 12026 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1880)	
	TriggerAction( 1, AddNextFlag, 1202, 70, 1 )
	RegCurTrigger( 12027 )

	--------------------------------------------˫��֮�������ؽ���----------�������¿�	
	DefineMission (5735, "˫��֮�������ؽ���", 1203)
	
	MisBeginTalk("<t>����7öѫ�¾Ϳ�����������һ���˫�ӹ���ӡ�;�з������Ʊ��.���кཱܶ��Ŷ ")

	MisBeginCondition(NoMission,1203)
	MisBeginCondition(HasRecord,1161)
	MisBeginCondition(HasRecord,1174)
	MisBeginCondition(HasRecord,1175)
	MisBeginCondition(HasRecord,1176)
	MisBeginCondition(HasRecord,1177)
	MisBeginCondition(HasRecord,1178)
	MisBeginCondition(HasRecord,1199)
	MisBeginCondition(HasRecord,1168)
	MisBeginCondition(NoRecord,1203)
	MisBeginAction(AddMission,1203)   
	MisBeginAction(AddTrigger, 11581, TE_GETITEM, 1874, 1 )		
	MisBeginAction(AddTrigger, 11582, TE_GETITEM, 1875, 1 )		
	MisBeginAction(AddTrigger, 11583, TE_GETITEM, 1876, 1 )		
 	MisBeginAction(AddTrigger, 11584, TE_GETITEM, 1877, 1 )		
	MisBeginAction(AddTrigger, 11585, TE_GETITEM, 1878, 1 )		
	MisBeginAction(AddTrigger, 11586, TE_GETITEM, 1879, 1 )		
	MisBeginAction(AddTrigger, 11587, TE_GETITEM, 1880, 1 )	
	MisCancelAction(ClearMission, 1203)						                                     
	
	MisNeed(MIS_NEED_ITEM, 1874, 1, 10, 1 )
	MisNeed(MIS_NEED_ITEM, 1875, 1, 20, 1 )
	MisNeed(MIS_NEED_ITEM, 1876, 1, 30, 1 )
	MisNeed(MIS_NEED_ITEM, 1877, 1, 40, 1 )
	MisNeed(MIS_NEED_ITEM, 1878, 1, 50, 1)
	MisNeed(MIS_NEED_ITEM, 1879, 1, 60, 1 )
	MisNeed(MIS_NEED_ITEM, 1880, 1, 70, 1 )
	
	MisHelpTalk("<t>������ԥʲô?�����һ�������")
	MisResultTalk("<t>��һ���Ǿ�з��,�и����˵Ľ����͸��̼�����ս�ڵ���.")

	MisResultCondition(HasMission, 1203)
	MisResultCondition(NoRecord,1203)
	MisResultCondition(HasItem, 1874, 1 )
	MisResultCondition(HasItem, 1875, 1 )
	MisResultCondition(HasItem, 1876, 1 )
	MisResultCondition(HasItem, 1877, 1 )
	MisResultCondition(HasItem, 1878, 1 )
	MisResultCondition(HasItem, 1879, 1 )
	MisResultCondition(HasItem, 1880, 1 )

	MisResultAction(TakeItem, 1874, 1 )
	MisResultAction(TakeItem, 1875, 1 )
	MisResultAction(TakeItem, 1876, 1 )
	MisResultAction(TakeItem, 1877, 1 )
	MisResultAction(TakeItem, 1878, 1 )
	MisResultAction(TakeItem, 1879, 1 )
	MisResultAction(TakeItem, 1880, 1 )

	MisResultAction(ClearMission, 1203)
	MisResultAction(SetRecord,  1203 )
	MisResultAction(GiveItem, 1865, 1, 4)
	MisResultAction(GiveItem, 1866, 1, 4)
	MisResultAction(GiveItem, 1002, 90, 4)
	MisResultAction(AddMoney,900000,900000)
	MisResultAction(ShuangZiCZ)
	MisResultBagNeed(3)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1874)	
	TriggerAction( 1, AddNextFlag, 1203, 10, 1 )
	RegCurTrigger( 12031 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1875)	
	TriggerAction( 1, AddNextFlag, 1203, 20, 1 )
	RegCurTrigger( 12032 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1876)	
	TriggerAction( 1, AddNextFlag, 1203, 30, 1 )
	RegCurTrigger( 12033 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1877)	
	TriggerAction( 1, AddNextFlag, 1203, 40, 1 )
	RegCurTrigger( 12034 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1878)	
	TriggerAction( 1, AddNextFlag, 1203, 50, 1 )
	RegCurTrigger( 12035 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1879)	
	TriggerAction( 1, AddNextFlag, 1203, 60, 1 )
	RegCurTrigger( 12036 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1880)	
	TriggerAction( 1, AddNextFlag, 1203, 70, 1 )
	RegCurTrigger( 12037 )

	----------------------------------�����䴫��--------����
	DefineMission ( 5736, "�����䴫��", 1205)

	MisBeginTalk("<t>��Ϧ����,���һ���ţ��֯Ů�������,�������˸п���.����Ҫ��ţ����֯Ů�������䴫�������?��10������֮����������.")

	MisBeginCondition(NoMission,1205)
	MisBeginCondition(NoRecord,1205)
	MisBeginAction(AddMission,1205)
	MisBeginAction(AddTrigger, 12051, TE_GETITEM, 4418, 10)
	MisCancelAction(ClearMission, 1205)
	

	MisNeed(MIS_NEED_DESP, "ȥ�ҵ�10������֮�������Ͻ������˵İ������")
	MisNeed(MIS_NEED_ITEM, 4418, 10, 10, 10)

	MisHelpTalk("<t>Ҫ10������֮��")
	MisResultTalk("<t>�ұ�֯����������������,���ҷ�������������޹�.�ҿ���һ����������ͷ.") 
	
	MisResultCondition(HasMission, 1205)
	MisResultCondition(NoRecord,1205)
	MisResultCondition(HasItem, 4418, 10)
	MisResultAction(TakeItem, 4418, 10 )
	MisResultAction(ClearMission, 1205)
	MisResultAction(SetRecord, 1205 )
	
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4418)	
	TriggerAction( 1, AddNextFlag, 1205, 10, 10 )
	RegCurTrigger( 12051 )

	-------------------------------ȵ������--------����
	DefineMission( 5737, "ȵ������", 1206)
	
	MisBeginTalk( "<t>�ںܾúܾ���ǰ......����һ������ᴩ�Ĺ���.�˵��顢����顢������顢�˺�����顢������顢а����顢��Թ���顢�������顢������������......<n><t>ȥѰ�ҹ��µ����˹�ţ�ɰ�!��˵�����ĵ�����.")
	MisBeginCondition(HasRecord, 1205 )
	MisBeginCondition(NoRecord, 1206 )
	MisBeginCondition(NoMission, 1206 )
	MisBeginAction(AddMission, 1206 )
	MisCancelAction(ClearMission, 1206)
	
	MisNeed(MIS_NEED_DESP, "�ҵ��ĵ�ţ��(3670,2636)")
	MisHelpTalk("<t>ȥ�ĵ�Ҫ�û�ƱŶ.")
	MisResultCondition(AlwaysFailure )

	---------------------------------------ȵ������-------ţ��

	DefineMission(5738,"ȵ������",1206,COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>�Ҽ������ҵİ��˼���,�����ڴ���!ң�뵱��,��������ǧ�����,���ڻ�����һ��һ�ε����.��Ȼ����,��Ҳֵ��.")
	MisResultCondition(HasMission, 1206)
	MisBeginCondition(NoRecord, 1206)
	MisResultAction(ClearMission, 1206)
	MisResultAction(SetRecord, 1206)


	-------------------------------ǧ�ﴫ��------ţ��
	DefineMission( 5739, "ǧ�ﴫ��", 1207)
	
	MisBeginTalk( "<t>���Ͼ�Ҫ����,��ǧ������Ҫ˵,�Ѿ��Ȳ�������.���ܷ�����Ž���֯Ů����?��������!��������!")
	MisBeginCondition(HasRecord, 1206 )
	MisBeginCondition(NoRecord, 1207 )
	MisBeginCondition(NoMission, 1207 )
	MisBeginAction(AddMission, 1207 )
	MisBeginAction(GiveItem, 2669, 1, 4)----------ţ�ɵ�����
	MisCancelAction(ClearMission, 1207)
	MisBeginBagNeed(1)
	
	MisNeed(MIS_NEED_DESP, "��ţ�����Ÿ����õ�֯Ů(1599,909)")
	MisHelpTalk("<t>һ��һ�ȵ����,�������Щϲȵ.")
	MisResultCondition(AlwaysFailure )

	---------------------------------------ǧ�ﴫ��----֯Ů

	DefineMission(5740,"ǧ�ﴫ��",1207,COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>����ţ�ɸ��ҵ�����?̫����,ʵ�ڸ�л��.��Ϊ�ر�,�ҽ�������Ϊ���֯���������������·�.ҲףԸ�����ҵ�����ֿ��.�����Ҹ��������·�,һ�����Բ�����(��)����.<n><t>��������˽��������Һ�ţ�ɵĹ���,�����ע����Ϊ���ǳ��ĵĵ��Ӿ硶ţ��֯Ů��.")
	MisResultCondition(HasMission, 1207)
	MisBeginCondition(NoRecord, 1207)
	MisResultCondition(HasItem,2669,1)---------ţ�ɵ�����
	MisResultAction(TakeItem, 2669,1)
	MisResultAction(GiveItem, 2670, 1, 4)----------���±���
	MisResultAction(ClearMission, 1207)
	MisResultAction(SetRecord, 1207)
	MisResultAction(ClearRecord, 1205 )
	MisResultAction(ClearRecord, 1206 )
	MisResultAction(ClearRecord, 1207 )
	MisResultBagNeed(1)

-------------------------------------------------------�����ѧ��----------��ŵУ��
	DefineMission( 6127, "�����ѧ��", 1453)
	MisBeginTalk( "<t>��һ��ѧ�꿪ʼ��,С��������������ѧ����Ȥ��?��ô~~�ٺ�,�ȸ���ѧ�Ѱ�,Ҳ����,ֻҪ2�ں����Ҿ�����.ʲô?��ûǮ?��������,ֻҪ��������˼�ȥ��99��ʳ��ˮ�ȹ�����,ѧ�Ѿ����˰�.")
	MisBeginCondition( NoMission, 1453)
	MisBeginCondition( NoRecord, 1453)
	MisBeginAction( AddMission, 1453)
	MisBeginAction(AddTrigger, 14531, TE_GETITEM, 3909, 99)
	MisCancelAction( ClearMission, 1453)

	MisNeed( MIS_NEED_DESP, "��99��ʳ��ˮ��������ŵУ��(2232,2781)")
	MisNeed( MIS_NEED_ITEM, 3909, 99, 10, 99)

	MisHelpTalk( "<t>ʳ��ˮ�ȵĻ���˵�и����ص��̳������������ǵðѱ��������㹻�Ŀո�")
	MisResultTalk( "<t>ˮ����ó�,С�����治����!")
	MisResultCondition( HasMission, 1453)
	MisResultCondition( NoRecord, 1453)
	MisResultCondition( HasItem, 3909, 99)
	MisResultAction( ClearMission, 1453)
	MisResultAction( TakeItem, 3909, 99)
	MisResultAction( SetRecord, 1453)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3909)	
	TriggerAction( 1, AddNextFlag, 1453, 10, 99 )
	RegCurTrigger( 14531 )

-------------------------------------------------------���������----------��ŵУ��
	DefineMission( 6128, "���������", 1454)
	MisBeginTalk( "<t>����ѧ�㻹Ҫ����ʶ�»�鰡,������,ȥ��ʶ4������,Ȼ�������������.")
	MisBeginCondition( NoMission, 1454)
	MisBeginCondition( NoRecord, 1454)
	MisBeginCondition( HasRecord, 1453)
	MisBeginAction( AddMission, 1454)
	MisCancelAction( ClearMission, 1454)

	MisNeed( MIS_NEED_DESP, "��4������Ȼ���ȥ����ŵУ��(2232,2781)̸̸")
	
	MisHelpTalk( "<t>ȥ��4�����Ѱ�!")
	MisResultTalk( "<t>�������������,���л�����,ȥ�����ʶЩ���Ѱ�.")
	MisResultCondition( HasMission, 1454)
	MisResultCondition( NoRecord, 1454)
	MisResultCondition( CheckTeam1, 5)					------����м�������
	MisResultAction( ClearMission, 1454)
	MisResultAction( SetRecord, 1454)

-------------------------------------------------------��������----------��ŵУ��

	DefineMission( 6129, "��������", 1455)
	MisBeginTalk( "<t>��һ����ѧ������ҲҪ��������,ȥ����������10�þ����.")
	MisBeginCondition( NoMission, 1455)
	MisBeginCondition( NoRecord, 1455)
	MisBeginCondition( HasRecord, 1454)
	MisBeginAction( AddMission, 1455)
	MisBeginAction(AddTrigger, 14551, TE_KILL, 75, 10 )
	MisCancelAction( ClearMission, 1455)

	MisNeed( MIS_NEED_DESP, "ȥ����10�þ����(2118,2638)���������ŵУ��.")
	MisNeed( MIS_NEED_KILL, 75, 10, 10, 10)

	MisHelpTalk( "<t>����ݰ������ſھ��кܶ�.")
	MisResultTalk( "<t>��������ĺܽ�׳.")
	MisResultCondition( HasMission, 1455)
	MisResultCondition( NoRecord, 1455)
	MisResultCondition( HasFlag, 1455, 19)
	MisResultAction( ClearMission, 1455)
	MisResultAction( SetRecord, 1455)

	InitTrigger() 
	TriggerCondition( 1, IsMonster, 75 )	
	TriggerAction( 1, AddNextFlag, 1455, 10, 10 )
	RegCurTrigger(14551)

-------------------------------------------------------��ѧ֤��----------��ŵУ��
	DefineMission( 6130, "��ѧ֤��", 1456)
	MisBeginTalk( "<t>��Ȼѧ��Ҳ������,����Ҳ��ʶ��,��������ѧ֤��͸����,����֤��ҲҪ�����ѵ���,������˵�,�����Ű���󳮾�����.")
	MisBeginCondition( NoMission, 1456)
	MisBeginCondition( NoRecord, 1456)
	MisBeginCondition( HasRecord, 1455)
	MisBeginAction( AddMission, 1456)
	MisBeginAction(AddTrigger, 14561, TE_GETITEM, 854, 1)
	MisCancelAction( ClearMission, 1456)

	MisNeed( MIS_NEED_DESP, "���Ű���󳮸���ŵУ��(2232,2781)")
	MisNeed( MIS_NEED_ITEM, 854, 1, 10, 1)

	MisHelpTalk( "<t>����һ�Ű����,�Ҿ͸�����ѧ֤��,�ٺ�")
	MisResultTalk( "<t>Ǯ������?����ѧ֤������.")
	MisResultCondition( HasMission, 1456)
	MisResultCondition( NoRecord, 1456)
	MisResultCondition( HasItem, 854, 1)
	MisResultAction( ClearMission, 1456)
	MisResultAction( TakeItem, 854, 1)
	MisResultAction( GiveItem, 579, 1, 4)
	MisResultAction( SetRecord, 1456)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 854)	
	TriggerAction( 1, AddNextFlag, 1456, 10, 1 )
	RegCurTrigger( 14561 )

-------------------------------------------------------��ѧ����----------��ŵУ��
	DefineMission( 6131, "��ѧ����", 1457)
	MisBeginTalk( "<t>��Ȼѧ��Ҳ�����ˣ�����Ҳ��ʶ�ˣ��Ǿʹ���������ѧ֤��ȥ�Ұ�������ʦ(871,3582)�����ɣ����������ܻῼ����Ŷ��")
	MisBeginCondition( NoMission, 1457)
	MisBeginCondition( NoRecord, 1457)
	MisBeginCondition( HasRecord, 1456)
	MisBeginAction( AddMission, 1457)
	MisCancelAction( ClearMission, 1457)

	MisNeed( MIS_NEED_DESP, "������ѧ֤��ȥ�Ұ�������ʦ(871,3582)����")
	MisHelpTalk( "<t>��������ʦ����ɳ�(871,3582),�����Ǵ���ѧ֤���ȥŶ.")
	MisResultCondition( AlwaysFailure )

-------------------------------------------------------��ѧ����----------��������ʦ
	DefineMission( 6132, "��ѧ����", 1457, COMPLETE_SHOW)

	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>֪������Щ���ص��ľ߾�˵���Ե�������ʹ��Ŷ.")
	MisResultCondition( HasMission, 1457)
	MisResultCondition( NoRecord, 1457)
	MisResultCondition( HasItem, 579, 1)
	MisResultAction( ClearMission, 1457)
	MisResultAction( SetRecord, 1457)
	
-------------------------------------------------------��ѧ����----------��������ʦ
	DefineMission( 6133, "��ѧ����", 1458)
	MisBeginTalk( "<t>Ҫ����ѧ�Ļ�Ҫ�����ҵĿ�����?�ǿ��Ǻ��ѵ�Ŷ,ÿ������ֻ��30���˼��ʱ��,δ�������������.")
	MisBeginCondition( NoMission, 1458)
	MisBeginCondition( NoRecord, 1458)
	MisBeginCondition( HasRecord, 1457)
	MisBeginAction( AddMission, 1458)
	MisCancelAction( ClearMission, 1458)

	MisNeed( MIS_NEED_DESP, "�ش��갺������ʦ����ѧ��������")

	MisHelpTalk( "<t>Ҫ��ش���ҵ�����Ļ�,���Ҫ���ó�ֵ�׼��Ŷ,ֻ�ж����Ǻ�������������һ���˽���˲��ܻش����.")
	MisResultCondition( AlwaysFailure )

-------------------------------------------------------��ѧ����----------��������ʦ
	DefineMission( 6134, "��ѧ����", 1458, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>��ϲ��,����ĺܴ���,��������һ�����Ϊһ����ѧ����,��Ϊ����,����һ���������.")
	MisResultCondition( HasMission, 1458)
	MisResultCondition( NoRecord, 1463)
	MisResultCondition( HasRecord, 1461)
	MisResultCondition( CheckRightNum )
	MisResultAction( SetRecord, 1463)
	MisResultAction( SetRecord, 1458)
	MisResultAction( TakeItem, 579, 1)
	MisResultAction( GiveItem, 47, 1, 4)
	MisResultAction( ClearMission, 1458)
	MisResultBagNeed(1)

-------------------------------------------------------��ѧ����----------��������ʦ
	DefineMission( 6135, "��ѧ����", 1458, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>������Ŷ,����û��ϵ,�һ��������һ�����񽻸���.")
	MisResultCondition( HasMission, 1458)
	MisResultCondition( NoRecord, 1463)
	MisResultCondition( HasRecord, 1461)
	MisResultCondition( CheckErroNum )
	MisResultAction( SetRecord, 1463)
	MisResultAction( SetRecord, 1458)
	MisResultAction( SetRecord, 1460)
	MisResultAction( TakeItem, 579, 1)
	MisResultAction( ClearMission, 1458)

-------------------------------------------------------�������----------��������ʦ
	DefineMission( 6136, "�������", 1464)
	MisBeginTalk( "<t>�������з�����Ҫ��ȥ�����͸�ס�ڱ����Ŀ�����˹.���Ǹ���ϲ������Ц����,������3�������Լ�һģһ���Ŀ�����һ��,�����ȥ�Ļ�һ��Ҫ������ĸ������,��Ȼ���кܿ��µ����鷢����!!����,˳��ȥ��10��ʥѩɽֱ��Ʊ��������˹")
	MisBeginCondition( NoMission, 1464)
	MisBeginCondition( NoRecord, 1464)
	MisBeginCondition( HasRecord, 1460)
	MisBeginAction( AddMission, 1464)
	MisBeginAction(AddTrigger, 14641, TE_GETITEM, 3050, 10)
	MisBeginAction( GiveItem, 500, 1, 4)
	MisCancelAction( ClearMission, 1464)
	MisBeginBagNeed(1)

	MisNeed( MIS_NEED_DESP, "�Ѱ����ȵ���,����10��ʥѩɽ��Ʊ��ȥ�������Ŀ�����˹,�����ڱ�������վ����")
	MisHelpTalk( "<t>������˹���ڱ�������,������Ҫ�ж�׼���ǲ�����Ŀ�����˹")
	
	MisResultCondition( AlwaysFailure )

-------------------------------------------------------�������----------������˹
	DefineMission( 6137, "�������", 1464, COMPLETE_SHOW)
	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>��Ȼ�ܷ����ҵ�����,������ӵ�к�����Ĺ۲������Ͳ��۲��ӵ�������,����ֵ�ý�����,��������Ҳһ�����Ǹ���ѧ��.")
	MisResultCondition( HasMission, 1464)
	MisResultCondition( NoRecord, 1464)
	MisResultCondition( HasRecord, 1465)
	MisResultCondition( HasItem, 500, 1)
	MisResultCondition( HasItem, 3050, 10)
	MisResultAction( SetRecord, 1464)
	MisResultAction( TakeItem, 500, 1)
	MisResultAction( TakeItem, 3050, 10)
	MisResultAction( ClearMission, 1464)
	MisResultAction( GiveItem, 47, 1, 4)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3050)	
	TriggerAction( 1, AddNextFlag, 1464, 10, 10 )
	RegCurTrigger( 14641 )

	-----------------------------------------�Ҷ�Ӣ��----------������������������--------ˮ��
	DefineMission (5800, "�����з֮�Ҷ�Ӣ��", 1470)
	
	MisBeginTalk("<t>��з������,����˼�,����ҵ����Ҳ���ܱ��ֳ��Լ��Ĳ���.������������λ�������?")

	MisBeginCondition(NoMission,1470)
	MisBeginCondition(HasRecord,1466)
	MisBeginCondition(NoRecord,1470)
	MisBeginAction(AddMission,1470)
	MisCancelAction(ClearMission, 1470)
	
	MisNeed(MIS_NEED_DESP, "���80���Ҷ�����")
	MisHelpTalk("<t>�Ҷ��������Դ��Ҷ��������!")
	MisResultTalk("<t>��ΪӢ�۵ĵ�·�ϱض����������谭,ս��������Ƭ�̶����ܶ�ʧŶ.Ͷ��ȫ��ȥս����!")

	MisResultCondition(HasMission, 1470)
	MisResultCondition(NoRecord,1470)
	MisResultCondition(HasFightingPoint,80 )
	MisResultAction(TakeFightingPoint, 80 )
	MisResultAction(ClearMission, 1470)
	MisResultAction(SetRecord,  1470 )
	MisResultAction(GiveItem, 2568, 1, 4)
	MisResultBagNeed(1)


	-------------------------------------------------����Ӣ��----------������������������	--------ˮ��
	DefineMission (5801, "�����з֮����Ӣ��", 1471)
	
	MisBeginTalk("<t>��Ŀ�����׷��,��׷����гɾ�.���������з�������Ҫ��Ҳ����һЩ. ")

	MisBeginCondition(NoMission,1471)
	MisBeginCondition(HasRecord,1466)
	MisBeginCondition(NoRecord,1471)
	MisBeginAction(AddMission,1471)
	MisCancelAction(ClearMission, 1471)
	
	MisNeed(MIS_NEED_DESP, "���3000����������")
	MisHelpTalk("<t>������õ�������������Ŷ,����3000������������˵Ӧ�ò��������? ")
	MisResultTalk("<t>��ö����ѫ����������֤Ӣ�۵�.")

	MisResultCondition(HasMission, 1471)
	MisResultCondition(NoRecord,1471)
	MisResultCondition(HasCredit,3000 )
	MisResultAction(TakeCredit, 3000 )
	MisResultAction(ClearMission, 1471)
	MisResultAction(SetRecord,  1471 )
	MisResultAction(GiveItem, 2569, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------�ȼ�Ӣ��----------������������������	---------ˮ��
	DefineMission (5802, "�����з֮�ȼ�Ӣ��", 1472)
	
	MisBeginTalk("<t>�ɳ��ĵ�·�������ͼ�����,���Ǹ���һ�����лر�Ŷ,���ҿ������ջ���ʲô��...")

	MisBeginCondition(NoMission,1472)
	MisBeginCondition(HasRecord,1466)
	MisBeginCondition(NoRecord,1472)
	MisBeginAction(AddMission,1472)
	MisCancelAction(ClearMission, 1472)
	
	MisNeed(MIS_NEED_DESP, "�ȼ��ﵽ65��")
	MisHelpTalk("<t>��Ȼ,65��������˵��������.")
	MisResultTalk("<t>�������Ѿ������˳ɳ���ĥ��,�ջ���Ŷ,��ö�ȼ�ѫ���������.")

	MisResultCondition(HasMission, 1472)
	MisResultCondition(NoRecord,1472)
	MisResultCondition(LvCheck, ">", 64 )
	MisResultAction(ClearMission, 1472)
	MisResultAction(SetRecord,  1472 )
	MisResultAction(GiveItem, 2570, 1, 4)
	MisResultBagNeed(1)


	-------------------------------------------------����Ӣ��----------������������������	----------ˮ��
	DefineMission (5803, "�����з֮����Ӣ��", 1473)
	
	MisBeginTalk("<t>�װ�������,��һ�������Ҫ֪��,������������Ҫ�ľ�������!����Ϊ�˸���һ��Ӯ����,��һ��Ҫ�̳���ȥ.")

	MisBeginCondition(NoMission,1473)
	MisBeginCondition(HasRecord,1466)
	MisBeginCondition(NoRecord,1473)
	MisBeginAction(AddMission,1473)
	MisCancelAction(ClearMission, 1473)
	
	MisNeed(MIS_NEED_DESP, "���600����������")
	MisHelpTalk("<t>ȥΪ������ս��!")
	MisResultTalk("<t>���Ǹ��ܲ���������֮��.")

	MisResultCondition(HasMission, 1473)
	MisResultCondition(NoRecord,1473)
	MisResultCondition(HasHonorPoint,600 )
	MisResultAction(TakeHonorPoint, 600 )
	MisResultAction(ClearMission, 1473)
	MisResultAction(SetRecord,  1473 )
	MisResultAction(GiveItem, 2571, 1, 4)
	MisResultBagNeed(1)	

	-------------------------------------------------�ɼ���ʹ----------������������������	----------ˮ��	
	DefineMission (5804, "�����з֮�ɼ���ʹ", 1474)
	
	MisBeginTalk("<t>�ɹ�����Ҫƽʱ�Ļ��۵�Ŷ!������Ҳ�ǹؼ�.��������Ҫ��ȥ�ռ�һЩ����... ")

	MisBeginCondition(NoMission,1474)
	MisBeginCondition(HasRecord,1466)
	MisBeginCondition(NoRecord,1474)
	MisBeginAction(AddMission,1474)
	MisBeginAction(AddTrigger, 14741, TE_GETITEM, 1693, 10 )-------------------Ы��10��
	MisBeginAction(AddTrigger, 14742, TE_GETITEM, 2677, 10 )-------------------����LV1 10          
	MisBeginAction(AddTrigger, 14743, TE_GETITEM, 3909, 1 )-----------------ʳ��ˮ��1               
	MisBeginAction(AddTrigger, 14744, TE_GETITEM, 2589, 5 )----------------��������ӡ5               
	MisBeginAction(AddTrigger, 14745, TE_GETITEM, 3094, 5)------------------Ŭ��������5            
	MisBeginAction(AddTrigger, 14746, TE_GETITEM, 3827, 1 )-----------------��֮��1             
	MisCancelAction(ClearMission, 1474)
	

	MisNeed(MIS_NEED_ITEM, 1693, 10,  1, 10 )
	MisNeed(MIS_NEED_ITEM, 2677, 10, 11, 10 )
	MisNeed(MIS_NEED_ITEM, 3909, 1,  21, 1 )
	MisNeed(MIS_NEED_ITEM, 2589, 5,  22, 5 )
	MisNeed(MIS_NEED_ITEM, 3094, 5,  27, 5 )
	MisNeed(MIS_NEED_ITEM, 3827, 1,  32, 1 )
	

	MisHelpTalk("<t>��Ҫ�Ķ������Ǻܶ�,����Ҳ������ô����Ŷ.")
	MisResultTalk("<t>�ﵽ��ʱ�����ٰ�,���۵Ĺ�����Ȼ�Ƚ��鷳,�������Ҫ����������,ϸ�Ļ��ۺ͹۲춼�ǲ���ȱ�ٵ�Ŷ,��Ȼ,���г�ǿ�����ĺ�����!")

	MisResultCondition(HasMission, 1474)
	MisResultCondition(NoRecord,1474)
	MisResultCondition(HasItem, 1693, 10 )
	MisResultCondition(HasItem, 2677, 10 )
	MisResultCondition(HasItem, 3909, 1 )
	MisResultCondition(HasItem, 2589, 5 )
	MisResultCondition(HasItem, 3094, 5 )
	MisResultCondition(HasItem, 3827, 1 )


	MisResultAction(TakeItem, 1693, 10 )
	MisResultAction(TakeItem, 2677, 10 )
	MisResultAction(TakeItem, 3909, 1 )
	MisResultAction(TakeItem, 2589, 5 )
	MisResultAction(TakeItem, 3094, 5 )
	MisResultAction(TakeItem, 3827, 1 )

	MisResultAction(ClearMission, 1474)
	MisResultAction(SetRecord,  1474 )
	MisResultAction(GiveItem, 2572, 1, 4)
	MisResultAction(GiveItem, 2576, 1, 4)
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1693)	
	TriggerAction( 1, AddNextFlag, 1474, 1, 10 )
	RegCurTrigger( 14741 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2677)	
	TriggerAction( 1, AddNextFlag, 1474, 11, 10 )
	RegCurTrigger( 14742 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3909)	
	TriggerAction( 1, AddNextFlag, 1474, 21, 1 )
	RegCurTrigger( 14743 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2589)	
	TriggerAction( 1, AddNextFlag, 1474, 22, 5 )
	RegCurTrigger( 14744 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3094)	
	TriggerAction( 1, AddNextFlag, 1474, 27, 5 )
	RegCurTrigger( 14745 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3827)	
	TriggerAction( 1, AddNextFlag, 1474,32, 1 )
	RegCurTrigger( 14746 )

	----------------------------------------------------------��зĩ��----------������������������
	DefineMission( 5805, "�����з֮��зĩ��", 1475 )
	MisBeginTalk("<t>BOSSѫ�������Ӣ��������ζ�Ľ���,��Ҫ�Ļ���ȥɱ�����µľ�з���ػ���.")
				
	MisBeginCondition(NoMission, 1475)
	MisBeginCondition(HasRecord,1469)
	MisBeginCondition(NoRecord,1475)
	MisBeginAction(AddMission,1475)
	MisBeginAction(AddTrigger, 14751, TE_KILL, 1040, 1)---��з�ػ���
	
	MisCancelAction(ClearMission, 1475)

	MisNeed(MIS_NEED_DESP, "��ɱ��з���ػ���,ħŮ֮��(1637,3751)!")
	MisNeed(MIS_NEED_KILL, 1040,1, 10, 1)
	

	MisResultTalk("<t>���˺��з��Ͻ��ǿ��µ�����.����Ұ���������һ����ª!")
	MisHelpTalk("<t>�ǹ���ӵ��ǿ�����Ĵ�ǯ�Ͷ��ĵ���ĭŶ,��ҪС��.")
	MisResultCondition(HasMission,  1475)
	MisResultCondition(HasFlag, 1475, 10)
	MisResultCondition(NoRecord , 1475)
	MisResultAction(GiveItem, 2574, 1, 4 )
	MisResultAction(ClearMission,  1475)
	MisResultAction(SetRecord,  1475 )
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 1040)	
	TriggerAction( 1, AddNextFlag, 1475, 10, 1 )
	RegCurTrigger( 14751 )


	-----------------------------------------�Ҷ�Ӣ��----------������������������--------����
	DefineMission (5806, "�����з֮�Ҷ�Ӣ��", 1476)
	
	MisBeginTalk("<t>��з������,����˼�,����ҵ����Ҳ���ܱ��ֳ��Լ��Ĳ���.������������λ�������?")

	MisBeginCondition(NoMission,1476)
	MisBeginCondition(HasRecord,1467)
	MisBeginCondition(NoRecord,1476)
	MisBeginAction(AddMission,1476)
	MisCancelAction(ClearMission, 1476)
	
	MisNeed(MIS_NEED_DESP, "���150���Ҷ�����")
	MisHelpTalk("<t>�Ҷ��������Դ��Ҷ��������!")
	MisResultTalk("<t>��ΪӢ�۵ĵ�·�ϱض����������谭,ս��������Ƭ�̶����ܶ�ʧŶ.Ͷ��ȫ��ȥս����!")

	MisResultCondition(HasMission, 1476)
	MisResultCondition(NoRecord,1476)
	MisResultCondition(HasFightingPoint,150 )
	MisResultAction(TakeFightingPoint, 150 )
	MisResultAction(ClearMission, 1476)
	MisResultAction(SetRecord,  1476 )
	MisResultAction(GiveItem, 2568, 1, 4)
	MisResultBagNeed(1)


	-------------------------------------------------����Ӣ��----------������������������	--------����
	DefineMission (5807, "�����з֮����Ӣ��", 1477)
	
	MisBeginTalk("<t>��Ŀ�����׷��,��׷����гɾ�.���������з�������Ҫ��Ҳ����һЩ. ")

	MisBeginCondition(NoMission,1477)
	MisBeginCondition(HasRecord,1467)
	MisBeginCondition(NoRecord,1477)
	MisBeginAction(AddMission,1477)
	MisCancelAction(ClearMission, 1477)
	
	MisNeed(MIS_NEED_DESP, "���6000����������")
	MisHelpTalk("<t>������õ�������������Ŷ,����6000������������˵Ӧ�ò��������? ")
	MisResultTalk("<t>��ö����ѫ����������֤Ӣ�۵�.")

	MisResultCondition(HasMission, 1477)
	MisResultCondition(NoRecord,1477)
	MisResultCondition(HasCredit,6000 )
	MisResultAction(TakeCredit, 6000 )
	MisResultAction(ClearMission, 1477)
	MisResultAction(SetRecord,  1477 )
	MisResultAction(GiveItem, 2569, 1, 4)
	MisResultBagNeed(1)


	-------------------------------------------------�ȼ�Ӣ��----------������������������	---------����
	DefineMission (5808, "�����з֮�ȼ�Ӣ��", 1600)
	
	MisBeginTalk("<t>�ɳ��ĵ�·�������ͼ�����,���Ǹ���һ�����лر�Ŷ,���ҿ������ջ���ʲô��...")

	MisBeginCondition(NoMission,1600)
	MisBeginCondition(HasRecord,1467)
	MisBeginCondition(NoRecord,1600)
	MisBeginAction(AddMission,1600)
	MisCancelAction(ClearMission, 1600)
	
	MisNeed(MIS_NEED_DESP, "�ȼ��ﵽ70��")
	MisHelpTalk("<t>��Ȼ,70��������˵��������.")
	MisResultTalk("<t>�������Ѿ������˳ɳ���ĥ��,�ջ���Ŷ,��ö�ȼ�ѫ���������.")

	MisResultCondition(HasMission, 1600)
	MisResultCondition(NoRecord,1600)
	MisResultCondition(LvCheck, ">", 69 )
	MisResultAction(ClearMission, 1600)
	MisResultAction(SetRecord,  1600 )
	MisResultAction(GiveItem, 2570, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------����Ӣ��----------������������������	----------����
	DefineMission (5809, "�����з֮����Ӣ��", 1479)
	
	MisBeginTalk("<t>�װ�������,��һ�������Ҫ֪��,������������Ҫ�ľ�������!����Ϊ�˸���һ��Ӯ����,��һ��Ҫ�̳���ȥ.")

	MisBeginCondition(NoMission,1479)
	MisBeginCondition(HasRecord,1467)
	MisBeginCondition(NoRecord,1479)
	MisBeginAction(AddMission,1479)
	MisCancelAction(ClearMission, 1479)
	
	MisNeed(MIS_NEED_DESP, "���900����������")
	MisHelpTalk("<t>ȥΪ������ս��!")
	MisResultTalk("<t>���Ǹ��ܲ���������֮��.")

	MisResultCondition(HasMission, 1479)
	MisResultCondition(NoRecord,1479)
	MisResultCondition(HasHonorPoint,900 )
	MisResultAction(TakeHonorPoint, 900 )
	MisResultAction(ClearMission, 1479)
	MisResultAction(SetRecord,  1479 )
	MisResultAction(GiveItem, 2571, 1, 4)
	MisResultBagNeed(1)	

	-------------------------------------------------�ɼ���ʹ----------������������������	----------����	
	DefineMission (5810, "�����з֮�ɼ���ʹ", 1480)
	
	MisBeginTalk("<t>�ɹ�����Ҫƽʱ�Ļ��۵�Ŷ!������Ҳ�ǹؼ�.��������Ҫ��ȥ�ռ�һЩ����... ")

	MisBeginCondition(NoMission,1480)
	MisBeginCondition(HasRecord,1467)
	MisBeginCondition(NoRecord,1480)
	MisBeginAction(AddMission,1480)
	MisBeginAction(AddTrigger, 14801, TE_GETITEM, 1693, 20 )-------------------Ы��20��
	MisBeginAction(AddTrigger, 14802, TE_GETITEM, 2677, 20 )-------------------����LV1 20��          
	MisBeginAction(AddTrigger, 14803, TE_GETITEM, 3909, 5 )-----------------ʳ��ˮ��5��               
	MisBeginAction(AddTrigger, 14804, TE_GETITEM, 2589, 5 )----------------��������ӡ5               
	MisBeginAction(AddTrigger, 14805, TE_GETITEM, 3094, 10)------------------Ŭ��������10��         
	MisBeginAction(AddTrigger, 14806, TE_GETITEM, 3827, 1 )-----------------��֮��1     
	MisBeginAction(AddTrigger, 14807, TE_GETITEM, 0271, 1 )-----------------��ʹ����1��         
	MisCancelAction(ClearMission, 1480)
	

	MisNeed(MIS_NEED_ITEM, 1693, 20,  1, 20 )
	MisNeed(MIS_NEED_ITEM, 2677, 20, 21, 20 )
	MisNeed(MIS_NEED_ITEM, 3909, 5,  41, 5 )
	MisNeed(MIS_NEED_ITEM, 2589, 5,  46, 5 )
	MisNeed(MIS_NEED_ITEM, 3094, 10, 51, 10 )
	MisNeed(MIS_NEED_ITEM, 3827, 1,  61, 1 )
	MisNeed(MIS_NEED_ITEM, 0271, 1,  62, 1 )

	MisHelpTalk("<t>��Ҫ�Ķ������Ǻܶ�,����Ҳ������ô����Ŷ.")
	MisResultTalk("<t>�ﵽ��ʱ�����ٰ�,���۵Ĺ�����Ȼ�Ƚ��鷳,�������Ҫ����������,ϸ�Ļ��ۺ͹۲춼�ǲ���ȱ�ٵ�Ŷ,��Ȼ,���г�ǿ�����ĺ�����!")

	MisResultCondition(HasMission, 1480)
	MisResultCondition(NoRecord,1480)
	MisResultCondition(HasItem, 1693, 20 )
	MisResultCondition(HasItem, 2677, 20 )
	MisResultCondition(HasItem, 3909, 5 )
	MisResultCondition(HasItem, 2589, 5 )
	MisResultCondition(HasItem, 3094, 10 )
	MisResultCondition(HasItem, 3827, 1 )
	MisResultCondition(HasItem, 0271, 1 )

	MisResultAction(TakeItem, 1693, 20 )
	MisResultAction(TakeItem, 2677, 20 )
	MisResultAction(TakeItem, 3909, 5 )
	MisResultAction(TakeItem, 2589, 5 )
	MisResultAction(TakeItem, 3094, 10 )
	MisResultAction(TakeItem, 3827, 1 )
	MisResultAction(TakeItem, 0271, 1 )

	MisResultAction(ClearMission, 1480)
	MisResultAction(SetRecord,  1480 )
	MisResultAction(GiveItem, 2572, 1, 4)
	MisResultAction(GiveItem, 2576, 1, 4)
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1693)	
	TriggerAction( 1, AddNextFlag, 1480, 1, 20 )
	RegCurTrigger( 14801 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2677)	
	TriggerAction( 1, AddNextFlag, 1480, 21, 20 )
	RegCurTrigger( 14802 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3909)	
	TriggerAction( 1, AddNextFlag, 1480, 41, 5 )
	RegCurTrigger( 14803 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2589)	
	TriggerAction( 1, AddNextFlag, 1480, 46, 5 )
	RegCurTrigger( 14804 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3094)	
	TriggerAction( 1, AddNextFlag, 1480, 51, 10 )
	RegCurTrigger( 14805 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3827)	
	TriggerAction( 1, AddNextFlag, 1480,61, 1 )
	RegCurTrigger( 14806 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 0271)	
	TriggerAction( 1, AddNextFlag, 1480,62, 1 )
	RegCurTrigger( 14807 )


	-----------------------------------------�Ҷ�Ӣ��----------������������������--------����
	DefineMission (5811, "�����з֮�Ҷ�Ӣ��", 1481)
	
	MisBeginTalk("<t>��з������,����˼�,����ҵ����Ҳ���ܱ��ֳ��Լ��Ĳ���.������������λ�������?")

	MisBeginCondition(NoMission,1481)
	MisBeginCondition(HasRecord,1468)
	MisBeginCondition(NoRecord,1481)
	MisBeginAction(AddMission,1481)
	MisCancelAction(ClearMission, 1481)
	
	MisNeed(MIS_NEED_DESP, "���200���Ҷ�����")
	MisHelpTalk("<t>�Ҷ��������Դ��Ҷ��������!")
	MisResultTalk("<t>��ΪӢ�۵ĵ�·�ϱض����������谭,ս��������Ƭ�̶����ܶ�ʧŶ.Ͷ��ȫ��ȥս����!")

	MisResultCondition(HasMission, 1481)
	MisResultCondition(NoRecord,1481)
	MisResultCondition(HasFightingPoint,200 )
	MisResultAction(TakeFightingPoint, 200 )
	MisResultAction(ClearMission, 1481)
	MisResultAction(SetRecord,  1481 )
	MisResultAction(GiveItem, 2568, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------����Ӣ��----------������������������	--------����
	DefineMission (5812, "�����з֮����Ӣ��", 1482)
	
	MisBeginTalk("<t>��Ŀ�����׷��,��׷����гɾ�.���������з�������Ҫ��Ҳ����һЩ. ")

	MisBeginCondition(NoMission,1482)
	MisBeginCondition(HasRecord,1468)
	MisBeginCondition(NoRecord,1482)
	MisBeginAction(AddMission,1482)
	MisCancelAction(ClearMission, 1482)
	
	MisNeed(MIS_NEED_DESP, "���10000����������")
	MisHelpTalk("<t>������õ�������������Ŷ,����10000������������˵Ӧ�ò��������? ")
	MisResultTalk("<t>��ö����ѫ����������֤Ӣ�۵�.")

	MisResultCondition(HasMission, 1482)
	MisResultCondition(NoRecord,1482)
	MisResultCondition(HasCredit,10000 )
	MisResultAction(TakeCredit, 10000 )
	MisResultAction(ClearMission, 1482)
	MisResultAction(SetRecord,  1482 )
	MisResultAction(GiveItem, 2569, 1, 4)
	MisResultBagNeed(1)


	-------------------------------------------------�ȼ�Ӣ��----------������������������	---------����
	DefineMission (5813, "�����з֮�ȼ�Ӣ��", 1483)
	
	MisBeginTalk("<t>�ɳ��ĵ�·�������ͼ�����,���Ǹ���һ�����лر�Ŷ,���ҿ������ջ���ʲô��...")

	MisBeginCondition(NoMission,1483)
	MisBeginCondition(HasRecord,1468)
	MisBeginCondition(NoRecord,1483)
	MisBeginAction(AddMission,1483)
	MisCancelAction(ClearMission, 1483)
	
	MisNeed(MIS_NEED_DESP, "�ȼ��ﵽ75��")
	MisHelpTalk("<t>��Ȼ,75��������˵��������.")
	MisResultTalk("<t>�������Ѿ������˳ɳ���ĥ��,�ջ���Ŷ,��ö�ȼ�ѫ���������.")

	MisResultCondition(HasMission, 1483)
	MisResultCondition(NoRecord,1483)
	MisResultCondition(LvCheck, ">", 74 )
	MisResultAction(ClearMission, 1483)
	MisResultAction(SetRecord,  1483 )
	MisResultAction(GiveItem, 2570, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------����Ӣ��----------������������������	----------����
	DefineMission (5814, "�����з֮����Ӣ��", 1484)
	
	MisBeginTalk("<t>�װ�������,��һ�������Ҫ֪��,������������Ҫ�ľ�������!����Ϊ�˸���һ��Ӯ����,��һ��Ҫ�̳���ȥ.")

	MisBeginCondition(NoMission,1484)
	MisBeginCondition(HasRecord,1468)
	MisBeginCondition(NoRecord,1484)
	MisBeginAction(AddMission,1484)
	MisCancelAction(ClearMission, 1484)
	
	MisNeed(MIS_NEED_DESP, "���1200����������")
	MisHelpTalk("<t>ȥΪ������ս��!")
	MisResultTalk("<t>���Ǹ��ܲ���������֮��.")

	MisResultCondition(HasMission, 1484)
	MisResultCondition(NoRecord,1484)
	MisResultCondition(HasHonorPoint,1200 )
	MisResultAction(TakeHonorPoint, 1200 )
	MisResultAction(ClearMission, 1484)
	MisResultAction(SetRecord,  1484 )
	MisResultAction(GiveItem, 2571, 1, 4)
	MisResultBagNeed(1)	


	-------------------------------------------------�ɼ���ʹ----------������������������	----------����	
	DefineMission (5815, "�����з֮�ɼ���ʹ", 1485)
	
	MisBeginTalk("<t>�ɹ�����Ҫƽʱ�Ļ��۵�Ŷ!������Ҳ�ǹؼ�.��������Ҫ��ȥ�ռ�һЩ����... ")

	MisBeginCondition(NoMission,1485)
	MisBeginCondition(HasRecord,1468)
	MisBeginCondition(NoRecord,1485)
	MisBeginAction(AddMission,1485)
	MisBeginAction(AddTrigger, 14851, TE_GETITEM, 1693, 30 )-------------------Ы��30��
	MisBeginAction(AddTrigger, 14852, TE_GETITEM, 2677, 30 )-------------------����LV1 30��          
	MisBeginAction(AddTrigger, 14853, TE_GETITEM, 3909, 10 )-----------------ʳ��ˮ��10��               
	MisBeginAction(AddTrigger, 14854, TE_GETITEM, 2589, 10 )----------------��������ӡ10               
	MisBeginAction(AddTrigger, 14855, TE_GETITEM, 3094, 20)------------------Ŭ��������20��         
	MisBeginAction(AddTrigger, 14856, TE_GETITEM, 3827, 1 )-----------------��֮��1     
	MisBeginAction(AddTrigger, 14857, TE_GETITEM, 0271, 2 )-----------------��ʹ����2��         
	MisCancelAction(ClearMission, 1485)
	

	MisNeed(MIS_NEED_ITEM, 1693, 30,  1, 30 )
	MisNeed(MIS_NEED_ITEM, 2677, 30, 31, 30 )
	MisNeed(MIS_NEED_ITEM, 3909, 10, 61, 10 )
	MisNeed(MIS_NEED_ITEM, 2589, 10, 71, 10 )
	MisNeed(MIS_NEED_ITEM, 3094, 20, 81, 20 )
	MisNeed(MIS_NEED_ITEM, 3827, 1,  101, 1 )
	MisNeed(MIS_NEED_ITEM, 0271, 2,  102, 2 )

	MisHelpTalk("<t>��Ҫ�Ķ������Ǻܶ�,����Ҳ������ô����Ŷ.")
	MisResultTalk("<t>�ﵽ��ʱ�����ٰ�,���۵Ĺ�����Ȼ�Ƚ��鷳,�������Ҫ����������,ϸ�Ļ��ۺ͹۲춼�ǲ���ȱ�ٵ�Ŷ,��Ȼ,���г�ǿ�����ĺ�����!")

	MisResultCondition(HasMission, 1485)
	MisResultCondition(NoRecord,1485)
	MisResultCondition(HasItem, 1693, 30 )
	MisResultCondition(HasItem, 2677, 30 )
	MisResultCondition(HasItem, 3909, 10 )
	MisResultCondition(HasItem, 2589, 10 )
	MisResultCondition(HasItem, 3094, 20 )
	MisResultCondition(HasItem, 3827, 1 )
	MisResultCondition(HasItem, 0271, 2 )

	MisResultAction(TakeItem, 1693, 30 )
	MisResultAction(TakeItem, 2677, 30 )
	MisResultAction(TakeItem, 3909, 10 )
	MisResultAction(TakeItem, 2589, 10 )
	MisResultAction(TakeItem, 3094, 20 )
	MisResultAction(TakeItem, 3827, 1 )
	MisResultAction(TakeItem, 0271, 2 )

	MisResultAction(ClearMission, 1485)
	MisResultAction(SetRecord,  1485 )
	MisResultAction(GiveItem, 2572, 1, 4)
	MisResultAction(GiveItem, 2576, 1, 4)
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1693)	
	TriggerAction( 1, AddNextFlag, 1485, 1, 30 )
	RegCurTrigger( 14851 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2677)	
	TriggerAction( 1, AddNextFlag, 1485, 31, 30 )
	RegCurTrigger( 14852 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3909)	
	TriggerAction( 1, AddNextFlag, 1485, 61, 10 )
	RegCurTrigger( 14853 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2589)	
	TriggerAction( 1, AddNextFlag, 1485, 71, 10 )
	RegCurTrigger( 14854 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3094)	
	TriggerAction( 1, AddNextFlag, 1485, 81, 20 )
	RegCurTrigger( 14855 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3827)	
	TriggerAction( 1, AddNextFlag, 1485,101, 1 )
	RegCurTrigger( 14856 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 0271)	
	TriggerAction( 1, AddNextFlag, 1485,102, 2 )
	RegCurTrigger( 14857 )


	----------------------------------------------------------�罻��ʹ----------������������������
	DefineMission( 5816, "�罻��ʹ1", 1486 )
	MisBeginTalk("<t>�ɹ����˻���Ҫ�г�ɫ���罻����Ŷ,������,���ѱ鼰��������,�������ں��¹���ķ�æ,�Ҷ��þ�û���ʺ�������,�������Ҫ̽��ѫ�¾������ʺ����ǰ�.")
				
	MisBeginCondition(NoMission, 1486)
	MisBeginCondition(NoRecord,1486)
	MisBeginCondition(HasRecord, 1469)
	MisBeginAction(AddMission,1486)
	MisCancelAction(ClearMission, 1486)

	MisNeed(MIS_NEED_DESP, "�Ҵ����������������(3316,2516)����")
	
	MisHelpTalk("<t>��ȥ��,���Ȳ��������������Һ���������.")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------�罻��ʹ-----------------����������

	DefineMission(5817, "�罻��ʹ1", 1486, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>������������������?����,��ĺþö�û�м�������,��һ�����ǵ��ҳ�ɫ�����հ�.")
	MisResultCondition(NoRecord, 1486)
	MisResultCondition(HasMission,1486)
	MisResultAction(ClearMission,1486)
	MisResultAction(SetRecord, 1486)

	----------------------------------------------------------�罻��ʹ2----------����������
	DefineMission( 5818, "�罻��ʹ2", 1487 )
	MisBeginTalk("<t>��һֱ�ǳ�����������,������������Ϊ�Լ��ĵ�λ������,�����������Ѻܶ�Ŷ,��Ů���ҵ�����һ�����ҽ�ʶ��λ�ɰ���Ůʿ��.")
				
	MisBeginCondition(NoMission, 1487)
	MisBeginCondition(NoRecord,1487)
	MisBeginCondition(HasRecord, 1486)
	MisBeginAction(AddMission,1487)
	MisCancelAction(ClearMission, 1487)

	MisNeed(MIS_NEED_DESP, "�Ҵ�����Ŀ�ջ�ϰ塤��Ů(3302,2501)����")
	
	MisHelpTalk("<t>��ʱ��ӭ�������������������켫Ʒװ��Ŷ.")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------�罻��ʹ2-------------��ջ�ϰ塤��Ů
	DefineMission(5819, "�罻��ʹ2", 1487, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>���,������,��Ҫס����?")
	MisResultCondition(NoRecord, 1487)
	MisResultCondition(HasMission,1487)
	MisResultAction(ClearMission,1487)
	MisResultAction(SetRecord, 1487)

	----------------------------------------------------------�罻��ʹ3----------��ջ�ϰ塤��Ů
	DefineMission( 5820, "�罻��ʹ3", 1488 )
	MisBeginTalk("<t>����ʶ������?̫����,�����ҵ�����!���ǵ�������żȻ�����ҵĿ�ջʱ���龰��,����ˬ���Ը������Ǻܿ��Ϊ������.���ǻ�������ǣ��ȥ�ӻ����ˡ�³�ȶ����ﹺ����!")
				
	MisBeginCondition(NoMission, 1488)
	MisBeginCondition(NoRecord,1488)
	MisBeginCondition(HasRecord, 1487)
	MisBeginAction(AddMission,1488)
	MisCancelAction(ClearMission, 1488)

	MisNeed(MIS_NEED_DESP, "�Ҵ�������ӻ����ˡ�³�ȶ�(3279,2501)����")
	
	MisHelpTalk("<t>³�ȶ���һ������������,��������,�Ǻ�..")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------�罻��ʹ3--------�ӻ����ˡ�³�ȶ�
	DefineMission(5821, "�罻��ʹ3", 1488, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>��Ů�����������ﹺ��,��ϧ�ܾ�û�п�������������һ������Ŷ,�Һ���������,������ٴι���,��һ�����������ۿ�.")
	MisResultCondition(NoRecord, 1488)
	MisResultCondition(HasMission,1488)
	MisResultAction(ClearMission,1488)
	MisResultAction(SetRecord, 1488)

	----------------------------------------------------------�罻��ʹ4----------�ӻ����ˡ�³�ȶ�
	DefineMission( 5822, "�罻��ʹ4", 1489 )
	MisBeginTalk("<t>�Ǵ�����Ұ������,��������˿��µĺ�������˹,����Ϊ�Ҿ���������!�������Ⱦ�����!������Ȼ������˹������������,���ҵ�������������.")
				
	MisBeginCondition(NoMission, 1489)
	MisBeginCondition(NoRecord,  1489)
	MisBeginCondition(HasRecord, 1488)
	MisBeginAction(AddMission, 1489)
	MisCancelAction(ClearMission, 1489)

	MisNeed(MIS_NEED_DESP, "�Ҽ�į֮���Ļ���˹(513,269)����")
	
	MisHelpTalk("<t>��������ĺ�����ҪС��Ŷ,�����Σ�վ�˵���������ȵ�����!")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------�罻��ʹ4--------����˹
	DefineMission(5823, "�罻��ʹ4", 1489, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>�ߺ�,С���������İ�?Ҫ�����·,��������Ǯ!��...���������ȵ����Ѱ�.����Ҷ�û��ʲô����,�Ҽ����Ѿ�Ҫ�����ҵĺ���������.")
	MisResultCondition(NoRecord, 1489)
	MisResultCondition(HasMission,1489)
	MisResultAction(ClearMission,1489)
	MisResultAction(SetRecord, 1489)


	----------------------------------------------------------�罻��ʹ5----------����˹
	DefineMission( 5824, "�罻��ʹ5", 1490 )
	MisBeginTalk("<t>��Ȼ��Ϊ����,�����Ҳ��ò����������ȵĵ�ʶ���ǻ�,Ϊ���������������һ��Σ��,������Ϊ������صľ���������!�ٺ�.��ʱ�����?�����ȥ���Ǹ�ó������.")
				
	MisBeginCondition(NoMission, 1490)
	MisBeginCondition(NoRecord,  1490)
	MisBeginCondition(HasRecord, 1489)
	MisBeginAction(AddMission,1490)
	MisCancelAction(ClearMission, 1490)

	MisNeed(MIS_NEED_DESP, "�Ҵ������ó�����ˡ�����(3195,2506)����")
	
	MisHelpTalk("<t>ó�����ˡ������Ǹ�ϲ��ˣС����������.")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------�罻��ʹ5--------ó�����ˡ�����
	DefineMission(5825, "�罻��ʹ5", 1490, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>�ȿ�,��������������Ҫ�͸�������򽻵�,�ر����񺣵������Ľ�ɫ,��ȻҪͷ�������,�Ǹ�����ˣС������?")
	MisResultCondition(NoRecord, 1490)
	MisResultCondition(HasMission,1490)
	MisResultAction(ClearMission,1490)
	MisResultAction(SetRecord, 1490)


	----------------------------------------------------------�罻��ʹ6----------ó�����ˡ�����
	DefineMission( 5826, "�罻��ʹ6", 1491)
	MisBeginTalk("<t>˵���Ǵξ���,���ǿ���!���˵�����Ҳ�õ��������ȵİ���,�Ű����˺����ľ���,���������еļҵ���������!��ʱ���ǿɶ����ŷ�����������!�����Ⱦ�����,���ô���ʹ���������ҵ��˰�ȫ�ĵط�,�Լ����������ô�໵��.")
				
	MisBeginCondition(NoMission, 1491)
	MisBeginCondition(NoRecord,1491)
	MisBeginCondition(HasRecord, 1490)
	MisBeginAction(AddMission,1491)
	MisCancelAction(ClearMission, 1491)

	MisNeed(MIS_NEED_DESP, "�Ҵ���ʹ������(3326,2511)����")
	
	MisHelpTalk("<t>����Ҳ�������ȵ�������.")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------�罻��ʹ6--------����ʹ������
	DefineMission(5827, "�罻��ʹ6", 1491, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>���,�����˻�ʹ�Լ�Ҳ��ÿ���Ŷ.")
	MisResultCondition(NoRecord, 1491)
	MisResultCondition(HasMission,1491)
	MisResultAction(ClearMission,1491)
	MisResultAction(SetRecord, 1491)


	----------------------------------------------------------�罻��ʹ7----------����ʹ������
	DefineMission( 5828, "�罻��ʹ7", 1492 )
	MisBeginTalk("<t>�Ǵ�����������ĵ�ȷ����.�Ҵ�����������ѧ��������Ϊ��,������������Ǽ��ܿ��ֵ�������,�л����һ�Ҫ��������ѧ�����ණ��!��˵����������������Ҳ�������ȽӴ���.")
				
	MisBeginCondition(NoMission, 1492)
	MisBeginCondition(NoRecord,1492)
	MisBeginCondition(HasRecord, 1491)
	MisBeginAction(AddMission,1492)
	MisCancelAction(ClearMission, 1492)

	MisNeed(MIS_NEED_DESP, "�Ҵ����������������������(3262,2502)����")
	
	MisHelpTalk("<t>������������������ǰ�Ǹ�ֻ�������˵���.")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------�罻��ʹ7--------����������������
	DefineMission(5829, "�罻��ʹ7", 1492, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>����ǰ��ȷ�Ǹ�ֻ�������˵���,����������ʹ�������������ǿ��Կ��Լ��ı��,�����ڸ���������Ϊ���ô�ҷ�����δȻ,�����Լ����õ�δ��.")
	MisResultCondition(NoRecord, 1492)
	MisResultCondition(HasMission,1492)
	MisResultAction(ClearMission,1492)
	MisResultAction(SetRecord, 1492)


	----------------------------------------------------------�罻��ʹ8----------����������������
	DefineMission( 5830, "�罻��ʹ8", 1493 )
	MisBeginTalk("<t>�ϴθ��Ƶ��ϰ塤���������ʱ��,�Ҹ��������й�������,û�뵽���������������Ĺ��˾���������!�Ǻ�.")
				
	MisBeginCondition(NoMission, 1493)
	MisBeginCondition(NoRecord,  1493)
	MisBeginCondition(HasRecord, 1492)
	MisBeginAction(AddMission,1493)
	MisCancelAction(ClearMission, 1493)

	MisNeed(MIS_NEED_DESP, "�ҾƵ��ϰ塤���(3287,2501)����")
	
	MisHelpTalk("<t>�������������ʺ�!")
	MisResultCondition(AlwaysFailure)
	
	-----------------------------------------�罻��ʹ8--------�Ƶ��ϰ塤���
	DefineMission(5831, "�罻��ʹ8", 1493, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>�����������ҵĹ���,��ʱ���ǾƵ�����Ⲣ����ô��,��֪��,����ֻ��һ��С��,�����������Ƚ����˺ܶ����е����������.")
	MisResultCondition(NoRecord, 1493)
	MisResultCondition(HasMission,1493)
	MisResultAction(ClearMission,1493)
	MisResultAction(SetRecord, 1493)


	----------------------------------------------------------�罻��ʹ9----------�Ƶ��ϰ塤���
	DefineMission( 5832, "�罻��ʹ9", 1494 )
	MisBeginTalk("<t>�Ǵ������������Ҹۿ�ָ�ӡ�˪��̸���µ�....")
				
	MisBeginCondition(NoMission, 1494)
	MisBeginCondition(NoRecord,  1494)
	MisBeginCondition(HasRecord, 1493)
	MisBeginAction(AddMission,1494)
	MisCancelAction(ClearMission, 1494)

	MisNeed(MIS_NEED_DESP, "�Ҹۿ�ָ�ӡ�˪��(3409,2560)����")
	
	MisHelpTalk("<t>�ۿ�ָ�ӡ�˪���Ǹ�����ְ�ص���.")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------�罻��ʹ9--------�ۿ�ָ�ӡ�˪��
	DefineMission(5833, "�罻��ʹ9", 1494, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>��ӭ������������,������Ȼ��С��,����������˶��ܺÿ�Ŷ!�������ϴι��������Ӳ�����Ĺ�����.")
	MisResultCondition(NoRecord, 1494)
	MisResultCondition(HasMission,1494)
	MisResultAction(ClearMission,1494)
	MisResultAction(SetRecord, 1494)

	----------------------------------------------------------�罻��ʹ10----------�ۿ�ָ�ӡ�˪��
	DefineMission( 5834, "�罻��ʹ10", 1495 )
	MisBeginTalk("<t>����������һ������,һ�㶼û�и߸����ϵļ���,�����ҵĹ��������˿϶�,̫���˸�����.���������ܹ���������,��������ȥο������������Ǯ��.")
				
	MisBeginCondition(NoMission, 1495)
	MisBeginCondition(NoRecord, 1495)
	MisBeginCondition(HasRecord, 1494)
	MisBeginAction(AddMission, 1495)
	MisCancelAction(ClearMission, 1495)

	MisNeed(MIS_NEED_DESP, "����������Ǯ��(3303,2533)����")
	
	MisHelpTalk("<t>�����ϼ���ο�ʶ��������ǺܺõĹ����...")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------�罻��ʹ10--------��������Ǯ��
	DefineMission(5835, "�罻��ʹ10", 1495, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>��ã�����Զ���������ÿͰ�.����ʶ������?����,������С��������������Ŷ!̫�Ҹ���!")
	MisResultCondition(NoRecord, 1495)
	MisResultCondition(HasMission,1495)
	MisResultAction(ClearMission,1495)
	MisResultAction(SetRecord, 1495)

	----------------------------------------------------------�罻��ʹ11----------��������Ǯ��
	DefineMission( 5836, "�罻��ʹ11", 1496 )
	MisBeginTalk("<t>�������Ǹ�������������,�������ص���ο�����Һ�����֣.")
				
	MisBeginCondition(NoMission, 1496)
	MisBeginCondition(NoRecord,1496)
	MisBeginCondition(HasRecord, 1495)
	MisBeginAction(AddMission,1496)
	MisCancelAction(ClearMission, 1496)

	MisNeed(MIS_NEED_DESP, "������������֣(3298,2534)����")
	
	MisHelpTalk("<t>����֣���������ֵ�һ��,�°������������̸.")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------�罻��ʹ11--------����������֣
	DefineMission(5837, "�罻��ʹ11", 1496, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>�۹���,������ܸ��������ȵ�����.�����Ǯ�����������?��û��͵����.")
	MisResultCondition(NoRecord, 1496)
	MisResultCondition(HasMission,1496)
	MisResultAction(ClearMission,1496)
	MisResultAction(SetRecord, 1496)

	----------------------------------------------------------�罻��ʹ12----------����������֣
	DefineMission( 5838, "�罻��ʹ12", 1497 )
	MisBeginTalk("<t>����ֻ��СС������,�ҵĽ��ʿ��Ǻܹ����,�����ܹܡ���īҲ���ҵ�����.�ϴ�������С����ο����,���ĵ�����һЩ������Ҫ�ҵط��ķ�,��������ר���Ӳ칤��,��������ī��������С����ʶ��.")
				
	MisBeginCondition(NoMission, 1497)
	MisBeginCondition(NoRecord,1497)
	MisBeginCondition(HasRecord, 1496)
	MisBeginAction(AddMission,1497)
	MisCancelAction(ClearMission, 1497)

	MisNeed(MIS_NEED_DESP, "�������ܹܡ���ī(3290,2512)����")
	
	MisHelpTalk("<t>�����ܹܡ���ī�����½�������.")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------�罻��ʹ12--------�����ܹܡ���ī
	DefineMission(5839, "�罻��ʹ12", 1497, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>������һ����������ֵ�����ε���,���Խ������ص���Ʒ�ķ���������,������ǧ��Ҫ���߱���Ŷ,������С���´���һ����ʮ���������ǵķ����.")
	MisResultCondition(NoRecord, 1497)
	MisResultCondition(HasMission,1497)
	MisResultAction(ClearMission,1497)
	MisResultAction(SetRecord, 1497)


	----------------------------------------------------------�罻��ʹ13----------�����ܹܡ���ī
	DefineMission( 5840, "�罻��ʹ13", 1498 )
	MisBeginTalk("<t>��Ȼ�����������Ӳ��,���Ǽ�Ȼ����������������С��,��ȻҪ�ú����������һ������ķ���������,����������������С�㵽�����.")
				
	MisBeginCondition(NoMission, 1498)
	MisBeginCondition(NoRecord,1498)
	MisBeginCondition(HasRecord, 1497)
	MisBeginAction(AddMission,1498)
	MisCancelAction(ClearMission, 1498)

	MisNeed(MIS_NEED_DESP, "���������ӡ�����(3275,2467)����")
	
	MisHelpTalk("<t>�������ӡ������Ǹ�����������С����.")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------�罻��ʹ13--------�������ӡ�����
	DefineMission(5841, "�罻��ʹ13", 1498, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>��,����!��ʲô���԰��������?�Һų��Ǵ�����ĵ���Ŷ.")
	MisResultCondition(NoRecord, 1498)
	MisResultCondition(HasMission,1498)
	MisResultAction(ClearMission,1498)
	MisResultAction(SetRecord, 1498)

	----------------------------------------------------------�罻��ʹ14----------�������ӡ�����
	DefineMission( 5842, "�罻��ʹ14", 1499 )
	MisBeginTalk("<t>��Ŷ,�ϴ������������Ǵ���������Һ�ˮ�����������������!��˵����,��Ҳ��һ�����ʵ���,������һ����ĺ�Ͷ��.")
				
	MisBeginCondition(NoMission, 1499)
	MisBeginCondition(NoRecord,1499)
	MisBeginCondition(HasRecord, 1498)
	MisBeginAction(AddMission,1499)
	MisCancelAction(ClearMission, 1499)

	MisNeed(MIS_NEED_DESP, "������Ů�ӡ�ˮ��(3241,2533)����")
	
	MisHelpTalk("<t>��ʵ...ÿ���ܹ���ˮ����һ������һֱ������Ը��...")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------�罻��ʹ14--------����Ů�ӡ�ˮ��        
	DefineMission(5843, "�罻��ʹ14", 1499, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>���������������ҵ���?��...���Ǹ�����.��ʵ������ܹ�����ҵ�������ɾͲ�����������Щ,�Ǹö��.��ֻ��������˵��������뷨...")
	MisResultCondition(NoRecord, 1499)
	MisResultCondition(HasMission,1499)
	MisResultAction(ClearMission,1499)
	MisResultAction(SetRecord, 1499)

	----------------------------------------------------------�罻��ʹ15----------����Ů�ӡ�ˮ��
	DefineMission( 5844, "�罻��ʹ15", 1601 )
	MisBeginTalk("<t>������˵,�����Ⱦ���һ������һ��,��ʲô����Ը�����˵.�Һ�����Ŷ,���кö໰�����˵��.����ֻ�����ذ����ܹ�����˵˵��.")
				
	MisBeginCondition(NoMission, 1601)
	MisBeginCondition(NoRecord,1601)
	MisBeginCondition(HasRecord, 1499)
	MisBeginAction(AddMission,1601)
	MisCancelAction(ClearMission, 1601)

	MisNeed(MIS_NEED_DESP, "������Ů�ӡ�����(3265,2547)����")
	
	MisHelpTalk("<t>����,�Ǹ�����Ů��.")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------�罻��ʹ15-------- ����Ů�ӡ�����
	DefineMission(5845, "�罻��ʹ15", 1601, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>ˮ����СѾͷ�Ǻܶ���Ƹе�Ů��,������һֱ��߶����������,����ϣ���Լ���������һ�����.���Ǻ�ϲ�����СѾͷ,���Ծ�����������.")
	MisResultCondition(NoRecord, 1601)
	MisResultCondition(HasMission,1601)
	MisResultAction(ClearMission,1601)
	MisResultAction(SetRecord, 1601)


	----------------------------------------------------------�罻��ʹ16----------����Ů�ӡ�����
	DefineMission( 5846, "�罻��ʹ16", 1602 )
	MisBeginTalk("<t>��,����ר�������������ʺ��ҵ���?�������������İ�,лл��.����,�ȸ�Ҳ�������ȵ�����.")
				
	MisBeginCondition(NoMission, 1602)
	MisBeginCondition(NoRecord,1602)
	MisBeginCondition(HasRecord, 1601)
	MisBeginAction(AddMission,1602)
	MisCancelAction(ClearMission, 1602)

	MisNeed(MIS_NEED_DESP, "���������ӡ��ȸ�(3235,2550)����")
	
	MisHelpTalk("<t>�ȸ��Ǹ���Ȥ������.")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------�罻��ʹ16-------- �������ӡ��ȸ�
	DefineMission(5847, "�罻��ʹ16", 1602, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>����������ɺ�?�����ȵ�΢Ц�������ϵ�̫��һ������,��������Χ���ǻ���һȺ����,�����ѡ��,�ҸҴ�������ȵĶ���֧����һ�����!")
	MisResultCondition(NoRecord, 1602)
	MisResultCondition(HasMission,1602)
	MisResultAction(ClearMission,1602)
	MisResultAction(SetRecord, 1602)


	----------------------------------------------------------�罻��ʹ17----------�������ӡ��ȸ�
	DefineMission( 5848, "�罻��ʹ17", 1502 )
	MisBeginTalk("<t>ʲô?������Ϊʲô?����Ҹ�����������������������ɽ���������ȵ����ѵĻ�,��Ӧ��û�������˰�.")
				
	MisBeginCondition(NoMission, 1502)
	MisBeginCondition(NoRecord,1502)
	MisBeginCondition(HasRecord, 1602)
	MisBeginAction(AddMission,1502)
	MisCancelAction(ClearMission, 1502)

	MisNeed(MIS_NEED_DESP, "�Ҷ���������������ɽ(2219,3286)����")
	
	MisHelpTalk("<t>����������������ɽ�������ĺ���,�����۳Ҷ�������.")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------�罻��ʹ17-------- ����������������ɽ
	DefineMission(5849, "�罻��ʹ17", 1502, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>�������ۣ�û�뵽���������ȵ�����,˵�������Ҷ��������ž�Ȼ�ܹ��ͺ���������Ϊ����,�������Ǵ����Э��,�Ҳ���Ϯ�������ȹ�Ͻ��Χ�Ĵ�ֻ.")
	MisResultCondition(NoRecord, 1502)
	MisResultCondition(HasMission,1502)
	MisResultAction(ClearMission,1502)
	MisResultAction(SetRecord, 1502)

	----------------------------------------------------------�罻��ʹ18----------����������������ɽ
	DefineMission( 5850, "�罻��ʹ18", 1603 )
	MisBeginTalk("<t>���������Ǻõط���,�������Ҷ����������˺��ϵķ������.����ķ��κͷ��Ͷ����Ҽ��粻һ��Ŷ,�ϴ������ȴ���ȥ��������ʦ���������һ��Ī���ɷ���,����,�����!��Ȼ���Ǻ���,������Ҳ����Ҫ��װ����,�ο�������ô�����ĺ�����,������.")
				
	MisBeginCondition(NoMission, 1603)
	MisBeginCondition(NoRecord,1603)
	MisBeginCondition(HasRecord, 1502)
	MisBeginAction(AddMission,1603)
	MisCancelAction(ClearMission, 1603)

	MisNeed(MIS_NEED_DESP, "�ҳ�������ʦ(3300,2513)����")
	
	MisHelpTalk("<t>��������ʦ��˼��ǰ��,��Ƴ��ڵķ������ʦ.")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------�罻��ʹ18-------- ��������ʦ
	DefineMission(5851, "�罻��ʹ18", 1603, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>����,��˵�����ϴ������ȴ������Ǹ���ֵĺ�����,�����Ҹ�����Ƶķ��ͺ������!")
	MisResultCondition(NoRecord, 1603)
	MisResultCondition(HasMission,1603)
	MisResultAction(ClearMission,1603)
	MisResultAction(SetRecord, 1603)

	----------------------------------------------------------�罻��ʹ19----------��������ʦ
	DefineMission( 5852, "�罻��ʹ19", 1604 )
	MisBeginTalk("<t>��,ԭ������ר�������������ʺ��������ѵİ�,��ȥ���ۿ�ָ�ӡ�˪��������?����û��ȥ������ָ�ӡ�����������?����,�ǵ��������������ʺ�,˳���������Ϊ��ר�������һ������,�����ʺ���������!")
				
	MisBeginCondition(NoMission, 1604)
	MisBeginCondition(NoRecord,1604)
	MisBeginCondition(HasRecord, 1603)
	MisBeginAction(AddMission,1604)
	MisCancelAction(ClearMission, 1604)

	MisNeed(MIS_NEED_DESP, "�Һ���ָ�ӡ�����(3685,2652)����")
	
	MisHelpTalk("<t>����ָ�ӡ�������һ��ϲ���������.")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------�罻��ʹ19-------- ����ָ�ӡ�����
	DefineMission(5853, "�罻��ʹ19", 1604, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>���,�������,�����˰�!��ÿ�춼���������,��...����������ʲô������?���������ȿ������ںʹ�˵����û�о������,������һ���ر����,�����ܹ���͸�ҵ���.")
	MisResultCondition(NoRecord, 1604)
	MisResultCondition(HasMission,1604)
	MisResultAction(ClearMission,1604)
	MisResultAction(SetRecord, 1604)


	----------------------------------------------------------�罻��ʹ20----------����ָ�ӡ�����
	DefineMission( 5854, "�罻��ʹ20", 1605 )
	MisBeginTalk("<t>��һֱ��Ϊ���˺���ָ�ӡ���������,û�����ܹ�������Ϊʲô�Դ�˵����.����,˵������,��Ҳ�����������Ǹ��ر����,�����������Ҷ���������������,�ٺ�.")
				
	MisBeginCondition(NoMission, 1605)
	MisBeginCondition(NoRecord,1605)
	MisBeginCondition(HasRecord, 1604)
	MisBeginAction(AddMission,1605)
	MisCancelAction(ClearMission, 1605)

	MisNeed(MIS_NEED_DESP, "�Һ���ָ�ӡ�����(3337,3523)����")
	
	MisHelpTalk("<t>�����Ǹ�ӵ��Զ������ͱ����ĺ���ָ��,����û������Ϊ����Ը���ܹ�ʵ��.")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------�罻��ʹ20-------- ����ָ�ӡ�����
	DefineMission(5855, "�罻��ʹ20", 1605, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>����������˰�.ʲô,����������һֱ������������?�Ǻ�,˵ʵ��,���������ܹ������������ӡ�����Ŷ.�����С��ĺ���ָ����ô������,��һ��������ͬ�ҵ�����...��Ϊ������һ���ܹ��Լ�ӵ��һ֧����ȥ�Ը����еĺ���.")
	MisResultCondition(NoRecord, 1605)
	MisResultCondition(HasMission,1605)
	MisResultAction(ClearMission,1605)
	MisResultAction(SetRecord, 1605)

	----------------------------------------------------------�罻��ʹ21----------����ָ�ӡ�����
	DefineMission( 5856, "�罻��ʹ21", 1606 )
	MisBeginTalk("<t>���Ѿ��ʺ����������������ȵ�������?���������������.ǧ��Ҫ���ǰ��ҵ�ף������������Ŷ,������ܹ�������������,��һ����һʱ��ӭ����.���Ƕ���������!����,���������������ѽ�����������������,������Ҫ�뵽����Ŷ.")
				
	MisBeginCondition(NoMission, 1606)
	MisBeginCondition(NoRecord,1606)
	MisBeginCondition(HasRecord, 1605)
	MisBeginAction(AddMission,1606)
	MisCancelAction(ClearMission, 1606)

	MisNeed(MIS_NEED_DESP, "�Ұ����Ǻ�����������������(2247,2858)����")
	
	MisHelpTalk("<t>�鷳�㽫���ǵ��������������.")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------�罻Ӣ��21------- ������������������
	DefineMission(5857, "�罻Ӣ��21", 1606, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>����İ����ʺ��˴��������е�������,̫��л����,��Ȼ������������!��,�治֪����θ�л��,��öѫ������֮����.")
	MisResultCondition(NoRecord, 1606)
	MisResultCondition(HasMission,1606)
	MisResultAction(ClearMission,1606)
	MisResultAction(SetRecord, 1606)
	MisResultAction(GiveItem, 2573, 1, 4)
	MisResultBagNeed(1)


	-------------------------------------------------�ر�����һ--------������������������
	DefineMission (5858, "��з֮�ر��ж�һ", 1607)
	
	MisBeginTalk("<t>��,��������������ĳɼ�����?�Ǻ�,����㻹���㹻�����ĵĻ�,ȥ���Ǳ���·�ˡ�����,���������ر�Ŀ���.")

	MisBeginCondition(NoMission,1607)
	MisBeginCondition(NoRecord,1607)
	MisBeginCondition(HasRecord,1468)
	MisBeginCondition(HasRecord,1481)
	MisBeginCondition(HasRecord,1482)
	MisBeginCondition(HasRecord,1483)
	MisBeginCondition(HasRecord,1484)
	MisBeginCondition(HasRecord,1485)
	MisBeginCondition(HasRecord,1475)
	MisBeginCondition(HasRecord,1606)
	MisBeginAction(AddMission,1607)
	MisCancelAction(ClearMission, 1607)
	MisBeginBagNeed(1)
	
	MisNeed(MIS_NEED_DESP, "�ұ��Ǳ���·�ˡ���(1335,469)����")
	MisHelpTalk("<t>Ҫ��֪����ʲô�ر�����ȴ����㣬�͸Ͽ�ȥ��·�ˡ�����.")

	MisResultCondition(AlwaysFailure)	


	-------------------------------------------------�ر�����һ--------���Ǳ���·�ˡ���
	DefineMission (5859, "��з֮�ر��ж�һ", 1607, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>���Ѿ�ͨ�������ȸ������������?���˲���,���ҿ���ȥ�Ǹ������۵�·��,��ʵ�������ؼ��������Ŷ!�ߺ�!���ҵ����ֶ����ص���ô����,�ܿ��!��ô���������Ƿ�����������Ҹ�����ر������..")	
	MisResultCondition(NoRecord, 1607)
	MisResultCondition(HasMission,1607)
	MisResultAction(ClearMission,1607)
	MisResultAction(SetRecord, 1607)


	--------------------------------------�ر������----���Ǳ���·�ˡ���

	DefineMission(5860, "��з֮�ر��ж���", 1608 )	
	
	MisBeginTalk("<t>��������Ǿ�з���ر��ж�,����Բ��μ�,���Ǿ�û���ر������Ŷ.��������ӵ��ʵ��������,��ô�ͽ�����ս��.��������ʮ����Ҫ�Ķ�����Ҫ�㾡���͵�������������.<b2�����ڸϵ����Ǳ�����������(1326,532)>����.")

	MisBeginCondition(NoMission,1608)
	MisBeginCondition(NoRecord,1608)
	MisBeginCondition(HasRecord,1607)
	MisBeginAction(AddMission,1608)
	MisBeginAction(AddChaItem3, 2952)---------��з�ر��ж���
	MisCancelAction(ClearMission, 1608)
	MisBeginBagNeed(1)
	
	MisNeed(MIS_NEED_DESP, "����������(1326,532)����")
	MisHelpTalk("<t>��ȥ��,��ֻ��2����Ŷ")

	MisResultCondition(AlwaysFailure)	

	--------------------------------------�ر������----��������

	DefineMission(5861, "��з֮�ر��ж���", 1608, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>�������ǳ���л��.�ҵ���������þ���.��...���Ǵ��Ÿ���������һ��ӵ��ǿ��Ǳ���Ŀ���֮��.��,����һ������,ϣ���ܹ������㾡��ǿ������.")
	MisResultCondition(HasMission, 1608)
	MisResultCondition(NoRecord,1608)
	MisResultAction(AddChaItem4, 2952)----�ر��ж���
	MisResultAction(ClearMission, 1608)
	MisResultAction(SetRecord,  1608 )
	MisResultAction(GiveItem, 2575, 1, 4)------------��з������װ����
	MisResultBagNeed(1)

-------------------------------------------------��з֮ˮ�ֹ��ؽ���----------������������������
	DefineMission (5862, "��з֮ˮ�ֹ��ؽ���", 1609)
	
	MisBeginTalk("<t>����7öѫ�¾Ϳ�����������һ�����з����ӡ��ʨ�ӹ�����Ʊ��.���кཱܶ��Ŷ ")

	MisBeginCondition(NoMission,1609)
	MisBeginCondition(HasRecord,1466)
	MisBeginCondition(HasRecord,1470)
	MisBeginCondition(HasRecord,1471)
	MisBeginCondition(HasRecord,1472)
	MisBeginCondition(HasRecord,1473)
	MisBeginCondition(HasRecord,1474)
	MisBeginCondition(HasRecord,1475)
	MisBeginCondition(HasRecord,1606)
	MisBeginCondition(NoRecord,1609)
	MisBeginAction(AddMission,1609)  
	MisBeginAction(AddTrigger, 16091, TE_GETITEM, 2568, 1 )		
	MisBeginAction(AddTrigger, 16092, TE_GETITEM, 2569, 1 )		
	MisBeginAction(AddTrigger, 16093, TE_GETITEM, 2570, 1 )		
 	MisBeginAction(AddTrigger, 16094, TE_GETITEM, 2571, 1 )		
	MisBeginAction(AddTrigger, 16095, TE_GETITEM, 2572, 1 )		
	MisBeginAction(AddTrigger, 16096, TE_GETITEM, 2573, 1 )		
	MisBeginAction(AddTrigger, 16097, TE_GETITEM, 2574, 1 )	
	MisCancelAction(ClearMission, 1609)						                                     
	
	MisNeed(MIS_NEED_ITEM, 2568, 1, 10, 1 )
	MisNeed(MIS_NEED_ITEM, 2569, 1, 20, 1 )
	MisNeed(MIS_NEED_ITEM, 2570, 1, 30, 1 )
	MisNeed(MIS_NEED_ITEM, 2571, 1, 40, 1 )
	MisNeed(MIS_NEED_ITEM, 2572, 1, 50, 1)
	MisNeed(MIS_NEED_ITEM, 2573, 1, 60, 1 )
	MisNeed(MIS_NEED_ITEM, 2574, 1, 70, 1 )
	
	MisHelpTalk("<t>������ԥʲô?�����һ�������")
	MisResultTalk("<t>��һ����ʨ�ӹ�,�и����˵Ľ����͸��̼�����ս�ڵ���.")

	MisResultCondition(HasMission, 1609)
	MisResultCondition(NoRecord,1609)
	MisResultCondition(HasItem, 2568, 1 )
	MisResultCondition(HasItem, 2569, 1 )
	MisResultCondition(HasItem, 2570, 1 )
	MisResultCondition(HasItem, 2571, 1 )
	MisResultCondition(HasItem, 2572, 1 )
	MisResultCondition(HasItem, 2573, 1 )
	MisResultCondition(HasItem, 2574, 1 )

	MisResultAction(TakeItem, 2568, 1 )
	MisResultAction(TakeItem, 2569, 1 )
	MisResultAction(TakeItem, 2570, 1 )
	MisResultAction(TakeItem, 2571, 1 )
	MisResultAction(TakeItem, 2572, 1 )
	MisResultAction(TakeItem, 2573, 1 )
	MisResultAction(TakeItem, 2574, 1 )

	MisResultAction(ClearMission, 1609)
	MisResultAction(SetRecord,  1609 )
	MisResultAction(GiveItem, 2273, 1, 4)
	MisResultAction(GiveItem, 2274, 1, 4)
	MisResultAction(GiveItem, 3877, 1, 4)
	MisResultAction(AddMoney,1000000,1000000)
	MisResultAction(ShuangZiSS)
	MisResultBagNeed(3)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1874)	
	TriggerAction( 1, AddNextFlag, 1609, 10, 1 )
	RegCurTrigger( 16091 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1875)	
	TriggerAction( 1, AddNextFlag, 1609, 20, 1 )
	RegCurTrigger( 16092 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1876)	
	TriggerAction( 1, AddNextFlag, 1609, 30, 1 )
	RegCurTrigger( 16093 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1877)	
	TriggerAction( 1, AddNextFlag, 1609, 40, 1 )
	RegCurTrigger( 16094 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1878)	
	TriggerAction( 1, AddNextFlag, 1609, 50, 1 )
	RegCurTrigger( 16095 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1879)	
	TriggerAction( 1, AddNextFlag, 1609, 60, 1 )
	RegCurTrigger( 16096 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1880)	
	TriggerAction( 1, AddNextFlag, 1609, 70, 1 )
	RegCurTrigger( 16097 )
----------------------------------------------��з֮�������ؽ���----------������������������	
	DefineMission (5863, "��з֮�������ؽ���", 1610)
	
	MisBeginTalk("<t>����7öѫ�¾Ϳ�����������һ�����з����ӡ��ʨ�ӹ�����Ʊ��.���кཱܶ��Ŷ ")

	MisBeginCondition(NoMission,1610)
	MisBeginCondition(HasRecord,1467)
	MisBeginCondition(HasRecord,1476)
	MisBeginCondition(HasRecord,1477)
	MisBeginCondition(HasRecord,1600)
	MisBeginCondition(HasRecord,1479)
	MisBeginCondition(HasRecord,1480)
	MisBeginCondition(HasRecord,1475)
	MisBeginCondition(HasRecord,1606)
	MisBeginCondition(NoRecord,1610)
	MisBeginAction(AddMission,1610)
	MisBeginAction(AddTrigger, 16101, TE_GETITEM, 2568, 1 )		
	MisBeginAction(AddTrigger, 16102, TE_GETITEM, 2569, 1 )		
	MisBeginAction(AddTrigger, 16103, TE_GETITEM, 2570, 1 )		
 	MisBeginAction(AddTrigger, 16104, TE_GETITEM, 2571, 1 )		
	MisBeginAction(AddTrigger, 16105, TE_GETITEM, 2572, 1 )		
	MisBeginAction(AddTrigger, 16106, TE_GETITEM, 2573, 1 )		
	MisBeginAction(AddTrigger, 16107, TE_GETITEM, 2574, 1 )		
	MisCancelAction(ClearMission, 1610)						                                     
	
	MisNeed(MIS_NEED_ITEM, 2568, 1, 10, 1 )
	MisNeed(MIS_NEED_ITEM, 2569, 1, 20, 1 )
	MisNeed(MIS_NEED_ITEM, 2570, 1, 30, 1 )
	MisNeed(MIS_NEED_ITEM, 2571, 1, 40, 1 )
	MisNeed(MIS_NEED_ITEM, 2572, 1, 50, 1)
	MisNeed(MIS_NEED_ITEM, 2573, 1, 60, 1 )
	MisNeed(MIS_NEED_ITEM, 2574, 1, 70, 1 )
	
	MisHelpTalk("<t>������ԥʲô?�����һ�������")
	MisResultTalk("<t>��һ����ʨ�ӹ�,�и����˵Ľ����͸��̼�����ս�ڵ���.")

	MisResultCondition(HasMission, 1610)
	MisResultCondition(NoRecord,1610)
	MisResultCondition(HasItem, 2568, 1 )
	MisResultCondition(HasItem, 2569, 1 )
	MisResultCondition(HasItem, 2570, 1 )
	MisResultCondition(HasItem, 2571, 1 )
	MisResultCondition(HasItem, 2572, 1 )
	MisResultCondition(HasItem, 2573, 1 )
	MisResultCondition(HasItem, 2574, 1 )

	MisResultAction(TakeItem, 2568, 1 )
	MisResultAction(TakeItem, 2569, 1 )
	MisResultAction(TakeItem, 2570, 1 )
	MisResultAction(TakeItem, 2571, 1 )
	MisResultAction(TakeItem, 2572, 1 )
	MisResultAction(TakeItem, 2573, 1 )
	MisResultAction(TakeItem, 2574, 1 )

	MisResultAction(ClearMission, 1610)
	MisResultAction(SetRecord,  1610 )
	MisResultAction(GiveItem, 2273, 1, 4)
	MisResultAction(GiveItem, 2274, 1, 4)
	MisResultAction(GiveItem, 3877, 2, 4)
	MisResultAction(AddMoney,2000000,2000000)
	MisResultAction(ShuangZiHD)
	MisResultBagNeed(3)

	InitTrigger()
	TriggerCondition( 1, IsItem, 2568)	
	TriggerAction( 1, AddNextFlag, 1610, 10, 1 )
	RegCurTrigger( 16101 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2569)	
	TriggerAction( 1, AddNextFlag, 1610, 20, 1 )
	RegCurTrigger( 16102 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2570)	
	TriggerAction( 1, AddNextFlag, 1610, 30, 1 )
	RegCurTrigger( 16103 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2571)	
	TriggerAction( 1, AddNextFlag, 1610, 40, 1 )
	RegCurTrigger( 16104 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2572)	
	TriggerAction( 1, AddNextFlag, 1610, 50, 1 )
	RegCurTrigger( 16105 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2573)	
	TriggerAction( 1, AddNextFlag, 1610, 60, 1 )
	RegCurTrigger( 16106 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2574)	
	TriggerAction( 1, AddNextFlag, 1610, 70, 1 )
	RegCurTrigger( 16107 )

	--------------------------------------------��з֮�������ؽ���----------������������������	
	DefineMission (5864, "��з֮�������ؽ���", 1611)
	
	MisBeginTalk("<t>����7öѫ�¾Ϳ�����������һ�����з����ӡ��ʨ�ӹ�����Ʊ��.���кཱܶ��Ŷ ")

	MisBeginCondition(NoMission,1611)
	MisBeginCondition(HasRecord,1468)
	MisBeginCondition(HasRecord,1481)
	MisBeginCondition(HasRecord,1482)
	MisBeginCondition(HasRecord,1483)
	MisBeginCondition(HasRecord,1484)
	MisBeginCondition(HasRecord,1485)
	MisBeginCondition(HasRecord,1475)
	MisBeginCondition(HasRecord,1606)
	MisBeginCondition(NoRecord,1611)
	MisBeginAction(AddMission,1611)   
	MisBeginAction(AddTrigger, 16111, TE_GETITEM, 2568, 1 )		
	MisBeginAction(AddTrigger, 16112, TE_GETITEM, 2569, 1 )		
	MisBeginAction(AddTrigger, 16113, TE_GETITEM, 2570, 1 )		
 	MisBeginAction(AddTrigger, 16114, TE_GETITEM, 2571, 1 )		
	MisBeginAction(AddTrigger, 16115, TE_GETITEM, 2572, 1 )		
	MisBeginAction(AddTrigger, 16116, TE_GETITEM, 2573, 1 )		
	MisBeginAction(AddTrigger, 16117, TE_GETITEM, 2574, 1 )	
	MisCancelAction(ClearMission, 1611)						                                     
	
	MisNeed(MIS_NEED_ITEM, 2568, 1, 10, 1 )
	MisNeed(MIS_NEED_ITEM, 2569, 1, 20, 1 )
	MisNeed(MIS_NEED_ITEM, 2570, 1, 30, 1 )
	MisNeed(MIS_NEED_ITEM, 2571, 1, 40, 1 )
	MisNeed(MIS_NEED_ITEM, 2572, 1, 50, 1)
	MisNeed(MIS_NEED_ITEM, 2573, 1, 60, 1 )
	MisNeed(MIS_NEED_ITEM, 2574, 1, 70, 1 )
	
	MisHelpTalk("<t>������ԥʲô?�����һ�������")
	MisResultTalk("<t>��һ����ʨ�ӹ�,�и����˵Ľ����͸��̼�����ս�ڵ���.")

	MisResultCondition(HasMission, 1611)
	MisResultCondition(NoRecord,1611)
	MisResultCondition(HasItem, 2568, 1 )
	MisResultCondition(HasItem, 2569, 1 )
	MisResultCondition(HasItem, 2570, 1 )
	MisResultCondition(HasItem, 2571, 1 )
	MisResultCondition(HasItem, 2572, 1 )
	MisResultCondition(HasItem, 2573, 1 )
	MisResultCondition(HasItem, 2574, 1 )

	MisResultAction(TakeItem, 2568, 1 )
	MisResultAction(TakeItem, 2569, 1 )
	MisResultAction(TakeItem, 2570, 1 )
	MisResultAction(TakeItem, 2571, 1 )
	MisResultAction(TakeItem, 2572, 1 )
	MisResultAction(TakeItem, 2573, 1 )
	MisResultAction(TakeItem, 2574, 1 )

	MisResultAction(ClearMission, 1611)
	MisResultAction(SetRecord,  1611 )
	MisResultAction(GiveItem, 2273, 1, 4)
	MisResultAction(GiveItem, 2274, 1, 4)
	MisResultAction(GiveItem, 3877, 3, 4)
	MisResultAction(AddMoney,3000000,3000000)
	MisResultAction(ShuangZiCZ)
	MisResultBagNeed(3)

	InitTrigger()
	TriggerCondition( 1, IsItem, 2568)	
	TriggerAction( 1, AddNextFlag, 1611, 10, 1 )
	RegCurTrigger( 16111 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2569)	
	TriggerAction( 1, AddNextFlag, 1611, 20, 1 )
	RegCurTrigger( 16112 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2570)	
	TriggerAction( 1, AddNextFlag, 1611, 30, 1 )
	RegCurTrigger( 16113 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2571)	
	TriggerAction( 1, AddNextFlag, 1611, 40, 1 )
	RegCurTrigger( 16114 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2572)	
	TriggerAction( 1, AddNextFlag, 1611, 50, 1 )
	RegCurTrigger( 16115 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2573)	
	TriggerAction( 1, AddNextFlag, 1611, 60, 1 )
	RegCurTrigger( 16116 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2574)	
	TriggerAction( 1, AddNextFlag, 1611, 70, 1 )
	RegCurTrigger( 16117 )


----------------------------------------����ʮ�´�բз���һ��---------�����������̡����٣�2277,2769��

	DefineMission(5865,"����ʮ���ͷ׼��ڳ�ëз",1208)

	MisBeginTalk("<t>����ʮ�£����ǳ�з�Ļƽ�Ѽ���<n><t>�������ڴ�����Ѱ��һ����з�ط�����˵�ɴ˷������ëз�������벻����Ч������֪���ɸ���Ȥ��")

	MisBeginCondition(NoMission, 1208)
	MisBeginCondition(NoRecord, 1208)
	MisBeginAction(AddMission, 1208)
	MisBeginAction(AddTrigger, 12081, TE_GETITEM, 4490, 1)          
	MisBeginAction(AddTrigger, 12082, TE_GETITEM, 4426, 2)
	MisBeginAction(AddTrigger, 12083, TE_GETITEM, 4393, 8)

	MisCancelAction(ClearMission,1208)                         ---------����ȡ��������

	MisNeed(MIS_NEED_DESP, "<t>���侫ͨ��⿣���ԭ���ϻ�����İ���������з(����1773,2517)����1��<yз��>����ζ�����ĵ��ϣ�����з(����1783,2507)����2��<y������зǯ>�ܰ�з���и�ø�Ϊ���ȣ���8��Ӳ��з(����994,857)����<y�޷�ʳ�õ�з��>��������˲˵Ĺؼ���")
	MisNeed(MIS_NEED_ITEM, 4490, 1, 10, 1)               ---------з��
	MisNeed(MIS_NEED_ITEM, 4426, 2, 20, 2)               ---------������зǯ
	MisNeed(MIS_NEED_ITEM, 4393, 8, 30, 8)               ---------�޷�ʳ�õ�з��

	MisHelpTalk("<t>��ϸ�ҵ���Щԭ���ϣ��ҵĳ���һ����������ʧ����")
	MisResultTalk("<t>�Ͻ�����������ëзʢ�磬һ������������Ч��Ŷ������14�죬����Ϊ�����з���ͣ���ӭ�ٴ�Ʒ����")

	MisResultCondition(HasMission, 1208)
	MisResultCondition(NoRecord, 1208)
	MisResultCondition(HasItem, 4490, 1)
	MisResultCondition(HasItem, 4426, 2)
	MisResultCondition(HasItem, 4393, 8)

	MisResultAction(TakeItem, 4490, 1)
	MisResultAction(TakeItem, 4426, 2)
	MisResultAction(TakeItem, 4393, 8)

	MisResultAction(GiveItem, 0048, 1, 4)                          ---------ëз
	MisResultAction(ClearMission, 1208)                        
	MisResultAction(SetRecord, 1208)
	MisResultAction(ClearRecord, 1208)                          ----------������Է�����
	MisResultBagNeed(1)


	InitTrigger()
	TriggerCondition(1, IsItem, 4490)
	TriggerAction(1, AddNextFlag, 1208, 10, 1)
	RegCurTrigger(12081)


	InitTrigger()
	TriggerCondition(1, IsItem, 4426)
	TriggerAction(1, AddNextFlag, 1208, 20, 2)
	RegCurTrigger(12082)


	InitTrigger()
	TriggerCondition(1, IsItem, 4393)
	TriggerAction(1, AddNextFlag, 1208, 30, 8)
	RegCurTrigger(12083)


----------------------------------------����ʮ�´�բз�������---------�����������̡����٣�2277,2769��

	DefineMission(5866,"����ʮ�´��������բз",1209)

	MisBeginTalk("<t>��բз��������з��֮�������������Ұ���Ĵ�բз���Ǿ߱��ʡ��㡢�ۡ�ˬ���ص㣬�Ժ�����������ˬ�������ս�������������֪���Ƿ�����ȤƷ����")

	
	MisBeginCondition(NoMission, 1209)
	MisBeginCondition(NoRecord, 1209)
	MisBeginAction(AddMission,1209)
	MisBeginAction(AddTrigger, 12091, TE_GETITEM, 4342, 1)
	MisBeginAction(AddTrigger, 12092, TE_GETITEM, 4793, 2)
	MisBeginAction(AddTrigger, 12093, TE_GETITEM, 4500, 1)
	MisBeginAction(AddTrigger, 12094, TE_GETITEM, 0057, 1)


	MisCancelAction(ClearMission, 1209)

	MisNeed(MIS_NEED_DESP, "<t>���ƴ�з�����ԭ����ǳ���������������з(����1783,2507)����1��<y��Ӳ��з��>������з(��������349, 376)����2��<y����зǯ>������з��(����1783,2507)����1��<y�ɺ��з��>�������̳�����۵�1��<yз��>����������з֮��������з֮��Ʒ��")
       
	
	MisNeed(MIS_NEED_ITEM, 4342, 1, 10, 1)                       ---------��Ӳ��з��
	MisNeed(MIS_NEED_ITEM, 4793, 2, 20, 2)                       ---------����зǯ
	MisNeed(MIS_NEED_ITEM, 4500, 1, 30, 1)                       ---------�ɺ��з��
	MisNeed(MIS_NEED_ITEM, 0057, 1, 40, 1)                       ---------з��

	MisHelpTalk("<t>��Ȼԭ���ϵ��ռ���һ���ǳ�������£�������Ʒ������ζ�Ĵ�բз�����Ϊ�Լ���Ŭ�����е��Ժ���")
	MisResultTalk("<t>�����բз��¯���ǵ���ϧʳ��֮��20������ĳ�ֵЧ��ร����쳤�٣���������������ζ��з��ͣ���ӭ�ٴ�Ʒ����")

	MisResultCondition(HasMission, 1209)
	MisResultCondition(NoRecord, 1209)
	MisResultCondition(HasItem, 4342, 1)
	MisResultCondition(HasItem, 4793, 2)
	MisResultCondition(HasItem, 4500, 1)
	MisResultCondition(HasItem, 0057, 1)

	MisResultAction(TakeItem, 4342, 1)
	MisResultAction(TakeItem, 4793, 2)
	MisResultAction(TakeItem, 4500, 1)
	MisResultAction(TakeItem, 0057, 1)

	MisResultAction(GiveItem, 0056, 1, 4)                                   ---------��բз
	MisResultAction(ClearMission, 1209)
	MisResultAction(SetRecord, 1209)
	MisResultAction(ClearRecord, 1209)                                   ----------������Է�����
	MisResultBagNeed(1)


	InitTrigger()
	TriggerCondition(1, IsItem, 4342)
	TriggerAction(1, AddNextFlag, 1209, 10, 1)
	RegCurTrigger(12091)


	InitTrigger()
	TriggerCondition(1, IsItem, 4793)
	TriggerAction(1, AddNextFlag, 1209, 20, 2)
	RegCurTrigger(12092)

	InitTrigger()
	TriggerCondition(1, IsItem, 4500)
	TriggerAction(1, AddNextFlag, 1209, 30, 1)
	RegCurTrigger(12093)

	InitTrigger()
	TriggerCondition(1, IsItem, 0057)
	TriggerAction(1, AddNextFlag, 1209, 40, 1)
	RegCurTrigger(12094)


----------------------------------------����ʮ�´�բз�������---------�����������̡����٣�2277,2769��

	DefineMission(5867, "����ʮ�������ڴ���з��", 1210)

	MisBeginTalk("<t>�����Ȿ����ط��ϵļ��أ��ɾ���з������������з�����Ǿ߱������ױȵ�������Ч����Ϊ��ʿ֮��Ʒ������з�籾����ӵ������Ч������֪���ɸ���Ȥ��")

	MisBeginCondition(NoMission, 1210)
	MisBeginCondition(NoRecord, 1210)
	MisBeginAction(AddMission, 1210)
	MisBeginAction(AddTrigger, 12101, TE_KILL, 273, 10)
	MisBeginAction(AddTrigger, 12102, TE_KILL, 186, 10)
	MisBeginAction(AddTrigger, 12103, TE_GETITEM, 4259, 5)
	MisBeginAction(AddTrigger, 12104, TE_GETITEM, 4890, 5)


	MisCancelAction(ClearMission, 1210)

	MisNeed(MIS_NEED_DESP, "<t>����з����Ǽ����ֵ��¶����⼸���ұ�����з��ɳз�����޷����о������ɷ�Ϊ�ҽ�����֮���أ�����λ��(��������349, 376)��10ֻ<y����з>��λ��(ħŮ֮��1341,3010)��10ֻ<yɳз>����˳�������ǲ����5��<y����>��5��<y��ɳ�ӵ�з��>��������")
	MisNeed(MIS_NEED_KILL, 273, 10, 10, 10)                  ----------����з
	MisNeed(MIS_NEED_KILL, 186, 10, 20, 10)                  ----------ɳз
	MisNeed(MIS_NEED_ITEM, 4259, 5, 30, 5)                  -----------����
	MisNeed(MIS_NEED_ITEM, 4890, 5, 40, 5)                  -----------��ɳ�ӵ�з��



	MisHelpTalk("<t>���ҪС��Ӧ����Щ�ƻ��ĳ���з��ɳз���һ�������1��<yз��>��Ϊ�ر�ร�")
	MisResultTalk("<t>������۵�з����Ҫ�������<y������2��>(���þ����λ��)��<y5��>(7200����)�ľ��ĺǻ������ܵ��������Ϊ���Ѵ�ͣ���������˵�̳�������һ���ܸ���̼�з��ɳ���<y����з�ü���>�������д����ֱ�������ң�����з�����ǲ����ţ����������Щ�¶��������ģ���ôֱ��ʳ�����з�磬�������������1000�㾭��ľ�ϲ��")
	
	MisResultCondition(HasMission, 1210)
	MisResultCondition(NoRecord, 1210)
	MisResultCondition(HasFlag, 1210, 19)
	MisResultCondition(HasFlag, 1210, 29)
	MisResultCondition(HasItem, 4259, 5)
	MisResultCondition(HasItem, 4890, 5)

	MisResultAction(TakeItem, 4259, 5)
	MisResultAction(TakeItem, 4890, 5)


	MisResultAction(ClearMission, 1210)
	MisResultAction(SetRecord, 1210)
	MisResultAction(ClearRecord, 1210)                                   ----------������Է�����
	MisResultAction(Givecrab, 0058)                                   ---------з��
	MisResultBagNeed(1)


	InitTrigger()
	TriggerCondition(1, IsMonster, 273)
	TriggerAction(1, AddNextFlag, 1210, 10, 10)
	RegCurTrigger(12101)

	InitTrigger()
	TriggerCondition(1, IsMonster, 186)
	TriggerAction(1, AddNextFlag, 1210, 20, 10)
	RegCurTrigger(12102)

	InitTrigger()
	TriggerCondition(1, IsItem, 4259)
	TriggerAction(1, AddNextFlag, 1210, 30, 5)
	RegCurTrigger(12103)

	InitTrigger()
	TriggerCondition(1, IsItem, 4890)
	TriggerAction(1, AddNextFlag, 1210, 40, 5)
	RegCurTrigger(12104)



-----------------------------kokora---------------------------------------
-------------------------------------------------------------------------------

-------------------------------------------��������1	
	DefineMission( 6138, "������������", 1211)
	MisBeginTalk( "<t>ѧ����ô�ã������ڿ�������ѧ����Ŷ����εĿ�������ܼ򵥣�ȥ��30���������������")
	MisBeginCondition( CheckXSZCh,2 )				------���ѧ��֤�д����ѧ���Ƿ�ﵽ����
	MisBeginCondition( HasItem , 3280,1 )
	MisBeginCondition( HasNoItem, 3282)
	MisBeginCondition( NoMission ,1211)
	MisBeginAction( AddMission, 1211)
	MisBeginAction(AddTrigger, 12111, TE_GETITEM, 3116, 30 )
	MisCancelAction( ClearMission, 1211)

	MisNeed(MIS_NEED_ITEM, 3116, 30, 10, 30 )
	MisHelpTalk( "<t>���ȥ�ɣ�ʱ�䲻����Ŷ")

	MisResultTalk( "<t>�����Լ��и��óɼ��ɣ�")
	MisResultCondition( HasMission, 1211)
	MisResultCondition( HasItem, 3116, 30)
	MisResultAction( TakeItem, 3116, 30)
	MisResultAction( ClearMission, 1211)
	MisResultAction( GiveItem, 3282, 1, 4)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3116)	
	TriggerAction( 1, AddNextFlag, 1211, 10, 30 )
	RegCurTrigger( 12111 )


--------------------------------------------------------------------���Ƚ�������

	DefineMission( 6139, "���Ƚ�������", 1212 )
	MisBeginTalk("<t>�ҵ��������α�ħ����˲��̵�ɱ����.�¸ҵ�սʿ,������ܹ�Ϊ���һش�������������<b�߸���ĸP-E-I-M-E-N-G>.�ҽ�������ղض����ħ�����͸���.�����ȥ��һ����<b��į֮����������˵�������(271,1775)>ѯ��һ�¾�������")
	MisBeginCondition(NoMission, 1212)
	MisBeginCondition(NoRecord,1212)
	MisBeginAction(AddMission,1212)
	MisBeginAction(AddTrigger, 12121, TE_GETITEM, 3854, 2)
	MisBeginAction(AddTrigger, 12122, TE_GETITEM, 3858, 1)
	MisBeginAction(AddTrigger, 12123, TE_GETITEM, 3863, 1)
	MisBeginAction(AddTrigger, 12124, TE_GETITEM, 3865, 1)
	MisBeginAction(AddTrigger, 12125, TE_GETITEM, 3862, 1)
	MisBeginAction(AddTrigger, 12126, TE_GETITEM, 3856, 1)
	
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "�һش���������������<b�߸���ĸP-E-I-M-E-N-G>.ȥ��һ����<b��į֮����������˵�������(271,1775)>ѯ��һ�¾�������.�ǵû����Ұ����ǵ�ħ��ʦ����(2229,2782)����")
	MisNeed(MIS_NEED_ITEM, 3854, 2, 10, 2)
	MisNeed(MIS_NEED_ITEM, 3858, 1, 20, 1)
	MisNeed(MIS_NEED_ITEM, 3863, 1, 30, 1)
	MisNeed(MIS_NEED_ITEM, 3865, 1, 40, 1)
	MisNeed(MIS_NEED_ITEM, 3862, 1, 50, 1)
	MisNeed(MIS_NEED_ITEM, 3856, 1, 60, 1)

	MisHelpTalk("<t>�ҵ�����Ĺ���.")
	MisResultTalk("<t>������������ʿ!��Ϊ����,������ղ��˶����ħ����,�����������.")

	MisResultCondition(HasMission, 1212)
	MisResultCondition(NoRecord,1212)
	MisResultCondition(HasItem, 3854, 2)
	MisResultCondition(HasItem, 3858, 1)
	MisResultCondition(HasItem, 3863, 1)
	MisResultCondition(HasItem, 3865, 1)
	MisResultCondition(HasItem, 3862, 1)
	MisResultCondition(HasItem, 3856, 1)

	MisResultAction(TakeItem, 3854, 2 )
	MisResultAction(TakeItem, 3858, 1 )
	MisResultAction(TakeItem, 3863, 1 )
	MisResultAction(TakeItem, 3865, 1 )
	MisResultAction(TakeItem, 3862, 1 )
	MisResultAction(TakeItem, 3856, 1 )

	
	MisResultAction(GiveItem, 3673,1,4)------------�����ħ����
	MisResultAction(ClearMission, 1212)
	--MisResultAction(ZSSTOP)
	MisResultAction(SetRecord, 1212)
	MisResultBagNeed(1)
	


	InitTrigger()
	TriggerCondition( 1, IsItem, 3854)	
	TriggerAction( 1, AddNextFlag, 1212, 10, 2 )
	RegCurTrigger( 12121 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3858)	
	TriggerAction( 1, AddNextFlag, 1212, 20, 1 )
	RegCurTrigger( 12122 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3863)	
	TriggerAction( 1, AddNextFlag, 1212, 30, 1 )
	RegCurTrigger( 12123 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3865)	
	TriggerAction( 1, AddNextFlag, 1212, 40, 1 )
	RegCurTrigger( 12124 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3862)	
	TriggerAction( 1, AddNextFlag, 1212, 50, 1 )
	RegCurTrigger( 12125 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3856)	
	TriggerAction( 1, AddNextFlag, 1212, 60, 1 )
	RegCurTrigger( 12126 )

	----------------------------------------------------------������͸©����Ϣ----------��˼ҵ�������
	DefineMission( 6140, "������͸©����Ϣ", 1213 )
	MisBeginTalk("<t>�Ҳ��ܳ�����˴���,����Ҳ��������������������ѵ���.������,�Ҹ�����һ����Ϣ����һ����ĸ�ڼ�į֮��1(263,260)���Ǽ���Ӷ������")
				
	MisBeginCondition(NoMission, 1213)
	MisBeginCondition(NoRecord,1213)
	MisBeginCondition(HasMission, 1212)
	MisBeginCondition(NoRecord, 1212)
	MisBeginAction(AddMission,1213)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "�Ҽ�į֮��1��(263,260)��˼ҵ���Ӷ����")
	
	MisHelpTalk("<t>�Ҳ�û�г����ҵ�����Ŷ,��˭�������ͳ�����ĸ��?")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------������͸©����Ϣ--------��˼ҵ���Ӷ
	DefineMission(6141, "������͸©����Ϣ", 1213, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>�ҵ����˵�ȷ��������һ����ĸ��Ƭ.����ƾʲô����?")
	MisResultCondition(NoRecord, 1213)
	MisResultCondition(HasMission,1213)
	MisResultAction(ClearMission,1213)
	MisResultAction(SetRecord, 1213)


	---------------------------------------------��Ӷ�Ĳ���---------��˼ҵ���Ӷ
	DefineMission(6142,"��Ӷ�Ĳ���",1214)

      MisBeginTalk("<t> ��ʵ�����ĸ��������˵Ҳûʲô��,��Ҳ��żȻ�õ���.�����Ա���Щ����Ĺ�������?ÿ����ҪԼ���ʱ���������ǲ���ʱ�˵�ǰ������,Ҫ�����ǵ���ɫ����.��������������,�һ��������ĸ���͸���.")

      MisBeginCondition(NoRecord,1214)
      MisBeginCondition(NoMission,1214)
      MisBeginCondition(HasRecord, 1213)
      MisBeginAction(AddMission,1214)
      MisBeginAction(AddTrigger, 12141, TE_GETITEM, 4739, 25 )
      MisBeginAction(AddTrigger, 12142, TE_GETITEM, 4740, 25 )          
      MisBeginAction(AddTrigger, 12143, TE_GETITEM, 4741, 25 )               
      MisBeginAction(AddTrigger, 12144, TE_GETITEM, 1486, 25 )               
      MisCancelAction(SystemNotice, "�������޷��ж�")

      MisNeed(MIS_NEED_DESP, "�����������ì����̵����������������ݵ�ʥ��֮�ġ��𻵵İ�ɫ��è����25��!")
      MisNeed(MIS_NEED_ITEM, 4739, 25,  1, 25 )
      MisNeed(MIS_NEED_ITEM, 4740, 25, 26, 25 )
      MisNeed(MIS_NEED_ITEM, 4741, 25,  51, 25 )
      MisNeed(MIS_NEED_ITEM, 1486, 25,  76, 25 )

      MisHelpTalk("<t>�����ҽ�ѵ����,һ����̸.")  
      MisResultTalk("<t>��ʿ,��Ȼ���Ѿ��ռ�������Ҫ�Ķ���.��ô��Ϊ����,������ĸP����ȥ��.")
      MisResultCondition(HasMission,1214 )
      MisResultCondition(NoRecord,1214)
      MisResultCondition(HasItem, 4739, 25 )
      MisResultCondition(HasItem, 4740, 25 )
      MisResultCondition(HasItem, 4741, 25 )
      MisResultCondition(HasItem, 1486, 25 )

        MisResultAction(TakeItem, 4739, 25 )
	MisResultAction(TakeItem, 4740, 25 )
	MisResultAction(TakeItem, 4741, 25 )
	MisResultAction(TakeItem, 1486, 25 )

      MisResultAction(GiveItem, 3865, 1, 4 )
      MisResultAction(ClearMission, 1214 )
      MisResultAction(SetRecord, 1214)
      MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4739)	
	TriggerAction( 1, AddNextFlag, 1214, 1, 25 )
	RegCurTrigger( 12141 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4740)	
	TriggerAction( 1, AddNextFlag, 1214, 26, 25 )
	RegCurTrigger( 12142 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4741)	
	TriggerAction( 1, AddNextFlag, 1214, 51, 25 )
	RegCurTrigger( 12143 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1486)	
	TriggerAction( 1, AddNextFlag, 1214, 76, 25 )
	RegCurTrigger( 12144 )
  
----------------------------------------------------------��ֵ�ŮӶ----------��˼ҵ���Ӷ
	DefineMission( 6143, "��ֵ�ŮӶ", 1215 )
	MisBeginTalk("<t>������֪,��į֮��2��(151,134)���Ҽҵ�ŮӶ����Ҳ��һ����ĸ��.ף������.")
				
	MisBeginCondition(NoMission, 1215)
	MisBeginCondition(NoRecord,1215)
	MisBeginCondition(HasRecord, 1214)
	MisBeginAction(AddMission,1215)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "�Ҽ�į֮��2��(151,134)����˼ҵ�ŮӶ����")
	
	MisHelpTalk("<t>����һλ��ֵ�Ů��.")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------��ֵ�ŮӶ--------��˼ҵ�ŮӶ
	DefineMission(6144, "��ֵ�ŮӶ", 1215, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>�ҵ�ȷ��˵�е������и���,���ҷ����Ҿ�������ֵ���.")
	MisResultCondition(NoRecord, 1215)
	MisResultCondition(HasMission,1215)
	MisResultAction(ClearMission,1215)
	MisResultAction(SetRecord, 1215)

	---------------------------------------------���ƶ�����ط�---------��˼ҵ�ŮӶ
	DefineMission(6145,"���ƶ�����ط�",1216)

      MisBeginTalk("<t> ���һ��Ҫ˵����ʲô����ĵط��������е㰮������,�������ǳ�˵�Ķ���.�Ҹոյõ�һ���ط������������ë��,�����������ս����ͣ�Ļ�������,���������ʮ����.�����һ���˱������ϲ����.")

      MisBeginCondition(NoRecord,1216)
      MisBeginCondition(NoMission,1216)
      MisBeginCondition(HasRecord, 1215)
      MisBeginAction(AddMission,1216)
      MisBeginAction(AddTrigger, 12161, TE_GETITEM, 4742, 35 )
      MisBeginAction(AddTrigger, 12162, TE_GETITEM, 4743, 35 )          
      MisBeginAction(AddTrigger, 12163, TE_GETITEM, 4745, 35 )                           
	MisCancelAction(SystemNotice, "�������޷��ж�")

      MisNeed(MIS_NEED_DESP, "�ռ���Ѫ���á��ؾ����䡢���صĵؾ�ս����35��!")
      MisNeed(MIS_NEED_ITEM, 4742, 35,  1, 35 )
      MisNeed(MIS_NEED_ITEM, 4743, 35, 36, 35 )
      MisNeed(MIS_NEED_ITEM, 4745, 35,  71, 35 )

      MisHelpTalk("<t>��֪�����������е������˼.")  
      MisResultTalk("<t>��ϣ���ҵ�覴ÿ������.�����ĸ���Ҹ���Ļر�.")
      MisResultCondition(HasMission,1216 )
      MisResultCondition(NoRecord,1216)
      MisResultCondition(HasItem, 4742, 35 )
      MisResultCondition(HasItem, 4743, 35 )
      MisResultCondition(HasItem, 4745, 35 )

        MisResultAction(TakeItem, 4742, 35 )
	MisResultAction(TakeItem, 4743, 35 )
	MisResultAction(TakeItem, 4745, 35 )


      MisResultAction(GiveItem, 3854, 1, 4 )
      MisResultAction(ClearMission, 1216 )
      MisResultAction(SetRecord, 1216)
      MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4742)	
	TriggerAction( 1, AddNextFlag, 1216, 1, 35 )
	RegCurTrigger( 12161 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4743)	
	TriggerAction( 1, AddNextFlag, 1216, 36, 35 )
	RegCurTrigger( 12162 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4745)	
	TriggerAction( 1, AddNextFlag, 1216, 71, 35 )
	RegCurTrigger(12163 )
----------------------------------------------------------��˼ҵ�С��----------��˼ҵ�ŮӶ
	DefineMission( 6146, "��˼ҵ�С��", 1217 )
	MisBeginTalk("<t>��֪����,��į֮��3��(63,311)��Ů������˴��˵�С��.˵����������Ҳ��һ����ĸ��,����,���ֶ�����,����Ҫ�Ͽ�����,��������.")
				
	MisBeginCondition(NoMission, 1217)
	MisBeginCondition(NoRecord,1217)
	MisBeginCondition(HasRecord, 1216)
	MisBeginAction(AddMission,1217)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "�Ҽ�į֮��3��(63,311)����˼ҵ�С������")
	
	MisHelpTalk("<t>���ϲ������ɦ��Ū�˵�Ů��.")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------��˼ҵ�С��--------��˼ҵ�С��
	DefineMission(6147, "��˼ҵ�С��", 1217, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>˭˵�Һ���˴��˹�ϵ������,��ҥ��.")
	MisResultCondition(NoRecord, 1217)
	MisResultCondition(HasMission,1217)
	MisResultAction(ClearMission,1217)
	MisResultAction(SetRecord, 1217)

	--------------------------------------------------------------------С�ص�����------��˼ҵ�С��

	DefineMission( 6148, "С�ص�����", 1218 )
	MisBeginTalk("<t>����һ������������,Ҫ���ϳ����Զ��.��������Ҫԭ�Ϻ͹���.")
	MisBeginCondition(NoMission, 1218)
	MisBeginCondition(NoRecord,1218)
	MisBeginCondition(HasRecord, 1217)
	MisBeginAction(AddMission,1218)
	MisBeginAction(AddTrigger, 12181, TE_GETITEM, 1501, 20)
	MisBeginAction(AddTrigger, 12182, TE_GETITEM, 1490, 20)
	MisBeginAction(AddTrigger, 12183, TE_GETITEM, 4748, 20)
	MisBeginAction(AddTrigger, 12184, TE_GETITEM, 4749, 20)
	MisBeginAction(AddTrigger, 12185, TE_GETITEM, 4725, 20)
	MisBeginAction(AddTrigger, 12186, TE_GETITEM, 4747, 20)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "�ռ�����ĺ�ɫè�������𻵵ĺ�ɫ��è������ѵĵؾ���������ŵؾ����֡��ƾɵ�����֮������ɫ��è����20��.")
	MisNeed(MIS_NEED_ITEM, 1501, 20, 1, 20)
	MisNeed(MIS_NEED_ITEM, 1490, 20, 21, 20)
	MisNeed(MIS_NEED_ITEM, 4748, 20, 41, 20)
	MisNeed(MIS_NEED_ITEM, 4749, 20, 61, 20)
	MisNeed(MIS_NEED_ITEM, 4725, 20, 81, 20)
	MisNeed(MIS_NEED_ITEM, 4747, 20, 101, 20)

	MisHelpTalk("<t>�ҷ·��Ѿ��������˰��Ƶ��½�.")
	MisResultTalk("<t>лл�������ʵ������������,������ܲ���ʵ��,�������ǲ���û�������.")

	MisResultCondition(HasMission, 1218)
	MisResultCondition(NoRecord,1218)
	MisResultCondition(HasItem, 1501, 20)
	MisResultCondition(HasItem, 1490, 20)
	MisResultCondition(HasItem, 4748, 20)
	MisResultCondition(HasItem, 4749, 20)
	MisResultCondition(HasItem, 4725, 20)
	MisResultCondition(HasItem, 4747, 20)

	MisResultAction(TakeItem, 1501, 20 )
	MisResultAction(TakeItem, 1490, 20 )
	MisResultAction(TakeItem, 4748, 20 )
	MisResultAction(TakeItem, 4749, 20 )
	MisResultAction(TakeItem, 4725, 20 )
	MisResultAction(TakeItem, 4747, 20 )

	
	MisResultAction(GiveItem, 3858,1,4)------------i
	MisResultAction(ClearMission, 1218)
	MisResultAction(SetRecord, 1218)
	MisResultBagNeed(1)
	


	InitTrigger()
	TriggerCondition( 1, IsItem, 1501)	
	TriggerAction( 1, AddNextFlag, 1218, 1, 20 )
	RegCurTrigger( 12181 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1490)	
	TriggerAction( 1, AddNextFlag, 1218, 21, 20 )
	RegCurTrigger( 12182 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4748)	
	TriggerAction( 1, AddNextFlag, 1218, 41, 20 )
	RegCurTrigger( 12183 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4749)	
	TriggerAction( 1, AddNextFlag, 1218, 61, 20 )
	RegCurTrigger( 12184 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4725)	
	TriggerAction( 1, AddNextFlag, 1218, 81, 20 )
	RegCurTrigger( 12185 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4747)	
	TriggerAction( 1, AddNextFlag, 1218, 101, 20 )
	RegCurTrigger( 12186 )

	----------------------------------------------------------������ػ���----------��˼ҵ�С��
	DefineMission( 6149, "������ػ���", 1219 )
	MisBeginTalk("<t>��į֮��4(261,70)����ػ�����һ�����������,��������˳���õ�һ�ſ�Ƭ.")
				
	MisBeginCondition(NoMission, 1219)
	MisBeginCondition(NoRecord,1219)
	MisBeginCondition(HasRecord, 1218)
	MisBeginAction(AddMission,1219)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "�Ҽ�į֮��4(261,70)�����˼ҵ��ػ�������")
	
	MisHelpTalk("<t>��һ���Σ��Ŷ.")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------������ػ���--------��˼ҵ��ػ���
	DefineMission(6150, "������ػ���", 1219, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>������ʲô��λ��ʲô��,��Ӧ��ѧ�����ر���,������Զ����õ���������������.")
	MisResultCondition(NoRecord, 1219)
	MisResultCondition(HasMission,1219)
	MisResultAction(ClearMission,1219)
	MisResultAction(SetRecord, 1219)

--------------------------------------------------------------------һ��������һ������------��˼ҵ��ػ���

	DefineMission( 6151, "һ��������һ������", 1220 )
	MisBeginTalk("<t>��Ϊʲô��һֱ��ħ�����ػ���?!����Ϊ��Ƿ��һ������.���������ǵ�ʱ��,�������Һ�ɫ��è��򡢱���Ⱦ����ʹ�⻷��10��,������ϡ����.�µ�����Ҷ����Ķ����Ѿ�����ò����,���ٰ��Ҹ�æ�ҾͿ��԰��������.")
	MisBeginCondition(NoMission, 1220)
	MisBeginCondition(NoRecord,1220)
	MisBeginCondition(HasRecord, 1219)
	MisBeginAction(AddMission,1220)
	MisBeginAction(AddTrigger, 12201, TE_GETITEM, 4750,50)
	MisBeginAction(AddTrigger, 12202, TE_GETITEM, 4763, 50)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "�ռ���ɫ��è��򡢱���Ⱦ����ʹ�⻷��50��.")
	MisNeed(MIS_NEED_ITEM, 4750, 50, 1, 50)
	MisNeed(MIS_NEED_ITEM, 4763, 50, 51, 50)


	MisHelpTalk("<t>���ܷ������ɾͿ�����.")
	MisResultTalk("<t>���ڿ��Ի�����������,������Ƿ����һ������,��ֻ�а���ĸ��������Ϊ�ر���,Ҳ���������һ������.")

	MisResultCondition(HasMission, 1220)
	MisResultCondition(NoRecord,1220)
	MisResultCondition(HasItem, 4750, 50)
	MisResultCondition(HasItem, 4763,50)
	MisResultAction(TakeItem, 4750, 50 )
	MisResultAction(TakeItem, 4763, 50 )
	
	MisResultAction(GiveItem, 3862,1,4)----------m
	MisResultAction(ClearMission, 1220)
	MisResultAction(SetRecord, 1220)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4750)	
	TriggerAction( 1, AddNextFlag, 1220, 1, 50 )
	RegCurTrigger( 12201 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4763)	
	TriggerAction( 1, AddNextFlag, 1220, 21, 50 )
	RegCurTrigger( 12202 )

----------------------------------------------------------����һ������----------��˼ҵ��ػ���
	DefineMission( 6152, "����һ������", 1221 )
	MisBeginTalk("<t>��ͻȻ��һ��������,�Ⱳ����һֱ�ڻ����˵���,��������ҿ�������Ƿ��һ����.<n><t>��į֮��5��(542,54)�Ĺܼ�����һ����ĸ��Ƭ")
				
	MisBeginCondition(NoMission, 1221)
	MisBeginCondition(NoRecord,1221)
	MisBeginCondition(HasRecord, 1220)
	MisBeginAction(AddMission,1221)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "�Ҽ�į֮��5��(542,54)����˼ҵĹܼ�����")
	
	MisHelpTalk("<t>����л��,�Һ��������ָо�,��Ȼ�����е���˽.����...")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------����һ������--------��˼ҵĹܼ�
	DefineMission(6153, "����һ������", 1221, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>���������Ц�ļһﵹ�ǿ��ĵ������������,����ô��?")
	MisResultCondition(NoRecord, 1221)
	MisResultCondition(HasMission,1221)
	MisResultAction(ClearMission,1221)
	MisResultAction(SetRecord, 1221)


	--------------------------------------------------------------------�ܼҵķ���------��˼ҵĹܼ�

	DefineMission( 6154, "�ܼҵķ���", 1222 )
	MisBeginTalk("<t>���˲�����̫̰��֪����?��Ҫ����.�ϴ��ҵ�������������,�ҿ���˴��˲��Ǻ�ע�����Ĳ���״����˽���ü���Ķ����͸��ҵ�����.��֪��Ϊʲô��˴������˲��,�����Һ��ż�,�������԰����ռ�����Щ����,�Ҳ�����Ѵ��˵���ĸ���͸���")
	MisBeginCondition(NoMission, 1222)
	MisBeginCondition(NoRecord,1222)
	MisBeginCondition(HasRecord, 1221)
	MisBeginAction(AddMission,1222)
	MisBeginAction(AddTrigger, 12221, TE_GETITEM, 4770, 35)
	MisBeginAction(AddTrigger, 12222, TE_GETITEM, 4766, 35)
	MisBeginAction(AddTrigger, 12223, TE_GETITEM, 4772, 35)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "�ռ�������İ�ɫ��è��� �ڰ���ʥ��֮�ġ�������ĺ�ɫ��è����35��.")
	MisNeed(MIS_NEED_ITEM, 4770, 35, 1, 35)
	MisNeed(MIS_NEED_ITEM, 4766, 35, 36, 35)
	MisNeed(MIS_NEED_ITEM, 4772, 35, 71, 35)

	MisHelpTalk("<t>Ҫ��,��������˴���֪����,��ʲô��û������.")
	MisResultTalk("<t>����������ǽ����ǽ���浣����һ������û����·��.")

	MisResultCondition(HasMission, 1222)
	MisResultCondition(NoRecord,1222)
	MisResultCondition(HasItem, 4770, 35)
	MisResultCondition(HasItem, 4766, 35)
	MisResultCondition(HasItem, 4772, 35)

	MisResultAction(TakeItem, 4770, 35 )
	MisResultAction(TakeItem, 4766, 35 )
	MisResultAction(TakeItem, 4772, 35 )
	
	MisResultAction(GiveItem, 3863,1,4)----------n
	MisResultAction(ClearMission, 1222)
	MisResultAction(SetRecord, 1222)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4770)	
	TriggerAction( 1, AddNextFlag, 1222, 1, 35 )
	RegCurTrigger( 12221 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4766)	
	TriggerAction( 1, AddNextFlag, 1222, 36, 35 )
	RegCurTrigger( 12222 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4772)	
	TriggerAction( 1, AddNextFlag, 1222, 71, 35 )
	RegCurTrigger( 12223 )

---------------------------------------------------------�ܼҵı���----------��˼ҵĹܼ�
	DefineMission( 6155, "�ܼҵı���", 1223 )
	MisBeginTalk("<t>Ŷ~~����������Ϊʲôһ�������ҵ���˴���ͻȻ���Ҳ����˻���,һ���������˸�Ĺ�,��Ϊ��������������һ��İ������Լ��,��Ҫ�ݺ���...��˵�Ҳ�����,�Ǹ�Ů��������һ�ſ�Ƭ,��һ��Ҫ�õ����ſ�Ƭ.����һ��,����ұ�¶����Ҳ�ܲ���,������,��̫����~~")
				
	MisBeginCondition(NoMission, 1223)
	MisBeginCondition(NoRecord,1223)
	MisBeginCondition(HasRecord, 1222)
	MisBeginAction(AddMission,1223)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "�Ҽ�į֮��6��(541,268)����˵���������")
	
	MisHelpTalk("<t>�ֲ��ô�С����ͽ����Ҳ�Ҫ�ͻ���������,�ԴӸ�����ħ����˴���,����ı仵��,��...")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------�ܼҵı���--------��˵�����
	DefineMission(6156, "�ܼҵı���", 1223, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>����ô֪�����п�Ƭ��?")
	MisResultCondition(NoRecord, 1223)
	MisResultCondition(HasMission,1223)
	MisResultAction(ClearMission,1223)
	MisResultAction(SetRecord, 1223)
--------------------------------------------------------------------��Ů�����ذ���------��˵�����

	DefineMission( 6157, "��Ů�����ذ���", 1224 )
	MisBeginTalk("<t>�����ͻȻ�Խ�����Ʒ�ر����Ȥ,�Ѿ����Ե����ĳ̶�.��һ����������Ϊʲô��ʼϲ���Ͻ����̴�,��ʵ��Ҳ������.���Ҷ��Լ�ϲ���Ķ�������һ��Ҫ�õ�,��ϧ�κδ���,��ʹ��ħ����˵Ķ���.")
	MisBeginCondition(NoMission, 1224)
	MisBeginCondition(NoRecord,1224)
	MisBeginCondition(HasRecord, 1223)
	MisBeginAction(AddMission,1224)
	MisBeginAction(AddTrigger, 12241, TE_GETITEM, 1503, 110)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "�ռ������̴�110��.")
	MisNeed(MIS_NEED_ITEM, 1503, 110, 1, 110)

	MisHelpTalk("<t>����ҽ���,��ֻҪ�����̴�.")
	MisResultTalk("<t>������������������������,���㲻������һ��,����Զ��������Ҫ�������ĸ��ʲô��,�����.")

	MisResultCondition(HasMission, 1224)
	MisResultCondition(NoRecord,1224)
	MisResultCondition(HasItem, 1503, 110)
	MisResultAction(TakeItem, 1503, 110 )

	MisResultAction(GiveItem, 3856,1,4)----------G
	MisResultAction(ClearMission, 1224)
	MisResultAction(SetRecord, 1224)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 1503)	
	TriggerAction( 1, AddNextFlag, 1224, 1, 110 )
	RegCurTrigger( 12241 )

------------------------------------------------------����������----------��˵�����
	DefineMission( 6158, "����������", 1225 )
	MisBeginTalk("<t>��һ����ĸ���Ҽ����˵ĳ�����������.����һֻ��ͨ���ԵĹ�Ŷ,ֻ���е�С��.��һ��������û������ͷ��,���ӵ������Ĳ��������.�ܵ���˵�һ��Ǻ�ϲ������.")
				
	MisBeginCondition(NoMission, 1225)
	MisBeginCondition(NoRecord,1225)
	MisBeginCondition(HasRecord, 1224)
	MisBeginAction(AddMission,1225)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "�ҵ����Ĳ�(154,912)����˼ҵ�����Ҫ��ĸ��Ƭ")
	
	MisHelpTalk("<t>�������̴Ѱ�...")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------����������--------��˼ҵ�����
	DefineMission(6159, "����������", 1225, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>����!���ӵ����㶼��������?���������Ҫ�������һ�ȥ����?�����۰��ҵ�����Ҳ����ҹ�������?")
	MisResultCondition(NoRecord, 1225)
	MisResultCondition(HasMission,1225)
	MisResultAction(ClearMission,1225)
	MisResultAction(SetRecord, 1225)


	--------------------------------------------------------------------����Ҳ���Ǻ��ǵ�------��˼ҵ�����

	DefineMission( 6160, "����Ҳ���Ǻ��ǵ�!", 1226 )
	MisBeginTalk("<t>��������Ľ�ʬһֱ�۸���������,��������ȥ������ͷ���μ�������,�������ĵĿ�Ƭ���������.һ��Ҫ������֪������Ҳ���Ǻ��ǵ�.")
	MisBeginCondition(NoMission, 1226)
	MisBeginCondition(NoRecord,1226)
	MisBeginCondition(HasRecord, 1225)
	MisBeginAction(AddMission,1226)
	MisBeginAction(AddTrigger, 12261, TE_GETITEM, 4884, 99)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "�ռ���ʬͷ��99��.")
	MisNeed(MIS_NEED_ITEM, 4884, 99, 1, 99)

	MisHelpTalk("<t>������������û��?")
	MisResultTalk("<t>����Ի�ȥ<b�Ұ����ǵ�ħ��ʦ����(2229,2782)����>��.")

	MisResultCondition(HasMission, 1226)
	MisResultCondition(NoRecord,1226)
	MisResultCondition(HasItem, 4884, 99)
	MisResultAction(TakeItem, 4884, 99 )

	MisResultAction(GiveItem, 3854,1,4)----------E
	MisResultAction(ClearMission, 1226)
	MisResultAction(SetRecord, 1226)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4884)	
	TriggerAction( 1, AddNextFlag, 1226, 1, 99 )
	RegCurTrigger( 12261 )


-----------------------------------------------------Ŷ!ûԿ��----------ħ��ʦ����
	DefineMission( 6161, "Ŷ!ûԿ��", 1227 )
	MisBeginTalk("<t>Ŷ!ûԿ��.����ȥ�ﵺ���ε�ʱ��ѿ���ħ���е�Կ�׵��������ĵ���С��(2423,3186)����,ֻҪ��ȥ����Ҫ��,�Ϳ��Դ�ħ������")
				
	MisBeginCondition(NoMission, 1227)
	MisBeginCondition(NoRecord,1227)
	MisBeginCondition(HasRecord, 1212)
	MisBeginAction(AddMission,1227)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "���ﵺ����С��(2423,3186)Ҫ�ؿ���ħ���е�Կ�ס�")
	
	MisHelpTalk("<t>Ŷ!��ô���Ǵ���Կ����...")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------Ŷ!ûԿ��--------�ﵺ����С��
	DefineMission(6162, "Ŷ!ûԿ��", 1227, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>һ����ħ��ʦ����������İ�?�����а�Կ�׶���������")
	MisResultCondition(NoRecord, 1227)
	MisResultCondition(HasMission,1227)
	MisResultAction(ClearMission,1227)
	MisResultAction(SetRecord, 1227)



	--------------------------------------------------------------------����С�������------�ﵺ����С��

	DefineMission( 6163, "����С�������", 1228 )
	MisBeginTalk("<t>�Ұ����Ǳ�������ô��,�ܸ��е㱨���.�ﵺ�������׺������˴���ο�,��Ͱ��ҳ�������")
	MisBeginCondition(NoMission, 1228)
	MisBeginCondition(NoRecord,1228)
	MisBeginCondition(HasRecord, 1227)
	MisBeginAction(AddMission,1228)
	MisBeginAction(AddTrigger, 12281, TE_GETITEM, 0154, 20)
	MisBeginAction(AddTrigger, 12282, TE_GETITEM, 0156, 20)
	MisBeginAction(AddTrigger, 12283, TE_GETITEM, 0158, 20)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "�ռ���������ˮ�ֻռǡ���������ս��Ա�ռǡ���������ͻ���ֻռǸ�20��.")
	MisNeed(MIS_NEED_ITEM, 0154, 20, 1, 20)
	MisNeed(MIS_NEED_ITEM, 0156, 20, 21, 20)
	MisNeed(MIS_NEED_ITEM, 0158, 20, 41, 20)

	MisHelpTalk("<t>���ȥ��,������������������ú���.")
	MisResultTalk("<t>�㻹����һ��������,лл.")

	MisResultCondition(HasMission, 1228)
	MisResultCondition(NoRecord,1228)
	MisResultCondition(HasItem, 0154, 20)
	MisResultCondition(HasItem, 0156, 20)
	MisResultCondition(HasItem, 0158, 20)

	MisResultAction(TakeItem, 0154, 20 )
	MisResultAction(TakeItem, 0156, 20 )
	MisResultAction(TakeItem, 0158, 20 )
	
	MisResultAction(ClearMission, 1228)
	MisResultAction(SetRecord, 1228)

	
	InitTrigger()
	TriggerCondition( 1, IsItem, 0154)	
	TriggerAction( 1, AddNextFlag, 1228, 1, 20 )
	RegCurTrigger( 12281 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 0156)	
	TriggerAction( 1, AddNextFlag, 1228, 36, 20 )
	RegCurTrigger( 12282 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 0158)	
	TriggerAction( 1, AddNextFlag, 1228, 71, 20 )
	RegCurTrigger( 12283 )


		--------------------------------------------------------------------��ο����------�ﵺ����С��

	DefineMission( 6164, "��ο����", 1229 )
	MisBeginTalk("<t>�ﵺ���кܶ������,�ܷ����Ϊ���һ�ȥ������ʿ���Ǻͷ�����ʿ����,���ﵺ������õ���Ϣ.")
	MisBeginCondition(NoMission, 1229)
	MisBeginCondition(NoRecord,1229)
	MisBeginCondition(HasRecord, 1228)
	MisBeginAction(AddMission,1229)
	MisBeginAction(AddTrigger, 12291, TE_GETITEM, 3436, 50)
	MisBeginAction(AddTrigger, 12292, TE_GETITEM, 3434, 50)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "�ռ�������ʿ���ǡ�������ʿ���Ǹ�50��.")
	MisNeed(MIS_NEED_ITEM, 3436, 50, 1, 50)
	MisNeed(MIS_NEED_ITEM, 3434, 50, 51, 50)


	MisHelpTalk("<t>ʵ�ڰ�������.")
	MisResultTalk("<t>�����Ǻ���,̫��л����.Կ����ȥ��.")

	MisResultCondition(HasMission, 1229)
	MisResultCondition(NoRecord,1229)
	MisResultCondition(HasItem, 3436, 50)
	MisResultCondition(HasItem, 3434, 50)

	MisResultAction(TakeItem, 3436, 50 )
	MisResultAction(TakeItem, 3434, 50 )

	MisResultAction(GiveItem, 3674,1,4)----------Կ��
	MisResultAction(ClearMission, 1229)
	MisResultAction(SetRecord, 1229)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 3436)	
	TriggerAction( 1, AddNextFlag, 1229, 1, 50 )
	RegCurTrigger( 12291 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3434)	
	TriggerAction( 1, AddNextFlag, 1229, 51, 50 )
	RegCurTrigger( 12292 )

----------------------------------------------------һ��Կ�׿�һ����---------�ﵺ����С��
	DefineMission( 6165, "һ��Կ�׿�һ����", 1230 )
	MisBeginTalk("<t>�Ͽ���ħ��ʦ�����ħ���а�.")
				
	MisBeginCondition(NoMission, 1230)
	MisBeginCondition(NoRecord,1230)
	MisBeginCondition(HasRecord, 1229)
	MisBeginAction(AddMission,1230)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed(MIS_NEED_DESP, "�Ұ�����ħ��ʦ����(2229,2782)��ħ����.")
	
	MisHelpTalk("<t>�ǵô�Կ�׺�ħ����һ��ȥ...")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------һ��Կ�׿�һ����---------ħ��ʦ����
	DefineMission(6166, "һ��Կ�׿�һ����", 1230, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>�ҵ�����,���侹����������ĺ���,���ܿɹ�.�Ұ���򿪺��Ӱ�.��,��Ȼ���������и���ϻ��.��ȥ����,��ʲô����?")
	MisResultCondition(NoRecord, 1230)
	MisResultCondition(HasMission,1230)
	MisResultCondition(HasItem, 3673, 1)
	MisResultCondition(HasItem, 3674, 1)
	MisResultAction(TakeItem, 3673, 1 )
	MisResultAction(TakeItem, 3674, 1 )
	MisResultAction(GiveItem, 3672,1,4)----------��ϻ��
	MisResultAction(ClearMission,1230)
	MisResultAction(SetRecord, 1230)
	MisResultBagNeed(1)

	MisResultAction(ClearRecord, 1212)---------------���Է�����
	MisResultAction(ClearRecord, 1213)---------------���Է�����
	MisResultAction(ClearRecord, 1214)---------------���Է�����
	MisResultAction(ClearRecord, 1215)---------------���Է�����
	MisResultAction(ClearRecord, 1216)---------------���Է�����
	MisResultAction(ClearRecord, 1217)---------------���Է�����
	MisResultAction(ClearRecord, 1218)---------------���Է�����
	MisResultAction(ClearRecord, 1219)---------------���Է�����
	MisResultAction(ClearRecord, 1220)---------------���Է�����
	MisResultAction(ClearRecord, 1221)---------------���Է�����
	MisResultAction(ClearRecord, 1222)---------------���Է�����
	MisResultAction(ClearRecord, 1223)---------------���Է�����
	MisResultAction(ClearRecord, 1224)---------------���Է�����
	MisResultAction(ClearRecord, 1225)---------------���Է�����
	MisResultAction(ClearRecord, 1226)---------------���Է�����
	MisResultAction(ClearRecord, 1227)---------------���Է�����
	MisResultAction(ClearRecord, 1228)---------------���Է�����
	MisResultAction(ClearRecord, 1229)---------------���Է�����
	MisResultAction(ClearRecord, 1230)---------------���Է�����


--------------------------------------------------------���ߵ��㼣	
	DefineMission( 6167, "���ߵ��㼣", 1231)
	MisBeginTalk( "<t>����,�㳤����,����ȥ����������.<n><t>������������ǿ�������µ������ĵ�,�ҿ��Ե������͸���,��Ҫ��<n><t>����Ҫ������Ҫ����Ҫ�Ļ����˵����,�㲻˵����ô֪������Ҫ��,��Ȼ����г���ؿ�����,�����㻹��Ҫ����˵����Ҫ��.�������Ҫ���������ȥ��!")
	MisBeginCondition( LvCheck, ">", 44)
	MisBeginCondition( LvCheck, "<", 66)
	MisBeginCondition( NoMission, 1231)
	MisBeginCondition( NoRecord, 1231)
	MisBeginAction( AddMission, 1231)
	MisBeginAction( AddTrigger, 12311, TE_KILL, 514, 30 )
	MisCancelAction(ClearMission, 1231)

	MisNeed(MIS_NEED_KILL, 514, 30, 10, 30)
	
	MisResultTalk("<t>�۹���,��ɱ����ô��ְ�!��ʵ�ղ���˵����,ֻҪɱ10���Ϳ�����.���Ǽ�Ȼ���Ѿ�ɱ��,�Ǿ�30����!<n><t>��,��ʹ���,���Բ��ð�!����ô��������վ�Ű���<n><t>Ŷ,�ԶԶ�,��û���㽱����.���Ǹ���Ľ���,�����Ҫ��ø��ḻ�Ľ���,��Ҫ������������Ŷ!")
	MisHelpTalk("<t>��ô����ȥ����������������޾��ڼ��ɴ�½(440,1320).")
	MisResultCondition( HasFlag, 1231, 39 )
	MisResultCondition( HasMission, 1231)
	MisResultCondition( NoRecord, 1231)
	MisResultAction( ClearMission, 1231)
	MisResultAction( SetRecord, 1231)
	MisResultAction( AddExpPer, 1)
	MisResultAction( AddMoney, 1000)

	InitTrigger() 
	TriggerCondition( 1, IsMonster, 514 )	
	TriggerAction( 1, AddNextFlag, 1231, 10, 30 )
	RegCurTrigger(12311)

	----------------------------------------
	DefineMission( 6168, "���ߵ��㼣", 1232)
	MisBeginTalk( "<t>����¸�,�Ǹ��ö�ͽ!�߷��վ��и߻ر�!<n><t>��Ҫ������,û��ʵ����ð�ս���ʹͶ�븶���Ŷ!<n><t>��������һ�صĿ���,������,ȥ��!�ҵ������!")
	MisBeginCondition( NoMission, 1232)
	MisBeginCondition( NoRecord, 1232)
	MisBeginCondition( HasRecord, 1231)
	MisBeginAction( AddMission, 1232)
	MisBeginAction( AddTrigger, 12321, TE_KILL, 284, 50 )
	MisCancelAction( ClearMission, 1232)

	MisNeed( MIS_NEED_KILL, 284, 50, 10, 50)

	MisResultTalk( "<t>ף����ʿƽ������!��õ���Ӣ�۵��Ͽ�,Ӧ�ø�����һЩ������.��ʵ,ǰ�涼���Ҹ��˶���Ŀ���,��νӢ�۵ı���ֻ�ڴ�˵�г��ֹ�.<n><t>��,�㲻Ҫ������!�������Ѿ��ҵ��˱��صĲ���֮��,ֻ�����������Զ,��������,��Ҫһ�ֵؽ����ܻ���,�Ӷ��õ������ı���.����԰���������<n><t>�������ʿ,��ԭ���Ҷ�������,���������˽��ҵĿ���.�ұ�֤,ֻҪ�����ҵ��ؽ�,������ȫ������!")
	MisHelpTalk( "<t>�ػ���ʹ���ڼ��ɴ�½(904,1280)������û")
	MisResultCondition( HasMission, 1232)
	MisResultCondition( NoRecord, 1232)
	MisResultCondition( HasFlag, 1232, 59)
	MisResultAction( ClearMission, 1232)
	MisResultAction( SetRecord, 1232)
	MisResultAction( AddExpPer, 1)
	MisResultAction( AddMoney, 3000)

	InitTrigger() 
	TriggerCondition( 1, IsMonster, 284 )	
	TriggerAction( 1, AddNextFlag, 1232, 10, 50 )
	RegCurTrigger(12321)

	----------------------------------------
	DefineMission( 6169, "���ߵ��㼣", 1233)
	MisBeginTalk( "<t>������,�������!������ͬ��,�����Ҳ鵽�ĵؽ���أ�ħŮ֮��1381,3134��,����,��ȥ��,����������Ҫ��!")
	MisBeginCondition( NoMission, 1233)
	MisBeginCondition( NoRecord, 1233)
	MisBeginCondition( HasRecord, 1232)
	MisBeginAction( AddMission, 1233)
	MisBeginAction( AddTrigger, 12331, TE_KILL, 65, 10 )
	MisBeginAction( AddTrigger, 12332, TE_GETITEM, 1783, 50)
	MisCancelAction( ClearMission, 1233)

	MisNeed( MIS_NEED_KILL, 65, 10, 10, 10)
	MisNeed( MIS_NEED_ITEM, 1783, 50, 20, 50)

	MisResultTalk( "<t>���ڵõ���˵�еı���!!<n><t>��,����ʲô������ô��������<n><t>����������,Ϊʲô�һ�����ô����Ѫ�õ�ȴ�������Ķ�����!<n><t>ԭ������ֻ�и���������Ե�˲�������ӵ�б���!�����ⱦ����������Ҳû��,���͸����.")
	MisHelpTalk( "<t>��ȥ��,��ĥ����.")
	MisResultCondition( HasMission, 1233)
	MisResultCondition( NoRecord, 1233)
	MisResultCondition( HasFlag, 1233, 19)
	MisResultCondition( HasItem, 1783, 50)
	MisResultAction( TakeItem, 1783, 50)
	MisResultAction( ClearMission, 1233)
	MisResultAction( SetRecord, 1233)
	MisResultAction( AddExpPer, 1)
	MisResultAction( AddMoney , 5000)
	MisResultAction( AddExpAndType, 2, 80000, 80000)

	InitTrigger()
	TriggerCondition(1, IsMonster, 65)
	TriggerAction(1, AddNextFlag, 1233, 10, 10)
	RegCurTrigger(12331)

	InitTrigger()
	TriggerCondition(1, IsItem, 1783)
	TriggerAction(1, AddNextFlag, 1233, 20, 50)
	RegCurTrigger(12332)

	----------------------------------------------
	DefineMission( 6170, "���ߵİ���", 1234)
	MisBeginTalk( "<t>�ղŸ��㱦��ʱ�ҷ�����Ӣ�۵�����,ԭ����ν�ı�����ʵ��һ������д����������.<n><t>��ʱ��ֵ��������,���ֹ��������Ŵ�½����.Ӣ��Ϊ��ά�������ƽ,ֻ�ܽ��Թ���İ�������������ĵ�,������������ʿ��ս�ĺ�!<n><t>��������������,ʹ�����������ڵĺ�ƽ����!��Ȼ��һ����������,�����˾���!��������ǹ���ȴ�������������!<n><t>������д���������,����԰�æ�͸�������<n><t>��������,��˵�ǹ���Ϊ�˵ȴ�Ӣ�۹���,��Ǩ�ӵ��ر������һ��С��,������ҹ�������ź���.<n><t>��Ҫ�����߰�,�һ�û˵����!Ӣ��Ϊ�ǹ���׼�������ﱻ������ռ��,ϣ��������ҵ�һ���͸���.")
	MisBeginCondition( NoMission, 1234)
	MisBeginCondition( NoRecord, 1234)
	MisBeginCondition( HasRecord, 1233)
	MisBeginAction( AddMission, 1234)
	MisBeginAction( GiveItem, 2671, 1, 4)
	MisBeginAction( AddTrigger, 12341, TE_GETITEM, 2671, 1)
	MisBeginAction( AddTrigger, 12342, TE_GETITEM, 4503, 1)
	MisBeginAction( AddTrigger, 12343, TE_GETITEM, 3361, 89)
	MisCancelAction( ClearMission, 1234)
	MisBeginBagNeed(1)

	MisHelpTalk( "<t>��ȥ��!")
	MisNeed( MIS_NEED_DESP, "�����ߵı���,89�������Լ�1���ʹ���ȥ���ر����������ɯ��")
	MisNeed( MIS_NEED_ITEM, 2671, 1, 10, 1)
	MisNeed( MIS_NEED_ITEM, 4503, 1, 20, 1)
	MisNeed( MIS_NEED_ITEM, 3361, 89, 30, 89)

	MisResultCondition( AlwaysFailure )
	---------------------------------------------
	DefineMission( 6171, "���ߵİ���", 1234, COMPLETE_SHOW)
	MisBeginCondition( AlwaysFailure )
	
	MisResultTalk( "<t>лл��,��ʿ.��ô������,��������������Ϣ.<n><t>������Ӧ�õı���.")
	MisResultCondition( HasItem, 2671, 1)
	MisResultCondition( HasItem, 4503, 1)
	MisResultCondition( HasItem, 3361, 89)
	MisResultCondition( HasMission, 1234)
	MisResultCondition( NoRecord, 1234)
	MisResultAction( TakeItem, 2671, 1)
	MisResultAction( TakeItem, 4503, 1)
	MisResultAction( TakeItem, 3361, 89)
	MisResultAction( ClearMission, 1234)
	MisResultAction( SetRecord, 1234)
	MisResultAction( AddExpPer, 2)
	MisResultAction( AddMoney, 300000)
	MisResultAction( AddReadingBook )                       ------���豾ְҵ�ĳ�������

	InitTrigger()
	TriggerCondition(1, IsItem, 2671)
	TriggerAction(1, AddNextFlag, 1234, 10, 1)
	RegCurTrigger(12341)

	InitTrigger()
	TriggerCondition(1, IsItem, 4503)
	TriggerAction(1, AddNextFlag, 1234, 20, 1)
	RegCurTrigger(12342)

	InitTrigger()
	TriggerCondition(1, IsItem, 3361)
	TriggerAction(1, AddNextFlag, 1234, 30, 89)
	RegCurTrigger(12343)


	-------------------------------------------------------
	DefineMission( 6172, "���ߵİ���", 1235)
	MisBeginTalk( "<t>��Ϊ���ߵĵ�·�Ǽ��������ģ��㻹�кܶ�Ҫѧ�ģ���ȥ�Һ�Ϳɽ�˰�,Ҳ������������ʾ.")
	MisBeginCondition( NoMission, 1235)
	MisBeginCondition( NoRecord, 1235)
	MisBeginCondition( HasRecord, 1234)
	MisBeginAction( AddMission, 1235)
	MisCancelAction( ClearMission, 1235)

	MisHelpTalk( "<t>��Ϳɽ�˻������ʾ��.")
	MisNeed( MIS_NEED_DESP, "�ذ������Һ�Ϳɽ��")

	MisResultCondition( AlwaysFailure )
	--------------------------------------------------------
	DefineMission( 6173, "���ߵİ���", 1235, COMPLETE_SHOW)
	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>������,�ɵĲ���,�����Ҹö�����ɸ���.")
	MisResultCondition( HasMission, 1235)
	MisResultCondition( NoRecord, 1235)
	MisResultAction( ClearMission, 1235)
	MisResultAction( SetRecord, 1235)
	MisResultAction( AddMoney, 88)

	MisResultAction(ClearRecord, 1231)---------------���Է�����
	MisResultAction(ClearRecord, 1232)---------------���Է�����
	MisResultAction(ClearRecord, 1233)---------------���Է�����
	MisResultAction(ClearRecord, 1234)---------------���Է�����
	MisResultAction(ClearRecord, 1235)---------------���Է�����

	-------------------------------�ļ�����----------��ջ�ϰ塤��Ů
	DefineMission( 6174, "�ļ�����", 1236)
	MisBeginTalk( "<t>�����ﶬ4���ƶ�������(�ﵺ2722,3137)�����Ѿͷ����,�����һ�����,�һ����س�л���.")
	MisBeginCondition( NoMission, 1236)
	MisBeginCondition( NoRecord, 1236)
	MisBeginCondition( LvCheck, "<", 80)
	MisBeginAction( AddMission, 1236)
	MisBeginAction( AddTrigger, 12361, TE_GETITEM, 2969, 1)
	MisBeginAction( AddTrigger, 12362, TE_GETITEM, 2970, 1)
	MisBeginAction( AddTrigger, 12363, TE_GETITEM, 2971, 1)
	MisBeginAction( AddTrigger, 12364, TE_GETITEM, 2972, 1)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed( MIS_NEED_DESP, "�������������齫��(��),�齫��(��),�齫��(��),�齫��(��)����Ů(����3302,2501),��������ﵺ(2722,3137)")
	MisNeed( MIS_NEED_ITEM, 2969, 1, 10, 1)
	MisNeed( MIS_NEED_ITEM, 2970, 1, 20, 1)
	MisNeed( MIS_NEED_ITEM, 2971, 1, 30, 1)
	MisNeed( MIS_NEED_ITEM, 2972, 1, 40, 1)

	MisResultTalk( "<t>��!������4����,̫����!��Ϊ�ƽ��һ�˵���Ը����õ�ʵ��.")
	MisHelpTalk( "<t>һ��Ҫ�����һ��������ư�,�ҳ�Ϊ�ƽ��һ�˵�����Ϳ�����!")
	MisResultCondition( HasMission, 1236)
	MisResultCondition( NoRecord, 1236)
	MisResultCondition( HasItem, 2969, 1)
	MisResultCondition( HasItem, 2970, 1)
	MisResultCondition( HasItem, 2971, 1)
	MisResultCondition( HasItem, 2972, 1)
	MisResultAction( TakeItem, 2969, 1)
	MisResultAction( TakeItem, 2970, 1)
	MisResultAction( TakeItem, 2971, 1)
	MisResultAction( TakeItem, 2972, 1)
	MisResultAction( ClearMission, 1236)
	MisResultAction( SetRecord, 1236)
	MisResultAction( AddExpNextLv1 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2969)	
	TriggerAction( 1, AddNextFlag, 1236, 10, 1 )
	RegCurTrigger( 12361 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2970)	
	TriggerAction( 1, AddNextFlag, 1236, 20, 1 )
	RegCurTrigger( 12362 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2971)	
	TriggerAction( 1, AddNextFlag, 1236, 30, 1 )
	RegCurTrigger( 12363 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2972)	
	TriggerAction( 1, AddNextFlag, 1236, 40, 1 )
	RegCurTrigger( 12364 )

---------------------------------�˷�����------------��ջ�ϰ塤��Ů
	DefineMission( 6175, "�˷�����", 1237)
	MisBeginTalk( "<t>�����ﶬ4���ƶ�������(�ﵺ2722,3137)�����Ѿͷ����,����÷,��,��,�����ĵ���������(3734,2661)������,�������һ�����,�һ����س�л���!")
	MisBeginCondition( NoMission, 1237)
	MisBeginCondition( NoRecord, 1237)
	MisBeginCondition( LvCheck, "<", 90)
	MisBeginAction( AddMission, 1237)
	MisBeginAction( AddTrigger, 12371, TE_GETITEM, 2969, 1)
	MisBeginAction( AddTrigger, 12372, TE_GETITEM, 2970, 1)
	MisBeginAction( AddTrigger, 12373, TE_GETITEM, 2971, 1)
	MisBeginAction( AddTrigger, 12374, TE_GETITEM, 2972, 1)
	MisBeginAction( AddTrigger, 12375, TE_GETITEM, 2973, 1)
	MisBeginAction( AddTrigger, 12376, TE_GETITEM, 2974, 1)
	MisBeginAction( AddTrigger, 12377, TE_GETITEM, 2975, 1)
	MisBeginAction( AddTrigger, 12378, TE_GETITEM, 2976, 1)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed( MIS_NEED_DESP, "���ĵ���������(3734,2661)������,���봺���ﶬ÷�����8���齫�Ƹ���Ů(����3302,2501)")
	MisNeed( MIS_NEED_ITEM, 2969, 1, 10, 1)
	MisNeed( MIS_NEED_ITEM, 2970, 1, 20, 1)
	MisNeed( MIS_NEED_ITEM, 2971, 1, 30, 1)
	MisNeed( MIS_NEED_ITEM, 2972, 1, 40, 1)
	MisNeed( MIS_NEED_ITEM, 2973, 1, 50, 1)
	MisNeed( MIS_NEED_ITEM, 2974, 1, 60, 1)
	MisNeed( MIS_NEED_ITEM, 2975, 1, 70, 1)
	MisNeed( MIS_NEED_ITEM, 2976, 1, 80, 1)

	MisResultTalk( "<t>��̫������,��Ҫ�޸���!����֪����ȸ��֮��������!")
	MisHelpTalk( "<t>���ȥ��,���������һ�����8����,���ǲ���������.")
	MisResultCondition( HasMission, 1237)
	MisResultCondition( NoRecord, 1237)
	MisResultCondition( HasItem, 2969, 1)
	MisResultCondition( HasItem, 2970, 1)
	MisResultCondition( HasItem, 2971, 1)
	MisResultCondition( HasItem, 2972, 1)
	MisResultCondition( HasItem, 2973, 1)
	MisResultCondition( HasItem, 2974, 1)
	MisResultCondition( HasItem, 2975, 1)
	MisResultCondition( HasItem, 2976, 1)
	MisResultAction( TakeItem, 2969, 1)
	MisResultAction( TakeItem, 2970, 1)
	MisResultAction( TakeItem, 2971, 1)
	MisResultAction( TakeItem, 2972, 1)
	MisResultAction( TakeItem, 2973, 1)
	MisResultAction( TakeItem, 2974, 1)
	MisResultAction( TakeItem, 2975, 1)
	MisResultAction( TakeItem, 2976, 1)
	MisResultAction( ClearMission, 1237)
	MisResultAction( SetRecord, 1237)
	MisResultAction( AddExpNextLv2 )
	MisResultAction(ClearRecord, 1236)---------------���Է�����
	MisResultAction(ClearRecord, 1237)---------------���Է�����
	MisResultAction(ClearRecord, 1238)---------------���Է�����
	MisResultAction(ClearRecord, 1239)---------------���Է�����
	MisResultAction(ClearRecord, 1240)---------------���Է�����
	MisResultAction(ClearRecord, 1241)---------------���Է�����
	MisResultAction(ClearRecord, 1242)---------------���Է�����
	MisResultAction(ClearRecord, 1243)---------------���Է�����
	MisResultAction(ClearRecord, 1244)---------------���Է�����
	MisResultAction(ClearRecord, 1245)---------------���Է�����
	MisResultAction(ClearRecord, 1246)---------------���Է�����

	InitTrigger()
	TriggerCondition( 1, IsItem, 2969)	
	TriggerAction( 1, AddNextFlag, 1237, 10, 1 )
	RegCurTrigger( 12371 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2970)	
	TriggerAction( 1, AddNextFlag, 1237, 20, 1 )
	RegCurTrigger( 12372 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2971)	
	TriggerAction( 1, AddNextFlag, 1237, 30, 1 )
	RegCurTrigger( 12373 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2972)	
	TriggerAction( 1, AddNextFlag, 1237, 40, 1 )
	RegCurTrigger( 12374 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2973)	
	TriggerAction( 1, AddNextFlag, 1237, 50, 1 )
	RegCurTrigger( 12375 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2974)	
	TriggerAction( 1, AddNextFlag, 1237, 60, 1 )
	RegCurTrigger( 12376 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2975)	
	TriggerAction( 1, AddNextFlag, 1237, 70, 1 )
	RegCurTrigger( 12377 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2976)	
	TriggerAction( 1, AddNextFlag, 1237,80, 1 )
	RegCurTrigger( 12378 )

----------------------------------��֮��----------������
	DefineMission( 6176, "��֮��", 1238)
	MisBeginTalk( "<t>�����������ҽ�����Ψһ,����Ҫ����Կ�״�������ļ���,�����ȥ�Һ�������ʥɳᰳǴ�ʹ��ϯ��(����2256,2707)�����Ը�����ʾ.")
	MisBeginCondition( NoMission, 1238)
	MisBeginCondition( NoRecord, 1238)
	MisBeginCondition( HasMission, 1237)
	MisBeginAction( AddMission, 1238)
	MisBeginAction( AddTrigger, 12381, TE_GETITEM, 2965, 1)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed( MIS_NEED_DESP,"ȥ��ɳᰳǴ�ʹ��ϯ��(����2256,2707)������Կ��,�����ظ��ĵ�������(3734,2661).")
	MisNeed( MIS_NEED_ITEM, 2965, 1, 10, 1)

	MisResultTalk( "<t>Oh,baby!�����������Կ��,�����Ҿ������ȥ��������������.")
	MisHelpTalk( "<t>ϯ��һ��֪������Կ�׵����䣬ȥ��������")
	MisResultCondition( HasMission, 1238)
	MisResultCondition( NoRecord, 1238)
	MisResultCondition( HasItem, 2965, 1)
	MisResultAction( TakeItem, 2965, 1)
	MisResultAction( ClearMission, 1238)
	MisResultAction( SetRecord, 1238)
	MisResultAction( GiveItem, 2974, 1, 4)
	MisResultBagNeed(1)


	InitTrigger()
	TriggerCondition( 1, IsItem, 2965)	
	TriggerAction( 1, AddNextFlag, 1238, 10, 1 )
	RegCurTrigger( 12381 )

----------------------------------��֮��----------ɳᰳǴ�ʹ��ϯ��
	DefineMission( 6177, "��֮��", 1239)
	MisBeginTalk( "<t>������������������׷��ı���,�ҵ���Ů��Ҫӵ��2������������Ƕ���׽��������,��˵�����ڴ����ĺ���,����ʿ�����ҵ�,�����������2�����ҵĻ�,�ҾͰ�����ض��������Կ���͸���!!")
	MisBeginCondition( HasMission, 1238)
	MisBeginCondition( NoRecord, 1239)
	MisBeginCondition( NoMission, 1239)
	MisBeginAction( AddMission, 1239)
	MisBeginAction( AddTrigger, 12391, TE_GETITEM, 3362, 2)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed( MIS_NEED_DESP, "�ڴ�������Щ����������2���������ϯ��")
	MisNeed( MIS_NEED_ITEM, 3362, 2, 10, 2)

	MisResultTalk( "<t>�������Ƕ�õı���,���Ѿ�ӵ������,�ҵ���Ůһ����ܸ���.")
	MisHelpTalk( "<t>�����鴺������Щ�������Ͼ���.")
	MisResultCondition( HasMission, 1239)
	MisResultCondition( NoRecord, 1239)
	MisResultCondition( HasItem, 3362, 2)
	MisResultAction( TakeItem, 3362, 2)
	MisResultAction( ClearMission, 1239)
	MisResultAction( SetRecord, 1239)
	MisResultAction( GiveItem, 2965, 1, 4)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3362)	
	TriggerAction( 1, AddNextFlag, 1239, 10, 2 )
	RegCurTrigger( 12391 )
	
---------------------------------����ĺ��-----------������
	DefineMission( 6178, "����ĺ��", 1240)
	MisBeginTalk( "<t>������ҹ����ô��ȱ����ζ�ĺ��,���ڱ��ǵ��õ��ϰ塤Լɪ��(1291,541)�Ƕ���1ƿ����ĺ��,�����ȥ����ȡ������?")
	MisBeginCondition( NoMission, 1240)
	MisBeginCondition( NoRecord, 1240)
	MisBeginCondition( HasMission, 1237)
	MisBeginCondition( HasRecord, 1238)
	MisBeginAction( AddMission, 1240)
	MisBeginAction( AddTrigger, 12401, TE_GETITEM, 2977, 1)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed( MIS_NEED_DESP, "�ڱ��ǵ��õ��ϰ塤Լɪ��(1291,541)�ǰ�������(3734,2661)ȡ��һƿ����ĺ��")
	MisNeed( MIS_NEED_ITEM, 2977, 1, 10, 1)

	MisResultTalk( "<t>�⽫��һ�������ڴ���ҹ��,��Ҫ�ͽ�������һ������.")
	MisHelpTalk( "<t>���ȥ��")
	MisResultCondition( HasMission, 1240)
	MisResultCondition( NoRecord, 1240)
	MisResultCondition( HasItem, 2977, 1)
	MisResultAction( TakeItem, 2977, 1)
	MisResultAction( ClearMission, 1240)
	MisResultAction( SetRecord, 1240)
	MisResultAction( GiveItem, 2976, 1, 4)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 2977)	
	TriggerAction( 1, AddNextFlag, 1240, 10, 1 )
	RegCurTrigger( 12401 )

---------------------------------����ĺ��------------�õ��ϰ塤Լɪ��
	DefineMission( 6179, "����ĺ��", 1241)
	MisBeginTalk( "<t>���������Ƶ���������ζ�ĺ��,��������?��ǮҲ������!������������Ҫ��!<n><t>�����齫�Ƹ�3��,�齫����3��,�齫�ƺ�3��,Ҭ����70�������һ�.")
	MisBeginCondition( NoMission, 1241)
	MisBeginCondition( NoRecord, 1241)
	MisBeginCondition( HasMission, 1240)
	MisBeginAction( AddMission, 1241)
	
	MisBeginAction( AddTrigger, 12411, TE_GETITEM, 0172, 3)
	MisBeginAction( AddTrigger, 12412, TE_GETITEM, 0173, 3)
	MisBeginAction( AddTrigger, 12413, TE_GETITEM, 0174, 3)
	MisBeginAction( AddTrigger, 12414, TE_GETITEM, 3916, 70)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed( MIS_NEED_DESP, "����Լɪ����Ҫ�ĵ���,��Щ�齫������ˮ���Ľ�ʬ������,Ҭ�����ڰ���������Ŷ")
	
	MisNeed( MIS_NEED_ITEM, 0172, 3, 5, 3)
	MisNeed( MIS_NEED_ITEM, 0173, 3, 10, 3)
	MisNeed( MIS_NEED_ITEM, 0174, 3, 15, 3)
	MisNeed( MIS_NEED_ITEM, 3916, 70, 20, 70)

	MisResultTalk( "<t>�������Ҫ�Ķ���,ʵ��̫��л����.")
	MisHelpTalk( "<t>������ĺ�ƿ�������������Ŷ.")
	MisResultCondition( HasMission, 1241)
	MisResultCondition( NoRecord, 1241)
	MisResultCondition( HasItem, 3916, 70)
	MisResultCondition( HasItem, 172, 3)
	MisResultCondition( HasItem, 173, 3)
	MisResultCondition( HasItem, 174, 3)
	MisResultAction( TakeItem, 3916, 70)
	MisResultAction( TakeItem, 172, 3)
	MisResultAction( TakeItem, 173, 3)
	MisResultAction( TakeItem, 174, 3)
	MisResultAction( ClearMission, 1241)
	MisResultAction( SetRecord, 1241)



	
	InitTrigger()
	TriggerCondition( 1, IsItem, 0172)	
	TriggerAction( 1, AddNextFlag, 1241, 5, 3 )
	RegCurTrigger( 12411 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 0173)	
	TriggerAction( 1, AddNextFlag, 1241, 10, 3)
	RegCurTrigger( 12412 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 0174)	
	TriggerAction( 1, AddNextFlag, 1241, 15, 3 )
	RegCurTrigger( 12413 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3916)	
	TriggerAction( 1, AddNextFlag, 1241, 20, 70 )
	RegCurTrigger( 12414 )
	
	
--------------------------------����ĺ��------------�õ��ϰ塤Լɪ��
	DefineMission( 6180, "����ĺ��", 1242)
	MisBeginTalk( "<t>̫������,����������û�г���ĺ��,������,��ƿ�������ұ���һ��,�����ٻ�����!")
	MisBeginCondition( NoMission, 1242)
	MisBeginCondition( NoRecord, 1242)
	MisBeginCondition( HasRecord, 1241)
	MisBeginAction( AddMission, 1242)
	MisBeginAction( AddChaHJ )--------�;�Ϊ1440
	MisCancelAction(SystemNotice, "�������޷��ж�")
	MisBeginBagNeed(1)

	MisNeed( MIS_NEED_DESP, "��Լɪ����ĺ�Ʒ��ڱ����ڶ���,���;�û���Ժ���ȥ����Լɪ��.")
	
	MisResultTalk( "<t>��ư����,�ŵ�ʱ��Խ��Խ���.")
	MisHelpTalk( "<t>�Ѻ�Ʒ��ڱ����ڶ��������.")
	MisResultCondition( CheckHJ )-----1���ӿ�1��,�۵�0
	MisResultCondition( NoRecord, 1242)
	MisResultCondition( HasMission, 1242)
	MisResultAction( ClearMission, 1242)
	MisResultAction( SetRecord, 1242)
	MisResultAction( TakeItem, 2967, 1)
	MisResultAction( GiveItem, 2977, 1, 4)
	MisResultBagNeed(1)

----------------------------------�һ�õ�廨��-------------������
	DefineMission( 6181, "�һ�õ�廨��", 1243)
	MisBeginTalk( "<t>õ�廨�갮�������,�Ҽǵñ��ǵ���Ъ��÷�ַ�(1280,478)����õ�廨��,���԰���ȥȡһЩ��?")
	MisBeginCondition( NoMission, 1243)
	MisBeginCondition( NoRecord, 1243)
	MisBeginCondition( HasMission, 1237)
	MisBeginCondition( HasRecord, 1238)
	MisBeginCondition( HasRecord, 1240)
	MisBeginAction( AddMission, 1243)
	MisBeginAction( AddTrigger, 12431, TE_GETITEM, 2968, 1)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed( MIS_NEED_DESP, "ȥ��������ӱ��ǵ���Ъ��÷�ַ�(1280,478)����ȡ��õ�廨��")
	MisNeed( MIS_NEED_ITEM, 2968, 1, 10, 1)

	MisResultTalk( "<t>��!�ҵ�����!��Ȼ����ô�����Ļ���!��̫���Ҿ�����,������һ��Ҫ�ɹ�!")
	MisHelpTalk( "<t>������õ�廨��һ���ܴ򶯽�����!")
	MisResultCondition( HasMission, 1243)
	MisResultCondition( NoRecord, 1243)
	MisResultCondition( HasItem, 2968, 1)
	MisResultAction( ClearMission, 1243)
	MisResultAction( SetRecord, 1243)
	MisResultAction( TakeItem, 2968, 1)
	MisResultAction( GiveItem, 2973, 1, 4)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 2968)	
	TriggerAction( 1, AddNextFlag, 1243, 10, 1 )
	RegCurTrigger( 12431 )

----------------------------------�һ�õ�廨��-------------��Ъ��÷�ַ�
	DefineMission( 6182, "�һ�õ�廨��", 1244)
	MisBeginTalk( "<t>���ź��������ĳ���з,С����,�������ˮ���Ӿ���ɧ��·��.����Ҫ����ػ���3��,����3��,������ʯ3��,��֤�����ʵ��.����������Ϳ��Ե������ﻻȡõ�廨����Ϊ����.")
	MisBeginCondition( NoMission, 1244)
	MisBeginCondition( NoRecord, 1244)
	MisBeginCondition( HasMission, 1243)
	MisBeginAction( AddMission, 1244)
	MisBeginAction( AddTrigger, 12441, TE_GETITEM, 4259, 3)
	MisBeginAction( AddTrigger, 12442, TE_GETITEM, 1774, 3)
	MisBeginAction( AddTrigger, 12443, TE_GETITEM, 1632, 3)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed( MIS_NEED_DESP, "��3������,3������,3��������ʯ����Ъ��÷�ַ�")
	MisNeed( MIS_NEED_ITEM, 4259, 3, 10, 3)
	MisNeed( MIS_NEED_ITEM, 1774, 3, 20, 3)
	MisNeed( MIS_NEED_ITEM, 1632, 3, 30, 3)

	MisResultTalk( "<t>���ʶ����������,���Ǹ���Ľ���.")
	MisHelpTalk( "<t>����,���ۺ�������ʯ�Ļ��򺣵������ĳ���з,С����,�������ˮ���Ӿ�����.")
	MisResultCondition( HasMission, 1244)
	MisResultCondition( NoRecord, 1244)
	MisResultCondition( HasItem, 4259, 3)
	MisResultCondition( HasItem, 1774, 3)
	MisResultCondition( HasItem, 1632, 3)
	MisResultAction( TakeItem, 4259, 3)
	MisResultAction( TakeItem, 1774, 3)
	MisResultAction( TakeItem, 1632, 3)
	MisResultAction( SetRecord, 1244)
	MisResultAction( ClearMission, 1244)
	MisResultAction( GiveItem, 2968, 1, 4)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4259)	
	TriggerAction( 1, AddNextFlag, 1244, 10, 3 )
	RegCurTrigger( 12441 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1774)	
	TriggerAction( 1, AddNextFlag, 1244, 10, 1 )
	RegCurTrigger( 12442 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1632)	
	TriggerAction( 1, AddNextFlag, 1244, 10, 1 )
	RegCurTrigger( 12443 )

---------------------------------�һؾ���������-----------������
	DefineMission( 6183, "�һؾ���������", 1245)
	MisBeginTalk( "<t>�������Ǹ�������ҹ��,����ҪЩ��������ů�����˵�����,���԰���ȥɳᰵ�С������(897,3683)����Щ������������?")
	MisBeginCondition( NoMission, 1245)
	MisBeginCondition( NoRecord, 1245)
	MisBeginCondition( HasMission, 1237)
	MisBeginCondition( HasRecord, 1238)
	MisBeginCondition( HasRecord, 1240)
	MisBeginCondition( HasRecord, 1243)
	MisBeginAction( AddMission, 1245)
	MisBeginAction( AddTrigger, 12451, TE_GETITEM, 2966, 1)
	MisCancelAction(SystemNotice, "�������޷��ж�")
	
	MisNeed( MIS_NEED_DESP, "��С������(ħŮ897,3683)����������������ĵ���������(3734,2661)")
	MisNeed( MIS_NEED_ITEM, 2966, 1, 10, 1)

	MisResultTalk( "<t>����һ�����ĵ���,������������?�������Ǹ�����֮ҹ~")
	MisHelpTalk( "<t>������ҹ����ô��û�������?")
	MisResultCondition( HasMission, 1245)
	MisResultCondition( NoRecord, 1245)
	MisResultCondition( HasItem, 2966, 1)
	MisResultAction( TakeItem, 2966, 1)
	MisResultAction( SetRecord, 1245)
	MisResultAction( ClearMission, 1245)
	MisResultAction( GiveItem, 2975, 1, 4)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 2966)	
	TriggerAction( 1, AddNextFlag, 1245, 10, 1 )
	RegCurTrigger( 12451 )

----------------------------------�һؾ���������------------С������
	DefineMission( 6184, "�һؾ���������", 1246)
	MisBeginTalk( "<t>����Ҫ��һ���ǳ�����������,�������ڻ���2����ɫˮ��,2������ʯ�ᾧ,�������ȥΣ�յ��ĵ�ȥ��ս����սʿ�ͷ��������˵Ļ�,Ӧ�ÿ����ҵ�����Ҫ�Ķ���.")
	MisBeginCondition( NoMission, 1246)
	MisBeginCondition( NoRecord, 1246)
	MisBeginCondition( HasMission, 1245)
	MisBeginAction( AddMission, 1246)
	MisBeginAction( AddTrigger, 12461, TE_GETITEM, 3367,2)
	MisBeginAction( AddTrigger, 12462, TE_GETITEM, 3380,2)
	MisCancelAction(SystemNotice, "�������޷��ж�")

	MisNeed( MIS_NEED_DESP, "��С������(ħŮ897,3683)���ĵ�������սʿ�ͷ��������������ҵ�2����ɫˮ��,2������ʯ�ᾧ.<r�ǵû�ȥ��������(3734,2661)>")
	MisNeed( MIS_NEED_ITEM, 3367, 2, 10, 2)
	MisNeed( MIS_NEED_ITEM, 3380, 2, 20, 2)

	MisResultTalk( "<t>�������!��ͷ�϶��ȳ�֩������~")
	MisHelpTalk( "<t>ˮ����ˮ��..")
	MisResultCondition( HasMission, 1246)
	MisResultCondition( NoRecord, 1246)
	MisResultCondition( HasItem, 3367, 2)
	MisResultCondition( HasItem, 3380, 2)
	MisResultAction( TakeItem, 3380, 2)
	MisResultAction( TakeItem, 3367, 2)
	MisResultAction( SetRecord, 1246)
	MisResultAction( ClearMission, 1246)
	MisResultAction( GiveItem, 2966, 1, 4)

	MisResultBagNeed(1)

        InitTrigger()
	TriggerCondition( 1, IsItem, 3367)	
	TriggerAction( 1, AddNextFlag, 1246, 10, 2 )
	RegCurTrigger( 12461 )

	 InitTrigger()
	TriggerCondition( 1, IsItem, 3380)	
	TriggerAction( 1, AddNextFlag, 1246, 20, 2 )
	RegCurTrigger( 12462 )

------------------------����ʥ������------------ 	���Ǳ�NPCʥ�����ˣ�1216��550��
	DefineMission( 6185, "����ʥ��С����", 1247)
	MisBeginTalk( "<t>ÿ������ô��С�����ڵ��ҷ�ʥ�����������ǵĳ�������,�����������ô����?����һ��������һֻʥ����������.�����̴ѵĿھ���С��һ,����ʥ������һ��ͳһ���,����С�ͺ�.��˵ÿ��Ź�һ��ʥ��,����Ȼ�����Һ���ϡ����.�ҵ��ֵܿ���˹Ī˹�ĺ����Ѿ��ι���ٵ���,������Ը�������һ��.�����һ��С����.")
	MisBeginCondition( NoMission, 1247)
	MisBeginCondition( NoRecord, 1247)
	MisBeginCondition( HasItem, 2878, 1)
	MisBeginAction( TakeItem, 2878, 1)
	MisBeginAction( AddMission, 1247)
	MisBeginAction( CreatBBBB, 929)
	MisCancelAction( ClearMission, 1247)

	MisHelpTalk( "<t>����<rһСʱ�ڽ�ʥ��С�����͵����ض�>��,�ǵ�Ҫ<rͽ��>�ߵ���������Ӫ�ز���վ(2111,557),�κ�<r��ת��ͼ��ʹ�û�Ʊ���뿪�����͵�NPC��Ұ��Χ>����Ϊ�������ʥ��С���˵Ķ�ʧ.�м�!")
	MisNeed( MIS_NEED_DESP, "����<rһСʱ�ڽ�ʥ��С�����͵�����˹Ī˹>��,�ǵ�Ҫ<rͽ��>�ߵ���������Ӫ�ز���վ(2111,557).Ϊ��ʥ�����˵İ�ȫ,�벻Ҫ<r��ת��ͼ��ʹ�û�Ʊ�����ߡ��뿪�����͵�NPC��Ұ��Χ>��.<b������ֻ�ܽ�ȡһ��,�жϻ���ɻ����ʸ�֤����ʧ,Ҫ����Ŷ>.")

	MisResultCondition( AlwaysFailure )


--------------------------------------------------------����ʥ������--------��������Ӫ�ز���վ(2111,557)
	DefineMission( 6186, "����ʥ��С����", 1247, COMPLETE_SHOW)
	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>лл��.�ҵļٺ��ӻ��ܱ����.�Ǻ�")
	MisResultCondition( HasMission, 1247)
	MisResultCondition( NoRecord, 1247)
	MisResultAction( CheckBBBB)
	MisResultAction( ClearMission, 1247)
	MisResultAction( SetRecord, 1247)
	MisResultAction( GiveItem, 2888, 1, 4)
	MisResultAction( GiveItem, 2889, 1, 4)
	MisResultAction( GiveItem, 3240, 1, 4)
	MisResultBagNeed(3)
	
------------------------------�𼦴��Բ�	
	DefineMission( 6187, "�𼦴��Բ�", 1248)
	MisBeginTalk( "<t>��������ʥ��ѩ�׵Ķ���.���ѣ�Ϊʲô��������Щ���ĵ���ף���ȥɱ¾һ����?Ҳ��������Щ�������ܵĻ��Ǹ�������Ŀ��,ȥ����ɱ��һЩ,Ȼ������ǵ���Ļ𼦵���ë����������,�������100����.")
	MisBeginCondition( NoMission, 1248)
	MisBeginCondition( NoRecord, 1248)
	MisBeginAction( AddMission, 1248)
	MisBeginAction(AddTrigger, 12481, TE_GETITEM, 2879, 100 )
	MisCancelAction( ClearMission, 1248)

	MisNeed(MIS_NEED_ITEM, 2879, 100, 10, 100 )
	MisHelpTalk( "<t>���ڰ�����,���Ǳ���ɳᰳǳ��⵽������")

	MisResultTalk( "<t>�ɵĺ�,�㲻������ѪҲ��������ʥ���ڵĵ�׺֮һ��?")
	MisResultCondition( HasMission, 1248)
	MisResultCondition( NoRecord, 1248)
	MisResultCondition( HasItem, 2879, 100)
	MisResultAction( TakeItem, 2879, 100)
	MisResultAction( GiveItem, 2882, 1, 4)
	MisResultAction( CpHuojiNum )
	MisResultAction( ClearMission, 1248)
	MisResultAction( SetRecord, 1248)
	MisResultAction( ClearRecord, 1248)


	InitTrigger()
	TriggerCondition( 1, IsItem, 2879)	
	TriggerAction( 1, AddNextFlag, 1248, 10, 100 )
	RegCurTrigger( 12481 )

------------------------------��¹���Բ�	
	DefineMission( 6188, "��¹���Բ�", 1249)
	MisBeginTalk( "<t>��������ʥ��ѩ�׵Ķ���.���ѣ�Ϊʲô��������Щ���ĵ���ף���ȥɱ¾һ����?Ҳ��������Щ�������ܵ�а����¹�Ǹ�������Ŀ��,ȥ����ɱ��һЩ,Ȼ������ǵ������¹�ļ�Ǵ���������,�������100����.")
	MisBeginCondition( NoMission, 1249)
	MisBeginCondition( NoRecord, 1249)
	MisBeginAction( AddMission, 1249)
	MisBeginAction(AddTrigger, 12491, TE_GETITEM, 2881, 100 )
	MisCancelAction( ClearMission, 1249)

	MisNeed(MIS_NEED_ITEM, 2881, 100, 10, 100 )
	MisHelpTalk( "<t>а����¹�ڰ�����,���Ǳ���ɳᰳǳ��⵽������")

	MisResultTalk( "<t>�ɵĺ�,�㲻������ѪҲ��������ʥ���ڵĵ�׺֮һ��?")
	MisResultCondition( HasMission, 1249)
	MisResultCondition( NoRecord, 1249)
	MisResultCondition( HasItem, 2881, 100)
	MisResultAction( TakeItem, 2881, 100)
	MisResultAction( GiveItem, 2882, 1, 4)
	MisResultAction( CpMiluNum )
	MisResultAction( ClearMission, 1249)
	MisResultAction( SetRecord, 1249)
	MisResultAction( ClearRecord, 1249)


	InitTrigger()
	TriggerCondition( 1, IsItem, 2881)	
	TriggerAction( 1, AddNextFlag, 1249, 10, 100 )
	RegCurTrigger( 12491 )

------------------------------ѩ�˴��Բ�	
	DefineMission( 6189, "ѩ�˴��Բ�", 1250)
	MisBeginTalk( "<t>��������ʥ��ѩ�׵Ķ���.���ѣ�Ϊʲô��������Щ���ĵ���ף���ȥɱ¾һ����?Ҳ��������Щ�������ܵ�ʥ��ѩ���Ǹ�������Ŀ��,ȥ����ɱ��һЩ,Ȼ������ǵ����ѩ�˵��������������,�������100����.")
	MisBeginCondition( NoMission, 1250)
	MisBeginCondition( NoRecord, 1250)
	MisBeginAction( AddMission, 1250)
	MisBeginAction(AddTrigger, 12501, TE_GETITEM, 2880, 100 )
	MisCancelAction( ClearMission, 1250)

	MisNeed(MIS_NEED_ITEM, 2880, 100, 10, 100 )
	MisHelpTalk( "<t>ʥ��ѩ���ڰ�����,���Ǳ���ɳᰳǳ��⵽������")

	MisResultTalk( "<t>�ɵĺ�,�㲻������ѪҲ��������ʥ���ڵĵ�׺֮һ��?")
	MisResultCondition( HasMission, 1250)
	MisResultCondition( NoRecord, 1250)
	MisResultCondition( HasItem, 2880, 100)
	MisResultAction( TakeItem, 2880, 100)
	MisResultAction( GiveItem, 2882, 1, 4)
	MisResultAction( CpXuerenNum )
	MisResultAction( ClearMission, 1250)
	MisResultAction( SetRecord, 1250)
	MisResultAction( ClearRecord, 1250)


	InitTrigger()
	TriggerCondition( 1, IsItem, 2880)	
	TriggerAction( 1, AddNextFlag, 1250, 10, 100 )
	RegCurTrigger( 12501 )


	----------------------------------------------------------���̴�����ʥ������(һ)--------------ʥ���崫��ʹ
	DefineMission( 6190, "���̴�����ʥ������(һ)", 1251)
	MisBeginTalk( "<t>û�л𼦵�ʥ�����ǲ�������,�ҽ���ʥ������л�ظ�����ʶ��,������ʥ������ⷽ����������Ŷ.")
	MisBeginCondition( NoMission, 1251)
	MisBeginCondition( NoRecord, 1251)
	MisBeginAction( AddMission, 1251)
	MisCancelAction( ClearMission, 1251)

	MisNeed( MIS_NEED_DESP, "ȥ���л��(220,41)����.")
	MisHelpTalk( "<t>ʥ���ںܿ�͹�ȥ��,��Ҫ�ӿ��ٶ���.")
	
	MisResultCondition( AlwaysFailure )

-----------------------------------------------------------���̴�����ʥ������(һ)--------------�л��(220,41)
	DefineMission( 6191, "���̴�����ʥ������(һ)", 1251, COMPLETE_SHOW)
	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>�������,ʥ������!Ҳ���������˵��,������ר�Ÿ��������ζ�Ļ����ʥ�����,��ӭ��Ʒ��.")
	MisResultCondition( HasMission, 1251)
	MisResultCondition( NoRecord, 1251)
	MisResultAction( SetRecord, 1251)
	MisResultAction( GiveItem, 2883, 2, 4)
	MisResultAction( ClearMission, 1251)
	MisResultBagNeed(1)


	--------------------------------------------------------���̴�����ʥ������(��)-----------------ʥ���崫��ʹ
	DefineMission( 6192, "���̴�����ʥ������(��)", 1252)
	MisBeginTalk( "<t>���ɷ��Ͽƶ��Ǹ��Ըе�����,�����չ���ë��¹�ǡ�ѩ���������.�������ȥʥ��������,�Ͳ��ò�ȥ��ʶ��һ��.")
	MisBeginCondition( NoMission, 1252)
	MisBeginCondition( NoRecord, 1252)
	MisBeginAction( AddMission, 1252)
	MisCancelAction( ClearMission, 1252)

	MisNeed( MIS_NEED_DESP, "ȥ��ʥ����Ŀƶ�(144,252)����.")
	MisHelpTalk( "<t>���Ѿ���ʶ������?")
	
	MisResultCondition( AlwaysFailure )

-----------------------------------------------------------���̴�����ʥ������(��)--------------�ƶ�(144,252)
	DefineMission( 6193, "���̴�����ʥ������(��)", 1252, COMPLETE_SHOW)
	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>ʥ������!��ȥʥ����������?��Ҫ�ü�ë��¹�ǡ�ѩ��������Щ�����������õĶ�����?��֪��ɱ���𼦡���¹��ѩ�˻ᷢ��ʲô���º����?")
	MisResultCondition( HasMission, 1252)
	MisResultCondition( NoRecord, 1252)
	MisResultAction( SetRecord, 1252)
	MisResultAction( GiveItem, 2883, 2, 4)
	MisResultAction( ClearMission, 1252)
	MisResultBagNeed(1)

	--------------------------------------------------------���̴�����ʥ������(��)--------------ʥ���崫��ʹ
	DefineMission( 6194, "���̴�����ʥ������(��)", 1253)
	MisBeginTalk( "<t>���ɲ���һ����ͨ��ϴ�»���.����������ǵ�ʥ�����,������û�еط���ϴ,�Ǿ�ȥ������.")
	MisBeginCondition( NoMission, 1253)
	MisBeginCondition( NoRecord, 1253)
	MisBeginAction( AddMission, 1253)
	MisCancelAction( ClearMission, 1253)

	MisNeed( MIS_NEED_DESP, "ȥ��ʥ�����ʥ�����˵�ϴ�»�(84,37).")
	MisHelpTalk( "<t>ϴˢˢ~ϴˢˢ......")
	
	MisResultCondition( AlwaysFailure )

-----------------------------------------------------------���̴�����ʥ������(��)--------------ʥ�����˵�ϴ�»�(84,37)
	DefineMission( 6195, "���̴�����ʥ������(��)", 1253, COMPLETE_SHOW)
	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>����,����ʲôҪϴ����?��������̸.")
	MisResultCondition( HasMission, 1253)
	MisResultCondition( NoRecord, 1253)
	MisResultAction( SetRecord, 1253)
	MisResultAction( GiveItem, 2883, 2, 4)
	MisResultAction( ClearMission, 1253)
	MisResultBagNeed(1)

	--------------------------------------------------------���̴�����ʥ������(��)--------------ʥ���崫��ʹ
	DefineMission( 6196, "���̴�����ʥ������(��)", 1254)
	MisBeginTalk( "<t>��������߼����ĵط�?��Ȼ��ʥ���ӻ���������,��������,������򽻵�û�к���.")
	MisBeginCondition( NoMission, 1254)
	MisBeginCondition( NoRecord, 1254)
	MisBeginAction( AddMission, 1254)
	MisCancelAction( ClearMission, 1254)

	MisNeed( MIS_NEED_DESP, "ȥ��ʥ�����ʥ���ӻ���(197,251).")
	MisHelpTalk( "<t>����ȥ��ʶһ��ʥ���ӻ���.")
	
	MisResultCondition( AlwaysFailure )

-----------------------------------------------------------���̴�����ʥ������(��)--------------ʥ���ӻ���(197,251)
	DefineMission( 6197, "���̴�����ʥ������(��)", 1254, COMPLETE_SHOW)
	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>ʥ���񻶴�����!��������,�ȵ��ȵ�.")
	MisResultCondition( HasMission, 1254)
	MisResultCondition( NoRecord, 1254)
	MisResultAction( SetRecord, 1254)
	MisResultAction( GiveItem, 2883, 2, 4)
	MisResultAction( ClearMission, 1254)
	MisResultBagNeed(1)


	--------------------------------------------------------���̴�����ʥ������(��)--------------ʥ���崫��ʹ
	DefineMission( 6198, "���̴�����ʥ������(��)", 1255)
	MisBeginTalk( "<t>���������ʥ����Ҫ�������˱��ﰮ��Ļ���Ŷ.")
	MisBeginCondition( NoMission, 1255)
	MisBeginCondition( NoRecord, 1255)
	MisBeginAction( AddMission, 1255)
	MisCancelAction( ClearMission, 1255)

	MisNeed( MIS_NEED_DESP, "ȥ��ʥ�����ʥ�����ˡ������ҿ�(125,253).")
	MisHelpTalk( "<t>�����ҿ�!")
	
	MisResultCondition( AlwaysFailure )

-----------------------------------------------------------���̴�����ʥ������(��)--------------ʥ�����ˡ������ҿ�(125,253)
	DefineMission( 6199, "���̴�����ʥ������(��)", 1255, COMPLETE_SHOW)
	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>�����ҿ�!��ʶ�ҵ��Ǹ�ͬ����,�ҿ�����,��һ�����Լ�,���ֱ��˵��м���.")
	MisResultCondition( HasMission, 1255)
	MisResultCondition( NoRecord, 1255)
	MisResultAction( SetRecord, 1255)
	MisResultAction( GiveItem, 2883, 2, 4)
	MisResultAction( ClearMission, 1255)
	MisResultBagNeed(1)


	--------------------------------------------------------���̴�����ʥ������(��)--------------ʥ���崫��ʹ
	DefineMission( 6200, "���̴�����ʥ������(��)", 1256)
	MisBeginTalk( "<t>ʥ���ڵ�����Ҫ������˭?����!��,��Ȼ,����һ����,����ʥ������Ŷ.")
	MisBeginCondition( NoMission, 1256)
	MisBeginCondition( NoRecord, 1256)
	MisBeginAction( AddMission, 1256)
	MisCancelAction( ClearMission, 1256)

	MisNeed( MIS_NEED_DESP, "ȥ��ʥ�����ʥ������(144,166)����.")
	MisHelpTalk( "<t>merry christmas!")
	
	MisResultCondition( AlwaysFailure )

-----------------------------------------------------------���̴�����ʥ������(��)-------------ʥ������(144,166)
	DefineMission( 6201, "���̴�����ʥ������(��)", 1256, COMPLETE_SHOW)
	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>merry christmas!׼���������������?����,�������ʥ����������ף�������ں�����Ŷ.")
	MisResultCondition( HasMission, 1256)
	MisResultCondition( NoRecord, 1256)
	MisResultAction( SetRecord, 1256)
	MisResultAction( GiveItem, 2883, 2, 4)
	MisResultAction( ClearMission, 1256)
	MisResultBagNeed(1)

-----------------------------------------------------------�þ�����------------�����ܽӵ�
	DefineMission( 6202, "�þ�", 1257)		------------ʥ������

	MisBeginTalk( "<t>���㿴����������ʱ����һ���ǲ����þ��ˣ������ң���û����.")
	MisBeginCondition( XmasNotice, 1 )
	MisBeginCondition( AlwaysFailure )
	MisBeginAction( AddMission, 1257)
	MisCancelAction( ClearMission, 1257)

	MisResultCondition( AlwaysFailure )

	DefineMission( 6203, "�þ�", 1258)		------------ʥ������

	MisBeginTalk( "<t>���㿴����������ʱ����һ���ǲ����þ��ˣ������ң���û����.")
	MisBeginCondition( XmasNotice, 2 )
	MisBeginCondition( AlwaysFailure )
	MisBeginAction( AddMission, 1258)
	MisCancelAction( ClearMission, 1258)

	MisResultCondition( AlwaysFailure )

	DefineMission( 6204, "�þ�", 1259)		------------�ƶ�

	MisBeginTalk( "<t>���㿴����������ʱ����һ���ǲ����þ��ˣ������ң���û����.")
	MisBeginCondition( XmasNotice, 3 )
	MisBeginCondition( AlwaysFailure )
	MisBeginAction( AddMission, 1259)
	MisCancelAction( ClearMission, 1259)

	MisResultCondition( AlwaysFailure )

	DefineMission( 6205, "�þ�", 1260)		------------С��ķ

	MisBeginTalk( "<t>���㿴����������ʱ����һ���ǲ����þ��ˣ������ң���û����.")
	MisBeginCondition( XmasNotice, 4 )
	MisBeginCondition( AlwaysFailure )
	MisBeginAction( AddMission, 1260)
	MisCancelAction( ClearMission, 1260)

	MisResultCondition( AlwaysFailure )

	----------------------------------------------------------------------08���괺�ڻkokora-------------------------------------------------------------

	------------------------------------------------------------------------������[����ָ����ɪ��](2223,2785)-----------------------------------------------

        ------------------------------------------�����ִ������(һ)---------����������ָ��

	DefineMission(6205,"�����ִ������",1257)

	MisBeginTalk("<t>��������ӭ����,ɽ�亣ζ�н���.<n><t>�װ�������,���������������꼪��,����˳��!ǰ���տɰ���С����ٵ�������ڳ���Ϊ30����64����������ͺ��,һ�˽���һ�λ���,���˲��ɴ���!�Ͻ������������а�!���������뵽����������ָ����ɪ��(2223,2785)����ȡ����.")

	MisBeginCondition(NoMission, 1257)
	MisBeginCondition(NoMission, 1258)
	MisBeginCondition(NoMission, 1259)
	MisBeginCondition(NoMission, 1260)
	MisBeginCondition(NoMission, 1261)
	MisBeginCondition(NoMission, 1262)
	MisBeginCondition(NoMission, 1263)
	MisBeginCondition(NoMission, 1264)
	MisBeginCondition(NoMission, 1265)
	--MisBeginCondition(NoMission, 1257)
	MisBeginCondition(NoRecord, 1257)
	MisBeginCondition(NoRecord, 1258)
	MisBeginCondition(NoRecord, 1259)
	MisBeginCondition(NoRecord, 1260)
	MisBeginCondition(NoRecord, 1261)
	MisBeginCondition(NoRecord, 1262)
	MisBeginCondition(NoRecord, 1263)
	MisBeginCondition(NoRecord, 1264)
	MisBeginCondition(NoRecord, 1265)
	MisBeginCondition(LvCheck, ">",29)
	MisBeginCondition(LvCheck, "<",65)
	MisBeginAction(AddMission, 1257)
	MisBeginAction(AddTrigger, 12571, TE_GETITEM, 3116, 99)          

	MisCancelAction(ClearMission,1257)                         ---------����ȡ��������

	MisNeed(MIS_NEED_DESP, "<t>ѧ��֪��,ѧ�����,���ܸ����Ҹ�!С����ٵ��ֻΪÿλ���׼����һ�����,��ȷ����������������Ҫ��ȡ����?��ô���ǿ�ʼ��!������������ɻ����ζ�ľ����,����Ĺ�֭��ٵ�����,����99���Ϳɵõ�ٵ�����ַ��Ƶ��������ֺ��,����ж�����!")
	MisNeed(MIS_NEED_ITEM, 3116, 99, 10, 99)               ---------�����


	MisHelpTalk("<t>��˵������ľ�������϶��᳤����ζ����ľ����,99�������Ҳ�������ĵļ�֤!���Ͱ�!")
	MisResultTalk("<t>���������������������������,�򿪺��л��ʻ������������!")

	MisResultCondition(HasMission, 1257)
	MisResultCondition(NoRecord, 1257)
	MisResultCondition(NoRecord, 1258)
	MisResultCondition(NoRecord, 1259)
	MisResultCondition(NoRecord, 1260)
	MisResultCondition(NoRecord, 1261)
	MisResultCondition(NoRecord, 1262)
	MisResultCondition(NoRecord, 1263)
	MisResultCondition(NoRecord, 1264)
	MisResultCondition(NoRecord, 1265)
	MisResultCondition(HasItem, 3116, 99)

	MisResultAction(TakeItem, 3116, 99)

	MisResultAction(GiveItem, 5648, 1, 4)                          ---------����������
	MisResultAction(ClearMission, 1257) 
	MisResultAction(SetRecord, 1257) 
	MisResultBagNeed(1)


	InitTrigger()
	TriggerCondition(1, IsItem, 3116)
	TriggerAction(1, AddNextFlag, 1257, 10, 99)
	RegCurTrigger(12571)

       ------------------------------------------�����ִ�����(��)---------����������ָ��

	DefineMission(6206,"�����ִ�����",1258)

	MisBeginTalk("<t>�������ﺣ����,��˳��������.<n><t>�װ�������,������������������˵�ͷ,��Դ����!ǰ���տɰ���С����ٵ�������ڳ���Ϊ65����84����������ͺ��,һ�˽���һ�λ���,���˲��ɴ���!�Ͻ������������а�!���������뵽����������ָ����ɪ��(2223,2785)����ȡ����.")

	MisBeginCondition(NoMission, 1257)
	MisBeginCondition(NoMission, 1258)
	MisBeginCondition(NoMission, 1259)
	MisBeginCondition(NoMission, 1260)
	MisBeginCondition(NoMission, 1261)
	MisBeginCondition(NoMission, 1262)
	MisBeginCondition(NoMission, 1263)
	MisBeginCondition(NoMission, 1264)
	MisBeginCondition(NoMission, 1265)
	--MisBeginCondition(NoMission, 1258)
	MisBeginCondition(NoRecord, 1258)
	MisBeginCondition(NoRecord, 1257)
	MisBeginCondition(NoRecord, 1259)
	MisBeginCondition(NoRecord, 1260)
	MisBeginCondition(NoRecord, 1261)
	MisBeginCondition(NoRecord, 1262)
	MisBeginCondition(NoRecord, 1263)
	MisBeginCondition(NoRecord, 1264)
	MisBeginCondition(NoRecord, 1265)
	MisBeginCondition(LvCheck, ">",64)
	MisBeginCondition(LvCheck, "<",85)
	MisBeginAction(AddMission, 1258)
	MisBeginAction(AddTrigger, 12581, TE_GETITEM, 4495, 1)          

	MisCancelAction(ClearMission,1258)                         ---------����ȡ��������

	MisNeed(MIS_NEED_DESP, "<t>�Ͷ�����,�����������Ӣ��,���������ݺὭ���ĺ���!С����ٵ�����´�����֮��,������նɱɽ�����졤���߲���ȡ�����ϵ�ɽ������!�Դ�Ϊƾ�������ٵ�����������ĸ߼�������,��ʿ��!���������е�����,�ж�������!")
	MisNeed(MIS_NEED_ITEM, 4495, 1, 10, 1)               ---------ɽ������


	MisHelpTalk("<t>��˵ɽ�����졤����ͨ����(����1038,3039)������û,�Ͻ�������,�ҵ���ʿ!")
	MisResultTalk("<t>��!����,û�뵽��ô�̵�ʱ��������������.����߼���������ٵ������Ľ���,�����������벻���ľ�ϲ�!")

	MisResultCondition(HasMission, 1258)
	MisResultCondition(NoRecord, 1258)
	MisResultCondition(NoRecord, 1257)
	MisResultCondition(NoRecord, 1259)
	MisResultCondition(NoRecord, 1260)
	MisResultCondition(NoRecord, 1261)
	MisResultCondition(NoRecord, 1262)
	MisResultCondition(NoRecord, 1263)
	MisResultCondition(NoRecord, 1264)
	MisResultCondition(NoRecord, 1265)
	MisResultCondition(HasItem, 4495, 1)

	MisResultAction(TakeItem, 4495, 1)

	MisResultAction(GiveItem, 5649, 1, 4)                          ---------�߼�������
	MisResultAction(ClearMission, 1258)                        
	MisResultAction(SetRecord, 1258)
	MisResultBagNeed(1)


	InitTrigger()
	TriggerCondition(1, IsItem, 4495)
	TriggerAction(1, AddNextFlag, 1258, 10, 1)
	RegCurTrigger(12581)

	------------------------------------------�����ִ���ʢ��(��)---------����������ָ��

	DefineMission(6207,"�����ִ���ʢ��",1259)

	MisBeginTalk("<t> ��Ƿ�ë������ ,������ʴ����.<n><t>�װ�������,���������������꼪�Ǹ���,ǰ���ƽ�!ǰ���տɰ���С����ٵ�������ڳ���Ϊ85����100����������ͺ��,һ�˽���һ�λ���,���˲��ɴ���!�Ͻ������������а�!���������뵽����������ָ����ɪ��(2223,2785)����ȡ����.")

	MisBeginCondition(NoMission, 1257)
	MisBeginCondition(NoMission, 1258)
	MisBeginCondition(NoMission, 1259)
	MisBeginCondition(NoMission, 1260)
	MisBeginCondition(NoMission, 1261)
	MisBeginCondition(NoMission, 1262)
	MisBeginCondition(NoMission, 1263)
	MisBeginCondition(NoMission, 1264)
	MisBeginCondition(NoMission, 1265)
	--MisBeginCondition(NoMission, 1259)
	MisBeginCondition(NoRecord, 1259)
	MisBeginCondition(NoRecord, 1257)
	MisBeginCondition(NoRecord, 1258)
	MisBeginCondition(NoRecord, 1260)
	MisBeginCondition(NoRecord, 1261)
	MisBeginCondition(NoRecord, 1262)
	MisBeginCondition(NoRecord, 1263)
	MisBeginCondition(NoRecord, 1264)
	MisBeginCondition(NoRecord, 1265)
	MisBeginCondition(LvCheck, ">",84)
	MisBeginCondition(LvCheck, "<",101)
	MisBeginAction(AddMission, 1259)
	MisBeginAction(AddTrigger, 12591, TE_GETITEM, 0179, 10)          

	MisCancelAction(ClearMission,1259)                         ---------����ȡ��������

	MisNeed(MIS_NEED_DESP, "<t>���С����ٵ����ħ��ʦ������ѧ����һ�������ħ��,Ϊ������������ħ��������,�赲а�����Ϯ.Ŀǰ��ȱ��10��������е,��Ҫ��ó�����������������һ������ܾ����СС�������?")
	MisNeed(MIS_NEED_ITEM, 0179, 10, 10, 10)               ---------������е


	MisHelpTalk("<t>а��Ļ�е�ޱ�����,����ǿ������麽��ʿ����,����˫��ʿ����,������ð���߻���,����ҩʦ����,���׷�ӡ�������Ͼ����д���,Ϊ���������ǵİ������ƽ,���10��������е����ٵ��.")
	MisResultTalk("<t>��Ϊ�������ƽ������,С����ٵ��������һ��Ҫ���������������������,���ڿɿ���Ư��˧�����´���װ�!����ʲô?����,�Ͻ��򿪿���!")

	MisResultCondition(HasMission, 1259)
	MisResultCondition(NoRecord, 1259)
	MisResultCondition(NoRecord, 1257)
	MisResultCondition(NoRecord, 1258)
	MisResultCondition(NoRecord, 1260)
	MisResultCondition(NoRecord, 1261)
	MisResultCondition(NoRecord, 1262)
	MisResultCondition(NoRecord, 1263)
	MisResultCondition(NoRecord, 1264)
	MisResultCondition(NoRecord, 1265)
	MisResultCondition(HasItem, 0179, 10)

	MisResultAction(TakeItem, 0179, 10)

	MisResultAction(GiveItem, 5650, 1, 4)                          ---------����������
	MisResultAction(ClearMission, 1259)                        
	MisResultAction(SetRecord, 1259)
	MisResultBagNeed(1)


	InitTrigger()
	TriggerCondition(1, IsItem, 0179)
	TriggerAction(1, AddNextFlag, 1259, 10, 10)
	RegCurTrigger(12591)


	------------------------------------------------------------------------���Ǳ�[����ָ��������¶��](1315,507)�ظ�-----------------------------------------------
       
       ------------------------------------------�����ִ������(һ)---------���Ǳ�����ָ��

	DefineMission(6208,"�����ִ������",1260)

	MisBeginTalk("<t>��������ӭ����,ɽ�亣ζ�н���.<n><t>�װ�������,���������������꼪��,����˳��!ǰ���տɰ���С����ٵ�������ڳ���Ϊ30����64����������ͺ��,һ�˽���һ�λ���,���˲��ɴ���!�Ͻ������������а�!���������뵽���Ǳ�����ָ��������¶��(1315,507)����ȡ����.")

	MisBeginCondition(NoMission, 1257)
	MisBeginCondition(NoMission, 1258)
	MisBeginCondition(NoMission, 1259)
	MisBeginCondition(NoMission, 1260)
	MisBeginCondition(NoMission, 1261)
	MisBeginCondition(NoMission, 1262)
	MisBeginCondition(NoMission, 1263)
	MisBeginCondition(NoMission, 1264)
	MisBeginCondition(NoMission, 1265)
	--MisBeginCondition(NoMission, 1260)
	MisBeginCondition(NoRecord, 1260)
	MisBeginCondition(NoRecord, 1261)
	MisBeginCondition(NoRecord, 1262)
	MisBeginCondition(NoRecord, 1257)
	MisBeginCondition(NoRecord, 1258)
	MisBeginCondition(NoRecord, 1259)
	MisBeginCondition(NoRecord, 1263)
	MisBeginCondition(NoRecord, 1264)
	MisBeginCondition(NoRecord, 1265)
	MisBeginCondition(LvCheck, ">",29)
	MisBeginCondition(LvCheck, "<",65)
	MisBeginAction(AddMission, 1260)
	MisBeginAction(AddTrigger, 12601, TE_GETITEM, 3116, 99)          

	MisCancelAction(ClearMission,1260)                         ---------����ȡ��������

	MisNeed(MIS_NEED_DESP, "<t>ѧ��֪��,ѧ�����,���ܸ����Ҹ�!С����ٵ��ֻΪÿλ���׼����һ�����,��ȷ����������������Ҫ��ȡ����?��ô���ǿ�ʼ��!������������ɻ����ζ�ľ����,����Ĺ�֭��ٵ�����,����99���Ϳɵõ�ٵ�����ַ��Ƶ��������ֺ��,����ж�����!")
	MisNeed(MIS_NEED_ITEM, 3116, 99, 10, 99)               ---------�����


	MisHelpTalk("<t>��˵������ľ�������϶��᳤����ζ����ľ����,99�������Ҳ�������ĵļ�֤!���Ͱ�!")
	MisResultTalk("<t>���������������������������,�򿪺��л��ʻ������������!")

	MisResultCondition(HasMission, 1260)
	MisResultCondition(NoRecord, 1260)
	MisResultCondition(NoRecord, 1261)
	MisResultCondition(NoRecord, 1262)
	MisResultCondition(NoRecord, 1257)
	MisResultCondition(NoRecord, 1258)
	MisResultCondition(NoRecord, 1259)
	MisResultCondition(NoRecord, 1263)
	MisResultCondition(NoRecord, 1264)
	MisResultCondition(NoRecord, 1265)

	MisResultCondition(HasItem, 3116, 99)

	MisResultAction(TakeItem, 3116, 99)

	MisResultAction(GiveItem, 5648, 1, 4)                          ---------����������
	MisResultAction(ClearMission, 1260)                        
	MisResultAction(SetRecord, 1260)
	MisResultBagNeed(1)


	InitTrigger()
	TriggerCondition(1, IsItem, 3116)
	TriggerAction(1, AddNextFlag, 1260, 10, 99)
	RegCurTrigger(12601)

       ------------------------------------------�����ִ�����(��)---------���Ǳ�����ָ��

	DefineMission(6209,"�����ִ�����",1261)

	MisBeginTalk("<t>�������ﺣ����,��˳��������.<n><t>�װ�������,������������������˵�ͷ,��Դ����!ǰ���տɰ���С����ٵ�������ڳ���Ϊ65����84����������ͺ��,һ�˽���һ�λ���,���˲��ɴ���!�Ͻ������������а�!���������뵽���Ǳ�����ָ��������¶��(1315,507)����ȡ����.")

	MisBeginCondition(NoMission, 1257)
	MisBeginCondition(NoMission, 1258)
	MisBeginCondition(NoMission, 1259)
	MisBeginCondition(NoMission, 1260)
	MisBeginCondition(NoMission, 1261)
	MisBeginCondition(NoMission, 1262)
	MisBeginCondition(NoMission, 1263)
	MisBeginCondition(NoMission, 1264)
	MisBeginCondition(NoMission, 1265)
	--MisBeginCondition(NoMission, 1261)
	MisBeginCondition(NoRecord, 1261)
	MisBeginCondition(NoRecord, 1260)
	MisBeginCondition(NoRecord, 1262)
	MisBeginCondition(NoRecord, 1257)
	MisBeginCondition(NoRecord, 1258)
	MisBeginCondition(NoRecord, 1259)
	MisBeginCondition(NoRecord, 1263)
	MisBeginCondition(NoRecord, 1264)
	MisBeginCondition(NoRecord, 1265)
	MisBeginCondition(LvCheck, ">",64)
	MisBeginCondition(LvCheck, "<",85)
	MisBeginAction(AddMission, 1261)
	MisBeginAction(AddTrigger, 12611, TE_GETITEM, 4495, 1)          

	MisCancelAction(ClearMission,1261)                         ---------����ȡ��������

	MisNeed(MIS_NEED_DESP, "<t>�Ͷ�����,�����������Ӣ��,���������ݺὭ���ĺ���!С����ٵ�����´�����֮��,������նɱɽ�����졤���߲���ȡ�����ϵ�ɽ������!�Դ�Ϊƾ�������ٵ�����������ĸ߼�������,��ʿ��!���������е�����,�ж�������!")
	MisNeed(MIS_NEED_ITEM, 4495, 1, 10, 1)               ---------ɽ������


	MisHelpTalk("<t>��˵ɽ�����졤����ͨ����(����1038,3039)������û,�Ͻ�������,�ҵ���ʿ!")
	MisResultTalk("<t>��!����,û�뵽��ô�̵�ʱ��������������.����߼���������ٵ������Ľ���,�����������벻���ľ�ϲ�!")

	MisResultCondition(HasMission, 1261)
	MisResultCondition(NoRecord, 1261)
	MisResultCondition(NoRecord, 1260)
	MisResultCondition(NoRecord, 1262)
	MisResultCondition(NoRecord, 1257)
	MisResultCondition(NoRecord, 1258)
	MisResultCondition(NoRecord, 1259)
	MisResultCondition(NoRecord, 1263)
	MisResultCondition(NoRecord, 1264)
	MisResultCondition(NoRecord, 1265)

	MisResultCondition(HasItem, 4495, 1)

	MisResultAction(TakeItem, 4495, 1)

	MisResultAction(GiveItem, 5649, 1, 4)                          ---------�߼�������
	MisResultAction(ClearMission, 1261)                        
	MisResultAction(SetRecord, 1261)
	MisResultBagNeed(1)


	InitTrigger()
	TriggerCondition(1, IsItem, 4495)
	TriggerAction(1, AddNextFlag, 1261, 10, 1)
	RegCurTrigger(12611)

	------------------------------------------�����ִ���ʢ��(��)---------���Ǳ�����ָ��

	DefineMission(6210,"�����ִ���ʢ��",1262)

	MisBeginTalk("<t> ��Ƿ�ë������ ,������ʴ����.<n><t>�װ�������,���������������꼪�Ǹ���,ǰ���ƽ�!ǰ���տɰ���С����ٵ�������ڳ���Ϊ85����100����������ͺ��,һ�˽���һ�λ���,���˲��ɴ���!�Ͻ������������а�!���������뵽���Ǳ�����ָ��������¶��(1315,507)����ȡ����.")

	MisBeginCondition(NoMission, 1257)
	MisBeginCondition(NoMission, 1258)
	MisBeginCondition(NoMission, 1259)
	MisBeginCondition(NoMission, 1260)
	MisBeginCondition(NoMission, 1261)
	MisBeginCondition(NoMission, 1262)
	MisBeginCondition(NoMission, 1263)
	MisBeginCondition(NoMission, 1264)
	MisBeginCondition(NoMission, 1265)
	--MisBeginCondition(NoMission, 1262)
	MisBeginCondition(NoRecord, 1262)
	MisBeginCondition(NoRecord, 1260)
	MisBeginCondition(NoRecord, 1261)
	MisBeginCondition(NoRecord, 1257)
	MisBeginCondition(NoRecord, 1258)
	MisBeginCondition(NoRecord, 1259)
	MisBeginCondition(NoRecord, 1263)
	MisBeginCondition(NoRecord, 1264)
	MisBeginCondition(NoRecord, 1265)
	MisBeginCondition(LvCheck, ">",84)
	MisBeginCondition(LvCheck, "<",101)
	MisBeginAction(AddMission, 1262)
	MisBeginAction(AddTrigger, 12621, TE_GETITEM, 0179, 10)          

	MisCancelAction(ClearMission,1262)                         ---------����ȡ��������

	MisNeed(MIS_NEED_DESP, "<t>���С����ٵ����ħ��ʦ������ѧ����һ�������ħ��,Ϊ������������ħ��������,�赲а�����Ϯ.Ŀǰ��ȱ��10��������е,��Ҫ��ó�����������������һ������ܾ����СС�������?")
	MisNeed(MIS_NEED_ITEM, 0179, 10, 10, 10)               ---------������е


	MisHelpTalk("<t>а��Ļ�е�ޱ�����,����ǿ������麽��ʿ����,����˫��ʿ����,������ð���߻���,����ҩʦ����,���׷�ӡ�������Ͼ����д���,Ϊ���������ǵİ������ƽ,���10��������е����ٵ��.")
	MisResultTalk("<t>��Ϊ�������ƽ������,С����ٵ��������һ��Ҫ���������������������,�����л��ʿ���Ư��˧�����´���װ�!����ʲô?����,�Ͻ��򿪿���!")

	MisResultCondition(HasMission, 1262)
	MisResultCondition(NoRecord, 1262)
	MisResultCondition(NoRecord, 1260)
	MisResultCondition(NoRecord, 1261)
	MisResultCondition(NoRecord, 1257)
	MisResultCondition(NoRecord, 1258)
	MisResultCondition(NoRecord, 1259)
	MisResultCondition(NoRecord, 1263)
	MisResultCondition(NoRecord, 1264)
	MisResultCondition(NoRecord, 1265)

	MisResultCondition(HasItem, 0179, 10)

	MisResultAction(TakeItem, 0179, 10)

	MisResultAction(GiveItem, 5650, 1, 4)                          ---------����������
	MisResultAction(ClearMission, 1262)                        
	MisResultAction(SetRecord, 1262)
	MisResultBagNeed(1)


	InitTrigger()
	TriggerCondition(1, IsItem, 0179)
	TriggerAction(1, AddNextFlag, 1262, 10, 10)
	RegCurTrigger(12621)

	------------------------------------------------------------------------ɳᰳ�[����ָ������˿��](876,3572)�ظ�-----------------------------------------------
       
       ------------------------------------------�����ִ������(һ)---------ɳᰳ�����ָ��

	DefineMission(6211,"�����ִ������",1263)

	MisBeginTalk("<t>��������ӭ����,ɽ�亣ζ�н���.<n><t>�װ�������,���������������꼪��,����˳��!ǰ���տɰ���С����ٵ�������ڳ���Ϊ30����64����������ͺ��,һ�˽���һ�λ���,���˲��ɴ���!�Ͻ������������а�!���������뵽ɳᰳ�����ָ������˿��(876,3572)����ȡ����.")

	MisBeginCondition(NoMission, 1257)
	MisBeginCondition(NoMission, 1258)
	MisBeginCondition(NoMission, 1259)
	MisBeginCondition(NoMission, 1260)
	MisBeginCondition(NoMission, 1261)
	MisBeginCondition(NoMission, 1262)
	MisBeginCondition(NoMission, 1263)
	MisBeginCondition(NoMission, 1264)
	MisBeginCondition(NoMission, 1265)
	--MisBeginCondition(NoMission, 1260)
	MisBeginCondition(NoRecord, 1263)
	MisBeginCondition(NoRecord, 1264)
	MisBeginCondition(NoRecord, 1265)
	MisBeginCondition(NoRecord, 1257)
	MisBeginCondition(NoRecord, 1258)
	MisBeginCondition(NoRecord, 1259)
	MisBeginCondition(NoRecord, 1260)
	MisBeginCondition(NoRecord, 1261)
	MisBeginCondition(NoRecord, 1262)
	MisBeginCondition(LvCheck, ">",29)
	MisBeginCondition(LvCheck, "<",65)
	MisBeginAction(AddMission, 1263)
	MisBeginAction(AddTrigger, 12631, TE_GETITEM, 3116, 99)          

	MisCancelAction(ClearMission,1263)                         ---------����ȡ��������

	MisNeed(MIS_NEED_DESP, "<t>ѧ��֪��,ѧ�����,���ܸ����Ҹ�!С����ٵ��ֻΪÿλ���׼����һ�����,��ȷ����������������Ҫ��ȡ����?��ô���ǿ�ʼ��!������������ɻ����ζ�ľ����,����Ĺ�֭��ٵ�����,����99���Ϳɵõ�ٵ�����ַ��Ƶ��������ֺ��,����ж�����!")
	MisNeed(MIS_NEED_ITEM, 3116, 99, 10, 99)               ---------�����


	MisHelpTalk("<t>��˵������ľ�������϶��᳤����ζ����ľ����,99�������Ҳ�������ĵļ�֤!���Ͱ�!")
	MisResultTalk("<t>���������������������������,�򿪺��л��ʻ������������!")

	MisResultCondition(HasMission, 1263)
	MisResultCondition(NoRecord, 1263)
	MisResultCondition(NoRecord, 1264)
	MisResultCondition(NoRecord, 1265)
	MisResultCondition(NoRecord, 1257)
	MisResultCondition(NoRecord, 1258)
	MisResultCondition(NoRecord, 1259)
	MisResultCondition(NoRecord, 1260)
	MisResultCondition(NoRecord, 1261)
	MisResultCondition(NoRecord, 1262)

	MisResultCondition(HasItem, 3116, 99)

	MisResultAction(TakeItem, 3116, 99)

	MisResultAction(GiveItem, 5648, 1, 4)                          ---------����������
	MisResultAction(ClearMission, 1263) 
	MisResultAction(SetRecord, 1263) 
	MisResultBagNeed(1)


	InitTrigger()
	TriggerCondition(1, IsItem, 3116)
	TriggerAction(1, AddNextFlag, 1263, 10, 99)
	RegCurTrigger(12631)

       ------------------------------------------�����ִ�����(��)---------ɳᰳ�����ָ��

	DefineMission(6212,"�����ִ�����",1264)

	MisBeginTalk("<t>�������ﺣ����,��˳��������.<n><t>�װ�������,������������������˵�ͷ,��Դ����!ǰ���տɰ���С����ٵ�������ڳ���Ϊ65����84����������ͺ��,һ�˽���һ�λ���,���˲��ɴ���!�Ͻ������������а�!���������뵽ɳᰳ�����ָ������˿��(876,3572)����ȡ����.")

	MisBeginCondition(NoMission, 1257)
	MisBeginCondition(NoMission, 1258)
	MisBeginCondition(NoMission, 1259)
	MisBeginCondition(NoMission, 1260)
	MisBeginCondition(NoMission, 1261)
	MisBeginCondition(NoMission, 1262)
	MisBeginCondition(NoMission, 1263)
	MisBeginCondition(NoMission, 1264)
	MisBeginCondition(NoMission, 1265)
	--MisBeginCondition(NoMission, 1264)
	MisBeginCondition(NoRecord, 1264)
	MisBeginCondition(NoRecord, 1263)
	MisBeginCondition(NoRecord, 1265)
	MisBeginCondition(NoRecord, 1257)
	MisBeginCondition(NoRecord, 1258)
	MisBeginCondition(NoRecord, 1259)
	MisBeginCondition(NoRecord, 1260)
	MisBeginCondition(NoRecord, 1261)
	MisBeginCondition(NoRecord, 1262)
	MisBeginCondition(LvCheck, ">",64)
	MisBeginCondition(LvCheck, "<",85)
	MisBeginAction(AddMission, 1264)
	MisBeginAction(AddTrigger, 12641, TE_GETITEM, 4495, 1)          

	MisCancelAction(ClearMission,1264)                         ---------����ȡ��������

	MisNeed(MIS_NEED_DESP, "<t>�Ͷ�����,�����������Ӣ��,���������ݺὭ���ĺ���!С����ٵ�����´�����֮��,������նɱɽ�����졤���߲���ȡ�����ϵ�ɽ������!�Դ�Ϊƾ�������ٵ�����������ĸ߼�������,��ʿ��!���������е�����,�ж�������!")
	MisNeed(MIS_NEED_ITEM, 4495, 1, 10, 1)               ---------ɽ������


	MisHelpTalk("<t>��˵ɽ�����졤����ͨ����(����1038,3039)������û,�Ͻ�������,�ҵ���ʿ!")
	MisResultTalk("<t>��!����,û�뵽��ô�̵�ʱ��������������.����߼���������ٵ������Ľ���,�����������벻���ľ�ϲ�!")

	MisResultCondition(HasMission, 1264)
	MisResultCondition(NoRecord, 1264)
	MisResultCondition(NoRecord, 1263)
	MisResultCondition(NoRecord, 1265)
	MisResultCondition(NoRecord, 1257)
	MisResultCondition(NoRecord, 1258)
	MisResultCondition(NoRecord, 1259)
	MisResultCondition(NoRecord, 1260)
	MisResultCondition(NoRecord, 1261)
	MisResultCondition(NoRecord, 1262)


	MisResultCondition(HasItem, 4495, 1)

	MisResultAction(TakeItem, 4495, 1)

	MisResultAction(GiveItem, 5649, 1, 4)                          ---------�߼�������
	MisResultAction(ClearMission, 1264)                        
	MisResultAction(SetRecord, 1264)
	MisResultBagNeed(1)


	InitTrigger()
	TriggerCondition(1, IsItem, 4495)
	TriggerAction(1, AddNextFlag, 1264, 10, 1)
	RegCurTrigger(12641)

	------------------------------------------�����ִ���ʢ��(��)---------ɳᰳ�����ָ��

	DefineMission(6213,"�����ִ���ʢ��",1265)

	MisBeginTalk("<t> ��Ƿ�ë������ ,������ʴ����.<n><t>�װ�������,���������������꼪�Ǹ���,ǰ���ƽ�!ǰ���տɰ���С����ٵ�������ڳ���Ϊ85����100����������ͺ��,һ�˽���һ�λ���,���˲��ɴ���!�Ͻ������������а�!���������뵽ɳᰳ�����ָ������˿��(876,3572)����ȡ����.")

	MisBeginCondition(NoMission, 1257)
	MisBeginCondition(NoMission, 1258)
	MisBeginCondition(NoMission, 1259)
	MisBeginCondition(NoMission, 1260)
	MisBeginCondition(NoMission, 1261)
	MisBeginCondition(NoMission, 1262)
	MisBeginCondition(NoMission, 1263)
	MisBeginCondition(NoMission, 1264)
	MisBeginCondition(NoMission, 1265)
	--MisBeginCondition(NoMission, 1265)
	MisBeginCondition(NoRecord, 1265)
	MisBeginCondition(NoRecord, 1263)
	MisBeginCondition(NoRecord, 1264)
	MisBeginCondition(NoRecord, 1257)
	MisBeginCondition(NoRecord, 1258)
	MisBeginCondition(NoRecord, 1259)
	MisBeginCondition(NoRecord, 1260)
	MisBeginCondition(NoRecord, 1261)
	MisBeginCondition(NoRecord, 1262)
	MisBeginCondition(LvCheck, ">",84)
	MisBeginCondition(LvCheck, "<",101)
	MisBeginAction(AddMission, 1265)
	MisBeginAction(AddTrigger, 12651, TE_GETITEM, 0179, 10)          

	MisCancelAction(ClearMission,1265)                         ---------����ȡ��������

	MisNeed(MIS_NEED_DESP, "<t>���С����ٵ����ħ��ʦ������ѧ����һ�������ħ��,Ϊ������������ħ��������,�赲а�����Ϯ.Ŀǰ��ȱ��10��������е,��Ҫ��ó�����������������һ������ܾ����СС�������?")
	MisNeed(MIS_NEED_ITEM, 0179, 10, 10, 10)               ---------������е


	MisHelpTalk("<t>а��Ļ�е�ޱ�����,����ǿ������麽��ʿ����,����˫��ʿ����,������ð���߻���,����ҩʦ����,���׷�ӡ�������Ͼ����д���,Ϊ���������ǵİ������ƽ,���10��������е����ٵ��.")
	MisResultTalk("<t>��Ϊ�������ƽ������,С����ٵ��������һ��Ҫ���������������������,���ڿɿ���Ư��˧�����´���װ�!����ʲô?����,�Ͻ��򿪿���!")

	MisResultCondition(HasMission, 1265)
	MisResultCondition(NoRecord, 1265)
	MisResultCondition(NoRecord, 1263)
	MisResultCondition(NoRecord, 1264)
	MisResultCondition(NoRecord, 1257)
	MisResultCondition(NoRecord, 1258)
	MisResultCondition(NoRecord, 1259)
	MisResultCondition(NoRecord, 1260)
	MisResultCondition(NoRecord, 1261)
	MisResultCondition(NoRecord, 1262)

	MisResultCondition(HasItem, 0179, 10)

	MisResultAction(TakeItem, 0179, 10)

	MisResultAction(GiveItem, 5650, 1, 4)                          ---------����������
	MisResultAction(ClearMission, 1265)                        
	MisResultAction(SetRecord, 1265)
	MisResultBagNeed(1)


	InitTrigger()
	TriggerCondition(1, IsItem, 0179)
	TriggerAction(1, AddNextFlag, 1265, 10, 10)
	RegCurTrigger(12651)

	--------------------------------------------------------------kokora(end)------------------------------------------------------------------

--------------------------------------------------------------dina����ת������(begin)------------------------------------------------------------------
	-------------------------------------------------------ԡ������֮һ--------�̻�ʷ��
	DefineMission( 6214, "ԡ������֮һ", 1266 )
	MisBeginTalk("<t>Ŷ�������¸������Ҿ���͸ж������������ܽ�ȳ��ҵ�ʥ��ʿ�ǣ���Ը��ѽ̻ʵ�λ���ø��㣬��������ʥ��֮������<rԡ������>ʯ�͸��㣬��˵�ǿ�ʯͷ�������������һ��ĳ���������һ�����Ӧ�����ڵ���������ػ��߾�����ʿ-���������ϣ����ǰ�����������(59,51)�Ļ�����ȥ�ɣ���ʿ���Һ��ŵ��Ȼ�һֱΪ��������")
	MisBeginCondition(NoMission, 1266)
	MisBeginCondition(NoRecord,1266)
	MisBeginCondition( Checksailexpmore, 9880)
	MisBeginAction(AddMission,1266)
	MisBeginAction(AddTrigger, 12661, TE_GETITEM, 5753, 1)
	MisBeginAction(AddTrigger, 12662, TE_GETITEM, 5754, 1)
	MisBeginAction(AddTrigger, 12663, TE_GETITEM, 5755, 1)
	MisBeginAction(AddTrigger, 12664, TE_GETITEM, 5756, 1)
	MisBeginAction(AddTrigger, 12665, TE_GETITEM, 5757, 1)
	MisBeginAction(AddTrigger, 12666, TE_GETITEM, 5758, 1)
	
	--MisCancelAction(ClearMission, 1266)

	MisNeed(MIS_NEED_DESP, "���������6������11��ȥ��ȳ�ʥ��ʿ,���õ�6��ʥ��ʿ����.")
	MisNeed(MIS_NEED_ITEM, 5753, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 5754, 1, 15, 1)
	MisNeed(MIS_NEED_ITEM, 5755, 1, 20, 1)
	MisNeed(MIS_NEED_ITEM, 5756, 1, 25, 1)
	MisNeed(MIS_NEED_ITEM, 5757, 1, 30, 1)
	MisNeed(MIS_NEED_ITEM, 5758, 1, 35, 1)
	
	MisHelpTalk("<t>��һ�����Ӧ�����ڵ���������ػ��߾�����ʿ-���������ϣ����ǰ�����������(59,51)�Ļ�����ȥ�ɣ���ʿ���Һ��ŵ��Ȼ�һֱΪ�������ġ�")
	MisResultTalk("<t>�����Ǻ����������ߣ��������ǰ������ȥ�������6��ʥ��ʿ�ǣ�������һ�����Եģ�")

	MisResultCondition(HasMission, 1266)
	MisResultCondition(NoRecord,1266)
	MisResultCondition(HasItem, 5753, 1)
	MisResultCondition(HasItem, 5754, 1)
	MisResultCondition(HasItem, 5755, 1)
	MisResultCondition(HasItem, 5756, 1)
	MisResultCondition(HasItem, 5757, 1)
	MisResultCondition(HasItem, 5758, 1)
		
	MisResultAction(TakeItem, 5753, 1 )
	MisResultAction(TakeItem, 5754, 1 )
	MisResultAction(TakeItem, 5755, 1 )
	MisResultAction(TakeItem, 5756, 1 )
	MisResultAction(TakeItem, 5757, 1 )
	MisResultAction(TakeItem, 5758, 1 )
	
	
	MisResultAction(ClearMission, 1266)
	MisResultAction(SetRecord, 1266)
	

	InitTrigger()
	TriggerCondition( 1, IsItem, 5753)	
	TriggerAction( 1, AddNextFlag, 1266, 10, 1 )
	RegCurTrigger( 12661 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 5754)	
	TriggerAction( 1, AddNextFlag, 1266, 15, 1 )
	RegCurTrigger( 12662 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 5755)	
	TriggerAction( 1, AddNextFlag, 1266, 20, 1 )
	RegCurTrigger( 12663 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 5756)	
	TriggerAction( 1, AddNextFlag, 1266, 25, 1 )
	RegCurTrigger( 12664 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 5757)	
	TriggerAction( 1, AddNextFlag, 1266, 30, 1 )
	RegCurTrigger( 12665 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 5758)	
	TriggerAction( 1, AddNextFlag, 1266, 35, 1 )
	RegCurTrigger( 12666 )
		
	-------------------------------------------------------�µķ���--------��
	DefineMission( 6215, "�µķ���",1267 )
	MisBeginTalk( "<t>Ҫ��ܾ�����ʿ-�������ҵ������ܵõ����ѣ������ط�ʥ���Ҿ�����һ������˳�����������")
	MisBeginCondition( NoMission, 1267)
	MisBeginCondition( NoRecord, 1267)
	MisBeginCondition( HasMission, 1266)
	MisBeginAction(	AddMission, 1267)
	MisBeginAction( AddTrigger, 12671, TE_KILL, 974, 1)
	-- MisCancelAction( ClearMission, 1266)

	MisNeed( MIS_NEED_KILL, 974, 1, 10, 1)

	MisResultTalk( "<t>������λֵ���𾴵���ʿ����Ϊ����������������ȥ�ɡ���һ������ڵ����������ػ���ڤ���-���ն����ϣ����ǽ�ţ��������³�Ұ�(178,77)�Ļ�����ȥ�ɣ���ʿ���һ�һֱΪ�������ġ�")
	MisHelpTalk( "<t>��ܾ�����ʿ-����,�����µ���ꡣ")
	MisResultCondition( HasFlag, 1267, 10)
	MisResultAction(GiveItem, 5753,1,4)------------��MU����
	MisResultCondition( HasMission, 1267)
	MisResultAction( ClearMission, 1267)
	MisResultAction(SetRecord, 1267)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 974 )
	TriggerAction( 1, AddNextFlag, 1267, 10, 1 )
	RegCurTrigger( 12671 )

	
	-------------------------------------------------------��³�Ұͷ���--------��³�Ұ�
	DefineMission( 6216, "��³�Ұͷ���",1268 )
	MisBeginTalk( "<t>Ҫ���ڤ���-���ն٣��ҵ������ܵõ����ѣ������ط�ʥ���Ҿ�����һ������˳�����������")
	MisBeginCondition( NoMission, 1268)
	MisBeginCondition( NoRecord, 1268)
	MisBeginCondition( HasMission, 1266)
	MisBeginCondition( HasRecord, 1267)
	MisBeginAction(	AddMission, 1268)
	MisBeginAction( AddTrigger, 12681, TE_KILL, 975, 1)
	-- MisCancelAction( ClearMission, 1266)

	MisNeed( MIS_NEED_KILL, 975, 1, 10, 1)

	MisResultTalk( "<t>������λֵ���𾴵���ʿ����Ϊ����������������ȥ�ɡ���һ������ڵ������߲��ػ���ڤ��-������˹���ϣ�����˫������������(205,170)�Ļ�����ȥ�ɣ���ʿ���һ�һֱΪ�������ġ�")
	MisHelpTalk( "<t>���ڤ���-���ն�,���Ѱ�³�Ұ͵���ꡣ")
	MisResultCondition( HasFlag, 1268, 10)
	MisResultAction(GiveItem, 5754,1,4)------------��ALDEBA����  
	MisResultCondition( HasMission, 1268)
	MisResultAction( ClearMission, 1268)
	MisResultAction(SetRecord, 1268)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 975 )
	TriggerAction( 1, AddNextFlag, 1268, 10, 1 )
	RegCurTrigger( 12681 )
	
	-------------------------------------------------------���ӷ���--------����
	DefineMission( 6217, "���ӷ���",1269 )
	MisBeginTalk( "<t>Ҫ���ڤ��-������˹���ҵ������ܵõ����ѣ������ط�ʥ���Ҿ�����һ������˳�����������")
	MisBeginCondition( NoMission, 1269)
	MisBeginCondition( NoRecord, 1269)
	MisBeginCondition( HasMission, 1266)
	MisBeginCondition( HasRecord, 1268)
	MisBeginAction(	AddMission, 1269)
	MisBeginAction( AddTrigger, 12691, TE_KILL, 976, 1)
	-- MisCancelAction( ClearMission, 1266)

	MisNeed( MIS_NEED_KILL, 976, 1, 10, 1)

	MisResultTalk( "<t>������λֵ���𾴵���ʿ����Ϊ����������������ȥ�ɡ���һ������ڵ����ڰ˲��ػ���ڤ��-������˹���ϣ����Ǿ�з����������˹(85,198)�Ļ�����ȥ�ɣ���ʿ���һ�һֱΪ�������ġ�")
	MisHelpTalk( "<t>���ڤ��-������˹,�������ӵ���ꡣ")
	MisResultCondition( HasFlag, 1269, 10)
	MisResultAction(GiveItem, 5755,1,4)------------�����ӷ���  
	MisResultCondition( HasMission, 1269)
	MisResultAction( ClearMission, 1269)
	MisResultAction(SetRecord, 1269)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 976 )
	TriggerAction( 1, AddNextFlag, 1269, 10, 1 )
	RegCurTrigger( 12691 )
	
	-------------------------------------------------------����˹����--------����˹
	DefineMission( 6218, "����˹����",1270 )
	MisBeginTalk( "<t>Ҫ���ڤ��-������˹���ҵ������ܵõ����ѣ������ط�ʥ�����Ҿ�����һ������˳�����������")
	MisBeginCondition( NoMission, 1270)
	MisBeginCondition( NoRecord, 1270)
	MisBeginCondition( HasMission, 1266)
	MisBeginCondition( HasRecord, 1269)
	MisBeginAction(	AddMission, 1270)
	MisBeginAction( AddTrigger, 12701, TE_KILL, 977, 1)
	-- MisCancelAction( ClearMission, 1266)

	MisNeed( MIS_NEED_KILL, 977, 1, 10, 1)

	MisResultTalk( "<t>������λֵ���𾴵���ʿ����Ϊ����������������ȥ�ɡ���һ������ڵ�����ʮ���ػ���ڤ��-�û����ϣ�����ʨ����������������(80,190)�Ļ�����ȥ�ɣ���ʿ���һ�һֱΪ�������ġ�")
	MisHelpTalk( "<t>���ڤ��-������˹,���ѵ���˹����ꡣ")
	MisResultCondition( HasFlag, 1270, 10)
	MisResultAction(GiveItem, 5756,1,4)------------������˹����  
	MisResultCondition( HasMission, 1270)
	MisResultAction( ClearMission, 1270)
	MisResultAction(SetRecord, 1270)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 977 )
	TriggerAction( 1, AddNextFlag, 1270, 10, 1 )
	RegCurTrigger( 12701 )
	
	-------------------------------------------------------�������Ƿ���--------��������
	DefineMission( 6219, "�������Ƿ���",1271 )
	MisBeginTalk( "<t>Ҫ���ڤ��-�ûʣ��ҵ������ܵõ����ѣ������ط�ʥ���Ҿ�����һ������˳�����������")
	MisBeginCondition( NoMission, 1271)
	MisBeginCondition( NoRecord, 1271)
	MisBeginCondition( HasMission, 1266)
	MisBeginCondition( HasRecord, 1270)
	MisBeginAction(	AddMission, 1271)
	MisBeginAction( AddTrigger, 12711, TE_KILL, 979, 1)
	-- MisCancelAction( ClearMission, 1266)

	MisNeed( MIS_NEED_KILL, 979, 1, 10, 1)

	MisResultTalk( "<t>������λֵ���𾴵���ʿ����Ϊ����������������ȥ�ɡ���һ������ڵ�����ʮһ���ػ���ڤ��-�������ϣ����Ǵ�Ů������ɳ��(79,78)�Ļ�����ȥ�ɣ���ʿ���һ�һֱΪ�������ġ�")
	MisHelpTalk( "<t>���ڤ��-�û�,���Ѱ������ǵ���ꡣ")
	MisResultCondition( HasFlag, 1271, 10)
	MisResultAction(GiveItem, 5757,1,4)------------���������Ƿ���  
	MisResultCondition( HasMission, 1271)
	MisResultAction( ClearMission, 1271)
	MisResultAction(SetRecord, 1271)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 979 )
	TriggerAction( 1, AddNextFlag, 1271, 10, 1 )
	RegCurTrigger( 12711 )
	
	-------------------------------------------------------ɳ�ӷ���--------ɳ������
	DefineMission( 6220, "ɳ�ӷ���",1272 )
	MisBeginTalk( "<t>Ҫ���ڤ��-�����ҵ������ܵõ����ѣ������ط�ʥ���Ҿ�����һ������˳�����������")
	MisBeginCondition( NoMission, 1272)
	MisBeginCondition( NoRecord, 1272)
	MisBeginCondition( HasMission, 1266)
	MisBeginCondition( HasRecord, 1271)
	MisBeginAction(	AddMission, 1272)
	MisBeginAction( AddTrigger, 12721, TE_KILL, 980, 1)
	-- MisCancelAction( ClearMission, 1266)

	MisNeed( MIS_NEED_KILL, 980, 1, 10, 1)

	MisResultTalk( "<t>������λֵ���𾴵���ʿ����Ϊ����������������ȥ�ɡ���������ǵķ���ȥ�ҽ̻�ʷ��(1749,902)�ɣ�")
	MisHelpTalk( "<t>���ڤ��-����,����ɳ�ӵ���ꡣ")
	MisResultCondition( HasFlag, 1272, 10)
	MisResultAction(GiveItem, 5758,1,4)------------��ɳ�ӷ���  
	MisResultCondition( HasMission, 1272)
	MisResultAction( ClearMission, 1272)
	MisResultAction(SetRecord, 1272)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 980 )
	TriggerAction( 1, AddNextFlag, 1272, 10, 1 )
	RegCurTrigger( 12721 )
	
	-------------------------------------------------------ͯ������--------ͯ��
	DefineMission( 6221, "ͯ������",1273 )
	MisBeginTalk( "<t>Ҫ���ڤ��-а�ޣ��ҵ������ܵõ����ѣ������ط�ʥ���Ҿ�����һ������˳�����������")
	MisBeginCondition( NoMission, 1273)
	MisBeginCondition( NoRecord, 1273)
	MisBeginCondition( HasMission, 1279)
	MisBeginCondition( HasRecord, 1272)
	MisBeginAction(	AddMission, 1273)
	MisBeginAction( AddTrigger, 12731, TE_KILL, 981, 1)
	-- MisCancelAction( ClearMission, 1266)

	MisNeed( MIS_NEED_KILL, 981, 1, 10, 1)

	MisResultTalk( "<t>������λֵ���𾴵���ʿ����Ϊ����������������ȥ�ɡ���һ������ڵ�����ʮ�����ػ���ڤ��-�Կ����ϣ�������Ы����������(326,76)�Ļ�����ȥ�ɣ���ʿ���һ�һֱΪ�������ġ�")
	MisHelpTalk( "<t>���ڤ��-а��,����ͯ������ꡣ")
	MisResultCondition( HasFlag, 1273, 10)
	MisResultAction(GiveItem, 5759,1,4)------------��ͯ������  
	MisResultCondition( HasMission, 1273)
	MisResultAction( ClearMission, 1273)
	MisResultAction(SetRecord, 1273)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 981 )
	TriggerAction( 1, AddNextFlag, 1273, 10, 1 )
	RegCurTrigger( 12731 )
	
	-------------------------------------------------------���޷���--------����
	DefineMission( 6222, "���޷���",1274 )
	MisBeginTalk( "<t>Ҫ���ڤ��-�Կ��ҵ������ܵõ����ѣ������ط�ʥ���Ҿ�����һ������˳�����������")
	MisBeginCondition( NoMission, 1274)
	MisBeginCondition( NoRecord, 1274)
	MisBeginCondition( HasMission, 1279)
	MisBeginCondition( HasRecord, 1273)
	MisBeginAction(	AddMission, 1274)
	MisBeginAction( AddTrigger, 12741, TE_KILL, 982, 1)
	-- MisCancelAction( ClearMission, 1266)

	MisNeed( MIS_NEED_KILL, 982, 1, 10, 1)

	MisResultTalk( "<t>������λֵ���𾴵���ʿ����Ϊ����������������ȥ�ɡ���һ������ڵ�����ʮ�Ĳ��ػ���ڤ��-������ϣ���������������������˹(320,195)�Ļ�����ȥ�ɣ���ʿ���һ�һֱΪ�������ġ�")
	MisHelpTalk( "<t>���ڤ��-�Կ�,�������޵���ꡣ")
	MisResultCondition( HasFlag, 1274, 10)
	MisResultAction(GiveItem, 5760,1,4)------------�����޷���  
	MisResultCondition( HasMission, 1274)
	MisResultAction( ClearMission, 1274)
	MisResultAction(SetRecord, 1274)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 982 )
	TriggerAction( 1, AddNextFlag, 1274, 10, 1 )
	RegCurTrigger( 12741 )
	
	-------------------------------------------------------������˹����-------������˹
	DefineMission( 6223, "������˹����",1275 )
	MisBeginTalk( "<t>Ҫ���ڤ��-��ˣ��ҵ������ܵõ����ѣ������ط�ʥ���Ҿ�����һ������˳�����������")
	MisBeginCondition( NoMission, 1275)
	MisBeginCondition( NoRecord, 1275)
	MisBeginCondition( HasMission, 1279)
	MisBeginCondition( HasRecord, 1274)
	MisBeginAction(	AddMission, 1275)
	MisBeginAction( AddTrigger, 12751, TE_KILL, 983, 1)
	-- MisCancelAction( ClearMission, 1266)

	MisNeed( MIS_NEED_KILL, 983, 1, 10, 1)

	MisResultTalk( "<t>������λֵ���𾴵���ʿ����Ϊ����������������ȥ�ɡ���һ������ڵ�����ʮ����ػ���ڤ��-�������ϣ�����Ħ������������(318,317)�Ļ�����ȥ�ɣ���ʿ���һ�һֱΪ�������ġ�")
	MisHelpTalk( "<t>���ڤ��-���,���Ѱ�����˹����ꡣ")
	MisResultCondition( HasFlag, 1275, 10)
	MisResultAction(GiveItem, 5761,1,4)------------��������˹����  
	MisResultCondition( HasMission, 1275)
	MisResultAction( ClearMission, 1275)
	MisResultAction(SetRecord, 1275)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 983 )
	TriggerAction( 1, AddNextFlag, 1275, 10, 1 )
	RegCurTrigger( 12751 )
	
	-------------------------------------------------------���޷���-------����
	DefineMission( 6224, "���޷���",1276 )
	MisBeginTalk( "<t>Ҫ���ڤ��-�������ҵ������ܵõ����ѣ������ط�ʥ���Ҿ�����һ������˳�����������")
	MisBeginCondition( NoMission, 1276)
	MisBeginCondition( NoRecord, 1276)
	MisBeginCondition( HasMission, 1279)
	MisBeginCondition( HasRecord, 1275)
	MisBeginAction(	AddMission, 1276)
	MisBeginAction( AddTrigger, 12761, TE_KILL, 984, 1)
	-- MisCancelAction( ClearMission, 1266)

	MisNeed( MIS_NEED_KILL, 984, 1, 10, 1)

	MisResultTalk( "<t>������λֵ���𾴵���ʿ����Ϊ����������������ȥ�ɡ���һ������ڵ�����ʮ�����ػ���ڤ��-�������ϣ����Ǳ�ƿ����������(198,310)�Ļ�����ȥ�ɣ���ʿ���һ�һֱΪ�������ġ�")
	MisHelpTalk( "<t>���ڤ��-����,�������޵���ꡣ")
	MisResultCondition( HasFlag, 1276, 10)
	MisResultAction(GiveItem, 5762,1,4)------------�����޷���  
	MisResultCondition( HasMission, 1276)
	MisResultAction( ClearMission, 1276)
	MisResultAction(SetRecord, 1276)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 984 )
	TriggerAction( 1, AddNextFlag, 1276, 10, 1 )
	RegCurTrigger( 12761 )
	
	-------------------------------------------------------�������-------����
	DefineMission( 6225, "�������",1277 )
	MisBeginTalk( "<t>Ҫ���ڤ��-���꣬�ҵ������ܵõ����ѣ������ط�ʥ���Ҿ�����һ������˳�����������")
	MisBeginCondition( NoMission, 1277)
	MisBeginCondition( NoRecord, 1277)
	MisBeginCondition( HasMission, 1279)
	MisBeginCondition( HasRecord, 1276)
	MisBeginAction(	AddMission, 1277)
	MisBeginAction( AddTrigger, 12771, TE_KILL, 985, 1)
	-- MisCancelAction( ClearMission, 1266)

	MisNeed( MIS_NEED_KILL, 985, 1, 10, 1)

	MisResultTalk( "<t>������λֵ���𾴵���ʿ����Ϊ����������������ȥ�ɡ���һ������ڵ�����ʮ�߲��ػ���ڤ��-��ɲ���ϣ�����˫�������������޵�(80,315)�Ļ�����ȥ�ɣ���ʿ���һ�һֱΪ�������ġ�")
	MisHelpTalk( "<t>���ڤ��-����,���Ѽ������ꡣ")
	MisResultCondition( HasFlag, 1277, 10)
	MisResultAction(GiveItem, 5763,1,4)------------���������  
	MisResultCondition( HasMission, 1277)
	MisResultAction( ClearMission, 1277)
	MisResultAction(SetRecord, 1277)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 985 )
	TriggerAction( 1, AddNextFlag, 1277, 10, 1 )
	RegCurTrigger( 12771 )
	
	-------------------------------------------------------�����޵ҷ���-------�����޵�
	DefineMission( 6226, "�������",1278 )
	MisBeginTalk( "<t>Ҫ���ڤ��-��ɲ���ҵ������ܵõ����ѣ������ط�ʥ���Ҿ�����һ������˳�����������")
	MisBeginCondition( NoMission, 1278)
	MisBeginCondition( NoRecord, 1278)
	MisBeginCondition( HasMission, 1279)
	MisBeginCondition( HasRecord, 1277)
	MisBeginAction(	AddMission, 1278)
	MisBeginAction( AddTrigger, 12781, TE_KILL, 986, 1)
	-- MisCancelAction( ClearMission, 1266)

	MisNeed( MIS_NEED_KILL, 986, 1, 10, 1)

	MisResultTalk( "<t>�������ʮ�����ֵܶ��ȳ��ˣ��治�����š����Ҵ����������лƽ�ʥ��ʿ��л�����𾴵ĺ�������������ķ�������ȥ�ɡ�")
	MisHelpTalk( "<t>���ڤ��-��ɲ,���Ѱ����޵ҵ���ꡣ")
	MisResultCondition( HasFlag, 1278, 10)
	MisResultAction(GiveItem, 5764,1,4)------------�������޵ҷ���  
	MisResultCondition( HasMission, 1278)
	MisResultAction( ClearMission, 1278)
	MisResultAction(SetRecord, 1278)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 986 )
	TriggerAction( 1, AddNextFlag, 1278, 10, 1 )
	RegCurTrigger( 12781 )
	
		
	-------------------------------------------------------ԡ������֮��--------�̻�ʷ��
	DefineMission( 6227, "ԡ������֮��", 1279 )
	MisBeginTalk("<t>Ŷ�������¸������Ҿ���͸ж������������ܽ�ȳ��ҵ�ʥ��ʿ�ǣ���Ը��ѽ̻ʵ�λ���ø��㣬��������ʥ��֮������<rԡ������ʯ>�͸��㣬��˵�ǿ�ʯͷ�������������һ��ĳ����������ˣ����߿����Ӧ�����ڵ�����ʮ�����ػ���ڤ��-а�����ϣ�������ƽ������ͯ��(210,80)�Ļ�����ȥ�ɣ���ʿ���Һ��ŵ��Ȼ�һֱΪ��������")
	MisBeginCondition(NoMission, 1279)
	MisBeginCondition(NoRecord,1279)
	MisBeginCondition(HasRecord,1266)
	MisBeginAction(AddMission,1279)
	MisBeginAction(AddTrigger, 12791, TE_GETITEM, 5759, 1)
	MisBeginAction(AddTrigger, 12792, TE_GETITEM, 5760, 1)
	MisBeginAction(AddTrigger, 12793, TE_GETITEM, 5761, 1)
	MisBeginAction(AddTrigger, 12794, TE_GETITEM, 5762, 1)
	MisBeginAction(AddTrigger, 12795, TE_GETITEM, 5763, 1)
	MisBeginAction(AddTrigger, 12796, TE_GETITEM, 5764, 1)

	--MisCancelAction(ClearMission, 1279)

	MisNeed(MIS_NEED_DESP, "���������12������17��ȥ��ȳ�ʥ��ʿ,���õ����6��ʥ��ʿ���ġ�")
	MisNeed(MIS_NEED_ITEM, 5759, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 5760, 1, 15, 1)
	MisNeed(MIS_NEED_ITEM, 5761, 1, 20, 1)
	MisNeed(MIS_NEED_ITEM, 5762, 1, 25, 1)
	MisNeed(MIS_NEED_ITEM, 5763, 1, 30, 1)
	MisNeed(MIS_NEED_ITEM, 5764, 1, 35, 1)
	
	MisHelpTalk("<t>���߿����Ӧ�����ڵ�����ʮ�����ػ���ڤ��-а�����ϣ�������ƽ������ͯ��(210,80)�Ļ�����ȥ�ɣ���ʿ���Һ��ŵ��Ȼ�һֱΪ�������ġ�")
	MisResultTalk("<t>��ô�����ˡ����������ҵ��������ĺ�������֮�����������ʸ��Ϊ�����̻ʵ��㡭����Ҳ������λ�ˡ����ʥ��֮������ԡ������ʯ�͸��㡣ǰ��С��ʹ�����ɻ���ŵ��ȵ�ף���������������õ��������޶ȵ�������")

	MisResultCondition(HasMission, 1279)
	MisResultCondition(NoRecord,1279)
	MisResultCondition(HasItem, 5759, 1)
	MisResultCondition(HasItem, 5760, 1)
	MisResultCondition(HasItem, 5761, 1)
	MisResultCondition(HasItem, 5762, 1)
	MisResultCondition(HasItem, 5763, 1)
	MisResultCondition(HasItem, 5764, 1)
		
	MisResultAction(TakeItem, 5759, 1 )
	MisResultAction(TakeItem, 5760, 1 )
	MisResultAction(TakeItem, 5761, 1 )
	MisResultAction(TakeItem, 5762, 1 )
	MisResultAction(TakeItem, 5763, 1 )
	MisResultAction(TakeItem, 5764, 1 )
	
	
	MisResultAction(GiveItem, 5765,1,4)------------��ԡ������ʯ
	MisResultAction(ClearMission, 1279)
	MisResultAction(SetRecord, 1279)
	

	InitTrigger()
	TriggerCondition( 1, IsItem, 5759)	
	TriggerAction( 1, AddNextFlag, 1279, 10, 1 )
	RegCurTrigger( 12791 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 5760)	
	TriggerAction( 1, AddNextFlag, 1279, 15, 1 )
	RegCurTrigger( 12792 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 5761)	
	TriggerAction( 1, AddNextFlag, 1279, 20, 1 )
	RegCurTrigger( 12793 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 5762)	
	TriggerAction( 1, AddNextFlag, 1279, 25, 1 )
	RegCurTrigger( 12794 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 5763)	
	TriggerAction( 1, AddNextFlag, 1279, 30, 1 )
	RegCurTrigger( 12795 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 5764)	
	TriggerAction( 1, AddNextFlag, 1279, 35, 1 )
	RegCurTrigger( 12796 )
		

	------------------------------------------------------dina(end)
	

------------------����ָ��---------������
	DefineMission ( 6230, "����֮·", 1280 )
	
	MisBeginTalk ( "<t>������������Ӧ�û��Ǳ����ݺ�,��Ȼ�������������Ҫ����Ĺ��,��֪������뿪������?�����ȥ������(281,218)����!")
	MisBeginCondition( NoMission, 1280)
	MisBeginCondition( NoRecord, 1280)
	MisBeginAction( AddMission, 1280)
	MisCancelAction( ClearMission, 1280)

	MisNeed( MIS_NEED_DESP, "������(316,208)�˽�����ķ���.")

	MisHelpTalk( "��ȥ��")
	MisResultCondition ( AlwaysFailure )

------------------����ָ��----------����
	DefineMission ( 6231, "����֮·", 1280, COMPLETE_SHOW )

	MisBeginCondition ( AlwaysFailure )

	MisResultTalk ( "<t>��ô���ų�ȥ����,��ʵ��������������Ҳ������.�����������ȥ�Ļ�,�ǿ��Ե����ѡ��'�˽�����ķ���'.")
	MisResultCondition( HasMission, 1280)
	MisResultCondition( NoRecord, 1280)
	MisResultAction( ClearMission, 1280)
	MisResultAction( SetRecord, 1280)

	
------------------1��ʥ������--------��ս�����Թ�
	DefineMission( 6232, "��ս�����Թ�", 1281 )
	
	MisBeginTalk("<t>����Ҫ�ӷ����Թ��д�������Ҫ�Ķ������������ҲŻ���������ô��.")
	MisBeginCondition(NoMission, 1281)
	MisBeginCondition(NoRecord, 1281)
	MisBeginCondition(NoRecord, 1282)
	MisBeginCondition(NoRecord, 1283)
	MisBeginCondition(NoRecord, 1284)
	MisBeginCondition(NoRecord, 1285)
	MisBeginCondition(NoRecord, 1286)
	MisBeginCondition(NoRecord, 1287)
	MisBeginCondition(HasItem, 5776, 1)
	MisBeginCondition(NoItem, 5786, 1)
	MisBeginCondition(NoItem, 5787, 1)
	MisBeginCondition(NoItem, 5788, 1)
	MisBeginCondition(NoItem, 5789, 1)
	MisBeginCondition(NoItem, 5790, 1)
	MisBeginAction(TakeItem, 5776, 1 )
	MisBeginAction(AddMission, 1281)
	
	MisBeginAction(AddTrigger, 12811, TE_GETITEM, 3434, 15 )
	MisBeginAction(AddTrigger, 12812, TE_GETITEM, 3435, 10 )
	MisBeginAction(AddTrigger, 12813, TE_GETITEM, 3436, 15 )
	MisCancelAction(ClearMission, 1281)
	MisNeed(MIS_NEED_ITEM, 3434, 15, 10, 15)
	MisNeed(MIS_NEED_ITEM, 3435, 10, 20, 10)
	MisNeed(MIS_NEED_ITEM, 3436, 15, 30, 15)
	
	MisResultTalk("<t>�ܺã�������ʥ���ı���������һ�󲽣�������Ҫ���ľ��ǰ����<r�Ͼɵ��¹ⱦ��>�е������������ٻ������ң�")
	MisHelpTalk("<t>��ô�ˣ���û�ռ��룿����ЩС�¶��첻���㻹��ʲôʥ���ı��ء���")
	MisResultCondition(HasMission, 1281)	
	MisResultCondition(HasItem, 3434, 15 )
	MisResultCondition(HasItem, 3435, 10 )
	MisResultCondition(HasItem, 3436, 15 )
	MisResultAction(SetRecord, 1281)   --����record1281
	MisResultAction(TakeItem, 3434, 15 )
	MisResultAction(TakeItem, 3435, 10 )
	MisResultAction(TakeItem, 3436, 15 )	
	MisResultAction(ClearMission, 1281)	      
	
	MisResultAction(GiveItem, 5786, 1, 4)    ----------������ҷϾɵ��¹ⱦ��
	MisResultBagNeed(1)                     ---------��Ϊ�������Ҫ�����߸���ң�����ע�����±����ո�

	InitTrigger()
	TriggerCondition( 1, IsItem, 3434)	
	TriggerAction( 1, AddNextFlag, 1281, 10, 15)
	RegCurTrigger( 12811 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3435)	
	TriggerAction( 1, AddNextFlag, 1281, 20, 10 )
	RegCurTrigger( 12812 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3436)	
	TriggerAction( 1, AddNextFlag, 1281, 30, 15 )
	RegCurTrigger( 12813 )

	





	------------------1��ʥ������--------��ս�����Թ�
	DefineMission( 6233, "��ս�����Թ�", 1282 )
	
	MisBeginTalk("<t>����Ҫ�������Թ��д�������Ҫ�Ķ������������ҲŻ���������ô��.")
	MisBeginCondition(NoMission, 1282)
	MisBeginCondition(NoRecord, 1281)
	MisBeginCondition(NoRecord, 1282)
	MisBeginCondition(NoRecord, 1283)
	MisBeginCondition(NoRecord, 1284)
	MisBeginCondition(NoRecord, 1285)
	MisBeginCondition(NoRecord, 1286)
	MisBeginCondition(NoRecord, 1287)
	MisBeginCondition(HasItem, 5791, 1)   --�����������ܺ�B
	MisBeginCondition(NoItem, 5786, 1)    --�Ͼɵ��¹ⱦ��
	MisBeginCondition(NoItem, 5787, 1)    --�¾ɵ��¹ⱦ��
	MisBeginCondition(NoItem, 5788, 1)    --ո�µ��¹ⱦ��
	MisBeginCondition(NoItem, 5789, 1)    --���µ��¹ⱦ��
	MisBeginCondition(NoItem, 5790, 1)    --׿Խ���¹ⱦ��
	MisBeginAction(TakeItem, 5791, 1 )
	MisBeginAction(AddMission, 1282)
	
	MisBeginAction(AddTrigger, 12821, TE_GETITEM, 3445, 15 )
	MisBeginAction(AddTrigger, 12822, TE_GETITEM, 3443, 10 )
	MisBeginAction(AddTrigger, 12823, TE_GETITEM, 3444, 15 )
	MisCancelAction(ClearMission, 1282)
	MisNeed(MIS_NEED_ITEM, 3445, 15, 10, 15)
	MisNeed(MIS_NEED_ITEM, 3443, 10, 20, 10)
	MisNeed(MIS_NEED_ITEM, 3444, 15, 30, 15)
	
	MisResultTalk("<t>�ܺã�������ʥ���ı���������һ�󲽣�������Ҫ���ľ��ǰ����<r�Ͼɵ��¹ⱦ��>�е������������ٻ������ң�")
	MisHelpTalk("<t>��ô�ˣ���û�ռ��룿����ЩС�¶��첻���㻹��ʲôʥ���ı��ء���")
	MisResultCondition(HasMission, 1282)
	MisResultCondition(HasItem, 3445, 15 )
	MisResultCondition(HasItem, 3443, 10 )
	MisResultCondition(HasItem, 3444, 15 )
	MisResultAction(SetRecord, 1282)   --����record1282
	MisResultAction(TakeItem, 3445, 15 )
	MisResultAction(TakeItem, 3443, 10 )
	MisResultAction(TakeItem, 3444, 15 )	
	MisResultAction(ClearMission, 1282)
	      
	
	MisResultAction(GiveItem, 5786, 1, 4)    ----------�Ͼɵ��¹ⱦ��
	MisResultBagNeed(1)                     ---------��Ϊ�������Ҫ�����߸���ң�����ע�����±����ո�

	InitTrigger()
	TriggerCondition( 1, IsItem, 3445)	
	TriggerAction( 1, AddNextFlag, 1282, 10, 15)
	RegCurTrigger( 12821 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3443)	
	TriggerAction( 1, AddNextFlag, 1282, 20, 10 )
	RegCurTrigger( 12822 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3444)	
	TriggerAction( 1, AddNextFlag, 1282, 30, 15 )
	RegCurTrigger( 12823 )
	
	
	------------------1��ʥ������--------��սħ���Թ�
	DefineMission( 6234, "��սħ���Թ�", 1283 )
	
	MisBeginTalk("<t>����Ҫ��ħ���Թ��д�������Ҫ�Ķ������������ҲŻ���������ô��.")
	MisBeginCondition(NoMission, 1283)
	MisBeginCondition(NoRecord, 1281)
	MisBeginCondition(NoRecord, 1282)
	MisBeginCondition(NoRecord, 1283)
	MisBeginCondition(NoRecord, 1284)
	MisBeginCondition(NoRecord, 1285)
	MisBeginCondition(NoRecord, 1286)
	MisBeginCondition(NoRecord, 1287)
	MisBeginCondition(HasItem, 5792, 1)   --�����������ܺ�C
	MisBeginCondition(NoItem, 5786, 1)    --�Ͼɵ��¹ⱦ��
	MisBeginCondition(NoItem, 5787, 1)    --�¾ɵ��¹ⱦ��
	MisBeginCondition(NoItem, 5788, 1)    --ո�µ��¹ⱦ��
	MisBeginCondition(NoItem, 5789, 1)    --���µ��¹ⱦ��
	MisBeginCondition(NoItem, 5790, 1)    --׿Խ���¹ⱦ��
	MisBeginAction(TakeItem, 5792, 1 )
	MisBeginAction(AddMission, 1283)
	MisBeginAction(AddTrigger, 12831, TE_GETITEM, 3820, 30 )
	MisBeginAction(AddTrigger, 12832, TE_GETITEM, 3821, 30 )
	MisBeginAction(AddTrigger, 12833, TE_GETITEM, 3822, 30 )
	MisCancelAction(ClearMission, 1283)
	MisNeed(MIS_NEED_ITEM, 3820, 30, 50, 30)
	MisNeed(MIS_NEED_ITEM, 3821, 30, 60, 30)
	MisNeed(MIS_NEED_ITEM, 3822, 30, 70, 30)
	
	MisResultTalk("<t>�ܺã�������ʥ���ı���������һ�󲽣�������Ҫ���ľ��ǰ����<r�Ͼɵ��¹ⱦ��>�е������������ٻ������ң�")
	MisHelpTalk("<t>��ô�ˣ���û�ռ��룿����ЩС�¶��첻���㻹��ʲôʥ���ı��ء���")
	MisResultCondition(HasMission, 1283)
	MisResultCondition(HasItem, 3820, 30 )
	MisResultCondition(HasItem, 3821, 30 )
	MisResultCondition(HasItem, 3822, 30 )
	MisResultAction(TakeItem, 3820, 30 )
	MisResultAction(TakeItem, 3821, 30 )
	MisResultAction(TakeItem, 3822, 30 )	
	MisResultAction(ClearMission, 1283)
	MisResultAction(SetRecord, 1283)   --����record1283   
	
	MisResultAction(GiveItem, 5786, 1, 4)    ----------�Ͼɵ��¹ⱦ��
	MisResultBagNeed(1)                     ---------��Ϊ�������Ҫ�����߸���ң�����ע�����±����ո�

	InitTrigger()
	TriggerCondition( 1, IsItem, 3820)	
	TriggerAction( 1, AddNextFlag, 1283, 50, 30 )
	RegCurTrigger( 12831 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3821)	
	TriggerAction( 1, AddNextFlag, 1283, 60, 30 )
	RegCurTrigger( 12832 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3822)	
	TriggerAction( 1, AddNextFlag, 1283, 70, 30 )
	RegCurTrigger( 12833 )

------------------2��ʥ������Կ��--------
	DefineMission( 6235, "2��ʥ������Կ��", 1284 )
	
	MisBeginTalk("<t>�װ������ѣ���ӭ��������������غ�Σ�յ����硣��������д��ڵ����ܵ���ȥ���֡�ֻҪ������ռ�����Ҫ����Ʒ���ҽ����������ʥ�����ص�����")
	MisBeginCondition(NoMission, 1284)
	MisBeginCondition(NoRecord, 1281)
	MisBeginCondition(NoRecord, 1282)
	MisBeginCondition(NoRecord, 1283)
	MisBeginCondition(NoRecord, 1284)
	MisBeginCondition(NoRecord, 1285)
	MisBeginCondition(NoRecord, 1286)
	MisBeginCondition(NoRecord, 1287)
	MisBeginCondition(HasItem, 5793, 1)   --2������Կ���ܺ�
	MisBeginCondition(NoItem, 5786, 1)    --�Ͼɵ��¹ⱦ��
	MisBeginCondition(NoItem, 5787, 1)    --�¾ɵ��¹ⱦ��
	MisBeginCondition(NoItem, 5788, 1)    --ո�µ��¹ⱦ��
	MisBeginCondition(NoItem, 5789, 1)    --���µ��¹ⱦ��
	MisBeginCondition(NoItem, 5790, 1)    --׿Խ���¹ⱦ��
	MisBeginAction(TakeItem, 5793, 1 )    --ȡ�ߵ���2������Կ���ܺ�
	MisBeginAction(AddMission, 1284)
	MisBeginAction(AddTrigger, 12841, TE_GETITEM, 2588, 10 )
	MisBeginAction(AddTrigger, 12842, TE_GETITEM, 0855, 99 )
	MisCancelAction(ClearMission, 1284)
	MisNeed(MIS_NEED_ITEM, 2588, 10, 10, 10)
	MisNeed(MIS_NEED_ITEM, 0855, 99, 20, 99)

	MisResultTalk("<t>�ܺã�������ʥ���ı���������һ�󲽣�������Ҫ���ľ��ǰ����<r�¾ɵ��¹ⱦ��>�е������������ٻ������ң�")
	MisHelpTalk("<t>��ô�ˣ���û�ռ��룿����ЩС�¶��첻���㻹��ʲôʥ���ı��ء���")
	MisResultCondition(HasMission, 1284)
	MisResultCondition(HasItem, 2588, 10 )
	MisResultCondition(HasItem, 0855, 99 )
	MisResultAction(TakeItem, 2588, 10 )
	MisResultAction(TakeItem, 0855, 99 )
	MisResultAction(ClearMission, 1284)
	MisResultAction(SetRecord, 1284)      --����record1283   
	
	MisResultAction(GiveItem, 5787, 1, 4)    ----------�¾ɵ��¹ⱦ��
	MisResultBagNeed(1)                     ---------��Ϊ�������Ҫ�����߸���ң�����ע�����±����ո�

	InitTrigger()
	TriggerCondition( 1, IsItem, 2588)	
	TriggerAction( 1, AddNextFlag, 1284, 10, 10)
	RegCurTrigger( 12841 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 0855)	
	TriggerAction( 1, AddNextFlag, 1284, 20, 99 )
	RegCurTrigger( 12842 )
	



------------------3��ʥ������Կ��--------
	DefineMission( 6236, "3��ʥ������Կ��", 1285 )
	
	MisBeginTalk("<t>�װ������ѣ���ӭ��������������غ�Σ�յ����硣��������д��ڵ����ܵ���ȥ���֡���γ���Ҫ�����ռ�����Ҫ����Ʒ����Ҫ����ӵ��1000���<r����ֵ>��50��<r����ֵ>,ֻҪ������Щ�����Ҿ͸��������ʥ�����ص�����")
	MisBeginCondition(NoMission, 1285)
	MisBeginCondition(NoRecord, 1281)
	MisBeginCondition(NoRecord, 1282)
	MisBeginCondition(NoRecord, 1283)
	MisBeginCondition(NoRecord, 1284)
	MisBeginCondition(NoRecord, 1285)
	MisBeginCondition(NoRecord, 1286)
	MisBeginCondition(NoRecord, 1287)
	MisBeginCondition(HasItem, 5794, 1)   --3������Կ���ܺ�
	MisBeginCondition(NoItem, 5786, 1)    --�Ͼɵ��¹ⱦ��
	MisBeginCondition(NoItem, 5787, 1)    --�¾ɵ��¹ⱦ��
	MisBeginCondition(NoItem, 5788, 1)    --ո�µ��¹ⱦ��
	MisBeginCondition(NoItem, 5789, 1)    --���µ��¹ⱦ��
	MisBeginCondition(NoItem, 5790, 1)    --׿Խ���¹ⱦ��
	MisBeginAction(TakeItem, 5794, 1 )    --ȡ�ߵ���3������Կ���ܺ�
	MisBeginAction(AddMission, 1285)
	MisBeginAction(AddTrigger, 12851, TE_GETITEM, 4511, 30 )
	MisBeginAction(AddTrigger, 12852, TE_GETITEM, 0855, 99 )
	MisCancelAction(ClearMission, 1285)
	MisNeed(MIS_NEED_ITEM, 4511, 30, 10, 30)
	MisNeed(MIS_NEED_ITEM, 0855, 99, 20, 99)

	MisResultTalk("<t>�ܺã�������ʥ���ı���������һ�󲽣�������Ҫ���ľ��ǰ����<rո�µ��¹ⱦ��>�е������������ٻ������ң�")
	MisHelpTalk("<t>��ô�ˣ���û�ռ��룿�����˻���Ҫ1000��<r����ֵ>��50��<r����ֵ>,����ЩС�¶��첻���㻹��ʲôʥ���ı��ء���")
	MisResultCondition(HasMission, 1285)
	MisResultCondition(HasItem, 4511, 30 )
	MisResultCondition(HasItem, 0855, 99 )
	MisResultCondition(HasCredit, 1000 )       --��Ҫ����1000
	MisResultCondition(HasHonorPoint, 50 )     --��Ҫ����50
	MisResultAction(TakeItem, 4511, 30 )
	MisResultAction(TakeItem, 0855, 99 )
	MisResultAction(ClearMission, 1285)
	MisResultAction(SetRecord, 1285)   --����record1283      
	
	MisResultAction(GiveItem, 5788, 1, 4)    ----------ո�µ��¹ⱦ��
	MisResultBagNeed(1)                     ---------��Ϊ�������Ҫ�����߸���ң�����ע�����±����ո�

	InitTrigger()
	TriggerCondition( 1, IsItem, 4511)	
	TriggerAction( 1, AddNextFlag, 1285, 10, 30)
	RegCurTrigger( 12851 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 0855)	
	TriggerAction( 1, AddNextFlag, 1285, 20, 99 )
	RegCurTrigger( 12852 )


------------------4��ʥ������Կ��--------
	DefineMission( 6237, "4��ʥ������Կ��", 1286 )
	
	MisBeginTalk("<t>�װ������ѣ���ӭ��������������غ�Σ�յ����硣��������д��ڵ����ܵ���ȥ���֡�ֻҪ������ռ�����Ҫ����Ʒ���ҽ����������ʥ�����ص�����")
	MisBeginCondition(NoMission, 1286)
	MisBeginCondition(NoRecord, 1281)
	MisBeginCondition(NoRecord, 1282)
	MisBeginCondition(NoRecord, 1283)
	MisBeginCondition(NoRecord, 1284)
	MisBeginCondition(NoRecord, 1285)
	MisBeginCondition(NoRecord, 1286)
	MisBeginCondition(NoRecord, 1287)
	MisBeginCondition(HasItem, 5795, 1)   --4������Կ���ܺ�
	MisBeginCondition(NoItem, 5786, 1)    --�Ͼɵ��¹ⱦ��
	MisBeginCondition(NoItem, 5787, 1)    --�¾ɵ��¹ⱦ��
	MisBeginCondition(NoItem, 5788, 1)    --ո�µ��¹ⱦ��
	MisBeginCondition(NoItem, 5789, 1)    --���µ��¹ⱦ��
	MisBeginCondition(NoItem, 5790, 1)    --׿Խ���¹ⱦ��
	MisBeginAction(TakeItem, 5795, 1 )    --ȡ�ߵ���4������Կ���ܺ�
	MisBeginAction(AddMission, 1286)
	MisBeginAction(AddTrigger, 12861, TE_GETITEM, 0266, 1 )
	MisBeginAction(AddTrigger, 12862, TE_GETITEM, 2589, 1 )
	MisBeginAction(AddTrigger, 12863, TE_GETITEM, 3000, 1 )
	MisCancelAction(ClearMission, 1286)
	MisNeed(MIS_NEED_ITEM, 0266, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 2589, 1, 20, 1)
	MisNeed(MIS_NEED_ITEM, 3000, 1, 30, 1)
	
	MisResultTalk("<t>�ܺã�������ʥ���ı���������һ�󲽣�������Ҫ���ľ��ǰ����<r���µ��¹ⱦ��>�е������������ٻ������ң�")
	MisHelpTalk("<t>��ô�ˣ���û�ռ��룿����ЩС�¶��첻���㻹��ʲôʥ���ı��ء���")
	MisResultCondition(HasMission, 1286)
	MisResultCondition(HasItem, 0266, 1 )
	MisResultCondition(HasItem, 2589, 1 )
	MisResultCondition(HasItem, 3000, 1 )
	MisResultAction(TakeItem, 0266, 1 )
	MisResultAction(TakeItem, 2589, 1 )
	MisResultAction(TakeItem, 3000, 1 )
	MisResultAction(ClearMission, 1286)
	MisResultAction(SetRecord, 1286)      --����record1286 
	
	MisResultAction(GiveItem, 5789, 1, 4)    ---------���µ��¹ⱦ��
	MisResultBagNeed(1)                     ---------��Ϊ�������Ҫ�����߸���ң�����ע�����±����ո�

	InitTrigger()
	TriggerCondition( 1, IsItem, 0266)	
	TriggerAction( 1, AddNextFlag, 1286, 10, 1)
	RegCurTrigger( 12861 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2589)	
	TriggerAction( 1, AddNextFlag, 1286, 20, 1 )
	RegCurTrigger( 12862 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3000)	
	TriggerAction( 1, AddNextFlag, 1286, 40, 1 )
	RegCurTrigger( 12863 )

------------------5��ʥ������Կ��--------
	DefineMission( 6238, "5��ʥ������Կ��", 1287 )
	
	MisBeginTalk("<t>�װ������ѣ���ӭ��������������غ�Σ�յ����硣��������д��ڵ����ܵ���ȥ���֡�ֻҪ������ռ�����Ҫ����Ʒ���ҽ����������ʥ�����ص�����")
	MisBeginCondition(NoMission, 1287)
	MisBeginCondition(NoRecord, 1281)
	MisBeginCondition(NoRecord, 1282)
	MisBeginCondition(NoRecord, 1283)
	MisBeginCondition(NoRecord, 1284)
	MisBeginCondition(NoRecord, 1285)
	MisBeginCondition(NoRecord, 1286)
	MisBeginCondition(NoRecord, 1287)
	MisBeginCondition(HasItem, 5796, 1)   --5������Կ���ܺ�
	MisBeginCondition(NoItem, 5786, 1)    --�Ͼɵ��¹ⱦ��
	MisBeginCondition(NoItem, 5787, 1)    --�¾ɵ��¹ⱦ��
	MisBeginCondition(NoItem, 5788, 1)    --ո�µ��¹ⱦ��
	MisBeginCondition(NoItem, 5789, 1)    --���µ��¹ⱦ��
	MisBeginCondition(NoItem, 5790, 1)    --׿Խ���¹ⱦ��
	MisBeginAction(TakeItem, 5796, 1 )    --ȡ�ߵ���4������Կ���ܺ�
	MisBeginAction(AddMission, 1287)
	MisBeginAction(AddTrigger, 12871, TE_GETITEM, 2589, 5 )
	MisBeginAction(AddTrigger, 12872, TE_GETITEM, 5703, 2 )
	MisBeginAction(AddTrigger, 12873, TE_GETITEM, 3000, 1 )
	MisBeginAction(AddTrigger, 12874, TE_GETITEM, 3122, 5 )
	MisCancelAction(ClearMission, 1287)
	MisNeed(MIS_NEED_ITEM, 2589, 5, 10, 5)
	MisNeed(MIS_NEED_ITEM, 5703, 2, 20, 2)
	MisNeed(MIS_NEED_ITEM, 3000, 1, 30, 1)
	MisNeed(MIS_NEED_ITEM, 3122, 5, 40, 5)
	
	MisResultTalk("<t>�ܺã�������ʥ���ı���������һ�󲽣�������Ҫ���ľ��ǰ����<r׿Խ���¹ⱦ��>�е������������ٻ������ң�")
	MisHelpTalk("<t>��ô�ˣ���û�ռ��룿����ЩС�¶��첻���㻹��ʲôʥ���ı��ء���")
	MisResultCondition(HasMission, 1287)
	MisResultCondition(HasItem, 2589, 5 )
	MisResultCondition(HasItem, 5703, 2 )
	MisResultCondition(HasItem, 3000, 1 )
	MisResultCondition(HasItem, 3122, 5 )
	MisResultAction(TakeItem, 2589, 5 )
	MisResultAction(TakeItem, 5703, 2 )
	MisResultAction(TakeItem, 3000, 1 )
	MisResultAction(TakeItem, 3122, 5 )
	MisResultAction(ClearMission, 1287)
	MisResultAction(SetRecord, 1287)      --����record1287 
	
	MisResultAction(GiveItem, 5790, 1, 4)    ---------׿Խ���¹ⱦ��
	MisResultBagNeed(1)                     ---------��Ϊ�������Ҫ�����߸���ң�����ע�����±����ո�

	InitTrigger()
	TriggerCondition( 1, IsItem, 2589)	
	TriggerAction( 1, AddNextFlag, 1287, 10, 5)
	RegCurTrigger( 12871 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 5703)	
	TriggerAction( 1, AddNextFlag, 1287, 20, 2 )
	RegCurTrigger( 12872 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3000)	
	TriggerAction( 1, AddNextFlag, 1287, 30, 1 )
	RegCurTrigger( 12873 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3122)	
	TriggerAction( 1, AddNextFlag, 1287, 40, 5 )
	RegCurTrigger( 12874 )	

--------------------ʥ��ʿ��cosplay----------
	DefineMission( 6239, "ʥ��ʿ��cosplay", 1288 )
	MisBeginTalk("<t>���뿴�ƽ�ʮ����ƪ......������������������˵�Լ�Ҫ���ӣ���³�ϰ��ַ�ɽ�������ˣ����ӷ��ˣ���˹����˹ȥ������������......���ܹ���������һ�£����ҿ���а��̻ʵ���ô��")
	MisBeginCondition(NoMission, 1288)
	MisBeginCondition(NoRecord, 1288)
	MisBeginCondition(NoRecord, 1300)
	MisBeginCondition(NoRecord, 1303)
	MisBeginCondition(NoRecord, 1304)
	MisBeginAction(AddMission, 1288)
	MisBeginAction(SetRecord, 1288)
	MisCancelAction(SystemNotice, "�������޷�ȡ��")

	MisNeed(MIS_NEED_DESP, "��ȥѰ�ҳǻ�ɳ֯���ػ��߰�......��ʸ�ڼ��ɴ�½(2110,2677)��������ħŮ֮����1126, 3416),����������֮��(1533��699)��˲�ڼ��ձ�(619, 965)")
	
	MisHelpTalk("<t>��ʸ�أ������أ������أ���˲�أ�һ���أ�")
	MisResultCondition(AlwaysFailure)	
-------------------ʥ��ʿ��cosplay������ʸ----------
	DefineMission( 6240, "ʥ��ʿ��cosplay", 1288 )
	MisHelpTalk("<t>Ҫ�ռ������е�COSPLAY֤��ȥ��һ��")
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("������������������������Ҫ���æ�ء�")
	MisResultCondition(HasRecord, 1288)
	MisResultCondition(HasMission,1288)
	MisResultCondition(NoRecord,1289)
	MisResultAction(SetRecord,1289)
	
---------------��ʸ�Ŀ���---------
	DefineMission( 6241, "��ʸ�Ŀ���", 1289)
	MisBeginTalk("<t>��³�ϰ����ַ�ɽ����ʱ�����м�ƣ��������ˣ�������ȥ��30���������Ϊ�����ˣ�����ȡɱ���Ǹ�����ɽ��ͷ�ӣ�����������������֤����")
	
	MisBeginCondition(HasMission, 1288)
	MisBeginCondition(HasRecord, 1288)
	MisBeginCondition(HasRecord, 1289)	
	MisBeginCondition(NoRecord, 1291)	
	MisBeginAction(AddMission, 1289)
	MisBeginAction(SetRecord, 1290)
	MisCancelAction(SystemNotice, "�������޷�ȡ��")
	MisNeed(MIS_NEED_DESP, "<t>ȥ�ռ�30���������һ��ɽ��������")
	MisHelpTalk("<t>ʲô�������ȥ���������������Ϊ�Һ��ŵ�����һ�ȡ���......��Ҫ�����ŵ��ȣ�����ô������ȥ��")
	MisResultTalk("<t>������ƾ�����һ�������ð�³�ϰͰ���һֱ������ͷ��ţ��������ţ�����ˣ����Ǹ���ģ����Ͽ�����¸��ˣ�")

	MisResultCondition(HasMission, 1289)
	MisResultCondition(HasRecord, 1288)
	MisResultCondition(HasRecord, 1289)
	MisResultCondition(HasRecord, 1290)

	MisResultCondition(HasItem, 3116, 30)
	MisResultCondition(HasItem, 4495, 1)
	

	MisResultAction(TakeItem, 3116, 30)
	MisResultAction(TakeItem, 4495, 1)
	MisResultAction(ClearRecord, 1290)
	

	MisResultAction(GiveItem, 5813, 1, 4)                          
	MisResultAction(GiveItem, 3094, 1, 4)                          
	MisResultAction(ClearMission, 1289) 
	MisResultAction(SetRecord, 1291) 
	MisResultBagNeed(2)

-------------------ʥ��ʿ��cosplay��������----------
	DefineMission( 6242, "ʥ��ʿ��cosplay", 1288 )
	MisBeginCondition(AlwaysFailure )
	MisHelpTalk("<t>Ҫ�ռ������е�COSPLAY֤��ȥ��һ��")
	MisResultTalk("������������������������Ҫ���æ�ء�")
	MisResultCondition(HasRecord, 1288)
	MisResultCondition(HasMission,1288)
	MisResultCondition(NoRecord,1292)
	MisResultAction(SetRecord,1292)
---------------�����Ŀ���---------
	DefineMission( 6243, "�����Ŀ���", 1290)
	MisBeginTalk("<t>���Ѿ�Ȱ˵���������ˣ���������˵ʲôҹ�����࣬������˽���ʲô�ģ�������������5����Ŀ����ȫ���ش���ȷ�ˣ��͸����ҵ��Ͽɡ�")
	MisBeginCondition(HasMission, 1288)
	MisBeginCondition(HasRecord, 1288)
	MisBeginCondition(HasRecord, 1292)	
	MisBeginCondition(NoRecord, 1294)	
	MisBeginCondition(NoRecord, 1295)		
	MisBeginAction(AddMission, 1290)
	MisBeginAction(SetRecord, 1294)
	MisCancelAction(SystemNotice, "�������޷�ȡ��")

	MisHelpTalk("<t>֪ʶ���������������Դ�����Լ���˫�۱��ɱΡ�")
	MisResultTalk("<t>������Ȼ��������Ǹ����......�����ҵ��Ͽɣ������ˡ�")
	
	
	MisResultCondition(HasMission, 1290)
	MisResultCondition(HasRecord, 1288)
	MisResultCondition(HasRecord, 1292)
	MisResultCondition(HasRecord, 1293)
	MisResultCondition(HasRecord, 1294)
	
	
	MisResultAction(GiveItem, 5814, 1, 4)
	MisResultAction(GiveItem, 3094, 1, 4)	                          
	MisResultAction(ClearMission, 1290) 
	MisResultAction(ClearRecord, 1294) 	
	MisResultAction(ClearRecord, 1293) 	
	MisResultAction(SetRecord, 1295) 
	MisResultBagNeed(2)

-----------ʥ��ʿ��cosplay��������---------
	DefineMission( 6244, "ʥ��ʿ��cosplay", 1288 )
	MisBeginCondition(AlwaysFailure )
	MisHelpTalk("<t>Ҫ�ռ������е�COSPLAY֤��ȥ��һ��")
	MisResultTalk("������������������������Ҫ���æ�ء�")
	MisResultCondition(HasRecord, 1288)
	MisResultCondition(HasMission,1288)
	MisResultCondition(NoRecord,1296)
	MisResultAction(SetRecord,1296)
---------------���ӵĿ���---------
	DefineMission( 6245, "���ӵĿ���", 1291)
	MisBeginTalk("<t>���ȷ��ˣ���������3������û������ھŸУ����������������ӣ��ÿ����ǲ��С����Ǳ����������ﻻһ���ٻ�ȯ�ٳ�����ɱ�����ſ��Ի���ҵ��Ͽɡ��������ٻ�ȯ�������ɲ�����ѵ�Ŷ�����У����������������1���ٻ�ȯ��û�ù�����Ҳû�취����ҵ��Ͽ�Ŷ��")
	MisBeginCondition(HasMission, 1288)
	MisBeginCondition(HasRecord, 1288)
	MisBeginCondition(HasRecord, 1296)	
	MisBeginCondition(NoRecord, 1297)	
	MisBeginCondition(NoRecord, 1298)		
	MisBeginAction(AddMission, 1291)
	MisBeginAction(SetRecord, 1297)
	MisBeginAction(AddTrigger, 12911, TE_KILL, 1070, 1)
	MisCancelAction(SystemNotice, "�������޷�ȡ��")
	
	MisHelpTalk("<t>��������Ʊ�Ļ������û�취�õ�֤��Ŷ��")
	MisResultTalk("<t>��Ȼ......�������˵ھŸУ������ҵ�֤��������ɡ�")
	
	MisResultCondition( HasFlag, 1291, 10)
	MisResultCondition(HasMission, 1291)
	MisResultCondition(HasRecord, 1288)
	MisResultCondition(HasRecord, 1297)
	MisResultCondition(HasRecord, 1296)
	MisResultCondition(HasRecord, 1298)
	

	MisResultAction(GiveItem, 5815, 1, 4)
	MisResultAction(ClearMission, 1291) 
	MisResultAction(ClearRecord, 1297)
	MisResultAction(ClearRecord, 1298)
	MisResultAction(SetRecord, 1299) 
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 1070)	
	TriggerAction( 1, AddNextFlag, 1291, 10, 1 )
	RegCurTrigger( 12911 )
---------------˲�Ŀ���---------
	DefineMission( 6246, "ʥ��ʿ��cosplay", 1288 )
	MisBeginCondition(AlwaysFailure )
    MisHelpTalk("<t>Ҫ�ռ������е�COSPLAY֤��ȥ��һ��")
	MisResultTalk("�����㻹���ռ������������˵��Ͽ����İ���������ֱ�Ӹ���cosplay�Ͽ�֤��ɡ��Ѽ�����򣬽�ţ��˫�ӣ���з����cosplay�Ͽ�֤�飬��ȥ���õ����Ҹ��һ�ԣ��Ϳ��Խ���������ս�ˡ����У��������������3��ȫ�����������·������һ���ٴ������ǻ�ȡ������ʸ�Ŷ��")
	MisResultCondition(HasRecord, 1288)
	MisResultCondition(HasMission,1288)
	MisResultCondition(NoMission,1289)
	MisResultCondition(NoMission,1290)
	MisResultCondition(NoMission,1291)	
	MisResultCondition(HasRecord, 1289)
	MisResultCondition(HasRecord, 1291)
	MisResultCondition(HasRecord, 1292)
	MisResultCondition(HasRecord, 1295)
	MisResultCondition(HasRecord, 1296)
	MisResultCondition(HasRecord, 1299)
	MisResultAction(ClearRecord, 1289)
	MisResultAction(ClearRecord, 1291)
	MisResultAction(ClearRecord, 1292)
	MisResultAction(ClearRecord, 1295)
	MisResultAction(ClearRecord, 1296)
	MisResultAction(ClearRecord, 1299)
	MisResultAction(SetRecord, 1300)
	MisResultAction(SetRecord, 1301)	
	MisResultAction(GiveItem, 5806, 1, 4)
	MisResultAction(TakeItem, 5815, 1, 4)
	MisResultAction(TakeItem, 5814, 1, 4)
	MisResultAction(TakeItem, 5813, 1, 4)
	MisResultBagNeed(1)

------------------------------------------һ�ԵĿ���--------
	DefineMission( 6247, "ʥ��ʿ��cosplay", 1288 )
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("���������ˣ��ݳ���Ҫ��ʼ�ˣ�ȥս���ɣ��ƽ�ʥ��ʿ���Ӵ˿̿�ʼ�㲻����ȥ����ͭʥ��ʿ�ˣ�")
	MisResultCondition(HasRecord, 1288)
	MisResultCondition(HasMission,1288)
	MisResultCondition(HasRecord, 1300)
	MisResultCondition(HasRecord, 1301)
	MisResultAction(ClearRecord, 1288)
	MisResultAction(ClearRecord, 1301)
	MisResultAction(ClearMission, 1288)
	MisResultAction(SetRecord, 1302)
--------------------------------------��ɱа��̻�----------
	DefineMission( 6248, "��ɱа��̻�", 1292 )
	MisBeginTalk("<t>���ˣ��������ڣ������4��cosplay�Ͽ�֤����ң��ҾͿ��Ի�����г�а��̻ʵĶ����ˣ���������û�������ﻻ�������Ļ�������ɱ��а��̻ʣ�ɴ֯Ҳ������ϵģ�")
	MisHelpTalk("<t>ֻҪ�ѽ̻ʻ�ɱ�ˣ��Ϳ�����ɳ֯��ý�Ʒ�ˣ�")
	MisBeginCondition(HasRecord, 1302)
	MisBeginCondition(LvCheck, ">", 54 )
	MisBeginCondition(NoRecord, 1303)
	MisBeginCondition(NoRecord, 1304)	
	MisBeginCondition(NoMission, 1291)		
	MisBeginAction(AddMission, 1292)
	MisBeginAction(SetRecord, 1303)
	MisBeginAction(AddTrigger, 12921, TE_KILL, 1071, 1)
	MisNeed(MIS_NEED_KILL, 1071, 1, 10, 1)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 1071)	
	TriggerAction( 1, AddNextFlag, 1292, 10, 1 )
	RegCurTrigger( 12921 )

	MisResultCondition(AlwaysFailure)	
------------------------------------�һ���.һ����------------
	DefineMission( 6249, "��ɱа��̻�", 1292 )
	MisBeginCondition(AlwaysFailure )
	MisResultTalk("лл�㣬�����ڿ�����һֱ�뿴һĻ�ˡ����Ǹ�������Ҫ��ס���ѻƽ�ʥ�·ű�����������õ��ö���Ŷ������Խ������������õ��Ķ���Խ�á�������ֻ׼��1���ڱ�������Ŷ��")

	MisResultCondition( HasFlag, 1292, 10)
	MisResultCondition(HasMission, 1292)
	MisResultCondition(HasRecord, 1303)
	MisResultCondition(HasRecord, 1305)
	
	

	MisResultAction(GiveItem, 5812, 1, 4)
	MisResultAction(ClearMission, 1292) 
	MisResultAction(ClearRecord, 1303)
	MisResultAction(SetRecord, 1304) 
	MisResultBagNeed(1)
	
	------------------------------------���˻ ֮ ʧ�ٵ�ʥ��------------  ʥ�𴫵ݴ�ʹ
	DefineMission( 6250, "ʧ�ٵ�ʥ��", 1306 )
	MisBeginTalk("<t>�һ���ʥ������Ǳ�ɳᰳ����<rɳ�ˣ�1065��3137��>�������ˣ������˷�ʱ���ˣ��Ͽ�ȥ����һ�°�")
	MisBeginCondition(NoMission, 1306)
	MisBeginCondition(NoRecord, 1306)
	MisBeginCondition(NoRecord, 1307)
	MisBeginCondition(NoRecord, 1308)
	MisBeginCondition(NoRecord, 1309)
	MisBeginCondition(NoRecord, 1314)
	MisBeginCondition(NoRecord, 1315)
	MisBeginCondition(NoRecord, 1316)
	MisBeginCondition(NoRecord, 1317)
	MisBeginCondition(NoRecord, 1318)
	MisBeginCondition(NoRecord, 1319)
	MisBeginCondition(NoRecord, 1321)
	MisBeginCondition(NoRecord, 1322)
	MisBeginCondition(NoRecord, 1323)
	MisBeginAction(AddMission, 1306)
	MisCancelAction(ClearMission, 1306)
	MisBeginAction(AddTrigger, 13061, TE_KILL, 45, 10)

	MisNeed(MIS_NEED_DESP, "ʥ�𴫵ݴ�ʹ��871��3580��Ҫ��ɱ��ɳ��10�� ")
	MisNeed(MIS_NEED_KILL, 45, 10, 10, 10)

	MisHelpTalk("<t>ɳ�˾���ɳᰳ��⣬��ȥ��ȥ")	
	MisResultTalk("<t>��Ȼ�����ҵ����ϣ������ˣ������Ǻ����ģ������ֺ������һ�������������������1344,529����ֻ������������������һ��ʥ��Ļ�棡")
	MisResultCondition(HasMission, 1306)
	MisResultCondition(HasFlag, 1306, 19)	
	
	MisResultAction(ClearMission,1306)
	MisResultAction(SetRecord,1306)
	MisResultBagNeed(2)
	MisResultAction(GiveItem, 5802, 1, 4)
	MisResultAction(GiveItem, 5841, 1, 4)
	MisResultAction( AddMoney , 5000)
	
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 45)	
	TriggerAction( 1, AddNextFlag, 1306, 10, 10 )
	RegCurTrigger( 13061 )
	
	
	----------------------------------���˻ ֮ ����ʥ����------------ ��������
	DefineMission( 6251, "����ʥ����",1307 )
	MisBeginTalk("<t>�ܺã����������ҵ���ʧ�ٶ���Ļ����ˣ�����̫���ˡ����ǹ��л��ֻ�û�취�����µĻ�棬�һ���ҪһЩ������ԭ���ϣ����ܰ���ȥ�ռ�������")
	MisBeginCondition(NoMission, 1307)
	MisBeginCondition(HasRecord, 1306)
	MisBeginCondition(HasItem, 5802, 1)
	MisBeginCondition(HasItem, 5841, 1)
	
	MisBeginAction(AddMission, 1307)
	MisCancelAction(ClearMission, 1307)
	MisBeginAction(TakeItem, 5841, 1, 4)
	
	MisNeed( MIS_NEED_DESP, "�ռ�15����ҶС��ԭľ��10��ˮ����ʯ���ٴ���<r����>ȥ�ұ�����������(1344,529)")
	
	MisBeginAction( AddTrigger, 13071, TE_GETITEM, 3989, 15)
	MisBeginAction( AddTrigger, 13072, TE_GETITEM, 4546, 10)
	
	MisNeed( MIS_NEED_ITEM, 3989, 15, 10, 15)
	MisNeed( MIS_NEED_ITEM, 4546, 10, 20, 10)
	
	MisResultTalk( "<t>�����Ҫ�Ķ������ҿ���")
	MisHelpTalk( "<t>��ֻҪ15����ҶС��ԭľ��10��ˮ����ʯ������ô����")
	MisResultCondition( HasMission, 1307)
	MisResultCondition( HasRecord, 1306)
	MisResultCondition( HasItem, 3989, 15)
	MisResultCondition( HasItem, 4546, 10)
	MisResultCondition( HasItem, 5802, 1)


	MisResultAction( TakeItem, 3989, 15)
	MisResultAction( TakeItem, 4546, 10)
	MisResultAction( TakeItem, 5802, 1)
	MisResultAction( AddMoney , 5000)
	MisResultAction( ClearMission, 1307)
	MisResultAction( ClearRecord, 1306)
	MisResultAction( SetRecord, 1307)
	
	
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 3989)	
	TriggerAction( 1, AddNextFlag, 1307, 10, 15)
	RegCurTrigger( 13071 )
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4546)	
	TriggerAction( 1, AddNextFlag, 1307, 20, 10)
	RegCurTrigger( 13072 )
	
	----------------------------------���˻ ֮ ������Ҫ��------------  ��������
	DefineMission( 6252, "����ʥ����",1308 )
	MisBeginTalk("<t>Ŷ�����ǹ��ˣ���������ʹ��ˣ��ֿ��ֶ����ܰ��Ҹ�10��ɳ���10����ѿ���𣿳Ա��������Ҳ��������ɻ�")
	MisBeginCondition(NoMission, 1308)
	MisBeginCondition(NoRecord, 1308)
	MisBeginCondition(HasRecord, 1307)
	
	MisBeginAction(AddMission, 1308)
	MisCancelAction(ClearMission, 1308)
	
	
	MisNeed( MIS_NEED_DESP, "���Ǳ�������<r����(1344,529)>Ҫ�����ռ�<r10��ɳ��>��<r10����ѿ��>��������������������(1344,529)")
	
	MisBeginAction( AddTrigger, 13081, TE_GETITEM, 3117, 10)
	MisBeginAction( AddTrigger, 13082, TE_GETITEM, 3136, 10)
	
	MisNeed( MIS_NEED_ITEM, 3117, 10, 10, 10)
	MisNeed( MIS_NEED_ITEM, 3136, 10, 20, 10)
	
	MisResultTalk( "<t>����İ�������̫����")
	MisHelpTalk( "<t>��ô��С���㶼�㲻����")
	MisResultCondition( HasMission, 1308)
	MisResultCondition( HasRecord, 1307)
	MisResultCondition( HasItem, 3117, 10)
	MisResultCondition( HasItem, 3136, 10)

	MisResultBagNeed(1)
	MisResultAction( TakeItem, 3117, 10)
	MisResultAction( TakeItem, 3136, 10)
	MisResultAction(GiveItem, 5842, 1, 4)       
	MisResultAction( ClearMission, 1308)
	MisResultAction( ClearRecord, 1307)
	MisResultAction( SetRecord, 1308)
	MisResultAction( AddMoney , 5000)
	
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 3117)	
	TriggerAction( 1, AddNextFlag, 1308, 10, 10)
	RegCurTrigger( 13081 )
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 3136)	
	TriggerAction( 1, AddNextFlag, 1308, 20, 10)
	RegCurTrigger( 13082 )
	
----------------------------------���˻ ֮ ��ȼʥ��------------������������ʼ��
	DefineMission( 6253, "��ȼʥ��",1309 )
	MisBeginTalk( "<t>����Ѿ���������Ͽ���Ż��ȥ��ʥ�𴫵ݴ�ʹ�ɣ�����������Ӧ�û�û�뿪ɳᰳ�(871,3580)���ǵðѻ����ڱ����ڣ�")
	MisBeginCondition(NoRecord, 1309 )
	MisBeginCondition(NoMission, 1309 )
	MisBeginCondition(HasRecord, 1308 )
	MisBeginAction(AddMission, 1309 )
	MisCancelAction(ClearMission, 1309)
		
	MisNeed(MIS_NEED_DESP, "�ѻ�����ɳᰳ�ʥ�𴫵ݴ�ʹ(871,3580)")
	MisHelpTalk("<t>������û�뿪ɳᰳǸϽ��ѻ���������ʥ�𴫵ݴ�ʹ����ɳᰳ�(871,3580)")
	MisResultCondition( AlwaysFailure )
	
----------------------------------���˻ ֮ ��ȼʥ��------------ʥ�𴫵ݴ�ʹ��������
	DefineMission( 6254, "��ȼʥ��",1309, COMPLETE_SHOW )
	MisBeginCondition(AlwaysFailure )
	MisResultTalk( "<t>�����ڻ����ˣ��������˻�棬̫���ˣ�")
	MisResultCondition( HasMission, 1309)
	MisResultCondition( NoRecord, 1309)
	MisResultCondition( HasItem, 5842, 1)
	MisResultAction( ClearMission, 1309)
	MisResultAction( SetRecord, 1309)
	MisResultAction( AddMoney , 5000)

----------------------------------���˻ ֮ �ʰ�֮��------------ʥ�𴫵ݴ�ʹ	����ʼ��
	DefineMission( 6255, "�ʰ�֮��",1310 )
	MisBeginTalk( "<t>��Ҫ��ȼʥ��̨����Ҫ�߱���ߵ�Ʒ�ʣ�����Ҫ�����һϵ�п�����֤�����Լ����������ҿ������Ƿ�߱���һ���ʰ�֮�ģ�ֻ�аѻ����ڱ����ڲſ�����ȡ����ɿ��飡")
	MisBeginCondition(NoRecord, 1310 )
	MisBeginCondition(NoMission, 1310 )
	MisBeginCondition(HasRecord, 1309 )
	MisBeginCondition( HasItem, 5842, 1)
    MisBeginAction(AddMission, 1310)
	MisCancelAction(ClearMission, 1310)
	
	MisNeed(MIS_NEED_DESP, "��ȥ���ɴ�½��·�ˡ��ͱ�(994,1234)��һ�°�")
	MisHelpTalk("<t>�㻹���Ͻ�ȥ��·�ˡ��ͱ�(994,1234)")
	MisResultCondition( AlwaysFailure )
----------------------------------���˻ ֮ �ʰ�֮��------------·�ˡ��ͱ�	��������
	DefineMission( 6256, "�ʰ�֮��",1310, COMPLETE_SHOW )
	MisBeginCondition(AlwaysFailure )
	MisResultTalk( "<t>���������뵽���ˣ���һ��������ܾ�����")
	MisResultCondition( HasMission, 1310)
	MisResultCondition( NoRecord, 1310)
	MisResultCondition( HasItem, 5842, 1)
	MisResultAction( ClearMission, 1310)
	MisResultAction( SetRecord, 1310)
	MisResultAction( AddMoney , 5000)
----------------------------------���˻ ֮ �ʰ�֮��2------------·�ˡ��ͱ�	����ʼ��
	DefineMission( 6257, "�ʰ�֮�Ķ�",1311 )
	MisBeginTalk( "<t>�ں������������л���������Ҫ���ǹ��ĵ��ˣ�ϣ�����ܹ�ȥ̽������һ��")
	MisBeginCondition(NoRecord, 1311 )
	MisBeginCondition(NoMission, 1311 )
	MisBeginCondition(HasRecord, 1310 )
	MisBeginCondition( HasItem, 5842, 1)
    MisBeginAction(AddMission, 1311)
	MisCancelAction(ClearMission, 1311)
	
	MisNeed(MIS_NEED_DESP, "��ȥħŮ֮��ȥ���������ӡ���ɳ��(1254,3491)��һ�°�")
	MisHelpTalk("<t>лл�������ң��Ͽ�ȥħŮ֮�����������ӡ���ɳ��(1254,3491)")
	MisResultCondition( AlwaysFailure )
----------------------------------���˻ ֮ �ʰ�֮��2------------�������ӡ���ɳ��	��������
    DefineMission( 6258, "�ʰ�֮�Ķ�",1311, COMPLETE_SHOW )
	MisBeginCondition(AlwaysFailure )
	MisResultTalk( "<t>��ã�İ���ˣ������Ѿ��ܾ�û���˾����ˣ�")
	MisResultCondition( HasMission, 1311)
	MisResultCondition( NoRecord, 1311)
	MisResultCondition( HasItem, 5842, 1)
	MisResultAction( ClearMission, 1311)
	MisResultAction( SetRecord, 1311)
	MisResultAction( AddMoney , 5000)
----------------------------------���˻ ֮ �ʰ�֮��3------------�������ӡ���ɳ��	����ʼ��
    DefineMission( 6259, "�ʰ�֮����",1312 )
	MisBeginTalk( "<t>�������������ǵ���ǰ�Ҿ�������Ⱥ����ʱ��������һ���¶�����ָ��")
	MisBeginCondition(NoRecord, 1312 )
	MisBeginCondition(NoMission, 1312)
	MisBeginCondition(HasRecord, 1311 )
	MisBeginCondition( HasItem, 5842, 1)
   	MisBeginAction(AddMission, 1312)
	MisCancelAction(ClearMission, 1312)
	
	MisNeed(MIS_NEED_DESP, "ȥ�����ղ���վ���Ƕ�����(194,1715)��һ�°�")
	MisHelpTalk("<t>�Ǻ�İ���ˣ��Ͽ�ȥ������Ⱥ�����Ƕ�����(194,1715)")
	MisResultCondition( AlwaysFailure )
----------------------------------���˻ ֮ �ʰ�֮��3------------����ָ�ӡ��Ƕ�����	��������
	DefineMission( 6260, "�ʰ�֮����",1312, COMPLETE_SHOW )
	MisBeginCondition(AlwaysFailure )
	MisResultTalk( "<t>�ۣ����������������ҵ��")
	MisResultCondition( HasMission, 1312)
	MisResultCondition( NoRecord, 1312)
	MisResultCondition( HasItem, 5842, 1)
	MisResultAction( ClearMission, 1312)
	MisResultAction( SetRecord, 1312)
	MisResultAction( AddMoney , 5000)
----------------------------------���˻ ֮ �ʰ�֮��4------------����ָ�ӡ��Ƕ�����	����ʼ��
	DefineMission( 6261, "�ʰ�֮����",1313 )
	MisBeginTalk( "<t>�ڴ�������һ���бȸǵ��������ˣ������ֹ���ͣ��������Ҫ�˰�æŶ")
	MisBeginCondition(NoRecord, 1313 )
	MisBeginCondition(NoMission, 1313)
	MisBeginCondition(HasRecord, 1312 )
	MisBeginCondition( HasItem, 5842, 1)
    MisBeginAction(AddMission, 1313)
	MisCancelAction(ClearMission, 1313)
	
	MisNeed(MIS_NEED_DESP, "ȥ���������������ӡ��ȸ�(3235,2550)�����°ɣ�")
	MisHelpTalk("<t>����ô�����⣬��ȥȥ���������������ӡ��ȸ�(3235,2550)�ɣ�")
	MisResultCondition( AlwaysFailure )
----------------------------------���˻ ֮ �ʰ�֮��4------------�������ӡ��ȸ�	 ��������
	DefineMission( 6262, "�ʰ�֮����",1313, COMPLETE_SHOW )
	MisBeginCondition(AlwaysFailure )
	MisResultTalk( "<t>���˻��뵽�����̫���ˣ������и���Ŷ")
	MisResultCondition( HasMission, 1313)
	MisResultCondition( NoRecord, 1313)
	MisResultCondition( HasItem, 5842, 1)
	MisResultAction( ClearMission, 1313)
	MisResultAction( SetRecord, 1313)
	MisResultAction( AddMoney , 5000)
----------------------------------���˻ ֮ �ʰ�֮��5------------�������ӡ��ȸ�	 ����ʼ��
	DefineMission( 6263, "�ʰ�֮����",1314 )
	MisBeginTalk( "<t>�Ǻǣ���ʵ���˽��ˣ��������֤���Լ���һ���ʰ�֮�ģ��㻹�ǵ��ҵ���������ʹ")
	MisBeginCondition(NoRecord, 1314 )
	MisBeginCondition(NoMission, 1314)
	MisBeginCondition(HasRecord, 1313 )
	MisBeginCondition( HasItem, 5842, 1)
    MisBeginAction(AddMission, 1314)
	MisCancelAction(ClearMission, 1314)
	
	MisNeed(MIS_NEED_DESP, "��ȥ���ձ��ҵ�������ʹ(690,1043)�ɣ�")
	MisHelpTalk("<t>ץ��ʱ��ɺ��ӣ���ȥ�Ҽ��ձȵĵ�������ʹ(690,1043)��")
	MisResultCondition( AlwaysFailure )
----------------------------------���˻ ֮ �ʰ�֮��5------------��������ʹ	 ��������
	
	DefineMission( 6264, "�ʰ�֮����",1314, COMPLETE_SHOW )
	MisBeginCondition(AlwaysFailure )
	MisResultTalk( "<t>������ÿ�����������������ʿȥð�գ����������������а��ĵ��ˡ�")
	MisResultCondition( HasMission, 1314)
	MisResultCondition( NoRecord, 1314)
	MisResultCondition( HasItem, 5842, 1)
	MisResultAction( ClearMission, 1314)
	MisResultAction( SetRecord, 1314)
	MisResultAction( AddMoney , 5000)
----------------------------------���˻ ֮ �ʰ�֮��6-----------��������ʹ	 ����ʼ��
	DefineMission( 6265, "�ʰ�֮����",1315 )
	MisBeginTalk( "<t>�������Ѿ���ȫ֤������İ��ģ����������ʰ�֮�Ļ��ǲ����ģ���ص�ʥ�𴫵ݴ�ʹ���Ҳ����������һ����������")
	MisBeginCondition(NoRecord, 1315 )
	MisBeginCondition(NoMission, 1315)
	MisBeginCondition(HasRecord, 1314 )
	MisBeginCondition( HasItem, 5842, 1)
    	MisBeginAction(AddMission, 1315)
	MisCancelAction(ClearMission, 1315)
	
	MisNeed(MIS_NEED_DESP, "��ص�ʥ�𴫵ݴ�ʹ(871,3580)����������ܸ���ʲô�����ɣ�")
	MisHelpTalk("<t>ʥ�𴫵ݴ�ʹ����(871,3580)����ӿ���Ĳ������Ͻ������ɣ�")
	MisResultCondition( AlwaysFailure )

----------------------------------���˻ ֮ �ʰ�֮��6------------ʥ�𴫵ݴ�ʹ	 ��������
	
	DefineMission( 6266, "�ʰ�֮����",1315, COMPLETE_SHOW )
	MisBeginCondition(AlwaysFailure )
	MisResultTalk( "<t>������Ϸ�������ϣ�������ƴ��Լ����ذ����ˣ�����ÿһ�죡���и���Ŀ����ڵ����㣬ϣ�����ܼ�ֵ��ף�")
	MisResultCondition( HasMission, 1315)
	MisResultCondition( NoRecord, 1315)
	MisResultCondition( HasItem, 5842, 1)
	--MisResultCondition( ItemAttrNum, 5825, 6, 10000, 0)
	MisResultBagNeed(1)
	MisResultAction( ClearMission, 1315)
	MisResultAction( SetRecord, 1315)

	MisResultAction( GiveItem, 5797 , 1 , 4)
	MisResultAction( AddMoney , 5000)

	
	----------------------------------���˻  ֮ ��ν֮��------------ʥ�𴫵ݴ�ʹ	 ����ʼ��
	DefineMission( 6267, "�µĿ���",1316 )
	MisBeginTalk( "<t>֤�����Լ������ҿ����㵽���ж��¸ң�")
	MisBeginCondition(NoRecord, 1316)
	MisBeginCondition(NoMission, 1316)
	MisBeginCondition(HasRecord, 1315 )
	MisBeginCondition( HasItem, 5842, 1)
    MisBeginAction(AddMission, 1316)
	MisCancelAction(ClearMission, 1316)
	
	MisNeed(MIS_NEED_DESP, "����Ǳ����Ҷ�����Ա(1374,529)̸̸��������������������εĿ��飡")
	MisHelpTalk("<t>�㻹����ȥ�ұ��Ǳ����Ҷ�����Ա(1374,529)�ɣ�����˿����ٻ������ҡ�")
	MisResultCondition( AlwaysFailure )
	
	---------------------------------���˻ ֮ ��ν֮��------------�Ҷ�����Ա	 ��������	
	DefineMission( 6268, "�µĿ���",1316, COMPLETE_SHOW )
	MisBeginCondition(AlwaysFailure )
	MisResultTalk( "<t>����Ҳµ�û���Ļ�����Ҳ��ʥ�𴫵ݴ�ʹ�Ƽ����İɣ������ǾͿ�ʼ��")
	MisResultCondition( HasMission, 1316)
	MisResultCondition( NoRecord, 1316)
	MisResultCondition( HasItem, 5842, 1)	
	MisResultAction( ClearMission, 1316)
	MisResultAction( ClearRecord, 1315)
	MisResultAction( SetRecord, 1316)
	MisResultAction( AddMoney , 5000)
	
	----------------------------------���˻  ֮ ��ν֮��һ------------�Ҷ�����Ա	 ����ʼ��
	DefineMission( 6269, "��η֮��һ",1317 )
	MisBeginTalk( "<t>��ε�Ҫ����ľ��ǿ������Ƿ��㹻�¸ҡ��һ����һ����η֤֮�������¼���ս����Ϣ����Ҫ���ľ��ǳɹ�ɱ��10��,Ȼ�������η֤֮ȥ��ʥ�𴫵ݴ�ʹ��871��3580����׼������ô��")
	MisResultBagNeed(1)
	MisBeginCondition(NoRecord, 1317)
	MisBeginCondition(NoMission, 1317)
	MisBeginCondition(HasRecord, 1316 )
	MisBeginCondition( HasItem, 5842, 1)
    MisBeginAction(AddMission, 1317)
	
	MisBeginAction(GiveItem, 5803, 1 ,41)
	MisCancelAction(SysteamNotice, "�������޷��ж�")
	MisResultCondition( AlwaysFailure )
	MisNeed(MIS_NEED_DESP, "����η֤֮�ϵ�ɱ�����ۼƵ�10��ȥɳᰳ���ʥ�𴫵ݴ�ʹ��871��3580���������")
	MisHelpTalk("<t>ֻ�е���η֤֮�ϵ�ɱ������10ʱ�����������Ŷ�������㻹������Ż��")
	MisBeginBagNeed(1)
	
	---------------------------------���˻ ֮ ��ν֮��һ------------ʥ�𴫵ݴ�ʹ	 ��������
	DefineMission( 6270, "��η֮��һ",1317)
	MisBeginCondition(AlwaysFailure )
	MisResultTalk("<t>����������û�뵽����ô�������ɿ��飬����̫���ˣ������¸������")	
	
	MisResultCondition(HasMission, 1317)
	MisResultCondition(HasRecord, 1316)	
	MisResultCondition(HasItem, 5842, 1)
	MisResultCondition(CheckPoint, 5803)

	MisResultBagNeed(2)
	MisResultAction(TakeItem, 5803, 1)
	MisResultAction(ClearMission, 1317) 
	MisResultAction(ClearRecord, 1316)
	MisResultAction(GiveItem, 5798, 1, 4)
	MisResultAction(GiveItem, 3096, 2, 4)
	MisResultAction(ClearRecord, 1316)
	MisResultAction(SetRecord, 1317) 
	MisResultAction( AddMoney , 5000)
	MisResultBagNeed(1)
	
	---------------------------------���˻ ֮ ����֮��------------ʥ�𴫵ݴ�ʹ	 ����ʼ��
	DefineMission( 6271, "����֮��",1318 )
	MisBeginTalk( "<t>��������ΰ��ľ�����˽�ķ���....")
	MisBeginCondition(NoRecord, 1318)
	MisBeginCondition(NoMission, 1318)
	MisBeginCondition(HasRecord, 1317 )
	MisBeginCondition( HasItem, 5842, 1)
    MisBeginAction(AddMission, 1318)
	MisCancelAction(ClearMission, 1318)
	MisNeed(MIS_NEED_DESP, "���������Ŀ󹤴���296,57��̸̸��������������������εĿ��飡")
	MisHelpTalk("<t>�㻹����ȥ���������Ŀ󹤴���296,57���ɣ�����˿����ٻ������ҡ�")
	MisResultCondition( AlwaysFailure )
	
	---------------------------------���˻ ֮ ����֮��------------�󹤴����	 ��������
	DefineMission( 6272, "����֮��",1318, COMPLETE_SHOW )
	MisBeginCondition(AlwaysFailure )
	MisResultTalk("<t>����ô��ô������������������ɽ��...")	
	MisResultCondition(HasMission, 1318)
	MisResultCondition(HasRecord, 1317)	
	MisResultCondition(HasItem, 5842, 1)
	MisResultAction(ClearMission, 1318)
	MisResultAction(ClearRecord, 1317)
	MisResultAction(SetRecord, 1318) 
	MisResultAction( AddMoney , 5000)
	
	---------------------------------���˻ ֮ ����֮��һ------------�󹤴����	
	DefineMission( 6273, "����֮��һ",1319 )
	MisBeginTalk( "<t>��εĿ�����Ҫ��Ϊʥ�𴫵ݻ���׵����ʣ���ɱ����ò�ֵǮ�Ķ������ɻ���أ�����Ҫ5����ʥ�ľ����ӡ��")
	MisBeginCondition(NoRecord, 1319)
	MisBeginCondition(NoMission, 1319)
	MisBeginCondition(HasRecord, 1318 )	
	MisBeginAction(AddMission, 1319)
	MisCancelAction(ClearMission, 1319)

	MisNeed(MIS_NEED_DESP, "�󹤴���296,57��Ҫ�������5�������ӡ����")	
	MisHelpTalk("<t>�㿴����ÿ����ô����Ĺ�������Ϊ��ӭ��ʥ�𴫵ݻ����ҲӦ����������һЩ�����ɣ�����ֻ����Ҫ5�������ӡ���ѣ�")
	
	MisResultTalk("<t>̫���ˣ�������ϲ�������ӡ�ˣ�̫лл���ˣ��һ����ı��ָ���ʥ�𴫵ݴ�ʹ�ģ�")	
	
	MisResultCondition(HasMission, 1319)
	MisResultCondition(HasRecord, 1318)
	MisResultCondition(HasItem, 2588, 5)
	
	MisResultAction(ClearMission, 1319)	
	MisResultAction(TakeItem, 2588,5)
	MisResultAction(ClearRecord, 1318)
	MisResultAction(SetRecord, 1319) 
	MisResultAction( AddMoney , 5000)


	---------------------------------���˻ ֮ ����֮�Ķ�------------�󹤴����	 ����ʼ��
	DefineMission( 6274, "����֮�Ķ�",1320 )
	MisBeginTalk( "<t>�Ͻ���ȥ��ʥ�𴫵ݴ�ʹ�ɣ���ı������Ѿ�֪���ˣ������ڴ������ٴμ��棡")
	MisBeginCondition(NoRecord, 1320)
	MisBeginCondition(NoMission, 1320)
	MisBeginCondition(HasRecord, 1319 )
	MisBeginCondition( HasItem, 5842, 1)
    MisBeginAction(AddMission, 1320)
	MisCancelAction(ClearMission, 1320)
	MisNeed(MIS_NEED_DESP, "ȥ��ɳᰳǵ�ʥ�𴫵ݴ�ʹ(871,3580)���İɣ�������ı��ַǳ�����")
	MisHelpTalk("<t>ʥ�𴫵ݴ�ʹ����ɳᰳǵ�(871,3580)")
	MisResultCondition( AlwaysFailure )
	
	---------------------------------���˻ ֮ ����֮�Ķ�------------ʥ�𴫵ݴ�ʹ	 ��������
	DefineMission( 6275, "����֮�Ķ�",1320, COMPLETE_SHOW )
	MisBeginCondition(AlwaysFailure )
	MisResultTalk("<t>�����ּ����ˣ���ı������Ѿ���˵�ˣ��Һܸ���������������ķ��׾���ϣ�������ٽ������úñ��֣�")	
	MisResultCondition(HasMission, 1320)
	MisResultCondition(HasRecord, 1319)	
	MisResultCondition(HasItem, 5842, 1)

	MisResultBagNeed(1)
	MisResultAction(ClearMission, 1320)
	MisResultAction(ClearRecord, 1319)
	MisResultAction(SetRecord, 1320) 
	MisResultAction(GiveItem, 5800,1,4)
	MisResultAction( AddMoney , 5000)

	
	---------------------------------���˻ ֮ �ǻ�֮��-----------ʥ�𴫵ݴ�ʹ ����ʼ��
	DefineMission( 6276, "�ǻ�֮��",1321 )
	MisBeginTalk( "<t>�ں���������������һλ���зǷ��ǻ۵����ߣ�����������������(1755,908)��Ů�������������ᵽ���㣬��Ҳ���������档��ȥ�ɣ�����ÿ���˶��л����Ů������")
	MisBeginCondition(NoRecord, 1321)
	MisBeginCondition(NoMission, 1321)
	MisBeginCondition(HasRecord, 1320)
	MisBeginCondition( HasItem, 5842, 1)
    MisBeginAction(AddMission, 1321)
	MisCancelAction(ClearMission, 1321)
	MisNeed(MIS_NEED_DESP, "ȥ����(1755,908)��Ů�����İɣ����ǳ������")
	MisHelpTalk("<t>Ů���������(1755,908)�����Ͽ������")
	MisResultCondition( AlwaysFailure )
	
	---------------------------------���˻ ֮ �ǻ�֮��------------Ů��	 ��������
	DefineMission( 6277, "�ǻ�֮��",1321, COMPLETE_SHOW )
	MisBeginCondition(AlwaysFailure )
	MisResultTalk("<t>����Ǵ�ʹ�ᵽ���Ǹ������ˣ��ܸ��˺������...")	
	MisResultCondition(HasMission, 1321)
	MisResultCondition(HasRecord, 1320)	
	MisResultCondition(HasItem, 5842, 1)
	MisResultAction(ClearMission, 1321)
	MisResultAction(ClearRecord, 1320)
	MisResultAction(SetRecord, 1321) 
	MisResultAction( AddMoney , 5000)
	
	---------------------------------���˻ ֮ �ǻ�֮��һ------------Ů��	 ����ʼ��
	DefineMission( 6278, "�ǻ�֮��һ",1322 )
	MisBeginTalk( "<t>ʥ�𴫵ݴ�ʹ����������������εĿ��飬���Ҫ����׼��Ŷ������Ҫ����Ҵ�Щ��������...һ��<��˵�������������������ϵ��˿��кܺõ�Ч��>����Ʒ��һ��<ȭ�����ǵıر�Ʒ>����Ʒ�����ⶼ�벻���Ļ�ֻ��˵����Ⱦƹ�������")
	MisBeginCondition(NoRecord, 1322)
	MisBeginCondition(NoMission, 1322)
	MisBeginCondition(HasRecord, 1321)
	MisBeginCondition( HasItem, 5842, 1)
    MisBeginAction(AddMission, 1322)
	MisCancelAction(ClearMission, 1322)
	
	MisHelpTalk("<t>Ů��(1755,908)��Ҫһ��<r��˵�������������������ϵ��˿��кܺõ�Ч��>����Ʒ��һ��<rȭ�����ǵıر�Ʒ>����Ʒ����û�뵽������ʲô�������ѵ���Ⱦƹ�������")
	MisNeed(MIS_NEED_DESP, "Ů����Ҫһ��<r��˵�������������������ϵ��˿��кܺõ�Ч��>����Ʒ��һ��<rȭ�����ǵıر�Ʒ>����Ʒ��")
	MisBeginAction(AddTrigger, 13221, TE_GETITEM, 4435, 1)          
	MisBeginAction(AddTrigger, 13222, TE_GETITEM, 4468, 1)	
	
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4435)	
	TriggerAction( 1, AddNextFlag, 1322, 10, 1)
	RegCurTrigger( 13221 )
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4468)	
	TriggerAction( 1, AddNextFlag, 1322, 20, 1)
	RegCurTrigger( 13222 )
	
	MisResultTalk("<t>��Ȼ�������ѹִ�ʹ��ô������...��Ҫ����Ŷ���һ���Ҫ��ش�һЩ�����ǻ�֮�ĵ����⣬ֻ������ȫ�ش���ȷ������ɿ��飡")

	MisResultCondition(HasMission, 1322)
	MisResultCondition(NoRecord, 1322)
	MisResultCondition(HasRecord, 1321)
	MisResultCondition(HasItem, 5842, 1)
	MisResultCondition(HasItem, 4435, 1)
	MisResultCondition(HasItem, 4468, 1)
	MisResultAction(TakeItem, 4435, 1)
	MisResultAction(TakeItem, 4468, 1)	
	MisResultAction(ClearMission, 1322)
	MisResultAction( AddMoney , 5000)
	MisResultAction(ClearRecord, 1321)
	MisResultAction(SetRecord, 1322)  ----��NPC�Ի������õ���record  ������������ȥ�ĶԻ�
	
	
	---------------------------------���˻ ֮ ʥ��̨------------ʥ�𴫵ݴ�ʹ	 ����ʼ��
	DefineMission( 6279, "ʥ��̨",1323 )	
	MisBeginTalk( "<t>���Ѿ����ǰ��4����ˣ������ﻹ��һ�żᶨ֮�ģ���ֻ�����ܹ�������ǰ��4�����ˣ���ȥ�ɣ������ˣ��������ĺͻ���ҵ�ʥ��̨�ѻ���ȼ�ɣ�ʥ��̨Ӧ�þ���ɳ᰸ۿڸ���")
	
	MisResultBagNeed(1)
	MisBeginCondition(NoRecord, 1322)
	
	MisBeginCondition(HasItem, 5801, 1)
	MisBeginCondition(NoMission, 1323)
	MisBeginAction(AddMission, 1323)		
	MisBeginAction(GiveItem, 5799, 1, 4)
	MisBeginBagNeed(1)
	MisCancelAction(SystemNotice, "�������޷��ж�")
	MisNeed(MIS_NEED_DESP, "����5�ĺͻ���ҵ�ʥ��̨") 
	MisHelpTalk("<t>ǧ����Ū���κ�һ�����Լ���棬����ͻṦ��һ����")
	MisResultCondition( AlwaysFailure )
	
	---------------------------------���˻ ֮ ʥ��̨------------ʥ��̨	 ��������
	DefineMission( 6280, "ʥ��̨",1323, COMPLETE_SHOW )	
	MisBeginCondition( AlwaysFailure )
	MisResultTalk("<t>��ϲ�㣡���Ѿ��ɹ�ͨ�������Ŀ��飡")	
	MisResultCondition(HasMission, 1323)		
	MisResultCondition(HasItem, 5842, 1)   --����ϻ��
	MisResultCondition(HasItem, 5797, 1)   --�ʰ�֮�� 
	MisResultCondition(HasItem, 5798, 1)   --��η֮��
	MisResultCondition(HasItem, 5799, 1)   --�ᶨ֮��
	MisResultCondition(HasItem, 5800, 1)   --����֮��
	MisResultCondition(HasItem, 5801, 1)   --�ǻ�֮��
	
	
	MisResultAction(ClearMission, 1323)	
	MisResultAction(SetRecord, 1324)
	MisResultAction(ClearRecord, 1323)	
	MisResultAction( AddMoney , 5000)
	
	
	