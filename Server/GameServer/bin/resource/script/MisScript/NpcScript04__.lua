--------------------------------------------------------------------------
--									--
--									--
--NPCScript04.lua Created by Robin 2006.1.21.	--
--									--
--									--
--------------------------------------------------------------------------
print( "loading NPCScript04.lua" )

jp= JumpPage
amp=AutoMissionPage
ct=CloseTalk
am=AddMission
MissionCheck = HasFlag
mc=MissionCheck


------------------------------------------------------------
-- ������ ����������
------------------------------------------------------------

function b_talk1()


	Talk( 1, "���������Σ��������������Ұ׻�����ţ�����䣬��ͷ���ؿڣ��˵�ɱ�ˣ���ɱ�ˡ���" )
	Text( 1, "����", BuyPage )
	Text( 1, "����", OpenRepair)
	Text( 1, "�йؾ���", JumpPage, 2)
	Text( 1, "�йغϳ�", JumpPage, 3)

	Talk( 2, "���Σ����������ּ���ֻ��ɳᰳǵ������Żᡣ" )

	Talk( 3, "���Σ�����ϳ���Ʒô��������֪�ϳ���Ʒ��Ҫ��һ�����Ӧ�ĺϳɹ�ʽ���ᣬ����������������кϳ�����Ҫ�Ĳ��ϣ��������ɳᰳǵ��ӻ����ˡ���ī���������������Ψһ��ϳɵ��ˣ���֪���ľ�ֻ����Щ�ˡ�" )
	
	Talk( 4, "���������Σ���������������^$&#&^%��������������" )



	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 4 )
	Start( GetMultiTrigger(), 2 )


	InitTrade()
	Weapon(	0023	)
	Weapon(	1399	)
	Weapon(	0021	)
	Weapon(	1378	)
	Weapon(	1387	)
	Weapon(	0084	)
	Weapon(	1426	)
	Weapon(	1461	)
	Weapon(	0108	)
	Weapon(	4302	)
	Weapon(	1438	)
	Weapon(	1441	)
	Weapon(	1473	)
	Weapon(	1476	)
	Weapon(	0045	)
	Weapon(	1414	)


	AddNpcMission ( 393 )
        AddNpcMission ( 567 )

	-------------����������-------��з
	AddNpcMission	(5817)
	AddNpcMission	(5818)
end


------------------------------------------------------------
-- ������ ��ջ�ϰ塤��Ů�����ظ�Ʒ)
------------------------------------------------------------

function b_talk2()


	Talk( 1, "��Ů�����͹�����룬�����ϱ����������ȫ��������ʲô�ʺ�����ζ�ģ���")
	--Text( 1, "����", BuyPage )
	
	Talk( 2, "��Ů����������������^$&#&^%��������������" )



	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )


   	InitTrade()
	Other(	1078	)
	Other(	1079	)
	Other(	1080	)
	Other(	1082	)  
	Other(	1083	)

	AddNpcMission ( 394 )
	AddNpcMission ( 536 )
	AddNpcMission ( 537 )
	AddNpcMission ( 538 )
        AddNpcMission ( 569 )


	-------------��ջ�ϰ塤��Ů-------��з
	AddNpcMission	(5819)
	AddNpcMission	(5820)
-------------��ջ�ϰ塤��Ů-------�ﵺ����
	--AddNpcMission	(6174)
	--AddNpcMission	(6175)

end

------------------------------------------------------------
-- ������ �ӻ����ˡ�³�ȶ�(���ɻ�Ʊ)
------------------------------------------------------------

function b_talk3()


	Talk( 1, "³�ȶ��������������һ����Ϸ�����ҵ����֣������ڿ���Ҫ��Ҫȥ��ȡ����Ȩ����" )
	Text( 1, "����", BuyPage )
	Talk( 2, "³�ȶ�����������������^$&#&^%��������������" )



	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )



	InitTrade()
	Other(	3141	)
	Other(	4602	)
	Other(	4603	)
	Other(	4604	)

	AddNpcMission ( 395 )
	AddNpcMission ( 517 )
	AddNpcMission ( 519 )
	AddNpcMission ( 525 )
	AddNpcMission ( 526 )
	--AddNpcMission ( 535 )
        AddNpcMission ( 564 )

	-------------�ӻ����ˡ�³�ȶ�-------��з
	AddNpcMission	(5821)
	AddNpcMission	(5822)


end

------------------------------------------------------------
-- ������ ó�����ˡ��������ó��Ʒ
------------------------------------------------------------

function b_talk4()


	Talk( 1, "������쾯����û��ħ������û��ɶ������֪�����齫�ܸô���ɣ���������������û���������С���ˡ���" )
	--Text( 1, "����", BuyPage )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 13 )
	TriggerAction( 1, TradeBerthList, 13 )
	TriggerFailure( 1, JumpPage, 2 )
	--Text( 1, "���ｻ��", MultiTrigger, GetMultiTrigger(), 1 )
	--Text( 1, "���ڻ��ó��֤",JumpPage, 3)
	
	Talk( 2, "����Բ�����Ĵ�û��ͣ�ڴ���֮�ۡ��޷����ס�" )
	
	Talk( 3, "��ã���Ҫ�¸��Ļ���һ��Ҫӵ�С�ó��֤��Ŷ������ó��֤����ܾ�Ӫ�����ó��Ʒ��ͬʱҲ�ܽ�����ĳɱ���Ŀǰֻ��ɳᰳǵ�ó��������ó��֤���š�")
	Text( 3, "�й�˰��",JumpPage, 7)
	Text( 3, "����ó��֤",JumpPage, 4)
	Text( 3, "�м�ó��֤",JumpPage, 5)
	Text( 3, "�߼�ó��֤",JumpPage, 6)
	

	Talk( 4, "����ó��֤�����׾��ܵõ�������ﵽ20����ȥɳᰳǵ�ó���������һ���򵥵�����Ϳ��Եõ���")
	Talk( 5, "���㼶��ﵽ40�����ҽ�����ó��֤˰�ʽ��͵�20%����ʱ���Ϳ��Ե�ɳᰳ�ó����ͨ���������м�ó��֤��")
	Talk( 6, "���㼶��ﵽ60�����ҽ�����ó��֤˰�ʽ��͵�10%����ʱ���Ϳ��Ե�ɳᰳ�ó����ͨ�������ø߼�ó��֤��")
	Talk( 7, "�鿴���ó��֤���ܿ����㵱ǰ��˰�ʣ�˰��ֱ��Ӱ�������ó��Ʒʱ�Ͻ��Ľ����ʣ���Ҫ����˰��ֻ�е�ɳᰳǵ�ó�������һ��ó��������С�")
	Talk( 8, "�����������������^$&#&^%��������������" )



	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 8 )
	Start( GetMultiTrigger(), 2 )


	InitGoods()
	SaleGoodsData(	0	,	4573	,	900	,	279	,	62	)
	SaleGoodsData(	0	,	4574	,	800	,	342	,	76	)
	SaleGoodsData(	1	,	4575	,	700	,	391	,	87	)
	SaleGoodsData(	1	,	4576	,	480	,	432	,	96	)
	SaleGoodsData(	2	,	4577	,	300	,	495	,	110	)
	SaleGoodsData(	2	,	4578	,	240	,	522	,	116	)
	SaleGoodsData(	3	,	4579	,	60	,	589	,	131	)
	SaleGoodsData(	3	,	4580	,	40	,	648	,	144	)

	BuyGoodsData(0,	4581	,	-1	,	542	,	121	)
	BuyGoodsData(0,	4583	,	-1	,	724	,	161	)
	BuyGoodsData(0,	4585	,	-1	,	846	,	188	)
	BuyGoodsData(0,	4587	,	-1	,	846	,	564	)
	BuyGoodsData(0,	4593	,	-1	,	1000	,	223	)
	BuyGoodsData(0,	4595	,	-1	,	938	,	625	)
	BuyGoodsData(0,	4597	,	-1	,	881	,	195	)
	BuyGoodsData(0,	4598	,	-1	,	878	,	195	)
	BuyGoodsData(0,	4600	,	-1	,	866	,	577	)
	BuyGoodsData(0,	4552	,	-1	,	642	,	143	)
	BuyGoodsData(0,	4553	,	-1	,	789	,	175	)
	BuyGoodsData(0,	4554	,	-1	,	934	,	207	)
	BuyGoodsData(0,	4556	,	-1	,	870	,	193	)
	BuyGoodsData(0,	4557	,	-1	,	970	,	215	)
	BuyGoodsData(0,	4560	,	-1	,	1056	,	235	)
	BuyGoodsData(0,	4563	,	-1	,	909	,	202	)
	BuyGoodsData(0,	4566	,	-1	,	785	,	175	)
	BuyGoodsData(0,	4569	,	-1	,	1014	,	225	)
	BuyGoodsData(0,	4572	,	-1	,	924	,	205	)
	BuyGoodsData(0,	4547	,	-1	,	100	,	0	)
	BuyGoodsData(0,	4549	,	-1	,	500	,	0	)
	BuyGoodsData(0,	4548	,	-1	,	300	,	0	)
	BuyGoodsData(0,	4551	,	-1	,	20	,	0	)

	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 51, TE_GAMETIME, TT_CYCLETIME, 30, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()

	AddNpcMission ( 396 )
	AddNpcMission ( 530 )
	AddNpcMission ( 545 )
	AddNpcMission ( 546 )
	AddNpcMission ( 547 )
        AddNpcMission ( 572 )

	-------------ó�����ˡ�����-------��з
	AddNpcMission	(5825)
	AddNpcMission	(5826)


end

------------------------------------------------------------
-- ������ ����ʹ������
------------------------------------------------------------

function b_talk5()
	--ȡ�����ͷ���ѡ���͵ص�ĶԻ����ݺ�ҳ����
	local ReSelectTalk = "���ٿ��ǿ���..."
	local ReSelectPage = 1

	--ȡ�����ͺ��˳����͵ĶԻ���ҳ����
	local CancelSelectTalk = "���ˣ������ﶼ��ȥ��"
	local CancelSelectPage = 7

	--��ͼ������Ϣ
	local CurMapName1 = "garner"
	local CurMapName2 = "magicsea"
	local CurMapName5 = "darkblue"

	--����֮������
	local GoTo01X = 2231
	local GoTo01Y = 2788
	local GoTo01M = CurMapName1

	--ɳ�֮������
	local GoTo02X = 890
	local GoTo02Y = 3575
	local GoTo02M = CurMapName2

	--���Ǳ�����
	local GoTo04X = 1318
	local GoTo04Y = 510
	local GoTo04M = CurMapName5

	Talk( 1, "���򣺡������Ժ����Ǵ���û�а�һ�����������ϡ���" )
	Text( 1, "��Ҫȥ�����ǣ�", JumpPage, 2 )
	Text( 1, "��Ҫȥɳᰳǣ�", JumpPage, 3 )
	Text( 1, "��Ҫȥ���Ǳ���", JumpPage, 4 )
	Text( 1, "��Ҫ��¼������", JumpPage, 5 )
	
	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 11 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 2, JumpPage, 6 )
	Talk( 2, "���͵��������ǰɣ�û���⣡��֧��500G�ֽ�лл������10�����µ�������ѣ�" )
	Text( 2, "��ʼ����",MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 2, CancelSelectTalk, JumpPage , CancelSelectPage )


	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 11 )
	TriggerAction( 1, GoTo, GoTo02X, GoTo02Y, GoTo02M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2,  GoTo, GoTo02X, GoTo02Y, GoTo02M )
	TriggerFailure( 2, JumpPage, 6 )
	Talk( 3, "��ϲ��ɳ�֮������ط�����֧��500G�ֽ�лл������10�����µ�������ѣ�" )
	Text( 3, "��ʼ����",MultiTrigger, GetMultiTrigger(), 2)
	Text( 3, CancelSelectTalk, JumpPage , CancelSelectPage )


	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 11 )
	TriggerAction( 1, GoTo, GoTo04X, GoTo04Y, GoTo04M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2, GoTo, GoTo04X, GoTo04Y, GoTo04M )
	TriggerFailure( 2, JumpPage, 6 )
	Talk( 4, "���͵����Ǳ��ǰɣ���֧��500G�ֽ�лл������10�����µ�������ѣ�" )
	Text( 4, "��ʼ����",MultiTrigger, GetMultiTrigger(), 2)
	Text( 4, CancelSelectTalk, JumpPage , CancelSelectPage )

	Talk( 5, "����Ҫ��¼�ڴ����򣿶�ô��" )
	Text( 5, "�ǵģ����¼��", SetSpawnPos, "������" )
	Text( 5, "����������",CloseTalk )

	Talk( 6, "�Բ��������ֽ��㣬�޷����͡�" )

	Talk( 7, "�´������Ҫ���ͷ���ǵ����Ұ���", CloseTalk )
	Talk( 8, "���򣺡�������������^$&#&^%��������������" )



	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 8 )
	Start( GetMultiTrigger(), 2 )

	AddNpcMission ( 397 )
	 AddNpcMission ( 559 )
	MisListPage(8)

	------------- ����ʹ������-------��з
	AddNpcMission	(5827)
	AddNpcMission	(5828)	

end

------------------------------------------------------------
-- ������ ����������������
------------------------------------------------------------

function b_talk6()


	Talk( 1, "�����죺����λ�͹٣��ҿ�����ͥ�������ظ�Բ����������ת����ս��������������������һ�������ؼ���500��������Σ���" )
	Text( 1, "��Ҫ��һ֧��ҵǩ", JumpPage, 2 )
	Text( 1, "��Ҫ��һ֧����ǩ", JumpPage, 3 )
	Text( 1, "����Ľ���", JumpPage, 6 )

	Talk( 6, "������:�ڰ�����������...����һ�ʲô��?")
	Text( 6, "���������",JumpPage,7)
	Text( 6, "����ϵ��", JumpPage,8)
	Text( 6, "����ϵ��", JumpPage,9)


	--InitTrigger() --�һ����������
	--TriggerCondition( 1, HasItem, 2846, 1 )
	--TriggerCondition( 1, HasItem, 2847, 1 )
	--TriggerCondition( 1, HasItem, 2848, 1 )
	--TriggerCondition( 1, HasItem, 2849, 1 )
	--TriggerCondition( 1, HasItem, 2850, 1 )
	--TriggerCondition( 1, HasItem, 2851, 1 )
	--TriggerCondition( 1, HasItem, 2852, 1 )
	--TriggerCondition( 1, HasItem, 2853, 1 )

       -- TriggerAction( 1, TakeItem,  2846, 1 )
	--TriggerAction( 1, TakeItem,  2847, 1 )
	--TriggerAction( 1, TakeItem,  2848, 1 )
	--TriggerAction( 1, TakeItem,  2849, 1 )
	--TriggerAction( 1, TakeItem,  2850, 1 )
	--TriggerAction( 1, TakeItem,  2851, 1 )
	--TriggerAction( 1, TakeItem,  2852, 1 )
	--TriggerAction( 1, TakeItem,  2853, 1 )
	--TriggerAction( 1, GiveItem,2934, 1,4 )
	--TriggerFailure( 1, JumpPage, 10 ) 
	Talk(7, "������:1���ûʵ����+ 1����������+ 1��а�޵����+ 1���Կ�����+ 1����˵����+ 1�����������+ 1����������+ 1����ɲ�����=1�����������")
	Text( 7, "ȷ�϶һ�",GetChaName_7, 1) 

	Talk( 8, "������:������Ի��:������С���Ӳ���ȥ�������Ҳ.")
	Text( 8, "����˹������",JumpPage,11)
	Text( 8, "�ڰ�������", JumpPage,12)
	Text( 8, "����������", JumpPage,13)
	Text( 8, "��ڤ������", JumpPage,14)
	Text( 8, "ڤ�ӵ�����", JumpPage,15)
	Text( 8, "���޵�����", JumpPage,16)



	--InitTrigger() --�һ�����˹������
	
	--TriggerCondition( 1, HasItem, 2854, 1 )
	--TriggerCondition( 1, HasItem, 2855, 1 )
	--TriggerCondition( 1, HasItem, 2856, 1 )
	--TriggerCondition( 1, HasItem, 2857, 1 )
	--TriggerCondition( 1, HasItem, 2927, 1 )
      
	--TriggerAction( 1, TakeItem,  2854, 1 )
	--TriggerAction( 1, TakeItem,  2855, 1 )
	--TriggerAction( 1, TakeItem,  2856, 1 )
	--TriggerAction( 1, TakeItem,  2857, 1 )
	--TriggerAction( 1, TakeItem,  2927, 1 )
	--TriggerAction( 1, GiveItem,2935, 1,4 )
	--TriggerFailure( 1, JumpPage, 10 ) 
	Talk(11, "������:1�������ë��+1�����������+1�����������+1�����������+1������ӡ�Ĺ���˹���=1������˹������")
	Text( 11, "ȷ�϶һ�",GetChaName_8, 1) 


