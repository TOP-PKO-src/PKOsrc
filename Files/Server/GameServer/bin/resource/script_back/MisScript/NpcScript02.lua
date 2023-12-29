------------------------------------------------------------
-- NPCScript02.lua Created by BT 2004.12.29.
--
-- L.38 -> Line 38
------------------------------------------------------------
-- L.20   [ ɱ�����񣺰����佫������ ]
-- L.289  [ RandMapList ] L.245 [ ���� ] L.362 [ ɳ� ] L.422 [ ���� ] L.482 [ ���� ] L.542 [ ���� ] L.612 [ ͨ�� ]
-- L.682  [ Сɽ�������� ]
--
--
--
--
--
--
--
--
--
--
------------------------------------------------------------
-- ɱ�����񣺰����佫������
------------------------------------------------------------

print( "loading NPCScript02.lua" )


------------------------------------------------------------
-- ͨ�ô��ͽű�
------------------------------------------------------------

function GoToWhere()

	--ȡ�����ͷ���ѡ���͵ص�ĶԻ����ݺ�ҳ����
	local ReSelectTalk = "���ٿ��ǿ���..."
	local ReSelectPage = 1

	--ȡ�����ͺ��˳����͵ĶԻ���ҳ����
	local CancelSelectTalk = "���ˣ������ﶼ��ȥ��"
	local CancelSelectPage = 2

	--��ͼ������Ϣ
	local CurMapName1 = "garner"
	local CurMapName2 = "magicsea"
	local CurMapName3 = "eastgoaf"
	local CurMapName4 = "lonetower"
	local CurMapName5 = "darkblue"

	--����֮������
	local GoTo01X = 2231
	local GoTo01Y = 2788
	local GoTo01M = CurMapName1

	--ɳ�֮������
	local GoTo02X = 890
	local GoTo02Y = 3575
	local GoTo02M = CurMapName2

	--����������
	local GoTo03X = 735
	local GoTo03Y = 1590
	local GoTo03M = CurMapName1

	--���Ǳ�����
	local GoTo04X = 1318
	local GoTo04Y = 510
	local GoTo04M = CurMapName5

	--�����ӵ�����
	local GoTo05X = 633
	local GoTo05Y = 2100
	local GoTo05M = CurMapName1

	--����ɭ������
	local GoTo06X = 1007
	local GoTo06Y = 2966
	local GoTo06M = CurMapName1

	--����3������
	local GoTo07X = 1507
	local GoTo07Y = 2039
	local GoTo07M = CurMapName1

	--����8������
	local GoTo08X = 1711
	local GoTo08Y = 3448
	local GoTo08M = CurMapName1

	--����2������
	local GoTo09X = 2501
	local GoTo09Y = 2997
	local GoTo09M = CurMapName1

	--����5������
	local GoTo10X = 3197
	local GoTo10Y = 1254
	local GoTo10M = CurMapName1

	Talk( 1, "׿櫣���ã����ǰ�������ʹ�ߣ�����ȥ�����أ�" )
	Text( 1, "��Ҫȥɳᰳǣ�", JumpPage, 5 )
	--Text( 1, "��Ҫȥ��������", JumpPage, 6 )
	Text( 1, "��Ҫȥ���Ǳ���", JumpPage, 7 )
	Text( 1, "��Ҫ��¼������", JumpPage, 24 )
	--Text( 1, "��ȥ�����Ͽ�", JumpPage, 8 )
	--Text( 1, "��Ҫȥ����䣡", JumpPage, 3 )

	Talk( 2, "�´������Ҫ���ͷ���ǵ����Ұ���", CloseTalk )

