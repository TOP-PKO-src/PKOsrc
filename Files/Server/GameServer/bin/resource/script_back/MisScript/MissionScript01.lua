--------------------------------------------------------------------------
--									--
--									--
--MissionScript01.lua Created by Robin 2004.12.27.	--
--									--
--									--
--------------------------------------------------------------------------
print( "loading MissionScript01.lua" )

jp= JumpPage
amp=AutoMissionPage
ct=CloseTalk
am=AddMission
MissionCheck = HasFlag
mc=MissionCheck

----------------------------------------------------------
--							--
--							--
--		������[ҩ�����ˡ�����ķ]			--
--							--
--		224575,277025				--
----------------------------------------------------------
function RobinMission003()

-----------------------------------ҩƷ����ʺ�
	DefineMission( 707, "ҩƷ����ʺ�", 703, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>���ǳ���է���İɣ���ӭ��ӭ�����������ҩ�����˵�ķ��<n><t>�⼸��ƻ���͸��㣬��ѵ�Ŷ��<n><t>������Ҫ�ڻص�ɪ��2223,2785����ȥ����Ӧ�û�������µ�����<n><t>����ķ�����㼸����ƻ����������Դ���Ʒ�����н�����ק�����߿������ʹ�ã������������Ϸ��������·�������F1~F8����Щ�ո񡣣�")
	MisResultCondition(NoRecord, 703)
	MisResultCondition(HasMission, 703)
	MisResultCondition(NoFlag, 703, 10)
	MisResultCondition(HasFlag, 703, 1)
	MisResultCondition(HasItem, 3952, 1)
	MisResultAction(TakeItem, 3952, 1)
	MisResultAction(SetFlag, 703, 10)
	MisResultAction(GiveItem, 1847, 10, 4)
	MisResultBagNeed(1)

--------------------------Ҷ���ռ�
	DefineMission( 733, "Ҷ���ռ�", 721 )

	MisBeginTalk( "<t>Ŷ����Ҫ�����ռ�ҩ��ԭ�ϰ���̫���ˣ�������������Ҫ����Ҷ�ӣ��ֱ���10Ƭ<r��ήҶ��>��5Ƭ<r����Ҷ��>�����������һЩ���ɣ�����ľ���ݺ;��黨���Ͼ��У������׶��Ҷ���Ƚ���Ҫ��Щ���ϣ�" )
	MisBeginCondition(NoMission, 721)
	MisBeginCondition(LvCheck, ">", 4 )
	MisBeginCondition(LvCheck, "<", 7 )
	MisBeginAction(AddMission, 721)
	MisBeginAction(SetFlag, 721, 1)
	MisBeginAction(AddTrigger, 7211, TE_GETITEM, 1573, 10 )
	MisBeginAction(AddTrigger, 7212, TE_GETITEM, 1574, 3 )
	MisCancelAction(ClearMission, 721)

	MisNeed(MIS_NEED_ITEM, 1573, 10, 10, 10)
	MisNeed(MIS_NEED_ITEM, 1574, 3, 20, 3)

	MisPrize(MIS_PRIZE_MONEY, 100, 1)
	MisPrizeSelAll()
	
	MisResultTalk("<t>̫���ˣ��������ֿ��Լ��������ҵ�ҩ�����������ˡ�")
	MisHelpTalk("<t>��ô�ˣ���ЩҶ�ӻ�û�ռ�����")
	MisResultCondition(HasMission, 721)
	MisResultCondition(HasItem, 1573, 10 )
	MisResultCondition(HasItem, 1574, 3 )
	MisResultAction(TakeItem, 1573, 10 )
	MisResultAction(TakeItem, 1574, 3 )
	MisResultAction(AddExp, 40, 70)
	MisResultAction(ClearMission, 721)
		
	InitTrigger()
	TriggerCondition( 1, IsItem, 1573)	
	TriggerAction( 1, AddNextFlag, 721, 10, 10 )
	RegCurTrigger( 7211 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1574)	
	TriggerAction( 1, AddNextFlag, 721, 20, 3 )
	RegCurTrigger( 7212 )

--------------------------����䷽
	DefineMission( 738, "����䷽", 726 )

	MisBeginTalk( "<t>�����Һ�Ȼ�и��µ��䷽��У������ֵ��鷳���ٸ�����һЩԭ�����ˣ��ֱ���2��<r������>��2��<r����>��5��<r����ī֭>������Դ�ɭ�顢���黨��С���������ҵ���Щ�������ҵ����һ���㱨��ģ���ȥ�ɣ������������Ӷ�������䷽��ȫ�����ˣ����ɹ��Ļ�����Ҳû��������ָ���µ�������㣡" )
	MisBeginCondition(NoMission, 726)
	MisBeginCondition(LvCheck, ">", 6 )
	MisBeginCondition(LvCheck, "<", 8 )
	MisBeginAction(AddMission, 726)
	MisBeginAction(SetFlag, 726, 1)
	MisBeginAction(AddTrigger, 7261, TE_GETITEM, 1777, 2 )
	MisBeginAction(AddTrigger, 7262, TE_GETITEM, 1579, 2 )
	MisBeginAction(AddTrigger, 7263, TE_GETITEM, 1705, 5 )
	MisCancelAction(ClearMission, 726)

	MisNeed(MIS_NEED_ITEM, 1777, 2, 10, 2)
	MisNeed(MIS_NEED_ITEM, 1579, 2, 20, 2)
	MisNeed(MIS_NEED_ITEM, 1705, 5, 30, 5)

	MisPrize(MIS_PRIZE_MONEY, 200, 1)
	MisPrizeSelAll()
	
	MisResultTalk("<t>�ܺã��������ռ�������Щ�����������Ļ����ҵ���ҩ�䷽���ܽ��������ˣ�����ɹ��Ļ����Ժ��ҳ������ҩ�ͻ�����г��֡�")
	MisHelpTalk("<t>��ô�ˣ���û�ռ��룿ץ��ʱ�䣬���ҵ���л�û��ʧ����")
	MisResultCondition(HasMission, 726)
	MisResultCondition(HasItem, 1777, 2 )
	MisResultCondition(HasItem, 1579, 2 )
	MisResultCondition(HasItem, 1705, 5 )
	MisResultAction(TakeItem, 1777, 2 )
	MisResultAction(TakeItem, 1579, 2 )
	MisResultAction(TakeItem, 1705, 5 )
	MisResultAction(AddExp, 70, 95)
	MisResultAction(ClearMission, 726)
		
	InitTrigger()
	TriggerCondition( 1, IsItem, 1777)	
	TriggerAction( 1, AddNextFlag, 726, 10, 2 )
	RegCurTrigger( 7261 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1579)	
	TriggerAction( 1, AddNextFlag, 726, 20, 2 )
	RegCurTrigger( 7262 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1705)	
	TriggerAction( 1, AddNextFlag, 726, 30, 5 )
	RegCurTrigger( 7263 )

--------------------------Ģ��Ģ��
	DefineMission( 739, "Ģ��Ģ��", 727 )

	MisBeginTalk( "<t>˵������ǰЩʱ�����ڰ�����������һЩ<b���칽>�����æ�Ų����䷽�����鶼�����Ǹ����ˣ�����������Ҳ�����������ó���ʱ���ˣ��������ȥȡ�ռ�10��<r��Ģ��>��5��<rĢ��>�ɡ�<n><t>������˵������������칽���е��ף���û��Ǵ��ϵ�ظ�Ʒ�ȽϺá���������칽���ڣ�2220,2564����λ�ã���ȥ�����ɣ����ڿ����ջ�����ʱ�����������ˣ�" )
	MisBeginCondition(NoMission, 727)
	MisBeginCondition(LvCheck, ">", 7 )
	MisBeginCondition(LvCheck, "<", 9 )
	MisBeginAction(AddMission, 727)
	MisBeginAction(SetFlag, 727, 1)
	MisBeginAction(AddTrigger, 7271, TE_GETITEM, 3118, 5 )
	MisBeginAction(AddTrigger, 7272, TE_GETITEM, 1725, 10 )
	MisCancelAction(ClearMission, 727)

	MisNeed(MIS_NEED_ITEM, 3118, 5, 10, 5)
	MisNeed(MIS_NEED_ITEM, 1725, 10, 20, 10)

	MisPrize(MIS_PRIZE_MONEY, 300, 1)
	MisPrizeSelAll()
	
	MisResultTalk("<t>̫���ˣ��������ռ�������Щ������û���˰ɣ������������ˡ�")
	MisHelpTalk("<t>��ô�ˣ���û�ռ��룿�����Ǳ����칽����ܻ����˰ɣ�")
	MisResultCondition(HasMission, 727)
	MisResultCondition(HasItem, 3118, 5 )
	MisResultCondition(HasItem, 1725, 10 )
	MisResultAction(TakeItem, 3118, 5 )
	MisResultAction(TakeItem, 1725, 10 )
	MisResultAction(AddExp, 95, 125)
	MisResultAction(ClearMission, 727)
		
	InitTrigger()
	TriggerCondition( 1, IsItem, 3118)	
	TriggerAction( 1, AddNextFlag, 727, 10, 5 )
	RegCurTrigger( 7271 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1725)	
	TriggerAction( 1, AddNextFlag, 727, 20, 10 )
	RegCurTrigger( 7272 )


end
RobinMission003() --������������ʱ������øú���


----------------------------------------------------------
--							--
--							--
--		������[Сɽ��]				--
--							--
--		219350,273050				--
----------------------------------------------------------
function RobinMission004()

-----------------------------------����ָ��
	DefineMission( 748, "����ָ��", 736 )
	
	MisBeginTalk( "<t>������������ð���ߵ�����ô��ð���߾�����Ұ�����һ�������ܶ�Σ�գ����������ȥ��ð���ߵ�����֪ʶ����Ҫ��õ�<r����ָ��>�Ļ�������뵽<p������Ұ��>���5ֻ<b����ɭ��>�������棩��10ֻ<b������>�����ߣ��ռ�5��<b��Ѫ>���Ӳ�ԭ�����Ͽ���ȡ�ã�������<n><t>�������������Щ���ҽ�����ð��������Я����<b����ָ��>���㡣<n><t>����10���Ժ������ָ�������Ҿ�ְð���߰ɡ�" )
	MisBeginCondition(NoMission, 736)
	MisBeginCondition(LvCheck, ">", 8 )
	MisBeginCondition(PfEqual, 0 )
	MisBeginCondition(CheckConvertProfession, MIS_RISKER )
	MisBeginAction(AddMission, 736)
	MisBeginAction(SetFlag, 736, 1)
	MisBeginAction(AddTrigger, 7361, TE_KILL, 104, 5 )
	MisBeginAction(AddTrigger, 7362, TE_KILL, 39, 10 )
	MisBeginAction(AddTrigger, 7363, TE_GETITEM, 1844, 5 )
	MisCancelAction(ClearMission, 736)
	
	MisNeed(MIS_NEED_KILL, 104, 5, 10, 5)
	MisNeed(MIS_NEED_KILL, 39, 10, 20, 10)
	MisNeed(MIS_NEED_ITEM, 1844, 5, 30, 5)

	MisPrize(MIS_PRIZE_ITEM, 3962, 1, 4)
	MisPrizeSelAll()
	
	MisResultTalk("<t>���ѣ��������治��<n><t>��ͨ���ҵĲ����ˣ�������Ǿ�ְð��������Ҫ��<r����ָ��>�ˡ�<n><t>���պã��ȵ��ﵽ<pLv10>��ʱ����������Ҿ�ְð���ߡ�")
	MisHelpTalk("<t>�㻹û�дﵽ�ҵ�Ҫ��Ŷ��ð���ߵ�����ָ�Ͽɲ��������ܻ�õġ�")
	MisResultCondition(HasMission, 736)
	MisResultCondition(HasFlag, 736, 14 )
	MisResultCondition(HasFlag, 736, 29 )
	MisResultCondition(HasItem, 1844, 5 )
	MisResultAction(TakeItem, 1844, 5)
	MisResultAction(ClearMission, 736)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 104 )	
	TriggerAction( 1, AddNextFlag, 736, 10, 5 )
	RegCurTrigger( 7361 )

	InitTrigger()
	TriggerCondition( 1, IsMonster, 39 )	
	TriggerAction( 1, AddNextFlag, 736, 20, 10 )
	RegCurTrigger( 7362 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1844 )	
	TriggerAction( 1, AddNextFlag, 736, 30, 5 )
	RegCurTrigger( 7363 )


-----------------------------------����ʿתְ����
	DefineMission( 758, "����ʿתְ����", 742 )
	
	MisBeginTalk( "<t>��Ȼ�����Ϊ<b����ʿ>����ô�ͱ���úõ��ڴ�������һ����<n><t>�������ں���ʱ�ͽ�ʶ��һЩ�����ѣ����������Ѿ���������ͨ��ˮ���ˣ����ڶ��ں��ϸ��ص���ͷ��ְ��<n><t>��������Щ�ţ������Щ�Ž������ǣ����Ǿͻ�֪���������Ƽ��ģ�һ����������ۿ����ġ�<n><t>��Щ�˷ֱ���<p���絺>��<b������>��<p�����>��<b��ɪ��>��<pѩ����>��<b�ʾ�������>��<p��������վ>��<b������>��" )
	MisBeginCondition(NoRecord, 742)
	MisBeginCondition(NoMission, 742)
	MisBeginCondition(LvCheck, ">", 39 )
	MisBeginCondition(PfEqual, 4 )
	MisBeginCondition(CheckConvertProfession, MIS_VOYAGE )
	MisBeginAction(AddMission, 742)
	MisCancelAction(ClearMission, 742)

	MisNeed(MIS_NEED_DESP, "�Ҳ�����(3254,3278)����")
	MisNeed(MIS_NEED_DESP, "����ɪ��(2279,1112)����")
	MisNeed(MIS_NEED_DESP, "�ҷʾ�������(3595,739)����")
	MisNeed(MIS_NEED_DESP, "��������(3097,3530)����")
	
	MisResultTalk("<t>Ŷ��������ˣ���γ����ջ�ܴ�ɣ�<n><t>��ϲ�㣬�������Ѿ���Ϊһ���ϸ��<b����ʿ>�ˣ�����ȥ�ɣ��������������Ȥ�ľ��Ǻ����ˣ�������ʱ�������Ұɣ��һᾡ��������ġ�")
	MisHelpTalk("<t>ȥ�ɣ��ѵ��㻹û�����󺣵��ٻ���")
	MisResultCondition(HasMission, 742)
	MisResultCondition(HasFlag, 742, 20 )
	MisResultCondition(HasFlag, 742, 30 )
	MisResultCondition(HasFlag, 742, 40 )
	MisResultCondition(HasFlag, 742, 50 )
	MisResultAction(ClearMission, 742)
	MisResultAction(SetRecord, 742)
	MisResultAction(SetProfession, 16)