--InitTrigger() --�һ��ڰ�������	
--TriggerCondition( 1, HasItem, 2854, 1 )
--TriggerCondition( 1, HasItem, 2855, 1 )
--TriggerCondition( 1, HasItem, 2856, 1 )
--TriggerCondition( 1, HasItem, 2857, 1 )
--TriggerCondition( 1, HasItem, 2928, 1 )
--
--TriggerAction( 1, TakeItem,  2854, 1 )
--TriggerAction( 1, TakeItem,  2855, 1 )
--TriggerAction( 1, TakeItem,  2856, 1 )
--TriggerAction( 1, TakeItem,  2857, 1 )
--TriggerAction( 1, TakeItem,  2928, 1 )
--TriggerAction( 1, GiveItem,2936, 1,4 )
--TriggerFailure( 1, JumpPage, 10 ) 
	Talk(12, "������:1�� �����ë��+1�����������+1�����������+1�����������+1������ӡ�ĺڰ����=1���ڰ�������")
	Text( 12, "ȷ�϶һ�",GetChaName_9, 1) 


--InitTrigger() --�һ�����������

--TriggerCondition( 1, HasItem, 2854, 1 )
--TriggerCondition( 1, HasItem, 2855, 1 )
--TriggerCondition( 1, HasItem, 2856, 1 )
--TriggerCondition( 1, HasItem, 2857, 1 )
--TriggerCondition( 1, HasItem, 2929, 1 )

--TriggerAction( 1, TakeItem,  2854, 1 )
--TriggerAction( 1, TakeItem,  2855, 1 )
--TriggerAction( 1, TakeItem,  2856, 1 )
--TriggerAction( 1, TakeItem,  2857, 1 )
--TriggerAction( 1, TakeItem,  2929, 1 )
--TriggerAction( 1, GiveItem,2937, 1,4 )
--TriggerFailure( 1, JumpPage, 10 ) 
	Talk(13, "������:1�������ë��+1�����������+1�����������+1�����������+1������ӡ�ĵ������=1������������")
	Text( 13, "ȷ�϶һ�",GetChaName_10, 1) 



--InitTrigger() --�һ���ڤ������
--TriggerCondition( 1, HasItem, 2854, 1 )
--TriggerCondition( 1, HasItem, 2855, 1 )
--TriggerCondition( 1, HasItem, 2856, 1 )
--TriggerCondition( 1, HasItem, 2857, 1 )
--TriggerCondition( 1, HasItem, 2931, 1 )

--TriggerAction( 1, TakeItem,  2854, 1 )
--TriggerAction( 1, TakeItem,  2855, 1 )
--TriggerAction( 1, TakeItem,  2856, 1 )
--TriggerAction( 1, TakeItem,  2857, 1 )
--TriggerAction( 1, TakeItem,  2931, 1 )
--TriggerAction( 1, GiveItem,2939, 1,4 )
--TriggerFailure( 1, JumpPage, 10 ) 
	Talk(14, "������:1�������ë��+1�����������+1�����������+1�����������+1������ӡ����ڤ���=1����ڤ������")
	Text( 14, "ȷ�϶һ�",GetChaName_11, 1) 

--	InitTrigger() --�һ�ڤ�ӵ�����
--TriggerCondition( 1, HasItem, 2854, 1 )
--TriggerCondition( 1, HasItem, 2855, 1 )
--TriggerCondition( 1, HasItem, 2856, 1 )
--TriggerCondition( 1, HasItem, 2857, 1 )
--TriggerCondition( 1, HasItem, 2932, 1 )
--
--TriggerAction( 1, TakeItem,  2854, 1 )
--TriggerAction( 1, TakeItem,  2855, 1 )
--TriggerAction( 1, TakeItem,  2856, 1 )
--TriggerAction( 1, TakeItem,  2857, 1 )
--TriggerAction( 1, TakeItem,  2932, 1 )
--TriggerAction( 1, GiveItem,2940, 1,4 )
--TriggerFailure( 1, JumpPage, 10 ) 
	Talk(15, "������:1�������ë��+1�����������+1�����������+1�����������+1������ӡ��ڤ�����=1��ڤ�ӵ�����")
	Text( 15, "ȷ�϶һ�",GetChaName_12, 1) 



--InitTrigger() --�һ����޵�����
--TriggerCondition( 1, HasItem, 2854, 1 )
--TriggerCondition( 1, HasItem, 2855, 1 )
--TriggerCondition( 1, HasItem, 2856, 1 )
--TriggerCondition( 1, HasItem, 2857, 1 )
--TriggerCondition( 1, HasItem, 2930, 1 )
--
--TriggerAction( 1, TakeItem,  2854, 1 )
--TriggerAction( 1, TakeItem,  2855, 1 )
--TriggerAction( 1, TakeItem,  2856, 1 )
--TriggerAction( 1, TakeItem,  2857, 1 )
--TriggerAction( 1, TakeItem,  2930, 1 )
--TriggerAction( 1, GiveItem,2938, 1,4 )
--TriggerFailure( 1, JumpPage, 10 ) 
	Talk(16, "������:1�� �����ë��+1�����������+1�����������+1�����������+1������ӡ���������=1�����޵�����")
	Text( 16, "ȷ�϶һ�",GetChaName_13, 1) 


	Talk( 9, "������:����˵�˵Ļ�����0.1����,��֪������Ļ�����ô��?")
	Text( 9, "����˹�Ļ���",JumpPage,17)
	Text( 9, "�ڰ��Ļ���", JumpPage,18)
	Text( 9, "�����Ļ���", JumpPage,19)
	Text( 9, "��ڤ�Ļ���", JumpPage,20)
	Text( 9, "ڤ�ӵĻ���", JumpPage,21)
	Text( 9, "���޵Ļ���", JumpPage,22)
	Text( 9, "�����Ļ���", JumpPage,23)


--InitTrigger() --�һ�����˹�Ļ���
--TriggerCondition( 1, HasItem, 2934, 1 )
--TriggerCondition( 1, HasItem, 2935, 1 )
--TriggerAction( 1, TakeItem,  2934, 1 )
--TriggerAction( 1, TakeItem,  2935, 1 )
--TriggerAction( 1, GiveItem,2562, 1,4 )
--TriggerFailure( 1, JumpPage, 10 ) 
	Talk(17, "������:1����������� + 1������˹������=1������˹�Ļ���")
	Text( 17, "ȷ�϶һ�",GetChaName_14, 1) 
--
--
--InitTrigger() --�һ��ڰ��Ļ���
--TriggerCondition( 1, HasItem, 2934, 1 )
--TriggerCondition( 1, HasItem, 2936, 1 )
--TriggerAction( 1, TakeItem,  2934, 1 )
--TriggerAction( 1, TakeItem,  2936, 1 )
--TriggerAction( 1, GiveItem,2563, 1,4 )
	--TriggerFailure( 1, JumpPage, 10 ) 
	Talk(18, "������:1����������� + 1���ڰ�������=1���ڰ��Ļ���")
	Text( 18, "ȷ�϶һ�",GetChaName_15, 1) 



--InitTrigger() --�һ������Ļ���
--TriggerCondition( 1, HasItem, 2934, 1 )
--TriggerCondition( 1, HasItem, 2937, 1 )
--TriggerAction( 1, TakeItem,  2934, 1 )
--TriggerAction( 1, TakeItem,  2937, 1 )
--TriggerAction( 1, GiveItem,2564, 1,4 )
--TriggerFailure( 1, JumpPage, 10 ) 
	Talk(19, "������:1����������� + 1������������=1�������Ļ���")
	Text( 19, "ȷ�϶һ�",GetChaName_16, 1) 
--
--
--
--InitTrigger() --�һ���ڤ�Ļ���
--TriggerCondition( 1, HasItem, 2934, 1 )
--TriggerCondition( 1, HasItem, 2939, 1 )
--TriggerAction( 1, TakeItem,  2934, 1 )
--	TriggerAction( 1, TakeItem,  2939, 1 )
--TriggerAction( 1, GiveItem,2566, 1,4 )
--TriggerFailure( 1, JumpPage, 10 ) 
	Talk(20, "������:1����������� + 1����ڤ������=1����ڤ�Ļ���")
	Text( 20, "ȷ�϶һ�",GetChaName_17, 1) 
--
--
--InitTrigger() --�һ�ڤ�ӵĻ���
--TriggerCondition( 1, HasItem, 2934, 1 )
--TriggerCondition( 1, HasItem, 2940, 1 )
--TriggerAction( 1, TakeItem,  2934, 1 )
--TriggerAction( 1, TakeItem,  2940, 1 )
--TriggerAction( 1, GiveItem,2567, 1,4 )
--TriggerFailure( 1, JumpPage, 10 ) 
	Talk(21, "������:1����������� + 1��ڤ�ӵ�����=1��ڤ�ӵĻ���")
	Text( 21, "ȷ�϶һ�",GetChaName_18, 1) 
--
--

--InitTrigger() --�һ����޵Ļ���
--TriggerCondition( 1, HasItem, 2934, 1 )
--TriggerCondition( 1, HasItem, 2938, 1 )
--TriggerAction( 1, TakeItem,  2934, 1 )
--TriggerAction( 1, TakeItem,  2938, 1 )
--TriggerAction( 1, GiveItem,2565, 1,4 )
--TriggerFailure( 1, JumpPage, 10 ) 
	Talk(22, "������:1����������� + 1�����޵�����=1�����޵Ļ���")
	Text( 22, "ȷ�϶һ�",GetChaName_19, 1) 
--
--InitTrigger() --�һ������Ļ���
--TriggerCondition( 1, HasItem, 2562, 1 )
--TriggerCondition( 1, HasItem, 2563, 1 )
--TriggerCondition( 1, HasItem, 2564, 1 )
--TriggerCondition( 1, HasItem, 2565, 1 )
--TriggerCondition( 1, HasItem, 2566, 1 )
--TriggerCondition( 1, HasItem, 2567, 1 )
--TriggerCondition( 1, HasItem, 2933, 1 )
--TriggerCondition( 1, HasItem, 2934, 1 )
--
--TriggerAction( 1, TakeItem,  2562, 1 )
--TriggerAction( 1, TakeItem,  2563, 1 )
--TriggerAction( 1, TakeItem,  2564, 1 )
--TriggerAction( 1, TakeItem,  2565, 1 )
--TriggerAction( 1, TakeItem,  2566, 1 )
--TriggerAction( 1, TakeItem,  2567, 1 )
--TriggerAction( 1, TakeItem,  2933, 1 )
--TriggerAction( 1, TakeItem,  2934, 1 )
--TriggerAction( 1, GiveItem,2404, 1,4 )
--TriggerFailure( 1, JumpPage, 10 ) 
	Talk(23, "������:1���ڰ��Ļ��� + 1�����޵Ļ��� + 1������˹�Ļ��� + 1�������Ļ��� + 1����ڤ�Ļ��� + 1��ڤ�ӵĻ��� + 1�� ��������� + 1��������΢Ц=1�������Ļ���")
	Text( 23, "ȷ�϶һ�",GetChaName_20, 1) 

	Talk( 10, "��������û�жһ��������Ʒ���������ı���û�п�λ��.�ǵ����ı�����Ҫ��Ŷ" )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 5000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 5000)
	TriggerAction( 1, GiveItem, 3086,1, 4 )
	TriggerFailure( 1, JumpPage, 5 )
	Talk( 2, "����ҵǩ������5000�飡" )
	Text( 2, "�ðɾ͸���5000��",MultiTrigger, GetMultiTrigger(), 1 ) 

	InitTrigger()
	TriggerCondition( 1, HasMoney, 5000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 5000)
	TriggerAction( 1, GiveItem, 3087,1, 4 )
	TriggerFailure( 1, JumpPage, 5 )
	Talk( 3, "�����ǩ������5000�飡" )
	Text( 3, "�ðɾ͸���5000��",MultiTrigger, GetMultiTrigger(), 1 ) 
	
	Talk( 4, "�����죺��������������^$&#&^%��������������" )

	Talk( 5, "���ı���û�п�λ����Ǯ����Ŷ���������ı���������" )

	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 4 )
	Start( GetMultiTrigger(), 4 )
	
	AddNpcMission ( 520 )
        AddNpcMission ( 900 )
---------------------����ʷ����
	AddNpcMission(	5065)
	AddNpcMission(	595	)
	AddNpcMission(	599	)
	AddNpcMission(	5000	)
	AddNpcMission(	5001	)
	AddNpcMission(	5002	)
	AddNpcMission(	5003 )
	AddNpcMission(	5066)

	------------- ����������������-------��з
	AddNpcMission	(5829)
	AddNpcMission	(5830)	

end
------------------------------------------------------------
-- ������ �Ƶ��ϰ塤���
------------------------------------------------------------

function b_talk7()


	Talk( 1, "��٣���¥��¥�µĻ���ǣ�����ӭ�ӿ�����!��" )
   	--Text( 1, "����", BuyPage )
	
	Talk( 2, "��٣���������������^$&#&^%��������������" )

	InitTrade()
	Other(	1084	)
	Other(	1085	)
	Other(	1087	)
	Other(	1088	)
	Other(	1089	)
	Other(	1090	) 


	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )


	AddNpcMission ( 392 )
	AddNpcMission ( 514 )
	AddNpcMission ( 516 )
	AddNpcMission ( 527 )
	AddNpcMission ( 528 )
	AddNpcMission ( 529 )
	AddNpcMission ( 548 )
	AddNpcMission ( 550 )
	AddNpcMission ( 551 )
       AddNpcMission ( 558 )
       AddNpcMission ( 571 )
------------������ʷ����
	AddNpcMission(	592	)
	AddNpcMission(	5004	)
	AddNpcMission(	5005	)
	AddNpcMission(	5006	)
	AddNpcMission(	5007	)
	AddNpcMission(	5008	)
	AddNpcMission(	5043	)
	AddNpcMission(	5054	)
	AddNpcMission(	5055	)

	------------- �Ƶ��ϰ塤���-------��з
	AddNpcMission	(5831)
	AddNpcMission	(5832)

end

------------------------------------------------------------
-- ������ �ۿ�ָ�ӡ�˪��
------------------------------------------------------------

function b_talk8()


	Talk( 1, "˪�棺�����ۣ����ۣ����̣�������������" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 13 )
	TriggerAction( 1, LuanchBerthList, 13, 3426, 2575, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 13 )
	TriggerAction( 2, RepairBerthList, 13 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 13 )
	TriggerAction( 2, SupplyBerthList, 13 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 13 )
	TriggerAction( 1, SalvageBerthList, 13 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 ) 
	
	Talk( 3, "�Բ�����Ĵ����ڴ˸ۿڻ����Ѿ���û������̴�ֻ���ٳ�����" )
	Talk( 4, "�Բ���Ҫ����ֻ���뽫��ͣ�ڱ��ۿڣ�������1000G����" )
	Talk( 5, "�Բ���Ҫ������ֻ���뽫��ͣ�ڱ��ۿڣ�������200G����" )
	Talk( 6, "�Բ�������ֻ���̱��۴�ֻ��������Ҫ������1000G����" )
	Talk( 7, "˪�棺��������������^$&#&^%��������������" )


	AddNpcMission ( 398 )
	AddNpcMission ( 565 )

	------------- �ۿ�ָ�ӡ�˪��-------��з
	AddNpcMission	(5833)
	AddNpcMission	(5834)

end

------------------------------------------------------------
-- ������ �����ܹܡ���ī
------------------------------------------------------------

function b_talk9()


	Talk( 1, "��ī�����㿴������Щ���찡����û��ʲô����Ķ������ҿ��԰��㱣�ܡ���" )
	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, OpenBank )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "���У�ÿ��200G��", MultiTrigger, GetMultiTrigger(), 1)
	Talk( 2, "�Բ��������ֽ𲻹����޷�֧��ʹ�����еķ��á�" )
	Talk( 3, "��ī����������������^$&#&^%��������������" )



	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 3 )
	Start( GetMultiTrigger(), 2 )



	AddNpcMission ( 399 )
	AddNpcMission ( 510 )
	AddNpcMission ( 511 )
	AddNpcMission ( 512 )
	AddNpcMission ( 513 )
	AddNpcMission ( 543 )
	AddNpcMission ( 544 )
        AddNpcMission ( 570 )

	------------- �����ܹܡ���ī-------��з
	AddNpcMission	(5839)
	AddNpcMission	(5840)
