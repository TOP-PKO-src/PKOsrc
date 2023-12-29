-------------------------------------------------------------------
--									--
--									--
--NPCScript03.lua Created by Robin 2005.6.1.				--
--									--
--									--
--------------------------------------------------------------------------
print( "loading NPCScript03.lua" )

jp= JumpPage
amp=AutoMissionPage
ct=CloseTalk
am=AddMission
MissionCheck = HasFlag
mc=MissionCheck


----------------------------------------------------------
--							--
--							--
--		������[����Ա�����带]			--
--							--
--		225538,280188				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk10 ()
	
	
	Talk( 1, "���带���ˣ����ѣ����Ǹۿڽ���Ա����ʲô��Ҫ��æ���𣿱���������ܿ��ڡ�" )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 1 )
	TriggerAction( 1, TradeBerthList, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	--Text( 1, "���ｻ��", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 1, "���ڻ��ó��֤",JumpPage, 3)
	
	Talk( 2, "���带���Բ�����Ĵ�û��ͣ�ڰ���֮�ۡ��޷����ס�" )
	
	Talk( 3, "��ã���Ҫ�¸��Ļ���һ��Ҫӵ�С�ó��֤��Ŷ������ó��֤����ܾ�Ӫ�����ó��Ʒ��ͬʱҲ�ܽ�����ĳɱ���Ŀǰֻ��ɳᰳǵ�ó��������ó��֤���š�")
	Text( 3, "�й�˰��",JumpPage, 7)
	Text( 3, "����ó��֤",JumpPage, 4)
	Text( 3, "�м�ó��֤",JumpPage, 5)
	Text( 3, "�߼�ó��֤",JumpPage, 6)
	

	Talk( 4, "����ó��֤�����׾��ܵõ�������ﵽ20����ȥɳᰳǵ�ó���������һ���򵥵�����Ϳ��Եõ���")
	Talk( 5, "���㼶��ﵽ40�����ҽ�����ó��֤˰�ʽ��͵�20%����ʱ���Ϳ��Ե�ɳᰳ�ó����ͨ���������м�ó��֤��")
	Talk( 6, "���㼶��ﵽ60�����ҽ�����ó��֤˰�ʽ��͵�10%����ʱ���Ϳ��Ե�ɳᰳ�ó����ͨ�������ø߼�ó��֤��")
	Talk( 7, "�鿴���ó��֤���ܿ����㵱ǰ��˰�ʣ�˰��ֱ��Ӱ�������ó��Ʒʱ�Ͻ��Ľ����ʣ���Ҫ����˰��ֻ�е�ɳᰳǵ�ó�������һ��ó��������С�")

	InitGoods(1)
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

	AddNpcMission 	(443)
	AddNpcMission 	(445)
	AddNpcMission 	(447)
	AddNpcMission	(1020)
	AddNpcMission	(1076)
	AddNpcMission	(1132)
	AddNpcMission	(1183)
	AddNpcMission(	1226	)
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<����Ա�����带



----------------------------------------------------------
--							--
--							--
--		������[����Ա��ɣ��]			--
--							--
--		103877,127848				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk27 ()
	
	
	Talk( 1, "ɣ����Hi��Baby~~���Ǹ���ۿڻ��ｻ�׵Ľ���Ա��Ҳ��Ů�ԵĻ���ʹ��Ŷ��" )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 2 )
	TriggerAction( 1, TradeBerthList, 2 )
	TriggerFailure( 1, JumpPage, 2 )
	--Text( 1, "���ｻ��", MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 1, "���ڻ��ó��֤",JumpPage, 3)
	
	Talk( 2, "ɣ�����Բ�����Ĵ�û��ͣ������֮�ۡ��޷����ס�" )	
	
	Talk( 3, "��ã���Ҫ�¸��Ļ���һ��Ҫӵ�С�ó��֤��Ŷ������ó��֤����ܾ�Ӫ�����ó��Ʒ��ͬʱҲ�ܽ�����ĳɱ���Ŀǰֻ��ɳᰳǵ�ó��������ó��֤���š�")
	Text( 3, "�й�˰��",JumpPage, 7)
	Text( 3, "����ó��֤",JumpPage, 4)
	Text( 3, "�м�ó��֤",JumpPage, 5)
	Text( 3, "�߼�ó��֤",JumpPage, 6)

	Talk( 4, "����ó��֤�����׾��ܵõ�������ﵽ20����ȥɳᰳǵ�ó���������һ���򵥵�����Ϳ��Եõ���")
	Talk( 5, "���㼶��ﵽ40�����ҽ�����ó��֤˰�ʽ��͵�20%����ʱ���Ϳ��Ե�ɳᰳ�ó����ͨ���������м�ó��֤��")
	Talk( 6, "���㼶��ﵽ60�����ҽ�����ó��֤˰�ʽ��͵�10%����ʱ���Ϳ��Ե�ɳᰳ�ó����ͨ�������ø߼�ó��֤��")
	Talk( 7, "�鿴���ó��֤���ܿ����㵱ǰ��˰�ʣ�˰��ֱ��Ӱ�������ó��Ʒʱ�Ͻ��Ľ����ʣ���Ҫ����˰��ֻ�е�ɳᰳǵ�ó�������һ��ó��������С�")
	
	
	
	InitGoods( 2)
	SaleGoodsData(	1	,	4597	,	480	,	436	,	97	)
	SaleGoodsData(	2	,	4598	,	300	,	472	,	105	)
	SaleGoodsData(	2	,	4599	,	240	,	508	,	113	)
	SaleGoodsData(	3	,	4600	,	60	,	571	,	127	)
	SaleGoodsData(	3	,	4601	,	40	,	643	,	143	)
	
	BuyGoodsData(0,	4573	,	-1	,	554	,	123	)
	BuyGoodsData(0,	4574	,	-1	,	711	,	158	)
	BuyGoodsData(0,	4576	,	-1	,	872	,	193	)
	BuyGoodsData(0,	4581	,	-1	,	548	,	121	)
	BuyGoodsData(0,	4583	,	-1	,	740	,	165	)
	BuyGoodsData(0,	4587	,	-1	,	900	,	600	)
	BuyGoodsData(0,	4591	,	-1	,	880	,	195	)
	BuyGoodsData(0,	4593	,	-1	,	1029	,	229	)
	BuyGoodsData(0,	4595	,	-1	,	976	,	651	)
	BuyGoodsData(0,	4553	,	-1	,	826	,	183	)
	BuyGoodsData(0,	4555	,	-1	,	793	,	177	)
	BuyGoodsData(0,	4556	,	-1	,	860	,	191	)
	BuyGoodsData(0,	4557	,	-1	,	960	,	213	)
	BuyGoodsData(0,	4559	,	-1	,	920	,	205	)
	BuyGoodsData(0,	4560	,	-1	,	1039	,	231	)
	BuyGoodsData(0,	4563	,	-1	,	909	,	202	)
	BuyGoodsData(0,	4566	,	-1	,	831	,	185	)
	BuyGoodsData(0,	4569	,	-1	,	1089	,	243	)
	BuyGoodsData(0,	4572	,	-1	,	924	,	205	)
	BuyGoodsData(0,	4547	,	-1	,	100	,	0	)
	BuyGoodsData(0,	4549	,	-1	,	450	,	0	)
	BuyGoodsData(0,	4550	,	-1	,	1000	,	0	)
	BuyGoodsData(0,	4548	,	-1	,	300	,	0	)
	BuyGoodsData(0,	4551	,	-1	,	20	,	0	)
	BuyGoodsData(0,	3913	,	-1	,	1248	,	832 	)
	BuyGoodsData(0,	3912	,	-1	,	1395	,	930 	)
	BuyGoodsData(0,	3914	,	-1	,	1614	,	1077	)

	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 51, TE_GAMETIME, TT_CYCLETIME, 30, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()

	AddNpcMission	(1021)
	AddNpcMission	(1077)
	AddNpcMission	(1133)
	AddNpcMission	(1184)
----------����Ա��ɣ��-------˫��	--------------03
	AddNpcMission	(5728)
	AddNpcMission	(5729)
end 

----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[������������]			--
--							--
--		90391,366735				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk60 ()
	
	Talk( 1, "�����ˣ���ã����ѣ����ǴӰ�����Զ������ѧϰ�촬���ģ����и����ˡ�" )
	InitTrigger()
	TriggerCondition( 1, IsBoatFull )
	TriggerAction( 1, SystemNotice, "��ֻ�����������޷������´�" )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "���촬ֻ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 3 )
	TriggerAction( 1, BoatLevelBerthList, 3 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 )
	
	Talk( 2, "�����ˣ���Ҫ��ʲô���͵Ĵ��أ�������ֻ�м������͸����ޡ������ڿ�ʼ��ֻ�����Լ��ĵȼ��ˣ�Ҫ������ֻ�ĵȼ�������ȫ���Ӵ�ֻ�����ܣ��´�һ���������϶�Ҫ����ۿ۵�Ŷ����Ҫ������ֻ�ĵȼ��Ļ���Ҫ�����������뺣��ս�����۴�ֻ���鿩��" )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 1 )
	TriggerAction( 1, CreateBoat, 1, 3 )
	Text( 2, "���춾����ͧ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 5 )
	TriggerAction( 1, CreateBoat, 5, 3 )
	Text( 2, "����׷����", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 6 )
	TriggerAction( 1, CreateBoat, 6, 3 )
	Text( 2, "������㴩��ͧ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 4 )
	TriggerAction( 1, CreateBoat, 4, 3 )
	Text( 2, "���������䴬", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 14 )
	TriggerAction( 1, CreateBoat, 14, 3 )
	Text( 2, "��������ս��", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 15 )
	TriggerAction( 1, CreateBoat, 15, 3 )
	Text( 2, "����Ů��", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3, "�����ˣ���Ĵ�û��ͣ������ɣ�����ͣ�������������Ŷ����ֻ�ȼ�Խ�ߴ�ֻ�ĸ������ܾ�Խ�ã�ֻ����ߴ�ֻ�����Ȳ����ô�ֻ������ǰ�ڿ����ں�������ʻ������֮���Ҫͨ����ɱ���ϵĹ����������ˡ�" )

	AddNpcMission	(1116)
	AddNpcMission	(158)
	AddNpcMission	(159)
	AddNpcMission	(160)
	
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�������ˡ�������

------------------------------------------------------------
-- ������-----����������������
--           2247,2857
------------------------------------------------------------

function r_talk150()

	Talk( 1, "�����ȣ���ã����ǰ����������������Ҹ����������ص�һЩ������Դ���䡣��ʲô���󾡹��������ޣ�" )

	Text( 1, "�����з��(�ռ�12��ר������)", JumpPage,2 )

	Talk( 2, "����������������:��ѡ����Ҫ���ص��Ѷ�,��ˮ�ֵ������Ѷ����μӴ�,��Ȼ���Ѷ�Խ�߽���Խ���.���������?ֻ��ѡ��һ��,�����Ժ��Ŷ" )

	InitTrigger()
	TriggerCondition( 1, NoRecord,1467 )
	TriggerCondition( 1, NoRecord,1468 )
	TriggerCondition( 1, HasItem, 1866, 1 )---------��з��Ʊ
	TriggerAction( 1, TakeItem, 1866, 1 )----------��з��Ʊ
	TriggerAction( 1, SetRecord, 1466 )
	TriggerAction( 1, SetRecord, 1469 )
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2, "ˮ��",MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, NoRecord,1466 )
	TriggerCondition( 1, NoRecord,1468 )
	TriggerCondition( 1, HasItem, 1866, 1 )---------��з��Ʊ
	TriggerAction( 1, TakeItem, 1866, 1 )----------��з��Ʊ
	TriggerAction( 1, SetRecord, 1467 )
	TriggerAction( 1, SetRecord, 1469 )
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2, "����",MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, NoRecord,1466 )
	TriggerCondition( 1, NoRecord,1467 )
	TriggerCondition( 1, HasItem, 1866, 1 )--------��з��Ʊ
	TriggerAction( 1, TakeItem, 1866, 1 )----------��з��Ʊ
	TriggerAction( 1, SetRecord, 1468 )
	TriggerAction( 1, SetRecord, 1469 )
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2, "����",MultiTrigger, GetMultiTrigger(), 1)

	Talk(3, "����������������:ϣ�����ܹ��ᶨ�Լ���ѡ�񣬲�Ҫ����Ŷ����������ף����..." )
	Talk( 4, "����������������:��ս��з����ʱ��,�Ѷ�ֻ��ѡ��һ��.��ȷ�����ı������о�з����Ʊ.")
	
	AddNpcMission 	(437)
	AddNpcMission 	(439)
	AddNpcMission 	(441)

------------������
-----------------------��з��
	AddNpcMission 	(5800)
	AddNpcMission 	(5801)
	AddNpcMission 	(5802)
	AddNpcMission 	(5803)
	AddNpcMission 	(5804)
	AddNpcMission 	(5805)
	AddNpcMission 	(5806)
	AddNpcMission 	(5807)
	AddNpcMission 	(5808)
	AddNpcMission 	(5809)
	AddNpcMission 	(5810)
	AddNpcMission 	(5811)
	AddNpcMission 	(5812)
	AddNpcMission 	(5813)
	AddNpcMission 	(5814)
	AddNpcMission 	(5815)
	AddNpcMission 	(5816)
	AddNpcMission 	(5857)
	AddNpcMission 	(5858)
	AddNpcMission 	(5862)
	AddNpcMission 	(5863)
	AddNpcMission 	(5864)

end

