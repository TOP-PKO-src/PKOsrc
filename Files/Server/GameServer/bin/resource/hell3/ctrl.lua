--���ļ��У����ǿ��ܱ����ִ�еĺ�������������Ҫ���ϵ�ͼ��ǰ׺

SPECIALSKILL = {}
SPECIALSKILL[10]=0
SPECIALSKILL[11]=0
SPECIALSKILL[12]=0
SPECIALSKILL[13]=0
SPECIALSKILL[14]=0
SPECIALSKILL[15]=0
SPECIALSKILL[16]=0
SPECIALSKILL[17]=0
SPECIALSKILL[18]=0
SPECIALSKILL[19]=0

SUMMONNUM = 20
SUMMONJG = 60

function config(map)
    MapCanSavePos(map, 0) --���õ�ͼ�Ƿ񱣴��ɫλ�ã���ͼ�����꣬���򣩣�������Ӱ��õ�ͼ�����и���
    MapCanPK(map, 1) --���õ�ͼ�Ƿ����PK��������Ӱ��õ�ͼ�����и���
    MapCopyNum(map, 1) --���õ�ͼ�ĸ�����Ŀ����������ø���䣬��ʹ��Ĭ��ֵ1
    MapCopyStartType(map, 1) --���õ�ͼ������ʼ
    SingleMapCopyPlyNum(map, 300)   --����һ�������������
    MapCanTeam(map , 1)
    MapType ( map , 4 )
end


function get_map_entry_pos_hell3()   --������ڵ�λ�õ����꣨���꣨�ף���

	local POS_X=245
	local POS_Y=75
	return POS_X , POS_Y

end

function init_entry(map)
    SetMapEntryMapName(map, "hell2") --������ڵ�λ�ã���ͼ�������꣨�ף���
    SetMapEntryTime(map, "2007/1/19/22/0", "1/0/0", "0/0/30", "0/5/0") --������ڵ�ʱ�䣬��ͼ�����״ο���ʱ�䣨��/��/��/ʱ/�֣����Ժ��ٴο����ļ������/ʱ/�֣�ȫ����ʾֻ���״ο�������ÿ�ο����������ʧ�ļ������/ʱ/�֣�ȫ����ʾ������ʧ����ÿ�ο�������ͼ�رյļ������/ʱ/�֣�ȫ����ʾ�����رգ�����

end

function after_enter_hell3( role , map_copy )

local cha_name=GetChaDefaultName(role)

SystemNotice ( role, "���ص�������<"..cha_name..">�����ｫ��������󲹸��ĵط���Ҳ�����������Ĺ�����ú���������ʱ��ɣ�" ) 

end

function before_leave_hell3 ( role )

end

function map_copy_first_run_hell3( map_copy )



end

