--------------------------------------------------------------------------
--									--
--									--
--mission.lua Created by Robin 2004.12.27.	--
--									--
--									--
--------------------------------------------------------------------------
print( "loading mission.lua" )

--lua��������ֵ����
LUA_FALSE					= 0
LUA_TRUE					= 1

MIS_TREENODE_INVALID	= 0	-- ��Ч����
MIS_TREENODE_NOMAL		= 1	-- ��ͨ����
MIS_TREENODE_HISTORY	= 2	-- ��ʷ����
MIS_TREENODE_GUILD		= 3	-- ��������

MisData = {}

function AddMisData( id, name, tp, x1, y1, map1, x2, y2, map2 )
	if id == nil or name == nil or tp == nil then
		print( "AddMisData:������������id = , name = , tp = ", id, name, tp )
		return
	end

	if MisData[id] ~= nil then
		print( "AddMisData:������������ʱԭ��ID�������ݱ����ǣ�ԭ������id = , name = , tp = , �µ�����id = , name = , tp = ", id, MisData[id].name, MisData[id].tp, id, name, tp )
	end

	MisData[id] = {}
	MisData[id].name = name
	MisData[id].tp = tp
	MisData[id].x1 = x1
	MisData[id].y1 = y1
	MisData[id].map1 = map1
	MisData[id].x2 = x2
	MisData[id].y2 = y2
	MisData[id].map2 = map2

	print( "�������񣺡�"..name.."�� ID["..id.."] Type["..tp.."]" )
end

function GetMisData( id )
	if id == nil then
		print( "GetMisData:��ȡ������Ϣ����������id = nil" )
		return LUA_FALSE
	end

	if MisData[id] == nil or MisData[id].name == nil or MisData[id].tp == nil then
		print( "GetMisData:��ȡ������Ϣʧ�ܣ�δ���ָ�����������Ϣ��ID = "..id )
		return LUA_FALSE
	end

	return LUA_TRUE, MisData[id].tp, MisData[id].name, MisData[id].x1, MisData[id].y1, MisData[id].map1, MisData[id].x2, MisData[id].y2, MisData[id].map2
end

AddMisData( 100, "��������", MIS_TREENODE_NOMAL,0,0,"����",0,0,"����" )