------------------------------------------------------------
-- ������-----������˹�Ϳ�
------------------------------------------------------------
function r_talk151 ()
		
	Talk( 1, "˹�Ϳˣ��ٻ�ƣ��������ô��ûһ�Һô��ɲ��У�����������õĴ�������Ҫʲô������˵�ɡ�" )
	InitTrigger()
	TriggerCondition( 1, IsBoatFull )
	TriggerAction( 1, SystemNotice, "��ֻ�����������޷������´�" )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "���촬ֻ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 1 )
	TriggerAction( 1, BoatLevelBerthList, 1 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 )
	
	Talk( 2, "˹�Ϳˣ���Ҫ��ʲô���͵Ĵ��أ�������ֻ�м������͸����ޡ������ڿ�ʼ��ֻ�����Լ��ĵȼ��ˣ�Ҫ������ֻ�ĵȼ�������ȫ���Ӵ�ֻ�����ܣ��´�һ���������϶�Ҫ����ۿ۵�Ŷ����Ҫ������ֻ�ĵȼ��Ļ���Ҫ�����������뺣��ս�����۴�ֻ���鿩��" )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 1 )
	TriggerAction( 1, CreateBoat, 1, 1 )
	Text( 2, "���춾����ͧ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 2 )
	TriggerAction( 1, CreateBoat, 2, 1 )
	Text( 2, "���������I��", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 3 )
	TriggerAction( 1, CreateBoat, 3, 1 )
	Text( 2, "���������ͧ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 6 )
	TriggerAction( 1, CreateBoat, 6, 1 )
	Text( 2, "������㴩��ͧ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3, "˹�Ϳˣ���Ĵ�û��ͣ������ɣ�����ͣ�������������Ŷ����ֻ�ȼ�Խ�ߴ�ֻ�ĸ������ܾ�Խ�ã�ֻ����ߴ�ֻ�����Ȳ����ô�ֻ������ǰ�ڿ����ں�������ʻ������֮���Ҫͨ����ɱ���ϵĹ����������ˡ�" )
end 

------------------------------------------------------------
-- ������-----����ָ�ӡ�ѩ��
------------------------------------------------------------

function r_talk152()

	Talk( 1, "ѩ��hi~!���ǰ����ǵĺ���ָ��Ա������ͣ���ڰ����ǸۿڵĴ�ֻ����¼���������Ҫ�����Ļ����������ҵǼǣ����������º���" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 1 )
	--TriggerAction( 1, RemoveYS )
	TriggerAction( 1, LuanchBerthList, 1, 2260,2829, 177 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 1 )
	TriggerAction( 2, RepairBerthList, 1 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 1 )
	TriggerAction( 2, SupplyBerthList, 1 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 1 )
	TriggerAction( 1, SalvageBerthList, 1 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "�Բ�����Ĵ����ڴ˸ۿڻ����Ѿ���û������̴�ֻ���ٳ�����" )
	Talk( 4, "�Բ���Ҫ����ֻ���뽫��ͣ�ڱ��ۿڣ�������1000G����" )
	Talk( 5, "�Բ���Ҫ������ֻ���뽫��ͣ�ڱ��ۿڣ�������200G����" )
	Talk( 6, "�Բ�������ֻ���̱��۴�ֻ��������Ҫ������1000G����" )

	AddNpcMission ( 289 )
	AddNpcMission ( 290 )


end

------------------------------------------------------------
-- ɳᰳ�-----����ָ�ӡ����
------------------------------------------------------------

function r_talk153()

	Talk( 1, "��ˣ�hi~!����ɳᰳǵĺ���ָ��Ա������ͣ����ɳᰳǸۿڵĴ�ֻ����¼���������Ҫ�����Ļ����������ҵǼǣ����������º���" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 832, 3698, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 3 )
	TriggerAction( 2, RepairBerthList, 3 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 3 )
	TriggerAction( 2, SupplyBerthList, 3 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 3 )
	TriggerAction( 1, SalvageBerthList, 3 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 ) 
	
	Talk( 3, "�Բ�����Ĵ����ڴ˸ۿڻ����Ѿ���û������̴�ֻ���ٳ�����" )
	Talk( 4, "�Բ���Ҫ����ֻ���뽫��ͣ�ڱ��ۿڣ�������1000G����" )
	Talk( 5, "�Բ���Ҫ������ֻ���뽫��ͣ�ڱ��ۿڣ�������200G����" )
	Talk( 6, "�Բ�������ֻ���̱��۴�ֻ��������Ҫ������1000G����" )



end

------------------------------------------------------------
--���Ǳ�-----����������
------------------------------------------------------------
function r_talk155 ()
		
	Talk( 1, "���Σ��ٻ�ƣ��������ô��ûһ�Һô��ɲ��У�����������õĴ�������Ҫʲô������˵�ɡ�" )
	InitTrigger()
	TriggerCondition( 1, IsBoatFull )
	TriggerAction( 1, SystemNotice, "��ֻ�����������޷������´�" )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "���촬ֻ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 4 )
	TriggerAction( 1, BoatLevelBerthList, 4 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 )
	
	Talk( 2, "���Σ���Ҫ��ʲô���͵Ĵ��أ�������ֻ�м������͸����ޡ������ڿ�ʼ��ֻ�����Լ��ĵȼ��ˣ�Ҫ������ֻ�ĵȼ�������ȫ���Ӵ�ֻ�����ܣ��´�һ���������϶�Ҫ����ۿ۵�Ŷ����Ҫ������ֻ�ĵȼ��Ļ���Ҫ�����������뺣��ս�����۴�ֻ���鿩��" )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 2 )
	TriggerAction( 1, CreateBoat, 2, 4 )
	Text( 2, "���������I��", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 5 )
	TriggerAction( 1, CreateBoat, 5, 4 )
	Text( 2, "����׷����", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 3 )
	TriggerAction( 1, CreateBoat, 3, 4 )
	Text( 2, "���������ͧ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 4 )
	TriggerAction( 1, CreateBoat, 4, 4 )
	Text( 2, "���������䴬", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 16 )
	TriggerAction( 1, CreateBoat, 16, 4 )
	Text( 2, "������ӥ������", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3, "���Σ���Ĵ�û��ͣ������ɣ�����ͣ�������������Ŷ����ֻ�ȼ�Խ�ߴ�ֻ�ĸ������ܾ�Խ�ã�ֻ����ߴ�ֻ�����Ȳ����ô�ֻ������ǰ�ڿ����ں�������ʻ������֮���Ҫͨ����ɱ���ϵĹ����������ˡ�" )
		
end 

------------------------------------------------------------
-- ���Ǳ�-----����ָ�ӡ�ϯ��
------------------------------------------------------------

function r_talk154()

	Talk( 1, "ϯ�֣�hi~!���Ǳ��Ǳ��ĺ���ָ��Ա������ͣ���ڱ��Ǳ��ۿڵĴ�ֻ����¼���������Ҫ�����Ļ����������ҵǼǣ����������º���" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 4 )
	TriggerAction( 1, LuanchBerthList, 4, 1196,673, 177 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 4 )
	TriggerAction( 2, RepairBerthList, 4 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 4 )
	TriggerAction( 2, SupplyBerthList, 4 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 4 )
	TriggerAction( 1, SalvageBerthList, 4 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 ) 


	Talk( 3, "�Բ�����Ĵ����ڴ˸ۿڻ����Ѿ���û������̴�ֻ���ٳ�����" )
	Talk( 4, "�Բ���Ҫ����ֻ���뽫��ͣ�ڱ��ۿڣ�������1000G����" )
	Talk( 5, "�Բ���Ҫ������ֻ���뽫��ͣ�ڱ��ۿڣ�������200G����" )
	Talk( 6, "�Բ�������ֻ���̱��۴�ֻ��������Ҫ������1000G����" )

	AddNpcMission ( 294 )
	AddNpcMission ( 295 )

end


------------------------------------------------------------
-- ���絺-----����ָ�ӡ�·��
------------------------------------------------------------

function r_talk178()

	Talk( 1, "·������ã��Ҹ�������ĸۿ�ָ�ӣ�������ʲô���԰������" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 5 )
	TriggerAction( 1, LuanchBerthList, 5, 3240, 3314, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 5 )
	TriggerAction( 2, RepairBerthList, 5 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 5 )
	TriggerAction( 2, SupplyBerthList, 5 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 5 )
	TriggerAction( 1, SalvageBerthList, 5 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "�Բ�����Ĵ����ڴ˸ۿڻ����Ѿ���û������̴�ֻ���ٳ�����" )
	Talk( 4, "�Բ���Ҫ����ֻ���뽫��ͣ�ڱ��ۿڣ�������1000G����" )
	Talk( 5, "�Բ���Ҫ������ֻ���뽫��ͣ�ڱ��ۿڣ�������200G����" )
	Talk( 6, "�Բ�������ֻ���̱��۴�ֻ��������Ҫ������1000G����" )
	
end

------------------------------------------------------------
-- �����-----����ָ�ӡ�ŵ���޵�
------------------------------------------------------------

function r_talk179()

	Talk( 1, "ŵ���޵£���ã��Ҹ�������ĸۿ�ָ�ӣ�������ʲô���԰������" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 6 )
	TriggerAction( 1, LuanchBerthList, 6, 2301, 1144, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 6 )
	TriggerAction( 2, RepairBerthList, 6 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 6 )
	TriggerAction( 2, SupplyBerthList, 6 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 6 )
	TriggerAction( 1, SalvageBerthList, 6 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 ) 
	
	Talk( 3, "�Բ�����Ĵ����ڴ˸ۿڻ����Ѿ���û������̴�ֻ���ٳ�����" )
	Talk( 4, "�Բ���Ҫ����ֻ���뽫��ͣ�ڱ��ۿڣ�������1000G����" )
	Talk( 5, "�Բ���Ҫ������ֻ���뽫��ͣ�ڱ��ۿڣ�������200G����" )
	Talk( 6, "�Բ�������ֻ���̱��۴�ֻ��������Ҫ������1000G����" )

end

------------------------------------------------------------
-- ѩ����-----����ָ�ӡ�³��³��
------------------------------------------------------------

function r_talk180()

	Talk( 1, "³��³������ã��Ҹ�������ĸۿ�ָ�ӣ�������ʲô���԰������" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 7 )
	TriggerAction( 1, LuanchBerthList, 7, 3628, 770, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 7 )
	TriggerAction( 2, RepairBerthList, 7 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 7 )
	TriggerAction( 2, SupplyBerthList, 7 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 7 )
	TriggerAction( 1, SalvageBerthList, 7 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "�Բ�����Ĵ����ڴ˸ۿڻ����Ѿ���û������̴�ֻ���ٳ�����" )
	Talk( 4, "�Բ���Ҫ����ֻ���뽫��ͣ�ڱ��ۿڣ�������1000G����" )
	Talk( 5, "�Բ���Ҫ������ֻ���뽫��ͣ�ڱ��ۿڣ�������200G����" )
	Talk( 6, "�Բ�������ֻ���̱��۴�ֻ��������Ҫ������1000G����" )

end

------------------------------------------------------------
-- ��������վ-----����ָ�ӡ�������
------------------------------------------------------------

function r_talk181()

	Talk( 1, "����������ã��Ҹ�������Ĵ�ֻ������������ʲô���԰������" )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 ) 
	
	Talk( 4, "�Բ���Ҫ����ֻ����1000G����" )
	Talk( 5, "�Բ���Ҫ������ֻ����200G����" )


	AddNpcMission	(763)
	AddNpcMission(	1742	)
	AddNpcMission (	1938	)
	AddNpcMission (	1953	)
----------------����˹---����ָ�ӡ�������--03
	AddNpcMission	(5511)
	AddNpcMission	(5512)
	

end

------------------------------------------------------------
-- ��������վ-----����ָ�ӡ���Ү��
------------------------------------------------------------

function r_talk182()

	Talk( 1, "��Ү���ã��Ҹ�������Ĵ�ֻ������������ʲô���԰������" )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 ) 


	Talk( 4, "�Բ���Ҫ����ֻ����1000G����" )
	Talk( 5, "�Բ���Ҫ������ֻ����200G����" )

	AddNpcMission	(379)
	AddNpcMission	(380)
----------------����˹---����ָ�ӡ���Ү��--03
	AddNpcMission (5533 )
	AddNpcMission (5534 )
end

------------------------------------------------------------
-- ��������վ-----����ָ�ӡ�������
------------------------------------------------------------

function r_talk183()

	Talk( 1, "�����ף���ã��Ҹ�������Ĵ�ֻ������������ʲô���԰������" )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 ) 
--Text( 1, "��þ���֮��", JumpPage, 6 ) 
	
	Talk( 4, "�Բ���Ҫ����ֻ����1000G����" )
	Talk( 5, "�Բ���Ҫ������ֻ����200G����" )

	InitTrigger()
	TriggerCondition( 1, HasItem, 3116, 50 )
	TriggerAction( 1, TakeItem, 3116, 50 )
	TriggerAction( 1, GiveItem, 3337, 1, 4 )
	TriggerFailure( 1, JumpPage, 7 )
	Talk( 6, "�����ף���ã�Ҫ��þ���֮�ꣿ��������50����������С�" )
	Text( 6, "�����㹻�ľ����", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 7, "�����ף��٣���˵������������50����������С�" )


	AddNpcMission(	1740	)
	AddNpcMission (	1936	)
	AddNpcMission (	1951	)
	AddNpcMission (	381	)
	AddNpcMission (	382	)
----------------����˹---����ָ�ӡ�������--03
	AddNpcMission (5531 )
	AddNpcMission (5532 )
	-----------------����ָ�ӡ�������---------��ţ
	AddNpcMission	(5655)
	AddNpcMission	(5656)

	

end

------------------------------------------------------------
-- ����ز���վ-----����ָ�ӡ����ڶ�
------------------------------------------------------------

function r_talk184()

	Talk( 1, "���ڶ�����ã��Ҹ�������Ĵ�ֻ������������ʲô���԰������" )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "�Բ���Ҫ����ֻ����1000G����" )
	Talk( 5, "�Բ���Ҫ������ֻ����200G����" )


	AddNpcMission(	1739	)
	AddNpcMission (	1935	)
	AddNpcMission (	1950	)
	AddNpcMission (	383	)
	AddNpcMission (	384	)
	AddNpcMission (	385	)

	----------------����˹---����ָ�ӡ����ڶ�--03
	AddNpcMission (5529 )
	AddNpcMission (5530 )



end

------------------------------------------------------------
-- ���絺-----����Ա��������
------------------------------------------------------------

function r_talk185()

	Talk( 1, "�����ȣ���ã��Ҹ�������Ļ��ｻ�ף�������ʲô���԰������" )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 5 )
	TriggerAction( 1, TradeBerthList, 5 )
	TriggerFailure( 1, JumpPage, 2 )
	--Text( 1, "���ｻ��", MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 1, "���ڻ��ó��֤",JumpPage, 3)	

	Talk( 2, "�����ȣ��Բ�����Ĵ�û��ͣ�ں���֮�ۡ��޷����ס�" )	

	Talk( 3, "��ã���Ҫ�¸��Ļ���һ��Ҫӵ�С�ó��֤��Ŷ������ó��֤����ܾ�Ӫ�����ó��Ʒ��ͬʱҲ�ܽ�����ĳɱ���Ŀǰֻ��ɳᰳǵ�ó��������ó��֤���š�")
	Text( 3, "�й�˰��",JumpPage, 7)
	Text( 3, "����ó��֤",JumpPage, 4)
	Text( 3, "�м�ó��֤",JumpPage, 5)
	Text( 3, "�߼�ó��֤",JumpPage, 6)

	Talk( 4, "����ó��֤�����׾��ܵõ�������ﵽ20����ȥɳᰳǵ�ó���������һ���򵥵�����Ϳ��Եõ���")
	Talk( 5, "���㼶��ﵽ40�����ҽ�����ó��֤˰�ʽ��͵�20%����ʱ���Ϳ��Ե�ɳᰳ�ó����ͨ���������м�ó��֤��")
	Talk( 6, "���㼶��ﵽ60�����ҽ�����ó��֤˰�ʽ��͵�10%����ʱ���Ϳ��Ե�ɳᰳ�ó����ͨ�������ø߼�ó��֤��")
	Talk( 7, "�鿴���ó��֤���ܿ����㵱ǰ��˰�ʣ�˰��ֱ��Ӱ�������ó��Ʒʱ�Ͻ��Ľ����ʣ���Ҫ����˰��ֻ�е�ɳᰳǵ�ó�������һ��ó��������С�")

	InitGoods(5)
	SaleGoodsData(	0	,	4552	,	800	,	315	,	70	)
	SaleGoodsData(	1	,	4553	,	700	,	405	,	90	)
	SaleGoodsData(	1	,	4554	,	480	,	477	,	106	)

	BuyGoodsData(0,	4574	,	-1	,	697	,	155	)
	BuyGoodsData(0,	4578	,	-1	,	960	,	213	)
	BuyGoodsData(0,	4580	,	-1	,	972	,	648	)
	BuyGoodsData(0,	4582	,	-1	,	664	,	147	)
	BuyGoodsData(0,	4584	,	-1	,	818	,	181	)
	BuyGoodsData(0,	4586	,	-1	,	895	,	199	)
	BuyGoodsData(0,	4588	,	-1	,	969	,	646	)
	BuyGoodsData(0,	4590	,	-1	,	725	,	161	)
	BuyGoodsData(0,	4592	,	-1	,	1017	,	226	)
	BuyGoodsData(0,	4594	,	-1	,	1071	,	238	)
	BuyGoodsData(0,	4598	,	-1	,	888	,	197	)
	BuyGoodsData(0,	4599	,	-1	,	955	,	213	)
	BuyGoodsData(0,	4601	,	-1	,	991	,	661	)
	BuyGoodsData(0,	4557	,	-1	,	981	,	218	)
	BuyGoodsData(0,	4560	,	-1	,	1124	,	249	)
	BuyGoodsData(0,	4563	,	-1	,	976	,	217	)
	BuyGoodsData(0,	4566	,	-1	,	763	,	169	)
	BuyGoodsData(0,	4569	,	-1	,	981	,	218	)
	BuyGoodsData(0,	4572	,	-1	,	950	,	211	)

	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 51, TE_GAMETIME, TT_CYCLETIME, 30, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()



	AddNpcMission	(760)
		
end

------------------------------------------------------------
-- �����-----����Ա����ɪ��
------------------------------------------------------------

function r_talk186()

	Talk( 1, "��ɪ�᣺��ã��Ҹ�������Ļ��ｻ�ף�������ʲô���԰������" )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 6 )
	TriggerAction( 1, TradeBerthList, 6 )
	TriggerFailure( 1, JumpPage, 2 )
	--Text( 1, "���ｻ��", MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 1, "���ڻ��ó��֤",JumpPage, 3)

	Talk( 2, "��ɪ�᣺�Բ�����Ĵ�û��ͣ�����֮�ۡ��޷����ס�" )
	
	Talk( 3, "��ã���Ҫ�¸��Ļ���һ��Ҫӵ�С�ó��֤��Ŷ������ó��֤����ܾ�Ӫ�����ó��Ʒ��ͬʱҲ�ܽ�����ĳɱ���Ŀǰֻ��ɳᰳǵ�ó��������ó��֤���š�")
	Text( 3, "�й�˰��",JumpPage, 7)
	Text( 3, "����ó��֤",JumpPage, 4)
	Text( 3, "�м�ó��֤",JumpPage, 5)
	Text( 3, "�߼�ó��֤",JumpPage, 6)

	Talk( 4, "����ó��֤�����׾��ܵõ�������ﵽ20����ȥɳᰳǵ�ó���������һ���򵥵�����Ϳ��Եõ���")
	Talk( 5, "���㼶��ﵽ40�����ҽ�����ó��֤˰�ʽ��͵�20%����ʱ���Ϳ��Ե�ɳᰳ�ó����ͨ���������м�ó��֤��")
	Talk( 6, "���㼶��ﵽ60�����ҽ�����ó��֤˰�ʽ��͵�10%����ʱ���Ϳ��Ե�ɳᰳ�ó����ͨ�������ø߼�ó��֤��")
	Talk( 7, "�鿴���ó��֤���ܿ����㵱ǰ��˰�ʣ�˰��ֱ��Ӱ�������ó��Ʒʱ�Ͻ��Ľ����ʣ���Ҫ����˰��ֻ�е�ɳᰳǵ�ó�������һ��ó��������С�")

	InitGoods(6)
	SaleGoodsData(	1	,	4555	,	480	,	405	,	90	)
	SaleGoodsData(	2	,	4556	,	300	,	468	,	104	)
	SaleGoodsData(	2	,	4557	,	240	,	522	,	116	)

	BuyGoodsData(0,	4573	,	-1	,	554	,	123	)
	BuyGoodsData(0,	4574	,	-1	,	711	,	158	)
	BuyGoodsData(0,	4575	,	-1	,	780	,	173	)
	BuyGoodsData(0,	4585	,	-1	,	936	,	208	)
	BuyGoodsData(0,	4586	,	-1	,	970	,	215	)
	BuyGoodsData(0,	4590	,	-1	,	699	,	155	)
	BuyGoodsData(0,	4592	,	-1	,	963	,	214	)
	BuyGoodsData(0,	4594	,	-1	,	997	,	221	)
	BuyGoodsData(0,	4596	,	-1	,	1027	,	685	)
	BuyGoodsData(0,	4597	,	-1	,	855	,	190	)
	BuyGoodsData(0,	4600	,	-1	,	857	,	571	)
	BuyGoodsData(0,	4554	,	-1	,	991	,	221	)
	BuyGoodsData(0,	4558	,	-1	,	828	,	184	)
	BuyGoodsData(0,	4559	,	-1	,	910	,	203	)
	BuyGoodsData(0,	4562	,	-1	,	819	,	183	)
	BuyGoodsData(0,	4563	,	-1	,	879	,	195	)
	BuyGoodsData(0,	4566	,	-1	,	831	,	185	)
	BuyGoodsData(0,	4569	,	-1	,	1126	,	251	)
	BuyGoodsData(0,	4572	,	-1	,	924	,	205	)


	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 51, TE_GAMETIME, TT_CYCLETIME, 30, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()
		
	AddNpcMission	(761)

	-----------------����Ա����ɪ��---------��ţ
	AddNpcMission	(5643)
	AddNpcMission	(5644)
