------------------------------------------------------------
--MissionSdk.lua Created by knight 2004.12.10.
--
--任务系统函数接口定义
print( "loading missionsdk.lua" )
------------------------------------------------------------


--脚本系统返回值定义
LUA_TRUE 			= 1
LUA_FALSE			= 0
LUA_ERROR			= -1
LUA_NULL			= 0

--任务系统脚本
TE_MAPINIT		= 0			--出生
TE_NPC				= 1			--npc携带
TE_KILL				= 2			--摧毁物件
TE_GAMETIME		= 3			--游戏时间
TE_CHAT			= 4			--聊天关键字
TE_GETITEM		= 5			--拾取物品
TE_EQUIPITEM	= 6			--装备物品
TE_GOTO_MAP    = 7			--到达目标点	（角色触发器存储）参数1，地图ID， 参数2，地图到达随机率，参数3，地图坐标x，参数4, 地图坐标y
TE_LEVELUP      	= 8			--升级			（角色触发器存储）参数1，是否主动关闭（触发器动作后关闭），参数2，是否每个等级都触发，参数3，指定等级触发

--触发器时间类型
TT_CYCLETIME	= 0			--时间循环
TT_MULTITIME	= 1			--循环运行n次
		
--触发器最大携带条件数量
TR_MAXNUM_CONDITIONS		= 12
TR_MAXNUM_ACTIONS			= 12

--npc任务状态信息定义
MIS_ACCEPT       = 1			--有符合条件可以接的任务
MIS_DELIVERY     = 2			--已完成可交付的任务
MIS_PENDING		= 4			--已完成可交付的任务
MIS_IGNORE		= 8			--不符合条件可以接的任务

--任务列表页操作命令
MIS_PREV			= 0			--请求发送任务列表的上一页信息
MIS_NEXT			= 1			--请求发送任务列表的下一页信息
MIS_PREV_END	= 2			--任务列表没有上一页信息
MIS_NEXT_END	= 3			--任务列表没有下一页信息
MIS_SEL				= 4			--请求选择任务列表项目
MIS_TALK			= 5			--请求任务对话信息
MIS_BTNACCEPT	= 6			--请求接受任务
MIS_BTNDELIVERY= 7			--请求交付任务
MIS_BTNPENDING	= 8			--未决任务请求（客户端禁止按钮）
MIS_LOG			= 9			--请求任务日志信息

--任务信息定义
--完成 任务需求类型定义
MIS_NEED_ITEM		= 0		--需要获取物品
MIS_NEED_KILL		= 1		--需要摧毁物件
MIS_NEED_SEND		= 2        --需要送给某人
MIS_NEED_CONVOY	= 3 		--需要护送到某的
MIS_NEED_EXPLORE = 4		--需要探索某的
MIS_NEED_DESP		= 5		--文字表述的任务目标

--完成任务奖励类型定义
MIS_PRIZE_ITEM		= 0		--奖励物品
MIS_PRIZE_MONEY	= 1		--奖励金钱
MIS_PRIZE_FAME		= 2		--奖励声望
MIS_PRIZE_CESS		= 3		--奖励贸易税率
MIS_PRIZE_PETEXP  = 4		--奖励宠物经验值

--角色职业类型
MIS_NOVICE			= 0		--新手
MIS_FENCER			= 1		--剑士
MIS_HUNTER			= 2		--猎人
MIS_EXPERIENCED	= 2		--水手
MIS_RISKER			= 4		--冒险者
MIS_DOCTOR			= 5		--医生(祈愿使)
MIS_TECHNICIAN		= 6		--技师
MIS_TRADER			= 7		--商人
MIS_LARGE_FENCER  = 8		--巨剑士
MIS_TWO_FENCER    = 9		--双剑士
MIS_SHIELD_FENCER = 10		--剑盾士
MIS_WILD_ANIMAL_TRAINER = 11 --驯兽师
MIS_GUNMAN			= 12      --狙击手
MIS_CLERGY			= 13		--圣职者
MIS_SEALER			= 14		--封印师
MIS_SHIPMASTER	= 15		--船长
MIS_VOYAGE			= 16		--航海士
MIS_ARRIVISTE		= 17		--暴发户
MIS_ENGINEER			= 18		--工程师

--公会类型
MIS_GUILD_NAVY		= 0		--海军公会
MIS_GUILD_PIRATE   = 1		--海盗公会

--永远为假
function AlwaysFailure()
	return LUA_FALSE
end

--永久为真
function AlwaysTrue()
	return LUA_TRUE
end

--没有历史标签
function NoRecord( character, record )
	if record == nil then
		SystemNotice( character, "NoRecord:函数参数错误！" )
		return LUA_ERROR
	end
	local ret = IsValidRecord( character, record )
	if ret == LUA_FALSE then
		SystemNotice( character, "NoRecord:无效的历史记录索引错误或者角色指针错误！" )
		return LUA_ERROR
	end
	
	ret = IsRecord( character, record )
	if ret ~= LUA_TRUE then
		return LUA_TRUE
	end
	return LUA_FALSE
end

--检测技能状态
function HasState( character, state_id )
	if state_id == nil then
		SystemNotice( character, "HasState:函数参数错误！" )
		return LUA_ERROR
	end
	
	local ret = GetChaStateLv( character, state_id )
	if ret ~= nil then
		if ret > 0 then
			return LUA_TRUE
		end
	end
	return LUA_FALSE
end

--检测角色体型
function IsChaType( character, type_id )
	if type_id == nil then
		SystemNotice( character, "IsChaType:函数参数错误！" )
		return LUA_ERROR
	end
	
	local ret = GetChaBody( character )
	if ret == type_id then
		return LUA_TRUE
	end
	return LUA_FALSE
end

--检测不是角色体型
function NoChaType( character, type_id )
	if type_id == nil then
		SystemNotice( character, "NoChaType:函数参数错误！" )
		return LUA_ERROR
	end
	
	local ret = GetChaBody( character )
	if ret ~= type_id then
		return LUA_TRUE
	end
	return LUA_FALSE
end
--播放特效
function Starteffect( character, npc, tp )
		
	if tp == nil then
		PRINT( "Starteffect:函数参数错误！" )
		SystemNotice( character, "Starteffect:函数参数错误！" )
		return LUA_ERROR	
	end
	
	PRINT( "Starteffect, p1 = "..tp )
	PlayEffect( npc, tp )
	return LUA_TRUE
end
--是否有历史标签
function HasRecord( character, record )
	if record == nil then
		SystemNotice( character, "HasRecord:函数参数错误！" )
		return LUA_ERROR
	end
	local ret = IsValidRecord( character, record )
	if ret == LUA_FALSE then
		SystemNotice( character, "HasRecord:无效的历史记录索引错误或者角色指针错误！" )
		return LUA_ERROR
	end
	return IsRecord( character, record )
end

--没有任务记录标签
function NoFlag( character, id, flag )
	if id == nil or flag == nil then
		SystemNotice( character, "NoFlag:函数参数错误！" )
		return LUA_ERROR
	end	
	local ret = IsValidFlag( character, flag )
	if ret == LUA_FALSE then
		SystemNotice( character, "NoFlag:无效的任务记录索引错误或者角色指针错误！" )
		return LUA_ERROR
	end
	ret = IsFlag( character, id, flag )
	if ret == LUA_TRUE then
		return LUA_FALSE
	end
	return LUA_TRUE
end

--不能有该任务护送NPC
function NoConvoyNpc( character, misid )
	if misid == nil then
		SystemNotice( character, "NoConvoyNpc:函数参数错误！" )
		return LUA_ERROR
	end
	
	local ret = HasConvoyNpc( character, misid )
	if ret == LUA_TRUE then
		return LUA_FALSE
	end
	
	return LUA_TRUE
end

--随机任务送物件给npc时，判断是否npc已经接受过该物品
--function NoRandNpcItemFlag( character, misid, npcid )
--	if misid == nil or npcid == nil then
--		SystemNotice( character, "NoRandNpcItemFlag:函数参数错误！" )
--		return LUA_ERROR
--	end
--	
--	local ret = HasRandNpcItemFlag( character, misid, npcid )
--	if ret == LUA_TRUE then
--		return LUA_FALSE
--	end
--	return LUA_TRUE
--end

--没有任务标签
function NoMission( character, id )
	if id == nil then
		SystemNotice( character, "NoMission:函数参数错误！" )
		return LUA_ERROR
	end
	local ret = HasMission( character, id )
	if ret == LUA_TRUE then
		return LUA_FALSE
	end
	return LUA_TRUE
end

--没有指定得随机任务
function NoRandMission( character, id )
	if id == nil then
		SystemNotice( character, "NoRandMission:函数参数错误" )
		return LUA_ERROR
	end
	
	local ret = HasRandMission( character, id )
	if ret == LUA_TRUE then
		return LUA_FALSE
	end
	return LUA_TRUE
end

--任务没有失败
function NoMisssionFailure( character, id )
	if id == nil then
		SystemNotice( character, "NoMisssionFailure:函数参数错误" )
		return LUA_ERROR
	end
	
	local ret = HasMisssionFailure( character, id )
	if ret == LUA_TRUE then
		return LUA_FALSE
	end
	return LUA_TRUE	
end

function IsMission( character, id )
	if id == nil then
		SystemNotice( character, "IsMission:函数参数错误！" )
		return LUA_ERROR
	end
	return HasMission( character, id )
end

function NoGuild( character )
	local ret = HasGuild( character )
	if ret == LUA_TRUE then
		return LUA_FALSE
	end
	return LUA_TRUE
end

function NoPfEqual( character, pf )
	local ret = PfEqual( character, pf )
	if ret == LUA_TRUE then
		return LUA_FALSE
	end
	return LUA_TRUE
end

--添加指定的下一个任务记录标签
function AddNextFlag( character, id, startflag, count )
	if id == nil or startflag == nil or count == nil then
		SystemNotice( character, "AddNextFlag:函数参数错误！" )
	end
	local num = 0
	for i = 1, count, 1 do
		local ret = IsFlag( character, id, startflag + num )
		if ret == LUA_FALSE then
			PRINT( "AddNextFlag: flag = ", startflag + num )
			ret = SetFlag( character, id, startflag + num )
			if ret ~= LUA_TRUE then
				SystemNotice( character, "AddNextFlag:无法设置任务记录标签信息错误！" )
				return LUA_ERROR
			end
			return LUA_TRUE
		end
		num = num + 1
	end
	return LUA_TRUE
end

--设置下一个随机任务记录标签
function AddRMNextFlag( character, id, startflag, count )
	if id == nil or startflag == nil or count == nil then
		SystemNotice( character, "AddRMNextFlag:函数参数错误！" )
	end
	local num = 0
	for i = 1, count, 1 do
		local ret = HasFlag( character, id, startflag + num )
		if ret == LUA_FALSE then
			PRINT( "AddRMNextFlag: flag = ", startflag + num )
			ret = SetFlag( character, id, startflag + num )
			if ret ~= LUA_TRUE then
				SystemNotice( character, "AddRMNextFlag:无法设置任务记录标签信息错误！" )
				return LUA_ERROR
			end
			return LUA_TRUE
		end
		num = num + 1
	end
	return LUA_TRUE
end
-----------船或者在这个港口或者在那个港口
-- function HasAllBoatInBerth_eitheror( character, p1, p2 )
-- 	local ret1 = HasAllBoatInBerth( character, p1 )
--	local ret2 = HasAllBoatInBerth( character, p2 )
--	if ret1 ~= LUA_TRUE and  ret2 ~= LUA_TRUE  then
--		PRINT( "ConditionsTest:HasAllBoatInBerth_eitheror = false" )
--		return LUA_FALSE
--	end
--	if ret1 == LUA_TRUE  then
--		return LUA_TRUE
--	end
--	if  ret2 == LUA_TRUE  then
--		return LUA_TRUE
--	end
-- end
--检测任务记录标签信息
function HasFlag( character, id, flag )
	if id == nil or flag == nil then
		SystemNotice( character, "HasFlag:函数参数错误！" )
		return LUA_ERROR
	end
	local ret = IsValidFlag( character, flag )
	if ret ~= LUA_TRUE then
		SystemNotice( character, "HasFlag:无效的任务记录标签错误！" )
		return LUA_ERROR
	end
	ret = IsFlag( character, id, flag )
	return ret
end

--检测一个序列的任务记录标签信息
function HasAllFlag( character, id, startflag, count )
	if id == nil or startflag == nil or count then
		SystemNotice( character, "HasAllFlag:函数参数错误！" )
		return LUA_ERROR
	end
	local num = 0
	for i = 1, count, 1 do
		local ret = IsFlag( character, id, startflag + num )
		if ret ~= LUA_TRUE then
			return LUA_FALSE
		end
		num = num + 1
	end
	return LUA_TRUE
end

--获取一个序列的任务标签记录数量信息
function GetNumFlag( character, id, startflag, count )
	if id == nil or startflag == nil or count == nil then
		SystemNotice( character, "GetNumFlag:函数参数错误！" )
		return 0
	end
	local num = 0
	for i = 1, count, 1 do
		local ret = IsFlag( character, id, startflag + num )
		if ret ~= LUA_TRUE then
			break
		end
		num = num + 1
	end
	return num
end

--检验值
function IsValue( id1, id2 )
	if id1 == nil or id2 == nil then
		PRINT( "IsValue:函数参数错误！" )
		LG( "mission_error", "IsValue:函数参数错误！" )
		return LUA_ERROR
	end
	if id1 == id2 then
		return LUA_TRUE
	end
	return LUA_FALSE
end

--检测是否是指定的怪物类型
function IsMonster( id1, id2 )
	return IsValue( id1, id2 )
end

--检测是否指定的物品类型
function IsItem( id1, id2 )
	return IsValue( id1, id2 )
end

function NoItem( character, itemid, count )
	if itemid == nil or count == nil then
		PRINT( "NoItem:参数错误！" )
		return LUA_ERROR
	end
	
	local ret = HasItem( character, itemid, count )
	if ret == LUA_TRUE then
		return LUA_FALSE
	end
	
	return LUA_TRUE
end

function BankNoItem( character, itemid, count )
	if itemid == nil or count == nil then
		PRINT( "BankNoItem:参数错误！" )
		return LUA_ERROR
	end
	
	local ret = BankHasItem( character, itemid, count )
	if ret == LUA_TRUE then
		return LUA_FALSE
	end
	
	return LUA_TRUE
end

function EquipNoItem( character, itemid, count )
	if itemid == nil or count == nil then
		PRINT( "EquipNoItem:参数错误！" )
		return LUA_ERROR
	end
	
	local ret = EquipHasItem( character, itemid, count )
	if ret == LUA_TRUE then
		return LUA_FALSE
	end
	
	return LUA_TRUE
end

----Leo的声望函数判断，判断角色声上是否有固定枝的声望
function HasCredit(character,value)
	local Role_Credit = GetCredit(character)
	if value > Role_Credit then
		return LUA_FALSE
	else
		return LUA_TRUE
	end
end


--Leo end

----Leo的声望扣除，扣除角色声上的声望
function DelRoleCredit(character,npc,value)
	DelCredit(character,value)
	return LUA_TRUE
end
--Leo end



------------------死亡证明&无谓之证----------missdk
function CheckPoint (character,value)
		--SystemNotice( character , "value=="..value)
	local i= CheckBagItem( character, value )
	if i~=1 and value == 2954 then
		SystemNotice( character , "请确保您身上有1张死亡证明")
	return LUA_FALSE
	end
	if i~=1 and value == 5803 then
		SystemNotice( character , "请确保您身上有1本无谓之证")
	return LUA_FALSE
	end
	local Point_dead = GetChaItem2 ( character , 2 , value )
	local Point = GetItemAttr(Point_dead, ITEMATTR_VAL_STR)
	local Point_Kill = GetItemAttr(Point_dead , ITEMATTR_VAL_AGI)
		--SystemNotice( character , "您死了"..Point.."次")
	if Point < 41 and value == 2954 then
		SystemNotice( character , "请确保您死了足够多次")
		return LUA_FALSE		
	end
	if Point_Kill < 10 and value == 5803 then
		SystemNotice( character , "请确保您已经杀足够多的人了")
		return LUA_FALSE		
	end
	return LUA_TRUE
end


		
--------------------判断背包内无某种道具
function HaveNoItem (character,value)
		--SystemNotice( character , "value=="..value)
	local i= CheckBagItem( character, value )
	--SystemNotice( character , "i=="..i)
	if i~=0 and value == 2954 then
		SystemNotice( character , "请确保您身上没有死亡证明")
		return LUA_FALSE
	end
	if i~=0 and value == 5803 then
		SystemNotice( character , "请确保您身上没有无谓之证")
		return LUA_FALSE
	end
	return LUA_TRUE
end
		

----给角色背包固定位置添加道具
function AddChaItem1(character,npc,value)
	--SystemNotice( character ,"value=="..value)		
	local item_number = CheckBagItem( character, value )			
	if item_number >=1 then
		SystemNotice( character ,"您已经有挑战书了")
		return LUA_FALSE 
	end
	------------判断背包第一栏是否为空
	--local item1=GetItemP(character,0)
	--local itemid1=GetItemID( item1 )
	--if itemid1==0 or itemid1==nil then
	--	SystemNotice( character, "请把背包第一栏的物品移开" )
	--	return LUA_FALSE
	--end

	------------取挑战书的指针
	local r1=0
	local r2=0
		--SystemNotice( character ,"r1=="..r1)
	r1,r2 =MakeItem ( character , value  , 1 , 4 )
	local Item_new = GetChaItem ( character , 2 , r2 )

	----------记录时间
	local now_yes = os.date("%y")		-------------年
	local now_month= os.date("%m")		-------------月
	local now_day= os.date("%d")		-------------日
	local now_hour= os.date("%H")		-------------时
	local now_miniute= os.date("%M")	-------------分
	local now_scend=  os.date("%S")		-------------秒
	now_yes = tonumber(now_yes)			-------------年     
	now_month= tonumber(now_month)		-------------月     
	now_day= tonumber(now_day)			-------------日     
	now_hour= tonumber(now_hour)			-------------时     
	now_miniute= tonumber(now_miniute)	 	-------------分     
	now_scend= tonumber(now_scend)		-------------秒     
	--local CheckDateNum = NowMonthNum * 10000 + NowDayNum * 100 + NowTimeNum
	--SystemNotice ( character , "now_yes=="..now_yes )
	--SystemNotice ( character , "now_month=="..now_month )
	--SystemNotice ( character , "now_day=="..now_day )
	--SystemNotice ( character , "now_hour=="..now_hour )
	--SystemNotice ( character , "now_miniute=="..now_miniute )
	--SystemNotice ( character , "now_scend=="..now_scend )
	SetItemAttr(Item_new, ITEMATTR_VAL_STA, now_month )		-------------月 	
	SetItemAttr(Item_new, ITEMATTR_VAL_STR, now_day )		-------------日  
	SetItemAttr(Item_new, ITEMATTR_VAL_CON, now_hour )		-------------时   
	SetItemAttr(Item_new, ITEMATTR_VAL_DEX, now_miniute )		-------------分   
	SetItemAttr(Item_new, ITEMATTR_VAL_AGI, now_scend )		-------------秒 
	SynChaKitbag(character,13)
	return LUA_TRUE
end
function AddChaItem2(character,npc,value)
	local cha = ChaIsBoat ( character ) 
	if cha ==1 then
		SystemNotice( character ,"您需要上岸才能还吉尼斯任务")
		return LUA_FALSE 
	end	
	------------取挑战书的指针
	local item1=GetItemP(character,0)
	local itemid1=GetItemID( item1 )
	if itemid1~=2911 then
		SystemNotice( character, "请把挑战书放在背包第一栏" )
		return LUA_FALSE
	end
	----------记录时间
	local now_yes = os.date("%y")			-------------年
	local now_month= os.date("%m")			-------------月
	local now_day= os.date("%d")			-------------日
	local now_hour= os.date("%H")			-------------时
	local now_miniute= os.date("%M")		-------------分
	local now_scend=  os.date("%S")			-------------秒
	now_yes = tonumber(now_yes)			-------------年     
	now_month= tonumber(now_month)		-------------月     
	now_day= tonumber(now_day)			-------------日     
	now_hour= tonumber(now_hour)			-------------时     
	now_miniute= tonumber(now_miniute)	 	-------------分     
	now_scend= tonumber(now_scend)		-------------秒     
	--SystemNotice ( character , "now_yes=="..now_yes )
	--SystemNotice ( character , "now_month=="..now_month )
	--SystemNotice ( character , "now_day=="..now_day )
	--SystemNotice ( character , "now_hour=="..now_hour )
	--SystemNotice ( character , "now_miniute=="..now_miniute )
	--SystemNotice ( character , "now_scend=="..now_scend )

	local item_old=GetItemP(character,0)
	---------去好汉书的时间	
	local old_month = GetItemAttr(item_old, ITEMATTR_VAL_STA)		-------------月 	
	local old_day = GetItemAttr(item_old, ITEMATTR_VAL_STR)			-------------日  
	local old_hour = GetItemAttr(item_old, ITEMATTR_VAL_CON)			-------------时   
	local old_miniute = GetItemAttr(item_old, ITEMATTR_VAL_DEX)		-------------分   
	local old_scend = GetItemAttr(item_old, ITEMATTR_VAL_AGI)			-------------秒 
	--SystemNotice ( character , "old_month=="..old_month )
	--SystemNotice ( character , "old_day=="..old_day )       
	--SystemNotice ( character , "old_hour=="..old_hour )    
	--SystemNotice ( character , "old_miniute=="..old_miniute)
	--SystemNotice ( character , "old_scend=="..old_scend ) 

	---------删除挑战书
	local del_item =TakeItem( character, 0,2911, 1 )			                   
	if del_item==0  then
		SystemNotice ( character ,"删除挑战书失败")
		return LUA_FALSE
	end


	local used_time=(now_scend - old_scend)+(now_miniute - old_miniute)*60+(now_hour - old_hour)*3600+(now_day - old_day)*86400+(JNSTime_Flag[now_month] - JNSTime_Flag[old_month] )*86400
	local cha_name = GetChaDefaultName ( character )

	if used_time>28800 or used_time<0 then
		SystemNotice ( character ,"由于您完成吉尼斯任务的时间过长,不能获得任何奖励，希望英雄从头再来！")
		return LUA_TRUE
	elseif used_time < 2400 and used_time>0 then
		Notice("恭喜"..cha_name.."玩家完成了挑战吉尼斯的全部航程,全程用时"..used_time.."秒，大家努力啊！")
	end
	if used_time < JINISI_TIME then
		JINISI_TIME=used_time
		LG( "JiNiSiJiLu_XinXi" , "玩家"..cha_name.."打破了世界纪录,全程用时"..used_time.."秒" )
	end
	------------取好汉书的指针
	local r1=0
	local r2=0
	r1,r2 =MakeItem ( character , value  , 1 , 4 )
	local Item_new = GetChaItem ( character , 2 , r2 )
	GiveItem ( character , 0 , 3094  , 1 , 4 )	
	SetItemAttr(Item_new, ITEMATTR_VAL_AGI, used_time )		-------------秒  
	SynChaKitbag(character,13)
	return LUA_TRUE
end


----给角色背包添加道具
function AddChaItem3(character,npc,value)

	local item_number = CheckBagItem( character, value )			
	if item_number >=1 then
		SystemNotice( character ,"您已经有特别行动卡了")
		return LUA_FALSE 
	end
	
	local r1=0
	local r2=0
		--SystemNotice( character ,"r1=="..r1)
	r1,r2 =MakeItem ( character , value  , 1 , 4 )
	local Item_new = GetChaItem ( character , 2 , r2 )
	


	----------记录时间
	local now_yes = os.date("%y")		-------------年
	local now_month= os.date("%m")		-------------月
	local now_day= os.date("%d")		-------------日
	local now_hour= os.date("%H")		-------------时
	local now_miniute= os.date("%M")	-------------分
	local now_scend=  os.date("%S")		-------------秒
	now_yes = tonumber(now_yes)			-------------年     
	now_month= tonumber(now_month)		-------------月     
	now_day= tonumber(now_day)			-------------日     
	now_hour= tonumber(now_hour)			-------------时     
	now_miniute= tonumber(now_miniute)	 	-------------分     
	now_scend= tonumber(now_scend)		-------------秒     
	--local CheckDateNum = NowMonthNum * 10000 + NowDayNum * 100 + NowTimeNum
	--SystemNotice ( character , "now_yes=="..now_yes )
	--SystemNotice ( character , "now_month=="..now_month )
	--SystemNotice ( character , "now_day=="..now_day )
	--SystemNotice ( character , "now_hour=="..now_hour )
	--SystemNotice ( character , "now_miniute=="..now_miniute )
	--SystemNotice ( character , "now_scend=="..now_scend )
	SetItemAttr(Item_new, ITEMATTR_VAL_STA, now_month )		-------------月 	
	SetItemAttr(Item_new, ITEMATTR_VAL_STR, now_day )		-------------日  
	SetItemAttr(Item_new, ITEMATTR_VAL_CON, now_hour )		-------------时   
	SetItemAttr(Item_new, ITEMATTR_VAL_DEX, now_miniute )		-------------分   
	SetItemAttr(Item_new, ITEMATTR_VAL_AGI, now_scend )		-------------秒 
	SynChaKitbag(character,13)
	return LUA_TRUE
end

function AddChaItem4(character,npc,value)
	
	local i= CheckBagItem( character, value )
		--SystemNotice( character , "i=="..i)
	if i~=1 then
		SystemNotice( character , "请确保您身上只有有1张特别行动卡")
		return LUA_FALSE
	end
	
	
	----------记录时间
	local now_yes = os.date("%y")			-------------年
	local now_month= os.date("%m")			-------------月
	local now_day= os.date("%d")			-------------日
	local now_hour= os.date("%H")			-------------时
	local now_miniute= os.date("%M")		-------------分
	local now_scend=  os.date("%S")			-------------秒
	now_yes = tonumber(now_yes)			-------------年     
	now_month= tonumber(now_month)		-------------月     
	now_day= tonumber(now_day)			-------------日     
	now_hour= tonumber(now_hour)			-------------时     
	now_miniute= tonumber(now_miniute)	 	-------------分     
	now_scend= tonumber(now_scend)		-------------秒     
	--SystemNotice ( character , "now_yes=="..now_yes )
	--SystemNotice ( character , "now_month=="..now_month )
	--SystemNotice ( character , "now_day=="..now_day )
	--SystemNotice ( character , "now_hour=="..now_hour )
	--SystemNotice ( character , "now_miniute=="..now_miniute )
	--SystemNotice ( character , "now_scend=="..now_scend )

	local item_old = GetChaItem2 ( character , 2 , value )--------特别行动卡
	---------取特别行动卡的时间	
	local old_month = GetItemAttr(item_old, ITEMATTR_VAL_STA)		-------------月 	
	local old_day = GetItemAttr(item_old, ITEMATTR_VAL_STR)			-------------日  
	local old_hour = GetItemAttr(item_old, ITEMATTR_VAL_CON)			-------------时   
	local old_miniute = GetItemAttr(item_old, ITEMATTR_VAL_DEX)		-------------分   
	local old_scend = GetItemAttr(item_old, ITEMATTR_VAL_AGI)			-------------秒 
	--SystemNotice ( character , "old_month=="..old_month )
	--SystemNotice ( character , "old_day=="..old_day )       
	--SystemNotice ( character , "old_hour=="..old_hour )    
	--SystemNotice ( character , "old_miniute=="..old_miniute)
	--SystemNotice ( character , "old_scend=="..old_scend ) 

	---------删除特别行动卡
	local del_item =TakeItem( character, 0,value, 1 )--------------			                   
	if del_item==0  then
		SystemNotice ( character ,"删除特别行动卡失败")
		return LUA_FALSE
	end


	local used_time=(now_scend - old_scend)+(now_miniute - old_miniute)*60+(now_hour - old_hour)*3600+(now_day - old_day)*86400+(JNSTime_Flag[now_month] - JNSTime_Flag[old_month] )*86400
	local cha_name = GetChaDefaultName ( character )

	if used_time>900 or used_time<0 then
		SystemNotice ( character ,"您完成特别任务的时间超长,建议中断任务从头再来!")
		return LUA_FALSE
	elseif used_time <= 900 and used_time>0 then
		SystemNotice(character ,"恭喜你完成了特别任务,全程用时"..used_time.."秒.")
	end
	
	SynChaKitbag(character,13)
	return LUA_TRUE
end


---------------判断角色是否有某乱斗点数
function HasFightingPoint(character,value)
		--SystemNotice( character , "HasFightingPoint" )
		local i= CheckBagItem( character, 3849 )
		--SystemNotice( character , "i=="..i)
		if i~=1 then
			SystemNotice( character , "请确定您身上有勇者之证")
			return LUA_FALSE
		end
		local ATKER_LD = GetChaItem2 ( character , 2 , 3849 )
		local FightingPoint=GetItemAttr ( ATKER_LD , ITEMATTR_MAXENERGY)
	      --SystemNotice( character , "HasFightingPoint=="..FightingPoint )
	if value > FightingPoint then
		return LUA_FALSE
	else
		return LUA_TRUE
	end
end

---------------判断角色是否有某荣誉点数
function HasHonorPoint(character,value)
		--SystemNotice( character , "HasHonorPoint" )
		local i= CheckBagItem( character, 3849 )
		--SystemNotice( character , "i=="..i)
		if i~=1 then
			SystemNotice( character , "请确定您身上有勇者之证")
			return LUA_FALSE
		end
		local DEFER_RYZ1 = GetChaItem2 ( character , 2 , 3849 )
		local HonorPoint = GetItemAttr ( DEFER_RYZ1 , ITEMATTR_VAL_STR)
	if value > HonorPoint then
		return LUA_FALSE
	else
		return LUA_TRUE
	end
end

--判断好汉书时间是否小于某个值
function LessTime( character, value)
	local HHS_Num = 0
	HHS_Num = CheckBagItem( character, 2912 )
	---SystemNotice(character,""..HHS_Num)
	if HHS_Num ~= 1 then
		SystemNotice( character, "请确保你的背包内只有一本好汉书")
		return 0
	end
	local role_HHS = GetChaItem2 ( character , 2 , 2912 )	
	local attr_num = GetItemAttr ( role_HHS, ITEMATTR_VAL_AGI)
	----SystemNotice(character,""..attr_num)
	if value > attr_num then
		return LUA_TRUE
	end

	return LUA_FALSE
end
----LOG---------金牛水手奖励 
function JINNiuSS(character)

	local cha_name = GetChaDefaultName ( character )
	
	LG( "JINNiuSS" , "玩家"..cha_name.."换取水手奖励" )
	end

	------------------------------------金牛海盗奖励
function JINNiuHD ( character,npc )

	local cha_name = GetChaDefaultName ( character )
	
	LG( "JINNiuHD" , "玩家"..cha_name.."换取海盗奖励" )
end

------------------------------------金牛船长奖励
function JINNiuCZ ( character,npc )

	local cha_name = GetChaDefaultName ( character )
	
	LG( "JINNiuCZ" , "玩家"..cha_name.."换取船长奖励" )
end
----LOG---------双子水手奖励 
function ShuangZiSS (character,npc)

	local cha_name = GetChaDefaultName ( character )
	
	LG( "ShuangZiSS" , "玩家"..cha_name.."换取水手奖励" )
	end

	------------------------------------双子海盗奖励