--	Talk( 3, "������ȥ�ĸ��������أ�" )
--	Text( 3, "����һ��", JumpPage, 9 )
--	Text( 3, "�������", JumpPage, 10 )
--	Text( 3, "��������", JumpPage, 11 )
--	Text( 3, "�����ĺ�", JumpPage, 12 )
--	Text( 3, "�������", JumpPage, 13 )
--	Text( 3, "���ȥһ����", JumpPage, 14 )

	
	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 11 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 2, JumpPage, 23 )
	Talk( 4, "���͵��������ǰɣ�û���⣡��֧��500G�ֽ�лл������10�����µ�������ѣ�" )
	Text( 4, "��ʼ����",MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 4, CancelSelectTalk, JumpPage , CancelSelectPage )


	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 11 )
	TriggerAction( 1, GoTo, GoTo02X, GoTo02Y, GoTo02M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2,  GoTo, GoTo02X, GoTo02Y, GoTo02M )
	TriggerFailure( 2, JumpPage, 23 )
	Talk( 5, "��ϲ��ɳ�֮������ط�����֧��500G�ֽ�лл������10�����µ�������ѣ�" )
	Text( 5, "��ʼ����",MultiTrigger, GetMultiTrigger(), 2)
	Text( 5, CancelSelectTalk, JumpPage , CancelSelectPage )


	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 11 )
	TriggerAction( 1, GoTo, GoTo03X, GoTo03Y, GoTo03M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2,  GoTo, GoTo03X, GoTo03Y, GoTo03M )
	TriggerFailure( 2, JumpPage, 23 )
	Talk( 6, "���͵��������ǰɣ�û���⣡��֧��500G�ֽ�лл������10�����µ�������ѣ�" )
	Text( 6, "��ʼ����",MultiTrigger, GetMultiTrigger(), 2 )
	Text( 6, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 11 )
	TriggerAction( 1, GoTo, GoTo04X, GoTo04Y, GoTo04M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2, GoTo, GoTo04X, GoTo04Y, GoTo04M )
	TriggerFailure( 2, JumpPage, 23 )
	Talk( 7, "���͵����Ǳ��ǰɣ���֧��500G�ֽ�лл������10�����µ�������ѣ�" )
	Text( 7, "��ʼ����",MultiTrigger, GetMultiTrigger(), 2)
	Text( 7, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 11 )
	TriggerAction( 1, GoTo, GoTo05X, GoTo05Y, GoTo05M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2, GoTo, GoTo05X, GoTo05Y, GoTo05M )
	TriggerFailure( 2, JumpPage, 23 )
	Talk( 8, "���͵������ӵ²���վ�ǰɣ���֧��500G�ֽ�лл������10�����µ�������ѣ�" )
	Text( 8, "��ʼ����",MultiTrigger, GetMultiTrigger(), 2)
	Text( 8, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 11 )
	TriggerAction( 1, GoTo, GoTo06X, GoTo06Y, GoTo06M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2, GoTo, GoTo06X, GoTo06Y, GoTo06M )
	TriggerFailure( 2, JumpPage, 23 )
	Talk( 9, "���͵�����ɭ�ֲ���վ�ǰɣ���֧��500G�ֽ�лл������10�����µ�������ѣ�" )
	Text( 9, "��ʼ����",MultiTrigger, GetMultiTrigger(), 2)
	Text( 9, CancelSelectTalk, JumpPage , CancelSelectPage )