end

------------------------------------------------------------
-- ������ ��������Ǯ��
------------------------------------------------------------

function b_talk10()


	Talk( 1, "��Ǯ����ö���ɶʱ�򿪷�������" )
	Talk( 2, "��Ǯ���������������^$&#&^%��������������" )



	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )

	------------- ��������Ǯ��-------��з
	AddNpcMission	(5835)
	AddNpcMission	(5836)

end

------------------------------------------------------------
-- ������ ����������֣
------------------------------------------------------------

function b_talk11()


	Talk( 1, "����֣����1��1����2��������2������2����ʵ��ֻ�Ǹ����о�һ�£��α������أ�����2��������2������" )
	Talk( 2, "����֣����������������^$&#&^%��������������" )



	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )

	AddNpcMission ( 531 )
	AddNpcMission ( 532 )
	AddNpcMission ( 533 )
	AddNpcMission ( 534 )

	------------- ����������֣-------��з
	AddNpcMission	(5837)
	AddNpcMission	(5838)

end

------------------------------------------------------------
-- ������ �������ӡ�����
------------------------------------------------------------

function b_talk12()


	Talk( 1, "���ƣ������Ѿ�����ˮ���˰ɣ�������Ů����~~��" )
	Talk( 2, "���ƣ���������������^$&#&^%��������������" )



	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )
         
	 AddNpcMission ( 533 )
	 AddNpcMission ( 563 )

	------------- �������ӡ�����-------��з
	AddNpcMission	(5841)
	AddNpcMission	(5842)

end

------------------------------------------------------------
-- ������ ����Ů�ӡ�ˮ��
------------------------------------------------------------

function b_talk13()


	Talk( 1, "ˮ�������Ѿ����������˰ɣ�������������~~��" )
	Talk( 2, "ˮ����������������^$&#&^%��������������" )



	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )

	------------- ����Ů�ӡ�ˮ��-------��з
	AddNpcMission	(5843)
	AddNpcMission	(5844)

end

------------------------------------------------------------
-- ������ �������ӡ��ȸ�
------------------------------------------------------------

function b_talk14()


	Talk( 1, "�ȸǣ������£�û�£���һ���Ӽ��������£�û�±�����ң�����" )
	Talk( 2, "�ȸǣ���������������^$&#&^%��������������" )



	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )

        AddNpcMission ( 568 )

	------------- �������ӡ��ȸ�-------��з

	AddNpcMission	(5847)
	AddNpcMission	(5848)
	------------�������ӡ��ȸ�-------���˻
	AddNpcMission	(6262)
	AddNpcMission	(6263)


end

------------------------------------------------------------
-- ������ ����Ů�ӡ�����
------------------------------------------------------------

function b_talk15()


	Talk( 1, "���أ����Ҳ��ǻ��أ��Ҳ����书��������~~��" )
	Talk( 2, "���أ���������������^$&#&^%��������������" )



	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )

	------------- ����Ů�ӡ�����-------��з
	AddNpcMission	(5845)
	AddNpcMission	(5846)

end

------------------------------------------------------------
-- ������ ����������������ɽ
------------------------------------------------------------

function b_talk16()


	Talk( 1, "������ɽ��������㣬û�����������������𣿡�" )
	Talk( 2, "������ɽ����������������^$&#&^%��������������" )



	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )
-----------------����������������ɽ---------��ţ
	AddNpcMission	(5641)
	AddNpcMission	(5642)

	------------- ����������������ɽ-------��з
	AddNpcMission	(5849)
	AddNpcMission	(5850)

end

------------------------------------------------------------
-- ������ ������ʦ
------------------------------------------------------------

function b_talk17()


	Talk( 1, "������ʦ�������ӡ�����" )
        Text( 1, "��Ҫ��", JumpPage, 2)
	InitTrigger()
	TriggerCondition( 1, HasItem, 1807, 1 )
	TriggerAction( 1, OpenHair )
	TriggerFailure( 1, JumpPage, 3 )
	Talk( 2, "������ʦ��Ҫת��ͷ����ô���������ȯ���ҿ�����")
	Text( 2, "�ǵģ���ȷ��", MultiTrigger, GetMultiTrigger(), 1)
	Text( 2, "���ˣ��һ��������", CloseTalk )

	Talk( 3, "������ʦ������û����ȯŶ���Ҳ��ܸ������ġ�")
	Talk( 4, "������ʦ����������������^$&#&^%��������������" )



	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 4 )
	Start( GetMultiTrigger(), 2 )

	AddNpcMission	(6003)
	AddNpcMission	(6004)
	AddNpcMission	(6005)
	AddNpcMission	(6006)
	AddNpcMission	(6007)
	AddNpcMission	(6008)
	AddNpcMission	(6009)


	-------------����ָ�ӡ�����-------��з
	AddNpcMission	(5851)
	AddNpcMission	(5852)

end

------------------------------------------------------------
-- ������ ��ʬ��������
------------------------------------------------------------

function b_talk18()


	Talk( 1, "����������������" )
	Talk( 2, "����������������������^$&#&^%��������������" )



	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )
	
	AddNpcMission ( 515 )
	AddNpcMission ( 518 )
	AddNpcMission ( 524 )
end

------------------------------------------------------------
--������Ѩ һ��to����
------------------------------------------------------------

function b_talk21()


	--ȡ�����ͷ���ѡ���͵ص�ĶԻ����ݺ�ҳ����
	local ReSelectTalk = "���ٿ��ǿ���..."
	local ReSelectPage = 1

	--ȡ�����ͺ��˳����͵ĶԻ���ҳ����
	local CancelSelectTalk = "���ˣ������ﶼ��ȥ��"
	local CancelSelectPage = 5

	--��ͼ������Ϣ
	local CurMapName = "eastgoaf"


	--������Ѩ��������
	local GoTo01X = 767
	local GoTo01Y = 602
	local GoTo01M = CurMapName

	Talk( 1, "�ػ�����񣺡�����Ů��ķ��������������ӡ�ڴˡ���" )
	Text( 1, "��Ҫȥ������Ѩ���㣡", JumpPage, 2 )

	InitTrigger()
	TriggerCondition( 1, HasItem, 179,1 )
	TriggerCondition( 1, HasItem, 3084,1 )
	TriggerCondition( 1, HasItem, 3085,1 )
	TriggerAction( 1, TakeItem, 179,1 )
	TriggerAction( 1, TakeItem, 3084,1 )
	TriggerAction( 1, TakeItem, 3085,1 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "���͵�������Ѩ������Ҫ<Ȯ��ӡ��>��<ʬ�����>��<������е>��һ�ݣ�" )
	Text( 2, "��ʼ����",MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 2, CancelSelectTalk, JumpPage , CancelSelectPage )
	
	Talk( 3, "�ػ�����񣺡�������������^$&#&^%��������������" )



	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 3 )
	Start( GetMultiTrigger(), 3 )

	Talk( 4, "�Բ��������ֵ���������û���ռ�ȫ����" )

	Talk( 5, "�´������Ҫ���ͷ���ǵ�����", CloseTalk )
end

------------------------------------------------------------
--������Ѩ ����toһ��
------------------------------------------------------------

function b_talk22()


	--ȡ�����ͷ���ѡ���͵ص�ĶԻ����ݺ�ҳ����
	local ReSelectTalk = "���ٿ��ǿ���..."
	local ReSelectPage = 1

	--ȡ�����ͺ��˳����͵ĶԻ���ҳ����
	local CancelSelectTalk = "���ˣ������ﶼ��ȥ��"
	local CancelSelectPage = 4

	--��ͼ������Ϣ
	local CurMapName = "eastgoaf"


	--������Ѩ��������
	local GoTo01X = 847
	local GoTo01Y = 247
	local GoTo01M = CurMapName

	Talk( 1, "�ػ�����񣺡�����Ů��ķ��������������ӡ�ڴˡ���" )
	Text( 1, "��Ҫȥ������Ѩһ�㣡", JumpPage, 2 )

	InitTrigger()
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	Talk( 2, "��ȷ��Ҫ��ȥ��" )
	Text( 2, "��ʼ����",MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 2, CancelSelectTalk, JumpPage , CancelSelectPage )
	
	Talk( 3, "�ػ�����񣺡�������������^$&#&^%��������������" )



	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 3 )
	Start( GetMultiTrigger(), 3 )

	Talk( 4, "�´������Ҫ���ͷ���ǵ�����", CloseTalk )



end

------------------------------------------------------------
--������Ѩ ����to����
------------------------------------------------------------

function b_talk23()

	--��ͼ������Ϣ
	local CurMapName = "eastgoaf"


	--������Ѩ��������
	local GoTo01X = 772
	local GoTo01Y = 722
	local GoTo01M = CurMapName


	InitTrigger()
	TriggerCondition( 1, HasItem, 182,1 )
	--TriggerAction( 1, TakeItem, 1091,1 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 1, "�ػ�����񣺡�����Ů�������ӡ�����ڴˡ���" )
	Text( 1, "��Ҫȥ������Ѩ���㣡", MultiTrigger, GetMultiTrigger(), 1 )

	--Talk( 3, "�ػ�����񣺡�������������^$&#&^%��������������" )
	--InitTrigger()
--	TriggerCondition( 1, HasRecord, 330 )
--	TriggerAction( 1, JumpPage, 1 )
--	TriggerCondition( 2, NoRecord, 330 )
--	TriggerAction( 2, JumpPage, 3 )
--	Start( GetMultiTrigger(), 3 )

	Talk( 4, "�����ѱ���ӡ������˷�ӡ��Ҫ<����Կ��>" )

--	Talk( 4, "���񷢳�һ��ǿ���������ס���ң��ƺ����ҵ������޷���Խ���������ҵ����������취�ˡ�" )


end

------------------------------------------------------------
--��������
------------------------------------------------------------

function b_talk24()

--	InitFuncList()
--	AddFuncList( GiveItem,	110	,	1	,	4)
--	AddFuncList( GiveItem,	112	,	1	,	4)
--	AddFuncList( GiveItem,	114	,	1	,	4)
--	AddFuncList( GiveItem,	116	,	1	,	4)
--	AddFuncList( GiveItem,	118	,	1	,	4)
--	AddFuncList( GiveItem,	120	,	1	,	4)
--	AddFuncList( GiveItem,	151	,	1	,	4)

	InitTrigger()
	TriggerCondition( 1, HasItem, 182, 1 )
	TriggerAction( 1, TakeItem, 182, 1 )
	TriggerAction( 1, AddMoney, 10000000 )
--	TriggerAction( 1, RandFunction, GetFuncList(), GetNumFunc() )
	TriggerAction(1, GiveItem, 0266, 1, 4)
	TriggerFailure( 1, JumpPage, 2 )
	Talk( 1, "����һ�����ص����ӣ��ƺ��������ˡ���." )
	Text( 1, "����", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 2, "����ʧ�ܣ�������Ҫĳ���ض���Կ�ײ���" )

end

------------------------------------------------------------
-- ���ձȺ����汾 -----  ����
------------------------------------------------------------

function l_talk01()
	Talk(1, "�Һ������ѽܿ�ʷ�������������Ѿ�һ�����ˣ�һֱû�߳�����Թ������İ���Ů��Ҳ��֪ȥ���Һ������ط���")

	AddNpcMission(894)
	AddNpcMission(487)
	AddNpcMission(504)
	AddNpcMission(508)
	AddNpcMission(509)
	AddNpcMission(573)
	AddNpcMission(581)
	AddNpcMission(582)
	AddNpcMission(583)

end

------------------------------------------------------------
-- ���ձȺ����汾 -----  �ܿ�ʷ����
------------------------------------------------------------

function l_talk02()
	Talk(1, "��˵�Ͳ�����Ϊ���������������쳣ǿ����������Ҳ����ȫ�ˣ�����ҲҪС�ģ�����Ĺ���ɲ��ǳ��س����")

	AddNpcMission(895)
	AddNpcMission(896)
	AddNpcMission(482)
	AddNpcMission(485)
	AddNpcMission(486)
	AddNpcMission(574)
	AddNpcMission(575)
	AddNpcMission(584)
	AddNpcMission(585)
	AddNpcMission(586)

	----����ָ�ӡ���Ŧ--------�ܿ�ʷ����
	
	AddNpcMission	(5676)
end

------------------------------------------------------------
-- ���ձȺ����汾 -----  ŵ��ٽ���
------------------------------------------------------------

function l_talk03()
	Talk(1, "�����Ľܿˣ����������Ϊ���������ǵľ�������Ҳ�������䵽����������ĵط�")

	AddNpcMission(897)
	AddNpcMission(898)
	AddNpcMission(899)
	AddNpcMission(476)
	AddNpcMission(479)
	AddNpcMission(480)
	AddNpcMission(481)
	AddNpcMission(576)
	AddNpcMission(577)
	AddNpcMission(578)
	AddNpcMission(589)
	AddNpcMission(590)

end

------------------------------------------------------------
-- ���ձȺ����汾 -----  ����ɯ��
------------------------------------------------------------

function l_talk04()
	Talk(1, "�����ģ��ҡ���ô���ڡ���������أ���������~~")
	Text( 1, "����", BuyPage )

	InitTrade()
	Other(	3141	)
	Other(	4602	)
	Other(	4603	)
	Other(	4604	)

	AddNpcMission(505)
	AddNpcMission(506)
	AddNpcMission(507)
	AddNpcMission(579)
	AddNpcMission(580)
	AddNpcMission(587)
	AddNpcMission(588)
	AddNpcMission(591)

	---------------����
	AddNpcMission	(5573)
	AddNpcMission	(5574)

	-----------------����ɯ��---------��ţ
	AddNpcMission	(5661)
	AddNpcMission	(5662)

	-----------------��������
	AddNpcMission( 6171 )
	AddNpcMission( 6172 )
end

------------------------------------------------------------
-- ���ձȺ����汾 -----  �ر����山����ָ�ӡ�����
------------------------------------------------------------
function mmm_talk06()

	Talk( 1, "���᣺�����ۣ����ۣ����̣�������������" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 650,999, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, RepairBerthList, 12 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, SupplyBerthList, 12 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 12 )
	TriggerAction( 1, SalvageBerthList, 12 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 ) 
	
	Talk( 3, "�Բ�����Ĵ����ڴ˸ۿڻ����Ѿ���û������̴�ֻ���ٳ�����" )
	Talk( 4, "�Բ���Ҫ����ֻ���뽫��ͣ�ڱ��ۿڣ�������1000G����" )
	Talk( 5, "�Բ���Ҫ������ֻ���뽫��ͣ�ڱ��ۿڣ�������200G����" )
	Talk( 6, "�Բ�������ֻ���̱��۴�ֻ��������Ҫ������1000G����" )
	Talk( 7, "˪�棺��������������^$&#&^%��������������" )




end

------------------------------------------------------------
-- ���ձȺ����汾 -----  �ر������Ϻ���ָ�ӡ�����
------------------------------------------------------------
function mmm_talk05()

	Talk( 1, "���棺�����ۣ����ۣ����̣�������������" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 625,925, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, RepairBerthList, 12 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, SupplyBerthList, 12 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 12 )
	TriggerAction( 1, SalvageBerthList, 12 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 ) 
	
	Talk( 3, "�Բ�����Ĵ����ڴ˸ۿڻ����Ѿ���û������̴�ֻ���ٳ�����" )
	Talk( 4, "�Բ���Ҫ����ֻ���뽫��ͣ�ڱ��ۿڣ�������1000G����" )
	Talk( 5, "�Բ���Ҫ������ֻ���뽫��ͣ�ڱ��ۿڣ�������200G����" )
	Talk( 6, "�Բ�������ֻ���̱��۴�ֻ��������Ҫ������1000G����" )
	Talk( 7, "���棺��������������^$&#&^%��������������" )




end
------------------------------------------------------------
-- ���ձȺ����汾 -----  ���ú���ָ��
------------------------------------------------------------
function mmm_talk07()
Talk( 1, "���ú���ָ�ӣ������ۣ����ۣ����̣�������������" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 620,628, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, RepairBerthList, 12 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, SupplyBerthList, 12 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 12 )
	TriggerAction( 1, SalvageBerthList, 12 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 ) 
	
	Talk( 3, "�Բ�����Ĵ����ڴ˸ۿڻ����Ѿ���û������̴�ֻ���ٳ�����" )
	Talk( 4, "�Բ���Ҫ����ֻ���뽫��ͣ�ڱ��ۿڣ�������1000G����" )
	Talk( 5, "�Բ���Ҫ������ֻ���뽫��ͣ�ڱ��ۿڣ�������200G����" )
	Talk( 6, "�Բ�������ֻ���̱��۴�ֻ��������Ҫ������1000G����" )
	Talk( 7, "���ú���ָ�ӣ���������������^$&#&^%��������������" )
