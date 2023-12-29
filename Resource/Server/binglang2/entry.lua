--���ļ��У����ǿ��ܱ����ִ�еĺ�������������Ҫ���ϵ�ͼ��ǰ׺����after_destroy_entry_testpk
--���ļ�ÿ������ַ�����Ϊ255���������飬�������̽��

function config_entry(entry) 
    SetMapEntryEntiID(entry, 193,1) --���õ�ͼ���ʵ��ı�ţ��ñ�Ŷ�Ӧ��characterinfo.txt��������

end 

function after_create_entry(entry) 
    local copy_mgr = GetMapEntryCopyObj(entry, 0) --��������������󣬴˺���������ʽ��ڵĵ�ͼ�б�����ã�������ʽ��ڵĵ�ͼ���������ս����Ҫ���øýӿ�

    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --ȡ��ͼ��ڵ�λ����Ϣ����ͼ�������꣬Ŀ���ͼ����
    Notice("�����㲥������ҷ��֣���������½��["..posx..","..posy.."]λ�ø�������һ��ͨ������Ӱ���ǡ�����ڣ�����Ϣ��δ��ʵ�����йص�λע�⡣") --֪ͨ������������������

end

function after_destroy_entry_binglang2(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    Notice("�����㲥��������ṩ����Ϣ��ͨ������Ӱ���ǡ�������Ѿ���ʧ�ˡ����Ҽ�����ע��̨�Ĺ㲥��ף����졫��") 

end

function after_player_login_binglang2(entry, player_name)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --ȡ��ͼ��ڵ�λ����Ϣ����ͼ�������꣬Ŀ���ͼ����
    ChaNotice(player_name, "�����㲥������ҷ��֣���������½��["..posx..","..posy.."]λ�ø�������һ��ͨ������Ӱ���ǡ�����ڣ�����Ϣ��δ��ʵ�����йص�λע�⡣") --֪ͨ������������������

end









--���ڼ���������
--����ֵ��0�����������������1���ɹ����롣
function check_can_enter_binglang2( role, copy_mgr )
	local i = IsChaStall(role)
	if i == LUA_TRUE then
		SystemNotice(role, "��̯״̬���ɴ���Ŷ")
		return 0    
	end
	if Lv(role) < 70 then
		SystemNotice(role, "��������Ӱ���ǽ�ɫ�ȼ�������70������")
		return 0    
	end
	if Lv(role) > 89 then
		SystemNotice(role, "��������Ӱ���ǽ�ɫ�ȼ�������90������")
		return 0    
	end
	
	local Num
	Num = CheckBagItem(role,2326)
	if Num < 1 then
		SystemNotice(role, "û����ʵ��ߣ��޷���ȷͨ�����񵽻�Ӱ����")	
		return 0
	end

	local Credit_Binglang2 = GetCredit(role)
	if Credit_Binglang2 < 10 then
		SystemNotice(role, "��������ֵ����,���ܽ����Ӱ����")
		return 0
	else
		DelCredit(role,10)
		return 1
	end
end


function begin_enter_binglang2(role, copy_mgr)

	local Cha = TurnToCha(role)	
	local Dbag = 0
	Dbag = DelBagItem(Cha, 2326, 1)
	
	if Dbag == 1 then
		SystemNotice(role,"��ʼ���롶��Ӱ���ǡ�") 
		MoveCity(role, "��Ӱ����")

	else
	
		SystemNotice(role, "��ȡ��ʵ���ʧ�ܣ��޷���ȷͨ�����󵽻�Ӱ����")
	end
end