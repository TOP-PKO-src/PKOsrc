--���ļ��У����ǿ��ܱ����ִ�еĺ�������������Ҫ���ϵ�ͼ��ǰ׺����after_destroy_entry_testpk
--���ļ�ÿ������ַ�����Ϊ255���������飬�������̽��

function config_entry(entry) 
    SetMapEntryEntiID(entry, 2492,4) --���õ�ͼ���ʵ��ı�ţ��ñ�Ŷ�Ӧ��characterinfo.txt��������

end 

function after_create_entry(entry) 
    local guild_lv = GetFightGuildLevel() 
    local RedSide_GuildID, BlueSide_GuildID = GetFightGuildID(guild_lv) 
    
    local copy_mgr = GetMapEntryCopyObj(entry, 0) --��������������󣬴˺���������ʽ��ڵĵ�ͼ�б�����ã�������ʽ��ڵĵ�ͼ���������ս����Ҫ���øýӿ�
    SetMapCopyParam(copy_mgr, 1, 3) --�ڵ�һ��λ�ô���ֱ�����
    SetMapCopyParam(copy_mgr, 2, 2) --�ڵڶ���λ�ô���ֱ���
    SetMapCopyParam(copy_mgr, 3, RedSide_GuildID) 
    SetMapCopyParam(copy_mgr, 4, BlueSide_GuildID)
    SetMapCopyParam(copy_mgr, 5, 0) --�ڵ�5��λ�÷���ʤ����ϵ��ֵ
    FinishSetMapEntryCopy(entry, 1) 

    local RedSideName = GetGuildName( RedSide_GuildID ) 
    local BlueSideName = GetGuildName( BlueSide_GuildID ) 

    local EntryName = "������ս�� : ["..RedSideName.."]  VS  ["..BlueSideName.."]"
    SetMapEntryEventName( entry, EntryName )
    
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --ȡ��ͼ��ڵ�λ����Ϣ����ͼ�������꣬Ŀ���ͼ����
    Notice("�����㲥��������ս�����ڿ�ʼ�������˫�������ǣ����췽���� ��["..RedSideName.."]����������ս�ߡ�["..BlueSideName.."]����˫������ĳ�Ա����ͨ��ħŮ֮����["..posx..","..posy.."]���������н��뾺����԰") --֪ͨ������������������

end

function after_destroy_entry_secretgarden(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    --Notice("�����㲥������Ĺ�����ս���Ѿ�������") 

end

function after_player_login_secretgarden(entry, player_name)
    local copy_mgr = GetMapEntryCopyObj(entry, 1) 
    local RedSide_GuildID = GetMapCopyParam(copy_mgr, 3 )
    local BlueSide_GuildID = GetMapCopyParam(copy_mgr, 4 )
    local RedSideName = GetGuildName( RedSide_GuildID ) 
    local BlueSideName = GetGuildName( BlueSide_GuildID ) 

    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --ȡ��ͼ��ڵ�λ����Ϣ����ͼ�������꣬Ŀ���ͼ����
    ChaNotice(player_name, "�����㲥��������ս�����ڿ�ʼ�������˫�������ǣ����췽���� ��["..RedSideName.."]����������ս�ߡ�["..BlueSideName.."]����˫������ĳ�Ա����ͨ��ħŮ֮����["..posx..","..posy.."]���������н��뾺����԰") --֪ͨ������������������

end

--���ڼ���������
--����ֵ��0�����������������1���ɹ����롣
function check_can_enter_secretgarden( role, copy_mgr )
	local Cha = TurnToCha(role)

    local RedSide_GuildID = GetMapCopyParam(copy_mgr, 3 )
    local BlueSide_GuildID = GetMapCopyParam(copy_mgr, 4 )


	if RedSide_GuildID == 0 or BlueSide_GuildID == 0 then
		SystemNotice ( role , "�Բ���û����ս�����޷���ʼ��ս" )
		return 0
	end

	if RedSide_GuildID == GetChaGuildID(Cha) then

		return 1
	
	else
		if BlueSide_GuildID == GetChaGuildID(Cha) then

			return 1

		else
			SystemNotice(role,"�Բ��������ǽ��콻ս˫���Ĺ����Ա����ͨ��ֻ�����ս˫���Ĺ����Ա����")
			return 0

		end

	end
end

function begin_enter_secretgarden(role, copy_mgr) 
    
	local Cha = TurnToCha(role)

    local RedSide_GuildID, BlueSide_GuildID
    RedSide_GuildID = GetMapCopyParam(copy_mgr, 3)
    BlueSide_GuildID = GetMapCopyParam(copy_mgr, 4)

	if RedSide_GuildID == GetChaGuildID(Cha) then

		SystemNotice(role,"��ʼ���롶������԰��")
		MoveCity(role, "�췽��Ӫ")
	
	else
		if BlueSide_GuildID == GetChaGuildID(Cha) then

			SystemNotice(role,"��ʼ���롶������԰��")
			MoveCity(role, "������Ӫ")
                end
	end

end 