end
------------------------------------------------------------
-- ���ձȺ����汾 -----  �����˳�����
------------------------------------------------------------
function mmm_talk08()
Talk( 1, "�����˳����ˣ������ۣ����ۣ����̣�������������" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 380,161, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, RepairBerthList, 12 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, SupplyBerthList, 12 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 12 )
	TriggerAction( 1, SalvageBerthList, 12 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 ) 
	
	Talk( 3, "�Բ�����Ĵ����ڴ˸ۿڻ����Ѿ���û������̴�ֻ���ٳ�����" )
	Talk( 4, "�Բ���Ҫ����ֻ���뽫��ͣ�ڱ��ۿڣ�������1000G����" )
	Talk( 5, "�Բ���Ҫ������ֻ���뽫��ͣ�ڱ��ۿڣ�������200G����" )
	Talk( 6, "�Բ�������ֻ���̱��۴�ֻ��������Ҫ������1000G����" )
	Talk( 7, "�����˳����ˣ���������������^$&#&^%��������������" )
end
------------------------------------------------------------
-- ���ձȺ����汾 -----  �������غ���ָ��
------------------------------------------------------------
function mmm_talk09()
Talk( 1, "�������غ���ָ�ӣ������ۣ����ۣ����̣�������������" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 1070,212, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, RepairBerthList, 12 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, SupplyBerthList, 12 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 12 )
	TriggerAction( 1, SalvageBerthList, 12 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 ) 
	
	Talk( 3, "�Բ�����Ĵ����ڴ˸ۿڻ����Ѿ���û������̴�ֻ���ٳ�����" )
	Talk( 4, "�Բ���Ҫ����ֻ���뽫��ͣ�ڱ��ۿڣ�������1000G����" )
	Talk( 5, "�Բ���Ҫ������ֻ���뽫��ͣ�ڱ��ۿڣ�������200G����" )
	Talk( 6, "�Բ�������ֻ���̱��۴�ֻ��������Ҫ������1000G����" )
	Talk( 7, "�������غ���ָ�ӣ���������������^$&#&^%��������������" )
end
------------------------------------------------------------
-- ���ձȺ����汾 -----  ����ˡ�����
------------------------------------------------------------
function mmm_talk10()
Talk( 1, "���գ��١���������Ĵ���ˣ��ҿ��԰����ԭ��ȫ�������ֱ���͵��ۿڵĴ��ϣ�������ֻ�ͱ��ۿ�" )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 12)
	TriggerAction( 1, PackBagList, 12, RES_WOOD, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "���ľ��", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 12)
	TriggerAction( 1, PackBagList, 12, RES_MINE, 3 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "���ˮ��", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "���գ��١����ѣ���Ĵ�û��ͣ�ڱ��ۿ�" )

end
------------------------------------------------------------
-- ���ձȺ����汾 -----  ��������ʹ
------------------------------------------------------------
function mmm_talk11()
	--��ͼ������Ϣ
	local CurMapName = "jialebi" 

	--������Ѩ��������
	local GoTo01X = 190
	local GoTo01Y = 815
	local GoTo01M = CurMapName


	InitTrigger()
	TriggerCondition( 1, HasItem, 2438,20 )
	TriggerCondition( 1, HasItem, 2419,15 )
	TriggerCondition( 1, HasItem, 2386,15 )
	TriggerAction( 1, TakeItem, 2438,20 )
	TriggerAction( 1, TakeItem, 2419,15 )
	TriggerAction( 1, TakeItem, 2386,15 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 1, "��������ʹ���ţ���ȥ������䣿���Ҫ������׼���ޡ�����20��<���>��15��<�����Ĺ�ͷ>��15��<����֮��>���Ҿͻ�������ȥ��" )
	Text( 1, "��Ҫȥ����һ�㣡", MultiTrigger, GetMultiTrigger(), 1 )

	--Talk( 3, "�ػ�����񣺡�������������^$&#&^%��������������" )

--InitTrigger()
--	TriggerCondition( 1, HasRecord, 330 )
--	TriggerAction( 1, JumpPage, 1 )
--	TriggerCondition( 2, NoRecord, 330 )
--	TriggerAction( 2, JumpPage, 3 )
--	Start( GetMultiTrigger(), 3 )

	Talk( 4, "���㶫�����ռ����˺��������Ұ�" )

--	Talk( 4, "���񷢳�һ��ǿ���������ס���ң��ƺ����ҵ������޷���Խ���������ҵ����������취�ˡ�" )

---------------����
	AddNpcMission	(5593)
	AddNpcMission	(5594)
--------------���˻	
	AddNpcMission	(6264)
	AddNpcMission	(6265)
end
------------------------------------------------------------
-- ���ձȺ����汾 -----  ���ô���ʹ
------------------------------------------------------------
function mmm_talk12()
--��ͼ������Ϣ
	local CurMapName = "jialebi" 


	--������Ѩ��������
	local GoTo01X = 1604
	local GoTo01Y = 906
	local GoTo01M = CurMapName

	Talk( 1, "���ô���ʹ������Ů���ʹ�ߣ���Ҫȥ���þͱ���þ����ҡ�������һ�£��������Ů�����Ľ�������Ҫ�������ֵֵ��Ŷ�����������ֵ�ܸߵĻ���Ů������ܴ�Ľ����ġ�" )
	Text( 1, "�Ҿ�����������ĥ��", JumpPage, 2 )
	Text( 1, "�ҵõ���Ů��ľ��", JumpPage, 3 )
	Text( 1, "��˵�㻹��Щ��ĺö���", JumpPage, 7 )

	InitTrigger()
	TriggerCondition( 1, HasItem, 2488,1 )
	TriggerCondition( 1, HasItem, 2489,1 )
	TriggerCondition( 1, HasItem, 2490,1 )
	TriggerCondition( 1, HasItem, 2436,1 )
	TriggerAction( 1, TakeItem, 2488,1 )
	TriggerAction( 1, TakeItem, 2489,1 )
	TriggerAction( 1, TakeItem, 2490,1 )
	TriggerAction( 1, TakeItem, 2436,1 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "���ô���ʹ��Ҫȥ��������Ҫ���Ҵӵ��������õ�ľʬ֮��,ʬ��֮��,����֮��,��Ȼ��Ҫ����һ��ʥ���������Ļ�,�Ҿͻ����ȥ���������á�" )
	Text( 2, "�����ھ���ȥ������", MultiTrigger, GetMultiTrigger(), 1 )


	InitTrigger()
	TriggerCondition( 1, HasItem, 0938,1 )
	TriggerAction( 1, TakeItem, 0938,1 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 5 )
	Talk( 3, "���ô���ʹ�� ����Ů��ľ�ˣ��������ھͿ��������ȥ��" )
	Text( 3, "�����ھ���ȥ������", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 3, "����Ů��ľ��", JumpPage, 6 )
	


	Talk( 4, "���㶫�����ռ����˺��������Ұ�" )
	Talk( 5, "Ů��ľ�˿ɲ������˶����õ���" )
	Talk( 6, "Ů��ľ���ǵ���Ů�������˼�Ϊ�˰������ߵ���Ʒ���������Ϳ���ֱ��ȥ���á�ֻ�еȼ�����60�����˲ſ��ܵõ�����" )

	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, HasItem, 2386, 10 )
	TriggerAction( 1, TakeItem, 3457, 5 )
	TriggerAction( 1, TakeItem, 2386, 10 )
	TriggerAction( 1, GiveItem, 0271, 1, 4 )
	TriggerFailure( 1, JumpPage, 8 )
	Talk( 7, "���ô���ʹ����ʹ������Ů���������˼估��������Ʒ,����Ҫ���ṩ10������֮���5���ɿ���ʯ���ܽ�����" )
	Text( 7, "�����ʹ����", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 8, "���ô���ʹ�����㶫��ȫ��֮��������Ұ�" )
---------------����
	AddNpcMission	(5595)
	AddNpcMission	(5596)

	AddNpcMission ( 6056 )
	AddNpcMission ( 6057 )
	AddNpcMission ( 6058 )
	AddNpcMission ( 6059 )
	AddNpcMission ( 6060 )
----------���ô���ʹ-------˫��-------------------04
	AddNpcMission	(5726)
	AddNpcMission	(5727)

end
------------------------------------------------------------
-- ���ձȺ����汾 -----  ��ʧ�Ŀ��Ŷӳ�ԱA
------------------------------------------------------------
function mmm_talk13()
	Talk( 1, "��ʧ�Ŀ��Ŷӳ�ԱA����ã����ѣ�����ʧ�������Ѿ��ܳ�ʱ���ˣ���������һЩ�ö�������Ը��Ը�����ҽ����أ�" )
	Text( 1, "�һ�������װ", JumpPage, 2)

	Talk( 2, "��ʧ�Ŀ��Ŷӳ�ԱA����Щ�ö�����һ����ͬ�����֣����Ƕ��С�������װ����" )
	Text( 2, "�һ�������֮��(����˫��ʿ)��", JumpPage, 3)
	Text( 2, "�һ�����������(����˫��ʿ)��", JumpPage, 4)
	Text( 2, "�һ�������ѥ(����˫��ʿ)��", JumpPage, 5)
	Text( 2, "�һ�������(����˫��ʿ)��", JumpPage, 6)

	Talk(3,"Ҫ�һ�������֮�ס���������1��αװʯ��30����ʹ�,20������Ƥë��10�������Ĳ�ƥ����Ǯ100000")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2467, 1 )
	TriggerCondition( 1, HasItem, 3121, 30 )
	TriggerCondition( 1, HasItem, 1608, 20 )
	TriggerCondition( 1, HasItem, 3385, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2467, 1 )
	TriggerAction( 1, TakeItem, 3121, 30 )
	TriggerAction( 1, TakeItem, 1608, 20 )
	TriggerAction( 1, TakeItem, 3385, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0396, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 3, "��ȡ������֮�ס�", MultiTrigger, GetMultiTrigger(), 1)

	Talk(4,"Ҫ�һ����������ס���������1������ʯ��30����ʹ�,20����Ӳ�Ŀǣ�10�����Ԫ�ز�Ƭ����Ǯ50000")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2473, 1 )
	TriggerCondition( 1, HasItem, 3121, 30 )
	TriggerCondition( 1, HasItem, 1614, 20 )
	TriggerCondition( 1, HasItem, 1658, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2473, 1 )
	TriggerAction( 1, TakeItem, 3121, 30 )
	TriggerAction( 1, TakeItem, 1614, 20 )
	TriggerAction( 1, TakeItem, 1658, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0588, 1 , 4)
	TriggerFailure( 1, JumpPage, 7)
	Text( 4, "��ȡ���������ס�", MultiTrigger, GetMultiTrigger(), 1)

	Talk(5,"Ҫ�һ�������ѥ����������1���ò�ʯ��30����ʹ�,20����Ч���壬10�����飬��Ǯ50000")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2479, 1 )
	TriggerCondition( 1, HasItem, 3121, 30 )
	TriggerCondition( 1, HasItem, 1657, 20 )
	TriggerCondition( 1, HasItem, 3361, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2479, 1 )
	TriggerAction( 1, TakeItem, 3121, 30 )
	TriggerAction( 1, TakeItem, 1657, 20 )
	TriggerAction( 1, TakeItem, 3361, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0748, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 5, "��ȡ������ѥ��", MultiTrigger, GetMultiTrigger(), 1)

	Talk(6,"Ҫ�һ�����������������1��ħ����ʯ��30������ʯ�ᾧ,20����ϼ���10��ħ����ͷ����Ǯ100000")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2463, 1 )
	TriggerCondition( 1, HasItem, 3380, 30 )
	TriggerCondition( 1, HasItem, 1652, 20 )
	TriggerCondition( 1, HasItem, 1626, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2463, 1 )
	TriggerAction( 1, TakeItem, 3380, 30 )
	TriggerAction( 1, TakeItem, 1652, 20 )
	TriggerAction( 1, TakeItem, 1626, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0114, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 6, "��ȡ��������", MultiTrigger, GetMultiTrigger(), 1)

	Talk(7,"�ܱ�Ǹ����������Ʒ���ԣ����޷�Ϊ���һ�")
