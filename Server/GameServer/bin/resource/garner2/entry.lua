--���ļ��У����ǿ��ܱ����ִ�еĺ�������������Ҫ���ϵ�ͼ��ǰ׺����after_destroy_entry_testpk
--���ļ�ÿ������ַ�����Ϊ255���������飬�������̽��

function config_entry(entry) 
    SetMapEntryEntiID(entry,2492,1) --���õ�ͼ���ʵ��ı�ţ��ñ�Ŷ�Ӧ��characterinfo.txt��������

end 

function after_create_entry(entry) 
    local copy_mgr = GetMapEntryCopyObj(entry, 0) --��������������󣬴˺���������ʽ��ڵĵ�ͼ�б�����ã�������ʽ��ڵĵ�ͼ���������ս����Ҫ���øýӿ�

    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --ȡ��ͼ��ڵ�λ����Ϣ����ͼ�������꣬Ŀ���ͼ����
    Notice("�����㲥������Ⱥ����["..posx..","..posy.."]λ�÷���һ��ͨ�����Ҷ������ǡ�����ڡ�") --֪ͨ������������������

end

function after_destroy_entry_garner2(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    Notice("�����㲥��ͨ�����Ҷ������ǡ�������Ѿ���ʧ�ˣ�ף����졫��") 

end

function after_player_login_garner2(entry, player_name)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --ȡ��ͼ��ڵ�λ����Ϣ����ͼ�������꣬Ŀ���ͼ����
    ChaNotice(player_name, "�����㲥������Ⱥ����["..posx..","..posy.."]λ�÷���һ��ͨ�����Ҷ������ǡ�����ڡ�") --֪ͨ������������������

end






function check_can_enter_garner2( role, copy_mgr )
	local FightingBook_Num = 0
	FightingBook_Num = CheckBagItem( role,3849 )
	local Team_In = IsInTeam(role)
	if Team_In == 1 then
		SystemNotice ( role , "�����ڴ������״̬,���ܽ����Ҷ�������" )
		return 0
		
	end
	if FightingBook_Num <= 0 then
		SystemNotice ( role , "������û������֤֮,���ܽ����Ҷ�������,�뵽��������Ա����ȡ����֤֮" )
		return 0
	elseif FightingBook_Num > 1 then
		LG("RYZ_PK","����һ������֤֮")
		return 0
	end
	local role_RY = GetChaItem2 ( role , 2 , 3849 )
	local HonorPoint = GetItemAttr ( role_RY , ITEMATTR_VAL_STR)

	if HonorPoint < 20 then
		SystemNotice ( role , "���������㲻��,���ܽ����Ҷ�������" )
		return 0
	end

	if HonorPoint >30000 then
		SystemNotice ( role , "��������ֵ����,���ܽ����Ҷ�������" )
		return 0
	end

	local Credit_Garner2 = GetCredit(role)
	 if Credit_Garner2 < 30 then 
		SystemNotice ( role , "��������ֵ����,���ܽ����Ҷ�������" )
		return 0
	--else
--		DelCredit(role,30)
	end

	if Lv(role) < 20 then
	SystemNotice(role, "�����Ҷ������ǽ�ɫ�ȼ�������20������")
		return 0    
	end
	local Has_money = check_HasMoney(role)
	if Has_money == 1 then
		
		return 1
		
	else
		SystemNotice(role,"�������Ľ�Ǯ����,���ܽ����Ҷ�������")
		return 0
	end
				
end

function check_HasMoney(role)
	local lv= GetChaAttr(role, ATTR_LV)
	local Money_Need = lv*50
	local Money_Have = GetChaAttr ( role , ATTR_GD )
		if Money_Have >= Money_Need then
			return 1
		end

end


function begin_enter_garner2(role, copy_mgr) 
	local	Money_Have = GetChaAttr ( role , ATTR_GD )
	local lv= GetChaAttr(role, ATTR_LV)
	local Money_Need = lv*50
	local	Money_Now = Money_Have - Money_Need
	SetChaAttrI( role , ATTR_GD , Money_Now )
	DelCredit(role,30)
		SystemNotice(role,"��ʼ���롶�Ҷ������ǡ�,��ȡ��Ǯ"..Money_Need..",�۳�����ֵ30") 
		MoveCity(role, "�Ҷ�������")
Money_all = Money_all + Money_Need * 0.8
end