-----------------------------------����ʿתְ����
	DefineMission( 760, "����ʿתְ����", 742, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>�Ǻǣ����뵱����ʿ������ҪŬ��Ŷ�����ְҵ���Ǻ���ǰ;�ģ�")
	MisResultCondition(NoRecord, 742)
	MisResultCondition(HasMission, 742)
	MisResultCondition(NoFlag, 742, 20)
	MisResultAction(SetFlag, 742, 20)


-----------------------------------����ʿתְ����
	DefineMission( 761, "����ʿתְ����", 742, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>�ߣ�Сɽ����һ���ڲ�������������")
	MisResultCondition(NoRecord, 742)
	MisResultCondition(HasMission, 742)
	MisResultCondition(NoFlag, 742, 30)
	MisResultAction(SetFlag, 742, 30)

-----------------------------------����ʿתְ����
	DefineMission( 762, "����ʿתְ����", 742, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>Ŷ���º���ʿ������ӭ��<n><t>���ˣ�����Сɽ�������˸���˵����������50000�𣬶�5���ˣ��û��ˡ�")
	MisResultCondition(NoRecord, 742)
	MisResultCondition(HasMission, 742)
	MisResultCondition(NoFlag, 742, 40)
	MisResultAction(SetFlag, 742, 40)

-----------------------------------����ʿתְ����
	DefineMission( 763, "����ʿתְ����", 742, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>����Σ�����أ��Ժ�����Ҫ��ʱ�򾡹�˵������Сɽ��Ҳ�����Һܶ�����ġ�")
	MisResultCondition(NoRecord, 742)
	MisResultCondition(HasMission, 742)
	MisResultCondition(NoFlag, 742, 50)
	MisResultAction(SetFlag, 742, 50)

end
RobinMission004()


----------------------------------------------------------
--							--
--							--
--		������[С���]				--
--							--
--		224575,277025				--
----------------------------------------------------------
function RobinMission007()

-----------------------------------�������ʺ�
	DefineMission( 703, "�������ʺ�", 701, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>���������İɣ��ҽ�С����ǰ����ǵ���������Ҫ����һЩ��ʿ��������<n><t>��Ȼ������Ůɪ�����Ƽ��ţ���һ�����չ���ģ�<n><t>���ȥ�ɱ�����ɪ��˵���Ҷ��ǿ���������Ŷ���۹�������<n><t>������Ҫ�ڻص�ɪ��2223,2785����ȥ����Ӧ�û��������������ˡ�<n><t>��С���������һ�ѡ�����С����������Դ���Ʒ�����н���װ�������ֲ�λ���������alt+E�����򿪱�����Ҳ���Ե�������·���ɫ��������İ�ť�򿪣�")
	MisResultCondition(NoRecord, 701)
	MisResultCondition(HasMission, 701)
	MisResultCondition(NoFlag, 701, 10)
	MisResultCondition(HasItem, 3950, 1)
	MisResultAction(TakeItem, 3950, 1)
	MisResultAction(SetFlag, 701, 10)
	MisResultBagNeed(1)
	

end
RobinMission007()


----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[����١��ʵ�ά��]			--
--							--
--		239185,277025				--
----------------------------------------------------------
function RobinMission017()

-----------------------------------�ϵ���
	DefineMission( 719, "�ϵ���", 711 )
	
	MisBeginTalk( "<t>��������ȡ�ϵ��ĵ�ô������ͷ�뿿ҩʦ׬Ǯ���˺ܶ࣬���������֤�������ʸ���ҩʦ���ʸ�<n><t>�ҲŻᷢ����<r�ϵ���>��<n><t>������ȥ�ϳ�1��<r�����֭>�����2Ƭ<rҩ�ò�Ҷ>���ҡ�<n><t>��Ϊҩʦ�Ǹ���ս���;������˵�ְҵ�����ԶԻظ�Ʒһ��Ҫ���㹻���˽⡣<n><t>�����ȥ��<pɳᰳ�>��<b���ߵ�����ŷ��>�˽���ֺϳ�Ҫ��<n><t>�����һ���Ҫ�����������������ȥ<r1184,3557>����ɱ10ֻ<b��Ы��>�ɣ��������������Щ���ҽ��Կ���Ů�������͸���<r�ϵ���>��" )
	MisBeginCondition(NoMission, 711)
	MisBeginCondition(LvCheck, ">", 8 )
	MisBeginCondition(CheckConvertProfession, MIS_DOCTOR )
	MisBeginAction(AddMission, 711)
	MisBeginAction(SetFlag, 711, 1)
	MisBeginAction(AddTrigger, 7111, TE_GETITEM, 3122, 1 )
	MisBeginAction(AddTrigger, 7112, TE_GETITEM, 3129, 2 )
	MisBeginAction(AddTrigger, 7113, TE_KILL, 247, 10 )
	MisCancelAction(ClearMission, 711)

	MisNeed(MIS_NEED_ITEM, 3122, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 3129, 2, 20, 2)
	MisNeed(MIS_NEED_KILL, 247, 10, 30, 10)

	MisPrize(MIS_PRIZE_ITEM, 3954, 1, 4)
	MisPrizeSelAll()
	
	MisResultTalk("<t>���ѣ��������治��<n><t>��ͨ���ҵĲ����ˣ�������Ǿ�ְҩʦ����Ҫ��<r�ϵ���>�ˡ�<n><t>���պã��ȵ��ﵽ<pLv10>��ʱ����������Ҿ�ְҩʦ��")
	MisHelpTalk("<t>�㻹û�дﵽ�ҵ�Ҫ��Ŷ��ҩʦ���ʸ�ɲ���˭���ܻ�õġ�")
	MisResultCondition(HasMission, 711)
	MisResultCondition(HasItem, 3122, 1 )
	MisResultCondition(HasItem, 3129, 2 )
	MisResultCondition(HasFlag, 711, 39 )
	MisResultAction(TakeItem, 3122, 1 )
	MisResultAction(TakeItem, 3129, 2 )
	MisResultAction(ClearMission, 711)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 3122 )	
	TriggerAction( 1, AddNextFlag, 711, 10, 1 )
	RegCurTrigger( 7111 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3129 )	
	TriggerAction( 1, AddNextFlag, 711, 20, 2 )
	RegCurTrigger( 7112 )

	InitTrigger()
	TriggerCondition( 1, IsMonster, 247 )	
	TriggerAction( 1, AddNextFlag, 711, 30, 10 )
	RegCurTrigger( 7113 )

-----------------------------------ʥְ��תְ����
	DefineMission( 751, "ʥְ��תְ����", 739 )
	
	MisBeginTalk( "<t>��Ҫ��Ϊһ���ϸ��<bʥְ��>���������һ�����׵��ģ���ϣ�����ܹ�ʱ�̼ǵ���仰��<n><t>�Ҹ����תְ���˺ܼ򵥡�<n><t>�ҵ�2Ƭ<y�λû���>��4ƿ<y����ҩ>������������6ƿ<y�����֭>��Ȼ��ֱ������͸���������վ��<b����������>�Ϳ����ӵ²���վ���<b����ҽ������������>��<n><t>ÿ�˸���3ƿ�����֭��2ƿ����ҩ��1Ƭ�λû��ꡣ" )
	MisBeginCondition(NoRecord, 739)
	MisBeginCondition(NoMission, 740)
	MisBeginCondition(NoMission, 739)
	MisBeginCondition(LvCheck, ">", 39 )
	MisBeginCondition(PfEqual, 5 )
	MisBeginCondition(CheckConvertProfession, MIS_CLERGY )
	MisBeginAction(AddMission, 739)
	MisCancelAction(ClearMission, 739)

	MisNeed(MIS_NEED_DESP, "����������վ��<b����������>��795,363��3ƿ�����֭��2ƿ����ҩ��1Ƭ�λû���")
	MisNeed(MIS_NEED_DESP, "�������ӵ²���վ��<b����ҽ������������>��630,2091��3ƿ�����֭��2ƿ����ҩ��1Ƭ�λû���")
	
	MisResultTalk("<t>��ϲ�㣡<n><t>�����ھ��Ѿ���Ϊһ���ϸ��<bʥְ��>�ˣ�<n><t>ԸŮ����ף���㡣")
	MisHelpTalk("<t>��ʲôԭ������ĽŲ�ͣ�Ͳ�ǰ����ס�����ͺ�̽�����������Ϸ���֮·�ĵ�һ����")
	MisResultCondition(HasMission, 739)
	MisResultCondition(HasFlag, 739, 10 )
	MisResultCondition(HasFlag, 739, 20 )
	MisResultAction(ClearMission, 739)
	MisResultAction(SetRecord, 739)
	MisResultAction(SetProfession, 13)
	
-----------------------------------ʥְ��תְ����
	DefineMission( 752, "ʥְ��תְ����", 739, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("�ޣ�������͸��ҵ�������̫лл���ˣ������Ǹ����ĵ��ˣ��һ��������������µ�")
	MisResultCondition(NoRecord, 739)
	MisResultCondition(HasMission, 739)
	MisResultCondition(NoFlag, 739, 10)
	MisResultCondition(HasItem, 3122, 3)
	MisResultCondition(HasItem, 3146, 2)
	MisResultCondition(HasItem, 3130, 1)
	MisResultAction(TakeItem, 3122, 3)
	MisResultAction(TakeItem, 3146, 2)
	MisResultAction(TakeItem, 3130, 1)
	MisResultAction(SetFlag, 739, 10)

-----------------------------------ʥְ��תְ����
	DefineMission( 753, "ʥְ��תְ����", 739, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("�š��Ǵ������������İɣ�����������ȱ����Щҩ�ģ��������漰ʱ���һ��������������µ�")
	MisResultCondition(NoRecord, 739)
	MisResultCondition(HasMission, 739)
	MisResultCondition(NoFlag, 739, 20)
	MisResultCondition(HasItem, 3122, 3)
	MisResultCondition(HasItem, 3146, 2)
	MisResultCondition(HasItem, 3130, 1)
	MisResultAction(TakeItem, 3122, 3)
	MisResultAction(TakeItem, 3146, 2)
	MisResultAction(TakeItem, 3130, 1)
	MisResultAction(SetFlag, 739, 20)



-----------------------------------��ӡʦתְ����
	DefineMission( 755, "��ӡʦתְ����", 740 )
	
	MisBeginTalk( "<t>��Ҫ��Ϊ<b��ӡʦ>����ô������ס������������ӵ�гͷ������������־ͱ���׼���þ����������<n><t>Ϊ�˿��������������ϣ����ȥ����ô�����£�<n><t>�õ�3��<r����>���ϵ�<yɽ������>��10��<r���д���>���ϵ�<yΣ�յ���צ>�������Ҫ3��<rѩ��>��<y����֮��>��<n><t>����Щ�ø�<pɳ᰾ɳ�>��<bʥŮ������>��������<y����֮��>����������Ʒ��<n><t>���г���<r���д���>�����ȥ<p���ɴ�½>��ɭ����Ѱ���⣬�����������㶼������<p���Ǳ�>���ڵı�ԭ���ҵ���" )
	MisBeginCondition(NoRecord, 740)
	MisBeginCondition(NoMission, 740)
	MisBeginCondition(NoMission, 739)
	MisBeginCondition(LvCheck, ">", 39 )
	MisBeginCondition(PfEqual, 5 )
	MisBeginCondition(CheckConvertProfession, MIS_SEALER )
	MisBeginAction(AddMission, 740)
	MisCancelAction(ClearMission, 740)

	MisNeed(MIS_NEED_DESP, "�����������3����Ʒ<y����֮��>�ø�<pɳ᰾ɳ�>��<bʥŮ������>��862,3303����������<y����֮��>������")
	
	MisResultTalk("<t>��ϲ�㣡<n><t>�����ھ��Ѿ���Ϊһ���ϸ��<b��ӡʦ>�ˣ�<n><t>ԸŮ����ף���㡣")
	MisHelpTalk("<t>ȥ�ɣ��������ϵ�ҽ�ߣ�ҲҪӵ���¸ҵľ��ĺͲ������ӵ���־��")
	MisResultCondition(HasMission, 740)
	MisResultCondition(HasFlag, 740, 10 )
	MisResultAction(ClearMission, 740)
	MisResultAction(SetRecord, 740)
	MisResultAction(SetProfession, 14)

-----------------------------------��ӡʦתְ����
	DefineMission( 756, "��ӡʦתְ����", 740, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>ԸŮ����ף���㡣<n><t>Ŷ�����������Щ��Ҫ��������Ʒ���ܺã��һ��������ϵ���������Ȼ�����Ǿͻᱻ�ҹ�����Ů�������С�<n><t>����Իص�ɳᰳ��еĴ��������ȥ�ˣ��һ���ϲ��һ���ˣ������ܾ����ĸ���Ů���ּ�⡣<n><t>ԸŮ����ף���㡣")
	MisResultCondition(NoRecord, 740)
	MisResultCondition(HasMission, 740)
	MisResultCondition(NoFlag, 740, 10)
	MisResultCondition(HasItem, 4471, 3)
	MisResultCondition(HasItem, 4385, 10)
	MisResultCondition(HasItem, 4481, 3)
	MisResultAction(TakeItem, 4471, 3)
	MisResultAction(TakeItem, 4385, 10)
	MisResultAction(TakeItem, 4481, 3)
	MisResultAction(SetFlag, 740, 10)


end
RobinMission017()

----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[������ͭͭ��]			--
--							--
--		239185,277025				--
----------------------------------------------------------
function RobinMission022()

---------------------------------------����������С��
	DefineMission( 713, "�������ʺ�", 707, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("Ŷ��<n><t>��˿�����������������������İɣ��ҽ�ͭͭ�ģ���ɳᰳǵ������������������Ե���������Ŷ���ұ��������㡣<n><t>������Ҫ�ڻص���˿��876,3572����ȥ����Ӧ�û��������������ˡ�<n><t>��ͭͭ��������һ�ѡ�����С����������Դ���Ʒ�����н���װ�������ֲ�λ��<n><t>�������alt+E�����򿪱�����Ҳ���Ե�������·���ɫ��������İ�ť�򿪣�")
	MisResultCondition(NoRecord, 707)
	MisResultCondition(HasMission, 707)
	MisResultCondition(NoFlag, 707, 10)
	MisResultCondition(HasItem, 3956, 1)
	MisResultAction(TakeItem, 3956, 1)
	MisResultAction(SetFlag, 707, 10)
	MisResultBagNeed(1)

end
RobinMission022()

----------------------------------------------------------
--							--
--							--
--		������[����ָ����ɪ��]			--
--							--
--		239185,277025				--
----------------------------------------------------------
function RobinMission024()

-----------------------------------���˱���
	DefineMission( 701, "���˱���", 1, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
	
	MisResultTalk("<t>��ӭ���ĵ�����<n><t>�����Դ������˽⵽����ְҵ�����Լӵ�����顣<n><t>���⣬�ҽ������������<p������>���Ϻõ�������<n><t>Ŷ�������������ˣ�����Ե�������·���ɫ��ť����ݼ�alt+A����������Խ���������������ԣ�ÿ�������㶼���Ի�����Ե㣬����Խ���Щ���Ե㰴�����Ҫ���䵽��ͬ�����ϡ�<n><t>����5�����Կ����������ֱ��ǣ����������������������������������ݣ������������������Ļر��ʣ�רע���������������������ʺ�Զ�������Ĺ����������񣬿���������������SP�����ֵ�ͷ����Լ��ܵĹ����������ʣ������������������������ֵ��HP����")
	MisHelpTalk("<t>���ѣ������������Ψһ������ָ����<n><t>������������˽�������磬����û�а취����������ȥŶ��")
	MisResultCondition(NoRecord, 1)
	MisResultCondition(HasMission, 1)
	--MisResultCondition(HasFlag, 700, 10)
	--MisResultCondition(HasFlag, 700, 20)
	MisResultAction(ClearMission, 1)
	MisResultAction(SetRecord, 1)
	MisResultAction(AddExp, 6, 6)
	
	--Add by lark.li
	MisResultAction(GiveNpcMission, 702, "����ָ����ɪ��", 2)

-----------------------------------�������ʺ�
	DefineMission( 702, "�������ʺ�", 701 )
	
	MisBeginTalk( "<t>�����������ǿʳ��������������ֿ�ȭ���ǲ���Ŷ��<n><t>��������Ƽ��Ž���<p������><b����С���>��2193,2706�������Ŷ�����а����ġ�<n><t>��ʹ�û������ϽǷ���ͼ�µ��״￪�أ������Ǹ����µļ�ͷ�������״������Ӧ�����꣬�Ϳ��Ը��ż�ͷ��ָʾ���ˣ�" )
	MisBeginCondition(HasRecord, 1)
	MisBeginCondition(NoRecord, 701)
	MisBeginCondition(NoMission, 701)
	MisBeginAction(AddMission, 701)
	MisBeginAction(SetFlag, 701, 1)
	MisBeginAction(GiveItem, 3950, 1, 4)
	MisCancelAction(ClearMission, 701 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "���Ž���<p������><b������С���>��2193,2706����֮����ȥ������ָ��Աɪ����2223,2785��")
		
	MisResultTalk("<t>���Ѿ�����<bС���>���������Ժ�׬��Ǯ������ȥ����������õ�����Ŷ��")
	MisHelpTalk("<t>�ǵð������ֽ���С���Ŷ�����ڰ��������Ͻǣ�������2193,2706��<n><t>�����ͨ�������״���������")
	MisResultCondition(NoRecord, 701)
	MisResultCondition(HasMission, 701)
	MisResultCondition(HasFlag, 701, 10)
	MisResultAction(ClearMission, 701)
	MisResultAction(SetRecord, 701)
	MisResultAction(AddExp, 9, 9 )

	--Add by lark.li
	MisResultAction(GiveNpcMission, 704, "����ָ����ɪ��", 3)

-----------------------------------��װ����ʺ�
	DefineMission( 704, "��װ����ʺ�", 702 )
	
	MisBeginTalk( "<t>�����ǵڶ����Ƽ��ţ������뽻��<p������><b��װ������������>�����꣺2266,2705����˳��ݷ�һ����λ�Ͱ������ˣ��Ժ���Ҳ���������ġ�" )
	MisBeginCondition(HasRecord, 701)
	MisBeginCondition(NoRecord, 702)
	MisBeginCondition(NoMission, 702)
	MisBeginAction(AddMission, 702)
	MisBeginAction(SetFlag, 702, 1)
	MisBeginAction(GiveItem, 3951, 1, 4)
	MisCancelAction(SystemNotice, "�������޷��ж�" )
	--MisCancelAction(ClearMission, 702 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "���Ž���<p������><b��װ��������������>�����꣺2267,2704����֮����ȥ������ָ��Աɪ����2223,2785��")
		
	MisResultTalk("<t>Ŷ��<b��������>�ر�Ϊ�㶨����һ�������𣿿���ȥͦ������ޣ�Ҫ�ú���ϧŶ��")
	MisHelpTalk("<t>ȥ�������������������ڰ������Ϸ���������2267,2704�������ͨ�������״����ҵ�����")
	MisResultCondition(NoRecord, 702)
	MisResultCondition(HasMission, 702)
	MisResultCondition(HasFlag, 702, 10)
	MisResultAction(ClearMission, 702)
	MisResultAction(SetRecord, 702)
	MisResultAction(AddExp, 21, 21 )

-----------------------------------ҩƷ����ʺ�
	DefineMission( 706, "ҩƷ����ʺ�", 703 )
	
	MisBeginTalk( "<t>���ڣ����������һ���Ƽ��ţ����Ž���<p������><bҩ�����ˡ���ķ>�����꣺2250,2770�������ſ��Եõ�����İ�����" )
	MisBeginCondition(HasRecord, 702)
	MisBeginCondition(NoRecord, 703)
	MisBeginCondition(NoMission, 703)
	MisBeginAction(AddMission, 703)
	MisBeginAction(SetFlag, 703, 1)
	MisBeginAction(GiveItem, 3952, 1, 4)
	MisCancelAction(SystemNotice, "�������޷��ж�" )
	--MisCancelAction(ClearMission, 703 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "���Ž���<p������><bҩ�����ˡ���ķ>�����꣺2250,2770����֮����ȥ������ָ��Աɪ����2223,2785��")
		
	MisResultTalk("<t>Ŷ����Щ��<b��ķ>�����<rƻ��>��.���<rƻ��>�����кô������������Իָ�������HP��")
	MisHelpTalk("<t>��ķ�ڰ�����ˮ�ص��ұߣ�����������2250,2770�������ͨ�������״����ҵ�����")
	MisResultCondition(NoRecord, 703)
	MisResultCondition(HasMission, 703)
	MisResultCondition(HasFlag, 703, 10)
	MisResultAction(ClearMission, 703)
	MisResultAction(SetRecord, 703)
	MisResultAction(AddExp, 66, 66 )


-----------------------------------ս������
	DefineMission( 708, "ս��ѵ��", 704 )
	
	MisBeginTalk( "<t>���������������װ���Ѿ���ȫ�ˣ��Ǿͳ���ȥ����һ��ս����Ϊ�Ҷ������Ŀ��˰ɣ���Ȼ������̫Զ�ˡ�<n><t>����������߾��ܳ����ˡ�<n><t>���5��ɭ�飬�ٸ��Ҵ���1Ƭ�����С�<n><t>ɭ���ڳ��ſھ����ҵ�����������ɭ�����ϵõ�����ɺ��һ���㲻��Ľ�����<n><t>��ֻҪ��������ֱ�ӵ������Ҫ������Ŀ��Ϳɽ���ս����ע�⣬���������޷�ս����Ŷ��ʰȡ���ߵĻ���ʹ���������������Ȼ�������ʹ��ctrl+A��������ʰȡ����" )
	MisBeginCondition(HasRecord, 703)
	MisBeginCondition(NoRecord, 704)
	MisBeginCondition(NoMission, 704)
	MisBeginCondition(LvCheck, ">", 4 )
	MisBeginCondition(LvCheck, "<", 10 )
	MisBeginAction(AddMission, 704)
	MisBeginAction(SetFlag, 704, 1)
	MisBeginAction(AddTrigger, 7041, TE_GETITEM, 1620, 1 )
	MisBeginAction(AddTrigger, 7042, TE_KILL, 103, 5 )
	MisCancelAction(ClearMission, 704)

	MisNeed(MIS_NEED_ITEM, 1620, 1, 10, 1)
	MisNeed(MIS_NEED_KILL, 103, 5, 20, 5)
	
	MisPrize(MIS_PRIZE_MONEY, 100, 1)
	MisPrizeSelAll()
	
	MisResultTalk("<t>�ܺã����Ѿ�������һЩ������ս�����ռ����ߵķ����ˣ����Ѿ�û��ʲô�ý�����ˡ�<n><t>�������������ѿ����Ƽ���ȥ�����ǣ���һ���һ��<b���˹>�����ǰ����ǵ�Ѳ�߱��������Ҳ����һ��ϲ��ս���Ļ���ȥ�������ɣ����ڣ�2065,2732��λ�ã��Ӱ�������߳�ȥ��ֱ�ߣ��Ϳ��Կ������ˡ�<n><t>��һλ�����ǰ�����������ҩ������<b��ķ>������ϲ���ռ�һЩ�����ݲݵĶ����ˣ���������������˰�æ�ռ�ҩ��ʲô�ģ���������Ȥ�Ļ���ȥ��2250,2770��������Ҳ��������ˮ�ص��ұ�����<n><t>ף����ˣ�")
	MisHelpTalk("<t>���ż���������5��<bɭ��>���ҵ�1Ƭ<r���>�������ҡ�")
	MisResultCondition(NoRecord, 704)
	MisResultCondition(HasMission, 704)
	MisResultCondition(HasItem, 1620, 1)
	MisResultCondition(HasFlag, 704, 24)
	MisResultAction(TakeItem, 1620, 1)
	MisResultAction(ClearMission, 704)
	MisResultAction(SetRecord, 704)
	MisResultAction(AddExp, 75, 75 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1620 )	
	TriggerAction( 1, AddNextFlag, 704, 10, 1 )
	RegCurTrigger( 7041 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 103 )	
	TriggerAction( 1, AddNextFlag, 704, 20, 5 )
	RegCurTrigger( 7042 )

	
end
RobinMission024()


----------------------------------------------------------
--							--
--							--
--		������[��װ��������������]			--
--							--
--		239185,277025				--
----------------------------------------------------------
function RobinMission025()

-----------------------------------��װ����ʺ�
	DefineMission( 705, "��װ����ʺ�", 702, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>��ǰû�������أ���Ȥ�ĺ��ӡ�<n><t>��ӭ������������<n><t>���Ƿ�װ�����������š�<n><t>��Ȼɪ���������Ƽ��ţ��Ҿ�ר��Ϊ�㶨��һ���������װɣ��Ժ�ҲҪ�����ޣ����Ժ��������졣<n><t>������Ҫ�ڻص�ɪ��2223,2785����ȥ����Ӧ�û��������������ˡ�����������������һ�����������ס�������Դ���Ʒ�����н���װ�������ײ�λ����")
	MisResultCondition(NoRecord, 702)
	MisResultCondition(HasMission, 702)
	MisResultCondition(NoFlag, 702, 10)
	MisResultCondition(HasFlag, 702, 1)
	MisResultCondition(HasItem, 3951, 1)
	MisResultAction(TakeItem, 3951, 1)
	MisResultAction(SetFlag, 702, 10)
	MisResultAction(GiveItem, 465, 1, 4)
	MisResultBagNeed(1)
	
end
RobinMission025()

----------------------------------------------------------
--							--
--							--
--		������[����������]			--
--							--
--		239185,277025				--
----------------------------------------------------------
function RobinMission026()

-----------------------------------����֤��
	DefineMission( 709, "����֤��", 705 )
	
	MisBeginTalk( "<t>����������ȡ����֤���ô�����е�ʶѽ��<n><t>�������е�ʶ������������ȡ<r����֤��>�㻹����֤���Լ����㹻��������ʵ����<n><t>������ȥ<p������Ұ��>���10ֻ<b����ɽ��>��2057,2638����10ֻ<b��ˮ��>�����溣�ߣ���10ֻ<b������>��1950,2563��������<n><t>�������������Щ���ҽ��������Ǹ��ϸ��սʿ���䷢<b����֤��>���㡣" )
	MisBeginCondition(NoMission, 705)
	MisBeginCondition(LvCheck, ">", 8 )
	MisBeginCondition(PfEqual, 0 )
	MisBeginCondition(CheckConvertProfession, MIS_FENCER )
	MisBeginAction(AddMission, 705)
	MisBeginAction(SetFlag, 705, 1)
	MisBeginAction(AddTrigger, 7051, TE_KILL, 237, 10 )
	MisBeginAction(AddTrigger, 7052, TE_KILL, 213, 10 )
	MisBeginAction(AddTrigger, 7053, TE_KILL, 125, 10 )
	MisCancelAction(ClearMission, 705)
	
	MisNeed(MIS_NEED_KILL, 237, 10, 10, 10)
	MisNeed(MIS_NEED_KILL, 213, 10, 20, 10)
	MisNeed(MIS_NEED_KILL, 125, 10, 30, 10)

	MisPrize(MIS_PRIZE_ITEM, 3953, 1, 4)
	MisPrizeSelAll()
	
	MisResultTalk("<t>���ѣ��������治��<n><t>��ͨ���ҵĲ����ˣ�������Ǿ�ְ��ʿ����Ҫ��<r����֤��>�ˡ�<n><t>���պã��ȵ��ﵽ<pLv10>��ʱ����������Ҿ�ְ��ʿ��")
	MisHelpTalk("<t>�㻹û�дﵽ�ҵ�Ҫ��Ŷ��սʿ���ʸ�ɲ��������ܻ�õġ�")
	MisResultCondition(HasMission, 705)
	MisResultCondition(HasFlag, 705, 19 )
	MisResultCondition(HasFlag, 705, 29 )
	MisResultCondition(HasFlag, 705, 39 )
	MisResultAction(ClearMission, 705)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 237 )	
	TriggerAction( 1, AddNextFlag, 705, 10, 10 )
	RegCurTrigger( 7051 )

	InitTrigger()
	TriggerCondition( 1, IsMonster, 213 )	
	TriggerAction( 1, AddNextFlag, 705, 20, 10 )
	RegCurTrigger( 7052 )

	InitTrigger()
	TriggerCondition( 1, IsMonster, 125 )	
	TriggerAction( 1, AddNextFlag, 705, 30, 10 )
	RegCurTrigger( 7053 )
	

-----------------------------------˫��ʿתְ����
	DefineMission( 749, "˫��ʿתְ����", 737 )
	
	MisBeginTalk( "<t>�ţ��������Ѿ���һ��׿Խ�Ľ�ʿ�ˣ���Ȼ����Ҫ��Ϊ��ǿ�����ߣ�תְ��<b˫��ʿ>�Ļ�������Ҫ�������˵ģ���Ȼ���Ҿ�����Ŀ��١�<n><t>�ڼ��ɴ�½�������<p���ò���վ>�Ϸ���ɭ���������һЩ<r��Ƥ����>������������ȡ��5��<y����������Ƥ>��Ȼ��<ǰ�����Ǳ����ߵ�<p����Ӫ�ز���վ>�����10��<r������ʿ>��Ȼ���ҵ�3��<y��ʿ֤֮>��<n><t>���ȥ��һ��<y����>������������ˡ�" )
	MisBeginCondition(NoRecord, 737)
	MisBeginCondition(NoMission, 737)
	MisBeginCondition(LvCheck, ">", 39 )
	MisBeginCondition(PfEqual, 1 )
	MisBeginCondition(CheckConvertProfession, MIS_TWO_FENCER )
	MisBeginAction(AddMission, 737)
	MisBeginAction(AddTrigger, 7372, TE_KILL, 268, 10 )
	MisBeginAction(AddTrigger, 7373, TE_GETITEM, 4474, 5 )
	MisBeginAction(AddTrigger, 7374, TE_GETITEM, 4456, 3 )
	MisBeginAction(AddTrigger, 7375, TE_GETITEM, 295, 1 )
	MisCancelAction(ClearMission, 737)
	
	MisNeed(MIS_NEED_KILL, 268, 10, 20, 10)
	MisNeed(MIS_NEED_ITEM, 4474, 5, 30, 5)
	MisNeed(MIS_NEED_ITEM, 4456, 3, 40, 3)
	MisNeed(MIS_NEED_ITEM, 295, 1, 50, 1)
	
	MisResultTalk("<t>��ϲ�㣡<n><t>�����ھ��Ѿ���Ϊһ���ϸ��<b˫��ʿ>�ˣ�<n><t>����и��Ͼ���ս���ڵȴ����㡣")
	MisHelpTalk("<t>��Ȼתְ��Ҫ�����˵㣬������������һ�����԰쵽�ġ�")
	MisResultCondition(HasMission, 737)
	MisResultCondition(HasFlag, 737, 29 )
	MisResultCondition(HasItem, 4474, 5 )
	MisResultCondition(HasItem, 4456, 3 )
	MisResultCondition(HasItem, 295, 1 )
	MisResultAction(TakeItem, 4474, 5)
	MisResultAction(TakeItem, 4456, 3)
	MisResultAction(TakeItem, 295, 1)
	MisResultAction(ClearMission, 737)
	MisResultAction(SetRecord, 737)
	MisResultAction(SetProfession, 9)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 268 )	
	TriggerAction( 1, AddNextFlag, 737, 20, 10 )
	RegCurTrigger( 7372 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4474 )	
	TriggerAction( 1, AddNextFlag, 737, 30, 5 )
	RegCurTrigger( 7373 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4456 )	
	TriggerAction( 1, AddNextFlag, 737, 30, 3 )
	RegCurTrigger( 7374 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 295 )	
	TriggerAction( 1, AddNextFlag, 737, 30, 1 )
	RegCurTrigger( 7375 )

-----------------------------------�޽�ʿתְ����
	DefineMission( 750, "�޽�ʿתְ����", 738 )
	
	MisBeginTalk( "<t>��Ҫתְ��<b�޽�ʿ>���ܺã�<n><t>���ǣ�������Ӧ��ӵ�����漸��������Ȼ���������ң�<n><t>������Ӧ�����������ľ޽�ʿ��������ȥ��һ��<yʮ�ֽ�>���ٴ�����<r��������>��<y��������>��5��<r������>��<y�������>5����<r>���ϵ�<y��̵�ʯͷ>5����<n><t>��������֤������ȷʵ�г�Ϊ�޽�ʿ��������Ҳ���ҿ����������Ϊ�޽�ʿ�ĳ��⡣<n><t>����<r��������>�������<p�Ͽ�>��ȥ���ң�<r��ʯ��>����<p����ɭ��>����Ǽ�������ͱ��뵽�����ı��Ǳ�ȥ�����ˡ�" )
	MisBeginCondition(NoRecord, 738)
	MisBeginCondition(NoMission, 738)
	MisBeginCondition(LvCheck, ">", 39 )
	MisBeginCondition(PfEqual, 1 )
	MisBeginCondition(CheckConvertProfession, MIS_LARGE_FENCER )
	MisBeginAction(AddMission, 738)
	MisBeginAction(AddTrigger, 7381, TE_GETITEM, 15, 1 )
	MisBeginAction(AddTrigger, 7382, TE_GETITEM, 4454, 1 )
	MisBeginAction(AddTrigger, 7383, TE_GETITEM, 4453, 5 )
	MisBeginAction(AddTrigger, 7384, TE_GETITEM, 4368, 5 )
	MisCancelAction(ClearMission, 738)

	MisNeed(MIS_NEED_ITEM, 15, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 4454, 1, 20, 1)
	MisNeed(MIS_NEED_ITEM, 4453, 5, 30, 5)
	MisNeed(MIS_NEED_ITEM, 4368, 5, 40, 5)
	
	MisResultTalk("<t>��ϲ�㣡<n><t>�����ھ��Ѿ���Ϊһ���ϸ��<b�޽�ʿ>�ˣ�<n><t>����и��Ͼ���ս���ڵȴ����㡣")
	MisHelpTalk("<t>��ô������ʲô������ģ�<r��������>�������<p�Ͽ���ȥ���ң�<r��ʯ��>����<p����ɭ��>�����������뵽�����ı��Ǳ�ȥ�����ˡ�")
	MisResultCondition(HasMission, 738)
	MisResultCondition(HasItem, 15, 1 )
	MisResultCondition(HasItem, 4454, 1 )
	MisResultCondition(HasItem, 4453, 5 )
	MisResultCondition(HasItem, 4368, 5 )
	MisResultAction(TakeItem, 15, 1)
	MisResultAction(TakeItem, 4454, 1)
	MisResultAction(TakeItem, 4453, 5)
	MisResultAction(TakeItem, 4368, 5)
	MisResultAction(ClearMission, 738)
	MisResultAction(SetRecord, 738)
	MisResultAction(SetProfession, 8)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 15 )	
	TriggerAction( 1, AddNextFlag, 738, 10, 1 )
	RegCurTrigger( 7381 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4454 )	
	TriggerAction( 1, AddNextFlag, 738, 20, 1 )
	RegCurTrigger( 7382 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4453 )	
	TriggerAction( 1, AddNextFlag, 738, 30, 5 )
	RegCurTrigger( 7383 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4368 )	
	TriggerAction( 1, AddNextFlag, 738, 40, 5 )
	RegCurTrigger( 7384 )



end
RobinMission026()





----------------------------------------------------------
--							--
--		ɳᰳ�[����ָ������˿��]			--
--							--
--		239185,277025				--
----------------------------------------------------------
function RobinMission027()

-----------------------------------���˱���
	DefineMission( 711, "���˱���", 2, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

		
	MisResultTalk("<t>����<n><t>�����������ˣ���ӭ�㡣<n><t>��Ҫ�˽�����ְҵ�����Լӵ�����鶼�������ҡ�<n><t>���������ҽ������������<pɳᰳ�>���Ϻõ�������<n><t>Ŷ�������������ˣ�����Ե�������·���ɫ��ť����ݼ�alt+A����������Խ���������������ԣ�ÿ�������㶼���Ի�����Ե㣬����Խ���Щ���Ե㰴�����Ҫ���䵽��ͬ�����ϡ�<n><t>����5�����Կ����������ֱ��ǣ����������������������������������ݣ������������������Ļر��ʣ�רע���������������������ʺ�Զ�������Ĺ����������񣬿���������������SP�����ֵ�ͷ����Լ��ܵĹ����������ʣ������������������������ֵ��HP����")
	MisHelpTalk("<t>���ѣ��ҿ����������������ÿ͵���Ŷ��<n><t>�����������������������������ǻ�������ֺõ�Ӵ��")
	MisResultCondition(NoRecord, 2)
	MisResultCondition(HasMission, 2)
	--MisResultCondition(HasFlag, 706, 10)
	--MisResultCondition(HasFlag, 706, 20)
	MisResultAction(ClearMission, 2)
	MisResultAction(SetRecord, 2)
	MisResultAction(AddExp, 6, 6)


-----------------------------------�������ʺ�
	DefineMission( 712, "�������ʺ�", 707 )
	
	MisBeginTalk( "<t>������ѽ�����ֿ�ȭ�ɲ��У�����һ���Ǿͻᱻ����Ե�Ŷ��<n><t>�����ɣ����������ȥ������ͭͭ�ģ�902,3495����<n><t>˳�㿴����ʲô���ʵ���������ʹ�û������ϽǷ���ͼ�µ��״￪�أ������Ǹ����µļ�ͷ�������״������Ӧ�����꣬�Ϳ��Ը��ż�ͷ��ָʾ���ˣ�" )
	MisBeginCondition(HasRecord, 2)
	MisBeginCondition(NoRecord, 707)
	MisBeginCondition(NoMission, 707)
	MisBeginAction(AddMission, 707)
	MisBeginAction(SetFlag, 707, 1)
	MisBeginAction(GiveItem, 3956, 1, 4)
	MisCancelAction(ClearMission, 707 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "���Ž���<pɳᰳ�><b������ͭͭ��>��902,3495����֮����ȥ������ָ��Ա��˿�̣�876,3572��")
		
	MisResultTalk("<t>���Ѿ�����<bͭͭ��>�˰ɣ������Ժ�׬��Ǯ������ȥ����������õ�������")
	MisHelpTalk("<t>�ǵð��Ž���<bͭͭ��>Ŷ������<pɳᰳ�>���Ͻǣ�������902,3495��<n><t>�����ͨ��С��ͼ��������")
	MisResultCondition(NoRecord, 707)
	MisResultCondition(HasMission, 707)
	MisResultCondition(HasFlag, 707, 10)
	MisResultAction(ClearMission, 707)
	MisResultAction(SetRecord, 707)
	MisResultAction(AddExp, 9, 9 )


-----------------------------------��װ����ʺ�
	DefineMission( 714, "��װ����ʺ�", 708 )
	
	MisBeginTalk( "<t>�ã�����ȥȥ������װ�����ɣ��з�����ŵĻ��ͺ��ˣ����Ž���<pɳᰳ�><b��װ����Ī��>��894,3602����������������ġ�" )
	MisBeginCondition(HasRecord, 707)
	MisBeginCondition(NoRecord, 708)
	MisBeginCondition(NoMission, 708)
	MisBeginAction(AddMission, 708)
	MisBeginAction(SetFlag, 708, 1)
	MisBeginAction(GiveItem, 3957, 1, 4)
	--MisCancelAction(ClearMission, 708 )
	MisCancelAction(SystemNotice, "�������޷��ж�" )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "���Ž���<pɳᰳ�><b��װ������Ī��>�����꣺894,3602����֮����ȥ������ָ��Ա��˿�̣�876,3572��")
		
	MisResultTalk("<t>Ŷ������<bĪ��>����������𣿿���ȥͦ������ޣ�Ҫ�ú���ϧŶ��")
	MisHelpTalk("<t>һ��Ҫ���Ž���Ī��Ŷ��<n><t>����������894,3602�������ͨ�������״�������")
	MisResultCondition(NoRecord, 708)
	MisResultCondition(HasMission, 708)
	MisResultCondition(HasFlag, 708, 10)
	MisResultAction(ClearMission, 708)
	MisResultAction(SetRecord, 708)
	MisResultAction(AddExp, 21, 21 )

-----------------------------------ҩ�ĵ���ʺ�
	DefineMission( 716, "ҩ�ĵ���ʺ�", 709 )
	
	MisBeginTalk( "<t>��ô������Ҳ��ȥ���������<bҩ�����ˡ�ɳ����>�ˣ����꣺903,3646�����������һ���Ƽ��ţ���ȥ�ɡ�" )
	MisBeginCondition(HasRecord, 708)
	MisBeginCondition(NoRecord, 709)
	MisBeginCondition(NoMission, 709)
	MisBeginAction(AddMission, 709)
	MisBeginAction(SetFlag, 709, 1)
	MisBeginAction(GiveItem, 3958, 1, 4)
	MisCancelAction(SystemNotice, "�������޷��ж�" )
	--MisCancelAction(ClearMission, 709 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "���Ž���<pɳᰳ�><bҩ�����ˡ�ɳ����>�����꣺903,3646����֮����ȥ������ָ��Ա��˿�̣�876,3572��")
		
	MisResultTalk("<t>Ŷ����Щ��<bɳ����>�����<rƻ��>��.���<rƻ��>�����кô��������Իָ�������HP�ء�")
	MisHelpTalk("<t>ɳ���������ﲻԶ������ɳᰳ�������Ȫ���������903,3646��<n><t>�����ͨ��С��ͼ���ҵ�����")
	MisResultCondition(NoRecord, 709)
	MisResultCondition(HasMission, 709)
	MisResultCondition(HasFlag, 709, 10)
	MisResultAction(ClearMission, 709)
	MisResultAction(SetRecord, 709)
	MisResultAction(AddExp, 66, 66 )


-----------------------------------ս��ѵ��
	DefineMission( 718, "ս��ѵ��", 710 )
	
	MisBeginTalk( "���������<n><t>�������װ���Ѿ���ȫ�ˣ���Ҫ������һ�°ɣ������������һ��ս������ȻҪע�ⰲȫŶ��<n><t>��ȥ����5��СЫ�ӣ�˳����1������������ң������һ���㽱���ġ�<n><t>СЫ�ӳ���������һ����ܿ�������������Ļ������Դ������������ҵ�����Ȼ��Ҫע�ⰲȫŶ��<n><t>��ֻҪ��������ֱ�ӵ������Ҫ������Ŀ��Ϳɽ���ս����ע�⣬���������޷�ս����Ŷ��ʰȡ���ߵĻ���ʹ���������������Ȼ�������ʹ��ctrl+A��������ʰȡ����" )
	MisBeginCondition(HasRecord, 709)
	MisBeginCondition(NoRecord, 710)
	MisBeginCondition(NoMission, 710)
	MisBeginCondition(LvCheck, ">", 4 )
	MisBeginCondition(LvCheck, "<", 10 )
	MisBeginAction(AddMission, 710)
	MisBeginAction(SetFlag, 710, 1)
	MisBeginAction(AddTrigger, 7101, TE_GETITEM, 1691, 1 )
	MisBeginAction(AddTrigger, 7102, TE_KILL, 188, 5 )
	MisCancelAction(ClearMission, 710)

	MisNeed(MIS_NEED_ITEM, 1691, 1, 10, 1)
	MisNeed(MIS_NEED_KILL, 188, 5, 20, 5)

	MisPrize(MIS_PRIZE_MONEY, 100, 1)
	MisPrizeSelAll()
	
	MisResultTalk("<t>�ܺã����Ѿ�������һЩ������ս�����ռ����ߵķ����ˣ����Ѿ�û��ʲô�ý�����ˡ�<n><t>�������������ѿ����Ƽ���ȥ�����ǣ���һ���һ��<b����>������ɳᰳǵ�Ѳ�߱��������Ҳ����һ��ϲ��ս���Ļ���ȥ�������ɣ����ڣ�958,3549��λ�á�<n><t>��һλ������ɳᰳǵ�ҩ������<bɳ����>������������˲�ҩ�ղأ������������˰�æ�ռ�ҩ�ĳɷ�ʲô�ģ���������Ȥ�Ļ���ȥ��903,3646��������Ҳף����ˣ�")
	MisHelpTalk("<t>���ż���������5��<bСЫ��>���ҵ�1��<r��������>�������ҡ�")
	MisResultCondition(NoRecord, 710)
	MisResultCondition(HasMission, 710)
	MisResultCondition(HasItem, 1691, 1)
	MisResultCondition(HasFlag, 710, 24)
	MisResultAction(TakeItem, 1691, 1)
	MisResultAction(ClearMission, 710)
	MisResultAction(SetRecord, 710)
	MisResultAction(AddExp, 75, 75 )
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 1691 )	
	TriggerAction( 1, AddNextFlag, 710, 10, 1 )
	RegCurTrigger( 7101 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 188 )	
	TriggerAction( 1, AddNextFlag, 710, 20, 5 )
	RegCurTrigger( 7102 )


end
RobinMission027()




----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[��װ������Ī��]			--
--							--
--		239185,277025				--
----------------------------------------------------------
function RobinMission028()

-----------------------------------��װ����ʺ�
	DefineMission( 715, "��װ����ʺ�", 708, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>�Ǻǣ��Ǻǣ�<n><t>����˿�̵��Ƽ����ء�<n><t>�ã����չ������⸱������Ϊ�ҵ�����͸���ɡ�<n><t>�Ժ��㵽��������װ�����Ҷ������������ġ�<n><t>������Ҫ�ڻص���˿��876,3572����ȥ����Ӧ�û��������������ˡ�<n><t>��Ī��������һ�����������ס�������Դ���Ʒ�����н���װ�������ײ�λ����")
	MisResultCondition(NoRecord, 708)
	MisResultCondition(HasMission, 708)
	MisResultCondition(NoFlag, 708, 10)
	MisResultCondition(HasItem, 3957, 1)
	MisResultAction(TakeItem, 3957, 1)
	MisResultAction(SetFlag, 708, 10)
	MisResultAction(GiveItem, 465, 1, 4)
	MisResultBagNeed(1)
	
end
RobinMission028()



----------------------------------------------------------
--							--
--		���Ǳ�[����ָ��������¶��]		--
--							--
--		239185,277025				--
----------------------------------------------------------
function RobinMission030()

-----------------------------------���˱���
	DefineMission( 721, "���˱���", 3, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>�������������أ���Ҫ�˽�����ְҵ�����Լӵ�����鶼�������ҡ�<n><t>���������ҽ������������<p���Ǳ�>���Ϻõ�������<n><t>Ŷ�������������ˣ�����Ե�������·���ɫ��ť����ݼ�alt+A����������Խ���������������ԣ�ÿ�������㶼���Ի�����Ե㣬����Խ���Щ���Ե㰴�����Ҫ���䵽��ͬ�����ϡ�<n><t>����5�����Կ����������ֱ��ǣ����������������������������������ݣ������������������Ļر��ʣ�רע���������������������ʺ�Զ�������Ĺ����������񣬿���������������SP�����ֵ�ͷ����Լ��ܵĹ����������ʣ������������������������ֵ��HP����")
	MisHelpTalk("<t>���ѣ������������Ψһ������ָ����<n><t>������������˽�������磬����û�а취����������ȥŶ��")
	MisResultCondition(NoRecord, 3)
	MisResultCondition(HasMission, 3)
	--MisResultCondition(HasFlag, 712, 10)
	--MisResultCondition(HasFlag, 712, 20)
	MisResultAction(ClearMission, 3)
	MisResultAction(SetRecord, 3)
	MisResultAction(AddExp, 6, 6)


-----------------------------------�������ʺ�
	DefineMission( 722, "�������ʺ�", 713 )
	
	MisBeginTalk( "<t>��������һ�������������û�У���������Ž������Ǳ�������������1344,529�������������ġ�<n><t>��ʹ�û������ϽǷ���ͼ�µ��״￪�أ������Ǹ����µļ�ͷ�������״������Ӧ�����꣬�Ϳ��Ը��ż�ͷ��ָʾ���ˣ�" )
	MisBeginCondition(HasRecord, 3)
	MisBeginCondition(NoRecord, 713)
	MisBeginCondition(NoMission, 713)
	MisBeginAction(AddMission, 713)
	MisBeginAction(SetFlag, 713, 1)
	MisBeginAction(GiveItem, 3959, 1, 4)
	MisCancelAction(ClearMission, 713 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "���Ž���<p���Ǳ�><b����������>��1344,529����֮���ȥ������ָ��Ա����¶��(1315,507)")
		
	MisResultTalk("<t>���Ѿ�����<b����>�˰ɣ����ǲ�����˵�Լ�����δ�飬�������������Ů���ѣ�")
	MisHelpTalk("<t>�ǵð��Ž���<b����>Ŷ������<p���Ǳ�>ˮ�ص����½ǣ�������1344,529��<n><t>�����ͨ��С��ͼ��������")
	MisResultCondition(NoRecord, 713)
	MisResultCondition(HasMission, 713)
	MisResultCondition(HasFlag, 713, 10)
	MisResultAction(ClearMission, 713)
	MisResultAction(SetRecord, 713)
	MisResultAction(AddExp, 9, 9 )


-----------------------------------��װ����ʺ�
	DefineMission( 724, "��װ����ʺ�", 714 )
	
	MisBeginTalk( "<t>�������ﻹ�з��ţ��Ǹ�<p���Ǳ�><b��װ����������>�����꣺1349,539���ģ��㽻�����Ļ���һ��Ҳ�ܻ�ð�����" )
	MisBeginCondition(HasRecord, 713)
	MisBeginCondition(NoRecord, 714)
	MisBeginCondition(NoMission, 714)
	MisBeginAction(AddMission, 714)
	MisBeginAction(SetFlag, 714, 1)
	MisBeginAction(GiveItem, 3960, 1, 4)
	MisCancelAction(SystemNotice, "�������޷��ж�" )
	--MisCancelAction(ClearMission, 714 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "���Ž���<p���Ǳ�><b��װ����������>�����꣺1349,539����֮���ȥ������ָ��Ա����¶��(1315,507)")
		
	MisResultTalk("<t>Ŷ��<b����>�ر�Ϊ�㶨����һ�������𣿿���ȥͦ������ޣ�Ҫ�ú���ϧŶ��")
	MisHelpTalk("<t>����һ��Ҫ���Ž���<b����>Ŷ��<n><t>����<p���Ǳ�>ˮ�ص����·���������1349,539�������ͨ��С��ͼ���ҵ�����")
	MisResultCondition(NoRecord, 714)
	MisResultCondition(HasMission, 714)
	MisResultCondition(HasFlag, 714, 10)
	MisResultAction(ClearMission, 714)
	MisResultAction(SetRecord, 714)
	MisResultAction(AddExp, 21, 21 )

-----------------------------------ҩƷ����ʺ�
	DefineMission( 726, "ҩƷ����ʺ�", 715 )
	
	MisBeginTalk( "<t>���Ҫ��ס��ҩƷҲ��ս���к���Ҫ��Ŷ�������������ţ�ȥ��ʶһ��<p���Ǳ�><bҩ���ϰ塤���>�����꣺1352,499���ɡ�" )
	MisBeginCondition(HasRecord, 714)
	MisBeginCondition(NoRecord, 715)
	MisBeginCondition(NoMission, 715)
	MisBeginAction(AddMission, 715)
	MisBeginAction(SetFlag, 715, 1)
	MisBeginAction(GiveItem, 3961, 1, 4)
	MisCancelAction(SystemNotice, "�������޷��ж�" )
	--MisCancelAction(ClearMission, 715 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "���Ž���<p���Ǳ�><bҩ���ϰ塤���>�����꣺1352,499����֮���ȥ������ָ��Ա����¶��(1315,507)")
		
	MisResultTalk("<t>Ŷ����Щ��<b���>�����<rƻ��>�ɡ�<n><t>���<rƻ��>�����кô��������Իָ�������HP��")
	MisHelpTalk("<t>�����<p���Ǳ�>ˮ�ص��ұߣ�����������1352,499�������ͨ��С��ͼ���ҵ�����")
	MisResultCondition(NoRecord, 715)
	MisResultCondition(HasMission, 715)
	MisResultCondition(HasFlag, 715, 10)
	MisResultAction(ClearMission, 715)
	MisResultAction(SetRecord, 715)
	MisResultAction(AddExp, 66, 66 )


-----------------------------------ս��ѵ��
	DefineMission( 728, "ս��ѵ��", 716 )
	
	MisBeginTalk( "<t>���������<n><t>�������װ���Ѿ���ȫ�ˣ����һ��ս����������ѵ�ɣ�������ȥ����ɱ5ֻѩԭޢޢ(1465,402)���԰ɡ�<n><t>���ˣ�˳�����ռ�1����������ѩԭޢޢ���ڱ��Ǳ��·����ſڵĵط������ӿ�����ѩ�ؾ�������ϵõ���������Ժ��������ң�<n><t>��ֻҪ��������ֱ�ӵ������Ҫ������Ŀ��Ϳɽ���ս����ע�⣬���������޷�ս����Ŷ��ʰȡ���ߵĻ���ʹ���������������Ȼ�������ʹ��ctrl+A��������ʰȡ����" )
	MisBeginCondition(HasRecord, 715)
	MisBeginCondition(NoRecord, 716)
	MisBeginCondition(NoMission, 716)
	MisBeginCondition(LvCheck, ">", 4 )
	MisBeginCondition(LvCheck, "<", 10 )
	MisBeginAction(AddMission, 716)
	MisBeginAction(AddTrigger, 7161, TE_GETITEM, 1597, 1 )
	MisBeginAction(AddTrigger, 7162, TE_KILL, 234, 5 )
	MisBeginAction(SetFlag, 716, 1)
	MisCancelAction(ClearMission, 716)
	
	MisNeed(MIS_NEED_ITEM, 1597, 1, 10, 1)
	MisNeed(MIS_NEED_KILL, 234, 5, 20, 5)


	MisPrize(MIS_PRIZE_MONEY, 100, 1)
	MisPrizeSelAll()
	
	MisResultTalk("<t>�ܺã����Ѿ�������һЩ������ս�����ռ����ߵķ����ˣ����Ѿ�û��ʲô�ý�����ˡ�")
	MisHelpTalk("<t>�ǵã�Ҫ�����5��ѩԭޢޢ���õ�1�����Ӳ���Ŷ")
	MisResultCondition(NoRecord, 716)
	MisResultCondition(HasMission, 716)
	MisResultCondition(HasItem, 1597, 1)
	MisResultCondition(HasFlag, 716, 24)
	MisResultAction(TakeItem, 1597, 1)
	MisResultAction(ClearMission, 716)
	MisResultAction(SetRecord, 716 )
	MisResultAction(AddExp, 75, 75 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1597 )	
	TriggerAction( 1, AddNextFlag, 716, 10, 1 )
	RegCurTrigger( 7161 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 234 )	
	TriggerAction( 1, AddNextFlag, 716, 20, 5 )
	RegCurTrigger( 7162 )


	
end
RobinMission030()


----------------------------------------------------------
--							--
--							--
--		���Ǳ�[����������]			--
--							--
--		239185,277025				--
----------------------------------------------------------
function RobinMission031()

---------------------------------------����������С��
	DefineMission( 723, "�������ʺ�", 713, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>���������İɣ��ҽб������Ǳ��Ǳ����������س����������˵�������δ�飡<n><t>������Ҫ�ڻص�����¶��1315,507����ȥ����Ӧ�û��������������ˡ�<n><t>������������һ�ѡ�����С����������Դ���Ʒ�����н���װ�������ֲ�λ���������alt+E�����򿪱�����Ҳ���Ե�������·���ɫ��������İ�ť�򿪣�")
	MisResultCondition(NoRecord, 713)
	MisResultCondition(HasMission, 713)
	MisResultCondition(NoFlag, 713, 10)
	MisResultCondition(HasItem, 3959, 1)
	MisResultAction(TakeItem, 3959, 1)
	MisResultAction(SetFlag, 713, 10)
	MisResultBagNeed(1)

end
RobinMission031()


----------------------------------------------------------
--							--
--							--
--		���Ǳ�[��װ����������]			--
--							--
--		239185,277025				--
----------------------------------------------------------
function RobinMission032()

-----------------------------------��װ����ʺ�
	DefineMission( 725, "��װ����ʺ�", 714, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>���������İɣ��Ǻǣ���ӭ�����Ǳ�����<n><t>��������ķ�װ���������ȡ�лл�����Ź���Ŷ��<n><t>���������������ȥ�ðɣ�����ר��Ϊ�����ġ�<n><t>����,��ȥ��ʱ��Ҫ�ǵø��߰���¶��,�����յ���,������Ҫ�����ˡ�<n><t>������Ҫ�ڻص�����¶��1315,507����ȥ����Ӧ�û��������������ˡ�<n><t>������������һ�����������ס�������Դ���Ʒ�����н���װ�������ײ�λ����")
	MisResultCondition(NoRecord, 714)
	MisResultCondition(HasMission, 714)
	MisResultCondition(NoFlag, 714, 10)
	MisResultCondition(HasItem, 3960, 1)
	MisResultAction(TakeItem, 3960, 1)
	MisResultAction(SetFlag, 714, 10)
	MisResultAction(GiveItem, 465, 1, 4)
	MisResultBagNeed(1)
	
end
RobinMission032()


----------------------------------------------------------
--							--
--							--
--		���Ǳ�[ҩ�����ˡ����]			--
--							--
--		239185,277025				--
----------------------------------------------------------
function RobinMission033()

-----------------------------------ҩ�ĵ���ʺ�
	DefineMission( 727, "ҩ�ĵ���ʺ�", 715, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>���ǳ���է���İɣ���ӭ��ӭ�����������ҩ�����ˡ���ա�<n><t>һ·��������������,�⼸��ƻ���͸��㣬лл�����Զ������������Ŷ��<n><t>������Ҫ�ڻص�����¶��1315,507����ȥ����Ӧ�û�������µ�����<n><t>����������㼸����ƻ����������Դ���Ʒ�����н�����ק�����߿������ʹ�ã������������Ϸ��������·�������F1~F8����Щ�ո񡣣�")
	MisResultCondition(NoRecord, 715)
	MisResultCondition(HasMission, 715)
	MisResultCondition(NoFlag, 715, 10)
	MisResultCondition(HasItem, 3961, 1)
	MisResultAction(TakeItem, 3961, 1)
	MisResultAction(SetFlag, 715, 10)
	MisResultAction(GiveItem, 1847, 10, 4)
	MisResultBagNeed(1)

---------------------------------�ռ��	
	DefineMission( 735, "�ռ��", 723 )

	MisBeginTalk( "<t>����������Լ����ռ�Ʒʱ���֣��Ҿ�Ȼû��<r���㴥��>�������������ھ��������ȥ��һЩ�ɣ�ֻҪ5��<r���㴥��>�ͺ��ˡ�<n><t>�������<bѩԭޢޢ>����õ�������һ����ڳ��ſڸ������֡�<n><t>Ŀǰ�Ҿ���Ҫ������������£�" )
	MisBeginCondition(NoMission, 723)
	MisBeginCondition(LvCheck, ">", 4 )
	MisBeginCondition(LvCheck, "<", 7 )
	MisBeginAction(AddMission, 723)
	MisBeginAction(SetFlag, 723, 1)
	MisBeginAction(AddTrigger, 7231, TE_GETITEM, 1704, 5 )
	MisCancelAction(ClearMission, 723)

	MisNeed(MIS_NEED_ITEM, 1704, 5, 10, 5)

	MisPrize(MIS_PRIZE_MONEY, 100, 1)
	MisPrizeSelAll()
	
	MisResultTalk("<t>̫���ˣ������ҵ��ղ�Ʒ�ֶ���һ�㣬�ÿ���Ŷ��<n><t>ҲҪлл�㣬��󻹻�����Ҫ������ĵط����㻹Ҫ��������Ŷ��")
	MisHelpTalk("<t>��ô�ˣ���������ѩԭޢޢ���ڳ��ſڸ�������ȥ�ɡ�")
	MisResultCondition(HasMission, 723)
	MisResultCondition(HasItem, 1704, 5 )
	MisResultAction(TakeItem, 1704, 5 )
	MisResultAction(AddExp, 40, 70)
	MisResultAction(ClearMission, 723)
		
	InitTrigger()
	TriggerCondition( 1, IsItem, 1704)	
	TriggerAction( 1, AddNextFlag, 723, 10, 5 )
	RegCurTrigger( 7231 )


	---------------------------------�ռ��	
	DefineMission( 746, "�ռ��", 734 )

	MisBeginTalk( "<t>����ҷ��֣��ҵ��ղ����Ȼ��������֦��û�У�̫�����ˣ�������ȥ��1179,475��������<bѩԭ����>�����ҵ�5��<r����֦>���Ұɣ���ȥ�ɣ�����ҵ��ղز�����������Ļ�����Ҳ�����ٸ����µ�������㣡" )
	MisBeginCondition(NoMission, 734)
	MisBeginCondition(NoMission, 723)
	MisBeginCondition(LvCheck, ">", 6 )
	MisBeginCondition(LvCheck, "<", 8 )
	MisBeginAction(AddMission, 734)
	MisBeginAction(SetFlag, 734, 1)
	MisBeginAction(AddTrigger, 7341, TE_GETITEM, 3372, 5 )
	MisCancelAction(ClearMission, 734)

	MisNeed(MIS_NEED_ITEM, 3372, 5, 10, 5)

	MisPrize(MIS_PRIZE_MONEY, 200, 1)
	MisPrizeSelAll()
	
	MisResultTalk("<t>���������ҵ��ղ��ֱ�ḻ��")
	MisHelpTalk("<t>����ɣ�����֦����<n><t>��ô��Ҳ�Ҳ����𣿱��Ǳ����Ǿ���<bѩԭ����>���������Ͼ���Ŷ��")
	MisResultCondition(HasMission, 734)
	MisResultCondition(HasItem, 3372, 5 )
	MisResultAction(TakeItem, 3372, 5 )
	MisResultAction(AddExp, 70, 95)
	MisResultAction(ClearMission, 734)
		
	InitTrigger()
	TriggerCondition( 1, IsItem, 3372)	
	TriggerAction( 1, AddNextFlag, 734, 10, 5 )
	RegCurTrigger( 7341 )


---------------------------------�ռ��	
	DefineMission( 747, "�ռ��", 735 )

	MisBeginTalk( "<t>����ռ��˺ܶ�ö���������ȴû�еط�����ˣ��������ڵĵȼ�Ҳ�����ã��Ǿ�����Ҹ�æ��ȥ��1179,371��������<b��ԭ������>���ϸ㵽5��<rҩƿ>�����ɣ����ˣ����ܶ��Щ�ظ�Ʒ�Ƚϰ�ȫЩ��" )
	MisBeginCondition(NoMission, 735)
	MisBeginCondition(NoMission, 734)
	MisBeginCondition(NoMission, 723)
	MisBeginCondition(LvCheck, ">", 7 )
	MisBeginCondition(LvCheck, "<", 9 )
	MisBeginAction(AddMission, 735)
	MisBeginAction(SetFlag, 735, 1)
	MisBeginAction(AddTrigger, 7351, TE_GETITEM, 1779, 5 )
	MisCancelAction(ClearMission, 735)

	MisNeed(MIS_NEED_ITEM, 1779, 5, 10, 5)

	MisPrize(MIS_PRIZE_MONEY, 300, 1)
	MisPrizeSelAll()
	
	MisResultTalk("<t>���ޣ�<n><t>��ҩƿ�ˣ������ֿ��Դ�Ÿ�����ղ�Ʒ�ˣ��������ø���Ŷ��")
	MisHelpTalk("<t>�����Ǽ���ҩƿ�ȫ�����ˣ���ȥ�ɡ�")
	MisResultCondition(HasMission, 735)
	MisResultCondition(HasItem, 1779, 5 )
	MisResultAction(TakeItem, 1779, 5 )
	MisResultAction(AddExp, 95, 125)
	MisResultAction(ClearMission, 735)
		
	InitTrigger()
	TriggerCondition( 1, IsItem, 1779)	
	TriggerAction( 1, AddNextFlag, 735, 10, 5 )
	RegCurTrigger( 7351 )



end
RobinMission033()

----------------------------------------------------------
--							--
--							--
--		���Ǳ�[���Ǳ���ʿ����ŷ]			--
--							--
--		239185,277025				--
----------------------------------------------------------
function RobinMission034()

-----------------------------------�����ֲ�
	DefineMission( 729, "�����ֲ�", 717 )
	
	MisBeginTalk( "<t>����������ȡ�����ֲ��ô�����е�ʶѽ��<n><t>�������е�ʶ������������ȡ<r�����ֲ�>�㻹����֤���Լ����㹻�����ݵ����֡�<n><t>������ȥ<p���Ǳ�Ұ��>����10ֻ<b�Թ�¹>��1164��305����10ֻ<b��ɫ�Թ�¹>��1325,305��������<n><t>���⣬�㻹��Ҫ1ƿ<r�����֭>��<n><t>��Ϊ�����ǳ������ⵥ�����ԣ�ʶ��HP�ظ�Ʒ������Ҳ�Ǳ���ġ�<n><t>�����ȥ��<p���Ǳ�>��<b�Ű���>�˽���λ�þ����֭��<n><t>�������������Щ���ҽ��������Ǹ��ϸ��׼���ˡ�" )
	MisBeginCondition(NoMission, 717)
	MisBeginCondition(LvCheck, ">", 6 )
	MisBeginCondition(PfEqual, 0 )
	MisBeginCondition(CheckConvertProfession, MIS_HUNTER )
	MisBeginAction(AddMission, 717)
	MisBeginAction(SetFlag, 717, 1)
	MisBeginAction(AddTrigger, 7171, TE_KILL, 240, 10 )
	MisBeginAction(AddTrigger, 7172, TE_GETITEM, 3122, 1 )
	MisBeginAction(AddTrigger, 7173, TE_KILL, 238, 10 )
	MisCancelAction(ClearMission, 717)

	
	MisNeed(MIS_NEED_KILL, 240, 10, 10, 10)
	MisNeed(MIS_NEED_ITEM, 3122, 1, 20, 1)
	MisNeed(MIS_NEED_KILL, 238, 10, 30, 10)

	MisPrize(MIS_PRIZE_ITEM, 3955, 1, 4)
	MisPrizeSelAll()
	
	MisResultTalk("<t>���ѣ��������治��<n><t>��ͨ���ҵĲ����ˣ�������Ǿ�ְ��������Ҫ��<r�����ֲ�>�ˡ�<n><t>���պã��ȵ��ﵽ<pLv10>��ʱ����������Ҿ�ְ���ˡ�")
	MisHelpTalk("<t>�㻹û�дﵽ�ҵ�Ҫ��Ŷ�����˵��ʸ�ɲ��������ܻ�õġ�")
	MisResultCondition(HasMission, 717)
	MisResultCondition(HasItem, 3122, 1 )
	MisResultCondition(HasFlag, 717, 19 )
	MisResultCondition(HasFlag, 717, 39 )
	MisResultAction(TakeItem, 3122, 1)
	MisResultAction(ClearMission, 717)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 240 )	
	TriggerAction( 1, AddNextFlag, 717, 10, 10 )
	RegCurTrigger( 7171 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3122 )	
	TriggerAction( 1, AddNextFlag, 717, 20, 1 )
	RegCurTrigger( 7172 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 238 )	
	TriggerAction( 1, AddNextFlag, 717, 30, 10 )
	RegCurTrigger( 7173 )
	
-----------------------------------�ѻ���תְ����
	DefineMission( 757, "�ѻ���תְ����", 741 )
	
	MisBeginTalk( "<t>Ҫ��Ϊ<b�ѻ���>��ʵ�ܼ򵥡�<n><t>ȥ���ߵ�<p����Ӫ�ز���վ>���������������µĲ���սʿ��ȥ����10��<r���ù�����>�����û�5��<y�Ͼɵļ���>��ȥ<p���ɴ�½>��<P�Ͽ�>����10��<r��������>���û�5��<r�۶ϵ����߽�>�������Ҿ����ˡ�" )
	MisBeginCondition(NoRecord, 741)
	MisBeginCondition(NoMission, 741)
	MisBeginCondition(LvCheck, ">", 39 )
	MisBeginCondition(PfEqual, 2 )
	MisBeginCondition(CheckConvertProfession, MIS_GUNMAN )
	MisBeginAction(AddMission, 741)
	MisBeginAction(AddTrigger, 7411, TE_KILL, 269, 10 )
	MisBeginAction(AddTrigger, 7412, TE_KILL, 243, 10 )
	MisBeginAction(AddTrigger, 7413, TE_GETITEM, 4362, 5 )
	MisBeginAction(AddTrigger, 7414, TE_GETITEM, 4367, 5 )
	MisCancelAction(ClearMission, 741)
	
	MisNeed(MIS_NEED_KILL, 269, 10, 10, 10)
	MisNeed(MIS_NEED_KILL, 243, 10, 20, 10)
	MisNeed(MIS_NEED_ITEM, 4362, 5, 30, 5)
	MisNeed(MIS_NEED_ITEM, 4367, 5, 40, 5)
	
	MisResultTalk("<t>��ϲ�㣡<n><t>�����ھ��Ѿ���Ϊһ���ϸ��<b�ѻ���>�ˣ�<n><t>��ס�������侲����ս�Ǿѻ��ֵı�ʤ������")
	MisHelpTalk("<t>��ô�ˣ�����Լ�û������")
	MisResultCondition(HasMission, 741)
	MisResultCondition(HasFlag, 741, 19 )
	MisResultCondition(HasFlag, 741, 29 )
	MisResultCondition(HasItem, 4362, 5 )
	MisResultCondition(HasItem, 4367, 5 )
	MisResultAction(TakeItem, 4362, 5)
	MisResultAction(TakeItem, 4367, 5)
	MisResultAction(ClearMission, 741)
	MisResultAction(SetRecord, 741)
	MisResultAction(SetProfession, 12)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 269 )	
	TriggerAction( 1, AddNextFlag, 741, 10, 10 )
	RegCurTrigger( 7411 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 243 )	
	TriggerAction( 1, AddNextFlag, 741, 20, 10 )
	RegCurTrigger( 7412 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4362 )	
	TriggerAction( 1, AddNextFlag, 741, 30, 5 )
	RegCurTrigger( 7413 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4367 )	
	TriggerAction( 1, AddNextFlag, 741, 30, 5 )
	RegCurTrigger( 7414 )

end
RobinMission034()


----------------------------------------------------------
--							--
--							--
--		������[Ѳ�߱������˹]			--
--							--
--		239185,277025				--
----------------------------------------------------------
function RobinMission035()

-----------------------------------ʮ���
	DefineMission( 730, "ʮ���", 718 )

	MisBeginTalk( "<t>��������������Σ������Ϊ����Ͷ�ߣ�˵�ҵ�Ͻ������̫���<b�����>���кö��˱������ˣ�û�취����Ϊ�Ҷ���æ�ŶԸ�����ޢޢ����԰�����һ���ð��ң�<b�����>�����⸽�������ҵ�������10ֻ<b�����>��������Ҳ�ý����ˣ���һ���ᱨ����ģ���ȥ���Ŷ��<n><t>�����Ŀǰ����Ҫ����ֻҪ���Ƕ������Σ����һ������Ƶġ�" )
	MisBeginCondition(NoMission, 718)
	MisBeginCondition(LvCheck, ">", 4 )
	MisBeginCondition(LvCheck, "<", 7 )
	MisBeginAction(AddMission, 718)
	MisBeginAction(SetFlag, 718, 1)
	MisBeginAction(AddTrigger, 7181, TE_KILL, 206, 10 )
	MisCancelAction(ClearMission, 718)
	
	MisNeed(MIS_NEED_KILL, 206, 10, 10, 10)

	MisPrize(MIS_PRIZE_MONEY, 50, 1)
	MisPrizeSelAll()
	
	MisResultTalk("<t>̫���ˣ������Ǹ������ѣ�����İ���������������Ҳ���ᱻ����ϴ����Ѳ��С�ӵ������ˡ���")
	MisHelpTalk("<t>��ô�ˣ�����10ֻ����䣬��һ��û����ģ���ȥ��أ�")
	MisResultCondition(HasMission, 718)
	MisResultCondition(HasFlag, 718, 19 )
	MisResultAction(AddExp, 75, 125)
	MisResultAction(ClearMission, 718)
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 206 )	
	TriggerAction( 1, AddNextFlag, 718, 10, 10 )
	RegCurTrigger( 7181 )


-----------------------------------Ģ������
	DefineMission( 736, "Ģ������", 724 )

	MisBeginTalk( "<t>��֪���ĸ����ĵļһ�ڳ�������˺ܶ�<b���칽>�������Ѿ����ĳ����ˣ���Ȼ��Ҳ��ϲ����Ģ����������û��Ը�ⱻ��Щ���칽ҧ�á�<n><t>���������������δ��������Ҫ�鷳���ˣ�ȥ��2220,2564�������15��<b���칽>�ͺ��ˣ����а��У����俴��ȥ�����������Щ�����ã����Ǿ��޷��ڳ������������κ����ˡ�" )
	MisBeginCondition(NoMission, 724)
	MisBeginCondition(NoMission, 718)
	MisBeginCondition(LvCheck, ">", 6 )
	MisBeginCondition(LvCheck, "<", 8 )
	MisBeginAction(AddMission, 724)
	MisBeginAction(SetFlag, 724, 1)
	MisBeginAction(AddTrigger, 7241, TE_KILL, 184, 15 )
	MisCancelAction(ClearMission, 724)
	
	MisNeed(MIS_NEED_KILL, 184, 15, 10, 15)

	MisPrize(MIS_PRIZE_MONEY, 100, 1)
	MisPrizeSelAll()
	
	MisResultTalk("<t>ŶŶ��<n><t>������������а���<n><t>�����ͺ��ˣ�����İ������ҵ�����ͱ�����ɶ��ˣ�������ǻ�������С�����ǵ�������һ��Ҫ����ȥ��һ���ء�")
	MisHelpTalk("<t>��������15�����칽Ŷ��<n><t>��ȫ�����ˣ����ͣ�")
	MisResultCondition(HasMission, 724)
	MisResultCondition(HasFlag, 724, 24 )
	MisResultAction(AddExp, 125, 175)
	MisResultAction(ClearMission, 724)
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 184 )	
	TriggerAction( 1, AddNextFlag, 724, 10, 15 )
	RegCurTrigger( 7241 )


-----------------------------------�����ж�
	DefineMission( 737, "�����ж�", 725 )

	MisBeginTalk( "<t>�ҵ����ѣ�����û�з��֣������������Χ���̻�����֪�����ؼ����ˣ����ӳ�˵������Ϊ��Щ��θ�ڵ�<b��ԭ��>���ۼ������и������ˣ�������Ҫ�����ˣ����Ҹɵ�10����ԭ�꣬��Ӧ�ÿ����ڣ�2057,2564���ҵ����ǡ�<n><t>�һ��л��ģ�˳�������㣬��Щ��ԭ����Ȼ�������������Ƿ������Ǻܸߵģ���Ȼ����������֮ǰ�������е��Ѷ��ˣ�������ļ���Ҳ���Ǻ����ˣ�" )
	MisBeginCondition(NoMission, 725)
	MisBeginCondition(NoMission, 724)
	MisBeginCondition(NoMission, 718)
	MisBeginCondition(LvCheck, ">", 7 )
	MisBeginCondition(LvCheck, "<", 9 )
	MisBeginAction(AddMission, 725)
	MisBeginAction(SetFlag, 725, 1)
	MisBeginAction(AddTrigger, 7251, TE_KILL, 119, 10 )
	MisCancelAction(ClearMission, 725)
	
	MisNeed(MIS_NEED_KILL, 119, 10, 10, 10)

	MisPrize(MIS_PRIZE_MONEY, 150, 1)
	MisPrizeSelAll()
	
	MisResultTalk("<t>�㶨�˰���<n><t>�����ģ���Ȼ˵��Щ��ԭ��Ҳͦ�����ģ�����Ϊ�˴�ҹ�ͬ����Ļ��������ò�ί�������ˣ�Ҫ֪������˵���������������ɴ�½�϶���ʼ��Դ�ѷ����ء�")
	MisHelpTalk("<t>��������10����ԭ��Ŷ��<n><t>��Ӧ�ÿ����ڣ�2057,2564���ҵ����ǡ�")
	MisResultCondition(HasMission, 725)
	MisResultCondition(HasFlag, 725, 19 )
	MisResultAction(AddExp, 175, 250)
	MisResultAction(ClearMission, 725)
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 119 )	
	TriggerAction( 1, AddNextFlag, 725, 10, 10 )
	RegCurTrigger( 7251 )

	
end
RobinMission035()


----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[ҩ�����ˡ�ɳ����]			--
--							--
--		239185,277025				--
----------------------------------------------------------
function RobinMission036()

-----------------------------------ҩ�ĵ���ʺ�
	DefineMission( 717, "ҩ�ĵ���ʺ�", 709, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>Ŷ�������������𣿹ֲ�������ɳᰳǴ���û�������ء�<n><t>���ǳ����ҩ�����ˡ�ɳ�������������ڿ�ʼ���ظ�Ʒ�ˡ�<n><t>��ӭ�㳣��������Ŷ��<n><t>�⼸��ƻ���͸��㣬�´ξ�Ҫ�շ���Ŷ��<n><t>������Ҫ�ڻص���˿��876,3572����ȥ����Ӧ�û�������µ�����<n><t>��ɳ���������㼸����ƻ����������Դ���Ʒ�����н�����ק�����߿������ʹ�ã������������Ϸ��������·�������F1~F8����Щ�ո񡣣�")
	MisResultCondition(NoRecord, 709)
	MisResultCondition(HasMission, 709)
	MisResultCondition(NoFlag, 709, 10)
	MisResultCondition(HasItem, 3958, 1)
	MisResultAction(TakeItem, 3958, 1)
	MisResultAction(SetFlag, 709, 10)
	MisResultAction(GiveItem, 1847, 10, 4)
	MisResultBagNeed(1)


---------------------------------�޽�����	
	DefineMission( 734, "�޽�����", 722 )

	MisBeginTalk( "<t>���벻�뿴���������Ͽ������黨����������һ���������飬���԰���������ռ�5��<r��������>��5��<r����>�ɡ�<n><t>����������Ӧ�ÿ�����������;���������ҵ�����Ȼ��Ҳ���һ�����Ҫ���࣬�����������������Щ���ɣ�˵�����ͳɹ����أ�" )
	MisBeginCondition(NoMission, 722)
	MisBeginCondition(LvCheck, ">", 4 )
	MisBeginCondition(LvCheck, "<", 7 )
	MisBeginAction(AddMission, 722)
	MisBeginAction(SetFlag, 722, 1)
	MisBeginAction(AddTrigger, 7221, TE_GETITEM, 1691, 5 )
	MisBeginAction(AddTrigger, 7222, TE_GETITEM, 1597, 5 )
	MisCancelAction(ClearMission, 722)

	MisNeed(MIS_NEED_ITEM, 1691, 5, 10, 5)
	MisNeed(MIS_NEED_ITEM, 1597, 5, 20, 5)

	MisPrize(MIS_PRIZE_MONEY, 100, 1)
	MisPrizeSelAll()
	
	MisResultTalk("<t>�ܺã����¾��ܽ��м޽�ʵ���ˣ��ȵ������������ɣ�Ҳ����Ļ�ɹ�Ŷ��")
	MisHelpTalk("<t>�ף���û�ҵ���Ҫ�Ķ����𣿾���5��<r��������>��5��<r����>��")
	MisResultCondition(HasMission, 722)
	MisResultCondition(HasItem, 1691, 5 )
	MisResultCondition(HasItem, 1597, 5 )
	MisResultAction(TakeItem, 1691, 5 )
	MisResultAction(TakeItem, 1597, 5 )
	MisResultAction(AddExp, 40, 70)
	MisResultAction(ClearMission, 722)
		
	InitTrigger()
	TriggerCondition( 1, IsItem, 1691)	
	TriggerAction( 1, AddNextFlag, 722, 10, 5 )
	RegCurTrigger( 7221 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1597)	
	TriggerAction( 1, AddNextFlag, 722, 20, 5 )
	RegCurTrigger( 7222 )


--------------------------------α������	
	DefineMission( 744, "α������", 732 )

	MisBeginTalk( "<t>��˵���Ǳ������ҩ���ϰ�������ռ����ﺹˮ���Ҵ������������Ц��������ҪһЩα��Ĳ��ϡ�<n><t>�����ȥ�ռ�5��<r���ǵ�ˮ>��5��<r������>���ɣ�����һ������ƭ�����ġ�<n><t>��Щ�������Դӣ�1184,3557��������<bСЫ��>����õ���������������������ر�����ɣ�������" )
	MisBeginCondition(NoMission, 732)
	MisBeginCondition(NoMission, 722)
	MisBeginCondition(LvCheck, ">", 6 )
	MisBeginCondition(LvCheck, "<", 8 )
	MisBeginAction(AddMission, 732)
	MisBeginAction(SetFlag, 732, 1)
	MisBeginAction(AddTrigger, 7321, TE_GETITEM, 1648, 5 )
	MisBeginAction(AddTrigger, 7322, TE_GETITEM, 1777, 2 )
	MisCancelAction(ClearMission, 732)

	MisNeed(MIS_NEED_ITEM, 1648, 5, 10, 5)
	MisNeed(MIS_NEED_ITEM, 1777, 2, 20, 2)

	MisPrize(MIS_PRIZE_MONEY, 200, 1)
	MisPrizeSelAll()
	
	MisResultTalk("<t>����̫���ˣ�����Щ�������һ��һ������ƭ���Ǹ����ռ��ļһ�ģ�����")
	MisHelpTalk("<t>����ɣ���û�����𣿿������")
	MisResultCondition(HasMission, 732)
	MisResultCondition(HasItem, 1648, 5 )
	MisResultCondition(HasItem, 1777, 2 )
	MisResultAction(TakeItem, 1648, 5 )
	MisResultAction(TakeItem, 1777, 2 )
	MisResultAction(AddExp, 70, 95)
	MisResultAction(ClearMission, 732)
		
	InitTrigger()
	TriggerCondition( 1, IsItem, 1648)	
	TriggerAction( 1, AddNextFlag, 732, 10, 5 )
	RegCurTrigger( 7321 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1777)	
	TriggerAction( 1, AddNextFlag, 732, 20, 2 )
	RegCurTrigger( 7322 )


	--------------------------------��ҩ����	
	DefineMission( 745, "��ҩ����", 733 )

	MisBeginTalk( "<t>�������Ҫ�ռ�һЩ��ҩ�Ĳ����ˣ��ر�������������������ȱ���鷳�������5��<r�����ƵĻ�>��2��<rɳ��>���Ұɣ�ȥ��1031,3556�������ɣ������<b������>���Ͼ����У������ڵļ���Ը�������Ӧ����û����ġ�<n><t>���ˣ��ϴε�α��Ʒ�ɹ���ƭ�����Ǹ����Ǳ���ҩ���ϰ��ˣ��ǺǺǣ��ú�ЦŶ��" )
	MisBeginCondition(NoMission, 733)
	MisBeginCondition(NoMission, 732)
	MisBeginCondition(NoMission, 722)
	MisBeginCondition(LvCheck, ">", 7 )
	MisBeginCondition(LvCheck, "<", 9 )
	MisBeginAction(AddMission, 733)
	MisBeginAction(SetFlag, 733, 1)
	MisBeginAction(AddTrigger, 7331, TE_GETITEM, 1692, 5 )
	MisBeginAction(AddTrigger, 7332, TE_GETITEM, 3117, 2 )
	MisCancelAction(ClearMission, 733)

	MisNeed(MIS_NEED_ITEM, 1692, 5, 10, 5)
	MisNeed(MIS_NEED_ITEM, 3117, 2, 20, 2)

	MisPrize(MIS_PRIZE_MONEY, 300, 1)
	MisPrizeSelAll()
	
	MisResultTalk("<t>����������Ǹ�л��İ�æ�������ڿ��Կ�ʼ��ҩ�ˡ�")
	MisHelpTalk("<t>ร����ģ��ҿɾ͵�����Щ�����ˣ�ȫ�����ˣ�")
	MisResultCondition(HasMission, 733)
	MisResultCondition(HasItem, 1692, 5 )
	MisResultCondition(HasItem, 3117, 2 )
	MisResultAction(TakeItem, 1692, 5 )
	MisResultAction(TakeItem, 3117, 2 )
	MisResultAction(AddExp, 95, 125)
	MisResultAction(ClearMission, 733)
		
	InitTrigger()
	TriggerCondition( 1, IsItem, 1692)	
	TriggerAction( 1, AddNextFlag, 733, 10, 5 )
	RegCurTrigger( 7331 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3117)	
	TriggerAction( 1, AddNextFlag, 733, 20, 2 )
	RegCurTrigger( 7332 )


end
RobinMission036()


----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[Ѳ�߱�������]			--
--							--
--		239185,277025				--
----------------------------------------------------------
function RobinMission037()

-----------------------------------����������
	DefineMission( 731, "����������", 719 )

	MisBeginTalk( "<t>��������ɳᰳ���Χ��������ʵ�����е���ˣ��ҵ�Ͻ���ﻹ�ر�࣬�������һ�°ɣ���15��<b������>�����ˣ�����Ӧ���ڣ�1031,3556��λ�ã����ҿ���������ļ���������������������񣬿�ȥ�ɣ�" )
	MisBeginCondition(NoMission, 719)
	MisBeginCondition(LvCheck, ">", 4 )
	MisBeginCondition(LvCheck, "<", 7 )
	MisBeginAction(AddMission, 719)
	MisBeginAction(SetFlag, 719, 1)
	MisBeginAction(AddTrigger, 7191, TE_KILL, 95, 15 )
	MisCancelAction(ClearMission, 719)
	
	MisNeed(MIS_NEED_KILL, 95, 15, 10, 15)

	MisPrize(MIS_PRIZE_MONEY, 50, 1)
	MisPrizeSelAll()
	
	MisResultTalk("<t>�ü��ˣ���Щ��������ǰ���������鷳�����������ܵ��ͷ��ˣ�������")
	MisHelpTalk("<t>��ô�ˣ�15�������ƻ��ǺܺöԸ��ģ����£�")
	MisResultCondition(HasMission, 719)
	MisResultCondition(HasFlag, 719, 24 )
	MisResultAction(AddExp, 75, 125)
	MisResultAction(ClearMission, 719)
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 95 )	
	TriggerAction( 1, AddNextFlag, 719, 10, 15 )
	RegCurTrigger( 7191 )


	-----------------------------------���˹���
	DefineMission( 740, "���˹���", 728 )

	MisBeginTalk( "<t>����ܶ��˶��ڱ�Թ˵�����ɳĮ����һ�����˹��ޣ��ܶ��˶��������ˣ��ҵ�����ˣ�Ӧ����<b������>�ɵģ���Ͱ���ȥ�ͷ�����һ�°ɣ���10��<b������>���У�������ڳǱ�Ұ���ҵ����ǣ����������ڵļ����������ܹ��㶨���ˣ���Ҳ�������Ψһ�ʺ��������" )
	MisBeginCondition(NoMission, 728)
	MisBeginCondition(NoMission, 719)
	MisBeginCondition(LvCheck, ">", 6 )
	MisBeginCondition(LvCheck, "<", 8 )
	MisBeginAction(AddMission, 728)
	MisBeginAction(SetFlag, 728, 1)
	MisBeginAction(AddTrigger, 7281, TE_KILL, 48, 10 )
	MisCancelAction(ClearMission, 728)
	
	MisNeed(MIS_NEED_KILL, 48, 10, 10, 10)

	MisPrize(MIS_PRIZE_MONEY, 100, 1)
	MisPrizeSelAll()
	
	MisResultTalk("<t>�ü��ˣ����³��и���Ӧ��������ʲô��Թ���˰ɡ�<n><t>��Щ�����ջ����Ǿ󣬺úõľ�Ȼ���ˡ�")
	MisHelpTalk("<t>��ô�ˣ�����Ҳ����Щ������û�취�𣿻�����ȥ���԰ɡ�")
	MisResultCondition(HasMission, 728)
	MisResultCondition(HasFlag, 728, 19 )
	MisResultAction(AddExp, 125, 175)
	MisResultAction(ClearMission, 728)
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 48)	
	TriggerAction( 1, AddNextFlag, 728, 10, 10 )
	RegCurTrigger( 7281 )
	
	-----------------------------------Ы��Σ��
	DefineMission( 741, "Ы��Σ��", 729 )

	MisBeginTalk( "<t>Ŷ����ļ��������ˣ�<n><t>���ã�������Ҳ���ʺ�����������������<n><t>��Ȼ���ڱ��������˵��¼������ˣ����Ǻ�Ȼ�ֲ�֪������ð�����ö��Ы�ӣ����Ǳ���ЩСЫ���������ˣ������˵��˿��ǻ�������Σ�յģ�������ȥ�ɵ�10��<b��Ы��>������ֻҪ����1184��3557���������ܿ����ˣ�ע�����ǵĶ����ܿ죬����һ��Ŷ��" )
	MisBeginCondition(NoMission, 729)
	MisBeginCondition(NoMission, 728)
	MisBeginCondition(NoMission, 719)
	MisBeginCondition(LvCheck, ">", 7 )
	MisBeginCondition(LvCheck, "<", 9 )
	MisBeginAction(AddMission, 729)
	MisBeginAction(SetFlag, 729, 1)
	MisBeginAction(AddTrigger, 7291, TE_KILL, 247, 10 )
	MisCancelAction(ClearMission, 729)
	
	MisNeed(MIS_NEED_KILL, 247, 10, 10, 10)

	MisPrize(MIS_PRIZE_MONEY, 150, 1)
	MisPrizeSelAll()
	
	MisResultTalk("<t>Ŷ���ҹ�Ȼû���Ҵ��ˣ���ô�������������ˣ�����̫���ˡ�")
	MisHelpTalk("<t>��ô�ˣ��򲻹���Ы���𣿼ǵö����ظ�Ʒ��")
	MisResultCondition(HasMission, 729)
	MisResultCondition(HasFlag, 729, 19 )
	MisResultAction(AddExp, 175, 250)
	MisResultAction(ClearMission, 729)
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 247)	
	TriggerAction( 1, AddNextFlag, 729, 10, 10 )
	RegCurTrigger( 7291 )

end
RobinMission037()


----------------------------------------------------------
--							--
--							--
--		���Ǳ�[Ѳ�߱���СĪ]			--
--							--
--		239185,277025				--
----------------------------------------------------------
function RobinMission038()

-----------------------------------��Ƥ����
	DefineMission( 732, "��Ƥ����", 720 )

	MisBeginTalk( "<t>�����Щѩԭ����Խ��Խ��Ƥ�ˣ���Ȼ����վ�ڴ����ʱ��͵Ϯ�ң������ȥ��ѵ����һ�°ɣ����15ֻ<bѩԭ����>�ͻ����ɡ�<n><t>��Ҫ����������Ŷ��<n><t>�ҿ��Ǻ������Ŀǰ��ʵ���ģ�" )
	MisBeginCondition(NoMission, 720)
	MisBeginCondition(LvCheck, ">", 4 )
	MisBeginCondition(LvCheck, "<", 7 )
	MisBeginAction(AddMission, 720)
	MisBeginAction(SetFlag, 720, 1)
	MisBeginAction(AddTrigger, 7201, TE_KILL, 235, 15 )
	MisCancelAction(ClearMission, 720)
	
	MisNeed(MIS_NEED_KILL, 235, 15, 10, 15)

	MisPrize(MIS_PRIZE_MONEY, 50, 1)
	MisPrizeSelAll()
	
	MisResultTalk("<t>�ܺã��������ǾͲ�������ô��Ƥ�˰ɣ���Ҳ��˯���þ��ˣ�ֻҪ�����ӳ����־����ˡ�")
	MisHelpTalk("<t>��û��������������˵Ӧ�ò������Ⱑ����ȥ�ɣ�")
	MisResultCondition(HasMission, 720)
	MisResultCondition(HasFlag, 720, 24 )
	MisResultAction(AddExp, 75, 125)
	MisResultAction(ClearMission, 720)
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 235 )	
	TriggerAction( 1, AddNextFlag, 720, 10, 15 )
	RegCurTrigger( 7201 )
	
-----------------------------------��ڶ���
	DefineMission( 742, "��ڶ���", 730 )

	MisBeginTalk( "<t>���ʱ��Ҫ���������������������ģ������Ǳ��Ǳ��ķǳ�ʱ�ڣ���Ҷ��ܼ�࣬������Щ<b��ԭ������>̫�ܳ��ˣ�һ��Ҫ����һ�£���ȥ��1179,371�����������10��<b��ԭ������>�����������ˡ�" )
	MisBeginCondition(NoMission, 730)
	MisBeginCondition(NoMission, 720)
	MisBeginCondition(LvCheck, ">", 6 )
	MisBeginCondition(LvCheck, "<", 8 )
	MisBeginAction(AddMission, 730)
	MisBeginAction(SetFlag, 730, 1)
	MisBeginAction(AddTrigger, 7301, TE_KILL, 239, 10 )
	MisCancelAction(ClearMission, 730)

	MisNeed(MIS_NEED_KILL, 239, 10, 10, 10)

	MisPrize(MIS_PRIZE_MONEY, 100, 1)
	MisPrizeSelAll()
	
	MisResultTalk("<t>ร�����ˣ������У���ЩС�������ܳ��أ���������ȥ���Ҿʹ�������Կ����ˡ�")
	MisHelpTalk("<t>��ѽ����û��ô��Ҫ֪������Ҳ��������������ء�")
	MisResultCondition(HasMission, 730)
	MisResultCondition(HasFlag, 730, 19 )
	MisResultAction(AddExp, 125, 175)
	MisResultAction(ClearMission, 730)
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 239 )	
	TriggerAction( 1, AddNextFlag, 730, 10, 10 )
	RegCurTrigger( 7301 )

	-----------------------------------����Ǩ��
	DefineMission( 743, "����Ǩ��", 731 )

	MisBeginTalk( "<t>�Ǻǣ��и�����Ϣ����һȺ�Թ�¹��������Ǩ�Ƶ����Ǳ��������ˣ��������͵���ʳ������һ������Ҫ�㾡�쵽��1164,305��������ȡ10ͷ<b�Թ�¹>�����������������Ͼ��д�ͳ��ˡ�" )
	MisBeginCondition(NoMission, 731)
	MisBeginCondition(NoMission, 720)
	MisBeginCondition(NoMission, 730)
	MisBeginCondition(LvCheck, ">", 7 )
	MisBeginCondition(LvCheck, "<", 9 )
	MisBeginAction(AddMission, 731)
	MisBeginAction(SetFlag, 731, 1)
	MisBeginAction(AddTrigger, 7311, TE_KILL, 238, 10 )
	MisCancelAction(ClearMission, 731)
	
	MisNeed(MIS_NEED_KILL, 238, 10, 10, 10)

	MisPrize(MIS_PRIZE_MONEY, 150, 1)
	MisPrizeSelAll()
	
	MisResultTalk("<t>�ð������Ȼ����ˣ�������ģ�<n><t>�뵽����ζ�Ŀ�¹�⣬�Ҷ�����վ���ˡ�")
	MisHelpTalk("<t>��ô�ˣ�����ʳ�ﶼ�򲻹��𣿿�ȥ�ɣ�<n><t>����ߵ����¹��أ�")
	MisResultCondition(HasMission, 731)
	MisResultCondition(HasFlag, 731, 19 )
	MisResultAction(AddExp, 175, 250)
	MisResultAction(ClearMission, 731)
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 238 )	
	TriggerAction( 1, AddNextFlag, 731, 10, 10 )
	RegCurTrigger( 7311 )

end
RobinMission038()


----------------------------------------------------------
--							--
--							--
--		��������					--
--							--
--							--
----------------------------------------------------------
function RobinMission039()

-----------------------------------���Ÿ����˹
	DefineMission( 50, "���Ÿ����˹", 50 )
	
	MisBeginTalk( "<t>���ڣ����Ѿ�û��ʲô���԰�������ˡ�<n><t>�����������з��ţ�������Ž������������<bѲ�߱������˹>����������µ�����ģ�������2065,2732������" )
	MisBeginCondition(HasRecord, 704)
	MisBeginCondition(NoRecord, 50)
	MisBeginCondition(NoMission, 50)
	MisBeginAction(AddMission, 50)
	MisBeginAction(GiveItem, 4111, 1, 4)
	MisCancelAction(ClearMission, 50 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "�����͸�Ѳ�߱������˹")

	MisHelpTalk("<t>���˹����2065,2732������ȥ�ɡ�")
	MisResultCondition(AlwaysFailure )
-----------------------------------���Ÿ���ķ
	DefineMission( 51, "���Ÿ���ķ", 51 )
	
	MisBeginTalk( "<t>�����ϲ���ռ����ս������ô���������з��<bҩ�����˵�ķ>���ţ�������Ÿ�������һ���������ģ���ķ����2250,2770���" )
	MisBeginCondition(HasRecord, 704)
	MisBeginCondition(NoRecord, 51)
	MisBeginCondition(NoMission, 51)
	MisBeginAction(AddMission, 51)
	MisBeginAction(GiveItem, 4112, 1, 4)
	MisCancelAction(ClearMission, 51  )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "�����͸�ҩ�����˵�ķ")

	MisHelpTalk("<t>��ô����û���Ž�����ķ����������ܽ���������2250,2770��")
	MisResultCondition(AlwaysFailure )