end

------------------------------------------------------------
-- ѩ����-----����Ա���ʾ�������
------------------------------------------------------------

function r_talk187()

	Talk( 1, "�����£���ã��Ҹ�������Ļ��ｻ�ף�������ʲô���԰������" )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 7 )
	TriggerAction( 1, TradeBerthList, 7 )
	TriggerFailure( 1, JumpPage, 2 )
	--Text( 1, "���ｻ��", MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 1, "���ڻ��ó��֤",JumpPage, 3)

	Talk( 2, "�����£��Բ�����Ĵ�û��ͣ��ѩ��֮�ۡ��޷����ס�" )	

	Talk( 3, "��ã���Ҫ�¸��Ļ���һ��Ҫӵ�С�ó��֤��Ŷ������ó��֤����ܾ�Ӫ�����ó��Ʒ��ͬʱҲ�ܽ�����ĳɱ���Ŀǰֻ��ɳᰳǵ�ó��������ó��֤���š�")
	Text( 3, "�й�˰��",JumpPage, 7)
	Text( 3, "����ó��֤",JumpPage, 4)
	Text( 3, "�м�ó��֤",JumpPage, 5)
	Text( 3, "�߼�ó��֤",JumpPage, 6)

	Talk( 4, "����ó��֤�����׾��ܵõ�������ﵽ20����ȥɳᰳǵ�ó���������һ���򵥵�����Ϳ��Եõ���")
	Talk( 5, "���㼶��ﵽ40�����ҽ�����ó��֤˰�ʽ��͵�20%����ʱ���Ϳ��Ե�ɳᰳ�ó����ͨ���������м�ó��֤��")
	Talk( 6, "���㼶��ﵽ60�����ҽ�����ó��֤˰�ʽ��͵�10%����ʱ���Ϳ��Ե�ɳᰳ�ó����ͨ�������ø߼�ó��֤��")
	Talk( 7, "�鿴���ó��֤���ܿ����㵱ǰ��˰�ʣ�˰��ֱ��Ӱ�������ó��Ʒʱ�Ͻ��Ľ����ʣ���Ҫ����˰��ֻ�е�ɳᰳǵ�ó�������һ��ó��������С�")


	InitGoods(7)
	SaleGoodsData(	2	,	4558	,	300	,	450	,	100	)
	SaleGoodsData(	2	,	4559	,	240	,	495	,	110	)
	SaleGoodsData(	3	,	4560	,	60	,	571	,	127	)

	BuyGoodsData(0,	4576	,	-1	,	898	,	199	)
	BuyGoodsData(0,	4577	,	-1	,	930	,	207	)
	BuyGoodsData(0,	4585	,	-1	,	936	,	208	)
	BuyGoodsData(0,	4587	,	-1	,	938	,	625	)
	BuyGoodsData(0,	4589	,	-1	,	548	,	121	)
	BuyGoodsData(0,	4591	,	-1	,	844	,	187	)
	BuyGoodsData(0,	4593	,	-1	,	972	,	216	)
	BuyGoodsData(0,	4595	,	-1	,	900	,	600	)
	BuyGoodsData(0,	4597	,	-1	,	881	,	195	)
	BuyGoodsData(0,	4599	,	-1	,	945	,	210	)
	BuyGoodsData(0,	4600	,	-1	,	866	,	577	)
	BuyGoodsData(0,	4554	,	-1	,	1020	,	227	)
	BuyGoodsData(0,	4555	,	-1	,	793	,	177	)
	BuyGoodsData(0,	4556	,	-1	,	860	,	191	)
	BuyGoodsData(0,	4557	,	-1	,	960	,	213	)
	BuyGoodsData(0,	4561	,	-1	,	808	,	179	)
	BuyGoodsData(0,	4566	,	-1	,	876	,	195	)
	BuyGoodsData(0,	4569	,	-1	,	1089	,	243	)
	BuyGoodsData(0,	4572	,	-1	,	924	,	205	)



	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 51, TE_GAMETIME, TT_CYCLETIME, 30, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()


	AddNpcMission	(762)	
end

------------------------------------------------------------
-- ��ѩ��-----����ָ�ӡ�����
------------------------------------------------------------

function r_talk188()

	Talk( 1, "��������ã��Ҹ�������ĸۿ�ָ�ӣ�������ʲô���԰������" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 8 )
	TriggerAction( 1, LuanchBerthList, 8, 2351, 767, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 8 )
	TriggerAction( 2, RepairBerthList, 8 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 8 )
	TriggerAction( 2, SupplyBerthList, 8 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 8 )
	TriggerAction( 1, SalvageBerthList, 8 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "�Բ�����Ĵ����ڴ˸ۿڻ����Ѿ���û������̴�ֻ���ٳ�����" )
	Talk( 4, "�Բ���Ҫ����ֻ���뽫��ͣ�ڱ��ۿڣ�������1000G����" )
	Talk( 5, "�Բ���Ҫ������ֻ���뽫��ͣ�ڱ��ۿڣ�������200G����" )
	Talk( 6, "�Բ�������ֻ���̱��۴�ֻ��������Ҫ������1000G����" )
	----------����ָ�ӡ�����-------˫��--------03
	AddNpcMission	(5704)
	AddNpcMission	(5705)
end

------------------------------------------------------------
-- ��ɳ��-----����ָ�ӡ�����
------------------------------------------------------------

function r_talk189()

	Talk( 1, "���꣺��ã��Ҹ�������ĸۿ�ָ�ӣ�������ʲô���԰������" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 9 )
	TriggerAction( 1, LuanchBerthList, 9, 1769, 3788, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 9 )
	TriggerAction( 2, RepairBerthList, 9 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 9 )
	TriggerAction( 2, SupplyBerthList, 9 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 9 )
	TriggerAction( 1, SalvageBerthList, 9 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "�Բ�����Ĵ����ڴ˸ۿڻ����Ѿ���û������̴�ֻ���ٳ�����" )
	Talk( 4, "�Բ���Ҫ����ֻ���뽫��ͣ�ڱ��ۿڣ�������1000G����" )
	Talk( 5, "�Բ���Ҫ������ֻ���뽫��ͣ�ڱ��ۿڣ�������200G����" )
	Talk( 6, "�Բ�������ֻ���̱��۴�ֻ��������Ҫ������1000G����" )
	
end

------------------------------------------------------------
-- �氮��-----����ָ�ӡ��ĵ���
------------------------------------------------------------
function r_talk190()

	Talk( 1, "�ĵ�������ã��Ҹ�������ĸۿ�ָ�ӣ�������ʲô���԰������" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 10 )
	TriggerAction( 1, LuanchBerthList, 10, 2527, 2358, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 10 )
	TriggerAction( 2, RepairBerthList, 10 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 10 )
	TriggerAction( 2, SupplyBerthList, 10 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 10 )
	TriggerAction( 1, SalvageBerthList, 10 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "�Բ�����Ĵ����ڴ˸ۿڻ����Ѿ���û������̴�ֻ���ٳ�����" )
	Talk( 4, "�Բ���Ҫ����ֻ���뽫��ͣ�ڱ��ۿڣ�������1000G����" )
	Talk( 5, "�Բ���Ҫ������ֻ���뽫��ͣ�ڱ��ۿڣ�������200G����" )
	Talk( 6, "�Բ�������ֻ���̱��۴�ֻ��������Ҫ������1000G����" )
end

------------------------------------------------------------
-- �ո۲���վ-----����ָ�ӡ�³��
------------------------------------------------------------
function r_talk191()

	Talk( 1, "³������ã��Ҹ�������Ĵ�ֻ������������ʲô���԰������" )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "�Բ���Ҫ����ֻ����1000G����" )
	Talk( 5, "�Բ���Ҫ������ֻ����200G����" )
	 -------------����˹--�ո۲���վ,����ָ�ӡ�³��(464,468)--03
	AddNpcMission (5527 )
	AddNpcMission (5528 )


end

------------------------------------------------------------
-- �����ﲹ��վ-----����ָ�ӡ���Ŧ
------------------------------------------------------------
function r_talk192()

	Talk( 1, "��Ŧ����ã��Ҹ�������Ĵ�ֻ������������ʲô���԰������" )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "�Բ���Ҫ����ֻ����1000G����" )
	Talk( 5, "�Բ���Ҫ������ֻ����200G����" )

	AddNpcMission ( 304 )
	AddNpcMission ( 305 )
	AddNpcMission(	1743	)
	AddNpcMission (	1939	)
	AddNpcMission (	1954	)
	AddNpcMission (	386	)
	AddNpcMission (	387	)

	----------------����˹---����ָ�ӡ���Ŧ--03
	AddNpcMission (5525 )
	AddNpcMission (5526 )
	
end


------------------------------------------------------------
-- ���Ų���վ-----����ָ�ӡ�������
------------------------------------------------------------
function r_talk193()

	Talk( 1, "�������ã��Ҹ�������Ĵ�ֻ������������ʲô���԰������" )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "�Բ���Ҫ����ֻ����1000G����" )
	Talk( 5, "�Բ���Ҫ������ֻ����200G����" )

	AddNpcMission(	1441	)
	AddNpcMission (	1931	)

	----------------����˹---����ָ�ӡ�������--03
	AddNpcMission (5523 )
	AddNpcMission (5524 )


end

------------------------------------------------------------
-- ����������վ-----����ָ�ӡ��ذ����
------------------------------------------------------------
function r_talk194()

	Talk( 1, "�ذ��������ã��Ҹ�������Ĵ�ֻ������������ʲô���԰������" )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "�Բ���Ҫ����ֻ����1000G����" )
	Talk( 5, "�Բ���Ҫ������ֻ����200G����" )

end

------------------------------------------------------------
-- ���¶�����վ-----����ָ�ӡ��Ͱ�
------------------------------------------------------------
function r_talk195()

	Talk( 1, "�Ͱ£���ã��Ҹ�������Ĵ�ֻ������������ʲô���԰������" )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "�Բ���Ҫ����ֻ����1000G����" )
	Talk( 5, "�Բ���Ҫ������ֻ����200G����" )

	AddNpcMission ( 291 )
	AddNpcMission ( 292 )
	AddNpcMission ( 293 )
	AddNpcMission(	1443	)
	AddNpcMission (	1932	)

	


end

------------------------------------------------------------
-- С�ϲ���վ-----����ָ�ӡ��ϵ���
------------------------------------------------------------
function r_talk196()

	Talk( 1, "�ϵ�������ã��Ҹ�������Ĵ�ֻ������������ʲô���԰������" )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "�Բ���Ҫ����ֻ����1000G����" )
	Talk( 5, "�Բ���Ҫ������ֻ����200G����" )
	----------------����˹---����ָ�ӡ��ϵ���--03
	AddNpcMission (5515 )
	AddNpcMission (5516 )
end

------------------------------------------------------------
-- Ф�в���վ-----����ָ�ӡ�����˹
------------------------------------------------------------
function r_talk197()

	Talk( 1, "����˹����ã��Ҹ�������Ĵ�ֻ������������ʲô���԰������" )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "�Բ���Ҫ����ֻ����1000G����" )
	Talk( 5, "�Բ���Ҫ������ֻ����200G����" )

	----------------1.7
	AddNpcMission (5133 )
	AddNpcMission (5134 )
	AddNpcMission (5135 )

	----------------����˹---����ָ�ӡ�����˹--03
	AddNpcMission (5513 )
	AddNpcMission (5514 )
end

------------------------------------------------------------
-- ��Ƥ�Ų���վ-----����ָ�ӡ�����
------------------------------------------------------------
function r_talk198()

	Talk( 1, "��������ã��Ҹ�������Ĵ�ֻ������������ʲô���԰������" )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "�Բ���Ҫ����ֻ����1000G����" )
	Talk( 5, "�Բ���Ҫ������ֻ����200G����" )
	----------------����˹---����ָ�ӡ�����--03
	AddNpcMission (5517 )
	AddNpcMission (5518 )
end

------------------------------------------------------------
-- ��ѩ��-----����Ա��������
------------------------------------------------------------

function r_talk199()

	Talk( 1, "�����ࣺ��ã��Ҹ�������Ļ��ｻ�ף�������ʲô���԰������" )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 8 )
	TriggerAction( 1, TradeBerthList, 8 )
	TriggerFailure( 1, JumpPage, 2 )
	--Text( 1, "���ｻ��", MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 1, "���ڻ��ó��֤",JumpPage, 3)

	Talk( 2, "�����ࣺ�Բ�����Ĵ�û��ͣ�ڱ�ѩ֮�ۡ��޷����ס�" )	

	Talk( 3, "��ã���Ҫ�¸��Ļ���һ��Ҫӵ�С�ó��֤��Ŷ������ó��֤����ܾ�Ӫ�����ó��Ʒ��ͬʱҲ�ܽ�����ĳɱ���Ŀǰֻ��ɳᰳǵ�ó��������ó��֤���š�")
	Text( 3, "�й�˰��",JumpPage, 7)
	Text( 3, "����ó��֤",JumpPage, 4)
	Text( 3, "�м�ó��֤",JumpPage, 5)
	Text( 3, "�߼�ó��֤",JumpPage, 6)

	Talk( 4, "����ó��֤�����׾��ܵõ�������ﵽ20����ȥɳᰳǵ�ó���������һ���򵥵�����Ϳ��Եõ���")
	Talk( 5, "���㼶��ﵽ40�����ҽ�����ó��֤˰�ʽ��͵�20%����ʱ���Ϳ��Ե�ɳᰳ�ó����ͨ���������м�ó��֤��")
	Talk( 6, "���㼶��ﵽ60�����ҽ�����ó��֤˰�ʽ��͵�10%����ʱ���Ϳ��Ե�ɳᰳ�ó����ͨ�������ø߼�ó��֤��")
	Talk( 7, "�鿴���ó��֤���ܿ����㵱ǰ��˰�ʣ�˰��ֱ��Ӱ�������ó��Ʒʱ�Ͻ��Ľ����ʣ���Ҫ����˰��ֻ�е�ɳᰳǵ�ó�������һ��ó��������С�")

	InitGoods(8)
	SaleGoodsData(	1	,	4561	,	480	,	400	,	89	)
	SaleGoodsData(	2	,	4562	,	300	,	436	,	97	)
	SaleGoodsData(	2	,	4563	,	240	,	468	,	104	)

	BuyGoodsData(0,	4578	,	-1	,	1014	,	225	)
	BuyGoodsData(0,	4580	,	-1	,	1056	,	705	)
	BuyGoodsData(0,	4586	,	-1	,	936	,	208	)
	BuyGoodsData(0,	4588	,	-1	,	1042	,	695	)
	BuyGoodsData(0,	4590	,	-1	,	673	,	149	)
	BuyGoodsData(0,	4592	,	-1	,	909	,	202	)
	BuyGoodsData(0,	4594	,	-1	,	954	,	212	)
	BuyGoodsData(0,	4596	,	-1	,	955	,	637	)
	BuyGoodsData(0,	4598	,	-1	,	954	,	212	)
	BuyGoodsData(0,	4599	,	-1	,	988	,	219	)
	BuyGoodsData(0,	4601	,	-1	,	1049	,	699	)
	BuyGoodsData(0,	4554	,	-1	,	1077	,	239	)
	BuyGoodsData(0,	4556	,	-1	,	879	,	195	)
	BuyGoodsData(0,	4558	,	-1	,	837	,	186	)
	BuyGoodsData(0,	4559	,	-1	,	920	,	205	)
	BuyGoodsData(0,	4560	,	-1	,	1039	,	231	)
	BuyGoodsData(0,	4566	,	-1	,	854	,	189	)
	BuyGoodsData(0,	4569	,	-1	,	1052	,	233	)
	BuyGoodsData(0,	4572	,	-1	,	872	,	193	)


	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 51, TE_GAMETIME, TT_CYCLETIME, 30, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()


	
