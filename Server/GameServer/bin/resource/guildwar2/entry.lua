--���ļ��У����ǿ��ܱ����ִ�еĺ�������������Ҫ���ϵ�ͼ��ǰ׺����after_destroy_entry_testpk
--���ļ�ÿ������ַ�����Ϊ255���������飬�������̽��

function config_entry(entry) 
    SetMapEntryEntiID(entry,193,1) --���õ�ͼ���ʵ��ı�ţ��ñ�Ŷ�Ӧ��characterinfo.txt��������

end 

function after_create_entry(entry) 
    local copy_mgr = GetMapEntryCopyObj(entry, 0) --��������������󣬴˺���������ʽ��ڵĵ�ͼ�б�����ã�������ʽ��ڵĵ�ͼ���������ս����Ҫ���øýӿ�

    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --ȡ��ͼ��ڵ�λ����Ϣ����ͼ�������꣬Ŀ���ͼ����
    Notice("�����㲥���ڱ��Ǳ����["..posx..","..posy.."]λ�ø�������һ��ͨ����Сʥս��(45����64��)����ڣ�") --֪ͨ������������������


    
--local copy_mgr = GetMapEntryCopyObj(entry, 0) --��������������󣬴˺���������ʽ��ڵĵ�ͼ�б�����ã�������ʽ��ڵĵ�ͼ���������ս����Ҫ���øýӿ�
--    SetMapCopyParam(copy_mgr, 1, 3) --�ڵ�һ��λ�ô���ֱ�����
--    SetMapCopyParam(copy_mgr, 2, 2) --�ڵڶ���λ�ô���ֱ���
--    SetMapCopyParam(copy_mgr, 3, HaiJunSide) 
--    SetMapCopyParam(copy_mgr, 4, HaiDaoSide)
--    SetMapCopyParam(copy_mgr, 5, 0) --�ڵ�5��λ�÷���ʤ����ϵ��ֵ
--    FinishSetMapEntryCopy(entry, 1) 

    --local RedSideName = GetGuildName( RedSide_GuildID ) 
    --local BlueSideName = GetGuildName( BlueSide_GuildID ) 

    local EntryName = "ʥս���: [������Ӫ]  VS  [������Ӫ] (45����64��)"
    SetMapEntryEventName( entry, EntryName )
    
    --map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --ȡ��ͼ��ڵ�λ����Ϣ����ͼ�������꣬Ŀ���ͼ����
    --Notice("�����㲥��������ս�����ڿ�ʼ�������˫�������ǣ����췽���� ��["..RedSideName.."]����������ս�ߡ�["..BlueSideName.."]����˫������ĳ�Ա����ͨ��ħŮ֮����["..posx..","..posy.."]���������н��뾺����԰") --֪ͨ������������������

end