-----------------------------------���Ÿ����˹
	DefineMission( 52, "���Ÿ����˹", 50, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>Ŷ���ܺã���ĵ���һ���ܹ������ҵġ�<n><t>���ˣ�ս����һ��Ҫע���Լ�������ֵŶ������ͷ���Ա���һ������������ֵ�ĺ������Ǿ����������ֵ�����ǿ��Գ�ΪHP����HP��Ϊ0ʱ����ͻ������ˣ�ǧ��С�ģ�<n><t>����ͨ���ԡ�ƻ�����������⡱����ָ�����ֵ�ĵ��ߣ��㻹����ʹ��insert�������»�վ��������״̬��HP�Ļָ��ٶȻ�ӿ�Ŷ��")
	MisResultCondition(NoRecord, 50)
	MisResultCondition(HasMission, 50)
	MisResultCondition(HasItem, 4111, 1)
	MisResultAction(TakeItem, 4111, 1)
	MisResultAction(ClearMission, 50)
	MisResultAction(SetRecord, 50)
	MisResultAction(AddExp, 50, 50)

-----------------------------------ʮ���
	DefineMission( 53, "ʮ���", 52 )

	MisBeginTalk( "<t>��������������Σ������Ϊ����Ͷ�ߣ�˵�ҵ�Ͻ������̫���<r�����>���кö��˱������ˣ�û�취����Ϊ�Ҷ���æ�ŶԸ�����ޢޢ����԰�����һ���ð��ң�<r�����>�����⸽�������ҵ�������6ֻ<r�����>��������Ҳ�ý����ˣ���һ���ᱨ����ģ���ȥ���Ŷ��" )
	MisBeginCondition(HasRecord, 50)
	MisBeginCondition(NoMission, 52)
	MisBeginCondition(NoRecord, 52)
	MisBeginAction(AddMission, 52)
	MisBeginAction(AddTrigger, 521, TE_KILL, 206, 6 )
	MisCancelAction(ClearMission, 52)
	

	MisNeed(MIS_NEED_DESP, "ɱ��6ֻ<r�����>Ȼ�������˹̸̸")
	MisNeed(MIS_NEED_KILL, 206, 6, 10, 6)
	
	MisResultTalk("<t>̫���ˣ������Ǹ������ѣ�����İ���������������Ҳ���ᱻ����ϴ����Ѳ��С�ӵ������ˡ���")
	MisHelpTalk("<t>��ô�ˣ�����6ֻ����䣬��һ��û����ģ���ȥ��أ�")
	MisResultCondition(HasMission, 52)
	MisResultCondition(HasFlag, 52, 15 )
	MisResultAction(AddExp, 150, 150)
	MisResultAction(ClearMission, 52)
	MisResultAction(SetRecord, 52)
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 206 )	
	TriggerAction( 1, AddNextFlag, 52, 10, 6 )
	RegCurTrigger( 521 )