end

------------------------------------------------------------
-- ��ɳ��-----����Ա��������˹
------------------------------------------------------------

function r_talk200()

	Talk( 1, "������˹����ã��Ҹ�������Ļ��ｻ�ף�������ʲô���԰������" )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 9 )
	TriggerAction( 1, TradeBerthList, 9 )
	TriggerFailure( 1, JumpPage, 2 )
	--Text( 1, "���ｻ��", MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 1, "���ڻ��ó��֤",JumpPage, 3)

	Talk( 2, "������˹���Բ�����Ĵ�û��ͣ����ɳ֮�ۡ��޷����ס�" )	
	
	Talk( 3, "��ã���Ҫ�¸��Ļ���һ��Ҫӵ�С�ó��֤��Ŷ������ó��֤����ܾ�Ӫ�����ó��Ʒ��ͬʱҲ�ܽ�����ĳɱ���Ŀǰֻ��ɳᰳǵ�ó��������ó��֤���š�")
	Text( 3, "�й�˰��",JumpPage, 7)
	Text( 3, "����ó��֤",JumpPage, 4)
	Text( 3, "�м�ó��֤",JumpPage, 5)
	Text( 3, "�߼�ó��֤",JumpPage, 6)

	Talk( 4, "����ó��֤�����׾��ܵõ�������ﵽ20����ȥɳᰳǵ�ó���������һ���򵥵�����Ϳ��Եõ���")
	Talk( 5, "���㼶��ﵽ40�����ҽ�����ó��֤˰�ʽ��͵�20%����ʱ���Ϳ��Ե�ɳᰳ�ó����ͨ���������м�ó��֤��")
	Talk( 6, "���㼶��ﵽ60�����ҽ�����ó��֤˰�ʽ��͵�10%����ʱ���Ϳ��Ե�ɳᰳ�ó����ͨ�������ø߼�ó��֤��")
	Talk( 7, "�鿴���ó��֤���ܿ����㵱ǰ��˰�ʣ�˰��ֱ��Ӱ�������ó��Ʒʱ�Ͻ��Ľ����ʣ���Ҫ����˰��ֻ�е�ɳᰳǵ�ó�������һ��ó��������С�")

	InitGoods(9)
	SaleGoodsData(	0	,	4564	,	800	,	283	,	63	)
	SaleGoodsData(	1	,	4565	,	560	,	342	,	76	)
	SaleGoodsData(	1	,	4566	,	360	,	378	,	84	)

	BuyGoodsData(0,	4574	,	-1	,	724	,	161	)
	BuyGoodsData(0,	4575	,	-1	,	798	,	177	)
	BuyGoodsData(0,	4576	,	-1	,	898	,	199	)
	BuyGoodsData(0,	4581	,	-1	,	531	,	119	)
	BuyGoodsData(0,	4582	,	-1	,	651	,	145	)
	BuyGoodsData(0,	4590	,	-1	,	699	,	155	)
	BuyGoodsData(0,	4592	,	-1	,	963	,	214	)
	BuyGoodsData(0,	4596	,	-1	,	1027	,	685	)
	BuyGoodsData(0,	4598	,	-1	,	982	,	219	)
	BuyGoodsData(0,	4601	,	-1	,	1105	,	737	)
	BuyGoodsData(0,	4553	,	-1	,	807	,	179	)
	BuyGoodsData(0,	4554	,	-1	,	963	,	214	)
	BuyGoodsData(0,	4557	,	-1	,	1052	,	233	)
	BuyGoodsData(0,	4560	,	-1	,	1268	,	281	)
	BuyGoodsData(0,	4563	,	-1	,	976	,	217	)
	BuyGoodsData(0,	4567	,	-1	,	705	,	157	)
	BuyGoodsData(0,	4568	,	-1	,	860	,	191	)
	BuyGoodsData(0,	4569	,	-1	,	960	,	213	)
	BuyGoodsData(0,	4572	,	-1	,	872	,	193	)




	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 51, TE_GAMETIME, TT_CYCLETIME, 30, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()


----------����Ա��������˹-------˫��---03
	AddNpcMission	(5710)
	AddNpcMission	(5711)
end

------------------------------------------------------------
-- �氮��-----����Ա���ȿ�
------------------------------------------------------------

function r_talk201()

	Talk( 1, "�ȿ�����ã��Ҹ�������Ļ��ｻ�ף�������ʲô���԰������" )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 10 )
	TriggerAction( 1, TradeBerthList, 10 )
	TriggerFailure( 1, JumpPage, 2 )
	--Text( 1, "���ｻ��", MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 1, "���ڻ��ó��֤",JumpPage, 3)
	
	Talk( 2, "�ȿ����Բ�����Ĵ�û��ͣ���氮֮�ۡ��޷����ס�" )	

	Talk( 3, "��ã���Ҫ�¸��Ļ���һ��Ҫӵ�С�ó��֤��Ŷ������ó��֤����ܾ�Ӫ�����ó��Ʒ��ͬʱҲ�ܽ�����ĳɱ���Ŀǰֻ��ɳᰳǵ�ó��������ó��֤���š�")
	Text( 3, "�й�˰��",JumpPage, 7)
	Text( 3, "����ó��֤",JumpPage, 4)
	Text( 3, "�м�ó��֤",JumpPage, 5)
	Text( 3, "�߼�ó��֤",JumpPage, 6)

	Talk( 4, "����ó��֤�����׾��ܵõ�������ﵽ20����ȥɳᰳǵ�ó���������һ���򵥵�����Ϳ��Եõ���")
	Talk( 5, "���㼶��ﵽ40�����ҽ�����ó��֤˰�ʽ��͵�20%����ʱ���Ϳ��Ե�ɳᰳ�ó����ͨ���������м�ó��֤��")
	Talk( 6, "���㼶��ﵽ60�����ҽ�����ó��֤˰�ʽ��͵�10%����ʱ���Ϳ��Ե�ɳᰳ�ó����ͨ�������ø߼�ó��֤��")
	Talk( 7, "�鿴���ó��֤���ܿ����㵱ǰ��˰�ʣ�˰��ֱ��Ӱ�������ó��Ʒʱ�Ͻ��Ľ����ʣ���Ҫ����˰��ֻ�е�ɳᰳǵ�ó�������һ��ó��������С�")

	InitGoods(10)
	SaleGoodsData(	1	,	4567	,	600	,	360	,	80	)
	SaleGoodsData(	2	,	4568	,	400	,	468	,	104	)
	SaleGoodsData(	2	,	4569	,	240	,	522	,	116	)

	BuyGoodsData(0,	4576	,	-1	,	924	,	205	)
	BuyGoodsData(0,	4577	,	-1	,	999	,	223	)
	BuyGoodsData(0,	4578	,	-1	,	1014	,	225	)
	BuyGoodsData(0,	4582	,	-1	,	664	,	147	)
	BuyGoodsData(0,	4584	,	-1	,	818	,	181	)
	BuyGoodsData(0,	4589	,	-1	,	542	,	121	)
	BuyGoodsData(0,	4593	,	-1	,	904	,	201	)
	BuyGoodsData(0,	4595	,	-1	,	846	,	564	)
	BuyGoodsData(0,	4597	,	-1	,	986	,	219	)
	BuyGoodsData(0,	4599	,	-1	,	1061	,	235	)
	BuyGoodsData(0,	4600	,	-1	,	1017	,	678	)
	BuyGoodsData(0,	4554	,	-1	,	991	,	221	)
	BuyGoodsData(0,	4557	,	-1	,	1126	,	251	)
	BuyGoodsData(0,	4560	,	-1	,	1220	,	271	)
	BuyGoodsData(0,	4563	,	-1	,	943	,	209	)
	BuyGoodsData(0,	4564	,	-1	,	577	,	129	)
	BuyGoodsData(0,	4565	,	-1	,	666	,	149	)
	BuyGoodsData(0,	4570	,	-1	,	550	,	123	)
	BuyGoodsData(0,	4571	,	-1	,	842	,	187	)





	
	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 51, TE_GAMETIME, TT_CYCLETIME, 30, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()

-----------------����Ա���ȿ�---------��ţ
	AddNpcMission	(5633)
	AddNpcMission	(5634)
----------����Ա���ȿ�-------˫��---------------------03
	AddNpcMission	(5716)
	AddNpcMission	(5717)
end

------------------------------------------------------------
-- ���˵�-----����ָ�ӡ�¬��
------------------------------------------------------------
function r_talk202()

	Talk( 1, "¬�ˣ���ã��Ҹ�������ĸۿ�ָ�ӣ�������ʲô���԰������" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 11 )
	TriggerAction( 1, LuanchBerthList, 11, 1642, 2005, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 11 )
	TriggerAction( 2, RepairBerthList, 11 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 11 )
	TriggerAction( 2, SupplyBerthList, 11 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 11 )
	TriggerAction( 1, SalvageBerthList, 11 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "�Բ�����Ĵ����ڴ˸ۿڻ����Ѿ���û������̴�ֻ���ٳ�����" )
	Talk( 4, "�Բ���Ҫ����ֻ���뽫��ͣ�ڱ��ۿڣ�������1000G����" )
	Talk( 5, "�Բ���Ҫ������ֻ���뽫��ͣ�ڱ��ۿڣ�������200G����" )
	Talk( 6, "�Բ�������ֻ���̱��۴�ֻ��������Ҫ������1000G����" )
end

------------------------------------------------------------
-- �����ղ���վ-----����ָ�ӡ��Ƕ�����
------------------------------------------------------------
function r_talk203()

	Talk( 1, "�Ƕ����᣺��ã��Ҹ�������Ĵ�ֻ������������ʲô���԰������" )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "�Բ���Ҫ����ֻ����1000G����" )
	Talk( 5, "�Բ���Ҫ������ֻ����200G����" )

	-------���˻
	AddNpcMission (	6260 )
	AddNpcMission (	6261 )
	-----------------

	AddNpcMission(	1741	)
	AddNpcMission (	1937	)
	AddNpcMission (	1952	)
	------------------eleven
	AddNpcMission (	5063 )
	AddNpcMission (	5071 )
--------------------1.7
	AddNpcMission ( 5075	)
	AddNpcMission(	5091 )
	AddNpcMission (5105 )
	AddNpcMission (5106 )
	AddNpcMission (5107 )
	AddNpcMission (5108 )
	AddNpcMission (5115 )
	----------------����˹---����ָ�ӡ��Ƕ�����--03
	AddNpcMission (5521 )
	AddNpcMission (5522 )
end

------------------------------------------------------------
-- ����������վ-----����ָ�ӡ��µ�
------------------------------------------------------------
function r_talk204()

	Talk( 1, "�µǣ���ã��Ҹ�������Ĵ�ֻ������������ʲô���԰������" )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "�Բ���Ҫ����ֻ����1000G����" )
	Talk( 5, "�Բ���Ҫ������ֻ����200G����" )
	----------------����˹---����ָ�ӡ��µ�--03
	AddNpcMission (5519 )
	AddNpcMission (5520 )
	-----------------����ָ�ӡ��µ�---------��ţ
	AddNpcMission	(5635)
	AddNpcMission	(5636)
end

------------------------------------------------------------
-- ˼˼������վ-----����ָ�ӡ�������
------------------------------------------------------------
function r_talk205()

	Talk( 1, "�����ޣ���ã��Ҹ�������Ĵ�ֻ������������ʲô���԰������" )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "�Բ���Ҫ����ֻ����1000G����" )
	Talk( 5, "�Բ���Ҫ������ֻ����200G����" )

	-----------------����ָ�ӡ�������---------��ţ
	AddNpcMission	(5659)
	AddNpcMission	(5660)
	----------����ָ�ӡ�������-------˫��--------------03
	AddNpcMission	(5724)
	AddNpcMission	(5725)
end

------------------------------------------------------------
-- ���˵�-----����Ա��������˹
------------------------------------------------------------

function r_talk206()

	Talk( 1, "������˹����ã��Ҹ�������Ļ��ｻ�ף�������ʲô���԰������" )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 11 )
	TriggerAction( 1, TradeBerthList, 11 )
	TriggerFailure( 1, JumpPage, 2 )
	--Text( 1, "���ｻ��", MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 1, "���ڻ��ó��֤",JumpPage, 3)

	Talk( 2, "������˹���Բ�����Ĵ�û��ͣ�ں���֮�ۡ��޷����ס�" )	

	Talk( 3, "��ã���Ҫ�¸��Ļ���һ��Ҫӵ�С�ó��֤��Ŷ������ó��֤����ܾ�Ӫ�����ó��Ʒ��ͬʱҲ�ܽ�����ĳɱ���Ŀǰֻ��ɳᰳǵ�ó��������ó��֤���š�")
	Text( 3, "�й�˰��",JumpPage, 7)
	Text( 3, "����ó��֤",JumpPage, 4)
	Text( 3, "�м�ó��֤",JumpPage, 5)
	Text( 3, "�߼�ó��֤",JumpPage, 6)

	Talk( 4, "����ó��֤�����׾��ܵõ�������ﵽ20����ȥɳᰳǵ�ó���������һ���򵥵�����Ϳ��Եõ���")
	Talk( 5, "���㼶��ﵽ40�����ҽ�����ó��֤˰�ʽ��͵�20%����ʱ���Ϳ��Ե�ɳᰳ�ó����ͨ���������м�ó��֤��")
	Talk( 6, "���㼶��ﵽ60�����ҽ�����ó��֤˰�ʽ��͵�10%����ʱ���Ϳ��Ե�ɳᰳ�ó����ͨ�������ø߼�ó��֤��")
	Talk( 7, "�鿴���ó��֤���ܿ����㵱ǰ��˰�ʣ�˰��ֱ��Ӱ�������ó��Ʒʱ�Ͻ��Ľ����ʣ���Ҫ����˰��ֻ�е�ɳᰳǵ�ó�������һ��ó��������С�")

	InitGoods(11)
	SaleGoodsData(	1	,	4570	,	560	,	270	,	60	)
	SaleGoodsData(	1	,	4571	,	360	,	405	,	90	)
	SaleGoodsData(	2	,	4572	,	200	,	432	,	96	)

	BuyGoodsData(0,	4577	,	-1	,	1059	,	235	)
	BuyGoodsData(0,	4578	,	-1	,	1089	,	243	)
	BuyGoodsData(0,	4579	,	-1	,	1049	,	699	)
	BuyGoodsData(0,	4583	,	-1	,	740	,	165	)
	BuyGoodsData(0,	4584	,	-1	,	866	,	193	)
	BuyGoodsData(0,	4589	,	-1	,	537	,	119	)
	BuyGoodsData(0,	4591	,	-1	,	807	,	179	)
	BuyGoodsData(0,	4592	,	-1	,	909	,	202	)
	BuyGoodsData(0,	4597	,	-1	,	986	,	219	)
	BuyGoodsData(0,	4599	,	-1	,	1061	,	235	)
	BuyGoodsData(0,	4600	,	-1	,	1017	,	678	)
	BuyGoodsData(0,	4554	,	-1	,	1106	,	245	)
	BuyGoodsData(0,	4557	,	-1	,	1089	,	243	)
	BuyGoodsData(0,	4560	,	-1	,	1220	,	271	)
	BuyGoodsData(0,	4562	,	-1	,	881	,	195	)
	BuyGoodsData(0,	4563	,	-1	,	909	,	202	)
	BuyGoodsData(0,	4566	,	-1	,	808	,	179	)
	BuyGoodsData(0,	4568	,	-1	,	879	,	195	)
	BuyGoodsData(0,	4569	,	-1	,	981	,	218	)


	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 51, TE_GAMETIME, TT_CYCLETIME, 30, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()	


	

end

------------------------------------------------------------
-- ����������-----����ָ�ӡ���ɷ���ξ
------------------------------------------------------------
function r_talk207()

	Talk( 1, "��ɷ���ξ����ã��Ҹ�������ĸۿ�ָ�ӣ�������ʲô���԰������" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 2 )
	TriggerAction( 1, LuanchBerthList, 2, 1064, 1324, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 2 )
	TriggerAction( 2, RepairBerthList, 2 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 2 )
	TriggerAction( 2, SupplyBerthList, 2 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 2 )
	TriggerAction( 1, SalvageBerthList, 2 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "�Բ�����Ĵ����ڴ˸ۿڻ����Ѿ���û������̴�ֻ���ٳ�����" )
	Talk( 4, "�Բ���Ҫ����ֻ���뽫��ͣ�ڱ��ۿڣ�������1000G����" )
	Talk( 5, "�Բ���Ҫ������ֻ���뽫��ͣ�ڱ��ۿڣ�������200G����" )
	Talk( 6, "�Բ�������ֻ���̱��۴�ֻ��������Ҫ������1000G����" )
end

------------------------------------------------------------
-- ɳ��³�-----����Ա�������
------------------------------------------------------------