--	Talk( 10, "��˵��Щ������Ư���ģ���;��졫" )
--	Text( 10, "��ʼ���ͣ���ʱ���", GoTo, GoTo07X, GoTo07Y, GoTo07M )
--	Text( 10, CancelSelectTalk, JumpPage , CancelSelectPage )
--
--	Talk( 11, "��˵��Щ������Ư���ģ���;��졫" )
--	Text( 11, "��ʼ���ͣ���ʱ���", GoTo, GoTo08X, GoTo08Y, GoTo08M )
--	Text( 11, CancelSelectTalk, JumpPage , CancelSelectPage )
--
--	Talk( 12, "��˵��Щ������Ư���ģ���;��졫" )
--	Text( 12, "��ʼ���ͣ���ʱ���", GoTo, GoTo09X, GoTo09Y, GoTo09M )
--	Text( 12, CancelSelectTalk, JumpPage , CancelSelectPage )
----
--	Talk( 13, "��˵��Щ������Ư���ģ���;��졫" )
--	Text( 13, "��ʼ���ͣ���ʱ���", GoTo, GoTo10X, GoTo10Y, GoTo10M )
--	Text( 13, CancelSelectTalk, JumpPage , CancelSelectPage )
--
--	InitFuncList()
--
--	AddFuncList( GoTo, GoTo06X, GoTo06Y, GoTo06M )
--	AddFuncList( GoTo, GoTo07X, GoTo07Y, GoTo07M )
--	AddFuncList( GoTo, GoTo08X, GoTo08Y, GoTo08M )
--	AddFuncList( GoTo, GoTo09X, GoTo09Y, GoTo09M )
--	AddFuncList( GoTo, GoTo10X, GoTo10Y, GoTo10M )
--
--	Talk( 14, "���ȥһ���������ҿɲ�֪��������ȥ����Ŷ��" )
--	Text( 14, "��ʼ���ͣ���ʱ���", RandFunction, GetFuncList(), GetNumFunc() )
--	Text( 14, CancelSelectTalk, JumpPage , CancelSelectPage )
--

	Talk( 18, "��˹����ã�����ɳᰳǴ���ʹ�ߣ�����ȥ�����أ�" )
	Text( 18, "��Ҫȥ�����ǣ�", JumpPage, 4 )
	--Text( 18, "��Ҫȥ��������", JumpPage, 6 )
	Text( 18, "��Ҫȥ���Ǳ���", JumpPage, 7 )
	Text( 18, "��Ҫ��¼������", JumpPage, 25 )
	--Text( 18, "��ȥ�����Ͽ�", JumpPage, 8 )
	--Text( 18, "��Ҫȥ����䣡", JumpPage, 3 )

	Talk( 19, "ɳ�����ã���������������ʹ�ߣ�����ȥ�����أ�" )
	Text( 19, "��Ҫȥ�����ǣ�", JumpPage, 4 )
	Text( 19, "��Ҫȥɳᰳǣ�", JumpPage, 5 )
	Text( 19, "��Ҫȥ���Ǳ���", JumpPage, 7 )
	Text( 19, "��Ҫ��¼������", JumpPage, 26 )

	Talk( 20, "������ã����Ǳ��Ǳ�����ʹ�ߣ�����ȥ�����أ�" )
	Text( 20, "��Ҫȥ�����ǣ�", JumpPage, 4 )
	Text( 20, "��Ҫȥɳᰳǣ�", JumpPage, 5 )
	Text( 20, "��Ҫ��¼������", JumpPage, 27 )


	--Talk( 21, "�꿨ɺ����ã����ǿ����ӵ´���ʹ�ߣ�����ȥ�����أ�" )
	--Text( 21, "��Ҫȥ�����ǣ�", JumpPage, 4 )
	--Text( 21, "��Ҫȥɳᰳǣ�", JumpPage, 5 )
	--Text( 21, "��Ҫȥ���Ǳ���", JumpPage, 7 )
	--Text( 21, "��Ҫ��¼������", JumpPage, 31 )

	--Talk( 22, "�µ٣���ã���������ɭ�ִ���ʹ�ߣ�����ȥ�����أ�" )
	--Text( 22, "��Ҫȥ�����ǣ�", JumpPage, 4 )
	--Text( 22, "��Ҫȥɳᰳǣ�", JumpPage, 5 )
	--Text( 22, "��Ҫȥ���Ǳ���", JumpPage, 7 )
	--Text( 22, "��Ҫ��¼������", JumpPage, 32 )

	Talk( 23, "�Բ��������ֽ��㣬�޷����͡�" )

	Talk( 24, "׿櫣�Ҫ��¼�ڰ����ǣ���ô��" )
	Text( 24, "�ǵģ����¼��", SetSpawnPos, "������" )
	Text( 24, "����������",CloseTalk )

	Talk( 25, "��˿��Ҫ��¼��ɳᰳǣ���ô��" )
	Text( 25, "�ǵģ����¼��", SetSpawnPos, "ɳᰳ�" )
	Text( 25, "����������",CloseTalk )

	Talk( 26, "ɳ��Ҫ��¼������������ô��" )
	Text( 26, "�ǵģ����¼��", SetSpawnPos, "������" )
	Text( 26, "����������",CloseTalk )

	Talk( 27, "����Ҫ��¼�ڱ��Ǳ�����ô��" )
	Text( 27, "�ǵģ����¼��", SetSpawnPos, "���Ǳ�" )
	Text( 27, "����������",CloseTalk )

	Talk( 28, "��������Ա����ã�����PK����������Ա������ȥ�����أ�" )
	Text( 28, "��Ҫ�سǣ�", JumpPage, 29 )
	Text( 28, "����������",CloseTalk )
	
	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	--TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerAction( 1, SetPkState, 0 )
	TriggerAction( 1, MoveCity, "" )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 29, "����س��ǰɣ�����ų���������߽����Կ۳�2000G�Ĵ������㻹�Ǽ��Ҫ��ô����" )
	Text( 29, "�ǵģ���֧��2000G�ֽ������߰�",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 29, "�����Ҳ�����" )

	Talk( 30, "�����ܻ�û���ֽ𣿶Բ�������㲻֧��2000G���õĻ�����ֻ��������ս��������ˡ�" )

	Talk( 31, "�꿨ɺ��Ҫ��¼�ڿ����ӵ²���վ����ô��" )
	Text( 31, "�ǵģ����¼��", SetSpawnPos, "�����ӵ²���վ" )
	Text( 31, "����������",CloseTalk )

	Talk( 32, "�µ٣�Ҫ��¼������ɭ�ֲ���վ����ô��" )
	Text( 32, "�ǵģ����¼��", SetSpawnPos, "����ɭ�ֲ���վ" )
	Text( 32, "����������",CloseTalk )



	InitTrigger()

	TriggerCondition( 1, IsMapNpc, "garner", 0 )
	TriggerAction( 1, JumpPage, 1 )

	TriggerCondition( 2, IsMapNpc, "magicsea", 0 )
	TriggerAction( 2, JumpPage, 18 )

	TriggerCondition( 3, IsMapNpc, "garner", 43 )
	TriggerAction( 3, JumpPage, 19 )

	TriggerCondition( 4, IsMapNpc, "darkblue", 12 )
	TriggerAction( 4, JumpPage, 20 )

	TriggerCondition( 5, IsMapNpc, "darkblue", 15 )
	TriggerAction( 5, JumpPage, 28 )

	--TriggerCondition( 6, IsMapNpc, "garner", 55 )
	--TriggerAction( 6, JumpPage, 21 )

	--TriggerCondition( 7, IsMapNpc, "garner", 56 )
	--TriggerAction( 7, JumpPage, 22 )

	--TriggerCondition( 9, IsMapNpc, "���ɴ�½", 8 )
	--TriggerAction( 9, JumpPage, 22 )

	--TriggerCondition( 10, IsMapNpc, "���ɴ�½", 9 )
	--TriggerAction( 10, JumpPage, 22 )

	--TriggerCondition( 11, IsMapNpc, "���ɴ�½", 27 )
	--TriggerAction( 11, JumpPage, 21 )

	Start( GetMultiTrigger(), 5 )

end




------------------------------------------------------------
-- ����վ���ͽű�
------------------------------------------------------------

