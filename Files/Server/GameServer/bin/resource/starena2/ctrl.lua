--���ļ��У����ǿ��ܱ����ִ�еĺ�������������Ҫ���ϵ�ͼ��ǰ׺

function config(map)
    MapCanSavePos(map, 0) --���õ�ͼ�Ƿ񱣴��ɫλ�ã���ͼ�����꣬���򣩣�������Ӱ��õ�ͼ�����и���
    MapCanPK(map, 1) --���õ�ͼ�Ƿ����PK��������Ӱ��õ�ͼ�����и���
    MapCopyNum(map, 1) --���õ�ͼ�ĸ�����Ŀ����������ø���䣬��ʹ��Ĭ��ֵ1
    SingleMapCopyPlyNum(map, 300)
    MapCanTeam(map , 1)
    MapType ( map , 4 )

end


-- function get_map_entry_pos_abandonedcity()   --������ڵ�λ�õ����꣨���꣨�ף���

	-- local POS_X=1509
	-- local POS_Y=3666
	-- return POS_X , POS_Y

--end

function init_entry(map)
    SetMapEntryMapName(map, "starena1") --������ڵ�λ�ã���ͼ�������꣨�ף���
    SetMapEntryTime(map, "2008/9/1/19/0", "0/0/15", "0/0/0", "0/0/10") --������ڵ�ʱ�䣬��ͼ�����״ο���ʱ�䣨��/��/��/ʱ/�֣����Ժ��ٴο����ļ������/ʱ/�֣�ȫ����ʾֻ���״ο�������ÿ�ο����������ʧ�ļ������/ʱ/�֣�ȫ����ʾ������ʧ����ÿ�ο�������ͼ�رյļ������/ʱ/�֣�ȫ����ʾ�����رգ�����

function map_copy_run_starena1(map_copy) 
--	local Start_time = GetMapCopyParam2(map_copy , 7)
--	if Start_time> 0 then
--		Start_time = Start_time -1
--		SetMapCopyParam2(map_copy, 7,Start_time)
--		return
--	end
--	if Start_time == 0 then
--	end
	local ply_num = GetMapCopyPlayerNum(map_copy) 
	if ply_num == 0 then 
	    CloseMapCopy ("starena1", GetMapCopyID2(map_copy)) 
	end
	local Map_Start = GetMapCopyParam2(map_copy, 8)
	local Map_Start = Map_Start + 1
	SetMapCopyParam2(map_copy, 8, Map_Start)
	local log_count = 0
	local PKMap_HasPlayers = 0
	local Team1_live = 0
	local Team2_live = 0
	local Team1_Num = GetMapCopyParam2(map_copy, 3)
	local Team2_Num = GetMapCopyParam2(map_copy, 4)
	local Max_PlayerNum = 30
	local Team_type = GetMapCopyParam2(map_copy, 1)
	local Team1_PlayerNum = 0
	local Team2_PlayerNum = 0

	
	local Winner_Is = GetMapCopyParam2( map_copy, 5 )
	if Winner_Is == -1 then
		SetMapCopyParam2(map_copy, 6, 11 )
	end
	if Winner_Is > -1 then
		local Time_count = GetMapCopyParam2(map_copy, 6)
		local Time_count = Time_count - 1
		SetMapCopyParam2(map_copy, 6,Time_count)
		
		if Time_count == 0 then
			CloseMapCopy ("starena1", GetMapCopyID2(map_copy))
		end
	end		
	BeginGetMapCopyPlayerCha ( map_copy )
	for i = 0 ,Max_PlayerNum - 1 , 1 do
		PKMap_HasPlayers = GetMapCopyNextPlayerCha ( map_copy )
		if PKMap_HasPlayers ~= 0 and PKMap_HasPlayers ~= nil then
		local Time_count = GetMapCopyParam2(map_copy, 6)
			local Time_num = Time_count / 5
			log_count = log_count + 1
			if Time_num == math.floor ( Time_num ) then
				SystemNotice ( PKMap_HasPlayers , "ս����������ͼ����"..Time_count.."���ر�")
				if Team_type == 1 then
				local Team_Num_get = GetChaTeamID( PKMap_HasPlayers )
					if Team_Num_get == Winner_Is then
						SystemNotice ( PKMap_HasPlayers , "�����ڵĶ���Ӯ�����ⳡս��" )
					end
				end
			end
			
			local Hp = Hp( PKMap_HasPlayers )		
			local Lv = Lv( PKMap_HasPlayers )
			if Hp > 0 then
				if Team_type == 1 then
					local Team_Num_get = GetChaTeamID( PKMap_HasPlayers )
					if Team_Num_get == 0 then
						LG("starena1","����IDΪ0")
						Map_Start = 0
						SetMapCopyParam2(map_copy, 8, Map_Start)  -----���������Ϣδ�������ͼ������־��0
						return
					end
					if Team1_Num == Team_Num_get then
						Team1_live = Team1_live + 1
						Team1_PlayerNum = Team1_PlayerNum + 1
						Team1_PlayerLv = Team1_PlayerLv + Lv

					elseif Team2_Num == Team_Num_get then
						Team2_live = Team2_live + 1
						Team2_PlayerNum = Team2_PlayerNum + 1
						Team2_PlayerLv = Team2_PlayerLv + Lv
					end
				-- elseif Team_type == 2 then
					-- local Player = GetChaPlayer( PKMap_HasPlayers )
					-- local Player_ID_get = GetPlayerID( Player )
					-- if Player_ID_get == 0 then
						-- LG("teampk","���IDΪ0")
						-- Map_Start = 0
						-- SetMapCopyParam2(map_copy, 8, Map_Start)  -----���������Ϣδ�������ͼ������־��0
						-- return
					-- end
					if Team1_Num == Player_ID_get then
						Team1_live = Team1_live + 1
						Team1_PlayerNum = Team1_PlayerNum + 1
						Team1_PlayerLv = Team1_PlayerLv + Lv
					elseif Team2_Num == Player_ID_get then
						Team2_live = Team2_live + 1
						Team2_PlayerNum = Team2_PlayerNum + 1
						Team2_PlayerLv = Team2_PlayerLv + Lv
					end
				end
				if Time_count == 1 then
					 MoveCity( PKMap_HasPlayers, "�����ƹ�" )
				end
			end
		end
	end