function r_talk208()

	Talk( 1, "�������ã��Ҹ�������Ļ��ｻ�ף�������ʲô���԰������" )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 3 )
	TriggerAction( 1, TradeBerthList, 3 )
	TriggerFailure( 1, JumpPage, 2 )
	--Text( 1, "���ｻ��", MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 1, "���ڻ��ó��֤",JumpPage, 3)

	Talk( 2, "����򣺶Բ�����Ĵ�û��ͣ��ɳ�֮�ۡ��޷����ס�" )

	Talk( 3, "��ã���Ҫ�¸��Ļ���һ��Ҫӵ�С�ó��֤��Ŷ������ó��֤����ܾ�Ӫ�����ó��Ʒ��ͬʱҲ�ܽ�����ĳɱ���Ŀǰֻ��ɳᰳǵ�ó��������ó��֤���š�")
	Text( 3, "�й�˰��",JumpPage, 7)
	Text( 3, "����ó��֤",JumpPage, 4)
	Text( 3, "�м�ó��֤",JumpPage, 5)
	Text( 3, "�߼�ó��֤",JumpPage, 6)

	Talk( 4, "����ó��֤�����׾��ܵõ�������ﵽ20����ȥɳᰳǵ�ó���������һ���򵥵�����Ϳ��Եõ���")
	Talk( 5, "���㼶��ﵽ40�����ҽ�����ó��֤˰�ʽ��͵�20%����ʱ���Ϳ��Ե�ɳᰳ�ó����ͨ���������м�ó��֤��")
	Talk( 6, "���㼶��ﵽ60�����ҽ�����ó��֤˰�ʽ��͵�10%����ʱ���Ϳ��Ե�ɳᰳ�ó����ͨ�������ø߼�ó��֤��")
	Talk( 7, "�鿴���ó��֤���ܿ����㵱ǰ��˰�ʣ�˰��ֱ��Ӱ�������ó��Ʒʱ�Ͻ��Ľ����ʣ���Ҫ����˰��ֻ�е�ɳᰳǵ�ó�������һ��ó��������С�")

	InitGoods(3)
	SaleGoodsData(	0	,	4581	,	900	,	270	,	60	)
	SaleGoodsData(	0	,	4582	,	800	,	319	,	71	)
	SaleGoodsData(	1	,	4583	,	700	,	355	,	79	)
	SaleGoodsData(	1	,	4584	,	480	,	405	,	90	)
	SaleGoodsData(	2	,	4585	,	300	,	450	,	100	)
	SaleGoodsData(	2	,	4586	,	240	,	481	,	107	)
	SaleGoodsData(	3	,	4587	,	60	,	549	,	122	)
	SaleGoodsData(	3	,	4588	,	40	,	639	,	142	)

	BuyGoodsData(0,	4573	,	-1	,	560	,	125	)
	BuyGoodsData(0,	4575	,	-1	,	798	,	177	)
	BuyGoodsData(0,	4577	,	-1	,	930	,	207	)
	BuyGoodsData(0,	4589	,	-1	,	548	,	121	)
	BuyGoodsData(0,	4591	,	-1	,	844	,	187	)
	BuyGoodsData(0,	4593	,	-1	,	972	,	216	)
	BuyGoodsData(0,	4595	,	-1	,	900	,	600	)
	BuyGoodsData(0,	4598	,	-1	,	954	,	212	)
	BuyGoodsData(0,	4599	,	-1	,	988	,	219	)
	BuyGoodsData(0,	4552	,	-1	,	655	,	145	)
	BuyGoodsData(0,	4553	,	-1	,	807	,	179	)
	BuyGoodsData(0,	4557	,	-1	,	1052	,	233	)
	BuyGoodsData(0,	4560	,	-1	,	1172	,	261	)
	BuyGoodsData(0,	4563	,	-1	,	909	,	202	)
	BuyGoodsData(0,	4564	,	-1	,	577	,	129	)
	BuyGoodsData(0,	4566	,	-1	,	740	,	165	)
	BuyGoodsData(0,	4568	,	-1	,	870	,	193	)
	BuyGoodsData(0,	4569	,	-1	,	970	,	215	)
	BuyGoodsData(0,	4572	,	-1	,	872	,	193	)
	BuyGoodsData(0,	4547	,	-1	,	200	,	0	)
	BuyGoodsData(0,	4549	,	-1	,	360	,	0	)
	BuyGoodsData(0,	4550	,	-1	,	1000	,	0	)
	BuyGoodsData(0,	4551	,	-1	,	20	,	0	)

	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 51, TE_GAMETIME, TT_CYCLETIME, 30, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()

	AddNpcMission(	104	)
	AddNpcMission 	(198)
	AddNpcMission 	(199)
	AddNpcMission 	(149)
	AddNpcMission(	105	)
	AddNpcMission(	106	)

end

------------------------------------------------------------
-- ���Ǳ�-----����Ա����³ŵ
------------------------------------------------------------

function r_talk209()

	Talk( 1, "��³ŵ����ã��Ҹ�������Ļ��ｻ�ף�������ʲô���԰������" )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 4 )
	TriggerAction( 1, TradeBerthList, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	--Text( 1, "���ｻ��", MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 1, "���ڻ��ó��֤",JumpPage, 3)
	
	Talk( 2, "��³ŵ���Բ�����Ĵ�û��ͣ�ڱ���֮�ۡ��޷����ס�" )	

	Talk( 3, "��ã���Ҫ�¸��Ļ���һ��Ҫӵ�С�ó��֤��Ŷ������ó��֤����ܾ�Ӫ�����ó��Ʒ��ͬʱҲ�ܽ�����ĳɱ���Ŀǰֻ��ɳᰳǵ�ó��������ó��֤���š�")
	Text( 3, "�й�˰��",JumpPage, 7)
	Text( 3, "����ó��֤",JumpPage, 4)
	Text( 3, "�м�ó��֤",JumpPage, 5)
	Text( 3, "�߼�ó��֤",JumpPage, 6)

	Talk( 4, "����ó��֤�����׾��ܵõ�������ﵽ20����ȥɳᰳǵ�ó���������һ���򵥵�����Ϳ��Եõ���")
	Talk( 5, "���㼶��ﵽ40�����ҽ�����ó��֤˰�ʽ��͵�20%����ʱ���Ϳ��Ե�ɳᰳ�ó����ͨ���������м�ó��֤��")
	Talk( 6, "���㼶��ﵽ60�����ҽ�����ó��֤˰�ʽ��͵�10%����ʱ���Ϳ��Ե�ɳᰳ�ó����ͨ�������ø߼�ó��֤��")
	Talk( 7, "�鿴���ó��֤���ܿ����㵱ǰ��˰�ʣ�˰��ֱ��Ӱ�������ó��Ʒʱ�Ͻ��Ľ����ʣ���Ҫ����˰��ֻ�е�ɳᰳǵ�ó�������һ��ó��������С�")

	InitGoods(4)
	SaleGoodsData(	0	,	4589	,	900	,	161	,	57	)
	SaleGoodsData(	0	,	4590	,	800	,	238	,	84	)
	SaleGoodsData(	1	,	4591	,	700	,	297	,	105	)
	SaleGoodsData(	1	,	4592	,	600	,	425	,	150	)
	SaleGoodsData(	2	,	4593	,	400	,	467	,	165	)
	SaleGoodsData(	2	,	4594	,	240	,	561	,	198	)
	SaleGoodsData(	3	,	4595	,	120	,	612	,	216	)
	SaleGoodsData(	1	,	4596	,	80	,	705	,	249	)

	BuyGoodsData(0,	4577	,	-1	,	750	,	643	)
	BuyGoodsData(0,	4578	,	-1	,	802	,	689	)
	BuyGoodsData(0,	4582	,	-1	,	471	,	403	)
	BuyGoodsData(0,	4584	,	-1	,	691	,	593	)
	BuyGoodsData(0,	4586	,	-1	,	737	,	633	)
	BuyGoodsData(0,	4597	,	-1	,	728	,	625	)
	BuyGoodsData(0,	4599	,	-1	,	1092	,	936	)
	BuyGoodsData(0,	4600	,	-1	,	1139	,	977	)
	BuyGoodsData(0,	4554	,	-1	,	844	,	725	)
	BuyGoodsData(0,	4557	,	-1	,	892	,	765	)
	BuyGoodsData(0,	4560	,	-1	,	992	,	851	)
	BuyGoodsData(0,	4561	,	-1	,	627	,	539	)
	BuyGoodsData(0,	4562	,	-1	,	649	,	557	)
	BuyGoodsData(0,	4563	,	-1	,	735	,	630	)
	BuyGoodsData(0,	4566	,	-1	,	569	,	487	)
	BuyGoodsData(0,	4568	,	-1	,	710	,	609	)
	BuyGoodsData(0,	4569	,	-1	,	761	,	653	)
	BuyGoodsData(0,	4571	,	-1	,	596	,	511	)
	BuyGoodsData(0,	4547	,	-1	,	300	,	0	)
	BuyGoodsData(0,	4550	,	-1	,	1000	,	0	)
	BuyGoodsData(0,	4548	,	-1	,	300	,	0	)
	BuyGoodsData(0,	4551	,	-1	,	20	,	0	)

	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 51, TE_GAMETIME, TT_CYCLETIME, 30, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()


end

------------------------------------------------------------
-- ����������-----����������
------------------------------------------------------------
function r_talk210 ()
		
	Talk( 1, "�������ٻ�ƣ��������ô��ûһ�Һô��ɲ��У�����������õĴ�������Ҫʲô������˵�ɡ�" )
	InitTrigger()
	TriggerCondition( 1, IsBoatFull )
	TriggerAction( 1, SystemNotice, "��ֻ�����������޷������´�" )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "���촬ֻ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 2 )
	TriggerAction( 1, BoatLevelBerthList, 2 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 )
	
	Talk( 2, "��������Ҫ��ʲô���͵Ĵ��أ�������ֻ�м������͸����ޡ������ڿ�ʼ��ֻ�����Լ��ĵȼ��ˣ�Ҫ������ֻ�ĵȼ�������ȫ���Ӵ�ֻ�����ܣ��´�һ���������϶�Ҫ����ۿ۵�Ŷ����Ҫ������ֻ�ĵȼ��Ļ���Ҫ�����������뺣��ս�����۴�ֻ���鿩��" )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 3 )
	TriggerAction( 1, CreateBoat, 3, 2 )
	Text( 2, "���������ͧ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 4 )
	TriggerAction( 1, CreateBoat, 4, 2 )
	Text( 2, "���������䴬", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 6 )
	TriggerAction( 1, CreateBoat, 6, 2 )
	Text( 2, "������㴩��ͧ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 11 )
	TriggerAction( 1, CreateBoat, 11, 2 )
	Text( 2, "��������ս��", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 12 )
	TriggerAction( 1, CreateBoat, 12, 2 )
	Text( 2, "�������׺���", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 13 )
	TriggerAction( 1, CreateBoat, 13, 2 )
	Text( 2, "��������", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3, "��������Ĵ�û��ͣ������ɣ�����ͣ�������������Ŷ����ֻ�ȼ�Խ�ߴ�ֻ�ĸ������ܾ�Խ�ã�ֻ����ߴ�ֻ�����Ȳ����ô�ֻ������ǰ�ڿ����ں�������ʻ������֮���Ҫͨ����ɱ���ϵĹ����������ˡ�" )
end 

------------------------------------------------------------
-- ������-----�����鱨Ա��������
------------------------------------------------------------

function r_talk211()

	Talk( 1, "���������٣����ѡ���֪����������ǿ�ĺ�����������뺣���ų�Ϊ���е�һԱ�ں������ɳ۳���" )
	InitTrigger()
	TriggerCondition( 1, IsGuildType, 1 )
	TriggerAction( 1, ListAllGuild, 1 )
	TriggerCondition( 2, IsGuildType, 0 )
	TriggerAction( 2, JumpPage, 2 )
	TriggerCondition( 3, NoGuild )
	TriggerAction( 3, ListAllGuild, 1 )
	TriggerFailure( 3, JumpPage, 3 )
	Text( 1, "�鿴������", MultiTrigger, GetMultiTrigger(), 3)
	Text( 1, "�뿪", CloseTalk)
	
	Talk( 2, "���������٣����ѡ�������ǹټҵ��˰ɣ��Ҵ�������������Щ�����Ĵ򽻵���" )

	Talk( 3, "���������٣����ѡ���֪������˭����ǿ�ĺ������ٺ٣������ڻ���������㡣" )

		
end

------------------------------------------------------------
-- ������-----�����鱨Ա����¡��
------------------------------------------------------------

function r_talk212()

	Talk( 1, "��¡������ã����ǹ��ٵĺ����鱨Ա������������Բ鿴���к������ӵ�״����ͬʱ��Ҳ�����������������ǵĺ�����" )
	InitTrigger()
	TriggerCondition( 1, IsGuildType, 0 )
	TriggerAction( 1, ListAllGuild, 0 )
	TriggerCondition( 2, IsGuildType, 1 )
	TriggerAction( 2, JumpPage, 3 )
	TriggerCondition( 3, NoGuild )
	TriggerCondition( 3, HasItem, 4110, 1 )
	TriggerAction( 3, TakeItem, 4110, 1 )
	TriggerAction( 3, ListAllGuild, 0 )
	TriggerFailure( 3, JumpPage, 2 )
	Text( 1, "�鿴��������", MultiTrigger, GetMultiTrigger(), 3)
	Text( 1, "�뿪", CloseTalk)
	
	Talk( 2, "��¡����û�к�������ļ���ǲ��ò鿴��ǰ�ĺ������ӵ���" )

	Talk( 3, "��¡������ô���㶼���������Ǻ������˰ɣ��йغ������鱨���ǲ��������ģ�" )

		
end

------------------------------------------------------------
-- ������-----����ļ��С�㡤��粶�
------------------------------------------------------------

function r_talk213()

	Talk( 1, "��粶���hi��, ���ٵĺ�����Ҫ��,��������㹻��ʵ��,���������Ƽ���ȥ���������վ:�����ۺ���������!" )
	InitTrigger()
	TriggerCondition( 1, HasItem, 4110, 1 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerCondition( 2, IsGuildType, 0 )
	TriggerAction( 2, JumpPage, 4 )
	TriggerCondition( 3, IsGuildType, 1 )
	TriggerAction( 3, JumpPage, 5 )
	TriggerCondition( 4, HasLeaveBagGrid, 1 )
	TriggerCondition( 4, NoGuild )
	TriggerAction( 4, GiveItem, 4110, 1, 4 )
	TriggerFailure( 4, JumpPage, 3 )
	Text( 1, "�ã�����һ���Ƽ��Ű�",MultiTrigger, GetMultiTrigger(), 4 )
	Text( 1, "��ʱ��û������뷨���ټ���", CloseTalk)

	Talk( 2, "��粶��������ﲻ�����Ƽ���ô������Ҫ���������ˡ�" )

	Talk( 3, "��粶������Ѿ������˹��Ῡ���ټ��һ����İ����������ҾͲ��ܸ����Ƽ��ŵĿ�" )

	Talk( 4, "��粶������Ѿ��Ǻ�����Ҳ��������Ҫ�Ƽ��Ÿ�ʲô����Ҫ��ѯ������״����ֱ��ȥ�Һ����������ĸ����˾Ϳ�����" )

	Talk( 5, "��粶����������㲻�Ǻ���Ŷ���Ҳ��ܸ������������ǹ��ٵĺ����ޣ�" )

		
end

------------------------------------------------------------
-- �Ͽ󲹸�վ-----����ˡ����մ�
------------------------------------------------------------

function r_talk214()

	Talk( 1, "���մ�١���������Ĵ���ˣ��ҿ��԰����ԭ��ȫ�������ֱ���͵��ۿڵĴ��ϣ�������ֻ�Ͱ���֮��" )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 1)
	TriggerAction( 1, PackBagList, 1, RES_MINE, 3 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "���ˮ��", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "���մ�١����ѣ���Ĵ�û��ͣ�ڰ���֮��" )
	----------����ˡ����մ�-------˫��-------------03
	AddNpcMission	(5720)
	AddNpcMission	(5721)	
end

------------------------------------------------------------
-- ����������-----����ˡ��ѵ�����
------------------------------------------------------------

function r_talk215()

	Talk( 1, "�ѵ��������١���������Ĵ���ˣ��ҿ��԰����ԭ��ȫ�������ֱ���͵��ۿڵĴ��ϣ�������ֻ������֮��" )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 2)
	TriggerAction( 1, PackBagList, 2, RES_WOOD, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "���ľ��", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "�ѵ��������١����ѣ���Ĵ�û��ͣ������֮��" )
		
end

------------------------------------------------------------
-- ��������-----����ˡ�Ħ��
------------------------------------------------------------

function r_talk216()

	Talk( 1, "Ħ�����١���������Ĵ���ˣ��ҿ��԰����ԭ��ȫ�������ֱ���͵��ۿڵĴ��ϣ�������ֻ�Ͱ���֮��" )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 1)
	TriggerAction( 1, PackBagList, 1, RES_WOOD, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "���ľ��", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "Ħ�����١����ѣ���Ĵ�û��ͣ�ڰ���֮��" )

	AddNpcMission(	1436	)
	AddNpcMission (	1930	)
		
end

------------------------------------------------------------
-- ��ѩ��-----����ˡ�������˹
------------------------------------------------------------

function r_talk217()

	Talk( 1, "������˹���١���������Ĵ���ˣ��ҿ��԰����ԭ��ȫ�������ֱ���͵��ۿڵĴ��ϣ�������ֻ�ͱ�ѩ֮��" )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 8)
	TriggerAction( 1, PackBagList, 8, RES_WOOD, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "���ľ��", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "������˹���١����ѣ���Ĵ�û��ͣ�ڱ�ѩ֮��" )
		