function transmittal()

	--ȡ�����ͷ���ѡ���͵ص�ĶԻ����ݺ�ҳ����
	--local ReSelectTalk = "���ٿ��ǿ���..."
	--local ReSelectPage = 1

	--ȡ�����ͺ��˳����͵ĶԻ���ҳ����
	local CancelSelectTalk = "���ˣ������ﶼ��ȥ��"
	local CancelSelectPage = 27

	--��ͼ������Ϣ
	local CurMapName1 = "garner"
	local CurMapName2 = "magicsea"
	local CurMapName3 = "eastgoaf"
	local CurMapName4 = "lonetower"
	local CurMapName5 = "darkblue"

	--�Ͽ󲹸�վ
	local GoTo01X = 1903
	local GoTo01Y = 2807
	local GoTo01M = CurMapName1

	--���￩������վ
	local GoTo02X = 1517
	local GoTo02Y = 3091
	local GoTo02M = CurMapName1

	--�߶�ŵ����վ
	local GoTo03X = 1120
	local GoTo03Y = 2773
	local GoTo03M = CurMapName1

	--���ǲ���վ
	local GoTo04X = 535
	local GoTo04Y = 2433
	local GoTo04M = CurMapName1

	--�����ӵ�����
	local GoTo05X = 633
	local GoTo05Y = 2100
	local GoTo05M = CurMapName1

	--����ɭ������
	local GoTo06X = 1007
	local GoTo06Y = 2966
	local GoTo06M = CurMapName1

	--ɳȪ����վ
	local GoTo07X = 787
	local GoTo07Y = 3121
	local GoTo07M = CurMapName2

	--�Ͳ�����վ
	local GoTo08X = 1214
	local GoTo08Y = 3203
	local GoTo08M = CurMapName2

	--��������վ
	local GoTo09X = 807
	local GoTo09Y = 360
	local GoTo09M = CurMapName5

	--������˹����վ
	local GoTo10X = 1050
	local GoTo10Y = 656
	local GoTo10M = CurMapName5

	--����Ӫ�ز���վ
	local GoTo11X = 2146
	local GoTo11Y = 542
	local GoTo11M = CurMapName5

	--��������վ
	local GoTo12X = 2681
	local GoTo12Y = 647
	local GoTo12M = CurMapName5

	Talk( 1, "÷�ǣ���ã����Ǵ���ʹ÷�ǣ�������ʲô���԰����ô��" )
	Text( 1, "��Ҫȥ���￩������վ��", JumpPage, 14 )
	Text( 1, "��Ҫ��¼������", JumpPage, 25 )		--�Ͽ󲹸�վ
	
	Talk( 2, "����Ī�ƣ���ã����Ǵ���ʹ����Ī�ƣ�������ʲô���԰����ô��" )
	Text( 2, "��Ҫȥ�Ͽ󲹸�վ��", JumpPage, 13 )
	Text( 2, "��Ҫȥ����ɭ�ֲ���վ��", JumpPage, 18 )
	Text( 2, "��Ҫ��¼������", JumpPage, 25 )		--���￩������վ

	Talk( 3, "�µ٣���ã����Ǵ���ʹ�µ٣�������ʲô���԰����ô��" )
	Text( 3, "��Ҫȥ�߶�ŵ����վ��", JumpPage, 15 )
	Text( 3, "��Ҫȥ���￩������վ��", JumpPage, 14 )
	Text( 3, "��Ҫ��¼������", JumpPage, 25 )		--����ɭ�ֲ���վ

	Talk( 4, "��ɳ������ã����Ǵ���ʹ��ɳ����������ʲô���԰����ô��" )
	Text( 4, "��Ҫȥ���ò���վ��", JumpPage, 16 )
	Text( 4, "��Ҫȥ����ɭ�ֲ���վ��", JumpPage, 18 )
	Text( 4, "��Ҫ��¼������", JumpPage, 25 )		--�߶�ŵ����վ

	Talk( 5, "��������ã����Ǵ���ʹ������������ʲô���԰����ô��" )
	Text( 5, "��Ҫȥ�����ӵ²���վ��", JumpPage, 17 )
	Text( 5, "��Ҫȥ�߶�ŵ����վ��", JumpPage, 15 )
	Text( 5, "��Ҫ��¼������", JumpPage, 25 )		--���ò���վ

	Talk( 6, "�꿨ɺ����ã����Ǵ���ʹ�꿨ɺ��������ʲô���԰����ô��" )
	Text( 6, "��Ҫȥ���ò���վ��", JumpPage, 16 )
	Text( 6, "��Ҫ��¼������", JumpPage, 25 )		--�����ӵ²���վ

	Talk( 7, "��������ã����Ǵ���ʹ������������ʲô���԰����ô��" )
	Text( 7, "��Ҫȥ�Ͳ�����վ��", JumpPage, 20 )
	Text( 7, "��Ҫ��¼������", JumpPage, 25 )		--ɳȪ����վ

	Talk( 8, "��ɪ���᣺��ã����Ǵ���ʹ��ɪ���ᣬ������ʲô���԰����ô��" )
	Text( 8, "��ҪȥɳȪ����վ��", JumpPage, 19 )
	Text( 8, "��Ҫ��¼������", JumpPage, 25 )		--�Ͳ�����վ

	Talk( 9, "�ٺϣ���ã����Ǵ���ʹ�ٺϣ�������ʲô���԰����ô��" )
	Text( 9, "��Ҫȥ������˹����վ��", JumpPage, 22 )
	Text( 9, "��Ҫ��¼������", JumpPage, 25 )		--��������վ

	Talk( 10, "�����ǣ���ã����Ǵ���ʹ�����ǣ�������ʲô���԰����ô��" )
	Text( 10, "��Ҫȥ����Ӫ�ز���վ��", JumpPage, 23 )
	Text( 10, "��Ҫȥ��������վ��", JumpPage, 21 )
	Text( 10, "��Ҫ��¼������", JumpPage, 25 )		--������˹����վ

	Talk( 11, "���Σ���ã����Ǵ���ʹ���Σ�������ʲô���԰����ô��" )
	Text( 11, "��Ҫȥ��������վ��", JumpPage, 24 )
	Text( 11, "��Ҫȥ������˹����վ��", JumpPage, 22 )
	Text( 11, "��Ҫ��¼������", JumpPage, 25 )		--����Ӫ�ز���վ

	Talk( 12, "��������˹����ã����Ǵ���ʹ��������˹��������ʲô���԰����ô��" )
	Text( 12, "��Ҫȥ����Ӫ�ز���վ��", JumpPage, 23 )
	Text( 12, "��Ҫ��¼������", JumpPage, 25 )		--��������վ
	
	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 13, "���͵��Ͽ󲹸�վ�ǰɣ�û���⣡��֧��200G�ֽ�лл��" )
	Text( 13, "��ʼ����",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 13, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, GoTo, GoTo02X, GoTo02Y, GoTo02M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 14, "���͵����￩������վ�ǰɣ�û���⣡��֧��200G�ֽ�лл��" )
	Text( 14, "��ʼ����",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 14, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, GoTo, GoTo03X, GoTo03Y, GoTo03M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 15, "���͵��߶�ŵ����վ�ǰɣ�û���⣡��֧��200G�ֽ�лл��" )
	Text( 15, "��ʼ����",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 15, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, GoTo, GoTo04X, GoTo04Y, GoTo04M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 16, "���͵����ò���վ�ǰɣ�û���⣡��֧��200G�ֽ�лл��" )
	Text( 16, "��ʼ����",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 16, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, GoTo, GoTo05X, GoTo05Y, GoTo05M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 17, "���͵������ӵ²���վ�ǰɣ�û���⣡��֧��200G�ֽ�лл��" )
	Text( 17, "��ʼ����",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 17, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, GoTo, GoTo06X, GoTo06Y, GoTo06M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 18, "���͵�����ɭ�ֲ���վ�ǰɣ�û���⣡��֧��200G�ֽ�лл��" )
	Text( 18, "��ʼ����",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 18, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, GoTo, GoTo07X, GoTo07Y, GoTo07M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 19, "���͵�ɳȪ����վ�ǰɣ�û���⣡��֧��200G�ֽ�лл��" )
	Text( 19, "��ʼ����",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 19, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, GoTo, GoTo08X, GoTo08Y, GoTo08M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 20, "���͵��Ͳ�����վ�ǰɣ�û���⣡��֧��200G�ֽ�лл��" )
	Text( 20, "��ʼ����",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 20, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, GoTo, GoTo09X, GoTo09Y, GoTo09M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 21, "���͵���������վ�ǰɣ�û���⣡��֧��200G�ֽ�лл��" )
	Text( 21, "��ʼ����",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 21, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, GoTo, GoTo10X, GoTo10Y, GoTo10M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 22, "���͵�������˹����վ�ǰɣ�û���⣡��֧��200G�ֽ�лл��" )
	Text( 22, "��ʼ����",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 22, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, GoTo, GoTo11X, GoTo11Y, GoTo11M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 23, "���͵�����Ӫ�ز���վ�ǰɣ�û���⣡��֧��200G�ֽ�лл��" )
	Text( 23, "��ʼ����",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 23, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, GoTo, GoTo12X, GoTo12Y, GoTo12M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 24, "���͵���������վ�ǰɣ�û���⣡��֧��200G�ֽ�лл��" )
	Text( 24, "��ʼ����",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 24, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, IsMapNpc, "garner", 96 )
	TriggerAction( 1, SetSpawnPos, "�Ͽ󲹸�վ")
	TriggerCondition( 2, IsMapNpc, "garner", 94 )
	TriggerAction( 2, SetSpawnPos, "���￩������վ")
	TriggerCondition( 3, IsMapNpc, "garner", 95 )
	TriggerAction( 3, SetSpawnPos, "�߶�ŵ����վ")
	TriggerCondition( 4, IsMapNpc, "garner", 97 )
	TriggerAction( 4, SetSpawnPos, "���ò���վ")
	TriggerCondition( 5, IsMapNpc, "garner", 55 )
	TriggerAction( 5, SetSpawnPos, "�����ӵ²���վ")
	TriggerCondition( 6, IsMapNpc, "garner", 56 )
	TriggerAction( 6, SetSpawnPos, "����ɭ�ֲ���վ")
	TriggerCondition( 7, IsMapNpc, "magicsea", 50 )
	TriggerAction( 7, SetSpawnPos, "ɳȪ����վ")
	TriggerCondition( 8, IsMapNpc, "magicsea", 46 )
	TriggerAction( 8, SetSpawnPos, "�Ͳ�����վ")
	TriggerCondition( 9, IsMapNpc, "darkblue", 56 )
	TriggerAction( 9, SetSpawnPos, "��������վ")
	TriggerCondition( 10, IsMapNpc, "darkblue", 42 )
	TriggerAction( 10, SetSpawnPos, "������˹����վ")
	TriggerCondition( 11, IsMapNpc, "darkblue", 46 )
	TriggerAction( 11, SetSpawnPos, "����Ӫ�ز���վ")
	TriggerCondition( 12, IsMapNpc, "darkblue", 51 )
	TriggerAction( 12, SetSpawnPos, "��������վ")
	TriggerFailure( 12, JumpPage, 28 )
	Talk( 25, "Ҫ��¼������ô��" )
	Text( 25, "�ǵģ����¼��", MultiTrigger, GetMultiTrigger(), 12 )
	Text( 25, "����������",CloseTalk )

	Talk( 26, "�Բ��������ֽ��㣬�޷����͡�" )

	Talk( 27, "�´������Ҫ���ͷ���ǵ����Ұ���", CloseTalk )

	Talk( 28, "���ִ����޷���¼��Call Robin", CloseTalk )
	
	InitTrigger()
	TriggerCondition( 1, IsMapNpc, "garner", 96 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, IsMapNpc, "garner", 94 )
	TriggerAction( 2, JumpPage, 2 )
	TriggerCondition( 3, IsMapNpc, "garner", 95 )
	TriggerAction( 3, JumpPage, 4 )
	TriggerCondition( 4, IsMapNpc, "garner", 97 )
	TriggerAction( 4, JumpPage, 5 )
	TriggerCondition( 5, IsMapNpc, "garner", 55 )
	TriggerAction( 5, JumpPage, 6 )
	TriggerCondition( 6, IsMapNpc, "garner", 56 )
	TriggerAction( 6, JumpPage, 3 )
	TriggerCondition( 7, IsMapNpc, "magicsea", 50 )
	TriggerAction( 7, JumpPage, 7 )
	TriggerCondition( 8, IsMapNpc, "magicsea", 46 )
	TriggerAction( 8, JumpPage, 8 )
	TriggerCondition( 9, IsMapNpc, "darkblue", 56 )
	TriggerAction( 9, JumpPage, 9 )
	TriggerCondition( 10, IsMapNpc, "darkblue", 42 )
	TriggerAction( 10, JumpPage, 10 )
	TriggerCondition( 11, IsMapNpc, "darkblue", 46 )
	TriggerAction( 11, JumpPage, 11 )
	TriggerCondition( 12, IsMapNpc, "darkblue", 51 )
	TriggerAction( 12, JumpPage, 12 )
	Start( GetMultiTrigger(), 12 )