end
------------------------------------------------------------
-- ���ձȺ����汾 -----  ��ʧ�Ŀ��Ŷӳ�ԱB
------------------------------------------------------------
function mmm_talk14()
	Talk( 1, "��ʧ�Ŀ��Ŷӳ�ԱB����ã����ѣ�����ʧ�������Ѿ��ܳ�ʱ�䣬����������һЩ�ö�������Ը��Ը�����ҽ����أ�" )
	Text( 1, "�һ�������װ", JumpPage, 2)

	Talk( 2, "��ʧ�Ŀ��Ŷӳ�ԱB����Щ�ö�����һ����ͬ�����֣����Ƕ��С�������װ����" )
	Text( 2, "�һ�����������(����˹�޽�ʿ)��", JumpPage, 3)
	Text( 2, "�һ�����������(����˹�޽�ʿ)��", JumpPage, 4)
	Text( 2, "�һ�������ѥ(����˹�޽�ʿ)��", JumpPage, 5)
	Text( 2, "�һ�������(����˹�޽�ʿ)��", JumpPage, 6)

	Talk(3,"Ҫ�һ����������ס���������1�������ʯ��30��ħ����֦,20������Ƥë��10�������Ĳ�ƥ����Ǯ100000")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2468, 1 )
	TriggerCondition( 1, HasItem, 1593, 30 )
	TriggerCondition( 1, HasItem, 1608, 20 )
	TriggerCondition( 1, HasItem, 3385, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2468, 1 )
	TriggerAction( 1, TakeItem, 1593, 30 )
	TriggerAction( 1, TakeItem, 1608, 20 )
	TriggerAction( 1, TakeItem, 3385, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0398, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 3, "��ȡ���������ס�", MultiTrigger, GetMultiTrigger(), 1)

	Talk(4,"Ҫ�һ����������ס���������1�����龧ʯ��30��ħ����֦,20����Ӳ�Ŀǣ�10�����Ԫ�ز�Ƭ����Ǯ50000")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2478, 1 )
	TriggerCondition( 1, HasItem, 1593, 30 )
	TriggerCondition( 1, HasItem, 1614, 20 )
	TriggerCondition( 1, HasItem, 1658, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2478, 1 )
	TriggerAction( 1, TakeItem, 1593, 30 )
	TriggerAction( 1, TakeItem, 1614, 20 )
	TriggerAction( 1, TakeItem, 1658, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0604, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 4, "��ȡ���������ס�", MultiTrigger, GetMultiTrigger(), 1)

	Talk(5,"Ҫ�һ�������ѥ����������1��������ʯ��30��ħ����֦,20����Ч���壬10�����飬��Ǯ50000")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2484, 1 )
	TriggerCondition( 1, HasItem, 1593, 30 )
	TriggerCondition( 1, HasItem, 1657, 20 )
	TriggerCondition( 1, HasItem, 3361, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2484, 1 )
	TriggerAction( 1, TakeItem, 1593, 30 )
	TriggerAction( 1, TakeItem, 1657, 20 )
	TriggerAction( 1, TakeItem, 3361, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0830, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 5, "��ȡ������ѥ��", MultiTrigger, GetMultiTrigger(), 1)

	Talk(6,"Ҫ�һ������ڡ���������1��ұ�Ӿ�ʯ��30������ʯ�ᾧ,20����ϼ���10��ħ����ͷ����Ǯ100000")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2464, 1 )
	TriggerCondition( 1, HasItem, 3380, 30 )
	TriggerCondition( 1, HasItem, 1652, 20 )
	TriggerCondition( 1, HasItem, 1626, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2464, 1 )
	TriggerAction( 1, TakeItem, 3380, 30 )
	TriggerAction( 1, TakeItem, 1652, 20 )
	TriggerAction( 1, TakeItem, 1626, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0116, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 6, "��ȡ�����ڡ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk(7,"�ܱ�Ǹ����������Ʒ���ԣ����޷�Ϊ���һ�")
end
------------------------------------------------------------
-- ���ձȺ����汾 -----  ��ʧ�Ŀ��Ŷӳ�ԱC
------------------------------------------------------------
function mmm_talk15()
	Talk( 1, "��ʧ�Ŀ��Ŷӳ�ԱC����ã����ѣ�����ʧ�������Ѿ��ܳ�ʱ���ˣ���������һЩ�ö�������Ը��Ը�����ҽ����أ�" )
	Text( 1, "�һ�������װ", JumpPage, 2)
	Text( 1, "�һ�ŭ����װ", JumpPage, 9)

	Talk( 2, "��ʧ�Ŀ��Ŷӳ�ԱC����Щ�ö�����һ����ͬ�����֣����Ƕ��С�������װ����" )
	Text( 2, "�һ��������·�(���׺���ʿ)��", JumpPage, 3)
	Text( 2, "�һ�����������(���׺���ʿ)��", JumpPage, 4)
	Text( 2, "�һ�������ѥ(���׺���ʿ)��", JumpPage, 5)
	Text( 2, "�һ�������ñ��(���׺���ʿ)��", JumpPage, 6)
	Text( 2, "�һ����ϻ�(���׺���ʿ)��", JumpPage, 7)

	Talk(3,"Ҫ�һ��������·�����������1����Ƥ��ʯ��30����ɫ������,20������Ƥë��10�������Ĳ�ƥ����Ǯ100000")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2472, 1 )
	TriggerCondition( 1, HasItem, 1778, 30 )
	TriggerCondition( 1, HasItem, 1608, 20 )
	TriggerCondition( 1, HasItem, 3385, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2472, 1 )
	TriggerAction( 1, TakeItem, 1778, 30 )
	TriggerAction( 1, TakeItem, 1608, 20 )
	TriggerAction( 1, TakeItem, 3385, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0413, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 3, "��ȡ�������·���", MultiTrigger, GetMultiTrigger(), 1)

	Talk(4,"Ҫ�һ����������ס���������1������ʯ��30����ɫ������,20����Ӳ�Ŀǣ�10�����Ԫ�ز�Ƭ����Ǯ50000")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2477, 1 )
	TriggerCondition( 1, HasItem, 1778, 30 )
	TriggerCondition( 1, HasItem, 1614, 20 )
	TriggerCondition( 1, HasItem, 1658, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2477, 1 )
	TriggerAction( 1, TakeItem, 1778, 30 )
	TriggerAction( 1, TakeItem, 1614, 20 )
	TriggerAction( 1, TakeItem, 1658, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0602, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 4, "��ȡ���������ס�", MultiTrigger, GetMultiTrigger(), 1)

	Talk(5,"Ҫ�һ�������ѥ����������1���޹ǿ�ʯ��30����ɫ������,20����Ч���壬10�����飬��Ǯ50000")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2483, 1 )
	TriggerCondition( 1, HasItem, 1778, 30 )
	TriggerCondition( 1, HasItem, 1657, 20 )
	TriggerCondition( 1, HasItem, 3361, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2483, 1 )
	TriggerAction( 1, TakeItem, 1778, 30 )
	TriggerAction( 1, TakeItem, 1657, 20 )
	TriggerAction( 1, TakeItem, 3361, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0824, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 5, "��ȡ������ѥ��", MultiTrigger, GetMultiTrigger(), 1)

	Talk(6,"Ҫ�һ�������ñ�ӡ���������1���޵�ʯ��30����ɫ������,20��С����ʯ��10����ʯ����Ǯ50000")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2487, 1 )
	TriggerCondition( 1, HasItem, 1778, 30 )
	TriggerCondition( 1, HasItem, 1631, 20 )
	TriggerCondition( 1, HasItem, 3391, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2487, 1 )
	TriggerAction( 1, TakeItem, 1778, 30 )
	TriggerAction( 1, TakeItem, 1631, 20 )
	TriggerAction( 1, TakeItem, 3391, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 2223, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 6, "��ȡ������ñ�ӡ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk(7,"Ҫ�һ����ϻꡱ��������1���ᾧʯ��30������ʯ�ᾧ,20����ϼ���10��ħ����ͷ����Ǯ100000")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2466, 1 )
	TriggerCondition( 1, HasItem, 3380, 30 )
	TriggerCondition( 1, HasItem, 1652, 20 )
	TriggerCondition( 1, HasItem, 1626, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2466, 1 )
	TriggerAction( 1, TakeItem, 3380, 30 )
	TriggerAction( 1, TakeItem, 1652, 20 )
	TriggerAction( 1, TakeItem, 1626, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0151, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 7, "��ȡ���ϻꡱ", MultiTrigger, GetMultiTrigger(), 1)

	Talk(8,"�ܱ�Ǹ����������Ʒ���ԣ����޷�Ϊ���һ�")

	Talk( 9, "��ʧ�Ŀ��Ŷӳ�ԱC����Щ�ö�����һ����ͬ�����֣����Ƕ��С�ŭ����װ����" )
	Text( 9, "�һ���ŭ���·�(����������������ʿ)��", JumpPage, 10)
	Text( 9, "�һ���ŭ������(����������������ʿ)��", JumpPage, 11)
	Text( 9, "�һ���ŭ��ѥ(����������������ʿ)��", JumpPage, 12)
	Text( 9, "�һ����ϻ�(����������������ʿ)��", JumpPage, 7)

	Talk(10,"Ҫ�һ���ŭ���·�����������1����Ƥ��ʯ��30������ʯ�ᾧ,20������Ƥë��10�����Ԫ�ز�Ƭ����Ǯ100000")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2472, 1 )
	TriggerCondition( 1, HasItem, 3380, 30 )
	TriggerCondition( 1, HasItem, 1608, 20 )
	TriggerCondition( 1, HasItem, 1658, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2472, 1 )
	TriggerAction( 1, TakeItem, 3380, 30 )
	TriggerAction( 1, TakeItem, 1608, 20 )
	TriggerAction( 1, TakeItem, 1658, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0411, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 10, "��ȡ��ŭ���·���", MultiTrigger, GetMultiTrigger(), 1)

	Talk(11,"Ҫ�һ���ŭ�����ס���������1��������ʯ��30��ʯӢ�ᾧ��20����ϼ���10�����Ԫ�ز�Ƭ����Ǯ50000")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2474, 1 )
	TriggerCondition( 1, HasItem, 1699, 30 )
	TriggerCondition( 1, HasItem, 1652, 20 )
	TriggerCondition( 1, HasItem, 1658, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2474, 1 )
	TriggerAction( 1, TakeItem, 1699, 30 )
	TriggerAction( 1, TakeItem, 1652, 20 )
	TriggerAction( 1, TakeItem, 1658, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0600, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 11, "��ȡ��ŭ�����ס�", MultiTrigger, GetMultiTrigger(), 1)

	Talk(12,"Ҫ�һ���ŭ��ѥ����������1���ò�ʯ��30������ʯ�ᾧ��20��С����ʯ��10�����Ԫ�ز�Ƭ����Ǯ50000")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2479, 1 )
	TriggerCondition( 1, HasItem, 3380, 30 )
	TriggerCondition( 1, HasItem, 1631, 20 )
	TriggerCondition( 1, HasItem, 1658, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2479, 1 )
	TriggerAction( 1, TakeItem, 3380, 30 )
	TriggerAction( 1, TakeItem, 1631, 20 )
	TriggerAction( 1, TakeItem, 1658, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0760, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 12, "��ȡ��ŭ��ѥ��", MultiTrigger, GetMultiTrigger(), 1)
end

------------------------------------------------------------
-- ���ձȺ����汾 -----  ��ʧ�Ŀ��Ŷӳ�ԱD
------------------------------------------------------------
function mmm_talk26()
	Talk( 1, "��ʧ�Ŀ��Ŷӳ�ԱD����ã����ѣ�����ʧ�������Ѿ��ܳ�ʱ���ˣ���������һЩ�ö�������Ը��Ը�����ҽ����أ�" )
	Text( 1, "�һ���������װ", JumpPage, 2)
	Text( 1, "�һ�������װ", JumpPage, 9)

	Talk( 2, "��ʧ�Ŀ��Ŷӳ�ԱD����Щ�ö�����һ����ͬ�����֣����Ƕ��С���������װ����" )
	Text( 2, "�һ����������·�(����ʥְ��)��", JumpPage, 3)
	Text( 2, "�һ�������������(����ʥְ��)��", JumpPage, 4)
	Text( 2, "�һ���������ѥ(����ʥְ��)��", JumpPage, 5)
	Text( 2, "�һ���������ñ��(����ʥְ��)��", JumpPage, 6)
	Text( 2, "�һ�������֮��(����ʥְ��)��", JumpPage, 7)

	Talk(3,"Ҫ�һ����������·�����������1���ٹ�ʯ��30������ʯ��Ƭ,20������Ƥë��10�������Ĳ�ƥ����Ǯ100000")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2471, 1 )
	TriggerCondition( 1, HasItem, 1630, 30 )
	TriggerCondition( 1, HasItem, 1608, 20 )
	TriggerCondition( 1, HasItem, 3385, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2471, 1 )
	TriggerAction( 1, TakeItem, 1630, 30 )
	TriggerAction( 1, TakeItem, 1608, 20 )
	TriggerAction( 1, TakeItem, 3385, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0408, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 3, "��ȡ���������·���", MultiTrigger, GetMultiTrigger(), 1)

	Talk(4,"Ҫ�һ������������ס���������1������ʯ��30������ʯ��Ƭ,20����Ӳ�Ŀǣ�10�����Ԫ�ز�Ƭ����Ǯ50000")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2476, 1 )
	TriggerCondition( 1, HasItem, 1630, 30 )
	TriggerCondition( 1, HasItem, 1614, 20 )
	TriggerCondition( 1, HasItem, 1658, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2476, 1 )
	TriggerAction( 1, TakeItem, 1630, 30 )
	TriggerAction( 1, TakeItem, 1614, 20 )
	TriggerAction( 1, TakeItem, 1658, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0598, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 4, "��ȡ�����������ס�", MultiTrigger, GetMultiTrigger(), 1)

	Talk(5,"Ҫ�һ���������ѥ����������1���侧ʯ��30������ʯ��Ƭ,20����Ч���壬10�����飬��Ǯ50000")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2482, 1 )
	TriggerCondition( 1, HasItem, 1630, 30 )
	TriggerCondition( 1, HasItem, 1657, 20 )
	TriggerCondition( 1, HasItem, 3361, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2482, 1 )
	TriggerAction( 1, TakeItem, 1630, 30 )
	TriggerAction( 1, TakeItem, 1657, 20 )
	TriggerAction( 1, TakeItem, 3361, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0758, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 5, "��ȡ��������ѥ��", MultiTrigger, GetMultiTrigger(), 1)

	Talk(6,"Ҫ�һ���������ñ�ӡ���������1������ʯ��30������ʯ��Ƭ,20��С����ʯ��10����ʯ����Ǯ50000")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2486, 1 )
	TriggerCondition( 1, HasItem, 1630, 30 )
	TriggerCondition( 1, HasItem, 1631, 20 )
	TriggerCondition( 1, HasItem, 3391, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2486, 1 )
	TriggerAction( 1, TakeItem, 1630, 30 )
	TriggerAction( 1, TakeItem, 1631, 20 )
	TriggerAction( 1, TakeItem, 3391, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 2221, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 6, "��ȡ��������ñ�ӡ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk(7,"Ҫ�һ�������֮�ȡ���������1��Ů���ʯ��30������ʯ�ᾧ,20����ϼ���10��ħ����ͷ����Ǯ100000")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2461, 1 )
	TriggerCondition( 1, HasItem, 3380, 30 )
	TriggerCondition( 1, HasItem, 1652, 20 )
	TriggerCondition( 1, HasItem, 1626, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2461, 1 )
	TriggerAction( 1, TakeItem, 3380, 30 )
	TriggerAction( 1, TakeItem, 1652, 20 )
	TriggerAction( 1, TakeItem, 1626, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0110, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 7, "��ȡ������֮�ȡ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk(8,"�ܱ�Ǹ����������Ʒ���ԣ����޷�Ϊ���һ�")

	Talk( 9, "��ʧ�Ŀ��Ŷӳ�ԱD����Щ�ö�����һ����ͬ�����֣����Ƕ��С�������װ����" )
	Text( 9, "�һ��������·�(������ʥְ��)��", JumpPage, 10)
	Text( 9, "�һ�����������(������ʥְ��)��", JumpPage, 11)
	Text( 9, "�һ�������ѥ(������ʥְ��)��", JumpPage, 12)
	Text( 9, "�һ�������֮��(������ʥְ��)��", JumpPage, 7)

	Talk(10,"Ҫ�һ��������·�����������1�������ʯ��30������ʯ��Ƭ,20��С����ʯ��10�����飬��Ǯ100000")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2468, 1 )
	TriggerCondition( 1, HasItem, 1630, 30 )
	TriggerCondition( 1, HasItem, 1631, 20 )
	TriggerCondition( 1, HasItem, 3361, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2468, 1 )
	TriggerAction( 1, TakeItem, 1630, 30 )
	TriggerAction( 1, TakeItem, 1631, 20 )
	TriggerAction( 1, TakeItem, 3361, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0406, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 10, "��ȡ�������·���", MultiTrigger, GetMultiTrigger(), 1)

	Talk(11,"Ҫ�һ����������ס���������1������ʯ��30������ʯ�ᾧ��20������Ƥë��10�������Ĳ�ƥ����Ǯ50000")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2476, 1 )
	TriggerCondition( 1, HasItem, 3380, 30 )
	TriggerCondition( 1, HasItem, 1608, 20 )
	TriggerCondition( 1, HasItem, 3385, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2476, 1 )
	TriggerAction( 1, TakeItem, 3380, 30 )
	TriggerAction( 1, TakeItem, 1608, 20 )
	TriggerAction( 1, TakeItem, 3385, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0596, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 11, "��ȡ���������ס�", MultiTrigger, GetMultiTrigger(), 1)

	Talk(12,"Ҫ�һ�������ѥ����������1���϶���ʯ��30������ʯ��Ƭ��20��С����ʯ��10�����飬��Ǯ50000")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2480, 1 )
	TriggerCondition( 1, HasItem, 1630, 30 )
	TriggerCondition( 1, HasItem, 1631, 20 )
	TriggerCondition( 1, HasItem, 3361, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2480, 1 )
	TriggerAction( 1, TakeItem, 1630, 30 )
	TriggerAction( 1, TakeItem, 1631, 20 )
	TriggerAction( 1, TakeItem, 3361, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0756, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 12, "��ȡ������ѥ��", MultiTrigger, GetMultiTrigger(), 1)
end