-----------------------------------���Ÿ�˹����
	DefineMission( 54, "���Ÿ�˹����", 53 )
	
	MisBeginTalk( "<t>�����۷������¼��е��ת�ˣ��������з��ţ���һ���������¼��ı����飬����Ҫ���˰��Ұ������������ǵ���ϯ����<b˹����>��������������Ŀǰ�������<n><t>����������ȫ�����������������������һ�˰ɣ�˹���������İ칫�Ҿ���2219,2749��" )
	MisBeginCondition(HasRecord, 52)
	MisBeginCondition(NoRecord, 53)
	MisBeginCondition(NoMission, 53)
	MisBeginAction(AddMission, 53)
	MisBeginAction(GiveItem, 4113, 1, 4)
	MisCancelAction(ClearMission, 53  )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "���Ÿ�������˹����")

	MisHelpTalk("<t>��ô���㻹û�ж�������ɲ��У�<n><t>˹���������İ칫�Ҿ���2219,2749��")
	MisResultCondition(AlwaysFailure )

-----------------------------------���Ÿ�˹����
	DefineMission( 55, "���Ÿ�˹����", 53, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>�ţ��������˹�ı��氡�����˹������˵����ε��������кܴ�Ĺ��ͣ�������")
	MisResultCondition(NoRecord, 53)
	MisResultCondition(HasMission, 53)
	MisResultCondition(HasItem, 4113, 1)
	MisResultAction(TakeItem, 4113, 1)
	MisResultAction(ClearMission, 53)
	MisResultAction(SetRecord, 53)
	MisResultAction(AddExp, 80, 80)

-----------------------------------Ģ������
	DefineMission( 56, "Ģ������", 54 )

	MisBeginTalk( "<t>��֪���ĸ����ĵļһ�ڳ�������˺ܶ�<b���칽>�������Ѿ����ĳ����ˣ���Ȼ��Ҳ��ϲ����Ģ����������û��Ը�ⱻ��Щ���칽ҧ�á�<n><t>����������ֲ��㣬����Ҫ�鷳���ˣ�ȥ��2220,2564�������8��<b���칽>�ͺ��ˣ����а��У����ҿ���ȥ�����������Щ�����ã����Ǿ��޷��ڳ������������κ����ˡ�" )
	MisBeginCondition(HasRecord, 53)
	MisBeginCondition(NoMission, 54)
	MisBeginCondition(NoRecord, 54)
	MisBeginAction(AddMission, 54)
	MisBeginAction(AddTrigger, 541, TE_KILL, 184, 8 )
	MisCancelAction(ClearMission, 54)
	

	MisNeed(MIS_NEED_DESP, "��ɱ8��<r���칽>Ȼ���Ұ�����˹����̸̸")
	MisNeed(MIS_NEED_KILL, 184, 8, 10, 8)

	MisPrize(MIS_PRIZE_ITEM, 9, 1, 4)
	MisPrizeSelAll()
	
	MisResultTalk("<t>ŶŶ��������������а���<n><t>�����ͺ��ˣ�����İ����������ǵ�����ͱ�����ɶ��ˣ�������ǻ�����һЩ����Ҫ������һ��Ҫ����ȥ��һ���ء�")
	MisHelpTalk("<t>��������8�����칽Ŷ��<n><t>�������㣬���ͣ�")
	MisResultCondition(HasMission, 54)
	MisResultCondition(HasFlag, 54, 17 )
	MisResultAction(AddExp, 250, 250)
	MisResultAction(ClearMission, 54)
	MisResultAction(SetRecord, 54)
	MisResultBagNeed(1)	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 184 )	
	TriggerAction( 1, AddNextFlag, 54, 10, 8 )
	RegCurTrigger( 541 )

