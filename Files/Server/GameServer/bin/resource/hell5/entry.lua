--���ļ��У����ǿ��ܱ����ִ�еĺ�������������Ҫ���ϵ�ͼ��ǰ׺����after_destroy_entry_testpk
--���ļ�ÿ������ַ�����Ϊ255���������飬�������̽��

function config_entry(entry) 
    SetMapEntryEntiID(entry, 2492,1) --���õ�ͼ���ʵ��ı�ţ��ñ�Ŷ�Ӧ��characterinfo.txt��������

end 

function after_create_entry(entry) 

    local copy_mgr = GetMapEntryCopyObj(entry, 0) --��������������󣬴˺���������ʽ��ڵĵ�ͼ�б�����ã�������ʽ��ڵĵ�ͼ���������ս����Ҫ���øýӿ�
    local EntryName = "�������"
    SetMapEntryEventName( entry, EntryName )
    
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --ȡ��ͼ��ڵ�λ����Ϣ����ͼ�������꣬Ŀ���ͼ����
    Notice("�����㲥������ʮ�˲����["..posx..","..posy.."]�����ڼ���һ��������а�����Դ������ԴԴ���ϵ�ӿ����") --֪ͨ������������������

end

function after_destroy_entry_hell5(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    --Notice("�����㲥������Ĺ�����ս���Ѿ�������") 

end

function after_player_login_hell5(entry, player_name)

end

--���ڼ���������
--����ֵ��0�����������������1���ɹ����롣
function check_can_enter_hell5( role, copy_mgr )

	if CRY[18]==0 then

		SystemNotice(role,"�ڰ���������ӡ������������ڣ��������ö����������޷�������")
		return 0

	end

	return 1

end

function begin_enter_hell5(role, copy_mgr) 
    

		SystemNotice(role,"�޴���������������޾��ĺڰ������������۾���ʱ���㿴��һ����Ϥ�����硣")

		MoveCity(role, "����5")
	

end 
