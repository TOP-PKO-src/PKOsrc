--���ļ��У����ǿ��ܱ����ִ�еĺ�������������Ҫ���ϵ�ͼ��ǰ׺

function config(map)
    MapCanSavePos(map, 0) --���õ�ͼ�Ƿ񱣴��ɫλ�ã���ͼ�����꣬���򣩣�������Ӱ��õ�ͼ�����и���
    MapCanPK(map, 1) --���õ�ͼ�Ƿ����PK��������Ӱ��õ�ͼ�����и���
    MapCopyNum(map, 1) --���õ�ͼ�ĸ�����Ŀ����������ø���䣬��ʹ��Ĭ��ֵ1
    MapCopyStartType(map, 1) --���õ�ͼ������ʼ
    SingleMapCopyPlyNum(map, 300)   --����һ�������������
    MapCanTeam(map , 1)
    MapType ( map , 4 )
end


function get_map_entry_pos_hell5()   --������ڵ�λ�õ����꣨���꣨�ף���

	local POS_X=55
	local POS_Y=33
	return POS_X , POS_Y

end

function init_entry(map)
    SetMapEntryMapName(map, "hell4") --������ڵ�λ�ã���ͼ�������꣨�ף���
    SetMapEntryTime(map, "2007/1/20/0/30", "1/0/0", "0/2/0", "0/2/30") --������ڵ�ʱ�䣬��ͼ�����״ο���ʱ�䣨��/��/��/ʱ/�֣����Ժ��ٴο����ļ������/ʱ/�֣�ȫ����ʾֻ���״ο�������ÿ�ο����������ʧ�ļ������/ʱ/�֣�ȫ����ʾ������ʧ����ÿ�ο�������ͼ�رյļ������/ʱ/�֣�ȫ����ʾ�����رգ�����

end

function after_enter_hell5( role , map_copy )

local cha_name=GetChaDefaultName(role)

	SystemNotice ( role, "<"..cha_name..">��������������߰ɣ����྿���ܹ��ɳ���ʲô�ز��أ����ڴ��أ�" ) 

end

function before_leave_hell5 ( role )

end

function map_copy_first_run_hell5( map_copy )



end

function map_copy_run_hell5( map_copy )

--���⼼�ܷ�����ʼ

	local hp = GetChaAttr( AZRAEL[19] , ATTR_HP ) 
	local mxhp = GetChaAttr( AZRAEL[19] , ATTR_MXHP )
	local percent = hp/mxhp
	if percent < 0.9 and SPECIALSKILL[19]==0 then
		local x, y = GetChaPos( AZRAEL[19] )
		CreateCha(	979, x, y, 295, 3600)
		SPECIALSKILL[19] = SPECIALSKILL[19] + 1
		MapCopyNotice ( map_copy ,"ڤ�ʣ���Ӱ�Ļ��ߣ��ӳ�˯�����Ѱɣ�")
	end

	if percent < 0.8 and SPECIALSKILL[19]==1 then
		local x, y = GetChaPos( AZRAEL[19] )
		CreateCha(	980, x, y, 295, 3600)
		SPECIALSKILL[19] = SPECIALSKILL[19] + 1
		MapCopyNotice ( map_copy ,"ڤ�ʣ�ڤ���Ļ��棬����ȼ�հɣ�")
	end
	if percent < 0.7 and SPECIALSKILL[19]==2 then
		local x, y = GetChaPos( AZRAEL[19] )
		CreateCha(	981, x, y, 295, 3600)
		SPECIALSKILL[19] = SPECIALSKILL[19] + 1
		MapCopyNotice ( map_copy ,"ڤ�ʣ���Ѫ��а�ޣ�չ¶�������ɣ�")
	end
	if percent < 0.6 and SPECIALSKILL[19]==3 then
		local x, y = GetChaPos( AZRAEL[19] )
		CreateCha(	982, x, y, 295, 3600)
		SPECIALSKILL[19] = SPECIALSKILL[19] + 1
		MapCopyNotice ( map_copy ,"ڤ�ʣ�ڤ�ܰԿ�Ϊ�������������ϣ�")
	end
	if percent < 0.5 and SPECIALSKILL[19]==4 then
		local x, y = GetChaPos( AZRAEL[19] )
		CreateCha(	983, x, y, 295, 3600)
		SPECIALSKILL[19] = SPECIALSKILL[19] + 1
		MapCopyNotice ( map_copy ,"ڤ�ʣ���ħ��ˣ����»����������ɣ�")
	end
	if percent < 0.4 and SPECIALSKILL[19]==5 then
		local x, y = GetChaPos( AZRAEL[19] )
		CreateCha(	984, x, y, 295, 3600)
		SPECIALSKILL[19] = SPECIALSKILL[19] + 1
		MapCopyNotice ( map_copy ,"ڤ�ʣ���Ԩ�еľ������ٴ���¶��������ɣ�")
	end
	if percent < 0.3 and SPECIALSKILL[19]==6 then
		local x, y = GetChaPos( AZRAEL[19] )
		CreateCha(	985, x, y, 295, 3600)
		SPECIALSKILL[19] = SPECIALSKILL[19] + 1
		MapCopyNotice ( map_copy ,"ڤ�ʣ����꣬���������ĵ����������ҵ��ٻ���")
	end
	if percent < 0.2 and SPECIALSKILL[19]==7 then
		local x, y = GetChaPos( AZRAEL[19] )
		CreateCha(	986, x, y, 295, 3600)
		SPECIALSKILL[19] = SPECIALSKILL[19] + 1
		MapCopyNotice ( map_copy ,"ڤ�ʣ���֮��ɲ����������еĲ�����")
	end
	if percent < 0.1 and SPECIALSKILL[19]==8 then
		local x, y = GetChaPos( AZRAEL[19] )
		CreateCha(	987, x, y, 295, 3600)
		SPECIALSKILL[19] = SPECIALSKILL[19] + 1
		MapCopyNotice ( map_copy ,"ڤ�ʣ�������ʵ�����ˣ�ڤ����ǿ��սʿ���ٴ�չ¶���ɫ����ɡ�")
	end