end

------------------------------------------------------------
-- ��ɳ��-----����ˡ����ӿ���
------------------------------------------------------------

function r_talk218()

	Talk( 1, "���ӿ��ࣺ�١���������Ĵ���ˣ��ҿ��԰����ԭ��ȫ�������ֱ���͵��ۿڵĴ��ϣ�������ֻ����ɳ֮��" )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 9)
	TriggerAction( 1, PackBagList, 9, RES_WOOD, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "���ľ��", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "���ӿ��ࣺ�١����ѣ���Ĵ�û��ͣ����ɳ֮��" )
		
end

------------------------------------------------------------
-- ɳ��³�-----����ˡ������߶�
------------------------------------------------------------

function r_talk219()

	Talk( 1, "�����߶����١���������Ĵ���ˣ��ҿ��԰����ԭ��ȫ�������ֱ���͵��ۿڵĴ��ϣ�������ֻ��ɳ�֮��" )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 3)
	TriggerAction( 1, PackBagList, 3, RES_MINE, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "���������ʯ", MultiTrigger, GetMultiTrigger(), 1 )
	
	Talk( 2, "�����߶����١����ѣ���Ĵ�û��ͣ��ɳ�֮��" )
		
end

------------------------------------------------------------
-- ������˹����վ-----����ˡ����Ӷ�������
------------------------------------------------------------

function r_talk220()

	Talk( 1, "���Ӷ������ã��١���������Ĵ���ˣ��ҿ��԰����ԭ��ȫ�������ֱ���͵��ۿڵĴ��ϣ�������ֻ�ͱ���֮��" )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 4)
	TriggerAction( 1, PackBagList, 4, RES_MINE, 2 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "�������ʯ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 4)
	TriggerAction( 1, PackBagList, 4, RES_WOOD, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "���ľ��", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "���Ӷ������ã��١����ѣ���Ĵ�û��ͣ�ڱ���֮��" )

	AddNpcMission(	1581	)
	AddNpcMission (	1933	)

	
end


------------------------------------------------------------
-- �����ӵ�ѩԭ-----����ˡ�������
------------------------------------------------------------

function r_talk243()

	Talk( 1, "���������١���������Ĵ���ˣ��ҿ��԰����ԭ��ȫ�������ֱ���͵��ۿڵĴ��ϣ�������ֻ������֮��" )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 2)
	TriggerAction( 1, PackBagList, 2, RES_WOOD, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "���ľ��", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "���������١����ѣ���Ĵ�û��ͣ������֮��" )
		
end

------------------------------------------------------------
-- �¶�άƽԭ-----����ˡ�����˹
------------------------------------------------------------

function r_talk244()

	Talk( 1, "����˹���١���������Ĵ���ˣ��ҿ��԰����ԭ��ȫ�������ֱ���͵��ۿڵĴ��ϣ�������ֻ�Ͱ���֮��" )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 1)
	TriggerAction( 1, PackBagList, 1, RES_WOOD, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "���ľ��", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "����˹���١����ѣ���Ĵ�û��ͣ�ڰ���֮��" )

end



------------------------------------------------------------
-- ���˻�Į-----����ˡ�������
------------------------------------------------------------

function r_talk245()

	Talk( 1, "���������١���������Ĵ���ˣ��ҿ��԰����ԭ��ȫ�������ֱ���͵��ۿڵĴ��ϣ�������ֻ��ɳ�֮��" )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 3)
	TriggerAction( 1, PackBagList, 3, RES_WOOD, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "���ľ��", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "���������١����ѣ���Ĵ�û��ͣ��ɳ�֮��" )
		
end


------------------------------------------------------------
-- ����-----����ˡ�������
------------------------------------------------------------

function r_talk246()

	Talk( 1, "���������١���������Ĵ���ˣ��ҿ��԰����ԭ��ȫ�������ֱ���͵��ۿڵĴ��ϣ�������ֻ�ͱ���֮��" )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 4)
	TriggerAction( 1, PackBagList, 4, RES_WOOD, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "���ľ��", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "���������١����ѣ���Ĵ�û��ͣ�ڱ���֮��" )
	
end

------------------------------------------------------------
-- ��֮�ۿ�-----�ۿ�ָ�ӡ���
------------------------------------------------------------
function r_talk247()

	Talk( 1, "�ԣ���ã��ҿ��԰����������������֮�س�û�Ĵ�ֻ������Ҫ����ô��" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 1341, 3257, 0 )
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
	Talk( 4, "�Բ�����ֻ������֮�ۿڵĴ�ֻ���뽻��1000G����" )
	Talk( 5, "�Բ�����ֻ������֮�ۿڵĴ�ֻ���뽻��200G����" )
	Talk( 6, "�Բ�����ֻ������֮�ۿڵĴ�ֻ�������뽻��1000G����" )

end

------------------------------------------------------------
-- ��֮�ۿ�-----С��԰�����̵꺣��ָ��
------------------------------------------------------------
function r_talk248()

	Talk( 1, "����ָ�ӣ���ã�����Ҫ����ô��Ҳ���ҿ��԰���" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 116, 51, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 )
	
	

	Talk( 3, "�Բ�����Ĵ����ڴ˸ۿڻ����Ѿ���û������̴�ֻ���ٳ�����" )
	

end

------------------------------------------------------------
-- ��֮�ۿ�-----С��԰�������뺣��ָ��
------------------------------------------------------------
function r_talk249()

	Talk( 1, "����ָ�ӣ���ã�����Ҫ����ô��Ҳ���ҿ��԰���" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 235, 123, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 )
	

	Talk( 3, "�Բ�����Ĵ����ڴ˸ۿڻ����Ѿ���û������̴�ֻ���ٳ�����" )
	

end


------------------------------------------------------------
-- ��֮�ۿ�-----С��԰��������ָ��
------------------------------------------------------------
function r_talk250()

	Talk( 1, "����ָ�ӣ���ã�����Ҫ����ô��Ҳ���ҿ��԰���" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 248, 352, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 )
	

	Talk( 3, "�Բ�����Ĵ����ڴ˸ۿڻ����Ѿ���û������̴�ֻ���ٳ�����" )
	

end

------------------------------------------------------------
-- ��֮�ۿ�-----С��԰�ϲ��̵꺣��ָ��
------------------------------------------------------------
function r_talk251()

	Talk( 1, "����ָ�ӣ���ã�����Ҫ����ô��Ҳ���ҿ��԰���" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 353, 428, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 )
	

	Talk( 3, "�Բ�����Ĵ����ڴ˸ۿڻ����Ѿ���û������̴�ֻ���ٳ�����" )


end

------------------------------------------------------------
-- ��֮�ۿ�-----С��԰�����º�����ָ��
------------------------------------------------------------
function r_talk257()

	Talk( 1, "����ָ�ӣ���ã�����Ҫ����ô��Ҳ���ҿ��԰���" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 231,211, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 )
	

	Talk( 3, "�Բ�����Ĵ����ڴ˸ۿڻ����Ѿ���û������̴�ֻ���ٳ�����" )


end

------------------------------------------------------------
-- ��֮�ۿ�-----С��԰�ϲ��º�����ָ��
------------------------------------------------------------
function r_talk258()

	Talk( 1, "����ָ�ӣ���ã�����Ҫ����ô��Ҳ���ҿ��԰���" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 231,256, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 )
	

	Talk( 3, "�Բ�����Ĵ����ڴ˸ۿڻ����Ѿ���û������̴�ֻ���ٳ�����" )


end


------------------------------------------------------------
-- ��֮�ۿ�-----�������󺣸�ָ��
------------------------------------------------------------
function r_talk261()

	Talk( 1, "����ָ�ӣ���ã�����Ҫ����ô��Ҳ���ҿ��԰���" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 295, 352, 0 )
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
	Talk( 4, "�Բ�����ֻ������֮�ۿڵĴ�ֻ���뽻��1000G����" )
	Talk( 5, "�Բ�����ֻ������֮�ۿڵĴ�ֻ���뽻��200G����" )
	Talk( 6, "�Բ�����ֻ������֮�ۿڵĴ�ֻ�������뽻��1000G����" )

end

------------------------------------------------------------
-- ��֮�ۿ�-----����֮������ָ��
------------------------------------------------------------
function r_talk262()

	Talk( 1, "����ָ�ӣ���ã�����Ҫ����ô��Ҳ���ҿ��԰���" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 299, 321, 0 )
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
	Talk( 4, "�Բ�����ֻ������֮�ۿڵĴ�ֻ���뽻��1000G����" )
	Talk( 5, "�Բ�����ֻ������֮�ۿڵĴ�ֻ���뽻��200G����" )
	Talk( 6, "�Բ�����ֻ������֮�ۿڵĴ�ֻ�������뽻��1000G����" )

end

----------------------------------------------------------
--							--
--							--
--		������԰[��������]			--
--							--
--		225538,280188				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk259 ()
	
	
	Talk( 1, "�������ˣ������ѣ���������һЩ�ö����ޣ��벻�뿴������" )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 12 )
	TriggerAction( 1, TradeBerthList, 12 )
	TriggerFailure( 1, JumpPage, 2 )
	--Text( 1, "����", MultiTrigger, GetMultiTrigger(), 1 )

	
	Talk( 2, "�������ˣ��Բ�����Ĵ�û��ͣ������֮�ۡ��޷����ס�" )
	
	InitGoods(12)
	SaleGoodsData(	0	,	1861	,	500	,	5000	,	5000	)

	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 52, TE_GAMETIME, TT_CYCLETIME, 15, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()

	AddNpcMission 	(443)
	AddNpcMission 	(445)
	AddNpcMission 	(447)
	AddNpcMission	(1020)
	AddNpcMission	(1076)
	AddNpcMission	(1132)
	AddNpcMission	(1183)
	AddNpcMission(	1226	)
	
end 



------------------------------------------------------------
-- С��԰-----ҩ������
------------------------------------------------------------

function r_talk260()

	Talk( 1, "ҩ�����ˣ���ã�����������ϡ��ҩ�ģ���Ҫ����ô��" )
	Text( 1, "����", BuyPage )
	Text( 1, "û�£��������",CloseTalk )

	InitTrade()
	Other(	3460	)
	Other(	3461	)

end

------------------------------------------------------------
-- ɳ��³�-----���غ���ָ��
------------------------------------------------------------
function r_talk263()

	Talk( 1, "���غ���ָ�ӣ�������ѣ��ҿ��Դ������ظۿڵĴ�ֻ���������Թ����Ǿ�����԰�Ҷ����԰����ҵ���Ĵ���������Ҫ�Ұ�æ��ô��" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 832, 3698, 0 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, RepairBerthList, 12 )
	TriggerFailure( 2, JumpPage, 3 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, SupplyBerthList, 12 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 12 )
	TriggerAction( 1, SalvageBerthList, 12 )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 2, "�Բ�����Ĵ����ڴ˸ۿڻ����Ѿ���û������̴�ֻ���ٳ�����" )
	Talk( 3, "�Բ�����ֻ������֮�ۿڵĴ�ֻ���뽻��1000G����" )
	Talk( 4, "�Բ�����ֻ������֮�ۿڵĴ�ֻ���뽻��200G����" )
	Talk( 5, "�Բ�����ֻ������֮�ۿڵĴ�ֻ�������뽻��1000G����" )

end

----------------------------------------------------
--������������ó��Ʒ
----------------------------------------------------
--������


function r_talk264()
	Talk( 1, "�����̣���ã�����ר��Ϊ�����������ṩ����ľ����̣�������������һ��������Ҫ���ͣ�����Ը߼۳��۸��������Ľ���Ա�����������������Ҷ��������εģ�ֻ���ڹ������а��ϵ�һ���Ĺ����������Ŷ��" )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 3 )
	TriggerCondition( 1, HasGuildLevel, 1 )
	TriggerAction( 1, TradeBerthList, 3 )
	TriggerFailure( 1, JumpPage, 2 )
	--Text( 1, "����", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 2, "�����̣�ֻ�е�һ���Ĺ����Ա���ܹ��򣬶���������д�ͣ��ɳ�֮�ۡ�" )

	InitGoods(3)
	SaleGoodsData(	0	,	3914	,	150	,	990	,	220	)
	
	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 51, TE_GAMETIME, TT_CYCLETIME, 30, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()



end

--����������Ӧ��	

function r_talk265()
	Talk( 1, "����������Ӧ�̣���ã�����ר��Ϊ�����������ṩ�������������ˣ�������������һ������������Ҫ���ͣ�����Ը߼۳��۸��������Ľ���Ա�����������������Ҷ��������εģ�ֻ���ڹ������а��ϵڶ����Ĺ����������Ŷ��" )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 3 )
	TriggerCondition( 1, HasGuildLevel, 2 )
	TriggerAction( 1, TradeBerthList, 3 )
	TriggerFailure( 1, JumpPage, 2 )
	--Text( 1, "���ｻ��", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 2, "����������Ӧ�̣�ֻ�еڶ����Ĺ����Ա���ܹ��򣬶���������д�ͣ��ɳ�֮�ۡ�" )


	InitGoods(3)
	SaleGoodsData(	0	,	3912	,	200	,	855	,	190	)
	


	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 51, TE_GAMETIME, TT_CYCLETIME, 30, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()



end


--ϡ�н�����Ӧ��

function r_talk266()
	Talk( 1, "ϡ�н�����Ӧ�̣���ã�����ר��Ϊ�����������ṩϡ�н��������ˣ�������������һ��ϡ�н�����Ҫ���ͣ�����Ը߼۳��۸��������Ľ���Ա�����������������Ҷ��������εģ�ֻ���ڹ������а��ϵ������Ĺ����������Ŷ��" )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 3 )
	TriggerCondition( 1, HasGuildLevel, 3 )
	TriggerAction( 1, TradeBerthList, 3 )
	TriggerFailure( 1, JumpPage, 2 )
	--Text( 1, "���ｻ��", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 2, "ϡ�н�����Ӧ�̣�ֻ�е������Ĺ����Ա���ܹ��򣬶���������д�ͣ��ɳ�֮�ۡ�" )


	InitGoods(3)
	SaleGoodsData(	0	,	3913	,	250	,	765	,	170	)
	
	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 51, TE_GAMETIME, TT_CYCLETIME, 30, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()



end



------------------------------------------------------------
-- ɳ��³�-----����ˡ���������
------------------------------------------------------------

function m_talk001()

	Talk( 1, "�������ߣ��١���������Ĵ���ˣ��ҿ��԰����ԭ��ȫ�������ֱ���͵��ۿڵĴ��ϣ�������ֻ��ɳ�֮��" )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 3)
	TriggerAction( 1, PackBagList, 3, RES_WOOD, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "���ľ��", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "�������ߣ��١����ѣ���Ĵ�û��ͣ��ɳ�֮��" )
		
end


------------------------------------------------------------
-- �ĵ�����-----����ָ�ӡ�����
------------------------------------------------------------
function b_talk19()

	Talk( 1, "����ָ�ӣ���ã�����Ҫ����ô��Ҳ���ҿ��԰���" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 14 )
	TriggerAction( 1, LuanchBerthList, 14, 3662, 2645, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 14 )
	TriggerAction( 2, RepairBerthList, 14 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 14 )
	TriggerAction( 2, SupplyBerthList, 14 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 14 )
	TriggerAction( 1, SalvageBerthList, 14 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "�Բ�����Ĵ����ڴ˸ۿڻ����Ѿ���û������̴�ֻ���ٳ�����" )
	Talk( 4, "�Բ�����ֻ�����ĵ����۵Ĵ�ֻ���뽻��1000G����" )
	Talk( 5, "�Բ�����ֻ�����ĵ����۵Ĵ�ֻ���뽻��200G����" )
	Talk( 6, "�Բ�����ֻ�����ĵ����۵Ĵ�ֻ�������뽻��1000G����" )


	------------- ����ָ�ӡ�����-------��з
	AddNpcMission	(5853)
	AddNpcMission	(5854)


end


------------------------------------------------------------
-- �ĵ��ϸ�-----����ָ�ӡ�����
------------------------------------------------------------
function b_talk20()

	Talk( 1, "����ָ�ӣ���ã�����Ҫ����ô��Ҳ���ҿ��԰���" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 15 )
	TriggerAction( 1, LuanchBerthList, 15, 3324, 3541, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 15 )
	TriggerAction( 2, RepairBerthList, 15 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 15 )
	TriggerAction( 2, SupplyBerthList, 15 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 15 )
	TriggerAction( 1, SalvageBerthList, 15 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "�Բ�����Ĵ����ڴ˸ۿڻ����Ѿ���û������̴�ֻ���ٳ�����" )
	Talk( 4, "�Բ�����ֻ�����ĵ��ϸ۵Ĵ�ֻ���뽻��1000G����" )
	Talk( 5, "�Բ�����ֻ�����ĵ��ϸ۵Ĵ�ֻ���뽻��200G����" )
	Talk( 6, "�Բ�����ֻ�����ĵ��ϸ۵Ĵ�ֻ�������뽻��1000G����" )

	------------- ����ָ�ӡ�����-------��з
	AddNpcMission	(5855)
	AddNpcMission	(5856)


