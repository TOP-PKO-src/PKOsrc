------------------------------------------------------------
--MissionScript04.lua Created by Robin 2005.05.27.
--
--��������
------------------------------------------------------------
print( "loading MissionScript04.lua" )

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
function CenterMission001()

----------------------------Ұ�޳�û��ɭ��
	DefineMission( 400, "Ұ�޳�û��ɭ��", 400 )
	
	MisBeginTalk( "<t>��ɭ�ֵ����һƬ���ܳ�û��Σ������<n><t>��Щ���������ͣ���ʮ��ǿ׳��Ȼ���ҵ�Сֶ��<b����>(1893,2812)ȴס��<p�Ͽ󲹸�վ>������ЩΣ������Ϊ�顣��ʮ�ֵ��������¸ҵ������ˣ��鷳��ȥ��������" )
	MisBeginCondition( LvCheck, ">", 9 )
	MisBeginCondition(NoRecord, 400)
	MisBeginCondition(NoMission, 400)
	MisBeginAction(AddMission, 400)
	MisCancelAction(ClearMission, 400)
		
	MisNeed(MIS_NEED_DESP, "�����ԣ�1893,2812���Ի���")
	
	MisHelpTalk("���������ڷϿ󸽽��أ�ϣ����ƽ�����¡�")
	MisResultCondition(AlwaysFailure )