function ShuangZiHD ( character,npc )

	local cha_name = GetChaDefaultName ( character )
	
	LG( "ShuangZiHD" , "玩家"..cha_name.."换取海盗奖励" )
end

------------------------------------双子船长奖励
function ShuangZiCZ ( character,npc )

	local cha_name = GetChaDefaultName ( character )
	
	LG( "ShuangZiCZ" , "玩家"..cha_name.."换取船长奖励" )
end

-----------------------------------开始转生
function ZSSTART ( character,npc )

	local cha_name = GetChaDefaultName ( character )
	
	LG( "ZSSTART" , "玩家"..cha_name.."开始转生" )
end

------------------------------------结束转生
function ZSSTOP ( character,npc )

	local cha_name = GetChaDefaultName ( character )
	
	LG( "ZSSTOP" , "玩家"..cha_name.."结束转生" )
end

------------------------------------结束二次转生----dina
function ZSSTOP2 ( character,npc )

	local cha_name = GetChaDefaultName ( character )
	
	LG( "ZSSTOP2" , "玩家"..cha_name.."结束二次转生" )
end

--判断好汉书时间是否大于某个值
function MoreTime( character, value)
	local HHS_Num = 0
	HHS_Num = CheckBagItem( character, 2912 )
	---SystemNotice(character,""..HHS_Num)
	if HHS_Num ~= 1 then
		SystemNotice( character, "请确保你的背包内只有一本好汉书")
		return 0
	end
	local role_HHS = GetChaItem2 ( character , 2 , 2912 )	
	local attr_num = GetItemAttr ( role_HHS, ITEMATTR_VAL_AGI)
	----SystemNotice(character,""..attr_num)
	if value < attr_num then
		return LUA_TRUE
	end

	return LUA_FALSE
end

--判断是否穿着白羊套装
function BaiyangOn( character )
	local head = GetChaItem ( character , 1 , 0 )
	local body = GetChaItem ( character , 1 , 2 )
	local hand = GetChaItem ( character , 1 , 3 )
	local foot = GetChaItem ( character , 1 , 4 )

	local Head_ID = GetItemID ( head )
	local Body_ID = GetItemID ( body )
	local Hand_ID = GetItemID ( hand )
	local Foot_ID = GetItemID ( foot )
	local Cha_Num = GetChaTypeID( cha )

	if Body_ID ~= 5341 and Body_ID ~= 5345 and Body_ID ~= 5349 and Body_ID ~= 5353 then
		return LUA_FALSE
	end
	if Hand_ID ~= 5342 and Hand_ID ~= 5346 and Hand_ID ~= 5350 and Hand_ID ~= 5354 then
		return LUA_FALSE
	end
	if Foot_ID ~= 5343 and Foot_ID ~= 5347 and Foot_ID ~= 5351 and Foot_ID ~= 5355 then
		return LUA_FALSE
	end
	if Cha_Num == 4 then
		if Head_ID ~= 5352 then
		return LUA_FALSE
		end
	end

	return LUA_TRUE
end

---------------扣除角色身上的乱斗点数
function TakeFightingPoint(character,value)
		--SystemNotice( character , "TakeFightingPoint" )
		local i= CheckBagItem( character, 3849 )
		--SystemNotice( character , "i=="..i)
		if i~=1 then
			SystemNotice( character , "请确定身上有荣誉证书")
			return LUA_FALSE
		end
		local ATKER_LD = GetChaItem2 ( character , 2 , 3849 )
		local FightingPoint=GetItemAttr ( ATKER_LD , ITEMATTR_MAXENERGY)
	      --SystemNotice( character , "HasFightingPoint=="..FightingPoint )
	if value > FightingPoint then
		return LUA_FALSE
	else
		local new_point=FightingPoint - value
		SetItemAttr ( ATKER_LD , ITEMATTR_MAXENERGY , new_point)
		return LUA_TRUE
	end
end

---------------扣除角色身上的荣誉点数
function TakeHonorPoint(character,value)
		--SystemNotice( character , "TakeHonorPoint" )
		local i= CheckBagItem( character, 3849 )
		--SystemNotice( character , "i=="..i)
		if i~=1 then
			SystemNotice( character , "请确定身上有荣誉证书")
			return LUA_FALSE
		end
		local DEFER_RYZ1 = GetChaItem2 ( character , 2 , 3849 )
		local HonorPoint = GetItemAttr ( DEFER_RYZ1 , ITEMATTR_VAL_STR)
		if value > HonorPoint then
			return LUA_FALSE
		else
			local new_point=HonorPoint - value
			SetItemAttr ( DEFER_RYZ1 , ITEMATTR_VAL_STR , new_point)
			return LUA_TRUE
		end
end

--判断组队贡献度
function HasOffer( character, value )
	local ret = HasZuDuiGongXianDu( character, value )
	if ret == LUA_TRUE then
		return LUA_TRUE
	end
	
	return LUA_FALSE
end

--扣除组队贡献度
function TakeOffer( character, value )
	local ret = TakeZuDuiGongXianDu( character, value )
	if ret == LUA_TRUE then
		return LUA_TRUE
	end
	
	return LUA_FALSE
end

-------判断角色移动速度是否达到某值
function CheckSpeed( character, value)
	local Role_Speed = GetChaAttr( character, ATTR_MSPD )
	if Role_Speed < value then
		return LUA_FALSE
	end

	return LUA_TRUE

end
	
---------------------------------------------------------------金牛特别行动卡---------missionsdk

function AddChaItem5(character,npc,value)
	
	local i= CheckBagItem( character, value )
		--SystemNotice( character , "i=="..i)
	if i~=1 then
		SystemNotice( character , "请确保您身上只有1张金牛特别行动卡")
		return LUA_FALSE
	end
	
	
	----------记录时间
	local now_yes = os.date("%y")			-------------年
	local now_month= os.date("%m")			-------------月
	local now_day= os.date("%d")			-------------日
	local now_hour= os.date("%H")			-------------时
	local now_miniute= os.date("%M")		-------------分
	local now_scend=  os.date("%S")			-------------秒
	now_yes = tonumber(now_yes)			-------------年     
	now_month= tonumber(now_month)		-------------月     
	now_day= tonumber(now_day)			-------------日     
	now_hour= tonumber(now_hour)			-------------时     
	now_miniute= tonumber(now_miniute)	 	-------------分     
	now_scend= tonumber(now_scend)		-------------秒     
	--SystemNotice ( character , "now_yes=="..now_yes )
	--SystemNotice ( character , "now_month=="..now_month )
	--SystemNotice ( character , "now_day=="..now_day )
	--SystemNotice ( character , "now_hour=="..now_hour )
	--SystemNotice ( character , "now_miniute=="..now_miniute )
	--SystemNotice ( character , "now_scend=="..now_scend )

	local item_old = GetChaItem2 ( character , 2 , value )--------金牛特别行动卡
	---------取特别行动卡的时间	
	local old_month = GetItemAttr(item_old, ITEMATTR_VAL_STA)		-------------月 	
	local old_day = GetItemAttr(item_old, ITEMATTR_VAL_STR)			-------------日  
	local old_hour = GetItemAttr(item_old, ITEMATTR_VAL_CON)			-------------时   
	local old_miniute = GetItemAttr(item_old, ITEMATTR_VAL_DEX)		-------------分   
	local old_scend = GetItemAttr(item_old, ITEMATTR_VAL_AGI)			-------------秒 
	--SystemNotice ( character , "old_month=="..old_month )
	--SystemNotice ( character , "old_day=="..old_day )       
	--SystemNotice ( character , "old_hour=="..old_hour )    
	--SystemNotice ( character , "old_miniute=="..old_miniute)
	--SystemNotice ( character , "old_scend=="..old_scend ) 

	---------删除特别行动卡
	local del_item =TakeItem( character, 0,value, 1 )--------------			                   
	if del_item==0  then
		SystemNotice ( character ,"删除金牛特别行动卡失败")
		return LUA_FALSE
	end


	local used_time=(now_scend - old_scend)+(now_miniute - old_miniute)*60+(now_hour - old_hour)*3600+(now_day - old_day)*86400+(JNSTime_Flag[now_month] - JNSTime_Flag[old_month] )*86400
	local cha_name = GetChaDefaultName ( character )

	if used_time>420 or used_time<0 then
		SystemNotice ( character ,"您完成特别任务的时间超长,建议中断任务从头再来!")
		return LUA_FALSE
	elseif used_time <= 420 and used_time>0 then
		SystemNotice(character ,"恭喜你完成了特别任务,全程用时"..used_time.."秒.")
	end
	
	SynChaKitbag(character,13)
	return LUA_TRUE
end

------------------判断是否转生过
function CheckZS( character )
	local Zs_Exp = GetChaAttr ( character , ATTR_CSAILEXP )
	if Zs_Exp < 1 then
		return LUA_FALSE
	end

	return LUA_TRUE

end

--判断荣誉值是否小于某个值
function LessCredit( character, p1, value )
	local ret = LessYongYuZhi( character, p1, value )
	if ret == LUA_TRUE then
		return LUA_TRUE
	end
	
	return LUA_FALSE
end
------------------检测道具上编号是否相同
function CheckItem( character, itemid1, itemid2 )
	if itemid1 == nil or itemid2 == nil then
		PRINT( "CheckItem:参数错误！" )
		return LUA_ERROR
	end
	local item1=GetItemP(character,2)
	local item2=GetItemP(character,3)
	local itemida=GetItemID( item1 )
	local itemidb=GetItemID( item2 )
	local itemid1_number=GetItemAttr ( item1 , ITEMATTR_VAL_STR )
	local itemid2_number=GetItemAttr ( item2 , ITEMATTR_VAL_STR )
		
		
	if itemid1_number~=itemid2_number or itemida~=2902  or itemidb~=2903 then
	SystemNotice( character, "情缘编码不一致或者没有放在对应的背包格" )
		return LUA_FALSE	
	end
	return LUA_TRUE
end

function CheckBag( character, itemid, value1, value2)-----------value1===位置，value2===数量
	local cha = ChaIsBoat ( character ) 
	if cha ==1 then
		--SystemNotice( character ,"请您上岸接任务")
		return LUA_TRUE 
	end	
	if itemid== nil or value1== nil or value2== nil then
		PRINT( "CheckBag:参数错误！" )
		return LUA_ERROR
	end
	local item=GetItemP(character,value1)
	local itemida=GetItemID( item )
	local i = CheckBagItem( character, itemid )			---取数量
	local item_name=GetItemName ( itemid )
	local item_pos=value1+1
	if itemid~=itemida or i~=value2 then
		SystemNotice( character, "请确认背包第"..item_pos.."个位置至少有"..value2.."个"..item_name )
		return LUA_FALSE	
	end
	return LUA_TRUE
end

function CheckBagEmp( character,value)-----------value===位置
	if value==nil then
		PRINT( "CheckBagEmp:参数错误！" )
		return LUA_ERROR
	end
	local item=GetItemP(character,value)
	local itemid=GetItemID( item )
	local item_pos=value+1
	local cha = ChaIsBoat ( character ) 
	if cha ==1 then
		SystemNotice( character, "想要挑战吉尼斯的朋友可以去(2217,2911)找海云,并将背包第"..item_pos.."个位置的道具移开，水里的朋友请首先到岸上来")
		return LUA_FALSE 
	end	
	if itemid~=0 then
		SystemNotice( character, "想要挑战吉尼斯的朋友可以去(2217,2911)找海云,并将背包第"..item_pos.."个位置的道具移开，水里的朋友请首先到岸上来")
		return LUA_FALSE	
	end
	return LUA_TRUE
end
--清除PK荣誉值
function AddCredit( character, value )
	local ret = AddYongYuZhi( character, value )
	if ret == LUA_TRUE then
		return LUA_TRUE
	end
	
	return LUA_FALSE
end

--检测钱不足
function NoMoney( character, money )
	PRINT( "NoMoney:HasMoney" )
	local ret = HasMoney( character, money )
	PRINT( "NoMoney:HasMoney return ret = ", ret )
	if ret ~= LUA_TRUE then
		return LUA_TRUE
	end
	return LUA_FALSE
end

--检查是否符合转职条件
function CheckConvertProfession( character, newpf )
	if newpf == nil then
		PRINT( "CheckConvertProfession:函数参数错误！" )
		SystemNotice( character, "CheckConvertProfession:函数参数错误！" )
		return LUA_ERROR
	end
	
	--取得角色职业和类型
	local ret, cat, pf = GetCatAndPf( character )
	PRINT( "CheckConvertProfession: GetCatAndPf: ret =, pf = , newpf = , cat = , Profession = ", ret, pf, newpf, cat, Profession )
	--判断是否新手，新手没有转职限制
	if pf ~= 0 then	
		--检测是否有转职限制
		if Profession ~= nil and Profession[pf] ~= nil then
			local flag = 0
			PRINT( "CheckConvertProfession: pf count = ", Profession[pf].count )
			for n = 1, Profession[pf].count, 1 do
				PRINT( "CheckConvertProfession: n =, newpf = , pf = ", n, newpf, Profession[pf][n] )
				if Profession[pf][n] == newpf then
					--该职业允许转职
					flag = 1
					break
				end
			end
			
			--判断是否可以转职
			if flag ~= 1 then
				PRINT( "CheckConvertProfession: return false" )
				return LUA_FALSE
			end
		else
			PRINT( "CheckConvertProfession: return false fo Profession[pf] == nil " )
			return LUA_FALSE
		end
	end
	
	PRINT( "CheckConvertProfession: Category check cat =, newpf = ", cat, newpf )
	--检测是否有体形限制
	if Category ~= nil and Category[cat] ~= nil then
		local flag = 0
		for n = 1, Category[cat].count, 1 do
			PRINT( "CheckConvertProfession:n = , newpf = , catpf = ", n, newpf, Category[cat][n] )
			if Category[cat][n] == newpf then
				PRINT( "CheckConvertProfession: return false" )
				flag = 1
				break
			end
		end
		
		if flag ~= 1 then
			PRINT( "CheckConvertProfession: return false" )
			return LUA_FALSE
		end
	else
		PRINT( "CheckConvertProfession: return false fo Category[cat] == nil " )
	end
	
	PRINT( "CheckConvertProfession: return true" )
	return LUA_TRUE
end

--中断任务
function CancelMission( character, id, sid )
	PRINT( "CancelMission, sid = ", sid )
	if sid == nil or Mission[sid] == nil then
		PRINT( "CancelMission:中断任务函数参数不能为空！sid = "..sid )
		SystemNotice( character, "CancelMission:中断任务函数参数不能为空！sid = "..sid )
		LG( "mission_error", "CancelMission:中断任务函数参数不能为空！sid = "..sid )
		local ret = ClearMission( character, id )
		if ret ~= LUA_TRUE then
			LG( "mission_error", "CancelMission:清除角色该任务信息失败！charname = , id = , sid = ", GetCharName( character ), id, sid )
		else
			SystemNotice( character, "已经清除了无效任务信息！ID = "..sid )
			LG( "mission_error", "CancelMission:清除角色该任务信息成功！charname = , id = , sid = ", GetCharName( character ), id, sid )
		end
		
		return LUA_FALSE
	end
	
	local mission = Mission[sid]
	
	PRINT( "CancelMission:mission.cancel", mission.cancel )
	if mission.tp == NOMAL_MISSION or mission.tp == WORLD_MISSION then
		if mission.cancel == nil then
			PRINT( "CancelMission:该任务没有取消操作，返回true" )
			return LUA_TRUE
		end
	
		local ret = NpcCancelTrigger( character,  mission.cancel, mission.id, mission.sid )
		if ret ~= LUA_TRUE then
			PRINT( "CancelMission:NpcCancelTrigger接受任务触发器处理失败！" )
			SystemNotice( character, "CancelMission:NpcCancelTrigger接受任务触发器处理失败！" )
			return LUA_FALSE
		end
		PRINT( "CancelMission: NpcTrigger, return true" ) 
	elseif mission.tp == RAND_MISSION then
		--初始化全局随机任务参数
		InitRandParam()
		
		--获取角色的随机任务配置信息
		PRINT( "CancelMission:GetRandMission, id = ", id  )
		local ret
		RandParam.id = id
		ret, RandParam.tp, RandParam.level, RandParam.exp, RandParam.money, RandParam.prizedata, RandParam.prizetp, RandParam.numdata = GetRandMission( character, id )
		if ret ~= LUA_TRUE then
			PRINT( "CancelMission:GetRandMission error." )
			SystemNotice( character, "CancelMission:GetRandMission error." )
			return LUA_FALSE
		end
		PRINT( "CancelMission:tp, level, exp, money, item, numdata",  RandParam.tp, RandParam.level, RandParam.exp, RandParam.money, RandParam.prizedata, RandParam.prizetp, RandParam.numdata )
		
		local index = GetRandMissionTypeIndex( mission, RandParam.tp )
		PRINT( "CancelMission:GetRandMissionTypeIndex index = ", index )
		if index == 0  then
			PRINT( "CancelMission:获取随机任务匹配的类型信息失败！" )
			SystemNotice( character, "CancelMission:获取随机任务匹配的类型信息失败！" )
			return LUA_FALSE
		end
	
		if mission.missionlist == nil or mission.missionlist[index] == nil then
			PRINT( "CancelMission:随机任务：任务信息错误！mission.missionlist = , tpindex = ", mission.missionlist, index )
			SystemNotice( character, "CancelMission:随机任务：任务信息错误！mission.missionlist = , tpindex = ", mission.missionlist, index )
			return LUA_FALSE
		end
		
		if mission.missionlist[index].cancel == nil then
			PRINT( "CancelMission:该任务没有取消操作，返回true" )
			return LUA_TRUE
		end
	
		ret = NpcCancelTrigger( character, mission.missionlist[index].cancel, mission.id, mission.sid )
		if ret ~= LUA_TRUE then
			PRINT( "CancelMission:NpcCancelTrigger接受任务触发器处理失败！" )
			SystemNotice( character, "CancelMission:NpcCancelTrigger接受任务触发器处理失败！" )
			return LUA_FALSE
		end
		PRINT( "CancelMission: 随机任务：NpcCancelTrigger, return true" )
	else
		PRINT( "CancelMission:错误的任务类型信息。ID = "..mission.sid )
		SystemNotice( character, "CancelMission:错误的任务类型信息。ID = "..mission.sid )
		return LUA_FALSE
	end
	
	return LUA_TRUE
end

--接受任务
function AcceptMission( character, npc, missionlist, tpindex )
	PRINT( "AcceptMission" )
	local npcid = GetCharID( npc )
	local ret, id, state, tp = GetMissionTempInfo( character, npcid )
	if ret ~= LUA_TRUE then 
		SystemNotice( character, "AcceptMission:获取角色的对话临时任务信息错误！" )
		return LUA_FALSE
	end
	
	local mission
	if tp == WORLD_MISSION then
		if Mission[id] == nil then
			SystemNotice( character, "AcceptMission:获取角色错误的世界任务索引信息！ID = "..id )
			LG( "mission_error", "AcceptMission:获取角色错误的世界任务索引信息！ID = "..id )
			return LUA_FALSE
		end
		mission = Mission[id]
	else
		if missionlist[id] == nil then
			PRINT( "AcceptMission:获取角色错误的一般任务索引信息！ID = "..id )
			SystemNotice( character, "AcceptMission:获取角色错误的一般任务索引信息！ID = "..id )
			LG( "mission_error", "AcceptMission:获取角色错误的一般任务索引信息！ID = "..id )
			return LUA_FALSE
		end
		if missionlist == nil then
			PRINT( "AcceptMission:函数参数错误！missionlist = "..missionlist )
			SystemNotice( character, "AcceptMission:函数参数错误！missionlist = "..missionlist )
			LG( "mission_error", "AcceptMission:函数参数错误！missionlist = "..missionlist )
			return LUA_ERROR
		end
		mission = missionlist[id]
	end
	
	if mission.begin == nil then
		PRINT( "AcceptMission:获取角色错误的任务开始触发器信息！ID = "..id )
		SystemNotice( character, "AcceptMission:获取角色错误的任务开始触发器信息！" )
		LG( "mission_error", "AcceptMission:获取角色错误的任务开始触发器信息！ID = "..id )
		return LUA_FALSE
	end
	
	PRINT( "AcceptMission:npcid = %d ", npcid )
	if mission.tp == NOMAL_MISSION or mission.tp == WORLD_MISSION then
		PRINT( "AcceptMission:空闲背包需求数量:numgrid = ", mission.begin.baggrid )
		local ret = HasLeaveBagGrid( character, mission.begin.baggrid )
		if ret ~= LUA_TRUE then
			PRINT( "AcceptMission:角色接受任务时，背包空闲格子不够！num = ", mission.begin.baggrid )
			BickerNotice( character, "背包剩余容量不足，需要"..mission.begin.baggrid.."个空格，接受任务失败！" )
			return LUA_FALSE
		end
		
		local ret = NpcTrigger( character,  npc, mission.begin, mission.id, mission.sid )
		if ret ~= LUA_TRUE then
			PRINT( "AcceptMission:NpcTrigger接受任务触发器处理失败！" )
			SystemNotice( character, "AcceptMission:NpcTrigger接受任务触发器处理失败！" )
			return LUA_FALSE
		end		
		PRINT( "AcceptMission: NpcTrigger, return true" ) 
	elseif mission.tp == RAND_MISSION then
		if mission.missionlist == nil or mission.missionlist[tpindex] == nil or mission.missionlist[tpindex].begin.baggrid == nil then
			PRINT( "AcceptMission:随机任务：任务信息错误！mission.missionlist = , tpindex = ", mission.missionlist, tpindex )
			SystemNotice( character, "AcceptMission:随机任务：任务信息错误！mission.missionlist = , tpindex = ", mission.missionlist, tpindex )
			return LUA_FALSE
		end
		
		PRINT( "AcceptMission:空闲背包需求数量:numgrid = ", mission.missionlist[tpindex].begin.baggrid )
		local numgrid = mission.missionlist[tpindex].begin.baggrid
		local ret = HasLeaveBagGrid( character, numgrid )
		if ret ~= LUA_TRUE then
			PRINT( "AcceptMission:角色接受任务时，背包空闲格子不够！num = ", numgrid )
			BickerNotice( character, "背包剩余容量不足，需要"..numgrid.."个空格，接受任务失败！" )
			return LUA_FALSE
		end
		
		ret = NpcTrigger( character,  npc, mission.missionlist[tpindex].begin, mission.id, mission.sid )
		if ret ~= LUA_TRUE then
			PRINT( "AcceptMission:NpcTrigger接受任务触发器处理失败！" )
			SystemNotice( character, "AcceptMission:NpcTrigger接受任务触发器处理失败！" )
			return LUA_FALSE
		end
		PRINT( "AcceptMission: 随机任务：NpcTrigger, return true" )
	else
		PRINT( "AcceptMission:错误的任务类型信息。ID = "..mission.sid )
		SystemNotice( character, "AcceptMission:错误的任务类型信息。ID = "..mission.sid )
		return LUA_FALSE
	end

	if tp ~= WORLD_MISSION then
		ret = RefreshMissionState( character, npc )
		if ret ~= LUA_TRUE then
			PRINT( "AcceptMission:随机任务：RefreshMissionState接受任务后重置npc任务状态失败！" )
			SystemNotice( character, "AcceptMission:随机任务：RefreshMissionState接受任务后更换npc任务状态失败！" )
			return LUA_FALSE
		end
	end
	
	return LUA_TRUE
end

--完成任务
function CompleteMission( character, npc, missionlist, selitem, param )
	PRINT( "CompleteMission" )
	if missionlist == nil then
		SystemNotice( character, "CompleteMission:函数参数错误！" )
		return LUA_ERROR
	end
	
	local npcid = GetCharID( npc )
	local ret, id, state, tp = GetMissionTempInfo( character, npcid )
	if ret ~= LUA_TRUE then 
		SystemNotice( character, "CompleteMission:获取角色的对话临时任务信息错误！" )
		return LUA_FALSE
	end

	local mission	
	if tp == WORLD_MISSION then
		if Mission[id] == nil then
			SystemNotice( character, "CompleteMission:获取角色错误的世界任务索引信息！ID = "..id )
			LG( "mission_error", "CompleteMission:获取角色错误的世界任务索引信息！ID = "..id )
			return LUA_FALSE
		end
		mission = Mission[id]
	else		
		if missionlist[id] == nil then
			SystemNotice( character, "CompleteMission:获取角色错误的一般任务索引信息！ID = "..id )
			LG( "mission_error", "CompleteMission:获取角色错误的一般任务索引信息！ID = "..id )
			return LUA_FALSE
		end
		mission = missionlist[id]
	end
	
	local ret = HasMisssionFailure( character, mission.id )
	if ret == LUA_TRUE then
		BickerNotice( character, "任务“"..mission.name.."”已经失败，请选择放弃操作来清除该任务日志！" )
		return LUA_TRUE
	end
	
	if mission.tp == NOMAL_MISSION or mission.tp == WORLD_MISSION then
		PRINT( "CompleteMission:空闲背包需求数量:numgrid = ", mission.result.baggrid )
		local ret = HasLeaveBagGrid( character, mission.result.baggrid )
		if ret ~= LUA_TRUE then
			PRINT( "CompleteMission:角色完成任务时，背包空闲格子不够！num = ", mission.result.baggrid )
			BickerNotice( character, "背包剩余容量不足，需要"..mission.result.baggrid.."个空格，完成任务失败！" )
			return LUA_FALSE
		end
		
		local ret = NpcTrigger( character,  npc, mission.result, mission.id, mission.sid )
		if ret ~= LUA_TRUE then
			PRINT( "CompleteMission:NpcTrigger函数处理交付任务触发器失败！" )
			SystemNotice( character, "CompleteMission:NpcTrigger函数处理交付任务触发器失败！" )
			return LUA_FALSE
		end
		
		PRINT( "CompleteMission:prize count = "..mission.prize.count )
		if mission.prize.count > 0 then
			local ret = MisPrizeProc( character, npc, mission, selitem, param )
			if ret ~= LUA_TRUE then
				PRINT( "CompleteMission:MisPrizeProc函数处理任务奖励失败！" )
				SystemNotice( character, "CompleteMission:MisPrizeProc函数处理任务奖励失败！" )
			end
		end
	elseif mission.tp == RAND_MISSION then
		local ret, index, loopdata = GetCharRandMission( character, mission.id, mission )
		if ret ~= LUA_TRUE or index == 0 then
			--根据随机任务参数生成随机任务信息错误
			PRINT( "CompleteMission:GetcharRandMission,根据随机任务参数生成随机任务信息错误!" )
			SystemNotice( character, "CompleteMission:GetcharRandMission,根据随机任务参数生成随机任务信息错误!" )
			return LUA_FALSE
		end
		
		PRINT( "CompleteMission:空闲背包需求数量:numgrid = ", mission.missionlist[index].result.baggrid )
		local numgrid = mission.missionlist[index].result.baggrid
		local ret = HasLeaveBagGrid( character, numgrid )
		if ret ~= LUA_TRUE then
			PRINT( "CompleteMission:角色接受任务时，背包空闲格子不够！num = ", numgrid )
			BickerNotice( character, "背包剩余容量不足，需要"..numgrid.."个空格，完成任务失败！" )
			return LUA_FALSE
		end
		
		local ret = NpcTrigger( character,  npc, mission.missionlist[index].result, mission.id, mission.sid )
		if ret ~= LUA_TRUE then
			PRINT( "CompleteMission:随机任务：NpcTrigger函数处理交付任务触发器失败！" )
			SystemNotice( character, "CompleteMission:随机任务：NpcTrigger函数处理交付任务触发器失败！" )
			return LUA_FALSE
		end
		
		PRINT( "CompleteMission:prize count = "..mission.missionlist[index].prize.count )
		if mission.missionlist[index].prize.count > 0 then
			local ret = MisPrizeProc( character, npc, mission.missionlist[index], selitem, param )
			if ret ~= LUA_TRUE then
				PRINT( "CompleteMission:MisPrizeProc函数处理任务奖励失败！" )
				SystemNotice( character, "CompleteMission:MisPrizeProc函数处理任务奖励失败！" )
			end
		end
		
		PRINT( "CompleteMission:CompleteRandMission, id = ", mission.id )
		ret = CompleteRandMissionCount( character, mission.id )
		if ret ~= LUA_TRUE then
			PRINT( "CompleteRandMission:随机任务完成完成计数函数调用失败：misid = ", mission.id )
			LG( "randmission_error", "CompleteRandMission:随机任务完成完成计数函数调用失败：misid = ", mission.id )
		end
		
		--判断是否跑环结束
		local ret, loopnum = GetRandMissionNum( character, mission.id )
		if ret ~= LUA_TRUE then
			PRINT( "CompleteRandMission:GetRandMissionNum函数调用失败，获取不到角色随机任务的环计数！id = ", id )
			LG( "randmission_error", "CompleteRandMission:GetRandMissionNum函数调用失败，获取不到角色随机任务的环计数！id = ", id )
			SystemNotice( character, "CompleteRandMission:GetRandMissionNum函数调用失败，获取不到角色随机任务的环计数！id = "..id )
			--清除该角色该随机任务计数
			ResetRandMissionNum( character, mission.id )
		else
			loopnum = loopnum + 1 --转换为lua数组索引
			PRINT( "CompleteRandMission:loopnum, loopinfo", loopnum, mission.loopinfo[loopnum] )
			
			if loopdata == nil or mission.loopinfo[loopnum] == nil then
				PRINT( "CompleteRandMission:任务环数据错误！loopnum = "..loopnum.." id = "..mission.id.." loopdata = "..loopdata )
				LG( "randmission_error", "CompleteRandMission:任务环数据错误！loopnum = "..loopnum.." id = "..mission.id.." loopdata = "..loopdata )
				SystemNotice( character, "CompleteRandMission:任务环数据错误！loopnum = "..loopnum.." id = "..mission.id.." loopdata = "..loopdata )
				ResetRandMissionNum( character, mission.id )
				return LUA_FALSE
			end
			
			local ret = HasRandMissionCount( character, mission.id, mission.loopinfo[loopnum].num )
			if ret == LUA_TRUE then
				--清除该环任务计数，同时环计数增加
				ret = AddRandMissionNum( character, mission.id )
				if ret ~= LUA_TRUE then
					PRINT( "CompleteRandMission:AddRandMissionNum重设任务环计数失败！id = ", mission.id  )
					LG( "randmission_error", "CompleteRandMission:AddRandMissionNum重设任务环计数失败！id ", mission.id )
					SystemNotice( character, "CompleteRandMission:AddRandMissionNum重设任务环计数失败！id = "..mission.id )
					return LUA_FALSE
				end
				if loopdata[loopnum + 1] == nil then
					--清除该随机任务计数因为已经跑环完毕,任务计数从头开始
					PRINT( "CompleteRandMission:ResetRandMissionNum:任务跑环结束!" )
					ResetRandMissionNum( character, mission.id )
					SystemNotice( character, "该任务跑环结束!" )
				end
			end
		end
		
	else
		PRINT( "CompleteMission:参数任务类型未知，无效！" )
		SystemNotice( character, "CompleteMission:参数任务类型未知，无效！" )
		return LUA_FALSE
	end
	
	if tp ~= WORLD_MISSION then
		PRINT( "CompleteMission:ResetMissionState" )
		ret = RefreshMissionState( character, npc )
		if ret ~= LUA_TRUE then
			PRINT( "CompleteMission:RefreshMissionState交付任务后重置npc任务状态失败！" )
			SystemNotice( character, "CompleteMission:RefreshMissionState交付任务后更换npc任务状态失败！" )
			return LUA_FALSE
		end
	end
	
	PRINT( "CompleteMission: return true" )
	return LUA_TRUE