function startspecialskill (monsterID)

	local Notice_all = {}
	Notice_all[10] = "�����ɣ��ûʽ�������"
	Notice_all[11] = "ȼ�հɣ����𣡣���"
	Notice_all[12] = "��ŭ�ɣ�а��֮��������"
	Notice_all[13] = "���۰ɣ��Կ�֮�꣡����"
	Notice_all[14] = "����ɣ����֮������"
	Notice_all[15] = "ʹ��ɣ������ָ�������"
	Notice_all[16] = "���Ѱɣ���������ˣ�����"
	Notice_all[17] = "���ѣ���ɲ����������"


	if monsterID == 10 then
		MapCopyNotice ( map_copy , Notice_all[monsterID] )
		local mspd = GetChaAttr( AZRAEL[monsterID] , ATTR_BMSPD ) *4
		SetCharaAttr(mspd , AZRAEL[monsterID] , ATTR_BMSPD ) 
		SPECIALSKILL[10]=1
	end

	if monsterID == 11 then
		MapCopyNotice ( map_copy , Notice_all[monsterID] )
		SetCharaAttr( 10000, AZRAEL[monsterID], ATTR_BCRT)													--[[��ֵ����������]]--
		SPECIALSKILL[11]=1
	end

	if monsterID == 12 then
		MapCopyNotice ( map_copy , Notice_all[monsterID] )

		local mnatk = GetChaAttr( AZRAEL[monsterID] , ATTR_BMNATK ) *2
		local mxatk = GetChaAttr( AZRAEL[monsterID] , ATTR_BMXATK ) *2

		SetCharaAttr(mnatk, AZRAEL[monsterID], ATTR_BMNATK )											--[[��ֵ������С�˺���]]--
		SetCharaAttr(mxatk, AZRAEL[monsterID], ATTR_BMXATK )												--[[��ֵ��������˺���]]--
		SPECIALSKILL[12]=1

	end

	if monsterID == 13 then
		MapCopyNotice ( map_copy , Notice_all[monsterID] )

		local def = GetChaAttr( AZRAEL[monsterID] , ATTR_BDEF ) *2
		SetCharaAttr( def, AZRAEL[monsterID], ATTR_BDEF )												--[[��ֵ��������˺���]]--
		SPECIALSKILL[13]=1

	end

	if monsterID == 14 then
		MapCopyNotice ( map_copy , Notice_all[monsterID] )

		local aspd = GetChaAttr( AZRAEL[monsterID] , ATTR_BASPD ) *2
		SetCharaAttr( aspd, AZRAEL[monsterID], ATTR_BASPD )												--[[��ֵ��������˺���]]--
		SPECIALSKILL[14]=1


	end

	if monsterID == 15 then
		MapCopyNotice ( map_copy , Notice_all[monsterID] )

		local mxhp = GetChaAttr( AZRAEL[monsterID] , ATTR_BMXHP ) *2
		SetCharaAttr( mxhp, AZRAEL[monsterID], ATTR_HP )												--[[��ֵ��������˺���]]--
		SPECIALSKILL[15]=1


	end

	if monsterID == 16 then

		if SUMMONJG == 60 then
			MapCopyNotice ( map_copy , Notice_all[monsterID] )

			local x, y = GetChaPos( AZRAEL[monsterID] )
			local x1 = x
			local x2 = x +700
			local x3 = x -700
			local y1 = y + 700
			local y2 = y - 700
			local y3 = y -700
			local new1 = CreateCha(827, x1, y1, 145, 21600)
			local new2 = CreateCha(828, x2, y2, 145, 21600)
			local new3 = CreateCha(828, x3, y3, 145, 21600)
			SUMMONNUM =  SUMMONNUM - 1
			SUMMONJG = SUMMONJG-1
		else
			SUMMONJG = SUMMONJG-1
			if SUMMONJG == 0 then
				SUMMONJG = 60
			end
		end

		if SUMMONNUM == 0 then
			SPECIALSKILL[16]=1
		end

	end

	if monsterID == 17 then
		MapCopyNotice ( map_copy , Notice_all[monsterID] )

		local x, y = GetChaPos( AZRAEL[monsterID] )
		local x1 = x
		local x2 = x +700
		local x3 = x -700
		local y1 = y + 700
		local y2 = y - 700
		local y3 = y -700
		local new1 = CreateCha(986,x1, y1, 145, 21600)
		local new2 = CreateCha(986,x2, y2, 145, 21600)
		local new3 = CreateCha(986, x3, y3, 145, 21600)
		SetCharaAttr( 1000000, new1, ATTR_HP )												--[[��ֵ��������˺���]]--
		SetCharaAttr( 1000000, new1, ATTR_HP )												--[[��ֵ��������˺���]]--
		SetCharaAttr( 1000000, new1, ATTR_HP )												--[[��ֵ��������˺���]]--
		SPECIALSKILL[17]=1
	end

end

function map_copy_run_hell3( map_copy )