-----------------------------------���Ÿ�С���
	DefineMission( 57, "���Ÿ�С���", 55 )
	
	MisBeginTalk( "<t>���ڣ���������һ�⹫����Ҫ��ĸ������ǵ�����<bС���>������<n><t>��Ӧ����ʶ����������2193,2706���" )
	MisBeginCondition(HasRecord, 54)
	MisBeginCondition(NoRecord, 55)
	MisBeginCondition(NoMission, 55)
	MisBeginAction(AddMission, 55)
	MisBeginAction(GiveItem, 4114, 1, 4)
	MisCancelAction(ClearMission, 55  )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "���Ÿ�����С���")

	MisHelpTalk("<t>��ô���㻹û������ȥС��������𣿾���2193,2706��")
	MisResultCondition(AlwaysFailure )


-----------------------------------���Ÿ�С���
	DefineMission( 58, "���Ÿ�С���", 55, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>Ŷ����˹���ص��Ű���<n><t>��ô���������͵��أ��������ǻ��ǲ�ˡ�")
	MisResultCondition(NoRecord, 55)
	MisResultCondition(HasMission, 55)
	MisResultCondition(HasItem, 4114, 1)
	MisResultAction(TakeItem, 4114, 1)
	MisResultAction(ClearMission, 55)
	MisResultAction(SetRecord, 55)
	MisResultAction(AddExp, 120, 120)

-----------------------------------�����ж�
	DefineMission( 59, "�����ж�", 56 )

	MisBeginTalk( "<t>�ҵ����ѣ�����û�з��֣������������Χ���̻�����֪�����ؼ����ˣ���ֵ�ڵ�Ѳ�߱�˵������Ϊ��Щ��θ�ڵ�<b��ԭ��>���ۼ������и������ˣ���Ҳ���ǰ����ǵ�һ���ӣ�ȥ�ɵ�12����ԭ��Ӧ��Ҳ��ȫ������������Ӧ�ÿ����ڣ�2057,2564���ҵ����ǡ�<n><t>˳�������㣬��Щ��ԭ����Ȼ�������������Ƿ������Ǻܸߵģ���Ȼ����������֮ǰ�������е��Ѷ��ˣ�������ļ���Ҳ���Ǻ����ˣ�" )
	MisBeginCondition(HasRecord, 55)
	MisBeginCondition(NoMission, 56)
	MisBeginCondition(NoRecord, 56)
	MisBeginAction(AddMission, 56)
	MisBeginAction(AddTrigger, 561, TE_KILL, 119, 12 )
	MisCancelAction(ClearMission, 56)
	

	MisNeed(MIS_NEED_DESP, "��ɱ12��<r��ԭ��>Ȼ���Ұ�����С���̸̸")
	MisNeed(MIS_NEED_KILL, 119, 12, 10, 12)

	MisPrize(MIS_PRIZE_ITEM, 4309, 1, 4)
	MisPrizeSelAll()
	
	MisResultTalk("<t>�㶨�˰��������ģ���Ȼ˵��Щ��ԭ��Ҳͦ�����ģ�����Ϊ�˴�ҹ�ͬ����Ļ��������ò�ί�������ˣ�Ҫ֪������˵���������������ɴ�½�϶���ʼ��Դ�ѷ����ء�")
	MisHelpTalk("<t>��������12����ԭ��Ŷ��<n><t>��Ӧ�ÿ����ڣ�2057,2564���ҵ����ǡ�")
	MisResultCondition(HasMission, 56)
	MisResultCondition(HasFlag, 56, 21 )
	MisResultAction(ClearMission, 56)
	MisResultAction(AddExp, 400, 400)
	MisResultAction(SetRecord, 56)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 119 )	
	TriggerAction( 1, AddNextFlag, 56, 10, 12 )
	RegCurTrigger( 561 )


-----------------------------------���Ÿ�ɪ��
	DefineMission( 60, "���Ÿ�ɪ��", 57 )
	
	MisBeginTalk( "<t>��Ȼ������Щ�����ǵ������鷳����ܶ��£���������Ҳ�ɳ��ˡ�<n><t>���ڣ��������������ŵ�����������ָ��<bɪ��>�����������µ�ָ���ġ�<n><t>������2223��2785��" )
	MisBeginCondition(HasRecord, 56)
	MisBeginCondition(NoRecord, 57)
	MisBeginCondition(NoMission, 57)
	MisBeginAction(AddMission, 57)
	MisBeginAction(GiveItem, 4115, 1, 4)
	MisCancelAction(ClearMission, 57  )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "���Ÿ�����������ָ��ɪ��")

	MisHelpTalk("<t>ɪ������2223��2785����ȥ�ɡ�")
	MisResultCondition(AlwaysFailure )

-----------------------------------���Ÿ�ɪ��
	DefineMission( 61, "���Ÿ�ɪ��", 57, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>лл����ҵ��ţ���������ܰ���������Ļ�ӭŶ��")
	MisResultCondition(NoRecord, 57)
	MisResultCondition(HasMission, 57)
	MisResultCondition(HasItem, 4115, 1)
	MisResultAction(TakeItem, 4115, 1)
	MisResultAction(ClearMission, 57)
	MisResultAction(SetRecord, 57)
	MisResultAction(AddExp, 200, 200)


-----------------------------------��ʿתְ����
	DefineMission( 62, "��ʿתְ����", 58 )
	
	MisBeginTalk( "<t>���ڵ��˾�����ְҵ��ʱ���ˣ���Ҫ��Ϊ��ʿ�Ļ������ȥ�Ұ����ǳǱ��������أ�������2192,2767������������Ž������أ�������㿼��ġ�<n><t>��ʿְҵ��ս������ǿ��ְҵ����ʿ�Ķ�תְҵ�����ݼ�����˫��ʿ���ʺ����飬���з�����ǿ�ľ޽�ʿ���ʺϿ���˹��")
	MisBeginCondition(LvCheck, ">", 8 )
	MisBeginCondition(PfEqual, 0 )
	MisBeginCondition(CheckConvertProfession, MIS_FENCER )
	MisBeginCondition(NoRecord, 58)
	MisBeginCondition(NoRecord, 59)
	MisBeginCondition(NoRecord, 60)
	MisBeginCondition(NoRecord, 61)
	MisBeginCondition(NoMission, 58)
	MisBeginCondition(NoMission, 59)
	MisBeginCondition(NoMission, 60)
	MisBeginCondition(NoMission, 61)
	MisBeginAction(AddMission, 58)
	MisBeginAction(GiveItem, 4116, 1, 4)
	MisCancelAction(ClearMission, 58  )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "���Ÿ������Ǳ���")

	MisHelpTalk("<t>������Ϊ��ʿ�Ļ�����ȥ�ұ��ذɡ�")
	MisResultCondition(AlwaysFailure )

-----------------------------------����תְ����
	DefineMission( 63, "����תְ����", 59 )
	
	MisBeginTalk( "<t>���ڵ��˾�����ְҵ��ʱ���ˣ���Ҫ��Ϊ���˵Ļ������ȥ������½�ı��Ǳ�����ŷ�������ڱ��Ǳ�1365,570������������Ž�����ŷ��������㿼��ġ�<n><t>����ְҵ��Զ��ְҵ��ͨ��ʹ�ù�����ǹе����ת���Գ�Ϊ�ѻ��֣��ʺ�����ͷ�������" )
	MisBeginCondition(LvCheck, ">", 8 )
	MisBeginCondition(PfEqual, 0 )
	MisBeginCondition(CheckConvertProfession, MIS_HUNTER )
	MisBeginCondition(NoRecord, 58)
	MisBeginCondition(NoRecord, 59)
	MisBeginCondition(NoRecord, 60)
	MisBeginCondition(NoRecord, 61)
	MisBeginCondition(NoMission, 58)
	MisBeginCondition(NoMission, 59)
	MisBeginCondition(NoMission, 60)
	MisBeginCondition(NoMission, 61)
	MisBeginAction(AddMission, 59)
	MisBeginAction(GiveItem, 4117, 1, 4)
	MisCancelAction(ClearMission, 59 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "���Ÿ����Ǳ���ŷ")

	MisHelpTalk("<t>������Ϊ���˵Ļ�����ȥ����ŷ�ɡ�")
	MisResultCondition(AlwaysFailure )

-----------------------------------ҩʦתְ����
	DefineMission( 64, "ҩʦתְ����", 60 )
	
	MisBeginTalk( "<t>���ڵ��˾�����ְҵ��ʱ���ˣ���Ҫ��Ϊҩʦ�Ļ������ȥħŮ֮����ɳᰳ��Ҵ���ٸʵ�ά����������ɳᰳ�862,3500������������Ž����ʵ�ά����������㿼��ġ�<n><t>ҩʦְҵ��Ψһӵ�лָ�������ְҵ����ת���Գ�Ϊ�ָ�ר����ʥְ�ߺͷ�ӡר���ķ�ӡʦ���ʺϷ������Ͱ��ס�" )
	MisBeginCondition(LvCheck, ">", 8 )
	MisBeginCondition(PfEqual, 0 )
	MisBeginCondition(CheckConvertProfession, MIS_DOCTOR )
	MisBeginCondition(NoRecord, 58)
	MisBeginCondition(NoRecord, 59)
	MisBeginCondition(NoRecord, 60)
	MisBeginCondition(NoRecord, 61)
	MisBeginCondition(NoMission, 58)
	MisBeginCondition(NoMission, 59)
	MisBeginCondition(NoMission, 60)
	MisBeginCondition(NoMission, 61)
	MisBeginAction(AddMission, 60)
	MisBeginAction(GiveItem, 4118, 1, 4)
	MisCancelAction(ClearMission, 60 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "���Ÿ�ɳᰳǸʵ�ά��")

	MisHelpTalk("<t>������Ϊҩʦ�Ļ�����ȥ�Ҹʵ�ά���ɡ�")
	MisResultCondition(AlwaysFailure )

-----------------------------------ð����תְ����
	DefineMission( 65, "ð����תְ����", 61 )
	
	MisBeginTalk( "<t>���ڵ��˾�����ְҵ��ʱ���ˣ���Ҫ��Ϊð���ߵĻ������ȥ��Сɽ���������ڰ�����2193,2730������������Ž���Сɽ����������㿼��ġ�<n><t>ð�����ǿ���ʹ����Ȼ֮����ְҵ����ת���Գ�Ϊ����ʿ���ں�������ǿ��ְҵ���ʺ����顢�������Ͱ��ס�" )
	MisBeginCondition(LvCheck, ">", 8 )
	MisBeginCondition(PfEqual, 0 )
	MisBeginCondition(CheckConvertProfession, MIS_RISKER )
	MisBeginCondition(NoRecord, 58)
	MisBeginCondition(NoRecord, 59)
	MisBeginCondition(NoRecord, 60)
	MisBeginCondition(NoRecord, 61)
	MisBeginCondition(NoMission, 58)
	MisBeginCondition(NoMission, 59)
	MisBeginCondition(NoMission, 60)
	MisBeginCondition(NoMission, 61)
	MisBeginAction(AddMission, 61)
	MisBeginAction(GiveItem, 4119, 1, 4)
	MisCancelAction(ClearMission, 61 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "���Ÿ�������Сɽ��")

	MisHelpTalk("<t>������Ϊð���ߵĻ�����ȥ��Сɽ����2193,2730���ɡ�")
	MisResultCondition(AlwaysFailure )


-----------------------------------��ʿתְ����
	DefineMission( 66, "��ʿתְ����", 58, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>�ã���Ȼ������ָ���Ƽ��������ˣ���Ӧ���ǲ���ģ������Ϊ��ʿ�ͱ�������ҽ����������")
	MisResultCondition(NoRecord, 58)
	MisResultCondition(HasMission, 58)
	MisResultCondition(HasItem, 4116, 1)
	MisResultAction(TakeItem, 4116, 1)
	MisResultAction(ClearMission, 58)
	MisResultAction(SetRecord, 58)

-----------------------------------��ʿתְ����
	DefineMission( 67, "��ʿתְ����", 62 )

	MisBeginTalk( "<t>����������Ϊ��ʿ��ô�����е�ʶѽ��<n><t>�������е�ʶ�����������Ϊ��ʿ�㻹����֤���Լ����㹻��������ʵ����<n><t>������ȥ<p������Ұ��>���12ֻ<b������>��1950,2563��������<n><t>�����������������ĵ�һ�ؿ��˾���ɹ�ͨ���ˡ�" )
	MisBeginCondition(HasRecord, 58)
	MisBeginCondition(NoMission, 62)
	MisBeginCondition(NoRecord, 62)
	MisBeginAction(AddMission, 62)
	MisBeginAction(AddTrigger, 621, TE_KILL, 237, 12 )
	MisCancelAction(ClearMission, 62)
	

	MisNeed(MIS_NEED_DESP, "��ɱ12��<b������>Ȼ���Ұ����Ǳ���̸̸")
	MisNeed(MIS_NEED_KILL, 237, 12, 10, 12)
	
	MisResultTalk("<t>���ѣ��������治��<n><t>��ͨ���ҵĲ����ˣ�����Ǿ�ְ��ʿ����Ҫ�ĵ�һ�ؿ����ˡ�")
	MisHelpTalk("<t>�㻹û�дﵽ�ҵ�Ҫ��Ŷ����ʿ���ʸ�ɲ��������ܻ�õġ�")
	MisResultCondition(HasMission, 62)
	MisResultCondition(HasFlag, 62, 21 )
	MisResultAction(ClearMission, 62)
	MisResultAction(SetRecord, 62)
	MisResultAction(AddExp, 300, 300)

		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 237 )	
	TriggerAction( 1, AddNextFlag, 62, 10, 12 )
	RegCurTrigger( 621 )


-----------------------------------��ʿתְ����
	DefineMission( 68, "��ʿתְ����", 63 )
	
	MisBeginTalk( "<t>���ڣ���������ҵĳ��ٺ����ٽ�<b����˹>����(2277,2831)֤�����ʵ������������ţ�����Ŵ������Ѿ�ͨ���˵�һ�أ�������������˹������������յĿ��ˡ�")
	MisBeginCondition(HasRecord, 62)
	MisBeginCondition(NoRecord, 63)
	MisBeginCondition(NoMission, 63)
	MisBeginAction(AddMission, 63)
	MisBeginAction(GiveItem, 4120, 1, 4)
	MisCancelAction(ClearMission, 63  )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "���Ÿ������ٽ�����˹")

	MisHelpTalk("<t>��ȥ�ɣ���������һ����ͨ�����˵ġ�")
	MisResultCondition(AlwaysFailure )

-----------------------------------��ʿתְ����
	DefineMission( 69, "��ʿתְ����", 63, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>Ŷ����һ�����Ϊ��ʿ���˳����ˣ��ܺá�")
	MisResultCondition(NoRecord, 63)
	MisResultCondition(HasMission, 63)
	MisResultCondition(HasItem, 4120, 1)
	MisResultAction(TakeItem, 4120, 1)
	MisResultAction(ClearMission, 63)
	MisResultAction(SetRecord, 63)
	MisResultAction(AddExp, 100, 100)

-----------------------------------��ʿתְ����
	DefineMission( 70, "��ʿתְ����", 64 )

	MisBeginTalk( "<t>����ͨ���ҵĿ���ô��<n><t>ȥ<p������Ұ��>�ռ�3��<r����>�������С�<n><t>������Щ���ҽ��������Ǹ��ϸ�Ľ�ʿ��<n><t>���ˣ���Щ���ޣ�����Դ�2057,2638�����ĺ���ɽ������õ���")
	MisBeginCondition(HasRecord, 63)
	MisBeginCondition(NoMission, 64)
	MisBeginCondition(NoRecord, 64)
	MisBeginAction(AddMission, 64)
	MisBeginAction(AddTrigger, 641, TE_GETITEM, 1678, 3 )
	MisCancelAction(ClearMission, 64)

	MisNeed(MIS_NEED_DESP, "�ռ�3��<r����>Ȼ�����������˹̸̸")
	MisNeed(MIS_NEED_ITEM, 1678, 3, 10, 3)
	
	MisResultTalk("<t>��ɹ��ˣ�����Ϊ����ˣ��ҹ�Ȼû�п����㣡")
	MisHelpTalk("<t>3�����ޣ�һ���������١�")
	MisResultCondition(HasMission, 64)
	MisResultCondition(HasItem, 1678, 3 )
	MisResultAction(TakeItem, 1678, 3)
	MisResultAction(ClearMission, 64)
	MisResultAction(SetRecord, 64)
	MisResultAction(AddExp, 300, 300)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1678 )	
	TriggerAction( 1, AddNextFlag, 64, 10, 3 )
	RegCurTrigger( 641 )

-----------------------------------��ʿתְ����
	DefineMission( 71, "��ʿתְ����", 65 )
	
	MisBeginTalk( "<t>���Ѿ��򺣾�֤���������������ȥ������˵�ɣ����Ѿ����������תְ��һ��ΰ��Ľ�ʿ�ˣ��Ȿ<r����֤��>����֤����")
	MisBeginCondition(HasRecord, 64)
	MisBeginCondition(NoRecord, 65)
	MisBeginCondition(NoMission, 65)
	MisBeginAction(AddMission, 65)
	MisBeginAction(GiveItem, 3953, 1, 4)
	MisCancelAction(ClearMission, 65 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "���Ÿ������Ǳ���(2192,2767)")

	MisHelpTalk("<t>��ô��Ҫ����ԥʲô����ȥ�ұ��ذɡ�")
	MisResultCondition(AlwaysFailure )


