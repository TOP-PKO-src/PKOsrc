--此文件中，凡是可能被多次执行的函数，函数名都要加上地图名前缀

function config(map)
    MapCanSavePos(map, 0) --设置地图是否保存角色位置（地图，坐标，方向），此设置影响该地图的所有副本
    MapCanPK(map, 1) --设置地图是否可以PK，此设置影响该地图的所有副本
    MapCopyNum(map, 1) --设置地图的副本数目，如果不调用该语句，则使用默认值1
    MapCopyStartType(map, 1) --设置地图立即开始
    SingleMapCopyPlyNum(map, 300)   --设置一个副本的玩家数
    MapCanTeam(map , 1)
    MapType ( map , 4 )
end


function get_map_entry_pos_hell()   --设置入口的位置的坐标（坐标（米））

	local POS_X=199
	local POS_Y=941
	return POS_X , POS_Y

end

function init_entry(map)
    SetMapEntryMapName(map, "jialebi") --设置入口的位置（地图名，坐标（米））
    SetMapEntryTime(map, "2007/1/19/21/0", "1/0/0", "0/1/0", "0/6/0") --设置入口的时间，地图对象，首次开启时间（年/月/日/时/分），以后再次开启的间隔（日/时/分，全０表示只有首次开启），每次开启到入口消失的间隔（日/时/分，全０表示永不消失），每次开启到地图关闭的间隔（日/时/分，全０表示永不关闭）。。

end

function after_enter_hell( role , map_copy )

local cha_name=GetChaDefaultName(role)

	SystemNotice ( role, "神秘的声音：侵入死亡领域的<"..cha_name..">啊，我的宠物们将毫不容情的将你撕裂！" ) 

end

function before_leave_hell ( role )

end

function map_copy_first_run_hell( map_copy )

end

function map_copy_run_hell( map_copy )


		if CheckMonsterDead ( AZRAEL[5] ) == 1 then
			if CRY[5]==0 then
				local Notice_all = "塞拉：这种痛苦的感觉正是绝望的力量，我还会复活的，而你们必将面临比死亡更深的绝望！！！"
				MapCopyNotice ( map_copy , Notice_all )
				CRY[5]=1
			end
		end
		
		if CheckMonsterDead ( AZRAEL[6] ) == 1 then
			if CRY[6]==0 then
				local Notice_all = "卡普顿：暂时，暂时先让你们通过好了，但，最终你们必将被冥土所埋葬！！！"
				MapCopyNotice ( map_copy , Notice_all )
				CRY[6]=1
			end
		end

		if CheckMonsterDead ( AZRAEL[7] ) == 1 then
			if CRY[7]==0 then
				local Notice_all = "阿尔提斯：我，我居然被打败了，死神大人，饶过我吧，我不想再回到那个地狱里了，啊~~~~~！！！"
				MapCopyNotice ( map_copy , Notice_all )
				CRY[7]=1
			end
		end

		if CheckMonsterDead ( AZRAEL[8] ) == 1 then
			if CRY[8]==0 then
				local Notice_all = "萨库西斯：愚蠢的人类啊，死神已经赐予我们不死的力量，我们还会再见面的，哇哈哈哈哈哈！！！"
				MapCopyNotice ( map_copy , Notice_all )
				CRY[8]=1
			end
		end


				
	if CRY[5]==1 and CRY[6]==1 and CRY[7]==1 and CRY[8]==1 then
		
		if HELLCLOSETIME==300 then
			Notice ( "神秘的声音：不要以为打败了我的四个宠物就可以嚣张了，它们的血不会白流的，你们脚下的土地将在五分钟后消失，想见我，继续努力的活下来吧")
		end

		local closetime = HELLCLOSETIME
		for i = 1 , MAXNOTICE , 1 do
			if closetime ==NOTICETIME[i] then
				local Notice_all = "警告，距离地狱5到8层崩溃还有"..closetime.."秒！！请各位勇士赶快做好避难准备"
				MapCopyNotice ( map_copy ,Notice_all )
			end
		end
		HELLCLOSETIME = HELLCLOSETIME-1

		if HELLCLOSETIME == 0 then

			HELLCLOSETIME = 300
			CRY[5]=0
			CRY[6]=0
			CRY[7]=0
			CRY[8]=0
			CloseMapEntry ( "hell" )
			CloseMapCopy ( "hell" )

		end
	end
end

--每5秒执行一次的
function map_run_hell( map )

end

--地图关闭时执行
function map_copy_close_hell ( map_copy )

			HELLCLOSETIME = 300
			CRY[5]=0
			CRY[6]=0
			CRY[7]=0
			CRY[8]=0

end
		
--地图开关判断——————————————————————————————————————————

function can_open_entry_hell( map ) 

--	local time = GetTickCount ( ) 
	local Now_Week = GetNowWeek()
	if Now_Week >=5 and Now_Week < 7 then
		return 1
	end

		return 0

end 