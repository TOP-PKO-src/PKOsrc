--此文件中，凡是可能被多次执行的函数，函数名都要加上地图名前缀，如after_destroy_entry_testpk
--此文件每行最大字符个数为255，若有异议，请与程序探讨

function config_entry(entry) 
    SetMapEntryEntiID(entry, 193,1) --设置地图入口实体的编号（该编号对应于characterinfo.txt的索引）

end 

function after_create_entry(entry) 
    local copy_mgr = GetMapEntryCopyObj(entry, 0) --创建副本管理对象，此函数在有显式入口的地图中必须调用，对于隐式入口的地图（如队伍挑战）无要调用该接口

    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --取地图入口的位置信息（地图名，坐标，目标地图名）
    Notice("海盗广播：有玩家发现，在加纳大陆的["..posx..","..posy.."]位置附近发现一个通往《幻影雷霆》的入口，该消息尚未核实，请有关单位注意。") --通知本组服务器的所有玩家

end

function after_destroy_entry_leiting2(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    Notice("海盗广播：据玩家提供的消息，通往《幻影雷霆》的入口已经消失了。请大家继续关注我台的广播，祝您愉快～！") 

end

function after_player_login_leiting2(entry, player_name)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --取地图入口的位置信息（地图名，坐标，目标地图名）
    ChaNotice(player_name, "海盗广播：有玩家发现，在加纳大陆的["..posx..","..posy.."]位置附近发现一个通往《幻影雷霆》的入口，该消息尚未核实，请有关单位注意。") --通知本组服务器的所有玩家

end









--用于检测进入条件
--返回值：0，不满足进入条件。1，成功进入。
function check_can_enter_leiting2( role, copy_mgr )
	local i = IsChaStall(role)
	if i == LUA_TRUE then
		SystemNotice(role, "摆摊状态不可传送哦")
		return 0    
	end
	if Lv(role) < 70 then
		SystemNotice(role, "进入进入幻影雷霆角色等级必须在70级以上")
		return 0    
	end
	if Lv(role) > 89 then
		SystemNotice(role, "进入进入幻影雷霆角色等级必须在90级以下")
		return 0    
	end
	
	local Num
	Num = CheckBagItem(role,2326)
	if Num < 1 then
		SystemNotice(role, "没有真实面具，无法正确通过幻像到幻影雷霆")	
		return 0
	end

	local Credit_Leiting2 = GetCredit(role)
	if Credit_Leiting2 < 10 then
		SystemNotice(role, "您的名声值不够,不能进入幻影雷霆")
		return 0
	else
		DelCredit(role,10)
		return 1
	end
end


function begin_enter_leiting2(role, copy_mgr)

	local Cha = TurnToCha(role)	
	local Dbag = 0
	Dbag = DelBagItem(Cha, 2326, 1)
	
	if Dbag == 1 then
		SystemNotice(role,"开始进入《幻影雷霆》") 
		MoveCity(role, "幻影雷霆")

	else
	
		SystemNotice(role, "收取真实面具失败，无法正确通过幻象到幻影雷霆")
	end
end