-----------------------------------��ʿתְ����
	DefineMission( 72, "��ʿתְ����", 65, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>̫���ˣ����Ȼ�����õ�����֤�飬��ϲ�㣬�Ѿ���Ϊ�ǽ�ʿ�ˣ�<n><t>��������������Դӱ���������ȡ��ʿְҵ�����ˡ�<n><t>���⣬����Ե�С������ﹺ��ʿ���������������������򵽽�ʿװ���������Ե��ӻ����ˡ������������򵽽�ʿ�ļ�����Ŷ��ǧ��Ҫ����Ŷ��")
	MisResultCondition(NoRecord, 65)
	MisResultCondition(HasMission, 65)
	MisResultCondition(HasItem, 3953, 1)
	MisResultAction(TakeItem, 3953, 1)
	MisResultAction(ClearMission, 65)
	MisResultAction(SetRecord, 65)
	MisResultAction(AddExp, 100, 100)
	MisResultAction(SetProfession, 1)
	MisResultAction(GiveItem, 1, 1, 4)
	MisResultAction(GiveItem, 3164, 1, 4)
	MisResultBagNeed(2)

-----------------------------------���Ÿ���ķ
	DefineMission( 73, "���Ÿ���ķ", 51, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>����̫���ˣ���ĵ��������ܹ������ҡ�")
	MisResultCondition(NoRecord, 51)
	MisResultCondition(HasMission, 51)
	MisResultCondition(HasItem, 4112, 1)
	MisResultAction(TakeItem, 4112, 1)
	MisResultAction(ClearMission, 51)
	MisResultAction(SetRecord, 51)
	MisResultAction(AddExp, 50, 50)


-----------------------------------����䷽
	DefineMission( 74, "����䷽", 66 )

	MisBeginTalk( "<t>�����Һ�Ȼ�и��µ��䷽��У������ֵ��鷳���ٸ�����һЩԭ�����ˣ�����Ҫ3��<r����ī֭>������Ժ��ߵ�С����<r����>�����ҵ���Щ�������ҵ����һ���㱨��ģ���ȥ�ɣ������������Ӷ�������䷽��ȫ�����ˡ�")
	MisBeginCondition(HasRecord, 51)
	MisBeginCondition(NoMission, 66)
	MisBeginCondition(NoRecord, 66)
	MisBeginAction(AddMission, 66)
	MisBeginAction(AddTrigger, 661, TE_GETITEM, 1705, 3 )
	MisCancelAction(ClearMission, 66)
	
	MisNeed(MIS_NEED_DESP, "�ռ�3��<r����ī֭>Ȼ���ҵ�ķ(2250,2770)̸̸")
	MisNeed(MIS_NEED_ITEM, 1705, 3, 10, 3)
	
	MisResultTalk("<t>�ܺã��������ռ�������Щ�����������Ļ����ҵ���ҩ�䷽���ܽ��������ˣ�����ɹ��Ļ����Ժ��ҳ������ҩ�ͻ�����г��֡�")
	MisHelpTalk("<t>��ô�ˣ���û�ռ��룿ץ��ʱ�䣬���ҵ���л�û��ʧ����")
	MisResultCondition(HasMission, 66)
	MisResultCondition(HasItem, 1705, 3 )
	MisResultAction(TakeItem, 1705, 3)
	MisResultAction(ClearMission, 66)
	MisResultAction(SetRecord, 66)
	MisResultAction(AddExp, 150, 150)
		
	InitTrigger()
	TriggerCondition( 1, IsItem, 1705 )	
	TriggerAction( 1, AddNextFlag, 66, 10, 3 )
	RegCurTrigger( 661 )

-----------------------------------���Ÿ�����
	DefineMission( 75, "���Ÿ�����", 67 )
	
	MisBeginTalk( "<t>�ҵ�ʵ�黹û��ʲô��չ������Ҳ���ܰﵽ��ʲô�ˡ�<n><t>�����з��ţ��������������(2240,2752)�����������̻���ʲô����û�С����ˣ��Ժ����ռ����κζ���û���õĵ��ߣ������������ҵģ����ң������ﻹ���۸��ֻظ�Ʒ������һ��Ҫ����������Ŷ��")
	MisBeginCondition(HasRecord, 66)
	MisBeginCondition(NoRecord, 67)
	MisBeginCondition(NoMission, 67)
	MisBeginAction(AddMission, 67)
	MisBeginAction(GiveItem, 4121, 1, 4)
	MisCancelAction(ClearMission, 67 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "���Ÿ�����������")

	MisHelpTalk("<t>�������̻���������ڰ�����2240,2752�����������ġ�")
	MisResultCondition(AlwaysFailure )

-----------------------------------���Ÿ�����
	DefineMission( 76, "���Ÿ�����", 67, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>Ŷ���ǵ�ķ�Ƽ������İ����õģ���֪���ˡ�")
	MisResultCondition(NoRecord, 67)
	MisResultCondition(HasMission, 67)
	MisResultCondition(HasItem, 4121, 1)
	MisResultAction(TakeItem, 4121, 1)
	MisResultAction(ClearMission, 67)
	MisResultAction(SetRecord, 67)
	MisResultAction(AddExp, 80, 80)

-----------------------------------Ģ��Ģ��
	DefineMission( 77, "Ģ��Ģ��", 68 )

	MisBeginTalk( "<t>˵������ǰЩʱ�������ķ�ڰ�����������һЩ<b���칽>���������æ�Ų����䷽�������������Ǹ����ˣ�����������Ҳ�����������ó���ʱ���ˣ��������ȥȡ�ռ�6��<r��Ģ��>�ɡ�<n><t>������˵������������칽���е��ף���û��Ǵ��ϵ�ظ�Ʒ�ȽϺá���������칽���ڣ�2220,2564����λ�ã���ȥ�����ɣ����ڿ����ջ�����ʱ�����������ˣ�")
	MisBeginCondition(HasRecord, 67)
	MisBeginCondition(NoMission, 68)
	MisBeginCondition(NoRecord, 68)
	MisBeginAction(AddMission, 68)
	MisBeginAction(AddTrigger, 681, TE_GETITEM, 1725, 6 )
	MisCancelAction(ClearMission, 68)
	
	MisNeed(MIS_NEED_DESP, "�ռ�6��<r��Ģ��>Ȼ���Ұ���������(2240,2752)̸̸")
	MisNeed(MIS_NEED_ITEM, 1725, 6, 10, 6)

	MisPrize(MIS_PRIZE_ITEM, 4308, 1, 4)
	MisPrizeSelAll()
	
	MisResultTalk("<t>̫���ˣ��������ռ�������Щ������û���˰ɣ������������ˡ�")
	MisHelpTalk("<t>��ô�ˣ���û�ռ��룿�����Ǳ����칽����ܻ����˰ɣ�")
	MisResultCondition(HasMission, 68)
	MisResultCondition(HasItem, 1725, 6 )
	MisResultAction(TakeItem, 1725, 6)
	MisResultAction(ClearMission, 68)
	MisResultAction(SetRecord, 68)
	MisResultAction(AddExp, 250, 250)
	MisResultBagNeed(1)
		
	InitTrigger()
	TriggerCondition( 1, IsItem, 1725 )	
	TriggerAction( 1, AddNextFlag, 68, 10, 6 )
	RegCurTrigger( 681 )

-----------------------------------���Ÿ�����
	DefineMission( 78, "���Ÿ�����", 69 )
	
	MisBeginTalk( "<t>����ȥ�㻹���ܸɵģ��ǵ�<bˮ�ֺ���>�ϴ����Ұ����Ҹ����֣���һ���еģ����������ȥ�����ɡ�<n><t>���ƾ��ڰ�����ͷ(2219,2911)������")
	MisBeginCondition(HasRecord, 68)
	MisBeginCondition(NoRecord, 69)
	MisBeginCondition(NoMission, 69)
	MisBeginAction(AddMission, 69)
	MisBeginAction(GiveItem, 4122, 1, 4)
	MisCancelAction(ClearMission, 69 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "���Ÿ�ˮ�ֺ���")

	MisHelpTalk("<t>��ô��������û�գ�ȥ�Һ��ưɡ�")
	MisResultCondition(AlwaysFailure )

-----------------------------------���Ÿ�����
	DefineMission( 79, "���Ÿ�����", 69, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>Ŷ���ǵ�ķ�Ƽ������İ����õģ���֪���ˡ�")
	MisResultCondition(NoRecord, 69)
	MisResultCondition(HasMission, 69)
	MisResultCondition(HasItem, 4122, 1)
	MisResultAction(TakeItem, 4122, 1)
	MisResultAction(ClearMission, 69)
	MisResultAction(SetRecord, 69)
	MisResultAction(AddExp, 120, 120)

-----------------------------------��ʧ�Ļ���
	DefineMission( 80, "��ʧ�Ļ���", 70 )

	MisBeginTalk( "<t>�ϴ��Ҹ��𱣹ܸۿڵ�һ������ʱ����С����ʧ��2��<r��Ѫ>������Ǹ����鷳����<n><t>������ذ����ռ�2����Ѫ�������ǿ����������ذ���<n><t>�Ҽǵô�<r��ԭ��>(2057,2564)���ϾͿ��Եõ��ģ�ȫ�����ˡ�")
	MisBeginCondition(HasRecord, 69)
	MisBeginCondition(NoMission, 70)
	MisBeginCondition(NoRecord, 70)
	MisBeginAction(AddMission, 70)
	MisBeginAction(AddTrigger, 701, TE_GETITEM, 1844, 2 )
	MisCancelAction(ClearMission, 70)
	
	MisNeed(MIS_NEED_DESP, "�ռ�2��<r��Ѫ>Ȼ���Ұ����Ǻ��ƣ�2219,2911��̸̸")
	MisNeed(MIS_NEED_ITEM, 1844, 2, 10, 2)
	
	MisPrize(MIS_PRIZE_ITEM, 4310, 1, 4)
	MisPrizeSelAll()
	
	MisResultTalk("<t>̫���ˣ����µþ��ˣ�<n><t>�����ǰ����ҵĴ�æ�ˣ�лл��лл��лл��")
	MisHelpTalk("<t>���ȥ�ɣ�<n><t>���ҵĴ��󱻷���֮ǰ��һ��Ҫ���Ҹ㵽��Щ��Ѫ��")
	MisResultCondition(HasMission, 70)
	MisResultCondition(HasItem, 1844, 2 )
	MisResultAction(TakeItem, 1844, 2)
	MisResultAction(ClearMission, 70)
	MisResultAction(SetRecord, 70)
	MisResultAction(AddExp, 400, 400)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1844 )	
	TriggerAction( 1, AddNextFlag, 70, 10, 2 )
	RegCurTrigger( 701 )

-----------------------------------���Ÿ�ɪ��
	DefineMission( 81, "���Ÿ�ɪ��", 71 )
	
	MisBeginTalk( "<t>��Ȼ������Щ�����ǵ������鷳����ܶ��£���������Ҳ�ɳ��ˡ�<n><t>���ڣ��������������ŵ�����������ָ��<bɪ��>�����������µ�ָ���ġ�������2223��2785��")
	MisBeginCondition(HasRecord, 70)
	MisBeginCondition(NoRecord, 71)
	MisBeginCondition(NoMission, 71)
	MisBeginAction(AddMission, 71)
	MisBeginAction(GiveItem, 4115, 1, 4)
	MisCancelAction(ClearMission, 71 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "���Ÿ�����������ָ��")

	MisHelpTalk("<t>ɪ������2223��2785����ȥ�ɡ�")
	MisResultCondition(AlwaysFailure )

-----------------------------------���Ÿ�ɪ��
	DefineMission( 82, "���Ÿ�ɪ��", 71, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>лл����ҵ��ţ���������ܰ���������Ļ�ӭŶ��")
	MisResultCondition(NoRecord, 71)
	MisResultCondition(HasMission, 71)
	MisResultCondition(HasItem, 4115, 1)
	MisResultAction(TakeItem, 4115, 1)
	MisResultAction(ClearMission, 71)
	MisResultAction(SetRecord, 71)
	MisResultAction(AddExp, 200, 200)

-----------------------------------���Ÿ�����
	DefineMission( 83, "���Ÿ�����", 72 )
	
	MisBeginTalk( "<t>���ڣ����Ѿ�û��ʲô���԰�������ˡ�<n><t>�����������з��ţ�������Ž���ɳᰳ����<bѲ�߱�������>����������µ�����ģ�������958,3549������")
	MisBeginCondition(HasRecord, 710)
	MisBeginCondition(NoRecord, 72)
	MisBeginCondition(NoMission, 72)
	MisBeginAction(AddMission, 72)
	MisBeginAction(GiveItem, 4123, 1, 4)
	MisCancelAction(ClearMission, 72 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "�����͸�Ѳ�߱�������")

	MisHelpTalk("<t>���˾���958,3549������ȥ�ɡ�")
	MisResultCondition(AlwaysFailure )

-----------------------------------���Ÿ���ī
	DefineMission( 84, "���Ÿ���ī", 73 )
	
	MisBeginTalk( "<t>�����ϲ���ռ����ս������ô���������з��<b�ӻ����˰�ī>���ţ�������Ÿ�������һ���������ģ���ī����840,3585���")
	MisBeginCondition(HasRecord, 710)
	MisBeginCondition(NoRecord, 73)
	MisBeginCondition(NoMission, 73)
	MisBeginAction(AddMission, 73)
	MisBeginAction(GiveItem, 4124, 1, 4)
	MisCancelAction(ClearMission, 73  )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "�����͸��ӻ����˰�ī")

	MisHelpTalk("<t>��ô����û���Ž�����ī����������ܽ���������840,3585��")
	MisResultCondition(AlwaysFailure )


-----------------------------------���Ÿ�����
	DefineMission( 85, "���Ÿ�����", 72, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>Ŷ���ܺã���ĵ���һ���ܹ������ҵġ�<n><t>���ˣ�ս����һ��Ҫע���Լ�������ֵŶ������ͷ���Ա���һ������������ֵ�ĺ������Ǿ����������ֵ�����ǿ��Գ�ΪHP����HP��Ϊ0ʱ����ͻ������ˣ�ǧ��С�ģ�<n><t>����ͨ���ԡ�ƻ�����������⡱����ָ�����ֵ�ĵ��ߣ��㻹����ʹ��insert�������»�վ��������״̬��HP�Ļָ��ٶȻ�ӿ�Ŷ��")
	MisResultCondition(NoRecord, 72)
	MisResultCondition(HasMission, 72)
	MisResultCondition(HasItem, 4123, 1)
	MisResultAction(TakeItem, 4123, 1)
	MisResultAction(ClearMission, 72)
	MisResultAction(SetRecord, 72)
	MisResultAction(AddExp, 50, 50)

-----------------------------------����������
	DefineMission( 86, "����������", 74 )

	MisBeginTalk( "<t>��������ɳᰳ���Χ��������ʵ�����е���ˣ��ҵ�Ͻ���ﻹ�ر�࣬�������һ�°ɣ���6��<b������>�����ˣ�����Ӧ���ڣ�1031,3556��λ�ã����ҿ���������ļ���������������������񣬿�ȥ�ɣ�")
	MisBeginCondition(HasRecord, 72)
	MisBeginCondition(NoMission, 74)
	MisBeginCondition(NoRecord, 74)
	MisBeginAction(AddMission, 74)
	MisBeginAction(AddTrigger, 741, TE_KILL, 95, 6 )
	MisCancelAction(ClearMission, 74)
	
	MisNeed(MIS_NEED_DESP, "ɱ��6��<r������>Ȼ��������̸̸")
	MisNeed(MIS_NEED_KILL, 95, 6, 10, 6)
	
	MisResultTalk("<t>�ü��ˣ���Щ��������ǰ���������鷳�����������ܵ��ͷ��ˣ�������")
	MisHelpTalk("<t>��ô�ˣ�6�������ƻ��ǺܺöԸ��ģ����£�")
	MisResultCondition(HasMission, 74)
	MisResultCondition(HasFlag, 74, 15 )
	MisResultAction(AddExp, 150, 150)
	MisResultAction(ClearMission, 74)
	MisResultAction(SetRecord, 74)
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 95 )	
	TriggerAction( 1, AddNextFlag, 74, 10, 6 )
	RegCurTrigger( 741 )

-----------------------------------���Ÿ�����
	DefineMission( 87, "���Ÿ�����", 75 )
	
	MisBeginTalk( "<t>�������з��ţ�������Ұ��������ҵĺ�����<b����>�����Ǹ���Ȥ�ļһһ���ܹ�������ġ�<n><t>������ɳᰳ�(867,3660)���")
	MisBeginCondition(HasRecord, 74)
	MisBeginCondition(NoRecord, 75)
	MisBeginCondition(NoMission, 75)
	MisBeginAction(AddMission, 75)
	MisBeginAction(GiveItem, 4125, 1, 4)
	MisCancelAction(ClearMission, 75  )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "���Ÿ�ɳᰳ�����")

	MisHelpTalk("<t>��ȥ�ɣ������ﻹҪѲ���أ�")
	MisResultCondition(AlwaysFailure )

-----------------------------------���Ÿ�����
	DefineMission( 88, "���Ÿ�����", 75, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>Ŷ���������˵����Ѱ���лл����������")
	MisResultCondition(NoRecord, 75)
	MisResultCondition(HasMission, 75)
	MisResultCondition(HasItem, 4125, 1)
	MisResultAction(TakeItem, 4125, 1)
	MisResultAction(ClearMission, 75)
	MisResultAction(SetRecord, 75)
	MisResultAction(AddExp, 80, 80)

-----------------------------------���˹���
	DefineMission( 89, "���˹���", 76 )

	MisBeginTalk( "<t>����˵�������ɳĮ����һ�����˹��������ڽ���ʱ�ͱ������ˣ���ʵ��<b������>�ɵģ���Ͱ���ȥ�ͷ�����һ�°ɣ���8��<b������>���У��������<r�Ǳ�Ұ��>�ҵ����ǣ����������ڵļ����������ܹ��㶨���ˣ���Ҳ�������Ψһ�ʺ��������")
	MisBeginCondition(HasRecord, 75)
	MisBeginCondition(NoMission, 76)
	MisBeginCondition(NoRecord, 76)
	MisBeginAction(AddMission, 76)
	MisBeginAction(AddTrigger, 761, TE_KILL, 48, 8 )
	MisCancelAction(ClearMission, 76)

	MisNeed(MIS_NEED_DESP, "��ɱ8��<r������>Ȼ����ɳᰳ�����̸̸")
	MisNeed(MIS_NEED_KILL, 48, 8, 10, 8)

	MisPrize(MIS_PRIZE_ITEM, 9, 1, 4)
	MisPrizeSelAll()
	
	MisResultTalk("<t>�ü��ˣ����³��и���Ӧ��������ʲô��Թ���˰ɡ�<n><t>��Щ�����ջ����Ǿ󣬺úõľ�Ȼ���ˡ�")
	MisHelpTalk("<t>��ô�ˣ�����Ҳ����Щ������û�취�𣿻�����ȥ���԰ɡ�")
	MisResultCondition(HasMission, 76)
	MisResultCondition(HasFlag, 76, 17 )
	MisResultAction(AddExp, 250, 250)
	MisResultAction(ClearMission, 76)
	MisResultAction(SetRecord, 76)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 48 )	
	TriggerAction( 1, AddNextFlag, 76, 10, 8 )
	RegCurTrigger( 761 )

-----------------------------------���Ÿ�ͭͭ��
	DefineMission( 90, "���Ÿ�ͭͭ��", 77 )
	
	MisBeginTalk( "<t>�������з��ţ������������ȥ������<bͭͭ��>(902,3495)���������������ġ�" )
	MisBeginCondition(HasRecord, 76)
	MisBeginCondition(NoRecord, 77)
	MisBeginCondition(NoMission, 77)
	MisBeginAction(AddMission, 77)
	MisBeginAction(GiveItem, 4126, 1, 4)
	MisCancelAction(ClearMission, 77  )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "���Ÿ�����ͭͭ��")

	MisHelpTalk("<t>��ȥ��ͭͭ�İɣ���ס�������������ҵĺ����ѡ�")
	MisResultCondition(AlwaysFailure )


-----------------------------------���Ÿ�ͭͭ��
	DefineMission( 91, "���Ÿ�ͭͭ��", 77, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>Ŷ!�������ݸ��������İ��ְ���̫���ˣ�������ȱ���أ�����������")
	MisResultCondition(NoRecord, 77)
	MisResultCondition(HasMission, 77)
	MisResultCondition(HasItem, 4126, 1)
	MisResultAction(TakeItem, 4126, 1)
	MisResultAction(ClearMission, 77)
	MisResultAction(SetRecord, 77)
	MisResultAction(AddExp, 120, 120)

-----------------------------------��Ы֤
	DefineMission( 92, "��Ы֤", 78 )

	MisBeginTalk( "<t>������˵��������ʲô�����£�����Ы�ӣ�<n><t>�����ҵ�ְҵ�����ҳ���Ҫ����ȥ�ɼ���ʯ��<n><t>���ڳ��ⲻ֪������ð�����ö��Ы�ӣ����Ǳ���ЩСЫ���������ˣ������˵��˿��ǻ�������Σ�յģ�̫�����ˣ�<n><t>������ȥ�ɵ�12��<b��Ы��>������ֻҪ����1184��3557���������ܿ����ˣ�ע�����ǵĶ����ܿ죬����һ��Ŷ��")
	MisBeginCondition(HasRecord, 77)
	MisBeginCondition(NoMission, 78)
	MisBeginCondition(NoRecord, 78)
	MisBeginAction(AddMission, 78)
	MisBeginAction(AddTrigger, 781, TE_KILL, 247, 12 )
	MisCancelAction(ClearMission, 56)
	

	MisNeed(MIS_NEED_DESP, "��ɱ12��<r��Ы��>Ȼ����ɳᰳ�ͭͭ��̸̸")
	MisNeed(MIS_NEED_KILL, 247, 12, 10, 12)

	MisPrize(MIS_PRIZE_ITEM, 4309, 1, 4)
	MisPrizeSelAll()
	
	MisResultTalk("<t>Ŷ���ҹ�Ȼû���Ҵ��ˣ���ô�������������ˣ�������̫�¸��ˡ�")
	MisHelpTalk("<t>��ô�ˣ��򲻹���Ы���𣿼ǵö����ظ�Ʒ��")
	MisResultCondition(HasMission, 78)
	MisResultCondition(HasFlag, 78, 21 )
	MisResultAction(ClearMission, 78)
	MisResultAction(AddExp, 400, 400)
	MisResultAction(SetRecord, 78)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 247 )	
	TriggerAction( 1, AddNextFlag, 78, 10, 12 )
	RegCurTrigger( 781 )


-----------------------------------���Ÿ�����˿
	DefineMission( 93, "���Ÿ�����˿", 79 )
	
	MisBeginTalk( "<t>��Ȼ������Щɳᰳǵ������鷳����ܶ��£���������Ҳ�ɳ��ˡ�<n><t>���ڣ��������������ŵ�ɳᰳ�����ָ��<b��˿��>�����������µ�ָ���ġ�������876,3572��" )
	MisBeginCondition(HasRecord, 78)
	MisBeginCondition(NoRecord, 79)
	MisBeginCondition(NoMission, 79)
	MisBeginAction(AddMission, 79)
	MisBeginAction(GiveItem, 4127, 1, 4)
	MisCancelAction(ClearMission, 79  )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "���Ÿ�ɳᰳ�����ָ��")

	MisHelpTalk("<t>��˿�̾���876,3572����ȥ�ɡ�")
	MisResultCondition(AlwaysFailure )

-----------------------------------���Ÿ�����˿
	DefineMission( 94, "���Ÿ�����˿", 79, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>лл����ҵ��ţ����������ɳᰳ�����Ļ�ӭŶ��")
	MisResultCondition(NoRecord, 79)
	MisResultCondition(HasMission, 79)
	MisResultCondition(HasItem, 4127, 1)
	MisResultAction(TakeItem, 4127, 1)
	MisResultAction(ClearMission, 79)
	MisResultAction(SetRecord, 79)
	MisResultAction(AddExp, 200, 200)

-----------------------------------ҩʦתְ����
	DefineMission( 95, "ҩʦתְ����", 60, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("�ã���Ȼ������ָ���Ƽ��������ˣ���Ӧ���ǲ���ģ������Ϊҩʦ�ͱ�������ҽ����������")
	MisResultCondition(NoRecord, 60)
	MisResultCondition(HasMission, 60)
	MisResultCondition(HasItem, 4118, 1)
	MisResultAction(TakeItem, 4118, 1)
	MisResultAction(ClearMission, 60)
	MisResultAction(SetRecord, 60)

-----------------------------------ҩʦתְ����
	DefineMission( 96, "ҩʦתְ����", 80 )

	MisBeginTalk( "<t>�����Ϊҩʦô������ͷ�뿿ҩʦ׬Ǯ���˺ܶ࣬���������֤�������ʸ���ҩʦ���ʸ�<n><t>����Ҫ�����������������ȥ<r884,3156>����ɱ2ֻ<bɱ��������>�ɣ��������������Щ�����ͨ���˵�һ�ؿ��ˡ�" )
	MisBeginCondition(HasRecord, 60)
	MisBeginCondition(NoMission, 80)
	MisBeginCondition(NoRecord, 80)
	MisBeginAction(AddMission, 80)
	MisBeginAction(AddTrigger, 801, TE_KILL, 43, 2 )
	MisCancelAction(ClearMission, 80)
	

	MisNeed(MIS_NEED_DESP, "��ɱ2ֻ<bɱ��������>Ȼ����ɳᰳǸʵ�ά��(862,3500)̸̸")
	MisNeed(MIS_NEED_KILL, 43, 2, 10, 2)
	
	MisResultTalk("<t>������ͨ����������ˣ�����")
	MisHelpTalk("<t>��ô������������ǰ�����ˣ�")
	MisResultCondition(HasMission, 80)
	MisResultCondition(HasFlag, 80, 11 )
	MisResultAction(ClearMission, 80)
	MisResultAction(SetRecord, 80)
	MisResultAction(AddExp, 300, 300)

		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 43 )	
	TriggerAction( 1, AddNextFlag, 80, 10, 2 )
	RegCurTrigger( 801 )


-----------------------------------ҩʦתְ����
	DefineMission( 97, "ҩʦתְ����", 81 )
	
	MisBeginTalk( "<t>����Ÿ��㣬���������������´���Ա����΢����У(865��3648)���������׵ġ�")
	MisBeginCondition(HasRecord, 80)
	MisBeginCondition(NoRecord, 81)
	MisBeginCondition(NoMission, 81)
	MisBeginAction(AddMission, 81)
	MisBeginAction(GiveItem, 4128, 1, 4)
	MisCancelAction(ClearMission, 81  )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "���Ÿ��������´���Ա����΢����У")

	MisHelpTalk("<t>��ȥ�ɣ���������һ����ͨ�����˵ġ�")
	MisResultCondition(AlwaysFailure )

-----------------------------------ҩʦתְ����
	DefineMission( 98, "ҩʦתְ����", 81, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>Ŷ����ͨ���˵�һ�ؿ����ˣ��ܲ���Ŷ��")
	MisResultCondition(NoRecord, 81)
	MisResultCondition(HasMission, 81)
	MisResultCondition(HasItem, 4128, 1)
	MisResultAction(TakeItem, 4128, 1)
	MisResultAction(ClearMission, 81)
	MisResultAction(SetRecord, 81)
	MisResultAction(AddExp, 100, 100)

-----------------------------------ҩʦתְ����
	DefineMission( 99, "ҩʦתְ����", 82 )

	MisBeginTalk( "<t>�������������Ϊҩʦ�ĵڶ��ο��ˣ�����ɹ��ˣ��㽫�ܿ��Ϊҩʦ��<n><t>�ҵ�Ҫ���������ģ�ȥ�ռ���3��<bҩ�ò�Ҷ>���ҾͿ����ˡ�<n><t>�Ҽǵó����<r������>(892,3273)���У�")
	MisBeginCondition(HasRecord, 81)
	MisBeginCondition(NoMission, 82)
	MisBeginCondition(NoRecord, 82)
	MisBeginAction(AddMission, 82)
	MisBeginAction(AddTrigger, 821, TE_GETITEM, 3129, 3 )
	MisCancelAction(ClearMission, 82)

	MisNeed(MIS_NEED_DESP, "�ռ�3��<bҩ�ò�Ҷ>Ȼ������Ұ�΢����У(865,3648)̸̸")
	MisNeed(MIS_NEED_ITEM, 3129, 3, 10, 3)
	
	MisResultTalk("<t>�ܺã�������ˣ�����ͨ����")
	MisHelpTalk("<t>��֪����Σ�յģ���������ǿ������ݡ�")
	MisResultCondition(HasMission, 82)
	MisResultCondition(HasItem, 3129, 3 )
	MisResultAction(TakeItem, 3129, 3)
	MisResultAction(ClearMission, 82)
	MisResultAction(SetRecord, 82)
	MisResultAction(AddExp, 300, 300)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3129 )	
	TriggerAction( 1, AddNextFlag, 82, 10, 3 )
	RegCurTrigger( 821 )

