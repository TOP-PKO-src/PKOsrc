------------------------------------------------------------
--TemplateSdk.lua Created by knight 2005.1.27.
--
--����ϵͳ�ű�ģ�庯��
print( "loading charbornscript.lua" )
------------------------------------------------------------


function PCBorn ()
	--��д��ɫ����ʱ��ʼ����������Ϣ


	InitTrigger()
	TriggerCondition( 1, IsSpawnPos, "������" )
	TriggerAction( 1, ObligeAcceptMission, 1 )
	TriggerCondition( 2, IsSpawnPos, "ɳᰳ�" )
	TriggerAction( 2, ObligeAcceptMission, 2 )
	TriggerCondition( 3, IsSpawnPos, "���Ǳ�" )
	TriggerAction( 3, ObligeAcceptMission, 3 )
	local triggerlist = GetMultiTrigger()
	
	InitTrigger()
	TriggerAction( 1, HelpInfo,MIS_HELP_DESP,"��ã���ӭ���������������磬�ֽ���һ�����ǵĲ�����ʽ�ɣ������������������ߡ��ڳ���Թ��ﵥ���������������Խ���ս������ס�������������ſ��Գ������ߡ��ڳ����NPC����Ի�Ҳ���á�����������ȷ�ϵġ�����������Ҽ�������ҿ��ԡ���ӡ����ѡ����ס����ġ��ȵȣ���ס������Ҽ���ˮƽ��ת��Ϸ�ӽǡ������������֡������ƽ���Զ�ӽǣ�˫��������Ҽ�����ص�Ĭ�ϵ��ӽǡ�" )
	TriggerAction( 1, AddTrigger, 60000, TE_LEVELUP, 2, 1 )
	TriggerAction( 1, AddTrigger, 60001, TE_LEVELUP, 5, 1 )
	TriggerAction( 1, AddTrigger, 60002, TE_LEVELUP, 9, 1 )
	TriggerAction( 1, AddTrigger, 60003, TE_LEVELUP, 10, 1 )
	TriggerAction( 1, AddTrigger, 60004, TE_LEVELUP, 45, 1 )
	TriggerAction( 1, MultiTrigger, triggerlist, 3 )
	TriggerAction( 1, SaveMissionData )

	--���ô�����ע�ᵽIDΪ88888��ȫ�ִ��������У���ID������Ĭ��Ϊ��ɫ����������
	RegTrigger( 88888, 1 )
	
	InitTrigger()
	TriggerAction( 1, HelpInfo,MIS_HELP_DESP,"    ��ϲ�㣬����Ҫ������ʹ���״﹦�ܣ�����_ʹ�÷����ܼ򵥣����С��ͼ�ϵ��״ﰴť��_�״���棻ѡ����ȷ�Ĵ�½��������Ӧ�����ꣻ_ȷ����ͻ�õ���Ӧ��ָʾ��" )
	RegTrigger( 60000, 1 )
	
	InitTrigger()
	TriggerAction( 1, HelpInfo,MIS_HELP_DESP,"    ������ս����Ҫ��ʼ�ˣ����˽�һ����ص�_�������ܣ�����insert�����������»�վ����_��״̬���Լӿ�HP�ָ�������ɱ���Ĺ�������_��Ʒ����Щ��Ʒ��30��ĵ��߱���ʱ�䣻��_��ctrl+a�������Կ��ٵļ�����Χ�������Ʒ��_����alt+�������������ҿ��Ը������ҡ�" )
	RegTrigger( 60001, 1 )
	
	InitTrigger()
	TriggerAction( 1, HelpInfo,MIS_HELP_DESP,"    �������Ѿ��˽������ս����ʽ�ˣ����ڿ�_��ȥתְ�ˡ�����ָ���������Ƽ���ְҵ��תְ_�����ˡ�ȥ����ָ�����ѡ�������ķ�չ��_��ɡ��ҵ�תְ�����˺����Ḻ�������п�_�飻���ͨ���˿��飬��10��ʱ��Ϳ���תְ�ˡ�" )
	RegTrigger( 60002, 1 )
	
	InitTrigger()
	TriggerAction( 1, HelpInfo,MIS_HELP_DESP,"    ��ϲ��10���ˣ������ڻ����һ�㼼�ܵ㣬�Ժ�ÿ��һ�������һ�㼼�ܵ㣬����ת��ְ�����ѧϰ�����ˣ��ڳ��������ӻ����ˣ����ǳ��۲�ͬ�ļ����顣ף����ˣ�" )
	RegTrigger( 60003, 1 )

	InitTrigger()
	TriggerAction( 1, HelpInfo,MIS_HELP_DESP,"    ��ϲ��45���ˣ������ڿ���ȥ�Ұ����ǵĺ�Ϳɽ�˽������������ˣ�" )
	RegTrigger( 60004, 1 )

end
PCBorn()