end

-----------��������
function leo_talk10()	

	Talk(1, "�������ˣ��ٺٺ٣����ҵ��ҵģ��ɲ���һ��Ŀ��˰����ٺٺ١����͹٣�����Ҫ��ʲô��?")
	Text( 1, "��˵�������ж����ɻ���", JumpPage, 2 )
	Text( 1, "������Ķ����ɡ�", BuyPage)
	

	Talk(2,"�������ˣ��ٺٺ٣�����Ϣ������ͨ��...���ˣ�������ô���أ�")
	Text(2,"�����ҿ�����Ķ�����", SendExchangeData )

	--�һ�������Ʒ ID���������һ�������Ʒ�����������ֵ
	InitExchange()

	--����8��������Ϣ����ScriptSDK��


	
	DoExchange()

	InitTrade()
	Other(	rand()	)
	Other(	rand()	)
	Other(	rand()	)
	Other(	rand()	)
	Other(	rand()	)
	Other(	rand()	)
	Other(	rand()	)
	Other(	rand()	)
	
	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 53, TE_GAMETIME, TT_CYCLETIME, 240, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()
end

function rand()	--�������װ���б�
	local tabunknow = {}
	tabunknow[	1	] =	0088
	tabunknow[	2	] =	0089
	tabunknow[	3	] =	3302
	tabunknow[	4	] =	3303
	tabunknow[	5	] =	3304
	tabunknow[	6	] =	3305
	tabunknow[	7	] =	3306
	tabunknow[	8	] =	3307
	tabunknow[	9	] =	3308
	tabunknow[	10	] =	3309
	tabunknow[	11	] =	3310
	tabunknow[	12	] =	3311
	tabunknow[	13	] =	3312
	tabunknow[	14	] =	3313
	tabunknow[	15	] =	3314
	tabunknow[	16	] =	3315
	tabunknow[	17	] =	3316
	tabunknow[	18	] =	3317
	tabunknow[	19	] =	3318
	tabunknow[	20	] =	3319
	tabunknow[	21	] =	3320
	tabunknow[	22	] =	3321
	tabunknow[	23	] =	3322
	tabunknow[	24	] =	3323
	tabunknow[	25	] =	3324
	tabunknow[	26	] =	3325
	tabunknow[	27	] =	3326
	tabunknow[	28	] =	3327
	tabunknow[	29	] =	3328
	tabunknow[	30	] =	3329
	tabunknow[	31	] =	3330
	tabunknow[	32	] =	3331
	tabunknow[	33	] =	3332
	tabunknow[	34	] =	3333
	tabunknow[	35	] =	3334

	return tabunknow[math.floor(math.random(1,35))]
end
------------------------------------------------------------
-- ʥս-----����ָ�ӡ�������
------------------------------------------------------------
function star_talk001()
	Talk( 1, "����ָ�ӣ�hi~!����ʥս����ָ��Ա������ͣ����ɳᰳǸۿڵĴ�ֻ����¼���������Ҫ�����Ļ�����Ѵ�ͣ����ɳᰣ����������º���" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 148 , 154, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "�Բ�����Ĵ����ڴ˸ۿ�" )
end
------------------------------------------------------------
-- ʥս-----����ָ�ӡ�����һ
------------------------------------------------------------
function star_talk002()
	Talk( 1, "����ָ�ӣ�hi~!����ʥս����ָ��Ա������ͣ����ɳᰳǸۿڵĴ�ֻ����¼���������Ҫ�����Ļ�����Ѵ�ͣ����ɳᰣ����������º���" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 169 , 176, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "�Բ�����Ĵ����ڴ˸ۿ�" )
end
------------------------------------------------------------
-- ʥս-----����ָ�ӡ������
------------------------------------------------------------
function star_talk003()
	Talk( 1, "����ָ�ӣ�hi~!����ʥս����ָ��Ա������ͣ����ɳᰳǸۿڵĴ�ֻ����¼���������Ҫ�����Ļ�����Ѵ�ͣ����ɳᰣ����������º���" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 168 , 111, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "�Բ�����Ĵ����ڴ˸ۿ�" )
end
------------------------------------------------------------
-- ʥս-----����ָ�ӡ�������
------------------------------------------------------------
function star_talk004()
	Talk( 1, "����ָ�ӣ�hi~!����ʥս����ָ��Ա������ͣ����ɳᰳǸۿڵĴ�ֻ����¼���������Ҫ�����Ļ�����Ѵ�ͣ����ɳᰣ����������º���" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 452 , 135, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "�Բ�����Ĵ����ڴ˸ۿ�" )
end
------------------------------------------------------------
-- ʥս-----����ָ�ӡ�������
------------------------------------------------------------
function star_talk005()
	Talk( 1, "����ָ�ӣ�hi~!����ʥս����ָ��Ա������ͣ����ɳᰳǸۿڵĴ�ֻ����¼���������Ҫ�����Ļ�����Ѵ�ͣ����ɳᰣ����������º���" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 496 , 164, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "�Բ�����Ĵ����ڴ˸ۿ�" )
end
------------------------------------------------------------
-- ʥս-----����ָ�ӡ�������
------------------------------------------------------------
function star_talk006()
	Talk( 1, "����ָ�ӣ�hi~!����ʥս����ָ��Ա������ͣ����ɳᰳǸۿڵĴ�ֻ����¼���������Ҫ�����Ļ�����Ѵ�ͣ����ɳᰣ����������º���" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 453 , 175, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "�Բ�����Ĵ����ڴ˸ۿ�" )
end
------------------------------------------------------------
-- ʥս-----����ָ�ӡ�������
------------------------------------------------------------
function star_talk007()
	Talk( 1, "����ָ�ӣ�hi~!����ʥս����ָ��Ա������ͣ����ɳᰳǸۿڵĴ�ֻ����¼���������Ҫ�����Ļ�����Ѵ�ͣ����ɳᰣ����������º���" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3 , 262 , 181, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "�Բ�����Ĵ����ڴ˸ۿ�" )
end
------------------------------------------------------------
-- ʥս-----����ָ�ӡ�������
------------------------------------------------------------
function star_talk008()
	Talk( 1, "����ָ�ӣ�hi~!����ʥս����ָ��Ա������ͣ����ɳᰳǸۿڵĴ�ֻ����¼���������Ҫ�����Ļ�����Ѵ�ͣ����ɳᰣ����������º���" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 348 , 175, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "�Բ�����Ĵ����ڴ˸ۿ�" )
end
------------------------------------------------------------
-- ʥս-----����ָ�ӡ�������
------------------------------------------------------------
function star_talk009()
	Talk( 1, "����ָ�ӣ�hi~!����ʥս����ָ��Ա������ͣ����ɳᰳǸۿڵĴ�ֻ����¼���������Ҫ�����Ļ�����Ѵ�ͣ����ɳᰣ����������º���" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 110 , 460, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "�Բ�����Ĵ����ڴ˸ۿ�" )
end

------------------------------------------------------------
-- ʥս-----����ָ�ӡ�����һ
------------------------------------------------------------
function star_talk010()
	Talk( 1, "����ָ�ӣ�hi~!����ʥս����ָ��Ա������ͣ����ɳᰳǸۿڵĴ�ֻ����¼���������Ҫ�����Ļ�����Ѵ�ͣ����ɳᰣ����������º���" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 169 , 493, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "�Բ�����Ĵ����ڴ˸ۿ�" )
end
------------------------------------------------------------
-- ʥս-----����ָ�ӡ����۶�
------------------------------------------------------------
function star_talk011()
	Talk( 1, "����ָ�ӣ�hi~!����ʥս����ָ��Ա������ͣ����ɳᰳǸۿڵĴ�ֻ����¼���������Ҫ�����Ļ�����Ѵ�ͣ����ɳᰣ����������º���" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 82 , 456, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "�Բ�����Ĵ����ڴ˸ۿ�" )
end
------------------------------------------------------------
-- ʥս-----����ָ�ӡ�������
------------------------------------------------------------
function star_talk012()
	Talk( 1, "����ָ�ӣ�hi~!����ʥս����ָ��Ա������ͣ����ɳᰳǸۿڵĴ�ֻ����¼���������Ҫ�����Ļ�����Ѵ�ͣ����ɳᰣ����������º���" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 463 , 453, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "�Բ�����Ĵ����ڴ˸ۿ�" )
end
------------------------------------------------------------
-- ʥս-----����ָ�ӡ�������
------------------------------------------------------------
function star_talk013()
	Talk( 1, "����ָ�ӣ�hi~!����ʥս����ָ��Ա������ͣ����ɳᰳǸۿڵĴ�ֻ����¼���������Ҫ�����Ļ�����Ѵ�ͣ����ɳᰣ����������º���" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 492 , 460, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "�Բ�����Ĵ����ڴ˸ۿ�" )
end
------------------------------------------------------------
-- ʥս-----����ָ�ӡ�������
------------------------------------------------------------
function star_talk014()
	Talk( 1, "����ָ�ӣ�hi~!����ʥս����ָ��Ա������ͣ����ɳᰳǸۿڵĴ�ֻ����¼���������Ҫ�����Ļ�����Ѵ�ͣ����ɳᰣ����������º���" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 453 , 506, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "�Բ�����Ĵ����ڴ˸ۿ�" )
end
------------------------------------------------------------
-- ʥս-----����ָ�ӡ�������
------------------------------------------------------------
function star_talk015()
	Talk( 1, "����ָ�ӣ�hi~!����ʥս����ָ��Ա������ͣ����ɳᰳǸۿڵĴ�ֻ����¼���������Ҫ�����Ļ�����Ѵ�ͣ����ɳᰣ����������º���" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 357 , 450, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "�Բ�����Ĵ����ڴ˸ۿ�" )
end
------------------------------------------------------------
-- ʥս-----����ָ�ӡ�������
------------------------------------------------------------
function star_talk016()
	Talk( 1, "����ָ�ӣ�hi~!����ʥս����ָ��Ա������ͣ����ɳᰳǸۿڵĴ�ֻ����¼���������Ҫ�����Ļ�����Ѵ�ͣ����ɳᰣ����������º���" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 256 , 450, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "��ֻ����", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "�Բ�����Ĵ����ڴ˸ۿ�" )
end