-----------------------------------ҩʦתְ����
	DefineMission( 150, "ҩʦתְ����", 83 )
	
	MisBeginTalk( "<t>���Ѿ���֤���������������ȥ���ʵ�ά��˵�ɣ����Ѿ����������תְ��һ��ΰ���ҩʦ�ˣ��Ȿ<r�ϵ���>����֤����")
	MisBeginCondition(HasRecord, 82)
	MisBeginCondition(NoRecord, 83)
	MisBeginCondition(NoMission, 83)
	MisBeginAction(AddMission, 83)
	MisBeginAction(GiveItem, 3954, 1, 4)
	MisCancelAction(ClearMission, 83 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "��ɳᰳǵĸʵ�ά��(862,3500)̸̸")

	MisHelpTalk("<t>���𣿻���ĥ��ʲô���㣿")
	MisResultCondition(AlwaysFailure )


-----------------------------------ҩʦתְ����
	DefineMission( 151, "ҩʦתְ����", 83, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>��ϲ�㣬�ҵĺ��ӣ����Ѿ���ҩʦ�ˣ�ԸŮ��ף���㣡<n><t>��������������ԴӸʵ�ά��������ȡҩʦְҵ�����ˡ�<n><t>���⣬����Ե�ͭͭ�����ﹺ��ҩʦ��������Ī��������ҩʦװ���������Ե��ӻ����ˡ���Ī������ҩʦ�ļ�����Ŷ��ǧ��Ҫ����Ŷ��")
	MisResultCondition(NoRecord, 83)
	MisResultCondition(HasMission, 83)
	MisResultCondition(HasItem, 3954, 1)
	MisResultAction(TakeItem, 3954, 1)
	MisResultAction(ClearMission, 83)
	MisResultAction(SetRecord, 83)
	MisResultAction(AddExp, 100, 100)
	MisResultAction(SetProfession, 5)
	MisResultAction(GiveItem, 3206, 1, 4)
	MisResultAction(GiveItem, 97, 1, 4)
	MisResultBagNeed(2)


-----------------------------------���Ÿ���ī
	DefineMission( 152, "���Ÿ���ī", 73, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>����̫���ˣ���ĵ��������ܹ������ҡ�")
	MisResultCondition(NoRecord, 73)
	MisResultCondition(HasMission, 73)
	MisResultCondition(HasItem, 4124, 1)
	MisResultAction(TakeItem, 4124, 1)
	MisResultAction(ClearMission, 73)
	MisResultAction(SetRecord, 73)
	MisResultAction(AddExp, 50, 50)


-----------------------------------�޽�ʵ��
	DefineMission( 153, "�޽�ʵ��", 84 )

	MisBeginTalk( "<t>���벻�뿴���������Ͽ������黨����������һ���������飬���԰���������ռ�6��<r��������>�ɡ�<n><t>��Ӧ�ÿ����ڳ��ſڵ������������ҵ�����Ȼ��Ҳ���һ�����Ҫ���࣬�����������������Щ���ɣ�˵�����ͳɹ����أ�")
	MisBeginCondition(HasRecord, 73)
	MisBeginCondition(NoMission, 84)
	MisBeginCondition(NoRecord, 84)
	MisBeginAction(AddMission, 84)
	MisBeginAction(AddTrigger, 841, TE_GETITEM, 1691, 6 )
	MisCancelAction(ClearMission, 84)
	
	MisNeed(MIS_NEED_DESP, "�ռ�6��<r��������>Ȼ���Ұ�ī��840,3585��̸̸")
	MisNeed(MIS_NEED_ITEM, 1691, 6, 10, 6)
	
	MisResultTalk("<t>�ܺã����¾��ܽ��м޽�ʵ���ˣ��ȵ������������ɣ�Ҳ����Ļ�ɹ�Ŷ��")
	MisHelpTalk("<t>�ף���û�ҵ���Ҫ�Ķ�����")
	MisResultCondition(HasMission, 84)
	MisResultCondition(HasItem, 1691, 6 )
	MisResultAction(TakeItem, 1691, 6)
	MisResultAction(ClearMission, 84)
	MisResultAction(SetRecord, 84)
	MisResultAction(AddExp, 150, 150)
		
	InitTrigger()
	TriggerCondition( 1, IsItem, 1691 )	
	TriggerAction( 1, AddNextFlag, 84, 10, 6 )
	RegCurTrigger( 841 )

-----------------------------------���Ÿ�����
	DefineMission( 154, "���Ÿ�����", 85 )
	
	MisBeginTalk( "<t>Ŀǰ�ҵ�ʵ�黹û��չ�������ɣ�������Ÿ�ס��ɳᰳǵ�����Ůʿ(883,3520)�����������ġ�<n><t>���ˣ��Ժ����ռ����κζ���û���õĵ��ߣ������������ҵģ����ң������ﻹ���۸��ּ����飬����ת��ְ��һ��Ҫ����������Ŷ��")
	MisBeginCondition(HasRecord, 84)
	MisBeginCondition(NoRecord, 85)
	MisBeginCondition(NoMission, 85)
	MisBeginAction(AddMission, 85)
	MisBeginAction(GiveItem, 4129, 1, 4)
	MisCancelAction(ClearMission, 85 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "���Ÿ�ɳᰳ�����")

	MisHelpTalk("<t>ȥ�ɣ�������ûʲô���԰�������ˡ�")
	MisResultCondition(AlwaysFailure )

-----------------------------------���Ÿ�����
	DefineMission( 155, "���Ÿ�����", 85, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>Ŷ�����ǰ�ī�����Ѱ�����ã�")
	MisResultCondition(NoRecord, 85)
	MisResultCondition(HasMission, 85)
	MisResultCondition(HasItem, 4129, 1)
	MisResultAction(TakeItem, 4129, 1)
	MisResultAction(ClearMission, 85)
	MisResultAction(SetRecord, 85)
	MisResultAction(AddExp, 80, 80)

-----------------------------------α����Ʒ
	DefineMission( 156, "α����Ʒ", 86 )

	MisBeginTalk( "<t>��˵�ҵı��ף����Ǳ���ҩ���ϰ���������ռ����ﺹˮ���Ҵ������������Ц��������ҪһЩα��Ĳ��ϡ�<n><t>�����ȥ�ռ�3��<r���ǵ�ˮ>�ɣ��ڣ�1184��3557��������<bСЫ��>������Եõ�������������Ǹ��ر�����ɣ�������")
	MisBeginCondition(HasRecord, 85)
	MisBeginCondition(NoMission, 86)
	MisBeginCondition(NoRecord, 86)
	MisBeginAction(AddMission, 86)
	MisBeginAction(AddTrigger, 861, TE_GETITEM, 1648, 3 )
	MisCancelAction(ClearMission, 86)
	
	MisNeed(MIS_NEED_DESP, "�ռ�3��<r���ǵ�ˮ>Ȼ����ɳᰳ����ȣ�883,3520��̸̸")
	MisNeed(MIS_NEED_ITEM, 1648, 3, 10, 3)

	MisPrize(MIS_PRIZE_ITEM, 4308, 1, 4)
	MisPrizeSelAll()

	MisResultTalk("<t>����̫���ˣ�����Щ�������һ��һ������ƭ���Ǹ����ռ��ļһ�ģ�����")
	MisHelpTalk("<t>����ɣ���û�����𣿿������")
	MisResultCondition(HasMission, 86)
	MisResultCondition(HasItem, 1648, 3 )
	MisResultAction(TakeItem, 1648, 3)
	MisResultAction(ClearMission, 86)
	MisResultAction(SetRecord, 86)
	MisResultAction(AddExp, 250, 250)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1648 )	
	TriggerAction( 1, AddNextFlag, 86, 10, 3 )
	RegCurTrigger( 861 )

-----------------------------------���Ÿ�������
	DefineMission( 157, "���Ÿ�������", 87 )
	
	MisBeginTalk( "<t>������Ҳ��һ���ţ��鷳�㽻��<b����������>�����Ǹ����ĵļһһ���������ġ�<n><t>������ɳᰳ�(901,3668)���")
	MisBeginCondition(HasRecord, 86)
	MisBeginCondition(NoRecord, 87)
	MisBeginCondition(NoMission, 87)
	MisBeginAction(AddMission, 87)
	MisBeginAction(GiveItem, 4130, 1, 4)
	MisCancelAction(ClearMission, 87 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "���Ÿ�����������")

	MisHelpTalk("<t>��ȥ�ɣ��Ǹ����ĵļһ���Ի����ġ�")
	MisResultCondition(AlwaysFailure )

-----------------------------------���Ÿ�������
	DefineMission( 158, "���Ÿ�������", 87, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>Ŷ��������Ůʿ���Ű���лл�㡣")
	MisResultCondition(NoRecord, 87)
	MisResultCondition(HasMission, 87)
	MisResultCondition(HasItem, 4130, 1)
	MisResultAction(TakeItem, 4130, 1)
	MisResultAction(ClearMission, 87)
	MisResultAction(SetRecord, 87)
	MisResultAction(AddExp, 120, 120)

-----------------------------------�δ�ҩ
	DefineMission( 159, "�δ�ҩ", 88 )

	MisBeginTalk( "<t>����Ҫ�ռ�һЩ��ֹ�δ���ҩ����ϣ��ر���һ��������������ȱ���鷳�������3��<r�����ƵĻ�>���Ұɣ�ȥ��1031,3556�������ɣ������<b������>���Ͼ����У������ڵļ���Ը�������Ӧ����û����ġ�<n><t>���ˣ���������δ����������ǧ��Ҫ���߱���Ŷ��")
	MisBeginCondition(HasRecord, 87)
	MisBeginCondition(NoMission, 88)
	MisBeginCondition(NoRecord, 88)
	MisBeginAction(AddMission, 88)
	MisBeginAction(AddTrigger, 881, TE_GETITEM, 1692, 3 )
	MisCancelAction(ClearMission, 88)
	
	MisNeed(MIS_NEED_DESP, "�ռ�3��<r�����ƵĻ�>Ȼ����ɳᰳǸ�����̸̸")
	MisNeed(MIS_NEED_ITEM, 1692, 3, 10, 3)

	MisPrize(MIS_PRIZE_ITEM, 4310, 1, 4)
	MisPrizeSelAll()	

	MisResultTalk("<t>����������Ǹ�л��İ�æ�������ڿ��Կ�ʼ��ҩ�ˡ�")
	MisHelpTalk("<t>ร����ģ��ҿɾ͵�����Щ�����ˣ�ȫ�����ˣ�")
	MisResultCondition(HasMission, 88)
	MisResultCondition(HasItem, 1692, 3 )
	MisResultAction(TakeItem, 1692, 3)
	MisResultAction(ClearMission, 88)
	MisResultAction(SetRecord, 88)
	MisResultAction(AddExp, 400, 400)
	MisResultBagNeed(1)
		
	InitTrigger()
	TriggerCondition( 1, IsItem, 1692 )	
	TriggerAction( 1, AddNextFlag, 88, 10, 3 )
	RegCurTrigger( 881 )

-----------------------------------���Ÿ�����˿
	DefineMission( 160, "���Ÿ�����˿", 89 )
	
	MisBeginTalk( "<t>��Ȼ������Щɳᰳǵ������鷳����ܶ��£���������Ҳ�ɳ��ˡ�<n><t>���ڣ��������������ŵ�ɳᰳ�����ָ��<b��˿��>�����������µ�ָ���ġ�<n><t>������876,3572��")
	MisBeginCondition(HasRecord, 88)
	MisBeginCondition(NoRecord, 89)
	MisBeginCondition(NoMission, 89)
	MisBeginAction(AddMission, 89)
	MisBeginAction(GiveItem, 4127, 1, 4)
	MisCancelAction(ClearMission, 89 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "���Ÿ�ɳᰳ�����ָ��")

	MisHelpTalk("<t>��˿�̾���876,3572����ȥ�ɡ�")
	MisResultCondition(AlwaysFailure )

-----------------------------------���Ÿ�����˿
	DefineMission( 161, "���Ÿ�����˿", 89, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>лл����ҵ��ţ����������ɳᰳ�����Ļ�ӭŶ��")
	MisResultCondition(NoRecord, 89)
	MisResultCondition(HasMission, 89)
	MisResultCondition(HasItem, 4127, 1)
	MisResultAction(TakeItem, 4127, 1)
	MisResultAction(ClearMission, 89)
	MisResultAction(SetRecord, 89)
	MisResultAction(AddExp, 200, 200)


---------------------------------���Ÿ�СĪ
	DefineMission( 162, "���Ÿ�СĪ", 90 )
	
	MisBeginTalk( "<t>���ڣ����Ѿ�û��ʲô���԰�������ˡ�<n><t>�����������з��ţ�������Ž������Ǳ����<bѲ�߱���СĪ>����������µ�����ģ������ڱ��Ǳ�1237,613������")
	MisBeginCondition(HasRecord, 716)
	MisBeginCondition(NoRecord, 90)
	MisBeginCondition(NoMission, 90)
	MisBeginAction(AddMission, 90)
	MisBeginAction(GiveItem, 4131, 1, 4)
	MisCancelAction(ClearMission, 90 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "�����͸�Ѳ�߱���СĪ")

	MisHelpTalk("<t>СĪ����1237,613������ȥ�ɡ�")
	MisResultCondition(AlwaysFailure )

-----------------------------------���Ÿ���³
	DefineMission( 163, "���Ÿ���³", 91 )
	
	MisBeginTalk( "<t>�����ϲ���ռ����ս������ô���������з��<b�ӻ����˲�³>���ţ�������Ÿ�������һ���������ģ���³����1356,483���")
	MisBeginCondition(HasRecord, 716)
	MisBeginCondition(NoRecord, 91)
	MisBeginCondition(NoMission, 91)
	MisBeginAction(AddMission, 91)
	MisBeginAction(GiveItem, 4132, 1, 4)
	MisCancelAction(ClearMission, 91  )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "�����͸��ӻ����˲�³")

	MisHelpTalk("<t>��ô����û���Ž�����³����������ܽ���������1356,483��")
	MisResultCondition(AlwaysFailure )


-----------------------------------���Ÿ�����
	DefineMission( 164, "���Ÿ�����", 90, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>Ŷ���ܺã���ĵ���һ���ܹ������ҵġ�<n><t>���ˣ�ս����һ��Ҫע���Լ�������ֵŶ������ͷ���Ա���һ������������ֵ�ĺ������Ǿ����������ֵ�����ǿ��Գ�ΪHP����HP��Ϊ0ʱ����ͻ������ˣ�ǧ��С�ģ�<n><t>����ͨ���ԡ�ƻ�����������⡱����ָ�����ֵ�ĵ��ߣ��㻹����ʹ��insert�������»�վ��������״̬��HP�Ļָ��ٶȻ�ӿ�Ŷ��")
	MisResultCondition(NoRecord, 90)
	MisResultCondition(HasMission, 90)
	MisResultCondition(HasItem, 4131, 1)
	MisResultAction(TakeItem, 4131, 1)
	MisResultAction(ClearMission, 90)
	MisResultAction(SetRecord, 90)
	MisResultAction(AddExp, 50, 50)

-----------------------------------��Ƥ����
	DefineMission( 165, "��Ƥ����", 92 )

	MisBeginTalk( "<t>�����Щѩԭ����Խ��Խ��Ƥ�ˣ���Ȼ����վ�ڴ����ʱ��͵Ϯ�ң������ȥ��ѵ����һ�°ɣ����6ֻ<bѩԭ����>(1179,475)�ͻ����ɡ�<n><t>��Ҫ����������Ŷ��<n><t>�ҿ��Ǻ������Ŀǰ��ʵ���ģ�")
	MisBeginCondition(HasRecord, 90)
	MisBeginCondition(NoMission, 92)
	MisBeginCondition(NoRecord, 92)
	MisBeginAction(AddMission, 92)
	MisBeginAction(AddTrigger, 921, TE_KILL, 235, 6 )
	MisCancelAction(ClearMission, 92)
	
	MisNeed(MIS_NEED_DESP, "ɱ��6ֻ<bѩԭ����>Ȼ����СĪ̸̸")
	MisNeed(MIS_NEED_KILL, 235, 6, 10, 6)
	
	MisResultTalk("<t>�ܺã��������ǾͲ�������ô��Ƥ�˰ɣ���Ҳ��˯���þ��ˣ�ֻҪ�����ӳ����־����ˡ�")
	MisHelpTalk("<t>��û��������������˵Ӧ�ò������Ⱑ����ȥ�ɣ�")
	MisResultCondition(HasMission, 92)
	MisResultCondition(HasFlag, 92, 15 )
	MisResultAction(AddExp, 150, 150)
	MisResultAction(ClearMission, 92)
	MisResultAction(SetRecord, 92)
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 235 )	
	TriggerAction( 1, AddNextFlag, 92, 10, 6 )
	RegCurTrigger( 921 )

-----------------------------------���Ÿ���ŷ
	DefineMission( 166, "���Ÿ���ŷ", 93 )
	
	MisBeginTalk( "<t>������ûʲô���԰�����ˣ�������Ÿ���ʿ<b��ŷ>����(1365,570)�����������ġ�")
	MisBeginCondition(HasRecord, 92)
	MisBeginCondition(NoRecord, 93)
	MisBeginCondition(NoMission, 93)
	MisBeginAction(AddMission, 93)
	MisBeginAction(GiveItem, 4133, 1, 4)
	MisCancelAction(ClearMission, 93  )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "���Ÿ����Ǳ���ŷ")

	MisHelpTalk("<t>��ŷ����1365,570������ȥ�ɡ�")
	MisResultCondition(AlwaysFailure )

-----------------------------------���Ÿ���ŷ
	DefineMission( 167, "���Ÿ���ŷ", 93, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>Ŷ������СĪ�������ҵİ����ܺã�")
	MisResultCondition(NoRecord, 93)
	MisResultCondition(HasMission, 93)
	MisResultCondition(HasItem, 4133, 1)
	MisResultAction(TakeItem, 4133, 1)
	MisResultAction(ClearMission, 93)
	MisResultAction(SetRecord, 93)
	MisResultAction(AddExp, 80, 80)

-----------------------------------��ڶ���
	DefineMission( 168, "��ڶ���", 94 )

	MisBeginTalk( "<t>���ʱ��Ҫ���������������������ģ������Ǳ��Ǳ��ķǳ�ʱ�ڣ���Ҷ��ܼ�࣬������Щ<b��ԭ������>̫�ܳ��ˣ�һ��Ҫ����һ�£���ȥ��1179,371�����������8��<b��ԭ������>�����������ˡ�")
	MisBeginCondition(HasRecord, 93)
	MisBeginCondition(NoMission, 94)
	MisBeginCondition(NoRecord, 94)
	MisBeginAction(AddMission, 94)
	MisBeginAction(AddTrigger, 941, TE_KILL, 239, 8 )
	MisCancelAction(ClearMission, 94)

	MisNeed(MIS_NEED_DESP, "��ɱ8��<b��ԭ������>Ȼ���ұ��Ǳ���ŷ(1365,570)̸̸")
	MisNeed(MIS_NEED_KILL, 239, 8, 10, 8)

	MisPrize(MIS_PRIZE_ITEM, 9, 1, 4)
	MisPrizeSelAll()

	MisResultTalk("<t>ร�����ˣ������У���ЩС�������ܳ��أ���������ȥ���Ҿʹ�������Կ����ˡ�")
	MisHelpTalk("<t>��ѽ����û��ô��Ҫ֪������Ҳ��������������ء�")
	MisResultCondition(HasMission, 94)
	MisResultCondition(HasFlag, 94, 17 )
	MisResultAction(AddExp, 250, 250)
	MisResultAction(ClearMission, 94)
	MisResultAction(SetRecord, 94)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 239 )	
	TriggerAction( 1, AddNextFlag, 94, 10, 8 )
	RegCurTrigger( 941 )

-----------------------------------���Ÿ�����
	DefineMission( 169, "���Ÿ�����", 95 )
	
	MisBeginTalk( "<t>��������æ�ŷ���ʳ����������ȥ�ҷ�װ��������Ůʿ(1349,539)�������ܰ���ʲôæ��" )
	MisBeginCondition(HasRecord, 94)
	MisBeginCondition(NoRecord, 95)
	MisBeginCondition(NoMission, 95)
	MisBeginAction(AddMission, 95)
	MisBeginAction(GiveItem, 4134, 1, 4)
	MisCancelAction(ClearMission, 95  )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "���Ÿ���װ��������")

	MisHelpTalk("<t>���ڵ�ʲô����ȥ�ɣ�")
	MisResultCondition(AlwaysFailure )

-----------------------------------���Ÿ�����
	DefineMission( 170, "���Ÿ�����", 95, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>Ŷ�����л��ŷ�������������ң�����̫���ˣ�")
	MisResultCondition(NoRecord, 95)
	MisResultCondition(HasMission, 95)
	MisResultCondition(HasItem, 4134, 1)
	MisResultAction(TakeItem, 4134, 1)
	MisResultAction(ClearMission, 95)
	MisResultAction(SetRecord, 95)
	MisResultAction(AddExp, 120, 120)

-----------------------------------����Ǩ��
	DefineMission( 171, "����Ǩ��", 96 )

	MisBeginTalk( "<t>�Ǻǣ��и�����Ϣ����һȺ�Թ�¹��������Ǩ�Ƶ����Ǳ��������ˣ�����Ŀǰ�ı��Ǳ���˵�������͵���ʳ������һ������Ҫ�㾡�쵽��1164,305��������ȡ12ͷ<b�Թ�¹>�����������������Ͼ��д�ͳ��ˡ�")
	MisBeginCondition(HasRecord, 95)
	MisBeginCondition(NoMission, 96)
	MisBeginCondition(NoRecord, 96)
	MisBeginAction(AddMission, 96)
	MisBeginAction(AddTrigger, 961, TE_KILL, 238, 12 )
	MisCancelAction(ClearMission, 56)
	

	MisNeed(MIS_NEED_DESP, "��ɱ12��<b�Թ�¹>Ȼ���ұ��Ǳ�����(1349,539)̸̸")
	MisNeed(MIS_NEED_KILL, 238, 12, 10, 12)

	MisPrize(MIS_PRIZE_ITEM, 4309, 1, 4)
	MisPrizeSelAll()
	
	MisResultTalk("<t>�ð������Ȼ����ˣ�������ģ��뵽����ζ�Ŀ�¹�⣬�Ҷ�����վ���ˡ�")
	MisHelpTalk("<t>��ô�ˣ�����ʳ�ﶼ�򲻹��𣿿�ȥ�ɣ�����ߵ����¹��أ�")
	MisResultCondition(HasMission, 96)
	MisResultCondition(HasFlag, 96, 21 )
	MisResultAction(ClearMission, 96)
	MisResultAction(AddExp, 400, 400)
	MisResultAction(SetRecord, 96)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 238 )	
	TriggerAction( 1, AddNextFlag, 96, 10, 12 )
	RegCurTrigger( 961 )


-----------------------------------���Ÿ�����¶��
	DefineMission( 172, "���Ÿ�����¶��", 97 )
	
	MisBeginTalk( "<t>��Ȼ������Щ���Ǳ��������鷳����ܶ��£���������Ҳ�ɳ��ˡ�<n><t>���ڣ��������������ŵ����Ǳ�����ָ��<b����¶��>�����������µ�ָ���ġ�<n><t>������1315,507��")
	MisBeginCondition(HasRecord, 96)
	MisBeginCondition(NoRecord, 97)
	MisBeginCondition(NoMission, 97)
	MisBeginAction(AddMission, 97)
	MisBeginAction(GiveItem, 4135, 1, 4)
	MisCancelAction(ClearMission, 97  )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "���Ÿ����Ǳ�����ָ��")

	MisHelpTalk("<t>����¶�Ǿ���1315,507����ȥ�ɡ�")
	MisResultCondition(AlwaysFailure )


-----------------------------------���Ÿ�����¶��
	DefineMission( 173, "���Ÿ�����¶��", 97, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>лл����ҵ��ţ���������ܱ��Ǳ�����Ļ�ӭŶ��")
	MisResultCondition(NoRecord, 97)
	MisResultCondition(HasMission, 97)
	MisResultCondition(HasItem, 4135, 1)
	MisResultAction(TakeItem, 4135, 1)
	MisResultAction(ClearMission, 97)
	MisResultAction(SetRecord, 97)
	MisResultAction(AddExp, 200, 200)

-----------------------------------����תְ����
	DefineMission( 174, "����תְ����", 59, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("�ã���Ȼ������ָ���Ƽ��������ˣ���Ӧ���ǲ���ģ������Ϊ<r����>�ͱ�������ҽ����������")
	MisResultCondition(NoRecord, 59)
	MisResultCondition(HasMission, 59)
	MisResultCondition(HasItem, 4117, 1)
	MisResultAction(TakeItem, 4117, 1)
	MisResultAction(ClearMission, 59)
	MisResultAction(SetRecord, 59)

-----------------------------------����תְ����
	DefineMission( 175, "����תְ����", 98 )

	MisBeginTalk( "<t>����������ȡ�����ֲ��ô�����е�ʶѽ��<n><t>�������е�ʶ������������ȡ<r�����ֲ�>�㻹����֤���Լ����㹻�����ݵ����֡�<n><t>������ȥ<p���Ǳ�Ұ��>����12ֻ<b��ɫ�Թ�¹>��1325,305��������<n><t>�������������Щ���ҽ���Ϊ��ͨ���˵�һ�����ˡ�")
	MisBeginCondition(HasRecord, 59)
	MisBeginCondition(NoMission, 98)
	MisBeginCondition(NoRecord, 98)
	MisBeginAction(AddMission, 98)
	MisBeginAction(AddTrigger, 981, TE_KILL, 240, 12 )
	MisCancelAction(ClearMission, 98)
	

	MisNeed(MIS_NEED_DESP, "��ɱ12��<b��ɫ�Թ�¹>Ȼ���ұ��Ǳ���ŷ(1365,570)̸̸")
	MisNeed(MIS_NEED_KILL, 240, 12, 10, 12)
	
	MisResultTalk("<t>��û�п����㣬��ͨ����һ�ؿ����ˡ�")
	MisHelpTalk("<t>��ô�ˣ������������")
	MisResultCondition(HasMission, 98)
	MisResultCondition(HasFlag, 98, 21 )
	MisResultAction(ClearMission, 98)
	MisResultAction(SetRecord, 98)
	MisResultAction(AddExp, 300, 300)

		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 240 )	
	TriggerAction( 1, AddNextFlag, 98, 10, 12 )
	RegCurTrigger( 981 )


-----------------------------------����תְ����
	DefineMission( 176, "����תְ����", 99 )
	
	MisBeginTalk( "<t>���˵ĵڶ��غܼ򵥣����������ȥ��СĪ(1237,613)����������㿼�����ݵġ�")
	MisBeginCondition(HasRecord, 98)
	MisBeginCondition(NoRecord, 99)
	MisBeginCondition(NoMission, 99)
	MisBeginAction(AddMission, 99)
	MisBeginAction(GiveItem, 4136, 1, 4)
	MisCancelAction(ClearMission, 99  )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "���Ÿ�Ѳ�߱���СĪ")

	MisHelpTalk("<t>СĪ����1237,613������ȥ�ɡ�")
	MisResultCondition(AlwaysFailure )