end

--选择任务列表
function SelMissionList( character, npc, selindex, missionlist )
	local npcid = GetCharID( npc )
	local ret, id, state = GetMissionInfo( character, npcid, selindex )
	if ret ~= LUA_TRUE then
		PRINT( "SelMissionList:获取任务信息失败！" )
		return SystemNotice( character, "MissionProc:获取任务信息失败！" )
	end
	
	PRINT( "SelMissionList:id = %d, state = %d", id, state )
	if missionlist[id] == nil then
		PRINT( "SelMissionList:服务器没有请求的任务信息错误！" )
		return SystemNotice( character, "MissionProc:服务器没有请求的任务信息错误！" )
	end
	
	ret = SetMissionTempInfo( character, npcid, id, state, missionlist[id].tp )
	if ret ~= LUA_TRUE then
		PRINT( "SelMissionList:设置任务临时数据信息失败！" )
		return SystemNotice( character, "MissionProc:设置任务临时数据信息失败！" )
	end
	
	if missionlist[id].tp == NOMAL_MISSION then
		PRINT( "SelMissioinList:NomalMission type" )
		--根据任务状态发送任务的不同信息
		if state == MIS_DELIVERY then
			return SendDeliveryPage( character, npcid, missionlist[id], missionlist[id].id )
		elseif state == MIS_ACCEPT then
			return SendAcceptPage( character, npcid, missionlist[id], missionlist[id].id )
		elseif state == MIS_PENDING then
			return SendPendingPage( character, npcid, missionlist[id], missionlist[id].id )
		else
			PRINT( "SelMissionList:错误类型的任务状态信息！" )
			return SystemNotice( character, "SelMissionList:错误类型的任务状态信息！" )
		end
	elseif missionlist[id].tp == RAND_MISSION then
		PRINT( "SelMissioinList:RandMission type" )
		--判断是否已经接受了该随机任务，如果接受了则是来还任务得
		ret = HasRandMission( character, missionlist[id].id )
		if ret ~= LUA_TRUE then			
			--随机任务在选择时就已经产生并且玩家接受任务
			local ret = IsMissionFull( character )
			if ret == LUA_TRUE then
				return SystemNotice( character, "你的随机任务栏位已满不可以再接任务，你可以取消一个任务，获得一个栏位来接该任务！" )
			end
			
			local ret = NpcTriggerCheck( character, missionlist[id].begin )
			if ret ~= LUA_TRUE then
				PRINT( "SelMissionList:NpcTriggerCheck接受随机任务条件触发器处理失败！" )
				SystemNotice( character, "SelMissionList:NpcTriggerCheck接受随机任务条件触发器处理失败！" )
				return LUA_FALSE
			end
		
			PRINT( "SelMissionList:missionlist[id] = , id = ", missionlist[id], id )
			local ret, index = CreateRandMission( character, npc, missionlist[id] )
			if ret ~= LUA_TRUE then
				if index ~= nil then
					-- 表明背包容量不足
					return LUA_TRUE
				end
				
				PRINT( "SelMissionList:CreateRandMission,生成随机任务失败！" )
				return LUA_FALSE
			end
			
			ret = AcceptMission( character, npc, missionlist, index )
			if ret ~= LUA_TRUE then
				PRINT( "SelMissionList:AcceptMission:接受任务失败！" )
				SystemNotice( character, "SelMissionList:AcceptMission:接受任务失败！" )
				return LUA_FALSE
			end
			
			--发送随机任务的交付页面信息
			local ret, randid, state = GetMissionInfo( character, npcid, selindex )
			if ret ~= LUA_TRUE or id ~= randid then
				ret, state = GetCharMission( character, npcid, id )
				if ret ~= LUA_TRUE then
					PRINT( "SelMissionList:GetCharMission获取任务信息失败！" )
					return SystemNotice( character, "MissionProc:GetCharMission获取任务信息失败！" )
				end
			end
			
			--if state == MIS_PENDING then
				PRINT( "SelMissionList:SendPendingPage, index =, mission = ", index, missionlist[id].missionlist[index] )
				return SendPendingPage( character, npcid, missionlist[id].missionlist[index], missionlist[id].id )
			--elseif state == MIS_DELIVERY then
				--PRINT( "SelMissionList:SendDeliveryPage, index = , mission = ", index, missionlist[id].missionlist[index] )
				--return SendDeliveryPage( character, npcid, missionlist[id].missionlist[index], missionlist[id].id )
			--else
				--PRINT( "SelMissionList:随机任务接受时应为PENDING or DELIVERY状态，但是检测出状态不对。state = "..state )
				--return SystemNotice( character, "SelMissionList:随机任务接受时应为PENDING or DELIVERY状态，但是检测出状态不对。state = "..state )
			--end
		else
			local ret, index = GetCharRandMission( character, missionlist[id].id, missionlist[id] )
			if ret ~= LUA_TRUE or index == 0 then
				--根据随机任务参数生成随机任务信息错误
				PRINT( "SelMissionList:GetcharRandMission,根据随机任务参数生成随机任务信息错误!" )
				return SystemNotice( character, "SelMissionList:GetcharRandMission,根据随机任务参数生成随机任务信息错误!" )
			end
			
			if state ~= MIS_DELIVERY then
				PRINT( "SelMissionList:SendPendingPage, index =, mission = ", index, missionlist[id].missionlist[index] )
				return SendPendingPage( character, npcid, missionlist[id].missionlist[index], missionlist[id].id )
			end
			
			PRINT( "SelMissionList:SendDeliveryPage, index = , mission = ", index, missionlist[id].missionlist[index] )
			return SendDeliveryPage( character, npcid, missionlist[id].missionlist[index], missionlist[id].id )
		end
		
	else
		PRINT( "SelMissionList:参数任务类型未知，无效！" )
		SystemNotice( character, "SelMissionList:参数任务类型未知，无效！" )
		return LUA_FALSE
	end
	
end

--任务处理
function MissionProc( character, npc, rpk, missionlist )
	if missionlist == nil then
		SystemNotice( character, "MissionProc:参数错误！" )
		return LUA_FALSE
	end
	
	local byCmd = ReadByte( rpk )
	if byCmd == MIS_SEL then
		local selindex = ReadByte( rpk )
		return SelMissionList( character, npc, selindex, missionlist )
	elseif byCmd == MIS_BTNACCEPT then
		local ret = IsMissionFull( character )
		if ret == LUA_TRUE then
			return BickerNotice( character, "任务栏位已满，接受任务失败！" )
		end
		return AcceptMission( character, npc, missionlist )
	elseif byCmd == MIS_BTNDELIVERY then
		local byParam1 = ReadByte( rpk )
		local byParam2 = ReadByte( rpk )
		local ret = CompleteMission( character, npc, missionlist, byParam1, byParam2 )
		--if ret == LUA_TRUE then
			--完成任务后继续下一个任务
			--local npcid = GetCharID( npc )
			--local ret, index, id, state = GetNextMission( character, npcid )
			--PRINT( "MissionProc:GetNextMission: ret, index, id, state", ret, index, id, state )
			--if ret == LUA_TRUE then
				--PRINT( "MissionProc:SelMissionList" )
				--return SelMissionList( character, npc, index, missionlist )
			--end
		--end
	--elseif byCmd == MIS_BTNPENDING then
	--elseif byCmd == MIS_TALK then
	else
		PRINT( "MissionProc:错误的任务页命令类型！" )
		return SystemNotice( character, "MissionProc:错误的任务页命令类型！" )
	end
end

--查询任务日志信息
function MissionLog( character, sid )
	PRINT( "MissionLog" )
	if sid == nil  or Mission[sid] == nil then
		PRINT( "MissionLog:未发现任务脚本信息，sid = "..sid )		
		LG( "mission_error", "MissionLog:未发现任务脚本信息，sid = "..sid )
		SystemNotice( character, "MissionLog:未发现任务脚本信息，sid = "..sid )
		return
	end
	
	if Mission[sid].tp == NOMAL_MISSION or Mission[sid].tp == WORLD_MISSION then
		SendMissionLog( character, Mission[sid], Mission[sid].id, Mission[sid].name )
	elseif Mission[sid].tp == RAND_MISSION then
		local ret, index, loopdata = GetCharRandMission( character, Mission[sid].id, Mission[sid] )
		if ret ~= LUA_TRUE or index == 0 then
			--根据随机任务参数生成随机任务信息错误
			PRINT( "MissionLog:GetcharRandMission,根据随机任务参数生成随机任务信息错误!" )
			SystemNotice( character, "MissionLog:GetcharRandMission,根据随机任务参数生成随机任务信息错误!" )
			return
		end
		
		PRINT( "MissionLog:SendMissionLog, index = , mission = ", index, Mission[sid].missionlist[index] )
		SendMissionLog( character, Mission[sid].missionlist[index], Mission[sid].id, Mission[sid].name )
	else
		PRINT( "MissionLog:参数任务类型未知，无效！ID = "..sid )
		SystemNotice( character, "SelMissionList:参数任务类型未知，无效！ID = "..sid )		
	end
end

--发送任务日志信息
function SendMissionLog( character, mission, id, name )
	PRINT( "SendMissionLog" )
	if id == nil or mission == nil then
		return SystemNotice( character, "未发现该任务日志信息，ID = "..id )		
	end
	
	local packet = GetPacket()
	WriteCmd( packet, CMD_MC_MISLOGINFO )
	WriteWord( packet, id )
	
	--发送任务需求信息
	WriteString( packet, name )
	PRINT( "SendMissionLog:misname = ", name )
	WriteByte( packet, mission.need.count )
	PRINT( "SendMissionLog:need count = "..mission.need.count )
	for n = 1, mission.need.count, 1 do
		PRINT( "SendMissionLog:need n = , tp, p1, p2, p3 ", n, mission.need[n].tp, mission.need[n].p1, mission.need[n].p2, mission.need[n].p3 )
		WriteByte( packet, mission.need[n].tp )
		if mission.need[n].tp == MIS_NEED_ITEM then
			WriteWord( packet, mission.need[n].p1 )
			WriteWord( packet, mission.need[n].p2 )
			--获取任务需求完成计数
			local ret, num = GetNeedItemCount( character, id, mission.need[n].p1 )
			PRINT( "SendMissionLog:GetNeedItemCount, num = ", num )
			if ret ~= LUA_TRUE then
				PRINT( "SendMissionLog:GetNeedItemCount,error。misid = , itemid = , num = ", id, mission.need[n].p1, mission.need[n].p2 )
				SystemNotice( character, "SendMissionLog:GetNeedItemCount,error。" )
				LG( "mislog_error", "SendMissionLog:GetNeedItemCount,error。misid = , itemid = , num = ", id, mission.need[n].p1, mission.need[n].p2 )
				num = 0
			end
			WriteByte( packet, num )
		elseif mission.need[n].tp == MIS_NEED_KILL then
			WriteWord( packet, mission.need[n].p1 )
			WriteWord( packet, mission.need[n].p2 )
			--获取任务需求完成计数
			PRINT( "SendMissionLog:GetNumFlag:GetNumFalg, id, p1, p2", id, mission.need[n].p3, mission.need[n].p2 )
			WriteByte( packet, GetNumFlag( character, id, mission.need[n].p3, mission.need[n].p2 ) )	
		elseif mission.need[n].tp == MIS_NEED_DESP then
			WriteString( packet, mission.need[n].p1 )
		else
			PRINT( "SendMissionLog:未知的任务需求类型！mission id = ", id )
			SystemNotice( character, "SendMissionLog:未知的任务需求类型！mission id = ", id )
			return
		end
	end
	
	--发送任务奖励信息
	WriteByte( packet, mission.prize.seltp )
	WriteByte( packet, mission.prize.count )
	PRINT( "SendMissionLog:prize count = , seltype =", mission.prize.count, mission.prize.seltp )
	for i = 1, mission.prize.count, 1 do
		PRINT( "SendMissionLog:prize i = , tp, p1, p2 ", i, mission.prize[i].tp, mission.prize[i].p1, mission.prize[i].p2 )
		WriteByte( packet, mission.prize[i].tp )
		WriteWord( packet, mission.prize[i].p1 )
		WriteWord( packet, mission.prize[i].p2 )
	end
	
	--发送任务描述信息
	PRINT( "SendMissionLog:begin talk = "..mission.begin.talk )
	WriteString( packet, mission.begin.talk )
	SendPacket( character, packet )
end

--发送任务交付页信息
function SendDeliveryPage( character, npcid, mission, id )
	PRINT( "SendDeliveryPage" )

	--发送报文信息
	local packet = GetPacket()
	WriteCmd( packet, CMD_MC_MISPAGE )
	WriteByte( packet, MIS_BTNDELIVERY )
	WriteDword( packet, npcid )	
	WriteString( packet, mission.name )
	PRINT( "SenddeliveryPage:missionname = ", mission.name )
	PRINT( "SendDeliveryPage:need = ", mission.need )
	
	--发送任务需求信息
	--完成任务页不发送任务需求消息
	WriteByte( packet, 0 )
	--WriteByte( packet, mission.need.count )
	--PRINT( "SendDeliveryPage:need count = "..mission.need.count )
	--for n = 1, mission.need.count, 1 do
		--PRINT( "SendDeliveryPage:need n = , tp, p1, p2, p3 ", n, mission.need[n].tp, mission.need[n].p1, mission.need[n].p2, mission.need[n].p3 )
		--WriteByte( packet, mission.need[n].tp )
		--if mission.need[n].tp == MIS_NEED_ITEM then
			--WriteWord( packet, mission.need[n].p1 )
			--WriteWord( packet, mission.need[n].p2 )
			----获取任务需求完成计数
			--local ret, num = GetNeedItemCount( character, id, mission.need[n].p1 )
			--PRINT( "SendDeliveryPage:GetNeedItemCount, num = ", num )
			--if ret ~= LUA_TRUE then
				--PRINT( "SendDeliveryPage:GetNeedItemCount,error。itemid = , num = ", mission.need[n].p1, mission.need[n].p2 )
				--SystemNotice( character, "SendDeliveryPage:GetNeedItemCount,error。" )
				--LG( "mislog_error", "SendDeliveryPage:GetNeedItemCount,error。itemid = , num = ", mission.need[n].p1, mission.need[n].p2 )
				--num = 0
			--end
			--WriteByte( packet, num )
		--elseif mission.need[n].tp == MIS_NEED_KILL then
			--WriteWord( packet, mission.need[n].p1 )
			--WriteWord( packet, mission.need[n].p2 )
			----获取任务需求完成计数
			--PRINT( "SendDeliveryPage:GetNumFlag:GetNumFalg, id, p1, p2", id, mission.need[n].p3, mission.need[n].p2 )
			--WriteByte( packet, GetNumFlag( character, id, mission.need[n].p3, mission.need[n].p2 ) )	
		--elseif mission.need[n].tp == MIS_NEED_DESP then
			--WriteString( packet, mission.need[n].p1 )
		--else
			--PRINT( "SendDeliveryPage:未知的任务需求类型！mission id = ", id )
			--SystemNotice( character, "SendDeliveryPage:未知的任务需求类型！mission id = ", id )
			--return
		--end
	--end
	
	--发送任务奖励信息
	WriteByte( packet, mission.prize.seltp )
	WriteByte( packet, mission.prize.count )
	PRINT( "SendDeliveryPage:prize count = , seltype =", mission.prize.count, mission.prize.seltp )
	for i = 1, mission.prize.count, 1 do
		PRINT( "SendDeliveryPage:prize i = , tp, p1, p2 ", i, mission.prize[i].tp, mission.prize[i].p1, mission.prize[i].p2 )
		WriteByte( packet, mission.prize[i].tp )
		WriteWord( packet, mission.prize[i].p1 )
		WriteWord( packet, mission.prize[i].p2 )
		--WriteWord( packet, mission.prize[i].p3 )
		--WriteWord( packet, mission.prize[i].p4 )
	end
	
	--发送任务描述信息
	PRINT( "SendDeliveryPage:result talk = "..mission.result.talk )
	WriteString( packet, mission.result.talk )
	SendPacket( character, packet )
end

--发送一个任务给角色
function GiveMission( character, id )
	if id == nil or Mission[id] == nil then
		PRINT( "GiveMission:无效的任务! ID = "..id )
		LG( "mission_error", "GiveMission:无效的任务! ID = "..id )
		SystemNotice( character, "GiveMission:无效的任务! ID = "..id )
		return LUA_FALSE
	end
	
	local ret, npc = GetEudemon()
	if ret ~= LUA_TRUE then
		PRINT( "GetEudemon:函数调用失败！" )
		SystemNotice( character, "GetEudemon:函数调用失败！" )
		return LUA_FALSE
	end
	
	local npcid = GetCharID( npc )
	PRINT( "GiveMission: npcid, id, mistp", npcid, id, Mission[id].tp )
	ret = SetMissionTempInfo( character, npcid, id, MIS_ACCEPT, Mission[id].tp )
	if ret ~= LUA_TRUE then 
		PRINT( "SelMissionList:设置任务临时数据信息失败！" )
		SystemNotice( character, "MissionProc:设置任务临时数据信息失败！" )
		return LUA_FALSE
	end
	
	SendAcceptPage( character, npcid, Mission[id], Mission[id].id )
	return LUA_TRUE
end

--强制交付一个任务
function ObligeCompleteMission( character, id )
	if id == nil or Mission[id] == nil then
		PRINT( "ObligeCompleteMission:无效的任务! ID = "..id )
		LG( "mission_error", "ObligeCompleteMission:无效的任务! ID = "..id )
		SystemNotice( character, "ObligeCompleteMission:无效的任务! ID = "..id )
		return LUA_FALSE
	end
	
	local ret, npc = GetEudemon()
	if ret ~= LUA_TRUE then
		PRINT( "ObligeCompleteMission:GetEudemon:函数调用失败！" )
		SystemNotice( character, "ObligeCompleteMission:GetEudemon:函数调用失败！" )
		return LUA_FALSE
	end
	
	local npcid = GetCharID( npc )
	PRINT( "ObligeCompleteMission: npcid, id, mistp", npcid, id, Mission[id].tp )
	ret = SetMissionTempInfo( character, npcid, id, MIS_ACCEPT, Mission[id].tp )
	if ret ~= LUA_TRUE then
		PRINT( "ObligeCompleteMission:SetMissionTempInfo:设置任务临时数据信息失败！" )
		SystemNotice( character, "ObligeCompleteMission:SetMissionTempInfo:设置任务临时数据信息失败！" )
		return LUA_FALSE
	end
	
	ret = CompleteMission( character, npc )
	if ret ~= LUA_TRUE then
		SystemNotice( "ObligeCompleteMission:CompleteMission:强制角色接受完成失败！" )
		LG( "mission_error", "ObligeCompleteMission:CompleteMission:强制角色完成任务失败！" )
		return LUA_FALSE
	end
	
	--SendPendingPage( character, npcid, Mission[id], Mission[id].id )
	BickerNotice( character, "任务“"..Mission[id].name.."”已经成功完成交付！" )
	return LUA_TRUE
end

--强制接受一个任务
function ObligeAcceptMission( character, id )
	if id == nil or Mission[id] == nil then
		PRINT( "ObligeMission:无效的任务! ID = "..id )
		LG( "mission_error", "ObligeMission:无效的任务! ID = "..id )
		SystemNotice( character, "ObligeMission:无效的任务! ID = "..id )
		return LUA_FALSE
	end
	
	local ret, npc = GetEudemon()
	if ret ~= LUA_TRUE then
		PRINT( "ObligeMission:GetEudemon:函数调用失败！" )
		SystemNotice( character, "ObligeMission:GetEudemon:函数调用失败！" )
		return LUA_FALSE
	end
	
	ret = IsMissionFull( character )
	if ret == LUA_TRUE then
		SystemNotice( character, "你的任务列表已满，如果你要接新的任务，必须取消或者完成一个已接的任务，得到一个空闲的任务记录列表！" )
		return LUA_TRUE
	end

	local npcid = GetCharID( npc )
	PRINT( "ObligeMission: npcid, id, mistp", npcid, id, Mission[id].tp )
	ret = SetMissionTempInfo( character, npcid, id, MIS_ACCEPT, Mission[id].tp )
	if ret ~= LUA_TRUE then
		PRINT( "ObligeMission:设置任务临时数据信息失败！" )
		SystemNotice( character, "ObligeMission:设置任务临时数据信息失败！" )
		return LUA_FALSE
	end
	
	ret = AcceptMission( character, npc )
	if ret ~= LUA_TRUE then
		SystemNotice( "ObligeMission:AcceptMission:强制角色接受任务失败！" )
		LG( "mission_error", "ObligeMission:AcceptMission:强制角色接受任务失败！" )
		return LUA_FALSE
	end
	
	SendPendingPage( character, npcid, Mission[id], Mission[id].id )
	return LUA_TRUE
end

--发送任务接受页信息
function SendAcceptPage( character, npcid, mission, id )	
	PRINT( "SendAcceptPage" )

	--发送报文信息
	local packet = GetPacket()
	WriteCmd( packet, CMD_MC_MISPAGE )
	WriteByte( packet, MIS_BTNACCEPT )
	WriteDword( packet, npcid )	
	WriteString( packet, mission.name )
	PRINT( "SendAcceptPage: name = ", mission.name )
	
	--发送任务需求信息
	WriteByte( packet, mission.need.count )
	PRINT( "SendAcceptPage:need count = "..mission.need.count )
	for n = 1, mission.need.count, 1 do
		PRINT( "SendAcceptPage:need n = , tp, p1, p2, p3 ", n, mission.need[n].tp, mission.need[n].p1, mission.need[n].p2, mission.need[n].p3 )
		WriteByte( packet, mission.need[n].tp )
		if mission.need[n].tp == MIS_NEED_ITEM or mission.need[n].tp == MIS_NEED_KILL then
			WriteWord( packet, mission.need[n].p1 )
			WriteWord( packet, mission.need[n].p2 )
			--获取任务需求完成计数
			WriteByte( packet, 0 )
		elseif mission.need[n].tp == MIS_NEED_DESP then
			WriteString( packet, mission.need[n].p1 )
		else
			PRINT( "SendAcceptPage:未知的任务需求类型！mission id = ", id )
			SystemNotice( character, "SendAcceptPage:未知的任务需求类型！mission id = ", id )
			return
		end
	end
	
	--发送任务奖励信息
	WriteByte( packet, mission.prize.seltp )
	WriteByte( packet, mission.prize.count )
	PRINT( "SendAcceptPage:prize count = , seltype =", mission.prize.count, mission.prize.seltp )
	for i = 1, mission.prize.count, 1 do
		PRINT( "SendAcceptPage:prize i = , tp, p1, p2 ", i, mission.prize[i].tp, mission.prize[i].p1, mission.prize[i].p2 )
		WriteByte( packet, mission.prize[i].tp )
		WriteWord( packet, mission.prize[i].p1 )
		WriteWord( packet, mission.prize[i].p2 )
		--WriteWord( packet, mission.prize[i].p3 )
		--WriteWord( packet, mission.prize[i].p4 )
	end
	
	--发送任务描述信息
	PRINT( "SendAcceptPage:begin talk = "..mission.begin.talk )
	WriteString( packet, mission.begin.talk )
	SendPacket( character, packet )
end

--发送任务未决页信息
function SendPendingPage( character, npcid, mission, id )
	PRINT( "SendPendingPage" )
	
	--发送报文信息
	local packet = GetPacket()
	WriteCmd( packet, CMD_MC_MISPAGE )
	WriteByte( packet, MIS_BTNPENDING )
	WriteDword( packet, npcid )
	WriteString( packet, mission.name )
	PRINT( "SendPendingPage: name = ", mission.name )
	
	--发送任务需求信息
	WriteByte( packet, mission.need.count )
	PRINT( "SendPendingPage:need count = "..mission.need.count )
	for n = 1, mission.need.count, 1 do
		PRINT( "SendPendingPage:need n = , tp, p1, p2, p3 ", n, mission.need[n].tp, mission.need[n].p1, mission.need[n].p2, mission.need[n].p3 )
		WriteByte( packet, mission.need[n].tp )
		if mission.need[n].tp == MIS_NEED_ITEM then
			WriteWord( packet, mission.need[n].p1 )
			WriteWord( packet, mission.need[n].p2 )
			--获取任务需求完成计数
			local ret, num = GetNeedItemCount( character, id, mission.need[n].p1 )
			PRINT( "SendPendingPage:GetNeedItemCount, num = ", num )
			if ret ~= LUA_TRUE then
				PRINT( "SendPendingPage:GetNeedItemCount,error。itemid = , num = ", mission.need[n].p1, mission.need[n].p2 )
				SystemNotice( character, "SendPendingPage:GetNeedItemCount,error。" )
				num = 0
			end
			WriteByte( packet, num )
		elseif mission.need[n].tp == MIS_NEED_KILL then
			WriteWord( packet, mission.need[n].p1 )
			WriteWord( packet, mission.need[n].p2 )
			--获取任务需求完成计数
			local numflag  = GetNumFlag( character, id, mission.need[n].p3, mission.need[n].p2 )
			PRINT( "SendPendingPage:GetNumFlag, numflag = ", numflag )
			WriteByte( packet, numflag )		
		elseif mission.need[n].tp == MIS_NEED_DESP then
			WriteString( packet, mission.need[n].p1 )
		else
			PRINT( "SendPendingPage:未知的任务需求类型！mission id = ", id )
			SystemNotice( character, "SendPendingPage:未知的任务需求类型！mission id = "..id )
			return
		end
	end
	
	--发送任务奖励信息
	WriteByte( packet, mission.prize.seltp )
	WriteByte( packet, mission.prize.count )
	PRINT( "SendPendingPage:prize count = , seltype =", mission.prize.count, mission.prize.seltp )
	for i = 1, mission.prize.count, 1 do
		PRINT( "SendPendingPage:prize i = , tp, p1, p2 ", i, mission.prize[i].tp, mission.prize[i].p1, mission.prize[i].p2 )
		WriteByte( packet, mission.prize[i].tp )
		WriteWord( packet, mission.prize[i].p1 )
		WriteWord( packet, mission.prize[i].p2 )
		--WriteWord( packet, mission.prize[i].p3 )
		--WriteWord( packet, mission.prize[i].p4 )
	end
	
	--发送任务描述信息
	PRINT( "SendPendingPage:help = ", mission.result.help )
	WriteString( packet, mission.result.help )
	SendPacket( character, packet )
end

--任务奖励操作
function MisPrizeProc( character, npc, mission, selitem, param )
	if mission == nil then
		SystemNotice( character, "MisPrizeProc:参数错误！" )
		return LUA_FALSE
	end
	PRINT( "MisPrizeProc:prize count =, sel type = , selitem = ", mission.prize.count, mission.prize.seltp, selitem )
	if mission.prize.seltp == PRIZE_SELONE then
	--单选
		if selitem == nil then
			SystemNotice( character, "MisPrizeProc:选择参数无效！" )
			return LUA_FALSE
		end
		selitem = selitem + 1
		if selitem > mission.prize.count or mission.prize == nil or mission.prize[selitem] == nil then
			SystemNotice( character, "MisPrizeProc:选择了一个无效的奖励信息索引！" )
			return LUA_FALSE
		end
		if mission.prize[selitem].tp == nil or mission.prize[selitem].p1 == nil or mission.prize[selitem].p2 == nil  then
			SystemNotice( character, "MisPrizeProc:选择的奖励信息无效！请检查！" )
			return LUA_FALSE
		end
		return MisPrizeAction( character, npc, mission.prize[selitem].tp, mission.prize[selitem].p1, mission.prize[selitem].p2, mission.prize[selitem].p3, mission.prize[selitem].p4 )
	elseif mission.prize.seltp == PRIZE_SELALL then 
	--全选
		for n = 1, mission.prize.count, 1 do
			PRINT( "MisPrizeProc: prize n = "..n )
			if mission.prize[n].tp == nil or mission.prize[n].p1 == nil or mission.prize[n].p2 == nil  then
				SystemNotice( character, "MisPrizeProc:选择的奖励信息无效！请检查！" )
				return LUA_FALSE
			end
			local ret = MisPrizeAction( character, npc, mission.prize[n].tp, mission.prize[n].p1, mission.prize[n].p2, mission.prize[n].p3, mission.prize[n].p4 )
			if ret ~= LUA_TRUE then
				return LUA_FALSE
			end
		end
	else
		PRINT( "MisPrizeProc:无效的奖励信息选择数据类型！" )
		SystemNotice( character, "MisPrizeProc:无效的奖励信息选择数据类型！" )
		return LUA_FALSE
	end
	return LUA_TRUE
end

function AddPetExp( character, p1, p2 )
	PRINTF( "AddPetExp: p1 = , p2 = ", p1, p2 )
	if p1 == nil or p2 == nil then
		SystemNotice( character, "AddRMNextFlag:函数参数错误！" )
		return LUA_FALSE
	end
	
	return Give_ElfEXP_MISSION ( character , p1 + Rand( p2 ) )
end

--任务奖励操作
function MisPrizeAction( character, npc, tp, p1, p2, p3, p4 )
	PRINT( "MisPrizeAction:tp, p1, p2, p3, p4", tp, p1, p2, p3, p4 )
	if tp == MIS_PRIZE_ITEM then
		PRINT( "MisPrizeAction:GiveItem, p1 = , p2 = ", p1, p2, p3 )
		local ret = GiveItem( character, npc, p1, p2, p3 )
		if ret ~= LUA_TRUE then
			SystemNotice( character, "MisPrizeAction:GiveItem:函数调用失败！" )
			LG( "mission_error", "MisPrizeAction:GiveItem:函数调用失败！npcname = , tp = , p1 = , p2 =, p3 = ", GetCharName( npc ), tp, p1, p2, p3 )
			return LUA_FALSE
		end
	elseif tp == MIS_PRIZE_MONEY then
		PRINT( "MisPrizeAction:AddMoney, p1 = "..p1 )
		local ret = AddMoney( character, npc, p1 )
		if ret ~= LUA_TRUE then
			SystemNotice( character, "MisPrizeAction:AddMoney:函数调用失败！" )
			LG( "mission_error", "MisPrizeAction:AddMoney:函数调用失败！npcname = , tp = , p1 = , p2  ", GetCharName( npc ), tp, p1, p2 )
			return LUA_FALSE
		end		
	elseif tp == MIS_PRIZE_FAME then
		PRINT( "MisPrizeAction:AddFame, p1 = "..p1 )
		--local ret = AddFame( character, npc, p1 )
		--if ret ~= LUA_TRUE then
			--SystemNotice( character, "MisPrizeAction:AddFame:函数调用失败！" )
			--LG( "mission_error", "MisPrizeAction:AddFame:函数调用失败！npcname = , tp = , p1 = , p2  ", GetCharName( npc ), tp, p1, p2 )
			--return LUA_FALSE
		--end
	elseif tp == MIS_PRIZE_CESS then
		PRINT( "MisPrizeAction:AdjustTradeCess" )
		local ret = AdjustTradeCess( character, p1, p2 )
		if ret ~= LUA_TRUE then
			SystemNotice( character, "MisPrizeAction:AdjustTradeCess:函数调用失败！" )
			LG( "mission_error", "MisPrizeAction:AdjustTradeCess:函数调用失败！npcname = , tp = , p1 = , p2  ", GetCharName( npc ), tp, p1, p2 )
			return LUA_FALSE
		end
	elseif tp == MIS_PRIZE_PETEXP then
		PRINT( "MisPrizeAction:AddPetExp" )
		local ret = AddPetExp( character, p1, p2 )
		if ret ~= LUA_TRUE then
			SystemNotice( character, "MisPrizeAction:AddPetExp:函数调用失败！" )
			LG( "mission_error", "MisPrizeAction:AddPetExp:函数调用失败！npcname = , tp = , p1 = , p2 = ", GetCharName( npc ), tp, p1, p2 )
			return LUA_FALSE
		end
	else
		SystemNotice( character, "MisPrizeAction:无效的奖励类型信息！" )
		return LUA_FALSE
	end
	return LUA_TRUE