--���⼼�ܷ�����ʼ
for i = 1 , 8 , 1 do
	local j = i + 9
	local hp = GetChaAttr( AZRAEL[j] , ATTR_HP ) 
	local mxhp = GetChaAttr( AZRAEL[j] , ATTR_MXHP )
	local percent = hp/mxhp
	if percent < 0.5 and SPECIALSKILL[j]==0 then
		startspecialskill ( j )
	end
end
--���⼼�ܷ�������


---������п�ʼ
	if CheckMonsterDead ( AZRAEL[10] ) == 1 then
		
		if CRY[10]==0 then
			local Notice_all = "�ûʣ�������ô����սʤ�����еĻûʽ���ڤ��֮�ʰ����ѵ��Ҳ���������ҵ������𣿣�����"
			MapCopyNotice ( map_copy , Notice_all )
			CRY[10]=1
			BOSSXYSJ[979] = 1
			BOSSSJSJ[979] = 8	
			BOSSTJSJ[979] = 8	
			BOSSXZSJ[979] = 12	
			BOSSAYSJ[979] = 12
		end
	end
	
		if CheckMonsterDead ( AZRAEL[11] ) == 1 then
		
		if CRY[11]==0 then
			local Notice_all = "�������ֱ���ĸо�������������ǧ��û�г�������ζ��������ô�����ð�~~~~������"
			MapCopyNotice ( map_copy , Notice_all )
			CRY[11]=1
			BOSSXYSJ[980] = 12
			BOSSSJSJ[980] = 1	
			BOSSTJSJ[980] = 1	
			BOSSXZSJ[980] = 12	
			BOSSAYSJ[980] = 12

		end
	end

		if CheckMonsterDead ( AZRAEL[12] ) == 1 then
		
		if CRY[12]==0 then
			local Notice_all = "а�ޣ�����������������ɢ���Ҳ�Ҫ������ʧ�ܣ��һ�Ҫ�������������~~~~~~~������"
			MapCopyNotice ( map_copy , Notice_all )
			CRY[12]=1
			BOSSXYSJ[981] = 6
			BOSSSJSJ[981] = 6	
			BOSSTJSJ[981] = 6	
			BOSSXZSJ[981] = 16	
			BOSSAYSJ[981] = 16

		end
	end

		if CheckMonsterDead ( AZRAEL[13] ) == 1 then
		
		if CRY[13]==0 then
			local Notice_all = "�Կ�����ʹ�����Ǳ��̴��ĸо��𣿿����ҵ���������������~~~~~������"
			MapCopyNotice ( map_copy , Notice_all )
			CRY[13]=1
			BOSSXYSJ[982] = 4
			BOSSSJSJ[982] = 4	
			BOSSTJSJ[982] = 4	
			BOSSXZSJ[982] = 16	
			BOSSAYSJ[982] = 16

		end
	end

		if CheckMonsterDead ( AZRAEL[14] ) == 1 then
		
		if CRY[14]==0 then
			local Notice_all = "��ˣ��������Ϊ���Ǹ��õĸ��ԡ�������ķ�˱ؽ������������������������"
			MapCopyNotice ( map_copy , Notice_all )
			CRY[14]=1
			BOSSXYSJ[983] = 12
			BOSSSJSJ[983] = 12	
			BOSSTJSJ[983] = 12	
			BOSSXZSJ[983] = 12	
			BOSSAYSJ[983] = 12

		end
	end

		if CheckMonsterDead ( AZRAEL[15] ) == 1 then
		
		if CRY[15]==0 then
			local Notice_all = "�������ѵ�����Ĳ��ñ���Ů���𣿿��Ǿ������������ǿ����������ô����Ů��~~~������"
			MapCopyNotice ( map_copy , Notice_all )
			CRY[15]=1
			BOSSXYSJ[984] = 16
			BOSSSJSJ[984] = 16	
			BOSSTJSJ[984] = 16	
			BOSSXZSJ[984] = 4	
			BOSSAYSJ[984] = 4

		end
	end

		if CheckMonsterDead ( AZRAEL[16] ) == 1 then
		
		if CRY[16]==0 then
			local Notice_all = "���꣺�������������Ļ��߰������ջ��ҵ���������������Ⱥ��ͽ����������"
			MapCopyNotice ( map_copy , Notice_all )
			CRY[16]=1
			BOSSXYSJ[985] = 16
			BOSSSJSJ[985] = 16	
			BOSSTJSJ[985] = 16	
			BOSSXZSJ[985] = 1	
			BOSSAYSJ[985] = 1

		end
	end

		if CheckMonsterDead ( AZRAEL[17] ) == 1 then
		
		if CRY[17]==0 then
			local Notice_all = "��ɲ����ɫ�������أ�Ϊʲô�ҵ�Ѫ��������ϲ���Ĵ�һ��������~~������"
			MapCopyNotice ( map_copy , Notice_all )
			CRY[17]=1
			BOSSXYSJ[986] = 12
			BOSSSJSJ[986] = 12	
			BOSSTJSJ[986] = 12	
			BOSSXZSJ[986] = 6	
			BOSSAYSJ[986] = 6

		end
	end