------------------------------------------------------------
-- ���ձȺ����汾 -----  ��ʧ�Ŀ��Ŷӳ�ԱE
------------------------------------------------------------
function mmm_talk27()
	Talk( 1, "��ʧ�Ŀ��Ŷӳ�ԱE����ã����ѣ�����ʧ�������Ѿ��ܳ�ʱ���ˣ���������һЩ�ö�������Ը��Ը�����ҽ����أ�" )
	Text( 1, "�һ�������è��װ", JumpPage, 2)
	Text( 1, "�һ���ʿ��װ", JumpPage, 9)

	Talk( 2, "��ʧ�Ŀ��Ŷӳ�ԱE����Щ�ö�����һ����ͬ�����֣����Ƕ��С�������è��װ����" )
	Text( 2, "�һ���������è�·�(���׷�ӡʦ)��", JumpPage, 3)
	Text( 2, "�һ���������è����(���׷�ӡʦ)��", JumpPage, 4)
	Text( 2, "�һ���������èѥ(���׷�ӡʦ)��", JumpPage, 5)
	Text( 2, "�һ���������èñ��(���׷�ӡʦ)��", JumpPage, 6)
	Text( 2, "�һ�������֮��(���׷�ӡʦ)��", JumpPage, 7)

	Talk(3,"Ҫ�һ���������è�·�����������1���޹���ʯ��30��ʯӢ�ᾧ,20������Ƥë��10�������Ĳ�ƥ����Ǯ100000")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2470, 1 )
	TriggerCondition( 1, HasItem, 1699, 30 )
	TriggerCondition( 1, HasItem, 1608, 20 )
	TriggerCondition( 1, HasItem, 3385, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2470, 1 )
	TriggerAction( 1, TakeItem, 1699, 30 )
	TriggerAction( 1, TakeItem, 1608, 20 )
	TriggerAction( 1, TakeItem, 3385, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0404, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 3, "��ȡ��������è�·���", MultiTrigger, GetMultiTrigger(), 1)

	Talk(4,"Ҫ�һ���������è���ס���������1����ʯ��30��ʯӢ�ᾧ,20����Ӳ�Ŀǣ�10�����Ԫ�ز�Ƭ����Ǯ50000")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2475, 1 )
	TriggerCondition( 1, HasItem, 1699, 30 )
	TriggerCondition( 1, HasItem, 1614, 20 )
	TriggerCondition( 1, HasItem, 1658, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2475, 1 )
	TriggerAction( 1, TakeItem, 1699, 30 )
	TriggerAction( 1, TakeItem, 1614, 20 )
	TriggerAction( 1, TakeItem, 1658, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0594, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 4, "��ȡ��������è���ס�", MultiTrigger, GetMultiTrigger(), 1)

	Talk(5,"Ҫ�һ���������èѥ����������1������пʯ��30��ʯӢ�ᾧ,20����Ч���壬10�����飬��Ǯ50000")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2481, 1 )
	TriggerCondition( 1, HasItem, 1699, 30 )
	TriggerCondition( 1, HasItem, 1657, 20 )
	TriggerCondition( 1, HasItem, 3361, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2481, 1 )
	TriggerAction( 1, TakeItem, 1699, 30 )
	TriggerAction( 1, TakeItem, 1657, 20 )
	TriggerAction( 1, TakeItem, 3361, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0754, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 5, "��ȡ��������èѥ��", MultiTrigger, GetMultiTrigger(), 1)

	Talk(6,"Ҫ�һ���������èñ�ӡ���������1������ʯ��30��ʯӢ�ᾧ,20��С����ʯ��10����ʯ����Ǯ50000")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2485, 1 )
	TriggerCondition( 1, HasItem, 1699, 30 )
	TriggerCondition( 1, HasItem, 1631, 20 )
	TriggerCondition( 1, HasItem, 3391, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2485, 1 )
	TriggerAction( 1, TakeItem, 1699, 30 )
	TriggerAction( 1, TakeItem, 1631, 20 )
	TriggerAction( 1, TakeItem, 3391, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 2219, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 6, "��ȡ��������èñ�ӡ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk(7,"Ҫ�һ�������֮�ơ���������1��ĥ��ʯ��30������ʯ�ᾧ,20����ϼ���10��ħ����ͷ����Ǯ100000")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2462, 1 )
	TriggerCondition( 1, HasItem, 3380, 30 )
	TriggerCondition( 1, HasItem, 1652, 20 )
	TriggerCondition( 1, HasItem, 1626, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2462, 1 )
	TriggerAction( 1, TakeItem, 3380, 30 )
	TriggerAction( 1, TakeItem, 1652, 20 )
	TriggerAction( 1, TakeItem, 1626, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0112, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 7, "��ȡ������֮�ơ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk(8,"�ܱ�Ǹ����������Ʒ���ԣ����޷�Ϊ���һ�")

	Talk( 9, "��ʧ�Ŀ��Ŷӳ�ԱE����Щ�ö�����һ����ͬ�����֣����Ƕ��С���ʿ��װ����" )
	Text( 9, "�һ�����ʿ�·�(��������ӡʦ)��", JumpPage, 10)
	Text( 9, "�һ�����ʿ����(��������ӡʦ)��", JumpPage, 11)
	Text( 9, "�һ�����ʿѥ(��������ӡʦ)��", JumpPage, 12)
	Text( 9, "�һ�������֮��(��������ӡʦ)��", JumpPage, 7)

	Talk(10,"Ҫ�һ�����ʿ�·�����������1���޹���ʯ��30��ʯӢ�ᾧ,20����Ӳ�Ŀǣ�10�������Ĳ�ƥ����Ǯ100000")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2470, 1 )
	TriggerCondition( 1, HasItem, 1699, 30 )
	TriggerCondition( 1, HasItem, 1614, 20 )
	TriggerCondition( 1, HasItem, 3385, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2470, 1 )
	TriggerAction( 1, TakeItem, 1699, 30 )
	TriggerAction( 1, TakeItem, 1614, 20 )
	TriggerAction( 1, TakeItem, 3385, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0402, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 10, "��ȡ����ʿ�·���", MultiTrigger, GetMultiTrigger(), 1)

	Talk(11,"Ҫ�һ�����ʿ���ס���������1�����龧ʯ��30������ʯ��Ƭ,20����ϼ���10�����飬��Ǯ50000")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2478, 1 )
	TriggerCondition( 1, HasItem, 1630, 30 )
	TriggerCondition( 1, HasItem, 1652, 20 )
	TriggerCondition( 1, HasItem, 3361, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2478, 1 )
	TriggerAction( 1, TakeItem, 1630, 30 )
	TriggerAction( 1, TakeItem, 1652, 20 )
	TriggerAction( 1, TakeItem, 3361, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0592, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 11, "��ȡ����ʿ���ס�", MultiTrigger, GetMultiTrigger(), 1)

	Talk(12,"Ҫ�һ�����ʿѥ����������1���侧ʯ��30������ʯ�ᾧ,20������Ƥë��10��ħ����ͷ����Ǯ50000")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2482, 1 )
	TriggerCondition( 1, HasItem, 3380, 30 )
	TriggerCondition( 1, HasItem, 1608, 20 )
	TriggerCondition( 1, HasItem, 1626, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2482, 1 )
	TriggerAction( 1, TakeItem, 3380, 30 )
	TriggerAction( 1, TakeItem, 1608, 20 )
	TriggerAction( 1, TakeItem, 1626, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0752, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 12, "��ȡ����ʿѥ��", MultiTrigger, GetMultiTrigger(), 1)
end

------------------------------------------------------------
-- ���ձȺ����汾 -----  ��ʧ�Ŀ��Ŷӳ�ԱF
------------------------------------------------------------
function mmm_talk28()
	Talk( 1, "��ʧ�Ŀ��Ŷӳ�ԱF����ã����ѣ�����ʧ�������Ѿ��ܳ�ʱ���ˣ���������һЩ�ö�������Ը��Ը�����ҽ����أ�" )
	Text( 1, "�һ�������װ", JumpPage, 2)

	Talk( 2, "��ʧ�Ŀ��Ŷӳ�ԱF����Щ�ö�����һ����ͬ�����֣����Ƕ��С�������װ����" )
	Text( 2, "�һ�����������(�������������ѻ���)��", JumpPage, 3)
	Text( 2, "�һ�����������(�������������ѻ���)��", JumpPage, 4)
	Text( 2, "�һ�������ѥ(�������������ѻ���)��", JumpPage, 5)
	Text( 2, "�һ�������(�������������ѻ���)��", JumpPage, 6)

	Talk(3,"Ҫ�һ����������ס���������1���Ӳ�Ѫʯ��30��͸��ˮ��,20������Ƥë��10�������Ĳ�ƥ����Ǯ100000")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2469, 1 )
	TriggerCondition( 1, HasItem, 3364, 30 )
	TriggerCondition( 1, HasItem, 1608, 20 )
	TriggerCondition( 1, HasItem, 3385, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2469, 1 )
	TriggerAction( 1, TakeItem, 3364, 30 )
	TriggerAction( 1, TakeItem, 1608, 20 )
	TriggerAction( 1, TakeItem, 3385, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0400, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 3, "��ȡ���������ס�", MultiTrigger, GetMultiTrigger(), 1)

	Talk(4,"Ҫ�һ����������ס���������1��������ʯ��30��͸��ˮ��,20����Ӳ�Ŀǣ�10�����Ԫ�ز�Ƭ����Ǯ50000")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2474, 1 )
	TriggerCondition( 1, HasItem, 3364, 30 )
	TriggerCondition( 1, HasItem, 1614, 20 )
	TriggerCondition( 1, HasItem, 1658, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2474, 1 )
	TriggerAction( 1, TakeItem, 3364, 30 )
	TriggerAction( 1, TakeItem, 1614, 20 )
	TriggerAction( 1, TakeItem, 1658, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0590, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 4, "��ȡ���������ס�", MultiTrigger, GetMultiTrigger(), 1)

	Talk(5,"Ҫ�һ�������ѥ����������1���϶���ʯ��30��͸��ˮ��,20����Ч���壬10�����飬��Ǯ50000")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2480, 1 )
	TriggerCondition( 1, HasItem, 3364, 30 )
	TriggerCondition( 1, HasItem, 1657, 20 )
	TriggerCondition( 1, HasItem, 3361, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2480, 1 )
	TriggerAction( 1, TakeItem, 3364, 30 )
	TriggerAction( 1, TakeItem, 1657, 20 )
	TriggerAction( 1, TakeItem, 3361, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0750, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 5, "��ȡ������ѥ��", MultiTrigger, GetMultiTrigger(), 1)

	Talk(6,"Ҫ�һ������ա���������1������ʯ��30������ʯ�ᾧ,20����ϼ���10��ħ����ͷ����Ǯ100000")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2465, 1 )
	TriggerCondition( 1, HasItem, 3380, 30 )
	TriggerCondition( 1, HasItem, 1652, 20 )
	TriggerCondition( 1, HasItem, 1626, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2465, 1 )
	TriggerAction( 1, TakeItem, 3380, 30 )
	TriggerAction( 1, TakeItem, 1652, 20 )
	TriggerAction( 1, TakeItem, 1626, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0118, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 6, "��ȡ�����ա�", MultiTrigger, GetMultiTrigger(), 1)

	Talk(7,"�ܱ�Ǹ����������Ʒ���ԣ����޷�Ϊ���һ�")
end
------------------------------------------------------------
-- ���ձȺ����汾 -----  ½��һ�㴫��ʹ
------------------------------------------------------------
function mmm_talk16()
	--��ͼ������Ϣ
	local CurMapName = "jialebi"


	--������ͷ����
	local GoTo01X = 1250
	local GoTo01Y = 1010
	local GoTo01M = CurMapName

	Talk( 1, "��֪��������ʲô��ֻ��Ҫ����5000�飬�Ҿͻ�����ȥ��" )
	Text( 1, "���̣��ҷ������ˣ��Ҹ�������", JumpPage, 2 )
	Text( 1, "���ˣ���Ǯ�������Ȳ�ȥ��", JumpPage, 3 )

	InitTrigger()
	TriggerCondition(1,HasMoney,5000)
	TriggerAction(1,TakeMoney,5000)
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "���������麣���ǵĵ�����ͷ���������������ȥ��" )
	Text( 2, "�ǵģ���Ҫ���������ͷ��", MultiTrigger,GetMultiTrigger(), 1)

	Talk( 3, "���һ������ȥ" )
	Talk( 4, "���Ǯ���󲻹���", CloseTalk)
end
------------------------------------------------------------
-- ���ձȺ����汾 -----  ʵ���ҿ�����A
------------------------------------------------------------
function mmm_talk17()
	--��ͼ������Ϣ
	local CurMapName = "jialebi"

	--ʵ����A����
	local GoTo01X = 968
	local GoTo01Y = 828
	local GoTo01M = CurMapName

	Talk( 1, "��֪��������ʲô��ֻ��Ҫ����5000�飬�Ҿͻ�����ȥ��" )
	Text( 1, "���̣��ҷ������ˣ��Ҹ�������", JumpPage, 2 )
	Text( 1, "���ˣ���Ǯ�������Ȳ�ȥ��", JumpPage, 3 )
	
	InitTrigger()
	TriggerCondition(1,HasMoney,5000)
	TriggerAction(1,TakeMoney,5000)
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )

	Talk( 2, "�����������ǵ�ʵ���ң��������������ȥ��" )
	Text( 2, "�ǵģ���Ҫ����ʵ����A��", MultiTrigger,GetMultiTrigger(), 1)

	Talk( 3, "���һ������ȥ" )
	Talk( 4, "���Ǯ���󲻹���", CloseTalk)
end
------------------------------------------------------------
-- ���ձȺ����汾 -----  ʵ���ҿ�����B2386
------------------------------------------------------------
function mmm_talk18()
	--��ͼ������Ϣ
	local CurMapName = "jialebi"


	--ʵ����B����
	local GoTo01X = 968
	local GoTo01Y = 906
	local GoTo01M = CurMapName

	Talk( 1, "��֪��������ʲô�𣿸���20������֮��ɣ��Ҿͻ�����ȥ��" )
	Text( 1, "���ҽ�ȥ", JumpPage, 2 )
	Text( 1, "���ˣ��Ҳ���ȥ��", JumpPage, 3 )

	InitTrigger()
	TriggerCondition( 1, HasItem, 2386, 20 )
	TriggerAction( 1, TakeItem, 2386, 20 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )

	Talk( 2, "������ʵ����B���ֲ�������˾��������棬��ȷ����Ҫ��ȥ��" )
	Text( 2, "�ǵģ���Ҫ����ʵ����B��", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3, "���һ������ȥ" )
	Talk( 4, "�㻹û�ռ���20������֮��Ŷ", CloseTalk)
end
------------------------------------------------------------
-- ���ձȺ����汾 -----  ʵ���ҿ�����C
------------------------------------------------------------
function mmm_talk19()
	--��ͼ������Ϣ
	local CurMapName = "jialebi"


	--ʵ����C����
	local GoTo01X = 968
	local GoTo01Y = 993
	local GoTo01M = CurMapName

	Talk( 1, "��֪��������ʲô��ֻ��Ҫ����5000�飬�Ҿͻ�����ȥ��" )
	Text( 1, "���̣��ҷ������ˣ��Ҹ�������", JumpPage, 2 )
	Text( 1, "���ˣ���Ǯ�������Ȳ�ȥ��", JumpPage, 3 )

	InitTrigger()
	TriggerCondition(1,HasMoney,5000)
	TriggerAction(1,TakeMoney,5000)
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )

	Talk( 2, "������ʵ����C" )
	Text( 2, "�ǵģ���Ҫ����ʵ����C��", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3, "���һ������ȥ" )
	Talk( 4, "���Ǯ���󲻹���", CloseTalk)
end
------------------------------------------------------------
-- ���ձȺ����汾 -----  ���´�������
------------------------------------------------------------
function mmm_talk20()
	--��ͼ������Ϣ
	local CurMapName = "jialebi"


	--ʵ��������
	local GoTo01X = 1076
	local GoTo01Y = 869
	local GoTo01M = CurMapName

	Talk( 1, "��֪��������ʲô��" )
	Text( 1, "������ʲô��", JumpPage, 2 )
	Text( 1, "����������ʲô���Ҳ���֪��", JumpPage, 3 )

	InitTrigger()
	TriggerCondition(1,HasItem , 2408,1)
	TriggerCondition(1,HasItem , 2409,1)
	TriggerCondition(1,HasItem , 2410,1)
	TriggerCondition(1,HasItem , 2411,1)
	TriggerCondition(1,HasItem , 2412,1)

	TriggerAction(1,TakeItem,2408,1)
	TriggerAction(1,TakeItem,2409,1)
	TriggerAction(1,TakeItem,2410,1)
	TriggerAction(1,TakeItem,2411,1)
	TriggerAction(1,TakeItem,2412,1)

	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "������������ǵ�ʵ�����ˣ���֪������ʲô����Σ���ڵ����㣬���ȥ�Ļ�����뼯�����AB��BC��CD��DE��EF" )
	Text( 2, "�ǵģ���Ҫ����ʵ���ң�", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3, "......�ټ���" )
	Talk( 4, "���Ŀ���û���ռ�����", CloseTalk)
end
------------------------------------------------------------
-- ���ձȺ����汾 -----  ����һ��������
------------------------------------------------------------
function mmm_talk22()
	--��ͼ������Ϣ
	local CurMapName = "jialebi"


	--������������
	local GoTo01X = 79
	local GoTo01Y = 823
	local GoTo01M = CurMapName


	Talk( 1, "��֪��������ʲô��ֻ��Ҫ����5000�飬�Ҿͻ�����ȥ��" )
	Text( 1, "���̣��ҷ������ˣ��Ҹ�������", JumpPage, 2 )
	Text( 1, "���ˣ���Ǯ�������Ȳ�ȥ��", JumpPage, 3 )
	Text( 1, "��˵�������кö���", JumpPage, 5 )


	InitTrigger()
	TriggerCondition(1,HasMoney,5000)
	TriggerAction(1,TakeMoney,5000)
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )

	Talk( 2, "���뵽��������ȥ��" )
	Text( 2, "�ǵģ���Ҫ����������㣡", MultiTrigger, GetMultiTrigger(), 1 )
	
	Talk( 3, "���һ������ȥ" )
	Talk( 4, "���Ǯ���󲻹���" ,CloseTalk)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 1 )
	TriggerAction( 1, TakeItem, 3457, 1 )
	TriggerAction( 1, GiveItem, 0267, 1, 4 )
	TriggerFailure( 1, JumpPage, 6 )
	Talk( 5, "����һ��������:�Ե�,����������Щ�ö�����,������ɱ������ܰ��͸���,������ܸ���1���ɿ���ʯ�Ļ�,�ҵ����ǿ��ǿ���" )
	Text( 5, "�����֮��", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6, "����һ��������:�ȶ���������������Ұ�" )