end

--任务NPC状态检测
function MissionState( character, npcid, missionlist )
	PRINT( "MissionState" )
	if missionlist == nil then
		SystemNotice( character, "MissionState:Npc任务信息为空！" )
		return LUA_FALSE
	end
	--检测任务状态
	for i = 1, 32, 1 do
		if missionlist[i] == nil then
			break
		end
		local mission = missionlist[i]
		if mission.name == nil or mission.id == nil then
			SystemNotice( character, "MissionState:NPC任务列表中name或者id值不能为空！" )
			return LUA_FALSE
		end
		if mission.tp == NOMAL_MISSION then
			PRINT( "MissionState:nomal mission" )
			--判断角色是否有该任务		
			PRINT( "MissionState:2, ID =", mission.id )		
			local ret = HasMission( character, mission.id )
			PRINT( "MissionState:5" )
			if ret == LUA_TRUE then
				if mission.result == nil then
					SystemNotice( character, "MissionState:任务完成触发器不可为空！" )
				else
					local ret = NpcTriggerCheck( character, mission.result )
					if ret == LUA_TRUE then
						--检测到可以还任务跳出循环检测并记录数据信息
						PRINT( "MissionState:Add state = %d delivery, i = %d", MIS_DELIVERY, i )
						AddMissionState( character, npcid, i, MIS_DELIVERY )
					elseif mission.show ~= COMPLETE_SHOW then
						PRINT( "MissionState:Add state = %d pending, i = %d", MIS_PENDING, i )
						AddMissionState( character, npcid, i, MIS_PENDING )
					end
				end
			else
				PRINT( "MissionState:3" )
				if mission.begin == nil then
					SystemNotice( character, "MissionState:任务开始触发器不可为空！" )
				else
					local ret = NpcTriggerCheck( character, mission.begin )
					if ret == LUA_TRUE then
						--检测到可以接任务记录数据信息
						PRINT( "MissionState:Add state = %d accept, i = %d", MIS_ACCEPT, i )
						AddMissionState( character, npcid, i, MIS_ACCEPT )
					end
				end
			end
		elseif mission.tp == RAND_MISSION then
			PRINT( "MissionState:rand mission, mission.id", mission.id )
			local ret = HasRandMission( character, mission.id )
			if ret == LUA_TRUE then
				--已经接了随机任务，查看他是否可以交付
				PRINT( "MissionState, GetCharRandMission" )
				local ret, index = GetCharRandMission( character, mission.id, mission )
				PRINT( "MissionState:GetCharRandMission, ret =, index =  ", ret, index )
				if ret == LUA_TRUE and index ~= 0 then
					PRINT( "MissionState: proc rand mission" )
					if mission.missionlist[index] == nil or mission.missionlist[index].result == nil then
						SystemNotice( character, "MissionState:随机任务完成触发器不可为空！" )
					else
						PRINT( "MissionState: RandMission, NpcTriggerCheck" )
						ret = NpcTriggerCheck( character, mission.missionlist[index].result )
						if ret == LUA_TRUE then
							--检测到可以还任务跳出循环检测并记录数据信息		
							PRINT( "MissionState:随机任务：Add state = %d delivery, i = %d", MIS_DELIVERY, i )
							AddMissionState( character, npcid, i, MIS_DELIVERY )
						else
							PRINT( "MissionState:随机任务：Add state = %d pending, i = %d", MIS_PENDING, i )
							AddMissionState( character, npcid, i, MIS_PENDING )
						end
					end
				end
			else
				--未接随机任务，看是否可以接
				local ret = IsRandMissionAccept( character, mission )
				if ret == LUA_TRUE then
					ret = NpcTriggerCheck( character, mission.begin )
					if ret == LUA_TRUE then
						PRINT( "MissionState:随机任务：Add state = %d accept, i = %d", MIS_ACCEPT, i )
						AddMissionState( character, npcid, i, MIS_ACCEPT )					
					end
				end
			end
			
		else
			PRINT( "MissionState:mission tp error, mission.tp = ", mission.tp )			
		end
	end
	
	PRINT( "MissionState:return true" )
	return LUA_TRUE
end

--刷新npc任务状态标志信息
function RefreshMissionState( character, npc )
	if character == nil or npc == nil then
		PRINT( "RefreshMissionState: 参数错误！" )
	end
	return ResetMissionState( character, npc )
end

--刷新任务完成状态
function RefreshCompleteFlag( character, sid )
	PRINT( "RefreshCompleteFlag" )
	if sid == nil or Mission[sid] == nil then
		PRINT( "RefreshCompleteFlag:错误的任务脚本ID号，sid = "..sid )
		SystemNotice( character, "RefreshCompleteFlag:错误的任务脚本ID号，sid = "..sid )
		return LUA_FALSE
	end

	local mission
	if Mission[sid].tp == NOMAL_MISSION then
		mission = Mission[sid]
	elseif Mission[sid].tp == RAND_MISSION then
		--已经接了随机任务，查看他是否可以交付
		PRINT( "RefreshCompleteFlag, GetCharRandMission" )
		local ret, index = GetCharRandMission( character, Mission[sid].id, Mission[sid] )
		PRINT( "RefreshCompleteFlag:GetCharRandMission, ret =, index =  ", ret, index )
		if ret == LUA_TRUE and index ~= 0 then
			PRINT( "RefreshCompleteFlag: proc rand mission" )
			if Mission[sid].missionlist[index] == nil or Mission[sid].missionlist[index].result == nil then
				SystemNotice( character, "MissionState:随机任务完成触发器不可为空！" )
				return LUA_FALSE
			end
			mission = Mission[sid].missionlist[index]
		else
			PRINT( "RefreshCompleteFlag:GetCharRandMission:函数调用错误！" )
			return LUA_FALSE
		end
	end
	
	PRINT( "RefreshCompleteFlag:NpcTriggerCheck" )
	local ret = NpcTriggerCheck( character, mission.result )
	if ret == LUA_TRUE then
		--检测到任务完成
		PRINT( "RefreshCompleteFlag:任务已经完成！" )
		--SystemNotice( character, "RefreshCompleteFlag:任务已经完成！" )
		ret = SetMissionComplete( character, Mission[sid].id )
		if ret ~= LUA_TRUE then
			PRINT( "RefreshCompleteFlag:SetMissionComplete设置任务已经完成标记失败！" )
			SystemNotice( character, "RefreshCompleteFlag:SetMissionComplete设置任务已经完成标记失败！" )
		end
	end
	
	PRINT( "RefreshCompleteFlag:return true" )
	return LUA_TRUE
end