--������н���

	if CRY[10]==1 and CRY[11]==1 and CRY[12]==1 and CRY[13]==1 and CRY[14]==1 and CRY[15]==1 and CRY[16]==1 and CRY[17]==1  then
		
		if HELLCLOSETIME==300 then
			Notice("���ص����������˴�ڤ�����������ǵ����£���Ҳ�Ͽ����ǵ����������ɣ������ҵ���ǰ�ɣ������Ѿ���������ɱ¾��������������֮�����ｫ�ữΪ�������գ������Ѿ�û����·�ˣ�ǰ���ɣ����ҿ���������ڼ��������ǧ�������ʧ������")
			HELLCLOSETIME = HELLCLOSETIME - 120
		end

		local closetime = HELLCLOSETIME
		for i = 1 , MAXNOTICE , 1 do
			if closetime ==NOTICETIME[i] then
				local Notice_all = "���棬�������10��17���������"..closetime.."�룡�����λ��ʿ�Ͽ����ñ���׼��"
				MapCopyNotice ( map_copy ,Notice_all )
			end
		end

		HELLCLOSETIME = HELLCLOSETIME-1

		if HELLCLOSETIME == 0 then


			HELLCLOSETIME = 300
			CRY[10]=0
			CRY[11]=0
			CRY[12]=0
			CRY[13]=0
			CRY[14]=0
			CRY[15]=0
			CRY[16]=0
			CRY[17]=0
			SPECIALSKILL[10]=0
			SPECIALSKILL[11]=0
			SPECIALSKILL[12]=0
			SPECIALSKILL[13]=0
			SPECIALSKILL[14]=0
			SPECIALSKILL[15]=0
			SPECIALSKILL[16]=0
			SPECIALSKILL[17]=0
			CloseMapEntry ( "hell3" )
			CloseMapCopy ( "hell3" )
		end
	end



end

--ÿ5��ִ��һ�ε�
function map_run_hell3( map )


end

--��ͼ�ر�ʱִ��
function map_copy_close_hell3 ( map_copy )

			HELLCLOSETIME = 300
			CRY[10]=0
			CRY[11]=0
			CRY[12]=0
			CRY[13]=0
			CRY[14]=0
			CRY[15]=0
			CRY[16]=0
			CRY[17]=0
			SPECIALSKILL[10]=0
			SPECIALSKILL[11]=0
			SPECIALSKILL[12]=0
			SPECIALSKILL[13]=0
			SPECIALSKILL[14]=0
			SPECIALSKILL[15]=0
			SPECIALSKILL[16]=0
			SPECIALSKILL[17]=0

end
		
--��ͼ�����жϡ�����������������������������������������������������������������������������������

function can_open_entry_hell3( map ) 

--	local time = GetTickCount ( ) 
	local Now_Week = GetNowWeek()
	if Now_Week >=5 and Now_Week < 7 then
		return 1
	end


		return 0
end 