end	

function before_leave_starena1 ( role , map_copy )
--	SystemNotice (role , "�뿪��")
	local Cha = TurnToCha( role ) 
	local Winner_Is = GetMapCopyParam2( map_copy, 5 )
	local Cha_TeamID = GetChaTeamID ( Cha )
	local Player = GetChaPlayer( Cha )
	local Cha_ID = GetPlayerID( Player )
	local PK_type = GetMapCopyParam2( map_copy , 1 )
	local Team1_ID = GetMapCopyParam2( map_copy , 3 )
	local Team2_ID = GetMapCopyParam2( map_copy , 4 )
	--local base_rongyu = 2
	--local rongyu_dif = 0
	--local Team1_Lv = GetMapCopyParam2( map_copy , 9 )
	--local Team2_Lv = GetMapCopyParam2( map_copy , 10)
	local Team1_PlayerNum = GetMapCopyParam2( map_copy , 11 )
	local Team2_PlayerNum = GetMapCopyParam2( map_copy , 12 )
	
	--local Team1_Rongyu_get = ( base_rongyu * Team2_PlayerNum )
	--local Team2_Rongyu_get = ( base_rongyu * Team1_PlayerNum )
	--local Team1_Lv_dif = Team1_Lv - Team2_Lv
	--local Team2_Lv_dif = Team2_Lv - Team1_Lv
	
	--local Rongyu_get = 0
	--local Player_Lv_dif = 0
	if Winner_Is == Cha_TeamID then
			local csk_num = 0
			csk_num = CheckBagItem( role,5848 )

			if csk_num == 0 then
				return
			elseif csk_num > 1 then
				LG("RYZ_PK","����һ��������")
				return
			end
			local Cha_CSK = GetChaItem2 ( Cha , 2 , 5848 )
			local attrtype = ITEMATTR_VAL_DEX
			local lc_num = GetItemAttr ( Cha_CSK , ITEMATTR_VAL_DEX )
			local num = lc_num + 1
			
--			SystemNotice ( role , "ʤ������ʤ������")
			Add_ItemAttr_CSK ( role , Cha_CSK , attrtype , num )
			SystemNotice ( role , "ʤ�������ִ�"..num )		
		end
	end	
end


			
		