-----------------------------------����תְ����
	DefineMission( 177, "����תְ����", 99, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>Ŷ�����Ѿ�ͨ�����˿��˵ĵ�һ���ˣ���ϲ�㣡")
	MisResultCondition(NoRecord, 99)
	MisResultCondition(HasMission, 99)
	MisResultCondition(HasItem, 4136, 1)
	MisResultAction(TakeItem, 4136, 1)
	MisResultAction(ClearMission, 99)
	MisResultAction(SetRecord, 99)
	MisResultAction(AddExp, 100, 100)

-----------------------------------����תְ����
	DefineMission( 178, "����תְ����", 150 )

	MisBeginTalk( "<t>�����������㿼�˵ĵڶ������ݣ�����Ҫȥ�ռ�3��<bҩƿ>��������Щҩƿ��<r��ԭ������>��1179,371�����������׵õ���")
	MisBeginCondition(HasRecord, 99)
	MisBeginCondition(NoMission, 150)
	MisBeginCondition(NoRecord, 150)
	MisBeginAction(AddMission, 150)
	MisBeginAction(AddTrigger, 1501, TE_GETITEM, 1779, 3 )
	MisCancelAction(ClearMission, 150)

	MisNeed(MIS_NEED_DESP, "�ռ�3��<bҩƿ>Ȼ�������СĪ̸̸")
	MisNeed(MIS_NEED_ITEM, 1779, 3, 10, 3)
	
	MisResultTalk("<t>��ɹ��ˣ�����Ϊ����ˣ��ҹ�Ȼû�п����㣡")
	MisHelpTalk("<t>��ô�ˣ���ЩС����Ǻ����׶Ը��İ���")
	MisResultCondition(HasMission, 150)
	MisResultCondition(HasItem, 1779, 3 )
	MisResultAction(TakeItem, 1779, 3)
	MisResultAction(ClearMission, 150)
	MisResultAction(SetRecord, 150)
	MisResultAction(AddExp, 300, 300)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1779 )	
	TriggerAction( 1, AddNextFlag, 150, 10, 3 )
	RegCurTrigger( 1501 )

-----------------------------------����תְ����
	DefineMission( 179, "����תְ����", 151 )
	
	MisBeginTalk( "<t>����Ϊ���Ѿ��Ǹ��ϸ�������ˣ�������һ��<r�����ֲ�>����������ȥ����ŷ(1365,570)���㽫��Ϊ���������ˣ�")
	MisBeginCondition(HasRecord, 150)
	MisBeginCondition(NoRecord, 151)
	MisBeginCondition(NoMission, 151)
	MisBeginAction(AddMission, 151)
	MisBeginAction(GiveItem, 3955, 1, 4)
	MisCancelAction(ClearMission, 151 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "�ұ��Ǳ�����ŷ̸̸")

	MisHelpTalk("<t>���𣿻���ĥ��ʲô���㣿")
	MisResultCondition(AlwaysFailure )


-----------------------------------����תְ����
	DefineMission( 180, "����תְ����", 151, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>̫���ˣ����Ϊ�����������ˣ���ϲ�㣡�ڱ��Ǳ������ѵ������ˣ�����İ��������һ���ܶɹ��ѹأ�<n><t>��������������Դ���ŷ������ȡ����ְҵ�����ˡ�<n><t>���⣬����Ե��������ﹺ�������������ں�������������װ���������Ե��ӻ����ˡ���³���������˵ļ�����Ŷ��ǧ��Ҫ����Ŷ��")
	MisResultCondition(NoRecord, 151)
	MisResultCondition(HasMission, 151)
	MisResultCondition(HasItem, 3955, 1)
	MisResultCondition(PfEqual, 0 )
	MisResultAction(TakeItem, 3955, 1)
	MisResultAction(ClearMission, 151)
	MisResultAction(SetRecord, 151)
	MisResultAction(AddExp, 100, 100)
	MisResultAction(SetProfession, 2)
	MisResultAction(GiveItem, 3187, 1, 4)
	MisResultAction(GiveItem, 25, 1, 4)
	MisResultBagNeed(2)


-----------------------------------���Ÿ���³
	DefineMission( 181, "���Ÿ���³", 91, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>����̫���ˣ���ĵ��������ܹ������ҡ�")
	MisResultCondition(NoRecord, 91)
	MisResultCondition(HasMission, 91)
	MisResultCondition(HasItem, 4132, 1)
	MisResultAction(TakeItem, 4132, 1)
	MisResultAction(ClearMission, 91)
	MisResultAction(SetRecord, 91)
	MisResultAction(AddExp, 50, 50)


-----------------------------------�ռ�����
	DefineMission( 182, "�ռ�����", 152 )

	MisBeginTalk( "<t>����������Լ����ռ�Ʒʱ���֣��Ҿ�Ȼû��<r���㴥��>�������������ھ��������ȥ��һЩ�ɣ�ֻҪ3��<r���㴥��>�ͺ��ˡ�<n><t>�������<bѩԭޢޢ>(1465,402)����õ�������һ����ڳ��ſڸ������֡�<n><t>Ŀǰ�Ҿ���Ҫ������������£�")
	MisBeginCondition(HasRecord, 91)
	MisBeginCondition(NoMission, 152)
	MisBeginCondition(NoRecord, 152)
	MisBeginAction(AddMission, 152)
	MisBeginAction(AddTrigger, 1521, TE_GETITEM, 1704, 3 )
	MisCancelAction(ClearMission, 152)
	
	MisNeed(MIS_NEED_DESP, "�ռ�3ֻ<r���㴥��>Ȼ���Ҳ�³(1356,483)̸̸")
	MisNeed(MIS_NEED_ITEM, 1704, 3, 10, 3)
	
	MisResultTalk("<t>̫���ˣ������ҵ��ղ�Ʒ�ֶ���һ�㣬�ÿ���Ŷ��<n><t>ҲҪлл�㣬��󻹻�����Ҫ������ĵط�������ǧ��Ҫ�ƴ�Ŷ��")
	MisHelpTalk("<t>��ô�ˣ���������ѩԭޢޢ���ڳ��ſڸ�������ȥ�ɡ�")
	MisResultCondition(HasMission, 152)
	MisResultCondition(HasItem, 1704, 3 )
	MisResultAction(TakeItem, 1704, 3)
	MisResultAction(ClearMission, 152)
	MisResultAction(SetRecord, 152)
	MisResultAction(AddExp, 150, 150)
		
	InitTrigger()
	TriggerCondition( 1, IsItem, 1704 )	
	TriggerAction( 1, AddNextFlag, 152, 10, 3 )
	RegCurTrigger( 1521 )

-----------------------------------���Ÿ�Լɪ��
	DefineMission( 183, "���Ÿ�Լɪ��", 153 )
	
	MisBeginTalk( "<t>��ô�����鷳��һ���£�������ͷ��Ÿ��ҵ�����Լɪ��(1290,540)��Ҳϣ�����ܸ��������")
	MisBeginCondition(HasRecord, 152)
	MisBeginCondition(NoRecord, 153)
	MisBeginCondition(NoMission, 153)
	MisBeginAction(AddMission, 153)
	MisBeginAction(GiveItem, 4137, 1, 4)
	MisCancelAction(ClearMission, 153 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "���Ÿ����Ǳ���Լɪ��(1290,540).")

	MisHelpTalk("<t>�ټ����ҵ����ѣ���������ʱ�����ٸ���ʲô�����ˡ�")
	MisResultCondition(AlwaysFailure )

-----------------------------------���Ÿ�Լɪ��
	DefineMission( 184, "���Ÿ�Լɪ��", 153, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>Ŷ�����ǲ�³���������ҵİ���̫���ˡ�")
	MisResultCondition(NoRecord, 153)
	MisResultCondition(HasMission, 153)
	MisResultCondition(HasItem, 4137, 1)
	MisResultAction(TakeItem, 4137, 1)
	MisResultAction(ClearMission, 153)
	MisResultAction(SetRecord, 153)
	MisResultAction(AddExp, 80, 80)

-----------------------------------����ƿ
	DefineMission( 185, "����ƿ", 154 )

	MisBeginTalk( "<t>����ҵ��õ�������˺ö����ƿ��<n><t>�Ǿ�����Ҹ�æ��ȥ��1179,371��������<b��ԭ������>���ϸ㵽2��<rҩƿ>�����ɣ������������и����Ʒ���Ǻǡ�")
	MisBeginCondition(HasRecord, 153)
	MisBeginCondition(NoMission, 154)
	MisBeginCondition(NoRecord, 154)
	MisBeginAction(AddMission, 154)
	MisBeginAction(AddTrigger, 1541, TE_GETITEM, 1779, 2 )
	MisCancelAction(ClearMission, 154)
	
	MisNeed(MIS_NEED_DESP, "�ռ�2��<rҩƿ>Ȼ���ұ��Ǳ���Լɪ��(964,422)̸̸")
	MisNeed(MIS_NEED_ITEM, 1779, 2, 10, 2)

	MisPrize(MIS_PRIZE_ITEM, 4308, 1, 4)
	MisPrizeSelAll()	

	MisResultTalk("<t>���ޣ���������Щ��ζ�ĵ������еط�����ˣ�")
	MisHelpTalk("<t>����������ҩƿ�ȫ�����ˣ���ȥ�ɡ�")
	MisResultCondition(HasMission, 154)
	MisResultCondition(HasItem, 1779, 2 )
	MisResultAction(TakeItem, 1779, 2)
	MisResultAction(ClearMission, 154)
	MisResultAction(SetRecord, 154)
	MisResultAction(AddExp, 250, 250)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1779 )	
	TriggerAction( 1, AddNextFlag, 154, 10, 2 )
	RegCurTrigger( 1541 )

-----------------------------------���Ÿ�������
	DefineMission( 186, "���Ÿ�������", 155 )
	
	MisBeginTalk( "<t>������Ǹ����Ǳ���<b������>�ģ�������1360,519���Ǹ����ɣ��鷳����ҽ̸�������")
	MisBeginCondition(HasRecord, 154)
	MisBeginCondition(NoRecord, 155)
	MisBeginCondition(NoMission, 155)
	MisBeginAction(AddMission, 155)
	MisBeginAction(GiveItem, 4138, 1, 4)
	MisCancelAction(ClearMission, 155 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "���Ÿ����Ǳ��Ĳ�����")

	MisHelpTalk("<t>��ô�ˣ���Ҫס������������죬ס�޻���Ҫ�շѵģ������ҿ��Ը������ž��ۡ�")
	MisResultCondition(AlwaysFailure )
-----------------------------------���Ÿ�������
	DefineMission( 187, "���Ÿ�������", 155, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>�ף��Ǹ��õ��ϰ��ȻҲ�������д�Ƽ��ţ�������һ������Ŷ��")
	MisResultCondition(NoRecord, 155)
	MisResultCondition(HasMission, 155)
	MisResultCondition(HasItem, 4138, 1)
	MisResultAction(TakeItem, 4138, 1)
	MisResultAction(ClearMission, 155)
	MisResultAction(SetRecord, 155)
	MisResultAction(AddExp, 120, 120)

-----------------------------------����
	DefineMission( 188, "����", 156 )

	MisBeginTalk( "<t>��˵��<b��ɫ�Թ�¹>(1325,305)����<b�Թ�¹>(1164,305)�����������������ܸ��˴������ˣ�<n><t>��ϣ�����ܸ�����1��������")
	MisBeginCondition(HasRecord, 155)
	MisBeginCondition(NoMission, 156)
	MisBeginCondition(NoRecord, 156)
	MisBeginAction(AddMission, 156)
	MisBeginAction(AddTrigger, 1561, TE_GETITEM, 1681, 1 )
	MisCancelAction(ClearMission, 156)
	
	MisNeed(MIS_NEED_DESP, "�ռ�1��<b����>Ȼ���ұ��Ǳ��Ĳ�����(1360,519)̸̸")
	MisNeed(MIS_NEED_ITEM, 1681, 1, 10, 1)

	MisPrize(MIS_PRIZE_ITEM, 4310, 1, 4)
	MisPrizeSelAll()	

	MisResultTalk("<t>̫���ˣ�������Щ���ᣬ��һ������������λ��������Ʒ��")
	MisHelpTalk("<t>�ѵ���һ��������Ҳ�ռ�������")
	MisResultCondition(HasMission, 156)
	MisResultCondition(HasItem, 1681, 1 )
	MisResultAction(TakeItem, 1681, 1)
	MisResultAction(ClearMission, 156)
	MisResultAction(SetRecord, 156)
	MisResultAction(AddExp, 400, 400)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1681 )	
	TriggerAction( 1, AddNextFlag, 156, 10, 1 )
	RegCurTrigger( 1561 )

-----------------------------------���Ÿ�����¶��
	DefineMission( 189, "���Ÿ�����¶��", 157 )
	
	MisBeginTalk( "<t>��Ȼ������Щ���Ǳ��������鷳����ܶ��£���������Ҳ�ɳ��ˡ�<n><t>���ڣ��������������ŵ����Ǳ�����ָ��<b����¶��>�����������µ�ָ���ġ�<n><t>������1315,507��")
	MisBeginCondition(HasRecord, 156)
	MisBeginCondition(NoRecord, 157)
	MisBeginCondition(NoMission, 157)
	MisBeginAction(AddMission, 157)
	MisBeginAction(GiveItem, 4135, 1, 4)
	MisCancelAction(ClearMission, 157 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "���Ÿ����Ǳ�����ָ��")

	MisHelpTalk("<t>����¶�Ǿ���1315,507����ȥ�ɡ�")
	MisResultCondition(AlwaysFailure )
-----------------------------------���Ÿ�����¶��
	DefineMission( 190, "���Ÿ�����¶��", 157, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>лл����ҵ��ţ���������ܱ��Ǳ�����Ļ�ӭŶ��")
	MisResultCondition(NoRecord, 157)
	MisResultCondition(HasMission, 157)
	MisResultCondition(HasItem, 4135, 1)
	MisResultAction(TakeItem, 4135, 1)
	MisResultAction(ClearMission, 157)
	MisResultAction(SetRecord, 157)
	MisResultAction(AddExp, 200, 200)


-----------------------------------ð����תְ����
	DefineMission( 191, "ð����תְ����", 61, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("�ã���Ȼ������ָ���Ƽ��������ˣ���Ӧ���ǲ���ģ������Ϊ<rð����>�ͱ�������ҽ����������")
	MisResultCondition(NoRecord, 61)
	MisResultCondition(HasMission, 61)
	MisResultCondition(HasItem, 4119, 1)
	MisResultAction(TakeItem, 4119, 1)
	MisResultAction(ClearMission, 61)
	MisResultAction(SetRecord, 61)

-----------------------------------ð����תְ����
	DefineMission( 192, "ð����תְ����", 158 )

	MisBeginTalk( "<t>������������ð���ߵ�����ô��ð���߾�����Ұ�����һ�������ܶ�Σ�գ����������ȥ��ð���ߵ�����֪ʶ����Ҫ��õ�<r����ָ��>�Ļ�������뵽<p������Ұ��>���12ֻ<b������>(1950,2563)����������Ժ��һ���������ȥҪ��ʲô�ġ�")
	MisBeginCondition(HasRecord, 61)
	MisBeginCondition(NoMission, 158)
	MisBeginCondition(NoRecord, 158)
	MisBeginAction(AddMission, 158)
	MisBeginAction(AddTrigger, 1581, TE_KILL, 237, 12 )
	MisCancelAction(ClearMission, 158)
	
	MisNeed(MIS_NEED_DESP, "��ɱ12��<b������>Ȼ���Ұ�����Сɽ����2193,2730��̸̸")
	MisNeed(MIS_NEED_KILL, 237, 12, 10, 12)
	
	MisResultTalk("<t>���ѣ��������治��<n><t>��ͨ���ҵĲ����ˣ���һ������Ҫ��ȥ�������Ŀ��ˣ�")
	MisHelpTalk("<t>�㻹û�дﵽ�ҵ�Ҫ��Ŷ��ð���ߵ�����ָ�Ͽɲ��������ܻ�õġ�")
	MisResultCondition(HasMission, 158)
	MisResultCondition(HasFlag, 158, 21 )
	MisResultAction(ClearMission, 158)
	MisResultAction(SetRecord, 158)
	MisResultAction(AddExp, 300, 300)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 237 )	
	TriggerAction( 1, AddNextFlag, 158, 10, 12 )
	RegCurTrigger( 1581 )


-----------------------------------ð����תְ����
	DefineMission( 193, "ð����תְ����", 159 )
	
	MisBeginTalk( "<t><t>���ڣ������ȥ�Һ����ٽ�<b����˹>����(2277,2831)֤�����ʵ������������ţ�����Ŵ������Ѿ�ͨ���˵�һ�أ�������������˹������������յĿ��ˡ�")
	MisBeginCondition(HasRecord, 158)
	MisBeginCondition(NoRecord, 159)
	MisBeginCondition(NoMission, 159)
	MisBeginAction(AddMission, 159)
	MisBeginAction(GiveItem, 4139, 1, 4)
	MisCancelAction(ClearMission, 159  )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "���Ÿ������ٽ�ά��˹")

	MisHelpTalk("<t>��ȥ�ɣ���ϣ������˳����ɣ�")
	MisResultCondition(AlwaysFailure )
-----------------------------------ð����תְ����
	DefineMission( 194, "ð����תְ����", 159, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>Ŷ������һ��������ð������������ˣ��ܺã�����ҲҪ��������׼��Ŷ��")
	MisResultCondition(NoRecord, 159)
	MisResultCondition(HasMission, 159)
	MisResultCondition(HasItem, 4139, 1)
	MisResultAction(TakeItem, 4139, 1)
	MisResultAction(ClearMission, 159)
	MisResultAction(SetRecord, 159)
	MisResultAction(AddExp, 100, 100)

-----------------------------------ð����תְ����
	DefineMission( 195, "ð����תְ����", 160 )

	MisBeginTalk( "<t>��<p���󶫱���>�����<r����ɭ��>�����ռ���2��<b�ж��Ĺ�ʵ>���������ͨ���˿��ˣ�")
	MisBeginCondition(HasRecord, 159)
	MisBeginCondition(NoMission, 160)
	MisBeginCondition(NoRecord, 160)
	MisBeginAction(AddMission, 160)
	MisBeginAction(AddTrigger, 1601, TE_GETITEM, 1595, 2 )
	MisCancelAction(ClearMission, 160)

	MisNeed(MIS_NEED_DESP, "�ռ�2��<b�ж��Ĺ�ʵ>Ȼ�����������˹(2277,2831)̸̸")
	MisNeed(MIS_NEED_ITEM, 1595, 2, 10, 2)
	
	MisResultTalk("<t>�ܲ�����ɹ��ˡ�<n><t>��ϲ�㣬���ð���ó��Ѿ���ǰ���������ˣ���Ψһϣ���ģ������㲻Ҫ��Ϊһ����������")
	MisHelpTalk("<t>������Ļ�����ֱ�Ӻ���˵��")
	MisResultCondition(HasMission, 160)
	MisResultCondition(HasItem, 1595, 2 )
	MisResultAction(TakeItem, 1595, 2)
	MisResultAction(ClearMission, 160)
	MisResultAction(SetRecord, 160)
	MisResultAction(AddExp, 300, 300)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1595 )	
	TriggerAction( 1, AddNextFlag, 160, 10, 2 )
	RegCurTrigger( 1601 )

-----------------------------------ð����תְ����
	DefineMission( 196, "ð����תְ����", 161 )
	
	MisBeginTalk( "<t>�Ȿ<r����ָ��>���㣬����Сɽ����2193,2730����������㽫��Ϊһ���ϸ��ð���ߣ�")
	MisBeginCondition(HasRecord, 160)
	MisBeginCondition(NoRecord, 161)
	MisBeginCondition(NoMission, 161)
	MisBeginAction(AddMission, 161)
	MisBeginAction(GiveItem, 3962, 1, 4)
	MisCancelAction(ClearMission, 161 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "���������ֲ��Ұ�����Сɽ����2193,2730��̸̸")

	MisHelpTalk("<t>��ȥ�ɣ��ѵ��㲻���Ϊð��������")
	MisResultCondition(AlwaysFailure )

-----------------------------------ð����תְ����
	DefineMission( 197, "ð����תְ����", 161, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>��ϲ��ϲ����������ð�����ˣ����뿴�����ð���㼣���鲼�������磬��ô�������ΰ���<n><t>��������������Դ�Сɽ��������ȡð����ְҵ�����ˡ�<n><t>���⣬����Ե�С������ﹺ��ð��������������������������ð����װ���������Ե��ӻ����ˡ�������������ð���ߵļ�����Ŷ��ǧ��Ҫ����Ŷ��")
	MisResultCondition(NoRecord, 161)
	MisResultCondition(HasMission, 161)
	MisResultCondition(HasItem, 3962, 1)
	MisResultAction(TakeItem, 3962, 1)
	MisResultAction(ClearMission, 161)
	MisResultAction(SetRecord, 161)
	MisResultAction(AddExp, 100, 100)
	MisResultAction(SetProfession, 4)
	MisResultAction(GiveItem, 867, 1, 4)
	MisResultAction(GiveItem, 3227, 1, 4)
	MisResultBagNeed(2)


-----------------------------------����ó��֤����
	DefineMission( 198, "����ó��֤����", 162 )

	MisBeginTalk( "<t>��������һ�ų���ó��֤���������Ҫ�͵ð��Ұ���£������������ҪһЩľ�ģ�������ܹ�������40��ľͷ�Ļ����ҾͰ��Ȿ����ó��֤���㡣<n><t>����Ҫ�õ�ľͷ�Ļ��������Լ���ľҲ���Դ�����������ｻ�׻�ã���Ҫ�Լ���ľ�Ļ�����ȥ�������е��ӻ����˴�����ľ�����飬ѧ�ᷥľ���ܺ�װ���˷�ľ���������������������ܵ���������ȥ��ľ�ˡ�<n><t>��ľ������������ܣ���Ҫ����ܵ㣬����ܵ����ͨ�������ʷ�����ã���ʷ��������ȼ��ﵽ10��������ڸ������е�����֪�����ӵ���<n><t>���ˣ�������ڹ����̳��򵽡��߼���ľ��������������ķ�ľЧ�ʴ�����Ŷ�������ȥ������)")
	MisBeginCondition(NoMission, 162)
	MisBeginCondition(NoItem, 4605, 1)
	MisBeginCondition(LvCheck, ">", 19 )
	MisBeginAction(AddMission, 162)
	MisBeginAction(AddTrigger, 1621, TE_GETITEM, 4543, 40 )
	MisCancelAction(ClearMission, 162)

	MisNeed(MIS_NEED_DESP, "��ɳᰳǵ������(799,3659)��40��ľͷ")
	MisNeed(MIS_NEED_ITEM, 4543, 40, 10, 40)
	
	MisResultTalk("<t>�ü��ˣ���Ȼ���Ѿ����Ұ����鶼����ˣ���ô���ų���ó��֤��������ˡ�")
	MisHelpTalk("<t>��ô�㻹û�������ѵ��㲻��Ҫ����ó��֤��ô��")
	MisResultCondition(HasMission, 162)
	MisResultCondition(HasItem, 4543, 40 )
	MisResultAction(TakeItem, 4543, 40 )
	MisResultAction(ClearMission, 162)
	MisResultAction(SetRecord, 162)
	MisResultAction(GiveItem, 4605, 1, 4)
	MisResultAction(SetTradeItemLevel, 1 )
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4543 )	
	TriggerAction( 1, AddNextFlag, 162, 10, 40 )
	RegCurTrigger( 1621 )

-----------------------------------�м�ó��֤����
	DefineMission( 199, "�м�ó��֤����", 163 )

	MisBeginTalk( "<t>��������һ���м�ó��֤���������Ҫ�͵ð��Ұ���£������������ҪһЩˮ����������ܹ�������40��ˮ����ʯ�Ļ����ҾͰ��Ȿ�м�ó��֤���㡣<n><t>����Ҫ�õ���ʯ�Ļ��������Լ��ڿ�Ҳ���Դ�����������ｻ�׻�ã���Ҫ�Լ��ڿ�Ļ�����ȥ�������е��ӻ����˴������ڿ����飬ѧ���ڿ��ܺ�װ���Ͽ����ܵ���������ڿ��ˡ�<n><t>�ڿ�����������ܣ���Ҫ����ܵ㣬����ܵ����ͨ�������ʷ�����ã���ʷ��������ȼ��ﵽ10��������ڸ������е�����֪�����ӵ���<n><t>���ˣ�������ڹ����̳��򵽡��߼���䡱������������ڿ�Ч�ʴ�����Ŷ�������ȥ������)")
	MisBeginCondition(NoMission, 163)
	MisBeginCondition(HasItem, 4605, 1)
	MisBeginCondition(TradeItemDataCheck, ">", 99 )
	MisBeginCondition(LvCheck, ">", 39)
	MisBeginCondition(TradeItemLevelCheck, "=", 1)
	MisBeginAction(AddMission, 163)
	MisBeginAction(AddTrigger, 1631, TE_GETITEM, 4546, 40 )
	MisCancelAction(ClearMission, 163)

	MisNeed(MIS_NEED_DESP, "��ɳᰳǵ������(799,3659)��40��ˮ����ʯ")
	MisNeed(MIS_NEED_ITEM, 4546, 40, 10, 40)
	
	MisResultTalk("<t>�ü��ˣ���Ȼ���Ѿ����Ұ����鶼����ˣ���ô�����м�ó��֤��������ˡ�")
	MisHelpTalk("<t>��ô�㻹û�������ѵ��㲻��Ҫ����ó��֤��ô��")
	MisResultCondition(HasMission, 163)
	MisResultCondition(HasItem, 4546, 40 )
	MisResultCondition(HasItem, 4605, 1 )
	MisResultAction(TakeItem, 4546, 40)
	MisResultAction(ClearMission, 163)
	MisResultAction(SetRecord, 163)
	MisResultAction(SetTradeItemLevel, 2 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4546 )	
	TriggerAction( 1, AddNextFlag, 163, 10, 40 )
	RegCurTrigger( 1631 )


-----------------------------------�߼�ó��֤����
	DefineMission( 149, "�߼�ó��֤����", 164 )

	MisBeginTalk( "<t>��������һ�Ÿ߼�ó��֤���������Ҫ�͵ð��Ұ���£������������ҪһЩˮ����������ܹ�������40��������ʯ�Ļ����ҾͰ��Ȿ�߼�ó��֤����")
	MisBeginCondition(NoMission, 164)
	MisBeginCondition(HasItem, 4605, 1)
	MisBeginCondition(TradeItemDataCheck, ">", 399 )
	MisBeginCondition(LvCheck, ">", 59)
	MisBeginCondition(TradeItemLevelCheck, "=", 2)
	MisBeginAction(AddMission, 164)
	MisBeginAction(AddTrigger, 1641, TE_GETITEM, 4544, 40 )
	MisCancelAction(ClearMission, 164)

	MisNeed(MIS_NEED_DESP, "��ɳᰳǵ������(799,3659)��40��������ʯ")
	MisNeed(MIS_NEED_ITEM, 4544, 40, 10, 40)
	
	MisResultTalk("<t>�ü��ˣ���Ȼ���Ѿ����Ұ����鶼����ˣ���ô���Ÿ߼�ó��֤��������ˡ�")
	MisHelpTalk("<t>��ô�㻹û�������ѵ��㲻��Ҫ����ó��֤��ô��")
	MisResultCondition(HasMission, 164)
	MisResultCondition(HasItem, 4544, 40 )
	MisResultCondition(HasItem, 4605, 1 )
	MisResultAction(TakeItem, 4544, 40)
	MisResultAction(ClearMission, 164)
	MisResultAction(SetRecord, 164)
	MisResultAction(SetTradeItemLevel, 3 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4544 )
	TriggerAction( 1, AddNextFlag, 164, 10, 40 )
	RegCurTrigger( 1641 )

end
RobinMission039()