function after_destroy_entry_guildwar2(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    Notice("�����㲥��ͨ����Сʥս��(45����64��)������Ѿ���ʧ�ˣ�ף����졫��") 

end

function after_player_login_guildwar2(entry, player_name)
--    local copy_mgr = GetMapEntryCopyObj(entry, 1) 
--    local RedSide_GuildID = GetMapCopyParam(copy_mgr, 3 )
--    local BlueSide_GuildID = GetMapCopyParam(copy_mgr, 4 )
--    local RedSideName = GetGuildName( RedSide_GuildID ) 
--    local BlueSideName = GetGuildName( BlueSide_GuildID ) 

    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --ȡ��ͼ��ڵ�λ����Ϣ����ͼ�������꣬Ŀ���ͼ����
   ChaNotice(player_name, "�����㲥���ڱ��Ǳ����["..posx..","..posy.."]λ�ø�������һ��ͨ����Сʥս��(45����64��)����ڣ�") --֪ͨ������������������

end




--���ڼ���������
--����ֵ��0�����������������1���ɹ����롣
function check_can_enter_guildwar2( role, copy_mgr )

local FightingBook_Num = 0
      FightingBook_Num = CheckBagItem( role,3849 )

if FightingBook_Num <= 0 then
		SystemNotice(role,"������û������֤֮,���ܽ���ʥս,�뵽��������Ա����ȡ����֤֮")
		--Notice("������û������֤֮,���ܽ���ʥս,�뵽��������Ա����ȡ����֤֮")
		return 0
	elseif FightingBook_Num > 1 then
		LG("RYZ_PK","����һ������֤֮")
		return 0
	end

local Team_In = IsInTeam(role)
	if Team_In == 1 then
		SystemNotice ( role , "�����ڴ������״̬,���ܽ���Сʥս" )
		return 0
		
	end



	--local Cha = TurnToCha(role)

    --local RedSide_GuildID = GetMapCopyParam(copy_mgr, 3 )
    --local BlueSide_GuildID = GetMapCopyParam(copy_mgr, 4 )



 if  GetChaGuildID(role) == 0 then
	

     SystemNotice(role,"�Բ����������ں���,�����κ�һ�����벻Ҫ��ȥð�գ�")
     return 0
		
	
elseif Lv(role) < 45 or Lv(role) > 64  then

	SystemNotice(role, "�����ʥս�Ľ�ɫ�ȼ�������45����64��")
	     return 0    
	end


        local Num_1= CheckBagItem(role,4661)
	if Num_1 >= 1 then
		SystemNotice(role, "��ѱ����ڵ�������ľͷȥ��,���ܽ���")	
		return 0
	end

	local Num_2= CheckBagItem(role,4546)
	if Num_2 >= 1 then
		SystemNotice(role, "��ѱ����ڵ�ˮ����ʯȥ��,���ܽ���")	
		return 0
	end

	local Num_3= CheckBagItem(role,1684)
	if Num_3 >= 1 then
		SystemNotice(role, "��ѱ����ڵļ�Ӳ���ȥ��,���ܽ���")	
		return 0
	end

	local Num_4= CheckBagItem(role,1683)
	if Num_4 >= 1 then
		SystemNotice(role, "��ѱ����ڵĹ����Ƭȥ��,���ܽ���")	
		return 0
	end

	local Num_5= CheckBagItem(role,4012)
	if Num_5 >= 1 then
		SystemNotice(role, "��ѱ����ڵ���β���ȥ��,���ܽ���")	
		return 0
	end

	local Num_6= CheckBagItem(role,4013)
	if Num_6 >= 1 then
		SystemNotice(role, "��ѱ����ڵĺ�̲Ǳˮ��ȥ��,���ܽ���")	
		return 0
	end

        local Num_7= CheckBagItem(role,2964)
	if Num_7 >= 1 then
		SystemNotice(role, "��ѱ����ڵĺ�����ȥ��,���ܽ���")	
		return 0
	end

	local Num_8= CheckBagItem(role,3001)
	if Num_8 >= 1 then
		SystemNotice(role, "��ѱ����ڵĺ�����ȥ��,���ܽ���")	
		return 0
	end

	local Num_9= CheckBagItem(role,4011)
	if Num_9 >= 1 then
		SystemNotice(role, "��ѱ����ڵ���ˮ����ȥ��,���ܽ���")	
		return 0
	end

	local Num_10= CheckBagItem(role,1720)
	if Num_10 >= 1 then
		SystemNotice(role, "��ѱ����ڵ����ͷȥ��,���ܽ���")	
		return 0
	end

	local Num_11= CheckBagItem(role,2382)
	if Num_11 < 1 then
		SystemNotice(role, "����ȥ�Աߵ�NPC���һ�������,���ܽ���")	
		return 0
	end

end

function begin_enter_guildwar2(role, copy_mgr) 

--local role_RY = GetChaItem2 ( role , 2 , 3849 )
--local HonorPoint = GetItemAttr ( role_RY , ITEMATTR_VAL_STR)
--local HonorPoint_now = HonorPoint - 15
--
--	if HonorPoint < 15 then
--		SystemNotice ( role , "��������ֵ����,���ܽ���ʥս" )
--		return 0
--	else
--
--	SetItemAttr( role_RY , ITEMATTR_VAL_STR , HonorPoint_now )
--	        
--	end

    --local RedSide_GuildID, BlueSide_GuildID
    --RedSide_GuildID = GetMapCopyParam(copy_mgr, 3)
    --BlueSide_GuildID = GetMapCopyParam(copy_mgr, 4)

     local Cha = TurnToCha(role)
     if  GetChaGuildID(Cha) <= 100 and GetChaGuildID(Cha) > 0 then
	     if count_haijun2 < 45 then
	        
	        SystemNotice(role,"����Сʥս��ͼ")
		MoveCity(role, "guildwarnavyside2")
                count_haijun2 = count_haijun2 + 1
	      else 
	        SystemNotice(role,"������������")
	      end
	
     end	        
		
     if GetChaGuildID(Cha) > 100 and GetChaGuildID(Cha) <= 200 then
             if count_haidao2 < 45 then
	        SystemNotice(role,"����Сʥս��ͼ")
		MoveCity(role, "guildwarpirateside2")
		count_haidao2=count_haidao2 + 1
	     else
	        SystemNotice(role,"������������")
	     end

     end 
end