-----------------------------------Ұ�޳�û��ɭ��
	DefineMission( 401, "Ұ�޳�û��ɭ��", 400, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>�Һܺã���Щ�ܱ�����û������˵����ôΣ�գ�������Ҳ��ϲ�������ء�")
	MisResultCondition(NoRecord, 400)
	MisResultCondition(HasMission, 400)
	MisResultAction(ClearMission, 400 )
	MisResultAction(SetRecord, 400 )
	MisResultAction(AddExp, 100, 100)
	MisResultAction(AddMoney, 300, 300)



----------------------------�ٵ���ɳĮ����
	DefineMission( 402, "�ٵ���ɳĮ����", 401 )
	
	MisBeginTalk( "<t>�������������ã������м���������ȥ�졣<n><t>����ɳĮ�ϵ�����һ����죬����ÿ���ʱ���ᵽ�����������⣬������ȴ�ٳٲ������ǵ���Ӱ��<n><t>�鷳��ȥ<pɳȪ����վ>�Ҹ���<b����>(789,3112)���������￴�������׳���ʲô�¡�" )
	MisBeginCondition( LvCheck, ">", 9 )
	MisBeginCondition(NoRecord, 401)
	MisBeginCondition(NoMission, 401)
	MisBeginAction(AddMission, 401)
	MisCancelAction(ClearMission, 401)
		
	MisNeed(MIS_NEED_DESP, "�����壨789,3112���Ի�")
	
	MisHelpTalk("��������ô��������ҵ���������")
	MisResultCondition(AlwaysFailure )

-----------------------------------�ٵ���ɳĮ����
	DefineMission( 403, "�ٵ���ɳĮ����", 401, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>�����������ǲ���ȥ�����������⣬ֻ�ǽ���·��ɳ��Ƶ������������ֻ�����ڳ����ˡ�")
	MisResultCondition(NoRecord, 401)
	MisResultCondition(HasMission, 401)
	MisResultAction(ClearMission, 401 )
	MisResultAction(SetRecord, 401 )
	MisResultAction(AddExp, 100, 100)
	MisResultAction(AddMoney, 300, 300)



----------------------------��ԭ̽��
	DefineMission( 404, "��ԭ̽��", 402 )
	
	MisBeginTalk( "<t>�ˣ����ѣ�������úܿ�ѽ����ԭ�ϵ���ЩС�����Ѿ�������Ķ����˰ɡ�<n><t>��˵<p��������վ>�����ؽ���ļ���ߣ����벻��Ҳȥ���ԣ��ҿ���������<b����>(798,369)�Ƽ���Ŷ��" )
	MisBeginCondition( LvCheck, ">", 9 )
	MisBeginCondition(NoRecord, 402)
	MisBeginCondition(NoMission, 402)
	MisBeginAction(AddMission, 402)
	MisCancelAction(ClearMission, 402)
		
	MisNeed(MIS_NEED_DESP, "�����Σ�798,369��ȥ���ܸ������ս")
	
	MisHelpTalk("��ȥ�����ΰɣ���Ҳ���������ı����ء�")
	MisResultCondition(AlwaysFailure )

-----------------------------------��ԭ̽��
	DefineMission( 405, "��ԭ̽��", 402, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>��Ȼ��<b����>�������ģ��ҵ�Ȼ�������ʵ����<n><t>���Ҫ��л���Ĵ����Ƽ�Ŷ��")
	MisResultCondition(NoRecord, 402)
	MisResultCondition(HasMission, 402)
	MisResultAction(ClearMission, 402 )
	MisResultAction(SetRecord, 402 )
	MisResultAction(AddExp, 100, 100)
	MisResultAction(AddMoney, 300, 300)


----------------------------����ɳĮ
	DefineMission( 406, "����ɳĮ", 403 )
	
	MisBeginTalk( "<t>��ѽ���Һܾ�û�п������������������ٵ������ˡ�<n><t>�ܿ�ϧ�����Ǳ������Ѿ�û����������ֵ������ˡ������Ը�⣬�ҿ����Ƽ���ȥ<pɳȪ����վ>�������<b������˹�����>(779,3098)���ҵĺ��ѣ��������ܰ��Ÿ��ʺ���Ĺ�����" )
	MisBeginCondition( LvCheck, ">", 9 )
	MisBeginCondition(NoRecord, 403)
	MisBeginCondition(NoMission, 403)
	MisBeginAction(AddMission, 403)
	MisCancelAction(ClearMission, 403)
		
	MisNeed(MIS_NEED_DESP, "�ҿ�����˹����ͣ�779,3098������")
	
	MisHelpTalk("������˹������Ǹ�����͵��ˣ��㲻�غ��£���Щȥ�����ɡ�")
	MisResultCondition(AlwaysFailure )

-----------------------------------����ɳĮ
	DefineMission( 407, "����ɳĮ", 403, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>�ҵ�ȷ��Ҫ���֣����������߰�æ�ɡ�")
	MisResultCondition(NoRecord, 403)
	MisResultCondition(HasMission, 403)
	MisResultAction(ClearMission, 403 )
	MisResultAction(SetRecord, 403 )
	MisResultAction(AddExp, 100, 100)
	MisResultAction(AddMoney, 300, 300)


----------------------------���԰���������
	DefineMission( 408, "���԰���������", 404 )
	
	MisBeginTalk( "<t>�ˣ����ѣ�������˵�����Ǳ��Ǹ��ຮ֮�أ���������������������İ���������<n><t><p�Ͽ󲹸�վ>��<b������>(1894,2798)�����������һЩ�ܸɵ������ˡ�<n><t>����㲻���ԣ��ҿ����Ƽ���ȥ�����﹤����" )
	MisBeginCondition( LvCheck, ">", 9 )
	MisBeginCondition(NoRecord, 404)
	MisBeginCondition(NoMission, 404)
	MisBeginAction(AddMission, 404)
	MisCancelAction(ClearMission, 404)
		
	MisNeed(MIS_NEED_DESP, "����������1894,2798��̸̸")
	
	MisHelpTalk("�㻹û�������������ɼ����ܰ���æ�����أ�")
	MisResultCondition(AlwaysFailure )

-----------------------------------���԰���������
	DefineMission( 409, "���԰���������", 404, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>��Ȼ��<bСĪ>�������ģ��ҵ�Ȼ�������ʵ����<n><t>�������Ҫ��л���Ĵ����Ƽ��ء�")
	MisResultCondition(NoRecord, 404)
	MisResultCondition(HasMission, 404)
	MisResultAction(ClearMission, 404 )
	MisResultAction(SetRecord, 404 )
	MisResultAction(AddExp, 100, 100)
	MisResultAction(AddMoney, 300, 300)


----------------------------ɧ���ı�ԭ
	DefineMission( 410, "ɧ���ı�ԭ", 405 )
	
	MisBeginTalk( "<t>�������������á�<n><t><b��������˹>������<p��������վ>�������һЩɧ�ң�������һЩ�ܸɵ���ǰȥ��æ��<n><t>������������ڳ�����������Ҳû�и���İ�����<n><t>����㲻���ԣ��ҿ�����<b��������˹>(803,352)�Ƽ��㡣" )
	MisBeginCondition( LvCheck, ">", 9 )
	MisBeginCondition(NoRecord, 405)
	MisBeginCondition(NoMission, 405)
	MisBeginAction(AddMission, 405)
	MisCancelAction(ClearMission, 405)
		
	MisNeed(MIS_NEED_DESP, "�Ҽ�������˹��803,352������")
	
	MisHelpTalk("����ô���������������˹�ڱ�������վѽ��")
	MisResultCondition(AlwaysFailure )

-----------------------------------ɧ���ı�ԭ
	DefineMission( 411, "ɧ���ı�ԭ", 405, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>��Ȼ��<b��ŷ>�������ģ��ҵ�Ȼ�������ʵ����<n><t>�������Ҫ��л���Ĵ����Ƽ��ء�")
	MisResultCondition(NoRecord, 405)
	MisResultCondition(HasMission, 405 )
	MisResultAction(ClearMission, 405 )
	MisResultAction(SetRecord, 405 )
	MisResultAction(AddExp, 100, 100)
	MisResultAction(AddMoney, 300, 300)


----------------------------���������
	DefineMission( 412, "���������", 406 )
	
	MisBeginTalk( "<t>��������������ȥ������ء�<n><t>�ұ����Ǹ����ṩ<pɳȪ����վ>�����ʹ�ӦƷ�ģ��ɽ����Ǹ�������ȺԽ��������������ʵ��û�취Ӧ���ˡ�<n><t>�鷳��ȥ��һ�����ʣ��ҵ�����<p����>(789,3112)��������Ӵ���ġ�" )
	MisBeginCondition( LvCheck, ">", 9 )
	MisBeginCondition(NoRecord, 406)
	MisBeginCondition(NoMission, 406)
	MisBeginAction(AddMission, 406)
	MisCancelAction(ClearMission, 406)
		
	MisNeed(MIS_NEED_DESP, "�����壨789,3112��̸̸")
	
	MisHelpTalk("��ô���㻹ûȥ���������ʶ�ɳȪ����վ����Ҫ�ء�")
	MisResultCondition(AlwaysFailure )

-----------------------------------���������
	DefineMission( 413, "���������", 406, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>̫��л�ˣ�Ҫ��û���������ʣ�������Ĳ�֪��γŹ�����¡�")
	MisResultCondition(NoRecord, 406)
	MisResultCondition(HasMission, 406 )
	MisResultAction(ClearMission, 406 )
	MisResultAction(SetRecord, 406 )
	MisResultAction(AddExp, 100, 100)
	MisResultAction(AddMoney, 300, 300)


----------------------------������ļ
	DefineMission( 414, "������ļ", 407 )
	
	MisBeginTalk( "<t>�ˣ����ѣ�������˵��ɳᰳ�������ӣ���ɳ�ִ�������������������İ���������<n><t><p�Ͽ󲹸�վ>��<b������>(1894,2798)�����������һЩ�ܸɵ������ˡ�<n><t>����㲻���ԣ��ҿ����Ƽ���ȥ�����﹤����" )
	MisBeginCondition( LvCheck, ">", 9 )
	MisBeginCondition(NoRecord, 407)
	MisBeginCondition(NoMission, 407)
	MisBeginAction(AddMission, 407)
	MisCancelAction(ClearMission, 407)
		
	MisNeed(MIS_NEED_DESP, "����������1894,2798������")
	
	MisHelpTalk("�㻹û�������������ɼ����ܰ���æ�����أ�")
	MisResultCondition(AlwaysFailure )

-----------------------------------������ļ
	DefineMission( 415, "������ļ", 407, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t><b��˿��>���������˰�������ʵ˵���Ҳ��Ǻ����������˵��۹��ء�<n><t>��������Ȼ���Ѿ����ˣ������°ɡ�")
	MisResultCondition(NoRecord, 407)
	MisResultCondition(HasMission, 407 )
	MisResultAction(ClearMission, 407 )
	MisResultAction(SetRecord, 407 )
	MisResultAction(AddExp, 100, 100)
	MisResultAction(AddMoney, 300, 300)


----------------------------���ǵ�Ů����ͽ
	DefineMission( 416, "���ǵ�Ů����ͽ", 408 )
	
	MisBeginTalk( "<t>����Ů�����ϣ�����ֵ�����ʱ��<n><t>�ҵ�ֿ��<b����������>ʮ��ǰΪ�˴���ҽ������<p��������վ>������ԭ�ĿẮ����ȴ����Ҫ����������<n><t>�ұ�����ѡһ���¸���ֱ����ͻ���վ��������˽��ҵ�ף�������<b����������>��<n><t>���ӣ�����������Ů������ҵ��Ǹ��ˡ�" )
	MisBeginCondition( LvCheck, ">", 9 )
	MisBeginCondition(NoRecord, 408)
	MisBeginCondition(NoMission, 408)
	MisBeginAction(AddMission, 408)
	MisCancelAction(ClearMission, 408)
		
	MisNeed(MIS_NEED_DESP, "�붬�������ţ�795,363����̸")
	
	MisHelpTalk("��֪�������������ܳŵ���ʱ��<n><t>����Ů�����ϣ���һ��Ҫ��ʱ�ϵ�����")
	MisResultCondition(AlwaysFailure )

-----------------------------------���ǵ�Ů����ͽ
	DefineMission( 417, "���ǵ�Ů����ͽ", 408, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>����Ů�����ϣ������ˣ���л������Ҵ���ٵ�ף�����Ҿ��úö��ˡ�")
	MisResultCondition(NoRecord, 408)
	MisResultCondition(HasMission, 408 )
	MisResultAction(ClearMission, 408 )
	MisResultAction(SetRecord, 408 )
	MisResultAction(AddExp, 100, 100)
	MisResultAction(AddMoney, 300, 300)


----------------------------����̽��
	DefineMission( 418, "����̽��", 409 )
	
	MisBeginTalk( "<t>�٣��ҿ��ó����Ǹ�ϲ��ð�յ��ˡ�<n><t>����������ط���Ŷ�������ûʲô���մ̼���<n><t>�������Ƽ���ȥ<p���￩������վ>�����ɣ��ҵ�����<b����>�϶������Щ����ѪҺ���ڵĲ�ʹŶ��" )
	MisBeginCondition( LvCheck, ">", 19 )
	MisBeginCondition(NoRecord, 409)
	MisBeginCondition(NoMission, 409)
	MisBeginAction(AddMission, 409)
	MisCancelAction(ClearMission, 409)
		
	MisNeed(MIS_NEED_DESP, "��������1535,3071���Ի�")
	
	MisHelpTalk("����Ϊ���Ѿ��������ء�<n><t>��Щ�ɣ�ʱ����ǲ����˵ġ�")
	MisResultCondition(AlwaysFailure )

-----------------------------------����̽��
	DefineMission( 419, "����̽��", 409, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>��Ȼ��<bά��>����������ģ���������㲻��ʵ�����һ��ǻ�����ȥŶ��")
	MisResultCondition(NoRecord, 409)
	MisResultCondition(HasMission, 409 )
	MisResultAction(ClearMission, 409 )
	MisResultAction(SetRecord, 409 )
	MisResultAction(AddExp, 500, 500)
	MisResultAction(AddMoney, 550, 550)



----------------------------���ж���
	DefineMission( 420, "���ж���", 410 )
	
	MisBeginTalk( "<t>�٣���֪���㡣<n><t>���������ɳĮ���Ѿ������ˡ�<n><t>������С����վ�ɸ�������������ˡ�<n><t>ȥ<p�Ͳ�����վ>������Σ�<b����ķ������>����������ȱ�������������أ���˵���ҵ��Ƽ���֤�����Ӧ��" )
	MisBeginCondition( LvCheck, ">", 19 )
	MisBeginCondition(NoRecord, 410)
	MisBeginCondition(NoMission, 410)
	MisBeginAction(AddMission, 410)
	MisCancelAction(ClearMission, 410)
		
	MisNeed(MIS_NEED_DESP, "������ķ�����ӣ�1202,3179��̸̸")
	
	MisHelpTalk("��Ҫ���������ڵ����������ȥ�µ��̿����Լ�����ҵ�ɣ�")
	MisResultCondition(AlwaysFailure )

-----------------------------------���ж���
	DefineMission( 421, "���ж���", 410, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Ŷ�����㰡�����������һЩ���顣<n><t><b����>���˵������Ȼ��׼ѽ��<n><t>�����������ɣ��������һ���ϵ��ġ�")
	MisResultCondition(NoRecord, 410)
	MisResultCondition(HasMission, 410 )
	MisResultAction(ClearMission, 410 )
	MisResultAction(SetRecord, 410 )
	MisResultAction(AddExp, 500, 500)
	MisResultAction(AddMoney, 550, 550)


----------------------------Ѱ�ұ���
	DefineMission( 422, "Ѱ�ұ���", 411 )
	
	MisBeginTalk( "<t>�ˣ�����ô�޾���ɵģ��ǲ����������Ҳ������ָе������ˣ�Ҫ���������ҽ����㵽<p������˹����վ>��һ����<b��������>�����ˡ�<n><t>���Ļ��ﳣҪ����Σ�յĴ��֣���Ҫ�������ĺ������������أ�" )
	MisBeginCondition( LvCheck, ">", 19 )
	MisBeginCondition(NoRecord, 411)
	MisBeginCondition(NoMission, 411)
	MisBeginAction(AddMission, 411)
	MisCancelAction(ClearMission, 411)
		
	MisNeed(MIS_NEED_DESP, "���������ᣨ1059,661��̸̸")
	
	MisHelpTalk("�㻹û�����𣿿��ȥ�ɣ���������ס�ڰ�����˹����վ��")
	MisResultCondition(AlwaysFailure )

-----------------------------------Ѱ�ұ���
	DefineMission( 423, "Ѱ�ұ���", 411, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>��Ȼ<b�Ʒ�>�Ƽ��������Ҿͷ����ˡ�<n><t>������Ҫ����ʱ���һ���ϵ��ġ�")
	MisResultCondition(NoRecord, 411)
	MisResultCondition(HasMission, 411 )
	MisResultAction(ClearMission, 411 )
	MisResultAction(SetRecord, 411 )
	MisResultAction(AddExp, 500, 500)
	MisResultAction(AddMoney, 550, 550)


----------------------------ɭ��̽��
	DefineMission( 424, "ɭ��̽��", 412 )
	
	MisBeginTalk( "<t>�٣��ҿ��ó����Ǹ�ϲ��ð�յ��ˡ�<n><t>����������ط���Ŷ�������ûʲô���մ̼���<n><t>�������Ƽ���ȥ<p���￩������վ>�����ɣ��ҵ�����<b�����˹>�϶������Щ����ѪҺ���ڵĲ�ʹŶ��" )
	MisBeginCondition( LvCheck, ">", 19 )
	MisBeginCondition(NoRecord, 412)
	MisBeginCondition(NoMission, 412)
	MisBeginAction(AddMission, 412)
	MisCancelAction(ClearMission, 412)
		
	MisNeed(MIS_NEED_DESP, "�Ұ����˹��1526,3089��̸̸")
	
	MisHelpTalk("��㶯��ɣ������˹���ڹ��￩������վ��")
	MisResultCondition(AlwaysFailure )

-----------------------------------ɭ��̽��
	DefineMission( 425, "ɭ��̽��", 412, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t><b������>�ѵ�˵�˺û����������ܿ����㡣<n><t>�һᾡ��������Щ���ʵĲ�ʹ���ġ�")
	MisResultCondition(NoRecord, 412)
	MisResultCondition(HasMission, 412 )
	MisResultAction(ClearMission, 412 )
	MisResultAction(SetRecord, 412 )
	MisResultAction(AddExp, 500, 500)
	MisResultAction(AddMoney, 550, 550)


----------------------------�վ�����
	DefineMission( 426, "�վ�����", 413 )
	
	MisBeginTalk( "<t>���������������أ��ҵ�����<p����ķ������>��Ѱ��ʱ�⵽ɳ�˵�Ϯ���������ˣ����ͣ���ڸ�����<p�Ͳ�����վ>������<n><t>�Һܵ�����������ƬɳĮ̫Σ���ˣ��Ҹ����޷��ִ�Ŀ�ĵأ�ֻ������ȥ����̽������" )
	MisBeginCondition( LvCheck, ">", 19 )
	MisBeginCondition(NoRecord, 413)
	MisBeginCondition(NoMission, 413)
	MisBeginAction(AddMission, 413)
	MisCancelAction(ClearMission, 413)
		
	MisNeed(MIS_NEED_DESP, "������ķ�����ӣ�1202,3179���Ի�")
	
	MisHelpTalk("��������ķ�����������ҷǳ���������")
	MisResultCondition(AlwaysFailure )

-----------------------------------�վ�����
	DefineMission( 427, "�վ�����", 413, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>���Ѿ�û�д��ˣ�ֻ���ֽŻ����̫���������Ӧ���ܸ�ԭ�ˡ�<n><t>лл��Ĺ��ģ�")
	MisResultCondition(NoRecord, 413)
	MisResultCondition(HasMission, 413 )
	MisResultAction(ClearMission, 413 )
	MisResultAction(SetRecord, 413 )
	MisResultAction(AddExp, 500, 500)
	MisResultAction(AddMoney, 550, 550)


----------------------------֧Ԯ������˹
	DefineMission( 428, "֧Ԯ������˹", 414 )
	
	MisBeginTalk( "<t>���ѣ���֪���⸽���Ѿ�û�й�������Ķ����ˣ�����Ҳ��Ϊ���ǿ����ܵ��˺ܺõı�����<n><t>����<p������˹����վ>���ҵ�����ȴ��������ĵ�����<n><t>����Ҳ�����Ҫ��İ��������ս����Ҳ����Ϊ������õıӻ���<n><t>��ȥ��һ����<b���>���ˣ�����������������ڷ������¡�" )
	MisBeginCondition( LvCheck, ">", 19 )
	MisBeginCondition(NoRecord, 414)
	MisBeginCondition(NoMission, 414)
	MisBeginAction(AddMission, 414)
	MisCancelAction(ClearMission, 414)
		
	MisNeed(MIS_NEED_DESP, "����ȣ�1037,671������")
	
	MisHelpTalk("������˹����վ����Ҫ��İ�����<n><t>��Ҫ������������ȥ�ɡ�")
	MisResultCondition(AlwaysFailure )

-----------------------------------֧Ԯ������˹
	DefineMission( 429, "֧Ԯ������˹", 414, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Ŷ��̫���ˡ�<n><t>��������Ҫһ�����������ˣ������Ҫ���£�")
	MisResultCondition(NoRecord, 414)
	MisResultCondition(HasMission, 414 )
	MisResultAction(ClearMission, 414 )
	MisResultAction(SetRecord, 414 )
	MisResultAction(AddExp, 500, 500)
	MisResultAction(AddMoney, 550, 550)


----------------------------���۽�
	DefineMission( 430, "���۽�", 415 )
	
	MisBeginTalk( "<t>�����ˣ���ͣ�������ֻ���ɱ��Լ�����̽����˫�ۡ�<n><t>�������ڵ��������β�����������������ʶ���ҵ�ѧ��<b�����˹>��������<p���￩������վ>���<n><t>���˵�����Ƽ���ģ����ػ���������ġ�" )
	MisBeginCondition( LvCheck, ">", 19 )
	MisBeginCondition(NoRecord, 415)
	MisBeginCondition(NoMission, 415)
	MisBeginAction(AddMission, 415)
	MisCancelAction(ClearMission, 415)
		
	MisNeed(MIS_NEED_DESP, "�Ұ����˹��1526,3089��̸̸")
	
	MisHelpTalk("�����˹�ڹ��￩������վ����Ŷ�����ȥ�ɡ�")
	MisResultCondition(AlwaysFailure )

-----------------------------------���۽�
	DefineMission( 431, "���۽�", 415, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>ԭ����<b������ʦ>��������ģ����ҿ�Ҫ�ú��д��㣬������Ϥ����Ļ����ɡ�")
	MisResultCondition(NoRecord, 415)
	MisResultCondition(HasMission, 415 )
	MisResultAction(ClearMission, 415 )
	MisResultAction(SetRecord, 415 )
	MisResultAction(AddExp, 500, 500)
	MisResultAction(AddMoney, 550, 550)



----------------------------ɳĮ̽��
	DefineMission( 432, "ɳĮ̽��", 416 )
	
	MisBeginTalk( "<t>�٣��ҿ��ó����Ǹ�ϲ��ð�յ��ˡ�<n><t>����������ط���Ŷ�������ûʲô���մ̼���<n><t>�������Ƽ���ȥ<t�Ͳ�����վ>�����ɣ��ҵ�����<bĢĢ>�϶������Щ����ѪҺ���ڵĲ�ʹŶ��" )
	MisBeginCondition( LvCheck, ">", 19 )
	MisBeginCondition(NoRecord, 416)
	MisBeginCondition(NoMission, 416)
	MisBeginAction(AddMission, 416)
	MisCancelAction(ClearMission, 416)
		
	MisNeed(MIS_NEED_DESP, "��ĢĢ��1209,3196������")
	
	MisHelpTalk("����Ÿ�ʲô����ȥ�Ͳ�����վ��ĢĢ��")
	MisResultCondition(AlwaysFailure )


-----------------------------------ɳĮ̽��
	DefineMission( 433, "ɳĮ̽��", 416, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>��Ȼ��<b����>����������ģ���������㲻��ʵ�����һ��ǻ�����ȥŶ��")
	MisResultCondition(NoRecord, 416)
	MisResultCondition(HasMission, 416 )
	MisResultAction(ClearMission, 416 )
	MisResultAction(SetRecord, 416 )
	MisResultAction(AddExp, 500, 500)
	MisResultAction(AddMoney, 550, 550)


----------------------------���Ϸ�
	DefineMission( 434, "���Ϸ�", 417 )
	
	MisBeginTalk( "<t>�����ˣ����������ֻ���ɱ��Լ�����̽����˫�ۡ�<n><t>�������ڵ��������β�����������������ʶ���ҵ�ѧ��<b����˹����ɳ>�������ڶ��Ϸ���<p������˹����վ>������<n><t>��˵�����Ƽ����ȥ�ģ����ػ���������ġ�" )
	MisBeginCondition( LvCheck, ">", 19 )
	MisBeginCondition(NoRecord, 417)
	MisBeginCondition(NoMission, 417)
	MisBeginAction(AddMission, 417)
	MisCancelAction(ClearMission, 417)
		
	MisNeed(MIS_NEED_DESP, "�ҿ���˹����ɳ��1028,649��̸̸")
	
	MisHelpTalk("����˹����ɳ�ڰ�����˹����վŶ��")
	MisResultCondition(AlwaysFailure )

-----------------------------------���Ϸ�
	DefineMission( 435, "���Ϸ�", 417, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>��ѽ���Ǹ�����ͷ����ͼ����ָ�ֻ�����<n><t>�������ˣ����Ȼ���ˣ��������°ɡ�<n><t>�������ȷҲ�����ֲ��㡣")
	MisResultCondition(NoRecord, 417)
	MisResultCondition(HasMission, 417 )
	MisResultAction(ClearMission, 417 )
	MisResultAction(SetRecord, 417 )
	MisResultAction(AddExp, 500, 500)
	MisResultAction(AddMoney, 550, 550)


----------------------------���뺣��
	DefineMission( 436, "���뺣��", 418 )
	
	MisBeginTalk( "<t>�٣����ѣ������˿�Ц���ˡ�<n><t>������������ĺ���ʱ����û�����������ô�У���<n><t>�ҽ���<p�����Ǻ���������>��<b����������������>������ʶ�ɣ����������ô���ġ�" )
	MisBeginCondition( LvCheck, ">", 24 )
	MisBeginCondition(NoRecord, 418)
	MisBeginCondition(NoRecord, 419)
	MisBeginCondition(NoRecord, 420)
	MisBeginCondition(NoMission, 418)
	MisBeginCondition(NoMission, 419)
	MisBeginCondition(NoMission, 420)
	MisBeginAction(AddMission, 418)
	MisCancelAction(ClearMission, 418)
		
	MisNeed(MIS_NEED_DESP, "�������ȣ�2247,2858���Ի�")
	
	MisHelpTalk("�������ڰ����Ǻ������������ڰ����Ǹۿ����Ӧ�ú����۵ġ�")
	MisResultCondition(AlwaysFailure )

-----------------------------------���뺣��
	DefineMission( 437, "���뺣��", 418, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>�һᾡȫ������������ģ����İɣ�")
	MisResultCondition(NoRecord, 418)
	MisResultCondition(HasMission, 418 )
	MisResultAction(ClearMission, 418 )
	MisResultAction(SetRecord, 418 )
	MisResultAction(AddExp, 1000, 1000)
	MisResultAction(AddMoney, 700, 700)



----------------------------����������������
	DefineMission( 438, "����������������", 419 )
	
	MisBeginTalk( "<t>�������ѣ��㻹û�мݴ��¹������Ҿ��������ʲ���Ӧ��ȥ���ԡ�<n><t>�㵽<p�����Ǻ�����>����һ������<b������>�ģ����ͻ��������ô���ˡ�" )
	MisBeginCondition( LvCheck, ">", 24 )
	MisBeginCondition(NoRecord, 418)
	MisBeginCondition(NoRecord, 419)
	MisBeginCondition(NoRecord, 420)
	MisBeginCondition(NoMission, 418)
	MisBeginCondition(NoMission, 419)
	MisBeginCondition(NoMission, 420)
	MisBeginAction(AddMission, 419)
	MisCancelAction(ClearMission, 419)
		
	MisNeed(MIS_NEED_DESP, "�������ȣ�2247,2858���Ի�")
	
	MisHelpTalk("�������ڰ����Ǻ������������ڰ����Ǹۿ����Ӧ�ú����۵ġ�")
	MisResultCondition(AlwaysFailure )

-----------------------------------����������������
	DefineMission( 439, "����������������", 419, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>�һᾡȫ������������ģ����İɣ�")
	MisResultCondition(NoRecord, 419)
	MisResultCondition(HasMission, 419 )
	MisResultAction(ClearMission, 419 )
	MisResultAction(SetRecord, 419 )
	MisResultAction(AddExp, 1000, 1000)
	MisResultAction(AddMoney, 700, 700)



----------------------------����������
	DefineMission( 440, "����������", 420 )
	
	MisBeginTalk( "<t>�٣����ѣ������˿�Ц���ˡ�<n><t>������������ĺ���ʱ����û�����������ô�У���<n><t>�ҽ���<p�����Ǻ���������>��<b����������������>������ʶ�ɣ����������ô���ġ�" )
	MisBeginCondition( LvCheck, ">", 24 )
	MisBeginCondition(NoRecord, 418)
	MisBeginCondition(NoRecord, 419)
	MisBeginCondition(NoRecord, 420)
	MisBeginCondition(NoMission, 418)
	MisBeginCondition(NoMission, 419)
	MisBeginCondition(NoMission, 420)
	MisBeginAction(AddMission, 420)
	MisCancelAction(ClearMission, 420)
		
	MisNeed(MIS_NEED_DESP, "�������ȣ�2247,2858���Ի�")
	
	MisHelpTalk("�������ڰ����Ǻ������������ڰ����Ǹۿ����Ӧ�ú����۵ġ�")
	MisResultCondition(AlwaysFailure )

-----------------------------------����������
	DefineMission( 441, "����������", 420, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>�һᾡȫ������������ģ����İɣ�")
	MisResultCondition(NoRecord, 420)
	MisResultCondition(HasMission, 420 )
	MisResultAction(ClearMission, 420 )
	MisResultAction(SetRecord, 420 )
	MisResultAction(AddExp, 1000, 1000)
	MisResultAction(AddMoney, 700, 700)



----------------------------���µ�һ����
	DefineMission( 442, "���µ�һ����", 421 )
	
	MisBeginTalk( "<t>������������ˣ����������أ���֪���Һ�<b�����ǽ���Ա�����带>һ�������á�<n><t>��������ռ������ӣ������Ǻ���ó�׵ľ��裬������û�к��ʵ���ѡ��<n><t>�������뵽���㡣<n><t>���������ҵ����Ȥ������ȥ<p������>������" )
	MisBeginCondition( LvCheck, ">", 29 )
	MisBeginCondition(NoRecord, 421)
	MisBeginCondition(NoRecord, 422)
	MisBeginCondition(NoRecord, 423)
	MisBeginCondition(NoMission, 421)
	MisBeginCondition(NoMission, 422)
	MisBeginCondition(NoMission, 423)
	MisBeginAction(AddMission, 421)
	MisCancelAction(ClearMission, 421)
		
	MisNeed(MIS_NEED_DESP, "�뽻��Ա�����带��2331,2821��̸̸")
	
	MisHelpTalk("�٣�����ô�����������Ա�����带��Ȼ���ڰ��������棡")
	MisResultCondition(AlwaysFailure )

-----------------------------------���µ�һ����
	DefineMission( 443, "���µ�һ����", 421, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t><t>��ѧ�������µ�һ�����ˣ�����־��С��<n><t>�Һ������㡣")
	MisResultCondition(NoRecord, 421)
	MisResultCondition(HasMission, 421 )
	MisResultAction(ClearMission, 421 )
	MisResultAction(SetRecord, 421 )
	MisResultAction(AddExp, 2000, 2000)
	MisResultAction(AddMoney, 850, 850)


----------------------------����������
	DefineMission( 444, "����������", 422 )
	
	MisBeginTalk( "<t>������������ˣ����������أ���֪���Һ�<b����Ա�����带>һ�������á�<n><t>��������ռ������ӣ������Ǻ���ó�׵ľ��裬������û�к��ʵ���ѡ��<n><t>�������뵽���㡣<n><t>���������ҵ����Ȥ������ȥ<p������>������" )
	MisBeginCondition( LvCheck, ">", 29 )
	MisBeginCondition(NoRecord, 421)
	MisBeginCondition(NoRecord, 422)
	MisBeginCondition(NoRecord, 423)
	MisBeginCondition(NoMission, 421)
	MisBeginCondition(NoMission, 422)
	MisBeginCondition(NoMission, 423)
	MisBeginAction(AddMission, 422)
	MisCancelAction(ClearMission, 422)
		
	MisNeed(MIS_NEED_DESP, "�뽻��Ա�����带��2331,2821��̸̸")
	
	MisHelpTalk("�٣�����ô�����������Ա�����带��Ȼ���ڰ��������棡")
	MisResultCondition(AlwaysFailure )

-----------------------------------����������
	DefineMission( 445, "����������", 422, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t><t>��ѧ�������µ�һ�����ˣ�����־��С��<n><t>�Һ������㡣")
	MisResultCondition(NoRecord, 422)
	MisResultCondition(HasMission, 422 )
	MisResultAction(ClearMission, 422 )
	MisResultAction(SetRecord, 422 )
	MisResultAction(AddExp, 2000, 2000)
	MisResultAction(AddMoney, 850, 850)



----------------------------��������
	DefineMission( 446, "��������", 423 )
	
	MisBeginTalk( "<t>������������ˣ����������أ���֪���Һ�<b����Ա�����带>һ�������á�<n><t>��������ռ������ӣ������Ǻ���ó�׵ľ��裬������û�к��ʵ���ѡ��<n><t>�������뵽���㡣<n><t>���������ҵ����Ȥ������ȥ<p������>������" )
	MisBeginCondition( LvCheck, ">", 29 )
	MisBeginCondition(NoRecord, 421)
	MisBeginCondition(NoRecord, 422)
	MisBeginCondition(NoRecord, 423)
	MisBeginCondition(NoMission, 421)
	MisBeginCondition(NoMission, 422)
	MisBeginCondition(NoMission, 423)
	MisBeginAction(AddMission, 423)
	MisCancelAction(ClearMission, 423)
		
	MisNeed(MIS_NEED_DESP, "�뽻��Ա�����带��2331,2821��̸̸")
	
	MisHelpTalk("�٣�����ô�����������Ա�����带��Ȼ���ڰ��������棡")
	MisResultCondition(AlwaysFailure )

-----------------------------------��������
	DefineMission( 447, "��������", 423, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t><t>��ѧ�������µ�һ�����ˣ�����־��С��<n><t>�Һ������㡣")
	MisResultCondition(NoRecord, 423)
	MisResultCondition(HasMission, 423 )
	MisResultAction(ClearMission, 423 )
	MisResultAction(SetRecord, 423 )
	MisResultAction(AddExp, 2000, 2000)
	MisResultAction(AddMoney, 850, 850)


----------------------------��Ϯ�Ľ�ʿ
	DefineMission( 448, "��Ϯ�Ľ�ʿ", 424)
	
	MisBeginTalk( "<t>��ѽ���������ˡ�<n><t>��<b������>�����õ����ֶ��������ˣ���������ʲô�����Ĺ�����������<n><t>�ҷǳ����ģ�ȴ�Ѳ�����<n><t>�鷳��ȥһ��<p�Ͽ󲹸�վ>̽���������" )
	MisBeginCondition( LvCheck, ">", 29 )
	MisBeginCondition(NoRecord, 424)
	MisBeginCondition(NoMission, 424)
	MisBeginAction(AddMission, 424)
	MisCancelAction(ClearMission, 424)
		
	MisNeed(MIS_NEED_DESP, "����������1894,2798���Ի�")
	
	MisHelpTalk("��Ȼ��Ӧ�ˣ���Ҫ��ЩȥŶ��")
	MisResultCondition(AlwaysFailure )

-----------------------------------��Ϯ�Ľ�ʿ
	DefineMission( 449, "��Ϯ�Ľ�ʿ", 424, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>�����ڿ��ﲻС�ļ�ŭ����Щ���󣬲��������ˡ�<n><t>�������Ѿ�Ȭ���ˡ�")
	MisResultCondition(NoRecord, 424)
	MisResultCondition(HasMission, 424 )
	MisResultAction(ClearMission, 424 )
	MisResultAction(SetRecord, 424 )
	MisResultAction(AddExp, 2000, 2000)
	MisResultAction(AddMoney, 850, 850)


----------------------------��Խ����ɭ��
	DefineMission( 450, "��Խ����ɭ��", 425)
	
	MisBeginTalk( "<t>�����������Խ<p����ɭ��>��������<p�߶�ŵ����վ>��<n><t>����ס����ວ�˵Ĺ��Ѱ�����˶����ҿ������ҵĶ���<b��������>ȴ���������о���<n><t>�Ҷ��û�������ˡ�<n><t>�¸ҵ������ˣ��������������ĸ�׵ģ������Ը����Ž����пջ�����������" )
	MisBeginCondition( LvCheck, ">", 29 )
	MisBeginCondition(NoRecord, 425)
	MisBeginCondition(NoMission, 425)
	MisBeginAction(AddMission, 425)
	MisCancelAction(ClearMission, 425)
		
	MisNeed(MIS_NEED_DESP, "�Ը����Ÿ�����������1136,2778��")
	
	MisHelpTalk("�Ҳ����Ǵߴ��㣬����ϣ������һ�տ����ҵ�����������")
	MisResultCondition(AlwaysFailure )

-----------------------------------��Խ����ɭ��
	DefineMission( 451, "��Խ����ɭ��", 425, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>��ĸ��������˵�ģ�����̫��л���ˣ������ҵó�ջؼ�ȥһ�ˣ�")
	MisResultCondition(NoRecord, 425)
	MisResultCondition(HasMission, 425 )
	MisResultAction(ClearMission, 425 )
	MisResultAction(SetRecord, 425 )
	MisResultAction(AddExp, 2000, 2000)
	MisResultAction(AddMoney, 850, 850)


----------------------------�Թ�����
	DefineMission( 452, "�Թ�����", 426)
	
	MisBeginTalk( "<t><p���Ǳ��³�>����Ⱥ��ԭ��ʮ����ΰ����Ȼ�����ư��ˣ�����Բ������ꡣ<n><t>Ȼ���������͵ı�������Ҳ����������������<p���Ǳ��³�>���ϲ�����<n><t>������������������ʧ���¼���<b���Ǳ����������˹>�������Ҷ���ȥ������������������ڱ𴦽����о�������ǰȥ��<n><t>�鷳�����<b�����˹>��������ȥ��Щ����˰ɡ�" )
	MisBeginCondition( LvCheck, ">", 29 )
	MisBeginCondition(NoRecord, 426)
	MisBeginCondition(NoMission, 426)
	MisBeginAction(AddMission, 426)
	MisCancelAction(ClearMission, 426)
		
	MisNeed(MIS_NEED_DESP, "�Կ��Ÿ������˹��1346,451��")
	
	MisHelpTalk("���Ǳ����������˹���ڵȻ�������Ҫ������̫��Ŷ��")
	MisResultCondition(AlwaysFailure )

-----------------------------------�Թ�����
	DefineMission( 453, "�Թ�����", 426, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>����������Ȼ������������������Ҳֻ����Ѱ���ˡ�<n><t>лл�����Ź�����")
	MisResultCondition(NoRecord, 426)
	MisResultCondition(HasMission, 426 )
	MisResultAction(ClearMission, 426 )
	MisResultAction(SetRecord, 426 )
	MisResultAction(AddExp, 2000, 2000)
	MisResultAction(AddMoney, 850, 850)


----------------------------�Ͽ�̽��
	DefineMission( 454, "�Ͽ�̽��", 427)
	
	MisBeginTalk( "<t>��������ķϿ���Ϊ���������ڲɺ����ã��谵�ĵĶ����·���ۣ��ưܲ���������һ�������Թ����̳����������ù�����<n><t>���������Ǳ���������յ�����˵ȴ�Ǹ����ã�������Ҳ������Ȥ��<n><t>�ҵĺ���<b���龫>���Ǹ�����<p�Ͽ󲹸�վ>������������ָ�������Ͽ�" )
	MisBeginCondition( LvCheck, ">", 29 )
	MisBeginCondition(NoRecord, 427)
	MisBeginCondition(NoMission, 427)
	MisBeginAction(AddMission, 427)
	MisCancelAction(ClearMission, 427)
		
	MisNeed(MIS_NEED_DESP, "����龫��1883,2805����̸")
	
	MisHelpTalk("�ұ�֤����ϲ���Ͽ��Թ��ģ����ȥ�ɣ�")
	MisResultCondition(AlwaysFailure )

-----------------------------------�Ͽ�̽��
	DefineMission( 455, "�Ͽ�̽��", 427, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>��Ȼ��<�µ�˹.����������ģ��ҵ�Ȼ�������ʵ����<n><t>�������Ҫ��л���Ĵ����Ƽ��ء�")
	MisResultCondition(NoRecord, 427)
	MisResultCondition(HasMission, 427 )
	MisResultAction(ClearMission, 427 )
	MisResultAction(SetRecord, 427 )
	MisResultAction(AddExp, 2000, 2000)
	MisResultAction(AddMoney, 850, 850)


----------------------------����������Σ��
	DefineMission( 456, "����������Σ��", 428)
	
	MisBeginTalk( "<t>���������ˣ��ҵ���ܾ��ˣ�<n><t>�ҵ�����<b��������>��<p�߶�ŵ����վ>��ʧ������ҩ�ĺ�����ʳ�����ǳ�Σ�գ��Ҹ�����֪��������״����Σ�ֻ�����������ˣ�<n><t>������ȥ��һ��������" )
	MisBeginCondition( LvCheck, ">", 29 )
	MisBeginCondition(NoRecord, 428)
	MisBeginCondition(NoMission, 428)
	MisBeginAction(AddMission, 428)
	MisCancelAction(ClearMission, 428)
		
	MisNeed(MIS_NEED_DESP, "������������1136,2778����̸")
	
	MisHelpTalk("��Щȥ�ɣ���������������Щ���������أ�")
	MisResultCondition(AlwaysFailure )

-----------------------------------����������Σ��
	DefineMission( 457, "����������Σ��", 428, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>ˮ����ˮ���������Ҹо��ö��ˣ��·��ػ�����һ����<n><t>лл�㣡��û��ʲô���ˣ�����һ�¾ͺ��ˡ�")
	MisResultCondition(NoRecord, 428)
	MisResultCondition(HasMission, 428 )
	MisResultAction(ClearMission, 428 )
	MisResultAction(SetRecord, 428 )
	MisResultAction(AddExp, 2000, 2000)
	MisResultAction(AddMoney, 850, 850)


----------------------------���ط���
	DefineMission( 458, "���ط���", 429)
	
	MisBeginTalk( "<t>�٣��Ҿ�Ȼ�ڹż��﷢�ֱ��Ǳ����³ǵĸ��ͼ��<n><t>�����Ǹ����ط��֣�<b���Ǳ��̻�᳤������>������������ַ�ܸ���Ȥ���ҵ������㱨���£�ϣ�������Ը����Ź�ȥ��" )
	MisBeginCondition( LvCheck, ">", 29 )
	MisBeginCondition(NoRecord, 429)
	MisBeginCondition(NoMission, 429)
	MisBeginAction(AddMission, 429)
	MisCancelAction(ClearMission, 429)
		
	MisNeed(MIS_NEED_DESP, "�Կ��Ÿ����Ǳ��̻�᳤�����ˣ�1294,498��")
	
	MisHelpTalk("Ŷ����Щȥ�Ұ����˰ɣ�����·��ֺ���Ҫ��")
	MisResultCondition(AlwaysFailure )

-----------------------------------���ط���
	DefineMission( 459, "���ط���", 429, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>���Ǹ��˲���ķ��֣�лл������ң�")
	MisResultCondition(NoRecord, 429)
	MisResultCondition(HasMission, 429 )
	MisResultAction(ClearMission, 429 )
	MisResultAction(SetRecord, 429 )
	MisResultAction(AddExp, 2000, 2000)
	MisResultAction(AddMoney, 850, 850)


----------------------------�Ͽ��Թ�
	DefineMission( 460, "�Ͽ��Թ�", 430)
	
	MisBeginTalk( "<t>��������ķϿ���Ϊ���������ڲɺ����ã��谵�ĵĶ����·���ۣ��ưܲ���������һ�������Թ����̳����������ù�����<n><t>���������Ǳ���������յ�����˵ȴ�Ǹ����ã�������Ҳ������Ȥ��<n><t>�ҵĺ���<b���龫>���Ǹ����ķϿ󲹸�վ������������ָ�������Ͽ�" )
	MisBeginCondition( LvCheck, ">", 29 )
	MisBeginCondition(NoRecord, 430)
	MisBeginCondition(NoMission, 430)
	MisBeginAction(AddMission, 430)
	MisCancelAction(ClearMission, 430)
		
	MisNeed(MIS_NEED_DESP, "����龫��1883,2805����̸")
	
	MisHelpTalk("�ұ�֤����ϲ���Ͽ��Թ��ģ����ȥ�ɣ�")
	MisResultCondition(AlwaysFailure )

-----------------------------------�Ͽ��Թ�
	DefineMission( 461, "�Ͽ��Թ�", 430, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>��Ȼ��<b����>����������ģ���������㲻��ʵ�����һ��ǻ�����ȥŶ��")
	MisResultCondition(NoRecord, 430)
	MisResultCondition(HasMission, 430 )
	MisResultAction(ClearMission, 430 )
	MisResultAction(SetRecord, 430 )
	MisResultAction(AddExp, 2000, 2000)
	MisResultAction(AddMoney, 850, 850)


----------------------------Ѱ���˲�
	DefineMission( 462, "Ѱ���˲�", 431)
	
	MisBeginTalk( "<t>�٣���ã��ҵ�����<b����˹>����Ѱ��һ�����Կɿ����˵�<p�߶�ŵ����վ>ȥ������<n><t>���ǳ������ң���Ҳ���빼�������ڴ������������Ƽ���ȥ��<n><t>��һ·����Ҳ�������������벻�����£�Ҳ���в������͹��޶��㻢�����񣬵��Ҿ�����Ӧ�ÿ���Ӧ����" )
	MisBeginCondition( LvCheck, ">", 29 )
	MisBeginCondition(NoRecord, 431)
	MisBeginCondition(NoMission, 431)
	MisBeginAction(AddMission, 431)
	MisCancelAction(ClearMission, 431)
		
	MisNeed(MIS_NEED_DESP, "�����˹��1123,2766����̸")
	
	MisHelpTalk("����˹�ڵ����أ���㶯��ɣ�")
	MisResultCondition(AlwaysFailure )

-----------------------------------Ѱ���˲�
	DefineMission( 463, "Ѱ���˲�", 431, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>����������������Ƽ���<n><t>�Ժ���ʲô��Ҫ���飬�Ҷ��ύ����ȥ��ġ�")
	MisResultCondition(NoRecord, 431)
	MisResultCondition(HasMission, 431 )
	MisResultAction(ClearMission, 431 )
	MisResultAction(SetRecord, 431 )
	MisResultAction(AddExp, 2000, 2000)
	MisResultAction(AddMoney, 850, 850)


----------------------------�Թ�̽��
	DefineMission( 464, "�Թ�̽��", 432)
	
	MisBeginTalk( "<t>�ˣ����ѣ�����Ϊ�������ﾭû�����ˣ��β����𴦷�չ�����ء�<n><t><b���Ǳ��̻�᳤��������>���������Ѱ�ҳ�ȥ<p���Ǳ��³�>�������޵���ʿ��<n><t>����˵������θ��ӣ����ҷǳ�Σ�գ����������Ļ���Ӧ���ܹ�Ӧ����<n><t>����Ը��ȥ���ҿ��Խ����Ƽ���<b������>��" )
	MisBeginCondition( LvCheck, ">", 29 )
	MisBeginCondition(NoRecord, 432)
	MisBeginCondition(NoMission, 432)
	MisBeginAction(AddMission, 432)
	MisCancelAction(ClearMission, 432)
		
	MisNeed(MIS_NEED_DESP, "����Ǳ��̻�᳤�������ˣ�1294,498����̸")
	
	MisHelpTalk("���Ѿ�ǿ���㹻Ӧ��<p���Ǳ��³�>�Ĺ����ˣ���ȥ֤���Լ���ʵ���ɣ�")
	MisResultCondition(AlwaysFailure )

-----------------------------------�Թ�̽��
	DefineMission( 465, "�Թ�̽��", 432, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>��Ȼ��<b���>����������ģ���������㲻��ʵ�����һ��ǻ�����ȥŶ��")
	MisResultCondition(NoRecord, 432)
	MisResultCondition(HasMission, 432 )
	MisResultAction(ClearMission, 432 )
	MisResultAction(SetRecord, 432 )
	MisResultAction(AddExp, 2000, 2000)
	MisResultAction(AddMoney, 850, 850)


----------------------------���ط���
	DefineMission( 466, "���ط���", 433)
	
	MisBeginTalk( "<t>��������̫���ˣ��ҵ�����<b��������>�ڹ��Ź�����һ���ֻ�����ˡ�<n><t>��Ȼһ��<r������ʿ>�ĵ��ݺݵؿ������ı��ϣ���������ͦ�����ˣ��ҵ�ȥ̽������<n><t>�����������Ҳ���ȥ̽������<n><t>��һ�����Ǹ�<p����Ӫ�ز���վ>�����ȷ������߲����ˡ�<n><t>���ѣ�������һ��Ψһ�����󣬴���ȥ����<b��������>����" )
	MisBeginCondition( LvCheck, ">", 29 )
	MisBeginCondition(NoRecord, 433)
	MisBeginCondition(NoMission, 433)
	MisBeginAction(AddMission, 433)
	MisCancelAction(ClearMission, 433)
		
	MisNeed(MIS_NEED_DESP, "�ӿ��Ÿ�����������2142,556��")
	
	MisHelpTalk("ҪС������Ӫ�ز���վ�����ã����Ƿǳ�������")
	MisResultCondition(AlwaysFailure )

-----------------------------------���ط���
	DefineMission( 467, "���ط���", 433, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Ŷ��лл�㣬���ԴӰ�����<p����Ӫ�ز���վ>��������Ѷ��������������أ�")
	MisResultCondition(NoRecord, 433)
	MisResultCondition(HasMission, 433 )
	MisResultAction(ClearMission, 433 )
	MisResultAction(SetRecord, 433 )
	MisResultAction(AddExp, 3500, 3500)
	MisResultAction(AddMoney, 1000, 1000)

----------------------------������ʦ
	DefineMission( 468, "������ʦ", 434)
	
	MisBeginTalk( "<t>�����ð���ߣ����Ѿ����������Ӫ�ظ���Ѱ���ҵĵ�ʦ<b��������ʦ>�ܶ����ˣ������������˵���������Ѿ�ǰ�������<p��������վ>�ˡ�<n><t>��������ǰȥ����Ļ��������ת���Ҷ����ľ��⣬�������������Ѿ�ӵ���ˡ���ǿ���ġ���" )
	MisBeginCondition( LvCheck, ">", 39 )
	MisBeginCondition(NoRecord, 434)
	MisBeginCondition(NoMission, 434)
	MisBeginAction(AddMission, 434)
	MisCancelAction(ClearMission, 434)
		
	MisNeed(MIS_NEED_DESP, "�ʺ��������ʦ��2664,654��")
	
	MisHelpTalk("����һֱ���ߣ���������վ�����Ǳߣ�Ҳ��·�ϻ���ЩΣ�գ��������������һ��ӵ��һ�ż�ǿ���ġ�")
	MisResultCondition(AlwaysFailure )

-----------------------------------������ʦ
	DefineMission( 469, "������ʦ", 434, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Ŷ��лл���������ң��������װ���ѧ�����ڿ��Ա�ҵ�ˡ�")
	MisResultCondition(NoRecord, 434)
	MisResultCondition(HasMission, 434 )
	MisResultAction(ClearMission, 434 )
	MisResultAction(SetRecord, 434 )
	MisResultAction(AddExp, 6000, 6000)	
	MisResultAction(AddMoney, 1000, 1000)


----------------------------ҽ������
	DefineMission( 470, "ҽ������", 435)
	
	MisBeginTalk( "<t>�찡���ҵ����ѣ����ܹ����������ҵ�����<b����ҽ������������>��һ������ҽ����ԭ��������ɳᰳ����������������������Ȼ��ȥ���ɴ�½������Ǹ�<p�����ӵ²���վ>�����ˣ�<n><t>�찡�������û��ˮ�����鷳������ȥ����һ�����ɣ�" )
	MisBeginCondition( LvCheck, ">", 44 )
	MisBeginCondition(NoRecord, 435)
	MisBeginCondition(NoMission, 435)
	MisBeginAction(AddMission, 435)
	MisCancelAction(ClearMission, 435)
		
	MisNeed(MIS_NEED_DESP, "ȥ��������ҽ�����������ݣ�630,2091��")
	
	MisHelpTalk("�Ǹ�����վ���������������ɭ���")
	MisResultCondition(AlwaysFailure )

-----------------------------------ҽ������
	DefineMission( 471, "ҽ������", 435, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>�����������Ǹ���绹����ϲ��������£���ʵ�һ���ľ�ϲ�����������أ�")
	MisResultCondition(NoRecord, 435)
	MisResultCondition(HasMission, 435 )
	MisResultAction(ClearMission, 435 )
	MisResultAction(SetRecord, 435 )
	MisResultAction(AddExp, 10000, 10000)	
	MisResultAction(AddMoney, 1100, 1100)


----------------------------��������
	DefineMission( 472, "��������", 436)
	
	MisBeginTalk( "<t>��˵�����<p������>������������ļ���֣�����Ӧ���кܶ�����������<n><t>���и�����<b���Կ�>�������﹩ְ��������Ȥ�Ļ�����ȥ������" )
	MisBeginCondition( LvCheck, ">", 49 )
	MisBeginCondition(NoRecord, 436)
	MisBeginCondition(NoMission, 436)
	MisBeginAction(AddMission, 436)
	MisCancelAction(ClearMission, 436)
		
	MisNeed(MIS_NEED_DESP, "ȥ���������Ļ����������Կˣ�706,1465��̸̸")
	
	MisHelpTalk("�����ң���������ȥ��˵�������ܻ��һ�ٰ�ְ��")
	MisResultCondition(AlwaysFailure )

-----------------------------------��������
	DefineMission( 473, "��������", 436, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Ŷ������Ҫ������������һ��ʱ�䰡��û���⣡<n><t>����ϣ���㲻Ҫ��ʲôΥ���Ҽ͵����飡")
	MisResultCondition(NoRecord, 436)
	MisResultCondition(HasMission, 436 )
	MisResultAction(ClearMission, 436 )
	MisResultAction(SetRecord, 436 )
	MisResultAction(AddExp, 16000, 16000)
	MisResultAction(AddMoney, 1200, 1200)


----------------------------ɭ���
	DefineMission( 474, "ɭ���", 437)
	
	MisBeginTalk( "<t>��˵�ڼ��ɴ�½�в�ɭ������кܶ������������������ҵ�һ�������Ͽ��ɭ�������Ǹ�����<p���ò���վ>��������д�Ÿ����ҵģ�<n><t>�����ʱ��Ļ�����������ɾ����������ȥ����һ���ҵ����Ѱɡ�" )
	MisBeginCondition( LvCheck, ">", 54 )
	MisBeginCondition(NoRecord, 437)
	MisBeginCondition(NoMission, 437)
	MisBeginAction(AddMission, 437)
	MisCancelAction(ClearMission, 437)
		
	MisNeed(MIS_NEED_DESP, "ȥ�����Ͽ��ɭ��529,2458��")
	
	MisHelpTalk("лл�㣬�ҵ����ѣ�������ʱ���ʱ�򣬾ͳ���ȥ<p���ò���վ>�ɡ�")
	MisResultCondition(AlwaysFailure )

-----------------------------------ɭ���
	DefineMission( 475, "ɭ���", 437, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>лл���������ң�û�뵽�����Ȼ���������������������Ƿֲ���������ɵġ�")
	MisResultCondition(NoRecord, 437)
	MisResultCondition(HasMission, 437 )
	MisResultAction(ClearMission, 437 )
	MisResultAction(SetRecord, 437 )
	MisResultAction(AddExp, 25000, 25000)
	MisResultAction(AddMoney, 1300, 1300)




----------------------------------------
--                                    --
--        ���ձȺ�����ͨ����          --
--                                    --
----------------------------------------

-- ��ٽ��� >> ˾�����ɧ

	DefineMission(476, "˾�����ɧ", 438)

	MisBeginTalk("<t>�ոմ�����������˾�������˵����Ҫ�ҹ�ȥһ��<n><t>�������ս��˲Ϣ��䣬��ʵ���߲��������ܰ�����һ����<n><t>�ǵģ�ȥ�������ϼһﵽ����ʲô�£�֮��������ұ���")
	MisBeginCondition(NoRecord, 438)
	MisBeginCondition(NoMission,438)
	MisBeginCondition(HasNavyGuild)

	MisBeginAction(AddMission, 438)
	MisCancelAction(ClearMission, 438)
	MisHelpTalk("<t>��û������ץ��ʱ�䣡")

	MisNeed(MIS_NEED_DESP, "����ٽ���������������˾���ʻ�")

	MisResultCondition(AlwaysFailure)

-- ����������˾�� >> ˾�����ɧ
	DefineMission(477,"˾�����ɧ",438,COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>ʲô����ٽ������ܳ���ǰ�������ź��������ˡ�")

	MisResultCondition(HasMission, 438)
	MisResultCondition(NoRecord, 438)
	MisResultCondition(HasNavyGuild)

	MisResultAction(ClearMission, 438)
	MisResultAction(SetRecord, 438)

	
-- ����������˾�� >> ˾�������
	DefineMission(478, "˾�������", 439)

	MisBeginTalk("<t>��Ȼ��ٽ������ܳ���ǰ������ô������Ұ������ת������<n><t>���Ǿ��»��ܣ�һ��Ҫ�ھ��԰�ȫ��״̬���͵���")
	MisBeginCondition(HasRecord, 438)
	MisBeginCondition(NoRecord, 439)
	MisBeginCondition(NoMission,439)
	MisBeginCondition(HasNavyGuild)
	MisBeginBagNeed(1)

	MisBeginAction(AddMission, 439)
	MisBeginAction(GiveItem, 2430, 1, 4)
	MisCancelAction(ClearMission, 439)
	MisHelpTalk("<t>��û��������ץ��ʱ�䣡")
	MisNeed(MIS_NEED_DESP, "������������˾�������ת������ٽ�����һ��Ҫ��ȫ�͵�")

	MisResultCondition(AlwaysFailure)

-- ��ٽ��� >> ˾�������

	DefineMission(479,"˾�������",439,COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>���������������˾��������𣿿����������Ǳ�������ʲô��<n><t>��ʿ��������ȥ��Ϣһ�£�֮��������������µ��鷳�ˡ�")

	MisResultCondition(HasMission, 439)
	MisResultCondition(NoRecord, 439)

	MisResultCondition(HasItem, 2430,1 )
	MisResultCondition(HasNavyGuild)

	MisResultAction(ClearMission, 439)
	MisResultAction(TakeItem, 2430,1 )
	MisResultAction(SetRecord, 439)
	MisResultAction(AddExp, 10000, 10000)
	MisResultAction(AddMoney, 25000, 25000)


-- ��ٽ��� >> ����������

	DefineMission(480, "����������", 440)

	MisBeginTalk("<t>׼�������������Ǹ����ί��״��������ϸ�ˣ�<n><t>�Ҵ�����˾������㣬Ǳ������ľ�е�⣬����һ�������飬�����������ϸ��Ҵ���5������֮��")

	MisBeginCondition(HasRecord, 439)
	MisBeginCondition(NoMission, 440)
	MisBeginCondition(NoRecord, 440)
	MisBeginCondition(HasNavyGuild)

	MisBeginAction(AddMission, 440)
	MisBeginAction(AddTrigger, 4401, TE_GETITEM, 2386, 5)

	MisNeed(MIS_NEED_ITEM, 2386, 5, 10, 5)

	MisCancelAction(ClearMission, 440)
	
	MisHelpTalk("<t>��û�ռ���5������֮���𣿼ӰѾ�~ʤ�������ǲ�Զ�ˣ�")
	
	MisResultTalk("<t>����������Щ�ˣ������÷ǳ��ã��������ڿ����ǲ��Ǹø�����ְ�ˣ���Щ����Ľ�����")

	MisResultCondition(HasMission, 440)
	MisResultCondition(NoRecord, 440)
	MisResultCondition(HasItem, 2386, 5)
	MisResultCondition(HasNavyGuild)

	MisResultAction(TakeItem, 2386, 5)
	MisResultAction(ClearMission, 440)
	MisResultAction(SetRecord, 440)
	MisResultAction(AddExp, 250000, 250000)
	MisResultAction(AddMoney, 150000, 150000)

	InitTrigger()
	TriggerCondition(1, IsItem, 2386)
	TriggerAction(1, AddNextFlag, 440, 10, 5)
	RegCurTrigger(4401)

-- ��ٽ��� >> �����ؼ�
	
	DefineMission(481,"�����ؼ�",441)

	MisBeginTalk("<t>����ǰһ���׼��������������ŵ�ս�����Ѿ������������<n><t>ͬʱ�Ҿ�Ҳ�ܽ����һ�׺����ؼ��������Ȿ�ؼ����ڱ��������͵���ˣ����ֱ���Ҿ��ĳ���<n><t>��Ҫ��Ǳ�����麣�������ܻ��أ��ռ�����ɢ��ĺ����ؼ���ҳ(1 ~ 8)����������˾������ȡ��ǿ����ˮ<n><t>Ȼ����Щ�������������ҡ�")


	MisBeginCondition(HasRecord, 440)
	MisBeginCondition(NoRecord, 441)
	MisBeginCondition(NoMission, 441)

	MisBeginCondition(HasNavyGuild)

	MisBeginAction(AddMission, 441)

	MisBeginAction(AddTrigger, 4411, TE_GETITEM, 2388, 1)
	MisBeginAction(AddTrigger, 4412, TE_GETITEM, 2389, 1)
	MisBeginAction(AddTrigger, 4413, TE_GETITEM, 2390, 1)
	MisBeginAction(AddTrigger, 4414, TE_GETITEM, 2391, 1)
	MisBeginAction(AddTrigger, 4415, TE_GETITEM, 2392, 1)
	MisBeginAction(AddTrigger, 4416, TE_GETITEM, 2393, 1)
	MisBeginAction(AddTrigger, 4417, TE_GETITEM, 2394, 1)
	MisBeginAction(AddTrigger, 4418, TE_GETITEM, 2395, 1)
	MisBeginAction(AddTrigger, 4419, TE_GETITEM, 2441, 1)

	MisNeed(MIS_NEED_ITEM, 2388, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 2389, 1, 20, 1)
	MisNeed(MIS_NEED_ITEM, 2390, 1, 30, 1)
	MisNeed(MIS_NEED_ITEM, 2391, 1, 40, 1)
	MisNeed(MIS_NEED_ITEM, 2392, 1, 50, 1)
	MisNeed(MIS_NEED_ITEM, 2393, 1, 60, 1)
	MisNeed(MIS_NEED_ITEM, 2394, 1, 70, 1)
	MisNeed(MIS_NEED_ITEM, 2395, 1, 80, 1)
	MisNeed(MIS_NEED_ITEM, 2441, 1, 90, 1)

	MisCancelAction(ClearMission, 441)

	MisHelpTalk("<t>һ�������������ǴӺ����ؼ���ѧ�����ǵ�ս������")
	
	MisResultTalk("<t>�⡭������������������ǵ�Ӣ�ۣ�<n><t>��ֱ̫���ˣ����޷������������Ҵ˿̵����飬���Һú��侲�¡����ˡ���Щ����Ӧ�õı��꣬�����Ű�")

	MisResultCondition(HasMission, 441)
	MisResultCondition(NoRecord, 441)
	MisResultCondition(HasItem, 2388, 1)
	MisResultCondition(HasItem, 2389, 1)
	MisResultCondition(HasItem, 2390, 1)
	MisResultCondition(HasItem, 2391, 1)
	MisResultCondition(HasItem, 2392, 1)
	MisResultCondition(HasItem, 2393, 1)
	MisResultCondition(HasItem, 2394, 1)
	MisResultCondition(HasItem, 2395, 1)
	MisResultCondition(HasItem, 2441, 1)
	MisResultBagNeed(1)
	MisResultCondition(HasNavyGuild)

	MisResultAction(TakeItem, 2388, 1)
	MisResultAction(TakeItem, 2389, 1)
	MisResultAction(TakeItem, 2390, 1)
	MisResultAction(TakeItem, 2391, 1)
	MisResultAction(TakeItem, 2392, 1)
	MisResultAction(TakeItem, 2393, 1)
	MisResultAction(TakeItem, 2394, 1)
	MisResultAction(TakeItem, 2395, 1)
	MisResultAction(TakeItem, 2441, 1)

	MisResultAction(ClearMission, 441)
	MisResultAction(SetRecord, 441)
	MisResultAction(AddExp, 500000, 500000)
	MisResultAction(AddMoney, 500000, 500000)

	InitTrigger()
	TriggerCondition(1, IsItem, 2388)
	TriggerAction(1, AddNextFlag, 441, 10, 1)
	RegCurTrigger(4411)

	InitTrigger()
	TriggerCondition(1, IsItem, 2389)
	TriggerAction(1, AddNextFlag, 441, 20, 1)
	RegCurTrigger(4412)

	InitTrigger()
	TriggerCondition(1, IsItem, 2390)
	TriggerAction(1, AddNextFlag, 441, 30, 1)
	RegCurTrigger(4413)

	InitTrigger()
	TriggerCondition(1, IsItem, 2391)
	TriggerAction(1, AddNextFlag, 441, 40, 1)
	RegCurTrigger(4414)

	InitTrigger()
	TriggerCondition(1, IsItem, 2392)
	TriggerAction(1, AddNextFlag, 441, 50, 1)
	RegCurTrigger(4415)

	InitTrigger()
	TriggerCondition(1, IsItem, 2393)
	TriggerAction(1, AddNextFlag, 441, 60, 1)
	RegCurTrigger(4416)

	InitTrigger()
	TriggerCondition(1, IsItem, 2394)
	TriggerAction(1, AddNextFlag, 441, 70, 1)
	RegCurTrigger(4417)

	InitTrigger()
	TriggerCondition(1, IsItem, 2395)
	TriggerAction(1, AddNextFlag, 441, 80, 1)
	RegCurTrigger(4418)

	InitTrigger()
	TriggerCondition(1, IsItem, 2441)
	TriggerAction(1, AddNextFlag, 441, 90, 1)
	RegCurTrigger(4419)



-- �ܿ�ʷ���� >> ��Ԯ
	DefineMission(482, "��Ԯ", 442)

	MisBeginTalk("<t>�Ҳ��ò����ϣ�������ӵ�ʵ��Զ�����ҵ����������Ҿ������ҵ���ԩ�ҽܿ˴�����Ԯ<n><t>�Ǽһ�ס��ħŮ֮�������ܴ���ȥ������Ԯ����Ȼ�ɹ��Ŀ����Ժ�С��")
	MisBeginCondition(NoRecord, 442)
	MisBeginCondition(NoMission,442)
	MisBeginCondition(HasPirateGuild)

	MisBeginAction(AddMission, 442)
	MisCancelAction(ClearMission, 442)
	MisHelpTalk("<t>��û���������ǵ�ʱ�䲻����")

	MisNeed(MIS_NEED_DESP, "��ħŮ֮���Ľܿ˴�����Ԯ")

	MisResultCondition(AlwaysFailure)


-- �ܿ˴��� >> ��Ԯ

	DefineMission(483,"��Ԯ",442,COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>ʲô���ǼһﾹȻ������ȣ���������Ц�������ȥ������<n><t>��Ҫ�ҵ�Ԯ���͹ԹԵĸ�����һ����������Ȼ���ǲ�������ģ�")

	MisResultCondition(HasMission, 442)
	MisResultCondition(NoRecord, 442)
	MisBeginCondition(HasPirateGuild)

	MisResultAction(ClearMission, 442)
	MisResultAction(SetRecord, 442)

-- �ܿ˴��� >> �ܿ��ּ��ܿ�
	DefineMission(484, "�ܿ��ּ��ܿ�", 443)

	MisBeginTalk("<t>���������ҵ���ս�飬����������ȥ���ܿ�ʷ����<n><t>�������һ��ڰ���ʮ����Բ֮ҹ�ľ���¥��������ʱ����")
	MisBeginCondition(HasRecord, 442)
	MisBeginCondition(NoRecord, 443)
	MisBeginCondition(NoMission,443)
	MisBeginCondition(HasPirateGuild)
	MisBeginBagNeed(1)

	MisBeginAction(AddMission, 443)

	MisCancelAction(ClearMission, 443)
	MisBeginAction(GiveItem, 2431, 1, 4)
	MisHelpTalk("<t>��û����������ĥ��ʲô��")

	MisNeed(MIS_NEED_DESP, "���ܿ˴�������ս��ת�����ܿ�ʷ����")

	MisResultCondition(AlwaysFailure)


-- �ܿ�ʷ���� >> �ܿ��ּ��ܿ�

	DefineMission(485,"�ܿ��ּ��ܿ�",443,COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>���������Ǽһ��ǲ���������κΰ����ˣ���ô����ֻ�����ҳ�·<n><t>�������롣�ֵܣ��������˰��죬����Ϣһ�°ɣ��������ٽ��㡣")

	MisResultCondition(HasItem,2431,1)
	MisResultCondition(HasMission, 443)
	MisResultCondition(NoRecord, 443)
	MisResultCondition(HasPirateGuild)

	MisResultAction(ClearMission, 443)
	MisResultAction(TakeItem,2431,1)
	MisResultAction(SetRecord, 443)
	MisResultAction(AddExp, 10000, 10000)
	MisResultAction(AddMoney, 50000, 50000)

-- �ܿ�ʷ���� >> ���ձȱ���

	DefineMission(486, "���ձȱ���", 444)

	MisBeginTalk("<t>���õ���Χɢ�������ۻ�ף���ά��˹������Ͳ������е�һ���ۻ����<n><t>��������Ӧ�úú�����һ�£���Ը��Э�����𣬰����ҵ���ά��˹������<n><t>�������Ǿ����㹻��ʵ������ֹ�����ǵĽ����ˣ�")

	MisBeginCondition(HasRecord, 443)
	MisBeginCondition(NoRecord, 444)
	MisBeginCondition(NoMission, 444)
	MisBeginCondition(HasPirateGuild)

	MisBeginAction(AddMission, 444)
	MisBeginAction(AddTrigger, 4441, TE_GETITEM, 2444, 1)

	MisNeed(MIS_NEED_ITEM, 2444, 1, 10, 1)
	MisCancelAction(ClearMission, 444)

	MisHelpTalk("<t>�Ѿ��ռ������𣿻�û�У�ץ��ʱ�䰡��")

	MisResultTalk("<t>�ܺã������������㹻�Ľ�Ǯ���齨���ǵĺ��������ˣ�")

	MisResultCondition(NoRecord, 444)
	MisResultCondition(HasMission, 444)
	MisResultCondition(HasPirateGuild)
	MisResultCondition(HasItem,2444,1)

	MisResultAction(TakeItem, 2444, 1)
	MisResultAction(ClearMission, 444)
	MisResultAction(SetRecord, 444)

	MisResultAction(AddExp, 250000, 250000)
	MisResultAction(AddMoney, 150000, 150000)

	InitTrigger()
	TriggerCondition(1, IsItem, 2444)
	TriggerAction(1, AddNextFlag, 444, 10, 1)
	RegCurTrigger(4441)

--���� >> ʥ��
	
	DefineMission(487, "ʥ��", 445)

	MisBeginTalk("<t>����˵������¼���������֪���������Ϊʲô��ô���Ľ�����<n><t>������ɣ��������ռ�һ����������Ľ�ң�Ŀǰ���ǻ���֪�������ռ����ֽ����ʲô�ã��������Կ϶����ǣ����Բ�����ʲô����<n><t>���������Ȥ������������������40����Һ�һ����Ѫ�Ľ�������ң������ҿ������Ű����������������")

	MisBeginCondition(HasRecord, 444)
	MisBeginCondition(NoRecord, 445)
	MisBeginCondition(NoMission, 445)
	MisBeginCondition(HasPirateGuild)

	MisBeginAction(AddMission, 445)
	MisBeginAction(AddTrigger, 4451, TE_GETITEM, 2427, 1)
	MisBeginAction(AddTrigger, 4452, TE_GETITEM, 2438, 40)
	

	MisNeed(MIS_NEED_ITEM, 2427, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 2438, 40, 20, 40)
	

	MisCancelAction(ClearMission, 445)
	MisHelpTalk("<t>��ô���ֵܣ��ռ��˶����ˣ�")

	MisResultTalk("<t>������˵��ֻҪ������!^($����%*#��a2����1&s?~*#^%!����(��������������)�����ˣ����ˣ�<n><t>��Щ��������Ѿ�û�������ˣ����������Ӧ�ò�������ô���Ľ����˰ɣ�лл�����ֵܣ������÷ǳ���")

	MisResultCondition(NoRecord, 445)
	MisResultCondition(HasMission, 445)
	MisResultCondition(HasItem, 2438, 40)
	MisResultCondition(HasItem, 2427, 1)
	MisResultCondition(HasPirateGuild)

	MisResultAction(TakeItem, 2438, 40)
	MisResultAction(TakeItem, 2427, 1)
	MisResultAction(ClearMission ,445)
	MisResultAction(SetRecord, 445)

	MisResultAction(AddExp, 500000,500000)
	MisResultAction(AddMoney, 800000, 800000)

	InitTrigger()
	TriggerCondition(1, IsItem, 2427)
	TriggerAction(1, AddNextFlag, 445, 10, 1)
	RegCurTrigger(4451)

	InitTrigger()
	TriggerCondition(1, IsItem, 2438)
	TriggerAction(1, AddNextFlag, 445, 20, 40)
	RegCurTrigger(4452)

end
CenterMission001()