------------------------------------------------------------
-- ʥս----����ǰ��ָ�ӹ�--Roico
------------------------------------------------------------
function roico_talk001()
  Talk( 1, "����ǰ��ָ�ӹ٣�ս���Ѿ���ʼ���������ÿ���˶���Ӣ�ۣ��μ����е��������Э�����˵��˵Ĺ���������Ψһ�ĳ�·��" )
  Text( 1, "ս��ָ��" ,JumpPage, 2)
  --Text( 1, "����ʥս�����", SetSpawnPos, "ʥս")
  Text( 1, "��ȡս������", JumpPage, 3)
  Text( 1, "���׽�����Դ", JumpPage, 4)
  Text( 1, "ʹ�á������", JumpPage, 13)
  --Text( 1, "����ս��", JumpPage, 5)
  Talk( 2, "Ŀ�꣺�ƻ����˻����ڵĵ���������ƻ������ǵľ��������֣�������������ǵ�ʵ�����ɼ�������Դ���������ҷ�������ʩ�����Ի��߻�ȡս�������ʡ������ʹ�ú���������õ����ܵ����벻����ͻϮ��")
  Talk( 3, "����ǰ��ָ�ӹ٣����Դӵ��������ѹε����õĶ����ޣ�")
  Text( 3, "�����Ʊ" ,JumpPage, 6)
  Text( 3, "�������" ,JumpPage, 7)
  Talk( 4, "����ǰ��ָ�ӹ�:���׵�ս�����ʿ�����������ͷ����������ԣ������ҷ���ʵ����")
  Text( 4, "��ߵ���20�����������1������ֿ�" ,JumpPage, 8)
  Text( 4, "��߸߼�����25��������" ,JumpPage, 9)
  Text( 4, "����3�����������κι���" ,JumpPage, 10)





 InitTrigger()
	TriggerCondition( 1, HasItem, 2859, 25 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerAction( 1, TakeItem, 2859,25 )
	TriggerAction( 1, GiveItem, 2986, 1 , 4)
	TriggerAction( 1, JumpPage, 11 )
	TriggerFailure( 1, JumpPage, 12)
	Talk( 6, "����ǰ��ָ�ӹ�:����25������,�һ����һ��ֱ�ӻص���Ļ�Ʊ��")
	Text( 6, "ȷ��",  MultiTrigger, GetMultiTrigger(), 1)
        Talk(11, "����ǰ��ָ�ӹ�:�úã���������Σ�յ�ʱ�������ʹ�û�Ʊ������" )
	Talk( 12, "����ǰ��ָ�ӹ�:�������ƺ�û�е���Ʒ�����б�������Ҫ��һ���ո��ޣ�")

-- InitTrigger()
--	TriggerCondition( 1, HasItem, 3117, 20 )
--	TriggerAction( 1, TakeItem, 3117,20 )
--	TriggerAction( 1, GetChaName1_guildwar, 1 )
--	TriggerAction( 1, JumpPage, 13 )
--	TriggerFailure( 1, JumpPage, 14)
	Talk( 7, "����ǰ��ָ�ӹ�:����20������,�һ����������һ���������ԣ�")
	Text( 7, "ȷ��", GetChaName1_guildwar, 1)
	Talk( 8, "����ǰ��ָ�ӹ�:��������ķ�����Ҫ30��ˮ����ʯ�������������2�ߵĵ����ҵ��ḻ�Ŀ�Դ��")
	Text( 8, "����30��ˮ����ʯ", GetChaName2_guildwar, 1)
	Talk( 9, "����ǰ��ָ�ӹ�:����û�й�����ȫ�������ı��������������Χ�ĺ���Ѱ��12����ˮ�����12�����ͷ���ң�����25�������������")
	Text( 9, "�����㹻�Ĳ���", GetChaName4_guildwar, 1)
	Talk( 10, "����ǰ��ָ�ӹ�:ֻ��Ҫ4����Ӳ��׺�9����β���(ȥ�Է��Ļ��ظ������Ұ�),�Ҿ����õ�������̻��3�����޵�ʱ�䣡")
	Text( 10, "�����㹻�Ĳ���", GetChaName3_guildwar, 1)
	Talk( 13, "����ǰ��ָ�ӹ�:�����ռ����㹻�����ġ�����������ܷ���һ��ͻϮ��������ʹ�ã�")
	Text( 13, "��15��", JumpPage, 14)
	Text( 13, "��30��", JumpPage, 15)
	Text( 13, "��45��", JumpPage, 16)
	Talk( 14, "����ǰ��ָ�ӹ�:ʹ��15���������������3������ͻϮ��Ա����ѡ��ͻϮ�ص㣡")
	Text( 14, "�з�������Χ", GetChaName5_guildwar, 1)
	Text( 14, "�з��������Χ", GetChaName6_guildwar, 1)
	Text( 14, "�з�������Χ", GetChaName7_guildwar, 1)
	Text( 14, "�ҷ�������Χ", GetChaName8_guildwar, 1)
	Text( 14, "�ҷ��������Χ", GetChaName9_guildwar, 1)
	Text( 14, "�ҷ�������Χ", GetChaName10_guildwar, 1)
	--Text( 14, "ս����·", GetChaName11_guildwar, 1)
	Talk( 15, "����ǰ��ָ�ӹ�:ʹ��30���������������7������ͻϮ��Ա����ѡ��ͻϮ�ص㣡")
	Text( 15, "�з�������Χ", GetChaName11_guildwar, 1)
	Text( 15, "�з��������Χ", GetChaName12_guildwar, 1)
	Text( 15, "�з�������Χ", GetChaName13_guildwar, 1)
	Text( 15, "�ҷ�������Χ", GetChaName14_guildwar, 1)
	Text( 15, "�ҷ��������Χ", GetChaName15_guildwar, 1)
	Text( 15, "�ҷ�������Χ", GetChaName16_guildwar, 1)
	--Text( 15, "ս����·", GetChaName18_guildwar, 1)
	Talk( 16, "����ǰ��ָ�ӹ�:ʹ��45���������������11������ͻϮ��Ա����ѡ��ͻϮ�ص㣡")
	Text( 16, "�з�������Χ", GetChaName17_guildwar, 1)
	Text( 16, "�з��������Χ", GetChaName18_guildwar, 1)
	Text( 16, "�з�������Χ", GetChaName19_guildwar, 1)
	Text( 16, "�ҷ�������Χ", GetChaName20_guildwar, 1)
	Text( 16, "�ҷ��������Χ", GetChaName21_guildwar, 1)
	Text( 16, "�ҷ�������Χ", GetChaName22_guildwar, 1)

end
------------------------------------------------------------
-- ʥս----����ǰ��ָ�ӹ�--Roico
------------------------------------------------------------
function roico_talk002()
Talk( 1, "����ǰ��ָ�ӹ٣��ƻ����Ӷᣬɱ¾��û��ʲô�����赲���ǣ��õ���֪���־�����аɣ�" )
  Text( 1, "ս��ָ��" ,JumpPage, 2)
  --Text( 1, "����ʥս�����", SetSpawnPos, "ʥս")
  Text( 1, "��ȡս������", JumpPage, 3)
  Text( 1, "���׽�����Դ", JumpPage, 4)
  Text( 1, "ʹ�á������", JumpPage, 13)
  --Text( 1, "����ս��", JumpPage, 5)
  Talk( 2, "Ŀ�꣺�ƻ����˻����ڵĵ���������ƻ������ǵľ��������֣�������������ǵ�ʵ�����ɼ�������Դ���������ҷ�������ʩ�����Ի��߻�ȡս�������ʡ������ʹ�ú���������õ����ܵ����벻����ͻϮ��")
  Talk( 3, "����ǰ��ָ�ӹ٣����Դӵ��������ѹε����õĶ����ޣ�")
  Text( 3, "�����Ʊ" ,JumpPage, 6)
  Text( 3, "�������" ,JumpPage, 7)
  Talk( 4, "����ǰ��ָ�ӹ�:���׵�ս�����ʿ�����������ͷ����������ԣ������ҷ���ʵ����")
  Text( 4, "��ߵ���20�����������1������ֿ�" ,JumpPage, 8)
  Text( 4, "��߸߼�����25��������" ,JumpPage, 9)
  Text( 4, "����3�����������κι���" ,JumpPage, 10)





 InitTrigger()
	TriggerCondition( 1, HasItem, 2858, 25 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerAction( 1, TakeItem, 2858,25 )
	TriggerAction( 1, GiveItem, 2986, 1 , 4)
	TriggerAction( 1, JumpPage, 11 )
	TriggerFailure( 1, JumpPage, 12)
	Talk( 6, "����ǰ��ָ�ӹ�:����25������,�һ����һ��ֱ�ӻص���Ļ�Ʊ��")
	Text( 6, "ȷ��",  MultiTrigger, GetMultiTrigger(), 1)
        Talk(11, "����ǰ��ָ�ӹ�:�úã���������Σ�յ�ʱ�������ʹ�û�Ʊ������" )
	Talk( 12, "����ǰ��ָ�ӹ�:�������ƺ�û�е���Ʒ�����б�������Ҫ��һ���ո��ޣ�")

-- InitTrigger()
--	TriggerCondition( 1, HasItem, 3117, 20 )
--	TriggerAction( 1, TakeItem, 3117,20 )
--	TriggerAction( 1, GetChaName1_guildwar, 1 )
--	TriggerAction( 1, JumpPage, 13 )
--	TriggerFailure( 1, JumpPage, 14)
	Talk( 7, "����ǰ��ָ�ӹ�:����20������,�һ����������һ���������ԣ�")
	Text( 7, "ȷ��", GetChaName23_guildwar, 1)
	Talk( 8, "����ǰ��ָ�ӹ�:��������ķ�����Ҫ30��ˮ����ʯ�������������2�ߵĵ����ҵ��ḻ�Ŀ�Դ��")
	Text( 8, "����30��ˮ����ʯ", GetChaName24_guildwar, 1)
	Talk( 9, "����ǰ��ָ�ӹ�:����û�й�����ȫ�������ı��������������Χ�ĺ���Ѱ��12����ˮ�����12�����ͷ���ң�����25�������������")
	Text( 9, "�����㹻�Ĳ���", GetChaName26_guildwar, 1)
	Talk( 10, "����ǰ��ָ�ӹ�:ֻ��Ҫ4����̲Ǳˮ����9�������Ƭ(ȥ�Է��Ļ��ظ������Ұ�),�Ҿ����õ�������̻��3�����޵�ʱ�䣡")
	Text( 10, "�����㹻�Ĳ���", GetChaName25_guildwar, 1)
	Talk( 13, "����ǰ��ָ�ӹ�:�����ռ����㹻�����ġ�����������ܷ���һ��ͻϮ��������ʹ�ã�")
	Text( 13, "��15��", JumpPage, 14)
	Text( 13, "��30��", JumpPage, 15)
	Text( 13, "��45��", JumpPage, 16)
	Talk( 14, "����ǰ��ָ�ӹ�:ʹ��15���������������3������ͻϮ��Ա����ѡ��ͻϮ�ص㣡")
	Text( 14, "�з�������Χ", GetChaName27_guildwar, 1)
	Text( 14, "�з��������Χ", GetChaName28_guildwar, 1)
	Text( 14, "�з�������Χ", GetChaName29_guildwar, 1)
	Text( 14, "�ҷ�������Χ", GetChaName30_guildwar, 1)
	Text( 14, "�ҷ��������Χ", GetChaName31_guildwar, 1)
	Text( 14, "�ҷ�������Χ", GetChaName32_guildwar, 1)
	--Text( 14, "ս����·", GetChaName11_guildwar, 1)
	Talk( 15, "����ǰ��ָ�ӹ�:ʹ��30���������������7������ͻϮ��Ա����ѡ��ͻϮ�ص㣡")
	Text( 15, "�з�������Χ", GetChaName33_guildwar, 1)
	Text( 15, "�з��������Χ", GetChaName34_guildwar, 1)
	Text( 15, "�з�������Χ", GetChaName35_guildwar, 1)
	Text( 15, "�ҷ�������Χ", GetChaName36_guildwar, 1)
	Text( 15, "�ҷ��������Χ", GetChaName37_guildwar, 1)
	Text( 15, "�ҷ�������Χ", GetChaName38_guildwar, 1)
	--Text( 15, "ս����·", GetChaName18_guildwar, 1)
	Talk( 16, "����ǰ��ָ�ӹ�:ʹ��45���������������11������ͻϮ��Ա����ѡ��ͻϮ�ص㣡")
	Text( 16, "�з�������Χ", GetChaName39_guildwar, 1)
	Text( 16, "�з��������Χ", GetChaName40_guildwar, 1)
	Text( 16, "�з�������Χ", GetChaName41_guildwar, 1)
	Text( 16, "�ҷ�������Χ", GetChaName42_guildwar, 1)
	Text( 16, "�ҷ��������Χ", GetChaName43_guildwar, 1)
	Text( 16, "�ҷ�������Χ", GetChaName44_guildwar, 1)
end

function roico_talk()
        Talk( 1, "ʥս����Ա�������ʥս�����ȵ������ﻻȡ��������������������ľ��ĺ;���������������һЩ�����ܸ���Ȥ�Ķ�����������ֻ�����ǽ���ս����Ӣ�ۣ�" )
        Text( 1, "��70��BOSSװ��",JumpPage, 2 )
	Text( 1, "���ƺ�ѫ��",JumpPage, 16 )
	Text( 1, "�һ�Ѫ����",JumpPage, 28 )
	Text( 1, "������������",JumpPage, 29 )

	Talk( 2, "ʥս����Ա����ѡ����Ҫ��װ����" )
        Text( 2, "��ά��ʯ(�޽�)", JumpPage, 3)
	Text( 2, "÷����ʯ(˫��)", JumpPage, 4)
	Text( 2, "������ʯ(�ѻ�)", JumpPage, 5)
	Text( 2, "�ܿ���ʯ(����)", JumpPage, 6)
	Text( 2, "������ʯ(ʥְ)", JumpPage, 7)
	Text( 2, "ά����ʯ(��ӡ)", JumpPage, 8)
	Text( 2, "��һҳ", JumpPage, 9)
	Talk( 9, "ʥս����Ա����ѡ����Ҫ��װ����" )
	Text( 9, "��ά��ʯ(�޽�)", JumpPage, 10)
	Text( 9, "÷����ʯ(˫��)", JumpPage, 11)
	Text( 9, "������ʯ(�ѻ�)", JumpPage, 12)
	Text( 9, "�ܿ���ʯ(����)", JumpPage, 13)
	Text( 9, "������ʯ(ʥְ)", JumpPage, 14)
	Text( 9, "ά����ʯ(��ӡ)", JumpPage, 15)
	Text( 9, "��һҳ", JumpPage, 2) 


	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2532, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 3, "ʥս����Ա�������ĵȼ���65�����ϣ��������ܸ���300��Ѫ֮��Լ�Ļ����ҿ��Խ�ʯͷ���㡣" )
	Text( 3, "��ô�ά��ʯ", MultiTrigger, GetMultiTrigger(), 1)



	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2535, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 4, "ʥս����Ա�������ĵȼ���65�����ϣ��������ܸ���300��Ѫ֮��Լ�Ļ����ҿ��Խ�ʯͷ���㡣" )
	Text( 4, "���÷����ʯ", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2538, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 5, "ʥս����Ա�������ĵȼ���65�����ϣ��������ܸ���300��Ѫ֮��Լ�Ļ����ҿ��Խ�ʯͷ���㡣" )
	Text( 5, "���������ʯ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2541, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 6, "ʥս����Ա�������ĵȼ���65�����ϣ��������ܸ���300��Ѫ֮��Լ�Ļ����ҿ��Խ�ʯͷ���㡣" )
	Text( 6, "��ýܿ���ʯ", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2544, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 7, "ʥս����Ա�������ĵȼ���65�����ϣ��������ܸ���300��Ѫ֮��Լ�Ļ����ҿ��Խ�ʯͷ���㡣" )
	Text( 7, "���������ʯ", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2547, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 8, "ʥս����Ա�������ĵȼ���65�����ϣ��������ܸ���300��Ѫ֮��Լ�Ļ����ҿ��Խ�ʯͷ���㡣" )
	Text( 8, "���ά����ʯ", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2531, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 10, "ʥս����Ա�������ĵȼ���65�����ϣ��������ܸ���300��Ѫ֮��Լ�Ļ����ҿ��Խ�ʯͷ���㡣" )
	Text( 10, "��ô�ά��ʯ", MultiTrigger, GetMultiTrigger(), 1)



	
	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2534, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 11, "ʥս����Ա�������ĵȼ���65�����ϣ��������ܸ���300��Ѫ֮��Լ�Ļ����ҿ��Խ�ʯͷ���㡣" )
	Text( 11, "���÷����ʯ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2537, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 12, "ʥս����Ա�������ĵȼ���65�����ϣ��������ܸ���300��Ѫ֮��Լ�Ļ����ҿ��Խ�ʯͷ���㡣" )
	Text( 12, "���������ʯ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2540, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 13, "ʥս����Ա�������ĵȼ���65�����ϣ��������ܸ���300��Ѫ֮��Լ�Ļ����ҿ��Խ�ʯͷ���㡣" )
	Text( 13, "��ýܿ���ʯ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2543, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 14, "ʥս����Ա�������ĵȼ���65�����ϣ��������ܸ���300��Ѫ֮��Լ�Ļ����ҿ��Խ�ʯͷ���㡣" )
	Text( 14, "���������ʯ", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2546, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 15, "ʥս����Ա�������ĵȼ���65�����ϣ��������ܸ���300��Ѫ֮��Լ�Ļ����ҿ��Խ�ʯͷ���㡣" )
	Text( 15, "���ά����ʯ", MultiTrigger, GetMultiTrigger(), 1)


	Talk( 16, "ʥս����Ա����ѡ����Ҫ�ĳƺ���Ʒ��" )
        Text( 16, "����", JumpPage, 17)
	Text( 16, "�ع����ȱ�", JumpPage, 18)
	Text( 16, "�ٸ�", JumpPage, 19)
	Text( 16, "��", JumpPage, 20)
	Text( 16, "ʿ�ٳ�", JumpPage, 21)
	Text( 16, "��һҳ", JumpPage, 30)

	Talk( 30, "ʥս����Ա����ѡ����Ҫ�ĳƺ���Ʒ��" )
	Text( 30, "��Ѫ�ٷ�", JumpPage, 22)
	Text( 30, "������У", JumpPage, 23)
	Text( 30, "������У", JumpPage, 24)
	Text( 30, "�����ٽ�", JumpPage, 25)
	Text( 30, "߱���Ͻ�", JumpPage, 26)
	Text( 30, "��һҳ", JumpPage, 16)



	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 20 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerAction( 1, TakeItem, 2383, 20 )
	TriggerAction( 1, GiveItem, 5331, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 17, "ʥս����Ա�����ܸ���20��Ѫ֮��Լ�Ļ����ҿ��Խ��˵ȼ�ѫ�¸��㡣" )
	Text( 17, "���ѫ��", MultiTrigger, GetMultiTrigger(), 1)



	
	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 50 )
	TriggerCondition( 1, HasItem, 5331, 1 )
	TriggerAction( 1, TakeItem, 2383, 50 )
	TriggerAction( 1, TakeItem, 5331, 1 )
	TriggerAction( 1, GiveItem, 5332, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 18, "ʥս����Ա�����ܸ���50��Ѫ֮��Լ��һ��ѫ�µĻ����ҿ��Խ��˵ȼ�ѫ�¸��㡣" )
	Text( 18, "���ѫ��", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 100 )
	TriggerCondition( 1, HasItem, 5332, 1 )
	TriggerAction( 1, TakeItem, 2383, 100 )
	TriggerAction( 1, TakeItem, 5332, 1 )
	TriggerAction( 1, GiveItem, 5333, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 19, "ʥս����Ա�����ܸ���100��Ѫ֮��Լ�Ͷ���ѫ�µĻ����ҿ��Խ��˵ȼ�ѫ�¸��㡣" )
	Text( 19, "���ѫ��", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 250 )
	TriggerCondition( 1, HasItem, 5333, 1 )
	TriggerAction( 1, TakeItem, 2383, 250 )
	TriggerAction( 1, TakeItem, 5333, 1 )
	TriggerAction( 1, GiveItem, 5334, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 20, "ʥս����Ա�����ܸ���250��Ѫ֮��Լ������ѫ�µĻ����ҿ��Խ��˵ȼ�ѫ�¸��㡣" )
	Text( 20, "���ѫ��", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 400 )
	TriggerCondition( 1, HasItem, 5334, 1 )
	TriggerAction( 1, TakeItem, 2383, 400 )
	TriggerAction( 1, TakeItem, 5334, 1 )
	TriggerAction( 1, GiveItem, 5335, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 21, "ʥս����Ա�����ܸ���400��Ѫ֮��Լ���ļ�ѫ�µĻ����ҿ��Խ��˵ȼ�ѫ�¸��㡣" )
	Text( 21, "���ѫ��", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 650 )
	TriggerCondition( 1, HasItem, 5335, 1 )
	TriggerAction( 1, TakeItem, 2383, 650 )
	TriggerAction( 1, TakeItem, 5335, 1 )
	TriggerAction( 1, GiveItem, 5336, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 22, "ʥս����Ա�����ܸ���650��Ѫ֮��Լ���弶ѫ�µĻ����ҿ��Խ��˵ȼ�ѫ�¸��㡣" )
	Text( 22, "���ѫ��", MultiTrigger, GetMultiTrigger(), 1)



	InitTrigger()
	TriggerCondition( 1, HasItem, 2865, 55 )
	TriggerCondition( 1, HasItem, 5336, 1 )
	TriggerAction( 1, TakeItem, 2865, 55 )
	TriggerAction( 1, TakeItem, 5336, 1 )
	TriggerAction( 1, GiveItem, 5337, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 23, "ʥս����Ա�����ܸ���55��Ѫ���������ѫ�µĻ����ҿ��Խ��˵ȼ�ѫ�¸��㡣" )
	Text( 23, "���ѫ��", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2865, 80 )
        TriggerCondition( 1, HasItem, 5337, 1)
	TriggerAction( 1, TakeItem, 2865, 80 )
	TriggerAction( 1, TakeItem, 5337, 1 )
	TriggerAction( 1, GiveItem, 5338, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 24, "ʥս����Ա�����ܸ���80��Ѫ������߼�ѫ�µĻ����ҿ��Խ��˵ȼ�ѫ�¸��㡣" )
	Text( 24, "���ѫ��", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2865, 110 )
	TriggerCondition( 1, HasItem, 5338, 1)
	TriggerAction( 1, TakeItem, 2865, 110 )
	TriggerAction( 1, TakeItem, 5338, 1 )
	TriggerAction( 1, GiveItem, 5339, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 25, "ʥս����Ա�����ܸ���110��Ѫ����Ͱ˼�ѫ�µĻ����ҿ��Խ��˵ȼ�ѫ�¸��㡣" )
	Text( 25, "���ѫ��", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2865, 155 )
	TriggerCondition( 1, HasItem, 5339, 1)
	TriggerAction( 1, TakeItem, 2865, 155 )
	TriggerAction( 1, TakeItem, 5339, 1 )
	TriggerAction( 1, GiveItem, 5340, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 26, "ʥս����Ա�����ܸ���155��Ѫ����;ż�ѫ�µĻ����ҿ��Խ��˵ȼ�ѫ�¸��㡣" )
	Text( 26, "���ѫ��", MultiTrigger, GetMultiTrigger(), 1)
        Talk( 27, "ʥս����Ա����鿴���ı����Ƿ��пո��ӻ���������Ʒ���룬�Ҳ��ܺ�������" )




	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 20 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerAction( 1, TakeItem, 2383, 20 )
	TriggerAction( 1, GiveItem, 2865, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 28, "ʥս����Ա��20����Ѫ֮��Լ�����Ի�ȡ1����Ѫ����ޣ�" )
	Text( 28, "ȷ��", MultiTrigger, GetMultiTrigger(), 1)


	
	Talk( 29, "ʥս����Ա��15���������Զһ�1�������������ֻ����ʥս�����Ż���ʧ��")
	Text( 29, "ȷ��", GetChaName45_guildwar, 1)

end