end
------------------------------------------------------------
-- ���ձȺ����汾 -----  ��������������
------------------------------------------------------------
function mmm_talk23()
	--��ͼ������Ϣ
	local CurMapName = "jialebi"


	--����һ������
	local GoTo01X = 199
	local GoTo01Y = 824
	local GoTo01M = CurMapName

	--������������
	local GoTo02X = 70
	local GoTo02Y = 952
	local GoTo02M = CurMapName


	Talk( 1, "��֪��������ʲô��ֻ��Ҫ����5000�飬�Ҿͻ�����ȥ��" )
	Text( 1, "��Ҫȥ����һ��", JumpPage, 2 )
	Text( 1, "��Ҫȥ��������", JumpPage, 3 )
	Text( 1, "��˵�������кö���", JumpPage, 5 )

	InitTrigger()
	TriggerCondition(1,HasMoney,5000)
	TriggerAction(1,TakeMoney,5000)
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "���뵽����һ��ȥ��" )
	Text( 2, "�ǵģ���Ҫ�������һ�㣡", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition(2,HasMoney,5000)
	TriggerAction(2,TakeMoney,5000)
	TriggerAction( 2, GoTo, GoTo02X, GoTo02Y, GoTo02M )
	TriggerFailure( 2, JumpPage, 4 )
	Talk( 3, "���뵽��������ȥ��" )
	Text( 3, "�ǵģ���Ҫ����������㣡", MultiTrigger, GetMultiTrigger(),2 )
	
	Talk( 4, "���Ǯ���󲻹���" ,CloseTalk)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 1 )
	TriggerAction( 1, TakeItem, 3457, 1 )
	TriggerAction( 1, GiveItem, 0268, 1, 4 )
	TriggerFailure( 1, JumpPage, 6 )
	Talk( 5, "��������������:�Ե�,����������Щ�ö�����,������ɱ������ܰ��͸���,������ܸ���1���ɿ���ʯ�Ļ�,�ҵ����ǿ��ǿ���" )
	Text( 5, "��÷�֮��", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6, "��������������:�ȶ���������������Ұ�" )
end
------------------------------------------------------------
-- ���ձȺ����汾 -----  ��������������
------------------------------------------------------------
function mmm_talk24()

	--��ͼ������Ϣ
	local CurMapName = "jialebi"


	--������������
	local GoTo01X = 79
	local GoTo01Y = 823
	local GoTo01M = CurMapName

	--�����Ĳ�����
	local GoTo02X = 209
	local GoTo02Y = 955
	local GoTo02M = CurMapName


	Talk( 1, "��֪��������ʲô��ֻ��Ҫ����5000�飬�Ҿͻ�����ȥ��" )
	Text( 1, "��Ҫȥ��������", JumpPage, 2 )
	Text( 1, "��Ҫȥ�����Ĳ�", JumpPage, 3 )
	Text( 1, "��˵�������кö���", JumpPage, 5 )

	InitTrigger()
	TriggerCondition(1,HasMoney,5000)
	TriggerAction(1,TakeMoney,5000)
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "���뵽��������ȥ��" )
	Text( 2, "�ǵģ���Ҫ����������㣡", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition(2,HasMoney,5000)
	TriggerAction(2,TakeMoney,5000)
	TriggerAction( 2, GoTo, GoTo02X, GoTo02Y, GoTo02M )
	TriggerFailure( 2, JumpPage, 4 )
	Talk( 3, "���뵽�����Ĳ�ȥ��" )
	Text( 3, "�ǵģ���Ҫ��������Ĳ㣡", MultiTrigger, GetMultiTrigger(), 2 )
	
	Talk( 4, "���Ǯ���󲻹���" ,CloseTalk)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 1 )
	TriggerAction( 1, TakeItem, 3457, 1 )
	TriggerAction( 1, GiveItem, 0269, 1, 4 )
	TriggerFailure( 1, JumpPage, 6 )
	Talk( 5, "��������������:�Ե�,����������Щ�ö�����,������ɱ������ܰ��͸���,������ܸ���1���ɿ���ʯ�Ļ�,�ҵ����ǿ��ǿ���" )
	Text( 5, "��֮��", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6, "��������������:�ȶ���������������Ұ�" )
end
------------------------------------------------------------
-- ���ձȺ����汾 -----  �����Ĳ�������
------------------------------------------------------------
function mmm_talk25()

		--��ͼ������Ϣ
	local CurMapName = "jialebi"


	--������������
	local GoTo01X = 70
	local GoTo01Y = 952
	local GoTo01M = CurMapName

	--�ر���������
	local GoTo02X = 690
	local GoTo02Y = 1043
	local GoTo02M = CurMapName


	Talk( 1, "��֪��������ʲô��ֻ��Ҫ����5000�飬�Ҿͻ�����ȥ��" )
	Text( 1, "��Ҫ�ص�������", JumpPage, 2 )
	Text( 1, "��Ҫ�뿪�����ط�", JumpPage, 3 )
	Text( 1, "��˵�������кö���", JumpPage, 5 )

	InitTrigger()
	TriggerCondition(1,HasMoney,5000)
	TriggerAction(1,TakeMoney,5000)
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "���뵽��������ȥ��" )
	Text( 2, "�ǵģ���Ҫ����������㣡", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition(2,HasMoney,5000)
	TriggerAction(2,TakeMoney,5000)
	TriggerAction( 2, GoTo, GoTo02X, GoTo02Y, GoTo02M )
	TriggerFailure( 2, JumpPage, 4 )
	Talk( 3, "�����ȥ��" )
	Text( 3, "�ǵģ���Ҫ��ȥ��", MultiTrigger, GetMultiTrigger(), 2 )
	
	Talk( 4, "���Ǯ���󲻹���" ,CloseTalk)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 1 )
	TriggerAction( 1, TakeItem, 3457, 1 )
	TriggerAction( 1, GiveItem, 0270, 1, 4 )
	TriggerFailure( 1, JumpPage, 6 )
	Talk( 5, "�����Ĳ�������:�Ե�,����������Щ�ö�����,������ɱ������ܰ��͸���,������ܸ���1���ɿ���ʯ�Ļ�,�ҵ����ǿ��ǿ���" )
	Text( 5, "��֮��", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6, "�����Ĳ�������:�ȶ���������������Ұ�" )
end


------------------------------------------------------------
-- �ر����� ����ʹ
------------------------------------------------------------

function mmm_talk29()
	--ȡ�����ͷ���ѡ���͵ص�ĶԻ����ݺ�ҳ����
	local ReSelectTalk = "���ٿ��ǿ���..."
	local ReSelectPage = 1

	--ȡ�����ͺ��˳����͵ĶԻ���ҳ����
	local CancelSelectTalk = "���ˣ������ﶼ��ȥ��"
	local CancelSelectPage = 7

	--��ͼ������Ϣ
	local CurMapName1 = "garner"
	local CurMapName2 = "magicsea"
	local CurMapName5 = "darkblue"

	--����֮������
	local GoTo01X = 2231
	local GoTo01Y = 2788
	local GoTo01M = CurMapName1

	--ɳ�֮������
	local GoTo02X = 890
	local GoTo02Y = 3575
	local GoTo02M = CurMapName2

	--���Ǳ�����
	local GoTo04X = 1318
	local GoTo04Y = 510
	local GoTo04M = CurMapName5

	Talk( 1, "����ʹ�����������Ҫ�뿪�����Ĳر����尡?��" )
	Text( 1, "��Ҫȥ�����ǣ�", JumpPage, 2 )
	Text( 1, "��Ҫȥɳᰳǣ�", JumpPage, 3 )
	Text( 1, "��Ҫȥ���Ǳ���", JumpPage, 4 )
	Text( 1, "��Ҫ��¼������", JumpPage, 5 )
	
	InitTrigger()
	TriggerCondition( 1, HasMoney, 500 )
	TriggerAction( 1, TakeMoney, 500 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 6 )
	Talk( 2, "���͵��������ǰɣ�û���⣡��֧��500G�ֽ�" )
	Text( 2, "��ʼ����",MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 2, CancelSelectTalk, JumpPage , CancelSelectPage )


	InitTrigger()
	TriggerCondition( 1, HasMoney, 500 )
	TriggerAction( 1, TakeMoney, 500 )
	TriggerAction( 1,  GoTo, GoTo02X, GoTo02Y, GoTo02M )
	TriggerFailure( 2, JumpPage, 6 )
	Talk( 3, "��ϲ��ɳ�֮������ط�����֧��500G�ֽ�" )
	Text( 3, "��ʼ����",MultiTrigger, GetMultiTrigger(), 2)
	Text( 3, CancelSelectTalk, JumpPage , CancelSelectPage )


	InitTrigger()
	TriggerCondition( 1, HasMoney, 500 )
	TriggerAction( 1, TakeMoney, 500 )
	TriggerAction( 1, GoTo, GoTo04X, GoTo04Y, GoTo04M )
	TriggerFailure( 1, JumpPage, 6 )
	Talk( 4, "���͵����Ǳ��ǰɣ���֧��500G�ֽ�" )
	Text( 4, "��ʼ����",MultiTrigger, GetMultiTrigger(), 2)
	Text( 4, CancelSelectTalk, JumpPage , CancelSelectPage )

	Talk( 6, "�Բ��������ֽ��㣬�޷����͡�" )

	Talk( 7, "�´������Ҫ���ͷ���ǵ����Ұ���", CloseTalk )
	Talk( 8, "��������������^$&#&^%��������������" )



	InitTrigger()
	TriggerAction( 1, JumpPage, 1 )
	TriggerAction( 2, JumpPage, 8 )
	Start( GetMultiTrigger(), 2 )

	

end


