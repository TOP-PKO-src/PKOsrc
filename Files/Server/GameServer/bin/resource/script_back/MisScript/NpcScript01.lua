--------------------------------------------------------------------------
--									--
--									--
--NPCScript01.lua Created by Robin 2005.1.20.	--
--									--
--									--
--------------------------------------------------------------------------
print( "loading NPCScript01.lua" )

jp= JumpPage
amp=AutoMissionPage
ct=CloseTalk
am=AddMission
MissionCheck = HasFlag
mc=MissionCheck


------------------------------------------------------------
-- ����֮��:��װ����������
------------------------------------------------------------

function BT_NpcSale001()


	Talk( 1, "��������:��ӭ����.���������ķ�װ������,�ֹ�����,��ʽ��ӱ,��Ǯ����,����������." )
	Text( 1, "����", BuyPage )

	InitTrade()
	Defence(	0290	)
	Defence(	0466	)
	Defence(	0642	)
	Defence(	0296	)
	Defence(	0472	)
	Defence(	0648	)
	Defence(	0291	)
	Defence(	0467	)
	Defence(	0643	)
	Defence(	0297	)
	Defence(	0473	)
	Defence(	0649	)
	Defence(	0293	)
	Defence(	0469	)
	Defence(	0645	)
	Defence(	0298	)
	Defence(	0474	)
	Defence(	0650	)
	Defence(	0300	)
	Defence(	0476	)
	Defence(	0652	)
	Defence(	0301	)
	Defence(	0477	)
	Defence(	0653	)
	Defence(	0228	)
	Defence(	0229	)
	Defence(	0230	)
	Defence(	0295	)
	Defence(	0471	)
	Defence(	0647	)
	Defence(	0302	)
	Defence(	0478	)
	Defence(	0654	)
	Defence(	0299	)
	Defence(	0475	)
	Defence(	0651	)
	Defence(	0303	)
	Defence(	0479	)
	Defence(	0655	)
	
	-- AddNpcMission ( 220 )
	AddNpcMission ( 705 )
	
	
	
	
end

-------------------------------------------------------------------
--								--
--		�����ǣ����أ�		--
--		219533,270323				--
-------------------------------------------------------------------

function r_talk86()

	Talk( 1, "����:���,���ǰ����ǵ���������,�Ҹ������������ǰ�ȫ,������Ҳ�����½�ʿ��ѵ��,��ô������������ʲô��ô?")

	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 9 )
	TriggerCondition( 1, IsCategory, 1 )
	TriggerCondition( 1, PfEqual, 0 )
	TriggerCondition( 1, HasMoney, 1000 )
	TriggerCondition( 1, HasItem, 3953, 1 )
	TriggerAction( 1, TakeItem, 3953, 1 )
	TriggerAction( 1, TakeMoney, 1000 )
	TriggerAction( 1, GiveItem, 3164, 1, 4 )
	TriggerAction( 1, GiveItem, 1, 1, 4 )
	TriggerAction( 1, SetProfession, 1 )
	TriggerAction( 1, JumpPage, 3 )
	TriggerCondition( 2, LvCheck, ">", 9 )
	TriggerCondition( 2, IsCategory, 2 )
	TriggerCondition( 2, PfEqual, 0 )
	TriggerCondition( 2, HasMoney, 1000 )
	TriggerCondition( 2, HasItem, 3953, 1 )
	TriggerAction( 2, TakeItem, 3953, 1 )
	TriggerAction( 2, TakeMoney, 1000 )
	TriggerAction( 2, GiveItem, 3164, 1, 4 )
	TriggerAction( 2, GiveItem, 1, 1, 4 )
	TriggerAction( 2, SetProfession, 1  )
	TriggerAction( 2, JumpPage, 3 )
	TriggerFailure( 2, JumpPage, 4 )

	--Talk(2, "����:ι,����,���һ��!��Խ�������Ȥ��?�ҿ��������������ô��,������ʵ��̫��ϧ��!���ҽ�����γ�Ϊһ����ʿ��!")
	--Text(2, "�õ�,תְ��Ϊ��ʿ", MultiTrigger, GetMultiTrigger(), 2)
	--Text(2, "��,�Ҿ�����������ͦ�õ�.", CloseTalk)

	--Talk(3, "����:���Ѱ�֪���Ľ���֪ʶ�����ڸ�����,ʣ�µľ�Ҫ�����Լ�Ŭ����.")

	--Talk(4, "����:��Ҫ��ְ��ʿ��?ֻ�еȼ�10���ϵ���������,��������֤��1��,�����1000G�ǼǷѲſ���.")

	--InitTrigger()
	---------------��ʿ
	--TriggerCondition( 1, LvCheck, ">", 9 )
	--TriggerCondition( 1, IsCategory, 1 )
	--TriggerCondition( 1, PfEqual, 0 )
	--TriggerAction( 1, JumpPage, 2 )
	--TriggerCondition( 2, LvCheck, ">", 9 )
	--TriggerCondition( 2, IsCategory, 2 )
	--TriggerCondition( 2, PfEqual, 0 )
	--TriggerAction( 2, JumpPage, 2 )
	--TriggerFailure( 2, JumpPage, 1 )

	--Start( GetMultiTrigger(), 2 )

	AddNpcMission( 100 )
	AddNpcMission( 204 )
	AddNpcMission ( 279 )
	AddNpcMission ( 281 )
	AddNpcMission ( 404 )
	AddNpcMission ( 749 )
	AddNpcMission ( 750 )
	AddNpcMission ( 66 )
	AddNpcMission ( 67 )
	AddNpcMission ( 68 )
	AddNpcMission ( 72 )
	AddNpcMission(	1222	)
----------eleven
	AddNpcMission(	5056	)
	AddNpcMission(	5060	)	
	AddNpcMission(	5068	)	
------------1.7
	AddNpcMission(	5167	)
	AddNpcMission(	5089	)
	AddNpcMission (5093 )
	AddNpcMission (5094 )
	AddNpcMission (5095 )
	AddNpcMission (5096 )
	AddNpcMission (5109 )

	AddNpcMission ( 6078 )
	AddNpcMission ( 6079 )
	AddNpcMission ( 6080 )
	AddNpcMission ( 6097 )
	AddNpcMission ( 6100 )
	AddNpcMission ( 6101 )


	MisListPage(2)


end


-------------------------------------------------------------------
--								--
--		�����ǣ���������С���		--
--		219533,270323				--
-------------------------------------------------------------------
function r_trade01 ()
	--���������Ի�
	Talk( 1, "С���:���,�����������������,��Ҫʲô�Լ���,�����." )
	Text( 1, "����", BuyPage)
	Text( 1, "����", OpenRepair)
	Text( 1, "�йؾ���", JumpPage, 2)
	Text( 1, "�йغϳ�", JumpPage, 3)
	Text( 1,"�Ͻ�������¼�",JumpPage,9)
	
	
	Talk(9,"ǰ�����̳��ϳ�����һ��������ĺϽ��䣬��������ɼ��䲻�õ�Ӱ�죬������б�����ĺϽ��䣬�����ṩ��ѵ��޸�����ֻҪ���ĺϽ�������;�Ϊ0�������Ե�����������ȡһ���µĺϽ���")
	Text(9,"���б���Ŀ�䣬��Ҫ�޸��ҵĿ��",CheckMetal)
	Text(9,"��֪������˵ʲô",CloseTalk)

	
	--Text( 1, "�������", JumpPage,4)

	Talk( 2, "С���:����?���ּ���ֻ��ɳᰳǵ������Ż�." )

	Talk( 3, "С���:����ϳ���Ʒô?������֪�ϳ���Ʒ��Ҫ��һ�����Ӧ�ĺϳɹ�ʽ����,����������������кϳ�����Ҫ�Ĳ���,�������ɳᰳǵ��ӻ����ˡ���ī,�������������Ψһ��ϳɵ���,��֪���ľ�ֻ����Щ��." )

	InitTrade()
	Weapon(	0008	)
	Weapon(	0196	)
	Weapon(	0197	)
	Weapon(	0198	)
	Weapon(	0001	)
	Weapon(	0010	)
	Weapon(	0002	)
	Weapon(	0011	)
	Weapon(	0003	)
	Weapon(	0012	)
	Weapon(	0013	)
	Weapon(	0014	)
	Weapon(	0022	)
	Weapon(	0005	)
	Weapon(	0023	)
	Weapon(	1388	)
	Weapon(	1389	)
	Weapon(	1390	)
	Weapon(	1391	)
	Weapon(	1392	)
	Weapon(	1395	)
	Weapon(	1396	)
	Weapon(	1397	)
	Weapon(	1398	)
	Weapon(	1399	)
	Weapon(	0121	)
	Weapon(	0122	)
	Weapon(	0123	)
	Weapon(	0124	)
	Weapon(	0125	)
	Weapon(	0126	)
	Weapon(	0015	)
	Weapon(	0020	)
	Weapon(	0016	)
	Weapon(	0021	)
	Weapon(	0004	)
	Weapon(	1370	)
	Weapon(	1371	)
	Weapon(	1372	)
	Weapon(	1373	)
	Weapon(	1377	)
	Weapon(	1378	)
	Weapon(	1379	)
	Weapon(	1380	)
	Weapon(	1381	)
	Weapon(	1382	)
	Weapon(	1386	)
	Weapon(	1387	)
	Weapon(	0073	)
	Weapon(	0080	)
	Weapon(	0074	)
	Weapon(	0081	)
	Weapon(	0075	)
	Weapon(	0082	)
	Weapon(	0076	)
	Weapon(	0083	)
	Weapon(	0077	)
	Weapon(	0084	)
	Weapon(	1415	)
	Weapon(	1416	)
	Weapon(	1417	)
	Weapon(	1418	)
	Weapon(	1419	)
	Weapon(	1422	)
	Weapon(	1423	)
	Weapon(	1424	)
	Weapon(	1425	)
	Weapon(	1426	)
	Weapon(	1443	)
	Weapon(	1444	)
	Weapon(	1445	)
	Weapon(	1446	)
	Weapon(	1447	)
	Weapon(	1450	)
	Weapon(	1451	)
	Weapon(	1452	)
	Weapon(	1460	)
	Weapon(	1461	)
	--Talk( 4, "С���:��������ʲô�����?")
	--Text( 4, "ѩ�����",JumpPage,5)
	--Text( 4, "�Ϲ����", JumpPage,6)
	--Text( 4, "�������", JumpPage,7)


	--InitTrigger() --�һ�������
	--TriggerCondition( 1, HasItem, 4358, 30 )
	--TriggerCondition( 1, HasItem, 3909, 2 )
	--TriggerCondition(1, HasLeaveBagGrid, 1)
	--TriggerCondition(1, KitbagLock, 0 )
       -- TriggerAction( 1, TakeItem, 4358, 30 )
	--TriggerAction( 1, TakeItem,  3909, 2 )
	--TriggerAction( 1, GiveItem,1120, 1,4 )
	--TriggerFailure( 1, JumpPage, 8 ) 
	--Talk(5, "С���:����ѩ�������Ҫ30����ɫѩ���2��ʳ��ˮ��")
	--Text( 5, "ȷ������",MultiTrigger, GetMultiTrigger(), 1) 

	--InitTrigger() --�һ����
	--TriggerCondition( 1, HasItem, 4809, 30 )
	--TriggerCondition( 1, HasItem, 3909, 2 )
	--TriggerCondition(1, HasLeaveBagGrid, 1)
	--TriggerCondition(1, KitbagLock, 0 )
        --TriggerAction( 1, TakeItem, 4809, 30 )
	--TriggerAction( 1, TakeItem,  3909, 2 )
	--TriggerAction( 1, GiveItem,1121, 1,4 )
	--TriggerFailure( 1, JumpPage, 8 ) 
	--Talk(6, "С���:�Ϲ������Ҫ30���Ϲ�ͷ��2��ʳ��ˮ��")
	--Text( 6, "ȷ������",MultiTrigger, GetMultiTrigger(), 1) 
	
	--InitTrigger() --�һ����
	--TriggerCondition( 1, HasItem, 2419, 20 )
	--TriggerCondition( 1, HasItem, 3909, 2 )
	--TriggerCondition(1, HasLeaveBagGrid, 1)
	--TriggerCondition(1, KitbagLock, 0 )
        --TriggerAction( 1, TakeItem, 2419, 20 )
	--TriggerAction( 1, TakeItem,  3909, 2 )
	--TriggerAction( 1, GiveItem,1122, 1,4 )
	--TriggerFailure( 1, JumpPage, 8 ) 
	--Talk(7, "С���:���������Ҫ20�������Ĺ�ͷ��2��ʳ��ˮ��")
	--Text( 7, "ȷ������",MultiTrigger, GetMultiTrigger(), 1) 
	
	--Talk( 8, "С���:�������ƺ�û���㹻���������������Ʒ��!�������ı���������,��ȷ�����ı�������һ���ո�")
	
	AddNpcMission ( 703 )
	AddNpcMission	(1044)
	AddNpcMission	(1096)
	AddNpcMission	(1155)
	AddNpcMission	(1207)
	AddNpcMission	(58)
	AddNpcMission	(59)
	AddNpcMission	(60)
	AddNpcMission(	1221	)


end
-----------------------------------------------------------------С�����������----------------------------------------------------------------------------------------------




------------------------------------------------------------------
--								--
--								--
------------------------����������˹����---------------------------
--			221925,274925				--
--								--
------------------------------------------------------------------
function r_talk01 ()
	
	Talk( 1, "˹����:���,���������Ǹ���������еİ�?��ʲô���԰����ô?" )
	Text( 1, "����˭?", JumpPage, 2)
	Text( 1, "��������?", JumpPage, 3 )
	
	Text( 1, "�Ҵ����˽���,�ټ�.", JumpPage, 4 )

	Talk( 2, "˹����:������������е�ָ����˹����,��������ǽ��һЩ�ճ�������͸���һ����ָ��,����ʲô���ѿ�������������,����ÿ�����������ǵ������ҵ�ְ��." )
	Text( 2, "����", JumpPage, 1)

	Talk( 3, "˹����:���Ǽ��ɴ�½��ٵĳ���:����֮��,�ǵ¶�ά����������һ������,����Զ��ս��,�������,����˹������������Ӿ���Ӣ���쵼,���ǲ��н���ĳɾ�." )
	Text( 3, "����", JumpPage, 1)

	Talk( 4, "˹����:�õ�,������Ժ�������Ļ�,��ʱ������������." )
	Text( 4, "�ð�,�һ�����֪��һЩ����", JumpPage, 5)
	
	Talk( 5, "˹����:����ô����ô,�㾡���ʰ�." )
	Text( 5, "����֪������֮�Ǻ͵¶�ά���������������Ӿ�������", JumpPage, 6)
	
	Talk( 6, "˹����:����ǰ,��ʱ�ļ��ɵ۹�ͬħ��֮���ս���Ѿ������˺ܾ�,�����Ա�¶�ά����������ֶ���������Ӿ�������������е������뿪��û��ļ��ɵ۹��׶�.��������30��ŵִ��˷��ĵĶ��������ڴ˽����˳���.�¶�ά������������������Χ�Ƶĳ�������Ϊ����֮��,ͬʱ��������.�������Ӿ����常������ӹ��˳ǰ���쵼Ȩ,��ƾ����׿Խ����ҵͷ�Ժ�̸�м���,Ϊ��֮�ǵ�����Ȩ������,�Ӿ����˱��������Ϊ����֮��." )
	--Text( 6, "��!�����簡.", JumpPage, 7)

	InitTrigger()

	TriggerCondition( 1, NoRecord, 500 )

	TriggerAction( 1, CloseTalk )
	TriggerAction( 1, AddExp, 100, 200 )
	TriggerAction( 1, SetRecord, 500 )
	TriggerAction( 1, AddMoney, 100 )
	
	Talk( 7, "˹����:��Ϊһ��ΰ����е�ָ����,�����˽����ǵĳ��к�,�ҽ��������������Ĵ���:ð�շ�100�����.��LV5��ǰ�㻹���Ե����ǵ�ҽ�ƻ�ʿ����ѻظ�HP!��Ȼ,����һ����������֤��!" )
	Text( 7, "лл�㿩!",  MultiTrigger, GetMultiTrigger(), 1)

	Talk( 8, "˹����:�������,����������Ҫ����������Ϊ����!" )
	Text( 8, "лл,ûʲô�������й��",  CloseTalk )


	InitTrigger()

	TriggerCondition( 1, HasRecord, 500 )
	TriggerAction( 1, JumpPage, 8 )
	TriggerFailure( 1, JumpPage, 1 )

	Start( GetMultiTrigger(), 1 )

----------------ע������

	AddNpcMission ( 203 )
	AddNpcMission ( 204 )
	AddNpcMission ( 205 )
	AddNpcMission ( 206 )
	AddNpcMission ( 221 )
	AddNpcMission ( 222 )
	AddNpcMission ( 1002 )
	AddNpcMission ( 1057 )
	AddNpcMission ( 1112 )
	AddNpcMission ( 1166 )
	AddNpcMission ( 55 )
	AddNpcMission ( 56 )
	AddNpcMission ( 57 )
	AddNpcMission ( 1220 )
	AddNpcMission ( 319 )
	AddNpcMission ( 325 )
	AddNpcMission ( 326 )
---------eleven
	AddNpcMission ( 5037 )	



	MisListPage(8)
end 
---------------<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<NPC ��˹���ء�������!
----------------------------------------------------------
--							--
--							--
--		������[������]				--
--							--
--		227725,276925				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk02 ()

	
	Talk( 1, "������:��������ð�." )
	--Text( 1, "�氮������", JumpPage, 2)
	--Text( 1, "10���氮�����Ӷһ�", JumpPage, 3)
	--Text( 1, "100���氮�����Ӷһ�", JumpPage, 4)
	--Text( 1, "1000���氮�����Ӷһ�", JumpPage, 5)
--	Text( 1, "ʹ�á�з�硱�͡�����з�ü��ء��һ�з��", JumpPage, 6)
--	Text( 1, "ʹ���;�ֵΪ��0����з��һ�з��", JumpPage, 7)
	Text( 1, "�뿪", CloseTalk)
	
	
	Talk( 2, "������:���ĵȴ�����Ĵ���,���粥���氮������,�ջ��������.1��������ˮ��1���λû��ꡢ1����������ʯ��1������֮�ľ�������һ���氮������." )
	Text( 2, "�һ��氮������", GetChaName_21, 1 )

	Talk( 3, "������:10���氮���ӿ��Զһ������ɿ���1��")
	Text(3,"ȷ���һ�",  GetChaName_22, 1)

	Talk( 4, "������:100���氮���ӿ��Զһ�Ŭ��������3��")
	Text(4,"ȷ���һ�",  GetChaName_23, 1)

	Talk( 5, "������:1000���氮���ӿ��Զһ�����4���Ʊ1��")
	Text(5,"ȷ���һ�",  GetChaName_24, 1)
	
	Talk(6,"�����̣�����ʢ��֮з����ͣ���Ҫ�������1����з�硱���̳��й����1��������з�ü��ء���������������������Ĵ󺣵�����ɭ������Ʒ���˲˶�����������װ������ѣ������ǹ�ͬ�ڴ��漣�Ľ��٣�")	
	InitTrigger()                                                   --------1��з��
	TriggerCondition(1, HasItem, 0058, 1)               ---------з��
	TriggerCondition(1, HasItem, 0060, 1)               ---------з��
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerCondition(1, KitbagLock, 0 )
	TriggerAction(1, TakeItem, 0058, 1)
	TriggerAction(1, TakeItem, 0060, 1)
	TriggerAction(1, GiveItem, 0059, 1, 4)              ----------з��
	TriggerFailure(1, JumpPage, 8)
	Text(6,"����з�����", MultiTrigger, GetMultiTrigger(), 1) 

	Talk(7,"�����̣���֮�Ժ�������ǳɹ��Ĺؼ������������������2��������5���з����Ұɣ���з����;�ֵ����Ϊ0�������������ɴ�½��з�����ȱ��ճ����ˣ�������һ��ȴ���δ֪�ľ�ϲ��")
	InitTrigger()                                                   --------1��з��
	TriggerCondition(1, HasItem, 0058, 1)               ---------з�� 
	TriggerCondition(1, crablife)
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction(1, TakeItem, 0058, 1)
	TriggerAction(1, GiveItem, 0059, 1, 4)              ----------з��
	TriggerFailure(1, JumpPage, 9)
	Text(7, "����з�����", MultiTrigger, GetMultiTrigger(), 1) 

	Talk(8, "��ȷ����������з����̳��ﹺ��ġ�����з�ü��ء�ร�")

	Talk(9, "�װ������ѣ����������ϲ���з���з����δ����5��ľ������������;�ֵδ��0ʱ��������������ֻ�еȴ���")
		

	MisListPage(1)

	AddNpcMission ( 282 )
	AddNpcMission ( 283 )
	AddNpcMission	(1026)
	AddNpcMission	(1084)
	AddNpcMission	(1137)
	AddNpcMission	(1189)
	AddNpcMission(	1224	)
	AddNpcMission(	373	)
	AddNpcMission(	374	)
	AddNpcMission(	388	)
	AddNpcMission( 906 )

-----------------�����̡�����---------��ţ
	AddNpcMission	(5631)
	AddNpcMission	(5632)

-------------------�����̡�����---------����ʮ�¹���
--	AddNpcMission  (5865)
--	AddNpcMission  (5866)
--	AddNpcMission  (5867)


end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�����̽���




----------------------------------------------------------
--							--
--							--
--		������[ҩ�����ˡ�����ķ]			--
--							--
--		224575,277025				--
----------------------------------------------------------
function r_talk03 ()

	Talk( 1, "��ķ:���,��ӭ����.�ҵ����а�������õ�ҩ��Ŷ,ȫ�������Լ��ֵ�,������." )
	Text( 1, "����", BuyPage)
	--Text( 1, "������!", SalePage)
	Text( 1, "����ظ�ҩ��", JumpPage, 5)


	Talk( 4, "��ķ:�ܺ�,���Ѿ�������Lv9��,10���Ϳ��Ծ�ְ��.���������ȥ�Ҿ�ְ�˽��ܾ�ְ������.��ʿ�ľ�ְ���ǰ����ǵı��أ�����:2192,2767��,ҩʦ�ľ�ְ����ɳᰳǵĴ���١��ʵ�ά��������:862,3500��,�����˵ľ�ְ���Ǳ��Ǳ��Ľ�ʿ����ŷ������:1365,570��.���ڱ��Ǳ���ɳᰳ�·;ңԶ,�����ͨ���ſڵĴ���ʹ���Լ����͵�Ŀ�ĵ�.ף��һ·����Ŷ." )
	Text( 4, "����", BuyPage)
	--Text( 4, "������!", SalePage )
	Text( 4, "����ظ�ҩ��", JumpPage, 5)

---------------�����ʲ�ҩˮ
	InitTrigger()
	TriggerCondition( 1, HasItem, 1779, 1 )
	TriggerCondition( 1, HasItem, 3129, 10 )
	TriggerCondition( 1, HasMoney, 50 )
	TriggerAction( 1, TakeMoney, 50 )
	TriggerAction( 1, TakeItem, 3129, 10 )
	TriggerAction( 1, TakeItem, 1779, 1 )
	TriggerAction( 1, GiveItem, 3133, 1, 4 )
	TriggerAction( 1, JumpPage, 6 )
	TriggerFailure( 1, JumpPage, 7 )
	Talk( 5, "��ķ:�����˾�Ҫ��ҩ,ҩ�����ܲ���!����,˵��,����Ҫʲôҩ?" )
	Text( 5, "�����ʲ�ҩˮ", MultiTrigger, GetMultiTrigger(), 1 )
	--------------�������񻨲�
	InitTrigger()
	TriggerCondition( 1, HasItem, 1779, 1 )
	TriggerCondition( 1, HasItem, 3130, 10 )
	TriggerCondition( 1, HasMoney, 50 )
	TriggerAction( 1, TakeMoney, 50 )
	TriggerAction( 1, TakeItem, 3130, 10 )
	TriggerAction( 1, TakeItem, 1779, 1 )
	TriggerAction( 1, GiveItem, 3134, 1, 4 )
	TriggerAction( 1, JumpPage, 6 )
	TriggerFailure( 1, JumpPage, 8 )
	Text( 5, "�������񻨲�", MultiTrigger, GetMultiTrigger(), 1 )
	-------------------�ϳ����������
	InitTrigger()
	TriggerCondition( 1, HasItem, 1779, 1 )
	TriggerCondition( 1, HasItem, 3131, 10 )
	TriggerCondition( 1, HasMoney, 50 )
	TriggerAction( 1, TakeMoney, 50 )
	TriggerAction( 1, TakeItem, 3131, 10 )
	TriggerAction( 1, TakeItem, 1779, 1 )
	TriggerAction( 1, GiveItem, 3135, 1, 4 )
	TriggerAction( 1, JumpPage, 6 )
	TriggerFailure( 1, JumpPage, 9 )
	Text( 5, "�ϳ����������", MultiTrigger, GetMultiTrigger(), 1 )
	-------------------������ѿ��
	InitTrigger()
	TriggerCondition( 1, HasItem, 1779, 1 )
	TriggerCondition( 1, HasItem, 3132, 10 )
	TriggerCondition( 1, HasMoney, 50 )
	TriggerAction( 1, TakeMoney, 50 )
	TriggerAction( 1, TakeItem, 3132, 10 )
	TriggerAction( 1, TakeItem, 1779, 1 )
	TriggerAction( 1, GiveItem, 3136, 1 , 4)
	TriggerAction( 1, JumpPage, 6 )
	TriggerFailure( 1, JumpPage, 10 )
	Text( 5, "������ѿ��", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 6, "��ķ:һ�ֽ�Ǯһ�ֽ���.Ǯ��������,������Ҫ�Ķ���,���ú�." )
	Talk( 7, "��ķ:��,��Ҫ10��ҩ�ò�Ҷ��1��ҩƿ�Ӳ��ܺϳ�1���ʲ�ҩˮ��,�����㻹�ø�50G." )
	Talk( 8, "��ķ:��,��Ҫ10���λû����1��ҩƿ�Ӳ��ܺϳ�1ƿ���񻨲���,�����㻹�ø�50G." )
	Talk( 9, "��ķ:��,��Ҫ10�������ʵ��1��ҩƿ�Ӳ��ܺϳ�1ƿ�����������,�����㻹�ø�50G." )
	Talk( 10, "��ķ:��,��Ҫ10�������ѿ��1��ҩƿ�Ӳ��ܺϳ�1ƿ��ѿ����,�����㻹�ø�50G." )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)
	Other(	3143	)
	--Leo
	Other(	1576	)
	Other(	4049	)
	Other(	4050	)
	Other(	1578	)
	Other(	4060	)
	Other(	4055	)
	Other(	4061	)
	Other(	2225	)
	Other(	4057	)
	Other(	1768	)



--����д����ļ��


-----------����9��������ҿ���תְ
	--InitTrigger()
	--TriggerCondition( 1, LvCheck, ">", 8 )
	--TriggerCondition( 1, LvCheck, "<", 10 )
	---TriggerAction( 1, JumpPage, 4 )
	--TriggerFailure( 1, JumpPage, 1 )

	--Start( GetMultiTrigger(), 1 )

---------------------ע������
	MisListPage(1)

	AddNpcMission ( 707 )
	--AddNpcMission ( 733 )
	AddNpcMission ( 738 )
	--AddNpcMission ( 739 )
	AddNpcMission ( 214 )
	AddNpcMission ( 215 )
	AddNpcMission ( 217 )
	AddNpcMission ( 218 )
	AddNpcMission ( 219 )
	AddNpcMission ( 220 )
	AddNpcMission	(1046)
	AddNpcMission	(1208)
	AddNpcMission	(73)
	AddNpcMission	(74)
	AddNpcMission	(75)
	--AddNpcMission	(913)
	--AddNpcMission	(914)
	--AddNpcMission	(915)
	--AddNpcMission	(916)
-------------eleven
	AddNpcMission	(5027)
	AddNpcMission	(5035)
	AddNpcMission	(5036)

	MisListPage(4)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<ҩ�����ˡ�����ĸ����



----------------------------------------------------------
--							--
--							--
--		������[��ʿС�㡪����]			--
--							--
--		224575,277025				--
----------------------------------------------------------

---------------��Ѫ�ָ����ж�


----------------��ͨ�Ի���ʼ
function r_talk04 ()

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 6 )
	TriggerCondition( 1, HasRecord, 500 )
	TriggerAction( 1, ReAll )
	TriggerCondition( 2, HasMoney, 200 )
	TriggerAction( 2, TakeMoney, 200 )
	TriggerAction( 2, ReAll )
	TriggerFailure( 2, JumpPage, 2 )

	Talk( 1, "��:���,���ǰ�����ҽ�����Ļ�ʿ��,�����������˿�����������!" )
	Text( 1, "�߼�����", MultiTrigger,GetMultiTrigger(),2)

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 6 )
	TriggerCondition( 1, HasRecord, 500 )
	TriggerAction( 1, ReHp, 50 )
	TriggerCondition( 2, HasMoney, 50 )
	TriggerAction( 2, TakeMoney, 50 )
	TriggerAction( 2, ReHp,50 )
	TriggerFailure( 2, JumpPage, 3 )

	Text( 1, "����", MultiTrigger,GetMultiTrigger(),2)
	--Text( 1, "������ֻ", JumpPage, 10)

	Talk( 2, "��:�Բ���,�߼�������Ҫ200���,����ҽҩ�Ѳ����ˡ���" )

	Talk( 3, "��:�Բ���,������Ҫ50���,����ҽҩ�Ѳ����ˡ���" )

	Talk( 4, "��û��ʲô�ż���,�����ʹ�����" )

	Talk( 5, "��?������������û������׷���Ű�,����,лл!Ҳʲô�ö�����л��,���Ǯ�����°�." )
		
	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 6 )
	TriggerCondition( 1, HasRecord, 500 )
	TriggerAction( 1, ReAll )
	TriggerCondition( 2, HasMoney, 200 )
	TriggerAction( 2, TakeMoney, 200 )
	TriggerAction( 2, ReAll )
	TriggerFailure( 2, JumpPage, 2 )

	Talk( 6, "��:���,���ǰ�����ҽ�����Ļ�ʿ��,�����������˿�����������!" )
	Text( 6, "�߼�����", MultiTrigger,GetMultiTrigger(),2)

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 6 )
	TriggerCondition( 1, HasRecord, 500 )
	TriggerAction( 1, ReHp, 50 )
	TriggerCondition( 2, HasMoney, 50 )
	TriggerAction( 2, TakeMoney, 50 )
	TriggerAction( 2, ReHp,50 )
	TriggerFailure( 2, JumpPage, 3 )

	Text( 6, "����", MultiTrigger,GetMultiTrigger(),2)
	

	InitTrigger()
	TriggerCondition( 1, HasMission, 53 )
	TriggerCondition( 1, HasFlag, 53, 1 )
	TriggerCondition( 1, NoRecord, 53 )
	TriggerCondition( 1, NoFlag, 53, 4 )
	TriggerCondition( 1, HasItem, 2304, 1 )
	TriggerAction( 1, JumpPage, 6 )
	TriggerFailure( 1, JumpPage, 1 )

	Start( GetMultiTrigger(), 1 )
	AddNpcMission	(1048)
	AddNpcMission	(1210)
	AddNpcMission	(920)-----------------------------------------
	AddNpcMission	(921)

	MisListPage(6)
	

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<��ʿС�㡪����         ������



----------------------------------------------------------
----							--
--							--
--		������[�ư�Ů - ����]			--
--							--
--		225325,278875				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk05 ()

	Talk( 1, "����:��,���,���ǵ���.����ˮ����?֪����˵�еľ�������?Ҫ�����ܸ��ҽ������ð�վ���,�Ҿ������һ��!" )
	Text( 1, "���", BuyPage )
	Text(1, "��������",JumpPage,4)
	--Text(1, "�������������һ�",JumpPage,7)
	--Text( 1, "����ʤ=�ûر�", JumpPage, 9)

	InitTrade()
	Other(	3916	)

	Talk( 2, "����:��˵���ɽ��˱���û����?��������һƿ,����ֻ��һƿ����,�������־Ƶ�ԭ�Ϻ����ҵ�,�������Ҫ�Ļ��͵ø�����100000������" )
	InitTrigger()
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeMoney, 100000 )
	TriggerAction( 1, GiveItem, 4072, 1, 4 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 2, "ɽ��˱���", MultiTrigger,GetMultiTrigger(),1)

	Talk( 3, "����:�ƺ�����ֽ𲻹�Ŷ?��ô�߹�ľƿɲ���������������������Ŷ,׬����Ǯ������." )

	Talk(4,"�����ⶫ�������õ�,����������������Ĺ���,һ����˵Խ����Ե,Խϲ���������˵���,����Խ��!��Ȼ,��Ҳ�����������������������ȡһЩ����")
	Text(4,"�������ҵ���������,�������콱��", JumpPage,5)

	Talk(5,"Ŀǰ������ȡ�Ľ��������¼���,������ȡ������ͬʱ,�һ���Ӧ�Ŀ۳����������Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasCredit,20 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, DelRoleCredit, 20 )
	TriggerAction( 1, GiveItem, 2602,1,4 )
	TriggerFailure( 1, JumpPage, 6)
	Text(5,"�������л��� : ��Ҫ����20" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasCredit,200 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, DelRoleCredit, 200 )
	TriggerAction( 1, GiveItem, 2603,1,4 )
	TriggerFailure( 1, JumpPage, 6)
	Text(5,"�м����л��� : ��Ҫ����200" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasCredit,2000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, DelRoleCredit, 2000 )
	TriggerAction( 1, GiveItem, 2604,1,4 )
	TriggerFailure( 1, JumpPage, 6)
	Text(5,"�߼����л��� : ��Ҫ����2000" ,MultiTrigger,GetMultiTrigger(),1)
	Talk(6,"�뱣֤���ı������пո�,ͬʱ����δ������״̬,Ҫ������������������Ŷ,����������Ϊ�ֵĺ����������Ұ�,˳��������С����,�������ո�ͽ��.....",CloseTalk)

	Talk(7,"���ã������Ǻ������壬����ֻ�������������ṩ��������Ҫ�һ�ʲô��Ҫ֪���һ���,�һ���Ӧ�Ŀ۳����������Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasCredit,500 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, DelRoleCredit, 500 )
	TriggerAction( 1, GiveItem, 855,5,4 )
	TriggerAction( 1, JumpPage,8 )
	TriggerFailure( 1, JumpPage, 6)
	Text(7,"����Ӳ��5ö : ��Ҫ����500" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasCredit,5000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, DelRoleCredit, 5000 )
	TriggerAction( 1, GiveItem, 3094,3,4 )
	TriggerAction( 1, JumpPage,8 )
	TriggerFailure( 1, JumpPage, 6)
	Text(7,"Ŭ��������3�� : ��Ҫ����5000" ,MultiTrigger,GetMultiTrigger(),1)


	InitTrigger()
	TriggerCondition( 1, HasCredit,20000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, DelRoleCredit, 20000 )
	TriggerAction( 1, GiveItem, 0610,1,4 )
	TriggerAction( 1, JumpPage,8 )
	TriggerFailure( 1, JumpPage, 6)
	Text(7,"���������Ա�1��: ��Ҫ����2��" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasCredit,50000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, DelRoleCredit, 50000 )
	TriggerAction( 1, GiveItem, 0885,1,4 )
	TriggerAction( 1, JumpPage,8 )
	TriggerFailure( 1, JumpPage, 6)
	Text(7,"һ������ʯ1�� : ��Ҫ����5��" ,MultiTrigger,GetMultiTrigger(),1)


	InitTrigger()
	TriggerCondition( 1, HasCredit,200000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, DelRoleCredit, 200000 )
	TriggerAction( 1, GiveItem, 0862,1,4 )
	TriggerAction( 1, JumpPage,8 )
	TriggerFailure( 1, JumpPage, 6)
	Text(7,"����1�� : ��Ҫ����20��" ,MultiTrigger,GetMultiTrigger(),1)


	InitTrigger()
	TriggerCondition( 1, HasCredit,600000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, DelRoleCredit, 600000 )
	TriggerAction( 1, GiveItem, 1012,1,4 )
	TriggerAction( 1, JumpPage,8 )
	TriggerFailure( 1, JumpPage, 6)
	Text(7,"����֮��1�� : ��Ҫ����60��" ,MultiTrigger,GetMultiTrigger(),1)

	Talk(8,"��ӭ�ٴι��ٺ�������!�������塢��������,����Ŭ����!")

--	Talk( 9, "���ã���������ֻ�����������˿��š�ֻ�������㹻�������������������ﻻ����������Ҫ�Ķ���������ͬʱ����Ҳ��۳�����һ���־���Ӳ����Ϊ������Ŷ��")
--	
--	InitTrigger()
--	TriggerCondition( 1, HasCredit,5 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerCondition( 1, HasItem, 855, 5)
--	TriggerAction( 1, DelRoleCredit, 5 )
--	TriggerAction( 1, TakeItem, 855, 5)
--	TriggerAction( 1, GiveItem, 1024,1,4 )
--	TriggerAction( 1, JumpPage,10 )
--	TriggerFailure( 1, JumpPage, 11)
--	Text(9,"�߼������: ��Ҫ����5������Ӳ��5��" ,MultiTrigger,GetMultiTrigger(),1)
--
--	InitTrigger()
--	TriggerCondition( 1, HasCredit,10 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerCondition( 1, HasItem, 855, 10)
--	TriggerAction( 1, DelRoleCredit, 10 )
--	TriggerAction( 1, TakeItem, 855, 10)
--	TriggerAction( 1, GiveItem, 0456,1,4 )
--	TriggerAction( 1, JumpPage,10 )
--	TriggerFailure( 1, JumpPage, 11)
--	Text(9,"ǿ����ʯ: ��Ҫ����10������Ӳ��10��" ,MultiTrigger,GetMultiTrigger(),1)
--
--	InitTrigger()
--	TriggerCondition( 1, HasCredit,20 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerCondition( 1, HasItem, 855, 20)
--	TriggerAction( 1, DelRoleCredit, 20 )
--	TriggerAction( 1, TakeItem, 855, 20)
--	TriggerAction( 1, GiveItem, 0455,1,4 )
--	TriggerAction( 1, JumpPage,10 )
--	TriggerFailure( 1, JumpPage, 11)
--	Text(9,"ǿ������: ��Ҫ����20������Ӳ��20��" ,MultiTrigger,GetMultiTrigger(),1)
--
--	InitTrigger()
--	TriggerCondition( 1, HasCredit,30 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerCondition( 1, HasItem, 855, 30)
--	TriggerAction( 1, DelRoleCredit, 30 )
--	TriggerAction( 1, TakeItem, 855, 30)
--	TriggerAction( 1, GiveItem, 0453,1,4 )
--	TriggerAction( 1, JumpPage,10 )
--	TriggerFailure( 1, JumpPage, 11)
--	Text(9,"�ۺϾ���: ��Ҫ����30������Ӳ��30��" ,MultiTrigger,GetMultiTrigger(),1)
--
--	InitTrigger()
--	TriggerCondition( 1, HasCredit,50 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerCondition( 1, HasItem, 855, 50)
--	TriggerAction( 1, DelRoleCredit, 50 )
--	TriggerAction( 1, TakeItem, 855, 50)
--	TriggerAction( 1, GiveItem, 0332,1,4 )
--	TriggerAction( 1, JumpPage,10 )
--	TriggerFailure( 1, JumpPage, 11)
--	Text(9,"�����Ʊ: ��Ҫ����50������Ӳ��50��" ,MultiTrigger,GetMultiTrigger(),1)
--
--	InitTrigger()
--	TriggerCondition( 1, HasCredit,80 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerCondition( 1, HasItem, 855, 80)
--	TriggerAction( 1, DelRoleCredit, 80 )
--	TriggerAction( 1, TakeItem, 855, 80)
--	TriggerAction( 1, GiveItem, 0583,1,4 )
--	TriggerAction( 1, JumpPage,10 )
--	TriggerFailure( 1, JumpPage, 11)
--	Text(9,"�ﵺ��Ʊ: ��Ҫ����80������Ӳ��80��" ,MultiTrigger,GetMultiTrigger(),1)
--
--	InitTrigger()
--	TriggerCondition( 1, HasCredit,120 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerCondition( 1, HasItem, 855, 120)
--	TriggerAction( 1, DelRoleCredit, 120 )
--	TriggerAction( 1, TakeItem, 855, 120)
--	TriggerAction( 1, GiveItem, 3094,1,4 )
--	TriggerAction( 1, JumpPage,10 )
--	TriggerFailure( 1, JumpPage, 11)
--	Text(9,"Ŭ��������: ��Ҫ����120������Ӳ��120��" ,MultiTrigger,GetMultiTrigger(),1)
--
--	Text(9,"��һҳ", JumpPage , 12)
--
--	Talk(12, "���ã���������ֻ�����������˿��š�ֻ�������㹻�������������������ﻻ����������Ҫ�Ķ���������ͬʱ����Ҳ��۳�����һ���־���Ӳ����Ϊ������Ŷ��")
--
--	InitTrigger()
--	TriggerCondition( 1, HasCredit,150 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerCondition( 1, HasItem, 855, 150)
--	TriggerAction( 1, DelRoleCredit, 150 )
--	TriggerAction( 1, TakeItem, 855, 150)
--	TriggerAction( 1, GiveItem, 1095,1,4 )
--	TriggerAction( 1, JumpPage,10 )
--	TriggerFailure( 1, JumpPage, 11)
--	Text(12,"99��ը��: ��Ҫ����150������Ӳ��150��" ,MultiTrigger,GetMultiTrigger(),1)
--
--	InitTrigger()
--	TriggerCondition( 1, HasCredit,200 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerCondition( 1, HasItem, 855, 200)
--	TriggerAction( 1, DelRoleCredit, 200 )
--	TriggerAction( 1, TakeItem, 855, 200)
--	TriggerAction( 1, GiveItem, 2844,1,4 )
--	TriggerAction( 1, JumpPage,10 )
--	TriggerFailure( 1, JumpPage, 11)
--	Text(12,"����4���Ʊ: ��Ҫ����200������Ӳ��200��" ,MultiTrigger,GetMultiTrigger(),1)
--
--	InitTrigger()
--	TriggerCondition( 1, HasCredit,300 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerCondition( 1, HasItem, 855, 300)
--	TriggerAction( 1, DelRoleCredit, 300 )
--	TriggerAction( 1, TakeItem, 855, 300)
--	TriggerAction( 1, GiveItem, 3336,1,4 )
--	TriggerAction( 1, JumpPage,10 )
--	TriggerFailure( 1, JumpPage, 11)
--	Text(12,"�����: ��Ҫ����300������Ӳ��300��" ,MultiTrigger,GetMultiTrigger(),1)
--
--	InitTrigger()
--	TriggerCondition( 1, HasCredit,1000 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerCondition( 1, HasItem, 855, 1000)
--	TriggerAction( 1, DelRoleCredit, 1000 )
--	TriggerAction( 1, TakeItem, 855, 1000)
--	TriggerAction( 1, GiveItem, 3088,1,4 )
--	TriggerAction( 1, JumpPage,10 )
--	TriggerFailure( 1, JumpPage, 11)
--	Text(12,"28�񱳰�: ��Ҫ����1000������Ӳ��1000��" ,MultiTrigger,GetMultiTrigger(),1)
--
--	InitTrigger()
--	TriggerCondition( 1, HasCredit,4700 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerCondition( 1, HasItem, 855, 4700)
--	TriggerAction( 1, DelRoleCredit, 4700 )
--	TriggerAction( 1, TakeItem, 855, 4700)
--	TriggerAction( 1, GiveItem, 1028,1,4 )
--	TriggerAction( 1, JumpPage,10 )
--	TriggerFailure( 1, JumpPage, 11)
--	Text(12,"Ħ����ʯ: ��Ҫ����4700������Ӳ��4700��" ,MultiTrigger,GetMultiTrigger(),1)
--
--	Text(12, "��һҳ", JumpPage , 9 )
--
--	Talk( 10, "лл�ݹˣ���ӭ�ٴι���")
--
--	Talk( 11, "�뱣֤���ı������пո�,ͬʱ����δ������״̬,Ҫ���������������������߾���Ӳ�Ҳ�����Ŷ.....",CloseTalk)

	InitTrigger()
	TriggerCondition( 1, HasRecord, 255 )
	TriggerCondition( 1, NoItem, 4072, 1 )
	TriggerCondition( 1, NoRecord, 242 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerFailure( 1, JumpPage, 1 )


	Start( GetMultiTrigger(), 1 )

	MisListPage(2)

	AddNpcMission ( 268 )
	AddNpcMission ( 269 )
	AddNpcMission ( 288 )
	AddNpcMission ( 502 )
	AddNpcMission ( 334 )
	AddNpcMission ( 6081 )

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�ư�Ů - ���Ƚ���



----------------------------------------------------------
--							--
--							--
--		������[Сɽ��]				--
--							--
--		219350,273050				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk06 ()
	
	
	Talk( 1, "Сɽ��:�����˾���Ҫ����ð��,��Ҫ��,���������ྫ��,�����������ӿ�Ĵ���?������Ǳ�ɳĮ��û����ΰ�����?��û��ȥ���Ǳ������صļ�į֮��?" )
	--Text( 1, "ѧϰ��������", BuyPage )
	Text( 1, "������û������˵����!", CloseTalk)
	Text(1,"��Сɽ���������ϵĻ�е�ں�",JumpPage,2)
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 3933, 10 )
	TriggerCondition( 1, HasMoney, 5000 )
	TriggerAction( 1, TakeItem, 3933, 10 )
	TriggerAction( 1, TakeMoney, 5000 )
	TriggerAction( 1, GiveItem, 1812, 1, 4 )
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "Сɽ��:�ס���û�뵽���Ȼ����ô���е�ں�,��������10����е�ں˸��ҵĻ�,�ҿ�����������һ���Ŵ���λ�Ǹ���.��Ȼ,��������Ҳ��Ҫ���,5000G�Ϳ�����." )
	Text( 2, "�ð���֧����5000G������",  MultiTrigger, GetMultiTrigger(), 1 )
	Text( 2, "�һ��ǿ���һ�°�", CloseTalk)

	Talk(3, "Сɽ��:�ú�Ŷ,������ǹŴ���λ��,�����Դ���ȥ����֮��,���������Ҫ�Ļ�����������.")

	Talk(4, "Сɽ��:�Բ�סŶ,��������10����е�ں����5000G������,�Ҳ��ܸ��������Ŵ���λ��.")

	InitTrade()
	Other(	3243	)
	Other(	3244	)
	Other(	3245	)
	Other(	3246	)
	Other(	3247	)
	Other(	3248	)
	Other(	3249	)
	Other(	3250	)
	Other(	3251	)
	Other(	3252	)
	Other(	3253	)
	Other(	3254	)
	Other(	3255	)
	Other(	3256	)
	Other(	3257	)
	Other(	3258	)
	Other(	3259	)
	Other(	3260	)
	Other(	3261	)
	Other(	3262	)
	Other(	3263	)
	Other(	3264	)
	Other(	3265	)
	Other(	3266	)
	Other(	3267	)
	Other(	3268	)
	Other(	3269	)
	Other(	3270	)
	Other(	3271	)
	Other(	3272	)
	Other(	3273	)
	Other(	3274	)
	Other(	3275	)
	Other(	3276	)
	Other(	3277	)
	Other(	3278	)
	Other(	3279	)
	Other(	3280	)
	Other(	3281	)
	Other(	3282	)
	Other(	3283	)
	Other(	3284	)
	Other(	3285	)
	Other(	3286	)
	Other(	3287	)
	Other(	3288	)
	Other(	3289	)
	Other(	3290	)
	Other(	3291	)
	Other(	3292	)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3933, 10 )
	TriggerCondition( 1, HasMoney, 5000 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerFailure( 1, JumpPage, 1 )

	Start( GetMultiTrigger(), 1 )

	--AddNpcMission ( 748 )
	AddNpcMission	(1045)
	AddNpcMission	(1099)
	AddNpcMission	(1157)
	AddNpcMission	(758)
	AddNpcMission	(103)
	AddNpcMission	(191)
	AddNpcMission	(192)
	AddNpcMission	(193)
	AddNpcMission	(197)
	AddNpcMission(	1225	)
	AddNpcMission(	503	)
	AddNpcMission	(330)
	AddNpcMission	(331)
	AddNpcMission	(332)
	AddNpcMission	(335)
	AddNpcMission	(359)
	AddNpcMission	(360)
	AddNpcMission	(361)
	AddNpcMission	(362)
	AddNpcMission	(363)
	AddNpcMission	(364)
	AddNpcMission	(365)
	AddNpcMission	(366)
	AddNpcMission	(367)
	AddNpcMission	(368)
	AddNpcMission	(369)
	AddNpcMission	(370)
	AddNpcMission	(371)
	AddNpcMission	(522)
------------eleven
	AddNpcMission	(5058)
	AddNpcMission	(5062)
	

	MisListPage(2)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<Сɽ������






----------------------------------------------------------
--							--
--							--
--		������[�ӻ����� - ������]			--
--							--
--		225075,277025				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk07 ()

	Talk( 1, "������:����,��ӭ����.��ʲô��Ϊ��Ч����?" )
	Text( 1, "����", BuyPage )
	Text( 1, "û��,�������",CloseTalk )
	Text( 1, "�һ���ʵ���",JumpPage, 2 )

	InitTrade()
	Other(	3297	)
	Other(	3298	)
	Other(	3164	)
	Other(	3160	)
	Other(	3161	)
	Other(	3165	)
	Other(	3238	)
	Other(	3170	)
	Other(	3293	)
	Other(	3174	)
	Other(	3163	)
	Other(	3176	)
	Other(	3180	)
	Other(	3179	)
	Other(	3177	)
	Other(	3168	)
	Other(	3162	)
	Other(	3166	)
	Other(	3167	)
	Other(	3172	)
	Other(	3173	)
	Other(	3227	)
	Other(	3231	)
	Other(	3228	)
	Other(	3229	)
	Other(	3230	)
	Other(	3232	)
	Other(	3233	)
	Other(	3234	)
	Other(	3235	)
	Other(	3236	)
	Other(	3237	)
	Other(	3225	)
	Other(	3226	)
	Other(	3294	)
	Other(	3295	)
	Other(	3141	)
	Other(	4602	)
	Other(	4603	)
	Other(	4604	)
	Other(	3296	)
	Other(	3299	)
	--baby--�������Lv1
	Other(	2679	)
	Other(	2689	)
	Other(	2699	)
	Other(	2709	)
	--leo
	Other(	1611	)
	Other(	1682	)
	Other(	1842	)
	Other(	1612	)
	Other(	1710	)
	Other(	1693	)
	Other(	4716	)
	Other(	1716	)
	Other(	1711	)
	Other(	3384	)
	Other(	3932	)
	Other(	1619	)
	Other(	2396	)
	Other(	1729	)
	Other(	4459	)
	Other(	1697	)
	Other(	1730	)
	Other(	1712	)
	Other(	1734	)
	Other(	1621	)
	Other(	1703	)
	Other(	3288	)
	--AddNpcMission	(5501)


	---bragi
	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 2588, 1 )
	TriggerCondition( 1, HasItem, 1624, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerAction( 1, TakeItem, 2588, 1 )
	TriggerAction( 1, TakeItem, 1624, 10 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, GiveItem, 2326, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "Ҫ��õ���ʵ��ߵĻ��͵�׼�������ӡ1����1W�����ң�������������һ��3���ɼ�����10��Ŷ" )
	Text( 2, "�ù�ͷ��������ʵ���", MultiTrigger, GetMultiTrigger(), 1)

	---InitTrigger()
	---TriggerCondition( 1, HasLeaveBagGrid, 1 )
	---TriggerCondition( 1, KitbagLock, 0 )
	---TriggerCondition( 1, HasItem, 2588, 1 )
	---TriggerCondition( 1, HasItem, 1842, 10 )
	---TriggerCondition( 1, HasMoney, 10000 )
	---TriggerAction( 1, TakeItem, 2588, 1 )
	---TriggerAction( 1, TakeItem, 1842, 10 )
	---TriggerAction( 1, TakeMoney, 10000 )
	---TriggerAction( 1, GiveItem, 2326, 1 , 4)
	---TriggerAction( 1, JumpPage, 3 )
	---TriggerFailure( 1, JumpPage, 4 )
	---Text( 2, "�÷���������������ʵ���", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 2588, 1 )
	TriggerCondition( 1, HasItem, 4031, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerAction( 1, TakeItem, 2588, 1 )
	TriggerAction( 1, TakeItem, 4031, 10 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, GiveItem, 2326, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2, "��ˮ��ԭʯ��������ʵ���", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 2588, 1 )
	TriggerCondition( 1, HasItem, 3991, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerAction( 1, TakeItem, 2588, 1 )
	TriggerAction( 1, TakeItem, 3991, 10 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, GiveItem, 2326, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2, "��������ľԭľ��������ʵ���", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 2588, 1 )
	TriggerCondition( 1, HasItem, 4011, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerAction( 1, TakeItem, 2588, 1 )
	TriggerAction( 1, TakeItem, 4011, 10 )
	TriggerAction( 1, TakeMoney, 50000 )
	TriggerAction( 1, GiveItem, 2326, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2, "����ˮ������������ʵ���", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3, "������:�ú�Ŷ������Ǻ���Ҫ�Ķ�����." )
	Talk( 4, "������:������û���㹻�Ĳ���Ŷ��Ҳ�п������ı����Ѿ��������߱����ռ䲻��." )

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�ӻ����� - ����������


----------------------------------------------------------
--							--
--							--
--		������[�����������]			--
--							--
--		227459,277722				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk08 ()

	Talk( 1, "�������:�㡭����������.����ĵ硭�����������ӿ�����.Ц����������������!����������" )
	Text( 1, "�������", JumpPage, 2)
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 1777, 1 )
	TriggerCondition( 1, HasItem, 3116, 10 )
	TriggerAction( 1, TakeItem, 3116, 10 )
	TriggerAction( 1, TakeItem, 1777, 1 )
	TriggerAction( 1, GiveItem, 3122, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "�������:�������۹�!�����Ҵ�ţ,��ÿ�춼��������ġ�������ʳ����,����Ʒ�����տ���һ����Ӵ." )
	Text( 2, "��ե�����֭", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1777, 1 )
	TriggerCondition( 1, HasItem, 3117, 10 )
	TriggerAction( 1, TakeItem, 3117, 10 )
	TriggerAction( 1, TakeItem, 1777, 1 )
	TriggerAction( 1, GiveItem, 3123, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 2, "����ɳ���", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1777, 1 )
	TriggerCondition( 1, HasItem, 3118, 10 )
	TriggerAction( 1, TakeItem, 3118, 10 )
	TriggerAction( 1, TakeItem, 1777, 1 )
	TriggerAction( 1, GiveItem, 3124, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 2, "����Ģ����", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1777, 1 )
	TriggerCondition( 1, HasItem, 3119, 10 )
	TriggerAction( 1, TakeItem, 3119, 10 )
	TriggerAction( 1, TakeItem, 1777, 1 )
	TriggerAction( 1, GiveItem, 3125, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 7 )
	Text( 2, "��ե�����޹�֭", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1777, 1 )
	TriggerCondition( 1, HasItem, 3120, 10 )
	TriggerAction( 1, TakeItem, 3120, 10 )
	TriggerAction( 1, TakeItem, 1777, 1 )
	TriggerAction( 1, GiveItem, 3126, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 8 )
	Text( 2, "����������", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3, "�������:��������Ҫ�Ķ���,һ��û͵������,���պ�." )
	Talk( 4, "�������:�Բ���,��û���䷽��Ҫ�Ķ���Ŷ.�����֭��Ҫ10���������1����������������Ӵ." )
	Talk( 5, "�������:�Բ���,��û���䷽��Ҫ�Ķ���Ŷ.ɳ�����Ҫ10��ɳ���1����������������Ӵ." )
	Talk( 6, "�������:�Բ���,��û���䷽��Ҫ�Ķ���Ŷ.Ģ������Ҫ10��Ģ����1����������������Ӵ." )
	Talk( 7, "�������:�Բ���,��û���䷽��Ҫ�Ķ���Ŷ.�����޹�֭��Ҫ10�������޹���1����������������Ӵ." )
	Talk( 8, "�������:�Բ���,��û���䷽��Ҫ�Ķ���Ŷ.��������Ҫ10��������1����������������Ӵ." )
	AddNpcMission	(1023)
	AddNpcMission	(1080)
	AddNpcMission	(1135)
	AddNpcMission	(1186)
	AddNpcMission(	1223	)
	




end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�����������


----------------------------------------------------------
--							--
--							--

	--������[�õ��ϰ塤��������]		--
--							--
--		221150,278125				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk09 ()
	
	
	Talk( 1, "��������:���,��������õ���ϰ�.Ҫ������ס������? ����Ҫ��Ҫ������������ͷ����?" )		
	Text( 1, "����Ⱦ����", JumpPage, 2)
	
	--Text(1, "�����ζ�Ļ���", JumpPage, 10)
	--Text(1, "���ʥ�����", JumpPage, 13)
	
	
---------------------�����ζ�Ļ���
	InitTrigger()
	TriggerCondition( 1, HasItem, 2886, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, TakeItem, 2886,10 )
	TriggerAction( 1, GiveItem, 2895, 1 , 4)
	TriggerAction( 1, JumpPage, 11 )
	TriggerFailure( 1, JumpPage, 12)
	Talk( 10, "��������:����Ҫԭ����10������,��Ȼ�㻹Ҫ֧������10000�����ҵ������")
	Text(10, "ȷ������",  MultiTrigger, GetMultiTrigger(), 1)

	Talk(11, "��������:�����Ҿ����������ζ����,�Ͽ쳢��,ζ����ô��?" )

	Talk( 13, "��������:��ʥ������,ÿ��ֻ������Ŷ!")
	Text(13, "��һ������ʥ�����",  JumpPage, 15)
	Text(13, "�ڶ�������ʥ�����",  JumpPage, 16)
	Text(13, "����������ʥ�����", JumpPage, 17)
	---------------------���ʥ�����
	InitTrigger()
	TriggerCondition( 1, NoRecord, 815 )
	TriggerCondition( 1, HasItem, 2895, 10 )
	TriggerCondition( 1, HasItem, 2894, 1 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, TakeItem, 2895,10 )
	TriggerAction( 1, TakeItem, 2894,1 )
	TriggerAction( 1, GiveItem, 2898, 1 , 4)
	TriggerAction( 1, SetRecord, 815 )
	TriggerAction( 1, JumpPage, 11 )
	TriggerFailure( 1, JumpPage, 14 )
	Talk( 15, "Ҫ��ʥ����Ϳɲ�����,����Ҫԭ����10����ζ�Ļ����1��ʥ��õ������,ʥ��õ�����Ϻ������̳��ܹ��ҵ�,��Ȼ�������ϼ����㻹Ҫ֧������10000�����ҵ������,����ֻ��Ϊÿ����3��")
	Text( 15, "ȷ������",  MultiTrigger, GetMultiTrigger(), 1)

	

	---------------------���ʥ�����
	InitTrigger()
	TriggerCondition( 1, HasRecord, 815 )
	TriggerCondition( 1, NoRecord, 816 )
	TriggerCondition( 1, HasItem, 2895, 10 )
	TriggerCondition( 1, HasItem, 2894, 1 )
	TriggerCondition( 1, HasMoney,1000000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerAction( 1, TakeMoney, 1000000 )
	TriggerAction( 1, TakeItem, 2895,10 )
	TriggerAction( 1, TakeItem, 2894,1 )
	TriggerAction(1, GiveItem, 2898, 1 , 4)
	TriggerAction( 1, SetRecord, 816 )
	TriggerAction( 1, JumpPage, 11 )
	TriggerFailure( 1, JumpPage, 18 )
	Talk(16, "������ʥ�����?����Ҫԭ����10����ζ�Ļ����1��ʥ��õ������,ʥ��õ�����Ϻ������̳��ܹ��ҵ�,��Ȼ�������ϼ����㻹Ҫ֧������1���򺣵��ҵ������,����ֻ��Ϊÿ����3��")
	Text( 16, "ȷ������",  MultiTrigger, GetMultiTrigger(), 1)

	---------------------���ʥ�����
	InitTrigger()
	TriggerCondition( 1, HasRecord, 816 )
	TriggerCondition( 1, NoRecord, 817 )
	TriggerCondition( 1, HasItem, 2895, 10 )
	TriggerCondition( 1, HasItem, 2894, 1 )
	TriggerCondition( 1, HasMoney, 10000000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerAction( 1, TakeMoney, 10000000 )
	TriggerAction( 1, TakeItem, 2895,10 )
	TriggerAction( 1, TakeItem, 2894,1 )
	TriggerAction( 1, GiveItem, 2898, 1 , 4)
	TriggerAction( 1, SetRecord, 817 )
	TriggerAction( 1, JumpPage, 11 )
	TriggerFailure( 1, JumpPage,19 )
	Talk(17, "������ʥ�����?����Ҫԭ����10����ζ�Ļ����1��ʥ��õ������,ʥ��õ�����Ϻ������̳��ܹ��ҵ�,��Ȼ�������ϼ����㻹Ҫ֧������1ǧ�򺣵��ҵ������,����ֻ��Ϊÿ����3��")
	Text( 17, "ȷ������",  MultiTrigger, GetMultiTrigger(), 1)
	Talk( 14, "��������:�������ƺ�û���㹻�������Ƶ���Ʒ���Ǯ��!���ı�������Ҫ��һ���ո�Ŷ.��ȷ���ǵ�һ����ʥ�������?ֻ����3��.")
	Talk( 18, "��������:�������ƺ�û���㹻�������Ƶ���Ʒ���Ǯ��!���ı�������Ҫ��һ���ո�Ŷ.��ȷ���ǵڶ�����ʥ�������?ֻ����3��Ŷ.")
	Talk( 19, "��������:�������ƺ�û���㹻�������Ƶ���Ʒ���Ǯ��!���ı�������Ҫ��һ���ո�Ŷ.��ȷ���ǵ�������ʥ�������?ֻ����3��Ŷ.")
	Talk( 12, "��������:�������ƺ�û���㹻�������Ƶ���Ʒ���Ǯ��!���ı�������Ҫ��һ���ո�Ŷ.")
------------------�����ɫȾ����
	InitTrigger()
	TriggerCondition( 1, HasItem, 1787, 5 )
	TriggerCondition( 1, HasItem, 1657, 1 )
	TriggerCondition( 1, HasItem, 1778, 1 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 1787, 5 )
	TriggerAction( 1, TakeItem, 1657, 1 )
	TriggerAction( 1, TakeItem, 1778, 1 )
	TriggerAction( 1, GiveItem, 1797, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "��������:��ʱ�䶥��һ����ɫ��ͷ��Ҳ�����,��������춼Ҫȥ������һ������.�Ұ������������ɫ��Ⱦ������." )
	Text( 2, "�����ɫȾ����", MultiTrigger, GetMultiTrigger(), 1)
---------------------�����ɫȾ����
	InitTrigger()
	TriggerCondition( 1, HasItem, 1788, 5 )
	TriggerCondition( 1, HasItem, 1657, 1 )
	TriggerCondition( 1, HasItem, 1778, 1 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 1788, 5 )
	TriggerAction( 1, TakeItem, 1657, 1 )
	TriggerAction( 1, TakeItem, 1778, 1 )
	TriggerAction( 1, GiveItem, 1798, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 2, "�����ɫȾ����", MultiTrigger, GetMultiTrigger(), 1)
---------------------�����ɫȾ����
	InitTrigger()
	TriggerCondition( 1, HasItem, 4606, 5 )
	TriggerCondition( 1, HasItem, 1657, 1 )
	TriggerCondition( 1, HasItem, 1778, 1 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 4606, 5 )
	TriggerAction( 1, TakeItem, 1657, 1 )
	TriggerAction( 1, TakeItem, 1778, 1 )
	TriggerAction( 1, GiveItem, 4607, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 8 )
	Text( 2, "�����ɫȾ����", MultiTrigger, GetMultiTrigger(), 1)
---------------------�����ɫȾ����
	InitTrigger()
	TriggerCondition( 1, HasItem, 4608, 5 )
	TriggerCondition( 1, HasItem, 1657, 1 )
	TriggerCondition( 1, HasItem, 1778, 1 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 4608, 5 )
	TriggerAction( 1, TakeItem, 1657, 1 )
	TriggerAction( 1, TakeItem, 1778, 1 )
	TriggerAction( 1, GiveItem, 4609, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 9 )
	Text( 2, "�����ɫȾ����", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3, "��������:��,���Ҷ�����,��ô��͵�����ôƯ����Ⱦ����." )
	Talk( 4, "��������:��ɫȾ������������Ҫ5����ɫȾ�ϡ�1����Ч�����1����ɫ�������ټ���������200G." )
	Talk( 5, "��������:��ɫȾ������������Ҫ5����ɫȾ�ϡ�1����Ч�����1����ɫ�������ټ���������200G." )

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 2 )
	TriggerAction( 1, AddExp, 116688305, 116688305 )
	TriggerAction( 1, AddExpAndType,2,370500,370500)
	TriggerAction( 1, AddMoney, 1000000 )
	TriggerFailure( 1, JumpPage, 7 )
	Talk( 6, "��������:Ϊ����ϲ���PK,�ҽ������Զ�������65����100W��Ǯ." )
	Text( 6, "�õ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 7, "��������:��ֻ�ṩ��1�������������Ļ���." )

	Talk( 8, "��������:��ɫȾ������������Ҫ5����ɫȾ�ϡ�1����Ч�����1����ɫ�������ټ���������200G." )
	Talk( 9, "��������:��ɫȾ������������Ҫ5����ɫȾ�ϡ�1����Ч�����1����ɫ�������ټ���������200G." )

	AddNpcMission	(1029)
	AddNpcMission	(1192)
	------------����-----------��Ϊ����-----------���֮��------------��������----------����̩
	
	--AddNpcMission	(5505)
	--AddNpcMission	(5506)
	--AddNpcMission	(5508)
	--AddNpcMission	(5509)
	--AddNpcMission	(5536)

end 
-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�õ��ϰ塤��������




----------------------------------------------------------
--							--
--							--
--		������[��ķ]				--
--							--
--		222629,272668				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk11 ()
	
	
	Talk( 1, "��ķ:��,����¸�����,֪��С�ף�С�׵���ɶ��?������,����С���ã�Two����!��?����Ц��?�ǵ��һ�һ������ι,����ѽ!" )

	--Text( 1, "��������", JumpPage,2)

	Talk( 2, "��ķ:����ڿ���!������������������?")
	Text( 2, "��������",JumpPage,3)
	Text( 2, "��ɳ����", JumpPage,4)
	Text( 2, "Ŵ������", JumpPage,5)

	InitTrigger() --�һ�������
	TriggerCondition( 1, HasItem, 3037, 1 )
	TriggerCondition( 1, HasItem, 3040, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3037, 1 )
	TriggerAction( 1, TakeItem, 3040, 1 )
	TriggerAction( 1, GiveItem,3043, 1,4 )
	TriggerFailure( 1, JumpPage, 6 ) 
	Talk(3, "��ķ:1��������+1��������=1������,�����տ�ʹ��������10����������60��")
	Text( 3, "ȷ��",MultiTrigger, GetMultiTrigger(), 1) 

	InitTrigger() --�һ���ɳ��
	TriggerCondition( 1, HasItem, 3037, 1 )
	TriggerCondition( 1, HasItem, 3041, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
        TriggerAction( 1, TakeItem, 3037, 1 )
	TriggerAction( 1, TakeItem, 3041, 1 )
	TriggerAction( 1, GiveItem,3044, 1,4 )
	TriggerFailure( 1, JumpPage, 6 ) 
	Talk(4, "��ķ:1��ɳ����+1��������=1��ɳ��,��ɳ�տ�ʹ�����ٶ���15�������нϴ�����Ч��")
	Text( 4, "ȷ��",MultiTrigger, GetMultiTrigger(), 1) 
	
	InitTrigger() --�һ�Ŵ����
	TriggerCondition( 1, HasItem, 3037, 1 )
	TriggerCondition( 1, HasItem, 3042, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
        TriggerAction( 1, TakeItem, 3037, 1 )
	TriggerAction( 1, TakeItem, 3042, 1 )
	TriggerAction( 1, GiveItem,3045, 1,4 )
	TriggerFailure( 1, JumpPage, 6 ) 
	Talk(5, "��ķ:1Ŵ������+1��������=1Ŵ����,Ŵ���տ�ʹ��ɫ�����35%��HP�ָ�")
	Text( 5, "ȷ��",MultiTrigger, GetMultiTrigger(), 1) 
	
	Talk( 6, "��ķ:�������ƺ�û���㹻����������������Ʒ��!�������ı���������,��ȷ�����ı�������һ���ո�.")
	AddNpcMission	(1009)
	AddNpcMission	(1173)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<��ķ



----------------------------------------------------------
--							--
--							--
--		������[ˮ�֡�����]			--
--							--
--		235013,284694				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk12 ()
	
	
	Talk( 1, "����:���,����,����ˮ�ֺ���." )

	InitTrigger()
	TriggerCondition( 1, HasMission, 1043 )
	TriggerCondition( 1, HasRecord, 1042 )
	TriggerCondition( 1, NoRecord, 1058 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "��һ������",MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerAction( 1, SetRecord, 1044 )
	TriggerAction( 1, SetRecord, 1058 )
	TriggerAction( 1, JumpPage, 4 )
	Talk( 2, "ɱ�����ɱ��ˬ��")
	Text( 2, "ˬ",MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerAction( 1, SetRecord, 1045 )
	TriggerAction( 1, SetRecord, 1058 )
	TriggerAction( 1, JumpPage, 5 )
	Text( 2, "��ˬ",MultiTrigger, GetMultiTrigger(), 1  )


	Talk( 3, "����˭���Ҳ���ʶ�㣡")
	Talk( 4, "ˬ���Ǽ����ɡ�")
	Talk( 5, "��ˬ���ǻ�һ������ɱɱ��")

	AddNpcMission	(1039)
	AddNpcMission	(1202)
	AddNpcMission	(80)
	AddNpcMission	(81)
	AddNpcMission	(79)
	----------------����˹-����---01
	AddNpcMission	(5510)
	AddNpcMission ( 6061 )
	AddNpcMission ( 6062 )
	AddNpcMission ( 6063 )
	AddNpcMission ( 6064 )
	AddNpcMission ( 6065 )
	AddNpcMission ( 6066 )
	AddNpcMission ( 6067 )
	AddNpcMission ( 6068 )

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<ˮ�֡�����


----------------------------------------------------------
--							--
--							--
--		������[���г��ɡ�Ħ����]			--
--							--
--		222050,270400				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk13 ()
	
	
	Talk( 1, "Ħ����:���,�������г���Ħ����.�����Ҿ��ֵ���Ŀ,������һ�ʳ����." )
	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, OpenBank )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "���У�ÿ��200G��", MultiTrigger, GetMultiTrigger(), 1)
	Talk( 2, "�Բ���,�����ֽ𲻹�,�޷�֧��ʹ�����еķ���." )

	AddNpcMission	(1050)
	AddNpcMission	(1212)
	AddNpcMission ( 6091 )
	AddNpcMission ( 6092 )


end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<���г��ɡ�Ħ����

----------------------------------------------------------
--							--
--							--
--		������[�����ٽ�������˹]			--
--							--
--		230228,270157				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk14 ()
	
	
	Talk( 1, "����˹:���,���Ǻ����ٽ�����˹,������פ�����Ǻ������´�����߸�����." )
	Text( 1, "�һ���ñ", JumpPage, 3)
	Text( 1, "û��,�������",CloseTalk )

	Talk( 3, "����˹:����������þ���֤�����÷ǳ�ϡ�еľ�ñŶ." )
	Text( 3, "�һ���У��ñ", JumpPage, 4)
	Text( 3, "�һ���У��ñ", JumpPage, 5)
	Text( 3, "�һ���У��ñ", JumpPage, 6)
	Text( 3, "�һ�������ñ", JumpPage, 7)
	Text( 3, "�һ�Ԫ˧��ñ", JumpPage, 8)
	
	Talk( 4, "����˹:��Ҫ�һ���У֮��,��������1����У����֤������." )
	--------------�һ���У֮��
	InitTrigger()
	TriggerCondition( 1, HasItem, 68, 1 )
	TriggerAction( 1, TakeItem, 68, 1 )
	TriggerAction( 1, GiveItem, 90, 1 , 4)
	TriggerFailure( 1, JumpPage, 10 )
	Text( 4, "��Ҫ�һ�", MultiTrigger, GetMultiTrigger(), 1)
	Text( 4, "�´���˵",CloseTalk )

	Talk( 5, "����˹:��Ҫ�һ���У֮��,��������1����У����֤������." )
	--------------�һ���У֮��
	InitTrigger()
	TriggerCondition( 1, HasItem, 69, 1 )
	TriggerAction( 1, TakeItem, 69, 1 )
	TriggerAction( 1, GiveItem, 91, 1 , 4)
	TriggerFailure( 1, JumpPage, 10 )
	Text( 5, "��Ҫ�һ�", MultiTrigger, GetMultiTrigger(), 1)
	Text( 5, "�´���˵",CloseTalk )

	Talk( 6, "����˹:��Ҫ�һ���У֮��,��������1����У����֤������." )
	--------------�һ���У֮��
	InitTrigger()
	TriggerCondition( 1, HasItem, 70, 1 )
	TriggerAction( 1, TakeItem, 70, 1 )
	TriggerAction( 1, GiveItem, 92, 1 , 4)
	TriggerFailure( 1, JumpPage, 10 )
	Text( 6, "��Ҫ�һ�", MultiTrigger, GetMultiTrigger(), 1)
	Text( 6, "�´���˵",CloseTalk )

	Talk( 7, "����˹:��Ҫ�һ�����֮��,��������1����У����֤������." )
	--------------�һ�����֮��
	InitTrigger()
	TriggerCondition( 1, HasItem, 71, 1 )
	TriggerAction( 1, TakeItem, 71, 1 )
	TriggerAction( 1, GiveItem, 93, 1 , 4)
	TriggerFailure( 1, JumpPage, 10 )
	Text( 7, "��Ҫ�һ�", MultiTrigger, GetMultiTrigger(), 1)
	Text( 7, "�´���˵",CloseTalk )

	Talk( 8, "����˹:��Ҫ�һ�Ԫ˧֮��,��������1����У����֤������." )
	--------------�һ�Ԫ˧֮��
	InitTrigger()
	TriggerCondition( 1, HasItem, 72, 1 )
	TriggerAction( 1, TakeItem, 72, 1 )
	TriggerAction( 1, GiveItem, 94, 1 , 4)
	TriggerFailure( 1, JumpPage, 10 )
	Text( 8, "��Ҫ�һ�", MultiTrigger, GetMultiTrigger(), 1)
	Text( 8, "�´���˵",CloseTalk )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 20000 )
	TriggerAction( 1, TakeMoney, 20000 )
	TriggerAction( 1, GiveItem, 4082, 1, 4)
	Talk( 2, "����˹:ʲôʲô?����������?û���Ǹ������̻�᳤��ô�ϳ�����?������������һ��,������Ҳ�ǻ���20000G������,����Ҫ�Ļ����������.")
	Text( 2, "�ð�,����������", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 2, "�ʵ�ά��:�����������о��Ŵ���ʯ,����Ҫ�����ĹŴ���ʯ�����о�,������ṩ�����㹻�ķ�ʯ,�ҿ�����һЩ�ö������㽻��." )
	Text( 2, "�й�����ϵ��װ��", JumpPage, 3)
	Text( 2, "�й�����ϵ��װ��", JumpPage, 4)
	Text( 2, "�йػ���ϵ��װ��", JumpPage, 5)
	Text( 2, "�й���֮ϵ��װ��", JumpPage, 6)

	Talk( 10, "����˹:��ȷ���������ж�Ӧ�ľ���֤��." )

	InitTrigger()
	TriggerCondition( 1, HasMission, 248 )
	TriggerCondition( 1, NoItem, 4082, 1 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerCondition( 2, HasRecord, 249 )
	TriggerCondition( 2, NoRecord, 250 )
	TriggerCondition( 2, NoItem, 4082, 1 )
	TriggerAction( 2, JumpPage, 2 )
	TriggerFailure( 2, JumpPage, 1 )

	Start( GetMultiTrigger(), 2 )

	AddNpcMission ( 207 )
	AddNpcMission ( 208 )
	AddNpcMission ( 209 )
	AddNpcMission ( 212 )
	AddNpcMission ( 213 )
	AddNpcMission ( 216 )
	AddNpcMission ( 274 )
	AddNpcMission ( 275 )
	AddNpcMission ( 276 )
	AddNpcMission	(1016)
	AddNpcMission	(1179)
	AddNpcMission	(69)
	AddNpcMission	(70)
	AddNpcMission	(71)
	AddNpcMission	(194)
	AddNpcMission	(195)
	AddNpcMission	(196)
	AddNpcMission	(318)
	AddNpcMission	(323)
	AddNpcMission	(324)
----------eleven
	AddNpcMission	(5053)

	MisListPage(2)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�����ٽ�������˹



----------------------------------------------------------
--							--
--							--
--		������[ɳᰳǴ�ʹ��ϯ��]			--
--							--
--		225648,270640				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk15 ()
	
	
	Talk( 1, "ϯ��:��ſ����Ϊʲô��Ҫ�Ĵ������.��������ɳᰳǵ��⽻��ʹ,͵һ����Ҳ�ǿ��Ե���?�԰�,����,�˲�������ô����." )

	AddNpcMission	(1032)
	AddNpcMission	(1195)
----------------�ﵺ����
	--AddNpcMission	(6177)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<ɳᰳǴ�ʹ��ϯ��


----------------------------------------------------------
--							--
--							--
--		������[�������̻�᳤�����׵���˹]		--
--							--
--		224207,274850				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk16 ()
	
	
	Talk( 1, "���׵���˹:���ǰ����̻�Ļ᳤���׵���˹,Ҳ�ǰ����ǵ���������.�ҿ���ѵ���κ��˳�Ϊ���ɴ�½������Ǯ;������,��ȻҲ������." )
	
	AddNpcMission ( 271 )
	AddNpcMission ( 277 )
	AddNpcMission ( 278 )
	AddNpcMission ( 280 )
	AddNpcMission ( 286 )
------------1.7
	AddNpcMission (5076 )
	AddNpcMission (5077 )
	AddNpcMission (5078 )
	AddNpcMission (5079 )
	AddNpcMission (5088 )
	AddNpcMission (5110 )
	AddNpcMission (5112 )
	AddNpcMission (5114 )
	AddNpcMission (5116 )
	AddNpcMission (5147 )
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�������̻�᳤�����׵���˹

----------------------------------------------------------
--							--
--							--
--		������[���ߡ���Ϳɽ��]			--
--							--
--		227208,270036				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk17 ()
	
	
	Talk( 1, "��Ϳɽ��:�������Ĳ�ݮ����ʮ��ǰ���Ѿ��ܺó���,���ڸ�����ζ." )

	AddNpcMission ( 266 )
	AddNpcMission ( 267 )
	AddNpcMission ( 270 )
	AddNpcMission ( 272 )
	AddNpcMission ( 273 )
	AddNpcMission ( 337 )
	AddNpcMission ( 338 )
	AddNpcMission ( 554 )
	AddNpcMission ( 555 )
	AddNpcMission ( 901 )
	---------------����
	AddNpcMission	(5557)
	AddNpcMission	(5558)
	AddNpcMission ( 6094 )
		--------------��ⱦ��--------��������
	--AddNpcMission ( 6126 )
	---------------��������
	AddNpcMission( 6167 )
	AddNpcMission( 6168 )
	AddNpcMission( 6169 )
	AddNpcMission( 6170 )
	AddNpcMission( 6173 )

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<���ߡ���Ϳɽ��

----------------------------------------------------------
--							--
--							--
--		������[�᳤��������]			--
--							--
--		224075,275275				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk18 ()
	
	
	Talk( 1, "����:��,����û�о������ǵ��̻�᳤�ڿ�������ʲô?��,������ʲô�ء���" )
	
	AddNpcMission ( 76 )
	AddNpcMission ( 77 )
	AddNpcMission ( 78 )
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�᳤��������

----------------------------------------------------------
--							--
--							--
--		������[·�ˡ���]				--
--							--
--		221588,282819				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk19 ()
	
	
	Talk( 1, "·�˼�:˵���ϵĹ��ﰡ,��ˮ��������µ���.������,���ڸۿڼ�����һ������ô���,Ҫ����ӣ��ʮ��һ����������������,������Щ���ߵ�������군��!" )
	
	AddNpcMission ( 6086 )
	AddNpcMission ( 6089 )
	AddNpcMission ( 6090 )

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<·�ˡ���

----------------------------------------------------------
--							--
--							--
--		������[�ƹ��ҵ���]			--
--							--
--		236002,281965				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk20 ()
	
	
	Talk( 1, "�ҵ���:��ô?�����Ҵ�������?���Ҷ�����, �ҿ�������ͨ��, ����Money Talk, ����Ǯ�ǲ��е�. ��������������������'/?�ؼ���'" )
	
	AddNpcMission ( 500 )
	AddNpcMission ( 501 )
	AddNpcMission ( 358 )
	AddNpcMission ( 372 )
	AddNpcMission ( 6082 )

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�ƹ��ҵ���

----------------------------------------------------------
--							--
--							--
--		������[���ꡤ�Ƶ�]			--
--							--
--		196225,269425				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk21 ()
	
	
	Talk( 1, "�Ƶ�:��,�ҽ��Ƶ�,����?����������ö�,�����̱��ٶ���������һ���˳�������." )
	
	AddNpcMission ( 210 )
	AddNpcMission ( 211 )
	AddNpcMission	(1034)
	AddNpcMission	(1197)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<���ꡤ�Ƶ�

----------------------------------------------------------
--							--
--							--
--		������[����ʦ��������]			--
--							--
--		173269,278261				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk22 ()
	
	
	Talk( 1, "������:���ǵؾ������칤������������������,�������Լ���Ը����ϰ���." )
	
	AddNpcMission	(1054)
	AddNpcMission	(1216)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<����ʦ��������


----------------------------------------------------------
--							--
--							--
--		������[D���̡���˽��]			--
--							--
--		2298,2520				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk23 ()
	
	
	Talk( 1, "��˽��:Υ��Ʒһ����,��˽Ʒ��������.��λ����,����Ҫʲô?" )
	
	AddNpcMission	(1000)
	AddNpcMission	(1164)
			--------���˽�
	--AddNpcMission	(5601)
	--AddNpcMission	(5602)
	--AddNpcMission	(5603)
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<D���̡���˽��


----------------------------------------------------------
--							--
--							--
--		������[����˾��١���˹����]		--
--							--
--		71350,141619				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk24 ()
	
	
	Talk( 1, "��˹����:���,�������������������ͳ�ʵ�˹����,�ҿ��������쵼���ٵĺ�������,�������������?" )
	InitTrigger()
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerCondition( 1, HasItem, 1780, 1 )
	TriggerCondition( 1, NoGuild )
	TriggerAction( 1, CreateGuild, 0 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "��Ϊ�����쵼", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 2, "��˹����:Ҫ��Ϊ�������쵼�����ṩ100000G����ʱ����,�Լ���������֮ʯ����������ҳ�" )
        
	AddNpcMission	(566)
	AddNpcMission	(477)
	AddNpcMission	(478)
	AddNpcMission ( 6087 )
	AddNpcMission ( 6088 )

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<����˾��١���˹����


----------------------------------------------------------
--							--
--							--
--		������[�ưɷ���Ա������]			--
--							--
--		99053,133465				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk25 ()
	
	
	Talk( 1, "����:��,����ʶ�Ǹ����������ĺ���ӣ��ʮ����?�������ҵ�ż��.������һ����Ҫ�뿪�����������ĵط�,����һ�������󺣵�!" )
	AddNpcMission	(1022)
	AddNpcMission	(1079)
	AddNpcMission	(1134)
	AddNpcMission	(1185)
	AddNpcMission	(378)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�ưɷ���Ա������

----------------------------------------------------------
--							--
--							--
--		������[ˮ�֡��ϰ�]			--
--							--
--		108330,128563				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk26 ()
	
	
	Talk( 1, "��,����,����ˮ�ֵϰ�.������ҪС�ĵ�,ħŮ֮���кܶ�ܶ����͵�ˮ��,�ر�����Щ�������,������ħ��,���ǻ�ҧ�������!!��������ҧ�ҵ�һ��,Oh,No...My Leg" )
	AddNpcMission	(1038)
	AddNpcMission	(1092)
	AddNpcMission	(1150)
	AddNpcMission	(1201)
----------------����˹---ˮ�֡��ϰ�--01
	AddNpcMission (5535 )
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<ˮ�֡��ϰ�






----------------------------------------------------------
--							--
--							--
--		������[��ҽ����ɳ]			--
--							--
--		77300,154900				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk28 ()
	
	
	Talk( 1, "��ɳ:������ʲô����?�����������ľ�ҽ��ɳ,һ��С�˿ɱ�������." )
	Text( 1, "����", BuyPage )
	Text( 1, "û��,�������",CloseTalk )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)
	Other(	3143	)

	AddNpcMission	(1024)
	AddNpcMission	(1081)
	AddNpcMission	(1136)
	AddNpcMission	(1187)
	----------------1.7
	AddNpcMission (5130 )
	AddNpcMission (5131 )
	AddNpcMission (5132 )
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<��ҽ����ɳ

----------------------------------------------------------
--							--
--							--
--		������[���г��ɡ��꿨��]			--
--							--
--		74300,153400				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk29 ()
	
	
	Talk( 1, "�꿨��:����,��ӭ����������������õ���������." )
	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, OpenBank )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "���У�ÿ��200G��", MultiTrigger, GetMultiTrigger(), 1)
	Talk( 2, "�Բ���,�����ֽ𲻹�,�޷�֧��ʹ�����еķ���." )

	AddNpcMission	(1049)
	AddNpcMission	(1103)
	AddNpcMission	(1159)
	AddNpcMission	(1211)
	AddNpcMission	(320)
	AddNpcMission	(375)
	AddNpcMission	(376)
	AddNpcMission	(377)
	AddNpcMission	(432)
	AddNpcMission	(560)
	AddNpcMission	(561)
	AddNpcMission	(542)
	AddNpcMission	(562)

	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<���г��ɡ��꿨��


----------------------------------------------------------
--							--
--							--
--		������[���������ʸ�]			--
--							--
--		76662,144769				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk30 ()
	
	
	Talk( 1, "���ʸ�:��.����?�ߺ�." )
	Text( 1, "����", JumpPage, 2)
	Text( 1, "û��,�������",CloseTalk )


----------------����ˮ��ɰ��Ƭ
	InitTrigger()
	TriggerCondition( 1, HasItem, 1784, 10 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 1784, 10 )
	TriggerAction( 1, GiveItem, 1785, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "���ʸ�:������������ÿ��Ĺ���������������,ż����Ҳ����Ҫ�����Ķ���." )
	Text( 2, "����ˮ��ɰ��Ƭ",MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 3, "���ʸ�:���������ˮ��ϸɳ���������ˮ��ɳ��Ƭ,���ú�.�Ժ������黶ӭ��������." )
	Talk( 4, "���ʸ�:�����10��ˮ��ϸɳ�Ҳ��ܰ�������ˮ��ɳ��Ƭ,������200G�Ĺ�����." )
	AddNpcMission	(1042)
	AddNpcMission	(1094)
	AddNpcMission	(1153)
	AddNpcMission	(1205)


	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<���������ʸ�
----------------------------------------------------------
--							--
--							--
--		������[��Ů������]			--
--							--
--		74026,145143				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk31 ()
	
	
	Talk( 1, "����:���,Զ����������,���ǿ����˹����ҵ�СŮ������,��ϲ���ɰ���С������.��Ҫ������;�Ϸ���ʲô�ɰ��Ķ���,�����Ǹ�����." )
	
	Text( 1, "�Ѫ����(�ռ�12��ר������)", JumpPage,6 )
	Text( 1, "ˮ�ֹ��ؽ���", JumpPage,8 )
	Text( 1, "�������ؽ���", JumpPage,11 )
	Text( 1, "�������ؽ���", JumpPage,12 )
	Text( 1, "����Ⱦ����", JumpPage, 2)

	Talk( 6, "����:��ѡ����Ҫ���ص��Ѷ�,��ˮ�ֵ������Ѷ����μӴ�,��Ȼ���Ѷ�Խ�߽���Խ���.���������?�����Ժ��Ŷ" )

	InitTrigger()
	TriggerCondition( 1, NoRecord,834 )
	TriggerCondition( 1, NoRecord,835 )
	TriggerAction( 1, SetRecord, 833 )
	TriggerAction( 1, SetRecord, 836 )
	TriggerAction( 1, JumpPage, 7 )
	TriggerFailure( 1, JumpPage, 13 )
	Text( 6, "ˮ��",MultiTrigger_1, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, NoRecord,833 )
	TriggerCondition( 1, NoRecord,835 )
	TriggerAction( 1, SetRecord, 834 )
	TriggerAction( 1, SetRecord, 836 )
	TriggerAction( 1, JumpPage, 7 )
	TriggerFailure( 1, JumpPage, 13 )
	Text( 6, "����",MultiTrigger_2, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, NoRecord,834 )
	TriggerCondition( 1, NoRecord,833 )
	TriggerAction( 1, SetRecord, 835 )
	TriggerAction( 1, SetRecord, 836 )
	TriggerAction( 1, JumpPage, 7 )
	TriggerFailure( 1, JumpPage, 13 )
	Text( 6, "����",MultiTrigger_3, GetMultiTrigger(), 1)

	Talk( 7, "����:���������!" )
  



	InitTrigger()
	TriggerCondition( 1, HasRecord,833 )
	TriggerCondition( 1, HasItem, 2944, 1 )
	TriggerCondition( 1, HasItem, 2945, 1 )
	TriggerCondition( 1, HasItem, 2946, 1 )
	TriggerCondition( 1, HasItem, 2947, 1 )
	TriggerCondition( 1, HasItem, 2948, 1 )
	TriggerCondition( 1, HasItem, 2949, 1 )
	TriggerCondition( 1, HasItem, 2950, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 3 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2944, 1 )
	TriggerAction( 1, TakeItem, 2945, 1 )
	TriggerAction( 1, TakeItem, 2946, 1 )
	TriggerAction( 1, TakeItem, 2947, 1 )
	TriggerAction( 1, TakeItem, 2948, 1 )
	TriggerAction( 1, TakeItem, 2949, 1 )
	TriggerAction( 1, TakeItem, 2950, 1 )
	--TriggerAction( 1, SetLog  , 1 )

	TriggerAction( 1, GiveItem, 2942, 1 , 4)
	TriggerAction( 1, GiveItem, 2943, 1 , 4)
	TriggerAction( 1, GiveItem, 3094, 1 , 4)
	TriggerAction( 1, AddMoney, 10000 )
	TriggerAction( 1, JumpPage, 9 )
	TriggerFailure( 1, JumpPage, 10 )
	Talk( 8, "����:����7öѫ�¾Ϳ�����������һ���������ӡ����һ������Ʊ��.���кཱܶ��Ŷ" )
	Text( 8, "ȷ���һ�",MultiTrigger_0, GetMultiTrigger(), 1)



	InitTrigger()
	TriggerCondition( 1, HasRecord,834 )
	TriggerCondition( 1, HasItem, 2944, 1 )
	TriggerCondition( 1, HasItem, 2945, 1 )
	TriggerCondition( 1, HasItem, 2946, 1 )
	TriggerCondition( 1, HasItem, 2947, 1 )
	TriggerCondition( 1, HasItem, 2948, 1 )
	TriggerCondition( 1, HasItem, 2949, 1 )
	TriggerCondition( 1, HasItem, 2950, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 3 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2944, 1 )
	TriggerAction( 1, TakeItem, 2945, 1 )
	TriggerAction( 1, TakeItem, 2946, 1 )
	TriggerAction( 1, TakeItem, 2947, 1 )
	TriggerAction( 1, TakeItem, 2948, 1 )
	TriggerAction( 1, TakeItem, 2949, 1 )
	TriggerAction( 1, TakeItem, 2950, 1 )

	TriggerAction( 1, GiveItem, 2942, 1 , 4)
	TriggerAction( 1, GiveItem, 2943, 1 , 4)
	TriggerAction( 1, GiveItem, 3094, 3 , 4)
	TriggerAction( 1, AddMoney, 50000 )
	TriggerAction( 1, JumpPage, 9 )
	TriggerFailure( 1, JumpPage, 10 )
	Talk( 11, "����:����7öѫ�¾Ϳ�����������һ���������ӡ����һ������Ʊ��.���кཱܶ��Ŷ" )
	Text( 11, "ȷ���һ�",MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasRecord,835 )
	TriggerCondition( 1, HasItem, 2944, 1 )
	TriggerCondition( 1, HasItem, 2945, 1 )
	TriggerCondition( 1, HasItem, 2946, 1 )
	TriggerCondition( 1, HasItem, 2947, 1 )
	TriggerCondition( 1, HasItem, 2948, 1 )
	TriggerCondition( 1, HasItem, 2949, 1 )
	TriggerCondition( 1, HasItem, 2950, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 3 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2944, 1 )
	TriggerAction( 1, TakeItem, 2945, 1 )
	TriggerAction( 1, TakeItem, 2946, 1 )
	TriggerAction( 1, TakeItem, 2947, 1 )
	TriggerAction( 1, TakeItem, 2948, 1 )
	TriggerAction( 1, TakeItem, 2949, 1 )
	TriggerAction( 1, TakeItem, 2950, 1 )

	TriggerAction( 1, GiveItem, 2942, 1 , 4)
	TriggerAction( 1, GiveItem, 2943, 1 , 4)
	TriggerAction( 1, GiveItem, 3094, 5 , 4)
	TriggerAction( 1, AddMoney, 80000 )
	TriggerAction( 1, JumpPage, 9 )
	TriggerFailure( 1, JumpPage, 10 )
	Talk( 12, "����:����7öѫ�¾Ϳ�����������һ���������ӡ����һ������Ʊ��.���кཱܶ��Ŷ" )
	Text( 12, "ȷ���һ�",MultiTrigger, GetMultiTrigger(), 1)

	Talk( 10, "����:�������ƺ�û���㹻��ѫ�°�!�������ı����Ƿ�������,����Ҫ��֤����3���ո�!������ȷ���㵱ʱѡ����Ѷ��������?")
	Talk( 9, "����:��ţ���и��̼�����ս����Ŷ,����!!")
	Talk( 13, "����:��ս���򹬵�ʱ��,�Ѷ�ֻ��ѡ��һ��Ŷ")

	InitTrigger()
	TriggerCondition( 1, HasItem, 1789, 5 )
	TriggerCondition( 1, HasItem, 1657, 1 )
	TriggerCondition( 1, HasItem, 1778, 1 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 1789, 5 )
	TriggerAction( 1, TakeItem, 1657, 1 )
	TriggerAction( 1, TakeItem, 1778, 1 )
	TriggerAction( 1, GiveItem, 1799, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "����:�����ӵ��һ��ͬ���ķ�ɫ��?�Ұ����������Ⱦ����������." )
	Text( 2, "�����ɫȾ����",MultiTrigger, GetMultiTrigger(), 1)
---------------������ɫȾ����
	InitTrigger()
	TriggerCondition( 1, HasItem, 1790, 5 )
	TriggerCondition( 1, HasItem, 1657, 1 )
	TriggerCondition( 1, HasItem, 1778, 1 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 1790, 5 )
	TriggerAction( 1, TakeItem, 1657, 1 )
	TriggerAction( 1, TakeItem, 1778, 1 )
	TriggerAction( 1, GiveItem, 1800, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 2, "������ɫȾ����",MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3, "����:�ҵļ��ջ�������,����õ���.������Ҫ��Ⱦ����." )
	Talk( 4, "����:�һ�����ɫȾ����,��ֻҪ����5����ɫȾ�ϡ�1����Ч�����1����ɫ������,�����������ֹ���200G." )
	Talk( 5, "����:�һ�����ɫȾ����,��ֻҪ����5����ɫȾ�ϡ�1����Ч�����1����ɫ������,�����������ֹ���200G." )
	AddNpcMission	(1036)
	AddNpcMission	(1090)
	AddNpcMission	(1148)
	AddNpcMission	(1199)
	AddNpcMission	(867)
	AddNpcMission	(863)
	------------------------------------------
	AddNpcMission	(5536)
	AddNpcMission	(5537)
	AddNpcMission	(5538)
	AddNpcMission	(5539)
	AddNpcMission	(5540)
	AddNpcMission	(5541)

	AddNpcMission	(5542)
	AddNpcMission	(5543)
	AddNpcMission	(5544)
	AddNpcMission	(5545)
	AddNpcMission	(5546)
	AddNpcMission	(5547)

	AddNpcMission	(5548)
	AddNpcMission	(5549)
	AddNpcMission	(5550)
	AddNpcMission	(5551)
	AddNpcMission	(5552)


	AddNpcMission	(5597)
	AddNpcMission	(5600)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<��Ů������


----------------------------------------------------------
--							--
--							--
--		������[ɳ�פ��������ʹ�����¼�]		--
--							--
--		71220,150827				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk32 ()
	
	
	Talk( 1, "���¼�:���,����ɳᰳǵ��⽻�ٰ��¼�.�������·��������?�Һþ�û��ȥ������." )
	AddNpcMission	(1033)
	AddNpcMission	(1088)
	AddNpcMission	(1145)
	AddNpcMission	(1196)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<ɳ�פ��������ʹ�����¼�

----------------------------------------------------------
--							--
--							--
--		������[�������ˡ��ݲ���ά˹]		--
--							--
--		74100,156300				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk33 ()
	
	
	Talk( 1, "�ݲ���ά˹:�ﲼ����,������������Ǵ�������ʺ�,���Ǹմ����������������,�Ժ����������." )

	AddNpcMission	(1008)
	AddNpcMission	(1063)
	AddNpcMission	(1118)
	AddNpcMission	(1172)
	AddNpcMission	(850)
	AddNpcMission	(861)
	AddNpcMission	(868)

	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�������ˡ��ݲ���ά˹

----------------------------------------------------------
--							--
--							--
--		������[�ù��ϰ塤��������]		--
--							--
--		69761,154269				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk34 ()
	
	
	Talk( 1, "��������:���,������.�ҽ������岻��,�õ�������ҵ��." )
	AddNpcMission	(1030)
	AddNpcMission	(1086)
	AddNpcMission	(1139)
	AddNpcMission	(1193)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�ù��ϰ塤��������

----------------------------------------------------------
--							--
--							--
--		������[��װ����������]			--
--							--
--		75450,151200				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk35 ()
	
	
	Talk( 1, "����:����,�ܱ�Ǹ,������ͣӪҵ" )
	Text( 1, "û��,�������",CloseTalk )
	AddNpcMission	(1010)
	AddNpcMission	(1066)
	AddNpcMission	(1122)
	AddNpcMission	(1174)


end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<��װ����������

----------------------------------------------------------
--							--
--							--
--		������[������פ��������ʹ��������]		--
--							--
--		74171,155325				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk36 ()
	
	
	Talk( 1, "������:�޼鲻��,�޼鲻��,������������ѽ." )
	AddNpcMission	(1003)
	AddNpcMission	(1058)
	AddNpcMission	(1113)
	AddNpcMission	(1167)
	AddNpcMission ( 6025 )
	AddNpcMission ( 6026 )
	AddNpcMission ( 6027 )

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<������פ��������ʹ��������

----------------------------------------------------------
--							--
--							--
--		������[�����������Կ�]			--
--							--
--		79600,148800				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk37 ()
	
	
	Talk( 1, "���Կ�:����,���.�����������Ļ��������Կ�,������ڵı�������." )
	Text( 1, "û��,�������",CloseTalk )

	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 39 )
	TriggerCondition( 1, IsCategory, 1 )
	TriggerCondition( 1, PfEqual, 1 )
	TriggerCondition( 1, HasItem, 1673, 1 )
	TriggerCondition( 1, HasMoney, 20000 )
	TriggerAction( 1, TakeItem, 1673, 1 )
	TriggerAction( 1, TakeMoney, 20000 )
	TriggerAction( 1, SetProfession, 10 )
	TriggerAction( 1, JumpPage, 3 )
	TriggerCondition( 2, LvCheck, ">", 39 )
	TriggerCondition( 2, IsCategory, 2 )
	TriggerCondition( 2, PfEqual, 1 )
	TriggerCondition( 2, HasItem, 1673, 1 )
	TriggerCondition( 2, HasMoney, 20000 )
	TriggerAction( 2, TakeItem, 1673, 1 )
	TriggerAction( 2, TakeMoney, 20000 )
	TriggerAction( 2, SetProfession, 10  )
	TriggerAction( 2, JumpPage, 3 )
	TriggerFailure( 2, JumpPage, 4 )

	Talk(2, "�����͹���Խ��Խ�����,������Ҫ�����õĽ�ʿ����ȴ����.����,�Ҿ�������������,��ƷҲ��,Ҫ��Ҫ���ǵ�������ʿ,������ƽ��?")
	Text(2, "�õ�,תְ��Ϊ����ʿ", MultiTrigger, GetMultiTrigger(), 2)
	Text(2, "��,�Ҿ�����������ͦ�õ�.", CloseTalk)

	Talk(3, "���������ǽ���ʿ��ְ��,���˽���ʿ֮����ɲ�Ҫ������һ��.")

	Talk(4, "��Ҫתְ����ʿ��?�ȵ���40��������,��֮ǰ�Ȱѽ�ʿ�ļ�������,����ǵô���1�������������Ƭ��Ϊ�������ĳɼ�.תְ������20000G.")
	

	
	
	
		

	----------תְ��Ϊ����ʿ
	--TriggerCondition( 1, LvCheck, ">", 39 )
	--TriggerCondition( 1, IsCategory, 1 )
	--TriggerCondition( 1, PfEqual, 1 )
	--TriggerAction( 1, JumpPage, 2 )

	--TriggerCondition( 2, LvCheck, ">", 39 )
	--TriggerCondition( 2, IsCategory, 2 )
	--TriggerCondition( 2, PfEqual, 1 )
	--TriggerAction( 2, JumpPage, 2 )

-------------------ת�ѻ����ж�

	AddNpcMission	(1019)
	AddNpcMission	(1074)
	AddNpcMission	(1130)
	AddNpcMission	(1182)
	AddNpcMission	(852)
	AddNpcMission	(855)
	AddNpcMission	(865)
	AddNpcMission	(473)

	MisListPage(5)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�����������Կ�

----------------------------------------------------------
--							--
--							--
--		������[�ӻ����ˡ����]			--
--							--
--		72500,155100				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk38 ()
	
	
	Talk( 1, "���:���,����,��������.�����������,��������������ͼۺ���.��ϲ���Ѽ�һЩ����Ķ���,����10���Ժ����Ǻú�̸̸,�������������ȡ�Ҹ�����������.�һ����ܷ��ľ��鱨��Ŷ!" )
	Text( 1, "û��,�������",CloseTalk )
	AddNpcMission	(1053)
	AddNpcMission	(1107)
	AddNpcMission	(1163)
	AddNpcMission	(1215)

		
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�ӻ����ˡ����

----------------------------------------------------------
--							--
--							--
--		������[��Ů������]			--
--							--
--		101653,128642				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk39 ()
	
	
	Talk( 1, "����:��ȥ����ô��ط�,��û�м��������ٽ�����˹?�Դ������������ǹ���֮��,����һ�������������,��Щ�ڲ�һ��������һ��ɿ��Զ�û����." )
	AddNpcMission	(1035)
	AddNpcMission	(1089)
	AddNpcMission	(1147)
	AddNpcMission	(1198)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<��Ů������

----------------------------------------------------------
--							--
--							--
--		������[�����ܲ�ָ�ӹ١���.��˹��׼��]	--
--							--
--		80800,152100				--
---------------------2005-3-8-------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk40 ()
	
	
	Talk( 1, "��.��˹���Ͻ�:����Ԥ��,������һ�����ٸ������鷳��.��Ȼ�����ڱ��ҷ��䵽����ִ��,�������ĸ���,����һ���ѳ���Ҳ�ֵü�Ȯ����.��ʱ�򱳺ڹ����˻�����,������" )
	AddNpcMission	(1017)
	AddNpcMission	(1071)
	AddNpcMission	(1127)
	AddNpcMission	(1180)
---------------����
	AddNpcMission	(5575)
	AddNpcMission	(5576)
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�����ܲ�ָ�ӹ١���.��˹��׼��

----------------------------------------------------------
--							--
--							--
--		������[�����ܲ���ı������������У]		--
--							--
--		65323,150512				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk41 ()
	
	
	Talk( 1, "��������У:Ӵ,��ð�,����.���Ǻ�����ı��������,ǰ���챻�װ�����˾��.��˹���Ͻ���������������.�Ǻ�,���Ĳ������ڱ�����,�ǺǺ�." )
	
	AddNpcMission	(849)
	AddNpcMission	(856)
	AddNpcMission	(858)
	AddNpcMission	(860)
	AddNpcMission	(866)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�����ܲ���ı������������У

----------------------------------------------------------
--							--
--							--
--		������[Ħ�����˺��ᡤ�ƶ�]		--
--							--
--		65146,158595				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk42 ()
	
	
	Talk( 1, "�ƶ�:�����ǳ�Ϊħ��Ĳ�����������Щ����?������������Щ����Ϊ�ǵ��ִ���,��Ҫ����˵��." )
	
	AddNpcMission	(851)
	AddNpcMission	(853)
	AddNpcMission	(854)
	AddNpcMission	(862)
	AddNpcMission	(864)


end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<Ħ�����˺��ᡤ�ƶ�

----------------------------------------------------------
--							--
--							--
--		������[����������]			--
--							--
--		71187,141438				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk43 ()
	
	
	Talk( 1, "����:�Һ������Ǻ��ֵ�,һ��������������." )

	AddNpcMission	(859)
	AddNpcMission	(857)
	-------------����������-------˫��
	AddNpcMission	(5690)
	AddNpcMission	(5691)
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<����������

----------------------------------------------------------
--							--
--							--
--		������[����������]			--
--							--
--		71536,141462				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk44 ()
	
	
	Talk( 1, "����:���ֵ�,������." )

	AddNpcMission	(474)
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<����������

----------------------------------------------------------
--							--
--							--
--		������[·�ˡ���]				--
--							--
--		66976,155428				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk45 ()
	
	
	Talk( 1, "·�˱�:����������ͷ�и�����ľư�,����������̫Զ��,������ȥ." )
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<·�ˡ���


----------------------------------------------------------
--							--
--							--
--		������[·�ˡ��ͱ�]				--
--							--
--		99475,123473				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk46 ()
	
	
	Talk( 1, "�ͱ�:��,����,����������û��?����������̫��,��������������!" )
	Text( 1, "����", JumpPage, 2)

--------------����ؽ�
	InitTrigger()
	TriggerCondition( 1, HasItem, 1782, 10 )
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, TakeItem, 1782, 10 )
	TriggerAction( 1, GiveItem, 1783, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "�ͱ�:���ٳɶ�ĵ����㶮��?�ҵĹ����Ͱ����С��ʯ����ɴ��ʯ." )
	Text( 2, "����ؽ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3, "�ͱ�:�ؽ��ʯ�ҽ������,��ɱ��º���������Ŷ." )
	Talk( 4, "�ͱ�:�ؽ��ʯ?��10��С��ؽ��ʯ��2000G������." )

	AddNpcMission	(6256)
	AddNpcMission	(6257)
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<·�ˡ��ͱ�

----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[����١��ʵ�ά��]			--
--							--
--		86299,350092				--
 
-----------------------------------------------------------���￪ʼP������
function r_talk47 ()
	
	
	Talk( 1, "�ʵ�ά��:���,����,ԸŮ������������.����ɳᰳǵĴ���ٸʵ�ά��." )
	Text( 1, "�о��Ŵ���ʯ", JumpPage, 2)
        Text( 1, "�ϳɲر�ͼ", JumpPage, 7)
        Text( 1, "������Ƭ�һ�ͼֽ", JumpPage, 9)
	Text( 1, "����֮�Ķһ�60����ָ", JumpPage, 10)

	Talk( 2, "�ʵ�ά��:�����������о��Ŵ���ʯ,����Ҫ�����ĹŴ���ʯ�����о�,������ṩ�����㹻�ķ�ʯ,�ҿ�����һЩ�ö������㽻��." )
	Text( 2, "�й�����ϵ��װ��", JumpPage, 3)
	Text( 2, "�й�����ϵ��װ��", JumpPage, 4)
	Text( 2, "�йػ���ϵ��װ��", JumpPage, 5)
	Text( 2, "�й���֮ϵ��װ��", JumpPage, 6)
	
	Talk( 3, "�ʵ�ά��:����ϵ��װ��,�����Է��鶼�е�Lv30װ��,��������10�����Ƿ�ʯ��10����˼��ʯ����,��Ȼ�����ѡ������һ��ְҵ��װ��Ŷ." )
	--------------����֮��ʿ����
	InitTrigger()
	TriggerCondition( 1, HasItem, 3425, 10 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerAction( 1, TakeItem, 3425, 10 )
	TriggerAction( 1, TakeItem, 3426, 10 )
	TriggerAction( 1, GiveItem, 3400, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 3, "��ȡ��ʿװ��", MultiTrigger, GetMultiTrigger(), 1)
	--------------����֮���˱���
	InitTrigger()
	TriggerCondition( 1, HasItem, 3425, 10 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerAction( 1, TakeItem, 3425, 10 )
	TriggerAction( 1, TakeItem, 3426, 10 )
	TriggerAction( 1, GiveItem, 3401, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 3, "��ȡ����װ��", MultiTrigger, GetMultiTrigger(), 1)
	--------------����֮ҩʦ����
	InitTrigger()
	TriggerCondition( 1, HasItem, 3425, 10 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerAction( 1, TakeItem, 3425, 10 )
	TriggerAction( 1, TakeItem, 3426, 10 )
	TriggerAction( 1, GiveItem, 3402, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 3, "��ȡҩʦװ��", MultiTrigger, GetMultiTrigger(), 1)
	--------------����֮ð���߱���
	InitTrigger()
	TriggerCondition( 1, HasItem, 3425, 10 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerAction( 1, TakeItem, 3425, 10 )
	TriggerAction( 1, TakeItem, 3426, 10 )
	TriggerAction( 1, GiveItem, 3403, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 3, "��ȡð����װ��", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 4, "�ʵ�ά��:����ϵ��װ��,�����Է��鶼�к����������Lv40װ��,��������10���Ӷ���ʯ��10�����ط�ʯ����,��Ȼ�����ѡ������һ��ְҵ��װ��Ŷ." )
	--------------����֮˫��ʿװ����
	InitTrigger()
	TriggerCondition( 1, HasItem, 3428, 10 )
	TriggerCondition( 1, HasItem, 3429, 10 )
	TriggerAction( 1, TakeItem, 3428, 10 )
	TriggerAction( 1, TakeItem, 3429, 10 )
	TriggerAction( 1, GiveItem, 3404, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 4, "��ȡ˫��ʿװ��", MultiTrigger, GetMultiTrigger(), 1)
	--------------����֮�޽�ʿװ����
	InitTrigger()
	TriggerCondition( 1, HasItem, 3428, 10 )
	TriggerCondition( 1, HasItem, 3429, 10 )
	TriggerAction( 1, TakeItem, 3428, 10 )
	TriggerAction( 1, TakeItem, 3429, 10 )
	TriggerAction( 1, GiveItem, 3405, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 4, "��ȡ�޽�ʿװ��", MultiTrigger, GetMultiTrigger(), 1)
	--------------����֮�ѻ���װ����
	InitTrigger()
	TriggerCondition( 1, HasItem, 3428, 10 )
	TriggerCondition( 1, HasItem, 3429, 10 )
	TriggerAction( 1, TakeItem, 3428, 10 )
	TriggerAction( 1, TakeItem, 3429, 10 )
	TriggerAction( 1, GiveItem, 3406, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 4, "��ȡ�ѻ���װ��", MultiTrigger, GetMultiTrigger(), 1)
	--------------����֮ʥְ��װ����
	InitTrigger()
	TriggerCondition( 1, HasItem, 3428, 10 )
	TriggerCondition( 1, HasItem, 3429, 10 )
	TriggerAction( 1, TakeItem, 3428, 10 )
	TriggerAction( 1, TakeItem, 3429, 10 )
	TriggerAction( 1, GiveItem, 3407, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 4, "��ȡʥְ��װ��", MultiTrigger, GetMultiTrigger(), 1)
	--------------����֮��ӡʦװ����
	InitTrigger()
	TriggerCondition( 1, HasItem, 3428, 10 )
	TriggerCondition( 1, HasItem, 3429, 10 )
	TriggerAction( 1, TakeItem, 3428, 10 )
	TriggerAction( 1, TakeItem, 3429, 10 )
	TriggerAction( 1, GiveItem, 3408, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 4, "��ȡ��ӡʦװ��", MultiTrigger, GetMultiTrigger(), 1)
	--------------����֮����ʿװ����
	InitTrigger()
	TriggerCondition( 1, HasItem, 3428, 10 )
	TriggerCondition( 1, HasItem, 3429, 10 )
	TriggerAction( 1, TakeItem, 3428, 10 )
	TriggerAction( 1, TakeItem, 3429, 10 )
	TriggerAction( 1, GiveItem, 3409, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 4, "��ȡ����ʿװ��", MultiTrigger, GetMultiTrigger(), 1)


	Talk( 5, "�ʵ�ά��:����ϵ��װ��,���������������ħ�������Lv50װ��,��������10���¼ӷ�ʯ��10�����ط�ʯ����,��Ȼ�����ѡ������һ��ְҵ��װ��Ŷ." )
	--------------����֮˫��ʿװ����
	InitTrigger()
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 3410, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 5, "��ȡ˫��ʿװ��", MultiTrigger, GetMultiTrigger(), 1)
	--------------����֮�޽�ʿװ����
	InitTrigger()
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 3411, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 5, "��ȡ�޽�ʿװ��", MultiTrigger, GetMultiTrigger(), 1)
	--------------����֮�ѻ���װ����
	InitTrigger()
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 3412, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 5, "��ȡ�ѻ���װ��", MultiTrigger, GetMultiTrigger(), 1)
	--------------����֮ʥְ��װ����
	InitTrigger()
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 3413, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 5, "��ȡʥְ��װ��", MultiTrigger, GetMultiTrigger(), 1)
	--------------����֮��ӡʦװ����
	InitTrigger()
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 3414, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 5, "��ȡ��ӡʦװ��", MultiTrigger, GetMultiTrigger(), 1)
	--------------����֮����ʿװ����
	InitTrigger()
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 3415, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 5, "��ȡ����ʿװ��", MultiTrigger, GetMultiTrigger(), 1)


	Talk( 6, "�ʵ�ά��:��֮ϵ��װ��,������ħ�������Lv60װ��,��������10���ض���ʯ��10��������ʯ����,��Ȼ�����ѡ������һ��ְҵ��װ��Ŷ." )
	--------------��֮˫��ʿװ����
	InitTrigger()
	TriggerCondition( 1, HasItem, 3455, 10 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 10 )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, GiveItem, 3416, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 6, "��ȡ˫��ʿװ��", MultiTrigger, GetMultiTrigger(), 1)
	--------------��֮�޽�ʿװ����
	InitTrigger()
	TriggerCondition( 1, HasItem, 3455, 10 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 10 )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, GiveItem, 3417, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 6, "��ȡ�޽�ʿװ��", MultiTrigger, GetMultiTrigger(), 1)
	--------------��֮�ѻ���װ����
	InitTrigger()
	TriggerCondition( 1, HasItem, 3455, 10 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 10 )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, GiveItem, 3418, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 6, "��ȡ�ѻ���װ��", MultiTrigger, GetMultiTrigger(), 1)
	--------------��֮ʥְ��װ����
	InitTrigger()
	TriggerCondition( 1, HasItem, 3455, 10 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 10 )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, GiveItem, 3419, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 6, "��ȡʥְ��װ��", MultiTrigger, GetMultiTrigger(), 1)
	--------------��֮��ӡʦװ����
	InitTrigger()
	TriggerCondition( 1, HasItem, 3455, 10 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 10 )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, GiveItem, 3420, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 6, "��ȡ��ӡʦװ��", MultiTrigger, GetMultiTrigger(), 1)
	--------------��֮����ʿװ����
	InitTrigger()
	TriggerCondition( 1, HasItem, 3455, 10 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 10 )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, GiveItem, 3421, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 6, "��ȡ����ʿװ��", MultiTrigger, GetMultiTrigger(), 1)

 
	InitTrigger() --�ϳɲر�ͼ
	TriggerCondition( 1, HasItem, 0432, 1 )
        TriggerCondition( 1, HasItem, 0433, 1 )
	TriggerCondition( 1, HasItem, 0434, 1 )
	TriggerCondition( 1, HasItem, 0435, 1 )
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeItem, 0432, 1 )
	TriggerAction( 1, TakeItem, 0433, 1 )
	TriggerAction( 1, TakeItem, 0434, 1 )
	TriggerAction( 1, TakeItem, 0435, 1 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, GiveItem, 1092, 1, 4 )
	TriggerFailure( 1, JumpPage, 8 ) 

	Talk( 7, "�ʵ�ά��:�����Ųر�ͼ��Ƭ���Ұ�,�Ұ������ϳɲر�ͼ." )
	Text( 7, "�ϳɲر�ͼ",MultiTrigger, GetMultiTrigger(), 1) 
	Talk( 8, "�ʵ�ά��:������������Ųر�ͼ��2000��Ǯ�������Ұ�" )

	--------------�һ�ͼֽ
	InitTrigger()
	TriggerCondition( 1, HasItem, 2324, 5 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2324, 5 )
	TriggerAction( 1, GiveItem, 1000, 1 , 4)
	TriggerFailure( 1, JumpPage, 11 )
	Talk( 9, "�ʵ�ά��:���������ϵ���Ƭ���Ը����𣿲���������." )
	Text( 9, "5��������Ƭ�һ�1��ģ��ͼֽ", MultiTrigger, GetMultiTrigger(), 1)

	--------------�һ�ͼֽ
	InitTrigger()
	TriggerCondition( 1, HasItem, 2324, 30 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2324, 30 )
	TriggerAction( 1, GiveItem, 1001, 1 , 4)
	TriggerFailure( 1, JumpPage, 11 )
	Text( 9, "30��������Ƭ�һ�1������ͼֽ", MultiTrigger, GetMultiTrigger(), 1)

	--------------�һ�ͼֽ
	InitTrigger()
	TriggerCondition( 1, HasItem, 2324, 100 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2324, 100 )
	TriggerAction( 1, GiveItem, 1002, 1 , 4)
	TriggerFailure( 1, JumpPage, 11 )
	Text( 9, "100��������Ƭ�һ�1�ŷ�ӡͼֽ", MultiTrigger, GetMultiTrigger(), 1)

	--------------�һ�ͼֽ
	InitTrigger()
	TriggerCondition( 1, HasItem, 2324, 500 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2324, 500 )
	TriggerAction( 1, GiveItem, 1003, 1 , 4)
	TriggerFailure( 1, JumpPage, 11 )
	Text( 9, "500��������Ƭ�һ�1�ŷ���ͼֽ", MultiTrigger, GetMultiTrigger(), 1)


	--------------�һ���ָ
	InitTrigger()
	TriggerCondition( 1, HasItem, 2325, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2325, 1 )
	TriggerAction( 1, GiveItem, 4656, 1 , 4)
	TriggerFailure( 1, JumpPage, 11 )
	Talk( 10, "�ʵ�ά��:��ô�����Ļ���֮�İ������������ָ�����㽻����." )
	Text( 10, "�һ�ŭ��֮��", MultiTrigger, GetMultiTrigger(), 1)

	--------------�һ���ָ
	InitTrigger()
	TriggerCondition( 1, HasItem, 2325, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2325, 1 )
	TriggerAction( 1, GiveItem, 4657, 1 , 4)
	TriggerFailure( 1, JumpPage, 11 )
	Text( 10, "�һ��ᶨ֮��", MultiTrigger, GetMultiTrigger(), 1)

	--------------�һ���ָ
	InitTrigger()
	TriggerCondition( 1, HasItem, 2325, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2325, 1 )
	TriggerAction( 1, GiveItem, 4658, 1 , 4)
	TriggerFailure( 1, JumpPage, 11 )
	Text( 10, "�һ�����֮��", MultiTrigger, GetMultiTrigger(), 1)

	--------------�һ���ָ
	InitTrigger()
	TriggerCondition( 1, HasItem, 2325, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2325, 1 )
	TriggerAction( 1, GiveItem, 4659, 1 , 4)
	TriggerFailure( 1, JumpPage, 11 )
	Text( 10, "�һ�����֮��", MultiTrigger, GetMultiTrigger(), 1)

	--------------�һ���ָ
	InitTrigger()
	TriggerCondition( 1, HasItem, 2325, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2325, 1 )
	TriggerAction( 1, GiveItem, 4660, 1 , 4)
	TriggerFailure( 1, JumpPage, 11 )
	Text( 10, "�һ��漣֮ˮ", MultiTrigger, GetMultiTrigger(), 1)


	Talk( 11, "��û�жһ�����Ҫ�ĵ��ߣ�Ҳ�п������ı����Ѿ���������û�пո�." )



	--AddNpcMission ( 719 )
	AddNpcMission ( 102 )
	AddNpcMission 	(416)
	AddNpcMission 	(751)
	AddNpcMission 	(755)
	AddNpcMission 	(95)
	AddNpcMission 	(96)
	AddNpcMission 	(97)
	AddNpcMission 	(151)
	AddNpcMission(	1227	)
	AddNpcMission 	(342)
	AddNpcMission 	(343)
	AddNpcMission 	(344)
	AddNpcMission 	(345)
	AddNpcMission 	(346)
	AddNpcMission 	(347)
	AddNpcMission 	(348)
	AddNpcMission 	(349)
	AddNpcMission 	(350)
	AddNpcMission 	(351)
	AddNpcMission 	(352)
	AddNpcMission 	(353)
	AddNpcMission 	(354)
	AddNpcMission 	(355)
-------------eleven
	AddNpcMission 	(5009)
	AddNpcMission 	(5015)
	AddNpcMission 	(5017)
	AddNpcMission 	(5024)
	AddNpcMission 	(5028)
	AddNpcMission 	(5031)
	AddNpcMission 	(5059)
	AddNpcMission 	(5064)
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<����١��ʵ�ά��


----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[���峤����������.��]		--
--							--
--		90374,364023				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk48 ()
	
	
	Talk( 1, "��������.��:���,��������һ����峤��������.��.��ʲô��Ҫ��æ����?" )
	InitTrigger()
	TriggerCondition( 1, HasMission, 1014 )
	TriggerCondition( 1, HasRecord, 1013 )
	TriggerCondition( 1, NoRecord, 1059 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerFailure( 1, JumpPage, 3)
	Text( 1, "ѡ��ת��֮·",MultiTrigger, GetMultiTrigger(), 1 )


	InitTrigger()
	TriggerCondition( 1, HasRecord, 1059 )
	TriggerCondition( 1, HasNOZSExp )
	TriggerCondition( 1, NoRecord, 1056 )
	TriggerAction( 1, JumpPage, 5 )
	TriggerFailure( 1, JumpPage, 6)
	Text( 1, "����ѡ��ת��֮·",MultiTrigger, GetMultiTrigger(), 1 )
	Text( 1, "ûʲô", CloseTalk)


	InitTrigger()
	TriggerAction( 1, SetRecord, 1015 )
	TriggerAction( 1, SetRecord, 1059 )
	TriggerAction( 1, JumpPage, 4 )
	Talk( 2, "��������.��:ת��֮·��ʵ��Ϊ����������һ��Ϊ����֮·��ѡ�������Ļ��㽫����������Ϸ����Ϊǿ��ļ����������һ��ǿ��֮·���ڶ������ǿ���������ĵĵ�·��ѡ�������Ļ��㽫�����������ĵ��Ѻʹ��ۣ����û�г�ֵ�����׼���Ļ����ǲ�Ҫѡ�ĺã���õ��˻���ѡ�����֮·�����鷳֮·����ֻҪ�������һ����·�Ϳ���ת����Ŷ")
	Text( 2, "����֮·",MultiTrigger, GetMultiTrigger(), 1 )


	InitTrigger()
	TriggerAction( 1, SetRecord, 1016 )
	TriggerAction( 1, SetRecord, 1059 )
	TriggerAction( 1, JumpPage, 4 )
	Text( 2, "�鷳֮·",MultiTrigger, GetMultiTrigger(), 1  )

	Talk( 3, "�㻹û�е�ѡ��ת��֮·��ʱ��������Ѿ�ѡ�������ת��֮·")

	Talk( 4, "ѡ���˷����Ҫ����ֱǰ����ȥ��·�ˡ����ɣ�")


	InitTrigger()
	TriggerCondition( 1, HasRecord, 1016 )
	TriggerCondition( 1, HasMoney, 5000000 )
	TriggerAction( 1, ClearRecord, 1016 )
	TriggerAction( 1, SetRecord, 1015 )
	TriggerAction( 1, TakeMoney, 5000000 )
	TriggerAction( 1, JumpPage, 7 )
	TriggerFailure( 1, JumpPage, 8)
	Talk( 5, "����ѡ��ת��֮·��Ҫ�����ܴ�Ĵ��ۣ����Ҫ500W�����Ұɣ�")
	Text( 5, "��Ϊ����֮·",MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition( 1, HasRecord, 1015 )
	TriggerCondition( 1, HasMoney, 5000000 )
	TriggerAction( 1, ClearRecord, 1015 )
	TriggerAction( 1, SetRecord, 1016 )
	TriggerAction( 1, TakeMoney, 5000000 )
	TriggerAction( 1, JumpPage, 7 )
	TriggerFailure( 1, JumpPage, 8)
	Text( 5, "��Ϊ�鷳֮·",MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 6, "�㻹û��ѡ���ת��֮·�أ�����Ҫ��������ֻ�Ǹ���Щ�Ѿ�ѡ����˵����뷴�ڵ���׼���ģ�Ҳ�п������Ѿ����ת���ˣ�")

	Talk( 7, "������Ҫ����Ŷ")

	Talk( 8, "��û���㹻��Ǯ��������ѡ���ת��֮··��������ǰ��ѡ��")

	AddNpcMission ( 231 )
	AddNpcMission ( 232 )
	AddNpcMission ( 234 )
	AddNpcMission	(1037)
	AddNpcMission	(1091)
	AddNpcMission	(1149)
	AddNpcMission	(1200)
	AddNpcMission(	1228	)
	AddNpcMission	(327)
	AddNpcMission	(339)
	AddNpcMission	(340)
	AddNpcMission ( 6017 )
	AddNpcMission ( 6018 )
	



end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<���峤����������.��


----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[���ߵ�����ŷ��]			--
--							--
--		86214,359121				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk49 ()
	
	
	Talk( 1, "ŷ��:�������ư�,����.�������ҩ�ɶ��Ǹ�������������ط������Ӵ." )
	Text( 1, "����ظ�ҩ��", JumpPage, 2 )

	InitTrigger()
	TriggerCondition( 1, HasItem, 1779, 1 )
	TriggerCondition( 1, HasItem, 3129, 10 )
	TriggerCondition( 1, HasMoney, 50 )
	TriggerAction( 1, TakeItem, 3129, 10 )
	TriggerAction( 1, TakeItem, 1779, 1 )
	TriggerAction( 1, TakeMoney, 50 )
	TriggerAction( 1, GiveItem, 3133, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "ŷ��:Ҫ��ָ������ͱ���Ȼظ�ҩ��,�ҿ��Ե���һ�������Ŷ,�벻������?" )
	Text( 2, "����ʲ�ҩˮ", MultiTrigger, GetMultiTrigger(), 1)
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 1777, 1 )
	TriggerCondition( 1, HasItem, 3116, 10 )
	TriggerAction( 1, TakeItem, 3116, 10 )
	TriggerAction( 1, TakeItem, 1777, 1 )
	TriggerAction( 1, GiveItem, 3122, 1 , 4)
	TriggerAction( 1, JumpPage, 5 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 2, "��ե�����֭", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1779, 1 )
	TriggerCondition( 1, HasItem, 3130, 10 )
	TriggerCondition( 1, HasMoney, 50 )
	TriggerAction( 1, TakeMoney, 50 )
	TriggerAction( 1, TakeItem, 3130, 10 )
	TriggerAction( 1, TakeItem, 1779, 1 )
	TriggerAction( 1, GiveItem, 3134, 1 , 4)
	TriggerAction( 1, JumpPage, 7 )
	TriggerFailure( 1, JumpPage, 8 )
	Text( 2, "�������񻨲�", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3, "ŷ��:һ�ֽ�Ǯһ�ֽ���.Ǯ��������,������Ҫ�ĸʲ�ҩˮ,���ú�." )
	Talk( 4, "ŷ��:��,��Ҫ10��ҩ�ò�Ҷ��1��ҩƿ�Ӳ��ܺϳ�1���ʲ�ҩˮ��,�����㻹�ø�50G." )
	Talk( 5, "ŷ��:��������ľ������ե�ľ����֭,һ��û͵������,���պ�." )
	Talk( 6, "ŷ��:�Բ���,��û���䷽��Ҫ�Ķ���Ŷ.�����֭��Ҫ10���������1����������������Ӵ." )
	Talk( 7, "ŷ��:һ�ֽ�Ǯһ�ֽ���.Ǯ��������,������Ҫ�����񻨲�,���ú�." )
	Talk( 8, "ŷ��:��,��Ҫ10���λû����1��ҩƿ�Ӳ��ܺϳ�1ƿ���񻨲���,�����㻹�ø�50G." )

	AddNpcMission( 1007 )
	AddNpcMission( 1117 )
	AddNpcMission( 1171 )
	AddNpcMission(	1062	)
	AddNpcMission(	1229	)
	



end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<���ߵ�����ŷ��


----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[��װ������Ī��]			--
--							--
--		89463,360213				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk50 ()
	
	
	Talk( 1, "Ī��:�Ҽ��������ǲ÷�,����㿴,��������ϸҲû�д�Ʒ." )
	Text( 1, "����", BuyPage )
	Text( 1, "û��,�������",CloseTalk )

	InitTrade()
	Defence(	0365	)
	Defence(	0541	)
	Defence(	0717	)
	Defence(	0372	)
	Defence(	0548	)
	Defence(	0724	)
	Defence(	0366	)
	Defence(	0542	)
	Defence(	0718	)
	Defence(	0373	)
	Defence(	0549	)
	Defence(	0725	)
	Defence(	0368	)
	Defence(	0544	)
	Defence(	0720	)
	Defence(	0374	)
	Defence(	0550	)
	Defence(	0726	)
	Defence(	0367	)
	Defence(	0543	)
	Defence(	0719	)
	Defence(	0375	)
	Defence(	0551	)
	Defence(	0727	)
	Defence(	0369	)
	Defence(	0545	)
	Defence(	0721	)
	Defence(	0376	)
	Defence(	0552	)
	Defence(	0728	)
	Defence(	0370	)
	Defence(	0546	)
	Defence(	0722	)
	Defence(	0378	)
	Defence(	0554	)
	Defence(	0730	)
	Defence(	0371	)
	Defence(	0547	)
	Defence(	0723	)
	Defence(	0379	)
	Defence(	0555	)
	Defence(	0731	)
	Defence(	0383	)
	Defence(	0559	)
	Defence(	0735	)
	Defence(	0359	)
	Defence(	0535	)
	Defence(	0711	)
	Defence(	0381	)
	Defence(	0557	)
	Defence(	0733	)
	Defence(	0360	)
	Defence(	0536	)
	Defence(	0712	)
	Defence(	0389	)
	Defence(	0565	)
	Defence(	0741	)
	Defence(	0361	)
	Defence(	0537	)
	Defence(	0713	)
	Defence(	0390	)
	Defence(	0566	)
	Defence(	0742	)
	Defence(	0362	)
	Defence(	0538	)
	Defence(	0714	)
	Defence(	0385	)
	Defence(	0561	)
	Defence(	0737	)
	Defence(	0363	)
	Defence(	0539	)
	Defence(	0715	)
	Defence(	0392	)
	Defence(	0568	)
	Defence(	0744	)
	Defence(	0388	)
	Defence(	0564	)
	Defence(	0740	)
	Defence(	0382	)
	Defence(	0558	)
	Defence(	0734	)
	Defence(	0391	)
	Defence(	0567	)
	Defence(	0743	)


	AddNpcMission ( 715 )
	AddNpcMission	(1011)
	AddNpcMission	(1068)
	AddNpcMission	(1123)
	AddNpcMission	(1175)
	AddNpcMission(	1230	)
	



end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<��װ������Ī��

----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[���г��ɡ����˹]			--
--							--
--		90637,353900				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk51 ()
	
	
	Talk( 1, "���˹:����,��ӭ����ɳ�����.��ʲô��Ϊ��Ч�͵���?" )
	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, OpenBank )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "���У�ÿ��200G��", MultiTrigger, GetMultiTrigger(), 1)
	Talk( 2, "�Բ���,�����ֽ𲻹�,�޷�֧��ʹ�����еķ���." )

	AddNpcMission	(1051)
	AddNpcMission	(1104)
	AddNpcMission	(1160)
	AddNpcMission	(1213)
	AddNpcMission(	1231	)
-------eleven
	AddNpcMission(	5012	)	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<���г��ɡ����˹

----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[�����ӳ�Ա������]		--
--							--
--		86734,366071				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk52 ()
	
	
	Talk( 1, "����:�ұ�������������.���ǰ�,�ҵ���������ȴ����Ϊ��������������.��һ��,�Ҹ�������������ʮ���Һ�����,��Щ���ǵ�ֻʣһ���ڿ�ĳ�����,���ڷ�ŭ�ذ����ߵ������������Ҹ���ɳᰳǵİ�ȫ����." )
	Text( 1, "û��,�������",CloseTalk )
	
	
	----------------תְ��Ϊѵ��ʦ
	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 39 )
	TriggerCondition( 1, IsCategory, 1 )
	TriggerCondition( 1, PfEqual, 2 )
	TriggerCondition( 1, HasMoney, 20000 )
	TriggerCondition( 1, HasItem, 3364, 1 )
	TriggerAction( 1, TakeItem, 3364, 1 )
	TriggerAction( 1, TakeMoney, 20000 )
	TriggerAction( 1, SetProfession, 11 )
	TriggerAction( 1, JumpPage, 6 )
	TriggerCondition( 2, LvCheck, ">", 39 )
	TriggerCondition( 2, IsCategory, 3 )
	TriggerCondition( 2, PfEqual, 2 )
	TriggerCondition( 2, HasMoney, 20000 )
	TriggerCondition( 2, HasItem, 3364, 1 )
	TriggerAction( 2, TakeItem, 3364, 1 )
	TriggerAction( 2, TakeMoney, 20000 )
	TriggerAction( 2, SetProfession, 11  )
	TriggerAction( 2, JumpPage, 6 )
	TriggerFailure( 2, JumpPage, 7 )

	Talk(5, "��ѽ,���ǿ�ϧ��,���Ȼû������ѵ��ʦ!ƾ�ҵ�������ֱ��,����ô���츳��Ӧ��ȥ��ѵ��ʦ.���,�ҽ���ת�а�!")
	Text(5, "�õ�,תְ��Ϊѵ��ʦ", MultiTrigger, GetMultiTrigger(), 2)
	Text(5, "��,�Ҿ�����������ͦ�õ�.", CloseTalk)

	Talk(6, "��ô��,��û˵���,�������Ǹ���ѵ��ʦ����!")

	Talk(7, "��Ҫתְѵ��ʦ��?�ȵ���40��������,��֮ǰ�Ȱ����˵ļ�������,����ǵô���1��͸��ˮ����Ϊ�������ĳɼ�.תְ������20000G.")


	--TriggerCondition( 2, LvCheck, ">", 39 )
	--TriggerCondition( 2, IsCategory, 1 )
	--TriggerCondition( 2, PfEqual, 2 )
	--TriggerAction( 2, JumpPage, 5 )
	--TriggerCondition( 3, LvCheck, ">", 39 )
	--TriggerCondition( 3, IsCategory, 3 )
	--TriggerCondition( 3, PfEqual, 2 )
	--TriggerAction( 3, JumpPage, 5 )
	

	--Start( GetMultiTrigger(), 1 )
	

	AddNpcMission ( 243 )
	AddNpcMission ( 244 )
	AddNpcMission	(1012)
	AddNpcMission	(1069)
	AddNpcMission	(1124)
	AddNpcMission	(1176)
	AddNpcMission	(88)
	AddNpcMission	(89)
	AddNpcMission	(90)
	AddNpcMission(	1232	)
	



	
	MisListPage(5)
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�����ӳ�Ա������

----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[������ͭͭ��]			--
--							--
--		90424,349871				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk53 ()
	
	
	Talk( 1, "ͭͭ��:���,����.�����������������,��Ҫʲô�Լ���,�����.�����һ����޸�һЩ��ٵ���Ʒ." )
	Text( 1, "����", BuyPage )
	Text( 1, "����", OpenRepair )
	Text( 1, "��ʼ����", OpenForge)
	Text( 1, "��ʼ��ĥ", OpenMilling)
	Text( 1, "��װ�ۺ�", OpenFusion)
	Text( 1, "��װ����", OpenUpgrade)
	Text( 1, "û��,�������",CloseTalk )


	InitTrade()
	Weapon(	0008	)
	Weapon(	0196	)
	Weapon(	0197	)
	Weapon(	0198	)
	Weapon(	0097	)
	Weapon(	0104	)
	Weapon(	0098	)
	Weapon(	0105	)
	Weapon(	0099	)
	Weapon(	0106	)
	Weapon(	0101	)
	Weapon(	0107	)
	Weapon(	0102	)
	Weapon(	0108	)
	Weapon(	0100	)
	Weapon(	4301	)
	Weapon(	0103	)
	Weapon(	4302	)
	Weapon(	1427	)
	Weapon(	1428	)
	Weapon(	1429	)
	Weapon(	1430	)
	Weapon(	1431	)
	Weapon(	1432	)
	Weapon(	1433	)
	Weapon(	1434	)
	Weapon(	1435	)
	Weapon(	1436	)
	Weapon(	1437	)
	Weapon(	1438	)
	Weapon(	1440	)
	Weapon(	1441	)
	Weapon(	1462	)
	Weapon(	1463	)
	Weapon(	1464	)
	Weapon(	1465	)
	Weapon(	1466	)
	Weapon(	1467	)
	Weapon(	1468	)
	Weapon(	1469	)
	Weapon(	1470	)
	Weapon(	1471	)
	Weapon(	1472	)
	Weapon(	1473	)
	Weapon(	1475	)
	Weapon(	1476	)

	AddNpcMission ( 713 )
	AddNpcMission	(1043)
	AddNpcMission	(1095)
	AddNpcMission	(1154)
	AddNpcMission	(1206)
	AddNpcMission	(91)
	AddNpcMission	(92)
	AddNpcMission	(93)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<������ͭͭ��




--------------------------------------------------------------������ͽ�� 
function mmm_talk04 ()
	Talk( 1, "������ͽ�� :��Ҫ������ʦ���������Ǹö�ð�." )
	Text( 1, "���ڵ��߾���", JumpPage, 2 )
	Text( 1, "���ڵ��ߺϳ�", JumpPage, 3 )
	Text( 1, "����װ����ĥ", JumpPage, 7 )
	Text( 1, "û��,�������",CloseTalk )
	
	
	Talk( 2, "������ͽ��:Ҫ�������������װ�����븶������Ĵ���,���������Ҫ��һ�Ŷ�Ӧ�����������ȼ��ľ���ʯ,Ȼ������ѡ��һ������ı�ʯ��Ƕ��Ϊ���Ե�׷��,��ͬ�ı�ʯ����ͬ������,������ͬ��Ҳ����Ҫ�������ĵȼ�ƥ���,��ʦ������������,ֻ����Ƕ���ڻ��߸�����������������ı�ʯ,����Ҫ����ô?" )
	Text( 2, "�йؾ���ʯ", JumpPage, 4)
	Text( 2, "�й���Ƕ��ʯ", JumpPage, 5)
	Text( 2, "�йؾ����ɹ���", JumpPage, 6)
	
	Talk( 3, "������ͽ��:����ϳ���Ʒô?������֪�ϳ���Ʒ��Ҫ��һ�����Ӧ�ĺϳɹ�ʽ����,����������������кϳ�����Ҫ�Ĳ���,�������ɳᰳǵ��ӻ����ˡ���ī,�������������Ψһ��ϳɵ���,��֪���ľ�ֻ����Щ��." )
	
	Talk( 4, "������ͽ��:����ʯ�Ǿ����ıر���Ʒ,����ʯ�ĵȼ�������ڵ��ڵ�ǰ��Ҫ������װ�������ȼ�." )

	Talk( 5, "������ͽ��:��Ƕ��ʯ�кܶ���,���¿��Է�Ϊ�����Ļ�ϵ��ʯ��������ˮϵ��ʯ�������ʥϵ��ʯ." )

	Talk( 6, "������ͽ��:�����ĵȼ�Խ��ʧ�ܵļ���Խ��,��������ߵȼ�Ϊ27��,����ʧ�ܺ�����װ���ǲ�����ʧ��." )
	
	Talk( 7, "������ͽ��:��ĥװ���Ļ�,����Ҫ׼������ʦ��һ��װ���ӹ̼���һ��װ���߻����Ҳ��ܿ�ʼ��ĥŶ." )

end

----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[����]				--
--							--
--		88307,352019				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk54 ()
	
	
	Talk( 1, "����:���,����ͭͭ�ĵ���������." )
	Text( 1, "����Ⱦ����", JumpPage, 2)

----------------������ɫȾ����
	InitTrigger()
	TriggerCondition( 1, HasItem, 1791, 5 )
	TriggerCondition( 1, HasItem, 1657, 1 )
	TriggerCondition( 1, HasItem, 1778, 1 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 1791, 5 )
	TriggerAction( 1, TakeItem, 1657, 1 )
	TriggerAction( 1, TakeItem, 1778, 1 )
	TriggerAction( 1, GiveItem, 1801, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "����:����Ϊ����ͷ�����ʺ���,Ҫ��Ҫ���Կ�?�һ�����Ⱦ������." )
	Text( 2, "������ɫȾ����",MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3, "����:���,�����ɫȾ��������ɫ��������?�´ο�����������Ŷ." )
	Talk( 4, "����:5����ɫȾ�ϡ�1����Ч�����1����ɫ�������ټ���������200G����������ɫȾ������." )
	
	AddNpcMission	(1146)
	AddNpcMission	(155)
	AddNpcMission	(156)
	AddNpcMission	(157)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<����

----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[�ӻ����ˡ���ī]			--
--							--
--		84040,358567				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk55 ()
	
	
	Talk( 1, "��ī:����,��ӭ����.����¢���˳������е�������Ʒ,�����û���������." )
	Text( 1, "����", BuyPage )
	Text( 1, "�ϳ�", OpenUnite)
	Text( 1, "û��,�������",CloseTalk )
	Text( 1, "�һ���ʵ���",JumpPage, 2 )

	InitTrade()
	Other(	3206	)
	Other(	3208	)
	Other(	3205	)
	Other(	3242	)
	Other(	3210	)
	Other(	3207	)
	Other(	3211	)
	Other(	3215	)
	Other(	3212	)
	Other(	3209	)
	Other(	3220	)
	Other(	3222	)
	Other(	3219	)
	Other(	3218	)
	Other(	3216	)
	Other(	3223	)
	Other(	3217	)
	Other(	3224	)
	Other(	3225	)
	Other(	3226	)
	Other(	3294	)
	Other(	3295	)
	Other(	3141	)
	Other(	4602	)
	Other(	4603	)
	Other(	4604	)
	Other( 3296 )
	Other( 886 )
	--baby--�������Lv1
	Other(	2679	)
	Other(	2689	)
	Other(	2699	)
	Other(	2709	)
	--Leo
	Other(	1611	)
	Other(	1682	)
	Other(	1842	)
	Other(	1612	)
	Other(	1710	)
	Other(	1693	)
	Other(	4716	)
	Other(	1716	)
	Other(	1711	)
	Other(	3384	)
	Other(	3932	)
	Other(	1619	)
	Other(	2396	)
	Other(	1729	)
	Other(	4459	)
	Other(	1697	)
	Other(	1730	)
	Other(	1712	)
	Other(	1734	)
	Other(	1621	)
	Other(	1703	)
	Other(	3288	)

	AddNpcMission	(1161)
	AddNpcMission	(152)
	AddNpcMission	(153)
	AddNpcMission	(154)
	--AddNpcMission	(5500)

	---bragi
	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 2588, 1 )
	TriggerCondition( 1, HasItem, 1624, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerAction( 1, TakeItem, 2588, 1 )
	TriggerAction( 1, TakeItem, 1624, 10 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, GiveItem, 2326, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "Ҫ��õ���ʵ��ߵĻ��͵�׼�������ӡ1����1W�����ң�������������һ��3���ɼ�����10��Ŷ" )
	Text( 2, "�ù�ͷ��������ʵ���", MultiTrigger, GetMultiTrigger(), 1)

	---InitTrigger()
	---TriggerCondition( 1, HasLeaveBagGrid, 1 )
	---TriggerCondition( 1, KitbagLock, 0 )
	---TriggerCondition( 1, HasItem, 2588, 1 )
	---TriggerCondition( 1, HasItem, 1842, 10 )
	---TriggerCondition( 1, HasMoney, 10000 )
	---TriggerAction( 1, TakeItem, 2588, 1 )
	---TriggerAction( 1, TakeItem, 1842, 10 )
	---TriggerAction( 1, TakeMoney, 10000 )
	---TriggerAction( 1, GiveItem, 2326, 1 , 4)
	---TriggerAction( 1, JumpPage, 3 )
	---TriggerFailure( 1, JumpPage, 4 )
	---Text( 2, "�÷���������������ʵ���", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 2588, 1 )
	TriggerCondition( 1, HasItem, 4031, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerAction( 1, TakeItem, 2588, 1 )
	TriggerAction( 1, TakeItem, 4031, 10 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, GiveItem, 2326, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2, "��ˮ��ԭʯ��������ʵ���", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 2588, 1 )
	TriggerCondition( 1, HasItem, 3991, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerAction( 1, TakeItem, 2588, 1 )
	TriggerAction( 1, TakeItem, 3991, 10 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, GiveItem, 2326, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2, "��������ľԭľ��������ʵ���", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 2588, 1 )
	TriggerCondition( 1, HasItem, 4011, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerAction( 1, TakeItem, 2588, 1 )
	TriggerAction( 1, TakeItem, 4011, 10 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, GiveItem, 2326, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2, "����ˮ������������ʵ���", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3, "��ī:�ú�Ŷ������Ǻ���Ҫ�Ķ�����." )
	Talk( 4, "��ī:������û���㹻�Ĳ���Ŷ��Ҳ�п������ı����Ѿ��������߱����ռ䲻��." )

end 
-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�ӻ����ˡ���ī

----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[�õ��ϰ塤����]			--
--							--
--		81035,349813				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk56 ()
	
	
	Talk( 1, "����:���,ס����?¥�ϵ��Ϻÿͷ���������յ�." )
	Text( 1, "�����������", JumpPage, 2)


--------------------�����������֭
	InitTrigger()
	TriggerCondition( 1, HasItem, 1778, 1 )
	TriggerCondition( 1, HasItem, 3121, 4 )
	TriggerCondition( 1, HasMoney, 50 )
	TriggerAction( 1, TakeMoney, 50 )
	TriggerAction( 1, TakeItem, 3121, 4 )
	TriggerAction( 1, TakeItem, 1778, 1 )
	TriggerAction( 1, GiveItem, 3127, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "����:����ͷ���úþ��Ǻö���,�԰�,������.�㿴�������������û��,���ǳ���������һ�յ�ѽ." )
	Text( 2, "�����������֭",MultiTrigger, GetMultiTrigger(), 1)

----------------�����ۺϹ�֭
	InitTrigger()
	TriggerCondition( 1, HasItem, 1778, 1 )
	TriggerCondition( 1, HasItem, 3122, 1 )
	TriggerCondition( 1, HasItem, 3123, 1 )
	TriggerCondition( 1, HasItem, 3124, 1 )
	TriggerCondition( 1, HasItem, 3125, 1 )
	TriggerCondition( 1, HasMoney, 50 )
	TriggerAction( 1, TakeMoney, 50 )
	TriggerAction( 1, TakeItem, 3122, 1 )
	TriggerAction( 1, TakeItem, 3123, 1 )
	TriggerAction( 1, TakeItem, 3124, 1 )
	TriggerAction( 1, TakeItem, 3125, 1 )
	TriggerAction( 1, TakeItem, 1778, 1 )
	TriggerAction( 1, GiveItem, 3128, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 2, "�����ۺϹ�֭",MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3, "����:������,��Ҫ�Ķ���������.���Ҫ�ú�Ŷ,���ǳ������ܻ�ӭ����Ʒ��." )
	Talk( 4, "����:�Բ���,��û���䷽��Ҫ�Ķ���Ŷ.�������֭��Ҫ4����ʹ���1����ɫ����������50G��������Ӵ." )
	Talk( 5, "����:�Բ���,��û���䷽��Ҫ�Ķ���Ŷ.�ۺϹ�֭��Ҫ1�������֭��1��ɳ��衢1��Ģ������1�������޹�֭����1����ɫ������,�������50G��������Ӵ." )
	AddNpcMission	(1138)
	AddNpcMission	(1161)
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�õ��ϰ塤����

----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[��ʿС�㡤����]			--
--							--
--		87954,356282				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk57 ()
	
	
	Talk( 1, "����:���,���ǻ�ʿ����.��������ʵϰ��,ҽ������̫����,���Ի���������ҽ����,������Ļ������ȥ��ҩ�����ˡ�ɳ����������û������Ҫ�Ķ���,����λ���ڣ�903,3646��" )
	AddNpcMission	(1129)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<��ʿС�㡤����

--------------------------------------------------
--							--
--							--
--		ɳᰳ�[�������¿�]			--
--							--
--		794,3669				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk58 ()
	
	
	Talk( 1, "�¿�:��,�������˺������ų��¿�,Ŀǰ�ں����ͽ������������.�Ҳ��±�¶���,��Ϊ����û�Ǹ�����ץ��,�ٺ�." )
	

	Text( 1, "�λ�˫�ӹ�(�ռ�12��ר������)", JumpPage,2 )

	Talk( 2, "�������¿�:��ѡ����Ҫ���ص��Ѷ�,��ˮ�ֵ������Ѷ����μӴ�,��Ȼ���Ѷ�Խ�߽���Խ���.���������?ֻ��ѡ��һ��,�����Ժ��Ŷ" )

	InitTrigger()
	TriggerCondition( 1, NoRecord,1204 )
	TriggerCondition( 1, NoRecord,1161 )
	TriggerCondition( 1, HasItem, 3027, 1 )---------˫����Ʊ
	TriggerAction( 1, TakeItem, 3027, 1 )----------˫����Ʊ
	TriggerAction( 1, SetRecord, 1159 )
	TriggerAction( 1, SetRecord, 1162 )
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2, "ˮ��",MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, NoRecord,1159 )
	TriggerCondition( 1, NoRecord,1161 )
	TriggerCondition( 1, HasItem, 3027, 1 )---------˫����Ʊ
	TriggerAction( 1, TakeItem, 3027, 1 )----------˫����Ʊ
	TriggerAction( 1, SetRecord, 1204 )
	TriggerAction( 1, SetRecord, 1162 )
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2, "����",MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, NoRecord,1159 )
	TriggerCondition( 1, NoRecord,1204 )
	TriggerCondition( 1, HasItem, 3027, 1 )--------˫����Ʊ
	TriggerAction( 1, TakeItem, 3027, 1 )----------˫����Ʊ
	TriggerAction( 1, SetRecord, 1161 )
	TriggerAction( 1, SetRecord, 1162 )
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2, "����",MultiTrigger, GetMultiTrigger(), 1)

	Talk(3, "�������¿�:���������Լ�ѡ��ĵ�·�ϲ���һ���غ�.�۹�����..." )
	Talk( 4, "�������¿�:��ս˫�ӹ���ʱ��,�Ѷ�ֻ��ѡ��һ��.��ȷ�����ı�������˫�ӹ���Ʊ.")
	
	AddNpcMission	(1125)

---------------------�������¿�
	---------------˫��
	AddNpcMission	(5673)
	AddNpcMission	(5674)
	AddNpcMission	(5741)-------(5675)
	AddNpcMission	(5742)
	AddNpcMission	(5677)
	AddNpcMission	(5678)

	AddNpcMission	(5679)
	AddNpcMission	(5680)
	AddNpcMission	(5681)
	AddNpcMission	(5682)
	AddNpcMission	(5683)
	AddNpcMission	(5684)
	AddNpcMission	(5685)
	AddNpcMission	(5686)
	AddNpcMission	(5687)
	AddNpcMission	(5688)
	AddNpcMission	(5689)

	AddNpcMission	(5730)
	AddNpcMission	(5731)
	AddNpcMission	(5733)
	AddNpcMission	(5734)
	AddNpcMission	(5735)
	

	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�������¿�

----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[����ָ������˿��]			--
--							--
--		87614,357250				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk59 ()
	Talk( 1, "��˿��:�����,����.������˿��.��ϲ������͹�����,����������׼û��.��" )
	Text( 1, "�Ŷ�֮��", JumpPage, 31 )
	Text( 1, "����Ҫ�˽�Щʲô?", JumpPage, 4 )
	Text( 1, "����ְҵ������", JumpPage, 11 )
	Text( 1, "���ҹ�������", JumpPage, 30 )

	Talk( 4, "����ɳᰳ��Ǹ����칤�շǳ�����ĳ���,�����Ƚ��������ʹ�ֻ������ɳᰳ���������.�㲻���Ĵ�����,���˽�ɳᰳǵ�ΰ��." )
	Text( 4, "��ȥ������", JumpPage, 5 )
	Text( 4, "��ȥ�����", JumpPage, 7 )
	Text( 4, "��ȥ�����", JumpPage, 8 )
	Text( 4, "��Ҫ��������", JumpPage, 9 )
	Text( 4, "���岻���,Ҫȥ��ҽ��", JumpPage, 10 )

	Talk( 5, "ɳᰳǵ�����ͭͭ���ھ�Ӫ����������.�����۵��������ż���,ȥ������.�����̵�λ����ɳᰳǵ����Ͻ�,�ɱ���·Ŷ." )
	Text( 5, "����ѯ���������̼�", JumpPage, 4 )
	Text( 5, "�Ѿ���������ٿ���", CloseTalk )

--	Talk( 6, "����ʲô�����׵Ŀ��Լ�������Ŷ��", CloseTalk )

	Talk( 7, "������ߵĻ�����ȥ�ҷ�װ���Ī��,�����պ�,�۸��ֹ���.Ī�ǵĵ���������Ȫ�����·�." )
	Text( 7, "����ѯ���������̼�", JumpPage, 4 )
	Text( 7, "�Ѿ���������ٿ���", CloseTalk )

	Talk( 8, "�������?���ߵ���ŷ��������ܽ�,������ˮ�ص����Ͻ�.��ð����Ҫʲô,��Ӧ�ö���,ȥ������." )
	Text( 8, "����ѯ���������̼�", JumpPage, 4 )
	Text( 8, "�Ѿ���������ٿ���",  CloseTalk )

	Talk( 9, "��Ҫ���ǵĻ�,����ʹ��˹���԰��㴫�͵���½�ϵĸ���������ȥ,�����������԰��㴢�渴���Ŷ,�����ھ�������ĳ�����." )
	Text( 9, "����ѯ���������̼�", JumpPage, 4 )
	Text( 9, "�Ѿ���������ٿ���",  CloseTalk )

	Talk( 10, "��ѽ,����������?ҽ��С���������ˮ������,���������һ����!" )
	Text( 10, "����ѯ���������̼�", JumpPage, 4 )
	Text( 10, "�Ѿ���������ٿ���",  CloseTalk)


	InitTrigger()
	TriggerCondition( 1, NoRecord, 706 )
	TriggerCondition( 1, HasMission, 706 )
	TriggerCondition( 1, NoFlag, 706, 10 )
	TriggerAction( 1, SetFlag, 706, 10)
	TriggerAction( 1, JumpPage, 12 )
	TriggerFailure( 1, JumpPage, 12 )
	Talk( 11, "��˿��:��Ϊ���,����Ҫ�˽�ľ���ְҵ�����Ե��������,����֪��һЩʲô������?" )
	Text( 11, "�й�ְҵ", JumpPage, 12)
	Text( 11, "�й�����", JumpPage, 13)
	--Text( 11, "�й�ְҵ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, NoRecord, 706 )
	TriggerCondition( 1, HasMission, 706 )
	TriggerCondition( 1, NoFlag, 706, 20 )
	TriggerAction( 1, SetFlag, 706, 20)
	TriggerAction( 1, JumpPage, 13 )
	TriggerFailure( 1, JumpPage, 13 )
	--Text( 11, "�й�����", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 12, "��˿��:�ں�������һ�������ֳ�ʼְҵ,��ͬ�Ľ�ɫ��ʤ�β�ͬ��ְҵ,����Ǹ�ְҵ�����Ȥ��?" )
	Text( 12, "�йؽ�ʿ", JumpPage, 14 )
	Text( 12, "�й�����", JumpPage, 15 )
--	Text( 12, "�й�ˮ��", JumpPage, 16 )
	Text( 12, "�й�ð����", JumpPage, 17 )
	Text( 12, "�й�ҩʦ", JumpPage, 18 )
--	Text( 12, "�йؼ�ʦ", JumpPage, 19 )
--	Text( 12, "�й�����", JumpPage, 20 )

	Talk( 13, "��˿��:������������������������Ƴ�,Ӱ���Ų�ͬ����չ����,���ÿ��һ������1�����Ե��1�㼼�ܵ�,��ʼ���ָ���5�����Ը�����������." )
	Text( 13, "�й�����", JumpPage, 21 )
	Text( 13, "�й�����", JumpPage, 22 )
	Text( 13, "�й�����", JumpPage, 23 )
	Text( 13, "�йؾ���", JumpPage, 24 )
	--Text( 13, "�й�����", JumpPage, 25 )
	Text( 13, "�й�רע", JumpPage, 26 )

	Talk( 14, "��˿��:��ʿ�Ǻ����������������ߵ�һ��ְҵ,�������������Lv10�Ժ��Ұ����ǵ����������ؾ�ְ" )
	Text( 14, "ѯ������ְҵ", JumpPage, 12)
	Text( 14, "ѯ���й�����", JumpPage, 13)
	Text( 14, "�Ѿ�������ÿ���", JumpPage, 27)

	Talk( 15, "��˿��:�����Ǻ�������Ψһ��Զ�̹���ְҵ,�ں���תְ��Ϊ�ѻ����Ժ����ʹ�û�ǹ,ֻ������ͷ��������Ծ�ְ����,�����Lv10�Ժ��ұ��Ǳ��Ľ�ʿ����ŷ��ְ" )
	Text( 15, "ѯ������ְҵ", JumpPage, 12)
	Text( 15, "ѯ���й�����", JumpPage, 13)
	Text( 15, "�Ѿ�������ÿ���", JumpPage, 27)

	Talk( 16, "��˿��:ˮ���Ǻ���ս����ǿ��ְҵ,Ŀǰ�ڲ�汾δ����" )
	Text( 16, "ѯ������ְҵ", JumpPage, 12)
	Text( 16, "ѯ���й�����", JumpPage, 13)
	Text( 16, "�Ѿ�������ÿ���", JumpPage, 27)
	
	Talk( 17, "��˿��:ð�����Ǻ��ϸ�����ǿ��ְҵ,���˿���˹,�����˶����Ե������ְҵ.�����Lv10�Ժ�����Ұ����ǵ�Сɽ����ְ" )
	Text( 17, "ѯ������ְҵ", JumpPage, 12)
	Text( 17, "ѯ���й�����", JumpPage, 13)
	Text( 17, "�Ѿ�������ÿ���", JumpPage, 27)

	Talk( 18, "��˿��:ҩʦ�ǿ���Ů�������ͽ,����ӵ�����ص�ҽ������,ֻ�з������Ͱ��׿��Ծ�ְ,�����Lv10�Ժ������ɳᰳǵĴ���١��ʵ�ά����ְ" )
	Text( 18, "ѯ������ְҵ", JumpPage, 12)
	Text( 18, "ѯ���й�����", JumpPage, 13)
	Text( 18, "�Ѿ�������ÿ���", JumpPage, 27)

	Talk( 19, "��˿��:��ʦ�Ǻ����������������Ʒ��ְҵ,���еĹ��Ὠ�����¶����ɼ�ʦ������ɵ�,Ŀǰ�ڲ�汾δ����" )
	Text( 19, "ѯ������ְҵ", JumpPage, 12)
	Text( 19, "ѯ���й�����", JumpPage, 13)
	Text( 19, "�Ѿ�������ÿ���", JumpPage, 27)

	Talk( 20, "��˿��:�����Ǻ�������ӵ��ó��������ְҵ,������Զ������е�,Ŀǰ�ڲ�汾δ����" )
	Text( 20, "ѯ������ְҵ", JumpPage, 12)
	Text( 20, "ѯ���й�����", JumpPage, 13)
	Text( 20, "�Ѿ�������ÿ���", JumpPage, 27)

	Talk( 21, "��˿��:�����غ���ս������" )
	Text( 21, "ѯ����������", JumpPage, 13)
	Text( 21, "ѯ���й�ְҵ", JumpPage, 12)
	Text( 21, "�Ѿ�������ÿ���", JumpPage, 27)

	Talk( 22, "��˿��:���ݹغ������ٶ���������" )
	Text( 22, "ѯ����������", JumpPage, 13)
	Text( 22, "ѯ���й�ְҵ", JumpPage, 12)
	Text( 22, "�Ѿ�������ÿ���", JumpPage, 27)

	Talk( 23, "��˿��:���ʹغ�HP���������" )
	Text( 23, "ѯ����������", JumpPage, 13)
	Text( 23, "ѯ���й�ְҵ", JumpPage, 12)
	Text( 23, "�Ѿ�������ÿ���", JumpPage, 27)

	Talk( 24, "��˿��:�������SPֵ�뼼��ʩչЧ��" )
	Text( 24, "ѯ����������", JumpPage, 13)
	Text( 24, "ѯ���й�ְҵ", JumpPage, 12)
	Text( 24, "�Ѿ�������ÿ���", JumpPage, 27)

	Talk( 25, "��˿��:���˹غ�����һ�����ʺͺϳɳɹ�����" )
	Text( 25, "ѯ����������", JumpPage, 13)
	Text( 25, "ѯ���й�ְҵ", JumpPage, 12)
	Text( 25, "�Ѿ�������ÿ���", JumpPage, 27)

	Talk( 26, "��˿��:רע�غ������ʺ�Զ�̹�����" )
	Text( 26, "ѯ����������", JumpPage, 13)
	Text( 26, "ѯ���й�ְҵ", JumpPage, 12)
	Text( 26, "�Ѿ�������ÿ���", JumpPage, 27)

	Talk( 27, "��˿��:�ð�,�Ժ���ʲô�����׵ĵط��������Ұ�!")

	Talk( 28, "��˿��:�ܺ�,���Ѿ�������һЩ������ս�����ռ����ߵķ�����,���Ѿ�û��ʲô�ý������.�������������ѿ����Ƽ���ȥ������,��һ���һ������,����ɳᰳǵ�Ѳ�߱�,�����Ҳ����һ��ϲ��ս���Ļ���ȥ��������,���ڣ�958,3549��λ��,��ɳᰳ��ұ߳�ȥ��ֱ��,�Ϳ��Կ�������.��һλ������ɳᰳ�������ҩ�����ˡ�ɳ����,����ϲ���ռ�һЩ�����ݲݵĶ�����,��������������˰�æ�ռ�ҩ��ʲô��,��������Ȥ�Ļ���ȥ��903,3646������.ף�����!" )
	Text( 28, "����Ҫ�˽�Щʲô?", JumpPage, 4 )
	Text( 28, "����ְҵ������", JumpPage, 11 )
	Text( 28, "�Ѿ���������ٿ���",  CloseTalk)

	Talk( 29, "��˿��:�ܺ�,���������ȥ�Ҿ�ְ�˽��ܾ�ְ������.��ʿ�ľ�ְ���ǰ����ǵı��أ�����:2192,2767��,ҩʦ�ľ�ְ����ɳᰳǵĴ���١��ʵ�ά��������:862,3500��,�����˵ľ�ְ���Ǳ��Ǳ��Ľ�ʿ����ŷ������:1365,570��.���ڰ����Ǻͱ��Ǳ�·;ңԶ,�����ͨ���ſڵĴ���ʹ���Լ����͵�Ŀ�ĵ�.ף��һ·����Ŷ." )
	Text( 29, "����Ҫ�˽�Щʲô?", JumpPage, 4 )
	Text( 29, "����ְҵ������", JumpPage, 11 )
	Text( 29, "�Ѿ���������ٿ���",  CloseTalk )

	Talk( 30, "��˿��:����Ϸ����ҹ���������ʵ��һ���ܼ򵥵�,�ڰ����ǵľư����и��оƹ�����:���ɴ�½2222,2889������,�ҵ����Ϳ��Բ�ѯ���й����λ��.��" )

	InitTrigger()
	TriggerCondition( 1, NoItem, 1034, 1 )
	TriggerCondition( 1, NoItem, 1033, 1 )
	TriggerCondition( 1, BankNoItem, 1034, 1 )
	TriggerCondition( 1, BankNoItem, 1033, 1 )
	TriggerCondition( 1, EquipNoItem, 1034, 1 )
	TriggerCondition( 1, EquipNoItem, 1033, 1 )

	TriggerCondition( 1, LvCheck, "<", 41 )
	TriggerAction( 1, GiveItem, 1033, 1, 4 )
	TriggerFailure( 1, JumpPage, 6 )

	Talk( 31, "��˿��:�Ŷ�֮���Ǻ�������������һ�ַǳ������������,����װ������ʱ��,����ܼ����Ŷӵ�����,����������벻��������Ŷ,����Ϊ�˴��г�,����ó�׹�˾�ؾٰ�����������û,��Ϊ׬Ǯ,ֻΪ���г�,������41�����µ���ÿ������һ��,ͬʱ�ٰ조�ɻ������ջ����������ʹ�ù����Ŷ�֮������ȡ���ʵ�װ��.������Ȥ��?" )
	Text( 31, "��ȡ�Ŷ�֮��",MultiTrigger, GetMultiTrigger(), 1)
	Text( 31, "��ò������",JumpPage, 32 )

	Talk( 32, "��л��ʹ������ó�׹�˾�Ĳ�Ʒ,�������ʹ�ù��ġ��Ŷ�֮�ǡ�,�������������ﻻ�쵽50����ְҵ����һ��Ŷ,�����˶԰�")
	Text( 32, "����ְҵ����", Transfer_TeamStar, 1)

	Talk( 6, "��˿��:�Բ���,�����߱���ȡ�ʸ�" )
	
	--InitTrigger()
	---------------------��ҳ���6����ɹ�ɪ����ս��ѵ������
	--TriggerCondition( 1, LvCheck, ">", 4 )
	--TriggerCondition( 1, LvCheck, "<", 9 )
	---TriggerCondition( 1, HasRecord, 710 )
	--TriggerAction( 1, JumpPage, 28 )
	--TriggerCondition( 2, LvCheck, ">", 8 )
	--TriggerCondition( 2, PfEqual, 0 )
	--TriggerAction( 2, JumpPage, 29 )
	--TriggerFailure( 2, JumpPage, 1 )


	--Start( GetMultiTrigger(), 2 )

	AddNpcMission ( 711 )
	AddNpcMission ( 712 )
	AddNpcMission ( 714 )
	AddNpcMission ( 716 )
	AddNpcMission ( 718 )
	AddNpcMission ( 202 )
	AddNpcMission 	(414)
	AddNpcMission 	(83)
	AddNpcMission 	(84)
	AddNpcMission 	(94)
	AddNpcMission 	(161)
	AddNpcMission 	(62)
	AddNpcMission 	(63)
	AddNpcMission 	(64)
	AddNpcMission 	(65)

	MisListPage(28)
	MisListPage(29)
----------------------------------------------08�����´��kokora---------------------------------------
--	AddNpcMission 	(6211)
--	AddNpcMission 	(6212)
--	AddNpcMission 	(6213)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<����ָ������˿��


----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[�������´���Ա����΢����У]		--
--							--
--		86507,364804				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk61 ()
	
	
	Talk( 1, "��΢����У:���,���ǰ�΢��,������פɳᰳǵĵ�һ��Ů�⽻��." )
	AddNpcMission	(1126)
	AddNpcMission	(98)
	AddNpcMission	(99)
	AddNpcMission	(150)

	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�������´���Ա����΢����У

----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[ɳᰳ��̻�᳤��������]		--
--							--
--		87362,354566				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk62 ()
	
	
	Talk( 1, "������:ϡ��Ź������,����������ұ���,������������ר��,�ڵ��׵�������ץ.�ٺ�,�Ҿ���ȫ�����˵��ϴ�,��������ʲô����?" )
	Text( 1, "û��,�������",CloseTalk )
	AddNpcMission	(1144)

	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<ɳᰳ��̻�᳤��������

----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[·�ˡ�ɺ����]		--
--							--
--		84634,349945				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk63 ()
	
	
	Talk( 1, "ɺ����:Сɽ�����˵Ļ����������㶼��Ҫ��,�Ҿ����������Űᵽɳᰳǵ�." )
	InitTrigger()
	TriggerCondition( 1, HasItem, 2999, 99 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2999, 99 )
	TriggerAction( 1, GiveItem, 3000, 1 , 4)
	TriggerAction( 1, JumpPage, 2 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "99��������Ƭ�һ�1��������Կ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3000, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3000, 1 )
	TriggerAction( 1, GiveItem, 3017, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "1��������Կ�һ�1����ʹ����", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3000, 8 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3000, 8 )
	TriggerAction( 1, GiveItem, 3018, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "8��������Կ�һ�1���ƽ�ʥ��ʿ����", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3000, 18 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3000, 18 )
	TriggerAction( 1, GiveItem, 3019, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "18��������Կ�һ�1����������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3000, 88 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3000, 88 )
	TriggerAction( 1, GiveItem, 3020, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "88��������Կ�һ�1�����ٱ���", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3000, 198 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3000, 198 )
	TriggerAction( 1, GiveItem, 3021, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "198��������Կ�һ�1����ħ����", MultiTrigger, GetMultiTrigger(), 1)

	Text( 1, "��һҳ", JumpPage, 5)

	Talk( 5, "ɺ����:Сɽ�����˵Ļ����������㶼��Ҫ��,�Ҿ����������Űᵽɳᰳǵ�." )

	Text( 5, "��һҳ", JumpPage, 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3000, 498 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3000, 498 )
	TriggerAction( 1, GiveItem, 3022, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 5, "498��������Կ�һ�1�����񱦲�", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3000, 3888 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3000, 3888 )
	TriggerAction( 1, GiveItem, 3023, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 5, "3888��������Կ�һ�1�����ޱ���", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 2, "����Ǵ�˵���ܴ��������Ƹ���Կ�װ�����ζһ����Ǳ������ˡ�")
	Talk( 3, "��������Ҫ�ı�������ף����˿����ö���Ŷ��")
	Talk( 4, "��û���㹻�Ķһ�����Ҫ�ĵ��ߣ�Ҳ�п������ı����Ѿ��������߱����ռ䲻��." )

	AddNpcMission ( 6028 )
	AddNpcMission ( 6029 )
	AddNpcMission ( 6054 )
	AddNpcMission ( 6055 )

end 


-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<·�ˡ�ɺ����

----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[С������]			--
--							--
--		89875,368331				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk64 ()
	
	
	Talk( 1, "С������:�㡫������һֻ��˵������." )

	AddNpcMission ( 233 )
	---------------����
	AddNpcMission	(5565)
	AddNpcMission	(5566)

		----------------�ﵺ����
	--AddNpcMission	(6184)
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<С������

----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[�᳤������˾���]		--
--							--
--		87171,354774				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk65 ()
	
	
	Talk( 1, "��˾���:���ǻ᳤��˵����,��Ǯ��;����ʹ��,Ц��ص�.�ı������̤ʵ�ϸ�." )
	AddNpcMission ( 905 )
	----------------�����
	AddNpcMission ( 5604 )
	AddNpcMission ( 5605 )
	AddNpcMission ( 5606 )
	AddNpcMission ( 5607 )
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�᳤������˾���

----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[·�ˡ���]				--
--							--
--		79792,355469				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk66 ()
	
	
	Talk( 1, "·����:ʥŮ����ס�ھ�ɳ������,���������ͽ�ľ������." )
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<·�ˡ���

----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[ɳ�ˡ�����������]			--
--							--
--		108242,310135				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk67 ()
	
	
	Talk( 1, "����������:ѽ��!�Ҿ����˳������ٷ����˰�,���ɵй��ȸǴĵ�ɳĮ��������������!�����ԳƵ�.���Ŷȴ�����" )
	
	AddNpcMission ( 237 )
	AddNpcMission ( 238 )
	AddNpcMission ( 239 )
	AddNpcMission ( 240 )
	AddNpcMission ( 248 )
	AddNpcMission ( 557 )
--------eleven
	AddNpcMission (5011 )
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<ɳ�ˡ�����������


----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[�������ӡ���ɳ��]			--
--							--
--		125471,349171				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk68 ()
	
	
	Talk( 1, "��ɳ��:���������˼��ŵ���Ѭ�㵽����ȡ�Ժ�����?������֮�㾹Ȼ��������ʮ��ҹ,����������������.�����ҵõ�����Ѭ��,�ҽ�Ϊ��ȡ����ʮҹ,�����ں������." )
	Text( 1, "�ϳ�", JumpPage, 2)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1785, 10 )
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, TakeItem, 1785, 10 )
	TriggerAction( 1, GiveItem, 1786, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "��ɳ��:ˮ��ɰ����Ƭ�ܶ�̫��,��ֵҲû��ô��,Ҫ�Ұ�������Ǻϳ�ˮ��ɰ�ᾧ��?" )
	Text( 2, "�ϳ�ˮ��ɳ�ᾧ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3, "��ɳ��:�����ˮ��ɰ�Ľᾧ,��Ư����.�´���Ҫ��������������Ŷ." )
	Talk( 4, "��ɳ��:10��ˮ����Ƭ����2000G,ˮ��ɳ�ᾧ���������." )

	--------------���˻ ֮ �ʰ�֮��2
	AddNpcMission	(6258)
	AddNpcMission	(6259)
	-------------eleven
	AddNpcMission ( 5010)
	AddNpcMission ( 5014)
	AddNpcMission ( 5033)
	AddNpcMission ( 5034)
	---------------����
	AddNpcMission	(5553)
	AddNpcMission	(5554)
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�������ӡ���ɳ��


----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[����ר�ҡ�ɳ÷��]			--
--							--
--		66465,609367				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk69 ()
	
	
	Talk( 1, "ɳ÷��:���,������ʦɳ÷��,Ϊ�ռ��������׶���������." )
---------------����
	AddNpcMission	(5559)
	AddNpcMission	(5560)
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<����ר�ҡ�ɳ÷��


----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[ʥŮ������]			--
--							--
--		86248,330381				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk70 ()
	
	
	Talk( 1, "����:���,Զ������������,ԸŮ������������.����ɳᰳǵ�ʥŮ����." )

	AddNpcMission ( 756 )
	AddNpcMission ( 341 )
	AddNpcMission ( 356 )
	AddNpcMission ( 357 )
	AddNpcMission ( 521 )
	AddNpcMission ( 539 )
	AddNpcMission ( 540 )
	AddNpcMission ( 541 )
	AddNpcMission ( 552 )
	AddNpcMission ( 553 )
	AddNpcMission ( 556 )
-----------------ʥŮ������---------��ţ
	AddNpcMission	(5627)
	AddNpcMission	(5628)
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<ʥŮ������

----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[·�ˡ�������]			--
--							--
--		93176,352977				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk71 ()
	
	
	Talk( 1, "������:��֪����?������Ҳ�ǻῪ����!��˵���Ǻľ�һ���������Ļ������ޱ�,������һ��." )
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<·�ˡ�������

----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[����᳤������]			--
--							--
--		83171,354853				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk72 ()
	
	Talk( 1, "����:�Ž��������,������Ҫ�Ž�!����ս��ǿ�����󹫻�ô?���Ϊ��������ϵİ���ô?����ս��,����Ļ᳤����������������������󹫻���ս,�����ʤ��ô���Ĺ��Ὣȡ������Ϊ���󹫻�֮һ" )
	Text( 1, "�鿴���󹫻�", ListChallenge)
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<����᳤������

----------------------------------------------------------
--							--
--							--
--		���Ǳ�[����������]			--
--							--
--		134423,52988				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk73 ()
	
	
	Talk( 1, "����:��ӭ��ӭ.���������������,��֤�����ʵ." )
	Text( 1, "����", BuyPage )
	Text( 1, "����", OpenRepair)
	Text( 1, "���ھ���", JumpPage, 2)
	Text( 1, "���ںϳ�", JumpPage, 3)
	Text( 1, "û��,�������",CloseTalk )

	Talk( 2, "����:����?���ּ���ֻ��ɳᰳǵ������Ż�." )

	Talk( 3, "����:����ϳ���Ʒô?������֪�ϳ���Ʒ��Ҫ��һ�����Ӧ�ĺϳɹ�ʽ����,����������������кϳ�����Ҫ�Ĳ���,�������ɳᰳǵ��ӻ����ˡ���ī,�������������Ψһ��ϳɵ���,��֪���ľ�ֻ����Щ��." )


	InitTrade()
	Weapon(	0008	)
	Weapon(	0196	)
	Weapon(	0197	)
	Weapon(	0198	)
	Weapon(	0025	)
	Weapon(	0032	)
	Weapon(	0026	)
	Weapon(	0033	)
	Weapon(	0027	)
	Weapon(	0034	)
	Weapon(	1400	)
	Weapon(	1401	)
	Weapon(	1402	)
	Weapon(	1403	)
	Weapon(	1404	)
	Weapon(	1405	)
	Weapon(	0037	)
	Weapon(	0038	)
	Weapon(	0039	)
	Weapon(	0044	)
	Weapon(	0040	)
	Weapon(	0045	)
	Weapon(	1406	)
	Weapon(	1407	)
	Weapon(	1408	)
	Weapon(	1409	)
	Weapon(	1413	)
	Weapon(	1414	)



	AddNpcMission	(6251)
	AddNpcMission	(6252)
	AddNpcMission	(6253)
	AddNpcMission ( 723 )
	AddNpcMission	(1041)
	AddNpcMission	(1093)
	AddNpcMission	(1152)
	AddNpcMission	(1204)
	AddNpcMission(	1233	)
	


end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<����������

----------------------------------------------------------
--							--
--							--
--		���Ǳ�[�ӻ����ˡ���³]			--
--							--
--		135671,48320				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk74 ()
	Talk( 1, "��³:���,����.���Ǳ��Ǳ����ӻ�����.��ϲ���ռ�һЩ����,����10���Ժ���Ե������������ռ�����Ŷ,�һ�߼���ȡ��.��ʲô��Ϊ��Ч����?" )
	Text( 1, "����", BuyPage )
	Text( 1, "û��,�������",CloseTalk )
	Text( 1, "�һ���ʵ���",JumpPage, 2 )

	InitTrade()
	Other(	3187	)
	Other(	3188	)
	Other(	3190	)
	Other(	3239	)
	Other(	3197	)
	Other(	3193	)
	Other(	3241	)
	Other(	3192	)
	Other(	3198	)
	Other(	3202	)
	Other(	3203	)
	Other(	3204	)
	Other(	3225	)
	Other(	3226	)
	Other(	3294	)
	Other(	3295	)
	Other(	3141	)
	Other(	4602	)
	Other(	4603	)
	Other(	4604	)
	Other( 3296 )
	--baby--�������Lv1
	Other(	2679	)
	Other(	2689	)
	Other(	2699	)
	Other(	2709	)
	--Leo
	Other(	1611	)
	Other(	1682	)
	Other(	1842	)
	Other(	1612	)
	Other(	1710	)
	Other(	1693	)
	Other(	4716	)
	Other(	1716	)
	Other(	1711	)
	Other(	3384	)
	Other(	3932	)
	Other(	1619	)
	Other(	2396	)
	Other(	1729	)
	Other(	4459	)
	Other(	1697	)
	Other(	1730	)
	Other(	1712	)
	Other(	1734	)
	Other(	1621	)
	Other(	1703	)
	Other(	3288	)


	AddNpcMission	(1052)
	AddNpcMission	(1106)
	AddNpcMission	(1162)
	AddNpcMission	(1214)
	AddNpcMission	(181)
	AddNpcMission	(182)
	AddNpcMission	(183)
	AddNpcMission	(1234)
	--AddNpcMission	(5502)

	---bragi
	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 2588, 1 )
	TriggerCondition( 1, HasItem, 1624, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerAction( 1, TakeItem, 2588, 1 )
	TriggerAction( 1, TakeItem, 1624, 10 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, GiveItem, 2326, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "Ҫ��õ���ʵ��ߵĻ��͵�׼�������ӡ1����1W�����ң�������������һ��3���ɼ�����10��Ŷ" )
	Text( 2, "�ù�ͷ��������ʵ���", MultiTrigger, GetMultiTrigger(), 1)

	---InitTrigger()
	---TriggerCondition( 1, HasLeaveBagGrid, 1 )
	---TriggerCondition( 1, KitbagLock, 0 )
	---TriggerCondition( 1, HasItem, 2588, 1 )
	---TriggerCondition( 1, HasItem, 1842, 10 )
	---TriggerCondition( 1, HasMoney, 10000 )
	---TriggerAction( 1, TakeItem, 2588, 1 )
	---TriggerAction( 1, TakeItem, 1842, 10 )
	---TriggerAction( 1, TakeMoney, 10000 )
	---TriggerAction( 1, GiveItem, 2326, 1 , 4)
	---TriggerAction( 1, JumpPage, 3 )
	---TriggerFailure( 1, JumpPage, 4 )
	---Text( 2, "�÷���������������ʵ���", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 2588, 1 )
	TriggerCondition( 1, HasItem, 4031, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerAction( 1, TakeItem, 2588, 1 )
	TriggerAction( 1, TakeItem, 4031, 10 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, GiveItem, 2326, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2, "��ˮ��ԭʯ��������ʵ���", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 2588, 1 )
	TriggerCondition( 1, HasItem, 3991, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerAction( 1, TakeItem, 2588, 1 )
	TriggerAction( 1, TakeItem, 3991, 10 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, GiveItem, 2326, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2, "��������ľԭľ��������ʵ���", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 2588, 1 )
	TriggerCondition( 1, HasItem, 4011, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerAction( 1, TakeItem, 2588, 1 )
	TriggerAction( 1, TakeItem, 4011, 10 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, GiveItem, 2326, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2, "����ˮ������������ʵ���", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3, "��³:�ú�Ŷ������Ǻ���Ҫ�Ķ�����." )
	Talk( 4, "��³:������û���㹻�Ĳ���Ŷ��Ҳ�п������ı����Ѿ��������߱����ռ䲻��." )
end 
-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�ӻ����ˡ���³

----------------------------------------------------------
--							--
--							--
--		���Ǳ�[ҩ���ϰ塤���]			--
--							--
--		135298,49926				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk75 ()
	
	
	Talk( 1, "���:���,����.�������ư�,ȫ���Ǳ���õĲ�ҩ������������." )
	Text( 1, "����", BuyPage )
	Text( 1, "û��,�������",CloseTalk )
	
	Talk( 2, "���:�ܺ�,���Ѿ�������Lv9��,10���Ϳ��Ծ�ְ��.���������ȥ�Ҿ�ְ�˽��ܾ�ְ������.��ʿ�ľ�ְ���ǰ����ǵı��أ�����:2192,2767��,ҩʦ�ľ�ְ����ɳᰳǵĴ���١��ʵ�ά��������:862,3500��,�����˵ľ�ְ���Ǳ��Ǳ��Ľ�ʿ����ŷ������:1365,570��.���ڰ����Ǻ�ɳᰳ�·;ңԶ,�����ͨ���ſڵĴ���ʹ���Լ����͵�Ŀ�ĵ�.ף��һ·����Ŷ." )
	Text( 2, "����", BuyPage )
	Text( 2, "û��,�������",CloseTalk )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)
	Other(	3143	)
	--Leo
	Other(	1576	)
	Other(	4049	)
	Other(	4050	)
	Other(	1578	)
	Other(	4060	)
	Other(	4055	)
	Other(	4061	)
	Other(	2225	)
	Other(	4057	)
	Other(	1768	)

	---------------------��ҳ���9��
	--InitTrigger()
	--TriggerCondition( 1, LvCheck, ">", 8 )
	--TriggerCondition( 1, LvCheck, "<", 10 )
	--TriggerAction( 1, JumpPage, 2 )
	--TriggerFailure( 1, JumpPage, 1 )
	--Start( GetMultiTrigger(), 1 )

	AddNpcMission ( 727 )
	--AddNpcMission ( 735 )
	--AddNpcMission ( 746 )
	--AddNpcMission ( 747 )
	AddNpcMission	(1047)
	AddNpcMission	(1101)
	AddNpcMission	(1158)
	AddNpcMission	(1209)
	AddNpcMission(	1235	)
---------eleven	
	AddNpcMission(	5067)
	AddNpcMission(	593)
	AddNpcMission(	594	)
	AddNpcMission(	596	)	

	MisListPage(2)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<ҩ���ϰ塤���


----------------------------------------------------------
--							--
--							--
--		���Ǳ�[��ʿС�㡤����]			--
--							--
--		131725,50169				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk76 ()
	
	
	Talk( 1, "����:��,���ǻ�ʿ����.����ʵϰ��,��ʱ���޷���������Ŷ." )
	AddNpcMission	(1018)
	AddNpcMission	(1073)
	AddNpcMission	(1128)
	AddNpcMission	(1181)
	AddNpcMission(	1236	)
	



	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<��ʿС�㡤����

----------------------------------------------------------
--							--
--							--
--		���Ǳ�[����ָ��������¶��]		--
--							--
--		131577,50700				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk77 ()
	
	
        Talk( 1, "����¶��:����,���Ѷ����Ұ���.�һ���������Ӧ���Ǳ�������,���ܱ���ѩ����̽�յ���Ȥ.��" )
	Text( 1, "�Ŷ�֮��", JumpPage, 31 )
	Text( 1, "����Ҫ�˽�Щʲô?", JumpPage, 4 )
	Text( 1, "����ְҵ������", JumpPage, 11 )
	Text( 1, "���ڲ��ҹ�������", JumpPage, 30 )
	Text( 1, "�Ѿ���������ٿ���", CloseTalk )
--	Text( 1, "�Ѿ���������ٿ���", CloseTalk )


	Talk( 4, "����������,���Ǳ��Ǹ�����ѩ���ǵĳ���.Ҫ����������������ع�����,�͵���֪����ι�������Ʒ�ͷ���Ʒ." )
	Text( 4, "������������", JumpPage, 5 )
	Text( 4, "���ڷ�������", JumpPage, 7 )
	Text( 4, "���ڵ�������", JumpPage, 8 )
	Text( 4, "���ڴ���ʹ��", JumpPage, 9 )
	Text( 4, "����ҽ������", JumpPage, 10 )

	Talk( 5, "���뿪��Ȫ������,֮���ҹ�,���ܿ�����������,���ﾭӪ��������������.�������ѩ�صĵط���ɵ��Ҹ����ʵı�������." )
	Text( 5, "����ѯ���������̼�", JumpPage, 4 )
	Text( 5, "�Ѿ���������ٿ���", CloseTalk )

--	Talk( 6, "����ʲô�����׵Ŀ��Լ�������Ŷ��", CloseTalk )

	Talk( 7, "����ߵĵط��������̿ɽ���.��������Ȼ���ҹվ͵���.��װ���ϰ��Ǹ�����,�϶������������Ư�����ߵ�." )
	Text( 7, "����ѯ���������̼�", JumpPage, 4 )
	Text( 7, "�Ѿ���������ٿ���", CloseTalk )

	Talk( 8, "�������?�ӻ��������ﲻԶ,�Ϳ��ڱ��Ǳ������Ͻ�.��ð����Ҫʲô,����Ӧ�ö���,ȥ������." )
	Text( 8, "����ѯ���������̼�", JumpPage, 4 )
	Text( 8, "�Ѿ���������ٿ���", CloseTalk )

	Talk( 9, "����������ǰ����·��ֱ��,���ܿ������ſ���λƯ����С����.���Ǵ���ʹ,�ܰ��㴫�͵���½�ĸ�������ȥ,�����������԰��㴢�渴���Ŷ." )
	Text( 9, "����ѯ���������̼�", JumpPage, 4 )
	Text( 9, "�Ѿ���������ٿ���", CloseTalk )

	Talk( 10, "ҽ��С�������Ȫ��һ�ߵ���λС��.���Ҫ��ס��Ŷ,�Ժ��������˶���������." )
	Text( 10, "����ѯ���������̼�", JumpPage, 4 )
	Text( 10, "�Ѿ���������ٿ���", CloseTalk )

	InitTrigger()
	TriggerCondition( 1, NoRecord, 700 )
	TriggerCondition( 1, HasMission, 700 )
	TriggerCondition( 1, NoFlag, 700, 10 )
	TriggerAction( 1, SetFlag, 700, 10)
	TriggerAction( 1, JumpPage, 12 )
	TriggerFailure( 1, JumpPage, 12 )
	Talk( 11, "����¶��:��Ϊ�������,����Ҫ�˽�ľ���ְҵ�����Ե��������,����֪��һЩʲô������?" )
	Text( 11, "�й�ְҵ", JumpPage, 12)
	Text( 11, "�й�����", JumpPage, 13)

	--Text( 11, "�й�ְҵ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, NoRecord, 700 )
	TriggerCondition( 1, HasMission, 700 )
	TriggerCondition( 1, NoFlag, 700, 20 )
	TriggerAction( 1, SetFlag, 700, 20)
	TriggerAction( 1, JumpPage, 13 )
	TriggerFailure( 1, JumpPage, 13 )
	--Text( 11, "�й�����", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 12, "����¶��:�ں�������һ�������ֳ�ʼְҵ,��ͬ�Ľ�ɫ��ʤ�β�ͬ��ְҵ,����Ǹ�ְҵ�����Ȥ��?" )
	Text( 12, "�йؽ�ʿ", JumpPage, 14 )
	Text( 12, "�й�����", JumpPage, 15 )
--	Text( 12, "�й�ˮ��", JumpPage, 16 )
	Text( 12, "�й�ð����", JumpPage, 17 )
	Text( 12, "�й�ҩʦ", JumpPage, 18 )
--	Text( 12, "�йؼ�ʦ", JumpPage, 19 )
--	Text( 12, "�й�����", JumpPage, 20 )
	Text( 12, "�˽���,�뿴��������.", JumpPage, 11 )

	Talk( 13, "����¶��:������������������������Ƴ�,Ӱ���Ų�ͬ����չ����,���ÿ��һ������1�����Ե��1�㼼�ܵ�,��ʼ���ָ���5�����Ը�����������." )
	Text( 13, "�й�����", JumpPage, 21 )
	Text( 13, "�й�����", JumpPage, 22 )
	Text( 13, "�й�����", JumpPage, 23 )
	Text( 13, "�йؾ���", JumpPage, 24 )
	--Text( 13, "�й�����", JumpPage, 25 )
	Text( 13, "�й�רע", JumpPage, 26 )
	Text( 13, "�˽���,�뿴��������.", JumpPage, 11 )

	Talk( 14, "����¶��:��ʿ�Ǻ����������������ߵ�һ��ְҵ,�������������Lv10�Ժ��Ұ����ǵ����������ؾ�ְ" )
	Text( 14, "ѯ������ְҵ", JumpPage, 12)
	Text( 14, "ѯ���й�����", JumpPage, 13)
	Text( 14, "�Ѿ�������ÿ���", JumpPage, 27)

	Talk( 15, "����¶��:�����Ǻ�������Ψһ��Զ�̹���ְҵ,�ں���תְ��Ϊ�ѻ����Ժ����ʹ�û�ǹ,ֻ������ͷ��������Ծ�ְ����,�����Lv10�Ժ��ұ��Ǳ��Ľ�ʿ����ŷ��ְ" )
	Text( 15, "ѯ������ְҵ", JumpPage, 12)
	Text( 15, "ѯ���й�����", JumpPage, 13)
	Text( 15, "�Ѿ�������ÿ���", JumpPage, 27)

	Talk( 16, "����¶��:ˮ���Ǻ���ս����ǿ��ְҵ,Ŀǰ�ڲ�汾δ����" )
	Text( 16, "ѯ������ְҵ", JumpPage, 12)
	Text( 16, "ѯ���й�����", JumpPage, 13)
	Text( 16, "�Ѿ�������ÿ���", JumpPage, 27)
	
	Talk( 17, "����¶��:ð�����Ǻ��ϸ�����ǿ��ְҵ,���˿���˹,�����˶����Ե������ְҵ.�����Lv10�Ժ�����Ұ����ǵ�Сɽ����ְ" )
	Text( 17, "ѯ������ְҵ", JumpPage, 12)
	Text( 17, "ѯ���й�����", JumpPage, 13)
	Text( 17, "�Ѿ�������ÿ���", JumpPage, 27)

	Talk( 18, "����¶��:ҩʦ�ǿ���Ů�������ͽ,����ӵ�����ص�ҽ������,ֻ�з������Ͱ��׿��Ծ�ְ,�����Lv10�Ժ������ɳᰳǵĴ���١��ʵ�ά����ְ" )
	Text( 18, "ѯ������ְҵ", JumpPage, 12)
	Text( 18, "ѯ���й�����", JumpPage, 13)
	Text( 18, "�Ѿ�������ÿ���", JumpPage, 27)

	Talk( 19, "����¶��:��ʦ�Ǻ����������������Ʒ��ְҵ,���еĹ��Ὠ�����¶����ɼ�ʦ������ɵ�,Ŀǰ�ڲ�汾δ����" )
	Text( 19, "ѯ������ְҵ", JumpPage, 12)
	Text( 19, "ѯ���й�����", JumpPage, 13)
	Text( 19, "�Ѿ�������ÿ���", JumpPage, 27)

	Talk( 20, "����¶��:�����Ǻ�������ӵ��ó��������ְҵ,������Զ������е�,Ŀǰ�ڲ�汾δ����" )
	Text( 20, "ѯ������ְҵ", JumpPage, 12)
	Text( 20, "ѯ���й�����", JumpPage, 13)
	Text( 20, "�Ѿ�������ÿ���", JumpPage, 27)

	Talk( 21, "����¶��:�����غ���ս������" )
	Text( 21, "ѯ����������", JumpPage, 13)
	Text( 21, "ѯ���й�ְҵ", JumpPage, 12)
	Text( 21, "�Ѿ�������ÿ���", JumpPage, 27)

	Talk( 22, "����¶��:���ݹغ������ٶ���������" )
	Text( 22, "ѯ����������", JumpPage, 13)
	Text( 22, "ѯ���й�ְҵ", JumpPage, 12)
	Text( 22, "�Ѿ�������ÿ���", JumpPage, 27)

	Talk( 23, "����¶��:���ʹغ�HP���������" )
	Text( 23, "ѯ����������", JumpPage, 13)
	Text( 23, "ѯ���й�ְҵ", JumpPage, 12)
	Text( 23, "�Ѿ�������ÿ���", JumpPage, 27)

	Talk( 24, "����¶��:�������SPֵ�뼼��ʩչЧ��" )
	Text( 24, "ѯ����������", JumpPage, 13)
	Text( 24, "ѯ���й�ְҵ", JumpPage, 12)
	Text( 24, "�Ѿ�������ÿ���", JumpPage, 27)

	Talk( 25, "����¶��:���˹غ�����һ�����ʺͺϳɳɹ�����" )
	Text( 25, "ѯ����������", JumpPage, 13)
	Text( 25, "ѯ���й�ְҵ", JumpPage, 12)
	Text( 25, "�Ѿ�������ÿ���", JumpPage, 27)

	Talk( 26, "����¶��:רע�غ������ʺ�Զ�̹�����" )
	Text( 26, "ѯ����������", JumpPage, 13)
	Text( 26, "ѯ���й�ְҵ", JumpPage, 12)
	Text( 26, "�Ѿ�������ÿ���", JumpPage, 27)

	Talk( 27, "����¶��:�ð�,�Ժ���ʲô�����׵ĵط��������Ұ�!")

	Talk( 28, "����¶��:�ܺ�,���Ѿ�������һЩ������ս�����ռ����ߵķ�����,���Ѿ�û��ʲô�ý������.�������������ѿ����Ƽ���ȥ������,��һ���һ��СĪ,���Ǳ��Ǳ���Ѳ�߱�,�����Ҳ����һ��ϲ��ս���Ļ���ȥ��������,���ڣ�1237,613��λ��,�ӱ��Ǳ����������߳�ȥ,�Ϳ��Կ�������.��һλ�����Ǳ��Ǳ�������ҩ���ϰ塤���,����ϲ���ռ�һЩ�����ݲݵĶ�����,��������������˰�æ�ռ�ҩ��ʲô��,��������Ȥ�Ļ���ȥ��1352,499������.ף�����!" )
	Text( 28, "����Ҫ�˽�Щʲô?", JumpPage, 4 )
	Text( 28, "����ְҵ������", JumpPage, 11 )
	Text( 28, "�Ѿ���������ٿ���",  CloseTalk )

	Talk( 29, "����¶��:�ܺ�,���������ȥ�Ҿ�ְ�˽��ܾ�ְ������.��ʿ�ľ�ְ���ǰ����ǵı��أ�����:2192,2767��,ҩʦ�ľ�ְ����ɳᰳǵĴ���١��ʵ�ά��������:862,3500��,�����˵ľ�ְ���Ǳ��Ǳ��Ľ�ʿ����ŷ������:1365,570��.���ڰ����Ǻ�ɳᰳ�·;ңԶ,�����ͨ���ſڵĴ���ʹ���Լ����͵�Ŀ�ĵ�.ף��һ·����Ŷ." )
	Text( 29, "����Ҫ�˽�Щʲô?", JumpPage, 4 )
	Text( 29, "����ְҵ������", JumpPage, 11 )
	Text( 29, "�Ѿ���������ٿ���",  CloseTalk)

	Talk( 30, "����¶��:����Ϸ����ҹ���������ʵ��һ���ܼ򵥵�,�ڰ����ǵľư����и��оƹ�����:���ɴ�½2222,2889������,�ҵ����Ϳ��Բ�ѯ���й����λ��.��" )

	InitTrigger()
	TriggerCondition( 1, NoItem, 1034, 1 )
	TriggerCondition( 1, NoItem, 1033, 1 )
	TriggerCondition( 1, BankNoItem, 1034, 1 )
	TriggerCondition( 1, BankNoItem, 1033, 1 )
	TriggerCondition( 1, EquipNoItem, 1034, 1 )
	TriggerCondition( 1, EquipNoItem, 1033, 1 )

	TriggerCondition( 1, LvCheck, "<", 41 )
	TriggerAction( 1, GiveItem, 1033, 1, 4 )
	TriggerFailure( 1, JumpPage, 6 )

	Talk( 31, "����¶��:�Ŷ�֮���Ǻ�������������һ�ַǳ������������,����װ������ʱ��,����ܼ����Ŷӵ�����,����������벻��������Ŷ,����Ϊ�˴��г�,����ó�׹�˾�ؾٰ�����������û,��Ϊ׬Ǯ,ֻΪ���г�,������41�����µ���ÿ������һ��,ͬʱ�ٰ조�ɻ������ջ����������ʹ�ù����Ŷ�֮������ȡ���ʵ�װ��.������Ȥ��?" )
	Text( 31, "��ȡ�Ŷ�֮��",MultiTrigger, GetMultiTrigger(), 1)
	Text( 31, "��ò������",JumpPage, 32 )

	Talk( 32, "��л��ʹ������ó�׹�˾�Ĳ�Ʒ,�������ʹ�ù��ġ��Ŷ�֮�ǡ�,�������������ﻻ�쵽50����ְҵ����һ��Ŷ,�����˶԰�")
	Text( 32, "����ְҵ����", Transfer_TeamStar, 1)

	Talk( 6, "����¶��:�Բ���,�����߱���ȡ�ʸ�" )

	--InitTrigger()
	---------------------��ҳ���6����ɹ�ɪ����ս��ѵ������
	--TriggerCondition( 1, LvCheck, ">", 4 )
	--TriggerCondition( 1, LvCheck, "<", 9 )
	--TriggerCondition( 1, HasRecord, 716 )
	--TriggerAction( 1, JumpPage, 28 )
	--TriggerCondition( 2, LvCheck, ">", 8 )
	--TriggerCondition( 2, PfEqual, 0 )
	--TriggerAction( 2, JumpPage, 29 )
	--TriggerFailure( 2, JumpPage, 1 )

	--Start( GetMultiTrigger(), 2 )

	
	AddNpcMission ( 721 )
	AddNpcMission ( 722 )
	AddNpcMission ( 724 )
	AddNpcMission ( 726 )
	AddNpcMission ( 728 )
	AddNpcMission ( 201 )
	AddNpcMission 	(406)
	AddNpcMission 	(62)
	AddNpcMission 	(63)
	AddNpcMission 	(64)
	AddNpcMission 	(65)
	AddNpcMission 	(162)
	AddNpcMission 	(163)
	AddNpcMission 	(173)
	AddNpcMission 	(190)


	MisListPage(28)
	MisListPage(29)
----------------------------------------------08�����´��kokora---------------------------------------
--	AddNpcMission 	(6208)
--	AddNpcMission 	(6209)
--	AddNpcMission 	(6210)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<����ָ��������¶��


----------------------------------------------------------
--							--
--							--
--		���Ǳ�[���Ǳ���ʿ����ŷ]		--
--							--
--		136573,57078				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk78 ()
	
	-------------------תְ˫��
	Talk( 1, "��ŷ:����������ͽ�����,��ϲ�������������û�ĵط�ȥ����.��Ҫ������Ȥ,����ʱ���Ը����㼸����ȥ��." )

		----------------תְ��Ϊ����
	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 9 )
	TriggerCondition( 1, IsCategory, 1 )
	TriggerCondition( 1, PfEqual, 0 )
	TriggerCondition( 1, HasMoney, 1000 )
	TriggerCondition( 1, HasItem, 3955, 1 )
	TriggerAction( 1, TakeItem, 3955, 1 )
	TriggerAction( 1, TakeMoney, 1000 )
	TriggerAction( 1, GiveItem, 3187, 1 , 4)
	TriggerAction( 1, GiveItem, 25, 1 , 4)
	TriggerAction( 1, SetProfession, 2 )
	TriggerAction( 1, JumpPage, 3 )
	TriggerCondition( 2, LvCheck, ">", 7 )
	TriggerCondition( 2, IsCategory, 3 )
	TriggerCondition( 2, PfEqual, 0 )
	TriggerCondition( 2, HasMoney, 1000 )
	TriggerCondition( 2, HasItem, 3955, 1 )
	TriggerAction( 2, TakeItem, 3955, 1 )
	TriggerAction( 2, TakeMoney, 1000 )
	TriggerAction( 2, GiveItem, 3187, 1 , 4)
	TriggerAction( 2, GiveItem, 25, 1, 4)
	TriggerAction( 2, SetProfession, 2  )
	TriggerAction( 2, JumpPage, 3 )
	TriggerFailure( 2, JumpPage, 4 )

	Talk(2, "��,����,��ķ�Ӧ����ͦ����,���ʺ�����������.������,���תְ�����˰�,�ұ�֤�����ñ��������.")
	Text(2, "�õ�,תְ��Ϊ����", MultiTrigger, GetMultiTrigger(), 2)
	Text(2, "��,�Ҿ�����������ͦ�õ�.", CloseTalk)

	Talk(3, "���Ѿ��������˵Ļ�֪ʶ����������.Ҫ��Ϊһ����ɫ�����˻�Ҫ�����պ��������.")

	Talk(4, "��Ҫ��ְ������?ֻ�еȼ�8���ϵ��������Ů,���������ֲ�,��1000G�ǼǷѲſ���,׳����СŮ���ǲ��ʺ����ְҵ��.")

	----------------תְ��Ϊ�ѻ���
	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 39 )
	TriggerCondition( 1, IsCategory, 1 )
	TriggerCondition( 1, PfEqual, 2 )
	TriggerCondition( 1, HasMoney, 15000 )
	TriggerCondition( 1, HasItem, 3364, 1 )
	TriggerAction( 1, TakeItem, 3364, 1 )
	TriggerAction( 1, TakeMoney, 15000 )
	TriggerAction( 1, SetProfession, 12 )
	TriggerAction( 1, JumpPage, 6 )
	TriggerCondition( 2, LvCheck, ">", 39 )
	TriggerCondition( 2, IsCategory, 3 )
	TriggerCondition( 2, PfEqual, 2 )
	TriggerCondition( 2, HasMoney, 15000 )
	TriggerCondition( 2, HasItem, 3364, 1 )
	TriggerAction( 2, TakeItem, 3364, 1 )
	TriggerAction( 2, TakeMoney, 15000 )
	TriggerAction( 2, SetProfession, 12  )
	TriggerAction( 2, JumpPage, 6 )
	TriggerFailure( 2, JumpPage, 7 )

	Talk(5, "���ڵľѻ�������̫������,ֻҪ��׬Ǯ,ʲô�˶���ɱ.����,��ʵ�Ҿ�������������,��ƷҲ��,Ҫ��Ҫ���ǵ����ѻ���,�������ֲ����ķ���?")
	Text(5, "�õ�,תְ��Ϊ�ѻ���", MultiTrigger, GetMultiTrigger(), 2)
	Text(5, "��,�Ҿ�����������ͦ�õ�.", CloseTalk)

	Talk(6, "�ѻ��ֲ���ɱ��,��Ҳ������ְҵ����.�㵱�˾ѻ���֮��ɲ�Ҫ������һ��.")

	Talk(7, "��Ҫתְ�ѻ�����?�ȵ���40��������,��֮ǰ�Ȱ����˵ļ�������,����ǵô���1��͸��ˮ����Ϊ�������ĳɼ�.תְ������15000G.")

	--InitTrigger()

-------------------ת�����ж�
	--TriggerCondition( 1, LvCheck, ">", 9 )
	----TriggerCondition( 1, IsCategory, 1 )
	--TriggerCondition( 1, PfEqual, 0 )
	--TriggerAction( 1, JumpPage, 2 )
	--TriggerCondition( 2, LvCheck, ">", 9 )
	--TriggerCondition( 2, IsCategory, 3 )
	--TriggerCondition( 2, PfEqual, 0 )
	--TriggerAction( 2, JumpPage, 2 )
	--TriggerFailure( 2, JumpPage, 1 )

----------------�ѻ���

	--TriggerCondition( 3, LvCheck, ">", 39 )
	--TriggerCondition( 3, IsCategory, 1 )
	--TriggerCondition( 3, PfEqual, 2 )
	--TriggerAction( 3, JumpPage, 5 )
	--TriggerCondition( 4, LvCheck, ">", 39 )
	--TriggerCondition( 4, IsCategory, 3 )
	--TriggerCondition( 4, PfEqual, 2 )
	--TriggerAction( 4, JumpPage, 5 )
	--TriggerFailure( 4, JumpPage, 1 )

	--Start( GetMultiTrigger(), 2 )
	
	--AddNpcMission ( 729 )
	AddNpcMission ( 101 )
	AddNpcMission ( 251 )
	AddNpcMission ( 252 )
	AddNpcMission ( 260 )
	AddNpcMission ( 261 )
	AddNpcMission 	(410)
	AddNpcMission 	(757)
	AddNpcMission 	(167)
	AddNpcMission 	(168)
	AddNpcMission 	(169)
	AddNpcMission 	(174)
	AddNpcMission 	(175)
	AddNpcMission 	(176)
	AddNpcMission 	(180)
	AddNpcMission 	(523)
	AddNpcMission(	1237	)
-------------eleven
	AddNpcMission(	5057	)
	AddNpcMission(	5061	)	
	AddNpcMission(	5069	)
----------1.7
	AddNpcMission(	5168	)
	AddNpcMission(	5090	)
	AddNpcMission (5097 )
	AddNpcMission (5098 )
	AddNpcMission (5099 )
	AddNpcMission (5100 )
	AddNpcMission (5111 )

	MisListPage(2)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<���Ǳ���ʿ����ŷ

----------------------------------------------------------
--							--
--							--
--		���Ǳ�[���Ǳ��̻�᳤��������]		--
--							--
--		129486,49842				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk79 ()
	
	
	Talk( 1, "������:�������̻����������.���,����,�Ҿ��Ǳ��Ǳ����̻�᳤,Ҳ�Ǳ��Ǳ���е���." )
	Text( 1, "���������ظ�ҩ��", JumpPage, 5)

	--------------------���������
	InitTrigger()
	TriggerCondition( 1, HasItem, 1779, 1 )
	TriggerCondition( 1, HasItem, 3138, 2 )
	TriggerCondition( 1, HasItem, 3137, 2 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 3138, 2 )
	TriggerAction( 1, TakeItem, 3137, 2 )
	TriggerAction( 1, TakeItem, 1779, 1 )
	TriggerAction( 1, GiveItem, 3139, 1 , 4)
	TriggerAction( 1, JumpPage, 6 )
	TriggerFailure( 1, JumpPage, 7 )
	Talk( 5, "������:ҩ�������ҩ����С����,���������ֻش�ҩֻ���ұ��Ǳ����̻�᳤����Ŷ." )
	Text( 5, "���������",MultiTrigger, GetMultiTrigger(), 1)

	----------------�ϳ�ħ��ҩˮ
	InitTrigger()
	TriggerCondition( 1, HasItem, 1779, 1 )
	TriggerCondition( 1, HasItem, 3133, 1 )
	TriggerCondition( 1, HasItem, 3134, 1 )
	TriggerCondition( 1, HasItem, 3135, 1 )
	TriggerCondition( 1, HasItem, 3136, 1 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 3133, 1 )
	TriggerAction( 1, TakeItem, 3134, 1 )
	TriggerAction( 1, TakeItem, 3135, 1 )
	TriggerAction( 1, TakeItem, 3136, 1 )
	TriggerAction( 1, TakeItem, 1779, 1 )
	TriggerAction( 1, GiveItem, 3140, 1 , 4)
	TriggerAction( 1, JumpPage, 6 )
	TriggerFailure( 1, JumpPage, 8 )
	Text( 5, "�ϳ�ħ��ҩˮ",MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6, "������:����õ���,������Ҫ�Ķ���,��Ч���." )
	Talk( 7, "������:������ȷʵ�������,������������ع�2��������������2����1��ҩƿ�ӻ���200G�����һ�." )
	Talk( 8, "������:������ȷʵ��ħ��ҩˮ,��������øʲ�ҩˮ1�������񻨲�1�������������1������ѿ��1������1��ҩƿ���ټ��ϻ���200G�����һ�." )

	AddNpcMission 	(459)
	AddNpcMission 	(465)
	AddNpcMission 	(699)
	AddNpcMission 	(800)
	AddNpcMission	(1005)
	AddNpcMission	(1060)
	AddNpcMission	(1115)
	AddNpcMission	(1169)
	AddNpcMission(	1238	)
	--------------------1.7
	AddNpcMission ( 5084	)
	AddNpcMission ( 5085	)
	AddNpcMission ( 5086	)
	AddNpcMission ( 5087	)
	AddNpcMission (5143 )
	AddNpcMission (5144 )
	AddNpcMission (5145 )
	AddNpcMission (5146 )
	AddNpcMission (5151 )



end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�̻�᳤��������

----------------------------------------------------------
--							--
--							--
--		���Ǳ�[���Ǳ����塤�����˹]		--
--							--
--		134652,45141				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk80 ()
	
	
	Talk( 1, "�����˹:�ҵļ���ʷ�ͱ��Ǳ�����ʷһ����,�ҵ�����Ҳ������Ǳ��ı���һ���貶�Ŀ." )
	Text( 1, "�йغ����ŵĴ�˵",JumpPage, 2 )
	Text( 1, "û��,�������",CloseTalk )


	Talk( 2, "�����˹:�ٺٺٺ١���������?���봴��������?��Ҫ��������û�����������." )
	InitTrigger()
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerCondition( 1, HasItem, 1780, 1 )
	TriggerAction( 1, CreateGuild, 1 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 2, "����������", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3, "�����˹:��������ͷĿ������ô���׵�,����100000G�ĺ�������,ӵ������֮ʯ���˲��ܳ�Ϊһ�������ĺ���" )


	AddNpcMission ( 253 )
	AddNpcMission ( 254 )
	AddNpcMission (	453 )
	AddNpcMission 	(698)
	AddNpcMission 	(801)
	AddNpcMission	(1004)
	AddNpcMission	(1059)
	AddNpcMission	(1114)
	AddNpcMission	(1168)
	AddNpcMission	(317)
	AddNpcMission	(321)
	AddNpcMission	(322)
-----------eleven
	AddNpcMission	(5045)
	AddNpcMission	(5046)
	AddNpcMission	(5047)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<���Ǳ����塤�����˹

----------------------------------------------------------
--							--
--							--
--		���Ǳ�[���г��ɡ�������]		--
--							--
--		136058,51931				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk81 ()
	
	
	Talk( 1, "������:��ӭ���ٱ��Ǳ�����.����,�������г��ɲ�����." )
	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, OpenBank )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "���У�ÿ��200G��", MultiTrigger, GetMultiTrigger(), 1)
	Talk( 2, "�Բ���,�����ֽ𲻹�,�޷�֧��ʹ�����еķ���." )

	AddNpcMission	(1102)
	AddNpcMission	(187)
	AddNpcMission	(188)
	AddNpcMission	(189)
----------eleven
	AddNpcMission	(597)
	AddNpcMission	(598)
	AddNpcMission ( 6093 )

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<���г��ɡ�������

-----------------------------------------------------------
--							--
--							--
--		���Ǳ�[�ưɷ���Ա���Ű���]		--
--							--
--		131083,53031				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk82 ()
	
	
	Talk( 1, "�Ű���:���,����.��ʲô�����ð�վ�����?������Ȥ,�ҿ��������һ��Ӵ." )

	Text( 1, "Ѫ����ţ��(�ռ�12��ר������)", JumpPage,9 )
--	Text( 1, "ˮ�ֹ��ؽ���", JumpPage,11 )
--	Text( 1, "�������ؽ���", JumpPage,12 )
--	Text( 1, "�������ؽ���", JumpPage,13 )
	Text( 1, "����Ⱦ����", JumpPage, 2)
	Text( 1, "�������", JumpPage, 6)


	Talk( 9, "�Ű���:��ѡ����Ҫ���ص��Ѷ�,��ˮ�ֵ������Ѷ����μӴ�,��Ȼ���Ѷ�Խ�߽���Խ���.���������?ֻ��ѡ��һ��,�����Ժ��Ŷ" )

	InitTrigger()
	TriggerCondition( 1, NoRecord,1112 )
	TriggerCondition( 1, NoRecord,1113 )
	TriggerCondition( 1, HasItem, 2943, 1 )---------��ţ��Ʊ
	TriggerAction( 1, TakeItem, 2943, 1 )----------��ţ��Ʊ
	TriggerAction( 1, SetRecord, 1111 )
	TriggerAction( 1, SetRecord, 1152 )
	TriggerAction( 1, JumpPage, 10 )
	TriggerFailure( 1, JumpPage, 13 )
	Text( 9, "ˮ��",MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, NoRecord,1111 )
	TriggerCondition( 1, NoRecord,1113 )
	TriggerCondition( 1, HasItem, 2943, 1 )---------��ţ��Ʊ
	TriggerAction( 1, TakeItem, 2943, 1 )----------��ţ��Ʊ
	TriggerAction( 1, SetRecord, 1112 )
	TriggerAction( 1, SetRecord, 1152 )
	TriggerAction( 1, JumpPage, 10 )
	TriggerFailure( 1, JumpPage, 13 )
	Text( 9, "����",MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, NoRecord,1111 )
	TriggerCondition( 1, NoRecord,1112 )
	TriggerCondition( 1, HasItem, 2943, 1 )---------��ţ��Ʊ
	TriggerAction( 1, TakeItem, 2943, 1 )----------��ţ��Ʊ
	TriggerAction( 1, SetRecord, 1113 )
	TriggerAction( 1, SetRecord, 1152 )
	TriggerAction( 1, JumpPage, 10 )
	TriggerFailure( 1, JumpPage, 13 )
	Text( 9, "����",MultiTrigger, GetMultiTrigger(), 1)

	Talk(10, "�Ű���:�ҿ�����Ӵ!!" )
	Talk( 13, "�Ű���:��ս��ţ����ʱ��,�Ѷ�ֻ��ѡ��һ��Ŷ.��ȷ�����ı������н�ţ����Ʊ.")

--	InitTrigger()
--	TriggerCondition( 1, HasRecord,1111 )
--	TriggerCondition( 1, HasItem, 3028, 1 )
--	TriggerCondition( 1, HasItem, 3029, 1 )
--	TriggerCondition( 1, HasItem, 3030, 1 )
--	TriggerCondition( 1, HasItem, 3031, 1 )
--	TriggerCondition( 1, HasItem, 3032, 1 )
--	TriggerCondition( 1, HasItem, 3033, 1 )
--	TriggerCondition( 1, HasItem, 3034, 1 )
--	TriggerCondition( 1, HasLeaveBagGrid, 3 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerAction( 1, TakeItem, 3028, 1 )
--	TriggerAction( 1, TakeItem, 3029, 1 )
--	TriggerAction( 1, TakeItem, 3030, 1 )
--	TriggerAction( 1, TakeItem, 3031, 1 )
--	TriggerAction( 1, TakeItem, 3032, 1 )
--	TriggerAction( 1, TakeItem, 3033, 1 )
--	TriggerAction( 1, TakeItem, 3034, 1 )
--	TriggerAction( 1, SetLog  , 0 )-------------??????
--
--	TriggerAction( 1, GiveItem, 3026, 1 , 4)
--	TriggerAction( 1, GiveItem, 3027, 1 , 4)
--	TriggerAction( 1, GiveItem, 0227, 10 , 4)
--	TriggerAction( 1, AddMoney, 100000 )
--	TriggerAction( 1, JumpPage, 15 )
--	TriggerFailure( 1, JumpPage, 16 )
--	Talk( 11, "�Ű���:����7öѫ�¾Ϳ�����������һ���������ӡ����һ������Ʊ��.���кཱܶ��Ŷ" )
--	Text( 11, "ȷ���һ�",MultiTrigger_1, GetMultiTrigger(), 1)--------------------?????????
--
--
--
--	InitTrigger()
--	TriggerCondition( 1, HasRecord,1112 )
--	TriggerCondition( 1, HasItem, 3028, 1 )
--	TriggerCondition( 1, HasItem, 3029, 1 )
--	TriggerCondition( 1, HasItem, 3030, 1 )
--	TriggerCondition( 1, HasItem, 3031, 1 )
--	TriggerCondition( 1, HasItem, 3032, 1 )
--	TriggerCondition( 1, HasItem, 3033, 1 )
--	TriggerCondition( 1, HasItem, 3034, 1 )
--	TriggerCondition( 1, HasLeaveBagGrid, 3 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerAction( 1, TakeItem, 3028, 1 )
--	TriggerAction( 1, TakeItem, 3029, 1 )
--	TriggerAction( 1, TakeItem, 3030, 1 )
--	TriggerAction( 1, TakeItem, 3031, 1 )
--	TriggerAction( 1, TakeItem, 3032, 1 )
--	TriggerAction( 1, TakeItem, 3033, 1 )
--	TriggerAction( 1, TakeItem, 3034, 1 )
--
--	TriggerAction( 1, GiveItem, 3026, 1 , 4)
--	TriggerAction( 1, GiveItem, 3027, 1 , 4)
--	TriggerAction( 1, GiveItem, 0227, 20 , 4)
--	TriggerAction( 1, AddMoney, 200000 )
--	TriggerAction( 1, JumpPage, 15 )
--	TriggerFailure( 1, JumpPage, 16 )
--	Talk( 11, "�Ű���:����7öѫ�¾Ϳ�����������һ�����ţ����ӡ��˫�ӹ�����Ʊ��.���кཱܶ��Ŷ" )
--	Text( 11, "ȷ���һ�",MultiTrigger, GetMultiTrigger(), 1)
--
--
--	InitTrigger()
--	TriggerCondition( 1, HasRecord,1113 )
--	TriggerCondition( 1, HasItem, 3028, 1 )
--	TriggerCondition( 1, HasItem, 3029, 1 )
--	TriggerCondition( 1, HasItem, 3030, 1 )
--	TriggerCondition( 1, HasItem, 3031, 1 )
--	TriggerCondition( 1, HasItem, 3032, 1 )
--	TriggerCondition( 1, HasItem, 3033, 1 )
--	TriggerCondition( 1, HasItem, 3034, 1 )
--	TriggerCondition( 1, HasLeaveBagGrid, 3 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerAction( 1, TakeItem, 3028, 1 )
--	TriggerAction( 1, TakeItem, 3029, 1 )
--	TriggerAction( 1, TakeItem, 3030, 1 )
--	TriggerAction( 1, TakeItem, 3031, 1 )
--	TriggerAction( 1, TakeItem, 3032, 1 )
--	TriggerAction( 1, TakeItem, 3033, 1 )
--	TriggerAction( 1, TakeItem, 3034, 1 )
--
--	TriggerAction( 1, GiveItem, 3026, 1 , 4)
--	TriggerAction( 1, GiveItem, 3027, 1 , 4)
--	TriggerAction( 1, GiveItem, 0227, 30 , 4)
--	TriggerAction( 1, AddMoney, 300000 )
--	TriggerAction( 1, JumpPage, 15 )
--	TriggerFailure( 1, JumpPage, 16 )
--	Talk( 12, "�Ű���:����7ö��ţѫ�¾Ϳ�����������һ�����ţ����ӡ��˫�ӹ�����Ʊ��.���кཱܶ��Ŷ" )
--	Text( 12, "ȷ���һ�",MultiTrigger, GetMultiTrigger(), 1)
--
--	Talk( 16, "�Ű���:�������ƺ�û���㹻��ѫ�°�!�������ı����Ƿ�������,����Ҫ��֤����3���ո�!������ȷ���㵱ʱѡ����Ѷ��������?")
--	Talk( 15, "�Ű���:��һ����˫�ӹ�Ŷ,�ٽ�����!")


-----------������ɫȾ����
	InitTrigger()
	TriggerCondition( 1, HasItem, 1792, 5 )
	TriggerCondition( 1, HasItem, 1657, 1 )
	TriggerCondition( 1, HasItem, 1778, 1 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 1792, 5 )
	TriggerAction( 1, TakeItem, 1657, 1 )
	TriggerAction( 1, TakeItem, 1778, 1 )
	TriggerAction( 1, GiveItem, 1802, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "�Ű���:���,����.��ʲô�����ð�վ�����?������Ȥ,�ҿ��������һ��Ӵ." )
	Text( 2, "������ɫȾ����", MultiTrigger, GetMultiTrigger(), 1)
-------------------------������ɫȾ����
	InitTrigger()
	TriggerCondition( 1, HasItem, 1793, 5 )
	TriggerCondition( 1, HasItem, 1657, 1 )
	TriggerCondition( 1, HasItem, 1778, 1 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 1793, 5 )
	TriggerAction( 1, TakeItem, 1657, 1 )
	TriggerAction( 1, TakeItem, 1778, 1 )
	TriggerAction( 1, GiveItem, 1803, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 2, "������ɫȾ����", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3, "�Ű���:�ҵ���Ⱦ���������Ķ��˰�!���պ�,�´���Ҫ��������Ŷ." )
	Talk( 4, "�Ű���:5����ɫȾ�ϡ�1����Ч�����1����ɫ�������ټ���������200G��������ɫȾ����,���������ֻ������Ӵ." )
	Talk( 5, "�Ű���:5����ɫȾ�ϡ�1����Ч�����1����ɫ�������ټ���������200G��������ɫȾ����,���������ֻ������Ӵ." )

	InitTrigger()
	TriggerCondition( 1, HasItem, 1777, 1 )
	TriggerCondition( 1, HasItem, 3116, 10 )
	TriggerAction( 1, TakeItem, 3116, 10 )
	TriggerAction( 1, TakeItem, 1777, 1 )
	TriggerAction( 1, GiveItem, 3122, 1 , 4)
	TriggerAction( 1, JumpPage, 7 )
	TriggerFailure( 1, JumpPage, 8 )
	Talk( 6, "�Ű���:���Ǳ��Ǳ�Ψһ�����������֭����,������һ��ô?" )
	Text( 6, "��ե�����֭", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 7, "�Ű���:��������ľ������ե�ľ����֭,һ��û͵������,���պ�." )

	Talk( 8, "�Ű���:�Բ���,��û���䷽��Ҫ�Ķ���Ŷ.�����֭��Ҫ10���������1����������������Ӵ." )
	AddNpcMission	(1078)
	AddNpcMission	(389)
---------------------�Ű���
	---------------��ţ
	AddNpcMission	(5608)
	AddNpcMission	(5609)
	AddNpcMission	(5610)
	AddNpcMission	(5611)
	AddNpcMission	(5612)
	AddNpcMission	(5613)

	AddNpcMission	(5614)
	AddNpcMission	(5615)
	AddNpcMission	(5616)
	AddNpcMission	(5617)
	AddNpcMission	(5618)
	AddNpcMission	(5619)
	AddNpcMission	(5620)
	AddNpcMission	(5621)
	AddNpcMission	(5622)
	AddNpcMission	(5623)
	AddNpcMission	(5624)

	AddNpcMission	(5667)
	--AddNpcMission	(5668)

	AddNpcMission	(5670)
	AddNpcMission	(5671)
	AddNpcMission	(5672)
--	AddNpcMission	(5673)
	AddNpcMission	(5675)
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�ưɷ���Ա���Ű���

----------------------------------------------------------
--							--
--							--
--		���Ǳ�[��װ����������]		--
--							--
--		134926,53992				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk83 ()
	
	
	Talk( 1, "����:���,��ӭ���ٱ��Ǳ�ʱװ��,ʱ�г���������ѡ." )
	Text( 1, "����", BuyPage )
	Text( 1, "û��,�������",CloseTalk )
	
	InitTrade()
	Defence(	0305	)
	Defence(	0481	)
	Defence(	0657	)
	Defence(	0313	)
	Defence(	0487	)
	Defence(	0665	)
	Defence(	0306	)
	Defence(	0482	)
	Defence(	0658	)
	Defence(	0311	)
	Defence(	0489	)
	Defence(	0663	)
	Defence(	0307	)
	Defence(	0483	)
	Defence(	0659	)
	Defence(	0314	)
	Defence(	0490	)
	Defence(	0666	)
	Defence(	0310	)
	Defence(	0486	)
	Defence(	0662	)
	Defence(	0491	)
	Defence(	0315	)
	Defence(	0667	)
	Defence(	0312	)
	Defence(	0488	)
	Defence(	0664	)
	Defence(	0316	)
	Defence(	0492	)
	Defence(	0668	)




	AddNpcMission ( 725 )
	AddNpcMission	(1067)
	AddNpcMission	(170)
	AddNpcMission	(171)
	AddNpcMission	(172)
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<��װ����������

----------------------------------------------------------
--							--
--							--
--		���Ǳ�[�õ��ϰ塤Լɪ��]		--
--							--
--		129074,54098				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk84 ()
	
	
	Talk( 1, "Լɪ��:��ӭ���ٱ��Ǳ����洬�õ�,�����ϰ�Լɪ��." )
	AddNpcMission	(1085)
	AddNpcMission	(184)
	AddNpcMission	(185)
	AddNpcMission	(186)
	---------------�ﵺ����
	--AddNpcMission	(6179)
	--AddNpcMission	(6180)
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�õ��ϰ塤Լɪ��

----------------------------------------------------------
--							--
--							--
--		���Ǳ�[·�ˡ���]		--
--							--
--		133550,46900				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk85 ()
	
	
	Talk( 1, "��:������ҵ����������?���Ƿֱ��ס��ɳᰳǡ������Ǻ�������." )
	Text( 1, "����", JumpPage, 2)
-------------------����ؽ��ʯ
	InitTrigger()
	TriggerCondition( 1, HasItem, 1781, 10 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 1781, 10 )
	TriggerAction( 1, GiveItem, 1782, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )	
	Talk( 2, "��:�Ҳ���һ����ͨ��·��,�����ھ�֤�����㿴,�Ҷ������Ϸ��ô��Ҫ!û������Ͳ��ܺϳ�,����." )
	Text( 2, "����ؽ��ʯ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3, "��:��,���������ˬ��,���С��ؽ��ʯ�������." )
	Talk( 4, "��:�������а취����С��ؽ��ʯ,�ܸ���10���ؽ��ʯ��Ƭ��200G�����������." )

	AddNpcMission ( 6015 )
	AddNpcMission ( 6016 )
	AddNpcMission ( 6019 )
	AddNpcMission ( 6020 )
	AddNpcMission ( 6021 )
	AddNpcMission ( 6022 )
	AddNpcMission ( 6023 )
	AddNpcMission ( 6024 )
	-------------------·�ˡ���  -------------------------��з
	AddNpcMission ( 5859 )
	AddNpcMission ( 5860 )

	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<·�ˡ���




------------------------------------------------------------
-- ����֮��:��ʷ����:����ָ������
------------------------------------------------------------

function BT_NewUser001()

	Talk( 1, "ɪ��:���,���ǰ����ǵ������ʹɪ��,�����չ��������������Ѻ͹�����������,��ʲô�����׾�������." )
	Text( 1, "�Ŷ�֮��", JumpPage, 31 )
	Text( 1, "���ڰ�����", JumpPage, 4 )
	Text( 1, "����ְҵ������", JumpPage, 11 )
	Text( 1, "���ڲ�ѯ��������", JumpPage, 30 )
	Text( 1, "�Ѿ���������ٿ���",  CloseTalk)



	Talk( 4, "���ǰ������Ǹ���ҵ�ǳ�����ĳ���,�ж�����̳�����Ӧ����Ʒ,������Ĵ�����." )
	Text( 4, "������������", JumpPage, 5 )
	Text( 4, "���ڷ�������", JumpPage, 7 )
	Text( 4, "���ڵ�������", JumpPage, 8 )
	Text( 4, "���ڴ���ʹ��", JumpPage, 9 )
	Text( 4, "����ҽ��С��", JumpPage, 10 )

	Talk( 5, "����֮�ǵ�����С����ھ�Ӫ����������,�����۵��������ż���,ȥ������,�����̵�λ���ڰ���֮���ڵ����Ͻ�." )
	Text( 5, "����ѯ���������̼�", JumpPage, 4 )
	Text( 5, "�Ѿ���������ٿ���",  CloseTalk )

--	Talk( 6, "����ʲô�����׵Ŀ��Լ�������Ŷ��", CloseTalk )

	Talk( 7, "����֮�ǵķ���ʮ�ֽ�ʵ����,����ȥ��ѡһ��,���̼ҵ�λ���ڳ������Ͻ�." )
	Text( 7, "����ѯ���������̼�", JumpPage, 4 )
	Text( 7, "�Ѿ���������ٿ���",  CloseTalk )

	Talk( 8, "����������������������ĵ��߳���,����ð������˵��ʮ����Ҫ��,��ˮ�ص��ұ߾��г���,ȥ������." )
	Text( 8, "����ѯ���������̼�", JumpPage, 4 )
	Text( 8, "�Ѿ���������ٿ���",  CloseTalk )

	Talk( 9, "����ʹ�߿��Խ��㴫�͵������½�ĸ�������ȥ,����һ�����ܾ��ǿ��԰��㴢�渴���Ŷ,����������ĳ�����." )
	Text( 9, "����ѯ���������̼�", JumpPage, 4 )
	Text( 9, "�Ѿ���������ٿ���",  CloseTalk )

	Talk( 10, "ҽ��С��������ˮ������һ��ĵط�,���ĵ�ʮ�ֺ�,������ṩҽ��ҽ������,��Ҷ���ϲ������." )
	Text( 10, "����ѯ���������̼�", JumpPage, 4 )
	Text( 10, "�Ѿ���������ٿ���", CloseTalk)

	
	InitTrigger()
	TriggerCondition( 1, NoRecord, 700 )
	TriggerCondition( 1, HasMission, 700 )
	TriggerCondition( 1, NoFlag, 700, 10 )
	TriggerAction( 1, SetFlag, 700, 10)
	TriggerAction( 1, JumpPage, 12 )
	TriggerFailure( 1, JumpPage, 12 )
	Talk( 11, "ɪ��:��Ϊ�������,����Ҫ�˽�ľ���ְҵ�����Ե��������,����֪��һЩʲô������?" )
	Text( 11, "�й�ְҵ", JumpPage, 12)
	Text( 11, "�й�����", JumpPage, 13)
	Text( 11, "�Ѿ���������ٿ���", JumpPage, 6 )
	--Text( 11, "�й�ְҵ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, NoRecord, 700 )
	TriggerCondition( 1, HasMission, 700 )
	TriggerCondition( 1, NoFlag, 700, 20 )
	TriggerAction( 1, SetFlag, 700, 20)
	TriggerAction( 1, JumpPage, 13 )
	TriggerFailure( 1, JumpPage, 13 )
	--Text( 11, "�й�����", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 12, "ɪ��:�ں�������һ�������ֳ�ʼְҵ,��ͬ�Ľ�ɫ��ʤ�β�ͬ��ְҵ,����Ǹ�ְҵ�����Ȥ��?" )
	Text( 12, "�йؽ�ʿ", JumpPage, 14 )
	Text( 12, "�й�����", JumpPage, 15 )
--	Text( 12, "�й�ˮ��", JumpPage, 16 )
	Text( 12, "�й�ð����", JumpPage, 17 )
	Text( 12, "�й�ҩʦ", JumpPage, 18 )
--	Text( 12, "�йؼ�ʦ", JumpPage, 19 )
--	Text( 12, "�й�����", JumpPage, 20 )
	Text( 12, "�˽���,�뿴��������.", JumpPage, 11 )

	Talk( 13, "ɪ��:������������������������Ƴ�,Ӱ���Ų�ͬ����չ����,���ÿ��һ������1�����Ե��1�㼼�ܵ�,��ʼ���ָ���5�����Ը�����������." )
	Text( 13, "�й�����", JumpPage, 21 )
	Text( 13, "�й�����", JumpPage, 22 )
	Text( 13, "�й�����", JumpPage, 23 )
	Text( 13, "�йؾ���", JumpPage, 24 )
	--Text( 13, "�й�����", JumpPage, 25 )
	Text( 13, "�й�רע", JumpPage, 26 )
	Text( 13, "�˽���,�뿴��������.", JumpPage, 11 )

	Talk( 14, "ɪ��:��ʿ�Ǻ����������������ߵ�һ��ְҵ,�������������Lv10�Ժ��Ұ����ǵ����������ؾ�ְ" )
	Text( 14, "ѯ������ְҵ", JumpPage, 12)
	Text( 14, "ѯ���й�����", JumpPage, 13)
	Text( 14, "�Ѿ�������ÿ���", JumpPage, 27)

	Talk( 15, "ɪ��:�����Ǻ�������Ψһ��Զ�̹���ְҵ,�ں���תְ��Ϊ�ѻ����Ժ����ʹ�û�ǹ,ֻ������ͷ��������Ծ�ְ����,�����Lv10�Ժ��ұ��Ǳ��Ľ�ʿ����ŷ��ְ" )
	Text( 15, "ѯ������ְҵ", JumpPage, 12)
	Text( 15, "ѯ���й�����", JumpPage, 13)
	Text( 15, "�Ѿ�������ÿ���", JumpPage, 27)

	Talk( 16, "ɪ��:ˮ���Ǻ���ս����ǿ��ְҵ,Ŀǰ�ڲ�汾δ����" )
	Text( 16, "ѯ������ְҵ", JumpPage, 12)
	Text( 16, "ѯ���й�����", JumpPage, 13)
	Text( 16, "�Ѿ�������ÿ���", JumpPage, 27)
	
	Talk( 17, "ɪ��:ð�����Ǻ��ϸ�����ǿ��ְҵ,���˿���˹,�����˶����Ե������ְҵ.�����Lv10�Ժ�����Ұ����ǵ�Сɽ����ְ" )
	Text( 17, "ѯ������ְҵ", JumpPage, 12)
	Text( 17, "ѯ���й�����", JumpPage, 13)
	Text( 17, "�Ѿ�������ÿ���", JumpPage, 27)

	Talk( 18, "ɪ��:ҩʦ�ǿ���Ů�������ͽ,����ӵ�����ص�ҽ������,ֻ�з������Ͱ��׿��Ծ�ְ,�����Lv10�Ժ������ɳᰳǵĴ���١��ʵ�ά����ְ" )
	Text( 18, "ѯ������ְҵ", JumpPage, 12)
	Text( 18, "ѯ���й�����", JumpPage, 13)
	Text( 18, "�Ѿ�������ÿ���", JumpPage, 27)

	Talk( 19, "ɪ��:��ʦ�Ǻ����������������Ʒ��ְҵ,���еĹ��Ὠ�����¶����ɼ�ʦ������ɵ�,Ŀǰ�ڲ�汾δ����" )
	Text( 19, "ѯ������ְҵ", JumpPage, 12)
	Text( 19, "ѯ���й�����", JumpPage, 13)
	Text( 19, "�Ѿ�������ÿ���", JumpPage, 27)

	Talk( 20, "ɪ��:�����Ǻ�������ӵ��ó��������ְҵ,������Զ������е�,Ŀǰ�ڲ�汾δ����" )
	Text( 20, "ѯ������ְҵ", JumpPage, 12)
	Text( 20, "ѯ���й�����", JumpPage, 13)
	Text( 20, "�Ѿ�������ÿ���", JumpPage, 27)

	Talk( 21, "ɪ��:�����غ���ս������" )
	Text( 21, "ѯ����������", JumpPage, 13)
	Text( 21, "ѯ���й�ְҵ", JumpPage, 12)
	Text( 21, "�Ѿ�������ÿ���", JumpPage, 27)

	Talk( 22, "ɪ��:���ݹغ������ٶ���������" )
	Text( 22, "ѯ����������", JumpPage, 13)
	Text( 22, "ѯ���й�ְҵ", JumpPage, 12)
	Text( 22, "�Ѿ�������ÿ���", JumpPage, 27)

	Talk( 23, "ɪ��:���ʹغ�HP���������" )
	Text( 23, "ѯ����������", JumpPage, 13)
	Text( 23, "ѯ���й�ְҵ", JumpPage, 12)
	Text( 23, "�Ѿ�������ÿ���", JumpPage, 27)

	Talk( 24, "ɪ��:�������SPֵ�뼼��ʩչЧ��" )
	Text( 24, "ѯ����������", JumpPage, 13)
	Text( 24, "ѯ���й�ְҵ", JumpPage, 12)
	Text( 24, "�Ѿ�������ÿ���", JumpPage, 27)

	Talk( 25, "ɪ��:���˹غ�����һ�����ʺͺϳɳɹ�����" )
	Text( 25, "ѯ����������", JumpPage, 13)
	Text( 25, "ѯ���й�ְҵ", JumpPage, 12)
	Text( 25, "�Ѿ�������ÿ���", JumpPage, 27)

	Talk( 26, "ɪ��:רע�غ������ʺ�Զ�̹�����" )
	Text( 26, "ѯ����������", JumpPage, 13)
	Text( 26, "ѯ���й�ְҵ", JumpPage, 12)
	Text( 26, "�Ѿ�������ÿ���", JumpPage, 27)

	Talk( 27, "ɪ��:�ð�,�Ժ���ʲô�����׵ĵط��������Ұ�!")
	
	Talk( 28, "ɪ��:�ܺ�,���Ѿ�������һЩ������ս�����ռ����ߵķ�����,���Ѿ�û��ʲô�ý������.�������������ѿ����Ƽ���ȥ������,��һ���һ�����˹,���ǰ����ǵ�Ѳ�߱�,�����Ҳ����һ��ϲ��ս���Ļ���ȥ��������,���ڣ�2065,2732��λ��,�Ӱ�������߳�ȥ��ֱ��,�Ϳ��Կ�������.��һλ�����ǰ�����������ҩ�����ˡ���ķ,����ϲ���ռ�һЩ�����ݲݵĶ�����,��������������˰�æ�ռ�ҩ��ʲô��,��������Ȥ�Ļ���ȥ��2250,2770������,Ҳ��������ˮ�ص��ұ���.ף�����!" )
	Text( 28, "���ڰ�����", JumpPage, 4 )
	Text( 28, "����ְҵ������", JumpPage, 11 )
	Text( 28, "�Ѿ���������ٿ���",  CloseTalk)

	Talk( 29, "ɪ��:�ܺ�,���������ȥ�Ҿ�ְ�˽��ܾ�ְ������.��ʿ�ľ�ְ���ǰ����ǵı��أ�����:2192,2767��,ҩʦ�ľ�ְ����ɳᰳǵĴ���١��ʵ�ά��������:862,3500��,�����˵ľ�ְ���Ǳ��Ǳ��Ľ�ʿ����ŷ������:1365,570��.���ڰ����Ǻ�ɳᰳ�·;ңԶ,�����ͨ���ſڵĴ���ʹ���Լ����͵�Ŀ�ĵ�.ף��һ·����Ŷ." )
	Text( 29, "����Ҫ�˽�Щʲô?", JumpPage, 4 )
	Text( 29, "����ְҵ������", JumpPage, 11 )
	Text( 29, "�Ѿ���������ٿ���",  CloseTalk )

	Talk( 30, "ɪ��:����Ϸ����ҹ���������ʵ��һ���ܼ򵥵�,�ڰ����ǵľư����и��оƹ�����:���ɴ�½2222,2889������,�ҵ����Ϳ��Բ�ѯ���й����λ��.��" )
	
	InitTrigger()
	TriggerCondition( 1, NoItem, 1034, 1 )
	TriggerCondition( 1, NoItem, 1033, 1 )
	TriggerCondition( 1, BankNoItem, 1034, 1 )
	TriggerCondition( 1, BankNoItem, 1033, 1 )
	TriggerCondition( 1, EquipNoItem, 1034, 1 )
	TriggerCondition( 1, EquipNoItem, 1033, 1 )

	TriggerCondition( 1, LvCheck, "<", 41 )
	TriggerAction( 1, GiveItem, 1033, 1, 4 )
	TriggerFailure( 1, JumpPage, 6 )
	Talk( 31, "ɪ��:�Ŷ�֮���Ǻ�������������һ�ַǳ������������,����װ������ʱ��,����ܼ����Ŷӵ�����,����������벻��������Ŷ,����Ϊ�˴��г�,����ó�׹�˾�ؾٰ�����������û,��Ϊ׬Ǯ,ֻΪ���г�,������41�����µ���ÿ������һ��,ͬʱ�ٰ조�ɻ������ջ����������ʹ�ù����Ŷ�֮������ȡ���ʵ�װ��.������Ȥ��?" )
	Text( 31, "��ȡ�Ŷ�֮��",MultiTrigger, GetMultiTrigger(), 1)
	Text( 31, "��ò������",JumpPage, 32 )

	Talk( 32,"��л��ʹ������ó�׹�˾�Ĳ�Ʒ,�������ʹ�ù��ġ��Ŷ�֮�ǡ�,�������������ﻻ�쵽50����ְҵ����һ��Ŷ,�����˶԰�")
	Text( 32, "����ְҵ����", Transfer_TeamStar, 1)

	Talk( 6, "ɪ��:�Բ���,�����߱���ȡ�ʸ�" )

	--InitTrigger()
	---------------------��ҳ���6����ɹ�ɪ����ս��ѵ������
	--TriggerCondition( 1, LvCheck, ">", 4 )
	--TriggerCondition( 1, LvCheck, "<", 8 )
	--TriggerCondition( 1, HasRecord, 704)
	--TriggerAction( 1, JumpPage, 28 )
	--TriggerCondition( 2, LvCheck, ">", 8 )
	--TriggerCondition( 2, PfEqual, 0 )
	--TriggerAction( 2, JumpPage, 29 )
	--TriggerFailure( 2, JumpPage, 1 )

	--Start( GetMultiTrigger(), 2 )

	AddNpcMission ( 701 )
	AddNpcMission ( 702 )
	AddNpcMission ( 704 )
	AddNpcMission ( 706 )
	AddNpcMission ( 708 )
	AddNpcMission ( 200 )
	AddNpcMission 	(402)
	AddNpcMission 	(50)
	AddNpcMission 	(51)
	AddNpcMission 	(61)
	AddNpcMission 	(62)
	AddNpcMission 	(63)
	AddNpcMission 	(64)
	AddNpcMission 	(65)
	AddNpcMission 	(82)

	MisListPage(28)
	MisListPage(29)
-----------------����-------------ѹ���
	--AddNpcMission 	(5507)
----------------------------------------------08�����´��kokora---------------------------------------
--	AddNpcMission 	(6205)
--	AddNpcMission 	(6206)
--	AddNpcMission 	(6207)
end




------------------------------------------------------------
-- ͨ�þ������ű�
------------------------------------------------------------

function r_talk87 ()

	Talk( 1, "��������Ա:���,���Ǿ������Ĺ���Ա,���������Լ���ʵ��ô?����ս��������ô?�������ǿ����������ô?" )
	Text( 1, "��ȡ����֤֮", JumpPage, 2)
	Text( 1, "�����ս��������˵��", JumpPage, 6)
	Text( 1, "����ת��", JumpPage, 3)
	Text( 1, "��¼��ǰ��ս�ص�", SetSpawnPos, "�����ƹ�")

	Talk( 2, "��������Ա:���������,Ҫ��ȡ����֤֮���������ȼ���25������(������25��),������50000��������Ϊǩ֤��,ӵ������֤֮���Բ��������ս����,��������֤֮����Զ������,�㲻�ܽ������������١�����." )
	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 25 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerCondition( 1, NoItem, 3849, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerAction( 1, TakeMoney, 50000 )
	TriggerAction( 1, GiveItem, 3849, 1, 97 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2, "�������֤֮", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3, "��������Ա:Ҫת������ֵ����ӵ���Ŷӹ���ֵ����Ŷ,�Ŷӹ���ֵ��������������ս��ʱ��õ�Ŷ.ÿ1������ֵ��Ҫ10���Ŷӹ��׺�500��Ǯ,�Ŷӹ�����ϸ�Ļ�÷�����ο��ٷ���վ��˵��." )
	InitTrigger()
	TriggerCondition( 1, HasItem, 3849, 1 )
	TriggerCondition( 1, LessCredit, "<", 0 )
	TriggerCondition( 1, HasOffer, 10 )
	TriggerCondition( 1, HasMoney, 500 )
	TriggerAction( 1, TakeMoney, 500 )
	TriggerAction( 1, TakeOffer, 10 )
	TriggerAction( 1, AddCredit, 1 )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 3, "�һ�10���Ŷӹ���", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem, 3849, 1 )
	TriggerCondition( 1, LessCredit, "<", 0 )
	TriggerCondition( 1, HasOffer, 50 )
	TriggerCondition( 1, HasMoney, 2500 )
	TriggerAction( 1, TakeMoney, 2500 )
	TriggerAction( 1, TakeOffer, 50 )
	TriggerAction( 1, AddCredit, 5 )
	TriggerFailure( 1, JumpPage, 11 )
	Text( 3, "�һ�50���Ŷӹ���", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem, 3849, 1 )
	TriggerCondition( 1, LessCredit, "<", 0 )
	TriggerCondition( 1, HasOffer, 100 )
	TriggerCondition( 1, HasMoney, 5000 )
	TriggerAction( 1, TakeMoney, 5000 )
	TriggerAction( 1, TakeOffer, 100 )
	TriggerAction( 1, AddCredit, 10 )
	TriggerFailure( 1, JumpPage, 12 )
	Text( 3, "�һ�100���Ŷӹ���", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem, 3849, 1 )
	TriggerCondition( 1, LessCredit, "<", 0 )
	TriggerCondition( 1, HasOffer, 300 )
	TriggerCondition( 1, HasMoney, 15000 )
	TriggerAction( 1, TakeMoney, 15000 )
	TriggerAction( 1, TakeOffer, 300 )
	TriggerAction( 1, AddCredit, 30 )
	TriggerFailure( 1, JumpPage, 13 )
	Text( 3, "�һ�300���Ŷӹ���", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 4, "��������Ա:������˼,������ȷ�����ı�����һ����λ,�������ĵȼ�����25��(������25��),֧����50000ǩ֤��,���ÿ��ֻ��ӵ��һ������֤֮��." )

	Talk( 5, "��������Ա:���,�һ�10���Ŷӹ���Ϊ1������,��Ҫ�Ŷӹ���10�㡢�ֽ�500,��������ֵΪ�������ܶһ��ɹ�." )

	Talk( 6, "��������Ա:�й�������˵����ϸ����" )
	Text( 6, "�йز��볡��", JumpPage, 7)
	Text( 6, "�й�ɱ������", JumpPage, 8)
	Text( 6, "�й�ʤ������", JumpPage, 9)
	Text( 6, "�й����ܳͷ�", JumpPage, 10)

	Talk( 7, "��������Ա:ÿ�ν�����ս,���Ӳ��볡��1" )

	Talk( 8, "��������Ա:ÿɱ��1��,����ɱ����1,��������1����ɱ�ߵ���ɱ����10��,����������,��ɱ�߸���ɱ����10��,���������һ��������ÿ��ɱ1��,���ӱ�ɱ��1,��������1����ɱ�ߵ���ɱ����10��,�򲻼�������,��ɱ�߸���ɱ����10��,��������һ��������" )

	Talk( 9, "��������Ա:�Ŷ�ÿʤ��1��,����ʤ������1,���ݵз������Լ�˫��ƽ�ּ��������������ÿʤ��1��,����ʤ������1,��������2������˫���ȼ�������ӻ���ٻ������." )

	Talk( 10, "��������Ա:�Ŷ�ÿ�η�ʤ���˳������ܻ�ʧ�ܣ����ݼ��������Լ�˫��ƽ���ȼ��������������ÿ�η�ʤ���˳������ܻ�ʧ�ܣ���������2,������˫���ȼ������ӻ���ٻ������" )

	Talk( 11, "��������Ա:���,�һ�50���Ŷӹ���Ϊ5������,��Ҫ�Ŷӹ���50�㡢�ֽ�2500,��������ֵΪ�������ܶһ��ɹ�." )

	Talk( 12, "��������Ա:���,�һ�100���Ŷӹ���Ϊ10������,��Ҫ�Ŷӹ���100�㡢�ֽ�5000,��������ֵΪ�������ܶһ��ɹ�." )

	Talk( 13, "��������Ա:���,�һ�300���Ŷӹ���Ϊ30������,��Ҫ�Ŷӹ���300�㡢�ֽ�15000,��������ֵΪ�������ܶһ��ɹ�." )

end



------------------------------------------------------------
-- �����ǡ���Ѳ�߱������˹
------------------------------------------------------------

function r_talk88 ()

	Talk( 1, "���˹:Hi,���,����������,�ҽ����˹,��֪��ʲôʱ��ʼ��������������ô�������,ī֭��ĵ������ǵ�,ʿ�������ҳ���Ѳ��,������Щ�һ��ܵ�����ȥ,5555����Ҫ����һ����ȥ��ʿ����������ȥ���ذ�,5555������" )

	Talk( 2, "���˹:�ܺ�,���Ѿ�������Lv9��,10���Ϳ��Ծ�ְ��.���������ȥ�Ҿ�ְ�˽��ܾ�ְ��������.��ʿ�ľ�ְ���ǰ����ǵı��أ�����:2192,2767��,ҩʦ�ľ�ְ����ɳᰳǵĴ���١��ʵ�ά��������:862,3500��,���˵ľ�ְ���Ǳ��Ǳ��Ľ�ʿ����ŷ������:1365,570��,ð���ߵľ�ְ���ǰ����ǵ�Сɽ��������:2193,2730��.����ɳᰳǺͱ��Ǳ�·;ңԶ,�����ͨ���������ſڵĴ���ʹ���Լ����͵�Ŀ�ĵ�.ף��һ·����Ŷ." )


	---------------------��ҳ���9��
	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 8 )
	TriggerCondition( 1, LvCheck, "<", 10 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerFailure( 1, JumpPage, 1 )
	Start( GetMultiTrigger(), 1 )

	--AddNpcMission ( 730 )
	--AddNpcMission ( 736 )
	--AddNpcMission ( 737 )
	AddNpcMission ( 400 )
	AddNpcMission ( 52 )
	AddNpcMission ( 53 )
	AddNpcMission ( 54 )
----------Ѳ�߱������˹-------˫��
	AddNpcMission	(5696)
	AddNpcMission	(5697)
	MisListPage(2)

end

------------------------------------------------------------
-- ɳᰳǡ���Ѳ�߱�������
------------------------------------------------------------

function r_talk89 ()

	Talk( 1, "����:���,����ɳᰳǵ�Ѳ�߱�,��ɳĮ����ʱ������Σ��,��Ҫ��ʱС��Ŷ,�����Ы�ӿ��Ǻ�������Ŷ,��ม���������,�öӳ��������ȴ����." )
	
	Talk( 2, "����:�ܺ�,���Ѿ�������Lv9��,10���Ϳ��Ծ�ְ��.���������ȥ�Ҿ�ְ�˽��ܾ�ְ������.��ʿ�ľ�ְ���ǰ����ǵı��أ�����:2192,2767��,ҩʦ�ľ�ְ����ɳᰳǵĴ���١��ʵ�ά��������:862,3500��,���˵ľ�ְ���Ǳ��Ǳ��Ľ�ʿ����ŷ������:1365,570��,ð���ߵľ�ְ���ǰ����ǵ�Сɽ��������:2193,2730��.���ڰ����Ǻͱ��Ǳ�·;ңԶ,�����ͨ���ſڵĴ���ʹ���Լ����͵�Ŀ�ĵ�.ף��һ·����Ŷ." )

	---------------------��ҳ���9��
	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 8 )
	TriggerCondition( 1, LvCheck, "<", 10 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerFailure( 1, JumpPage, 1 )
	Start( GetMultiTrigger(), 1 )

	--AddNpcMission ( 731 )
	--AddNpcMission ( 740 )
	--AddNpcMission ( 741 )
	AddNpcMission ( 235 )
	AddNpcMission ( 236 )
	AddNpcMission ( 241 )
	AddNpcMission ( 242 )
	AddNpcMission 	(412)
	AddNpcMission 	(85)
	AddNpcMission 	(86)
	AddNpcMission 	(87)
	AddNpcMission 	(922)--------------------------------------------
	AddNpcMission 	(923)
	AddNpcMission 	(924)------------
----------Ѳ�߱�������-------˫��
	AddNpcMission	(5692)
	AddNpcMission	(5693)

	MisListPage(2)

end

------------------------------------------------------------
-- ���Ǳ�����Ѳ�߱���СĪ
------------------------------------------------------------

function r_talk90 ()

	Talk( 1, "СĪ:����������Ѳ�߱�СĪ,��ô�����ӳ������ҳ���Ѳ��,��������,����û��ʲô���ԳԵİ�?�Һö���,�⸽���Ķ�����ûʲô�óԵ��ˡ���" )

	Talk( 2, "СĪ:�ܺ�,���Ѿ�������Lv9��,10���Ϳ��Ծ�ְ��.���������ȥ�Ҿ�ְ�˽��ܾ�ְ������.��ʿ�ľ�ְ���ǰ����ǵı��أ�����:2192,2767��,ҩʦ�ľ�ְ����ɳᰳǵĴ���١��ʵ�ά��������:862,3500��,���˵ľ�ְ���Ǳ��Ǳ��Ľ�ʿ����ŷ������:1365,570��,ð���ߵľ�ְ���ǰ����ǵ�Сɽ��������:2193,2730��.���ڰ����Ǻ�ɳᰳ�·;ңԶ,�����ͨ���ſڵĴ���ʹ���Լ����͵�Ŀ�ĵ�.ף��һ·����Ŷ." )

	---------------------��ҳ���9��
	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 8 )
	TriggerCondition( 1, LvCheck, "<", 10 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerFailure( 1, JumpPage, 1 )
	Start( GetMultiTrigger(), 1 )

	--AddNpcMission ( 732 )
	--AddNpcMission ( 742 )
	--AddNpcMission ( 743 )
	AddNpcMission ( 255 )
	AddNpcMission ( 256 )
	AddNpcMission 	(408)
	AddNpcMission 	(164)
	AddNpcMission 	(165)
	AddNpcMission 	(166)
	AddNpcMission 	(177)
	AddNpcMission 	(178)
	AddNpcMission 	(179)


	MisListPage(2)

end

------------------------------------------------------------
-- ɳᰳǡ���ҩ�����ˡ�ɳ����
------------------------------------------------------------

function r_talk91 ()

	Talk( 1, "ɳ����:����������ɳᰳǵ�ҩ������,������������Ҫ�Ķ���Ŷ!" )
	Text( 1, "����", BuyPage )
	Text( 1, "û��,�������",CloseTalk )
	
	Talk( 2, "ɳ����:�ܺ�,���Ѿ�������Lv9��,10���Ϳ��Ծ�ְ��.���������ȥ�Ҿ�ְ�˽��ܾ�ְ������.��ʿ�ľ�ְ���ǰ����ǵı��أ�����:2192,2767��,ҩʦ�ľ�ְ����ɳᰳǵĴ���١��ʵ�ά��������:862,3500��,�����˵ľ�ְ���Ǳ��Ǳ��Ľ�ʿ����ŷ������:1365,570��.���ڰ����Ǻͱ��Ǳ�·;ңԶ,�����ͨ���ſڵĴ���ʹ���Լ����͵�Ŀ�ĵ�.ף��һ·����Ŷ." )
	Text( 2, "����", BuyPage )
	Text( 2, "û��,�������",CloseTalk )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)
	Other(	3143	)
	--Leo
	Other(	1576	)
	Other(	4049	)
	Other(	4050	)
	Other(	1578	)
	Other(	4060	)
	Other(	4055	)
	Other(	4061	)
	Other(	2225	)
	Other(	4057	)
	Other(	1768	)


	---------------------��ҳ���9��
	--InitTrigger()
	--TriggerCondition( 1, LvCheck, ">", 8 )
	--TriggerCondition( 1, LvCheck, "<", 10 )
	--TriggerAction( 1, JumpPage, 2 )
	--TriggerFailure( 1, JumpPage, 1 )
	--Start( GetMultiTrigger(), 1 )

	AddNpcMission ( 717 )
	--AddNpcMission ( 734 )
	--AddNpcMission ( 744 )
	--AddNpcMission ( 745 )

	MisListPage(2)

end 

------------------------------------------------------------
--�����ӵ�ѩԭ    ����ҽ������������
------------------------------------------------------------

function r_talk92 ()

	Talk( 1, "��������:Hi,������������,�⸽����ֻ����һ��ҽ��Ŷ,����Ҫ��ʲôҩƷô?" )
	Text( 1, "����", BuyPage )
	Text( 1, "û��,�������",CloseTalk )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)

	AddNpcMission(	471	)
	AddNpcMission(	472	)
	AddNpcMission	(753)
	
end

------------------------------------------------------------
-- ����ɭ�֡�������ҽ��������ϣ��
------------------------------------------------------------

function r_talk93 ()

	Talk( 1, "����ϣ��:Hi,��������ϣ��,�⸽����ֻ����һ��ҽ��Ŷ,����Ҫ��ʲôҩƷô?" )
	Text( 1, "����", BuyPage )
	Text( 1, "û��,�������",CloseTalk )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)

	AddNpcMission(	1442	)
	AddNpcMission (	1900	)

	---------------����
	AddNpcMission	(5567)
	AddNpcMission	(5568)
	AddNpcMission ( 6052 )
	AddNpcMission ( 6053 )
	


	
end

------------------------------------------------------------
-- �¶�άƽԭ-----����
------------------------------------------------------------

function r_talk94 ()

	Talk( 1, "����:�ߺ�,˵���Դ�Ҳ��,���ҵ����������һֻ�����ľ���֮��!" )

end

------------------------------------------------------------
-- ��������վ-----���϶�
------------------------------------------------------------

function r_talk95 ()

	Talk( 1, "���϶�:���Ǹ�û����ҵͷ�Ե���������ѱ��Ǳ��Ĵ�����ɳᰳ�ȥ,���ڿ�����ô���ܴ����������������ͷ." )
	Text( 1, "����", BuyPage )
	Text( 1, "û��,�������",CloseTalk )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)
		
	AddNpcMission	(1065)
	AddNpcMission	(	869	)
	AddNpcMission	(	872	)
	AddNpcMission	(	874	)
	AddNpcMission	(	878	)
	AddNpcMission	(	886	)
	AddNpcMission	(	889	)
	AddNpcMission	(	470	)
	AddNpcMission(	1738	)
	AddNpcMission (	1927	)
	AddNpcMission (	1948	)

	------------------����
	--AddNpcMission (5504	)



end

------------------------------------------------------------
-- �¶�άƽԭ-----ϯ��
------------------------------------------------------------

function r_talk96 ()

	Talk( 1, "ϯ��:�˼Ҷ�˵����һֻ������Ƥ����,��." )

end

------------------------------------------------------------
-- �¶�άƽԭ-----������
------------------------------------------------------------

function r_talk97 ()

	Talk( 1, "������:�������Ǽ�į��ѩ��." )

	AddNpcMission 	(409)
	AddNpcMission 	(415)
	AddNpcMission 	(424)
	AddNpcMission 	(426)
	AddNpcMission 	(449)
	AddNpcMission 	(809)
	AddNpcMission 	(813)
	AddNpcMission(	1431	)
	AddNpcMission (	1901	)
----------eleven
	AddNpcMission (	5048	)
	AddNpcMission (	5049	)
	AddNpcMission (	5050	)
	AddNpcMission (	5051	)
	AddNpcMission (	5052	)
	AddNpcMission ( 6030 )
	AddNpcMission ( 6031 )

end

------------------------------------------------------------
-- �¶�άƽԭ-----����
------------------------------------------------------------

function r_talk98 ()

	Talk( 1, "����:�Ұְ��Ǵ󺣵�,�����ҳ���Ҫ���뺣��,�����Ǻ����ŵġ��޼����!" )

end

------------------------------------------------------------
-- �¶�άƽԭ-----³³
------------------------------------------------------------

function r_talk99 ()

	Talk( 1, "³³:����,ͯ���޼�,���޽���!" )

	AddNpcMission(	1736	)
	AddNpcMission (	1925	)
	AddNpcMission (	1946	)

	---------------����
	AddNpcMission	(5561)
	AddNpcMission	(5562)
	AddNpcMission ( 6040 )
	AddNpcMission ( 6041 )



end

------------------------------------------------------------
-- �¶�άƽԭ-----�µ�˹.����
------------------------------------------------------------

function r_talk100()

	Talk( 1, "�µ�˹.����:���������Ժ��ҵ���ħ��ס�ĵط�,Ȼ��ÿ���ڶ�¥���ͻ�ɽ�緢��ʢ��." )

	AddNpcMission (	454	)
	AddNpcMission (	458	)
	AddNpcMission 	(654)
	AddNpcMission 	(657)
	AddNpcMission 	(658)
	AddNpcMission 	(663)
	AddNpcMission 	(666)
	AddNpcMission	(1110)
	AddNpcMission(	1584	)
	AddNpcMission (	1914	)

	




end

------------------------------------------------------------
-- �¶�άƽԭ-----÷��
------------------------------------------------------------

function r_talk101()

	Talk( 1, "÷��:ƽϢһ�����Ե���Ѱ취���������һ�����𱬵İ���." )

end

------------------------------------------------------------
-- �¶�άƽԭ-----�Ų���
------------------------------------------------------------

function r_talk102()

	Talk( 1, "�Ų���:��д��һ��������,��������,��Щ����������������ѽ��,��˵�ں�����Ҳ��������." )

	AddNpcMission 	(603)
	AddNpcMission 	(608)
	AddNpcMission 	(613)
	AddNpcMission 	(615)
	AddNpcMission 	(618)
----------�Ų���-------˫��
	AddNpcMission	(5702)
	AddNpcMission	(5703)

end

------------------------------------------------------------
-- �¶�άƽԭ-----С���ɭ
------------------------------------------------------------

function r_talk103()

	Talk( 1, "С���ɭ:����˵�Ҳ��ܸ�İ����Ҫ�ǳ�,����,����Ĳ��ܸ�������?" )

end

------------------------------------------------------------
-- �¶�άƽԭ-----�꼧����
------------------------------------------------------------

function r_talk104()

	Talk( 1, "�꼧����:����ϲ���Ժ�ɭ�ֵ���,����һ������ɿ���,��,���������ˮ." )

end

------------------------------------------------------------
-- �¶�άƽԭ-----��������
------------------------------------------------------------

function r_talk105()

	Talk( 1, "��������:�����������,����Һ������Ƿ�����һ����Ϸ,��Ҫ�ĸ��˺�һ���������,�����ĸ���λ���¡���" )

	AddNpcMission 	(451)
	AddNpcMission 	(457)
	AddNpcMission 	(621)
	AddNpcMission 	(625)
	AddNpcMission(	1590	)
	AddNpcMission (	1902	)
	AddNpcMission (	1940	)

	----------��������-------˫��
	AddNpcMission	(5708)
	AddNpcMission	(5709)




end

------------------------------------------------------------
-- �¶�άƽԭ-----��������
------------------------------------------------------------

function r_talk106()

	Talk( 1, "��������:����֪�����������Ϊʲô�Ǹ�ͺͷ�𡭡�ʲô?��̫����?����û��Ȥ!" )

	AddNpcMission 	(689)
	AddNpcMission	(1109)
	AddNpcMission(	1579	)
	AddNpcMission (	1918	)





end

------------------------------------------------------------
-- �¶�άƽԭ-----�����˹
------------------------------------------------------------

function r_talk107()

	Talk( 1, "�����˹:����������,���������" )
	AddNpcMission 	(425)
	AddNpcMission 	(431)
	AddNpcMission 	(436)
	AddNpcMission 	(442)
	AddNpcMission 	(448)
	AddNpcMission 	(601)
	AddNpcMission 	(607)
	AddNpcMission 	(610)
	AddNpcMission 	(612)
	AddNpcMission	(1001)
	AddNpcMission	(1165)



end

------------------------------------------------------------
-- �¶�άƽԭ-----�Ͽ��ɭ
------------------------------------------------------------

function r_talk108()

	Talk( 1, "�Ͽ��ɭ:��������ȵ�����,����ȥ��С���ȼ�ѽ." )

	AddNpcMission	(475)

end

------------------------------------------------------------
-- �¶�άƽԭ-----�����б�
------------------------------------------------------------

function r_talk109()

	Talk( 1, "�ꡫС����,�����ϴ�����ѵ����" )

end

------------------------------------------------------------
-- ���˻�Į-----��������˹
------------------------------------------------------------

function r_talk110()

	Talk( 1, "��������˹:�����汲���ǿ����Ϊ����,���ǽ�������˵�Ҳ�����,�����Խ�." )

	AddNpcMission 	(411)
	AddNpcMission 	(669)
	AddNpcMission 	(675)
	AddNpcMission 	(678)
	AddNpcMission 	(680)
	AddNpcMission	(1075)



end

------------------------------------------------------------
-- ���˻�Į-----�׶�����
------------------------------------------------------------

function r_talk111()

	Talk( 1, "�׶�����:��,���.���Ѷ���������,�Ҳ�������Ҳ�����ƺ���." )

	AddNpcMission 	(456)
	AddNpcMission 	(656)
	AddNpcMission 	(661)
	AddNpcMission 	(665)
	AddNpcMission	(1142)
	AddNpcMission(	1582	)
	AddNpcMission (	1910	)
---------eleven
	AddNpcMission (	5025	)
	AddNpcMission ( 5026	)
	AddNpcMission ( 5029	)
	AddNpcMission (	5070)
	AddNpcMission ( 5072	)
	AddNpcMission ( 5073	)
	------------1.7
	AddNpcMission ( 5074	)
	AddNpcMission(	5092 )
	AddNpcMission (5101 )
	AddNpcMission (5102 )
	AddNpcMission (5103 )
	AddNpcMission (5104 )
	AddNpcMission (5113 )
	AddNpcMission ( 6032 )
	AddNpcMission ( 6033 )
----------�׶�����-------˫��
	AddNpcMission	(5722)
	AddNpcMission	(5723)
end

------------------------------------------------------------
-- ���˻�Į-----�¸�ɭ
------------------------------------------------------------

function r_talk112()

	Talk( 1, "�¸�ɭ:�����ϻ������δ��֮�Եȴ����¸ҵ���ȥ̽��!" )

	AddNpcMission	(1111)


end

------------------------------------------------------------
-- ���˻�Į-----�����ǡ��Ʒ�
------------------------------------------------------------

function r_talk113()

	Talk( 1, "�����ǡ��Ʒ�:��,�ҽ��Ʒ�,����ɲ���ζ���ҳ������Ĵ������Ʒ�." )
	AddNpcMission	(1131)

end

------------------------------------------------------------
-- ���˻�Į-----�ϵ�����
------------------------------------------------------------

function r_talk114()

	Talk( 1, "�ϵ�����:�󺣵��ж���,�����ǳ���Ϧ�����а�!" )

	AddNpcMission 	(640)
	AddNpcMission 	(644)
	AddNpcMission 	(645)
	AddNpcMission 	(646)
	AddNpcMission 	(651)
	AddNpcMission	(1119)
	AddNpcMission(	1437	)
	AddNpcMission (	1911	)
	AddNpcMission ( 6038 )
	AddNpcMission ( 6039 )

	





end

------------------------------------------------------------
-- ���˻�Į-----�������˹
------------------------------------------------------------

function r_talk115()

	Talk( 1, "�������˹:����Ҫ�ܶ�ܶ��Ǯ.���û��,�Ҿ�Ҫ�ܸ��Һܶ�ܶ�Ǯ�Ķ���." )
	AddNpcMission	(1120)
----------�������˹-------˫��
	AddNpcMission	(5698)
	AddNpcMission	(5699)

end

------------------------------------------------------------
-- ���˻�Į-----÷�����ǡ�è��
------------------------------------------------------------

function r_talk116()

	Talk( 1, "÷�����ǡ�è��:�������ô����,û����Ů������?!" )
	
	AddNpcMission ( 245 )
	AddNpcMission ( 246 )
	AddNpcMission ( 247 )
	AddNpcMission ( 249 )
	AddNpcMission ( 250 )
	AddNpcMission (1141)

end

------------------------------------------------------------
-- ���˻�Į-----�ŵ����ˡ���ǽ
------------------------------------------------------------

function r_talk117()

	Talk( 1, "�ŵ����ˡ���ǽ:˭˵���δ���,���������ʱ������ô���δ���.��ֻ�Ǻʹ������Բ�̫���ݶ��Ѱ���." )

end

------------------------------------------------------------
-- ���˻�Į-----����˹����ɳ
------------------------------------------------------------

function r_talk118()

	Talk( 1, "����˹����ɳ:���Ʊ�����,���Ʊ�èץ!" )
	
	AddNpcMission ( 257 )
	AddNpcMission ( 258 )
	AddNpcMission ( 259 )
	AddNpcMission 	(435)
	AddNpcMission 	(686)
	AddNpcMission 	(691)
	AddNpcMission 	(693)
	AddNpcMission 	(694)
	AddNpcMission	(1082)



end

------------------------------------------------------------
-- ���˻�Į-----ͨ���ߡ��¹���
------------------------------------------------------------

function r_talk119()

	Talk( 1, "ͨ���ߡ��¹���:���ܿ������˿������Ķ���,����˵,�㱳�����һ�ź�Ӱ����" )

	AddNpcMission 	(804)
	AddNpcMission 	(808)
	
	AddNpcMission	(	468	)
	AddNpcMission(	1586	)
	AddNpcMission (	1920	)

	
---------------����
	AddNpcMission	(5585)
	AddNpcMission	(5586)



end

------------------------------------------------------------
-- ���˻�Į-----������˹�����
------------------------------------------------------------

function r_talk120()

	Talk( 1, "������˹�����:��һ�㶼����Ľ�����ǵ���ϯ����,Ҳ���뵱��������ָ�ӹ�,�Ҿ����������һ�����." )

	AddNpcMission 	(407)
	AddNpcMission 	(638)
	AddNpcMission 	(642)
	AddNpcMission(	1438	)
	AddNpcMission (	1912	)

	



end

------------------------------------------------------------
-- ���˻�Į-----���ﰬ�ǡ�����
------------------------------------------------------------

function r_talk121()

	Talk( 1, "���ﰬ�ǡ�����:��,�㡭���ҡ����š����Ǹ�������!�Բ���,�͵���ʲô��û˵!" )

	
	AddNpcMission	(	870	)
	AddNpcMission	(	875	)
	AddNpcMission	(	876	)
	AddNpcMission	(	880	)
	AddNpcMission	(	882	)
	AddNpcMission	(	885	)
	AddNpcMission	(	888	)
	AddNpcMission	(	891	)
	AddNpcMission	(	892	)
	AddNpcMission(	1735	)
	AddNpcMission (	1924	)
	AddNpcMission (	1945	)

	


end

------------------------------------------------------------
-- ���˻�Į-----��������
------------------------------------------------------------

function r_talk122()

	Talk( 1, "��������:�������Գ����������г�����������,��������Щ����ʶ��ĺ�����,���ǻ����Զ��." )

	AddNpcMission 	(428)
	AddNpcMission 	(812)
	AddNpcMission	(1025)
	AddNpcMission	(1188)


end

------------------------------------------------------------
-- ���˻�Į-----����
------------------------------------------------------------

function r_talk123()

	Talk( 1, "����:���и��ֵܽк�ķ,����û����ô�����ɰ�." )

end

------------------------------------------------------------
-- ���˻�Į-----��ķ
------------------------------------------------------------

function r_talk124()

	Talk( 1, "��ķ:���и��ֵܽб���,��ϧ�����������ٷ�." )
-----------------��ķ---------��ţ
	AddNpcMission	(5645)
	AddNpcMission	(5646)
end

------------------------------------------------------------
-- ���˻�Į-----����������΢��
------------------------------------------------------------

function r_talk125()

	Talk( 1, "����������΢��:��,�������ƽ���Զ�Ķ�����,���־���,���ĺ��̺���Ů֮�䰡����" )

end

------------------------------------------------------------
-- ���˻�Į-----ޱ���
------------------------------------------------------------

function r_talk126()

	Talk( 1, "ޱ���:��һ����˵��������,�ڶ�����˵���ַ�����,��������˵���ڼҵ�С���ֵ��Ľ�Ұ����ʳ����!����,�����˵����." )

	AddNpcMission 	(685)
	AddNpcMission 	(688)
	AddNpcMission 	(690)
	AddNpcMission	(1097)
	AddNpcMission ( 6034 )
	AddNpcMission ( 6035 )


end
------------------------------------------------------------
-- ���˻�Į-----����������
------------------------------------------------------------
function r_talk127()
Talk( 1, "����������:������,Ҫ��������õ�������Ŷ." )
	
	InitTrigger()
	TriggerCondition( 1, HasRecord, 1557 )
	TriggerCondition( 1, NoRecord, 1558 )
	TriggerCondition( 1, NoRecord, 1559 )
	TriggerCondition( 1, NoRecord, 1560 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerFailure( 1, JumpPage, 3)
	Text( 1, "Hello��",MultiTrigger, GetMultiTrigger(), 1 )


	InitTrigger()
	TriggerCondition( 1, HasMission, 1561 )
	TriggerCondition( 1, HasRecord, 1558 )
	TriggerCondition( 1, HasRecord, 1559 )
	TriggerCondition( 1, NoRecord, 1569 )
	TriggerCondition( 1, NoRecord, 1561 )
	TriggerAction( 1, JumpPage, 6 )
	TriggerFailure( 1, JumpPage, 3)
	Text( 1, "��Hello��",MultiTrigger, GetMultiTrigger(), 1 )
	Text( 1, "��·������",JumpPage, 3  )
	
	InitTrigger()
	TriggerAction( 1, SetRecord, 1558 )
	TriggerAction( 1, SetRecord, 1559 )
	TriggerAction( 1, JumpPage, 4 )
	Talk( 2, "����������:��˵�����м��������е�?")
	Text(2, "���м�", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerAction( 1, SetRecord, 1558 )
	TriggerAction( 1, SetRecord, 1560 )
	TriggerAction( 1, JumpPage, 5 )
	Text(2, "���е�", MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 3, "����������:С����,���ź�æ,û���ر�����ؾ����߿�һ���~~")
	Talk( 10, "����������:С����,��ش����,�úÿ���һ�������ش�~~")

	Talk( 4, "����������:���л۸���!����~~")

	Talk( 5, "����������:�ѵ����ŵİ׳ղ��д�Ⱦ��!?")
	

	InitTrigger()
	TriggerAction( 1, SetRecord, 1562 )
	TriggerAction( 1, SetRecord, 1563 )
	TriggerAction( 1, JumpPage, 7 )
	Talk( 6, "����������:һֻ���Ӻ�һֻ�ܵ÷ɿ���ڹ�����,˭Ӯ��?")
	Text( 6, "�ڹ�",MultiTrigger, GetMultiTrigger(), 1 )
	Text( 6, "����",JumpPage, 10  )

	Talk( 7, "����������:��Ȼ���ڹ�Ӯ��,��Ϊ����һֻ�ܵó�������ڹ�")
	Text( 7, "��һ��",JumpPage, 8  )
	

	InitTrigger()
	TriggerAction( 1, SetRecord, 1562 )
	TriggerAction( 1, SetRecord, 1564 )
	TriggerAction( 1, JumpPage, 9 )
	Talk( 8, "����������:һֻ������һֻ��ī�����ڹ�����,˭Ӯ��?")
	Text( 8, "��ī�����ڹ�",MultiTrigger, GetMultiTrigger(), 1 )
	

	InitTrigger()
	TriggerAction( 1, SetRecord, 1562 )
	TriggerAction( 1, SetRecord, 1565 )
	TriggerAction( 1, JumpPage, 9 )
	Text( 8, "����",MultiTrigger, GetMultiTrigger(), 1  )

	Talk( 9, "����������:��Ȼ��������Ӯ,��Ϊժ��ī��������ֻ�ܵó�������ڹ�.�¸¸�......")
	--Start( GetMultiTrigger(), 1 )
	AddNpcMission 	(417)
	AddNpcMission 	(674)
	AddNpcMission 	(676)
	AddNpcMission 	(681)
	AddNpcMission	(1064)
	AddNpcMission	(752)

	
	------------------1.7
	AddNpcMission (5153 )
	AddNpcMission (5154 )
	AddNpcMission (5155 )
	AddNpcMission (5156 )
	AddNpcMission (5157 )
	AddNpcMission (5159 )
	end

------------------------------------------------------------
-- ���˻�Į-----�ޱ�˹������
------------------------------------------------------------

function r_talk128()

	Talk( 1, "�ޱ�˹������:Сʱ���װ���װ�ڱ����ﵽ������,�����Ұ�����װ�ڱ������ػع���." )

end

------------------------------------------------------------
-- ���˻�Į-----��á�Ƥ��
------------------------------------------------------------

function r_talk129()

	Talk( 1, "��á�Ƥ��:����,���!������á�Ƥ���кι��ѽ." )

	AddNpcMission 	(623)
	AddNpcMission 	(627)
	AddNpcMission 	(634)
	AddNpcMission	(1031)
	AddNpcMission	(1194)
	AddNpcMission(	1591	)
	AddNpcMission (	1905	)
	AddNpcMission (	1941	)

	---------------����
	AddNpcMission	(5583)
	AddNpcMission	(5584)



end

------------------------------------------------------------
-- ������˹��ԭ-----���򡤱�Ȫ
------------------------------------------------------------

function r_talk130()

	Talk( 1, "���򡤱�Ȫ:�ҵļ����ڱ��Ǳ�,�����ҵ��������и���������." )
---------------����
	AddNpcMission	(5581)
	AddNpcMission	(5582)
end

------------------------------------------------------------
-- ������˹��ԭ-----��˹��С��
------------------------------------------------------------

function r_talk131()

	Talk( 1, "��˹��С��:�ҽ�С��,���Ҳ���һ���Ӷ���ô��С�ġ���" )
-----------------��˹��С��---------��ţ
	AddNpcMission	(5653)
	AddNpcMission	(5654)
end

------------------------------------------------------------
-- ������˹��ԭ-----���׶�����
------------------------------------------------------------

function r_talk132()

	Talk( 1, "���׶�����:��,��,��ཡ���" )
	AddNpcMission	(1061)
	AddNpcMission	(1007)
	AddNpcMission	(1062)
	AddNpcMission	(1117)
	AddNpcMission	(1171)


end

------------------------------------------------------------
-- ������˹��ԭ-----����ķ������
------------------------------------------------------------

function r_talk133()

	Talk( 1, "����ķ������:����˵���������ı�����?�����˺ö�ö�����!" )

	AddNpcMission 	(421)
	AddNpcMission 	(427)
	AddNpcMission 	(438)
	AddNpcMission 	(444)
	AddNpcMission 	(653)
	AddNpcMission 	(659)
	AddNpcMission 	(660)
	AddNpcMission 	(664)
	AddNpcMission	(1151)
	AddNpcMission(	1583	)
	AddNpcMission (	1913	)


-----------------����ķ������---------��ţ
	AddNpcMission	(5657)
	AddNpcMission	(5658)



end

------------------------------------------------------------
-- ������˹��ԭ-----������ķ
------------------------------------------------------------

function r_talk134()

	Talk( 1, "������ķ:��������Ҳû�ҵ���,�ѵ�˵����������·����?!!" )
	AddNpcMission	(1083)

end

------------------------------------------------------------
-- ������˹��ԭ-----������ķ
------------------------------------------------------------

function r_talk135()

	Talk( 1, "���ᰣ��˹:������������ŵĶ������ǡ���˵�еİ������ӡ����ҵ���,�벻Ҫ����˵������" )
	AddNpcMission	(1098)

end


------------------------------------------------------------
-- ������˹��ԭ-----������
------------------------------------------------------------

function r_talk136()

	Talk( 1, "������:����׼����ȥ�����������,ϣ�����ǲ�Ҫ������̫��." )

	AddNpcMission ( 262 )
	AddNpcMission ( 263 )
	AddNpcMission ( 264 )
	AddNpcMission ( 265 )
	AddNpcMission	(1056)


end

------------------------------------------------------------
-- ������˹��ԭ-----�ն����
------------------------------------------------------------

function r_talk137()

	Talk( 1, "�ն����:�޳������޽ڲ�!���,�Ҿ������ǳ�˵��������ʿ." )
	AddNpcMission	(1072)

end

------------------------------------------------------------
-- ������˹��ԭ-----Լɪ����
------------------------------------------------------------

function r_talk138()

	Talk( 1, "Լɪ����:��������ЩС����,����������һ��īˮ." )
	AddNpcMission	(1105)

end

------------------------------------------------------------
-- ������˹��ԭ-----��ݮ����
------------------------------------------------------------

function r_talk139()

	Talk( 1, "��ݮ����:�㿴����Щ�ۺ�ɫ������������,���ĸ�����,��ʵ������ϲ���ԵĶ����ǽ�ĩӴ." )
---------------����
	AddNpcMission	(5555)
	AddNpcMission	(5556)
	----------��ݮ����-------˫��
	AddNpcMission	(5706)
	AddNpcMission	(5707)
end

------------------------------------------------------------
-- ������˹��ԭ-----����
------------------------------------------------------------

function r_talk140()

	Talk( 1, "����:���,�ҽ�����.����������ʲô?" )

end

------------------------------------------------------------
-- ������˹��ԭ-----��ɺ��
------------------------------------------------------------

function r_talk141()

	Talk( 1, "��ɺ��:����ÿ���������������ʱ��,����ָ�����ߵ��ǽ�Ǯѽ!" )

end

------------------------------------------------------------
-- ������˹��ԭ-----��ŵ��
------------------------------------------------------------

function r_talk142()

	Talk( 1, "��ŵ��:��Ϊ����һ����ʳ������,������һֱ������,��Щ����������򵽵��Ƕ��ﻹ��ֲ����?" )

end

------------------------------------------------------------
-- ������˹��ԭ-----ղķ˹
------------------------------------------------------------

function r_talk143()

	Talk( 1, "ղķ˹:�ഫ�������������һֻ��˵����С�򡭡�" )

end

------------------------------------------------------------
-- ������˹��ԭ-----¶��������
------------------------------------------------------------

function r_talk144()

	Talk( 1, "¶��������:��,��ð�,������." )

end

------------------------------------------------------------
-- ������˹��ԭ-----�������
------------------------------------------------------------

function r_talk145()

	Talk( 1, "�������:��ÿ�춼������ش��׬Ǯ,�����ҷ��ֹ����ǵĺɰ����Ҳ�ܿ���." )

end

------------------------------------------------------------
-- ������˹��ԭ-----��������
------------------------------------------------------------

function r_talk146()

	Talk( 1, "��������:�ҳ�����ʱ��������һֻ������,��һֱ������������欵���Ӱ���������." )

	AddNpcMission 	(622)
	AddNpcMission 	(624)
	AddNpcMission 	(628)
	AddNpcMission 	(630)
	AddNpcMission 	(636)
	AddNpcMission	(1006)
	AddNpcMission	(1170)
	AddNpcMission(	1592	)
	AddNpcMission (	1906	)
	AddNpcMission (	1942	)
	AddNpcMission ( 6036 )
	AddNpcMission ( 6037 )

	



end

------------------------------------------------------------
-- ������˹��ԭ-----����
------------------------------------------------------------

function r_talk147()

	Talk( 1, "����:�������BlueBlue,��ҲBlueBlue,�ӵ�Ӣ�Ŀε��������BlueBlue!" )

	AddNpcMission ( 401 )
	AddNpcMission 	(810)
	AddNpcMission	(1040)
	AddNpcMission	(1203)
	AddNpcMission(	1433	)
	AddNpcMission (	1909	)

	
---------------����
	AddNpcMission	(5579)
	AddNpcMission	(5580)





end

------------------------------------------------------------
-- ������˹��ԭ-----������
------------------------------------------------------------

function r_talk148()

	Talk( 1, "������:���,����.����������˼��Ϊʲô����û������������������.����?" )

end

------------------------------------------------------------
-- ������˹��ԭ-----��Ъ��÷�ַ�
------------------------------------------------------------

function r_talk149()

	Talk( 1, "��Ъ��÷�ַ�:��������������������ûʲôʲô�������˵��" )
-------------�ﵺ����
	--AddNpcMission 	(6182)
end

------------------------------------------------------------
-- ���Ǳ�-----ˮ�֡����ϼ�
------------------------------------------------------------

function r_talk156()

	Talk( 1, "���ϼ�:���,���������½����õ�ˮ��,����Ҫ�ҵİ�����?" )

end

------------------------------------------------------------
-- ���￩������վ-----����
------------------------------------------------------------

function r_talk157()

	Talk( 1, "����:�Ҵ���û�й��Ա��ĸо�,��������һ�ֲ�,���Ҳ���̫���κ�������" )

	AddNpcMission 	(419)
	AddNpcMission 	(460)
	AddNpcMission 	(600)
	AddNpcMission 	(604)
	AddNpcMission 	(606)
	AddNpcMission 	(611)
	AddNpcMission 	(614)
	AddNpcMission 	(619)
	AddNpcMission	(1028)
	AddNpcMission	(1191)
	AddNpcMission(	1434	)
	AddNpcMission (	1903	)

	---------------����
	AddNpcMission	(5587)
	AddNpcMission	(5588)

	AddNpcMission ( 6042 )
	AddNpcMission ( 6043 )


end

------------------------------------------------------------
-- ���￩������վ-----������
------------------------------------------------------------

function r_talk158()

	Talk( 1, "������:�㡭���㡭��Ҫ�����򡭡�ʲ����ʲ����ô?" )
	Text( 1, "����", BuyPage )
	Text( 1, "û��,�������",CloseTalk )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)

	AddNpcMission 	(450)
	AddNpcMission 	(452)
	AddNpcMission 	(602)
	AddNpcMission 	(605)
	AddNpcMission 	(609)
	AddNpcMission 	(616)
	AddNpcMission 	(617)
	AddNpcMission(	1435	)
	AddNpcMission (	1904	)

	



	
end

------------------------------------------------------------
-- �߶�ŵ����վ-----����˹
------------------------------------------------------------

function r_talk159()

	Talk( 1, "����˹:����������,�������Ұ�" )
	Text( 1, "����", BuyPage )
	Text( 1, "û��,�������",CloseTalk )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)
	
	AddNpcMission 	(463)
	AddNpcMission 	(620)
	AddNpcMission 	(626)
	AddNpcMission 	(629)
	AddNpcMission 	(631)
	AddNpcMission 	(632)
	AddNpcMission 	(633)
	AddNpcMission 	(635)
	AddNpcMission 	(637)
	AddNpcMission	(1015)
	AddNpcMission	(1178)
	AddNpcMission(	1593	)
	AddNpcMission (	1907	)
	AddNpcMission (	1943	)

	


end

------------------------------------------------------------
-- �Ͽ󲹸�վ-----�￨��
------------------------------------------------------------

function r_talk160()

	Talk( 1, "�￨��:���,���ǿ������ΰ����￨��,�����Σ��di��" )

	AddNpcMission ( 223 )
	AddNpcMission ( 224 )
	AddNpcMission ( 225 )
	AddNpcMission ( 226 )
	AddNpcMission ( 227 )
	AddNpcMission ( 228 )
	AddNpcMission ( 229 )
	AddNpcMission ( 230 )
	AddNpcMission	(1055)
	AddNpcMission	(1217)
	AddNpcMission(	1432	)
	AddNpcMission (	1908	)

	



	
end

------------------------------------------------------------
-- �Ͽ󲹸�վ-----�󹤴����
------------------------------------------------------------

function r_talk161()

	Talk( 1, "�����:���࡭�����࡭�����Ӻö���,�ҵı㵱����������" )
	
	---------------����
	AddNpcMission	(6272)
	AddNpcMission	(6273)
	AddNpcMission	(6274)

	AddNpcMission ( 284 )
	AddNpcMission ( 285 )
	AddNpcMission ( 311 )
	-----------------�󹤴����---------��ţ
	AddNpcMission	(5663)
	AddNpcMission	(5664)
end

------------------------------------------------------------
-- �Ͽ󲹸�վ-----���龫
------------------------------------------------------------

function r_talk162()

	Talk( 1, "���龫:���,���ǹ��龫,��������ʲô��ô?" )
	Text( 1, "����", BuyPage )
	Text( 1, "û��,�������",CloseTalk )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)

	AddNpcMission 	(455)
	AddNpcMission 	(461)
	AddNpcMission 	(811)
	AddNpcMission 	(814)
	AddNpcMission	(1013)
	AddNpcMission	(1014)
	AddNpcMission	(1177)


	
end

------------------------------------------------------------
-- ���ò���վ-----�մ�
------------------------------------------------------------

function r_talk163()

	Talk( 1, "�մ�:�Ҳ���Ӱ�,���ϰ�ÿ�춼����������ҹ,��Ҫ���н!" )
	AddNpcMission	(1027)
	AddNpcMission	(1190)
----------------1.7
	AddNpcMission (5139 )
	AddNpcMission (5140 )
	AddNpcMission (5141 )
	AddNpcMission ( 6044 )
	AddNpcMission ( 6045 )

end

------------------------------------------------------------
-- ���ò���վ-----�������
------------------------------------------------------------

function r_talk164()

	Talk( 1, "�������:��,��ð�,����.����ôΣ�յĵط���������û�д���ѽ!" )

end

------------------------------------------------------------
-- ���ò���վ-----������
------------------------------------------------------------

function r_talk165()

	Talk( 1, "������:���,��������Ҫ��ʲô?" )
	Text( 1, "����", BuyPage )
	Text( 1, "û��,�������",CloseTalk )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)
	---------------����
	AddNpcMission	(5563)
	AddNpcMission	(5564)
end

------------------------------------------------------------
-- �Ͳ�����վ-----ĢĢ
------------------------------------------------------------

function r_talk166()

	Talk( 1, "ĢĢ:��!�ҽ�ĢĢ,��Ģ����Ģ,������������򵽺óԵ���" )
	Text( 1, "����", BuyPage )
	Text( 1, "û��,�������",CloseTalk )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)

	AddNpcMission 	(433)
	AddNpcMission 	(655)
	AddNpcMission 	(662)
	AddNpcMission 	(667)
	AddNpcMission	(1143)
	AddNpcMission(	1585	)
	AddNpcMission (	1915	)

	---------------����
	AddNpcMission	(5577)
	AddNpcMission	(5578)




end

------------------------------------------------------------
-- ɳȪ����վ-----ά��
------------------------------------------------------------

function r_talk167()

	Talk( 1, "ά��:�Ҿ�Ҫ�����,��ϣ��ÿ���˶��ܷ����ҵ�ϲ��." )

	AddNpcMission 	(418)
	AddNpcMission 	(641)
	AddNpcMission 	(650)
	AddNpcMission	(1156)

	
end


------------------------------------------------------------
-- ɳȪ����վ-----�Ʒ�
------------------------------------------------------------

function r_talk168()

	Talk( 1, "�Ʒ�:���,�ҽзƷ�." )

	AddNpcMission 	(422)
	AddNpcMission 	(639)
	AddNpcMission 	(648)
	AddNpcMission	(1121)
	AddNpcMission(	1439	)
	AddNpcMission (	1916	)

	---------------����
	--AddNpcMission (5503	)

---------------����
	AddNpcMission	(5569)
	AddNpcMission	(5572)

	
end

------------------------------------------------------------
-- ɳȪ����վ-----����
------------------------------------------------------------

function r_talk169()

	Talk( 1, "����:��������Ĳ���Ա,��Ҫ����ʲô��?" )
	Text( 1, "����", BuyPage )
	Text( 1, "û��,�������",CloseTalk )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)

	AddNpcMission 	(403)
	AddNpcMission 	(413)
	AddNpcMission 	(420)
	AddNpcMission 	(643)
	AddNpcMission 	(647)
	AddNpcMission 	(649)
	AddNpcMission 	(652)
	AddNpcMission	(1140)
	AddNpcMission(	1440	)
	AddNpcMission (	1917	)

	----------------1.7
	AddNpcMission (5124 )
	AddNpcMission (5125 )
	AddNpcMission (5126 )
end

------------------------------------------------------------
-- ������˹����վ-----���
------------------------------------------------------------

function r_talk170()

	Talk( 1, "���:�����������󺣶��ҵ��ٻ�,��������һ���������������µȴ�����ȥ̽��." )

	AddNpcMission 	(429)
	AddNpcMission 	(464)
	AddNpcMission 	(466)
	AddNpcMission 	(684)
	AddNpcMission 	(696)
	AddNpcMission 	(697)
	AddNpcMission	(1108)

----------------1.7
	AddNpcMission (5136 )
	AddNpcMission (5137 )
	AddNpcMission (5138 )
-----------------���---------��ţ
	AddNpcMission	(5647)
	AddNpcMission	(5648)
end

------------------------------------------------------------
-- ɳȪ����վ-----��������
------------------------------------------------------------

function r_talk171()

	Talk( 1, "��������:��!����,��Ҫ�������ô?" )
	Text( 1, "����", BuyPage )
	Text( 1, "û��,�������",CloseTalk )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)

	AddNpcMission 	(423)
	AddNpcMission 	(440)
	AddNpcMission 	(446)
	AddNpcMission 	(462)
	AddNpcMission 	(683)
	AddNpcMission 	(687)
	AddNpcMission 	(692)
	AddNpcMission 	(695)
	AddNpcMission(	1580	)
	AddNpcMission (	1919	)
	AddNpcMission (	1955	)

	----------��������-------˫��
	AddNpcMission	(5718)
	AddNpcMission	(5719)




end

------------------------------------------------------------
-- ����Ӫ�ز���վ-----��˾
------------------------------------------------------------

function r_talk172()

	Talk( 1, "��˾:���ֿɳ�!" )

	AddNpcMission 	(802)
	AddNpcMission 	(807)
	AddNpcMission	(1100)
	AddNpcMission(	1587	)
	AddNpcMission (	1921	)
	AddNpcMission (	1922	)
----------------1.7
	AddNpcMission (5127 )
	AddNpcMission (5128 )
	AddNpcMission (5129 )
	AddNpcMission ( 6046 )
	AddNpcMission ( 6047 )

	----------��˾-------˫��
	AddNpcMission	(5694)
	AddNpcMission	(5695)


end

------------------------------------------------------------
-- ����Ӫ�ز���վ-----��������
------------------------------------------------------------

function r_talk173()

	Talk( 1, "��������:���,�Ҹ�����������ʲ���,��������Ҫ��ʲô?" )
	Text( 1, "����", BuyPage )
	Text( 1, "û��,�������",CloseTalk )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)

	AddNpcMission 	(467)
	AddNpcMission 	(803)
	AddNpcMission(	1588	)
	AddNpcMission (	1923	)
	AddNpcMission (	1944	)

	





end

------------------------------------------------------------
-- ��������վ-----�׿��ʷ���
------------------------------------------------------------

function r_talk174()

	Talk( 1, "�׿��ʷ���:��������ĸ�����˵���������и������������ҽ��׿��ʻ���,������˵,����,��ͽС����ࡱ��!" )

	
	AddNpcMission	(	871	)
	AddNpcMission	(	873	)
	AddNpcMission	(	879	)
	AddNpcMission	(	887	)
	AddNpcMission	(	890	)
	AddNpcMission	(	893	)
	AddNpcMission(	1737	)
	AddNpcMission (	1926	)
	AddNpcMission (	1947	)

	



end

------------------------------------------------------------
-- ��������վ-----����
------------------------------------------------------------

function r_talk175()

	Talk( 1, "����:�����Һܱ�,�����ڳ�����·,Ҫ���и��Զ�����װ�þͺ���." )

	AddNpcMission 	(405)
	AddNpcMission 	(432)
	AddNpcMission 	(668)
	AddNpcMission 	(672)
	AddNpcMission 	(673)
	AddNpcMission 	(677)
	AddNpcMission	(1087)
	AddNpcMission(	1429	)
	AddNpcMission (	1928	)
---------------����
	AddNpcMission	(5589)
	AddNpcMission	(5590)
	AddNpcMission ( 6050 )
	AddNpcMission ( 6051 )
	
----------����-------˫��
	AddNpcMission	(5700)
	AddNpcMission	(5701)



end

------------------------------------------------------------
-- ��������վ-----����үү
------------------------------------------------------------

function r_talk176()

	Talk( 1, "����үү:���ҹ�,�ҿ������������ʦŶ,����Ů��Ҫ����ȫ����ô?" )
	Text( 1, "����", BuyPage )
	Text( 1, "û��,�������",CloseTalk )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)

	AddNpcMission 	(430)
	AddNpcMission 	(434)
	AddNpcMission 	(670)
	AddNpcMission 	(671)
	AddNpcMission 	(679)
	AddNpcMission 	(682)
	AddNpcMission	(1070)
	AddNpcMission(	1430	)
	AddNpcMission (	1929	)

	---------------1.7
	AddNpcMission (5148 )
	AddNpcMission (5150 )
	AddNpcMission (5152 )
	AddNpcMission (5158 )
	AddNpcMission (5160 )
	AddNpcMission (5161 )
	AddNpcMission (5162 )
	AddNpcMission (5163 )
	AddNpcMission (5164 )
	AddNpcMission (5165 )
	AddNpcMission (5166 )
	AddNpcMission (5169 )


end


------------------------------------------------------------
-- ����Ӫ�ز���վ-----��̩
------------------------------------------------------------

function r_talk177()

	Talk( 1, "��̩:������һֻ�ɺ���������ɵ��ֶ�,�������㳪��,����з�ù�.�ҵ�Ȼ�����ӳ��漪������.����ȴ���Ǻ�������,��һ�����Һ�ͷ�ۡ���" )

	AddNpcMission 	(805)
	AddNpcMission 	(806)
	AddNpcMission(	1589	)
	AddNpcMission (	1934	)
	AddNpcMission (	1949	)

	-----------------��̩---------��ţ
	AddNpcMission	(5629)
	AddNpcMission	(5630)




	
end

------------------------------------------------------------
-- �¶�άƽԭ-----�������ˡ���ķ
------------------------------------------------------------

function r_talk221()

	Talk( 1, "��ķ:�ҵİ������ռ�����,�������кܶ���ֵı���,���뿴��ô?" )
	Text( 1, "����", BuyPage )
	Text( 1, "������������", JumpPage, 2 )
	Text( 1, "û��,�������",CloseTalk )


	Talk( 2, "��ķ:�����ǿ��Բ���������,�ں����и������Ե�����,�籴Ҫ������,�ױ�������,����Ȼ��������,�����Һ���ǵ��ڼ��ɴ�½���������2500,2850������һ������,��ȥ�������Կ�,Ӧ�ÿ��Բ����ױ�������,�����˲���������ʱ����װ������ı���.")


	InitTrade()
	Weapon(	0817	)
	Weapon(	0818	)
	Weapon(	0867	)
	Weapon(	0868	)
	Weapon(	0872	)
	Weapon(	0873	)
	Weapon(	0635	)
	Weapon(	0636	)
-----------------�������ˡ���ķ---------��ţ
	AddNpcMission	(5637)
	AddNpcMission	(5638)


end




------------------------------------------------------------
-- ������-----��װ�����������
------------------------------------------------------------
function r_talk222()


	Talk( 1, "����:���,���������ĵ�Ա,������������ð������ص��·�Ŷ" )
	Text( 1, "����", BuyPage )

	InitTrade()
	Defence(	0335	)
	Defence(	0511	)
	Defence(	0687	)
	Defence(	0336	)
	Defence(	0512	)
	Defence(	0688	)
	Defence(	0338	)
	Defence(	0514	)
	Defence(	0690	)
	Defence(	0337	)
	Defence(	0513	)
	Defence(	0689	)
	Defence(	0340	)
	Defence(	0516	)
	Defence(	0692	)
	Defence(	0339	)
	Defence(	0515	)
	Defence(	0691	)
	Defence(	0341	)
	Defence(	0517	)
	Defence(	0693	)
	Defence(	0342	)
	Defence(	0518	)
	Defence(	0694	)
	Defence(	0345	)
	Defence(	0521	)
	Defence(	0697	)
	Defence(	0343	)
	Defence(	0519	)
	Defence(	0695	)
	Defence(	0380	)
	Defence(	0556	)
	Defence(	0732	)
	Defence(	0351	)
	Defence(	0527	)
	Defence(	0703	)
	Defence(	0386	)
	Defence(	0562	)
	Defence(	0738	)
	Defence(	0352	)
	Defence(	0528	)
	Defence(	0704	)
	Defence(	0350	)
	Defence(	0526	)
	Defence(	0702	)
	Defence(	0354	)
	Defence(	0530	)
	Defence(	0706	)
	Defence(	0353	)
	Defence(	0529	)
	Defence(	0705	)
	Defence(	0356	)
	Defence(	0532	)
	Defence(	0708	)
	Defence(	0355	)
	Defence(	0531	)
	Defence(	0707	)
	Defence(	0357	)
	Defence(	0533	)
	Defence(	0709	)
----------------1.7
	AddNpcMission (5118 )
	AddNpcMission (5119 )
	AddNpcMission (5120 )

end
------------------------------------------------------------
-- ��֮��-----����
------------------------------------------------------------
function r_talk223()


	Talk( 1, "����:���,������֮���Ĵ���Ա����,������ʲô��Ҫ��æ��ô?" )
	Text( 1, "��Ҫ�ر��Ǳ�", GoTo, 1318, 510, "darkblue" )

end


------------------------------------------------------------
-- ��ѩ��-----����������
------------------------------------------------------------
function r_talk224()


	Talk( 1, "����������:�����Ǻ���!���ǿ��ֵĺ���!���ǿ��ֵ��Ϻ���!��" )

	AddNpcMission ( 306 )
	AddNpcMission ( 307 )
	AddNpcMission ( 308 )
-----------------����������---------��ţ
	AddNpcMission	(5651)
	AddNpcMission	(5652)
end

------------------------------------------------------------
-- ��ɳ��-----�ܿ˴���
------------------------------------------------------------
function r_talk225()


	Talk( 1, "�ܿ˴���:ѽ��!�Ҿ����˳������ٷ����˰�,���ɵй��ȸǴĵ�ɳĮ��������������!" )

	AddNpcMission ( 309 )
	AddNpcMission ( 310 )
	AddNpcMission ( 312 )
	AddNpcMission ( 313 )
	AddNpcMission ( 314 )
	AddNpcMission ( 315 )
	AddNpcMission ( 316 )
	AddNpcMission ( 328 )
	AddNpcMission ( 329 )
	AddNpcMission ( 333 )
	AddNpcMission ( 336 )
	AddNpcMission ( 483 )
	AddNpcMission ( 484 )

	-----------------�ܿ˴���---------��ţ
	AddNpcMission	(5639)
	AddNpcMission	(5640)
end


------------------------------------------------------------
-- ���Ǳ��³�-----³����
------------------------------------------------------------
function r_talk226()


	Talk( 1, "³����:��!�ҵĵܵ����Ǹ������鷳,���Ҫ�����ճ�,��ʵ����̫����������." )
	
	Talk( 2, "³����:��!�ҵĵܵ����Ǹ������鷳,���Ҫ�����ճ�,��ʵ����̫����������.")
	Text( 2, "����ҵĽ�ָ����", JumpPage, 3)

	InitTrigger()
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeMoney, 50000 )
	TriggerAction( 1, GiveItem, 4144, 1 , 4)
	TriggerAction( 1, JumpPage, 4 )
	TriggerFailure( 1, JumpPage, 5 )
	Talk( 3, "³����:��,��ô���صĽ�ָ��Ȼ����?��Ҫ�⳥��50000������,�ҲŻ����¸����ָ")
	Text( 3, "�ð�,������50000������.", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 3, "̫���˰�,��û����ô��Ǯ", CloseTalk )

	Talk( 4, "³����:�ú���,�����ָ������")

	Talk( 5, "³����:�����û����ô��ǮŶ����Ҫ50000������")

	InitTrigger()
	-----------��������������۽�ָ,���Ƕ��˲�����
	TriggerCondition( 1, HasRecord, 260 )
	TriggerCondition( 1, NoRecord, 262 )
	TriggerCondition( 1, NoItem, 4144, 1 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerFailure( 1, JumpPage, 1 )
	
	Start( GetMultiTrigger(), 1 )

	AddNpcMission ( 296 )
	AddNpcMission ( 297 )
	AddNpcMission ( 298 )
	AddNpcMission ( 302 )
	AddNpcMission ( 303 )

end


------------------------------------------------------------
-- ����Ӫ�ز���վ-----��������ʦ
------------------------------------------------------------
function r_talk227()

	Talk( 1, "��������ʦ:�����˶���Ϊ��������,��ʵ������û��һ�ż�ǿ����." )

	AddNpcMission ( 299 )
	AddNpcMission ( 300 )
	AddNpcMission ( 469 )
	AddNpcMission ( 391 )
	----------------1.7
	AddNpcMission (5121 )
	AddNpcMission (5122 )
	AddNpcMission (5123 )
end

------------------------------------------------------------
-- �����ӵ²���վ-----���ϡ�������
------------------------------------------------------------
function r_talk228()

	Talk( 1, "���ϡ�������:��������֪��ʲôʱ���Ҳ��ܳ�Ϊ�������ľ��ٰ�,�ѵ����ҵ���������?!!" )
	
	AddNpcMission ( 837 )
	AddNpcMission ( 838 )
	AddNpcMission ( 839 )

end

------------------------------------------------------------
-- �����ӵ²���վ-----������΢��
------------------------------------------------------------
function r_talk229()

	Talk( 1, "������΢��:��סŶ,�����ÿ�������һ��Ҫ�ĸ���Ŷ." )

	AddNpcMission ( 840 )
---------------����
	AddNpcMission	(5591)
	AddNpcMission	(5592)
	AddNpcMission ( 6048 )
	AddNpcMission ( 6049 )

end

------------------------------------------------------------
-- �����ӵ²���վ-----ِ��ħ��
------------------------------------------------------------
function r_talk230()

	Talk( 1, "ِ��ħ��:�޺ǺǺǺ�,�����������Ķ���������Ůʿ�������Ѿ�������." )

	AddNpcMission ( 844 )
	AddNpcMission ( 841 )
	AddNpcMission ( 842 )
	AddNpcMission ( 843 )
-----------------ِ��ħ��---------��ţ
	AddNpcMission	(5625)
	AddNpcMission	(5626)
end

------------------------------------------------------------
-- �����ӵ²���վ-----���ݡ���ʯ
------------------------------------------------------------
function r_talk231()

	Talk( 1, "���ݡ���ʯ:���������Ǳ��Ǹ�����̫����,���Գ�����ò��,���µ�ʯͷ�������." )

	AddNpcMission ( 845 )
	AddNpcMission ( 846 )
	AddNpcMission ( 847 )
	AddNpcMission ( 848 )
----------���ݡ���ʯ-------˫��
	AddNpcMission	(5714)
	AddNpcMission	(5715)
end

------------------------------------------------------------
-- ��������վ-----��ά�����
------------------------------------------------------------
function r_talk232()

	Talk( 1, "��ά�����:�����ܴ�,�����ҵ�Ƥ����Ȼϸ����ֹ���,�����˴���Ȼ����������,Ҫ��Ҫ��һ��." )
	
	AddNpcMission ( 877 )
	AddNpcMission ( 883 )
	AddNpcMission ( 884 )


end

------------------------------------------------------------
-- ��������վ-----���ġ���
------------------------------------------------------------
function r_talk233()

	Talk( 1, "���ġ���:����һƥ���Ա�������,��������Ŀ�Ұ�С���������" )

	AddNpcMission ( 881 )
end

------------------------------------------------------------
-- ������-----��������ʦ������
------------------------------------------------------------
function r_talk234()

	Talk( 1, "����:������,��ı�һ���Լ�������ô?���ճ�����������,���������Ͱ�." )
	Text( 1, "��Ҫ��", JumpPage, 2)
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 1807, 1 )
	TriggerAction( 1, OpenHair )
	TriggerFailure( 1, JumpPage, 3 )
	Talk( 2, "����:��ʵ...�Һܾ�û������,���û�������ɱ����Ŷ,��׼����Ҫת��ͷ����ô?����,��İ������ȯ���ҿ���,û�д���ȯ�ɲ���Ŷ.")
	Text( 2, "�ǵ�,��ȷ��", MultiTrigger, GetMultiTrigger(), 1)
	Text( 2, "����,�һ��������", CloseTalk )

	Talk( 3, "����:����û����ȯŶ,�Ҳ��ܸ�������.")

	AddNpcMission ( 6085 )

end

------------------------------------------------------------
--���Ǳ�-----��������

------------------------------------------------------------
function rr_talk529()

	Talk( 1, "����:������,��ı�һ���Լ�������ô?���ճ�����������,���������Ͱ�." )
	Text( 1, "��Ҫ��", JumpPage, 2)
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 1807, 1 )
	TriggerAction( 1, OpenHair )
	TriggerFailure( 1, JumpPage, 3 )
	Talk( 2, "����:��ʵ...�Һܾ�û������,���û�������ɱ����Ŷ,��׼����Ҫת��ͷ����ô?����,��İ������ȯ���ҿ���,û�д���ȯ�ɲ���Ŷ.")
	Text( 2, "�ǵ�,��ȷ��", MultiTrigger, GetMultiTrigger(), 1)
	Text( 2, "����,�һ��������", CloseTalk )

	Talk( 3, "����:����û����ȯŶ,�Ҳ��ܸ�������.")
	--��з�ر��ж������----
	AddNpcMission ( 5861 )
	

end
------------------------------------------------------------
-- �Ͽ󲹸�վ-----��Ʒ���ˡ�����
------------------------------------------------------------
function r_talk235()

	Talk( 1, "��Ʒ���ˡ�����:���������ϵȵ��鱦��ָ������Ŷ,û��ϵ,���ȿ����Ǹ��ʺ���,��Ǯ�������������." )
	Text( 1, "����", BuyPage )

	InitTrade()
	Defence(	4611	)
	Defence(	4612	)
	Defence(	4613	)
	Defence(	4614	)
	Defence(	4615	)
	Defence(	4616	)
	Defence(	4617	)
	Defence(	4618	)
	Defence(	4619	)
	Defence(	4620	)

end

------------------------------------------------------------
-- ����ɭ�ֲ���վ-----��Ʒ���ˡ����
------------------------------------------------------------
function r_talk236()

	Talk( 1, "��Ʒ���ˡ����:���������ϵȵ��鱦��ָ������Ŷ,û��ϵ,���ȿ����Ǹ��ʺ���,��Ǯ�������������." )
	Text( 1, "����", BuyPage )

	InitTrade()
	Defence(	4626	)
	Defence(	4627	)
	Defence(	4628	)
	Defence(	4629	)
	Defence(	4630	)
	Defence(	4631	)
	Defence(	4632	)
	Defence(	4633	)
	Defence(	4634	)
	Defence(	4635	)

	-----------------��Ʒ���ˡ����---------��ţ
	AddNpcMission	(5649)
	AddNpcMission	(5650)
end

------------------------------------------------------------
-- �߶�ŵ����վ-----��Ʒ���ˡ�������
------------------------------------------------------------
function r_talk237()

	Talk( 1, "��Ʒ���ˡ�������:���������ϵȵ��鱦��ָ������Ŷ,û��ϵ,���ȿ����Ǹ��ʺ���,��Ǯ�������������." )
	Text( 1, "����", BuyPage )

	InitTrade()
	Defence(	4631	)
	Defence(	4632	)
	Defence(	4633	)
	Defence(	4634	)
	Defence(	4635	)
	Defence(	4636	)
	Defence(	4637	)
	Defence(	4638	)
	Defence(	4639	)
	Defence(	4640	)

end

------------------------------------------------------------
-- ������-----��Ʒ���ˡ�ά�˶�
------------------------------------------------------------
function r_talk238()

	Talk( 1, "��Ʒ���ˡ�ά�˶�:���������ϵȵ��鱦��ָ������Ŷ,û��ϵ,���ȿ����Ǹ��ʺ���,��Ǯ�������������." )
	Text( 1, "����", BuyPage )

	InitTrade()
	Defence(	4641	)
	Defence(	4642	)
	Defence(	4643	)
	Defence(	4644	)
	Defence(	4645	)
	Defence(	4646	)
	Defence(	4647	)
	Defence(	4648	)
	Defence(	4649	)
	Defence(	4650	)
	Defence(	4706	)
	Defence(	4707	)
	Defence(	4708	)
	Defence(	4709	)
	Defence(	4711	)
	Defence(	4712	)
	Defence(	4713	)
	Defence(	4714	)
	Defence(	4715	)

end

------------------------------------------------------------
-- �����ӵ²���վ-----��Ʒ���ˡ�����
------------------------------------------------------------
function r_talk239()

	Talk( 1, "��Ʒ���ˡ�����:���������ϵȵ��鱦��ָ������Ŷ,û��ϵ,���ȿ����Ǹ��ʺ���,��Ǯ�������������." )
	Text( 1, "����", BuyPage )

	InitTrade()
	Defence(	4651	)
	Defence(	4652	)
	Defence(	4653	)
	Defence(	4654	)
	Defence(	4655	)
	Defence(	4656	)
	Defence(	4657	)
	Defence(	4658	)
	Defence(	4659	)
	Defence(	4660	)

end

------------------------------------------------------------
-- �Ͳ�����վ-----��Ʒ���ˡ�����
------------------------------------------------------------
function r_talk240()

	Talk( 1, "��Ʒ���ˡ�����:���������ϵȵ��鱦��ָ������Ŷ,û��ϵ,���ȿ����Ǹ��ʺ���,��Ǯ�������������." )
	Text( 1, "����", BuyPage )

	InitTrade()
	Defence(	4666	)
	Defence(	4667	)
	Defence(	4668	)
	Defence(	4669	)
	Defence(	4671	)
	Defence(	4672	)
	Defence(	4673	)
	Defence(	4674	)
	Defence(	4675	)
	Defence(	4676	)
	Defence(	4677	)
	Defence(	4678	)
	Defence(	4679	)
	Defence(	4681	)
	Defence(	4682	)
	Defence(	4683	)
	Defence(	4684	)
	Defence(	4685	)

end

------------------------------------------------------------
-- ��������վ-----��Ʒ���ˡ����
------------------------------------------------------------
function r_talk241()

	Talk( 1, "��Ʒ���ˡ����:���������ϵȵ��鱦��ָ������Ŷ,û��ϵ,���ȿ����Ǹ��ʺ���,��Ǯ�������������." )
	Text( 1, "����", BuyPage )

	InitTrade()
	Defence(	4686	)
	Defence(	4687	)
	Defence(	4688	)
	Defence(	4689	)
	Defence(	4691	)
	Defence(	4692	)
	Defence(	4693	)
	Defence(	4694	)
	Defence(	4695	)
	Defence(	4696	)
	Defence(	4697	)
	Defence(	4698	)
	Defence(	4699	)
	Defence(	4701	)
	Defence(	4702	)
	Defence(	4703	)
	Defence(	4704	)
	Defence(	4705	)
----------��Ʒ���ˡ����-------˫��
	AddNpcMission	(5712)
	AddNpcMission	(5713)
end


------------------------------------------------------------
-- ������-----��ϴ��
------------------------------------------------------------
function r_talk252()
	
	InitFuncList()
	AddFuncList( GiveItem,	0817	,	1	,	4)
	AddFuncList( GiveItem,	0818	,	1	,	4)
	AddFuncList( GiveItem,	0819	,	1	,	4)
	AddFuncList( GiveItem,	0867	,	1	,	4)
	AddFuncList( GiveItem,	0868	,	1	,	4)
	AddFuncList( GiveItem,	0869	,	1	,	4)
	AddFuncList( GiveItem,	0872	,	1	,	4)
	AddFuncList( GiveItem,	0873	,	1	,	4)
	AddFuncList( GiveItem,	0874	,	1	,	4)
	AddFuncList( GiveItem,	1630	,	2	,	4)
	AddFuncList( GiveItem,	1631	,	1	,	4)
	AddFuncList( GiveItem,	1632	,	1	,	4)
	AddFuncList( GiveItem,	1633	,	2	,	4)
	AddFuncList( GiveItem,	1634	,	1	,	4)
	AddFuncList( GiveItem,	1635	,	1	,	4)
	AddFuncList( GiveItem,	1636	,	2	,	4)
	AddFuncList( GiveItem,	1637	,	1	,	4)
	AddFuncList( GiveItem,	1638	,	1	,	4)
	AddFuncList( GiveItem,	1639	,	2	,	4)
	AddFuncList( GiveItem,	1640	,	1	,	4)
	AddFuncList( GiveItem,	1641	,	1	,	4)
	AddFuncList( GiveItem,	1642	,	2	,	4)
	AddFuncList( GiveItem,	1643	,	1	,	4)
	AddFuncList( GiveItem,	1644	,	1	,	4)
	AddFuncList( GiveItem,	3360	,	1	,	4)
	AddFuncList( GiveItem,	3361	,	1	,	4)
	AddFuncList( GiveItem,	3362	,	1	,	4)
	AddFuncList( GiveItem,	3363	,	1	,	4)
	AddFuncList( GiveItem,	3364	,	1	,	4)
	AddFuncList( GiveItem,	3365	,	1	,	4)
	AddFuncList( GiveItem,	3366	,	1	,	4)
	AddFuncList( GiveItem,	3367	,	1	,	4)
	AddFuncList( GiveItem,	3425	,	1	,	4)
	AddFuncList( GiveItem,	3426	,	1	,	4)
	AddFuncList( GiveItem,	3427	,	1	,	4)
	AddFuncList( GiveItem,	3428	,	1	,	4)
	AddFuncList( GiveItem,	3429	,	1	,	4)
	AddFuncList( GiveItem,	3430	,	1	,	4)
	AddFuncList( GiveItem,	3431	,	1	,	4)
	AddFuncList( GiveItem,	3432	,	1	,	4)
	AddFuncList( GiveItem,	3433	,	1	,	4)
	AddFuncList( GiveItem,	1804	,	1	,	4)
	AddFuncList( GiveItem,	1805	,	1	,	4)
	AddFuncList( GiveItem,	1806	,	1	,	4)
	AddFuncList( GiveItem,	1807	,	1	,	4)
	AddFuncList( GiveItem,	1808	,	1	,	4)
	AddFuncList( GiveItem,	1809	,	1	,	4)
	AddFuncList( GiveItem,	1810	,	1	,	4)
	AddFuncList( GiveItem,	1811	,	1	,	4)
	AddFuncList( GiveItem,	1787	,	1	,	4)
	AddFuncList( GiveItem,	1788	,	1	,	4)
	AddFuncList( GiveItem,	1789	,	1	,	4)
	AddFuncList( GiveItem,	1790	,	1	,	4)
	AddFuncList( GiveItem,	1791	,	1	,	4)
	AddFuncList( GiveItem,	1792	,	1	,	4)
	AddFuncList( GiveItem,	1793	,	1	,	4)
	AddFuncList( GiveItem,	3930	,	1	,	4)
	AddFuncList( GiveItem,	3931	,	1	,	4)
	AddFuncList( GiveItem,	3932	,	1	,	4)
	AddFuncList( GiveItem,	3930	,	1	,	4)
	AddFuncList( GiveItem,	3931	,	1	,	4)
	AddFuncList( GiveItem,	3932	,	1	,	4)
	AddFuncList( GiveItem,	3930	,	1	,	4)
	AddFuncList( GiveItem,	3931	,	1	,	4)
	AddFuncList( GiveItem,	3932	,	1	,	4)
	AddFuncList( GiveItem,	3930	,	1	,	4)
	AddFuncList( GiveItem,	3931	,	1	,	4)
	AddFuncList( GiveItem,	3932	,	1	,	4)
	AddFuncList( GiveItem,	3930	,	1	,	4)
	AddFuncList( GiveItem,	3931	,	1	,	4)
	AddFuncList( GiveItem,	3932	,	1	,	4)
	AddFuncList( GiveItem,	3930	,	1	,	4)
	AddFuncList( GiveItem,	3930	,	1	,	4)
	AddFuncList( GiveItem,	3931	,	1	,	4)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3927, 1 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 3927, 1 )
	TriggerAction( 1, RandFunction, GetFuncList(), GetNumFunc() )
	TriggerFailure( 1, JumpPage, 2 )
	Talk( 1, "����һ̨���ϵ���ϴ��,���������ϴ�����һ��,����Ҫ��ϴô?ÿ��200G." )
	Text( 1, "��ϴ����", MultiTrigger, GetMultiTrigger(), 1)
	Text( 1, "��ϴʥ������", JumpPage, 3)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2892, 1 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, TakeItem, 2892, 1 )
	TriggerAction( 1, GiveItem, 2893, 1 , 4)
	TriggerAction( 1, JumpPage, 4)
	TriggerFailure( 1, JumpPage, 2 )
	Talk( 3, "��!����ĺ���!��ϴ��ô��ĺ��ӱ���֧��10000������" )
	Text( 3, "ȷ����ϴ", MultiTrigger, GetMultiTrigger(), 1)
	Talk( 4, "��Ư���ĺ���!�򿪻��о�ϲ��" )
	Talk( 2, "��ϴʧ��,û��֧���㹻�Ľ�Ǯ����û����Ҫ��ϴ����Ʒ" )
end


------------------------------------------------------------
-- ���Ŷӳ�-----����ѧ��
------------------------------------------------------------
function r_talk253()
	
	Talk( 1, "����ѧ��:��ð�,������������Э���һ��רҵ�Ŀ���ѧ��,���о��˺ö���ϵ���������,��֪������ʲô������������?" )
	Text( 1, "�й������ӡ", JumpPage, 3)

	Talk( 3, "����ѧ��:��,��Ȼ���ҵ���,���ҾͲ��ƴ���,���ϵ������ӡ�Ǻܸ��Ӻͷ�����,����û��ϵ,�ҿ��Խ����Щ��ӡ,ֻҪ������ҵ���Ӧ�ķ��ľͿ�����." )
	Text( 3, "�÷�֮��", JumpPage, 6)
	Text( 3, "�û�֮��", JumpPage, 7)
	Text( 3, "���龫����", JumpPage, 8)
	Text( 3, "��������", JumpPage, 9)
	Text( 3, "��������", JumpPage, 10)
	Text( 3, "��������", JumpPage, 11)
	Text( 3, "����ս��", JumpPage, 12)
	Text( 3, "��һҳ", JumpPage, 4)

	Talk( 4, "����ѧ��:��,��Ȼ���ҵ���,���ҾͲ��ƴ���,���ϵ������ӡ�Ǻܸ��Ӻͷ�����,����û��ϵ,�ҿ��Խ����Щ��ӡ,ֻҪ������ҵ���Ӧ�ķ��ľͿ�����." )
	Text( 4, "����֮ŭ��", JumpPage, 13)
	Text( 4, "����֮����", JumpPage, 14)
	Text( 4, "����֮��", JumpPage, 15)
	Text( 4, "����֮��", JumpPage, 16)
	Text( 4, "����֮��", JumpPage, 17)
	Text( 4, "����ս������", JumpPage, 18)
	Text( 4, "����ս��ѥ", JumpPage, 19)
	Text( 4, "��һҳ", JumpPage, 5)

	Talk( 5, "����ѧ��:��,��Ȼ���ҵ���,���ҾͲ��ƴ���,���ϵ������ӡ�Ǻܸ��Ӻͷ�����,����û��ϵ,�ҿ��Խ����Щ��ӡ,ֻҪ������ҵ���Ӧ�ķ��ľͿ�����." )
	Text( 5, "���黤��", JumpPage, 20)
	Text( 5, "���黤��", JumpPage, 21)
	Text( 5, "��������", JumpPage, 22)
	Text( 5, "����ѥ", JumpPage, 23)
	Text( 5, "�÷�����", JumpPage, 24)
	Text( 5, "�÷�ѥ", JumpPage, 25)
	Text( 5, "����Ƥ����", JumpPage, 26)
	Text( 5, "����Ƥѥ", JumpPage, 27)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1912, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1912, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 791, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 6, "����ѧ��:Ҫ����÷�֮�۵ķ�ӡ��������������Ʒ:�����ӡ�Ļ÷�֮�ۡ���ŵ��ʯx5���¼ӷ�ʯx10�����ط�ʯx10,Ϊ���о������ӡ�Ҹ����˼���Ĵ���,��֧������60�򺣵�����Ϊ������" )
	Text( 6, "����÷�֮�۵ķ�ӡ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1915, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1915, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 794, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 7, "����ѧ��:Ҫ����û�֮�ȵķ�ӡ��������������Ʒ:�����ӡ�Ļû�֮�ȡ���ŵ��ʯx5���¼ӷ�ʯx10�����ط�ʯx10,Ϊ���о������ӡ�Ҹ����˼���Ĵ���,��֧������60�򺣵�����Ϊ������" )
	Text( 7, "����û�֮�ȵķ�ӡ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1908, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1908, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 787, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 8, "����ѧ��:Ҫ������龫���ȵķ�ӡ��������������Ʒ:�����ӡ�Ļ��龫���ȡ���ŵ��ʯx5���¼ӷ�ʯx10�����ط�ʯx10,Ϊ���о������ӡ�Ҹ����˼���Ĵ���,��֧������60�򺣵�����Ϊ������" )
	Text( 8, "������龫���ȵķ�ӡ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1926, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1926, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 805, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 9, "����ѧ��:Ҫ�����������ķ�ӡ��������������Ʒ:�����ӡ�Ļ������硢��ŵ��ʯx5���¼ӷ�ʯx10�����ط�ʯx10,Ϊ���о������ӡ�Ҹ����˼���Ĵ���,��֧������60�򺣵�����Ϊ������" )
	Text( 9, "�����������ķ�ӡ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1900, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1900, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 779, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 10, "����ѧ��:Ҫ����������׵ķ�ӡ��������������Ʒ:�����ӡ�Ļ������ס���ŵ��ʯx5���¼ӷ�ʯx10�����ط�ʯx10,Ϊ���о������ӡ�Ҹ����˼���Ĵ���,��֧������60�򺣵�����Ϊ������" )
	Text( 10, "����������׵ķ�ӡ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1886, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1886, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 765, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 11, "����ѧ��:Ҫ�����������ķ�ӡ��������������Ʒ:�����ӡ�Ļ���������ŵ��ʯx5���¼ӷ�ʯx10�����ط�ʯx10,Ϊ���о������ӡ�Ҹ����˼���Ĵ���,��֧������60�򺣵�����Ϊ������" )
	Text( 11, "�����������ķ�ӡ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1889, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1889, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 768, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 12, "����ѧ��:Ҫ�������ս�׵ķ�ӡ��������������Ʒ:�����ӡ�Ļ���ս�ס���ŵ��ʯx5���¼ӷ�ʯx10�����ط�ʯx10,Ϊ���о������ӡ�Ҹ����˼���Ĵ���,��֧������60�򺣵�����Ϊ������" )
	Text( 12, "�������ս�׵ķ�ӡ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1904, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1904, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 783, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 13, "����ѧ��:Ҫ�������֮ŭ��ķ�ӡ��������������Ʒ:�����ӡ�Ļ���֮ŭ�𡢷�ŵ��ʯx5���¼ӷ�ʯx10�����ط�ʯx10,Ϊ���о������ӡ�Ҹ����˼���Ĵ���,��֧������60�򺣵�����Ϊ������" )
	Text( 13, "�������֮ŭ��ķ�ӡ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1893, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1893, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 772, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 14, "����ѧ��:Ҫ�������֮�����ķ�ӡ��������������Ʒ:�����ӡ�Ļ���֮��������ŵ��ʯx5���¼ӷ�ʯx10�����ط�ʯx10,Ϊ���о������ӡ�Ҹ����˼���Ĵ���,��֧������60�򺣵�����Ϊ������" )
	Text( 14, "�������֮�����ķ�ӡ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1896, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1896, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 775, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 15, "����ѧ��:Ҫ�������֮��ķ�ӡ��������������Ʒ:�����ӡ�Ļ���֮�衢��ŵ��ʯx5���¼ӷ�ʯx10�����ط�ʯx10,Ϊ���о������ӡ�Ҹ����˼���Ĵ���,��֧������60�򺣵�����Ϊ������" )
	Text( 15, "�������֮��ķ�ӡ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1922, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1922, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 801, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 16, "����ѧ��:Ҫ�������֮���ķ�ӡ��������������Ʒ:�����ӡ�Ļ���֮������ŵ��ʯx5���¼ӷ�ʯx10�����ط�ʯx10,Ϊ���о������ӡ�Ҹ����˼���Ĵ���,��֧������60�򺣵�����Ϊ������" )
	Text( 16, "�������֮���ķ�ӡ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1918, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1918, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 797, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 17, "����ѧ��:Ҫ�������֮�۵ķ�ӡ��������������Ʒ:�����ӡ�Ļ���֮�ۡ���ŵ��ʯx5���¼ӷ�ʯx10�����ط�ʯx10,Ϊ���о������ӡ�Ҹ����˼���Ĵ���,��֧������60�򺣵�����Ϊ������" )
	Text( 17, "�������֮�۵ķ�ӡ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1988, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1988, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 0807, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 18, "����ѧ��:Ҫ�������ս�����׵ķ�ӡ��������������Ʒ:�����ӡ�Ļ���ս�����ס���ŵ��ʯx5���¼ӷ�ʯx10�����ط�ʯx10,Ϊ���о������ӡ�Ҹ����˼���Ĵ���,��֧������60�򺣵�����Ϊ������" )
	Text( 18, "�������ս�����׵ķ�ӡ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1989, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1989, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 0808, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 19, "����ѧ��:Ҫ�������ս�����׵ķ�ӡ��������������Ʒ:�����ӡ�Ļ���ս��ѥ����ŵ��ʯx5���¼ӷ�ʯx10�����ط�ʯx10,Ϊ���о������ӡ�Ҹ����˼���Ĵ���,��֧������60�򺣵�����Ϊ������" )
	Text( 19, "�������ս��ѥ�ķ�ӡ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1990, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1990, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 0809, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 20, "����ѧ��:Ҫ�������ս�����׵ķ�ӡ��������������Ʒ:�����ӡ�Ļ��黤�֡���ŵ��ʯx5���¼ӷ�ʯx10�����ط�ʯx10,Ϊ���о������ӡ�Ҹ����˼���Ĵ���,��֧������60�򺣵�����Ϊ������" )
	Text( 20, "������黤�ֵķ�ӡ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1991, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1991, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 0810, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 21, "����ѧ��:Ҫ�������ս�����׵ķ�ӡ��������������Ʒ:�����ӡ�Ļ��黤�ȡ���ŵ��ʯx5���¼ӷ�ʯx10�����ط�ʯx10,Ϊ���о������ӡ�Ҹ����˼���Ĵ���,��֧������60�򺣵�����Ϊ������" )
	Text( 21, "������黤�ȵķ�ӡ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1992, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1992, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 0811, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 22, "����ѧ��:Ҫ�������ս�����׵ķ�ӡ��������������Ʒ:�����ӡ�Ļ������ס���ŵ��ʯx5���¼ӷ�ʯx10�����ط�ʯx10,Ϊ���о������ӡ�Ҹ����˼���Ĵ���,��֧������60�򺣵�����Ϊ������" )
	Text( 22, "����������׵ķ�ӡ", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 1994, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1994, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 0813, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 23, "����ѧ��:Ҫ�������ս�����׵ķ�ӡ��������������Ʒ:�����ӡ�Ļ���ѥ����ŵ��ʯx5���¼ӷ�ʯx10�����ط�ʯx10,Ϊ���о������ӡ�Ҹ����˼���Ĵ���,��֧������60�򺣵�����Ϊ������" )
	Text( 23, "�������ѥ�ķ�ӡ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1993, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1993, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 0812, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 24, "����ѧ��:Ҫ�������ս�����׵ķ�ӡ��������������Ʒ:�����ӡ�Ļ÷����ס���ŵ��ʯx5���¼ӷ�ʯx10�����ط�ʯx10,Ϊ���о������ӡ�Ҹ����˼���Ĵ���,��֧������60�򺣵�����Ϊ������" )
	Text( 24, "����÷����׵ķ�ӡ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1995, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1995, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 0814, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 25, "����ѧ��:Ҫ�������ս�����׵ķ�ӡ��������������Ʒ:�����ӡ�Ļ÷�ѥ����ŵ��ʯx5���¼ӷ�ʯx10�����ط�ʯx10,Ϊ���о������ӡ�Ҹ����˼���Ĵ���,��֧������60�򺣵�����Ϊ������" )
	Text( 25, "����÷�ѥ�ķ�ӡ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1996, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1996, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 0815, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 26, "����ѧ��:Ҫ�������ս�����׵ķ�ӡ��������������Ʒ:�����ӡ�Ļ���Ƥ���ס���ŵ��ʯx5���¼ӷ�ʯx10�����ط�ʯx10,Ϊ���о������ӡ�Ҹ����˼���Ĵ���,��֧������60�򺣵�����Ϊ������" )
	Text( 26, "�������Ƥ���׵ķ�ӡ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1997, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1997, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 0877, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 27, "����ѧ��:Ҫ�������ս�����׵ķ�ӡ��������������Ʒ:�����ӡ�Ļ���Ƥѥ����ŵ��ʯx5���¼ӷ�ʯx10�����ط�ʯx10,Ϊ���о������ӡ�Ҹ����˼���Ĵ���,��֧������60�򺣵�����Ϊ������" )
	Text( 27, "�������Ƥѥ�ķ�ӡ", MultiTrigger, GetMultiTrigger(), 1)


	Talk( 30, "����ѧ��:�ܱ�Ǹ,����ҵ���Ʒ����,���޷�Ϊ������ӡ." )


end

------------------------------------------------------------
-- ����֮��-----����ѧ��
------------------------------------------------------------
function r_talk254()
	
	Talk( 1, "����ѧ��:��ð�,������������Э���һ��רҵ�Ŀ���ѧ��,�Ҹ����о�����֮��,��֪������ʲô������������?" )
	Text( 1, "�йط���֮��", JumpPage, 2)

	Talk( 2, "����ѧ��:���Ѿ��о�����֮���ܾ���,�ҿ��԰�������һЩ�Ŵ������������Щ�����ϵķ�ӡ." )
	Text( 2, "�����ӡ", JumpPage, 3)
	
	Talk( 3, "����ѧ��:�ڷ���֮���кܶ಻����ӡ�˵�����,ͨ��������о�,�����ڿ��Խ⿪��Щ��ӡ��,��������Ҫ����һЩ��ʯ����������.����Ҫ�⿪��ӡô?" )
	Text( 3, "��Ӱ֮��", JumpPage, 6)
	Text( 3, "��������", JumpPage, 7)
	Text( 3, "��ħ����", JumpPage, 8)
	Text( 3, "����֮��", JumpPage, 9)
	Text( 3, "�������", JumpPage, 10)
	Text( 3, "����֮��", JumpPage, 11)
	Text( 3, "�׶�����", JumpPage, 12)
	Text( 3, "��������", JumpPage, 13)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1920, 1 )
	TriggerCondition( 1, HasItem, 3431, 5 )
	TriggerCondition( 1, HasItem, 3428, 5 )
	TriggerCondition( 1, HasItem, 3425, 10 )
	TriggerCondition( 1, HasMoney, 200000 )
	TriggerAction( 1, TakeMoney, 200000 )
	TriggerAction( 1, TakeItem, 1920, 1 )
	TriggerAction( 1, TakeItem, 3431, 5  )
	TriggerAction( 1, TakeItem, 3428, 5 )
	TriggerAction( 1, TakeItem, 3425, 10)
	TriggerAction( 1, GiveItem, 799, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 6, "����ѧ��:Ҫ�����Ӱ֮���ķ�ӡ��������������Ʒ:������ӡ�İ�Ӱ֮�������׷�ʯx5���Ӷ���ʯx5�����Ƿ�ʯx10,Ϊ���о������ӡ�Ҹ����˼���Ĵ���,��֧������20�򺣵�����Ϊ������" )
	Text( 6, "�����Ӱ֮���ķ�ӡ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1924, 1 )
	TriggerCondition( 1, HasItem, 3431, 5 )
	TriggerCondition( 1, HasItem, 3428, 5 )
	TriggerCondition( 1, HasItem, 3425, 10 )
	TriggerCondition( 1, HasMoney, 200000 )
	TriggerAction( 1, TakeMoney, 200000 )
	TriggerAction( 1, TakeItem, 1924, 1 )
	TriggerAction( 1, TakeItem, 3431, 5  )
	TriggerAction( 1, TakeItem, 3428, 5 )
	TriggerAction( 1, TakeItem, 3425, 10)
	TriggerAction( 1, GiveItem, 803, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 7, "����ѧ��:Ҫ�����������ķ�ӡ��������������Ʒ:������ӡ�ĺ������硢���׷�ʯx5���Ӷ���ʯx5�����Ƿ�ʯx10,Ϊ���о������ӡ�Ҹ����˼���Ĵ���,��֧������20�򺣵�����Ϊ������" )
	Text( 7, "�����������ķ�ӡ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1906, 1 )
	TriggerCondition( 1, HasItem, 3431, 5 )
	TriggerCondition( 1, HasItem, 3428, 5 )
	TriggerCondition( 1, HasItem, 3425, 10 )
	TriggerCondition( 1, HasMoney, 200000 )
	TriggerAction( 1, TakeMoney, 200000 )
	TriggerAction( 1, TakeItem, 1906, 1 )
	TriggerAction( 1, TakeItem, 3431, 5  )
	TriggerAction( 1, TakeItem, 3428, 5 )
	TriggerAction( 1, TakeItem, 3425, 10)
	TriggerAction( 1, GiveItem, 785, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 8, "����ѧ��:Ҫ�����ħ���ȵķ�ӡ��������������Ʒ:������ӡ����ħ���ȡ����׷�ʯx5���Ӷ���ʯx5�����Ƿ�ʯx10,Ϊ���о������ӡ�Ҹ����˼���Ĵ���,��֧������20�򺣵�����Ϊ������" )
	Text( 8, "�����ħ���ȵķ�ӡ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1891, 1 )
	TriggerCondition( 1, HasItem, 3431, 5 )
	TriggerCondition( 1, HasItem, 3428, 5 )
	TriggerCondition( 1, HasItem, 3425, 10 )
	TriggerCondition( 1, HasMoney, 200000 )
	TriggerAction( 1, TakeMoney, 200000 )
	TriggerAction( 1, TakeItem, 1891, 1 )
	TriggerAction( 1, TakeItem, 3431, 5  )
	TriggerAction( 1, TakeItem, 3428, 5 )
	TriggerAction( 1, TakeItem, 3425, 10)
	TriggerAction( 1, GiveItem, 770, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 9, "����ѧ��:Ҫ�������֮��ķ�ӡ��������������Ʒ:������ӡ������֮�䡢���׷�ʯx5���Ӷ���ʯx5�����Ƿ�ʯx10,Ϊ���о������ӡ�Ҹ����˼���Ĵ���,��֧������20�򺣵�����Ϊ������" )
	Text( 9, "�������֮��ķ�ӡ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1898, 1 )
	TriggerCondition( 1, HasItem, 3431, 5 )
	TriggerCondition( 1, HasItem, 3428, 5 )
	TriggerCondition( 1, HasItem, 3425, 10 )
	TriggerCondition( 1, HasMoney, 200000 )
	TriggerAction( 1, TakeMoney, 200000 )
	TriggerAction( 1, TakeItem, 1898, 1 )
	TriggerAction( 1, TakeItem, 3431, 5  )
	TriggerAction( 1, TakeItem, 3428, 5 )
	TriggerAction( 1, TakeItem, 3425, 10)
	TriggerAction( 1, GiveItem, 777, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 10, "����ѧ��:Ҫ���������۵ķ�ӡ��������������Ʒ:������ӡ��������ۡ����׷�ʯx5���Ӷ���ʯx5�����Ƿ�ʯx10,Ϊ���о������ӡ�Ҹ����˼���Ĵ���,��֧������20�򺣵�����Ϊ������" )
	Text( 10, "���������۵ķ�ӡ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1902, 1 )
	TriggerCondition( 1, HasItem, 3431, 5 )
	TriggerCondition( 1, HasItem, 3428, 5 )
	TriggerCondition( 1, HasItem, 3425, 10 )
	TriggerCondition( 1, HasMoney, 200000 )
	TriggerAction( 1, TakeMoney, 200000 )
	TriggerAction( 1, TakeItem, 1902, 1 )
	TriggerAction( 1, TakeItem, 3431, 5  )
	TriggerAction( 1, TakeItem, 3428, 5 )
	TriggerAction( 1, TakeItem, 3425, 10)
	TriggerAction( 1, GiveItem, 781, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 11, "����ѧ��:Ҫ�������֮���ķ�ӡ��������������Ʒ:������ӡ������֮�������׷�ʯx5���Ӷ���ʯx5�����Ƿ�ʯx10,Ϊ���о������ӡ�Ҹ����˼���Ĵ���,��֧������20�򺣵�����Ϊ������" )
	Text( 11, "�������֮���ķ�ӡ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1910, 1 )
	TriggerCondition( 1, HasItem, 3431, 5 )
	TriggerCondition( 1, HasItem, 3428, 5 )
	TriggerCondition( 1, HasItem, 3425, 10 )
	TriggerCondition( 1, HasMoney, 200000 )
	TriggerAction( 1, TakeMoney, 200000 )
	TriggerAction( 1, TakeItem, 1910, 1 )
	TriggerAction( 1, TakeItem, 3431, 5  )
	TriggerAction( 1, TakeItem, 3428, 5 )
	TriggerAction( 1, TakeItem, 3425, 10)
	TriggerAction( 1, GiveItem, 789, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 12, "����ѧ��:Ҫ����׶����۵ķ�ӡ��������������Ʒ:������ӡ���׶����ۡ����׷�ʯx5���Ӷ���ʯx5�����Ƿ�ʯx10,Ϊ���о������ӡ�Ҹ����˼���Ĵ���,��֧������20�򺣵�����Ϊ������" )
	Text( 12, "����׶����۵ķ�ӡ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1884, 1 )
	TriggerCondition( 1, HasItem, 3431, 5 )
	TriggerCondition( 1, HasItem, 3428, 5 )
	TriggerCondition( 1, HasItem, 3425, 10 )
	TriggerCondition( 1, HasMoney, 200000 )
	TriggerAction( 1, TakeMoney, 200000 )
	TriggerAction( 1, TakeItem, 1884, 1 )
	TriggerAction( 1, TakeItem, 3431, 5  )
	TriggerAction( 1, TakeItem, 3428, 5 )
	TriggerAction( 1, TakeItem, 3425, 10)
	TriggerAction( 1, GiveItem, 763, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 13, "����ѧ��:Ҫ����������׵ķ�ӡ��������������Ʒ:������ӡ���������ס����׷�ʯx5���Ӷ���ʯx5�����Ƿ�ʯx10,Ϊ���о������ӡ�Ҹ����˼���Ĵ���,��֧������20�򺣵�����Ϊ������" )
	Text( 13, "����������׵ķ�ӡ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 30, "����ѧ��:�ܱ�Ǹ,����ҵ���Ʒ����,���޷�Ϊ������ӡ." )

end

------------------------------------------------------------
-- ħ������-----����ѧ��
------------------------------------------------------------
function r_talk255()
	
	Talk( 1, "����ѧ��:��ð�,������������Э���һ��רҵ�Ŀ���ѧ��,�Ҹ����о�ħ������,��֪������ʲô������������?" )
	Text( 1, "�й�ħ������", JumpPage, 2)

	Talk( 2, "����ѧ��:���Ѿ��о�ħ������ܾ���,�ҿ��԰�������һЩ�Ŵ������������Щ�����ϵķ�ӡ." )
	Text( 2, "�����ӡ", JumpPage, 3)
	
	Talk( 3, "����ѧ��:��ħ�������кܶ౻������ӡ�˵�����,ͨ��������о�,�����ڿ��Խ⿪��Щ��ӡ��,��������Ҫ����һЩ��ʯ����������.����Ҫ�⿪��ӡô?" )
	Text( 3, "�Է�֮��", JumpPage, 6)
	Text( 3, "�Իö���", JumpPage, 7)
	Text( 3, "�Ի�֮��", JumpPage, 8)
	Text( 3, "��֮�þ�", JumpPage, 9)
	Text( 3, "��֮��ǹ", JumpPage, 10)
	Text( 3, "��֮����", JumpPage, 11)
	Text( 3, "��֮����", JumpPage, 12)
	Text( 3, "��һҳ", JumpPage, 4)

	Talk( 4, "����ѧ��:��ħ�������кܶ౻������ӡ�˵�����,ͨ��������о�,�����ڿ��Խ⿪��Щ��ӡ��,��������Ҫ����һЩ��ʯ����������.����Ҫ�⿪��ӡô?" )
	Text( 4, "��֮����", JumpPage, 13)
	Text( 4, "��֮����", JumpPage, 14)
	Text( 4, "��֮ս��", JumpPage, 15)
	Text( 4, "���䷨��", JumpPage, 16)
	Text( 4, "���䷨��", JumpPage, 17)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1909, 1 )
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerCondition( 1, HasItem, 3455, 20 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1909, 1 )
	TriggerAction( 1, TakeItem, 3457, 5  )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 20)
	TriggerAction( 1, GiveItem, 788, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 6, "����ѧ��:Ҫ����Է�֮�ȵķ�ӡ��������������Ʒ:������ӡ���Է�֮�ȡ��ɿ���ʯx5��������ʯx10���ض���ʯx20,Ϊ���о������ӡ�Ҹ����˼���Ĵ���,��֧������80�򺣵�����Ϊ������" )
	Text( 6, "����Է�֮�ȵķ�ӡ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1927, 1 )
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerCondition( 1, HasItem, 3455, 20 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1927, 1 )
	TriggerAction( 1, TakeItem, 3457, 5  )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 20)
	TriggerAction( 1, GiveItem, 806, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 7, "����ѧ��:Ҫ����Իö���ķ�ӡ��������������Ʒ:������ӡ���Իö����ɿ���ʯx5��������ʯx10���ض���ʯx20,Ϊ���о������ӡ�Ҹ����˼���Ĵ���,��֧������80�򺣵�����Ϊ������" )
	Text( 7, "����Իö���ķ�ӡ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1923, 1 )
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerCondition( 1, HasItem, 3455, 20 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1923, 1 )
	TriggerAction( 1, TakeItem, 3457, 5  )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 20)
	TriggerAction( 1, GiveItem, 802, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 8, "����ѧ��:Ҫ����Ի�֮�̵ķ�ӡ��������������Ʒ:������ӡ���Ի�֮�̡��ɿ���ʯx5��������ʯx10���ض���ʯx20,Ϊ���о������ӡ�Ҹ����˼���Ĵ���,��֧������80�򺣵�����Ϊ������" )
	Text( 8, "����Ի�֮�̵ķ�ӡ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1894, 1 )
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerCondition( 1, HasItem, 3455, 20 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1894, 1 )
	TriggerAction( 1, TakeItem, 3457, 5  )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 20)
	TriggerAction( 1, GiveItem, 773, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 9, "����ѧ��:Ҫ�����֮�þ��ķ�ӡ��������������Ʒ:������ӡ����֮�þ����ɿ���ʯx5��������ʯx10���ض���ʯx20,Ϊ���о������ӡ�Ҹ����˼���Ĵ���,��֧������80�򺣵�����Ϊ������" )
	Text( 9, "�����֮�þ��ķ�ӡ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1905, 1 )
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerCondition( 1, HasItem, 3455, 20 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1905, 1 )
	TriggerAction( 1, TakeItem, 3457, 5  )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 20)
	TriggerAction( 1, GiveItem, 784, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 10, "����ѧ��:Ҫ�����֮��ǹ�ķ�ӡ��������������Ʒ:������ӡ����֮��ǹ���ɿ���ʯx5��������ʯx10���ض���ʯx20,Ϊ���о������ӡ�Ҹ����˼���Ĵ���,��֧������80�򺣵�����Ϊ������" )
	Text( 10, "�����֮��ǹ�ķ�ӡ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1901, 1 )
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerCondition( 1, HasItem, 3455, 20 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1901, 1 )
	TriggerAction( 1, TakeItem, 3457, 5  )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 20)
	TriggerAction( 1, GiveItem, 780, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 11, "����ѧ��:Ҫ�����֮����ķ�ӡ��������������Ʒ:������ӡ����֮�����ɿ���ʯx5��������ʯx10���ض���ʯx20,Ϊ���о������ӡ�Ҹ����˼���Ĵ���,��֧������80�򺣵�����Ϊ������" )
	Text( 11, "�����֮����ķ�ӡ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1913, 1 )
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerCondition( 1, HasItem, 3455, 20 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1913, 1 )
	TriggerAction( 1, TakeItem, 3457, 5  )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 20)
	TriggerAction( 1, GiveItem, 792, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 12, "����ѧ��:Ҫ�����֮���۵ķ�ӡ��������������Ʒ:������ӡ����֮���ۡ��ɿ���ʯx5��������ʯx10���ض���ʯx20,Ϊ���о������ӡ�Ҹ����˼���Ĵ���,��֧������80�򺣵�����Ϊ������" )
	Text( 12, "�����֮���۵ķ�ӡ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1897, 1 )
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerCondition( 1, HasItem, 3455, 20 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1897, 1 )
	TriggerAction( 1, TakeItem, 3457, 5  )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 20)
	TriggerAction( 1, GiveItem, 776, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 13, "����ѧ��:Ҫ�����֮���еķ�ӡ��������������Ʒ:������ӡ����֮���С��ɿ���ʯx5��������ʯx10���ض���ʯx20,Ϊ���о������ӡ�Ҹ����˼���Ĵ���,��֧������80�򺣵�����Ϊ������" )
	Text( 13, "�����֮���еķ�ӡ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1887, 1 )
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerCondition( 1, HasItem, 3455, 20 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1887, 1 )
	TriggerAction( 1, TakeItem, 3457, 5  )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 20)
	TriggerAction( 1, GiveItem, 766, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 14, "����ѧ��:Ҫ�����֮����ķ�ӡ��������������Ʒ:������ӡ����֮�����ɿ���ʯx5��������ʯx10���ض���ʯx20,Ϊ���о������ӡ�Ҹ����˼���Ĵ���,��֧������80�򺣵�����Ϊ������" )
	Text( 14, "�����֮����ķ�ӡ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1890, 1 )
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerCondition( 1, HasItem, 3455, 20 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1890, 1 )
	TriggerAction( 1, TakeItem, 3457, 5  )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 20)
	TriggerAction( 1, GiveItem, 769, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 15, "����ѧ��:Ҫ�����֮ս�׵ķ�ӡ��������������Ʒ:������ӡ����֮ս�ס��ɿ���ʯx5��������ʯx10���ض���ʯx20,Ϊ���о������ӡ�Ҹ����˼���Ĵ���,��֧������80�򺣵�����Ϊ������" )
	Text( 15, "�����֮ս�׵ķ�ӡ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1919, 1 )
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerCondition( 1, HasItem, 3455, 20 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1919, 1 )
	TriggerAction( 1, TakeItem, 3457, 5  )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 20)
	TriggerAction( 1, GiveItem, 798, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 16, "����ѧ��:Ҫ������䷨�۵ķ�ӡ��������������Ʒ:������ӡ�����䷨�ۡ��ɿ���ʯx5��������ʯx10���ض���ʯx20,Ϊ���о������ӡ�Ҹ����˼���Ĵ���,��֧������80�򺣵�����Ϊ������" )
	Text( 16, "������䷨�۵ķ�ӡ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1916, 1 )
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerCondition( 1, HasItem, 3455, 20 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1916, 1 )
	TriggerAction( 1, TakeItem, 3457, 5  )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 20)
	TriggerAction( 1, GiveItem, 795, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 17, "����ѧ��:Ҫ������䷨�ȵķ�ӡ��������������Ʒ:������ӡ�����䷨�ȡ��ɿ���ʯx5��������ʯx10���ض���ʯx20,Ϊ���о������ӡ�Ҹ����˼���Ĵ���,��֧������80�򺣵�����Ϊ������" )
	Text( 17, "������䷨�ȵķ�ӡ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 30, "����ѧ��:�ܱ�Ǹ,����ҵ���Ʒ����,���޷�Ϊ������ӡ." )

end


------------------------------------------------------------
-- ��������-----����ѧ�Ҷӳ�
------------------------------------------------------------
function r_talk256()
	
	Talk( 1, "����ѧ��:��ð�,������������Э���һ��רҵ�Ŀ���ѧ��,�Ҹ����о���������,��֪������ʲô������������?" )
	Text( 1, "�й���������", JumpPage, 2)

	Talk( 2, "����ѧ��:���Ѿ��о���������ܾ���,�ҿ��԰�������һЩ�Ŵ������������Щ�����ϵķ�ӡ,�������������������������͵Ļ�,�ҿ��԰��������ֵ����Ϻ�." )
	Text( 2, "�����ӡ", JumpPage, 3)
	Text( 2, "�йػ���", JumpPage, 5)
	
	Talk( 3, "����ѧ��:�����������кܶ౻�����ӡ�˵�����,ͨ��������о�,�����ڿ��Խ⿪��Щ��ӡ��,��������Ҫ����һЩ��ʯ����������.����Ҫ�⿪��ӡô?" )
	Text( 3, "��������", JumpPage, 6)
	Text( 3, "��ʿ��������", JumpPage, 7)
	Text( 3, "�����", JumpPage, 8)
	Text( 3, "����֮��", JumpPage, 9)
	Text( 3, "���ķ���", JumpPage, 10)
	Text( 3, "����֮��", JumpPage, 11)
	Text( 3, "���ƴ̽�", JumpPage, 12)
	Text( 3, "��һҳ", JumpPage, 4)

	Talk( 4, "����ѧ��:�����������кܶ౻�����ӡ�˵�����,ͨ��������о�,�����ڿ��Խ⿪��Щ��ӡ��,��������Ҫ����һЩ��ʯ����������.����Ҫ�⿪��ӡô?" )
	Text( 4, "���ƽ�����", JumpPage, 13)
	Text( 4, "�����ؽ�", JumpPage, 14)
	Text( 4, "����֮��", JumpPage, 15)
	Text( 4, "����֮��ּ�", JumpPage, 16)
	Text( 4, "����֮��", JumpPage, 17)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3930, 5 )
	TriggerCondition( 1, HasItem, 3931, 1 )
	TriggerCondition( 1, HasItem, 3932, 5 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 3930, 5 )
	TriggerAction( 1, TakeItem, 3931, 1 )
	TriggerAction( 1, TakeItem, 3932, 5 )
	TriggerAction( 1, GiveItem, 3934, 1, 4 )
	TriggerFailure( 1, JumpPage, 31 )
	Talk( 5, "����ѧ��:Ҫ�������������ӵ��������Ʒ:����x5�����ʯx1������x5,�������������Ʒ��֧����200G�Ļ��ҿ��԰����Ƴ�һ������" )
	Text( 5, "��������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1911, 1 )
	TriggerCondition( 1, HasItem, 3432, 5 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerCondition( 1, HasItem, 3429, 5 )
	TriggerCondition( 1, HasMoney, 400000 )
	TriggerAction( 1, TakeMoney, 400000 )
	TriggerAction( 1, TakeItem, 1911, 1 )
	TriggerAction( 1, TakeItem, 3432, 5  )
	TriggerAction( 1, TakeItem, 3426, 10)
	TriggerAction( 1, TakeItem, 3429, 5 )
	TriggerAction( 1, GiveItem, 790, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 6, "����ѧ��:Ҫ����������µķ�ӡ��������������Ʒ:�����ӡ�ķ������¡����׷�ʯx5����˼��ʯx10�����ط�ʯx5,Ϊ���о������ӡ�Ҹ����˼���Ĵ���,��֧������40�򺣵�����Ϊ������" )
	Text( 6, "����������µķ�ӡ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1885, 1 )
	TriggerCondition( 1, HasItem, 3432, 5 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerCondition( 1, HasItem, 3429, 5 )
	TriggerCondition( 1, HasMoney, 400000 )
	TriggerAction( 1, TakeMoney, 400000 )
	TriggerAction( 1, TakeItem, 1885, 1 )
	TriggerAction( 1, TakeItem, 3432, 5  )
	TriggerAction( 1, TakeItem, 3426, 10)
	TriggerAction( 1, TakeItem, 3429, 5 )
	TriggerAction( 1, GiveItem, 764, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 7, "����ѧ��:Ҫ�����ʿ��������ķ�ӡ��������������Ʒ:�����ӡ����ʿ�����������׷�ʯx5����˼��ʯx10�����ط�ʯx5,Ϊ���о������ӡ�Ҹ����˼���Ĵ���,��֧������40�򺣵�����Ϊ������" )
	Text( 7, "�����ʿ��������ķ�ӡ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1925, 1 )
	TriggerCondition( 1, HasItem, 3432, 5 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerCondition( 1, HasItem, 3429, 5 )
	TriggerCondition( 1, HasMoney, 400000 )
	TriggerAction( 1, TakeMoney, 400000 )
	TriggerAction( 1, TakeItem, 1925, 1 )
	TriggerAction( 1, TakeItem, 3432, 5  )
	TriggerAction( 1, TakeItem, 3426, 10)
	TriggerAction( 1, TakeItem, 3429, 5 )
	TriggerAction( 1, GiveItem, 804, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 8, "����ѧ��:Ҫ��������ķ�ӡ��������������Ʒ:�����ӡ����������׷�ʯx5����˼��ʯx10�����ط�ʯx5,Ϊ���о������ӡ�Ҹ����˼���Ĵ���,��֧������40�򺣵�����Ϊ������" )
	Text( 8, "��������ķ�ӡ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1907, 1 )
	TriggerCondition( 1, HasItem, 3432, 5 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerCondition( 1, HasItem, 3429, 5 )
	TriggerCondition( 1, HasMoney, 400000 )
	TriggerAction( 1, TakeMoney, 400000 )
	TriggerAction( 1, TakeItem, 1907, 1 )
	TriggerAction( 1, TakeItem, 3432, 5  )
	TriggerAction( 1, TakeItem, 3426, 10)
	TriggerAction( 1, TakeItem, 3429, 5 )
	TriggerAction( 1, GiveItem, 786, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 9, "����ѧ��:Ҫ�������֮�ȵķ�ӡ��������������Ʒ:�����ӡ������֮�ȡ����׷�ʯx5����˼��ʯx10�����ط�ʯx5,Ϊ���о������ӡ�Ҹ����˼���Ĵ���,��֧������40�򺣵�����Ϊ������" )
	Text( 9, "�������֮�ȵķ�ӡ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1914, 1 )
	TriggerCondition( 1, HasItem, 3432, 5 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerCondition( 1, HasItem, 3429, 5 )
	TriggerCondition( 1, HasMoney, 400000 )
	TriggerAction( 1, TakeMoney, 400000 )
	TriggerAction( 1, TakeItem, 1914, 1 )
	TriggerAction( 1, TakeItem, 3432, 5  )
	TriggerAction( 1, TakeItem, 3426, 10)
	TriggerAction( 1, TakeItem, 3429, 5 )
	TriggerAction( 1, GiveItem, 793, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 10, "����ѧ��:Ҫ�������֮�ȵķ�ӡ��������������Ʒ:�����ӡ�����ķ��ȡ����׷�ʯx5����˼��ʯx10�����ط�ʯx5,Ϊ���о������ӡ�Ҹ����˼���Ĵ���,��֧������40�򺣵�����Ϊ������" )
	Text( 10, "������ķ��ȵķ�ӡ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1917, 1 )
	TriggerCondition( 1, HasItem, 3432, 5 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerCondition( 1, HasItem, 3429, 5 )
	TriggerCondition( 1, HasMoney, 400000 )
	TriggerAction( 1, TakeMoney, 400000 )
	TriggerAction( 1, TakeItem, 1917, 1 )
	TriggerAction( 1, TakeItem, 3432, 5  )
	TriggerAction( 1, TakeItem, 3426, 10)
	TriggerAction( 1, TakeItem, 3429, 5 )
	TriggerAction( 1, GiveItem, 796, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 11, "����ѧ��:Ҫ�������֮�۵ķ�ӡ��������������Ʒ:�����ӡ������֮�ۡ����׷�ʯx5����˼��ʯx10�����ط�ʯx5,Ϊ���о������ӡ�Ҹ����˼���Ĵ���,��֧������40�򺣵�����Ϊ������" )
	Text( 11, "�������֮�۵ķ�ӡ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1895, 1 )
	TriggerCondition( 1, HasItem, 3432, 5 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerCondition( 1, HasItem, 3429, 5 )
	TriggerCondition( 1, HasMoney, 400000 )
	TriggerAction( 1, TakeMoney, 400000 )
	TriggerAction( 1, TakeItem, 1895, 1 )
	TriggerAction( 1, TakeItem, 3432, 5  )
	TriggerAction( 1, TakeItem, 3426, 10)
	TriggerAction( 1, TakeItem, 3429, 5 )
	TriggerAction( 1, GiveItem, 774, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 12, "����ѧ��:Ҫ������ƴ̽��ķ�ӡ��������������Ʒ:�����ӡ�����ƴ̽������׷�ʯx5����˼��ʯx10�����ط�ʯx5,Ϊ���о������ӡ�Ҹ����˼���Ĵ���,��֧������40�򺣵�����Ϊ������" )
	Text( 12, "������ƴ̽��ķ�ӡ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1899, 1 )
	TriggerCondition( 1, HasItem, 3432, 5 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerCondition( 1, HasItem, 3429, 5 )
	TriggerCondition( 1, HasMoney, 400000 )
	TriggerAction( 1, TakeMoney, 400000 )
	TriggerAction( 1, TakeItem, 1899, 1 )
	TriggerAction( 1, TakeItem, 3432, 5  )
	TriggerAction( 1, TakeItem, 3426, 10)
	TriggerAction( 1, TakeItem, 3429, 5 )
	TriggerAction( 1, GiveItem, 778, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 13, "����ѧ��:Ҫ������ƽ����µķ�ӡ��������������Ʒ:�����ӡ�����ƽ����¡����׷�ʯx5����˼��ʯx10�����ط�ʯx5,Ϊ���о������ӡ�Ҹ����˼���Ĵ���,��֧������40�򺣵�����Ϊ������" )
	Text( 13, "������ƽ����µķ�ӡ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1892, 1 )
	TriggerCondition( 1, HasItem, 3432, 5 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerCondition( 1, HasItem, 3429, 5 )
	TriggerCondition( 1, HasMoney, 400000 )
	TriggerAction( 1, TakeMoney, 400000 )
	TriggerAction( 1, TakeItem, 1892, 1 )
	TriggerAction( 1, TakeItem, 3432, 5  )
	TriggerAction( 1, TakeItem, 3426, 10)
	TriggerAction( 1, TakeItem, 3429, 5 )
	TriggerAction( 1, GiveItem, 771, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 14, "����ѧ��:Ҫ��������ؽ��ķ�ӡ��������������Ʒ:�����ӡ�������ؽ������׷�ʯx5����˼��ʯx10�����ط�ʯx5,Ϊ���о������ӡ�Ҹ����˼���Ĵ���,��֧������40�򺣵�����Ϊ������" )
	Text( 14, "��������ؽ��ķ�ӡ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1921, 1 )
	TriggerCondition( 1, HasItem, 3432, 5 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerCondition( 1, HasItem, 3429, 5 )
	TriggerCondition( 1, HasMoney, 400000 )
	TriggerAction( 1, TakeMoney, 400000 )
	TriggerAction( 1, TakeItem, 1921, 1 )
	TriggerAction( 1, TakeItem, 3432, 5  )
	TriggerAction( 1, TakeItem, 3426, 10)
	TriggerAction( 1, TakeItem, 3429, 5 )
	TriggerAction( 1, GiveItem, 800, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 15, "����ѧ��:Ҫ�������֮�̵ķ�ӡ��������������Ʒ:�����ӡ������֮�̡����׷�ʯx5����˼��ʯx10�����ط�ʯx5,Ϊ���о������ӡ�Ҹ����˼���Ĵ���,��֧������40�򺣵�����Ϊ������" )
	Text( 15, "�������֮�̵ķ�ӡ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1888, 1 )
	TriggerCondition( 1, HasItem, 3432, 5 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerCondition( 1, HasItem, 3429, 5 )
	TriggerCondition( 1, HasMoney, 400000 )
	TriggerAction( 1, TakeMoney, 400000 )
	TriggerAction( 1, TakeItem, 1888, 1 )
	TriggerAction( 1, TakeItem, 3432, 5  )
	TriggerAction( 1, TakeItem, 3426, 10)
	TriggerAction( 1, TakeItem, 3429, 5 )
	TriggerAction( 1, GiveItem, 767, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 16, "����ѧ��:Ҫ�������֮��ּ׵ķ�ӡ��������������Ʒ:�����ӡ������֮��ּס����׷�ʯx5����˼��ʯx10�����ط�ʯx5,Ϊ���о������ӡ�Ҹ����˼���Ĵ���,��֧������40�򺣵�����Ϊ������" )
	Text( 16, "�������֮��ּ׵ķ�ӡ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1903, 1 )
	TriggerCondition( 1, HasItem, 3432, 5 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerCondition( 1, HasItem, 3429, 5 )
	TriggerCondition( 1, HasMoney, 400000 )
	TriggerAction( 1, TakeMoney, 400000 )
	TriggerAction( 1, TakeItem, 1903, 1 )
	TriggerAction( 1, TakeItem, 3432, 5  )
	TriggerAction( 1, TakeItem, 3426, 10)
	TriggerAction( 1, TakeItem, 3429, 5 )
	TriggerAction( 1, GiveItem, 782, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 17, "����ѧ��:Ҫ�������֮�ǵķ�ӡ��������������Ʒ:�����ӡ������֮�ǡ����׷�ʯx5����˼��ʯx10�����ط�ʯx5,Ϊ���о������ӡ�Ҹ����˼���Ĵ���,��֧������40�򺣵�����Ϊ������" )
	Text( 17, "�������֮�ǵķ�ӡ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 30, "����ѧ��:�ܱ�Ǹ,����ҵ���Ʒ����,���޷�Ϊ������ӡ." )

	Talk( 31, "����ѧ��:�ܱ�Ǹ,�����ӵ��������Ʒ:����x5�����ʯx1������x5,����֧����200G�������ҲŻ������������." )


end


------------------------------------------------------------
-- ������-----�Ĺ�
------------------------------------------------------------
function r_talk242()
	Talk( 14, "�Ĺ�:����һ��ʥ����ʯ�һ�ȯ,�㽫�õ��߼���ʯ." )
	InitTrigger() --�߼���ʯ�һ�ȯ
	TriggerCondition( 1, HasItem,2899, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 3 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2899, 1 )
	TriggerAction( 1, GiveItem, 0860, 3, 101 )
	TriggerFailure( 1, JumpPage, 15 )
	Text( 14, "�һ�3�ŷ���ʯ",MultiTrigger, GetMultiTrigger(), 1) 
	InitTrigger() --�߼���ʯ�һ�ȯ
	TriggerCondition( 1, HasItem,2899, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 3 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2899, 1 )
	TriggerAction( 1, GiveItem, 0861, 3,101 )
	TriggerFailure( 1, JumpPage, 15 )
        Text( 14, "�һ�3��ӥ��ʯ",MultiTrigger, GetMultiTrigger(), 1) 

	InitTrigger() --�߼���ʯ�һ�ȯ
	TriggerCondition( 1, HasItem,2899, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 3 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2899, 1 )
	TriggerAction( 1, GiveItem, 0862, 3,101 )
	TriggerFailure( 1, JumpPage, 15 )
        Text( 14, "�һ�3������",MultiTrigger, GetMultiTrigger(), 1) 

	InitTrigger() --�߼���ʯ�һ�ȯ
	TriggerCondition( 1, HasItem,2899, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 3 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2899, 1 )
	TriggerAction( 1, GiveItem, 0863, 3,101 )
	TriggerFailure( 1, JumpPage, 15 )
        Text( 14, "�һ�3������",MultiTrigger, GetMultiTrigger(), 1) 
	InitTrigger() --�߼���ʯ�һ�ȯ
	TriggerCondition( 1, HasItem,2899, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2899, 1 )
	TriggerAction( 1, GiveItem, 1012, 1,101 )
	TriggerFailure( 1, JumpPage, 15 )
        Text( 14, "�һ�1�ż���֮��",MultiTrigger, GetMultiTrigger(), 1) 

	Talk( 15, "�һ�ʧ��,�����Ϻ���û��ʥ����ʯ�һ�ȯ��,���߱���������û�пո�!" )
	Talk( 16, "ʥ������!" )

	Talk( 1, "�Ĺ�:�������к���������������ϢŶ,����������ɿ���,�������һ��ʲô?")
	--Text( 1, "�����ҽ�ȯ", JumpPage, 17 )
	Text( 1, "ʥ����ʯ�ҽ�ȯ", JumpPage, 14 )
	Text( 1, "�߼���ʯ�һ�ȯ", JumpPage, 12 )
	Text( 1, "�һ�һ������ʯ�һ�ȯ", JumpPage, 2 )
	Text( 1, "�һ���������ʯ�һ�ȯ", JumpPage, 3 )
	Text( 1, "����ʯ�һ�ȯ", JumpPage, 4 )
        Text( 1, "��ʯ�ҽ�ȯ", JumpPage, 5 )
        Text( 1, "�ϳ���Ըʯ", JumpPage, 6 )
--	Text( 1, "�±��һ�", JumpPage, 20 )


--	Talk( 20, "�Ĺ�:���гԲ�����±���?����������Զһ����ö���." )
--	InitTrigger() --99������֮��10��
--	TriggerCondition( 1, HasItem,3915, 99 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerAction( 1, TakeItem, 3915, 99 )
--	TriggerAction( 1, GiveItem, 2440, 10, 4 )
--	TriggerFailure( 1, JumpPage, 21 )
--	Text( 20, "�һ���֮��10��",MultiTrigger, GetMultiTrigger(), 1) 
	
--	InitTrigger() --100�����Ƹ�1��
--	TriggerCondition( 1, HasItem,3915, 100 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerAction( 1, TakeItem, 3915, 100 )
--	TriggerAction( 1, GiveItem, 3096, 1,4 )
--	TriggerFailure( 1, JumpPage, 21 )
--       Text( 20, "�һ��Ƹ�������1��",MultiTrigger, GetMultiTrigger(), 1) 

--	InitTrigger() --200�����ر�ͼ1��
--	TriggerCondition( 1, HasItem,3915, 200 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerAction( 1, TakeItem, 3915, 200 )
--	TriggerAction( 1, GiveItem, 1092, 1,4 )
--	TriggerFailure( 1, JumpPage, 21 )
--       Text( 20, "�һ��ر�ͼ1��",MultiTrigger, GetMultiTrigger(), 1) 

--	InitTrigger() --300����99��1��
--	TriggerCondition( 1, HasItem,3915, 300 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerAction( 1, TakeItem, 3915, 300 )
--	TriggerAction( 1, GiveItem, 1095, 1,4 )
--	TriggerFailure( 1, JumpPage, 21 )
--       Text( 20, "�һ�99��1��",MultiTrigger, GetMultiTrigger(), 1) 
	
--	InitTrigger() --2000��������֮�񣨾����5��
--	TriggerCondition( 1, HasItem,3915, 2000 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerAction( 1, TakeItem, 3915, 2000 )
--	TriggerAction( 1, GiveItem, 1012, 1,4 )
--	TriggerFailure( 1, JumpPage, 21 )
--       Text( 20, "�һ�����֮��1��",MultiTrigger, GetMultiTrigger(), 1) 

--	InitTrigger() --2000��������������5��
--	TriggerCondition( 1, HasItem,3915, 2000 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerAction( 1, TakeItem, 3915, 2000 )
--	TriggerAction( 1, GiveItem, 863, 1,4 )
--	TriggerFailure( 1, JumpPage, 21 )
--       Text( 20, "�һ�����1��",MultiTrigger, GetMultiTrigger(), 1) 

--	InitTrigger() --2000�����������ʼ�5��
--	TriggerCondition( 1, HasItem,3915, 2000 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerAction( 1, TakeItem, 3915, 2000 )
--	TriggerAction( 1, GiveItem, 862, 1,4 )
--	TriggerFailure( 1, JumpPage, 21 )
--       Text( 20, "�һ�����1��",MultiTrigger, GetMultiTrigger(), 1) 

--	InitTrigger() --2000����ӥ��ʯ��רע��5��
--	TriggerCondition( 1, HasItem,3915, 2000 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerAction( 1, TakeItem, 3915, 2000 )
--	TriggerAction( 1, GiveItem, 861, 1,4 )
--	TriggerFailure( 1, JumpPage, 21 )
--       Text( 20, "�һ�ӥ��ʯ1��",MultiTrigger, GetMultiTrigger(), 1) 

--	InitTrigger() --2000��������ʯ�����ݼ�5��
--	TriggerCondition( 1, HasItem,3915, 2000 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerAction( 1, TakeItem, 3915, 2000 )
--	TriggerAction( 1, GiveItem, 860, 1,4 )
--	TriggerFailure( 1, JumpPage, 21 )
--       Text( 20, "�һ�����ʯ1��",MultiTrigger, GetMultiTrigger(), 1) 

--	InitTrigger() --3000����65 BOSS�·�1��
--	TriggerCondition( 1, HasItem,3915,3000 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerAction( 1, TakeItem, 3915, 3000)
--	TriggerAction( 1, GiveItem, 241, 1, 4 )
--	TriggerFailure( 1, JumpPage, 21 )
--      Text( 20, "�һ�65 BOSS�·�1��",MultiTrigger, GetMultiTrigger(), 1) 

--	Talk( 21, "�һ�ʧ��,�����Ϻ���û���㹻���±���,���߱���������û�пո�!" )

	--Text( 1, "�Ի�����", JumpPage, 7 )
	--Text( 1, "��á����¾��顱", JumpPage, 10 )
      
	
	Talk( 2, "�Ĺ�:����Ҫ����һ��һ������ʯ�һ�ȯ,�㽫�õ�һ��һ������ʯ,������һ��һ����ʯ.")
	Text( 2, "ȷ�϶һ�", TransferDiamond, 1)

	Talk( 3, "�Ĺ�:����Ҫ����һ�Ŷ�������ʯ�һ�ȯ,�㽫�õ�һ�Ŷ�������ʯ,������һ�Ŷ�����ʯ.")
	Text( 3, "ȷ�϶һ�", TransferDiamond, 2)

	Talk( 4, "�Ĺ�:����һ�ž���ʯ�һ�ȯ,�㽫�õ�һ��һ������ʯ.")
	Text( 4, "ȷ�϶һ�", TransferDiamond, 3)

------------------------------------------08��Ʒ���� kokora---------------------------------
--	Talk( 5, "�Ĺ�:����һ�ű�ʯ�һ�ȯ,�㽫�õ�һ��һ����ʯ.")
--	Text( 5, "ȷ�϶һ�", TransferDiamond, 4)
	Talk( 5, "�Ĺ�:����һ�Ÿ߼���ʯ�һ�ȯ ,�������10000�����ҵĻ���.")

	InitTrigger() --�߼���ʯ�һ�ȯ
	TriggerCondition( 1, HasItem, 3886, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
        TriggerAction( 1, TakeItem, 3886, 1 )
	TriggerAction( 1, AddMoney, 10000)
	TriggerFailure( 1, JumpPage, 25 ) 
	Text( 5, "�һ�������",MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 25, "�Ĺ�:�������ƺ�û�и߼���ʯ�һ�ȯ��!�������ı����Ƿ�������^ ^")



	Talk( 17, "�Ĺ�:���к����ҽ�ȯ��?�������ֺ�Ư���Ĵ������ֵĲ���.")
	
	InitTrigger()--�һ�"IPOD"�һ�ȯ
	TriggerCondition( 1, HasItem, 2238, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2238, 1 )
 	TriggerAction( 1, GiveItem, 2306, 1 ,4)
	TriggerFailure( 1, JumpPage, 18 )
	Text( 17, "���к����ҽ�ȯ8",MultiTrigger, GetMultiTrigger(), 1)


	--InitTrigger()--�һ�Ħ����ʯ
	--TriggerCondition( 1, HasItem, 2240, 1 )
	--TriggerCondition( 1, HasLeaveBagGrid, 1 )
	--TriggerCondition( 1, KitbagLock, 0 )
	--TriggerAction( 1, TakeItem, 2240, 1 )
 	--TriggerAction( 1, GiveItem, 1028, 1 ,4)
	--TriggerAction( 1,JumpPage, 19 )------------------
	--TriggerFailure( 1, JumpPage, 18 )
	--Text( 17, "���к����ҽ�ȯ6",MultiTrigger, GetMultiTrigger(), 1)

	Text( 17, "���к����ҽ�ȯ6",JumpPage, 19)
	Talk(19,"�����Ҫ�һ���?")
	Text( 19, "ȷ���һ�",GetChaName_5, 1)

	InitTrigger()--�һ�����Ӳ��99��
	TriggerCondition( 1, HasItem, 2237, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2237, 1 )
 	TriggerAction( 1, GiveItem, 855, 99 ,4)
	TriggerFailure( 1, JumpPage, 18 )
	Text( 17, "���к����ҽ�ȯ9",MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()-- �һ�����ͼֽ"����ͼֽ"����
	TriggerCondition( 1, HasItem, 2239, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2239, 1 )
 	TriggerAction( 1, GiveItem, 1001, 1 ,4)
	TriggerFailure( 1, JumpPage, 18 )
	Text( 17, "���к����ҽ�ȯ7",MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()--�һ����ٳɳ���1��
	TriggerCondition( 1, HasItem, 2241, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2241, 1 )
 	TriggerAction( 1, GiveItem, 0578, 1 ,4)
	TriggerFailure( 1, JumpPage, 18 )
	Text( 17, "���к����ҽ�ȯ5",MultiTrigger, GetMultiTrigger(), 1)
	Text( 17, "���������ҽ�ȯ��", GetChaName_4, 1)



	Talk( 18, "�Ĺ�:�����Ϻ���û���ʺϵĺ����һ�ȯ��!�������ı����Ƿ�������,��������1���ո�")

 	InitTrigger() --�ϳ���Ըʯ
	TriggerCondition( 1, HasItem, 3905, 5 )
	TriggerCondition( 1, HasItem, 3907, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3905, 5 )
	TriggerAction( 1, TakeItem, 3907, 1 )
 	TriggerAction( 1, GiveItem, 3906, 1 ,4)
	TriggerFailure( 1, JumpPage, 8 )
	Talk( 6, "�Ĺ�:���������������Ըʯ��һ���ϼ�,�ҽ���Ϊ��ϳ�һ���������Ըʯ.")
	Text( 6, "ȷ�Ϻϳ�",MultiTrigger, GetMultiTrigger(), 1)        
 	
	InitTrigger() --�Ի�����
	TriggerCondition( 1, HasItem, 3904, 15 )
	TriggerCondition( 1, HasItem, 3911, 15 )
	TriggerCondition( 1, HasItem, 4450, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerAction( 1, TakeItem, 3904, 15 )
	TriggerAction( 1, TakeItem, 3911, 15 )
	TriggerAction( 1, TakeItem, 4450, 1 )
 	TriggerAction( 1, GiveItem, 3342, 1 ,4)
	TriggerFailure( 1, JumpPage, 9 ) 
	Talk( 7, "�Ĺ�:����ʮ���� ��ֽ ,ʮ��� ��ǩ ��һ�� ��ֵ����� ,�һ����һ������.")
	Text( 7, "ȷ�϶Ի�",MultiTrigger, GetMultiTrigger(), 1) 
     
	Talk( 8, "�Ĺ�:�����Ϻ���û���㹻����Ըʯ��ճ�ϼ���!�������ı����Ƿ�������,��������1���ո�")
	Talk( 9, "�Ĺ�:���ǲ���û���㹻�ĺ�ֽ,��ǩ������ֵ�����!")

	InitTrigger() --�һ����¾���
	TriggerCondition( 1, HasItem, 3342, 2 )
	TriggerCondition( 1, HasItem, 3337, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3342, 2 )
	TriggerAction( 1, TakeItem, 3337, 1 )
	TriggerAction( 1, GiveItem, 3335, 1 ,4)
	TriggerFailure( 1, JumpPage, 11 ) 
	Talk( 10, "�Ĺ�:����2��Ԫ��������һ�ž���֮��Ϳ��Ի�����¾���,�йؾ���֮�����ȥ����������վ���ҡ�����ָ�ӡ������ס����ʿ�.")
	Text( 10, "ȷ�϶Ի�",MultiTrigger, GetMultiTrigger(), 1) 
   
	Talk( 11, "�Ĺ�:���¾������Ҫ��2��Ԫ��������һ������֮����ܵõ�Ŷ.�������ı����Ƿ�������,��������1���ո�")
	
	Talk( 12, "�Ĺ�:����һ�Ÿ߼���ʯ�һ�ȯ ,����Զһ������������ֱ�ʯ�е�һ��.")

	InitTrigger() --�߼���ʯ�һ�ȯ
	TriggerCondition( 1, HasItem, 0333, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 3 )
	TriggerCondition( 1, KitbagLock, 0 )
        TriggerAction( 1, TakeItem, 0333, 1 )
	TriggerAction( 1, GiveItem, 0860, 3, 101 )
	TriggerFailure( 1, JumpPage, 13 ) 
	Text( 12, "�һ�����ʯ",MultiTrigger, GetMultiTrigger(), 1) 

	InitTrigger() --�߼���ʯ�һ�ȯ
	TriggerCondition( 1, HasItem, 0333, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 3)
	TriggerCondition( 1, KitbagLock, 0 )
        TriggerAction( 1, TakeItem, 0333, 1 )
	TriggerAction( 1, GiveItem, 0861, 3,101 )
	TriggerFailure( 1, JumpPage, 13 ) 
        Text( 12, "�һ�ӥ��ʯ",MultiTrigger, GetMultiTrigger(), 1) 

	InitTrigger() --�߼���ʯ�һ�ȯ
	TriggerCondition( 1, HasItem, 0333, 1 )
	TriggerCondition( 1, HasLeaveBagGrid,3 )
	TriggerCondition( 1, KitbagLock, 0 )
        TriggerAction( 1, TakeItem, 0333, 1 )
	TriggerAction( 1, GiveItem, 0862, 3,101 )
	TriggerFailure( 1, JumpPage, 13 ) 
        Text( 12, "�һ�����",MultiTrigger, GetMultiTrigger(), 1) 

	InitTrigger() --�߼���ʯ�һ�ȯ
	TriggerCondition( 1, HasItem, 0333, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 3 )
	TriggerCondition( 1, KitbagLock, 0 )
        TriggerAction( 1, TakeItem, 0333, 1 )
	TriggerAction( 1, GiveItem, 0863, 3,101 )
	TriggerFailure( 1, JumpPage, 13 ) 
        Text( 12, "�һ�����",MultiTrigger, GetMultiTrigger(), 1) 

	Talk( 13, "�Ĺ�:�������ƺ�û�и߼���ʯ�һ�ȯ��!�������ı����Ƿ�������,��������3���ո�")
	----------------------------------------30���±�
	--InitFuncList()
	--AddFuncList( GiveItem, 374, 1, 7 )
	--AddFuncList( GiveItem, 361, 1, 7 )
	--AddFuncList( GiveItem, 314, 1, 7 )
	--AddFuncList( GiveItem, 298, 1, 7 )
	--AddFuncList( GiveItem, 339, 1, 7 )
	--AddFuncList( GiveItem, 354, 1, 7 )

--	InitTrigger()
--	TriggerCondition( 1, HasItem, 3915, 30 )
--	TriggerAction( 1, TakeItem, 3915, 30 )
--	TriggerAction( 1, RandFunction, GetFuncList(), GetNumFunc() )
--	TriggerFailure( 1, JumpPage, 11 )
--	Talk( 3, "�Ĺ�:30���±���,���Ի��35����ְҵ����װ�����·���һ��,��ȷ��Ҫô?")
--	Text( 3, "��ȷ��",MultiTrigger, GetMultiTrigger(), 1)
--	Text( 3, "�ǻ������˰�",CloseTalk )

end
------------------------------------------------------------
-- ������-----�רԱ
------------------------------------------------------------
function mmm_talk01()
	Talk( 1, bgtalk1_1 )
	--Text( 1, "������ĸ���ҽ�", JumpPage, 18 )	
	Text( 1, bganswer1_13, JumpPage, 13)
	Text( 1, bganswer1_14, JumpPage, 14)
	Text( 1, bganswer1_15, JumpPage, 15)
	Text( 1, bganswer1_16, JumpPage, 16)
	Text( 1, bganswer1_17, JumpPage, 17)
------------------------------------------------------------------------------------------------------------------------
	--InitTrigger() --�һ�Ħ�����¿�װ����
	--TriggerCondition( 1, HasItem, 3850, 3 )---------a
	--TriggerCondition( 1, HasItem, 3853, 1 )---------d
	--TriggerCondition( 1, HasItem, 3856, 1 )--------g
	--TriggerCondition( 1, HasItem, 3857, 1 )---------h
	--TriggerCondition( 1, HasItem, 3858, 1 )---------i
	--TriggerCondition( 1, HasItem, 3863, 1 )---------n
	--TriggerCondition( 1, HasItem, 3864, 1 )---------o	
	--TriggerCondition( 1, HasItem, 3872, 1 )---------w

        --TriggerAction( 1, TakeItem,   3850, 3 )
	--TriggerAction( 1, TakeItem,   3853, 1 )
	--TriggerAction( 1, TakeItem,   3856, 1 )
	--TriggerAction( 1, TakeItem,   3857, 1 )
	--TriggerAction( 1, TakeItem,   3858, 1 )
	--TriggerAction( 1, TakeItem,   3863, 1 )
	--TriggerAction( 1, TakeItem,   3864, 1 )
	--TriggerAction( 1, TakeItem,   3872, 1 )
	--TriggerAction( 1, GiveItem,227, 99,1 )
	--TriggerFailure( 1, JumpPage, 19 ) 
	--Talk( 18, "����:���ܵ����˴�����: haidaowang,�ɶһ��ػ���������99��")
	--Text(18, "ȷ�϶һ�", MultiTrigger, GetMultiTrigger(), 1)
	--Talk( 19, "����:�������ƺ�û���㹻�Ŀ�Ƭ��!�������ı����Ƿ�������!")

--------------------------------------------------------------------------------------------------------------------------	
	Talk( 18, "����:���ܵ����˴�����: hdwshenguiqihang,�ɶһ�70��bossװ�·�1��")
	Text(18, "ȷ�϶һ�",  GetChaName_6, 1)
-----------------------------------------------------------------------------------------------------------------
	--InitTrigger() --�һ����ٳɳ���99��
	--TriggerCondition( 1, HasItem, 3858, 1 )---------i
	--TriggerCondition( 1, HasItem, 3864, 2 )---------o
	--TriggerCondition( 1, HasItem, 3861, 1 )--------l
	--TriggerCondition( 1, HasItem, 3862, 1 )---------m
	--TriggerCondition( 1, HasItem, 3874, 1 )---------y
	--TriggerCondition( 1, HasLeaveBagGrid, 1 )
	--TriggerCondition( 1, KitbagLock, 0 )
	--TriggerAction( 1, TakeItem,   3858, 1 )
	--TriggerAction( 1, TakeItem,   3864, 2 )
	--TriggerAction( 1, TakeItem,   3861, 1 )
	--TriggerAction( 1, TakeItem,   3862, 1 )
	--TriggerAction( 1, TakeItem,   3874, 1 )
	--TriggerAction( 1, GiveItem, 578 , 99,1 )
	--TriggerFailure( 1, JumpPage, 19 ) 
	--Talk( 18, "����:���ܵ����˴�����: moliyo,�ɶһ����ٳɳ���99��")
	--Text(18, "ȷ�϶һ�", MultiTrigger, GetMultiTrigger(), 1)
	--Talk( 19, "����:�������ƺ�û���㹻�Ŀ�Ƭ��!�������ı����Ƿ�������,����Ҫ��֤����1���ո�!")
--------------------------------------------------------------------------------------------------------------------------------------------
--	InitTrigger() --�һ�Ħ����ʯ1��
--	TriggerCondition( 1, HasItem, 3850, 3 )--------a
--	TriggerCondition( 1, HasItem, 3853, 1 )---------d
--	TriggerCondition( 1, HasItem, 3856, 1 )-------g
--	TriggerCondition( 1, HasItem, 3857, 1 )--------h
--	TriggerCondition( 1, HasItem, 3858, 1 )---------i
--	TriggerCondition( 1, HasItem, 3863, 1 )-------n
--	TriggerCondition( 1, HasItem, 3864, 1 )--------o
--	TriggerCondition( 1, HasItem, 3872, 1 )--------w
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--
--	TriggerAction( 1, TakeItem,  3850, 3 )
--	TriggerAction( 1, TakeItem,  3853, 1 )
--	TriggerAction( 1, TakeItem,  3856, 1 )
--	TriggerAction( 1, TakeItem,  3857, 1 )
--	TriggerAction( 1, TakeItem,  3858, 1 )
--	TriggerAction( 1, TakeItem,  3863, 1 )
--	TriggerAction( 1, TakeItem,  3864, 1 )
--	TriggerAction( 1, TakeItem,  3872, 1 )
--	TriggerAction( 1, GiveItem, 1028 , 1,4 )
--	TriggerFailure( 1, JumpPage, 19 ) 
--	Talk( 18, "����:���ܵ����˴�����: haidaowang,�ɶһ�Ħ����ʯ1��")
--	Text(18, "ȷ�϶һ�", MultiTrigger, GetMultiTrigger(), 1)
--	Talk( 19, "����:�������ƺ�û���㹻�Ŀ�Ƭ��!�������ı����Ƿ�������,����Ҫ��֤����1���ո�!")
----------------------------------------------------------------------------------------------------------------------------------------------------------
	--InitTrigger() --�һ����ڻ�����־1��
	--TriggerCondition( 1, HasItem, 3858, 2 )---------i
	--TriggerCondition( 1, HasItem, 3864, 1 )---------o
	--TriggerCondition( 1, HasItem, 3861, 1 )--------l
	--TriggerCondition( 1, HasItem, 3871, 1 )---------v
	--TriggerCondition( 1, HasItem, 3854, 2 )---------e
	--TriggerCondition( 1, HasItem, 3869, 1 )---------t
	--TriggerCondition( 1, HasItem, 3857, 1 )---------h
	--TriggerCondition( 1, HasItem, 3868, 1 )--------s
	--TriggerCondition( 1, HasItem, 3856, 1 )---------g
	--TriggerCondition( 1, HasItem, 3850, 1 )---------a
	--TriggerCondition( 1, HasItem, 3862, 1 )---------m
	--TriggerCondition( 1, HasLeaveBagGrid, 1 )
	--TriggerCondition( 1, KitbagLock, 0 )
	--TriggerAction( 1, TakeItem,   3858, 2 )
	--TriggerAction( 1, TakeItem,   3864, 1 )
	--TriggerAction( 1, TakeItem,   3861, 1 )
	--TriggerAction( 1, TakeItem,   3871, 1 )
	--TriggerAction( 1, TakeItem,   3854, 2 )
	--TriggerAction( 1, TakeItem,   3869, 1 )
	--TriggerAction( 1, TakeItem,   3857, 1 )
	--TriggerAction( 1, TakeItem,   3868, 1 )
	--TriggerAction( 1, TakeItem,   3856, 1 )
	--TriggerAction( 1, TakeItem,   3850, 1 )
	--TriggerAction( 1, TakeItem,   3862, 1 )
	--TriggerAction( 1, GiveItem, 0853 , 1,4 )
	--TriggerFailure( 1, JumpPage, 19 ) 
	--Talk( 18, "����:���ܵ����˴�����: ilovethisgame,�ɶһ����ڻ�����־1��")
	--Text(18, "ȷ�϶һ�", MultiTrigger, GetMultiTrigger(), 1)
	--Talk( 19, "����:�������ƺ�û���㹻�Ŀ�Ƭ��!�������ı����Ƿ�������,����Ҫ��֤����1���ո�!")
	
	
	Talk( 13, bgtalk13)
	Talk( 14, bgtalk14)
	Talk( 15, bgtalk15)
	Talk( 16, bgtalk16)
	Talk( 17, bgtalk17)
	
end
------------------------------------------------------------
-- ������-----��ԭ
------------------------------------------------------------
function mmm_talk02()
	Talk( 1, "��ԭ:·��������Զ��,�Ὣ���¶�������������")
	AddNpcMission ( 902 )
	AddNpcMission ( 903 )
	AddNpcMission ( 904 )
end
-----------------------------------------------------------
---ɳᰳ�---�������Ա�����ö�
-----------------------------------------------------------
function e_talk01 ()
	Talk( 1, "�������Ա�����ö�:��ħ��ʵ��������һ�����������,���¾�������ཫ���������鸽�塱���ܸ���ɫ����������!����ĸ����ĵȼ�Ҳ���ή4��,���˽�������Ϣ��" )
	Text( 1, "��һ��������ص�" ,JumpPage, 2)
	Text( 1, "������һ�����������", JumpPage, 3)
	Text( 1, "��������", OpenEidolonMetempsychosis )
	Talk( 2, "�������Ա�����ö�:��һ�������ѧϰ�����Ա����ܺ;��鸽�弼��,��֮����,��֮����,ר֮����,��֮�������֮����ֱ�������Ӧ������ɫ������,����,רע,�������������,��֮�����а֮����ֱ����Ϊ��ɫ�ṩ����ĵ��Ϻ͸���ľ���,��Ħ��С�Ӷ������������֮�����а֮�������ߵĹ�����һ��,���ҿ���������������������.")	
	Talk( 3, "�������Ա�����ö�:��ͨ����ĵȼ��Ծ��鱦����Ӱ���Ǻܴ��,�������кܶྫ�������Ϣ,��ʲô����Ȥ���Լ��ư�.")
	Text( 3, "������֮���������", JumpPage, 4  )
	Text( 3, "������֮���������", JumpPage, 5  )
	Text( 3, "����ר֮���������", JumpPage, 6  )
	Text( 3, "������֮���������", JumpPage, 7  )
	Text( 3, "������֮���������", JumpPage, 8  )
	Text( 3, "������֮���������", JumpPage, 9 )
	Text( 3, "����а֮���������", JumpPage, 10 )
	Text( 3, "����Ħ��С�Ӷ���������", JumpPage, 11 )	
	Talk(  4, "�������Ա�����ö�:������֮�����������:��ֻ������20������ͨ����,������ħ��ʵ1��,ǧ������˱�����Ҫ��10��������������Ƭ,10��������ʿ���Ǻ�һ�����ĺ�����")
	Talk(  5, "�������Ա�����ö�:������֮�����������:��ֻ������20������ͨ����,���߶�ħ��ʵ1��,ǧ������˱�����Ҫ��10������İ���������,10�����鹭���ֺ��Ǻ�һ�����ĺ�����")
	Talk(  6, "�������Ա�����ö�:����ר֮�����������:��ֻ������20������ͨ����,������ħ��ʵ1��,ǧ������˱�����Ҫ��10�����,10���ཬ���һ�����ĺ�����")
	Talk(  7, "�������Ա�����ö�:������֮�����������:��ֻ������20������ͨ����,�ǻ۶�ħ��ʵ1��,ǧ������˱�����Ҫ��10�����β��,10�����鹭���ֺ��Ǻ�һ�����ĺ�����")
	Talk(  8, "�������Ա�����ö�:������֮�����������:��ֻ������20������ͨ����,�����ħ��ʵ1��,ǧ������˱�����Ҫ��10�����㱳��,10�������ľ��һ�����ĺ�����")
	Talk(  9, "�������Ա�����ö�:������֮�����������:��ֻ������20������ͨ����,��ɬ��ħ��ʵ1��,ǧ������˱�����Ҫ��10����ζ������,10��������ʿ���Ǻ�һ�����ĺ�����")
	Talk(  10, "�������Ա�����ö�:����а֮�����������:��ֻ������20������ͨ����,���ض�ħ��ʵ1��,ǧ������˱�����Ҫ��10������İ�����������Ƭ,10��������һ�����ĺ�����")
	Talk(  11, "�������Ա�����ö�:����Ħ��С�Ӷ�����������:Ħ��С����Ħ��С�ӽ��ʱ100%����Ħ��С�Ӷ���,�����ħ��ʵ�޹�,Ħ��С���������������Ƿ��ܲ���Ħ��С�Ӷ���������ֻ����ĵȼ����")

-----------eleven
	AddNpcMission ( 5019 )
	AddNpcMission ( 5032 )

	--------------------1.7
	AddNpcMission ( 5080	)
	AddNpcMission ( 5081	)
	AddNpcMission ( 5082	)
	AddNpcMission ( 5083	)
	AddNpcMission (5117 )
	AddNpcMission (5142 )
	AddNpcMission (5149 )
end 

------------------------------Ѱ����ʧ�İ���
function el_talk01()
	Talk( 1, "���:������!��һ�˳��ܲ�������")	
	AddNpcMission ( 907 )
	AddNpcMission ( 911 )
	AddNpcMission ( 912 )
	AddNpcMission ( 917 )
end
function el_talk02()
	Talk( 1, "���:���ǻ�������ѡ���")
	AddNpcMission ( 908 )
	AddNpcMission ( 909 )
	AddNpcMission ( 910 )
end
-----------------------------------------------------------
---����---��������
-----------------------------------------------------------
-------------------------------------��������
function el_talk03()
	Talk( 1, "����������:�治���״��Ϊʲô������������,������ô������......")	
	AddNpcMission ( 918 )
--------eleven
	AddNpcMission ( 5018 )
	AddNpcMission ( 5020 )
	AddNpcMission ( 5021)
	AddNpcMission ( 5022)
end
-----------------------------------------------------------
---������---���ص�¯��
-----------------------------------------------------------
function star_talk02 ()
	Talk( 1, "����¯:��ʲô,û������ô˧��¯�Ӱ�!" )
	Text( 1, "���ܽ���", JumpPage, 2 )
	Text( 1, "����װ����װ��70��BOSSװ����", OpenItemTiChun )
	Text( 1, "���ǳ��", OpenItemEnergy )
	Text( 1, "��ȡ��ʯ", OpenGetStone )
	Text( 1, "���������", OpenItemFix )
	Talk( 2, "����¯:�ҾͲ�������������,��Ҫ�˽�ʲô�Լ�����!" )
	Text( 2, "����װ����װ��70��BOSSװ��������", JumpPage, 3)
	Text( 2, "���ǳ�����", JumpPage, 4 )
	Text( 2, "��ȡ��ʯ����", JumpPage, 5 )
	Text( 2, "��������߽���", JumpPage, 6)
	Talk( 3, "����¯:�˹��ܿ�����������װ,������װ����Ϊ�����װ,����ñ�����70��BOSSװ����Ϊ75������BOSSװ,������Ҫ��Ӧ�ĵ���,�ۺϵ�װ����ۺ���Ӧ�Ŀ�װǿ������ʧ,���������Իᱣ��!" )
	Talk( 4, "����¯:�õ�ظ����ǳ��,��ͨ�����ÿ������ܸ����ǳ�50��1000�����,���߼�������ܹ��̶���1500�����;�����ػ���ʧ!" )
	Talk( 5, "����¯:����װ������Ƕ�ı�ʯ˳��,����������ȡ,��ȡ��ֻ���ԭ������ͬ�ȼ���ͬ�౦ʯһ��,����ȡ�ı�ʯ�����ȼ���1,ÿ����ȡ������1��������ǯ��.")
	Text( 5, "��ȡ��ʯ����", JumpPage, 7 )
	Talk( 6, "����¯:ר�����������ˮ����,�ڶ�ˮ��,������ˮ����������ˮ��,ÿ������һ���޲�����,��֤�ֹ�����,��Ǯ����,ͯ������!" )
	Talk( 7, "����¯:��һ��3�۵�ն����Ϊ��,���մ��ϵ��µ�˳�����һ��Ϊ3������,�ڶ���Ϊ2������ʯ,������Ϊ1������֮ͫ;��ȡ����õ�һ��3������,ն���ĵ�һ�۱�Ϊ2������,������ﱦʯ�ȼ�����!ע��:ֻ��ӵ���������ı�ʯ��ʼ��ȡ." )
end 
-----------------------------------------------------------
---����---������
-----------------------------------------------------------
function star_talk03 ()
	Talk( 1, "������:������Ȱ����ðѱ��������������,��Ϊ���Ǻ�������̫��ľ�ϲ" )
	Text( 1, "�����������淨����", JumpPage, 2 )
	Text( 1, "��������,��һ����!", OpenTiger )
	Talk( 2, "������:ÿע�̶���Ҫ5������Ӳ��,������һ����ע,Ҳ���Զ�����ע,��Ȱ�㻹��ÿ�ж���,�д󽱵Ļ���ߺܶ��!" )
end 
--------------------------------------Ѫ�ȵĸ߸�Ь
function el_talk04 ()
	
	Talk( 1, "�����Ĵ���:���ϡ������ϡ������찡,��ذ�,��λ��ʹ���Ϊ�ҳ���������" )-------------(2249,2705)
	AddNpcMission ( 919 )
end

-----------------------------------------------------------
---ӡ�ڰ��ɡ���˹
-----------------------------------------------------------
function llleo_talk01()
	Talk( 1, "ӡ�ڰ��ɡ���˹:���������͵�Ͽ��,�����������,��Ů��֮���������,�ҷ�����ħ���������һ������,����֪����?" )
	Text( 1, "��һ������", JumpPage, 2)

	Talk( 2, "ӡ�ڰ��ɡ���˹:��˵������������������ɵ�,Ҳ����˵,�������һ����,��ңԶ��ĳ���ط�������һ����,�����˵�,�ҷ�������һ��ħ������,ͬʱҲ�ҵ���һ���µĽ�������ķ���,�һ�����Ⱥ����Ϊ�ǵĿ���ѧ��֪���о�������������,��Ȼ,������볢��һ�������µĽ�ⷽ��,�ҿ��Կ�����" )
	Text( 2, "���", JumpPage, 3)
	
	Talk( 3, "ӡ�ڰ��ɡ���˹:�Ƴ���ӡ����Ҫ��������ǿ��,������Ⱥ����Ż�����಻��������ʯͷ����������,�����������Ϲ��������ĵ������ܶ�,˵���˾����˷�,��Ⱥ�����ֱ�����ڱ�������,������ֻ��Ҫһ��ʯͷ���ܽ���ӡ�Ƴ�,�����������Ħ����ʯ,�ҿ��԰����Ƴ���ӡ." )
	Text( 3, "�Է�֮��", JumpPage, 6)
	Text( 3, "�Իö���", JumpPage, 7)
	Text( 3, "�Ի�֮��", JumpPage, 8)
	Text( 3, "��֮�þ�", JumpPage, 9)
	Text( 3, "��֮��ǹ", JumpPage, 10)
	Text( 3, "��֮����", JumpPage, 11)
	Text( 3, "��֮����", JumpPage, 12)
	Text( 3, "��һҳ", JumpPage, 4)

	Talk( 4, "ӡ�ڰ��ɡ���˹:�Ƴ���ӡ����Ҫ��������ǿ��,������Ⱥ����Ż�����಻��������ʯͷ����������,�����������Ϲ��������ĵ������ܶ�,˵���˾����˷�,��Ⱥ�����ֱ�����ڱ�������,������ֻ��Ҫһ��ʯͷ���ܽ���ӡ�Ƴ�,�����������<rĦ����ʯ>,�ҿ��԰����Ƴ���ӡ." )
	Text( 4, "��֮����", JumpPage, 13)
	Text( 4, "��֮����", JumpPage, 14)
	Text( 4, "��֮ս��", JumpPage, 15)
	Text( 4, "���䷨��", JumpPage, 16)
	Text( 4, "���䷨��", JumpPage, 17)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1909, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1909, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 788, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 6, "ӡ�ڰ��ɡ���˹:Ҫ����Է�֮�ȵķ�ӡ��������������Ʒ:������ӡ���Է�֮�ȡ�Ħ����ʯ1��,Ϊ���о������ӡ�Ҹ����˼���Ĵ���,��֧������80�򺣵�����Ϊ������" )
	Text( 6, "����Է�֮�ȵķ�ӡ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1927, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1927, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 806, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 7, "ӡ�ڰ��ɡ���˹:Ҫ����Իö���ķ�ӡ��������������Ʒ:������ӡ���Իö���Ħ����ʯ1��,Ϊ���о������ӡ�Ҹ����˼���Ĵ���,��֧������80�򺣵�����Ϊ������" )
	Text( 7, "����Իö���ķ�ӡ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1923, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1923, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 802, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 8, "ӡ�ڰ��ɡ���˹:Ҫ����Ի�֮�̵ķ�ӡ��������������Ʒ:������ӡ���Ի�֮�̡�Ħ����ʯ1��,Ϊ���о������ӡ�Ҹ����˼���Ĵ���,��֧������80�򺣵�����Ϊ������" )
	Text( 8, "����Ի�֮�̵ķ�ӡ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1894, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1894, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 773, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 9, "ӡ�ڰ��ɡ���˹:Ҫ�����֮�þ��ķ�ӡ��������������Ʒ:������ӡ����֮�þ���Ħ����ʯ1��,Ϊ���о������ӡ�Ҹ����˼���Ĵ���,��֧������80�򺣵�����Ϊ������" )
	Text( 9, "�����֮�þ��ķ�ӡ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1905, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1905, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 784, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 10, "ӡ�ڰ��ɡ���˹:Ҫ�����֮��ǹ�ķ�ӡ��������������Ʒ:������ӡ����֮��ǹ��Ħ����ʯ1��,Ϊ���о������ӡ�Ҹ����˼���Ĵ���,��֧������80�򺣵�����Ϊ������" )
	Text( 10, "�����֮��ǹ�ķ�ӡ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1901, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1901, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 780, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 11, "ӡ�ڰ��ɡ���˹:Ҫ�����֮����ķ�ӡ��������������Ʒ:������ӡ����֮����Ħ����ʯ1��,Ϊ���о������ӡ�Ҹ����˼���Ĵ���,��֧������80�򺣵�����Ϊ������" )
	Text( 11, "�����֮����ķ�ӡ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1913, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1913, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 792, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 12, "ӡ�ڰ��ɡ���˹:Ҫ�����֮���۵ķ�ӡ��������������Ʒ:������ӡ����֮���ۡ�Ħ����ʯ1��,Ϊ���о������ӡ�Ҹ����˼���Ĵ���,��֧������80�򺣵�����Ϊ������" )
	Text( 12, "�����֮���۵ķ�ӡ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1897, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1897, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 776, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 13, "ӡ�ڰ��ɡ���˹:Ҫ�����֮���еķ�ӡ��������������Ʒ:������ӡ����֮���С�Ħ����ʯ1��,Ϊ���о������ӡ�Ҹ����˼���Ĵ���,��֧������80�򺣵�����Ϊ������" )
	Text( 13, "�����֮���еķ�ӡ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1887, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1887, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 766, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 14, "ӡ�ڰ��ɡ���˹:Ҫ�����֮����ķ�ӡ��������������Ʒ:������ӡ����֮����Ħ����ʯ1��,Ϊ���о������ӡ�Ҹ����˼���Ĵ���,��֧������80�򺣵�����Ϊ������" )
	Text( 14, "�����֮����ķ�ӡ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1890, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1890, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 769, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 15, "ӡ�ڰ��ɡ���˹:Ҫ�����֮ս�׵ķ�ӡ��������������Ʒ:������ӡ����֮ս�ס�Ħ����ʯ1��,Ϊ���о������ӡ�Ҹ����˼���Ĵ���,��֧������80�򺣵�����Ϊ������" )
	Text( 15, "�����֮ս�׵ķ�ӡ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1919, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1919, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 798, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 16, "ӡ�ڰ��ɡ���˹:Ҫ������䷨�۵ķ�ӡ��������������Ʒ:������ӡ�����䷨�ۡ�Ħ����ʯ1��,Ϊ���о������ӡ�Ҹ����˼���Ĵ���,��֧������80�򺣵�����Ϊ������" )
	Text( 16, "������䷨�۵ķ�ӡ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1916, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1916, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 795, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 17, "ӡ�ڰ��ɡ���˹:Ҫ������䷨�ȵķ�ӡ��������������Ʒ:������ӡ�����䷨�ȡ�Ħ����ʯ1��,Ϊ���о������ӡ�Ҹ����˼���Ĵ���,��֧������80�򺣵�����Ϊ������" )
	Text( 17, "������䷨�ȵķ�ӡ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 30, "ӡ�ڰ��ɡ���˹:�ܱ�Ǹ,����ҵ���Ʒ����,���޷�Ϊ������ӡ." )

end

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�Ҷ�����Ա
function kk_talk01 ()
	
	Talk( 1, "�Ҷ�����Ա:ֻ��������ǿ�߲������Ҷ��л�����,ֻ��������ǿ�߲��ܻ����" )
	Text( 1, "����һ�", JumpPage ,7)
	Text( 1, "�鿴�Ҷ����а�", Garner2GetWiner)
	Text( 1, "����������а�", Garner2RequestReorder)
--	Text( 1, "�õ��Ҷ�����", Change_FightingBook)
--	Text( 1, "�����Ҷ�����", JumpPage ,2)
	Text( 1, "�����Ҷ����а�", JumpPage ,3)
	Text( 1, "�����Ҷ�������", JumpPage ,13)
	
	Talk( 2, "�Ҷ�����Ա:���������û�й�����֤֮,�Ȿ�Ҷ����齫��¼���Ժ����е�����.���������ӵ������֤֮,�Ȿ�Ҷ����齫ȡ������ǰ������֤֮����¼�����е�����.����ǰ����֤֮�ϵĵ���Ҳ������ʧ,������¼������Ҷ�������" )
	Text(2,"ȷ��",Change_FightingBook)

	Talk( 3, "�Ҷ�����Ա:���ڰ����Ǿ���ԡѪ�Ҷ�����ʿ������������Ҷ����а�,��ֻ��ǰ��ǿ���ʸ��������,�ϰ��ʸ�������֤֮�ϵ��Ҷ���������." )
	Text(3,"�����Ҷ�����",JumpPage ,4)
	Text(3,"�����Ҷ�֮װ",JumpPage ,6)


	Talk( 4, "�Ҷ�����Ա:���Ҷ��������л����ȼ������Ҽ��ɻ���Ҷ�����,����¼������֤֮��." )
	Talk( 6, "�Ҷ�����Ա:�����Ҷ���ʯ���Ҷ���ʯ���Ҷ���ʯ,����װ�����кܸߵ����Ի��м���bt����������.����������������ڰ��ϵ�����,��ͬ�̶ȵı�����." )
	
	Talk( 7, "�Ҷ�����Ա:��Ҫ�ö����͵�������������" )
	Text(7,"�һ��м��Ҷ���ȯ",JumpPage ,8)
	Text(7,"�һ��Ҷ�����",JumpPage ,9)
	Text(7,"�һ��Ҷ�֮������",JumpPage ,10)
	Text(7,"�һ�ָ����",SendExchangeXData)
	Text(7,"�һ�����������",JumpPage ,12)

	--�һ�������Ʒ ID,����,�һ�������Ʒ����,�����ֵ
	InitExchangeX()

	ExchangeDataX(	2608	,	100	,	2682	,	1	,	1)
	ExchangeDataX(	2609	,	100	,	2683	,	1	,	1)
	ExchangeDataX(	2609	,	1000	,	2684	,	1	,	1)
	ExchangeDataX(	2608	,	100	,	2692	,	1	,	1)
	ExchangeDataX(	2609	,	100	,	2693	,	1	,	1)
	ExchangeDataX(	2609	,	1000	,	2694	,	1	,	1)
	ExchangeDataX(	2608	,	100	,	2702	,	1	,	1)
	ExchangeDataX(	2609	,	100	,	2703	,	1	,	1)
	ExchangeDataX(	2609	,	1000	,	2704	,	1	,	1)
	ExchangeDataX(	2608	,	100	,	2712	,	1	,	1)
	ExchangeDataX(	2609	,	100	,	2713	,	1	,	1)
	ExchangeDataX(	2609	,	1000	,	2714	,	1	,	1)
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 1031, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 1031, 1 )
	TriggerAction( 1, GiveItem, 2609, 1, 4 )
	TriggerFailure( 1, JumpPage, 11 )
	Talk( 8, "�Ҷ�����Ա:1���Ҷ�֮�ǻ��¾Ϳ�����" )
	Text( 8, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1032, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 1032, 1 )
	TriggerAction( 1, GiveItem, 1134, 1, 4 )
	TriggerFailure( 1, JumpPage, 11 )
	Talk( 9, "�Ҷ�����Ա:1���Ҷ�֮�����¾Ϳ�����" )
	Text( 9, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1031, 5 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 1031, 5 )
	TriggerAction( 1, GiveItem, 1032, 1, 4 )
	TriggerFailure( 1, JumpPage, 11 )
	Talk( 10, "�Ҷ�����Ա:����Ҫ5���Ҷ�֮�ǻ���" )
	Text( 10, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 11, "�Ҷ�����Ա:���붫�����������Ұ�,������Ҫ��֤��ı���������һ���ո�.�Ҵ���δ������״̬" )
	
	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)
	Other(	3143	)
	Talk( 12, "�Ҷ�����Ա:����������������ҫ֮��,��ҫ֮��,�Ի�֮��,���Ƿֱ���Ҫ����������200,2000,20000" )
	Text( 12, "�õ�����ҫ֮��", Change_shanyao)
	Text( 12, "�õ�����ҫ֮��", Change_rongyao)
	Text( 12, "�õ��һԻ�֮��", Change_huihuang)

	Talk( 13, "�Ҷ�����Ա:�Ҷ������ǽ��������ȫ��ս��ģʽ,����ȫ�µ�PK��Ȥ�����������ȼ�20��,����ֵ20��,����ֵ30��ͽ�Ǯ����.��Ǻ�,������PK; ��PK˫���ȼ�����15��֮��,��ɱ��ʧȥ1������ֵ,ɱ���ߵõ�1���Ҷ�����.����ɱ�ߵȼ�����ɱ����15��,��ɱ��ʧȥ2������ֵ,ɱ���ߵõ�2���Ҷ�����;�Ҷ�����ʱ,ÿ���Ҵ��߶����õ���Ǯ����.����Ҵ�����5������,ÿ�˻����õ�1���Ҷ�֮�ǻ���,���ֻ��һ���Ҵ���,���Ҵ��߳���Ǯ�⻹���õ�һ���Ҷ�֮������.ע��:���Ҷ�����ʱ�뱣���Լ��ı�������ʱ������1����λ." )
	
	---------���˻
	AddNpcMission	(6268)
	AddNpcMission	(6269)
	
end 

function b_talk25 ()
	Popup( LifeSkillBegin , 3 )	

end 

function b_talk26 ()
	Popup( LifeSkillBegin , 2 )	

end 

function b_talk27 ()
	Popup( LifeSkillBegin , 0 )
end 

function b_talk28 ()
	Popup( LifeSkillBegin , 1 )	

end 

function leo_talkaa()
	Talk( 1, "�нӸ�ʽ��ľ����,���վ�տ,��ʵ�ϸ�,���ż���,���޼�ȩ!" )
	Text( 1, "������Ķ�����.", SendExchangeXData)

	
	--�һ�������Ʒ ID,����,�һ�������Ʒ����,�����ֵ
	InitExchangeX()

	ExchangeDataX(	3989	,	99	,	3999	,	20	,	1)
	ExchangeDataX(	3990	,	99	,	4000	,	20	,	1)
	ExchangeDataX(	3991	,	99	,	4001	,	20	,	1)
	ExchangeDataX(	3992	,	99	,	4002	,	20	,	1)
	ExchangeDataX(	3993	,	99	,	4003	,	20	,	1)
	ExchangeDataX(	3994	,	99	,	4004	,	20	,	1)
	ExchangeDataX(	3995	,	99	,	4005	,	20	,	1)
	ExchangeDataX(	3996	,	99	,	4006	,	20	,	1)
	ExchangeDataX(	3997	,	99	,	4007	,	20	,	1)
	ExchangeDataX(	3998	,	99	,	4008	,	20	,	1)

end

function leo_talkbb()
	Talk( 1, "��ʯͷ,������߿�!ûǮ�ͱ���������!!" )
	Text( 1, "���еľ���Ǯ.", SendExchangeXData)

	
	--�һ�������Ʒ ID,����,�һ�������Ʒ����,�����ֵ
	InitExchangeX()

	ExchangeDataX(	4029	,	99	,	4039	,	20	,	1)
	ExchangeDataX(	4030	,	99	,	4040	,	20	,	1)
	ExchangeDataX(	4031	,	99	,	4041	,	20	,	1)
	ExchangeDataX(	4032	,	99	,	4042	,	20	,	1)
	ExchangeDataX(	4033	,	99	,	4043	,	20	,	1)
	ExchangeDataX(	4034	,	99	,	4044	,	20	,	1)
	ExchangeDataX(	4035	,	99	,	4045	,	20	,	1)
	ExchangeDataX(	4036	,	99	,	4046	,	20	,	1)
	ExchangeDataX(	4037	,	99	,	4047	,	20	,	1)
	ExchangeDataX(	4038	,	99	,	4048	,	20	,	1)
	ExchangeDataX(	1670	,	99	,	1671	,	20	,	1)
	ExchangeDataX(	1668	,	99	,	3368	,	20	,	1)
	ExchangeDataX(	1667	,	99	,	3360	,	20	,	1)
	ExchangeDataX(	1642	,	99	,	1643	,	20	,	1)
	ExchangeDataX(	4825	,	99	,	1638	,	20	,	1)
	ExchangeDataX(	1633	,	99	,	1641	,	20	,	1)
	ExchangeDataX(	1782	,	99	,	1769	,	20	,	1)
	ExchangeDataX(	2815	,	99	,	1775	,	20	,	1)
	ExchangeDataX(	1674	,	99	,	1767	,	20	,	1)
	ExchangeDataX(	4832	,	99	,	2901	,	20	,	1)

end

function leo_talkcc()
	Talk( 1, "ǧ��Ҫ�����Աߵĺ���������������,��������,���絽������������,��������" )
	Text( 1, "лл�������,���ҿ��������Ʒ��", SendExchangeXData)
	Text( 1, "99������Ӳ��=1����ʯ�һ�ȯ", JumpPage, 2 )
	
	InitExchangeX()
	ExchangeDataX(	855	,	60	,	2617	,	1	,	1)
	ExchangeDataX(	2588	,	3	,	2619	,	1	,	1)
	ExchangeDataX(	2588	,	20	,	2622	,	1	,	1)
	ExchangeDataX(	2589	,	5	,	2624	,	1	,	1)
	ExchangeDataX(	2588	,	3	,	2640	,	1	,	1)
	ExchangeDataX(	855	,	60	,	2641	,	1	,	1)
	ExchangeDataX(	2588	,	20	,	2642	,	1	,	1)
	ExchangeDataX(	2588	,	20	,	2643	,	1	,	1)
	ExchangeDataX(	2588	,	50	,	2644	,	1	,	1)
	ExchangeDataX(	2588	,	50	,	2649	,	1	,	1)
	ExchangeDataX(	855	,	100	,	1055	,	1	,	1)
	ExchangeDataX(	2588	,	100	,	1056	,	1	,	1)
	ExchangeDataX(	855	,	100	,	1058	,	1	,	1)
	ExchangeDataX(	2588	,	100	,	1059	,	1	,	1)
	ExchangeDataX(	855	,	100	,	1061	,	1	,	1)
	ExchangeDataX(	2588	,	100	,	1062	,	1	,	1)
	ExchangeDataX(	855	,	100	,	1064	,	1	,	1)
	ExchangeDataX(	2588	,	100	,	1065	,	1	,	1)
	ExchangeDataX(	855	,	10	,	2680	,	1	,	1)
	ExchangeDataX(	855	,	50	,	2681	,	1	,	1)
	ExchangeDataX(	855	,	300	,	2682	,	1	,	1)
	ExchangeDataX(	2588	,	10	,	2683	,	1	,	1)
	ExchangeDataX(	2588	,	50	,	2684	,	1	,	1)
	ExchangeDataX(	2588	,	300	,	2685	,	1	,	1)
	ExchangeDataX(	855	,	10	,	2690	,	1	,	1)
	ExchangeDataX(	855	,	50	,	2691	,	1	,	1)
	ExchangeDataX(	855	,	300	,	2692	,	1	,	1)
	ExchangeDataX(	2588	,	10	,	2693	,	1	,	1)
	ExchangeDataX(	2588	,	50	,	2694	,	1	,	1)
	ExchangeDataX(	2588	,	300	,	2695	,	1	,	1)
	ExchangeDataX(	855	,	10	,	2700	,	1	,	1)
	ExchangeDataX(	855	,	50	,	2701	,	1	,	1)
	ExchangeDataX(	855	,	300	,	2702	,	1	,	1)
	ExchangeDataX(	2588	,	10	,	2703	,	1	,	1)
	ExchangeDataX(	2588	,	50	,	2704	,	1	,	1)
	ExchangeDataX(	2588	,	300	,	2705	,	1	,	1)
	ExchangeDataX(	855	,	10	,	2710	,	1	,	1)
	ExchangeDataX(	855	,	50	,	2711	,	1	,	1)
	ExchangeDataX(	855	,	300	,	2712	,	1	,	1)
	ExchangeDataX(	2588	,	10	,	2713	,	1	,	1)
	ExchangeDataX(	2588	,	50	,	2714	,	1	,	1)
	ExchangeDataX(	2588	,	300	,	2715	,	1	,	1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 0855, 99 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 0855, 99 )
	TriggerAction( 1, GiveItem, 3886, 1, 4 )
	TriggerAction( 1, JumpPage, 4 )
	TriggerFailure( 1, JumpPage, 3 )
	Talk( 2, "��������:������,���������²�Ʒ����Ҫ��������Ӳ��,����԰����ռ���?������صı������㻻��" )
	Text( 2, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3, "��������:���붫�����������Ұ�,������Ҫ��֤��ı���������һ���ո�.�Ҵ���δ������״̬" )
	Talk( 4, "��������:лл��,��ʿ!���Ǹ���ı���!" )

end
-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�ϳɽ���Ա
-----����Ա-��
function max_talka1()
	Talk( 1, "����Ա-��:����,���ǽ���Ա-��,�ҿ���Ϊ������������ʷֽ��ǹ������������κ�����,������ʲô����Ϊ���������?" )
	Text( 1, "ʲô�����ʷֽ���?", JumpPage ,2)
	Text( 1, "����ʹ�����ʷֽ�����", JumpPage ,7)
	Text( 1, "���ʷֽ�����ô����?", JumpPage ,3)
	Text( 1, "���ʷֽ����ֽܷ��ʲô����?", JumpPage ,4)
	Text( 1, "��ûʲô����,����·����!", JumpPage ,6)

	Talk( 2, "����Ա-��:���ʷֽ����ǿ��Դ���̽�������������������,�����Խ�����������װ�����·ֽ�Ϊ����ԭ������̬." )
	Text( 2, "�һ�����������", JumpPage ,1)
	Text( 2, "ԭ�����,��û������,лл!", CloseTalk)

	Talk( 3, "����Ա-��:����������׼����Ҫ�ֽ����Ʒ�����顢��Ӧ�Ĺ����Լ��ʵ��Ĵ߻���,��������,����Щ��Ʒ�Ž�������Ӧ��λ��,Ȼ����������,���������еĹ�����,���������������ʾ���п���һ��5λ������,���Ҳ���Ļ�е�����С����ʱ,��ϲ��,���ֽ�ɹ�." )
	Text( 3, "ʧ�ܵĻ�������Σ����?", JumpPage ,5)
	Text( 3, "�ո����ᵽ����?", JumpPage ,9)
	Text( 3, "�һ�����������.", JumpPage ,1)
	Text( 3, "ԭ�����,��û������,лл!", CloseTalk)

	Talk( 4, "����Ա-��:���ʷֽ��ǿ��Խ��κ�������װ����Ʒ,ͨ������ʵ��Ĵ߻���,���Էֽ����Ʒ��ԭʼ����̬,���벻ͬ�Ĵ߻���,�ֽ�Ľ���ǲ�ͬ��.���ܻ������������Ŷ~~~~�Ǻ�." )
	Text( 4, "������ô߻���?", JumpPage ,8)
	Text( 4, "�һ�����������", JumpPage ,1)
	Text( 4, "ԭ�����,��û������,лл!", CloseTalk)

	Talk( 5, "����Ա-��:����..����������ɰ�,���ǵ����ʷֽ������൱��ȫ��,���������޺�~~~�������Լ����ľ��鲻���ܵ��κ��˺�,���ǷŽ�ȥ����Ʒ���ʵ��Ĵ߻�������Ϊ���ʷֽ�ʧ�ܶ���ʧ.")
	Text( 5, "�һ�����������.", JumpPage ,1)
	Text( 5, "ԭ�����,��û������,лл!", CloseTalk)

	Talk( 6, "����Ա-��:ף��·�����~~~~!")
	Text( 6, "����·��!", CloseTalk)

	Talk( 7, "����Ա-��:��Ȼ������.������Ҫ��ȥ�ӻ��������ﹺ��ֽ�ָ��Ŷ,ѧ�������֪ʶ��,�Ϳ���ʵ�ʲ�����.")
	Text( 7, "�һ�����������.", JumpPage ,1)
	Text( 7, "ԭ�����,��û������,лл!", CloseTalk)

	Talk( 8, "����Ա-��:�����Ե������̳�ѡ������Ҫ�Ĵ߻���." )
	Text( 8, "�һ�����������.", JumpPage ,1)
	Text( 8, "ԭ�����,��û������,лл!", CloseTalk)

	Talk( 9, "����Ա-��:���������ӳɹ��ʵ�������Ʒ,ֵ��ע�����,������Ӧ�������ܵĵȼ�������ڹ��ߵȼ�,�ſ����ڹ����м���˹���." )
	Text( 9, "�һ�����������.", JumpPage ,1)
	Text( 9, "ԭ�����,��û������,лл!", CloseTalk)

end

-----��������
function max_talka2()
	Talk( 1, "��������:���������,������������,�����ʱ���������������ĳ�ʦ��~~~�Ǻ�,��ʲô���԰������?" )
	Text( 1, "����֪��ȥ����������.", JumpPage ,2)
	Text( 1, "����ѧϰ���ô?", JumpPage ,3)
	Text( 1, "���Խ������ô?", JumpPage ,4)
	Text( 1, "�����Ķ������ر���?", JumpPage ,5)
	Text( 1, "����·����~~", JumpPage ,6)

	Talk( 2, "��������:������ߵľ�����������������ϧ��Դ����.��,��������������,�����Ǹе�����,ͬʱҲ����������ʥ������֮Դ,�����ǿ�����⿳�������ζ�ļ���." )
	Text( 2, "�һ��������������", JumpPage ,1)
	Text( 2, "лл����~��������~", CloseTalk)

	Talk( 3, "��������:�Ǻ�.��Ȼ������.������Ҫ��ȥ�ӻ��������ﹺ��һ����д�����ָ��,ѧ�������֪ʶ��,�Ϳ���ʵ�ʲ�����." )
	Text( 3, "�һ��������������", JumpPage ,1)
	Text( 3, "лл����~��������~", CloseTalk)

	Talk( 4, "��������:��⿿���һ��ΰ�������,ʹ���������Ӧ��Ҫ��л���ǵ���,�Ǻ�.������Ҫӵ�о���,��⿵��䷽,��⿵Ĺ���,�����Ҫ��ԭ��.Ȼ����Ҫ����Щ�����ŵ���������Ӧ��λ��,�ǵò�Ҫ�Ŵ�~һ��׼������,�Ϳ��Կ�ʼ�����.�ǵ�����⿹�����Ҫ���ƻ��,Ҫ�ڻ�����õ�ʱ�����,��Ȼ�������󻵵�Ŷ.�˷���ʳҪ����ͷ���~~." )
	Text( 4, "������õ�ʱ��?", JumpPage ,7)
	Text( 4, "�һ��������������", JumpPage ,1)
	Text( 4, "лл����~��������~", CloseTalk)

	Talk( 5, "��������:���������ˮƽ����,�ճ��Ķ���һ���Ƿǳ���ζ��,��ζ��ʳ�ﲻ�����������,������ӵ�������һЩЧ��~.��˵Զ�ŵĽ�ʿ�Ǿ��ǳ��������ճ����������ƹ�,�Ż���������,ӵ�й��˵�����!" )
	Text( 5, "�һ��������������", JumpPage ,1)
	Text( 5, "лл����~��������~", CloseTalk)

	Talk( 6, "��������:ף��·�����~~~~!Ը������~!")
	Text( 6, "�������·����!", CloseTalk)

	Talk( 7, "��������:���ǵ��½������ﵽ75%������~~���ڵ���������...һ����֪��ʶ��û��~!")
	Text( 7, "�һ��������������", JumpPage ,1)
	Text( 7, "лл����~��������~", CloseTalk)

end

-----��¯��ʦ��÷��
function max_talka3()
	Talk( 1, "��¯��ʦ��÷��:��~~����,��������ô?" )
	Text( 1, "�����Ҵ���¯�ܸ�ʲô", JumpPage ,2)
	Text( 1, "��ôʹ�ô���¯?", JumpPage ,3)
	Text( 1, "���Ը����Ҵ���¯������ô?", JumpPage ,4)
	Text( 1, "����·����.", JumpPage ,5)


	Talk( 2, "��¯��ʦ��÷��:����,���Լ�������������ô?��Ҫ������..�����Ҹ��������ҵ��Ų�,��˵����ǰ��������һ����������װ��..�ߺ�~~��������?" )
	Text( 2, "�һ��������������", JumpPage ,1)
	Text( 2, "ԭ�����~��������~", CloseTalk)

	Talk( 3, "��¯��ʦ��÷��:����,��ʹ����?�ߺ�~~������,������ܿ����ӻ����˳��۵��Ǳ���µġ���������ָ�ϡ�,�Ҿ��������ʹ��!��ô��?���Ķ���?�ҿ���ȫ������Ŷ...�ߺ�,�Һ�������?" )
	Text( 3, "�һ��������������", JumpPage ,1)
	Text( 3, "ԭ�����~��������~", CloseTalk)

	Talk( 4, "��¯��ʦ��÷��:������Ҫӵ�о���,Ȼ����Ҫ�ҵ�����ͼֽ����Ӧ��ԭ��,�����Ƿŵ���¯��,�Ϳ��Կ�ʼ������.���㿴������������ʱ,��Ҫ�³���С,����´�Ļ�,�����ʧ����." )
	Text( 4, "����������õĶ�����?", JumpPage ,7)
	Text( 4, "ԭ�����~��������~", CloseTalk)

	Talk( 7, "��¯��ʦ��÷��:��Ȼ����������������Լ���һЩ����ħ���Ķ���,����������Ķ������ǿ��,����ħ��Խ�����Ʒ,��Ҫ�ľ���ȼ�ҲԽ��." )
	Text( 7, "�һ��������������", JumpPage ,1)
	Text( 7, "ԭ�����~��������~", CloseTalk)

	Talk( 5, "��¯��ʦ��÷��:������������������ô?·��������?")
	Text( 5, "�����ֻ��·����`~", CloseTalk)

end

-----�о���
function max_talka4()
	Talk( 1, "�о���:���,������ʲô��?" )
	Text( 1, "����ϵ���ʲô", JumpPage ,2)
	Text( 1, "�ҿ���ʹ������������ô?", JumpPage ,3)
	Text( 1, "������������ô����?", JumpPage ,4)
	Text( 1, "����������������ʲô����?", JumpPage ,5)
	Text( 1, "����·����.", JumpPage ,6)


	Talk( 2, "�о���:�������ǻʼ�ѧԺ���µ��о��ɹ�:����������.ͨ������������������������!" )
	Text( 2, "�һ��������������", JumpPage ,1)
	Text( 2, "ԭ�����~��������~", CloseTalk)

	Talk( 3, "�о���:����ȥ�ӻ������ǹ����������ָ��,�����Ķ��������,���žͿ���������ʵϰ��." )
	Text( 3, "�һ��������������", JumpPage ,1)
	Text( 3, "ԭ�����~��������~", CloseTalk)

	Talk( 4, "�о���:Ϊ��ȷ������������ǿ��������õ�����,������Ҫӵ�о���,���Ű�����ͼֽ�������ᵽ�ĸ���ԭ�ϷŽ�������������,��������Ҫ�������ֵ����ɰ�ť����������Ľ��." )
	Text( 4, "�������кܶ���ô?", JumpPage ,7)
	Text( 4, "�һ��������������", JumpPage ,1)
	Text( 4, "ԭ�����~��������~", CloseTalk)

	Talk( 5, "�о���:��Ϊ��ģ�������һ�ַ�ʽ,���Բ������봫˵�е�������һ������,����ֻҪ�����䷽,�ϸ����䷽ȥ��,���������Ǿ��Բ���ƭ���." )
	Text( 5, "�һ��������������", JumpPage ,1)
	Text( 5, "ԭ�����~��������~", CloseTalk)

	Talk( 6, "�о���:���������������������")
	Text( 6, "����ľ���·����~", CloseTalk)

	Talk( 7, "�о���:��Ϊ���ǲ�����,����������Ķ�������һ����������,Ϊ�˷�������ȥ��ʶ���,���ɻ���ʹ��10���ȼ������б�ʾ,�����Ҿͽ������ɵ��������θ�����:                  Thankyou �� ��л����,��ʾ����ʧ����!    Abysmal �� ����                           Terrible �� ���                          Bad �� ��                                 Poor �� �޼�ֵ                            Mediocre �� ƽӹ                          Fair �� ��ͨ                              Good �� ��                                Great �� ����                             Superb �� ����                            Perfect �� ����                           ��Ȼ��ʾԽ��,������Խ��.����ܴﵽPerfect�ľ���,��������ӽ�����~~����.")
	Text( 7, "�һ��������������", JumpPage ,1)
	Text( 7, "ԭ�����~��������~", CloseTalk)
end

---------------------ʥ�����ʥ����
function el_talk05 ()
	
	Talk( 1, "ʥ����:Merry Christmas to you !һ��ף�����Ƕ������һ������������" )
	Text( 1, "�㲥ף����",JumpPage, 2  )
	
	Talk ( 2, "ʥ����:��Ҫ����ʥ��ף����?ÿ�β�����Ҫһ��ʥ���ؿ���Ҫ����1000������." )
	Text( 2, "��һ��ף��",JumpPage, 3  )
	Text( 2, "�ڶ���ף��",JumpPage, 4 )
	Text( 2, "������ף��",JumpPage, 5 )
	Text( 2, "������ף��",JumpPage, 6 )
	Text( 2, "������ף��",JumpPage, 7 )
	Text( 2, "������ף��",JumpPage, 8 )
	Text( 2, "������ף��",JumpPage, 9 )

	
	Talk( 3, "��ѩƮƮ,¹������,���۵�ƽ��ҹ������,С�ְڰ�,��������,���ֵ�ʥ�����ն�����.")
	Text(3,"ȷ�����Ŵ���ף����",  GetChaName_0, 1)
	Text( 3, "����",JumpPage, 2  )

	Talk( 4, "ÿһ��ѩ��Ʈ��,ÿһ���̻�ȼ��,ÿһ��ʱ������,ÿһ��˼���,������������Ҫ�����ÿһ��ף��,ʥ������!")
	Text(4,"ȷ�����Ŵ���ף����",  GetChaName_1, 1)
	Text( 4, "����",JumpPage, 2  )

	Talk( 5, "����һ��������Ը��:��ǰ��ʥ����,������Ϊʥ�����˲��Ὣ��õ����ｵ�ٸ���,�������ʥ���ڲ�ͬ,����ĵ���,������Զ��ס����.")
	Text(5,"ȷ�����Ŵ���ף����",  GetChaName_2, 1)
	Text( 5, "����",JumpPage, 2  )

	Talk( 6, "ʥ���ڵ���,��֧���ҵ����Ѻ�������������˵����л,��л���߽��ҵ�����,�һᾡ������Ŭ���������޵Ŀ���!")
	Text(6,"ȷ�����Ŵ���ף����",  GetChaName_3, 1)
	Text( 6, "����",JumpPage, 2 )

	Talk( 7, "ʥ���ڶ�����,�ܲ������¸�ʥ����֮ǰ�������ҵ��Ҷ�֮��,����ս��Ҫ�δζ�Ӯ,����,������һ��ǿ���Ķ��ְ�,���š���")
	Text(7,"ȷ�����Ŵ���ף����",  GetChaName_26, 1)
	Text( 7, "����",JumpPage, 2 )

	Talk( 8, "����·��,������ѽ,������������һ��椰�")
	Text(8,"ȷ�����Ŵ���ף����",  GetChaName_27, 1)
	Text( 8, "����",JumpPage, 2 )

	Talk( 9, "ʥ���ڵ���,ף���Լ��������콻��������ߣ���Ʊ�����У����ƴδ�Ӯ����ζ�ٶٺã����Ұ�������С�İ����� ")
	Text(9,"ȷ�����Ŵ���ף����",  GetChaName_28, 1)
	Text( 9, "����",JumpPage, 2 )
---------------------------------------------------------------------------------------------------------------	
end



----------------------------------------����˹-------------------------
--------------------------------��į֮��6��(51300,26900)
--------------------------------------eleven------------------------------------------
function el_talk07 ()

	InitTrigger()
	TriggerCondition( 1, HasMission, 1000 )
	TriggerCondition( 1, LvCheck, ">", 74 )
	TriggerCondition( 1, HasCredit,9999 )
	TriggerCondition( 1, NoRecord, 1000 )
	TriggerCondition( 1, NoRecord, 1001 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerFailure( 1, CloseTalk  )

	Talk( 1, "����˹:����ɱ�˲�գ�۵Ľ��ƺ���,ҵ��ʱ��ʹ����Ƽ�,˳��Ҳ����һЩ���ŵ���~~˳��˵һ��,��������9999�ĺ�75�����µĲ�Ҫ����˵��!" )
	Text( 1, "���!",MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "����˹:��õ���Ƭ�ش��ҵļ���������,����������ʷ��������ʧ��С�к��й�" )
	Text( 2, "ȫ��ʳ���ж�",JumpPage, 3  )
	Text( 2, "Ѱ�Ҷ�ʧ�Ĺ���",JumpPage, 4  )
	Text( 2, "����ԭ��",JumpPage, 3  )---------
	Text( 2, "�������ݹ�",JumpPage, 32  )

	Talk( 3, "����˹:�����,��������ŵ�����,���ܸ�����³�ȶ���������˭��?" )
	Text( 3, "����",JumpPage, 4  )
	Text( 3, "����֣",JumpPage, 32  )
	Text( 3, "���",JumpPage,5  )
	Text( 3, "Ԫ��",JumpPage, 2  )
	Text( 3, "������",JumpPage, 4  )--------------
	Text( 3, "�����",JumpPage, 4  )

	Talk( 4, "����˹:�����ĸ������츴ԭ����ԭ��" )
	Text( 4, "ճ���͸�����Ѫ�ʹ�����ˮ",JumpPage, 5  )
	Text( 4, "Ѫɫ���Ƥ�����񻨲�",JumpPage, 5  )
	Text( 4, "а�����֮Ѫ���˷ܼ�",JumpPage, 2  )
	Text( 4, "͸�������Ѫ�ʹ�����ˮ",JumpPage, 32 )
	Text( 4, "�ִ��͸�����β��",JumpPage, 6  )
	Text( 4, "���񻨲���˷ܼ�",JumpPage, 19  )-----------
	Text( 4, "а�����֮Ѫ",JumpPage, 5  )


	Talk( 5, "����˹:�������ŵİ���������ʲô?" )
	Text( 5, "ˮ����",JumpPage, 32  )
	Text( 5, "�ᾧʯ",JumpPage, 6  )
	Text( 5, "���ö�֮ʯ",JumpPage, 3  )
	Text( 5, "��֮����",JumpPage, 22  )----------
	Text( 5, "����԰ʯ",JumpPage, 7  )
	Text( 5, "����������",JumpPage, 7  )
	Text( 5, "����֮ʯ",JumpPage, 32  )

	Talk( 6, "����˹:����һ�Һ�Ȯ��Ĺ�ϵ��ʲô?" )
	Text( 6, "���ӹ�ϵ",JumpPage, 4  )
	Text( 6, "�����ϵ",JumpPage, 8  )
	Text( 6, "�ֵܹ�ϵ",JumpPage, 7  )
	Text( 6, "���˹�ϵ",JumpPage, 32  )
	Text( 6, "���޹�ϵ",JumpPage, 32  )
	Text( 6, "��ϵԶ��",JumpPage, 32  )
	Text( 6, "���׹�ϵ",JumpPage, 7  )-----------------
	Text( 6, "���ù�ϵ",JumpPage, 7  )

	Talk( 7, "����˹:��ħ��ʵ��������ʲô����?" )
	Text( 7, "���鱦��",JumpPage, 32  )
	Text( 7, "��ͨ��ƻ��",JumpPage, 8  )----------
	Text( 7, "��ħ",JumpPage, 9  )
	Text( 7, "���ܵĶ�ħ��ʵ",JumpPage, 5  )
	Text( 7, "��ʯ",JumpPage, 32  )

	Talk( 8, "����˹:С�����к���ʲô?" )
	Text( 8, "����",JumpPage, 3  )
	Text( 8, "��Ӱ����",JumpPage, 32  )
	Text( 8, "���ʦ",JumpPage, 32  )
	Text( 8, "����ģ��",JumpPage, 9  )--------
	Text( 8, "GM",JumpPage, 7  )
	Text( 8, "��˾�ϰ�",JumpPage, 9  )

	Talk( 9, "����˹:�����ĸ�ѡ��������ȷ�ģ�" )
	Text( 9, "��ѡ�һ��ڵ�",JumpPage, 4  )
	Text( 9, "����������ٵ�˽����",JumpPage, 10 )-----------
	Text( 9, "���ٲ��������",JumpPage, 32  )
	Text( 9, "��ٻ���������Ż�þ�",JumpPage, 23 )
	Text( 9, "����ٴ�ǰ��������",JumpPage, 6  )

	Talk( 10, "����˹:�������������ܲ�Ᵽ�����" )
	Text( 10, "ʮ��ǰ",JumpPage, 5  )
	Text( 10, "����ǰ",JumpPage, 5  )
	Text( 10, "�������Ŷ�ʱ",JumpPage, 32 )
	Text( 10, "�����������Ǳ�ʱ",JumpPage, 8  )
	Text( 10, "����û���ϵ���ʱ",JumpPage, 11  )-----------
	Text( 10, "��������������",JumpPage, 32  )
	Text( 10, "�������д�ѧʱ",JumpPage, 8  )


	Talk( 11, "����˹:GM����أ�����Ϊ��ʵ������������ʲô�����ˣ���Ҫ̫���Ŵ���" )
	Text( 11, "25���˧��",JumpPage, 32 )
	Text( 11, "������ٸ�",JumpPage, 30  )
	Text( 11, "�ױ���������",JumpPage, 13  )
	Text( 11, "���µĽ���",JumpPage, 2  )
	Text( 11, "��������Ů",JumpPage, 13  )---------------
	Text( 11, "����������",JumpPage, 32  )
	Text( 11, "û����ȷѡ��",JumpPage, 28  )

	Talk( 30, "����˹:������к�������"  )
	Text( 30, "��һ��",JumpPage, 32  )
	Talk( 31, "����˹:��Ҫ����֪����ѡ�������" )
	Text( 31, "��һ��",JumpPage, 32  )



	--Talk( 12, "����˹:����������ĸ��Ǵ����?" )
	--Text( 12, "�׶������Ǵ���ٵ�����",JumpPage, 32 )
	--Text( 12, "�����������ת������װ��",JumpPage, 3 )
	--Text( 12, "��ķ����������ˮ",JumpPage,8 )
	--Text( 12, "��ɭ�Ǵ�������",JumpPage, 10 )
	--Text( 12, "��������Ϊ�����˹�Ǹ��ܴ�������",JumpPage, 13 )---------------
	--Text( 12, "�ֲ��������ʬ�ڼ���(360,1340)����",JumpPage, 5 )
	--Text( 12, "����������ǰ��ֻ����",JumpPage, 13 )
	--Text( 12, "�׶�������ǰ�ǿ���˹������",JumpPage, 13 )

	Talk( 13, "����˹:���ڱ�ʯ��ȡ�����ĸ��Ǵ����?" )
	Text( 13, "������ȡ�ĵ���Ϊ����ǯ��",JumpPage, 5 )
	Text( 13, "ÿ��װ������һ����˳����ȡ",JumpPage, 3 )
	Text( 13, "��ȡ��װ���Ĳ����������ǯ�ӻ���ʧ",JumpPage, 32 )
	Text( 13, "��ȡ����=װ���ľ����ȼ�*1000������",JumpPage, 14 )
	Text( 13, "ÿ��ֻ�ܴӲ�����ȡһ��",JumpPage, 10 )
	Text( 13, "��ȡ���ı�ʯ�ȼ�Ϊԭ���б�ʯ�ȼ�����1",JumpPage, 14 )-----------------
	Text( 13, "����������ȷ��",JumpPage, 8 )

	Talk( 14, "����˹:˭֪��̫��ʯ������?" )
	Text( 14, "�����˹",JumpPage, 4 )
	Text( 14, "���öȺ���������",JumpPage, 32 )
	Text( 14, "�������Ӻͼ��ɺ���",JumpPage, 7 )
	Text( 14, "��ķ����������",JumpPage, 15 )
	Text( 14, "��ķ�����ö�",JumpPage, 15 )-----------------
	Text( 14, "�������ź���������",JumpPage, 8 )
	Text( 14, "�����˹����������",JumpPage, 12 )


	Talk( 15, "����˹:�����ĸ�ҩƷ�и�����?" )
	Text( 15, "��ԭ��",JumpPage,13 )
	Text( 15, "����Ҷ",JumpPage, 32 )
	Text( 15, "���佺��",JumpPage, 16 )--------------
	Text( 15, "����ˮ",JumpPage, 5 )
	Text( 15, "�ػ���",JumpPage, 4 )
	Text( 15, "ħ����ͷ��",JumpPage, 16 )
	Text( 15, "������",JumpPage, 9 )

	Talk( 16, "����˹:˭��˵��?" )
	Text( 16, "��������: �Ұ����ö�",JumpPage, 32 )
	Text( 16, "�����ٽ�����˹:������߲�������",JumpPage, 17 )-----------
	Text( 16, "���ö�:�ҵ������˲�����������",JumpPage, 17 )
	Text( 16, "����:�ұ�����ǰ��������Ů��!",JumpPage, 5 )
	Text( 16, "���:�һὲ�����������Ļ�",JumpPage, 10 )
	Text( 16, "Ħ��С�Ӷ���:�ҵĸ�ĸ��ȫ��Ħ��С��",JumpPage, 15 )

	Talk( 17, "����˹:�����������Ϸ��ϲ����?" )
	Text( 17, "��ϲ��",JumpPage, 32 )
	Text( 17, "�Һ�ϲ��",JumpPage, 32 )
	Text( 17, "�ҷǳ�ϲ��",JumpPage, 32 )
	Text( 17, "��ϲ��!",JumpPage, 32 )
	Text( 17, "��ϲ��!!",JumpPage, 18 )-----------------
	Text( 17, "��ϲ��!!!",JumpPage, 5 )
	Text( 17, "�һ���ϲ��",JumpPage, 15 )

	Talk( 18, "����˹:�������ʲô�����Ⱥã�" )
	Text( 18, "˺��Ƥ",JumpPage, 5 )
	Text( 18, "�ڱ���",JumpPage, 14 )
	Text( 18, "͵��",JumpPage, 2 )
	Text( 18, "�Ⱦ�����",JumpPage, 9 )
	Text( 18, "���̹�",JumpPage, 12 )
	Text( 18, "�Ĺ�",JumpPage, 10 )
	Text( 18, "��é��",JumpPage, 12 )------------------
	Text( 18, "ϴ��",JumpPage, 4 )


	Talk( 19, "����˹:��ȷ���ղ�ѡ������ȷ����?" )
	Text( 19, "��ȷ��",JumpPage, 21  )
	Text( 19, "�Ҹղ�ѡ����",JumpPage, 20  )
	Text( 19, "�һ�Ҫ����һ��",JumpPage, 32  )

	Talk( 20, "����˹:����,���ܲ��ܼᶨһ��?" )
	Text( 20, "��һ��",JumpPage, 3  )

	Talk( 21, "����˹:�����Ǻ���������!" )
	Text( 21, "ȷ��",JumpPage, 5  )

	Talk( 22, "����˹:��ȷ���ղ�ѡ������ȷ����?" )
	Text( 22, "��ȷ��",JumpPage, 24  )
	Text( 22, "�Ҹղ�ѡ����",JumpPage, 20  )
	Text( 22, "�һ�Ҫ����һ��",JumpPage, 32  )


	Talk( 23, "����˹:��ȷ���ղ�ѡ������ȷ����?" )
	Text( 23, "��ȷ��",JumpPage, 25  )
	Text( 23, "�Ҹղ�ѡ����",JumpPage, 8  )
	Text( 23, "�һ�Ҫ����һ��",JumpPage, 32  )

	Talk( 24, "����˹:������Զ�Ǻ���������!")
	Text( 24, "��һ��",JumpPage, 6   )
	Talk( 25, "����˹:����,�鷳�㶯���Խ�,��Ҫÿ�ζ�ѡ��ȷ��,˭������һ��Ҫ������,��˵��������!")
	Text( 25, "��һ��",JumpPage, 32  )

	Talk( 26, "����˹:��ȷ���ղ�ѡ������ȷ����?" )
	Text( 26, "��ȷ��",JumpPage, 28  )
	Text( 26, "�Ҹղ�ѡ����",JumpPage, 27  )
	Text( 26, "�һ�Ҫ����һ��",JumpPage, 32  )

	Talk( 27, "����˹:��һ�ٶ�Ϊ���Լ�˺ܶ�ʱ��"   )
	Text( 27, "��һ��",JumpPage, 12  )

	Talk( 28, "����˹:�����������,��ɲ��Ǻ���������"  )
	Text( 28, "��һ��",JumpPage, 32  )



	InitTrigger()
	TriggerCondition( 1, HasMission, 1000 )
	TriggerCondition( 1, NoRecord, 1000 )
	TriggerAction( 1, SetRecord, 1001 )
	TriggerAction( 1, JumpPage, 29 )
	
	Talk( 12, "����˹:����Ϊ��������ʴ���Ϸ����Ȥ,�㻹Ҫ��һ����"  )
	Text( 12, "Ҫ",MultiTrigger, GetMultiTrigger(), 1  )
	Text( 12, "��Ҫ",JumpPage, 2  )

	Talk( 29, "����˹:��ϲ��!��������ǻ�����ʹ�����ʸ�μ���Ƭ������,����ȥ֤�����������" )

	Talk(32, "����˹:���Ǳ�����?" )
	Text( 32, "�Ҳ���,��Ҫ����",JumpPage, 2  )
	Text( 32, "���Ǳ���,�Ҳ�����",CloseTalk  )
	AddNpcMission	(6001)
	AddNpcMission	(6002)

	-------------����˹-------��з
	AddNpcMission	(5823)
	AddNpcMission	(5824)
	
		
end 
-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<����˹



----------------------------------------����˹��ͼͼ-------------------------
--------------------------------ħ���������(26600,25900)
--------------------------------------eleven------------------------------------------

function el_talk08 ()


	Talk( 1, "����˹��ͼͼ:���Ŷ���!�ױ�ħ������,�Ź���������Ż�!" )

	InitTrigger()
	TriggerCondition( 1, HasMission, 1424 )
	TriggerCondition( 1, HasMission, 1414 )
	TriggerCondition( 1, NoRecord, 1424 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "�ش�����",MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerAction( 1, GoTo, 2232, 2809, "garner")
	Talk( 2, "�Ȿ���������ʲô��ע������Ļ��һὫ�㴫�ߵġ�")
	Text( 2, "�ҵķܶ�ʷ",MultiTrigger, GetMultiTrigger(), 1 )
	
	InitTrigger()
	TriggerAction( 1, GoTo, 2232, 2809, "garner")
	Text( 2, "�ҵĵ�ùʷ",MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerAction( 1, JumpPage, 4)
	Text( 2, "�ҵ�����ʷ",MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3, "���ڿ��飬���������ҡ�")

	InitTrigger()
	TriggerAction( 1, JumpPage, 5)
	Talk( 4, "�Ȿ���������˭��ע������Ļ��һὫ�㴫�ߵġ�")
	Text( 4, "��ķ����¶���������",MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerAction( 1, GoTo, 2232, 2809, "garner")
	Text( 4, "��ķ����¶�������",MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerAction( 1, GoTo, 2232, 2809, "garner")
	Text( 4, "��ķ����ö�������",MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerAction( 1, GoTo, 2232, 2809, "garner")
	Talk( 5, "�Ȿ��һ���ж���ҳ��ע������Ļ��һὫ�㴫�ߵġ�")
	Text( 5, "5321ҳ",MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerAction( 1, SetRecord, 1429)
	TriggerAction( 1, JumpPage, 6)
	Text( 5, "5231ҳ",MultiTrigger, GetMultiTrigger(), 1 )
	
	InitTrigger()
	TriggerAction( 1, GoTo, 2232, 2809, "garner")
	Text( 5, "5132ҳ",MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 6, "��ϲ��ȫ������ˣ����������Ǹ�ϸ�ĵ��ˣ��Ժ�࿴����ɡ�")

	AddNpcMission ( 6095 )
	AddNpcMission ( 6096 )

	 
	 AddNpcMission	(6010)
	AddNpcMission	(6011)
	AddNpcMission	(6012)
	AddNpcMission	(6013)
	AddNpcMission	(6014)

	end
	-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<����˹��ͼͼ
	
	--��ʹ
	
function Leo_talkQ()
	Talk(1,"����Ļ���,��������ı�����;��������GM,Ϊ������������������Ϸ������Լ��ĸ�λ,Ϊ������Ҷ�Ŭ����......")
	Text(1,"��������GM",JumpPage,2)
	Text(1,"�ύ����" , OpenGMSend)
	Text(1,"�鿴�ظ�" , OpenGMRecv)
	
	Talk(2,"��������GM���������Ҹ��𽫹����ҵ����⼰ʱ׼ȷ�ķ�ӳ����ʵ�����GM��ͬʱ�����ǵĻظ���������ң������ύʱ��ע�����漸�㣺    1��ÿ�����ֻ���Է���һ�����⣬�ȴ�GM�ظ��󷽿ɼ����ύ��                            2�����ύ��������Ӧ��ѭ��ط��ɷ��档     3������Ӧ�޶���16��256���ַ�����8��128������֮�䡣                                  4���벻Ҫ������Ϸ����ص����⡣лл~")
	Text(2,"��֪����" , CloseTalk)
end


-------------------------bargi-----------------------------
function smzh_talk ()

	Talk( 1, "���ص��ӻ����ˣ������ˣ���Ҫ���ױ���ǰ�Ļ����Ի󰡣�����" )
	Text( 1, "����", BuyPage)
	Text( 1, "����", OpenRepair)

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)
	Other(	3143	)
	Other(	637	)
	Other(	819	)
	Other(	869	)
	Other(	874	)


end 

function leo_talkzz()
	Talk(1,"���ã��������Ϸ���Ա���������Ҵ���ĳЩ��������⣬��ѡ����Ӧ��ѡ�������ȥ")
	Text( 1,"�Ҷ����������¼�",JumpPage,2)
	Text( 1,"ת����ͻ���¼�",JumpPage,3)
	 
	Talk(3, "����,���ת�����ǲ���ͻȻ���Ա��һ��ʯͷ?�����ܷ����𺦵��µ���ǰ����,Ϊ��Ӱ�����ת���������ｫ��Ƭ��ԭ")
	Text( 3, "ȷ�ϻ�ԭ",GetChaName_25, 1) 
	
	Talk(2,"��������Ҷ������������쳣����ѡ��ָ��Ҷ�����������������Ҷ���������")
	Text(2,"�ҵ��Ҷ������쳣�ˣ���Ҫ����",PKPointToZero)
	Text(2,"��֪������˵ʲô",CloseTalk)
end
	



------------------------------------------------------------
----							--
----							--
----		ɳᰳ�[������Ů.÷����]			--
----							--
----		82271,353453				--
------------------------------------------------------------
-------------------------------------------------------------���￪ʼP������
--function el_talk09 ()
--	
--	Talk( 1, "÷����:�����ˣ�������������������ȥʥ��." )
--	Text( 1, "���þ���", ListAuction)
--	Text( 1, "������òι���Ʊ", JumpPage,2 )
--	Text( 1, "�������", JumpPage, 5)
--
--
--	InitTrigger()
--	TriggerCondition( 1, HasMoney,5000 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerAction( 1, TakeMoney, 5000 )
--	TriggerAction(1, GiveItem, 3013, 1 , 4)
--	TriggerAction( 1, JumpPage, 3)
--	TriggerFailure( 1, JumpPage, 4 )
--	Talk(2, "÷����:��ʥ���ŵĽ������Ҹ���ʼ�ĵط�,�ǰ���ׯ�ϵļ�֤.��ӭ��Ʊ�ι�,ÿ�Ųι���Ʊֻ��5000������")
--	Text( 2, "ȷ������",  MultiTrigger, GetMultiTrigger(), 1)
--
--	Talk(3, "÷����:��ӭ׼ʱ�ι�")
--	Talk(4, "÷����:�������ƺ�û���㹻�Ľ�Ǯ��!�������ı������������뱣֤����������һ���ո�")
--	
--	Talk( 5, "÷����:�ý���ʹ��֤��Ϳ��Թ����Ӧ���õ����,ÿ10�����Ϊ1��,ÿ��5�򺣵���.�����������ѲμӾۻ��!" )
--	Text( 5, "ȷ������", ChangeItem, 1  )
--	
--	
--end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<÷����
	
-----------------------------Թ���
function ync_talk ()
	Talk( 1, "��ʲô�����ٿ�����")

	InitTrigger()
	TriggerCondition( 1, HasMission, 1403 )
	TriggerCondition( 1, HasRecord, 1402 )
	TriggerCondition( 1, NoRecord, 1403 )
	TriggerCondition( 1, NoRecord, 1404 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "�ش�����",MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerAction( 1, SetRecord, 1404 )
	TriggerAction( 1, SetRecord, 1405 )
	Talk( 2, "Ϊʲô...Ϊʲô����Ҫ��ɱ���Ǿ����һ��...��֪�����������һ���ж��ٸ�ɱ���Ǿ���ݺ�������������Ʒ��������")
	Text( 2, "11��",MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerAction( 1, SetRecord, 1404 )
	TriggerAction( 1, SetRecord, 1406 )
	Text( 2, "12��",MultiTrigger, GetMultiTrigger(), 1  )

	InitTrigger()
	TriggerAction( 1, SetRecord, 1404 )
	TriggerAction( 1, SetRecord, 1406 )
	Text( 2, "13��",MultiTrigger, GetMultiTrigger(), 1  )

	InitTrigger()
	TriggerAction( 1, SetRecord, 1404 )
	TriggerAction( 1, SetRecord, 1407 )
	Text( 2, "�ҹ��������",MultiTrigger, GetMultiTrigger(), 1  )

	Talk( 3, "��һ��Ҫ�����������Զ�㡣")

	AddNpcMission ( 6072 )
	AddNpcMission ( 6073 )
	AddNpcMission ( 6074 )
	AddNpcMission ( 6075 )
	AddNpcMission ( 6076 )
	AddNpcMission ( 6077 )

end

--------------------------------------���˵�����սʿ

function Zs_Soldier ()
	Talk( 1, "С�����ѣ�������ֻ�����档")


	AddNpcMission ( 6098 )
	AddNpcMission ( 6099 )
end
---------------------------------------------------------
--							--
--							--
--		����7��[����]			--
--							--
--		190, 181				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function el_talk11 ()
	
	Talk( 1, "����:��ӭ��õ���7��!������Ȼ�ֲ�,��Ҳ��������,�������¸��ߵ�����." )
--	Text( 1, "��������һ��", JumpPage,2 )
--	
--	
--	InitTrigger()
--	TriggerCondition( 1, NoRecord, 1154 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerAction(1, GiveItem, 3877, 1 , 4)
--	TriggerAction( 1, SetRecord, 1154 )
--	TriggerAction( 1, JumpPage, 3)
--	TriggerFailure( 1, JumpPage, 4 )
--	Talk( 2, "����:����,Ϊ�˼ν����´������ĵ���,�ҽ��͸���һ������.ֻ��һ�λ���Ŷ!")
--	Text( 2, "�ҽ���",  MultiTrigger, GetMultiTrigger(), 1)
--	Text( 2,"л��,��ֻ��·��.",CloseTalk)
--
--	Talk(3, "����:�¸���,��Ҫ����,�ҵ����ѵ���15���ϣ�������и���ľ�ϲ������.ǧ��Ҫ���Ŷ!")
--	Talk(4, "����:��ȷ�����ı���δ����,����֤����������һ���ո�.����ֻ����ȡһ��Ŷ!")
--	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<����

---------------------------------------------------------
--							--
--							--
--		����15��[ϣ����]			--
--							--
--		314, 303				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function el_talk12 ()
	
	Talk( 1, "ϣ����:����15�����������������¶���,ֻ��������ǿ�߲��ܻ������." )
--	Text( 1, "��������һ��", JumpPage,2 )
--	
--	
--	InitTrigger()
--	TriggerCondition( 1, NoRecord, 1155 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerAction(1, GiveItem, 0853, 1 , 4)
--	TriggerAction( 1, SetRecord, 1155 )
--	TriggerAction( 1, JumpPage, 3)
--	TriggerFailure( 1, JumpPage, 4 )
--	Talk( 2, "ϣ����:����,������15����ս���˵��˶����ʸ����ҵ�����.ֻ��һ�λ���Ŷ!")
--	Text( 2, "�ҽ���",  MultiTrigger, GetMultiTrigger(), 1)
--	Text( 2,"л��,��ֻ��·��.",CloseTalk)
--
--	Talk(3, "ϣ����:����,��̽�������ĵ�·��û��ʧ����,ǰ����������Ӣ�۵�����.")
--	Talk(4, "ϣ����:��ȷ�����ı���δ����,����֤����������һ���ո�.����ֻ����ȡһ��Ŷ!")
	
end 


---------------------------------------------------------
--							--
--							--
--		������[����]			--
--							--
--		3228,2508				--
----------------------------------------------------------
function amon_talk1 ()
	Talk( 1, "����: һ������,������Ե.�������˼�����.")


	--AddNpcMission ( 5736 )
	--AddNpcMission ( 5737 )
end

---------------------------------------------------------
--							--
--							--
--		�ĵ�[ţ��]			--
--							--
--		3670,2636			--
----------------------------------------------------------
function amon_talk2 ()
	Talk( 1, "ţ��: ��۶�,���ӳ�.����ȵ��·,����·,����·.")


	--AddNpcMission ( 5738 )
	--AddNpcMission ( 5739 )
end

---------------------------------------------------------
--							--
--							--
--		����[֯Ů]			--
--							--
--		1599,909			--
----------------------------------------------------------
function amon_talk3 ()
	Talk( 1, "֯Ů: ��۶�,˼�.����ȵ��·,����·,����·.")


	--AddNpcMission ( 5740 )
	
end
---------------------------------------------------------
--							--
--							--
--		����[У����ŵ]			--
--							--
--		2232,2781			--
----------------------------------------------------------
function dina_talk01 ()
	Talk( 1, "У����ŵ: ����Ѿ���ȥ�������µĳ���֮��ӭ�����µ�ѧ�ڡ�")

	AddNpcMission ( 6127 )
	AddNpcMission ( 6128 )
	AddNpcMission ( 6129 )
	AddNpcMission ( 6130 )
	AddNpcMission ( 6131 )

		
end
-----------------------------------------------------------
----							--
----							--
----		ɳ�[��������ʦ]			--
----							--
----		871,3581			--
------------------------------------------------------------
function dina_talk02 ()
	Talk( 1, "��������ʦ: ��ѧ�ڣ��¿�ʼ��ѧ��ֹ��~")
	
	InitTrigger()
	TriggerCondition( 1, HasMission, 1458)
	TriggerCondition( 1, NoRecord, 1458)
	TriggerCondition( 1, NoRecord, 1461)
	TriggerCondition( 1, HasItem, 579, 1)
	TriggerAction( 1, JumpPage, 2)
	TriggerAction( 1, SetTestTime )
	TriggerFailure( 1, JumpPage, 20)
	Text( 1, "�μ���ѧ����",MultiTrigger, GetMultiTrigger(), 1  )
	
	Talk( 2, "����һ:���ڻ�����־�Ƿ�ɽ���?")

	InitTrigger()
	TriggerAction( 1, RenewTestTime2)
	TriggerAction( 1, JumpPage, 3)
	Text( 2, "�ɽ���",MultiTrigger, GetMultiTrigger(), 1  )
	
	InitTrigger()
	TriggerAction( 1, RenewTestTime1)
	TriggerAction( 1, JumpPage, 3)
	Text( 2, "���ɽ���",MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3, "�����:NPC��������ʦ���Ǹ�����վ?")

	InitTrigger()
	TriggerAction( 1, JumpPage, 4)
	TriggerAction( 1, RenewTestTime2)
	Text( 3, "��������վ",MultiTrigger, GetMultiTrigger(), 1  )
	
	InitTrigger()
	TriggerAction( 1, RenewTestTime1)
	TriggerAction( 1, JumpPage, 4)
	Text( 3, "��������վ",MultiTrigger, GetMultiTrigger(), 1  )

	Talk( 4, "������:�ױ��������ܲ���ͬʱװ��?")

	InitTrigger()
	TriggerAction( 1, RenewTestTime1)
	TriggerAction( 1, JumpPage, 5)
	Text( 4, "����",MultiTrigger, GetMultiTrigger(), 1  )
	
	InitTrigger()
	TriggerAction( 1, RenewTestTime2)
	TriggerAction( 1, JumpPage, 5)
	Text( 4, "������",MultiTrigger, GetMultiTrigger(), 1  )

	Talk( 5, "������:��Ӱ����ÿ�쿪�ż���?")
	
	InitTrigger()
	TriggerAction( 1, RenewTestTime1)
	TriggerAction( 1, JumpPage, 6)
	Text( 5, "2��",MultiTrigger, GetMultiTrigger(), 1  )

	InitTrigger()
	TriggerAction( 1, RenewTestTime2)
	TriggerAction( 1, JumpPage, 6)
	Text( 5, "4��",MultiTrigger, GetMultiTrigger(), 1  )
	
	Talk( 6, "������:ʥ��ʯ������Ƕ��Ь������?")

	InitTrigger()
	TriggerAction( 1, RenewTestTime1)
	TriggerAction( 1, JumpPage, 7)
	Text( 6, "����",MultiTrigger, GetMultiTrigger(), 1  )

	InitTrigger()
	TriggerAction( 1, RenewTestTime2)
	TriggerAction( 1, JumpPage, 7)
	Text( 6, "������",MultiTrigger, GetMultiTrigger(), 1  )

	Talk( 7, "������:100������ӥ�������ĺ����Ƕ���?")

	InitTrigger()
	TriggerAction( 1, RenewTestTime2)
	TriggerAction( 1, JumpPage, 8)
	Text( 7, "623",MultiTrigger, GetMultiTrigger(), 1  )

	InitTrigger()
	TriggerAction( 1, RenewTestTime1)
	TriggerAction( 1, JumpPage, 8)
	Text( 7, "632",MultiTrigger, GetMultiTrigger(), 1  )

	Talk( 8, "������:��������ְҵ�������м��ּ�������Ҫ���ĵ��߲���ʩչ��?")

	InitTrigger()
	TriggerAction( 1, RenewTestTime1)
	TriggerAction( 1, JumpPage, 9)
	Text( 8, "3��",MultiTrigger, GetMultiTrigger(), 1  )

	InitTrigger()
	TriggerAction( 1, RenewTestTime2)
	TriggerAction( 1, JumpPage, 9)
	Text( 8, "4��",MultiTrigger, GetMultiTrigger(), 1  )

	Talk( 9, "�����:���Ǳ�һ���м�ֻ�������?")

	InitTrigger()
	TriggerAction( 1, RenewTestTime1)
	TriggerAction( 1, JumpPage, 12)
	Text( 9, "9ֻ",MultiTrigger, GetMultiTrigger(), 1  )

	InitTrigger()
	TriggerAction( 1, RenewTestTime2)
	TriggerAction( 1, JumpPage, 12)
	Text( 9, "10ֻ",MultiTrigger, GetMultiTrigger(), 1  )

	Talk( 12, "��ȷ����������ش���Щ������?")

	TriggerAction( 1, SetRecord, 1461)
	TriggerAction( 1, JumpPage, 13)
	Text( 12, "��ȷ��",MultiTrigger, GetMultiTrigger(), 1  )

	Text( 12, "����������", CloseTalk )
	
	Talk( 13, "�ش����˾Ϳ������һ�������Ŷ,������.")
	Text( 13, "�õ�", CloseTalk )

	Talk( 20, "��μ���ѧ������?������ѧ֤����?û�Ļ��Լ�ȥ����ŵУ����һ�Ű�")

	AddNpcMission ( 6132 )
	AddNpcMission ( 6133 )
	AddNpcMission ( 6134 )
	AddNpcMission ( 6135 )
	AddNpcMission ( 6136 )


end
-----------------------------------------------------------
----							--
----							--
--		����[������˹1]			--
--							--
--		2646,671			--
----------------------------------------------------------
function dina_talk03 ()
	Talk( 1, "������˹:����,�²��Ǹ�������������!�´��˿���Ҫ���Ҹϻذ����ǵ�Ŷ.")

	InitTrigger()
	TriggerCondition( 1, HasMission, 1464)
	TriggerCondition( 1, NoRecord, 1465)
	TriggerAction( 1, JumpPage, 2)
	TriggerFailure( 1, JumpPage, 3)
	Text( 1, "����������",MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 2, "ԭ�������������Ŀ�����˹��,������Ϊ���������Ŀ�����˹��?")
	
	InitTrigger()
	TriggerCondition( 1, CheckRealNpc, 1)
	TriggerAction( 1, SetRecord, 1465)
	TriggerAction( 1, JumpPage, 4)
	TriggerFailure( 1, GoTo, 2298, 2704, "garner")
	Text( 2, "�Ҳ�����������Ŀ�����˹",MultiTrigger, GetMultiTrigger(), 1  )	
	Text( 2, "����������", CloseTalk)

	Talk( 3, "����˭?���ֲ���ʶ��.")

	Talk( 4, "��ѽ,����ץס��,�ðɺð�,�Ѱ����ȵ��Ÿ��Ұ�")

	AddNpcMission ( 6137 )

end

---------------------------------------------------------
--							--
--							--
--		����[������˹2]			--
--							--
--		2718,586			--
----------------------------------------------------------
function dina_talk04 ()
	Talk( 1, "������˹:����,�²��Ǹ�������������!�´��˿���Ҫ���Ҹϻذ����ǵ�Ŷ.")

	InitTrigger()
	TriggerCondition( 1, HasMission, 1464)
	TriggerCondition( 1, NoRecord, 1465)
	TriggerAction( 1, JumpPage, 2)
	TriggerFailure( 1, JumpPage, 3)
	Text( 1, "����������",MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 2, "ԭ�������������Ŀ�����˹��,������Ϊ���������Ŀ�����˹��?")
	
	InitTrigger()
	TriggerCondition( 1, CheckRealNpc, 2)
	TriggerAction( 1, SetRecord, 1465)
	TriggerAction( 1, JumpPage, 4)
	TriggerFailure( 1, GoTo, 2298, 2704, "garner")
	Text( 2, "�Ҳ�����������Ŀ�����˹",MultiTrigger, GetMultiTrigger(), 1  )	
	Text( 2, "����������", CloseTalk)

	Talk( 3, "����˭?���ֲ���ʶ��.")

	Talk( 4, "��ѽ,����ץס��,�ðɺð�,�Ѱ����ȵ��Ÿ��Ұ�")

	AddNpcMission ( 6137 )

end

---------------------------------------------------------
--							--
--							--
--		����[������˹3]			--
--							--
--		2714,699			--
----------------------------------------------------------
function dina_talk05 ()
	Talk( 1, "������˹:����,�²��Ǹ�������������!�´��˿���Ҫ���Ҹϻذ����ǵ�Ŷ.")

	InitTrigger()
	TriggerCondition( 1, HasMission, 1464)
	TriggerCondition( 1, NoRecord, 1465)
	TriggerAction( 1, JumpPage, 2)
	TriggerFailure( 1, JumpPage, 3)
	Text( 1, "����������",MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 2, "ԭ�������������Ŀ�����˹��,������Ϊ���������Ŀ�����˹��?")
	
	InitTrigger()
	TriggerCondition( 1, CheckRealNpc, 3)
	TriggerAction( 1, SetRecord, 1465)
	TriggerAction( 1, JumpPage, 4)
	TriggerFailure( 1, GoTo, 2298, 2704, "garner")
	Text( 2, "�Ҳ�����������Ŀ�����˹",MultiTrigger, GetMultiTrigger(), 1  )	
	Text( 2, "����������", CloseTalk)

	Talk( 3, "����˭?���ֲ���ʶ��.")

	Talk( 4, "��ѽ,����ץס��,�ðɺð�,�Ѱ����ȵ��Ÿ��Ұ�")

	AddNpcMission ( 6137 )
end

---------------------------------------------------------
--							--
--							--
--		����[������˹4]			--
--							--
--		2609,607			--
----------------------------------------------------------
function dina_talk06 ()
	Talk( 1, "������˹:����,�²��Ǹ�������������!�´��˿���Ҫ���Ҹϻذ����ǵ�Ŷ.")

	InitTrigger()
	TriggerCondition( 1, HasMission, 1464)
	TriggerCondition( 1, NoRecord, 1465)
	TriggerAction( 1, JumpPage, 2)
	TriggerFailure( 1, JumpPage, 3)
	Text( 1, "����������",MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 2, "ԭ�������������Ŀ�����˹��,������Ϊ���������Ŀ�����˹��?")
	
	InitTrigger()
	TriggerCondition( 1, CheckRealNpc, 0)
	TriggerAction( 1, SetRecord, 1465)
	TriggerAction( 1, JumpPage, 4)
	TriggerFailure( 1, GoTo, 2298, 2704, "garner")
	Text( 2, "�Ҳ�����������Ŀ�����˹",MultiTrigger, GetMultiTrigger(), 1  )	
	Text( 2, "����������", CloseTalk)

	Talk( 3, "����˭?���ֲ���ʶ��.")

	Talk( 4, "��ѽ,����ץס��,�ðɺð�,�Ѱ����ȵ��Ÿ��Ұ�")
	AddNpcMission ( 6137 )

end

-----------------------����ϵͳ
function reading_talk01 ()
	Talk( 1 , "С���鿼��:����פ���ڰ����ǵ�С���鿼��!��μ�С����������ҾͶ���,��������ǰ���Ȱ�ѧ��֤���뱳��,֮������ܽӵ���������Ŷ.")
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 3279, 1 )
	TriggerCondition( 1, HasItem, 3289, 1 )
	TriggerAction( 1, checkcytime )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "���ɼ���",  MultiTrigger, GetMultiTrigger(), 1)

	Text( 1, "�μ�С���鿼�Ե�������ʲô?" , JumpPage , 5)

	Text( 1, "С���鿼�ԵĹ�������ô����?", JumpPage , 6)

	Talk( 4, "С���鿼��:��ı�����û�гɼ�����ѧ��֤Ŷ!")

	Talk( 5, "С���鿼��:�μӿ��Ե�Ҫ����ϸ�,�����������һ��ѧ��֤�ڱ�����.")

	Talk( 6, "С���鿼��:����������ѧ��֤���ڱ�����,Ȼ���ٽ�ȡ��������,������������Եõ��ɼ���һ�ţ�Ȼ���ҽ�������ɼ����ϵĳɼ������㽱��Ŷ")

	AddNpcMission ( 112 )
end

function reading_talk02 ()
	Talk( 1, "����������:����פ���ڱ��Ǳ�������������!������,�����������˦��,������ѧ����������Ͷ���")

	InitTrigger()
	TriggerCondition( 1, CheckXSZCh )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, HasNoItem, 3280 )
	TriggerCondition( 1, HasNoItem, 3281 )
	TriggerCondition( 1, HasNoItem, 3282 )
	TriggerAction( 1, AddChaItem7)
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "��Ҫ��ȡ����!",  MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, CheckXSZCh )
	TriggerCondition( 1, CheckKJNum )
	TriggerCondition( 1, HasItem, 3280, 1 )
	TriggerCondition( 1, HasItem, 3282, 1 )
	TriggerAction( 1 , AddChaItem8)
	TriggerAction( 1, TakeItem, 3282, 1 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "�ҿ�����,Ҫ��ȡ�ɼ���!",  MultiTrigger, GetMultiTrigger(),2)

	InitTrigger()
	TriggerCondition( 1, CheckXSZCh )
	TriggerCondition( 1, HasItem, 3289, 1 )
	TriggerCondition( 1, HasItem, 3281, 1 )
	TriggerAction( 1, checksjtime )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "���ɼ���,�鿴���Գɼ�!",  MultiTrigger, GetMultiTrigger(), 1)

	Text( 1, "�μ��������Ե�������ʲô?" , JumpPage , 5)

	Text( 1, "�������ԵĹ�������ô����?", JumpPage , 6)
	
	Talk( 2, "����������:������Ҫ��,��ȡ����ʧ��,��鿴�μӿ��Ե�����")

	Talk( 3, "����������:���������ֻ��һ�ſ���ʹ�������ϲſ�����ȡ�ɼ���")

	Talk( 4, "����������:������û�гɼ���Ŷ")

	Talk( 5, "����������:�μ��������Ե�Ҫ����ϸ�Ŷ,�����������һ��ѧ��֤�ڱ����ڶ���ѧ��֤��ѧ������,���,������ϲ���������ǰ���������µĿ���,�����߳ɼ���Ŷ")

	Talk( 6, "����������:�����������ȡһ�ſ���,Ȼ���ٽ�ȡ������������,������������Եõ����һ�ţ����������ſ����Լ����Ϳ�����������ȡ���Լ���ο��Եĳɼ����ˣ�����ҽ�������ɼ����ϵĳɼ������㽱��Ŷ")
	
	AddNpcMission ( 6138 )

end


----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[������Ů.÷����]			--
--							--
--		82271,353453				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function el_talk09 ()
	
	Talk( 1, "÷����:������,������������������ȥʥ��." )
	Text( 1, "���ڽ���", JumpPage, 17)	

	Talk( 17, "÷����:��Ҫ�������𣿽��������д��ۻŶ." )

	Text( 17, "���ý��ü��", JumpPage, 6)
	Text( 17, "���þ���", ListAuction)
	Text( 17, "������òι���Ʊ", JumpPage,2 )
	Text( 17, "�������", JumpPage, 5)




	InitTrigger()
	TriggerCondition( 1, HasMoney,5000 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerAction( 1, TakeMoney, 5000 )
	TriggerAction(1, GiveItem, 3024, 1 , 4)
	TriggerAction( 1, JumpPage, 3)
	TriggerFailure( 1, JumpPage, 4 )
	Talk(2, "÷����:��ʥ���ŵĽ������Ҹ���ʼ�ĵط�,�ǰ���ׯ�ϵļ�֤.ÿ��һ��17:00~17:10��ӭ��Ʊ�ι�,ÿ�Ųι���Ʊֻ��5000��Ϸ��")
	Text( 2, "ȷ������",  MultiTrigger, GetMultiTrigger(), 1)

	Talk(3, "÷����:��ӭ׼ʱ�ι�")
	Talk(4, "÷����:�������ƺ�û���㹻�Ľ�Ұ�!�������ı���������,�뱣֤����������һ���ո�")
	
	Talk( 5, "÷����:�ý���ʹ��֤��Ϳ��Թ����Ӧ���õ����,ÿ10ö���Ϊ1��,ÿ��5����Ϸ��.�����������ѲμӾۻ��!" )
	Text( 5, "ȷ������", ChangeItem, 1  )
	
	Talk( 6, "÷����:�����˽���һ����?" )
	Text( 6, "���ڲι�", JumpPage, 7)
	Text( 6, "���ڽ��þ���", JumpPage, 8)
	Text( 6, "���ڽ���ʹ��Ȩ", JumpPage, 9)
	Text( 6, "���ڽ���ʹ��֤��", JumpPage, 10)

	Talk( 7, "÷����:����ι���Ʊ��������ÿ��һ��17:00~17:10�ι۽���.")
	Text( 7, "ȷ��", CloseTalk)
	Text( 7, "����", JumpPage, 6)

	Talk( 8, "÷����:����ʱ��:��ÿ��һ����18:00~20:30֮������������н��þ���.��������:Я�����þ��꿨1��.���ĳ���:����ÿ���ڳ�������,�ɳа��ĳ�����.����������,���������.ÿ��2��Сʱ,�����ɾ���ʱ�ξ���.")
	Text( 8, "ȷ��", CloseTalk)
	Text( 8, "����", JumpPage, 6)

	Talk( 9, "÷����:����4��ʱ�ξ���,��Ӧʱ���ڳ�����ߵ����ѽ���ý���ʹ��Ȩ,Ϊ����ɹ��߰䷢����ʹ��֤��,��������10ö���.")
	Text( 9, "ȷ��", CloseTalk)
	Text( 9, "����", JumpPage, 6)

	Talk( 10, "÷����:֤������:ƾ��֤�鷽�ɹ������;����ʱ����˫����֤��������.�ڽ���ʹ��֤���ϱ�ʾ��ʱ�����Сʱ,�Զ��������ڳ���Ա���ͻ�ɳᰳ�.")
	Text( 10, "ȷ��", CloseTalk)
	Text( 10, "����", JumpPage, 6)
end 

----------------------------------------------------------
--							--
--							--
--		ħ��1��һ�Ա[���»�]			--
--							--
--		26600,23000			--
----------------------------------------------------------
function el_talk13 ()
	Talk( 1, "���»�:ǧ�����ʷ�����³���������,�����Ž�����ĵļ��ɴ�½�Ѳ�������.˭���ǵÿ���Ů������ǰΪ�����������µĵ�����!")
	Text( 1, "�һ���������", JumpPage, 2)
	
	Talk( 2, "���»�:ǧ��������������˵Ĵ����˼,����!���������Ŀ�̽Ů��ḻ�ľ�������,�����1����֮���1���ɿ���ʯ���һ�����ʧ���������ذ�!")	
	InitTrigger()
	TriggerCondition( 1, HasItem, 3827, 1)              -------------��֮��
	TriggerCondition( 1, HasItem, 3457, 1)              --------------�ɿ���ʯ
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerCondition(1, KitbagLock, 0 )
	TriggerAction(1, TakeItem, 3827, 1)
	TriggerAction(1, TakeItem, 3457, 1)
	TriggerAction(1, GiveItem, 0145, 1, 4)              ----------��������
	TriggerFailure(1, JumpPage, 3)
	Text(2,"ȷ�϶һ�", MultiTrigger, GetMultiTrigger(), 1) 	

	Talk( 3, "����,���鲻������,���������ϻ�δ����֮����ɿ���ʯ������ı���������,�밲�����뿪.")

end

----------------------------------------------------------
--							--
--							--
--		ħ��2��һ�Ա[��³��]			--
--							--
--		26600,23000			--
----------------------------------------------------------
function el_talk14 ()
	Talk( 1, "��³��:�ٺ�,����̽Ѱ�󺣵�����ɭ�������ص�����֮����,ȴ��֪ħ������������һ�����������!����ľ�����������������Ħ�������˵�ѪҺ,��ЩҰ���ļһ��ڷ�������ʱ,��֪����������˶���ϡ���챦!")
	
	Text( 1, "�һ���������", JumpPage, 2)

	Talk( 2, "��³��:����,����!���͵�ħ������û�����Ż���?ʲô?��˵�������İ���ɱ��?!����������!���������������һ����������,������ͷ�������ϵ�1����������������1���ɿ���ʯ��ԭ��!������ܰ���������������,�ҽ�������:���������ִ����İ�������,�ٺ�,��ߵı����������ñ�����¼�ľ���!!")	
	InitTrigger()
	TriggerCondition( 1, HasItem, 3826, 1)             ------------������������
	TriggerCondition( 1, HasItem, 3457, 1)             ------------�ɿ���ʯ
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerCondition(1, KitbagLock, 0 )
	TriggerAction(1, TakeItem, 3826, 1)
	TriggerAction(1, TakeItem, 3457, 1)
	TriggerAction(1, GiveItem, 0146, 1, 4)              ----------��������
	TriggerFailure(1, JumpPage, 3)
	Text(2,"ȷ�϶һ�", MultiTrigger, GetMultiTrigger(), 1) 	

	Talk( 3, "��ѽ��ѽ,�㾹Ȼ��û�ռ������������������ɿ���ʯ�����㱳��̫����!�ǸϽ��Ӱ�!!!Ħ��������˷����������ʮ���׺��!")

end


---------------------------------------------------------
--							--
--							--
--		����[ħ��ʦ����]			--
--							--
--		2229,2782			--
----------------------------------------------------------
function el_talk15 ()
	Talk( 1, "ħ��ʦ����: �ҵ��������α�ħ����˲��̵�ɱ���ˡ��¸ҵ�սʿ,������ܹ�Ϊ���һش��������������߸���ĸP-E-I-M-E-N-G���ҽ�������ղض����ħ�����͸��㡣")
	
	Text( 1, "������ҵĽ�ָ����ħ��", JumpPage, 2)

	AddNpcMission ( 6139 )
	AddNpcMission ( 6161 )
	AddNpcMission ( 6166 )
		
	Talk( 2, "ħ��ʦ˵��:���ҵ�������ˣ�����ö��飬Ȼ������質���Ҹ����˾ͼ��˰ɡ���")
	InitTrigger()                                        
	TriggerCondition(1, HasItem, 2521, 1)               ---------�̳�������˽ڽ�ָ 
	TriggerCondition(1, ValentinesRingJudge)
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction(1, ValentinesRing)
	TriggerFailure(1, JumpPage, 3)
	Text(2,"�Ҹ����˾ͼ��˰�,��Ȼ���������ﻰ����", MultiTrigger, GetMultiTrigger(), 1) 	
	Talk( 3, "����������ˣ����һ�������Ƿ������")
	Text(3, "�ص���һҳ", JumpPage, 2)
end


---------------------------------------------------------
--							--
--							--
--		����ʥ��[��˼ҵ�������]			--
--							--
--		271��1775			--
----------------------------------------------------------
function el_talk16 ()
	
	Talk( 1, "��˼ҵ�������: ������˴��˵���ʵ����,��Ȼ���ܲ���,�����Ⲣ�������������������������.")
	Text( 1, "��Ҫȥ��į֮��1�㣡", JumpPage, 2 )

	InitTrigger()
	TriggerCondition( 1, HasMission,1213 )
	TriggerAction( 1, GoTo, 352, 378, "lonetower")
	TriggerFailure( 1, JumpPage, 3 )
	Talk( 2, "��˼ҵ�������:��į֮��֮���Լ�į����Ϊû�м�������" )
	Text( 2, "��ʼ����",MultiTrigger, GetMultiTrigger(), 1 )


	Talk( 3, "��˼ҵ�������:�����㻹û�� ������͸¶����Ϣ ��������?" )
	AddNpcMission ( 6140 )
	
end

---------------------------------------------------------
--							--
--							--
--		��į֮��1��[��˼ҵ���Ӷ]			--
--							--
--		260,257			--
----------------------------------------------------------
function el_talk17 ()
	Talk( 1, " ��˼ҵ���Ӷ: ������֪,һĿ��Ȼ,�ұ����˧,Ϊʲô���������ǲ�������......")
	Text( 1, "��Ҫȥʥ�֣�", JumpPage, 2 )

	InitTrigger()
	TriggerAction( 1, GoTo, 275, 1775, "garner")
	Talk( 2, "��˼ҵ���Ӷ:�пճ�����,�¶���ʱ�򡢿��ֵ�ʱ��Ͳ�֪���Ƿ���ֵ�ʱ��..." )
	Text( 2, "��ʼ����",MultiTrigger, GetMultiTrigger(), 1 )

	AddNpcMission ( 6141 )
	AddNpcMission ( 6142 )
	AddNpcMission ( 6143 )
	
end

---------------------------------------------------------
--							--
--							--
--		��į֮��2��[��˼ҵ�ŮӶ]			--
--							--
--		151��134			--
----------------------------------------------------------
function el_talk18 ()
	Talk( 1, "��˼ҵ�ŮӶ: ��Ϊһ��ŮӶ���ܲ���ע�Լ����˵�˽����,�������ӻ��������.")


	AddNpcMission ( 6144 )
	AddNpcMission ( 6145 )
	AddNpcMission ( 6146 )
	
end

---------------------------------------------------------
--							--
--							--
--		��į֮��3��[��˼ҵ�С��]			--
--							--
--		63��311			--
----------------------------------------------------------
function el_talk19 ()
	Talk( 1, " ��˼ҵ�С��: ��֪����Ư��,��Ҫ������.")


	AddNpcMission ( 6147 )
	AddNpcMission ( 6148 )
	AddNpcMission ( 6149 )
	
end

---------------------------------------------------------
--							--
--							--
--		��į֮��4��[��˼ҵ��ػ���]			--
--							--
--		261��70			--
----------------------------------------------------------
function el_talk20 ()
	Talk( 1, "��˼ҵ��ػ���: �ػ����������𾴵�.���ʲôʱ������������������")


	AddNpcMission ( 6150 )
	AddNpcMission ( 6151 )
	AddNpcMission ( 6152 )
	
end

---------------------------------------------------------
--							--
--							--
--		��į֮��5��[��˼ҵĹܼ�]			--
--							--
--		542��54			--
----------------------------------------------------------
function el_talk21 ()
	Talk( 1, "��˼ҵĹܼ�: �ܼҹܼ�,���˲��ܾ����ҵļ�.")


	AddNpcMission ( 6153 )
	AddNpcMission ( 6154 )
	AddNpcMission ( 6155 )
end

---------------------------------------------------------
--							--
--							--
--		��į֮��6��[ħ����˵�����]			--
--							--
--		541��268			--
----------------------------------------------------------
function el_talk22 ()
	Talk( 1, "ħ����˵�����: �ҿ��ܲ���Rock������������,��һ������ĵ�һ��.")


	AddNpcMission ( 6156 )
	AddNpcMission ( 6157 )
	AddNpcMission ( 6158 )
	
end

---------------------------------------------------------
--							--
--							--
--		����4��[��˼ҵ�����]			--
--							--
--		154,912			--
----------------------------------------------------------
function el_talk23 ()
	Talk( 1, "��˼ҵ�����: ��������������...����,����,�����!")


	AddNpcMission ( 6159 )
	AddNpcMission ( 6160 )

end

---------------------------------------------------------
--							--
--							--
--		�ﵺ[�ﵺ����С��]			--
--							--
--		2423,3186			--
----------------------------------------------------------
function el_talk24 ()
	Talk( 1, "�ﵺ����С��: ����������!��ӭ�����ﵺ,�������ҵ�һ�ε���,ףԸ��������ȹ�һ����ܰ���õ�ʱ��.лл!")


	AddNpcMission ( 6162 )
	AddNpcMission ( 6163 )
	AddNpcMission ( 6164 )
	AddNpcMission ( 6165 )
	
end

---------------------------------------------------------
--							--
--							--
--		����[��Ʒ����רԱ]			--
--							--
--		1307,500			--
----------------------------------------------------------
function pre_talk()
	Talk( 1, "���,������Ʒ����רԱ,ר�Ÿ���������Ʒ����ҵ�,ϣ��������ϲ��.")
	InitTrigger()
	TriggerCondition( 1, HasNoItem,  1872 )
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerAction( 1, GiveItem, 1872, 1, 4)
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "��ȡ����Ӳ�ұ���", MultiTrigger, GetMultiTrigger(), 1) 

	InitTrigger()
	TriggerCondition( 1, HasNoItem,  1570 )
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerAction( 1, GiveItem, 1570, 1, 4)
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "��ȡ�����ӡ����", MultiTrigger, GetMultiTrigger(), 1) 

	InitTrigger()
	TriggerCondition( 1, HasNoItem,  1571 )
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerAction( 1, GiveItem, 1571, 1, 4)
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "��ȡ��������ӡ����", MultiTrigger, GetMultiTrigger(), 1) 

	Talk( 2, "�㱳�����Ѿ��и������͵ı�����,����Ҫ����ȡ,Ҳ�п�����ı���û�ո���.")
end

-----------------------------------------------------------------------------
-- ������-----����С�⵶�š�ɺ���š��޾��ţ���ϳ����޸ĵĴ��շǷ��������⣩
-----------------------------------------------------------------------------

function k_talk001()

	Talk( 1, "... ..." )

end


---------------------------------------------------------
--							--
--							--
--		�ĵ�[������]			--
--							--
--		3734��2661			--
----------------------------------------------------------
function el_talk25 ()
	Talk( 1, "������: ��������ʵ�Ǹ�������,��һ������ʲô��?���������,��ϣ������������֮ǰ������.")

---------------------�ﵺ����
	AddNpcMission ( 6176 )
	AddNpcMission ( 6178 )
	AddNpcMission ( 6181 )
	AddNpcMission ( 6183 )
	
end

---------------------------------------------------------
--							--
--							--
--		�ĵ�����ʹ������			--
--							--
--		3714��2664			--
----------------------------------------------------------
function el_talk26 ()
	Talk( 1, " �ĵ�����ʹ������: ��Ϊ�Ұ�������,���������˴���ʹ,�ͱ���ȥ����.")
	Text( 1, "��Ҫȥ�ﵺ!", JumpPage, 2 )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 500 )
	TriggerAction( 1, TakeMoney, 500 )
	TriggerAction( 1, GoTo, 2414,3174, "darkblue")
	TriggerFailure( 1, JumpPage, 3 )
	Talk( 2, "�ĵ�����ʹ������:ʱ����������������..." )
	Text( 2, "��ʼ����",MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3, "�ĵ�����ʹ������:����,��ô�Ҳ��500����Ű�!������˻���Ϊ��û����" )
end

----------------------------------------------------------

	--ʥ����[�л��]		

--		221150,278125				
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function el_talk29 ()
	
	
	Talk( 1, "�л��:ʥ������!������ܰ��ʥ������ô����û����ζ��ʥ������?" )		

	
	Text(1, "�����ζ�Ļ���", JumpPage, 2)
	Text(1, "���ʥ�����", JumpPage, 5)
	
	
---------------------�����ζ�Ļ���
	InitTrigger()
	TriggerCondition( 1, HasItem, 2886, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, TakeItem, 2886,10 )
	TriggerAction( 1, GiveItem, 2895, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4)
	Talk( 2, "�л��:����Ҫԭ����10������,��Ȼ�㻹Ҫ֧������10000�����ҵ������")
	Text(2, "ȷ������",  MultiTrigger, GetMultiTrigger(), 1)

	Talk(3, "�л��:�����Ҿ����������ζ����,�Ͽ쳢��,ζ����ô��?" )

	Talk( 5, "�л��:��ʥ������,ÿ��ֻ������Ŷ!")
	Text(5, "��һ������ʥ�����",  JumpPage, 6)
	Text(5, "�ڶ�������ʥ�����",  JumpPage, 7)
	Text(5, "����������ʥ�����", JumpPage, 8)
	---------------------���ʥ�����
	InitTrigger()
	TriggerCondition( 1, NoRecord, 815 )
	TriggerCondition( 1, HasItem, 2895, 10 )
	TriggerCondition( 1, HasItem, 2894, 1 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, TakeItem, 2895,10 )
	TriggerAction( 1, TakeItem, 2894,1 )
	TriggerAction( 1, GiveItem, 2898, 1 , 4)
	TriggerAction( 1, SetRecord, 815 )
	TriggerAction( 1, JumpPage, 12 )
	TriggerFailure( 1, JumpPage, 9 )
	Talk( 6, "Ҫ��ʥ����Ϳɲ�����,����Ҫԭ����10����ζ�Ļ����1��ʥ��õ������,ʥ��õ�����Ϻ������̳��ܹ��ҵ�,��Ȼ�������ϼ����㻹Ҫ֧������10000�����ҵ������,����ֻ��Ϊÿ����3��")
	Text( 6, "ȷ������",  MultiTrigger, GetMultiTrigger(), 1)

	

	---------------------���ʥ�����
	InitTrigger()
	TriggerCondition( 1, HasRecord, 815 )
	TriggerCondition( 1, NoRecord, 816 )
	TriggerCondition( 1, HasItem, 2895, 10 )
	TriggerCondition( 1, HasItem, 2894, 1 )
	TriggerCondition( 1, HasMoney,1000000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 1000000 )
	TriggerAction( 1, TakeItem, 2895,10 )
	TriggerAction( 1, TakeItem, 2894,1 )
	TriggerAction(1, GiveItem, 2898, 1 , 4)
	TriggerAction( 1, SetRecord, 816 )
	TriggerAction( 1, JumpPage, 12 )
	TriggerFailure( 1, JumpPage, 10 )
	Talk(7, "������ʥ�����?����Ҫԭ����10����ζ�Ļ����1��ʥ��õ������,ʥ��õ�����Ϻ������̳��ܹ��ҵ�,��Ȼ�������ϼ����㻹Ҫ֧������1���򺣵��ҵ������,����ֻ��Ϊÿ����3��")
	Text( 7, "ȷ������",  MultiTrigger, GetMultiTrigger(), 1)

	---------------------���ʥ�����
	InitTrigger()
	TriggerCondition( 1, HasRecord, 816 )
	TriggerCondition( 1, NoRecord, 817 )
	TriggerCondition( 1, HasItem, 2895, 10 )
	TriggerCondition( 1, HasItem, 2894, 1 )
	TriggerCondition( 1, HasMoney, 10000000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 10000000 )
	TriggerAction( 1, TakeItem, 2895,10 )
	TriggerAction( 1, TakeItem, 2894,1 )
	TriggerAction( 1, GiveItem, 2898, 1 , 4)
	TriggerAction( 1, SetRecord, 817 )
	TriggerAction( 1, JumpPage, 12 )
	TriggerFailure( 1, JumpPage,11 )
	Talk(8, "������ʥ�����?����Ҫԭ����10����ζ�Ļ����1��ʥ��õ������,ʥ��õ�����Ϻ������̳��ܹ��ҵ�,��Ȼ�������ϼ����㻹Ҫ֧������1ǧ�򺣵��ҵ������,����ֻ��Ϊÿ����3��")
	Text( 8, "ȷ������",  MultiTrigger, GetMultiTrigger(), 1)
	Talk( 9, "�л��:�������ƺ�û���㹻�������Ƶ���Ʒ���Ǯ��!���ı�������Ҫ��һ���ո�Ŷ.��ȷ���ǵ�һ����ʥ�������?ֻ����3��.")
	Talk( 10, "�л��:�������ƺ�û���㹻�������Ƶ���Ʒ���Ǯ��!���ı�������Ҫ��һ���ո�Ŷ.��ȷ���ǵڶ�����ʥ�������?ֻ����3��Ŷ.")
	Talk( 11, "�л��:�������ƺ�û���㹻�������Ƶ���Ʒ���Ǯ��!���ı�������Ҫ��һ���ո�Ŷ.��ȷ���ǵ�������ʥ�������?ֻ����3��Ŷ.")
	Talk( 4, "�л��:�������ƺ�û���㹻�������Ƶ���Ʒ���Ǯ��!��ȷ�����ı���δ����,��������Ҫ��һ���ո�Ŷ.")
	Talk(12, "�л��:�����Ҿ��������ʥ�����,�Ͽ쳢��,ζ����ô��?" )
	AddNpcMission ( 6191 )
end 

------------------------------------------------------------
-- ʥ����-----ʥ�����˵�ϴ�»�
------------------------------------------------------------
function el_talk30()
	
	InitFuncList()
	AddFuncList( GiveItem,	0817	,	1	,	4)
	AddFuncList( GiveItem,	0818	,	1	,	4)
	AddFuncList( GiveItem,	0819	,	1	,	4)
	AddFuncList( GiveItem,	0867	,	1	,	4)
	AddFuncList( GiveItem,	0868	,	1	,	4)
	AddFuncList( GiveItem,	0869	,	1	,	4)
	AddFuncList( GiveItem,	0872	,	1	,	4)
	AddFuncList( GiveItem,	0873	,	1	,	4)
	AddFuncList( GiveItem,	0874	,	1	,	4)
	AddFuncList( GiveItem,	1630	,	2	,	4)
	AddFuncList( GiveItem,	1631	,	1	,	4)
	AddFuncList( GiveItem,	1632	,	1	,	4)
	AddFuncList( GiveItem,	1633	,	2	,	4)
	AddFuncList( GiveItem,	1634	,	1	,	4)
	AddFuncList( GiveItem,	1635	,	1	,	4)
	AddFuncList( GiveItem,	1636	,	2	,	4)
	AddFuncList( GiveItem,	1637	,	1	,	4)
	AddFuncList( GiveItem,	1638	,	1	,	4)
	AddFuncList( GiveItem,	1639	,	2	,	4)
	AddFuncList( GiveItem,	1640	,	1	,	4)
	AddFuncList( GiveItem,	1641	,	1	,	4)
	AddFuncList( GiveItem,	1642	,	2	,	4)
	AddFuncList( GiveItem,	1643	,	1	,	4)
	AddFuncList( GiveItem,	1644	,	1	,	4)
	AddFuncList( GiveItem,	3360	,	1	,	4)
	AddFuncList( GiveItem,	3361	,	1	,	4)
	AddFuncList( GiveItem,	3362	,	1	,	4)
	AddFuncList( GiveItem,	3363	,	1	,	4)
	AddFuncList( GiveItem,	3364	,	1	,	4)
	AddFuncList( GiveItem,	3365	,	1	,	4)
	AddFuncList( GiveItem,	3366	,	1	,	4)
	AddFuncList( GiveItem,	3367	,	1	,	4)
	AddFuncList( GiveItem,	3425	,	1	,	4)
	AddFuncList( GiveItem,	3426	,	1	,	4)
	AddFuncList( GiveItem,	3427	,	1	,	4)
	AddFuncList( GiveItem,	3428	,	1	,	4)
	AddFuncList( GiveItem,	3429	,	1	,	4)
	AddFuncList( GiveItem,	3430	,	1	,	4)
	AddFuncList( GiveItem,	3431	,	1	,	4)
	AddFuncList( GiveItem,	3432	,	1	,	4)
	AddFuncList( GiveItem,	3433	,	1	,	4)
	AddFuncList( GiveItem,	1804	,	1	,	4)
	AddFuncList( GiveItem,	1805	,	1	,	4)
	AddFuncList( GiveItem,	1806	,	1	,	4)
	AddFuncList( GiveItem,	1807	,	1	,	4)
	AddFuncList( GiveItem,	1808	,	1	,	4)
	AddFuncList( GiveItem,	1809	,	1	,	4)
	AddFuncList( GiveItem,	1810	,	1	,	4)
	AddFuncList( GiveItem,	1811	,	1	,	4)
	AddFuncList( GiveItem,	1787	,	1	,	4)
	AddFuncList( GiveItem,	1788	,	1	,	4)
	AddFuncList( GiveItem,	1789	,	1	,	4)
	AddFuncList( GiveItem,	1790	,	1	,	4)
	AddFuncList( GiveItem,	1791	,	1	,	4)
	AddFuncList( GiveItem,	1792	,	1	,	4)
	AddFuncList( GiveItem,	1793	,	1	,	4)
	AddFuncList( GiveItem,	3930	,	1	,	4)
	AddFuncList( GiveItem,	3931	,	1	,	4)
	AddFuncList( GiveItem,	3932	,	1	,	4)
	AddFuncList( GiveItem,	3930	,	1	,	4)
	AddFuncList( GiveItem,	3931	,	1	,	4)
	AddFuncList( GiveItem,	3932	,	1	,	4)
	AddFuncList( GiveItem,	3930	,	1	,	4)
	AddFuncList( GiveItem,	3931	,	1	,	4)
	AddFuncList( GiveItem,	3932	,	1	,	4)
	AddFuncList( GiveItem,	3930	,	1	,	4)
	AddFuncList( GiveItem,	3931	,	1	,	4)
	AddFuncList( GiveItem,	3932	,	1	,	4)
	AddFuncList( GiveItem,	3930	,	1	,	4)
	AddFuncList( GiveItem,	3931	,	1	,	4)
	AddFuncList( GiveItem,	3932	,	1	,	4)
	AddFuncList( GiveItem,	3930	,	1	,	4)
	AddFuncList( GiveItem,	3930	,	1	,	4)
	AddFuncList( GiveItem,	3931	,	1	,	4)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3927, 1 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 3927, 1 )
	TriggerAction( 1, RandFunction, GetFuncList(), GetNumFunc() )
	TriggerFailure( 1, JumpPage, 2 )
	Talk( 1, "ʥ������!����һ̨���ϵ���ϴ��,���������ϴ�����һ��,����Ҫ��ϴô?ÿ��200G." )
	Text( 1, "��ϴ����", MultiTrigger, GetMultiTrigger(), 1)
	Text( 1, "��ϴʥ������", JumpPage, 3)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2892, 1 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, TakeItem, 2892, 1 )
	TriggerAction( 1, GiveItem, 2893, 1 , 4)
	TriggerAction( 1, JumpPage, 4)
	TriggerFailure( 1, JumpPage, 2 )
	Talk( 3, "��!����ĺ���!��ϴ��ô��ĺ��ӱ���֧��10000������" )
	Text( 3, "ȷ����ϴ", MultiTrigger, GetMultiTrigger(), 1)
	Talk( 4, "��Ư���ĺ���!�򿪻��о�ϲ��" )
	Talk( 2, "��ϴʧ��,û��֧���㹻�Ľ�Ǯ����û����Ҫ��ϴ����Ʒ" )
	AddNpcMission ( 6195 )
end


---------------------------------------------------------
--							--
--							--
--		���Ǳ�[ʥ����������]			--
--							--
--		��1216��550��			--
----------------------------------------------------------
function el_talk27 ()
	Talk( 1, "����: ʥ������!Ը��õ���������ֿ���õ�ף��.��Ҫ�õ������˵�ʥ��������?ȥ�̳���һ��ʥ�������ʸ�֤��Ϳ������������ȡ����ʥ�����˵�������.")
	--------------����ʥ������
	AddNpcMission	(6185)
end


---------------------------------------------------------
--							--
--							--
--		��������վ[ʥ�����˿���˹Ī˹]		--
--							--
--		��2111��557��			--
----------------------------------------------------------
function el_talk28 ()
	Talk( 1, "����˹Ī˹: ʥ������!����˵��ʥ������?����һ���������ֵ�����.")
	--------------����ʥ������
	AddNpcMission	(6186)

end

---------------------------------ʥ�������л�᳤
function Xmas_talk01 ()
	Talk( 1, "ʥ�������л�᳤:Merry Christmas~��Ϊ���������ʥ����׼���˺ܶ�Ļ���Ŷ,������Ȥ�뿴һ����?")
	Text( 1, "���ҿ���������ʲô�ö�����." , JumpPage , 2 )
	Text( 1, "����,��û�տ�", CloseTalk )

	Talk( 2, "������Ĺ�غͱ�ĵط��ɲ�һ��Ŷ,ֻ����ʹ��ʥ��Ӳ��������.")
	Text( 2, "��֮��", JumpPage , 3)
	Text( 2, "��֮��", JumpPage , 4)
	Text( 2, "��֮��", JumpPage , 5)
	Text( 2, "��֮��", JumpPage , 6)
	Text( 2, "��ʨҩ��", JumpPage , 7)
	Text( 2, "ӥ��ҩ��", JumpPage , 8)
	Text( 2, "���ҩ��", JumpPage , 9)
	Text( 2, "��һҳ", JumpPage , 10)

	Talk( 10, "������Ĺ�غͱ�ĵط��ɲ�һ��Ŷ,ֻ����ʹ��ʥ��Ӳ��������.")
	Text( 10, "��һҳ", JumpPage , 2)
	Text( 10, "��ţҩ��", JumpPage, 11)
	Text( 10, "ʥ��ҩ��", JumpPage, 12)
	Text( 10, "28�񱳰�", JumpPage, 13)
	Text( 10, "Ħ��С��", JumpPage, 14)
	Text( 10, "��Ӿ����", JumpPage, 15)
	Text( 10, "������", JumpPage, 16)
	Text( 10, "��һҳ", JumpPage , 17)

	Talk( 17, "������Ĺ�غͱ�ĵط��ɲ�һ��Ŷ,ֻ����ʹ��ʥ��Ӳ��������.")
	Text( 17, "��һҳ", JumpPage , 10)
	Text( 17, "���������Ա�", JumpPage, 18)
	Text( 17, "���ٳɳ���", JumpPage, 19)
	Text( 17, "ʥ�����˵�����", JumpPage, 20)

	Talk( 3, "�һ���֮���Ļ��ܹ���Ҫ���250W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 250 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 250 )
	TriggerAction( 1, GiveItem, 270, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 3, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 4, "�һ���֮���Ļ��ܹ���Ҫ���250W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 250 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 250 )
	TriggerAction( 1, GiveItem, 269, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 4, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 5, "�һ���֮���Ļ��ܹ���Ҫ���250W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 250 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 250 )
	TriggerAction( 1, GiveItem, 268, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 5, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6, "�һ���֮���Ļ��ܹ���Ҫ���250W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 250 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 250 )
	TriggerAction( 1, GiveItem, 267, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 6, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 7, "�һ���ʨҩ���Ļ��ܹ���Ҫ���50W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 50 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 50 )
	TriggerAction( 1, GiveItem, 897, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 7, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 8, "�һ�ӥ��ҩ���Ļ��ܹ���Ҫ���50W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 50 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 50 )
	TriggerAction( 1, GiveItem, 894, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 8, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 9, "�һ����ҩ���Ļ��ܹ���Ҫ���50W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 50 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 50 )
	TriggerAction( 1, GiveItem, 893, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 9, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 11, "�һ���ţҩ���Ļ��ܹ���Ҫ���50W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 50 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 50 )
	TriggerAction( 1, GiveItem, 895, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 11, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 12, "�һ�ʥ��ҩ���Ļ��ܹ���Ҫ���50W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 50 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 50 )
	TriggerAction( 1, GiveItem, 896, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 12, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 13, "�һ�28�񱳰��Ļ��ܹ���Ҫ���1000W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 1000 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 1000 )
	TriggerAction( 1, GiveItem, 3088, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 13, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 14, "�һ�Ħ��С�ӵĻ��ܹ���Ҫ���1000W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 1000 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 1000 )
	TriggerAction( 1, GiveItem, 680, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 14, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 15, "�һ���Ӿ�����Ļ��ܹ���Ҫ���80W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 80 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 80 )
	TriggerAction( 1, GiveItem, 849, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 15, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 16, "�һ��������Ļ��ܹ���Ҫ���55W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 55 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 55 )
	TriggerAction( 1, GiveItem, 3047, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 16, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 18, "�һ����������Ա��Ļ��ܹ���Ҫ���500W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 500 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 500 )
	TriggerAction( 1, GiveItem, 610, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 18, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 19, "�һ����ٳɳ����Ļ��ܹ���Ҫ���20W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 20 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 20 )
	TriggerAction( 1, GiveItem, 578, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 19, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 20, "�һ�ʥ�����˵������Ļ��ܹ���Ҫ���2000W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 2000 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 2000 )
	TriggerAction( 1, GiveItem, 2877, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 20, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 25, "лл��Ĺ��,ף��ʥ�����!")

	Talk( 26, "�㱳���ں���û���㹻��ʥ��Ӳ��Ŷ,Ҳ�п�����ı���û�ո�򱳰�����.")
end

-------------------------------------------------------------------ʥ���ӻ���A
function Xmas_talk02 ()
	Talk( 1, "ʥ���ӻ���:ʥ���ڵ���~��Ϊ�����ܰ��ʥ��׼���˺ܶ����,����Ȥ��һ����?��϶���ϲ����!")
	Text( 1, "���ҿ���������ʲô�ö�����." , JumpPage , 2 )
	Text( 1, "���ˣ���û�տ�", CloseTalk )

	Talk( 2, "������Ĺ�غͱ�ĵط��ɲ�һ��Ŷ,ֻ����ʹ��ʥ��Ӳ��������.")
	Text( 2, "�߼���ľ��", JumpPage , 3)
	Text( 2, "�߼����", JumpPage , 4)
	Text( 2, "�߼������һ�ȯ", JumpPage , 5)
	Text( 2, "�߼����Ƕһ�ȯ", JumpPage , 6)
	Text( 2, "��֮��", JumpPage , 7)
	Text( 2, "�߼������", JumpPage , 8)
	Text( 2, "������Ϸȯ", JumpPage , 9)
	Text( 2, "��һҳ", JumpPage , 10)

	Talk( 10, "������Ĺ�غͱ�ĵط��ɲ�һ��Ŷ,ֻ����ʹ��ʥ��Ӳ��������.")
	Text( 10, "��һҳ", JumpPage , 2)
	Text( 10, "������", JumpPage, 11)
	Text( 10, "������", JumpPage, 12)
	Text( 10, "����", JumpPage, 13)
	Text( 10, "��ƻ��", JumpPage, 14)
	Text( 10, "�ǻ۹�", JumpPage, 15)
	Text( 10, "�����", JumpPage, 16)
	Text( 10, "а�����������ٻ�ȯ", JumpPage , 17)

	Talk( 3, "�һ��߼���ľ���Ļ��ܹ���Ҫ���50W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 50 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 50 )
	TriggerAction( 1, GiveItem, 207, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 3, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 4, "�һ��߼����Ļ��ܹ���Ҫ���50W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 50 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 50 )
	TriggerAction( 1, GiveItem, 208, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 4, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 5, "�һ��߼������һ�ȯ�Ļ��ܹ���Ҫ���1000W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 1000 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 1000 )
	TriggerAction( 1, GiveItem, 581, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 5, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6, "�һ��߼����Ƕһ�ȯ�Ļ��ܹ���Ҫ���1000W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 1000 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 1000 )
	TriggerAction( 1, GiveItem, 582, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 6, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 7, "�һ���֮���Ļ��ܹ���Ҫ���15W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 15 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 15 )
	TriggerAction( 1, GiveItem, 2440, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 7, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 8, "�һ��߼�����صĻ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 1024, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 8, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 9, "�һ�������Ϸȯ�Ļ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 3083, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 9, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 11, "�һ������񻨵Ļ��ܹ���Ҫ���9W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 9 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 9 )
	TriggerAction( 1, GiveItem, 3082, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 11, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 12, "�һ������񻨵Ļ��ܹ���Ҫ���9W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 9 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 9 )
	TriggerAction( 1, GiveItem, 3081, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 12, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 13, "�һ�����Ļ��ܹ���Ҫ���15W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 15 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 15 )
	TriggerAction( 1, GiveItem, 3080, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 13, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 14, "�һ���ƻ���Ļ��ܹ���Ҫ���50W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 50 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 50 )
	TriggerAction( 1, GiveItem, 3291, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 14, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 15, "�һ��ǻ۹��Ļ��ܹ���Ҫ���20W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 20 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 20 )
	TriggerAction( 1, GiveItem, 3290, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 15, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 16, "�һ�����ݵĻ��ܹ���Ҫ���100W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 100 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 100 )
	TriggerAction( 1, GiveItem, 3336, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 16, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 17, "�һ�а������������ٻ�ȯ�Ļ��ܹ���Ҫ���2000W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 2000 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 2000 )
	TriggerAction( 1, GiveItem, 3013, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 17, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 25, "лл��Ĺ��,ף��ʥ�����!")

	Talk( 26, "�㱳���ں���û���㹻��ʥ��Ӳ��Ŷ,Ҳ�п�����ı���û�ո�򱳰�����.")
	AddNpcMission ( 6197 )
end

-------------------------------------------------------------------ʥ���ӻ���B
function Xmas_talk03 ()
	Talk( 1, "ʥ����Ʒ��:Merry Christmas~��Ϊ���������ʥ����׼���˺ܶ�Ļ���Ŷ,������Ȥ�뿴һ����?")
	Text( 1, "���ҿ���������ʲô�ö�����." , JumpPage , 2 )
	Text( 1, "����,��û�տ�", CloseTalk )

	Talk( 2, "������Ĺ�غͱ�ĵط��ɲ�һ��Ŷ,ֻ����ʹ��ʥ��Ӳ��������.")
	Text( 2, "�����������㷢�ٻ�ȯ", JumpPage , 3)
	Text( 2, "����սʿͳ���ٻ�ȯ", JumpPage , 4)
	Text( 2, "��Ӿ����", JumpPage , 5)
	Text( 2, "������", JumpPage , 6)
	Text( 2, "�߼�������Լ", JumpPage , 7)
	Text( 2, "�м�������Լ", JumpPage , 8)
	Text( 2, "����������Լ", JumpPage , 9)
	Text( 2, "��һҳ", JumpPage , 10)

	Talk( 10, "������Ĺ�غͱ�ĵط��ɲ�һ��Ŷ,ֻ����ʹ��ʥ��Ӳ��������.")
	Text( 10, "��һҳ", JumpPage , 2)
	Text( 10, "ʯ�Ĵ߻���", JumpPage, 11)
	Text( 10, "Һ��߻���", JumpPage, 12)
	Text( 10, "ʳ�Ĵ߻���", JumpPage, 13)
	Text( 10, "����߻���", JumpPage, 14)
	Text( 10, "��ͷ�߻���", JumpPage, 15)
	Text( 10, "ֲ��߻���", JumpPage, 16)
	Text( 10, "ëƤ�߻���", JumpPage , 17)

	Talk( 3, "�һ������������㷢�ٻ�ȯ�Ļ��ܹ���Ҫ���2000W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 2000 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 2000 )
	TriggerAction( 1, GiveItem, 3014, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 3, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 4, "�һ�����սʿͳ���ٻ�ȯ�Ļ��ܹ���Ҫ���2000W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 2000 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 2000 )
	TriggerAction( 1, GiveItem, 3012, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 4, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 5, "�һ���Ӿ�����Ļ��ܹ���Ҫ���80W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 80 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 80 )
	TriggerAction( 1, GiveItem, 849, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 5, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6, "�һ��������Ļ��ܹ���Ҫ���55W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 55 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 55 )
	TriggerAction( 1, GiveItem, 3047, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 6, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 7, "�һ��߼�������Լ�Ļ��ܹ���Ҫ���100W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 100 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 100 )
	TriggerAction( 1, GiveItem, 2607, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 7, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 8, "�һ��м�������Լ�Ļ��ܹ���Ҫ���200W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 200 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 200 )
	TriggerAction( 1, GiveItem, 2606, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 8, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 9, "�һ�����������Լ�Ļ��ܹ���Ҫ���60W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 60 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 60 )
	TriggerAction( 1, GiveItem, 2605, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 9, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 11, "�һ�ʯ�Ĵ߻����Ļ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 2625, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 11, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 12, "�һ�Һ��߻����Ļ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 2638, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 12, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 13, "�һ�ʳ�Ĵ߻����Ļ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 2630, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 13, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 14, "�һ�����߻����Ļ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 2634, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 14, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 15, "�һ���ͷ�߻����Ļ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 2635, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 15, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 16, "�һ�ֲ��߻����Ļ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 2636, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 16, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 17, "�һ�ëƤ�߻����Ļ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 2637, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 17, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 25, "лл��Ĺ��,ף��ʥ�����!")

	Talk( 26, "�㱳���ں���û���㹻��ʥ��Ӳ��Ŷ,Ҳ�п�����ı���û�ո�򱳰�����.")
end
-------------------------------------------------------------------ʥ�����ˡ������ҿ�
function Xmas_talk04 ()
	Talk( 1, "ʥ�����ˡ������ҿ�:������,�����ҵĶ��������ʥ�����㽫�ޱ��Ҹ�,��Ҫ��ԥ��,�����°�~")
	Text( 1, "���ҿ���������ʲô�ö�����." , JumpPage , 2 )
	Text( 1, "����,��û�տ�", CloseTalk )

	Talk( 2, "������Ĺ�غͱ�ĵط��ɲ�һ��Ŷ,ֻ����ʹ��ʥ��Ӳ��������.")
	Text( 2, "ʥ�������̻�", JumpPage , 3)
	Text( 2, "ʥ�����̻�", JumpPage , 4)
	Text( 2, "����I", JumpPage , 5)
	Text( 2, "����LOVE", JumpPage , 6)
	Text( 2, "����U", JumpPage , 7)
	Text( 2, "������", JumpPage , 8)
	Text( 2, "���Ͱ�", JumpPage , 9)
	Text( 2, "��һҳ", JumpPage , 10)

	Talk( 10, "������Ĺ�غͱ�ĵط��ɲ�һ��Ŷ,ֻ����ʹ��ʥ��Ӳ��������.")
	Text( 10, "��һҳ", JumpPage , 2)
	Text( 10, "������", JumpPage, 11)
	Text( 10, "õ�廨", JumpPage, 12)
	Text( 10, "��ħ���", JumpPage, 13)
	Text( 10, "�����ɿ���", JumpPage, 14)

	Talk( 3, "�һ�ʥ�������̻��Ļ��ܹ���Ҫ���180W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 180 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 180 )
	TriggerAction( 1, GiveItem, 2870, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 3, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 4, "�һ�ʥ�����̻��Ļ��ܹ���Ҫ���1000W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 1000 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 1000 )
	TriggerAction( 1, GiveItem, 2871, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 4, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 5, "�һ�����I�Ļ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 3354, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 5, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6, "�һ�����LOVE�Ļ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 3355, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 6, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 7, "�һ�����U�Ļ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 3356, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 7, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 8, "�һ������ҵĻ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 3359, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 8, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 9, "�һ����Ͱ��Ļ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 3357, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 9, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 11, "�һ�������Ļ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 3358, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 11, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 12, "�һ�õ�廨�Ļ��ܹ���Ҫ���20W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 20 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 20 )
	TriggerAction( 1, GiveItem, 3343, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 12, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 13, "�һ���ħ���Ļ��ܹ���Ҫ���100W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 100 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 100 )
	TriggerAction( 1, GiveItem, 906, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 13, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 14, "�һ������ɿ����Ļ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 3077, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 14, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 25, "лл��Ĺ��,ף��ʥ�����!")

	Talk( 26, "�㱳���ں���û���㹻��ʥ��Ӳ��Ŷ,Ҳ�п�����ı���û�ո�򱳰�����.")
	AddNpcMission ( 6199 )
end

-------------------------------------------------------------------ʥ�����ˡ��ҿ�����
function Xmas_talk05 ()
	Talk( 1, "ʥ�����ˡ��ҿ�����:���ѽ,ʥ������!�Һܿ��ǰ�,�ҵĶ������Ҹ���,�����°�~")
	Text( 1, "���ҿ���������ʲô�ö�����." , JumpPage , 2 )
	Text( 1, "����,��û�տ�", CloseTalk )

	Talk( 2, "������Ĺ�غͱ�ĵط��ɲ�һ��Ŷ,ֻ����ʹ��ʥ��Ӳ��������.")
	Text( 2, "������", JumpPage , 3)
	Text( 2, "����֮��", JumpPage , 4)
	Text( 2, "�������", JumpPage , 5)
	Text( 2, "<�����׳�>������", JumpPage , 6)
	Text( 2, "<��������>������", JumpPage , 7)
	Text( 2, "<�������>������", JumpPage , 8)
	Text( 2, "<������Ǯ��>������", JumpPage , 9)
	Text( 2, "��һҳ", JumpPage , 10)

	Talk( 10, "������Ĺ�غͱ�ĵط��ɲ�һ��Ŷ,ֻ����ʹ��ʥ��Ӳ��������.")
	Text( 10, "��һҳ", JumpPage , 2)
	Text( 10, "<�����ڿ�>������", JumpPage, 11)
	Text( 10, "<����ƭ��>������", JumpPage, 12)
	Text( 10, "<����ɵ��>������", JumpPage, 13)
	Text( 10, "<��������>������", JumpPage, 14)

	Talk( 3, "�һ�������Ļ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 904, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 3, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 4, "�һ�����֮��Ļ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 935, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 4, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 5, "�һ��������Ļ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 905, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 5, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6, "�һ�<�����׳�>������Ļ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 1130, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 6, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 7, "�һ�<��������>������Ļ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 1131, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 7, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 8, "�һ�<�������>������Ļ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 1037, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 8, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 9, "�һ�<������Ǯ��>������Ļ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 1129, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 9, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 11, "�һ�<�����ڿ�>������Ļ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 1038, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 11, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 12, "�һ�<����ƭ��>������Ļ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 1132, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 12, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 13, "�һ�<����ɵ��>������Ļ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 1133, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 13, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 14, "�һ�<��������>������Ļ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 1039, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 14, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 25, "лл��Ĺ��,ף��ʥ�����!")

	Talk( 26, "�㱳���ں���û���㹻��ʥ��Ӳ��Ŷ,Ҳ�п�����ı���û�ո�򱳰�����.")
end

-------------------------------------------------------------------ʥ�����ˡ�ѧ��
function Xmas_talk06 ()
	Talk( 1, "ʥ�����ˡ�ѧ��:Merry Christmas~��Ϊ���������ʥ����׼���˺ܶ�Ļ���Ŷ,������Ȥ�뿴һ����?")
	Text( 1, "���ҿ���������ʲô�ö�����." , JumpPage , 2 )
	Text( 1, "����,��û�տ�", CloseTalk )

	Talk( 2, "������Ĺ�غͱ�ĵط��ɲ�һ��Ŷ,ֻ����ʹ��ʥ��Ӳ��������.")
	Text( 2, "����ʿ�߼�����", JumpPage , 3)
	Text( 2, "��ӡʦ�߼�����", JumpPage , 4)
	Text( 2, "ʥְ�߸߼�����", JumpPage , 5)
	Text( 2, "�ѻ��ָ߼�����", JumpPage , 6)
	Text( 2, "�޽�ʿ�߼�����", JumpPage , 7)
	Text( 2, "˫��ʿ�߼�����", JumpPage , 8)
	Text( 2, "����ʿ�м�����", JumpPage , 9)
	Text( 2, "��һҳ", JumpPage , 10)

	Talk( 10, "������Ĺ�غͱ�ĵط��ɲ�һ��Ŷ,ֻ����ʹ��ʥ��Ӳ��������.")
	Text( 10, "��һҳ", JumpPage , 2)
	Text( 10, "��ӡʦ�м�����", JumpPage, 11)
	Text( 10, "ʥְ���м�����", JumpPage, 12)
	Text( 10, "�ѻ����м�����", JumpPage, 13)
	Text( 10, "�޽�ʿ�м�����", JumpPage, 14)
	Text( 10, "˫��ʿ�м�����", JumpPage, 15)
	Text( 10, "ħ���߻�", JumpPage, 16)
	Text( 10, "��һҳ", JumpPage , 17)

	Talk( 17, "������Ĺ�غͱ�ĵط��ɲ�һ��Ŷ,ֻ����ʹ��ʥ��Ӳ��������.")
	Text( 17, "��һҳ", JumpPage , 10)
	Text( 17, "���������", JumpPage, 18)
	Text( 17, "����ˮ��", JumpPage, 19)
	Text( 17, "������", JumpPage, 20)
	Text( 17, "���黤��", JumpPage, 21)
	Text( 17, "ħ����", JumpPage, 22)

	Talk( 3, "�һ�����ʿ�߼�����Ļ��ܹ���Ҫ���120W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 120 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 120 )
	TriggerAction( 1, GiveItem, 3272, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 3, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 4, "�һ���ӡʦ�߼�����Ļ��ܹ���Ҫ���120W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 120 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 120 )
	TriggerAction( 1, GiveItem, 3271, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 4, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 5, "�һ�ʥְ�߸߼�����Ļ��ܹ���Ҫ���120W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 120 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 120 )
	TriggerAction( 1, GiveItem, 3270, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 5, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6, "�һ��ѻ��ָ߼�����Ļ��ܹ���Ҫ���120W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 120 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 120 )
	TriggerAction( 1, GiveItem, 3269, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 6, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 7, "�һ��޽�ʿ�߼�����Ļ��ܹ���Ҫ���120W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 120 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 120 )
	TriggerAction( 1, GiveItem, 3268, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 7, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 8, "�һ�˫��ʿ�߼�����Ļ��ܹ���Ҫ���120W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 120 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 120 )
	TriggerAction( 1, GiveItem, 3267, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 8, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 9, "�һ�����ʿ�м�����Ļ��ܹ���Ҫ���100W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 100 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 100 )
	TriggerAction( 1, GiveItem, 3266, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 9, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 11, "�һ���ӡʦ�м�����Ļ��ܹ���Ҫ���100W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 100 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 100 )
	TriggerAction( 1, GiveItem, 3265, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 11, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 12, "�һ�ʥְ���м�����Ļ��ܹ���Ҫ���100W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 100 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 100 )
	TriggerAction( 1, GiveItem, 3264, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 12, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 13, "�һ��ѻ����м�����Ļ��ܹ���Ҫ���100W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 100 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 100 )
	TriggerAction( 1, GiveItem, 3263, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 13, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 14, "�һ��޽�ʿ�м�����Ļ��ܹ���Ҫ���100W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 100 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 100 )
	TriggerAction( 1, GiveItem, 3262, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 14, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 15, "�һ�˫��ʿ�м�����Ļ��ܹ���Ҫ���100W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 100 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 100 )
	TriggerAction( 1, GiveItem, 3261, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 15, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 16, "�һ�ħ���߻��Ļ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 3300, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 16, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 18, "�һ�����������Ļ��ܹ���Ҫ���25W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 25 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 25 )
	TriggerAction( 1, GiveItem, 3114, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 18, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 19, "�һ�����ˮ���Ļ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 3463, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 19, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 20, "�һ��������Ļ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 3046, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 20, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 21, "�һ����黤�ӵĻ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 3301, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 21, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 22, "�һ�ħ���ݵĻ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 3462, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 22, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 25, "лл��Ĺ��,ף��ʥ�����!")

	Talk( 26, "�㱳���ں���û���㹻��ʥ��Ӳ��Ŷ,Ҳ�п�����ı���û�ո�򱳰�����.")
end

----------------------------------------------------ʥ����ƶ�
function Xmas_talk07 ()
	Talk ( 1, "��������ʥ��ѩ�׵Ķ���.���ѣ�Ϊʲô��������Щ���ĵ���ף���ȥɱ¾һ����?����,���Ǻ�ɳᰳ��������Ļ�,��¹��ѩ��,ȥ�ɵ�����,Ȼ���֤�ݴ��������Ҳ���������.")
--	Text ( 1, "�Ҵ�����һ�ٸ��𼦵���ë", JumpPage, 2)
--	Text ( 1, "�Ҵ�����һ�ٸ���¹�ļ��", JumpPage, 3)
--	Text ( 1, "�Ҵ�����һ�ٸ�ѩ�˵�����", JumpPage, 4)
	Text ( 1, "����ȥʥ��������", JumpPage, 5)
	Text ( 1, "Ϊʲô����Ҫɱ¾��Щ�����Ĺ�����?", JumpPage, 10)

--	Talk ( 2, "��ȷ��Ҫ����һ�ٸ��𼦵���ë���һ�һ��ʥ�������?")
--	InitTrigger()
--	TriggerCondition( 1, HasItem, 2879, 100 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerAction( 1, TakeItem, 2879, 100 )
--	TriggerAction( 1, GiveItem, 2882, 1, 4 )
--	TriggerAction( 1, CpHuojiNum )
--	TriggerAction( 1, JumpPage, 6 )
--	TriggerFailure( 1, JumpPage, 7 )
--	Text ( 2, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)
--
--	Talk ( 3, "��ȷ��Ҫ����һ�ٸ���¹�ļ�Ǹ��һ�һ��ʥ�������?")
--	InitTrigger()
--	TriggerCondition( 1, HasItem, 2881, 100 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerAction( 1, TakeItem, 2881, 100 )
--	TriggerAction( 1, GiveItem, 2882, 1, 4 )
--	TriggerAction( 1, CpMiluNum )
--	TriggerAction( 1, JumpPage, 6 )
--	TriggerFailure( 1, JumpPage, 7 )
--	Text ( 3, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)
--
--	Talk ( 4, "��ȷ��Ҫ����һ�ٸ�ѩ�˵������һ�һ��ʥ�������?")
--	InitTrigger()
--	TriggerCondition( 1, HasItem, 2880, 100 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerAction( 1, TakeItem, 2880, 100 )
--	TriggerAction( 1, GiveItem, 2882, 1, 4 )
--	TriggerAction( 1, CpXuerenNum )
--	TriggerAction( 1, JumpPage, 6 )
--	TriggerFailure( 1, JumpPage, 7 )
--	Text ( 4, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk ( 5, "����һ����5��������,����ȥ��һ����?")
	Text ( 5, "ʥ��������A", GoTosdBoss, 1 )
	Text ( 5, "ʥ��������B", GoTosdBoss, 2 )
	Text ( 5, "ʥ��������C", GoTosdBoss, 3 )
	Text ( 5, "ʥ��������D", GoTosdBoss, 4 )
	Text ( 5, "ʥ��������E", GoTosdBoss, 5 )

	Talk ( 6, "ף���и����ֵ�ʥ��")

	Talk ( 7, "�㱳���ں���û���㹻�ĵ���Ŷ,Ҳ�п�����ı����������߱�����û�пո�.")

	Talk ( 10, "�����������,����������Ͻ��㹻�����Ĺ�Ʒ����,��ô�Ҿ�����ʥ�����������ٻ�������ǿ��ĺڰ�BOSS,������ô���ܻ������Ǿ������Ǹÿ��ǵ�����!")

	AddNpcMission ( 6187 )
	AddNpcMission ( 6188 )
	AddNpcMission ( 6189 )
	AddNpcMission ( 6193 )
	AddNpcMission ( 6204 )
end

----------------------------------------------------ʥ����ʥ������
function Xmas_talk08 ()
	Talk ( 1, "ʥ������:�Ǻ�~ʥ������~~���������Ϊ��Ҷһ�ʥ����ר�õĹ���Ӳ��,������������ʥ������Shopping�Ļ��Ǿ����Һ���.")

	Text ( 1, "����һ�ʥ����ԪӲ��", JumpPage, 2)
	Text ( 1, "����һ�ʥ������ԪӲ��", JumpPage, 3)
	Text ( 1, "�����ʥ����ԪӲ�Ҷһ��غ�����", JumpPage, 4)
	Text ( 1, "�����ʥ������ԪӲ�Ҷһ��غ�����", JumpPage, 5)
	Text ( 1, "����ر��Ǳ�", JumpPage, 6)

	Talk ( 2, "�һ�һ��ʥ����ԪӲ����Ҫ10000�ĺ�����,��ȷ��Ҫ�һ���?")
	InitTrigger()
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, GiveItem, 2962, 1, 4 )
	TriggerAction( 1, JumpPage, 9 )
	TriggerFailure( 1, JumpPage, 10 )
	Text ( 2, "ȷ�϶һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk ( 3, "�һ�һ��ʥ������ԪӲ����Ҫ100W�ĺ�����,��ȷ��Ҫ�һ���?")
	InitTrigger()
	TriggerCondition( 1, HasMoney, 1000000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 1000000 )
	TriggerAction( 1, GiveItem, 2963, 1, 4 )
	TriggerAction( 1, JumpPage, 9 )
	TriggerFailure( 1, JumpPage, 10 )
	Text ( 3, "ȷ�϶һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk ( 4, "��ȷ��Ҫ��ʥ����ԪӲ�һ���10000��������?")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2962, 1)
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2962,1 )
	TriggerAction( 1, AddMoney, 10000 )
	TriggerFailure( 1, JumpPage, 11 )
	Text ( 4, "ȷ�϶һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk ( 5, "��ȷ��Ҫ��ʥ������ԪӲ�һ���100W��������?")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2963, 1)
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2963,1 )
	TriggerAction( 1, AddMoney, 1000000 )
	TriggerFailure( 1, JumpPage, 11 )
	Text ( 5, "ȷ�϶һ�", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerAction( 1, GoTo, 1318,510, "darkblue")
	Talk( 6, "��ȷ��Ҫ�뿪����ص����Ǳ���?")
	Text( 6, "��ʼ����",MultiTrigger, GetMultiTrigger(), 1 )

	Talk ( 9, "ף���и����ֵ�ʥ����~")
	Talk ( 10, "���Ǯ����Ŷ,Ҳ�п�����ı�������������û���㹻�Ŀո�.")
	Talk ( 11, "��û�д˵���,Ҳ�п�����ı���������.")
	AddNpcMission ( 6201 )
	AddNpcMission ( 6202 )
end

-----------------------------------------���Ǳ�ʥ���崫��ʹ
function movexmas_talk()
	Talk ( 1, "ʥ���崫��ʹ:Merry Christmas~��ȥʥ��������ȥ���˵��,�㲻˵����ô֪����?������˵�㲻��ȥ��ƫƫ����ȥ,Ҳ����������ȥ��ƫƫ�������!")
	Text ( 1, "����ȥʥ����", JumpPage, 2)
	Text ( 1, "���˺�����,�һ�������", CloseTalk)


	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 11 )
	TriggerAction( 1, GoTo, 144,136, "07xmas" )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2, GoTo, 144,136, "07xmas")
	TriggerFailure( 2, JumpPage, 3 )
	Talk( 2, "������ʥ�����������ڿ����ڼ�,ֻҪ֧������500�������ҾͿ��������ȥ,�������10�����µ����ֵĻ��ҿ������Ϊ�����Ŷ.")
	Text( 2, "��ʼ����",MultiTrigger, GetMultiTrigger(), 2 )

	Talk( 3, "ʥ���崫��ʹ:ûǮ��?�Ǻܱ�Ǹ����Ϊ�������Ŷ.")
	AddNpcMission ( 6190 )
	AddNpcMission ( 6192 )
	AddNpcMission ( 6194 )
	AddNpcMission ( 6196 )
	AddNpcMission ( 6198 )
	AddNpcMission ( 6200 )
end

---------------------------------------ʥ������������ʹ
function movexmas_talk01 ()
	Talk ( 1, "ʥ������~����ص�ʥ������?���ٶ��������?�Ǻ�,������ķ������ȫ��ѵ�Ŷ!")
	Text ( 1, "�����ʥ����", JumpPage, 2)


	InitTrigger()
	TriggerAction( 1, GoTo, 144,136, "07xmas")
	Talk( 2, "׼��������?.")
	Text( 2, "��ʼ����",MultiTrigger, GetMultiTrigger(), 1 )
end

-------------------------------------����Ϊ��������--------bragi
function Xmas_talk09 ()
	Talk ( 1, "ʥ�������ڻ����������~")
	AddNpcMission ( 6203 )
end

function Xmas_talk10 ()
	Talk ( 1, "��������:Ϊ�����������ֵĽ���,��������һ��Χ�����������!")
end

function Xmas_talk11 ()
	Talk ( 1, "��������:ѩ��...�赸...����...��...ѩ��...ʥ����...����...���б����������ʥ������?")
end

function Xmas_talk12 ()
	Talk ( 1, "��������:����Χ������Ƚ�ů�Ͱ�!���ѣ�Ҫ��Ҫ��һ�𿾻��,��������?")
end

function Xmas_talk13 ()
	Talk ( 1, "��������:�һ��Ǿ����ҵ����˲�������ģ��㲻������Ϊ��?")
end

function Xmas_talk14 ()
	Talk ( 1, "��������:����������ʲô��?����������Ļ���?��������������հ�.")
end

function Xmas_talk15 ()
	Talk ( 1, "��������:��Ȼ��̫ϲ���⺮�������,����ʥ���ڵķ�Χ��ð�!�ÿ��İ�!")
end

-------------------------------------����ΪС����Ⱥ------bragi
function Xmas_talk16 ()
	Talk ( 1, "С¹�߱�:û����ʥ����ô?��������,�������,ʥ�����м��пúܴ��ʥ����,��˵����ʥ������Ը�Ǻ������.��ȥ���԰�~~~!����,ף��ʥ������!")
end

function Xmas_talk17 ()
	Talk ( 1, "����������:���Ұ�!С���ҷ���������Ŷ!")
end

function Xmas_talk18 ()
	Talk ( 1, "С����:ιι,��ס����,��Ҳ��Ҫһ������!��һ��,������?")
end

function Xmas_talk19 ()
	Talk ( 1, "���ֵ�ѩ����:��������!��Ŀڴ��ﶼװ��Щʲô��?��������ǹ���?��Ư���������?")
end

function Xmas_talk20 ()
	Talk ( 1, "Сè��˿:������,������,����춣��~~~!����.����һ���Ǹ����ֵ�ʥ����,�����������Ŷ.��˵ʥ���ڵ�����ҹ12���ʱ��,���ص���תʥ������ڻ�����ڴ���.������ȥ����Ŷ~~�ǵöഩ��.")
end

function Xmas_talk21 ()
	Talk ( 1, "����è�ɴ�:���ɿ���ζ����������?����һЩ!!")
end

function Xmas_talk22 ()
	Talk ( 1, "С·��˿:ʥ���ڿ�!!���ǿ�,�����������������ĺ���ñ��,��Ư����!")
end

function Xmas_talk23 ()
	Talk ( 1, "��������:�õĺõĺ�����,����׼���˺ܶ�����,ÿ���˶����е�,��Ҫ��Ŷ!")
end

function Xmas_talk24 ()
	Talk ( 1, "С��ķ:��˭Ը�����һ��ȥ��ѩ�̵���?������˵��,��Ҫ������!!!����һ���һᳬ���ƶ���,���Ż���ëȥ����֤���ҵ�ʵ��,������ʥ�������·���Ȫ������Ǹ��һ�.")
	AddNpcMission ( 6205 )
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[�����Ĵ���]			--
--							--
--		3901, 4301			--
----------------------------------------------------------
function peter_talk01 ()
	Talk( 1, "�����Ĵ���: ���ҽд�������ʵ��һ��Ҳ�������ҵ����̿��Ǹߴ�180Ŷ��")

end

--------------------------------------------------------
--							--
--							--
--		ʥ����[�ο͡�����]			--
--							--
--		10802, 5602             		--
----------------------------------------------------------
function peter_talk02 ()
	Talk( 1, "�ο͡�����:���ڵ�ʱ��,�������еķ���,������ʹ��һ���ʥ��,����һ���������ɵ���,��,��Ҫ���߱�������˭,һ���һ�Ҫȥ���ʥ�����˷���Ʒ��,��ʱ�����ܲ����ϳ�����,��������")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[���ֵİְ�]		--
--							--
--		11803, 6103			        --
----------------------------------------------------------
function peter_talk03 ()
	Talk( 1, "���ֵİְ�:������İְ�,��˵��˵��,ʥ���ڸø��������㻨Ǯ,��Ϊ������ȫ�������ǰ��Ե��ǹ�,��Ȼ,����һ��,�����Լ��ĺ���,��,�ҵ����־͸����ˡ�")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[�ο͡���Ŭ]			--
--							--
--		5904, 4704			--
----------------------------------------------------------
function peter_talk04 ()
	Talk( 1, "�ο͡���Ŭ: ��!ʥ������,��һ������һ�����������ʥ���İ�?����,��ȥ��ʥ������,�����кö���ŵĶ�����!")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[��������]			--
--							--
--		3001 ��11701			--
----------------------------------------------------------
function peter_talk05 ()
	Talk( 1, "��������: ����!����!ʥ���ڰ�������,��һ���ľ�ֻ��`����`��������")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[����С��]			--
--							--
--		7031, 4902			--
----------------------------------------------------------
function peter_talk06 ()
	Talk( 1, "����С��: come on!ʥ�������ô��?����ī����װ��?������,���Ҹ�����,��һ��ʥ�����˵��·��ſᡣ")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[�����״���]			--
--							--
--		3101, 11901			--
----------------------------------------------------------
function peter_talk07 ()
	Talk( 1, "�����״���: �㻳�ɺ��ϵĺ������ղ���ʥ������?����,ʥ�����˻��ú��Ӷ������!")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[��Ա����]			--
--							--
--		4401, 8401			--
----------------------------------------------------------
function peter_talk08 ()
	Talk( 1, "��Ա����: �������Ǵ󷢴ȱ���,�����ʥ������ֻ��Ư��Ư��,������ڴ���������μ�ʥ���ۻ���!̫�����ˡ�")
end


--------------------------------------------------------
--							--
--							--
--		ʥ����[��ξ����]			--
--							--
--		25801, 23101			--
----------------------------------------------------------
function peter_talk09 ()
	Talk( 1, "��ξ����: ����Ľ������ջ����������˶���Ĵ���,����ͺ�����һ���氡,������Ϊ����,�����Լ���ְ��,ף����ÿ���!")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[����ʿ��]			--
--							--
--		19401, 3901			--
----------------------------------------------------------
function peter_talk10 ()
	Talk( 1, "����ʿ��: �Ҹұ�֤,��������ﶼ���Ծ��������ʥ���Ŀ���,���Բ����в����ĵ��·���,����Ϊʲô?û����������ľ���ô!")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[�ο͡�����˹]			--
--							--
--		7301, 23601			        --
----------------------------------------------------------
function peter_talk11 ()
	Talk( 1, "�ο͡�����˹: ��ϲ��ʥ����,��ϲ����������,�ö�ɰ��Ķ����,������һ��ʥ�������͸���ô?")
end


--------------------------------------------------------
--							--
--							--
--		ʥ����[С̯�����]			--
--							--
--		13901, 6101			--
----------------------------------------------------------
function peter_talk12 ()
	Talk( 1, "С̯�����: ��������ܹ�׬��Ǯ,��Ҳ���ð�̯��,�Ǻ�,�����Ұڿ����˿��򵽳��ĵĶ���ʱ���ĵ�����,�Ҿ;���ֵ��")
end


--------------------------------------------------------
--							--
--							--
--		ʥ����[С̯���ж�]			--
--							--
--		3301, 21601			        --
----------------------------------------------------------
function peter_talk13 ()
	Talk( 1, "С̯���ж�:��ȥ���氮��ô?�����ûȥ��,��һ��Ҫ�����������Ʒ,��˵��ȥ����?�Ǿ͸����������ʥ������Ʒ�˰�!")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����С̯������			--
--							--
--		8701, 20401			         --
----------------------------------------------------------
function peter_talk14 ()
	Talk( 1, "ʥ����С̯������: �����ʱ��,ֻ�н�����Ʒ�������˿ϻ�Ǯ�ġ�")
end
 
--------------------------------------------------------
--							--
--							--
--		ʥ����С̯��Ү��			--
--							--
--		25501, 12401    			--
----------------------------------------------------------
function peter_talk15 ()
	Talk( 1, "ʥ����С̯��Ү��: ��!ʥ������!���Ҵ��������·��ÿ�ô?")
end


--------------------------------------------------------
--							--
--							--
--		ʥ����[��������]			--
--							--
--		24801, 9801			        --
----------------------------------------------------------
function peter_talk16 ()
	Talk( 1, "��������: ���Ǻ��Ļ����,����ʥ����ҹ�ս���������,ÿ����ʱ���Ҿ�����������ʱΧ������������龰��Ҫ��ϧ���ڰ���")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[�׺���³��]			--
--							--
--		13001,23601			--
----------------------------------------------------------
function peter_talk17 ()
	Talk( 1, "�׺���³��:��������ж��?��ʥ��������ǰ���Ƕ��Ǻ�����,�ҿ����Ǻ���Ŷ,������������ѩ�̡�")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[��̫̫����]			--
--							--
--		23901, 22701	         		--
----------------------------------------------------------
function peter_talk18 ()
	Talk( 1, "��̫̫����: ��!��!�û����İ�������ʥ���ڵ����ǰ�!�ҿ��Ǹ����ĳ�,�����·��Ҫ�ǲ�֪��������!")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[������׶�]			--
--							--
--		24601, 19701			--
----------------------------------------------------------
function peter_talk19 ()
	Talk( 1, "������׶�: ��?��Ҫ����˵��?��,�Һܾ�û���˽�̸��,�ϴκ���˵����ʲôʱ��?������?����˭?��Ҫ����˵��?��������������ʲô���š�")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[С̯���ȿ���]			--
--							--
--		23201, 20001			--
----------------------------------------------------------
function peter_talk20 ()
	Talk( 1, "С̯���ȿ���: HOoooo,ʥ���ڿ���!������ôϲ��ʥ����,Ϊʲô���ø�������?��˵ʥ�������ȸ�������ĺ��ӷ�����Ŷ!")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[С��������]			--
--							--
--		22801, 5401			--
----------------------------------------------------------
function peter_talk21 ()
	Talk( 1, "С��������:�ء���Ҫ�ְ֡����쵽��ʥ�����˵ĵ���,����ȴ�Ҳ����ְ��ˡ�")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[��β�Ϳ�˹]			--
--							--
--		25601, 4301			--
----------------------------------------------------------
function peter_talk22 ()
	Talk( 1, "��β�Ϳ�˹:��ǰʥ���ھ���������,�����Ҫ�Լ�ȥ������,ʥ�������͵��������ǺͰְ�ǰ����͵͵��ؼҵ�һ��,�Ҷ�֪��,������?")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[СŮ��������]			--
--							--
--		21501, 4101			--
----------------------------------------------------------
function peter_talk23 ()
	Talk( 1, "СŮ��������:Ӵ~~ʥ������!һ���ĵĹ��ڰ�!ʲô?��û�̻�?�ٺ�,������Ŷ,����ȥʥ���������·����г�ȥ����~~~���кܶ�����������Ʒ.�ǵ�ȥ����Ŷ.")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[ŷ��]			--
--							--
--		20601, 7601			--
----------------------------------------------------------
function peter_talk24 ()
	Talk( 1, "ŷ��:�ڹ��ϵĶ�����һ������,�������лƽ���,��������������.���ȥѧ�����鼼�����԰�!")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[��ķ]			--
--							--
--		19401, 23501			--
----------------------------------------------------------
function peter_talk25 ()
	Talk( 1, "��ķ: �����������,��ȥ�Ǳ�,��,һ������ĵط�,�Ǳ��кܶ�ö�������!")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[���]			--
--							--
--		19401, 20101			--
----------------------------------------------------------
function peter_talk26 ()
	Talk( 1, "���:�����ο��Ҿͻ�����������˵~��~~�������~��")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[�ֿ�]			        --
--							--
--		17301, 23501		         	--
----------------------------------------------------------
function peter_talk27 ()
	Talk( 1, "�ֿ�: ����˵�Ҳ��ôӳ������ܳ�������������ʥ�����˵ĵ���,���Ŵ��������ΧЦ�Ķ���ʹ,��ҲЦ��ֱ��������,ʥ������!��ס��,�����ʥ��,�㿴�����������ֿ��ڽ���!")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[����]			--
--							--
--		15701, 23401			--
----------------------------------------------------------
function peter_talk28 ()
	Talk( 1, "����: �ҳ��İ�ô?����ʥ��������õ�������!")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[ʥ��ѩ���׸���]			--
--							--
--		15101, 25901			        --
----------------------------------------------------------
function peter_talk29 ()
	Talk( 1, "ʥ��ѩ���׸���: �Ҳ���˵��,����,����ף��ʥ������!")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[ʥ��ѩ�˿�����]			--
--						 	--
--		6601, 8301			        --
----------------------------------------------------------
function peter_talk30 ()
	Talk( 1, "ʥ��ѩ�˿�����: HELLO!!ʥ������,��֪�������и�������ʯͷ���ٵĹ���ô?����,��û������?�ǽ������Ҫץ��ʥ�����˸��㽲,�������Ц�ѵ�!!")
end




--------------------------------------------------------
--							--
--							--
--		ʥ����[ʥ����ָ��Ա]		--
--						 	--
--		                         	        --
----------------------------------------------------------
function Xmas_talk25 ()
	Talk( 1, "ʥ������!��ӭ����������ʥ����,�ҿ������������ͨ,��ʲô��֪���ľ������Ұ�")
	Text( 1, "ʥ����Ļ",JumpPage, 2  )
	Text( 1, "ʥ���������ʲô",JumpPage, 3  )
	Text( 1, "ʥ��������",JumpPage, 4 )

	Talk( 2, "���ʥ�����������?����ϴ��(83,39)��......����Ի𼦴����?���л��(220,40)��......����㲥ף����?����ʥ����(144,158)��......���˽�����?��㷵�ذ�....")
	Text( 2, "����",JumpPage, 1  )

	Talk( 3, "����Ե�(132,246)����,������һ���ܴ�ļ���,�����򵽺ܶഫ˵�еĶ���Ŷ����������Ҫ��ʥ������(146,171)�Ѻ����һ���ʥ��Ӳ�ң����ǵ�ӪҵԱ���ǲ���ֱ����Ǯ�ġ�����ȥ������")
	Text( 3, "����",JumpPage, 1  )

	Talk( 4, "��˵ʥ�����������м���ֲ���BOSS,��������û���㹻�Ĺ�Ʒ���ٻ�����,����Ե�(146,252)�ҿƶ�����!")
	Text( 4, "����",JumpPage, 1  )
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[С����]			--
--						 	--
--		9801, 23501			        --
----------------------------------------------------------
function peter_talk31 ()
	Talk( 1, "С����:�������������ʥ�������������ʱ�����ץס���ڼ���ô?�Ҿ��Թ�,��ϧʧ����,������������İ취������ץס��,��֪��ʲô�취?����������ܸ�����! ")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[����С��]			--
--						 	--
--		14501, 26802			        --
----------------------------------------------------------
function peter_talk32 ()
	Talk( 1, "����С��:Ŷ��~ʥ�����˸��Ҵ�����һ��Ͱ���������,���������Ҷ������Ҹ�����!ʥ��������~")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[����Լ��]			--
--						 	--
--		18101, 23903			        --
----------------------------------------------------------
function peter_talk33 ()
	Talk( 1, "����Լ��:��~ʥ������~���˶�����Լ��,�����Ҳ֪���ҵ����,�����Ҳ�����,�Ҷ�֪��С��������а취ץסʥ�����˵�����!")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[˵Ц������¹]			--
--						 	--
--		22201, 22804			        --
----------------------------------------------------------
function peter_talk34 ()
	Talk( 1, "˵Ц������¹:����˵����?����һ��ͬ��,��ʮ���ó�����,��һ����Խ��Խ��,����ͱ���˸��ٹ�·!")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[����������]			--
--						 	--
--		24801, 8105			        --
----------------------------------------------------------
function peter_talk35 ()
	Talk( 1, "����������:ʥ���ڵ�����,���һ��Ҫ�ǵð����ӹ���ʥ������Ŷ,ʥ�����˻�������������.")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[��³ɭ��ʿ]			--
--						 	--
--		5501, 19506			        --
----------------------------------------------------------
function peter_talk36 ()
	Talk( 1, "��³ɭ��ʿ:��һ���������Ѿ��㹻��,��ʮ������������,��������޵�.Ү�ֱ�����,�ҵ�����.")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[��³]			--
--						 	--
--		11301, 23907			        --
----------------------------------------------------------
function peter_talk37 ()
	Talk( 1, "��³: ÿ�����ϱ��ŵ�����ĥʱ����~�����㻨��,��������һ��ۻ��!һ���˵�ʥ���������ֲ�����,�Ҿ��ڳ����Ÿı���.")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[����]			--
--						 	--
--		26301, 17308			        --
----------------------------------------------------------
function peter_talk38 ()
	Talk( 1, "����: ��֪����?��˵��һ�ֽ������ܱ�ʯ�Ķ���,��˵������ʹ���߱�ĸ�ǿ��,��������������ұ��ǵ���������!")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[���ɶ�]			--
--						 	--
--		17401, 6009			        --
----------------------------------------------------------
function peter_talk39 ()
	Talk( 1, "���ɶ�:�������Ƕ��ڵ㲥ף��,��Ҳ����㲥һ�����ﻰ����Ҫ�ӹ���!��Ҫ��н�ż�!��Ҫ�ý���!������,�����ϰ�֪������˵��.")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[������]			--
--						 	--
--		3401, 20011			        --
----------------------------------------------------------
function peter_talk40 ()
	Talk( 1, "������: ������Ȼ����~����ҲҪע�ⰲȫŶ!�ҿɲ���һ�������ҽԺ�￴���в�����! ")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[�Ͽ�˹]			--
--						 	--
--		7401, 20511			        --
----------------------------------------------------------
function peter_talk41 ()
	Talk( 1, "�Ͽ�˹:�ö��ѩ��,�ѵ���ô��ĵط���Ҫ����ɨ��?��ϣ�����ʥ�������ܵõ���������һ̨��ѩ��!")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[����]			--
--						 	--
--		20901, 21912			        --
----------------------------------------------------------
function peter_talk42 ()
	Talk( 1, "����: �Ӻ����޾���Ư��������վ�������ǰ,�Ҷ���������Ҫ��ϧ����,��վ��½���Ϲ�ʥ����,ʵ���Ǽ�ֵ����ף����,�һ��ÿ���˴�����ף��!�������ڵ������!ʥ������!")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[������]			--
--						 	--
--		26401, 13813			        --
----------------------------------------------------------
function peter_talk43 ()
	Talk( 1, "������: ��һֱ�뵱һ��������!��Ҫ���ҵĴ����ı�ʥ�����˷�������Ҫ��!����ʥ�����˻�Ҫ�����Ұ�������������.")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[�ӷ�]			--
--						 	--
--		24801, 8114			        --
----------------------------------------------------------
function peter_talk44 ()
	Talk( 1, "�ӷ�: ֪��ʥ���ڸ���ô����?�Ҿ������������ɳ����,������,�������ǧ������������!")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[����С���]			--
--						 	--
--		26101, 8915			        --
----------------------------------------------------------
function peter_talk45 ()
	Talk( 1, "����С���: �Ҵ���������?�����õ�廨��ô����?Сѩ�˺�С��¹��������ô����?��,��Щ�Ҷ�֪��,��ֻ����������֪��֪��.")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[��˹��]			--
--						 	--
--		19301, 4016			        --
----------------------------------------------------------
function peter_talk46 ()
	Talk( 1, "��˹��: ʥ���ڵ���,��������Ϊ��ΰ���ð�ռҵ���ҲӦ��ͣ�����ͺ����Ǵ��ѩ��,�ú�����һ����ζ�Ļ��˰�.")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[����]			--
--						 	--
--		19101, 8417			        --
----------------------------------------------------------
function peter_talk47 ()
	Talk( 1, "����: �����ʥ������?�һ��ǵ�һ�ι����������~�����Ǹ�ʥ�������ֺ�������ɰ�,�����ǿô���ʥ����Ҳ��Ư��Ŷ,��ȥ������?")
end

------------------------------------------------------------
-- ���صĿ���ѧ��
------------------------------------------------------------
function dina_talk07()
	
	Talk( 1, "���صĿ���ѧ��:��Ȼ���㷢�����˵Ĵ���!����ʵ��һ��רְ�о���ѩ��ӡ�Ŀ���ѧ�ҡ����ˣ�������б���ѩ��ӡ���������������Ұ��⣬��Ȼ����������ѵģ�" )
	Text( 1, "��Ҫ���ѩ��ӡ", JumpPage, 2)

	Talk( 2, "���صĿ���ѧ��:��,��Ȼ���ҵ���,���ҾͲ��ƴ���,�ҿ��Խ����Щ��ӡ,ֻҪ������ҵ��������Ķ����Ϳ�����." )
	Text( 2, "�����ὣ", JumpPage, 4)
	Text( 2, "�����ؽ�", JumpPage, 5)
	Text( 2, "��ѩ��", JumpPage, 6)
	Text( 2, "ʥѩ��", JumpPage, 7)
	Text( 2, "ѩ�´�", JumpPage, 8)
	Text( 2, "ѩħǹ", JumpPage, 9)
	Text( 2, "���ȹ�", JumpPage, 10)
	Text( 2, "��һҳ", JumpPage, 3)
	
	Talk( 3, "���صĿ���ѧ��:��,��Ȼ���ҵ���,���ҾͲ��ƴ���,�ҿ��Խ����Щ��ӡ,ֻҪ������ҵ��������Ķ����Ϳ�����." )
	Text( 3, "����֮��", JumpPage, 11)
	Text( 3, "��˪֮��", JumpPage, 12)
	

	
	InitTrigger()
	TriggerCondition( 1, HasItem, 2525, 1 )
	TriggerCondition( 1, HasItem, 4274, 1 )
	TriggerCondition( 1, HasMoney, 1000000 )
	TriggerAction( 1, TakeMoney, 1000000 )
	TriggerAction( 1, TakeItem, 2525, 1 )
	TriggerAction( 1, TakeItem, 4274, 1 )
	TriggerAction( 1, GiveItem, 2526, 1, 4 )
	TriggerFailure( 1, JumpPage, 13 )
	Talk( 4, "���صĿ���ѧ��:Ҫ��������ὣ�ķ�ӡ��������������Ʒ:��ѩ��ӡ�������ὣ����ѩŮ�ʵ�����x1,Ϊ���о������ӡ�Ҹ����˼���Ĵ���,��֧������100�򺣵�����Ϊ������" )
	Text( 4, "��������ὣ�ķ�ӡ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2525, 1 )
	TriggerCondition( 1, HasItem, 4275, 1 )
	TriggerCondition( 1, HasMoney, 1000000 )
	TriggerAction( 1, TakeMoney, 1000000 )
	TriggerAction( 1, TakeItem, 2525, 1 )
	TriggerAction( 1, TakeItem, 4275, 1 )
	TriggerAction( 1, GiveItem, 2526, 1, 4 )
	TriggerFailure( 1, JumpPage, 13 )
	Talk( 5, "���صĿ���ѧ��:Ҫ��������ؽ��ķ�ӡ��������������Ʒ:��ѩ��ӡ�������ؽ�����ѩŮ�ʵ�����x1,Ϊ���о������ӡ�Ҹ����˼���Ĵ���,��֧������100�򺣵�����Ϊ������" )
	Text( 5, "��������ؽ��ķ�ӡ", MultiTrigger, GetMultiTrigger(), 1)
	
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 2525, 1 )
	TriggerCondition( 1, HasItem, 4281, 1 )
	TriggerCondition( 1, HasMoney, 1000000 )
	TriggerAction( 1, TakeMoney, 1000000 )
	TriggerAction( 1, TakeItem, 2525, 1 )
	TriggerAction( 1, TakeItem, 4281, 1 )
	TriggerAction( 1, GiveItem, 2526, 1, 4 )
	TriggerFailure( 1, JumpPage, 13 )
	Talk( 6, "���صĿ���ѧ��:Ҫ�����ѩ���ķ�ӡ��������������Ʒ:��ѩ��ӡ�Ŀ�ѩ������ѩŮ�ʵ�����x1,Ϊ���о������ӡ�Ҹ����˼���Ĵ���,��֧������100�򺣵�����Ϊ������" )
	Text( 6, "�����ѩ���ķ�ӡ", MultiTrigger, GetMultiTrigger(), 1)
	

	InitTrigger()
	TriggerCondition( 1, HasItem, 2525, 1 )
	TriggerCondition( 1, HasItem, 4282, 1 )
	TriggerCondition( 1, HasMoney, 1000000 )
	TriggerAction( 1, TakeMoney, 1000000 )
	TriggerAction( 1, TakeItem, 2525, 1 )
	TriggerAction( 1, TakeItem, 4282, 1 )
	TriggerAction( 1, GiveItem, 2526, 1, 4 )
	TriggerFailure( 1, JumpPage, 13 )
	Talk( 7, "���صĿ���ѧ��:Ҫ���ʥѩ�ܵķ�ӡ��������������Ʒ:��ѩ��ӡ��ʥѩ�ܡ���ѩŮ�ʵ�����x1,Ϊ���о������ӡ�Ҹ����˼���Ĵ���,��֧������100�򺣵�����Ϊ������" )
	Text( 7, "���ʥѩ�ܵķ�ӡ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2525, 1 )
	TriggerCondition( 1, HasItem, 4276, 1 )
	TriggerCondition( 1, HasMoney, 1000000 )
	TriggerAction( 1, TakeMoney, 1000000 )
	TriggerAction( 1, TakeItem, 2525, 1 )
	TriggerAction( 1, TakeItem, 4276, 1 )
	TriggerAction( 1, GiveItem, 2526, 1, 4 )
	TriggerFailure( 1, JumpPage, 13 )
	Talk( 8, "���صĿ���ѧ��:Ҫ���ѩ�´̵ķ�ӡ��������������Ʒ:��ѩ��ӡ��ѩ�´̡���ѩŮ�ʵ�����x1,Ϊ���о������ӡ�Ҹ����˼���Ĵ���,��֧������100�򺣵�����Ϊ������" )
	Text( 8, "���ѩ�´̵ķ�ӡ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2525, 1 )
	TriggerCondition( 1, HasItem, 4277, 1 )
	TriggerCondition( 1, HasMoney, 1000000 )
	TriggerAction( 1, TakeMoney, 1000000 )
	TriggerAction( 1, TakeItem, 2525, 1 )
	TriggerAction( 1, TakeItem, 4277, 1 )
	TriggerAction( 1, GiveItem, 2526, 1, 4 )
	TriggerFailure( 1, JumpPage, 13 )
	Talk( 9, "���صĿ���ѧ��:Ҫ���ѩħǹ�ķ�ӡ��������������Ʒ:��ѩ��ӡ��ѩħǹ����ѩŮ�ʵ�����x1,Ϊ���о������ӡ�Ҹ����˼���Ĵ���,��֧������100�򺣵�����Ϊ������" )
	Text( 9, "���ѩħǹ�ķ�ӡ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2525, 1 )
	TriggerCondition( 1, HasItem, 4278, 1 )
	TriggerCondition( 1, HasMoney, 1000000 )
	TriggerAction( 1, TakeMoney, 1000000 )
	TriggerAction( 1, TakeItem, 2525, 1 )
	TriggerAction( 1, TakeItem, 4278, 1 )
	TriggerAction( 1, GiveItem, 2526, 1, 4 )
	TriggerFailure( 1, JumpPage, 13 )
	Talk( 10, "���صĿ���ѧ��:Ҫ������ȹ��ķ�ӡ��������������Ʒ:��ѩ��ӡ�ĺ��ȹ�����ѩŮ�ʵ�����x1,Ϊ���о������ӡ�Ҹ����˼���Ĵ���,��֧������100�򺣵�����Ϊ������" )
	Text( 10, "������ȹ��ķ�ӡ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2525, 1 )
	TriggerCondition( 1, HasItem, 4279, 1 )
	TriggerCondition( 1, HasMoney, 1000000 )
	TriggerAction( 1, TakeMoney, 1000000 )
	TriggerAction( 1, TakeItem, 2525, 1 )
	TriggerAction( 1, TakeItem, 4279, 1 )
	TriggerAction( 1, GiveItem, 2526, 1, 4 )
	TriggerFailure( 1, JumpPage, 13 )
	Talk( 11, "���صĿ���ѧ��:Ҫ�������֮�̵ķ�ӡ��������������Ʒ:��ѩ��ӡ�ĺ���֮�̡���ѩŮ�ʵ�����x1,Ϊ���о������ӡ�Ҹ����˼���Ĵ���,��֧������100�򺣵�����Ϊ������" )
	Text( 11, "�������֮�̵ķ�ӡ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2525, 1 )
	TriggerCondition( 1, HasItem, 4280, 1 )
	TriggerCondition( 1, HasMoney, 1000000 )
	TriggerAction( 1, TakeMoney, 1000000 )
	TriggerAction( 1, TakeItem, 2525, 1 )
	TriggerAction( 1, TakeItem, 4280, 1 )
	TriggerAction( 1, GiveItem, 2526, 1, 4 )
	TriggerFailure( 1, JumpPage, 13 )
	Talk( 12, "���صĿ���ѧ��:Ҫ�����˪֮�ȵķ�ӡ��������������Ʒ:��ѩ��ӡ�Ĺ�˪֮�ȡ���ѩŮ�ʵ�����x1,Ϊ���о������ӡ�Ҹ����˼���Ĵ���,��֧������100�򺣵�����Ϊ������" )
	Text( 12, "�����˪֮�ȵķ�ӡ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 13, "���صĿ���ѧ��:�ܱ�Ǹ,����ҵ���Ʒ����,���޷�Ϊ������ӡ." )

end

-------------------------------------------------------------------------------------------------------
----BOSS��ս�Ǽ�Ա
-------------------------------------------------------------------------------------------------------
function bragi_talk01()
	Talk( 1, "����˫��,߳�����,�����ת��������!!��������ת���ȼ���?���Ҿ�û����.")
	Text( 1, "Ϊʲô�ҽӲ�������ת���ȼ�������?", JumpPage, 2 )
	
	InitTrigger()
	TriggerCondition( 1, HasRecord, 1431)
	TriggerCondition( 1, NoMission, 1430)
	TriggerCondition( 1, NoMission, 1432)
	TriggerCondition( 1, NoMission, 1433)
	TriggerCondition( 1, NoMission, 1434)
	TriggerCondition( 1, NoMission, 1435)
	TriggerCondition( 1, NoMission, 1436)
	TriggerCondition( 1, NoMission, 1437)
	TriggerCondition( 1, NoMission, 1438)
	TriggerCondition( 1, NoMission, 1439)
	TriggerCondition( 1, NoMission, 1440)
	TriggerCondition( 1, NoMission, 1441)
	TriggerCondition( 1, NoMission, 1442)
	TriggerAction( 1, ClearRecord, 1431)
	TriggerAction( 1, JumpPage, 3)
	TriggerFailure( 1, JumpPage, 4)
	
	Text( 1, "�����޸��жϺ��޷���ȡ���������", MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 2, "��Ҫ�ӵ���սBOSS,���ת���ȼ�������,��������������.����,����������ת������˳��ת��,�ڶ�,��������ת����ʹ������'�µ�ĥ��'�Լ�֮���һϵ������,��������������Ļ�����Ϳ��Ե�����������ȡ��սBOSS,����ת�������������Ŷ.")
	Text(2, "��֪����,�ټ�", CloseTalk)
	
	Talk( 3, "�޸��ɹ�")
	
	Talk( 4, "��϶�Ū���˰�,�Ҿ�����û��Ҫ�޸�")

	AddNpcMission	(6102)
	AddNpcMission	(6103)
	AddNpcMission	(6104)
	AddNpcMission	(6105)
	AddNpcMission	(6106)
	AddNpcMission	(6107)
	AddNpcMission	(6108)
	AddNpcMission	(6109)
	AddNpcMission	(6110)
	AddNpcMission	(6111)
	AddNpcMission	(6112)
	AddNpcMission	(6113)
end

------------------------------------------------------------
-- ����֮��:����ñ��
------------------------------------------------------------

function dina_talk08()

	Talk( 1, "����ñ��:��˵ñ�Ӿ���ϵͳ�����ˣ�����׬��һƱ��������~��������������Ŷ��" )
	Text( 1, "����", BuyPage )

	InitTrade()
	Defence(	2553	)
	Defence(	2583	)
	Defence(	2584	)
	
end

------------------------------------------------------------
-- ����:�̻�ʷ��
------------------------------------------------------------

function dina_talk10()

	Talk( 1, "�̻�ʷ��:�ҵ�ʥ��ʿ�Ǳ�ڤ���������˵����ػ��ߣ�������������ΰ����Ǿȳ����������ˣ�����㻹û������׼��������㻹�޷����޷��ˣ���ص������İ�����ȥ�ɡ�ֻ�������ĺ��������е�����������Ǻڰ���Σ���ķ�������" )
	
	AddNpcMission	(6214)
	AddNpcMission	(6227)
end

------------------------------------------------------------
-- ����:С��ʹ
------------------------------------------------------------

function dina_talk11()

	Talk( 1, "С��ʹ:��������ȴ����ǵĺ�������ֻҪ��ӵ��ԡ������ʯ���Ϳ��Խ����ŵ��ȵ�ף������Ϊ���������ĺ�������" )
	Text( 1, "��Ҫ�����ŵ��ȵ�ף��", JumpPage, 2)
	Text( 1, "��ֻ��������", CloseTalk)
	
	Talk( 2, "С��ʹ:�ŵ��ȵ��˺ܶ��꣬���ڵȵ����㡣�����Ի�������������������������ĸ�ְҵ�أ�" )
	Text( 2, "��Ϊ˫��ʿά�������ƽ",  GetChaName1_born2, 1)
	Text( 2, "��Ϊ�޽�ʿ�����޹�����",  GetChaName2_born2, 1)
	Text( 2, "��Ϊʥְ��Ϊ��Ҿ�������",  GetChaName5_born2, 1)
	Text( 2, "��Ϊ����ʿ�﷫Զ��",  GetChaName3_born2, 1)
	Text( 2, "��Ϊ�ѻ���ɱ��������", GetChaName4_born2, 1)
	Text( 2, "��Ϊ��ӡʦ������BOSS��������", GetChaName6_born2, 1)
	Text( 2, "���ٿ���һ��", CloseTalk)
	
end



------------------------------------------------------------
-- ����5��:��
------------------------------------------------------------

function dina_talk12()

	Talk( 1, "��:���磬�����ص���ô�ö����㷢�֣�" )
	AddNpcMission	(6215)
	
end

------------------------------------------------------------
-- ����6��:��³�Ұ�
------------------------------------------------------------

function dina_talk13()

	Talk( 1, "��³�Ұ�:���磬�����ص���ô�ö����㷢�֣�" )
	AddNpcMission	(6216)
	
end

------------------------------------------------------------
-- ����7��:����
------------------------------------------------------------

function dina_talk14()

	Talk( 1, "����:���磬�����ص���ô�ö����㷢�֣�" )
	AddNpcMission	(6217)
	
end

------------------------------------------------------------
-- ����8��:����˹
------------------------------------------------------------

function dina_talk15()

	Talk( 1, "����˹:���磬�����ص���ô�ö����㷢�֣�" )
	AddNpcMission	(6218)
	
end

------------------------------------------------------------
-- ����10��:��������
------------------------------------------------------------

function dina_talk16()

	Talk( 1, "��������:���磬�����ص���ô�ö����㷢�֣�" )
	AddNpcMission	(6219)
	
end

------------------------------------------------------------
-- ����11��:ɳ��
------------------------------------------------------------

function dina_talk17()

	Talk( 1, "ɳ��:���磬�����ص���ô�ö����㷢�֣�" )
	AddNpcMission	(6220)
	
end

------------------------------------------------------------
-- ����12��:ͯ��
------------------------------------------------------------

function dina_talk18()

	Talk( 1, "ͯ��:���磬�����ص���ô�ö����㷢�֣�" )
	AddNpcMission	(6221)
	
end

------------------------------------------------------------
-- ����13��:����
------------------------------------------------------------

function dina_talk19()

	Talk( 1, "����:���磬�����ص���ô�ö����㷢�֣�" )
	AddNpcMission	(6222)
	
end

------------------------------------------------------------
-- ����14��:������˹
------------------------------------------------------------

function dina_talk20()

	Talk( 1, "������˹:���磬�����ص���ô�ö����㷢�֣�" )
	AddNpcMission	(6223)
	
end

------------------------------------------------------------
-- ����15��:����
------------------------------------------------------------

function dina_talk21()

	Talk( 1, "����:���磬�����ص���ô�ö����㷢�֣�" )
	AddNpcMission	(6224)
	
end

------------------------------------------------------------
-- ����16��:����
------------------------------------------------------------

function dina_talk22()

	Talk( 1, "����:���磬�����ص���ô�ö����㷢�֣�" )
	AddNpcMission	(6225)
	
end

------------------------------------------------------------
-- ����17��:�����޵�
------------------------------------------------------------

function dina_talk23()

	Talk( 1, "�����޵�:���磬�����ص���ô�ö����㷢�֣�" )
	AddNpcMission	(6226)
	
end

-------------------����
function prison_talk01 ()
	Talk ( 1, "��ʵ����������������Ҳ��ϲ�������.")
	Text ( 1, "�˽�����ķ���", JumpPage, 2)

	Talk ( 2, "������Ļ��кܶ���;��,�����˽�һ����һ����?")
	Text ( 2, "��һ�ַ���", JumpPage, 3)
	Text ( 2, "�ڶ��ַ���", JumpPage, 4)
	Text ( 2, "�����ַ���", JumpPage, 5)

	Talk ( 3, "��һ�ַ���:������Ҽ�������ȡһ�ż�����¼��,���˿������ڱ�����������ڼ����ԹԴ���һСʱ��Ϳ����Ҽ�����������.")
	Text ( 3, "����", JumpPage, 2)
	Text ( 3, "�뿪", CloseTalk)

	Talk ( 4, "�ڶ��ַ���:��˵�ڼ�������һ����һ������Ϊ���ļ����ϴ�,�����Ͽ��ܴ��ų���֤��,������ܶ�ȡ�����Ļ��Ϳ����Ҽ�����������.")
	Text ( 4, "����", JumpPage, 2)
	Text ( 4, "�뿪", CloseTalk)

	Talk ( 5, "�����ַ���:��һ�����ص��̳������Ҳ�г���֤����,�Ǹ��̳ǽ�ʲô����...������Ħ���̳�.")
	Text ( 5, "����", JumpPage, 2)
	Text ( 5, "�뿪", CloseTalk)

	AddNpcMission	(6231)

end

--------------------������
function prison_talk02 ()
	Talk ( 1, "��������һĶ���ֵ�,��Ҫ����Ĺ�ذ���,�����������,�ǻ��������.")

	InitTrigger()
	TriggerCondition( 1, NoItem, 5724, 1 ) --������¼��
	TriggerCondition( 1, HasRecord, 1280 ) --��ɼ���ָ������
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, GiveItem, 5724, 1, 4) --������¼��
	TriggerAction( 1, JumpPage, 2)
	TriggerFailure( 1, JumpPage, 5)
	Text ( 1, "��Ҫ��ȡ������¼��", MultiTrigger, GetMultiTrigger(), 1)

	Text ( 1, "��Ҫ�뿪����.", JumpPage, 4)

	Talk ( 2, "��ס��Ҫ�����ż�����¼�����ڱ������������ЧŶ.")

	Talk ( 4, "ֻ���㱳�����г���֤��,������ļ�����¼����ʣ��ʱ��Ϊ0ʱ�Ҳſ��Է����ȥ,��ȷ��Ҫ�￪������?")
	
	InitTrigger()
	TriggerCondition( 1, Checkjlktime ) --��������¼����ʣ��ʱ���Ƿ�Ϊ0
	TriggerAction( 1, TakeItem, 5724, 1) --��ȡ������¼��
	TriggerAction( 1, Leaveprison ) --�뿪������
	TriggerCondition( 2, HasItem, 5723, 1) --����֤��
	TriggerAction( 2, TakeItem, 5723, 1) --��ȡ����֤��
	TriggerAction( 2, Leaveprison ) --�뿪������
	TriggerFailure( 2, JumpPage, 6)

	Text ( 4, "ȷ���뿪", MultiTrigger, GetMultiTrigger(), 2)
	Text ( 4, "��������", CloseTalk)

	Talk ( 5, "���޷���ȡ������¼��,��ȷ����������˳���֮·�������!����������,��δ�쵽��¼���ܿ���������ı������Ѿ�����һ�ż�¼��,Ҳ�п�������ı���û�ո�����������µ�")

	Talk ( 6, "�����ϳ�������,�㻹�ǹԹԸ����ڼ������Ű�.")

	AddNpcMission	(6230)

end


----------------------------------------------------------
--							--
--							--
--		����[���ɡ�����]			--
--							--
--		2235,2785		--
----------------------------------------------------------
function dean_talk01 ()

	Talk( 1, "���ɡ�����: Ŷ�����װ������ѣ���ӭ�������ս,�¸ҵ��㽫��÷����ջ��Լ�ʥ�����е��������㽫�õ�������������Ĺ�ע��")
	Text( 1, "1��ʥ������", JumpPage, 2)
	Text( 1, "2��ʥ������Կ��", JumpPage, 7)
	Text( 1, "3��ʥ������Կ��", JumpPage, 9)
	Text( 1, "4��ʥ������Կ��", JumpPage, 11)
	Text( 1, "5��ʥ������Կ��", JumpPage, 13)
	
	Talk( 2, "���ɡ�����: 1��ʥ��������ʥ������ʱ�ھ����µĲƸ����������к�������������ģ���Ը�������ս��")
	Text( 2, "�ҽ���", JumpPage, 3)
	Text( 2, "�Ҳ�����", CloseTalk)
	
	Talk( 3, "���ɡ�����: �ǾͿ�ʼ�ɣ�ѡ��һ���ʺ�����Թ������ɣ�")
	
	Text( 3, "��ս�����Թ�", JumpPage, 4)
	Text( 3, "��ս�����Թ�", JumpPage, 5)
	Text( 3, "��սħ���Թ�", JumpPage, 6)
	
	Talk( 4, "���ɡ�����: �����ˣ����Ȼ���¸ң����������и���˹ͨ��(730,1508)���ˣ����������ȥ�����ɣ��������ָ���ģ�")
	InitTrigger()
	TriggerCondition( 1, NoRecord, 1281 )
	TriggerCondition( 1, NoRecord, 1282 )
	TriggerCondition( 1, NoRecord, 1283 )
	TriggerCondition( 1, NoRecord, 1284 )
	TriggerCondition( 1, NoRecord, 1285 )
	TriggerCondition( 1, NoRecord, 1286 )
	TriggerCondition( 1, NoRecord, 1287 )
	TriggerCondition( 1, NoItem, 5776, 1 )   --û�м��ɡ��������ܺ�A
	TriggerCondition( 1, NoItem, 5791, 1 )   --û�м��ɡ��������ܺ�B
	TriggerCondition( 1, NoItem, 5792, 1 )   --û�м��ɡ��������ܺ�C
    TriggerCondition( 1, NoItem, 5786, 1 )   --û�зϾɵ��¹ⱦ��
	TriggerCondition( 1, NoItem, 5787, 1 )   --û�г¾ɵ��¹ⱦ��
	TriggerCondition( 1, NoItem, 5788, 1 )   --û��ո�µ��¹ⱦ��
	TriggerCondition( 1, NoItem, 5789, 1 )   --û�о��µ��¹ⱦ��
	TriggerCondition( 1, NoItem, 5790, 1 )   --û��׿Խ���¹ⱦ��
	TriggerCondition( 1, NoItem, 5793, 1 )   --2������Կ���ܺ�
	TriggerCondition( 1, NoItem, 5794, 1 )   --3������Կ���ܺ�
	TriggerCondition( 1, NoItem, 5795, 1 )   --4������Կ���ܺ�
	TriggerCondition( 1, NoItem, 5796, 1 )   --5������Կ���ܺ�
	TriggerCondition( 1, HasLeaveBagGrid, 1 )          --����������һ���ո�
	TriggerCondition( 1, KitbagLock, 0 )               --����û������
	TriggerAction( 1, GiveItem, 5776, 1, 4) 
	TriggerFailure( 1, JumpPage, 22)
	Text( 4, "��֪����", MultiTrigger, GetMultiTrigger(), 1)
	Text( 4, "��֪������˵ʲô", CloseTalk)
	
	Talk( 5, "���ɡ�����: �����ˣ����Ȼ���¸ң����������и���˹ͨ��(730,1508)���ˣ����������ȥ�����ɣ��������ָ���ģ�")
	InitTrigger()
	TriggerCondition( 1, NoRecord, 1281 )
	TriggerCondition( 1, NoRecord, 1282 )
	TriggerCondition( 1, NoRecord, 1283 )
	TriggerCondition( 1, NoRecord, 1284 )
	TriggerCondition( 1, NoRecord, 1285 )
	TriggerCondition( 1, NoRecord, 1286 )
	TriggerCondition( 1, NoRecord, 1287 )
	TriggerCondition( 1, NoItem, 5776, 1 )   --û�м��ɡ��������ܺ�A
	TriggerCondition( 1, NoItem, 5791, 1 )   --û�м��ɡ��������ܺ�B
	TriggerCondition( 1, NoItem, 5792, 1 )   --û�м��ɡ��������ܺ�C
    TriggerCondition( 1, NoItem, 5786, 1 )   --û�зϾɵ��¹ⱦ��
	TriggerCondition( 1, NoItem, 5787, 1 )   --û�г¾ɵ��¹ⱦ��
	TriggerCondition( 1, NoItem, 5788, 1 )   --û��ո�µ��¹ⱦ��
	TriggerCondition( 1, NoItem, 5789, 1 )   --û�о��µ��¹ⱦ��
	TriggerCondition( 1, NoItem, 5790, 1 )   --û��׿Խ���¹ⱦ��
	TriggerCondition( 1, NoItem, 5793, 1 )   --2������Կ���ܺ�
	TriggerCondition( 1, NoItem, 5794, 1 )   --3������Կ���ܺ�
	TriggerCondition( 1, NoItem, 5795, 1 )   --4������Կ���ܺ�
	TriggerCondition( 1, NoItem, 5796, 1 )   --5������Կ���ܺ�
	TriggerCondition( 1, HasLeaveBagGrid, 1 )          --����������һ���ո�
	TriggerCondition( 1, KitbagLock, 0 )               --����û������
	TriggerAction( 1, GiveItem, 5791, 1, 4) 
	TriggerFailure( 1, JumpPage, 22)
	Text( 5, "��֪����", MultiTrigger, GetMultiTrigger(), 1)
	Text( 5, "��֪������˵ʲô", CloseTalk)
	
	Talk( 6, "���ɡ�����: �����ˣ����Ȼ���¸ң����������и���˹ͨ��(730,1508)���ˣ����������ȥ�����ɣ��������ָ���ģ�")
	InitTrigger()
	TriggerCondition( 1, NoRecord, 1281 )
	TriggerCondition( 1, NoRecord, 1282 )
	TriggerCondition( 1, NoRecord, 1283 )
	TriggerCondition( 1, NoRecord, 1284 )
	TriggerCondition( 1, NoRecord, 1285 )
	TriggerCondition( 1, NoRecord, 1286 )
	TriggerCondition( 1, NoRecord, 1287 )
	TriggerCondition( 1, NoItem, 5776, 1 )   --û�м��ɡ��������ܺ�A
	TriggerCondition( 1, NoItem, 5791, 1 )   --û�м��ɡ��������ܺ�B
	TriggerCondition( 1, NoItem, 5792, 1 )   --û�м��ɡ��������ܺ�C
    TriggerCondition( 1, NoItem, 5786, 1 )   --û�зϾɵ��¹ⱦ��
	TriggerCondition( 1, NoItem, 5787, 1 )   --û�г¾ɵ��¹ⱦ��
	TriggerCondition( 1, NoItem, 5788, 1 )   --û��ո�µ��¹ⱦ��
	TriggerCondition( 1, NoItem, 5789, 1 )   --û�о��µ��¹ⱦ��
	TriggerCondition( 1, NoItem, 5790, 1 )   --û��׿Խ���¹ⱦ��
	TriggerCondition( 1, NoItem, 5793, 1 )   --2������Կ���ܺ�
	TriggerCondition( 1, NoItem, 5794, 1 )   --3������Կ���ܺ�
	TriggerCondition( 1, NoItem, 5795, 1 )   --4������Կ���ܺ�
	TriggerCondition( 1, NoItem, 5796, 1 )   --5������Կ���ܺ�
	TriggerCondition( 1, HasLeaveBagGrid, 1 )          --����������һ���ո�
	TriggerCondition( 1, KitbagLock, 0 )               --����û������
	TriggerAction( 1, GiveItem, 5792, 1, 4) 
	TriggerFailure( 1, JumpPage, 22)
	Text( 6, "��֪����", MultiTrigger, GetMultiTrigger(), 1)
	Text( 6, "��֪������˵ʲô", CloseTalk)
	
	Talk( 7, "���ɡ�����: ��Ҫ��2��ʥ���ı��ر���Ҫʹ�����Ӧ��Կ�ײ��У����������ص�Կ�׻��������أ�")
	Text( 7, "����֪����������Ұ�", JumpPage, 8)
	Text( 7, "�ҿ�û��Ȥ֪��", CloseTalk)
	
	Talk( 8, "���ɡ�����: �����ˣ����Ȼ���¸ң����������и���˹ͨ��(730,1508)���ˣ����������ȥ�����ɣ��������ָ���ģ�")
	InitTrigger()
	TriggerCondition( 1, NoRecord, 1281 )
	TriggerCondition( 1, NoRecord, 1282 )
	TriggerCondition( 1, NoRecord, 1283 )
	TriggerCondition( 1, NoRecord, 1284 )
	TriggerCondition( 1, NoRecord, 1285 )
	TriggerCondition( 1, NoRecord, 1286 )
	TriggerCondition( 1, NoRecord, 1287 )
	TriggerCondition( 1, NoItem, 5776, 1 )   --û�м��ɡ��������ܺ�A
	TriggerCondition( 1, NoItem, 5791, 1 )   --û�м��ɡ��������ܺ�B
	TriggerCondition( 1, NoItem, 5792, 1 )   --û�м��ɡ��������ܺ�C
    TriggerCondition( 1, NoItem, 5786, 1 )   --û�зϾɵ��¹ⱦ��
	TriggerCondition( 1, NoItem, 5787, 1 )   --û�г¾ɵ��¹ⱦ��
	TriggerCondition( 1, NoItem, 5788, 1 )   --û��ո�µ��¹ⱦ��
	TriggerCondition( 1, NoItem, 5789, 1 )   --û�о��µ��¹ⱦ��
	TriggerCondition( 1, NoItem, 5790, 1 )   --û��׿Խ���¹ⱦ��
	TriggerCondition( 1, NoItem, 5793, 1 )   --2������Կ���ܺ�
	TriggerCondition( 1, NoItem, 5794, 1 )   --3������Կ���ܺ�
	TriggerCondition( 1, NoItem, 5795, 1 )   --4������Կ���ܺ�
	TriggerCondition( 1, NoItem, 5796, 1 )   --5������Կ���ܺ�
	TriggerCondition( 1, HasLeaveBagGrid, 1 )          --����������һ���ո�
	TriggerCondition( 1, KitbagLock, 0 )               --����û������
	TriggerAction( 1, GiveItem, 5793, 1, 4) 
	TriggerFailure( 1, JumpPage, 22)
	Text( 8, "��֪����", MultiTrigger, GetMultiTrigger(), 1)
	Text( 8, "��֪������˵ʲô", CloseTalk)
	
	
	Talk( 9, "���ɡ�����: ��Ҫ��3��ʥ���ı��ر���Ҫʹ�����Ӧ��Կ�ײ��У����������ص�Կ�׻��������أ�")
	Text( 9, "����֪����������Ұ�", JumpPage, 10)
	Text( 9, "�ҿ�û��Ȥ֪��", CloseTalk)
	
	Talk( 10, "���ɡ�����: �����ˣ����Ȼ���¸ң����������и���˹ͨ��(730,1508)���ˣ����������ȥ�����ɣ��������ָ���ģ�")
	InitTrigger()
	TriggerCondition( 1, NoRecord, 1281 )
	TriggerCondition( 1, NoRecord, 1282 )
	TriggerCondition( 1, NoRecord, 1283 )
	TriggerCondition( 1, NoRecord, 1284 )
	TriggerCondition( 1, NoRecord, 1285 )
	TriggerCondition( 1, NoRecord, 1286 )
	TriggerCondition( 1, NoRecord, 1287 )
	TriggerCondition( 1, NoItem, 5776, 1 )   --û�м��ɡ��������ܺ�A
	TriggerCondition( 1, NoItem, 5791, 1 )   --û�м��ɡ��������ܺ�B
	TriggerCondition( 1, NoItem, 5792, 1 )   --û�м��ɡ��������ܺ�C
    TriggerCondition( 1, NoItem, 5786, 1 )   --û�зϾɵ��¹ⱦ��
	TriggerCondition( 1, NoItem, 5787, 1 )   --û�г¾ɵ��¹ⱦ��
	TriggerCondition( 1, NoItem, 5788, 1 )   --û��ո�µ��¹ⱦ��
	TriggerCondition( 1, NoItem, 5789, 1 )   --û�о��µ��¹ⱦ��
	TriggerCondition( 1, NoItem, 5790, 1 )   --û��׿Խ���¹ⱦ��
	TriggerCondition( 1, NoItem, 5793, 1 )   --2������Կ���ܺ�
	TriggerCondition( 1, NoItem, 5794, 1 )   --3������Կ���ܺ�
	TriggerCondition( 1, NoItem, 5795, 1 )   --4������Կ���ܺ�
	TriggerCondition( 1, NoItem, 5796, 1 )   --5������Կ���ܺ�
	TriggerCondition( 1, HasLeaveBagGrid, 1 )          --����������һ���ո�
	TriggerCondition( 1, KitbagLock, 0 )               --����û������
	TriggerAction( 1, GiveItem, 5794, 1, 4) 
	TriggerFailure( 1, JumpPage, 22)
	Text( 10, "��֪����", MultiTrigger, GetMultiTrigger(), 1)
	Text( 10, "��֪������˵ʲô", CloseTalk)
	
	Talk( 11, "���ɡ�����: ��Ҫ��4��ʥ���ı��ر���Ҫʹ�����Ӧ��Կ�ײ��У����������ص�Կ�׻��������أ�")
	Text( 11, "����֪����������Ұ�", JumpPage, 12)
	Text( 11, "�ҿ�û��Ȥ֪��", CloseTalk)
	
	Talk( 12, "���ɡ�����: �����ˣ����Ȼ���¸ң����������и���˹ͨ��(730,1508)���ˣ����������ȥ�����ɣ��������ָ���ģ�")
	InitTrigger()
	TriggerCondition( 1, NoRecord, 1281 )
	TriggerCondition( 1, NoRecord, 1282 )
	TriggerCondition( 1, NoRecord, 1283 )
	TriggerCondition( 1, NoRecord, 1284 )
	TriggerCondition( 1, NoRecord, 1285 )
	TriggerCondition( 1, NoRecord, 1286 )
	TriggerCondition( 1, NoRecord, 1287 )
	TriggerCondition( 1, NoItem, 5776, 1 )   --û�м��ɡ��������ܺ�A
	TriggerCondition( 1, NoItem, 5791, 1 )   --û�м��ɡ��������ܺ�B
	TriggerCondition( 1, NoItem, 5792, 1 )   --û�м��ɡ��������ܺ�C
    TriggerCondition( 1, NoItem, 5786, 1 )   --û�зϾɵ��¹ⱦ��
	TriggerCondition( 1, NoItem, 5787, 1 )   --û�г¾ɵ��¹ⱦ��
	TriggerCondition( 1, NoItem, 5788, 1 )   --û��ո�µ��¹ⱦ��
	TriggerCondition( 1, NoItem, 5789, 1 )   --û�о��µ��¹ⱦ��
	TriggerCondition( 1, NoItem, 5790, 1 )   --û��׿Խ���¹ⱦ��
	TriggerCondition( 1, NoItem, 5793, 1 )   --2������Կ���ܺ�
	TriggerCondition( 1, NoItem, 5794, 1 )   --3������Կ���ܺ�
	TriggerCondition( 1, NoItem, 5795, 1 )   --4������Կ���ܺ�
	TriggerCondition( 1, NoItem, 5796, 1 )   --5������Կ���ܺ�
	TriggerCondition( 1, HasLeaveBagGrid, 1 )          --����������һ���ո�
	TriggerCondition( 1, KitbagLock, 0 )               --����û������
	TriggerAction( 1, GiveItem, 5795, 1, 4) 
	TriggerFailure( 1, JumpPage, 22)
	Text( 12, "��֪����", MultiTrigger, GetMultiTrigger(), 1)
	Text( 12, "��֪������˵ʲô", CloseTalk)
	
	Talk( 13, "���ɡ�����: ��Ҫ��5��ʥ���ı��ر���Ҫʹ�����Ӧ��Կ�ײ��У����������ص�Կ�׻��������أ�")
	Text( 13, "����֪����������Ұ�", JumpPage, 14)
	Text( 13, "�ҿ�û��Ȥ֪��", CloseTalk)
	
	Talk( 14, "���ɡ�����: �����ˣ����Ȼ���¸ң����������и���˹ͨ��(730,1508)���ˣ����������ȥ�����ɣ��������ָ���ģ�")
	InitTrigger()
	TriggerCondition( 1, NoRecord, 1281 )
	TriggerCondition( 1, NoRecord, 1282 )
	TriggerCondition( 1, NoRecord, 1283 )
	TriggerCondition( 1, NoRecord, 1284 )
	TriggerCondition( 1, NoRecord, 1285 )
	TriggerCondition( 1, NoRecord, 1286 )
	TriggerCondition( 1, NoRecord, 1287 )
	TriggerCondition( 1, NoItem, 5776, 1 )   --û�м��ɡ��������ܺ�A
	TriggerCondition( 1, NoItem, 5791, 1 )   --û�м��ɡ��������ܺ�B
	TriggerCondition( 1, NoItem, 5792, 1 )   --û�м��ɡ��������ܺ�C
    TriggerCondition( 1, NoItem, 5786, 1 )   --û�зϾɵ��¹ⱦ��
	TriggerCondition( 1, NoItem, 5787, 1 )   --û�г¾ɵ��¹ⱦ��
	TriggerCondition( 1, NoItem, 5788, 1 )   --û��ո�µ��¹ⱦ��
	TriggerCondition( 1, NoItem, 5789, 1 )   --û�о��µ��¹ⱦ��
	TriggerCondition( 1, NoItem, 5790, 1 )   --û��׿Խ���¹ⱦ��
	TriggerCondition( 1, NoItem, 5793, 1 )   --2������Կ���ܺ�
	TriggerCondition( 1, NoItem, 5794, 1 )   --3������Կ���ܺ�
	TriggerCondition( 1, NoItem, 5795, 1 )   --4������Կ���ܺ�
	TriggerCondition( 1, NoItem, 5796, 1 )   --5������Կ���ܺ�
	TriggerCondition( 1, HasLeaveBagGrid, 1 )          --����������һ���ո�
	TriggerCondition( 1, KitbagLock, 0 )               --����û������
	TriggerAction( 1, GiveItem, 5796, 1, 4) 
	TriggerFailure( 1, JumpPage, 22)
	Text( 14, "��֪����", MultiTrigger, GetMultiTrigger(), 1)
	Text( 14, "��֪������˵ʲô", CloseTalk)
	
	
	
	
	
	Talk( 22, "���ɡ�����: ��ȷ��������û���Ҹ�����ܺ��Լ��¹ⱦ�У�����Ҳ���������������ģ�")
	Text( 22, "�뿪", CloseTalk)
	
end	
	
	
	
----------------------------------------------------------
--							--
--							--
--		������[˹ͨ��]			--
--							--
--		730,1508		                     --
----------------------------------------------------------
function dean_talk03 ()

	Talk( 1, "˹ͨ��: ��ã�����������")
	Text( 1, "�һ�һ��ʥ������", JumpPage, 10 )
	Text( 1, "�һ�����ʥ������Կ��", JumpPage, 3 )
	Text( 1, "�һ�����ʥ������Կ��", JumpPage, 4 )
	Text( 1, "�һ��ļ�ʥ������Կ��", JumpPage, 5 )
	Text( 1, "�һ��弶ʥ������Կ��", JumpPage, 6 )
	
	
	Talk( 10,"���������ս���Թ���ѡ��һ�����Ҫѡ��Ŷ��")
	InitTrigger()                                                  
	TriggerCondition(1, HasItem, 5786, 1)               ---------�Ͼɵ��¹ⱦ��
	TriggerCondition(1, HasRecord, 1281)
	TriggerCondition(1, ItemAttrNum,5786,6,0,0)
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction(1, TakeItem, 5786, 1)
	TriggerAction(1, ClearRecord, 1281)       --���record 1281
	TriggerAction(1, GiveItem, 5777, 1, 4)              ----------1��ʥ������
	TriggerFailure(1, JumpPage, 9)	
	Text( 10, "����ս���Ƿ����Թ�", MultiTrigger, GetMultiTrigger(), 1)
	
	InitTrigger()                                                  
	TriggerCondition(1, HasItem, 5786, 1)               ---------�Ͼɵ��¹ⱦ��
	TriggerCondition(1, HasRecord, 1282)
	TriggerCondition(1, ItemAttrNum,5786,6,0,0)
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction(1, TakeItem, 5786, 1)
	TriggerAction(1, ClearRecord, 1282)   	--���record 1282
	TriggerAction(1, GiveItem, 5777, 1, 4)              ----------1��ʥ������
	TriggerFailure(1, JumpPage, 9)
	Text( 10, "����ս���������Թ�", MultiTrigger, GetMultiTrigger(), 1)
	
	InitTrigger()                                                  
	TriggerCondition(1, HasItem, 5786, 1)               ---------�Ͼɵ��¹ⱦ��
	TriggerCondition(1, HasRecord, 1283)
	TriggerCondition(1, ItemAttrNum,5786,6,0,0)
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction(1, TakeItem, 5786, 1)
	TriggerAction(1, ClearRecord, 1283)     --���record 1283
	TriggerAction(1, GiveItem, 5777, 1, 4)              ----------1��ʥ������
	TriggerFailure(1, JumpPage, 9)
	Text( 10, "����ս����ħ���Թ�", MultiTrigger, GetMultiTrigger(), 1)
	
	Text( 10, "ȡ��", CloseTalk)	
	
	
	Talk( 3,"�һ�����ʥ������Կ����Ҫһ������Ϊ0�ĳ¾ɵ��¹ⱦ�У���ȷ���һ���")
	InitTrigger()                                                  
	TriggerCondition(1, HasItem, 5787, 1)               ---------�¾ɵ��¹ⱦ��
	TriggerCondition(1, HasRecord, 1284)
	TriggerCondition(1, ItemAttrNum,5787,6,0,0)
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction(1, TakeItem, 5787, 1)
	TriggerAction(1, ClearRecord, 1284)    --���record 1284
	TriggerAction(1, GiveItem, 5782, 1, 4)              ----------2��ʥ������Կ��
	TriggerFailure(1, JumpPage, 9)
	Text( 3, "��ȷ��", MultiTrigger, GetMultiTrigger(), 1)
	Text( 3, "�Ҳ���", CloseTalk)
	
	Talk( 4,"�һ�����ʥ������Կ����Ҫһ������Ϊ0��ո�µ��¹ⱦ�У���ȷ���һ���")
	InitTrigger()                                                  
	TriggerCondition(1, HasItem, 5788, 1)               ---------ո�µ��¹ⱦ��
	TriggerCondition(1, HasRecord, 1285)
	TriggerCondition(1, ItemAttrNum,5788,6,0,0)
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction(1, TakeItem, 5788, 1)
	TriggerAction(1, ClearRecord, 1285)   --���record 1285
	TriggerAction(1, GiveItem, 5783, 1, 4)              ----------3��ʥ������Կ��
	TriggerFailure(1, JumpPage, 9)
	Text( 4, "��ȷ��", MultiTrigger, GetMultiTrigger(), 1)
	Text( 4, "�Ҳ���", CloseTalk)
	
	Talk( 5,"�һ��ļ�ʥ������Կ����Ҫһ������Ϊ0�ľ��µ��¹ⱦ�У���ȷ���һ���")
	InitTrigger()                                                  
	TriggerCondition(1, HasItem, 5789, 1)               ---------���µ��¹ⱦ��
	TriggerCondition(1, HasRecord, 1286)
	TriggerCondition(1, ItemAttrNum,5789,6,0,0)
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction(1, TakeItem, 5789, 1)
	TriggerAction(1, ClearRecord, 1286)    --���record 1286
	TriggerAction(1, GiveItem, 5784, 1, 4)              ----------4��ʥ������Կ��
	TriggerFailure(1, JumpPage, 9)
	Text( 5, "��ȷ��", MultiTrigger, GetMultiTrigger(), 1)
	Text( 5, "�Ҳ���", CloseTalk)
	
	Talk( 6,"�һ��弶ʥ������Կ����Ҫһ������Ϊ0��׿Խ���¹ⱦ�У���ȷ���һ���")
	InitTrigger()                                                  
	TriggerCondition(1, HasItem, 5790, 1)               ---------׿Խ���¹ⱦ��
	TriggerCondition(1, HasRecord, 1287)
	TriggerCondition(1, ItemAttrNum,5790,6,0,0)
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction(1, TakeItem, 5790, 1)
	TriggerAction(1, ClearRecord, 1287)     --���record 1287
	TriggerAction(1, GiveItem, 5785, 1, 4)              ----------5��ʥ������Կ��
	TriggerFailure(1, JumpPage, 9)
	Text( 6, "��ȷ��", MultiTrigger, GetMultiTrigger(), 1)
	Text( 6, "�Ҳ���", CloseTalk)
	
	
	Talk( 9, "��ȷ����ѡ������ȷ���Թ���������ֻ��һ������������Ϊ0���¹ⱦ����Ŷ")
	
	
	
	AddNpcMission	(6232)
	AddNpcMission	(6233)
	AddNpcMission	(6234)
	AddNpcMission	(6235)
	AddNpcMission	(6236)
	AddNpcMission	(6237)
	AddNpcMission	(6238)
end

----------------------------------------------------------
--							--
--							--
--		������[�ǻ�ɳ֯]			--
--							--
--		2279,2757		                     --
----------------------------------------------------------
function sds_talk01 ()
	Talk( 1, "�ǻ�ɳ֯: �����İ�,�����ٿ�һ��ʥ��ʿ��")
	AddNpcMission	(6239)
	AddNpcMission	(6249)

end



----------------------------------------------------------
--							--
--							--
--		������[��ʸ]			--
--							--
--		2167,2511		                     --
----------------------------------------------------------
function sds_talk02 ()
	Talk( 1, "��ʸ: ȼ�հɣ��ҵ�С���棡Ϊ��Ů��ս���ɣ�")
	AddNpcMission	(6240)
	AddNpcMission	(6241)

end



----------------------------------------------------------
--							--
--							--
--		ɳ�[����]			--
--							--
--		1126,3416		                     --
----------------------------------------------------------
function sds_talk03 ()
	Talk( 1, "����: Ϊ���ŵ���,ȼ���ҵ�С���档")
	Text( 1, "��Ҫ�ش�����", JumpPage, 2 )
	
	
	Talk( 2, "����Ҫ��ʼ�ش�")
	InitTrigger() 	
	TriggerCondition(1, HasRecord, 1294)
	TriggerAction(1, JumpPage, 4)
	TriggerFailure(1, JumpPage, 3)
	Text( 2, "ȷ��", MultiTrigger, GetMultiTrigger(), 1)
	Text( 2, "ȡ��", CloseTalk )
	
	Talk( 3, "������˼�����ƺ���û��ȡ����")
	
	
	Talk( 4, "1��	����������������ʱ����ס�����׶���ԭ���ĸ��ޣ�")
	Text( 4, "����", JumpPage, 5 )
	Text( 4, "ŷ��", JumpPage, 9 )
	Text( 4, "������", JumpPage, 9 )
	
	Talk( 5, "2��	������ʥ��ʿ���棬�����Ǹ�ʲô�ģ�")
	Text( 5, "�����", JumpPage, 9 )
	Text( 5, "������", JumpPage, 6 )
	Text( 5, "�㺣�������", JumpPage, 9 )
	
	Talk( 6, "3��	�������¼��������У��ĸ��ں�����npc��û���ֹ�")
	Text( 6, "����", JumpPage, 9 )
	Text( 6, "��������", JumpPage, 9 )
	Text( 6, "����", JumpPage, 7 )
	
	
	Talk( 7, "4��	���ʺ�������ʥ��ʿ12����ʼnpc���������У�")
	Text( 7, "������", JumpPage, 9 )
	Text( 7, "������", JumpPage, 8 )
	Text( 7, "���Ǳ�", JumpPage, 9 )


	InitTrigger() 
	TriggerCondition(1, HasRecord, 1294)               
	TriggerAction(1, SetRecord, 1293)
	Talk( 8, "5��	�����ĸ�����û�ٰ������ƥ���˶���")
	Text( 8, "����", JumpPage, 9 )
	Text( 8, "������", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 8, "���ô�", JumpPage, 9 )

	Talk( 9, "������ˣ����ͷ��ʼ�ش�")



	AddNpcMission	(6242)
	AddNpcMission	(6243)

end

----------------------------------------------------------
--							--
--							--
--		���Ǳ�[����]			--
--							--
--		1533,699		                     --
----------------------------------------------------------
function sds_talk04 ()

	
	
	Talk( 1, "����: �߹����,������,���Űװ����ľ�ɫ,�����߹����,����,������......")
	Text( 1,"���ҷ�������ٻ�ȯ��!", JumpPage, 2)
	
	
	InitTrigger() 
	TriggerCondition(1, HasRecord, 1297)               
	TriggerCondition(1, HasItem, 3152, 99)               
	TriggerCondition(1, HasMoney, 100000) 
    TriggerAction(1, GiveItem, 5805,1,31) 	
	TriggerAction(1, TakeItem, 3152, 99)               
	TriggerAction(1, TakeMoney, 100000)               
	TriggerAction(1, SetRecord, 1298)               
	TriggerFailure(1, JumpPage, 3)

	
	Talk( 2, "����: Ҫ��������ٻ�ȯҪ100000��99����������Ŷ��")
	Text( 2, "ȷ��", MultiTrigger, GetMultiTrigger(), 1 )
	
	Talk( 3, "����: ��Ķ�����������")
	
	AddNpcMission	(6244)
	AddNpcMission	(6245)

end
----------------------------------------------------------
--							--
--							--
--		���ձ�[˲]			--
--							--
--		619,965		                     --
----------------------------------------------------------
function sds_talk05 ()
	Talk( 1, "˲: ���......��ΪʲôҪȥ���õ���Ϊʲô�����������ˡ����ǲ����Ѿ�����һ����������أ����ϻ�������Ļ�����������ʲôҲ�ò����ġ�")
	AddNpcMission	(6246)

end


----------------------------------------------------------
--							--
--							--
--		����һ��[һ��]			--
--							--
--		336,174		                     --
----------------------------------------------------------
function sds_talk06 ()
	Talk( 1, "һ��: ˲......��һ��Ҫ��ǿ......")
	Text( 1,"����а��̻��ٻ�ȯ��!", JumpPage, 2)
	
	
	InitTrigger() 
	TriggerCondition(1, HasRecord, 1303)               
	TriggerCondition(1, HasItem, 5807, 1)               
	TriggerCondition(1, HasItem, 5808, 1)               
	TriggerCondition(1, HasItem, 5809, 1)               
	TriggerCondition(1, HasItem, 5810, 1)               
	TriggerAction(1, TakeItem, 5807, 1)               
	TriggerAction(1, TakeItem, 5808, 1)               
	TriggerAction(1, TakeItem, 5809, 1)               
	TriggerAction(1, TakeItem, 5810, 1)               
	TriggerAction(1, GiveItem, 5811, 1,31)               
	TriggerAction(1, SetRecord, 1305)               
	TriggerFailure(1, JumpPage, 3)


	Talk( 2, "һ��: Ҫ��а��̻ʣ�������cosplay֤�鶼�ռ�����û�������û���㹻ǿ��ʵ���Ļ����޷���ս�̻ʵ�,ʵ������ﵽ55������")
	Text( 2, "ȷ��", MultiTrigger, GetMultiTrigger(), 1 )


	Talk( 3, "һ��: ��Ķ�����������")
	
	AddNpcMission	(6247)
	AddNpcMission	(6248)

end
----------------------------------------------------------
--		������[������]			--
--		741,1505		                  --
----------------------------------------------------------
function aimina_talk01 ()
	Talk( 1, "��ð�������ϲ���ռ��;�Ϊ0���¹ⱦ���ˣ�������еĻ���Ը����һЩ�������㽻����")
	Text( 1,"����һ�", JumpPage, 2)
	Text( 1,"�뿪", CloseTalk)
	
	Talk( 2, "��ͬƷ�ʵ��¹ⱦ�еļ�ֵҲ�ǲ�һ����Ŷ�����ҿ�����Ҫ�����һ����������أ�")
	Text( 2,"�Ͼɵ��¹ⱦ��", JumpPage, 3)
	Text( 2,"�¾ɵ��¹ⱦ��", JumpPage, 4)
	Text( 2,"ո�µ��¹ⱦ��", JumpPage, 5)
	Text( 2,"���µ��¹ⱦ��", JumpPage, 6)
	Text( 2,"׿Խ���¹ⱦ��", JumpPage, 7)
	
	Talk( 3, "�Ͼɵ��¹ⱦ�У�����Ի��15��������ʿ����,10�����鹭���ֺ��Ǻ�15��������ʿ����")
	InitTrigger() 
	TriggerCondition(1, HasItem, 5786, 1)               
	TriggerCondition(1, ItemAttrNum,5786,6,0,0)               
	TriggerCondition(1, HasLeaveBagGrid, 3)
	TriggerCondition( 1, KitbagLock, 0 )               
	               
	TriggerAction(1, TakeItem, 5786, 1)
	TriggerAction(1, Take_THSJ_Record)	
	TriggerAction(1, GiveItem, 3434, 15, 4)
	TriggerAction(1, GiveItem, 3435, 10, 4)
	TriggerAction(1, GiveItem, 3436, 15, 4)
	TriggerFailure(1, JumpPage, 15)
	Text( 3, "ȷ��", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 3, "�뿪", CloseTalk)
	
	
	
	Talk( 4, "�¾ɵ��¹ⱦ�У�����Ի��10�������ӡ��99������Ӳ��")
	InitTrigger() 
	TriggerCondition(1, HasItem, 5787, 1)               
	TriggerCondition(1, ItemAttrNum,5787,6,0,0)               
	TriggerCondition(1, HasLeaveBagGrid, 2)
	TriggerCondition( 1, KitbagLock, 0 )               
	               
	TriggerAction(1, TakeItem, 5787, 1)
	TriggerAction(1, Take_THSJ_Record)
	TriggerAction(1, GiveItem, 2588, 10, 4)
	TriggerAction(1, GiveItem, 0855, 99, 4)
	TriggerFailure(1, JumpPage, 16)
	Text( 4, "ȷ��", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 4, "�뿪", CloseTalk)
	
	
	Talk( 5, "ո�µ��¹ⱦ�У�����Ի��30��ճ����ˮ�ݺ�99������Ӳ��")
	InitTrigger() 
	TriggerCondition(1, HasItem, 5788, 1)               
	TriggerCondition(1, ItemAttrNum,5788,6,0,0)               
	TriggerCondition(1, HasLeaveBagGrid, 2)
	TriggerCondition( 1, KitbagLock, 0)               
	TriggerAction(1, TakeItem, 5788, 1)
	TriggerAction(1, Take_THSJ_Record)
	TriggerAction(1, GiveItem, 4511, 30, 41)
	TriggerAction(1, GiveItem, 0855, 99, 4)	
	TriggerFailure(1, JumpPage, 14)
	Text( 5, "ȷ��", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 5, "�뿪", CloseTalk)
	
	
	
	Talk( 6, "���µ��¹ⱦ�У�����Ի��1��������̳,1����������ӡ��1��������Կ")
	InitTrigger() 
	TriggerCondition(1, HasItem, 5789, 1)               
	TriggerCondition(1, ItemAttrNum,5789,6,0,0)               
	TriggerCondition(1, HasLeaveBagGrid, 3)
	TriggerCondition( 1, KitbagLock, 0 )               
	               
	TriggerAction(1, TakeItem, 5789, 1)
	TriggerAction(1, Take_THSJ_Record)	
	TriggerAction(1, GiveItem, 0266, 1, 65)
	TriggerAction(1, GiveItem, 2589, 1, 31)
	TriggerAction(1, GiveItem, 3000, 1, 41)
	TriggerFailure(1, JumpPage, 13)
	Text( 6, "ȷ��", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 6, "�뿪", CloseTalk)
	
	
	Talk( 7, "׿Խ���¹ⱦ�У�����Ի��5����������ӡ,2������Կ��,1��������Կ��5�������֭")
	InitTrigger() 
	TriggerCondition(1, HasItem, 5790, 1)               
	TriggerCondition(1, ItemAttrNum,5790,6,0,0)               
	TriggerCondition(1, HasLeaveBagGrid, 4)
	TriggerCondition( 1, KitbagLock, 0 )               
	               
	TriggerAction(1, TakeItem, 5790, 1)
	TriggerAction(1, Take_THSJ_Record)	
	TriggerAction(1, GiveItem, 2589, 5, 31)
	TriggerAction(1, GiveItem, 5703, 2, 41)
	TriggerAction(1, GiveItem, 3000, 1, 41)
	TriggerAction(1, GiveItem, 3122, 5, 31)
	TriggerFailure(1, JumpPage, 12)
	Text( 7, "ȷ��", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 7, "�뿪", CloseTalk)
	
	Talk( 15, "��ȷ��������������Ϊ0�ķϾɵ��¹ⱦ�У��ǵñ�����Ҫ������������3����λŶ��")
	Text( 15, "�뿪", CloseTalk)
	Talk( 16, "��ȷ��������������Ϊ0�ĳ¾ɵ��¹ⱦ�У��ǵñ�����Ҫ������������2����λŶ��")
	Text( 16, "�뿪", CloseTalk)
	Talk( 14, "��ȷ��������������Ϊ0��ո�µ��¹ⱦ�У��ǵñ�����Ҫ������������2����λŶ��")
	Text( 14, "�뿪", CloseTalk)
	Talk( 13, "��ȷ��������������Ϊ0�ľ��µ��¹ⱦ�У��ǵñ�����Ҫ������������3����λŶ��")
	Text( 13, "�뿪", CloseTalk)
	Talk( 12, "��ȷ��������������Ϊ0��׿Խ���¹ⱦ�У��ǵñ�����Ҫ������������4����λŶ��")
	Text( 12, "�뿪", CloseTalk)
end
----------------------------------------------------------
--							--
--							--
--		ɳᰳ� ʥ�𴫵ݴ�ʹ		--
--							--
--		871,3580		                     --
----------------------------------------------------------
function ay_talk01 ()
	Talk( 1, "ʥ�𴫵ݴ�ʹ: ΰ���ʥ�𴫵ݻ��Ҫ�����ˣ����ǵ������һ�û�п���ʥ��������ں������������У��ѵ�����Ϊ��ʥ�Ļ�����ʧ�ˣ������ˣ����԰��Ҳ���������")
	AddNpcMission	(6250)
	AddNpcMission	(6254)
	AddNpcMission	(6255)
	AddNpcMission	(6266)
	AddNpcMission	(6267)
	AddNpcMission	(6270)
	AddNpcMission	(6271)
	AddNpcMission	(6275)
	AddNpcMission	(6276)
	AddNpcMission	(6279)
	
end
----------------------------------------------------------
--							--
--							--
--		ɳᰳ� ʥ��̨		          --
--							--
--		856,3707		                     --
----------------------------------------------------------
function ay_talk02 ()
	Talk( 1, "��ϲ��ͨ����ʥ�𴫵ݵ����п��飬�㽫��õ�����Ӧ�õĽ�����")
	InitTrigger() 
	TriggerCondition(1, HasRecord, 1324)
	TriggerCondition(1, HasItem, 5842, 1)
	TriggerCondition(1, HasItem, 5797, 1)
	TriggerCondition(1, HasItem, 5798, 1)
	TriggerCondition(1, HasItem, 5799, 1)
	TriggerCondition(1, HasItem, 5800, 1)
	TriggerCondition(1, HasItem, 5801, 1)
	TriggerCondition(1, HasLeaveBagGrid, 2)
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction(1, TakeItem, 5842, 1)
	TriggerAction(1, TakeItem, 5797, 1)
	TriggerAction(1, TakeItem, 5798, 1)
	TriggerAction(1, TakeItem, 5799, 1)
	TriggerAction(1, TakeItem, 5800, 1)
	TriggerAction(1, TakeItem, 5801, 1)
	TriggerAction(1, GiveItem, 5825, 1, 26)   --��ȼ�Ļ��
	TriggerAction(1, GiveItem, 5827, 1, 26)	  --���е�����
	TriggerFailure(1, JumpPage, 2)
	Text( 1, "��ȼ���", MultiTrigger, GetMultiTrigger(), 1 )
	
	Talk( 2, "ֻ��������Ŀ�����˲��ܵ�ȼ��棡��ȼ���ʱ�ǵò�Ҫ�ѱ���������������2���ո�")
	Text( 2, "�뿪",CloseTalk)
	AddNpcMission (6280)
end

----------------------------------------------------------
--							--
--							--
--		������[��Ʊ����Ա�˵�]				--Peter
--							--
--		2315,2836				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function peter_talk001 ()



	
	Talk( 1, "��Ʊ����Ա�˵�:��!�ӽ���������Ǹ�ְҵ������!����ϸ�Ķ�һ�����ǵĲ�Ʊ�й�,Ȼ�����Ǿ�������������~ף��һע��Ǭ��!" )
	Text( 1, "��Ʊ������֪", JumpPage, 2)
	Text( 1, "��Ը�⻨20����һ�ſհײ�Ʊ", JumpPage, 3)
	Text( 1, "��Ը�⻨99������Ӳ����һ��������", JumpPage, 4)
	Text( 1, "��Ҫ��д��Ʊ,�������д�!", OpenLottery)
	Text( 1, "�ҳ�����һֻ��Ǯ���������", JumpPage, 5)	
        Text( 1, "�뿪", CloseTalk)
	
	
	Talk( 2, "��Ʊ������֪:�빺��һ�ſղ�Ʊ,��ӵ��6��������,Ȼ�����дѡ����������Ҫ�ĺ���,�����ȷ���Ϳ�������һ����Ч�Ĳ�Ʊ��,���ǵĲ�Ʊ����ʱ����ÿ��1���ٳ�0�㿪ʼ������ÿ��6������8��ֹͣ,��д�Ĳ�Ʊ�粻�����ܽ��жҽ����Զ�����,�ղ�Ʊ����д��һֱ��Ч�ġ�����ע��0-3��������Դ�������ֱ�ӹ���,����������Ļ����Ҫ�����İ취��Ŷ" )
	Text( 2, "�뿪", CloseTalk)

	Talk( 3, "�����ҵ�20���!��Ҫ�ղ�Ʊ!��Ҫ�н�!")
	
        InitTrigger()                                                   --------�һ��ղ�Ʊ
        TriggerCondition(1, HasLeaveBagGrid,1)       --������һ
	TriggerCondition(1, KitbagLock, 0 )            --����δ��	
        TriggerCondition( 1, HasMoney, 200000)    ---��20��
        TriggerAction(1, TakeMoney, 200000)
	TriggerAction(1, GiveItem, 5828,1,4)              ----------�ղ�Ʊ
	TriggerFailure(1, JumpPage, 8)
	Text(3,"ȷ���һ�",  MultiTrigger, GetMultiTrigger(), 1)

	Talk( 4, "��һ�龫��Ӳ�ҿ��Զһ��±ߵ��κ�һ��������,�������ѡ��!")
	InitTrigger()                                                   --------�һ�������0
        TriggerCondition( 1, HasItem, 0855, 99)       ---�ж��Ƿ��е���,����     
        TriggerCondition(1, HasLeaveBagGrid, 1)       --������һ
	TriggerCondition(1, KitbagLock, 0 )           --����δ��		
        TriggerAction(1, TakeItem, 0855, 99)                 ----һ�龫��Ӳ��
	TriggerAction(1, GiveItem, 5829,1,4)              ----------������0
	TriggerFailure(1, JumpPage, 8)
	Text(4,"ȷ���һ�������0",  MultiTrigger, GetMultiTrigger(), 1)
        InitTrigger()                                                   --------�һ�������0
        TriggerCondition( 1, HasItem, 0855, 99)       ---�ж��Ƿ��е���,����     
        TriggerCondition(1, HasLeaveBagGrid, 1)       --������һ
	TriggerCondition(1, KitbagLock, 0 )           --����δ��	
        TriggerAction(1, TakeItem, 0855, 99)
	TriggerAction(1, GiveItem, 5830, 1,4)              ----------������0
	TriggerFailure(1, JumpPage, 8)
	Text(4,"ȷ���һ�������1",  MultiTrigger, GetMultiTrigger(), 1)
        InitTrigger()      --------�һ�������1
        TriggerCondition( 1, HasItem, 0855, 99)       ---�ж��Ƿ��е���,����     
        TriggerCondition(1, HasLeaveBagGrid, 1)       --������һ
	TriggerCondition(1, KitbagLock, 0 )           --����δ��                                                 
	TriggerAction(1, TakeItem, 0855, 99)
	TriggerAction(1, GiveItem, 5831, 1,4)              ----------������1
	TriggerFailure(1, JumpPage, 8)
	Text(4,"ȷ���һ�������2",  MultiTrigger, GetMultiTrigger(), 1) 
	InitTrigger()                             --------�һ�������2
        TriggerCondition( 1, HasItem, 0855, 99)       ---�ж��Ƿ��е���,����     
        TriggerCondition(1, HasLeaveBagGrid, 1)       --������һ
	TriggerCondition(1, KitbagLock, 0 )           --����δ��   
	TriggerAction(1, TakeItem, 0855, 99)           
	TriggerAction(1, GiveItem, 5832, 1,4)              ----------������2
	TriggerFailure(1, JumpPage, 8)
	Text(4,"ȷ���һ�������3",  MultiTrigger, GetMultiTrigger(), 1)
        InitTrigger()                                                   --------�һ�������3
        TriggerCondition( 1, HasItem, 0855, 99)       ---�ж��Ƿ��е���,����     
        TriggerCondition(1, HasLeaveBagGrid, 1)       --������һ
	TriggerCondition(1, KitbagLock, 0 )           --����δ��   
	TriggerAction(1, TakeItem, 0855, 99)
	TriggerAction(1, GiveItem, 5833, 1,4)              ----------������3
	TriggerFailure(1, JumpPage, 8)
	Text( 4, "�뿪", CloseTalk)

	Talk(5, "����Ǳ��λ�������泬�����Ŷ!������ô���꺣������,����˵ķ����!!�����ǵ��̳���,���б��λ�Ŀ��ų���ͼ��ܹ���ѡ��!")   ---����С�����
        InitTrigger()                                                   --------�һ��ղ�Ʊ
        TriggerCondition(1, HasLeaveBagGrid,1)       --������һ
	TriggerCondition(1, KitbagLock, 0 )            --����δ��	
        TriggerCondition( 1, HasMoney, 100000)    ---��10��
        TriggerAction(1, TakeMoney,100000)
	TriggerAction(1, GiveItem, 5840,1,4)              ----------С�����
	TriggerFailure(1, JumpPage, 8)
	Text(5,"��Ҫ��һֻ������!10���ɽ�!",  MultiTrigger, GetMultiTrigger(), 1)
        Text( 5, "лл����,�´�����!", CloseTalk)

	Talk(8, "��!����,�����ϲ���Ҫ���㹻��Ǯ,��Ҫ���㹻�İ�����!")
        Text( 8, "�뿪", CloseTalk)

end 

-----��Ʊ����Ա�˵½���



----------------------------------------------------------
--							--
--							--
--		������[��Ʊ�һ�Ա������]				--Peter
--							--
--		231888,283688				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function peter_talk002 ()

	Talk( 1, "��Ʊ�һ�Ա������:���ǵĽ�Ʒ���Ƿǳ������ۺ����!ֻ��Ҫһ�������,�����ӵ��!" )
	Text( 1, "��Ʊ�ҽ���֪", JumpPage, 2)
	Text( 1, "��Ʒ��ѯ", JumpPage, 3)
	Text( 1, "��Ʊһ��,��Ʒ����,�����ҽ�,��ҹ���!", JumpPage, 4)     
	Text( 1, "�н������ѯ",JumpPage, 5)
        Text( 1, "�뿪", CloseTalk)
	
	
	Talk( 2, "��Ʊ�һ���֪�������Ҳ�ѯ���ڵ��н�����,����Ҫ�ҽ��Ĳ�Ʊ���ڰ����ĵ�һ�������Ʊ����ȫ����ȷΪһ�Ƚ�,������λ���н�������ͬΪ���Ƚ�,������λ���н�������ͬΪ���Ƚ�,������λ���н�������ͬΪ�ĵȽ�,������λ���н�������ͬΪ��Ƚ�." )
	Text( 2, "�뿪", CloseTalk)

	Talk( 3, "���ǵĽ�Ʒ������ʷ���������!�����Ǵӽ�������Բ��ó����ʹ�ٵ��ö�����!�����뿴��Ʒ:��Ƚ���ƷΪ�ܿ�Ĵ�Ǯ�������ٻ�ȯ,�ĵȽ���ƷΪ���ڻ�����־,���Ƚ�Ϊ����Կ��,���Ƚ���ƷΪ�����ߵ�����,һ�Ƚ���ƷΪ�����ʬ��!")
	Text( 3, "�뿪", CloseTalk)
	
	Talk( 4, "ȷ���һ��Ĳ�Ʊ���ڰ����ĵ�һ��,Ȼ��һ���Ӧ�Ľ�Ʒ��!��׼��,�����ṩ����һ��͵Ƚ���Ȩ��,���ǻ��˿ɱ���Ŷ!!" )

	InitTrigger()
        TriggerCondition( 1, HasItem, 5828, 1)       ---�ж��Ƿ��е���,����     
        TriggerCondition(1, HasLeaveBagGrid, 1)       --������һ
	TriggerCondition(1, KitbagLock, 0 )           --����δ��		
	TriggerCondition(1, DuiHhuan1)	               ---�һ�2�Ƚ�
  	TriggerAction(1, GiveItem, 2842,1,4)              ---------2�Ƚ���Ʒ
	TriggerFailure(1, JumpPage, 8)--------�һ���Ʒʧ��
	Text(4,"ȷ���һ�һ�Ƚ�", MultiTrigger, GetMultiTrigger(), 1)       
	 
	InitTrigger()                                                   --------�һ�2�Ƚ�
        TriggerCondition( 1, HasItem, 5828, 1)       ---�ж��Ƿ��е���,����     
        TriggerCondition(1, HasLeaveBagGrid, 1)       --������һ
	TriggerCondition(1, KitbagLock, 0 )           --����δ��		
	TriggerCondition(1, DuiHhuan2)	               ---�һ�2�Ƚ�
  	TriggerAction(1, GiveItem, 2835,1,4)              ---------2�Ƚ���Ʒ
	TriggerFailure(1, JumpPage, 8)--------�һ���Ʒʧ��
  	Text(4,"ȷ���һ����Ƚ�", MultiTrigger, GetMultiTrigger(), 1)

        InitTrigger()                                                   --------�һ�3�Ƚ�
        TriggerCondition( 1, HasItem, 5828, 1)       ---�ж��Ƿ��е���,����     
        TriggerCondition(1, HasLeaveBagGrid, 1)       --������һ
	TriggerCondition(1, KitbagLock, 0 )           --����δ��
        TriggerCondition(1, DuiHhuan3)                ---�һ�3�Ƚ�
	TriggerAction(1, GiveItem, 5704,1,4)              ---------3�Ƚ���Ʒ
	TriggerFailure(1, JumpPage, 8)--------�һ���Ʒʧ��
	Text(4,"ȷ���һ����Ƚ�", MultiTrigger, GetMultiTrigger(),  1)

        InitTrigger()                                                   --------�һ�4�Ƚ�
        TriggerCondition( 1, HasItem, 5828, 1)       ---�ж��Ƿ��е���,����     
        TriggerCondition(1, HasLeaveBagGrid, 1)       --������һ
	TriggerCondition(1, KitbagLock, 0 )           --����δ��	
	TriggerCondition(1, DuiHhuan4)                   ---�һ�4�Ƚ�
	TriggerAction(1, GiveItem, 0853,1,4)              ---------4�Ƚ���Ʒ
	TriggerFailure(1, JumpPage, 8)--------�һ���Ʒʧ��
	Text(4,"ȷ���һ��ĵȽ�", MultiTrigger, GetMultiTrigger(),  1)

        InitTrigger()                                                   --------�һ�5�Ƚ�
        TriggerCondition( 1, HasItem, 5828, 1)       ---�ж��Ƿ��е���,����     
        TriggerCondition(1, HasLeaveBagGrid, 1)       --������һ
	TriggerCondition(1, KitbagLock, 0 )           --����δ��	
	TriggerCondition(1, DuiHhuan5)                     ---�һ�5�Ƚ�
	TriggerAction(1, GiveItem, 5840,1,4)              ---------5�Ƚ���Ʒ
	TriggerFailure(1, JumpPage, 8)--------�һ���Ʒʧ��
	Text(4,"ȷ���һ���Ƚ�", MultiTrigger, GetMultiTrigger(), 1)
        Text( 4, "�뿪", CloseTalk)
	
        Talk(5, "ÿ�������8����9������ѭ������ÿһλ�н����룬9��빫������ȫ�����н����룬�ǵ�����ϵͳ����Ŷ!")            --------�һ���ѯ
        Text( 5, "�뿪", CloseTalk)


	Talk(8, "���ѯ�н�����,Ȼ���ڿ����ڼ�����Ч�Ĳ�Ʊ�����Ҷҽ�")            --------�һ�ʧ��
	Text(8, "�뿪", CloseTalk)
end

	-----��Ʊ�һ�Ա���������

		----------------------------------------------------------
--							--
--							--
--		������[��Ǯ������]				--Peter
--							--
--		231888,283688				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function peter_talk003 ()
	Talk( 1, "�ߺ�~�����й���Ĵ�Ǯ���������ż!�̳��ﻹ��һֻ�ҵ��ֵ�!��֪����������ô?" )
        Text( 1, "�뿪", CloseTalk)
end
		----��Ǯ���������
		
-----------------����������Ա by Dean---------------------
function arena_talk01 ()
	Talk(1, "��������������������������������������������������")
	Text(1, "�����μӵ�������ʲô��", JumpPage, 2)
	Text(1, "�������ı���������ʲô��", JumpPage, 3)
	Text(1, "�����μ�", JumpPage, 8)	
	Text(1, "�뿪", CloseTalk)
	
	Talk(2, "�������ı�������Ϊ3����ӣ�������1��ʦ����2��ͽ�ܵ���ʽ������ʱ����ʦ���Ƕӳ����Ѿ������ɹ�����ò������Ķ��齫�޷��ظ�������ÿ���������ܶ��鱨���޶�Ϊ64֧.���������鵽��64֧ʱ�����ٽ��ܱ�����")
	Text(2, "���Ѿ��������������", JumpPage, 1)
	Text(2, "�뿪", CloseTalk)
	
	Talk(3, "�������Ĺ����Ϊʱ�����ʤ�����򣬸�����򣬹ۿ�����...")
	Text(3, "ʱ�����", JumpPage, 4) 
	Text(3, "ʤ������", JumpPage, 5)
	Text(3, "�������", JumpPage, 6)
	Text(3, "�ۿ�����", JumpPage, 7)
	Text(3, "�뿪", CloseTalk)
	
	Talk(4, "����������һ������Ϊ��λ���б����ģ�ÿ���µĵ�һ��Ϊ����ʱ�䣬��:5��1�� 00��00 ~ 5��7�� 24:00���ʱ��Ϊ����ʱ�䡣���������Ĺ涨ʱ��Ϊ10���ӡ��ھ��������޷�ʹ���κε��ߡ�")
	Text(4, "�������", JumpPage, 3) 
	Text(4, "�뿪", CloseTalk)
	
	Talk(5, "��������ʤ������Ϊ���ڱ�����ͼ�ڵ�2֧�����е��κ�һ����Ա����ֵΪ0ʱ����Ϊ��������ɫ�������޷��ƶ����޷��ص������㸴����Ա����Ѹ����ĳһ��������г�Աȫ������ʱ����Ϊʧ�ܡ���ʤ�Ķ������ֱ�ӽ�����һ�ֱ�����ʧ�ܵĶ�������л���ͨ�����ͶƱ�������������")
	Text(5, "�������", JumpPage, 3) 
	Text(5, "�뿪", CloseTalk)
	
	Talk(6, "�������ĸ������Ϊ: �ڱ�����ʧ�ܵĶ��齫�������а�����ʾ����������������ƺ����и�ͶƱ��ť����ҿ�ͨ���̳ǹ���ĸ�����߽���ͶƱ��Ʊ�����Ķ��齫������ֱ�ӽ�����һ�֡�")
	Text(6, "�������", JumpPage, 3) 
	Text(6, "�뿪", CloseTalk)
	
	Talk(7, "�������Ĺۿ�����Ϊ: ��ҿ�ͨ���������ι�ȯ���뾺�����ڹۿ�����������ֻ���ڰ�ȫ����������ʹ���κε��ߺͼ��ܣ�������������֮�����ͨ������NPC���ഫ�ͺ��뿪��")
	Text(7, "�������", JumpPage, 3) 
	Text(7, "�뿪", CloseTalk)
	
	Talk(8, "���ٴ������£�Ҫ�����μӾ�����������Ҫ1��ʦ����2��ͽ�ܣ�3����Ӻ�ʦ������Ϊ�ӳ�����ʦ�������뱨����ȡ��������һ�������ɹ��ڱ�����;���޷�������Աֱ������̭��Ӯ���ܹھ�������Ҫ������Ա�Ļ�ֻ�ܽ�ɢ�������±�������ȷ����Ҫ�����μ���")
	InitTrigger()                                                   
    TriggerCondition(1,CheckIsValidTeam)
	TriggerAction(1,GiveItem,5848,1,4)
	TriggerFailure(1,JumpPage,1)
	Text(8, "��ȷ��", MultiTrigger, GetMultiTrigger(), 1) 
	Text(8, "�뿪", CloseTalk)
end
-----------------���������͹���Ա [ 2203,2902,garner ] by Dean---------------------
function arena_talk02 ()
	Talk(1, "��ã����Ǹ��𾺼������͵Ĺ���Ա��ֻҪ����׼ȷ��ʱ��������������ң��Ҿͻ�������Ķ��Ѵ��͵�������ͼ�С�")
	Text(1, "��������������Щ�أ�", JumpPage, 2)
	Text(1, "׼����ս", JumpPage, 3)		
	Text(1, "�뿪", CloseTalk)
	
	Talk(2, "������Ķ������ӵ�в����������Ҳ������ϵ������źͳ���ʱ��Ҫ�͵�ǰ��������ǰ�����������Σ��������е��ִκ�ҲҪ�͵�ǰ�������ִ�������������㵱ǰ�����еĶ��Ѻͱ���ʱ�Ķ��ѱ�����ͬһ���ˣ�����������������κ�һ����������ô���ź����ҽ��޷�Ϊ������")
	Text(2, "��������", JumpPage, 1)
	Text(2, "�뿪", CloseTalk)
	
	Talk(3, "��ȷ���������Ķ����Ѿ������˱�����׼�������������Ķ��Ѷ�ͨ��ȷ�Ͽ��ȷ�Ϻ����Ķ��齫��ʱ���ܱ����������ͼ��Ϊ�˱�����ɲ���Ԥ���ĺ�������������Ķ����ڵȴ����͵��ڼ䲻Ҫ��������������")
	--InitTrigger()
	--TriggerCondition(1,�����������Ƿ�����) 
    --TriggerCondition(1, )      --- ����������Ƿ���ͬ
    --TriggerCondition(1, )      --- ����ִκ��Ƿ���ͬ 
	--TriggerCondition(1, )      --- ��ⳡ�κ��Ƿ���ͬ                  
	--TriggerAction(1,)              
	--TriggerFailure(1, JumpPage, 8)
	Text(3, "��������", MultiTrigger, GetMultiTrigger(),  1)
	Text(3, "�뿪", CloseTalk)
	
	Talk(4, "��ȷ�����Ѿ������˴����뾺����������")
	Text(4, "��������������Щ�أ�", JumpPage, 2)
	Text(4, "�뿪", CloseTalk)
end