end



------------------------------------------------------------
-- ���촫�ͽű�
------------------------------------------------------------

function island()

	--ȡ�����ͷ���ѡ���͵ص�ĶԻ����ݺ�ҳ����
	--local ReSelectTalk = "���ٿ��ǿ���..."
	--local ReSelectPage = 1

	--ȡ�����ͺ��˳����͵ĶԻ���ҳ����
	local CancelSelectTalk = "���ˣ������ﶼ��ȥ��"
	local CancelSelectPage = 27

	--��ͼ������Ϣ
	local CurMapName1 = "garner"
	local CurMapName2 = "magicsea"
	local CurMapName3 = "eastgoaf"
	local CurMapName4 = "lonetower"
	local CurMapName5 = "darkblue"

	--���絺
	local GoTo01X = 3260
	local GoTo01Y = 3280
	local GoTo01M = CurMapName1

	--�����
	local GoTo02X = 2273
	local GoTo02Y = 1122
	local GoTo02M = CurMapName1

	--ѩ����
	local GoTo03X = 3590
	local GoTo03Y = 755
	local GoTo03M = CurMapName1

	--��ѩ��
	local GoTo04X = 2376
	local GoTo04Y = 725
	local GoTo04M = CurMapName2

	--��ɳ��
	local GoTo05X = 1730
	local GoTo05Y = 3775
	local GoTo05M = CurMapName2

	--�氮��
	local GoTo06X = 2529
	local GoTo06Y = 2406
	local GoTo06M = CurMapName2

	--���˵�
	local GoTo07X = 1631
	local GoTo07Y = 1974
	local GoTo07M = CurMapName5

	--������
	local GoTo08X = 2231
	local GoTo08Y = 2788
	local GoTo08M = CurMapName1

	Talk( 1, "˹��ܽ����ã����ǵ��촫��ʹ������������ʲô���԰����ô��" )
	Text( 1, "��Ҫȥ���絺��", JumpPage, 14 )
	Text( 1, "��Ҫȥ�������", JumpPage, 15 )
	Text( 1, "��Ҫȥѩ������", JumpPage, 16 )
	Text( 1, "��Ҫȥ��ѩ����", JumpPage, 17 )
	Text( 1, "��Ҫȥ��ɳ����", JumpPage, 18 )
	Text( 1, "��Ҫȥ�氮����", JumpPage, 19 )
	Text( 1, "��Ҫȥ���˵���", JumpPage, 20 )
	Text( 1, "��Ҫ��¼������", JumpPage, 25 )		--������
	
	Talk( 2, "�������ǣ���ã����ǵ��촫��ʹ�������ǣ�������ʲô���԰����ô��" )
	Text( 2, "��Ҫȥ�����ǣ�", JumpPage, 21 )
	Text( 2, "��Ҫȥ�������", JumpPage, 15 )
	Text( 2, "��Ҫȥѩ������", JumpPage, 16 )
	Text( 2, "��Ҫȥ��ѩ����", JumpPage, 17 )
	Text( 2, "��Ҫȥ��ɳ����", JumpPage, 18 )
	Text( 2, "��Ҫȥ�氮����", JumpPage, 19 )
	Text( 2, "��Ҫȥ���˵���", JumpPage, 20 )
	Text( 2, "��Ҫ��¼������", JumpPage, 25 )		--���絺

	Talk( 3, "��ʫ�ȣ���ã����ǵ��촫��ʹ��ʫ�ȣ�������ʲô���԰����ô��" )
	Text( 3, "��Ҫȥ�����ǣ�", JumpPage, 21 )
	Text( 3, "��Ҫȥ���絺��", JumpPage, 14 )
	Text( 3, "��Ҫȥѩ������", JumpPage, 16 )
	Text( 3, "��Ҫȥ��ѩ����", JumpPage, 17 )
	Text( 3, "��Ҫȥ��ɳ����", JumpPage, 18 )
	Text( 3, "��Ҫȥ�氮����", JumpPage, 19 )
	Text( 3, "��Ҫȥ���˵���", JumpPage, 20 )
	Text( 3, "��Ҫ��¼������", JumpPage, 25 )	--�����

	Talk( 4, "����������ã����ǵ��촫��ʹ��������������ʲô���԰����ô��" )
	Text( 4, "��Ҫȥ�����ǣ�", JumpPage, 21 )
	Text( 4, "��Ҫȥ���絺��", JumpPage, 14 )
	Text( 4, "��Ҫȥ�������", JumpPage, 15 )
	Text( 4, "��Ҫȥ��ѩ����", JumpPage, 17 )
	Text( 4, "��Ҫȥ��ɳ����", JumpPage, 18 )
	Text( 4, "��Ҫȥ�氮����", JumpPage, 19 )
	Text( 4, "��Ҫȥ���˵���", JumpPage, 20 )
	Text( 4, "��Ҫ��¼������", JumpPage, 25 )          ---ѩ����

	Talk( 5, "��������ã����ǵ��촫��ʹ������������ʲô���԰����ô��" )
	Text( 5, "��Ҫȥ�����ǣ�", JumpPage, 21 )
	Text( 5, "��Ҫȥ���絺��", JumpPage, 14 )
	Text( 5, "��Ҫȥ�������", JumpPage, 15 )
	Text( 5, "��Ҫȥѩ������", JumpPage, 16 )
	Text( 5, "��Ҫȥ��ɳ����", JumpPage, 18 )
	Text( 5, "��Ҫȥ�氮����", JumpPage, 19 )
	Text( 5, "��Ҫȥ���˵���", JumpPage, 20 )
	Text( 5, "��Ҫ��¼������", JumpPage, 25 )          ---��ѩ��

	Talk( 6, "��������ã����ǵ��촫��ʹ������������ʲô���԰����ô��" )
	Text( 6, "��Ҫȥ�����ǣ�", JumpPage, 21 )
	Text( 6, "��Ҫȥ���絺��", JumpPage, 14 )
	Text( 6, "��Ҫȥ�������", JumpPage, 15 )
	Text( 6, "��Ҫȥѩ������", JumpPage, 16 )
	Text( 6, "��Ҫȥ��ѩ����", JumpPage, 17 )
	Text( 6, "��Ҫȥ�氮����", JumpPage, 19 )
	Text( 6, "��Ҫȥ���˵���", JumpPage, 20 )
	Text( 6, "��Ҫ��¼������", JumpPage, 25 )          ---��ɳ��

	Talk( 7, "�����ȣ���ã����ǵ��촫��ʹ�����ȣ�������ʲô���԰����ô��" )
	Text( 7, "��Ҫȥ�����ǣ�", JumpPage, 21 )
	Text( 7, "��Ҫȥ���絺��", JumpPage, 14 )
	Text( 7, "��Ҫȥ�������", JumpPage, 15 )
	Text( 7, "��Ҫȥѩ������", JumpPage, 16 )
	Text( 7, "��Ҫȥ��ѩ����", JumpPage, 17 )
	Text( 7, "��Ҫȥ��ɳ����", JumpPage, 18 )
	Text( 7, "��Ҫȥ���˵���", JumpPage, 20 )
	Text( 7, "��Ҫ��¼������", JumpPage, 25 )          ---�氮��

	Talk( 8, "������ã����ǵ��촫��ʹ����������ʲô���԰����ô��" )
	Text( 8, "��Ҫȥ�����ǣ�", JumpPage, 21 )
	Text( 8, "��Ҫȥ���絺��", JumpPage, 14 )
	Text( 8, "��Ҫȥ�������", JumpPage, 15 )
	Text( 8, "��Ҫȥѩ������", JumpPage, 16 )
	Text( 8, "��Ҫȥ��ѩ����", JumpPage, 17 )
	Text( 8, "��Ҫȥ��ɳ����", JumpPage, 18 )
	Text( 8, "��Ҫȥ�氮����", JumpPage, 19 )
	Text( 8, "��Ҫ��¼������", JumpPage, 25 )          ---���˵�

	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 14, "���͵����絺�ǰɣ�û���⣡��֧��2000G�ֽ�лл��" )
	Text( 14, "��ʼ����",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 14, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, GoTo, GoTo02X, GoTo02Y, GoTo02M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 15, "���͵�������ǰɣ�û���⣡��֧��2000G�ֽ�лл��" )
	Text( 15, "��ʼ����",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 15, CancelSelectTalk, JumpPage , CancelSelectPage )
	
	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, GoTo, GoTo03X, GoTo03Y, GoTo03M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 16, "���͵�ѩ�����ǰɣ�û���⣡��֧��2000G�ֽ�лл��" )
	Text( 16, "��ʼ����",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 16, CancelSelectTalk, JumpPage , CancelSelectPage )
	
	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, GoTo, GoTo04X, GoTo04Y, GoTo04M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 17, "���͵���ѩ���ǰɣ�û���⣡��֧��2000G�ֽ�лл��" )
	Text( 17, "��ʼ����",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 17, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, GoTo, GoTo05X, GoTo05Y, GoTo05M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 18, "���͵���ɳ���ǰɣ�û���⣡��֧��2000G�ֽ�лл��" )
	Text( 18, "��ʼ����",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 18, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, GoTo, GoTo06X, GoTo06Y, GoTo06M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 19, "���͵��氮���ǰɣ�û���⣡��֧��2000G�ֽ�лл��" )
	Text( 19, "��ʼ����",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 19, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, GoTo, GoTo07X, GoTo07Y, GoTo07M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 20, "���͵����˵��ǰɣ�û���⣡��֧��2000G�ֽ�лл��" )
	Text( 20, "��ʼ����",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 20, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, GoTo, GoTo08X, GoTo08Y, GoTo08M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 21, "���͵��������ǰɣ�û���⣡��֧��2000G�ֽ�лл��" )
	Text( 21, "��ʼ����",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 21, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, IsMapNpc, "garner", 123 )
	TriggerAction( 1, SetSpawnPos, "������")
	TriggerCondition( 2, IsMapNpc, "garner", 124 )
	TriggerAction( 2, SetSpawnPos, "���絺")
	TriggerCondition( 3, IsMapNpc, "garner", 125 )
	TriggerAction( 3, SetSpawnPos, "�����")
	TriggerCondition( 4, IsMapNpc, "garner", 126 )
	TriggerAction( 4, SetSpawnPos, "ѩ����")
	TriggerCondition( 5, IsMapNpc, "magicsea", 69 )
	TriggerAction( 5, SetSpawnPos, "��ѩ��")
	TriggerCondition( 6, IsMapNpc, "magicsea", 70)
	TriggerAction( 6, SetSpawnPos, "��ɳ��")
	TriggerCondition( 7, IsMapNpc, "magicsea", 71 )
	TriggerAction( 7, SetSpawnPos, "�氮��")
	TriggerCondition( 8, IsMapNpc, "darkblue", 65 )
	TriggerAction( 8, SetSpawnPos, "���˵�")
	TriggerFailure( 8, JumpPage, 28 )
	Talk( 25, "Ҫ��¼������ô��" )
	Text( 25, "�ǵģ����¼��", MultiTrigger, GetMultiTrigger(), 8 )
	Text( 25, "����������",CloseTalk )

	Talk( 26, "�Բ��������ֽ��㣬�޷����͡�" )

	Talk( 27, "�´������Ҫ���ͷ���ǵ����Ұ���", CloseTalk )

	Talk( 28, "���ִ����޷���¼��Call Robin", CloseTalk )

	InitTrigger()
	TriggerCondition( 1, IsMapNpc, "garner", 123 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, IsMapNpc, "garner", 124 )
	TriggerAction( 2, JumpPage, 2 )
	TriggerCondition( 3, IsMapNpc, "garner", 125 )
	TriggerAction( 3, JumpPage, 3 )
	TriggerCondition( 4, IsMapNpc, "garner", 126 )
	TriggerAction( 4, JumpPage, 4 )
	TriggerCondition( 5, IsMapNpc, "magicsea", 69 )
	TriggerAction( 5, JumpPage, 5)
	TriggerCondition( 6, IsMapNpc, "magicsea", 70)
	TriggerAction( 6, JumpPage, 6 )
	TriggerCondition( 7, IsMapNpc, "magicsea", 71 )
	TriggerAction( 7, JumpPage, 7)
	TriggerCondition( 8, IsMapNpc, "darkblue", 65 )
	TriggerAction( 8, JumpPage, 8 )
	Start( GetMultiTrigger(), 8 )
end
