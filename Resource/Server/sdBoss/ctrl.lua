--���ļ��У����ǿ��ܱ����ִ�еĺ�������������Ҫ���ϵ�ͼ��ǰ׺

function config(map)
    MapCanSavePos(map, 0) --���õ�ͼ�Ƿ񱣴��ɫλ�ã���ͼ�����꣬���򣩣�������Ӱ��õ�ͼ�����и���
    MapCanPK(map, 1) --���õ�ͼ�Ƿ����PK��������Ӱ��õ�ͼ�����и���
    MapCopyNum(map, 1) --���õ�ͼ�ĸ�����Ŀ����������ø���䣬��ʹ��Ĭ��ֵ1
    SingleMapCopyPlyNum(map, 300)
    MapCanTeam(map , 1)
    MapType ( map , 4 )
end


function get_map_entry_pos_sdBoss()   --������ڵ�λ�õ����꣨���꣨�ף���

end

function init_entry(map)

end

function after_enter_sdBoss( role , map_copy )
end

function before_leave_sdBoss( role )
end

function map_copy_first_run_sdBoss( map_copy )

end

function map_copy_run_sdBoss( map_copy )
end

--ÿ5��ִ��һ�ε�
function map_copy_run_sdBoss( map_copy )
	if XmasMonsterNum1 >= 2008 and CheckBoss1Dead == 1 then
		Notice ( "���ڴ�Ҳ�ͣ�Ĳ��Ի�,ڤ��-������������ʥ��������A��,��ҿ�ȥ��!")
		monster1 = CreateChaEx(1047, 6312, 5519, 175, 1000,map_copy)
		SetChaLifeTime(monster1,900000)
		XmasMonsterNum1 = 0
	end
	if XmasMonsterNum2 >= 2008 and CheckBoss2Dead == 1 then
		Notice ( "���ڴ�Ҳ�ͣ�Ĳ�����¹,������ʿ��������ʥ��������B��,��ҿ�ȥ��!")
		monster2 = CreateChaEx(1049, 49612, 5519, 175, 1000,map_copy)
		SetChaLifeTime(monster2,900000)
		XmasMonsterNum2 = 0
	end
	if XmasMonsterNum3 >= 2008 and CheckBoss3Dead == 1 then
		Notice ( "���ڴ�Ҳ�ͣ�Ĳ���ѩ��,ڤ��-����˹��������ʥ��������C��,��ҿ�ȥ��!")
		monster3 = CreateChaEx(1048, 92812, 5519, 175, 1000,map_copy)
		SetChaLifeTime(monster3,900000)
		XmasMonsterNum3 = 0
	end
	if XmasMonsterNum4 >= 6000 and CheckBoss4Dead == 1 then
		Notice ( "���ڴ�Ҳ�ͣ�Ĳ��Ի��Լ���¹,�Ͳ�����������ʥ��������D��,��ҿ�ȥ��!")
		monster4 = CreateChaEx(1050, 6312, 43019, 175, 1000,map_copy)
		SetChaLifeTime(monster4,900000)
		XmasMonsterNum4 = 0
	end
	if XmasMonsterNum5 >= 8000 and CheckBoss5Dead == 1 then
		Notice ( "���ڴ�Ҳ�ͣ�Ĳ��Ի�,��¹�Լ�ѩ��,ѩ�����������ʥ��������E��,��ҿ�ȥ��!")
		monster5 = CreateChaEx(1051, 49612, 43019, 175, 1000,map_copy)
		SetChaLifeTime(monster5,900000)
		XmasMonsterNum5 = 0
	end
	CheckBoss1Dead	= CheckMonsterDead ( monster1 )
	CheckBoss2Dead	= CheckMonsterDead ( monster2 )
	CheckBoss3Dead	= CheckMonsterDead ( monster3 )
	CheckBoss4Dead	= CheckMonsterDead ( monster4 )
	CheckBoss5Dead	= CheckMonsterDead ( monster5 )
end

--��ͼ�ر�ʱִ��
function map_copy_close_sdBoss( map_copy )
end
		
--��ͼ�����жϡ�����������������������������������������������������������������������������������

function can_open_entry_sdBoss( map ) 
end 