--���⼼�ܷ�������


	if CheckMonsterDead ( AZRAEL[19] ) == 1 then
		
		if CRY[19]==0 then
			local Notice_all = "ڤ�ʣ��޴������డ����ʹɱ��������������ֻҪ����̰����������ʹ����������ڣ��һ�������ģ�������������������"
			Notice ( Notice_all )
			CRY[19]=1
			BOSSXYSJ[988] = 4	
			BOSSSJSJ[988] = 4	
			BOSSTJSJ[988] = 4	
			BOSSXZSJ[988] = 4	
			BOSSAYSJ[988] = 4
		end
	end

	if CRY[19]==1  then
		
		if HELLCLOSETIME==300 then
	
			MapCopyNotice ( map ,"Ů��û�뵽������Ŀ���������һ�������뿪����ʱ���µ�Թ��㼯���ҵķ��������������̫���ʹ�࣬����������Ϊ����ֻ�ܽ�����ӡ�ڵ�������ڴ���һ�������һȺ��������ʿ���ҽ�ţ�")
			MapCopyNotice ( map ,"Ů�񣺽��죬�����ڿ��������Ľ����ˣ��ڴ������ǽ��ĳɳ���ϣ�������ҹ�����ʱ�������ܸ��Ҹ���ľ�ϲ��")
			MapCopyNotice ( map ,"Ů�񣺶��ˣ������ҷ��������������ܿ�ͻ��������ʿ���Ͽ��뿪����ɣ�")
			HELLCLOSETIME = HELLCLOSETIME - 240
		end

		local closetime = HELLCLOSETIME
		for i = 1 , MAXNOTICE , 1 do
			if closetime == NOTICETIME[i] then
				local Notice_all = "���棬�������������������"..closetime.."�룡�����λ��ʿ�Ͽ����ñ���׼��"
				MapCopyNotice ( map_copy , Notice_all )
			end
		end
		HELLCLOSETIME = HELLCLOSETIME-1

		if HELLCLOSETIME == 0 then

			HELLCLOSETIME = 300
			CRY[19]=0
			SPECIALSKILL[19] = 0
			CloseMapEntry ( "hell5" )
			CloseMapCopy ( "hell5" )
		end

	end


end

--ÿ5��ִ��һ�ε�
function map_run_hell5( map )


end

--��ͼ�ر�ʱִ��
function map_copy_close_hell5 ( map_copy )

			HELLCLOSETIME = 300
			CRY[19]=0
			SPECIALSKILL[19] = 0

end
		
--��ͼ�����жϡ�����������������������������������������������������������������������������������

function can_open_entry_hell5( map ) 

--	local time = GetTickCount ( ) 
	local Now_Week = GetNowWeek()
	if Now_Week >5 and Now_Week < 7 then
		return 1
	end

	if Now_Week == 0 then
		return 1
	end
		return 0
end 