-- Ů��
------------------------------------------------------------

	
function mmm_talk30()

	local CurMapName1 = "garner"
	local CurMapName2 = "magicsea"
	local CurMapName5 = "darkblue"

	--����֮������
	local GoTo01X = 2231
	local GoTo01Y = 2788
	local GoTo01M = CurMapName1	

	Talk( 1, "Ů�񣺼�Ȼ���Ѿ����������һ��Ҳ���ܹ��ܶ�ĥ���˰ɡ�Ҫ���Ҹ��㶫������Ȼش��Ҽ�������Ŷ����ס��һ��Ҫ��ʵ�����������Ը���" )
	Text( 1, "���Ѿ�׼������", JumpPage, 2 )
	Text( 1, "�һ���ҪһЩ���Ҫ��", JumpPage, 17 )
	Text( 1, "�ҿɲ���ش�����Щ���ĵ����⡣", CloseTalk )
	--InitTrigger()
	--TriggerCondition( 1, HasRecord, 1322 )
	--TriggerAction ( 1, JumpPage, 25 )
	--TriggerFailure( 1, JumpPage, 26 )
	--Text( 1, "�ǻ�֮��", MultiTrigger, GetMultiTrigger() ,1 )    -------�ǻ�֮��-------
	
	InitTrigger()
	TriggerAction( 1, GoTo, 631, 927, "jialebi" )
	Text( 1, "���Ѿ����������ط������һص��ر�����ɡ�", MultiTrigger, GetMultiTrigger(), 1 )
	
	Talk( 2, "Ů��ÿ����ֻ��ѡ�����Լ��ȼ���ͬ�Ľ�������������Ĵ���ѡ�����Լ��ȼ������Ľ׶Σ���ס��һ��Ҫ��ʵ�����򣬺���Ը���" )
	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 41 )
	TriggerCondition( 1, LvCheck, ">", 14 )
	TriggerAction ( 1, JumpPage, 4 )
	TriggerFailure( 1, JumpPage, 16 )
	
	Text( 2, "15��40��",MultiTrigger, GetMultiTrigger() ,1)

	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 40 )
	TriggerCondition( 1, LvCheck, "<", 61 )
	TriggerAction ( 1, JumpPage, 5 )
	TriggerFailure( 1, JumpPage, 16 )

	Text( 2, "41��60��",MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 60 )
	TriggerAction ( 1, JumpPage, 6 )
	TriggerFailure( 1, JumpPage, 16 )
	Text( 2, "60������",MultiTrigger, GetMultiTrigger(), 1)


	Talk( 4, "Ů�񣺿����㻹�ǱȽϳ�ʵ�İ��������ҿ��Խ������е�����ת��Ϊ��Ǯ���߾��飬�������Ը�⽫�����������׸�������ܻ������벻�����ջ�" )
	Text( 4, "�����������һ���Ǯ", JumpPage, 7 )
	Text( 4, "�����������һ�����", JumpPage, 8 )
	Text( 4, "���뽫�����׸���", JumpPage, 9 )


	Talk( 5, "Ů�񣺿����㻹�ǱȽϳ�ʵ�İ��������ҿ��Խ������е�����ת��Ϊ��Ǯ���߾��飬�������Ը�⽫�����������׸�������ܻ������벻�����ջ�" )
	Text( 5, "�����������һ���Ǯ", JumpPage, 10 )
	Text( 5, "�����������һ�����", JumpPage, 11 )
	Text( 5, "���뽫�����׸���", JumpPage, 12 )

	Talk( 6, "Ů�񣺿����㻹�ǱȽϳ�ʵ�İ��������ҿ��Խ������е�����ת��Ϊ��Ǯ���߾��飬�������Ը�⽫�����������׸�������ܻ������벻�����ջ�" )
	Text( 6, "�����������һ���Ǯ", JumpPage, 13 )
	Text( 6, "�����������һ�����", JumpPage, 14 )
	Text( 6, "���뽫�����׸���", JumpPage, 15 )

		InitFuncList()
	AddFuncList( CreditExchange,0 )
	Talk( 7, "Ů����ȷ��Ҫ�������õ������һ���Ǯ���⽫������ڹ�ȥս�����õ�����������" )
	Text( 7, "��ȷ���һ�", MultiFunc, GetFuncList(), GetNumFunc() ) 
	Text( 7,"����������",JumpPage , 4 )

	InitFuncList()
	AddFuncList( CreditExchange,3 )
	Talk( 8, "Ů����ȷ��Ҫ�������õ������һ��������⽫������ڹ�ȥս�����õ�����������" )
	Text( 8, "��ȷ���һ�", MultiFunc, GetFuncList(), GetNumFunc() ) 
	Text( 8,"����������",JumpPage , 4 )

	InitFuncList()
	AddFuncList( CreditExchange, 6 )--�Ի�Ǯ
	Talk( 9, "Ů����ȷ��Ҫ�������õ������׸������⽫������ڹ�ȥս�����õ��������������ң������һ������" )
	Text( 9, "��ȷ���һ�", MultiFunc, GetFuncList(), GetNumFunc() ) 
	Text( 9,"����������",JumpPage , 4 )


	InitFuncList()
	AddFuncList( CreditExchange,1 )
	Talk( 10, "Ů����ȷ��Ҫ�������õ������һ���Ǯ���⽫������ڹ�ȥս�����õ�����������" )
	Text( 10, "��ȷ���һ�", MultiFunc, GetFuncList(), GetNumFunc() ) 
	Text( 10,"����������",JumpPage , 4 )

	InitFuncList()
	AddFuncList( CreditExchange,4 )
	Talk( 11, "Ů����ȷ��Ҫ�������õ������һ��������⽫������ڹ�ȥս�����õ�����������" )
	Text( 11, "��ȷ���һ�", MultiFunc, GetFuncList(), GetNumFunc() ) 
	Text( 11,"����������",JumpPage , 4 )

	InitFuncList()
	AddFuncList( CreditExchange, 7 )--�Ի�Ǯ
	Talk( 12, "Ů����ȷ��Ҫ�������õ������׸������⽫������ڹ�ȥս�����õ��������������ң������һ������" )
	Text( 12, "��ȷ���һ�", MultiFunc, GetFuncList(), GetNumFunc() ) 
	Text( 12,"����������",JumpPage , 4 )

	InitFuncList()
	AddFuncList( CreditExchange,2 )
	Talk( 13, "Ů����ȷ��Ҫ�������õ������һ���Ǯ���⽫������ڹ�ȥս�����õ�����������" )
	Text( 13, "��ȷ���һ�", MultiFunc, GetFuncList(), GetNumFunc() ) 
	Text( 13,"����������",JumpPage , 4 )

	InitFuncList()
	AddFuncList( CreditExchange,5 )
	Talk( 14, "Ů����ȷ��Ҫ�������õ������һ��������⽫������ڹ�ȥս�����õ�����������" )
	Text( 14, "��ȷ���һ�", MultiFunc, GetFuncList(), GetNumFunc() ) 
	Text( 14,"����������",JumpPage , 4 )

	InitFuncList()
	AddFuncList( CreditExchange, 8 )
	Talk( 15, "Ů����ȷ��Ҫ�������õ������׸������⽫������ڹ�ȥս�����õ��������������ң������һ������" )
	Text( 15, "��ȷ���һ�", MultiFunc, GetFuncList(), GetNumFunc() ) 
	Text( 15,"����������",JumpPage , 4 )

	Talk( 16, "Ů����ᶴ���˼��һ�У���Ҫ��ͼ��ƭ�����Ū���ǽ�����ȡ���������ڣ�����һ�λ�������ѡ�񣬲�Ҫ������ʧ���ˡ�" )

	InitTrigger()
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	Text( 16, "�Ҽ���ҵ�ѡ����û˵�ѻ���", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 16,"���ˡ�ҵ���������������ѡ��",JumpPage , 2 )

	
	Talk( 17, "Ů����������һЩ����ı�ʯ����ЩʯͷֻҪ�Ƽ����þͻᷢ�ӳ�����ǿ������,ϣ�������õ��ϡ�����,�ҵ�ʹ�߸�����˵������ڷ����ַ�����һЩ��ǿ���ʯͷ,���Ź����þͿ��Դ�����������, �������Ҫ�Ļ���ʱ���������Ұɡ�" )
	Text( 17, "��ά��ʯ(�޽�)", JumpPage, 18)
	Text( 17, "÷����ʯ(˫��)", JumpPage, 19)
	Text( 17, "������ʯ(�ѻ�)", JumpPage, 20)
	Text( 17, "�ܿ���ʯ(����)", JumpPage, 21)
	Text( 17, "������ʯ(ʥְ)", JumpPage, 22)
	Text( 17, "ά����ʯ(��ӡ)", JumpPage, 23)  
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, LvCheck, ">", 59 )
	TriggerAction( 1, TakeItem, 3457, 5 )
	TriggerAction( 1, GiveItem, 2530, 1, 4 )
	TriggerFailure( 1, JumpPage, 24 )
	Talk( 18, "Ů�������ĵȼ���60�����ϣ��������ܸ���5���ɿ���ʯ�Ļ����ҿ��Խ�ʯͷ���㡣" )
	Text( 18, "��ô�ά��ʯ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, LvCheck, ">", 59 )
	TriggerAction( 1, TakeItem, 3457, 5 )
	TriggerAction( 1, GiveItem, 2533, 1, 4 )
	TriggerFailure( 1, JumpPage, 24 )
	Talk( 19, "Ů�������ĵȼ���60�����ϣ��������ܸ���5���ɿ���ʯ�Ļ����ҿ��Խ�ʯͷ���㡣" )
	Text( 19, "���÷����ʯ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, LvCheck, ">", 59 )
	TriggerAction( 1, TakeItem, 3457, 5 )
	TriggerAction( 1, GiveItem, 2536, 1, 4 )
	TriggerFailure( 1, JumpPage, 24 )
	Talk( 20, "Ů�������ĵȼ���60�����ϣ��������ܸ���5���ɿ���ʯ�Ļ����ҿ��Խ�ʯͷ���㡣" )
	Text( 20, "���������ʯ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, LvCheck, ">", 59 )
	TriggerAction( 1, TakeItem, 3457, 5 )
	TriggerAction( 1, GiveItem, 2539, 1, 4 )
	TriggerFailure( 1, JumpPage, 24 )
	Talk( 21, "Ů�������ĵȼ���60�����ϣ��������ܸ���5���ɿ���ʯ�Ļ����ҿ��Խ�ʯͷ���㡣" )
	Text( 21, "��ýܿ���ʯ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, LvCheck, ">", 59 )
	TriggerAction( 1, TakeItem, 3457, 5 )
	TriggerAction( 1, GiveItem, 2542, 1, 4 )
	TriggerFailure( 1, JumpPage, 24 )
	Talk( 22, "Ů�������ĵȼ���60�����ϣ��������ܸ���5���ɿ���ʯ�Ļ����ҿ��Խ�ʯͷ���㡣" )
	Text( 22, "���������ʯ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, LvCheck, ">", 59 )
	TriggerAction( 1, TakeItem, 3457, 5 )
	TriggerAction( 1, GiveItem, 2545, 1, 4 )
	TriggerFailure( 1, JumpPage, 24 )
	Talk( 23, "Ů�������ĵȼ���60�����ϣ��������ܸ���5���ɿ���ʯ�Ļ����ҿ��Խ�ʯͷ���㡣" )
	Text( 23, "���ά����ʯ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 24, "Ů�񣺵���ĵȼ�����60��������5���ɿ��Ҳſ��Ը��㶫����")
	
	
	Talk( 25, "Ů�񣺽���������Ҫһ�����ش��������е����⣬ֻ�е���ȫ����ȷ�ش�֮�����ͨ������")  ---------���˻��ضԻ�----------
	Text( 25, "��׼�����ˣ��Ͽ쿪ʼ�ɣ�", JumpPage, 27)
	Text( 25, "�һ�û׼������", CloseTalk )
	
	Talk( 27, "Ů��2008����˻������ĸ����оٰ죿")
	Text( 27, "�ŵ�", JumpPage, 28)
	Text( 27, "����", JumpPage, 29)                   --��ȷ
	Text( 27, "�Ϻ�", JumpPage, 28)
	Text( 27, "Ϥ��", JumpPage, 28)
	
	Talk( 29, "Ů�����ʺ�����online�����������칫����أ�")
	Text( 29, "2004��8��8��", JumpPage, 28)
	Text( 29, "2005��8��8��", JumpPage, 28)
	Text( 29, "2004��8��6��", JumpPage, 28)
	Text( 29, "2005��8��6��", JumpPage, 30)          ---��ȷ
	Text( 29, "2005��10��1��", JumpPage, 28)
	
	Talk( 30, "Ů�����ʰ����廷���������ʲô���壿")
	Text( 30, "��������������", JumpPage, 28)
	Text( 30, "�������ְ��˾���", JumpPage, 28)
	Text( 30, "��������޵��Ž�", JumpPage, 31)      --��ȷ
	Text( 30, "������������Ž�", JumpPage, 28)
	
	Talk( 31, "Ů�������ں������к������������м��Ҵ���")
	Text( 31, "1��", JumpPage, 28)
	Text( 31, "2��", JumpPage, 32)                     --��ȷ
	Text( 31, "3��", JumpPage, 28)
	Text( 31, "4��", JumpPage, 28)
	
	Talk( 32, "Ů�����ʱ������˻�����ʷ�ϵڼ�����˻᣿")
	Text( 32, "��26��", JumpPage, 28)
	Text( 32, "��27��", JumpPage, 28)
	Text( 32, "��28��", JumpPage, 28)
	Text( 32, "��29��", JumpPage, 33)                    --��ȷ
	
	Talk( 33, "Ů�����������ĸ���Ŀ���ǰ��˻�ı�����Ŀ��")
	Text( 33, "����", JumpPage, 28)
	Text( 33, "��Ʊ", JumpPage, 34)                      --��ȷ
	Text( 33, "����", JumpPage, 28)
	Text( 33, "��ɡ", JumpPage, 34)                      --��ȷ
	
	Talk( 34, "Ů�񣺹�ϲ�㣡����������������²��һ����ʲô��Ʒ�أ�")
	Text( 34, "������", JumpPage, 28)
	Text( 34, "�ǻ�֮��", JumpPage, 35)
	Text( 34, "����֮ͫ", JumpPage, 28)
	Text( 34, "����ֵ", JumpPage, 28)
	
	Talk( 35, "���Ѿ���������Ƕ���Ŀ��飬�����Ҹ�����ǻ�֮�ĺ�֮ǰ�ķ���֮�ģ���η֮�ģ��ʰ�֮�ĺͻ��ص�ʥ�𴫵ݴ�ʹ���")
	InitTrigger()
	TriggerCondition( 1, HasRecord, 1322 )
	TriggerAction( 1, ClearRecord, 1322 )
	TriggerAction( 1, GiveItem, 5801, 1, 4 )  --�����ǻ�֮��
	--TriggerAction( 1, SetRecord, 1323 )
	TriggerFailure( 1, JumpPage, 26 )	
	Text( 35, "�õģ������Ͼ�ȥ", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 35, "�ر�", CloseTalk )
	
	
	Talk( 26, "Ů������û����Ҹ��������֮ǰ��ʲô���������˵...")
	Text( 26, "�뿪", CloseTalk )
	Talk( 28, "Ů�񣺺��ź����ش���󣬵����ҵ���ȷ������������")    ---�ش����
	Text( 28, "�뿪", CloseTalk )
	AddNpcMission(6000)
	----����
	AddNpcMission (6277)
	AddNpcMission (6278)
end

function dydz_talk()


	Talk( 1, "�������ߣ��������������͸Ͽ��뿪�����������������ҿ����ˣ�����Ѻ���ƽ�ˣ���" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 40,74, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, RepairBerthList, 12 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, SupplyBerthList, 12 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 12 )
	TriggerAction( 1, SalvageBerthList, 12 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 ) 
	
	Talk( 3, "������ʲô�����Ѿ�û�п���ʹ�õĴ��ˣ�������͸Ͽ������" )
	Talk( 4, "��Ҫ��Ϊ�����޴��Ͳ�ҪǮ��Ҫ�����Ƚ���ͣ�ڱ��ۿڣ�������1000G����" )
	Talk( 5, "��Ҫ��Ϊ���������Ͳ�ҪǮ��Ҫ�����Ƚ���ͣ�ڱ��ۿڣ�������200G����" )
	Talk( 6, "�Բ�������ֻ���̱��۴�ֻ������Ҫ����1000G����" )
	Talk( 7, "�������ߣ���������������^$&#&^%��������������" )

end


function dysr_talk ()

	Talk( 1, "�������ˣ�����������֮�����ڴ˸�������λ���߰���������֤���ǵ���������������������" )
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


function zsts_talk()
	Talk( 1, "ת����ʹ��ֻ�������㣬��ᶨ�ĺ����ͺ����ſ��Եõ�ת���Ļ��ᣡ")
	Text( 1, "�����˽���ת��", JumpPage, 2)
	Text( 1, "����ת��", JumpPage, 6)

	Talk( 2, "ת����ʹ: ����֪����ʲô�أ�")
	Text( 2, "����ת�����ְҵ", JumpPage, 3)
	Text( 2, "����ת��������Ե㼼�ܵ�", JumpPage, 4)
	Text( 2, "����ת��������", JumpPage, 5)
	
	Talk( 3, "ת������ҿ�������ѡ��ְҵ���������ѡ��˫���������;ѻ�������˹����ѡ��޽�������������ѡ��ʥְ����ӡ���������ѻ��������������ѡ��ʥְ����ӡ������")
	Text( 3, "лл����������", CloseTalk)

	Talk( 4, "ת������ҵ����Ե㽫������Ϊ���״̬����ɫ��ǰ�ȼ�ӵ�е����Ե������ǩ��ʹ�����յ���ĵ��ģ���ȫ�������Թ�������·��䣬����Ӧ�µ�ְҵ��ͬʱ������е�ս�����ܱ���գ����м��ܵ�Ҳ�����������")
	Text( 4, "лл����������", CloseTalk)

	Talk( 5, "��ת���Ļ��������Ů������ķ���������񣬵õ�����֮ʯ�����ң�������Ҳ����ͨ��ת����ֱ�ӻ������֮ʯ������Ŷ��������ע��ת��֮ǰ������ȫ��װ�������ڱ����ڡ�")
	Text( 5, "лл����������", CloseTalk)

	Talk( 6, "Ů��:������ת��������ɵ�ɶ��" )
	Text( 6, "��Ϊ˫��ʿά�������ƽ",  GetChaName1_born, 1)
	Text( 6, "��Ϊ�޽�ʿ����ս��",  GetChaName2_born, 1)
	Text( 6, "��Ϊ����ʿ�˷�����",  GetChaName3_born, 1)
	Text( 6, "��Ϊ�ѻ�����ɱ����",  GetChaName4_born, 1)
	Text( 6, "��Ϊʥְ�߸���ҿ���", GetChaName5_born, 1)
	Text( 6, "��Ϊ��ӡʦ�ܸ�ɶ�͸ɵ�ɶ", GetChaName6_born, 1)

	AddNpcMission ( 6071 )

end

------------------------------------------------------------
--�ر����� ��Ľ���ػ��ߣ�66900��106400��
------------------------------------------------------------

function k_talk002()


	Talk( 1, "��Ľ���ػ���:�������Ǳ��Ǹ�ңԶ�ĺ�,ɽ�ľ�ͷ�Ǹ��Դ��ɽ,��������ȴ������º������䵽��!����Զ��������,��������ҵ�һ���д�����ĵط�,������һö˼���ߵ�ף��.��" )
	Text( 1, "�һ���Ľ����", JumpPage, 2)

	Talk( 2, "��Ľ���ػ���:���ǰ�Ľ����ػ���,�����˵������Ѿ��ܶ�����,��ô�����ڵ���û��ʳ��伢,�����һ�š�����Ʒ��ȯ����!")	
	InitTrigger()
	TriggerCondition( 1, HasItem, 1097, 1)             ------------����Ʒ��ȯ
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerCondition(1, KitbagLock, 0 )
	TriggerAction(1, TakeItem, 1097, 1)
	TriggerAction(1, GiveItem, 1104, 1, 4)              ----------��Ľ����
	TriggerFailure(1, JumpPage, 3)
	Text(2,"ȷ�϶һ�", MultiTrigger, GetMultiTrigger(), 1) 	

	Talk( 3, "����һ�������ߵ���Ը��������,��һ��Ҫ!!Ҫ�ͷ���!������... ...������,����㱳������������������,��Ҳ�޷�Ʒ������ζ�ĵ���!")

	Text( 1, "�һ�10���ɳ����", JumpPage, 4)

	Talk( 4, "��Ľ���ػ���:���ǰ�Ľ����ػ���,�����˵������Ѿ��ܶ�����,��ô�����ڵ���û�пɿڵ�ʳ��,�����һ����������˾��Ʒ��һ�°�!")	
	InitTrigger()
	TriggerCondition( 1, HasItem, 2989, 1)             ------------������˾
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerCondition(1, KitbagLock, 0 )
	TriggerAction(1, TakeItem, 2989, 1)
	TriggerAction(1, GiveItem, 0992, 10, 4)              ----------�ɳ����10��
	TriggerFailure(1, JumpPage, 5)
	Text(4,"ȷ�϶һ�", MultiTrigger, GetMultiTrigger(), 1) 	

	Talk( 5, "���ڵ��������,�ȿ�... ...��ô����һ���óԵ�Ҳ����?����ϸ�������ı����Ƿ��п�λ���Ǳ���������!")

end

------------------------------------------------------------
--���� ��֮���ͣ�175440,90279��
------------------------------------------------------------

function k_talk003()


	Talk( 1, "��֮����:����֮��â���ռ���,��֮ף���������ļ䴫��,����Ů��������߽��õ�����!���ǵ�110����֮����������,�ǳ������������!" )
	Text( 1, "�һ���˫����", JumpPage, 2)

	Talk( 2, "��֮����:��˵����������ʥ�µ���˫������Ҫ85����װ���䷽�ɻ��,Զ������������������Ȥ�һ���?")	
	InitTrigger()
	TriggerCondition( 1, HasItem, 5709, 1)             ------------85����װ����
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerCondition(1, KitbagLock, 0 )
	TriggerAction(1, TakeItem, 5709, 1)
	TriggerAction(1, GiveItem, 5714, 1, 4)              ----------��˫����
	TriggerFailure(1, JumpPage, 3)
	Text(2,"ȷ�϶һ�", MultiTrigger, GetMultiTrigger(), 1) 	

	Talk( 3, "��ȷ�����ı����Ƿ������������ı���������.")

	Text( 1, "�һ���������", JumpPage, 4)

	Talk( 4, "��֮����:�һ��������䲻����Ҫ����һ������Ů������,����Ҫһ��ת����,��ȷ���һ���?")	
	InitTrigger()
	TriggerCondition( 1, HasItem, 2941, 1)             ------------ת����
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerCondition(1, KitbagLock, 0 )
	TriggerAction(1, TakeItem, 2941, 1)
	TriggerAction(1, GiveItem, 5712, 1, 4)              ----------��������
	TriggerFailure(1, JumpPage, 5)
	Text(4,"ȷ�϶һ�", MultiTrigger, GetMultiTrigger(), 1) 	

	Talk( 5, "��ȷ�����ı����Ƿ������������ı���������.")

end

