--任务条件判断处理函数
function ConditionsTest( character, conditions, param1, param2, npc )
	if conditions == nil then
		SystemNotice( character, "ConditionsTest:条件测试函数conditions参数不能为空！" )
		return LUA_FALSE
	end

	if conditions[1] == nil then
		PRINT( "ConditionsTest:条件为空返回真！" )
	else
		local num = TR_MAXNUM_CONDITIONS
		if conditions.count ~= nil then
			num = conditions.count
		end
		for i = 1, num, 1 do --检测触发器限制条件最多12个条件
			if conditions[i] == nil then			
				break;
			end
			if conditions[i].func == nil then
				SystemNotice( character, "ConditionsTest:条件处理函数不能为空！" )			
			end
			if conditions[i].func == NoMission then
				PRINT( "ConditionsTest:NoMission, p1 = ", conditions[i].p1 )
				local Ret = NoMission( character, conditions[i].p1 )
				if Ret ~= LUA_TRUE then
					PRINT( "ConditionsTest: NoMission = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == HasMission then
				PRINT( "ConditionsTest:HasMission, p1 = ", conditions[i].p1 )
				local ret = HasMission( character, conditions[i].p1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest: HasMission = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == HasRandMission then
				PRINT( "ConditionsTest:HasRandMission, p1 = ", conditions[i].p1 )
				local ret = HasRandMission( character, conditions[i].p1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest: HasRandMission = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == HasMisssionFailure then
				PRINT( "ConditionsTest:HasMisssionFailure, p1 = ", conditions[i].p1 )
				local ret = HasMisssionFailure( character, conditions[i].p1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest: HasMisssionFailure = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == NoMisssionFailure then
				PRINT( "ConditionsTest:NoMisssionFailure, p1 = ", conditions[i].p1 )
				local ret = NoMisssionFailure( character, conditions[i].p1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest: NoMisssionFailure = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == NoRecord then
				PRINT( "ConditionsTest:NoRecord, p1 = ", conditions[i].p1 )
				local ret = NoRecord( character, conditions[i].p1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest: NoRecord = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == HasState then
				PRINT( "ConditionsTest:HasState, p1 = ", conditions[i].p1 )
				local ret = HasState( character, conditions[i].p1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest: HasState = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == IsChaType then
				PRINT( "ConditionsTest:IsChaType, p1 = ", conditions[i].p1 )
				local ret = IsChaType( character, conditions[i].p1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest: IsChaType = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == NoChaType then
				PRINT( "ConditionsTest:NoChaType, p1 = ", conditions[i].p1 )
				local ret = NoChaType( character, conditions[i].p1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest: NoChaType = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == HasRecord then
				PRINT( "ConditionsTest:HasRecord, p1 = ", conditions[i].p1 )
				local ret = HasRecord( character, conditions[i].p1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest: HasRecord = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == NoFlag then
				PRINT( "ConditionsTest:NoFlag, p1 =, p2 = ", conditions[i].p1, conditions[i].p2 )
				local ret = NoFlag( character, conditions[i].p1, conditions[i].p2 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:NoFlag = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == HasAllFlag then
				PRINT( "ConditionsTest:HasAllFlag, p1 =, p2 = ", conditions[i].p1, conditions[i].p2, conditions[i].p3 ) 
				local ret = HasAllFlag( character, conditions[i].p1, conditions[i].p2, conditions[i].p3 ) 
				if ret ~= LUA_TRUE then 
					PRINT( "ConditionsTest: HasAllFlag = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == HasFlag then
				PRINT( "ConditionsTest:HasFlag, p1 =, p2 = ", conditions[i].p1, conditions[i].p2 )
				local ret = HasFlag( character, conditions[i].p1, conditions[i].p2 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:HasFlag = false" )
					return LUA_FALSE
				end		
			elseif conditions[i].func == HasItem then
				PRINT( "ConditionsTest: HasItem, p1 =, p2 =", conditions[i].p1, conditions[i].p2 )
				local ret = HasItem( character, conditions[i].p1, conditions[i].p2 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:HasItem= false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == NoItem then
				PRINT( "ConditionsTest: NoItem, p1 =, p2 =", conditions[i].p1, conditions[i].p2 )
				local ret = NoItem( character, conditions[i].p1, conditions[i].p2 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:NoItem = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == HasCredit then
				PRINT( "ConditionsTest: HasCredit, p1 = ", conditions[i].p1)
				local ret = HasCredit( character, conditions[i].p1)
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:HasCredit = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == HasHonorPoint then
				PRINT( "ConditionsTest: HasHonorPoint, p1 = ", conditions[i].p1)
				local ret = HasHonorPoint( character, conditions[i].p1)
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:HasHonorPoint = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == HasFightingPoint then
				PRINT( "ConditionsTest: HasFightingPoint, p1 = ", conditions[i].p1)
				local ret = HasFightingPoint( character, conditions[i].p1)
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:HasFightingPoint = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == CheckPoint then
				PRINT( "ConditionsTest: CheckPoint, p1 = ", conditions[i].p1)
				local ret = CheckPoint( character,conditions[i].p1)
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:CheckPoint = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == ItemAttrNum then
				PRINT( "ConditionsTest: ItemAttrNum, p1 = ", conditions[i].p1,conditions[i].p2,conditions[i].p3,conditions[i].p4)
				local ret = ItemAttrNum( character,conditions[i].p1,conditions[i].p2,conditions[i].p3,conditions[i].p4)
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:ItemAttrNum = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == HaveNoItem then
				PRINT( "ConditionsTest: HaveNoItem, p1 = ", conditions[i].p1)
				local ret = HaveNoItem( character,conditions[i].p1)
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:HaveNoItem = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == BankNoItem then
				PRINT( "ConditionsTest: BankNoItem, p1 =, p2 =", conditions[i].p1, conditions[i].p2 )
				local ret = BankNoItem( character, conditions[i].p1, conditions[i].p2 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:BankNoItem = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == EquipNoItem then
				PRINT( "ConditionsTest: EquipNoItem, p1 =, p2 =", conditions[i].p1, conditions[i].p2 )
				local ret = EquipNoItem( character, conditions[i].p1, conditions[i].p2 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:EquipNoItem = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == CheckTeam1 then
				PRINT( "ConditionsTest:CheckTeam1, p1 =, p2 =", conditions[i].p1, conditions[i].p2 )
				local ret = CheckTeam1( character, conditions[i].p1, conditions[i].p2 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:CheckTeam1 = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == CheckRightNum then
				PRINT( "ConditionsTest:CheckRightNum, p1 =, p2 =", conditions[i].p1, conditions[i].p2 )
				local ret = CheckRightNum( character, conditions[i].p1, conditions[i].p2 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:CheckRightNum = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == CheckErroNum then
				PRINT( "ConditionsTest:CheckErroNum, p1 =, p2 =", conditions[i].p1, conditions[i].p2 )
				local ret = CheckErroNum( character, conditions[i].p1, conditions[i].p2 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:CheckErroNum = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == HasReadExp then		--小测验时必须有经验
				local ret = HasReadExp( character )
				if ret ~= LUA_TRUE then
					return LUA_FALSE
				end
			elseif conditions[i].func == HasNoItem then
				PRINT( "ConditionsTest: HasNoItem, p1 = ", conditions[i].p1)
				local ret = HasNoItem( character, conditions[i].p1)
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:HasNoItem = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == CheckXSZCh then
				PRINT( "ConditionsTest: CheckXSZCh, p1 = ", conditions[i].p1)
				local ret = CheckXSZCh( character, conditions[i].p1)
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:CheckXSZCh = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == Checksailexpless then
				PRINT( "ConditionsTest: Checksailexpless, p1 = ", conditions[i].p1)
				local ret = Checksailexpless( character, conditions[i].p1)
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:Checksailexpless = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == Checksailexpmore then
				PRINT( "ConditionsTest: Checksailexpmore, p1 = ", conditions[i].p1)
				local ret = Checksailexpmore( character, conditions[i].p1)
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:Checksailexpmore = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == CheckKJNum then
				PRINT( "ConditionsTest: CheckKJNum, p1 = ", conditions[i].p1)
				local ret = CheckKJNum( character, conditions[i].p1)
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:CheckKJNum = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == CheckRealNpc then
				PRINT( "ConditionsTest:CheckRealNpc, p1 =, p2 =", conditions[i].p1, conditions[i].p2 )
				local ret = CheckRealNpc( character, conditions[i].p1, conditions[i].p2 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:CheckRealNpc = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == NoMoney then
				PRINT( "ConditionsTest: NoMoney, p1 = ", conditions[i].p1 )
				local ret = NoMoney( character, conditions[i].p1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:NoMoney = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == HasMoney then
				PRINT( "ConditionsTest: HasMoney, p1 = ", conditions[i].p1 )
				local ret = HasMoney( character, conditions[i].p1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:HasMoney = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == HasCancelMissionMoney then
				PRINT( "ConditionsTest: HasCancelMissionMoney" )
				local ret = HasCancelMissionMoney( character )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:HasCancelMissionMoney = false" )
					return LUA_FALSE
				end				
			elseif conditions[i].func == IsMonster then
				PRINT( "ConditionsTest:IsMonster, p1 =, p2 =", conditions[i].p1, param1 )
				if param1 == nil then
					SystemNotice( "ConditionsTest:判断摧毁物件类型函数，参数无效！param1 = nil" )
					return LUA_FALSE
				end
				local ret = IsMonster( conditions[i].p1, param1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:IsMonster = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == IsItem then
				PRINT( "ConditionsTest:IsItem, p1 =, p2 =", conditions[i].p1, param1 )
				if param1 == nil then
					SystemNotice( "ConditionsTest:判断获取物品类型函数，参数无效！param1 = nil" )
					return LUA_FALSE
				end
				local ret = IsItem( conditions[i].p1, param1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:IsItem = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == IsMapNpc then
				PRINT( "ConditionsTest:IsMapNpc, p1 =, p2 =", conditions[i].p1, conditions[i].p2 )
				local ret = IsMapNpc( npc, conditions[i].p1, conditions[i].p2 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:IsMapNpc = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == IsMapChar then
				PRINT( "ConditionsTest:IsMapChar, p1 =", conditions[i].p1 )
				local ret = IsMapChar( character )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:IsMapChar = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == LvCheck then
				PRINT( "ConditionsTest:LvCheck, p1 =, p2 =", conditions[i].p1, conditions[i].p2 )
				local ret = LvCheck( character, conditions[i].p1, conditions[i].p2 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:LvCheck = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == HpCheck then
				PRINT( "ConditionsTest:HpCheck, p1 =, p2 =", conditions[i].p1, conditions[i].p2 )
				local ret = HpCheck( character, conditions[i].p1, conditions[i].p2 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:HpCheck = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == SpCheck then
				PRINT( "ConditionsTest:SpCheck, p1 =, p2 =", conditions[i].p1, conditions[i].p2 )
				local ret = SpCheck( character, conditions[i].p1, conditions[i].p2 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:SpCheck = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == PfEqual then
				PRINT( "ConditionsTest:PfEqual, p1 =", conditions[i].p1 )
				local ret = PfEqual( character, conditions[i].p1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:PfEqual = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == NoPfEqual then
				PRINT( "ConditionsTest:PfEqual, p1 =", conditions[i].p1 )
				local ret = NoPfEqual( character, conditions[i].p1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:PfEqual = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == HasFame then
				PRINT( "ConditionsTest:HasFame, p1 =", conditions[i].p1 )
				local ret = HasFame( character, conditions[i].p1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:HasFame = false" )
					return LUA_FALSE
				end				
			elseif conditions[i].func == IsInArea then
				PRINT( "ConditionsTest:IsInArea, p1 =", conditions[i].p1 )
				local ret = IsInArea( character, conditions[i].p1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:IsInArea = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == Checkjlktime then
				PRINT( "ConditionsTest:Checkjlktime, p1 =", conditions[i].p1 )
				local ret = Checkjlktime( character, conditions[i].p1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:Checkjlktime = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == IsInMap then
				PRINT( "ConditionsTest:IsInMap, p1 =, p2 =, p3 = , p4 = ", conditions[i].p1, conditions[i].p2, conditions[i].p3, conditions[i].p4 )
				local ret = IsInMap( character, conditions[i].p1, conditions[i].p2, conditions[i].p3, conditions[i].p4, 10000, 10000 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:IsInMap = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == AlwaysFailure then
				PRINT( "ConditionsTest:AlwaysFailure," )
				local ret = AlwaysFailure()
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:AlwaysFailure = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == AlwaysTrue then
				PRINT( "ConditionsTest:AlwaysTrue," )
				local ret = AlwaysTrue()
				--if ret ~= LUA_TRUE then
					--PRINT( "ConditionsTest:AlwaysTrue = false" )
					--return LUA_FALSE
				--end				
			elseif conditions[i].func == HasRandMissionNpc then
				PRINT( "ConditionsTest:HasRandMissionNpc,p1, p2, p3", conditions[i].p1, conditions[i].p2, conditions[i].p3 )
				local ret = HasRandMissionNpc( character, conditions[i].p1, conditions[i].p2, conditions[i].p3 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:HasRandMissionNpc = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == HasRandNpcItemFlag then
				PRINT( "ConditionsTest:HasRandNpcItemFlag,p1, p2", conditions[i].p1, conditions[i].p2 )
				local ret = HasRandNpcItemFlag( character, conditions[i].p1, conditions[i].p2 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:HasRandNpcItemFlag = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == NoRandNpcItemFlag then
				PRINT( "ConditionsTest:NoRandNpcItemFlag,p1, p2", conditions[i].p1, conditions[i].p2 )
				local ret = NoRandNpcItemFlag( character, conditions[i].p1, conditions[i].p2 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:NoRandNpcItemFlag = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == HasConvoyNpc then
				PRINT( "ConditionsTest:HasConvoyNpc,p1 = ", conditions[i].p1 )
				local ret = HasConvoyNpc( character, conditions[i].p1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:HasConvoyNpc = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func ==CheckItem then
				PRINT( "ConditionsTest: CheckItem, p1 =, p2 =", conditions[i].p1, conditions[i].p2 )
				local ret = CheckItem( character, conditions[i].p1, conditions[i].p2 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:CheckItem = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func ==CheckBag then
				PRINT( "ConditionsTest: CheckBag, p1 =, p2 =", conditions[i].p1, conditions[i].p2 ,conditions[i].p3)
				local ret = CheckBag( character, conditions[i].p1, conditions[i].p2 ,conditions[i].p3)
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:CheckBag = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func ==CheckBagEmp then
				PRINT( "ConditionsTest: CheckBagEmp, p1 =, p2 =", conditions[i].p1)
				local ret = CheckBagEmp( character, conditions[i].p1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:CheckBagEmp = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == NoConvoyNpc then
				PRINT( "ConditionsTest:NoConvoyNpc,p1 = ", conditions[i].p1 )
				local ret = NoConvoyNpc( character, conditions[i].p1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:NoConvoyNpc = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == IsConvoyNpc then
				PRINT( "ConditionsTest:IsConvoyNpc,p1 = , p2 = ", conditions[i].p1, conditions[i].p2 )
				local ret = IsConvoyNpc( character, conditions[i].p1, conditions[i].p2 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:IsConvoyNpc = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == IsCategory then
				PRINT( "ConditionsTest:IsCategory,p1 = ", conditions[i].p1 )
				local ret = IsCategory( character, conditions[i].p1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:IsCategory = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == CheckConvertProfession then
				PRINT( "ConditionsTest:CheckConvertProfession,p1 = ", conditions[i].p1 )
				local ret = CheckConvertProfession( character, conditions[i].p1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:CheckConvertProfession = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == IsSpawnPos then
				PRINT( "ConditionsTest:IsSpawnPos, p1 =", conditions[i].p1 )
				local ret = IsSpawnPos( character, conditions[i].p1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:IsSpawnPos = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == HasLeaveBagGrid then
				PRINT( "ConditionsTest:HasLeaveBagGrid, p1 =", conditions[i].p1 )
				local ret = HasLeaveBagGrid( character, conditions[i].p1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:HasLeaveBagGrid = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == HasLeaveBagTempGrid then
				PRINT( "ConditionsTest:HasLeaveBagTempGrid, p1 =", conditions[i].p1 )
				local ret = HasLeaveBagTempGrid( character, conditions[i].p1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:HasLeaveBagTempGrid = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == IsBoatFull then
				PRINT( "ConditionsTest:IsBoatFull" )
				local ret = IsBoatFull( character )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:IsBoatFull = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == BoatBuildCheck then
				PRINT( "ConditionsTest:BoatBuildCheck, p1 =", conditions[i].p1 )
				local ret = BoatBuildCheck( character, conditions[i].p1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:BoatBuildCheck = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == HasBoatInBerth then
				PRINT( "ConditionsTest:HasBoatInBerth, p1 =", conditions[i].p1 )
				local ret = HasBoatInBerth( character, conditions[i].p1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:HasBoatInBerth = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == HasDeadBoatInBerth then
				PRINT( "ConditionsTest:HasDeadBoatInBerth, p1 =", conditions[i].p1 )
				local ret = HasDeadBoatInBerth( character, conditions[i].p1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:HasDeadBoatInBerth = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == XmasNotice then
				PRINT( "ConditionsTest: XmasNotice, p1 =, p2 =", conditions[i].p1, conditions[i].p2 )
				local ret = XmasNotice( character, conditions[i].p1, conditions[i].p2 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:XmasNotice = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == CheckSpeed then
				PRINT( "ConditionsTest:CheckSpeed, p1 = ", conditions[i].p1 )
				local ret = CheckSpeed( character, conditions[i].p1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:CheckSpeed = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == CheckZS then
				PRINT( "ConditionsTest:CheckZS, p1 = ", conditions[i].p1 )
				local ret = CheckZS( character, conditions[i].p1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:CheckZS = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == HasAllBoatInBerth then
				PRINT( "ConditionsTest:HasAllBoatInBerth, p1 =", conditions[i].p1 )
				local ret = HasAllBoatInBerth( character, conditions[i].p1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:HasAllBoatInBerth = false" )
					return LUA_FALSE
				end
			--elseif conditions[i].func == HasAllBoatInBerth_eitheror then
			--	PRINT( "ConditionsTest:HasAllBoatInBerth , p1 = , p2 = ", conditions[i].p1, conditions[i].p2 )
			--	local ret = HasAllBoatInBerth_eitheror( character, conditions[i].p1, conditions[i].p2 )
			--	if ret ~= LUA_TRUE then
			--		PRINT( "ConditionsTest:HasAllBoatInBerth_eitheror = false" )
			--		return LUA_FALSE
			--	end
			elseif conditions[i].func == HasLuanchOut then
				PRINT( "ConditionsTest:HasLuanchOut" )
				local ret = HasLuanchOut( character )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:HasLuanchOut = false" )
					return LUA_FALSE
				end				
			elseif conditions[i].func == HasGuild then
				PRINT( "ConditionsTest:HasGuild" )
				local ret = HasGuild( character )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:HasGuild = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == NoGuild then
				PRINT( "ConditionsTest:NoGuild" )
				local ret = NoGuild( character )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:NoGuild = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == HasPirateGuild then
				PRINT( "ConditionsTest:HasPirateGuild" )
				local ret = HasPirateGuild( character )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:HasPirateGuild = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == NoPirateGuild then
				PRINT( "ConditionsTest:NoPirateGuild" )
				local ret = NoPirateGuild( character )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:NoPirateGuild = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == HasNavyGuild then
				PRINT( "ConditionsTest:HasNavyGuild" )
				local ret = HasNavyGuild( character )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:HasNavyGuild = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == NoNavyGuild then
				PRINT( "ConditionsTest:NoNavyGuild" )
				local ret = NoNavyGuild( character )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:NoNavyGuild = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == IsGuildType then
				PRINT( "ConditionsTest:IsGuildType, p1 = ", conditions[i].p1 )
				local ret = IsGuildType( character, conditions[i].p1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:IsGuildType = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == TradeItemLevelCheck then
				PRINT( "ConditionsTest:TradeItemLevelCheck, p1 = , p2 = ", conditions[i].p1, conditions[i].p2 )
				local ret = TradeItemLevelCheck( character, conditions[i].p1, conditions[i].p2 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:TradeItemLevelCheck = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == TradeItemDataCheck then
				PRINT( "ConditionsTest:TradeItemDataCheck, p1 = , p2 = ", conditions[i].p1, conditions[i].p2 )
				local ret = TradeItemDataCheck( character, conditions[i].p1, conditions[i].p2 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:TradeItemDataCheck = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == HasOffer then
				PRINT( "ConditionsTest:HasOffer, p1 = ", conditions[i].p1 )
				local ret = HasOffer( character, conditions[i].p1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:HasOffer = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == LessCredit then
				PRINT( "ConditionsTest:LessCredit, p1 = , p2 = ", conditions[i].p1, conditions[i].p2 )
				local ret = LessCredit( character, conditions[i].p1, conditions[i].p2 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:LessCredit = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == LessTime then
				PRINT( "ConditionsTest:LessTime, p1 = ", conditions[i].p1 )
				local ret = LessTime( character, conditions[i].p1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:LessTime = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == MoreTime then
				PRINT( "ConditionsTest:MoreTime, p1 = ", conditions[i].p1 )
				local ret = MoreTime( character, conditions[i].p1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:MoreTime = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == BaiyangOn then
				PRINT( "ConditionsTest:BaiyangOn, p1 = ", conditions[i].p1 )
				local ret = BaiyangOn( character, conditions[i].p1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:BaiyangOn = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == CheckEnergy then
				PRINT( "ConditionsTest:CheckEnergy, p1 = ", conditions[i].p1 )
				local ret = CheckEnergy( character, conditions[i].p1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:CheckEnergy = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == CheckChaItem then
				PRINT( "ConditionsTest: CheckChaItem, p1 = ")
				local ret = CheckChaItem( character )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:CheckChaItem = false" )
					return LUA_FALSE
				end			
			elseif conditions[i].func == HasXmasYB then
				PRINT( "ConditionsTest:HasXmasYB,p1, p2", conditions[i].p1, conditions[i].p2 )
				local ret = HasXmasYB( character, conditions[i].p1, conditions[i].p2 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:HasXmasYB = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == CheckHJ then
				PRINT( "ConditionsTest:CheckHJ, p1 = ", conditions[i].p1 )
				local ret = CheckHJ( character, conditions[i].p1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:CheckHJ = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == HasNOZSExp then
				PRINT( "ConditionsTest:HasNOZSExp, p1 = ", conditions[i].p1 )
				local ret = HasNOZSExp( character, conditions[i].p1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:HasNOZSExp = false" )
					return LUA_FALSE
				end				
			elseif conditions[i].func == HasGuildLevel then
				PRINT( "ConditionsTest:HasGuildLevel, p1 = ", conditions[i].p1 )
				local ret = HasGuildLevel( character, conditions[i].p1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:HasGuildLevel = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == crablife then
				PRINT( "ConditionsTest:crablife, p1 = ", conditions[i].p1 )
				local ret = crablife( character, conditions[i].p1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:crablife = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == KitbagLock then
				PRINT( "ConditionsTest:KitbagLock, p1 = ", conditions[i].p1 )
				local ret = KitbagLock( character, conditions[i].p1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:KitbagLock = false" )
					return LUA_FALSE
				end	
			elseif conditions[i].func == ValentinesRing then
				PRINT( "ConditionsTest:ValentinesRing, p1 = ", conditions[i].p1 )
				local ret = ValentinesRing( character, conditions[i].p1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:ValentinesRing = false" )
					return LUA_FALSE
				end	
			elseif conditions[i].func ==DuiHhuan1 then
				PRINT( "ConditionsTest: DuiHhuan1")
				local ret = DuiHhuan1( character )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:DuiHhuan1 = false" )
					return LUA_FALSE
				end	
			elseif conditions[i].func ==DuiHhuan2 then
				PRINT( "ConditionsTest: DuiHhuan2")
				local ret = DuiHhuan2( character )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:DuiHhuan2 = false" )
					return LUA_FALSE
				end	
			elseif conditions[i].func ==DuiHhuan3 then
				PRINT( "ConditionsTest: DuiHhuan3")
				local ret = DuiHhuan3( character )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:DuiHhuan3 = false" )
					return LUA_FALSE
					end	
			elseif conditions[i].func ==DuiHhuan4 then
				PRINT( "ConditionsTest: DuiHhuan4")
				local ret = DuiHhuan4( character )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:DuiHhuan4 = false" )
					return LUA_FALSE
				end	
			elseif conditions[i].func ==DuiHhuan5 then
				PRINT( "ConditionsTest: DuiHhuan5")
				local ret = DuiHhuan5( character )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:DuiHhuan5 = false" )
					return LUA_FALSE
				end
			
			elseif conditions[i].func == ValentinesRingJudge then
				PRINT( "ConditionsTest:ValentinesRingJudge, p1 = ", conditions[i].p1 )
				local ret = ValentinesRingJudge( character, conditions[i].p1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:ValentinesRingJudge = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func ==CheckIsValidTeam then
				PRINT( "ConditionsTest: CheckIsValidTeam")
				local ret = CheckIsValidTeam( character )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:CheckIsValidTeam = false" )
					return LUA_FALSE
				end				
			else
				PRINT( "ConditionsTest: 未知的条件函数！i = %d", i )
				SystemNotice( character, "ConditionsTest:未知的条件函数错误！" )
				return LUA_ERROR
			end
		end
	end
	
	PRINT( "ConditionsTest: return true" )
	return LUA_TRUE
end

--任务动作处理函数
function ActionsProc( character, actions, npc, page, misid, scriptid, param1, param2 )
	PRINT( "ActionProc: actions proc" )
	if actions == nil then
		PRINT( "ActionProc:任务动作处理函数参数actions不能为空！" )
		SystemNotice( character, "ActionProc:任务动作处理函数参数actions不能为空！" )
		return LUA_ERROR
	end
	
	--触发器符合条件动作
	local num = TR_MAXNUM_ACTIONS
	if actions.count ~= nil then
		num = actions.count
	end
	PRINT( "ActionsProc:Actions num = ", num )
	for i = 1, num, 1 do
		PRINT( "ActionProc23: actions i = ", i, actions[i] )
		if actions[i] == nil then
			PRINT( "ActionProc23: break" )
			break
		end
		PRINT( "ActionProc: actions i = ", i )
		if actions[i].func == JumpPage then
			PRINT( "ActionProc:JumpPage, page =, p1 = ", page, actions[i].p1 )
			JumpPage( character, npc, page, actions[i].p1 )
		elseif actions[i].func == CloseTalk then
			PRINT( "ActionProc:CloseTalk" )
			CloseTalk( character, npc )
		elseif actions[i].func == AddMission then
			PRINT( "ActionProc: AddMission actions[i].p1 = , scriptid = ", actions[i].p1, scriptid )
			local ret = AddMission( character, actions[i].p1, scriptid )
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc: AddMission 失败！" )
				SystemNotice( character, "ActionProc: 添加任务失败！" )
				return LUA_FALSE
			end
		elseif actions[i].func == AddTrigger then
			PRINT( "ActionProc: AddTrigger, misid, p1 = , p2 = , p3 = , p4 = , p5 = , p6 = , p7 = , p8 = ", misid, actions[i].p1, actions[i].p2, actions[i].p3, actions[i].p4, actions[i].p5, actions[i].p6, actions[i].p7, actions[i].p8 )
			local ret = AddTrigger( character, misid, actions[i].p1, actions[i].p2, actions[i].p3, actions[i].p4, actions[i].p5, actions[i].p6, actions[i].p7, actions[i].p8 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc: AddTrigger 失败！" )
				SystemNotice( character, "ActionProc: 添加触发器失败！" )
				return LUA_FALSE
			end
		elseif actions[i].func == AddNpcTrigger then
			PRINT( "ActionProc: AddNpcTrigger, p1 = , p2 = , p3 = , p4 = , p5 = , p6 = ", actions[i].p1, actions[i].p2, actions[i].p3, actions[i].p4, actions[i].p5, actions[i].p6 )
			local ret = AddNpcTrigger( character, actions[i].p1, actions[i].p2, actions[i].p3, actions[i].p4, actions[i].p5, actions[i].p6 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc: AddNpcTrigger 失败！" )
				LG( "trigger_error", "ActionProc: AddNpcTrigger添加触发器失败！NPC = "..GetCharName( character ) )
				return LUA_FALSE
			end
		elseif actions[i].func == AddNextFlag then
			PRINT( "ActionProc:AddNextFlag, p1, p2, p3", actions[i].p1, actions[i].p2, actions[i].p3 )
			local ret = AddNextFlag( character, actions[i].p1, actions[i].p2, actions[i].p3 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc: AddNextFlag 失败！" )
				SystemNotice( character, "ActionProc: 添加序列任务记录标签失败！" )
				return LUA_FALSE
			end
		elseif actions[i].func == AddRMNextFlag then
			PRINT( "ActionProc:AddRMNextFlag, p1, p2, p3", actions[i].p1, actions[i].p2, actions[i].p3 )
			local ret = AddRMNextFlag( character, actions[i].p1, actions[i].p2, actions[i].p3 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc: AddRMNextFlag 失败！" )
				SystemNotice( character, "ActionProc: AddRMNextFlag添加序列任务记录标签失败！" )
				return LUA_FALSE
			end
		elseif actions[i].func == SetFlag then
			PRINT( "ActionProc:SetFlag, p1, p2 ", actions[i].p1, actions[i].p2 )
			local ret = SetFlag( character, actions[i].p1, actions[i].p2 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc:SetFlag 失败！" )
				SystemNotice( character, "ActionProc:设置任务记录标签失败！" )
				return LUA_FALSE
			end
		elseif actions[i].func == SetRecord then
			PRINT( "ActionProc:SetRecord, p1 = ", actions[i].p1 )
			local ret = SetRecord( character, actions[i].p1 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc:SetRecord 失败！" )
				SystemNotice( character, "ActionProc:设置历史记录标签失败！" )
				return LUA_FALSE
			end
		elseif actions[i].func == GiveNSDX then
			PRINT( "ActionProc: GiveNSDX, p1 = ", actions[i].p1)
			local ret = GiveNSDX( character,npc, actions[i].p1)
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc:GiveNSDX = false" )
				return LUA_FALSE
			end
		elseif actions[i].func == JINNiuSS then
			PRINT( "ActionProc:JINNiuSS, p1 = " )
			local ret = JINNiuSS( character)
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc:JINNiuSS 失败！" )
				--SystemNotice( character, "ActionProc:设置历史记录标签失败！" )
				return LUA_FALSE
			end
		elseif actions[i].func == JINNiuHD then
			PRINT( "ActionProc:JINNiuHD, p1 = " )
			local ret = JINNiuHD( character)
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc:JINNiuHD 失败！" )
				--SystemNotice( character, "ActionProc:设置历史记录标签失败！" )
				return LUA_FALSE
			end
		elseif actions[i].func == JINNiuCZ then
			PRINT( "ActionProc:JINNiuCZ, p1 = " )
			local ret = JINNiuCZ( character)
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc:JINNiuCZ 失败！" )
				--SystemNotice( character, "ActionProc:设置历史记录标签失败！" )
				return LUA_FALSE
			end

		elseif actions[i].func == ShuangZiSS then
			PRINT( "ActionProc:ShuangZiSS, p1 = " )
			local ret = ShuangZiSS( character)
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc:ShuangZiSS 失败！" )
				--SystemNotice( character, "ActionProc:设置历史记录标签失败！" )
				return LUA_FALSE
			end
		elseif actions[i].func == ShuangZiHD then
			PRINT( "ActionProc:ShuangZiHD, p1 = " )
			local ret = ShuangZiHD( character)
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc:ShuangZiHD 失败！" )
				--SystemNotice( character, "ActionProc:设置历史记录标签失败！" )
				return LUA_FALSE
			end
		elseif actions[i].func == ShuangZiCZ then
			PRINT( "ActionProc:ShuangZiCZ, p1 = " )
			local ret = ShuangZiCZ( character)
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc:ShuangZiCZ 失败！" )
				--SystemNotice( character, "ActionProc:设置历史记录标签失败！" )
				return LUA_FALSE
			end
		elseif actions[i].func == AddReadingBook then
			PRINT( "ActionProc:AddReadingBook, p1 = ", actions[i].p1 )
			local ret = AddReadingBook( character, actions[i].p1 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc:AddReadingBook 失败！" )
				SystemNotice( character, "ActionProc:添加书本失败！" )
				return LUA_FALSE
			end
		elseif actions[i].func == AddExpPer then
			PRINT( "ActionProc:AddExpPer, p1 = , p2 = ", actions[i].p1, actions[i].p2 )
			local ret = AddExpPer( character, actions[i].p1, actions[i].p2 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc: AddExpPer 失败！" )
				SystemNotice( character, "ActionProc: 给予经验失败！" )
				return LUA_FALSE
			end
		elseif actions[i].func == ZSSTART then
			PRINT( "ActionProc:ZSSTART, p1 = " )
			local ret = ZSSTART( character)
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc:ZSSTART 失败！" )
				--SystemNotice( character, "ActionProc:设置历史记录标签失败！" )
				return LUA_FALSE
			end

		elseif actions[i].func == AddChaHJ then
			PRINT( "ActionProc: AddChaHJ, p1 = ", actions[i].p1)
			local ret = AddChaHJ( character,npc, actions[i].p1)
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc:AddChaHJ = false" )
				return LUA_FALSE
			end

		elseif actions[i].func == AddExpNextLv1 then
			PRINT( "ActionProc:AddExpNextLv1, p1 = , p2 = ", actions[i].p1, actions[i].p2 )
			local ret = AddExpNextLv1( character, npc, actions[i].p1, actions[i].p2 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc: AddExpNextLv1 失败！" )
				SystemNotice( character, "ActionProc: AddExpNextLv1添加经验失败！" )
				return LUA_FALSE
			end

		elseif actions[i].func == AddExpNextLv2 then
			PRINT( "ActionProc:AddExpNextLv2, p1 = , p2 = ", actions[i].p1, actions[i].p2 )
			local ret = AddExpNextLv2( character, npc, actions[i].p1, actions[i].p2 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc: AddExpNextLv2 失败！" )
				SystemNotice( character, "ActionProc:AddExpNextLv2添加经验失败！" )
				return LUA_FALSE
			end
		elseif actions[i].func == ZSSTOP then
			PRINT( "ActionProc:ZSSTOP, p1 = " )
			local ret = ZSSTOP( character)
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc:ZSSTOP 失败！" )
				--SystemNotice( character, "ActionProc:设置历史记录标签失败！" )
				return LUA_FALSE
			end
		elseif actions[i].func == ZSSTOP2 then
			PRINT( "ActionProc:ZSSTOP2, p1 = " )
			local ret = ZSSTOP2( character)
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc:ZSSTOP2 失败！" )
				--SystemNotice( character, "ActionProc:设置历史记录标签失败！" )
				return LUA_FALSE
			end
		elseif actions[i].func == AddExp then
			PRINT( "ActionProc:AddExp, p1 = , p2 = ", actions[i].p1, actions[i].p2 )
			local retExpState = GetExpState(character)
--			Notice("做任务奖励经验的防沉迷返还系数为"..retExpState)
			
			actions[i].p1 = actions[i].p1  *GetExpState(character) /100
			actions[i].p2 = actions[i].p2  *GetExpState(character) /100
			local ret = AddExp( character, npc, actions[i].p1, actions[i].p2 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc: AddExp 失败！" )
				SystemNotice( character, "ActionProc: AddExp添加经验失败！" )
				return LUA_FALSE
			end
		elseif actions[i].func == AddSailExp then
			PRINT( "ActionProc:AddSailExp, p1 = , p2 = ", actions[i].p1, actions[i].p2 )
			local ret = AddSailExp( character, npc, actions[i].p1, actions[i].p2 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc: AddSailExp 失败！" )
				SystemNotice( character, "ActionProc: AddSailExp添加经验失败！" )
				return LUA_FALSE
			end
		elseif actions[i].func == AddLifeExp then
			PRINT( "ActionProc:AddLifeExp, p1 = , p2 = ", actions[i].p1, actions[i].p2 )
			local ret = AddLifeExp( character, npc, actions[i].p1, actions[i].p2 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc: AddLifeExp 失败！" )
				SystemNotice( character, "ActionProc: AddLifeExp添加经验失败！" )
				return LUA_FALSE
			end
		elseif actions[i].func == AddChaItem7 then
			PRINT( "ActionsProc:AddChaItem7, p1 = ", actions[i].p1 )
			local ret = AddChaItem7( character, actions[i].p1 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionsProc:AddChaItem7 失败！" )
				SystemNotice( character, "ActionsProc:AddChaItem7 失败！" )
				return LUA_FALSE
			end
		elseif actions[i].func == AddChaItem8 then
			PRINT( "ActionsProc:AddChaItem8, p1 = ", actions[i].p1 )
			local ret = AddChaItem8( character, actions[i].p1 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionsProc:AddChaItem8 失败！" )
				SystemNotice( character, "ActionsProc:AddChaItem8 失败！" )
				return LUA_FALSE
			end
		elseif actions[i].func == checkcytime then
			PRINT( "ActionsProc:checkcytime, p1 = ", actions[i].p1 )
			local ret = checkcytime( character, actions[i].p1 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionsProc:checkcytime 失败！" )
				SystemNotice( character, "ActionsProc:checkcytime 失败！" )
				return LUA_FALSE
			end
		elseif actions[i].func == checksjtime then
			PRINT( "ActionsProc:checksjtime, p1 = ", actions[i].p1 )
			local ret = checksjtime( character, actions[i].p1 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionsProc:checksjtime 失败！" )
				SystemNotice( character, "ActionsProc:checksjtime 失败！" )
				return LUA_FALSE
			end
		elseif actions[i].func == AddExpAndType then
			PRINT( "ActionProc:AddExpAndType, p1 = , p2 = , p3 = ", actions[i].p1, actions[i].p2, actions[i].p3 )
			local ret = AddExpAndType( character, npc, actions[i].p1, actions[i].p2, actions[i].p3 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc: AddExpAndType 失败！" )
				SystemNotice( character, "ActionProc: AddExpAndType添加经验失败！" )
				return LUA_FALSE
			end
		elseif actions[i].func == AddMoney then
			PRINT( "ActionProc:AddMoney, p1 =", actions[i].p1 )
			local ret = AddMoney( character, npc, actions[i].p1 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc: AddMoney 失败！param1 = %d", actions[i].p1 )
				SystemNotice( character, "ActionProc: AddMoney 失败！" )
				return LUA_FALSE
			end
		elseif actions[i].func == TakeCredit then
				PRINT( "ActionProc: TakeCredit, p1 = ", actions[i].p1)
				local ret = DelRoleCredit( character,npc, actions[i].p1)
				if ret ~= LUA_TRUE then
					PRINT( "ActionProc:TakeCredit = false" )
					return LUA_FALSE
				end
		elseif actions[i].func == TakeFightingPoint then
				PRINT( "ActionProc: TakeFightingPoint, p1 = ", actions[i].p1)
				local ret = TakeFightingPoint( character,actions[i].p1)
				if ret ~= LUA_TRUE then
					PRINT( "ActionProc:DelRoleFightingPoint = false" )
					return LUA_FALSE
				end
		elseif actions[i].func == Leaveprison then
				PRINT( "ActionProc: Leaveprison, p1 = ", actions[i].p1)
				local ret = Leaveprison( character, actions[i].p1)
				if ret ~= LUA_TRUE then
					PRINT( "ActionProc:Leaveprison = false" )
					return LUA_FALSE
				end	
		elseif actions[i].func == Givejiluka then
				PRINT( "ActionProc: Givejiluka, p1 = ", actions[i].p1)
				local ret = Givejiluka( character, actions[i].p1)
				if ret ~= LUA_TRUE then
					PRINT( "ActionProc:Givejiluka = false" )
					return LUA_FALSE
				end

		elseif actions[i].func == TakeHonorPoint then
				PRINT( "ActionProc: TakeHonorPoint, p1 = ", actions[i].p1)
				local ret = TakeHonorPoint( character, actions[i].p1)
				if ret ~= LUA_TRUE then
					PRINT( "ActionProc:TakeHonorPoint = false" )
					return LUA_FALSE
				end
		elseif actions[i].func == Starteffect then
				PRINT( "ActionProc: Starteffect, p1 = ", actions[i].p1)
				local ret = Starteffect( character,npc, actions[i].p1)
				if ret ~= LUA_TRUE then
					PRINT( "ActionProc:Starteffect = false" )
					return LUA_FALSE
				end
		elseif actions[i].func == AddChaItem1 then
				PRINT( "ActionProc: AddChaItem1, p1 = ", actions[i].p1)
				local ret = AddChaItem1( character,npc, actions[i].p1)
				if ret ~= LUA_TRUE then
					PRINT( "ActionProc:AddChaItem1 = false" )
					return LUA_FALSE
				end
		elseif actions[i].func == AddChaItem2 then
				PRINT( "ActionProc: AddChaItem2, p1 = ", actions[i].p1)
				local ret = AddChaItem2( character,npc, actions[i].p1)
				if ret ~= LUA_TRUE then
					PRINT( "ActionProc:AddChaItem2 = false" )
					return LUA_FALSE
				end
		elseif actions[i].func == AddChaItem3 then
				PRINT( "ActionProc: AddChaItem1, p1 = ", actions[i].p1)
				local ret = AddChaItem3( character,npc, actions[i].p1)
				if ret ~= LUA_TRUE then
					PRINT( "ActionProc:AddChaItem1 = false" )
					return LUA_FALSE
				end
		elseif actions[i].func == AddChaItem5 then
				PRINT( "ActionProc: AddChaItem2, p1 = ", actions[i].p1)
				local ret = AddChaItem5( character,npc, actions[i].p1)
				if ret ~= LUA_TRUE then
					PRINT( "ActionProc:AddChaItem2 = false" )
					return LUA_FALSE
				end
		elseif actions[i].func == AddChaItem4 then
				PRINT( "ActionProc: AddChaItem2, p1 = ", actions[i].p1)
				local ret = AddChaItem4( character,npc, actions[i].p1)
				if ret ~= LUA_TRUE then
					PRINT( "ActionProc:AddChaItem2 = false" )
					return LUA_FALSE
				end
		elseif actions[i].func == DelRoleCredit then
				PRINT( "ActionProc: DelRoleCredit, p1 = ", actions[i].p1)
				local ret = DelRoleCredit( character,npc, actions[i].p1)
				if ret ~= LUA_TRUE then
					PRINT( "ActionProc:DelRoleCredit = false" )
					return LUA_FALSE
				end
		elseif actions[i].func == TakeMoney then
			PRINT( "ActionProc:TakeMoney, p1 = ", actions[i].p1 )
			local ret = TakeMoney( character, npc, actions[i].p1 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc: TakeMoney 失败！param1 = %d", actions[i].p1 )
				SystemNotice( character, "ActionProc: TakeMoney 失败！" )
				return LUA_FALSE
			end
		elseif actions[i].func == TakeCancelMissionMoney then
			PRINT( "ActionProc:TakeMoney" )
			local ret = TakeCancelMissionMoney( character, npc )
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc: TakeCancelMissionMoney 失败！param1 = %d", actions[i].p1 )
				SystemNotice( character, "ActionProc: TakeCancelMissionMoney 失败！" )
				return LUA_FALSE
			end
		elseif actions[i].func == GiveItem then
			PRINT( "ActionProc:GiveItem, p1 = , p2 = , p3 = ", actions[i].p1, actions[i].p2, actions[i].p3 )
			local ret = GiveItem( character, npc, actions[i].p1, actions[i].p2, actions[i].p3 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc: GiveItem 失败！" )
				SystemNotice( character, "ActionProc: 给予角色物品失败！" )
				return LUA_FALSE
			end			
		elseif actions[i].func == TakeItem then
			PRINT( "ActionProc:TakeItem, p1 = , p2 = ", actions[i].p1, actions[i].p2 )
			local ret = TakeItem( character, npc, actions[i].p1, actions[i].p2 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc: TakeItem 失败！" )
				SystemNotice( character, "ActionProc: 提取角色物品失败！" )
				return LUA_FALSE
			end
		elseif actions[i].func == TakeRandNpcItem then
			PRINT( "ActionProc:TakeRandNpcItem, p1 = , p2 = , p3 = ", actions[i].p1, actions[i].p2, actions[i].p3 )
			local ret = TakeRandNpcItem( character, actions[i].p1, actions[i].p2, actions[i].p3 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc: TakeRandNpcItem 失败！" )
				SystemNotice( character, "ActionProc: TakeRandNpcItem提取npc的随机任务物品失败！" )
				return LUA_FALSE
			end
		elseif actions[i].func == TakeAllRandItem then
			PRINT( "ActionProc:TakeAllRandItem, p1 = ", actions[i].p1 )
			local ret = TakeAllRandItem( character, actions[i].p1 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc: TakeAllRandItem 失败！" )
				SystemNotice( character, "ActionProc: TakeAllRandItem:提取npc的随机任务物品失败！" )
				return LUA_FALSE
			end			
		elseif actions[i].func == ClearMission then
			PRINT( "ActionProc:ClearMission, p1 = ", actions[i].p1 )
			local ret = ClearMission( character, actions[i].p1 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc: ClearMission 失败！" )
				SystemNotice( character, "ActionProc: 清除任务ID失败！" )
				return LUA_FALSE
			end
		elseif actions[i].func == ClearTrigger then
			PRINT( "ActionProc:ClearTrigger, p1 = ", actions[i].p1 )
			local ret = ClearTrigger( character, actions[i].p1 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc: ClearTrigger 失败！" )
				SystemNotice( character, "ActionProc: 清除触发器ID失败！" )
				return LUA_FALSE
			end
		elseif actions[i].func == DeleteTrigger then
			PRINT( "ActionProc:DeleteTrigger, p1 = ", actions[i].p1 )
			local ret = DeleteTrigger( character, actions[i].p1 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc: DeleteTrigger 失败！" )
				SystemNotice( character, "ActionProc: 删除触发器ID失败！" )
				return LUA_FALSE
			end
		elseif actions[i].func == ClearFlag then
			PRINT( "ActionProc:ClearFlag, p1 = , p2 = ", actions[i].p1, actions[i].p2 )
			local ret = ClearFlag( character, actions[i].p1, actions[i].p2 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc: ClearFlag 失败！" )
				SystemNotice( character, "ActionProc: 清除任务标签失败！" )
				return LUA_FALSE
			end
		elseif actions[i].func == ClearRecord then
			PRINT( "ActionProc:ClearRecord, p1 = ", actions[i].p1 )
			local ret = ClearRecord( character, actions[i].p1 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc:ClearRecord 失败！" )
				SystemNotice( character, "ActionProc:清除历史记录标签失败！" )
				return LUA_FALSE
			end
		elseif actions[i].func == RefreshCompleteFlag then
			PRINT( "ActionProc:RefreshCompleteFlag, p1 = ", actions[i].p1 )
			local ret = RefreshCompleteFlag( character, actions[i].p1 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc:RefreshCompleteFlag 失败！" )
				SystemNotice( character, "ActionProc:RefreshCompleteFlag,刷新任务完成状态错误！" )
				return LUA_FALSE
			end
		elseif actions[i].func == ReAll then
			PRINT( "ActionProc:ReAll" )
			ReAll( character )
		elseif actions[i].func == ReAllHp then
			PRINT( "ActionProc:ReAllHp" )
			ReAllHp( character )
		elseif actions[i].func == ReAllSp then
			PRINT( "ActionProc:ReAllSp" )
			ReAllSp( character )
		elseif actions[i].func == ReHp then
			PRINT( "ActionProc:ReHp, p1 = ", actions[i].p1 )
			ReHp( character, actions[i].p1 )
		elseif actions[i].func == ReSp then
			PRINT( "ActionProc:ReSp, p1 = ", actions[i].p1 )
			ReSp( character, actions[i].p1 )
		elseif actions[i].func == SystemNotice then
			PRINT( "ActionProc:SystemNotice, p1 = ", actions[i].p1 )
			SystemNotice( character, actions[i].p1 )
		elseif actions[i].func == BickerNotice then
			PRINT( "ActionProc:BickerNotice, p1 = ", actions[i].p1 )
			BickerNotice( character, actions[i].p1 )			
		elseif actions[i].func == HelpInfo then
			PRINT( "ActionProc:HelpInfo, p1 = , p2 = ", actions[i].p1, actions[i].p2 )
			HelpInfo( character, actions[i].p1, actions[i].p2 )
		elseif actions[i].func == Show then
			PRINT( "ActionProc:Show" )
			Show( character )
		elseif actions[i].func == Hide then
			PRINT( "ActionProc:Hide" )
			Hide( character )
		elseif actions[i].func == UpdateGoodsData then
			PRINT( "ActionProc:UpdateGoodsData" )
			UpdateGoodsData( character )
		elseif actions[i].func == UpdateGoodsKinds then
			PRINT( "ActionProc:UpdateGoodsKinds" )
			UpdateGoodsKinds( character )
		elseif actions[i].func == GiveMission then
			PRINT( "ActionsProc:GiveMission, p1 = ", actions[i].p1 )
			local ret = GiveMission( character, actions[i].p1 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc:GiveMission 失败！" )
				SystemNotice( character, "ActionProc:GiveMission失败！" )
				return LUA_FALSE
			end
		elseif actions[i].func == ObligeAcceptMission then
			PRINT( "ActionsProc:ObligeAcceptMission, p1 = ", actions[i].p1 )
			local ret = ObligeAcceptMission( character, actions[i].p1 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc:ObligeAcceptMission 失败！" )
				SystemNotice( character, "ActionProc:ObligeAcceptMission失败！" )
				return LUA_FALSE
			end
		elseif actions[i].func == ObligeCompleteMission then
			PRINT( "ActionsProc:ObligeCompleteMission, p1 = ", actions[i].p1 )
			local ret = ObligeCompleteMission( character, actions[i].p1 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc:ObligeCompleteMission 失败！" )
				SystemNotice( character, "ActionProc:ObligeCompleteMission失败！" )
				return LUA_FALSE
			end
		elseif actions[i].func == SummonNpc then
			PRINT( "ActionsProc:SummonNpc, p1, p2, p3, p4", actions[i].p1, actions[i].p2, actions[i].p3, actions[i].p4 )
			local ret = SummonNpc( actions[i].p1, actions[i].p2, actions[i].p3, actions[i].p4 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionsProc:SummonNpc 失败！" )
				SystemNotice( character, "ActionsProc:SummonNpc 失败！" )
				return LUA_FALSE
			end
		elseif actions[i].func == ConvoyNpc then
			PRINT( "ActionsProc:ConvoyNpc, p1, p2, p3, p4", actions[i].p1, actions[i].p2, actions[i].p3, actions[i].p4 )
			local ret = ConvoyNpc( character, actions[i].p1, actions[i].p2, actions[i].p3, actions[i].p4 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionsProc:ConvoyNpc 失败！" )
				SystemNotice( character, "ActionsProc:ConvoyNpc 失败！" )
				return LUA_FALSE
			end
		elseif actions[i].func == ClearConvoyNpc then
			PRINT( "ActionsProc:ClearConvoyNpc, p1 = , p2 = ", actions[i].p1, actions[i].p2 )
			local ret = ClearConvoyNpc( character, actions[i].p1, actions[i].p2 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionsProc:ClearConvoyNpc 失败！" )
				SystemNotice( character, "ActionsProc:ClearConvoyNpc 失败！" )
				return LUA_FALSE
			end
		elseif actions[i].func == TakeXmasYB then
			PRINT( "ActionProc:TakeXmasYB, p1 = , p2 = ", actions[i].p1, actions[i].p2 )
			local ret = TakeXmasYB( character, actions[i].p1, actions[i].p2 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc: TakeXmasYB 失败！" )
				SystemNotice( character, "ActionProc: 提取硬币失败！" )
				return LUA_FALSE
			end
		elseif actions[i].func == CpHuojiNum then
			PRINT( "ActionsProc:CpHuojiNum, p1 = ", actions[i].p1 )
			local ret = CpHuojiNum( character, actions[i].p1 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionsProc:CpHuojiNum 失败！" )
				SystemNotice( character, "ActionsProc:CpHuojiNum 失败！" )
				return LUA_FALSE
			end
		elseif actions[i].func == CpMiluNum then
			PRINT( "ActionsProc:CpMiluNum, p1 = ", actions[i].p1 )
			local ret = CpMiluNum( character, actions[i].p1 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionsProc:CpMiluNum 失败！" )
				SystemNotice( character, "ActionsProc:CpMiluNum 失败！" )
				return LUA_FALSE
			end
		elseif actions[i].func == CpXuerenNum then
			PRINT( "ActionsProc:CpXuerenNum, p1 = ", actions[i].p1 )
			local ret = CpXuerenNum( character, actions[i].p1 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionsProc:CpXuerenNum 失败！" )
				SystemNotice( character, "ActionsProc:CpXuerenNum 失败！" )
				return LUA_FALSE
			end
		elseif actions[i].func == ClearAllConvoyNpc then
			PRINT( "ActionsProc:ClearAllConvoyNpc, p1 = ", actions[i].p1 )
			local ret = ClearAllConvoyNpc( character, actions[i].p1 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionsProc:ClearAllConvoyNpc 失败！" )
				SystemNotice( character, "ActionsProc:ClearAllConvoyNpc 失败！" )
				return LUA_FALSE
			end
		elseif actions[i].func == SetMissionFailure then
			PRINT( "ActionsProc:SetMissionFailure, p1 = ", actions[i].p1 )
			local ret = SetMissionFailure( character, actions[i].p1 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionsProc:SetMissionFailure 失败！" )
				SystemNotice( character, "ActionsProc:SetMissionFailure 失败！" )
				return LUA_FALSE
			end
		elseif actions[i].func == SetMissionComplete then
			PRINT( "ActionsProc:SetMissionComplete, p1 = ", actions[i].p1 )
			local ret = SetMissionComplete( character, actions[i].p1 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionsProc:SetMissionComplete 失败！" )
				SystemNotice( character, "ActionsProc:SetMissionComplete 失败！" )
				return LUA_FALSE
			end
		elseif actions[i].func == SetTestTime then
			PRINT( "ActionProc:SetTestTime, p1 = , p2 = ", actions[i].p1, actions[i].p2 )
			local ret = SetTestTime( character, npc, actions[i].p1, actions[i].p2 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc: SetTestTime 失败！" )
				SystemNotice( character, "ActionProc: SetTestTime设置初始时间失败！" )
				return LUA_FALSE
			end
		elseif actions[i].func == RenewTestTime1 then
			PRINT( "ActionProc:RenewTestTime1, p1 = , p2 = ", actions[i].p1, actions[i].p2 )
			local ret = RenewTestTime1( character, npc, actions[i].p1, actions[i].p2 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc: RenewTestTime1 失败！" )
				SystemNotice( character, "ActionProc: RenewTestTime1检测新的时间失败！" )
				return LUA_FALSE
			end
		elseif actions[i].func == RenewTestTime2 then
			PRINT( "ActionProc:RenewTestTime2, p1 = , p2 = ", actions[i].p1, actions[i].p2 )
			local ret = RenewTestTime2( character, npc, actions[i].p1, actions[i].p2 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc: RenewTestTime2 失败！" )
				SystemNotice( character, "ActionProc: RenewTestTime2检测新的时间失败！" )
				return LUA_FALSE
			end
		elseif actions[i].func == FailureRandMissionCount then
			PRINT( "ActionsProc:FailureRandMissionCount, p1 = ", actions[i].p1 )
			local ret = FailureRandMissionCount( character, actions[i].p1 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionsProc:FailureRandMissionCount 失败！" )
				SystemNotice( character, "ActionsProc:FailureRandMissionCount 失败！" )
				return LUA_FALSE
			end
		elseif actions[i].func == SetSpawnPos then
			PRINT( "ActionsProc:SetSpawnPos, p1 = ", actions[i].p1 )
			local ret = SetSpawnPos( character, actions[i].p1 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionsProc:SetSpawnPos 失败！" )
				SystemNotice( character, "ActionsProc:SetSpawnPos 失败！" )
				return LUA_FALSE
			end
		elseif actions[i].func == SetProfession then
			PRINT( "ActionsProc:SetProfession, p1 = ", actions[i].p1 )
			local ret = SetProfession( character, actions[i].p1 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionsProc:SetProfession 失败！" )
				SystemNotice( character, "ActionsProc:SetProfession 失败！" )
				return LUA_FALSE
			end
		elseif actions[i].func == GoTo then
			PRINT( "ActionsProc:GoTo, p1 = , p2 = , p3 = ", actions[i].p1, actions[i].p2, actions[i].p3 )
			local ret = GoTo( character, actions[i].p1, actions[i].p2, actions[i].p3 )
			PRINT( "Goto: ret = ", ret )
			if ret ~= LUA_TRUE then
				PRINT( "ActionsProc:GoTo 失败！" )
				SystemNotice( character, "ActionsProc:GoTo 失败！" )
				return LUA_FALSE
			end
		elseif actions[i].func == MultiTrigger then
			PRINT( "ActionsProc:MultiTrigger, p1, p2 ", actions[i].p1, actions[i].p2 )
			local ret = MultiTrigger( character, npc, page, actions[i].p1, actions[i].p2 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionsProc:MultiTrigger 失败！" )
				SystemNotice( character, "ActionsProc:MultiTrigger 失败！" )
				return LUA_FALSE
			end
		elseif actions[i].func == SaveMissionData then
			PRINT( "ActionsProc:SaveMissionData" )
			local ret = SaveMissionData( character )
			if ret ~= LUA_TRUE then
				PRINT( "ActionsProc:SaveMissionData 失败！" )
				SystemNotice( character, "ActionsProc:SaveMissionData 失败！" )
				return LUA_FALSE
			end
		elseif actions[i].func == SetPkState then
			PRINT( "ActionsProc:SetPkState, p1 = ", actions[i].p1 )
			local ret = SetPkState( character, actions[i].p1 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionsProc:SetPkState 失败！" )
				SystemNotice( character, "ActionsProc:SetPkState 失败！" )
				return LUA_FALSE
			end
		elseif actions[i].func == MoveCity then
			PRINT( "ActionsProc:MoveCity, p1 = ", actions[i].p1 )
			local ret = MoveCity( character, actions[i].p1 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionsProc:MoveCity 失败！" )
				SystemNotice( character, "ActionsProc:MoveCity 失败！" )
				return LUA_FALSE
			end
		elseif actions[i].func == CreateGuild then
			PRINT( "ActionsProc:CreateGuild, p1 = ", actions[i].p1 )
			local ret = CreateGuild( character, actions[i].p1 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionsProc:CreateGuild 失败！" )
				SystemNotice( character, "ActionsProc:CreateGuild 失败！" )
				return LUA_FALSE
			end
		elseif actions[i].func == ListAllGuild then
			PRINT( "ActionsProc:ListAllGuild, p1 = ", actions[i].p1 )
			local ret = ListAllGuild( character, actions[i].p1 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionsProc:ListAllGuild 失败！" )
				SystemNotice( character, "ActionsProc:ListAllGuild 失败！" )
				return LUA_FALSE
			end
		elseif actions[i].func == RepairBoat then
			PRINT( "ActionsProc:RepairBoat" )
			local ret = RepairBoat( character )
			if ret ~= LUA_TRUE then
				PRINT( "ActionsProc:RepairBoat 失败！" )
				SystemNotice( character, "ActionsProc:RepairBoat 失败！" )
				return LUA_FALSE
			end
		elseif actions[i].func == SupplyBoat then
			PRINT( "ActionsProc:SupplyBoat" )
			local ret = SupplyBoat( character )
			if ret ~= LUA_TRUE then
				PRINT( "ActionsProc:SupplyBoat 失败！" )
				SystemNotice( character, "ActionsProc:SupplyBoat 失败！" )
				return LUA_FALSE
			end
		elseif actions[i].func == CreateBoat then
			PRINT( "ActionsProc:CreateBoat, p1 = , p2 = ", actions[i].p1, actions[i].p2 )
			local ret = CreateBoat( character, actions[i].p1, actions[i].p2 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionsProc:CreateBoat 失败！" )
				--SystemNotice( character, "ActionsProc:CreateBoat 失败！" )
				return LUA_FALSE
			end
		elseif actions[i].func == BoatLuanchOut then
			PRINT( "ActionsProc:BoatLuanchOut, p1 = , p2 = , p3 = , p4 = , p5 = ", actions[i].p1, actions[i].p2, actions[i].p3, actions[i].p4, actions[i].p5 )
			local ret = BoatLuanchOut( character, actions[i].p1, actions[i].p2, actions[i].p3, actions[i].p4, actions[i].p5 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionsProc:BoatLuanchOut 失败！" )
				SystemNotice( character, "ActionsProc:BoatLuanchOut 失败！" )
				return LUA_FALSE
			end			
		elseif actions[i].func == LuanchBerthList then
			--PRINT( "ActionsProc:RemoveYS" )
			PRINT( "ActionsProc:BoatBerthList, p1 = , p2 = , p3 = , p4 = ", actions[i].p1, actions[i].p2, actions[i].p3, actions[i].p4 )
			local ret = LuanchBerthList( character, npc, actions[i].p1, actions[i].p2, actions[i].p3, actions[i].p4 )
			--local ret1 = RemoveYS( character )
			if ret ~= LUA_TRUE then
				PRINT( "ActionsProc:LuanchBerthList 失败！" )
				SystemNotice( character, "ActionsProc:LuanchBerthList 失败！" )
				return LUA_FALSE
			end
			--if ret1 ~= 1 then
			--	PRINT( "ActionsProc:RemoveYS 失败！" )
			--	SystemNotice( character, "ActionsProc:RemoveYS 失败！" )
			--	return LUA_FALSE
			--end
		elseif actions[i].func == TradeBerthList then
			PRINT( "ActionsProc:TradeBerthList, p1 = ", actions[i].p1 )
			local ret = TradeBerthList( character, npc, actions[i].p1 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionsProc:TradeBerthList 失败！" )
				SystemNotice( character, "ActionsProc:TradeBerthList 失败！" )
				return LUA_FALSE
			end
		elseif actions[i].func == CreatBBBB then
			local ret = CreatBBBB( character, actions[i].p1)
			if ret ~= LUA_TRUE then
				return LUA_FALSE
			end
		elseif actions[i].func == CheckBBBB then
			local ret = CheckBBBB( character )
			if ret ~= LUA_TRUE then
				return LUA_FALSE
			end	
		elseif actions[i].func == RepairBerthList then
			PRINT( "ActionsProc:RepairBerthList, p1 = ", actions[i].p1 )
			local ret = RepairBerthList( character, npc, actions[i].p1 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionsProc:RepairBerthList 失败！" )
				SystemNotice( character, "ActionsProc:RepairBerthList 失败！" )
				return LUA_FALSE
			end
		elseif actions[i].func == SalvageBerthList then
			PRINT( "ActionsProc:SalvageBerthList, p1 = ", actions[i].p1 )
			local ret = SalvageBerthList( character, npc, actions[i].p1 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionsProc:SalvageBerthList 失败！" )
				SystemNotice( character, "ActionsProc:SalvageBerthList 失败！" )
				return LUA_FALSE
			end
		elseif actions[i].func == SupplyBerthList then
			PRINT( "ActionsProc:SupplyBerthList, p1 = ", actions[i].p1 )
			local ret = SupplyBerthList( character, npc, actions[i].p1 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionsProc:SupplyBerthList 失败！" )
				SystemNotice( character, "ActionsProc:SupplyBerthList 失败！" )
				return LUA_FALSE
			end
		elseif actions[i].func == BoatLevelBerthList then
			PRINT( "ActionsProc:BoatLevelBerthList, p1 = ", actions[i].p1 )
			local ret = BoatLevelBerthList( character, npc, actions[i].p1 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionsProc:BoatLevelBerthList 失败！" )
				SystemNotice( character, "ActionsProc:BoatLevelBerthList 失败！" )
				return LUA_FALSE
			end
		elseif actions[i].func == BoatBerth then
			PRINT( "ActionsProc:BoatBerth, p1 = , p2 = , p3 = , p4 = ", actions[i].p1, actions[i].p2, actions[i].p3, actions[i].p4 )
			local ret = BoatBerth( character, actions[i].p1, actions[i].p2, actions[i].p3, actions[i].p4 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionsProc:BoatBerth 失败！" )
				SystemNotice( character, "ActionsProc:BoatBerth 失败！" )
				return LUA_FALSE
			end
		elseif actions[i].func == PackBagList then
			PRINT( "ActionsProc:PackBagList, p1 = , p2 = , p3 = ", actions[i].p1, actions[i].p2, actions[i].p3 )
			local ret = PackBagList( character, actions[i].p1, actions[i].p2, actions[i].p3 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionsProc:PackBagList 失败！" )
				SystemNotice( character, "ActionsProc:PackBagList 失败！" )
				return LUA_FALSE
			end
		elseif actions[i].func == SetTradeItemLevel then
			PRINT( "ActionsProc:SetTradeItemLevel, p1 = ", actions[i].p1 )
			local ret = SetTradeItemLevel( character, actions[i].p1 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionsProc:SetTradeItemLevel 失败！" )
				SystemNotice( character, "ActionsProc:SetTradeItemLevel 失败！" )
				return LUA_FALSE
			end
		elseif actions[i].func == AdjustTradeCess then
			PRINT( "ActionsProc:AdjustTradeCess, p1 = , p2 = ", actions[i].p1, actions[i].p2 )
			local ret = AdjustTradeCess( character, actions[i].p1, actions[i].p2 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionsProc:AdjustTradeCess 失败！" )
				SystemNotice( character, "ActionsProc:AdjustTradeCess 失败！" )
				return LUA_FALSE
			end
		elseif actions[i].func == OpenBank then
			PRINT( "ActionsProc:OpenBank" )
			local ret = OpenBank( character, npc )
			if ret ~= LUA_TRUE then
				PRINT( "ActionsProc:OpenBank 失败！" )
				SystemNotice( character, "ActionsProc:OpenBank 失败！" )
				return LUA_FALSE
			end
		elseif actions[i].func == OpenHair then
			PRINT( "ActionsProc:OpenHair" )
			local ret = OpenHair( character, npc )
			if ret ~= LUA_TRUE then
				PRINT( "ActionsProc:OpenHair 失败！" )
				SystemNotice( character, "ActionsProc:OpenHair 失败！" )
				return LUA_FALSE
			end
		elseif actions[i].func == CheckChaItem then
				PRINT( "ActionProc: CheckChaItem, p1 = ", actions[i].p1)
				local ret = CheckChaItem( character)
				if ret ~= LUA_TRUE then
					PRINT( "ActionProc:CheckChaItem = false" )
					return LUA_FALSE
				end
		elseif actions[i].func == OpenRepair then
			PRINT( "ActionsProc:OpenRepair" )
			local ret = OpenRepair( character, npc )
			if ret ~= LUA_TRUE then
				PRINT( "ActionsProc:OpenRepair 失败！" )
				SystemNotice( character, "ActionsProc:OpenRepair 失败！" )
				return LUA_FALSE
			end
		elseif actions[i].func == RandFunction then
			PRINT( "ActionsProc:RandFunction, page = , p1 = , p2 = ", page, actions[i].p1, actions[i].p2 )
			local ret = RandFunction( character, npc, page, actions[i].p1, actions[i].p2 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionsProc:RandFunction 失败！" )
				SystemNotice( character, "ActionsProc:RandFunction 失败！" )
				return LUA_FALSE
			end
		elseif actions[i].func == AddCredit then
			PRINT( "ActionsProc:AddCredit, p1 = ", actions[i].p1 )
			local ret = AddCredit( character, actions[i].p1 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionsProc:AddCredit 失败！" )
				SystemNotice( character, "ActionsProc:AddCredit 失败！" )
				return LUA_FALSE
			end
		elseif actions[i].func == Givecrab then
			PRINT( "ActionProc: Givecrab, p1 = ", actions[i].p1)
			local ret = Givecrab( character,npc, actions[i].p1)
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc:Givecrab = false" )
				return LUA_FALSE
			end
		elseif actions[i].func == TakeOffer then
			PRINT( "ActionsProc:TakeOffer, p1 = ", actions[i].p1 )
			local ret = TakeOffer( character, actions[i].p1 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionsProc:TakeOffer 失败！" )
				SystemNotice( character, "ActionsProc:TakeOffer 失败！" )
				return LUA_FALSE
			end
		elseif actions[i].func == ValentinesRing then
			PRINT( "ActionsProc:ValentinesRing, p1 = ", actions[i].p1 )
			local ret = ValentinesRing( character, actions[i].p1 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionsProc:ValentinesRing 失败！" )
				SystemNotice( character, "ActionsProc:ValentinesRing 失败！" )
				return LUA_FALSE
			end
		elseif actions[i].func == Take_THSJ_Record then     ---清除任务记录
			local ret = Take_THSJ_Record( character )
			if ret ~= LUA_TRUE then
				return LUA_FALSE
			end
		elseif actions[i].func == ClearItemNum2 then
			PRINT( "ActionProc:ClearItemNum2, p1, p2, p3", actions[i].p1, actions[i].p2, actions[i].p3 )
			local ret = ClearItemNum2( character)
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc: ClearItemNum2 失败！" )
				SystemNotice( character, "ActionProc: ClearItemNum2" )
				return LUA_FALSE
		end
		elseif actions[i].func == ArenaTeamSignUP then
			PRINT( "ActionProc:ArenaTeamSignUP")
			local ret = ArenaTeamSignUP( character)
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc: ArenaTeamSignUP 失败！" )
				SystemNotice( character, "ActionProc: ArenaTeamSignUP" )
				return LUA_FALSE
		end
		elseif actions[i].func == ArenaTeamCancel then
			PRINT( "ActionProc:ArenaTeamCancel")
			local ret = ArenaTeamCancel( character)
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc: ArenaTeamCancel 失败！" )
				--SystemNotice( character, "ActionProc: ArenaTeamCancel" )
				return LUA_FALSE
		end
		elseif actions[i].func == CheckIsValidRegTeam then
			PRINT( "ActionProc:CheckIsValidRegTeam")
			local ret = CheckIsValidRegTeam( character)
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc: CheckIsValidRegTeam 失败！" )
				SystemNotice( character, "ActionProc: CheckIsValidRegTeam" )
				return LUA_FALSE
		end
		else
			PRINT( "ActionProc:未知的操作错误的函数信息！" )
			SystemNotice( character, "ActionProc:未知的操作错误函数！" )
			return LUA_FALSE
		end
	end
	
	PRINT( "ActionProc: return true" )
	return LUA_TRUE
end

--NPC触发器条件检查函数
function NpcTriggerCheck( character, trigger )
	PRINT( "NpcTriggerCheck" )
	if trigger == nil or trigger.conditions == nil then
		SystemNotice( character, "NpcTriggerCheck:函数参数错误！" )
		return LUA_ERROR
	end
	PRINT( "NpcTriggerCheck: ConditionsTest" )
	return ConditionsTest( character, trigger.conditions )
end

function Take_THSJ_Record(role)     --清除任务记录
	for checknum = 1 , 7 , 1 do
		local value = 1280 + checknum
		local Ishave = HasRecord( role , value )
		if Ishave == LUA_TRUE then
			ClearRecord( role , value )
		end
	end
	return LUA_TRUE
end

--是否任务已经完成
function NpcTriggerResult( character, trigger )
	PRINT( "NpcTriggerResult" )
	if trigger == nil then
		SystemNotice( character, "NpcTriggerResult:函数参数错误！" )
		return LUA_ERROR
	end
	
	--默认如果触发器没有结果条件则为永远不符合条件
	if trigger.restul == nil or trigger.result[1] == nil then
		PRINT( "NpcTriggerResult:条件为空,默认返回FALSE，表示永远不符合条件!" )
		return LUA_FALSE
	end
	
	PRINT( "NpcTriggerResult: ConditionsTest" )
	return ConditionsTest( character, trigger.result )
end

--取消一个任务
function NpcCancelTrigger( character, trigger, misid, scriptid )
	PRINT( "NpcCancelTrigger" )
	if trigger == nil or trigger.actions == nil then
		SystemNotice( character, "NpcCancelTrigger:函数参数错误！" )
		return LUA_ERROR
	end
	
	--检测触发器限制条件
	PRINT( "NpcCancelTrigger:conditions test" )
	if trigger.conditions ~= nil and trigger.conditions[1] ~= nil then
		local ret = ConditionsTest( character, trigger.conditions )
		if ret ~= LUA_TRUE then
			PRINT( "NpcCancelTrigger: conditions return false, return false" )
			return LUA_FALSE
		end
	end
	
	PRINT( "NpcCancelTrigger:actions proc" )
	if trigger.actions.count ~= nil then
		local actions = {}
		actions[1] = {}
		actions.count = 1
		for n = 1, trigger.actions.count, 1 do
			actions[1].func = trigger.actions[n].func
			actions[1].p1 = trigger.actions[n].p1
			actions[1].p2 = trigger.actions[n].p2
			actions[1].p3 = trigger.actions[n].p3
			actions[1].p4 = trigger.actions[n].p4
			actions[1].p5 = trigger.actions[n].p5
			actions[1].p6 = trigger.actions[n].p6
			actions[1].p7 = trigger.actions[n].p7
			actions[1].p8 = trigger.actions[n].p8
			PRINT( "NpcCancelTrigger:actions proc, func, p1, p2, p3, p4, p5, p6", trigger.actions[n].func, trigger.actions[n].p1, trigger.actions[n].p2, trigger.actions[n].p3, trigger.actions[n].p4 )
			local ret = ActionsProc( character, actions, nil, nil, misid, scriptid )
			if ret ~= LUA_TRUE then
				PRINT( "NpcCancelTrigger: actions return false, return false" )
			end
		end
	end
	
	PRINT( "NpcCancelTrigger: return true" )
	return LUA_TRUE
end

function NpcTrigger( character, npc, trigger, misid, scriptid )
	PRINT( "NpcTrigger" )
	if trigger == nil or trigger.actions == nil then
		SystemNotice( character, "NpcTrigger:函数参数错误！" )
		return LUA_ERROR
	end
	
	--检测触发器限制条件
	PRINT( "NpcTrigger:conditions test" )
	if trigger.conditions ~= nil and trigger.conditions[1] ~= nil then
		local ret = ConditionsTest( character, trigger.conditions )
		if ret ~= LUA_TRUE then
			PRINT( "NpcTrigger: conditions return false, return false" )
			return LUA_FALSE
		end
	end
	
	PRINT( "NpcTrigger:actions proc" )
	if trigger.actions ~= nil and trigger.actions[1] ~= nil then
		local ret = ActionsProc( character, trigger.actions, npc, nil, misid, scriptid )
		if ret ~= LUA_TRUE then
			PRINT( "NpcTrigger: actions return false, return false" )
		end
	end
	
	PRINT( "NpcTrigger: return true" )
	return LUA_TRUE
end

function TriggerProc( character, id, param1, param2, param3, param4 )
	PRINT( "TriggerProc:2 ID = , Trigger = , p1 = , p2 = , p3 = , p4 = ", id, TriggerList[id], param1, param2, param3, param4 )	
	if id == nil or TriggerList[id] == nil or TriggerList[id].actions == nil or param1 == nil or param2 == nil then
		SystemNotice( character, "TriggerProc:错误的函数信息或者触发器没有动作信息！ID = "..id )
		return LUA_ERROR
	end
	
	PRINT( "TriggerProc: conditions proc!" )
	local trigger = TriggerList[id]
	if trigger.tp == MIS_TRIGGER_NOMAL then
		--检测触发器限制条件
		if trigger.conditions ~= nil and trigger.conditions[1] ~= nil then
			local ret = ConditionsTest( character, trigger.conditions, param1, param2 )
			if ret ~= LUA_TRUE then
				PRINT( "TriggerProc: conditions return false, return false" )
				return LUA_FALSE
			end
		end
		
		--处理触发器动作
		PRINT( "TriggerProc:actions proc" )
		if trigger.actions ~= nil and trigger.actions[1] ~= nil then
			local ret = ActionsProc( character, trigger.actions, nil, nil, 0, 0, param1, param2 )
			if ret ~= LUA_TRUE then
				PRINT( "TriggerProc: actions return false, return false" )
				SystemNotice( character, "TriggerProc: actions return false, return false" )
				return LUA_FALSE
			end
		end
	
	elseif trigger.tp == MIS_TRIGGER_RAND then
		PRINT( "TriggerProc:随机任务：param3, param4", param3, param4 )
		if trigger.actions[1].func == AddRMNextFlag then
			if param3 == nil or param4 == nil then
				PRINT( "TriggerProc:随机任务：重设AddRMNextFlag函数参数时，param3, param4不能为nil" )
				SystemNotice( character, "TriggerProc:随机任务：重设AddRMNextFlag函数参数时，param3, param4不能为nil" )
				LG( "randmission_error", "TriggerProc:随机任务：重设AddRMNextFlag函数参数时，param3, param4不能为nil, triggerid = ", id )
				return LUA_FALSE
			end
			
			trigger.actions[1].p2 = param3
			trigger.actions[1].p3 = param4
		end
		
		--检测触发器限制条件
		if trigger.conditions ~= nil and trigger.conditions[1] ~= nil then
			local ret = ConditionsTest( character, trigger.conditions, param1, param2 )
			if ret ~= LUA_TRUE then
				PRINT( "TriggerProc: 随机任务：conditions return false, return false" )
				return LUA_FALSE
			end
		end
		
		--处理触发器动作
		PRINT( "TriggerProc:随机任务：actions proc" )
		if trigger.actions ~= nil and trigger.actions[1] ~= nil then
			local ret = ActionsProc( character, trigger.actions )
			if ret ~= LUA_TRUE then
				PRINT( "TriggerProc: 随机任务：actions return false, return false" )
				SystemNotice( character, "TriggerProc: 随机任务：actions return false, return false" )
				return LUA_FALSE
			end
		end
		--reset rand mission trigger actions's value
		trigger.actions[1].p2 = 0
		trigger.actions[1].p3 = 0
	else
		PRINT( "TriggerProc:错误的触发器类型信息。id = ", id )
		SystemNotice( character, "TriggerProc:错误的触发器类型信息。id = "..id )
		return LUA_FALSE
	end
	
	PRINT( "TriggerProc: return true." )
	return LUA_TRUE
end

function TriggerResult( character, id, param1, param2 )
	PRINT( "TriggerResult" )	
	if id == nil or TriggerList[id] == nil or param1 == nil or param2 == nil then
		SystemNotice( character, "TriggerResult:错误的函数信息！" )
		return LUA_ERROR
	end
	
	PRINT( "TriggerResult: conditions proc!" )
	local trigger = TriggerList[id]
	
	--处理触发器结束动作
	PRINT( "TriggerProc:failures proc" )
	if trigger.failures ~= nil and trigger.failures[1] ~= nil then
		local ret = ActionsProc( character, trigger.failures )
		if ret ~= LUA_TRUE then
			PRINT( "TriggerProc: failures return false, return false" )
		end
	end
	
	PRINT( "TriggerResult: return true" )
	return LUA_TRUE
end 

--获取角色的适合的随机任务生成信息段
function GetRandMissionLevel( character, sid, leveltp )
	if leveltp == MIS_LEVEL_CHAR then	    --角色随机任务等级类型
		local level = GetCharMissionLevel( character )
		if level == nil then
			return 10000
		end
		return level --1 + GetSection( level, 5 )
	elseif leveltp == MIS_LEVEL_GANG then	--公会随机任务等级类型
		local level = GetCharGangLevel( character )
		return level
	else
		SystemNotice( character, "GetRandMissionLevel:错误的随机任务等级类型！missid = "..sid )
		LG( "randmission_error", "GetRandMissionLevel:错误的随机任务等级类型！missid = "..sid )
		return 10000
	end
	return 10000
end

--根据随机任务送物件库中随机生成一个物件，给玩家送到NPC处
function GetRandMissionSendItem( itemlist )
	PRINT( "GetRandMissionSendItem:itemlist = , itemlist.count = ", itemlist, itemlist.count )
	local id = Rand( itemlist.count ) + 1
	PRINT( "GetRandMissionSendItem:rand value = , item id = ", id, itemlist[id] )
	return itemlist[id]
end

--根据角色完成的随机任务次数随机产生一个高级物品，作为任务奖励
function GetRandMissionPrize( character, misname, id, loopinfo, loopdata )
	PRINT( "GetRandMissionPrize" )
	if loopinfo == nil or loopdata == nil or id == nil or misname == nil then
		PRINT( "GetRandMissionPrize: id = , loopdata = ", id, loopdata )
		LG( "randmission_error", "GetRandMissionPrize: 函数参数错误!prizeitem = nil and id = "..id )
		SystemNotice( character, "GetRandMissionPrize:函数参数错误，奖励失败！" )
		return 0, 0
	end
	
	local ret, loopnum = GetRandMissionNum( character, id )
	if ret ~= LUA_TRUE then
		PRINT( "GetRandMissionPrize:GetRandMissionNum函数调用失败，获取不到角色随机任务的环计数！id = ", id )
		LG( "randmission_error", "GetRandMissionPrize:GetRandMissionNum函数调用失败，获取不到角色随机任务的环计数！id = ", id )
		SystemNotice( character, "GetRandMissionPrize:GetRandMissionNum函数调用失败，获取不到角色随机任务的环计数！id = "..id )
		--清除该角色该随机任务计数
		ResetRandMissionNum( character, id )
		return 0, 0
	else		
		loopnum = loopnum + 1 --转换为lua数组索引
		PRINT( "GetRandMissionPrize:GetRandMissionNum: return loopnum = ", loopnum )
		PRINT( "loopdata, loopdata", loopdata, loopdata[loopnum] )
		if loopinfo[loopnum] == nil or loopdata[loopnum] == nil or loopdata[loopnum].Prize == nil then
			PRINT( "GetRandMissionPrize:无效的随机任务环数据信息或者奖励物品信息, id = , loopnum = ", id, loopnum )
			SystemNotice( character, "GetRandMissionPrize:无效的随机任务环数据信息或者奖励物品信息, id = "..id.." loopnum = "..loopnum )
			--清除该角色该随机任务计数
			ResetRandMissionNum( character, id )
			return 0, 0
		end
		
		local ret, miscount = GetRandMissionCount( character, id )
		miscount = miscount + 1
		SystemNotice( character, "你接受了任务《"..misname.."》第"..miscount.."节！" )
		
		PRINT( "GetRandMissionPrize:HasRandMissionCount, id = , num = ", loopinfo[loopnum].num )
		local ret = HasRandMissionCount( character, id, loopinfo[loopnum].num - 1 )
		if ret == LUA_TRUE then
			--清除该环任务计数，同时环计数增加
			--ret = AddRandMissionNum( character, id )
			--if ret ~= LUA_TRUE then
				--PRINT( "GetRandMissionPrizeItem:AddRandMissionNum重设任务环计数失败！id = ", id  )
				--LG( "randmission_error", "GetRandMissionPrizeItem:AddRandMissionNum重设任务环计数失败！id ", id )
				--SystemNotice( character, "GetRandMissionPrizeItem:AddRandMissionNum重设任务环计数失败！id = "..id )
				--return 0, 0
			--end
			
			PRINT( "GetRandMissionPrize:Prize", loopdata[loopnum].Prize )
			--角色不同段位作随机任务获得高级物品的几率将会随段位增加而下降
			local prizelist = loopdata[loopnum].Prize
			local value = Rand( 100 )
			PRINT( "GetRandMissionPrize: prize rand value = , odds = ", value, loopinfo[loopnum].odds )
			if value >= loopinfo[loopnum].odds then
				return 0, 0
			end
			
			if prizelist.tp == MIS_PRIZE_ITEM then
				--计算高级物品奖励随机率
				local randdata = 0
				for n = 1, prizelist.count, 1 do
					randdata = randdata + prizelist[n].p2
					PRINT( "GetRandMissionPrize: n = , randdata = , p2 = ", n, randdata, prizelist[n].p2 )
				end
				local prizevalue = Rand( randdata )
				local tempdata = 0
				for n = 1, prizelist.count, 1 do
					if prizevalue >= tempdata and prizevalue < tempdata + prizelist[n].p2 then
						PRINT( "GetRandMissionPrize: return n = , prizevalue = , prizetp = , p1 = ", n, prizevalue, prizelist[n].tp, prizelist[n].p1 )
						return prizelist[n].tp, prizelist[n].p1
					end
					tempdata = tempdata + prizelist[n].p2
				end
			else
				local index = Rand( prizelist.count ) + 1
				PRINT( "GetRandMissionPrize:prizetp = , p1 = , p2 = index = ", prizelist[index].tp, prizelist[index].p1, prizelist[index].p2, index )		
				if prizelist[index] == nil then
					SystemNotice( character, "错误：未发现随机任务的高级装备奖励信息！id = "..id.."prize index = "..index )
					LG( "randmission_error", "错误：未发现随机任务的高级装备奖励信息！id = "..id.." prize index = "..index )
					return 0
				end
				
				--local charname = GetCharName( character )
				--local str = "GetRandMissionPrizeItem, 分配给了角色一个高等级随机任务装备！name = 《"
				--str = str..charname.."》 item id = "..prizelist[index].."misid = "..id.."loopnum = "..loopnum
				--LG( "randmission_info", str )
				
				PRINT( "GetRandMissionPrize: return prizetp = , p1 = ", prizelist[index].tp, prizelist[index].p1 )
				return prizelist[index].tp, prizelist[index].p1
			end
		end
	end
	
	PRINT( "GetRandMissionPrize: return 0" )
	return 0, 0
end

--判断该随机任务是否可以被该角色接受
function IsRandMissionAccept( character, mission )
	PRINT( "IsRandMissionAccept:character, mission", character, mission )
	if mission == nil or mission.tp ~= RAND_MISSION then
		PRINT( "IsRandMissionAccept:参数错误或者不是随机任务类型数据信息！" )
		SystemNotice( character, "IsRandMissionAccept:参数错误或者不是随机任务类型数据信息！" )		
		return LUA_FALSE
	end
	
	--获取该角色随机任务数据段值
	local level = GetRandMissionLevel( character, mission.sid, mission.leveltp )
	PRINT( "IsRandMissionAccept:GetRandMissionLevel : level = ", level )
	if mission.RandInfo == nil or mission.RandInfo[level] == nil then
		PRINT( "IsRandMissionAccept: no level info and return false " )
		return LUA_FALSE
	end
	
	PRINT( "IsRandMissionAccept:GetRandMissionLevel : return true " )
	return LUA_TRUE
end
	
--测试计算随机任务公式
function GetRandMissionExp( loopnum, miscount, exp )
	--X*(350+Z*550)*0.0001*((10+Y*15)*0.001+INT(Y*0.1)*0.075)
	--x=总经验
	--y=小环数
	--z=大环数 
	
	if loopnum == nil or miscount == nil or exp == nil then
		PRINT( "GetRandMissionExp:函数参数错误！loopnum, miscount, exp", loopnum, miscount, exp )
		LG( "randmission_error", "GetRandMissionExp:函数参数错误！" )
		return 0
	end
	
	--local value = exp*(350 + loopnum*550)*0.0001*((10 + miscount*15)*0.001 + (miscount*0.1)*0.075)
	local value = exp*((20 + miscount*5)*0.002 + ToDword(miscount*0.1)*0.05)
	local newexp = ToDword( value )
	PRINT( "GetRandMissionExp:newexp = ", newexp )
	if newexp == nil then
		return 0
	end
	PRINT( "GetRandMissionExp:loopnum, miscount, exp, newexp", loopnum, miscount, exp, newexp )
	return newexp
end

function GetRandMissionMoney( loopnum, miscount, money )
	if loopnum == nil or miscount == nil or money == nil then
		PRINT( "GetRandMissionExp:函数参数错误！loopnu, miscount, money", loopnum, miscount, money )
		LG( "randmission_error", "GetRandMissionMoney:函数参数错误！" )
		return 0
	end
	
	--local value = money*(350 + loopnum*550)*0.0001*((10 + miscount*15)*0.001 + (miscount*0.1)*0.075)
	local value = money*((20 + miscount*5)*0.002 + ToDword(miscount*0.1)*0.05)
	local newmoney = ToDword( value )
	PRINT( "GetRandMissionExp:newmoney = ", newmoney )
	if newmoney == nil then
		return 0
	end
	
	return newmoney
end

--根据角色的信息生成一个随机任务
function CreateRandMission( character, npc, mission )
	PRINT( "CreateRandMission:character, npc, mission", character, npc, mission )
	if mission == nil or mission.tp ~= RAND_MISSION then
		PRINT( "CreateRandMission:参数错误或者不是随机任务类型数据信息！" )
		SystemNotice( character, "CreateRandMission:参数错误或者不是随机任务类型数据信息！" )		
		return LUA_FALSE
	end
				
	--初始化全局随机任务参数
	InitRandParam()
	RandParam.id = mission.id
	RandParam.sid = mission.sid
	RandParam.bounty = mission.bounty
	RandParam.npcname = mission.npcname
	RandParam.npcarea  = mission.npcarea	
	PRINT( "CreateRandMission:RandParam.id = , RandParam.sid = ,  bounty = , name = , area = ", RandParam.id, RandParam.sid, RandParam.bounty, RandParam.npcname, RandParam.npcarea )
	
	--获取该角色随机任务数据段值
	RandParam.level = GetRandMissionLevel( character, mission.sid, mission.leveltp )
	PRINT( "CreateRandMission:RandParam.level =, mission.RandInfo =, mission.RandInfo[level] = ", RandParam.level, mission.RandInfo, mission.RandInfo[RandParam.level] )
	if mission.RandInfo == nil or mission.RandInfo[RandParam.level] == nil then
		PRINT( "CreateRandMission:mission信息中未发现随机任务数据生成信息，请检查。level = "..RandParam.level )
		local desp = GetCharName( npc )
		desp = desp.."：抱歉我这里没有与您等级相应_的随机任务，请到别处看看吧！"
		HelpInfo( character, MIS_HELP_DESP, desp )
		return LUA_FALSE
	end
	
	PRINT( "CreateRandMission: rand type count = ", mission.RandInfo[RandParam.level].tpinfo.count )
	--随机一个任务类型
	--local tpinfoid = Rand( mission.RandInfo[RandParam.level].tpinfo.count ) + 1
	local tpinfoid = GetRandTpinfoIndex( mission.RandInfo[RandParam.level].tpinfo )
	
	PRINT( "CreateRandMission:Rand mission info, tpinfoid =, type = ", tpinfoid, mission.RandInfo[RandParam.level].tpinfo[tpinfoid].tp )
	if mission.RandInfo[RandParam.level].tpinfo[tpinfoid] == nil or mission.RandInfo[RandParam.level].tpinfo[tpinfoid].tp == nil then
		PRINT( "CreateRandMission:随机生成的任务类型快捷信息为空。level, tpinfoid", RandParam.level, tpinfoid )
		LG( "randmission_error", "CreateRandMission:随机生成的任务类型快捷信息为空。level = , tpinfoid = ", RandParam.level, tpinfoid )
		SystemNotice( character, "CreateRandMission:随机生成的任务类型快捷信息为空。level = , tpinfoid = "..RandParam.level..tpinfoid )
		return LUA_FALSE
	end
	
	--随机取一个任务数据
	RandParam.tp = mission.RandInfo[RandParam.level].tpinfo[tpinfoid].tp
	local tpindex = GetRandMissionTypeIndex( mission, RandParam.tp )
	PRINT( "CreateRandMission:tpindex = ", tpindex )
	if tpindex == 0 then
		LG( "randmission_error", "CreateRandMission:GetRandMissionTypeIndex:id, tp, level, exp, money, item, numdata", RandParam.id, RandParam.tp, RandParam.level, RandParam.exp, RandParam.money, RandParam.prizedata, RandParam.prizetp, RandParam.numdata )
		PRINT( "CreateRandMission:GetRandMissionTypeIndex未发现任务mission相匹配的随机任务类型初始化数据信息" )
		SystemNotice( character, "CreateRandMission:GetRandMissionTypeIndex未发现任务mission相匹配的随机任务类型初始化数据信息" )
		return LUA_FALSE
	end
	
	local randnum = mission.missionlist[tpindex].randnum
	if randnum == nil or randnum < 1 or randnum > 4 then
		LG( "randmission_error", "CreateRandMission:随机任务最大类型随机数量不能小于1或大于4！num = "..randnum )
		PRINT( "CreateRandMission:随机任务最大类型随机数量不能小于1或大于4！num = "..randnum )
		SystemNotice( character, "CreateRandMission:随机任务最大类型随机数量不能小于1或大于4！num = "..randnum )
		return LUA_FALSE
	end
	PRINT( "CreateRandMission:randnum = , val = ", mission.missionlist[tpindex].randnum, randnum )
	
	--获取随机任务的计数
	local ret, miscount = GetRandMissionCount( character, mission.id )
	--if miscount == 0 then
		--miscount = 1
	--end
	miscount = miscount + 1
	
	local ret, misloopnum = GetRandMissionNum( character, mission.id )
	--if misloopnum == 0 then
		--misloopnum = 1
	--end
	misloopnum = misloopnum + 1
	
	--X*(350+Z*550)*0.0001*((10+Y*15)*0.001+INT(Y*0.1)*0.075)
	--x=总经验
	--y=小环数
	--z=大环数 

	if RandParam.tp == MIS_RAND_KILL then					--猎杀怪物
		--随机最大4个怪物类型
		RandParam.numdata = Rand( randnum ) + 1
		PRINT( "CreateRandMission:rand numdata = ", RandParam.numdata )
		if RandParam.numdata > mission.RandInfo[RandParam.level].KillInfo.count then
			RandParam.numdata = mission.RandInfo[RandParam.level].KillInfo.count
		end
		PRINT( "CreateRandMission:rand numdata = ", RandParam.numdata )
		if RandParam.numdata <= 0 then
			PRINT( "CreateRandMission, 猎杀怪物任务随机数量不等小于等于零，请检查该等级的猎杀怪物物品信息是否正确！Level = ", RandParam.level )
			SystemNotice( character, "CreateRandMission, 猎杀怪物任务随机数量不等小于等于零，请检查该等级的猎杀怪物物品信息是否正确！Level = "..RandParam.level )
			return LUA_FALSE
		end
		
		for n = 1, RandParam.numdata, 1 do
			local flag = 1
			local infoid = Rand( mission.RandInfo[RandParam.level].KillInfo.count ) + 1
			PRINT( "CreateRandMission:rand infoid = ", infoid )
			--检查是否有重复的数据索引信息
			for i = 1, n - 1, 1 do
				if RandParam.data[i].id == infoid then
					PRINT( "CreateRandMission:3" )
					n = n - 1
					flag = 0
					break
				end
				PRINT( "CreateRandMission:2" )
			end
			PRINT( "CreateRandMission:4" )
			if flag == 1 then
				--保存数据
				PRINT( "CreateRandMission:5" )
				RandParam.data[n].id = infoid
				RandParam.data[n].p1 = mission.RandInfo[RandParam.level].KillInfo[infoid].p1
				RandParam.data[n].p2 = mission.RandInfo[RandParam.level].KillInfo[infoid].p2 + Rand(mission.RandInfo[RandParam.level].KillInfo[infoid].p3)
				PRINT( "CreateRandMission:6" )
				RandParam.data[n].p3 = 0
				RandParam.data[n].p4 = 0
				RandParam.data[n].p5 = 0
				RandParam.data[n].p6 = 0
				RandParam.data[n].p7 = 0
				RandParam.data[n].p8 = 0
				--RandParam.exp = GetRandMissionExp( misloopnum, miscount, RandParam.exp + mission.RandInfo[RandParam.level].KillInfo[infoid].p4 * RandParam.data[n].p2 )
				RandParam.exp = GetRandMissionExp( misloopnum, miscount, RandParam.exp + mission.RandInfo[RandParam.level].KillInfo[infoid].p4 )
				PRINT( "CreateRandMission:7" )
				--RandParam.money = GetRandMissionMoney( misloopnum, miscount, RandParam.money + mission.RandInfo[RandParam.level].KillInfo[infoid].p5 * RandParam.data[n].p2 )
				RandParam.money = GetRandMissionMoney( misloopnum, miscount, RandParam.money + mission.RandInfo[RandParam.level].KillInfo[infoid].p5 )
				PRINT( "CreateRandMission:rand data info: id, p1, p2, p3, p4", RandParam.data[n].id, RandParam.data[n].p1, RandParam.data[n].p2, RandParam.data[n].p3, RandParam.data[n].p4 )
			end
		end
		
	elseif RandParam.tp == MIS_RAND_GET then			--获取物品
		--随机最大4个怪物类型
		RandParam.numdata = Rand( randnum ) + 1
		if RandParam.numdata > mission.RandInfo[RandParam.level].GetInfo.count then
			RandParam.numdata = mission.RandInfo[RandParam.level].GetInfo.count
		end
		if RandParam.numdata <= 0 then
			PRINT( "CreateRandMission, 获取物品任务随机数量不等小于等于零，请检查该等级的获取物品信息是否正确！Level = ", RandParam.level )
			SystemNotice( character, "CreateRandMission, 获取物品任务随机数量不等小于等于零，请检查该等级的获取物品信息是否正确！Level = "..RandParam.level )
			return LUA_FALSE
		end
		
		for n = 1, RandParam.numdata, 1 do
			local flag = 1
			local infoid = Rand( mission.RandInfo[RandParam.level].GetInfo.count ) + 1
			PRINT( "CreateRandMission:rand infoid = ", infoid )
			--检查是否有重复的数据索引信息
			for i = 1, n - 1, 1 do
				if RandParam.data[i].id == infoid then
					n = n - 1
					flag = 0
					break
				end
			end
			
			if flag == 1 then
			--保存数据
				RandParam.data[n].id = infoid
				RandParam.data[n].p1 = mission.RandInfo[RandParam.level].GetInfo[infoid].p1
				RandParam.data[n].p2 = mission.RandInfo[RandParam.level].GetInfo[infoid].p2 + Rand(mission.RandInfo[RandParam.level].GetInfo[infoid].p3)
				RandParam.data[n].p3 = 0
				RandParam.data[n].p4 = 0
				RandParam.data[n].p5 = 0
				RandParam.data[n].p6 = 0
				RandParam.data[n].p7 = 0
				RandParam.data[n].p8 = 0
				--RandParam.exp = GetRandMissionExp( misloopnum, miscount, RandParam.exp + mission.RandInfo[RandParam.level].GetInfo[infoid].p4 * RandParam.data[n].p2 )
				RandParam.exp = GetRandMissionExp( misloopnum, miscount, RandParam.exp + mission.RandInfo[RandParam.level].GetInfo[infoid].p4 )
				--RandParam.money = GetRandMissionMoney( misloopnum, miscount, RandParam.money + mission.RandInfo[RandParam.level].GetInfo[infoid].p5 * RandParam.data[n].p2 )
				RandParam.money = GetRandMissionMoney( misloopnum, miscount, RandParam.money + mission.RandInfo[RandParam.level].GetInfo[infoid].p5 )
				PRINT( "CreateRandMission:rand data info: id, p1, p2, p3, p4", RandParam.data[n].id, RandParam.data[n].p1, RandParam.data[n].p2, RandParam.data[n].p3, RandParam.data[n].p4 )
			end
		end
		
	elseif RandParam.tp == MIS_RAND_SEND then			--送给物品
		--随机选择一定类型数量的NPC
		PRINT( "Rand send" )
		local npcinfoid = nil --GetNpcInfoID( npc ) --获取当前NPC的infoid，避免有自己发信自己收信的情况出现
		RandParam.numdata = Rand( randnum ) + 1
		PRINT( "CreateRandMission1: numdata = , randnum = , RandParam.level = , infocount = , itemcount = ", RandParam.numdata, randnum, RandParam.level, mission.RandInfo[RandParam.level].SendInfo.count, mission.RandInfo[RandParam.level].SendItem.count )
		if RandParam.numdata > mission.RandInfo[RandParam.level].SendInfo.count then
			RandParam.numdata = mission.RandInfo[RandParam.level].SendInfo.count
		end
		if RandParam.numdata > mission.RandInfo[RandParam.level].SendItem.count then
			RandParam.numdata = mission.RandInfo[RandParam.level].SendItem.count
		end
		if RandParam.numdata <= 0 then
			PRINT( "CreateRandMission, 送信任务随机数量不等小于等于零，请检查该等级的送信信息是否正确！Level = ", RandParam.level )
			SystemNotice( character, "CreateRandMission, 送信任务随机数量不等小于等于零，请检查该等级的送信信息是否正确！Level = "..RandParam.level )
			return LUA_FALSE
		end
		
		PRINT( "CreateRandMission2: numdata = , randnum = ", RandParam.numdata, randnum )
		for n = 1, RandParam.numdata, 1 do
			local flag = 1
			local infoid = Rand( mission.RandInfo[RandParam.level].SendInfo.count ) + 1
			local itemid = GetRandMissionSendItem( mission.RandInfo[RandParam.level].SendItem )
			PRINT( "CreateRandMission:rand infoid = , itemid = ", infoid, itemid )
			--检查是否有重复的数据索引信息
			if mission.RandInfo[RandParam.level].SendInfo[infoid].p1 == npcinfoid then
				n = n - 1
				flag = 0
			else
				for i = 1, n - 1, 1 do
					if RandParam.data[i].id == infoid or RandParam.data[i].p2 == itemid then
						PRINT( "CreateRandMission:send item ,rand value repeat" )
						n = n - 1
						flag = 0
						break
					end
				end
			end
			
			if flag == 1 then
				--保存数据
				RandParam.data[n].id = infoid
				RandParam.data[n].p1 = mission.RandInfo[RandParam.level].SendInfo[infoid].p1 --npc info id
				RandParam.data[n].p2 = itemid --item id
				RandParam.data[n].p3 = mission.RandInfo[RandParam.level].SendInfo[infoid].p2 --area id
				RandParam.data[n].p4 = 0
				RandParam.data[n].p5 = 0
				RandParam.data[n].p6 = 0
				RandParam.data[n].p7 = 0
				RandParam.data[n].p8 = 0
				RandParam.exp = GetRandMissionExp( misloopnum, miscount, RandParam.exp + mission.RandInfo[RandParam.level].SendInfo[infoid].p4 )
				RandParam.money = GetRandMissionMoney( misloopnum, miscount, RandParam.money + mission.RandInfo[RandParam.level].SendInfo[infoid].p5 )
				PRINT( "CreateRandMission:rand data info: id, p1, p2, p3, p4", RandParam.data[n].id, RandParam.data[n].p1, RandParam.data[n].p2, RandParam.data[n].p3, RandParam.data[n].p4 )
			end
		end
		
	elseif RandParam.tp == MIS_RAND_CONVOY then		--护送NPC
		PRINT( "Convoy npc" )
		--随机选择一个护送NPC目标		
		RandParam.numdata = 1 --护送任务暂时只支持护送一个NPC，但是程序支持护送多个NPC
		if RandParam.numdata > mission.RandInfo[RandParam.level].ConvoyInfo.count then
			RandParam.numdata = mission.RandInfo[RandParam.level].ConvoyInfo.count
		end
		if RandParam.numdata <= 0 then
			PRINT( "CreateRandMission, 护送npc任务随机数量不等小于等于零，请检查该等级的护送信息是否正确！Level = ", RandParam.level )
			SystemNotice( character, "CreateRandMission, 护送npc任务随机数量不等小于等于零，请检查该等级的护送信息是否正确！Level = "..RandParam.level )
			return LUA_FALSE
		end
		
		for n = 1, RandParam.numdata, 1 do
			local flag = 1
			local infoid = Rand( mission.RandInfo[RandParam.level].ConvoyInfo.count ) + 1
			--检查是否有重复的数据索引信息
			for i = 1, n - 1, 1 do
				if RandParam.data[i].id == infoid then
					PRINT( "CreateRandMission:convoy npc ,rand value repeat" )
					n = n - 1
					flag = 0
					break
				end
			end
			
			if flag == 1 then
				--保存数据
				RandParam.data[n].id = infoid
				RandParam.data[n].p1 = mission.RandInfo[RandParam.level].ConvoyInfo[infoid].p1 --char info id
				RandParam.data[n].p2 = mission.RandInfo[RandParam.level].ConvoyInfo[infoid].p2 --map id
				RandParam.data[n].p3 = mission.RandInfo[RandParam.level].ConvoyInfo[infoid].p3 --areaid
				RandParam.data[n].p4 = mission.RandInfo[RandParam.level].ConvoyInfo[infoid].p4 --x
				RandParam.data[n].p5 = mission.RandInfo[RandParam.level].ConvoyInfo[infoid].p5 --y
				RandParam.data[n].p6 = mission.RandInfo[RandParam.level].ConvoyInfo[infoid].p6 --scope
				RandParam.data[n].p7 = 0
				RandParam.data[n].p8 = 0
				RandParam.exp = GetRandMissionExp( misloopnum, miscount, RandParam.exp + mission.RandInfo[RandParam.level].ConvoyInfo[infoid].p7 )
				RandParam.money = GetRandMissionMoney( misloopnum, miscount, RandParam.money + mission.RandInfo[RandParam.level].ConvoyInfo[infoid].p8 )
				PRINT( "CreateRandMission:rand data info: id, p1, p2, p3, p4, p5, p6", RandParam.data[n].id, RandParam.data[n].p1, RandParam.data[n].p2, RandParam.data[n].p3, RandParam.data[n].p4, RandParam.data[n].p5, RandParam.data[n].p6 )
			end
		end
		
	elseif RandParam.tp == MIS_RAND_EXPLORE then		--探索地图
		
	else
		PRINT( "CreateRandMission:无效的随机任务类型！tp = "..RandParam.tp )
		SystemNotice( character, "CreateRandMission:无效的随机任务类型！tp = "..RandParam.tp )
		LG( "randmission_error", "CreateRandMission:无效的随机任务类型！tp = "..RandParam.tp )
		return LUA_FALSE
	end
	
	PRINT( "CreateRandMission: name, id, level, loopinfo, loopdata", mission.name, RandParam.id, mission.loopinfo, mission.RandInfo[RandParam.level].LoopData )
	RandParam.prizetp, RandParam.prizedata = GetRandMissionPrize( character, mission.name, RandParam.id, mission.loopinfo, mission.RandInfo[RandParam.level].LoopData )

	--设置随机任务的经验类型
	if mission.missionlist[tpindex].exptp == nil then
		LG( "randmission_error", "无效的随机任务经验类型！exptp = ", mission.missionlist[tpindex].exptp ) 
		PRINT( "无效的随机任务经验类型！exptp = ", mission.missionlist[tpindex].exptp )
		SystemNotice( character, "无效的随机任务经验类型！exptp = ", mission.missionlist[tpindex].exptp )
		return LUA_FALSE
	end
	RandParam.exptp = mission.missionlist[tpindex].exptp
	PRINT( "CreateRandMission:exptp = ", RandParam.exptp )
	
	--根据参数生成随机任务信息
	local ret = RandMission( mission.missionlist[tpindex], RandParam )
	if ret ~= LUA_TRUE then
		LG( "randmission_error", "CreateRandMission:RandMission:id, sid, tp, level, exp, money, item, numdata", RandParam.id, RandParam.sid, RandParam.tp, RandParam.level, RandParam.exp, RandParam.money, RandParam.prizedata, RandParam.prizetp, RandParam.numdata )
		PRINT( "CreateRandMission:RandMission生成随机任务信息错误！" )
		SystemNotice( character, "CreateRandMission:RandMission生成随机任务信息错误！" )
		return LUA_FALSE
	end
	
	--检测随机任务背包需求
	PRINT( "CreateRandMission:空闲背包需求数量:numgrid = ", mission.missionlist[tpindex].begin.baggrid )
	local numgrid = mission.missionlist[tpindex].begin.baggrid
	local ret = HasLeaveBagGrid( character, numgrid )
	if ret ~= LUA_TRUE then
		PRINT( "CreateRandMission:角色接受任务时，背包空闲格子不够！num = ", numgrid )
		BickerNotice( character, "背包剩余容量不足，需要"..numgrid.."个空格，接受任务失败！" )
		return LUA_FALSE, 0
	end
		
	--存储生成的数据到角色中	
	PRINT( "CreateRandMission:AddRandMission:id, sid, tp, level, exp, money, prizedata, prizetp, numdata", RandParam.id, RandParam.sid, RandParam.tp, RandParam.level, RandParam.exp, RandParam.money, RandParam.prizedata, RandParam.prizetp, RandParam.numdata )
	local ret = AddRandMission( character, RandParam.id, RandParam.sid, RandParam.tp, RandParam.level, RandParam.exp, RandParam.money, RandParam.prizedata, RandParam.prizetp, RandParam.numdata )
	if ret ~= LUA_TRUE then 
		LG( "randmission_error", "AddRandMission:id, sid, tp, level, exp, money, prizedata, prizetp, numdata", RandParam.id, RandParam.sid, RandParam.tp, RandParam.level, RandParam.exp, RandParam.money, RandParam.prizedata, RandParam.prizetp, RandParam.numdata )
		PRINT( "CreateRandMission:AddRandMission添加角色随机任务信息失败！" )
		SystemNotice( character, "CreateRandMission:AddRandMission添加角色随机任务信息失败！" )
		return LUA_FALSE
	end
	
	for n = 1, RandParam.numdata, 1 do
		PRINT( "CreateRandMission:SetRandMissionData:id, index, p1, p2, p3, p4, p5, p6", RandParam.id, n - 1, RandParam.data[n].p1, RandParam.data[n].p2, RandParam.data[n].p3, RandParam.data[n].p4, RandParam.data[n].p5, RandParam.data[n].p6 )
		ret = SetRandMissionData( character, RandParam.id, n - 1, RandParam.data[n].p1, RandParam.data[n].p2, RandParam.data[n].p3, RandParam.data[n].p4, RandParam.data[n].p5, RandParam.data[n].p6 )
		if ret ~= LUA_TRUE then
			PRINT( "CreateRandMission:SetRandMissionData添加角色随机任务信息失败！, n = ", n )
			SystemNotice( character, "CreateRandMission:SetRandMissionData添加角色随机任务信息失败！n = "..n )
			return LUA_FALSE
		end
	end
	local str = "你接到了《"
	local name = GetCharName( npc )
	str = str..name.."》给你得一个随机任务，请尽快完成任务！"
	SystemNotice( character, str )
	
	return LUA_TRUE, tpindex
end

--获取随机任务的匹配类型索引
function GetRandMissionTypeIndex( mission, tp )
	if mission == nil or tp == nil then
		PRINT( "GetRandMissionTypeIndex:参数不能等于nil.mission = nil or tp = nil" )
		LG( "randmission_error", "GetRandMissionTypeIndex:参数不能等于nil.mission = nil or tp = nil" )
		return 0
	end
	PRINT( "GetRandMissionTypeIndex:mission, tp, mission.missionlist.count", mission, tp, mission.missionlist.count )
	for i = 1, mission.missionlist.count, 1 do
		PRINT( "GetRandMissionTypeIndex,mission.missionlist[i].tp = ", mission.missionlist[i].tp )
		if tp == mission.missionlist[i].tp then
			return i
		end
	end
	
	return 0
end

--获取随机任务信息随机数
function GetRandTpinfoIndex( tpinfo )
	local randdata = 0
	for n = 1, tpinfo.count, 1 do					
		randdata = randdata + tpinfo[n].tprand
		PRINT( "GetRandTpinfoIndex: n = , randdata = , tprand = ", n, randdata, tpinfo[n].tprand )
	end
	local randvalue = Rand( randdata )
	local tempdata = 0
	for n = 1, tpinfo.count, 1 do
		if randvalue >= tempdata and randvalue < tempdata + tpinfo[n].tprand then
			PRINT( "GetRandTpinfoIndex: return n = , tprandvalue = , tprand = ", n, randvalue, tpinfo[n].tprand )
			return n
		end
		tempdata = tempdata + tpinfo[n].tprand
	end
	return 0
end

--根据角色的保存的随机生成任务配置信息重构任务
function GetCharRandMission( character, id, mission )
	PRINT( "GetRandMission:character", character )
	
	--判断角色是否有随机任务配置信息
	if HasRandMission( character, id ) ~= LUA_TRUE then
		PRINT( "GetRandMission:HasRandMission未发现该角色携带随机任务信息，ID = "..id )
		SystemNotice( character, "GetRandMission:未发现该角色携带随机任务信息，ID = "..id )
		return LUA_TRUE, 0
	end
	
	--初始化全局随机任务参数
	InitRandParam()
	
	--获取角色的随机任务配置信息
	PRINT( "GetCharRandMission:GetRandMission, id = ", id  )
	local ret
	RandParam.id = id
	RandParam.bounty = mission.bounty
	RandParam.npcname = mission.npcname
	RandParam.npcarea  = mission.npcarea	
	PRINT( "CreateRandMission:RandParam.id = , RandParam.sid = ,  bounty = , name = , area = ", RandParam.id, RandParam.sid, RandParam.bounty, RandParam.npcname, RandParam.npcarea )
	
	ret, RandParam.tp, RandParam.level, RandParam.exp, RandParam.money, RandParam.prizedata, RandParam.prizetp, RandParam.numdata = GetRandMission( character, id )
	if ret ~= LUA_TRUE then
		PRINT( "GetCharRandMission:GetRandMission error." )
		SystemNotice( character, "GetCharRandMission:GetRandMission error." )
		return LUA_FALSE
	end
	PRINT( "GetCharRandMission:tp, level, exp, money, prizedata, prizetp, numdata",  RandParam.tp, RandParam.level, RandParam.exp, RandParam.money, RandParam.prizedata, RandParam.prizetp, RandParam.numdata )
	--获取配置信息列表
	for n = 1, RandParam.numdata, 1 do
		ret, RandParam.data[n].p1, RandParam.data[n].p2, RandParam.data[n].p3, RandParam.data[n].p4, RandParam.data[n].p5, RandParam.data[n].p6 = GetRandMissionData( character, id, n - 1 )
		PRINT( "GetRandMissionData: p1, p2, p3, p4, p5, p6 ", RandParam.data[n].p1, RandParam.data[n].p2, RandParam.data[n].p3, RandParam.data[n].p4, RandParam.data[n].p5, RandParam.data[n].p6 )
		if ret ~= LUA_TRUE then
			PRINT( "GetCharRandMission:GetRandMissionData error." )
			SystemNotice( character, "GetCharRandMission:GetRandMissionData error." )
			return LUA_FALSE
		end
	end
	
	local index = GetRandMissionTypeIndex( mission, RandParam.tp )
	PRINT( "GetCharRandMission:GetRandMissionTypeIndex index = ", index )
	if index == 0  then
		PRINT( "GetRandMission:获取随机任务匹配的类型信息失败！" )
		SystemNotice( character, "GetRandMission:获取随机任务匹配的类型信息失败！" )
		return LUA_FALSE
	end

	--设置随机任务的经验类型
	if mission.missionlist[index].exptp == nil then
		LG( "randmission_error", "无效的随机任务经验类型！exptp = ", mission.missionlist[index].exptp ) 
		PRINT( "无效的随机任务经验类型！exptp = ", mission.missionlist[index].exptp )
		SystemNotice( character, "无效的随机任务经验类型！exptp = ", mission.missionlist[index].exptp )
		return LUA_FALSE
	end
	RandParam.exptp = mission.missionlist[index].exptp
	PRINT( "CreateRandMission:exptp = ", RandParam.exptp )
	
	local ret = RandMission( mission.missionlist[index], RandParam )
	if ret ~= LUA_TRUE then
		PRINT( "GetRandMission:根据随机任务配置信息构造随机任务失败！" )
		SystemNotice( character, "GetRandMission:根据随机任务配置信息构造随机任务失败！" )
		return LUA_FALSE
	end
	
	PRINT( "GetRandMission: return true, index = ", index )
	return LUA_TRUE, index, mission.RandInfo[RandParam.level].LoopData
end

--随机生成一个任务
function RandMission( mission, param )
	PRINT( "RandMission" )
	if mission == nil or param == nil or param.tp ~= mission.tp then
		PRINT( "RandMission:mission = nil or param = nil or param.tp ~= mission.tp" )
		return LUA_FALSE
	end
	
	--初始化角色任务背包容量需求
	mission.begin.baggrid = 0
	mission.result.baggrid = 0
	
	PRINT( "RandMission, mission.tp = , param.tp", mission.tp, param.tp )	
	--根据随机任务的类型和参数生成一个新任务
	if mission.tp == MIS_RAND_KILL then				--摧毁物件
		--猎杀的怪物类型数量
		local num = 0
		mission.begin.actions.count = param.numdata
		mission.result.conditions.count = param.numdata
		mission.need.count = param.numdata + 1
		mission.need[1].p1 = "  <b"..param.npcarea..">的<y"..param.npcname..">需要你帮他蒱猎"

		--mission.begin.talk = "<t>嗨，朋友。有兴趣挣个小钱吗？我这里刚好有个捕猎任务，只要捕到"
		--mission.result.help = "<t>嗨，朋友，你要时刻记得答应我的事情哦，只要捕到"
		
		PRINT( mission.begin.talkstart, mission.result.talkstart, mission.result.helpstart )
		PRINT( mission.begin.talkend, mission.result.talkend, mission.result.helpend )
		mission.begin.talk = mission.begin.talkstart
		mission.result.talk = mission.result.talkstart
		mission.result.help = mission.result.helpstart
		PRINT( "RandMission,1" )
		for n = 1, param.numdata, 1 do
			--更新任务需求
			mission.need[n+1].p1 = param.data[n].p1 	--怪物类型ID
			mission.need[n+1].p2 = param.data[n].p2 	--怪物数量
			mission.need[n+1].p3 = num						--开始记录标签位置
			
			--更新任务开始触发器动作信息(AddTrigger)
			mission.begin.actions[n].p3 = param.data[n].p1 --怪物类型ID
			mission.begin.actions[n].p4 = param.data[n].p2 --怪物数量
			mission.begin.actions[n].p5 = num --开始记录标签位置
			mission.begin.actions[n].p6 = 0
			
			--更新任务完成条件信息
			num = num + param.data[n].p2
			mission.result.conditions[n].p2 = num - 1 --杀死怪物触发器记录的标记
			
			--任务开始描述信息
			PRINT( "RandMission, 2" )
		    local monstername = GetMonsterName( param.data[n].p1 )
			PRINT( "RandMission, 3, count, talk, need[count].p2, monstername", n, mission.begin.talk, mission.need[n].p2, monstername )			
			local nummonster = 0
			if mission.need[n+1].p2 ~= nil then
				nummonster = mission.need[n+1].p2
			end
			mission.begin.talk = mission.begin.talk.."<r"..nummonster..">个<r“"..monstername.."”>"
			mission.result.help = mission.result.help.."<r"..nummonster..">个<r“"..monstername.."”>"
			mission.need[1].p1 = mission.need[1].p1.."<r"..nummonster..">个<r“"..monstername.."”>"
			if n < param.numdata then
				mission.begin.talk = mission.begin.talk.."，"
				mission.result.help = mission.result.help.."，"
				mission.need[1].p1 = mission.need[1].p1.."，"
			end
		end

		--任务结束动作(AddExpAndType)	
		mission.result.actions[2].p1 = param.exptp
		mission.result.actions[2].p2 = param.exp
		mission.result.actions[2].p3 = param.exp
		PRINT( "RandMission:AddExpAndType, exp = ", mission.result.actions[2].p1 )
		
		--任务描述信息
		--mission.begin.talk = mission.begin.talk.."。"
		--mission.result.talk = "<t>嗯，看起来你蛮具备赏金猎人的能力的嘛，喏，这是给你奖励，希望我们下次再合作。"
		--mission.result.help = mission.result.help.."。"

		mission.begin.talk = mission.begin.talk..mission.begin.talkend
		mission.result.talk = mission.result.talk..mission.result.talkend
		mission.result.help = mission.result.help..mission.result.helpend
		mission.need[1].p1 = mission.need[1].p1.."。"
		
		PRINT( "RandMission,4 " )
		--随机任务奖励
		mission.prize[1].p1 = param.money
		if param.prizedata ~= 0 then
			PRINT( "RandMission,5, prizetp, prizedata", param.prizetp, param.prizedata )
			mission.prize[2].tp = param.prizetp
			mission.prize[2].p1 = param.prizedata
			mission.prize.count = 2
			if param.prizetp == MIS_PRIZE_ITEM then
				mission.prize[2].p2 = 1
				mission.prize[2].p3 = param.bounty
				mission.result.baggrid = 1
			elseif param.prizetp == MIS_PRIZE_CESS then
				mission.prize[2].p2 = 0
			elseif param.prizetp == MIS_PRIZE_FAME then
				mission.prize[2].p2 = 0
			else
				PRINT( "RandMission:无效的奖励类型信息！misid = , tp = , p1 = ", param.id, param.prizetp, param.prizedata )
				LG( "mission_error", "RandMission:无效的奖励类型信息！misid = , tp = , p1 = ", param.id, param.prizetp, param.prizedata )
				mission.prize[2].tp = 0
				mission.prize[2].p1 = 0
				mission.prize.count = 1
			end
		else
			PRINT( "RandMission,6" )
			mission.prize.count = 1
		end
		PRINT( "RandMission,7" )
	elseif mission.tp == MIS_RAND_GET then		--获取物品
		--获取的物品类型数量
		PRINT( "RandMission:tp = MIS_RAND_GET:param.numdata = ", param.numdata ) 
		local num = 0
		mission.begin.actions.count = param.numdata
		mission.result.conditions.count = param.numdata * 2
		mission.result.actions.count = 2 + param.numdata
		mission.need.count = param.numdata + 1
		mission.need[1].p1 = "  <b"..param.npcarea..">的<y"..param.npcname..">需要你帮他收集"
		mission.need[1].p1 = mission.need[1].p1.."<r"..param.numdata..">样东西，"
		
		--mission.begin.talk = "<t>你好，朋友。我这里急需"
		--mission.begin.talk = mission.begin.talk.."<r"..param.numdata..">样东西，请你帮我收集到："
		--mission.result.help = "hmm，你有帮我收集我要的东西么？你不会忘记了吧？我需要"
		--mission.result.help = mission.result.help.."<r"..param.numdata..">样东西，"
		PRINT( mission.begin.talkstart, mission.result.talkstart, mission.result.helpstart )
		PRINT( mission.begin.talkend, mission.result.talkend, mission.result.helpend )
		mission.begin.talk = mission.begin.talkstart
		mission.result.talk = mission.result.talkstart
		mission.result.help = mission.result.helpstart
		
		for n = 1, param.numdata, 1 do
			--更新任务需求
			mission.need[n+1].p1 = param.data[n].p1   	--物品类型ID
			mission.need[n+1].p2 = param.data[n].p2 	--物品数量
			mission.need[n+1].p3 = num						--开始记录标签位置
			
			--更新任务开始触发器动作信息(AddTrigger)
			mission.begin.actions[n].p3 = param.data[n].p1	 --物品类型ID
			mission.begin.actions[n].p4 = param.data[n].p2  --物品数量
			mission.begin.actions[n].p5 = num --开始记录标签位置
			mission.begin.actions[n].p6 = 0
			
			--任务结束动作(TakeItem)
			mission.result.actions[n+2].p1 = param.data[n].p1
			mission.result.actions[n+2].p2 = param.data[n].p2
			PRINT( "RandMission:TakeItem, item = , num = ", mission.result.actions[n+2].p1, mission.result.actions[n+2].p2 )
			
			--更新任务完成条件信息
			num = num + param.data[n].p2
			--设置HasFlag 函数参数
			mission.result.conditions[1 + (n - 1)*2].p2 = num - 1 --获取物品触发器记录的标记
			--设置HasItem 函数参数
			mission.result.conditions[2 + (n - 1)*2].p1 = param.data[n].p1 --获取物品类型ID
			mission.result.conditions[2 + (n - 1)*2].p2 = param.data[n].p2 --获取物品数量
			
			--任务开始描述信息
			local itemname = GetItemName( param.data[n].p1 )
			mission.begin.talk = mission.begin.talk.."<r"..mission.need[n+1].p2..">个<r"..itemname..">"
			mission.result.help = mission.result.help.."<r"..mission.need[n+1].p2..">个<r"..itemname..">"
			mission.need[1].p1 = mission.need[1].p1.."<r"..mission.need[n+1].p2..">个<r"..itemname..">"
			if n < param.numdata then
				mission.begin.talk = mission.begin.talk.."，"
				mission.result.help = mission.result.help.."，"
				mission.need[1].p1 = mission.need[1].p1.."，"
			end
		end
		
		--任务结束动作(AddExpAndType)	
		mission.result.actions[2].p1 = param.exptp
		mission.result.actions[2].p2 = param.exp
		mission.result.actions[2].p3 = param.exp
		PRINT( "RandMission:AddExpAndType, exp = ", mission.result.actions[2].p1 )
		
		--任务描述信息
		--mission.begin.talk = mission.begin.talk.."。"
		--mission.result.help = mission.begin.talk.."记好了，少一个都不行！"
		--mission.result.talk = "<t>啊哈，幸好有你帮忙，这次我的收藏品更加丰富了，这是给你的奖励，如果你有兴趣再来找我。"
		mission.need[1].p1 = mission.need[1].p1.."。"

		mission.begin.talk = mission.begin.talk..mission.begin.talkend
		mission.result.talk = mission.result.talk..mission.result.talkend
		mission.result.help = mission.result.help..mission.result.helpend
		
		--随机任务奖励
		mission.prize[1].p1 = param.money
		if param.prizedata ~= 0 then
			PRINT( "RandMission,5, prizetp, prizedata", param.prizetp, param.prizedata )
			mission.prize[2].tp = param.prizetp
			mission.prize[2].p1 = param.prizedata
			mission.prize.count = 2
			if param.prizetp == MIS_PRIZE_ITEM then
				mission.prize[2].p2 = 1
				mission.prize[2].p3 = param.bounty
				mission.result.baggrid = 1
			elseif param.prizetp == MIS_PRIZE_CESS then
				mission.prize[2].p2 = 0
			elseif param.prizetp == MIS_PRIZE_FAME then
				mission.prize[2].p2 = 0
			else
				PRINT( "RandMission:无效的奖励类型信息！misid = , tp = , p1 = ", param.id, param.prizetp, param.prizedata )
				LG( "mission_error", "RandMission:无效的奖励类型信息！misid = , tp = , p1 = ", param.id, param.prizetp, param.prizedata )
				mission.prize[2].tp = 0
				mission.prize[2].p1 = 0
				mission.prize.count = 1
			end
		else
			PRINT( "RandMission,6" )
			mission.prize.count = 1
		end
		
	elseif mission.tp == MIS_RAND_SEND then			--送物品
		--送的物品类型数量
		local num = 0
		mission.begin.actions.count = param.numdata
		mission.result.conditions.count = param.numdata
		mission.need.count = param.numdata + 1 --需要以后添加新的任务目标类型
		mission.need[1].p1 = "  <b"..param.npcarea..">的<y"..param.npcname..">要你帮他送些东西，回来后你将会从他这里得到一些奖励。"

		--mission.begin.talk = "<t>你好，朋友。我这里有"
		--mission.begin.talk = mission.begin.talk.."<r"..param.numdata..">样东西，请把"
		--mission.result.help = "<t>嗨，朋友，我托你送的"
		--mission.result.help = mission.result.help.."<r"..param.numdata..">样东西都送到了没有哦？把"
				
		PRINT( mission.begin.talkstart, mission.result.talkstart, mission.result.helpstart )
		PRINT( mission.begin.talkend, mission.result.talkend, mission.result.helpend )
		mission.begin.talk = mission.begin.talkstart
		mission.result.talk = mission.result.talkstart
		mission.result.help = mission.result.helpstart
		
		for n = 1, param.numdata, 1 do
			--更新任务开始触发器动作信息(GiveItem)
			mission.begin.actions[n].p1 = param.data[n].p2	 --物品ID
			mission.begin.actions[n].p2 = 1
			PRINT( "RandMission: GiveItem item = , count = ", mission.begin.actions[n].p2, 1 )
			
			--更新任务完成条件信息(HasRandItemFlag)
			mission.result.conditions[n].p2 = param.data[n].p1 --检测是否有NPC收到物件的标记
			
			--任务开始描述信息
			local npcname = GetNpcName( param.data[n].p1 )
			PRINT( "RandMission, npcname = ", npcname )
			local areaname = GetAreaName( param.data[n].p3 )
			PRINT( "RandMission, areaname = ", areaname )
			local itemname = GetItemName( param.data[n].p2 )
			mission.begin.talk = mission.begin.talk.."<r《"..itemname.."》>给<p"..areaname..">的<b“"..npcname.."”>"
			mission.result.help = mission.result.help.."<r《"..itemname.."》>给<p"..areaname..">的<b“"..npcname.."”>"
			if n < param.numdata then				
				mission.begin.talk = mission.begin.talk.."，"
				mission.result.help = mission.result.help.."，"
			end
			PRINT( "RandMission, talk = ", mission.begin.talk )
			
			--更新任务需求
			mission.need[n+1].p1 = n..") 把<r《"..itemname.."》>送给<p"..areaname..">的<b“"..npcname.."”>"   --任务目标			
			PRINT( "RandMission: need.p1 = ", mission.need[n+1].p1 )
		end
		
		--任务结束动作(AddExpAndType)	
		mission.result.actions[2].p1 = param.exptp
		mission.result.actions[2].p2 = param.exp
		mission.result.actions[2].p3 = param.exp
		PRINT( "RandMission:AddExpAndType, exp = ", mission.result.actions[2].p1 )		
		
		--任务描述信息
		mission.begin.baggrid = param.numdata
		--mission.begin.talk = mission.begin.talk.."。"		
		--mission.result.help = mission.result.help.."。"
		--mission.result.talk = "<t>哇，你的速度好快嘛，就已经把东西送到了哦，谢谢你朋友，这是你的劳动所得，下次有空再来哦。"
		
		mission.begin.talk = mission.begin.talk..mission.begin.talkend
		mission.result.talk = mission.result.talk..mission.result.talkend
		mission.result.help = mission.result.help..mission.result.helpend
		
		--随机任务奖励
		mission.prize[1].p1 = param.money
		if param.prizedata ~= 0 then
			PRINT( "RandMission,5, prizetp, prizedata", param.prizetp, param.prizedata )
			mission.prize[2].tp = param.prizetp
			mission.prize[2].p1 = param.prizedata
			mission.prize.count = 2
			if param.prizetp == MIS_PRIZE_ITEM then
				mission.prize[2].p2 = 1
				mission.prize[2].p3 = param.bounty
				mission.result.baggrid = 1
			elseif param.prizetp == MIS_PRIZE_CESS then
				mission.prize[2].p2 = 0
			elseif param.prizetp == MIS_PRIZE_FAME then
				mission.prize[2].p2 = 0
			else
				PRINT( "RandMission:无效的奖励类型信息！misid = , tp = , p1 = ", param.id, param.prizetp, param.prizedata )
				LG( "mission_error", "RandMission:无效的奖励类型信息！misid = , tp = , p1 = ", param.id, param.prizetp, param.prizedata )
				mission.prize[2].tp = 0
				mission.prize[2].p1 = 0
				mission.prize.count = 1
			end
		else
			PRINT( "RandMission,6" )
			mission.prize.count = 1
		end
		
	elseif mission.tp == MIS_RAND_CONVOY then		--护送NPC
		--护送的NPC
		local num = 0
		mission.begin.actions.count = 1 + param.numdata*2
		mission.result.conditions.count = param.numdata
		mission.need.count = param.numdata + 1 --需要以后添加新的任务目标类型
		mission.need[1].p1 = "  <b"..param.npcarea..">的<y"..param.npcname..">要你帮他护送一些人到指定地方，回来后你将会从他这里得到一些奖励。"
		
		--mission.begin.talk = "<t>你好，朋友。你愿意"
		
		PRINT( mission.begin.talkstart, mission.result.talkstart, mission.result.helpstart )
		PRINT( mission.begin.talkend, mission.result.talkend, mission.result.helpend )		
		mission.begin.talk = mission.begin.talkstart
		mission.result.talk = mission.result.talkstart
		mission.result.help = mission.result.helpstart
		
		for n = 1, param.numdata, 1 do
			--更新任务开始触发器动作信息(AddTrigger)
			mission.begin.actions[2 + (n - 1)*2].p3 = param.data[n].p2	 --map ID
			mission.begin.actions[2 + (n - 1)*2].p4 = param.data[n].p4  --x
			mission.begin.actions[2 + (n - 1)*2].p5 = param.data[n].p5  --y
			mission.begin.actions[2 + (n - 1)*2].p6 = param.data[n].p6  --scope
			
			--ConvoyNpc
			mission.begin.actions[3 + (n - 1)*2].p2 = n - 1	 --convoy index npc
			mission.begin.actions[3 + (n - 1)*2].p3 = param.data[n].p1	 -- charid
			
			PRINT( "RandMission: Convoy npcid =  to map = , x = , y = , scope = ", mission.begin.actions[3 + (n - 1)*2].p3, mission.begin.actions[2 + (n - 1)*2].p3, mission.begin.actions[2 + (n - 1)*2].p4, mission.begin.actions[2 + (n - 1)*2].p5, mission.begin.actions[2 + (n - 1)*2].p6 )

			--更新任务完成条件信息(HasFlag)
			
			--任务开始描述信息
			local npcname = GetMonsterName( param.data[n].p1 ) --charinfo name
			PRINT( "RandMission, npcname = ", npcname )
			local areaname = GetAreaName( param.data[n].p3 )
			PRINT( "RandMission, areaname = ", areaname )
			
			mission.begin.talk = mission.begin.talk.."护送<b“"..npcname.."”>到达<p"..areaname..">的<b"..param.data[n].p4.."，"..param.data[n].p5..">位置附近吗？"
			PRINT( "RandMission, talk = ", mission.begin.talk )
			
			--更新任务需求
			mission.need[n+1].p1 = n..") 护送<b“"..npcname.."”>到达<p"..areaname..">"   --任务目标
			PRINT( "RandMission: need.p1 = ", mission.need[n+1].p1 )
		end

		--任务结束动作(AddExpAndType)	
		mission.result.actions[2].p1 = param.exptp
		mission.result.actions[2].p2 = param.exp
		mission.result.actions[2].p3 = param.exp
		PRINT( "RandMission:AddExpAndType, exp = ", mission.result.actions[2].p1 )
		
		--任务描述信息
		--mission.begin.talk = mission.begin.talk.."你要在<r一个小时>以内办妥这件事。"
		--mission.result.talk = mission.begin.talk
		--mission.result.help = mission.begin.talk
		
		mission.begin.talk = mission.begin.talk..mission.begin.talkend
		mission.result.talk = mission.result.talk..mission.result.talkend
		mission.result.help = mission.result.help..mission.result.helpend
		
		--随机任务奖励
		mission.prize[1].p1 = param.money
		if param.prizedata ~= 0 then
			PRINT( "RandMission,5, prizetp, prizedata", param.prizetp, param.prizedata )
			mission.prize[2].tp = param.prizetp
			mission.prize[2].p1 = param.prizedata
			mission.prize.count = 2
			if param.prizetp == MIS_PRIZE_ITEM then
				mission.prize[2].p2 = 1
				mission.prize[2].p3 = param.bounty
				mission.result.baggrid = 1
			elseif param.prizetp == MIS_PRIZE_CESS then
				mission.prize[2].p2 = 0
			elseif param.prizetp == MIS_PRIZE_FAME then
				mission.prize[2].p2 = 0
			else
				PRINT( "RandMission:无效的奖励类型信息！misid = , tp = , p1 = ", param.id, param.prizetp, param.prizedata )
				LG( "mission_error", "RandMission:无效的奖励类型信息！misid = , tp = , p1 = ", param.id, param.prizetp, param.prizedata )
				mission.prize[2].tp = 0
				mission.prize[2].p1 = 0
				mission.prize.count = 1
			end
		else
			PRINT( "RandMission,6" )
			mission.prize.count = 1
		end
		
	elseif mission.tp == MIS_RAND_EXPLORE then		--探索地图
		
	end
	
	return LUA_TRUE
end

------------给予0能量的女神雕像
function GiveNSDX ( character , npc , value )
	local r1=0
	local r2=0
	r1,r2 =MakeItem ( character , value , 1 , 4 )
	local Item_NSDX = GetChaItem2 ( character , 2 , r2 )
	local NUM_NOW = 0
	local Item_NSDX_NOW = GetChaItem2 ( character , 2 , 3010 )
	SetItemAttr( Item_NSDX_NOW , ITEMATTR_ENERGY , NUM_NOW )
	RefreshCha( character )
end

-----------判断女神雕像能量是否达到999
function CheckEnergy ( character )
	local NSDX_Num = CheckBagItem( character, 3010 )
	---SystemNotice(character,""..HHS_Num)
	if NSDX_Num ~= 1 then
		return 0
	end
	local role_NSDX = GetChaItem2 ( character , 2 , 3010 )	
	local attr_energy = GetItemAttr ( role_NSDX, ITEMATTR_ENERGY)
	if attr_energy ~= 999 then
		return LUA_FALSE
	end

	return LUA_TRUE
end

-----------------------判断角色没有转生经验
function HasNOZSExp ( character )
	local attr_zsexp = GetChaAttr ( character , ATTR_CSAILEXP )
	if attr_zsexp == 0 then
		return LUA_TRUE
	end

	return LUA_FALSE
end

------------------------判断身上没有某种道具
function HasNoItem( character ,value )
	local item_number = CheckBagItem( character, value )			
	if item_number >= 1 then
		return LUA_FALSE
	end
	return LUA_TRUE
end
function AddChaItem7(character)        
	------------取升级考卷的指针
	local r1=0
	local r2=0
	r1,r2 =MakeItem ( character , 3280  , 1 , 4 )
	local Item_new = GetChaItem ( character , 2 , r2 )

	----------记录时间
	local now_yes = os.date("%y")		-------------年
	local now_month= os.date("%m")		-------------月
	local now_day= os.date("%d")		-------------日
	local now_hour= os.date("%H")		-------------时
	local now_miniute= os.date("%M")	-------------分
	local now_scend=  os.date("%S")		-------------秒
	now_yes = tonumber(now_yes)			-------------年     
	now_month= tonumber(now_month)		-------------月     
	now_day= tonumber(now_day)			-------------日     
	now_hour= tonumber(now_hour)			-------------时     
	now_miniute= tonumber(now_miniute)	 	-------------分     
	now_scend= tonumber(now_scend)		-------------秒     
	SetItemAttr(Item_new, ITEMATTR_VAL_STA, now_month )		-------------月 	
	SetItemAttr(Item_new, ITEMATTR_VAL_STR, now_day )		-------------日  
	SetItemAttr(Item_new, ITEMATTR_VAL_CON, now_hour )		-------------时   
	SetItemAttr(Item_new, ITEMATTR_VAL_DEX, now_miniute )		-------------分   
	SetItemAttr(Item_new, ITEMATTR_VAL_AGI, now_scend )		-------------秒 
	SynChaKitbag(character,13)
	return LUA_TRUE
end

function CheckKJNum ( character )
	local num_kj=CheckBagItem( character , 3280 )
	if num_kj == 1 then
		return LUA_TRUE
	end
end	
function AddChaItem8(character)
	------------取升级考卷的指针
	local role_kj=GetChaItem2( character , 2 , 3280 )
	----------记录时间
	local now_yes = os.date("%y")			-------------年
	local now_month= os.date("%m")			-------------月
	local now_day= os.date("%d")			-------------日
	local now_hour= os.date("%H")			-------------时
	local now_miniute= os.date("%M")		-------------分
	local now_scend=  os.date("%S")			-------------秒
	now_yes = tonumber(now_yes)			-------------年     
	now_month= tonumber(now_month)		-------------月     
	now_day= tonumber(now_day)			-------------日     
	now_hour= tonumber(now_hour)			-------------时     
	now_miniute= tonumber(now_miniute)	 	-------------分     
	now_scend= tonumber(now_scend)		-------------秒     

	---------取升级考卷的时间	
	local old_month = GetItemAttr(role_kj, ITEMATTR_VAL_STA)		-------------月 	
	local old_day = GetItemAttr(role_kj, ITEMATTR_VAL_STR)			-------------日  
	local old_hour = GetItemAttr(role_kj, ITEMATTR_VAL_CON)			-------------时   
	local old_miniute = GetItemAttr(role_kj, ITEMATTR_VAL_DEX)		-------------分   
	local old_scend = GetItemAttr(role_kj, ITEMATTR_VAL_AGI)			-------------秒 
	---------删除升级考卷
	local del_item =TakeItem( character, 0,3280, 1 )			                   
	if del_item==0  then
		SystemNotice ( character ,"删除升级考卷失败")
	end

	local used_time=(now_scend - old_scend)+(now_miniute - old_miniute)*60+(now_hour - old_hour)*3600+(now_day - old_day)*86400+(JNSTime_Flag[now_month] - JNSTime_Flag[old_month] )*86400
	------------取升级成绩单的指针
	local r1=0
	local r2=0
	r1,r2 =MakeItem ( character , 3281  , 1 , 4 )
	local Item_new = GetChaItem ( character , 2 , r2 )
	SetItemAttr(Item_new, ITEMATTR_VAL_AGI, used_time )		-------------秒  
	SynChaKitbag(character,13)
	return LUA_TRUE
end


----------测验判断成绩单时间               
function checkcytime( character , npc )
	local role_xsz = GetChaItem2 ( character , 2 , 3289 )
	local exp_xsz = GetItemAttr ( role_xsz , ITEMATTR_ENERGY )		-----取学生证当前经验
	local mexp_xsz = GetItemAttr ( role_xsz , ITEMATTR_MAXENERGY )		-----取学生证最大经验
	local newexp_xsz = exp_xsz * 1000
	local ch_xsz = GetItemAttr ( role_xsz , ITEMATTR_URE )		-----取学生证当前学分
	local mch_xsz = GetItemAttr ( role_xsz, ITEMATTR_MAXURE )	-----取学生证最大学分
	local role_cjd = GetChaItem2 ( character , 2 , 3279 )
	local cha_name = GetChaDefaultName ( character )
	local newch_xsz = ch_xsz + math.floor(50*(exp_xsz/mexp_xsz))
	if newch_xsz <= mch_xsz then
		SystemNotice ( character , "恭喜你通过了考试学分增加")
		SetItemAttr ( role_xsz , ITEMATTR_URE , newch_xsz )	------设置学生证新的学分
		AddExp ( character , npc , newexp_xsz , newexp_xsz )
		SetItemAttr ( role_xsz, ITEMATTR_ENERGY, 0 )
		RefreshCha( character )
	else
		SystemNotice( character , "恭喜你通过考试，学分已达上限，不能增加")
		AddExp ( character , npc, newexp_xsz , newexp_xsz )
		SetItemAttr ( role_xsz , ITEMATTR_URE , mch_xsz )	------设置学生证新的学分
		SetItemAttr ( role_xsz, ITEMATTR_ENERGY, 0 )
		RefreshCha( character )
	end
	local del_item =TakeItem( character, 0,3279, 1 )
	if del_item == 0 then
		SystemNotice( character, "删除测验成绩单失败")
	end
	return LUA_TRUE
end

----------升级考试判断成绩单时间
function checksjtime( character ,npc )
	local role_xsz = GetChaItem2 ( character , 2 , 3289 )
	local lv_ch = GetItemAttr ( role_xsz , ITEMATTR_FORGE )		----取学生证当前学历
	local role_cjd = GetChaItem2 ( character , 2 , 3281 )
	local time_cjd = GetItemAttr ( role_cjd , ITEMATTR_VAL_AGI )
	local cha_name = GetChaDefaultName ( character )
	if time_cjd > 0 and time_cjd <= 1800 then
		LG("玩家"..cha_name.."成功通过升级考试，学历上升！")
		lv_ch = lv_ch + 1
		SetItemAttr( role_xsz , ITEMATTR_FORGE , lv_ch )	----设置学生证新的学历
		SetItemAttr( role_xsz , ITEMATTR_URE , 0 )		----学分清零
		local new_mch = Reading_Credit[lv_ch]
		local new_mexp = Reading_EXP[lv_ch]
		SetItemAttr( role_xsz , ITEMATTR_MAXURE , new_mch )	----设置学生证新的最大学分
		SetItemAttr( role_xsz , ITEMATTR_MAXENERGY , new_mexp )	----设置学生证新的最大经验
		RefreshCha( character )
	elseif time_cjd > 1800 then
		LG("玩家"..cha_name.."未能通过升级考试，需要留级！")
	end
	local del_item =TakeItem( character, 0,3281, 1 )
	if del_item == 0 then
		SystemNotice( character, "删除升级考试成绩单失败")
	end
	return LUA_TRUE
end
------------------addexp经验瓶处理包壳
--function AddExp2 ( role , npc, p1, p2 )
--	local lv = GetChaAttr(role, ATTR_LV)
--	if lv == 100 then
--		local i = CheckBagItem ( role, 171 )
--		if i == 1 then
--			local role_jyp = GetChaItem2 ( role, 2, 171)
--			local exp_store = GetItemAttr ( role_jyp, ITEMATTR_VAL_PARAM1 )
--			local exp_add = (p1+p2)/2
--			exp_store = exp_store+exp_add
--			SetItemAttr ( role_jyp, ITEMATTR_VAL_PARAM1, exp_store)
--			SystemNotice( role, "你的经验瓶中的积分增加了"..exp_add)
--		else
--			AddExp ( role , npc , p1 , p2 )
--		end
--	else
--		AddExp ( role , npc , p1 , p2 )
--	end
--	return LUA_TRUE
--end

function HasXmasYB ( role, value )				-------------判断是否有足够硬币
	local num_wyyb = CheckBagItem( role, 2962 )
	local num_bwyb = CheckBagItem( role, 2963 )
	local money = num_wyyb + num_bwyb * 100
	if money >= value then
		return LUA_TRUE
	end
end

function TakeXmasYB ( role, value )				-------------提取硬币
	local num_bwyb = math.floor( value/100 )
	local num_wyyb = math.mod ( value , 100 )
	local bag_bwyb = CheckBagItem( role, 2963 )
	local bag_wyyb = CheckBagItem( role, 2962 )
	if bag_wyyb < num_wyyb then
		num_bwyb = num_bwyb +1
		zhaoling = num_bwyb * 100 - value
		num_wyyb = 0
		GiveItem ( role , 0, 2962, zhaoling, 4)
	elseif bag_bwyb < num_bwyb then
		num_bwyb = bag_bwyb
		num_wyyb = value - ( num_bwyb * 100 )
	end
	if num_wyyb ~= 0 then
		local ret1 = TakeItem ( role, 0, 2962, num_wyyb)
	end
	if num_bwyb ~= 0 then
		local ret2 = TakeItem ( role, 0, 2963, num_bwyb)
	end
	return LUA_TRUE
end

function CpHuojiNum ( role )					-----------------计算被杀火鸡数量
	XmasMonsterNum1 = XmasMonsterNum1 + 100
	XmasMonsterNum4 = XmasMonsterNum4 + 100
	XmasMonsterNum5 = XmasMonsterNum5 + 100
	return LUA_TRUE
end

function CpMiluNum ( role )					------------------计算被杀麋鹿数量			
	XmasMonsterNum2 = XmasMonsterNum2 + 100
	XmasMonsterNum4 = XmasMonsterNum4 + 100
	XmasMonsterNum5 = XmasMonsterNum5 + 100
	return LUA_TRUE
end

function CpXuerenNum ( role )					------------------计算被杀雪人数量
	XmasMonsterNum3 = XmasMonsterNum3 + 100
	XmasMonsterNum5 = XmasMonsterNum5 + 100
	return LUA_TRUE
end

function XmasNotice ( role, value )				------------------圣诞村自动提示
	local cha_name = GetChaDefaultName ( role ) 
	local message={}
	message[1]="圣诞老人:欢迎来到圣诞村,"..cha_name..",如果你是第一次来这里的话,你可以找旁边的圣诞村·蘑菇头了解一下这个村子!"
	message[2]="土著狂欢者:"..cha_name.."~来和我们一起跳舞吧,围着篝火一起跳舞,祈祷明年会更好!"
	message[3]="科恩悄悄的对你说:"..cha_name..",来吧,来完成我交付你给的任务,让更多的BOSS降临到圣诞竞技场中!"
	message[4]="小汤姆:看啊~看啊~那个人我认识,他叫"..cha_name..",我长大后一定要像他那么强!"
	SystemNotice( role , message[value] )
	return LUA_TRUE
end
