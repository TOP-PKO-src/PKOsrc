---����жϺ���
function CheckMisChaBoat ( role , ChaType )						--��ֻ������
	local Cha_Boat = GetCtrlBoat ( role )
	local ChaIsBoat = 0
	
	if Cha_Boat == nil then
		ChaIsBoat = 1
	else
		ChaIsBoat = 2
	end

	if ChaIsBoat == ChaType then
		return 1
	else
		return 0
	end
end

function CheckChaPos ( role , Cha_x_min , Cha_x_max , Cha_y_min , Cha_y_max , MapName )	--������

	local Cha_Boat = GetCtrlBoat ( role )
	local ChaIsBoat = 0
	if Cha_Boat ~= nil then
		role = Cha_Boat
	end

	local pos_x , pos_y = GetChaPos ( role )
	local map_name = GetChaMapName ( role )


	if MapName ~= -1 then 

		if map_name ~= MapName then
			return 0 
		end 
	end 

	if pos_x < Cha_x_min or pos_x > Cha_x_max then
	
		return 0
	end

	if pos_y < Cha_y_min or pos_y > Cha_y_max then
		return 0
	end

	return 1
end

function CheckChaGuildType ( role , GuildType , CheckType )				--��⹫������
	
	local Cha_GuildID = GetChaGuildID( role )
	

	local ChaGuildType_Get = -1
	if Cha_GuildID == 0 then
		ChaGuildType_Get = 0
	elseif Cha_GuildID > 0 and Cha_GuildID <= 100 then
		ChaGuildType_Get = 1
	elseif Cha_GuildID > 100 and Cha_GuildID <= 200 then
		ChaGuildType_Get = 2
	else
		return 0
	end


	if CheckType == 1 then
		if ChaGuildType_Get == GuildType then
			return 1
		else
			return 0
		end
	elseif CheckType == 2 then
		if ChaGuildType_Get == GuildType then
			return 0
		else
			return 1
		end
	else
		return 0
	end

end

function MissionMsgCheck ( role , HasRecordID , NoRecordID , HasMissionID , No_MissionID , HasRecordNotice , NoRecordNotice , HasMissionNotice , NoMissionNotice )
--	SystemNotice ( role , "MissionMsgCheck")
	local Have_Record	= 0
	local No_Record		= 0
	local Have_Mission	= 0
	local No_Mission	= 0
	
	
	if HasRecordID ~= -1 then
		Have_Record	= HasRecord( role , HasRecordID )
		if Have_Record ~= LUA_TRUE then
			SystemNotice ( role , HasRecordNotice )
			return 0
		end
	end


	if NoRecordID ~= -1 then
		No_Record	= NoRecord( role , NoRecordID )
		if No_Record ~= LUA_TRUE then
			SystemNotice ( role , NoRecordNotice )
			return 0
		end
	end



	if HasMissionID ~= -1 then
		Have_Mission	= HasMission( role , HasMissionID )
		if Have_Mission ~= LUA_TRUE then
			SystemNotice ( role , HasMissionNotice )
			return 0
		end
	end


	if No_MissionID ~= -1 then
		No_Mission	= HasMission( role , No_MissionID )
		if No_Mission == LUA_TRUE then
			SystemNotice ( role , NoMissionNotice )
			return 0
		end
	end
	
	return 1

end

function ChaMsgCheck ( role , ChaType , Need_CheckPos ,Cha_x_max , Cha_x_min , Cha_y_max , Cha_y_min , MapName , GuildType , CheckType , CheckBoatNotice , CheckPosNotice ,GuildTypeNotice )
--	SystemNotice ( role , "ChaMsgCheck")
	local Is_BoatOrMan = 0
	local At_Pos = 0
	local CheckGuild_Type = 0

	if ChaType ~= -1 then
		Is_BoatOrMan = CheckMisChaBoat( role , ChaType )
		if Is_BoatOrMan == 0 then
			SystemNotice ( role , CheckBoatNotice )
			return 0
		end
	end

	if Need_CheckPos == 1 then
		At_Pos = CheckChaPos ( role , Cha_x_min , Cha_x_max , Cha_y_min , Cha_y_max , MapName )
		if At_Pos == 0 then
			SystemNotice ( role , CheckPosNotice )
			return 0
		end
	end

	if GuildType ~= -1 then
		CheckGuild_Type = CheckChaGuildType ( role , GuildType , CheckType )
		if CheckGuild_Type == 0 then
			SystemNotice ( role , GuildTypeNotice )
			return 0
		end
	end
	
	return 1

end


function ItemUse_LDADYW (role) --[[³�°�������]]--

	local HasRecordID	= 270			-- �ж��Ƿ����ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1 Ϊ���ж� )
	local HasRecordID_1	= -1			-- �ж��Ƿ����ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1 Ϊ���ж� )
	local NoRecordID	= -1			-- �ж��Ƿ񲻴���ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1Ϊ���ж� )
	local NoRecordID_1	= -1			-- �ж��Ƿ񲻴���ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1Ϊ���ж� )
	local HasMissionID	= -1			-- �ж��Ƿ����ĳ���� ( ��Ҫ�жϵ����� ID , -1 Ϊ���ж� )
	local HasMissionID_1	= -1			-- �ж��Ƿ����ĳ���� ( ��Ҫ�жϵ����� ID , -1 Ϊ���ж� )
	local No_MissionID	= -1			-- �ж�û�д�ĳ���� ( ��Ҫ�жϵ����� ID ,-1 Ϊ���ж� )
	local No_MissionID_1	= -1			-- �ж�û�д�ĳ���� ( ��Ҫ�жϵ����� ID ,-1 Ϊ���ж� )
	local ChaType		= -1			-- �ж��Ƿ�Ϊ�˻�ֻ ( 1 Ϊ �� , 2 Ϊ �� , -1 Ϊ���ж� )
	local Need_CheckPos	= -1			-- �Ƿ��ж����� ( 1 Ϊ �ж� , -1 Ϊ���ж� , ������ж�������͵�ͼ���� 0 )
	local Cha_x_max		= 4096			-- �ж�����ID �� X �������ֵ
	local Cha_x_min		= 0			-- �ж�����ID �� X ������Сֵ
	local Cha_y_max		= 4096			-- �ж�����ID �� Y �������ֵ
	local Cha_y_min		= 0			-- �ж�����ID �� Y ������Сֵ
	local MapName		= -1			-- �ж��������ڵ�ͼ��
	local GuildType		= -1			-- �ж�����Ĺ������� ( 1 Ϊ���� , 2 Ϊ���� , 0 Ϊû�й��� , -1 Ϊ���ж� )
	local CheckType		= 1			-- �ж����﹫�����͵ķ�ʽ ( 1 Ϊ��ĳ�ֹ������� , 2 Ϊ����ĳ�ֹ������� )


	local HasRecordNotice	 = "³�°�������û���κη�Ӧ"		--�ж� HasRecord ʧ����ʾ
	local HasRecordNotice_1  = "³�°�������û���κη�Ӧ"		--�ж� HasRecord ʧ����ʾ
	local NoRecordNotice	 = "³�°�������û���κη�Ӧ"		--�ж� NoRecord ʧ����ʾ
	local NoRecordNotice_1	 = "³�°�������û���κη�Ӧ"		--�ж� NoRecord ʧ����ʾ
	local HasMissionNotice	 = "³�°�������û���κη�Ӧ"		--�ж� HasMission ʧ����ʾ
	local HasMissionNotice_1 = "³�°�������û���κη�Ӧ"		--�ж� HasMission ʧ����ʾ
	local NoMissionNotice	 = "³�°�������û���κη�Ӧ"		--�ж� NoMission ʧ����ʾ
	local NoMissionNotice_1	 = "³�°�������û���κη�Ӧ"		--�ж� NoMission ʧ����ʾ
	local CheckBoatNotice	 = "³�°�������û���κη�Ӧ"		--�ж� �˻� ʧ����ʾ
	local CheckPosNotice	 = "³�°�������û���κη�Ӧ"		--�ж� ���� ʧ����ʾ
	local GuildTypeNotice	 = "³�°�������û���κη�Ӧ"		--�ж� �������� ʧ����ʾ

	local CheckMissionMsg_1  = MissionMsgCheck ( role , HasRecordID , NoRecordID , HasMissionID , No_MissionID , HasRecordNotice , NoRecordNotice , HasMissionNotice , NoMissionNotice )
--	Notice("CheckMissionMsg_1 = "..CheckMissionMsg_1 ) 
	local CheckMissionMsg_2	 = MissionMsgCheck ( role , HasRecordID_1 , NoRecordID_1 , HasMissionID_1 , No_MissionID_1 , HasRecordNotice_1 , NoRecordNotice_1 , HasMissionNotice_1 , NoMissionNotice_1 )
--	Notice("CheckMissionMsg_2 = "..CheckMissionMsg_2 ) 
	local CheckChaMsg	 = ChaMsgCheck ( role , ChaType , Need_CheckPos ,Cha_x_max , Cha_x_min , Cha_y_max , Cha_y_min , MapName , GuildType , CheckType , CheckBoatNotice , CheckPosNotice ,GuildTypeNotice )
--	Notice("CheckChaMsg = "..CheckChaMsg ) 

	if CheckMissionMsg_1 ~= 1 or CheckMissionMsg_2 ~= 1 or CheckChaMsg ~= 1 then
		UseItemFailed ( role )
		return
	end





	local GiveMisson_1	=	9	--������������ (-1 Ϊ���� )
	local GiveMisson_2	=	8	--������������ (-1 Ϊ���� )
	local GiveMisson_0	=	10	--�޹���������� ( -1 Ϊ���� )
	local ItemID		=	-1	--������� ( -1 Ϊ���� )
	local ItemNum		=	1	--�����������
	local Give_Exp		= 	-1	-- Ҫ����ľ��� ( ���Ϊ -1 Ϊ���� )
	local Give_Money	= 	-1	-- Ҫ�����Ǯ ( ���Ϊ -1 Ϊ���� )
	local DelItem		=	0	--�Ƿ���ʹ�ú�ɾ������( 1 ɾ, 0 ��ɾ )

	if ItemID ~= -1 then
		local Item_CanGet = GetChaFreeBagGridNum ( role )
		
		if Item_CanGet < 1 then
			SystemNotice(role ,"����û���㹻�Ŀռ䣬ʹ��ʧ��")
			UseItemFailed ( role )
			return
		end
	end



	local Cha_GuildID = GetChaGuildID( role )
	
	local ChaGuildType_Get = -1
	if Cha_GuildID == 0 then
		ChaGuildType_Get = 0
	elseif Cha_GuildID > 0 and Cha_GuildID <= 100 then
		ChaGuildType_Get = 1
	elseif Cha_GuildID > 100 and Cha_GuildID <= 200 then
		ChaGuildType_Get = 2
	else
		SystemNotice ( role , "����ID�Ƿ�" )
	end

	
	if ChaGuildType_Get == 1 then
		if GiveMisson_1 ~= -1 then
			GiveMission( role, GiveMisson_1 )
		end
	end

	if ChaGuildType_Get == 2 then
		if GiveMisson_2 ~= -1 then
			GiveMission( role, GiveMisson_2 )
		end
	end

	if ChaGuildType_Get == 0 then
		if GiveMisson_0 ~= -1 then
			GiveMission( role, GiveMisson_0 )
		end
	end

	if ItemID ~= -1 then
		GiveItem ( role , 0 , ItemID , ItemNum , 0 )
	end



	if Give_Money > 0 then
		AddMoney ( role , 0 , Give_Money )
	end

	if Give_Exp > 0 then
		local exp = Exp ( role )
		if Lv ( TurnToCha ( role )  )  >= 80 then 
			Give_Exp = math.floor ( exp_dif / 50  ) 
		end 
		local exp_new = exp + Give_Exp
		
		SetCharaAttr ( exp_new , role , ATTR_CEXP )
	end


	if DelItem == 0 then
		UseItemFailed ( role )
		return
	end

end 
function ItemUse_GLDYS (role) --[[���ϵ�Կ��]]--

	local HasRecordID	= -1			-- �ж��Ƿ����ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1 Ϊ���ж� )
	local HasRecordID_1	= -1			-- �ж��Ƿ����ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1 Ϊ���ж� )
	local NoRecordID	= 15			-- �ж��Ƿ񲻴���ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1Ϊ���ж� )
	local NoRecordID_1	= -1			-- �ж��Ƿ񲻴���ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1Ϊ���ж� )
	local HasMissionID	= -1			-- �ж��Ƿ����ĳ���� ( ��Ҫ�жϵ����� ID , -1 Ϊ���ж� )
	local HasMissionID_1	= -1			-- �ж��Ƿ����ĳ���� ( ��Ҫ�жϵ����� ID , -1 Ϊ���ж� )
	local No_MissionID	= 15			-- �ж�û�д�ĳ���� ( ��Ҫ�жϵ����� ID ,-1 Ϊ���ж� )
	local No_MissionID_1	= -1			-- �ж�û�д�ĳ���� ( ��Ҫ�жϵ����� ID ,-1 Ϊ���ж� )
	local ChaType		= -1			-- �ж��Ƿ�Ϊ�˻�ֻ ( 1 Ϊ �� , 2 Ϊ �� , -1 Ϊ���ж� )
	local Need_CheckPos	= -1			-- �Ƿ��ж����� ( 1 Ϊ �ж� , -1 Ϊ���ж� , ������ж�������͵�ͼ���� 0 )
	local Cha_x_max		= 4096			-- �ж�����ID �� X �������ֵ
	local Cha_x_min		= 0			-- �ж�����ID �� X ������Сֵ
	local Cha_y_max		= 4096			-- �ж�����ID �� Y �������ֵ
	local Cha_y_min		= 0			-- �ж�����ID �� Y ������Сֵ
	local MapName		= -1			-- �ж��������ڵ�ͼ��
	local GuildType		= -1			-- �ж�����Ĺ������� ( 1 Ϊ���� , 2 Ϊ���� , 0 Ϊû�й��� , -1 Ϊ���ж� )
	local CheckType		= 1			-- �ж����﹫�����͵ķ�ʽ ( 1 Ϊ��ĳ�ֹ������� , 2 Ϊ����ĳ�ֹ������� )


	local HasRecordNotice	 = "���ϵ�Կ���Ͽ����������еı�־"		--�ж� HasRecord ʧ����ʾ
	local HasRecordNotice_1  = "���ϵ�Կ���Ͽ����������еı�־"		--�ж� HasRecord ʧ����ʾ
	local NoRecordNotice	 = "���ϵ�Կ���Ͽ����������еı�־"		--�ж� NoRecord ʧ����ʾ
	local NoRecordNotice_1	 = "���ϵ�Կ���Ͽ����������еı�־"		--�ж� NoRecord ʧ����ʾ
	local HasMissionNotice	 = "���ϵ�Կ���Ͽ����������еı�־"		--�ж� HasMission ʧ����ʾ
	local HasMissionNotice_1 = "���ϵ�Կ���Ͽ����������еı�־"		--�ж� HasMission ʧ����ʾ
	local NoMissionNotice	 = "���ϵ�Կ���Ͽ����������еı�־"		--�ж� NoMission ʧ����ʾ
	local NoMissionNotice_1	 = "���ϵ�Կ���Ͽ����������еı�־"		--�ж� NoMission ʧ����ʾ
	local CheckBoatNotice	 = "���ϵ�Կ���Ͽ����������еı�־"		--�ж� �˻� ʧ����ʾ
	local CheckPosNotice	 = "���ϵ�Կ���Ͽ����������еı�־"		--�ж� ���� ʧ����ʾ
	local GuildTypeNotice	 = "���ϵ�Կ���Ͽ����������еı�־"		--�ж� �������� ʧ����ʾ

	local CheckMissionMsg_1  = MissionMsgCheck ( role , HasRecordID , NoRecordID , HasMissionID , No_MissionID , HasRecordNotice , NoRecordNotice , HasMissionNotice , NoMissionNotice )
--	Notice("CheckMissionMsg_1 = "..CheckMissionMsg_1 ) 
	local CheckMissionMsg_2	 = MissionMsgCheck ( role , HasRecordID_1 , NoRecordID_1 , HasMissionID_1 , No_MissionID_1 , HasRecordNotice_1 , NoRecordNotice_1 , HasMissionNotice_1 , NoMissionNotice_1 )
--	Notice("CheckMissionMsg_2 = "..CheckMissionMsg_2 ) 
	local CheckChaMsg	 = ChaMsgCheck ( role , ChaType , Need_CheckPos ,Cha_x_max , Cha_x_min , Cha_y_max , Cha_y_min , MapName , GuildType , CheckType , CheckBoatNotice , CheckPosNotice ,GuildTypeNotice )
--	Notice("CheckChaMsg = "..CheckChaMsg ) 

	if CheckMissionMsg_1 ~= 1 or CheckMissionMsg_2 ~= 1 or CheckChaMsg ~= 1 then
		UseItemFailed ( role )
		return
	end





	local GiveMisson_1	=	15	--������������ (-1 Ϊ���� )
	local GiveMisson_2	=	15	--������������ (-1 Ϊ���� )
	local GiveMisson_0	=	15	--�޹���������� ( -1 Ϊ���� )
	local ItemID		=	-1	--������� ( -1 Ϊ���� )
	local ItemNum		=	0	--�����������
	local Give_Exp		= 	-1	-- Ҫ����ľ��� ( ���Ϊ -1 Ϊ���� )
	local Give_Money	= 	-1	-- Ҫ�����Ǯ ( ���Ϊ -1 Ϊ���� )
	local DelItem		=	0	--�Ƿ���ʹ�ú�ɾ������( 1 ɾ, 0 ��ɾ )

	local Cha_GuildID = GetChaGuildID( role )
	
	local ChaGuildType_Get = -1
	if Cha_GuildID == 0 then
		ChaGuildType_Get = 0
	elseif Cha_GuildID > 0 and Cha_GuildID <= 100 then
		ChaGuildType_Get = 1
	elseif Cha_GuildID > 100 and Cha_GuildID <= 200 then
		ChaGuildType_Get = 2
	else
		SystemNotice ( role , "����ID�Ƿ�" )
	end

	
	if ChaGuildType_Get == 1 then
		if GiveMisson_1 ~= -1 then
			GiveMission( role, GiveMisson_1 )
		end
	end

	if ChaGuildType_Get == 2 then
		if GiveMisson_2 ~= -1 then
			GiveMission( role, GiveMisson_2 )
		end
	end

	if ChaGuildType_Get == 0 then
		if GiveMisson_0 ~= -1 then
			GiveMission( role, GiveMisson_0 )
		end
	end

	if ItemID ~= -1 then
		GiveItem ( role , 0 , ItemID , ItemNum , 0 )
	end



	if Give_Money > 0 then
		AddMoney ( role , 0 , Give_Money )
	end

	if Give_Exp > 0 then
		local exp = Exp ( role )
		if Lv ( TurnToCha ( role )  )  >= 80 then 
			Give_Exp = math.floor ( exp_dif / 50  ) 
		end 
		local exp_new = exp + Give_Exp
		
		SetCharaAttr ( exp_new , role , ATTR_CEXP )
	end


	if DelItem == 0 then
		--UseItemFailed ( role )
		UseItemGiveMission ( role )
		return
	end

end 



function ItemUse_LDADYS (role) --[[³�°�������]]--

	local HasRecordID	= -1			-- �ж��Ƿ����ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1 Ϊ���ж� )
	local HasRecordID_1	= -1			-- �ж��Ƿ����ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1 Ϊ���ж� )
	local NoRecordID	= 16			-- �ж��Ƿ񲻴���ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1Ϊ���ж� )
	local NoRecordID_1	= -1			-- �ж��Ƿ񲻴���ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1Ϊ���ж� )
	local HasMissionID	= -1			-- �ж��Ƿ����ĳ���� ( ��Ҫ�жϵ����� ID , -1 Ϊ���ж� )
	local HasMissionID_1	= -1			-- �ж��Ƿ����ĳ���� ( ��Ҫ�жϵ����� ID , -1 Ϊ���ж� )
	local No_MissionID	= 16			-- �ж�û�д�ĳ���� ( ��Ҫ�жϵ����� ID ,-1 Ϊ���ж� )
	local No_MissionID_1	= -1			-- �ж�û�д�ĳ���� ( ��Ҫ�жϵ����� ID ,-1 Ϊ���ж� )
	local ChaType		= -1			-- �ж��Ƿ�Ϊ�˻�ֻ ( 1 Ϊ �� , 2 Ϊ �� , -1 Ϊ���ж� )
	local Need_CheckPos	= -1			-- �Ƿ��ж����� ( 1 Ϊ �ж� , -1 Ϊ���ж� , ������ж�������͵�ͼ���� 0 )
	local Cha_x_max		= 4096			-- �ж�����ID �� X �������ֵ
	local Cha_x_min		= 0			-- �ж�����ID �� X ������Сֵ
	local Cha_y_max		= 4096			-- �ж�����ID �� Y �������ֵ
	local Cha_y_min		= 0			-- �ж�����ID �� Y ������Сֵ
	local MapName		= -1			-- �ж��������ڵ�ͼ��
	local GuildType		= -1			-- �ж�����Ĺ������� ( 1 Ϊ���� , 2 Ϊ���� , 0 Ϊû�й��� , -1 Ϊ���ж� )
	local CheckType		= 1			-- �ж����﹫�����͵ķ�ʽ ( 1 Ϊ��ĳ�ֹ������� , 2 Ϊ����ĳ�ֹ������� )


	local HasRecordNotice	 = "³�°���������д��һЩ��֪��ν������"		--�ж� HasRecord ʧ����ʾ
	local HasRecordNotice_1  = "³�°���������д��һЩ��֪��ν������"		--�ж� HasRecord ʧ����ʾ
	local NoRecordNotice	 = "³�°���������д��һЩ��֪��ν������"		--�ж� NoRecord ʧ����ʾ
	local NoRecordNotice_1	 = "³�°���������д��һЩ��֪��ν������"		--�ж� NoRecord ʧ����ʾ
	local HasMissionNotice	 = "³�°���������д��һЩ��֪��ν������"		--�ж� HasMission ʧ����ʾ
	local HasMissionNotice_1 = "³�°���������д��һЩ��֪��ν������"		--�ж� HasMission ʧ����ʾ
	local NoMissionNotice	 = "³�°���������д��һЩ��֪��ν������"		--�ж� NoMission ʧ����ʾ
	local NoMissionNotice_1	 = "³�°���������д��һЩ��֪��ν������"		--�ж� NoMission ʧ����ʾ
	local CheckBoatNotice	 = "³�°���������д��һЩ��֪��ν������"		--�ж� �˻� ʧ����ʾ
	local CheckPosNotice	 = "³�°���������д��һЩ��֪��ν������"		--�ж� ���� ʧ����ʾ
	local GuildTypeNotice	 = "³�°���������д��һЩ��֪��ν������"		--�ж� �������� ʧ����ʾ

	local CheckMissionMsg_1  = MissionMsgCheck ( role , HasRecordID , NoRecordID , HasMissionID , No_MissionID , HasRecordNotice , NoRecordNotice , HasMissionNotice , NoMissionNotice )
--	Notice("CheckMissionMsg_1 = "..CheckMissionMsg_1 ) 
	local CheckMissionMsg_2	 = MissionMsgCheck ( role , HasRecordID_1 , NoRecordID_1 , HasMissionID_1 , No_MissionID_1 , HasRecordNotice_1 , NoRecordNotice_1 , HasMissionNotice_1 , NoMissionNotice_1 )
--	Notice("CheckMissionMsg_2 = "..CheckMissionMsg_2 ) 
	local CheckChaMsg	 = ChaMsgCheck ( role , ChaType , Need_CheckPos ,Cha_x_max , Cha_x_min , Cha_y_max , Cha_y_min , MapName , GuildType , CheckType , CheckBoatNotice , CheckPosNotice ,GuildTypeNotice )
--	Notice("CheckChaMsg = "..CheckChaMsg ) 

	if CheckMissionMsg_1 ~= 1 or CheckMissionMsg_2 ~= 1 or CheckChaMsg ~= 1 then
		UseItemFailed ( role )
		return
	end





	local GiveMisson_1	=	16	--������������ (-1 Ϊ���� )
	local GiveMisson_2	=	16	--������������ (-1 Ϊ���� )
	local GiveMisson_0	=	16	--�޹���������� ( -1 Ϊ���� )
	local ItemID		=	-1	--������� ( -1 Ϊ���� )
	local ItemNum		=	0	--�����������
	local Give_Exp		= 	-1	-- Ҫ����ľ��� ( ���Ϊ -1 Ϊ���� )
	local Give_Money	= 	-1	-- Ҫ�����Ǯ ( ���Ϊ -1 Ϊ���� )
	local DelItem		=	0	--�Ƿ���ʹ�ú�ɾ������( 1 ɾ, 0 ��ɾ )

	local Cha_GuildID = GetChaGuildID( role )
	
	local ChaGuildType_Get = -1
	if Cha_GuildID == 0 then
		ChaGuildType_Get = 0
	elseif Cha_GuildID > 0 and Cha_GuildID <= 100 then
		ChaGuildType_Get = 1
	elseif Cha_GuildID > 100 and Cha_GuildID <= 200 then
		ChaGuildType_Get = 2
	else
		SystemNotice ( role , "����ID�Ƿ�" )
	end

	
	if ChaGuildType_Get == 1 then
		if GiveMisson_1 ~= -1 then
			GiveMission( role, GiveMisson_1 )
		end
	end

	if ChaGuildType_Get == 2 then
		if GiveMisson_2 ~= -1 then
			GiveMission( role, GiveMisson_2 )
		end
	end

	if ChaGuildType_Get == 0 then
		if GiveMisson_0 ~= -1 then
			GiveMission( role, GiveMisson_0 )
		end
	end

	if ItemID ~= -1 then
		GiveItem ( role , 0 , ItemID , ItemNum , 0 )
	end



	if Give_Money > 0 then
		AddMoney ( role , 0 , Give_Money )
	end

	if Give_Exp > 0 then
		local exp = Exp ( role )
		if Lv ( TurnToCha ( role )  )  >= 80 then 
			Give_Exp = math.floor ( exp_dif / 50  ) 
		end 
		local exp_new = exp + Give_Exp
		
		SetCharaAttr ( exp_new , role , ATTR_CEXP )
	end


	if DelItem == 0 then
		UseItemFailed ( role )
		return
	end

end 


function ItemUse_YXYSJY (role) --[[����ҩˮ��ҩ]]--

	local HasRecordID	= -1			-- �ж��Ƿ����ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1 Ϊ���ж� )
	local HasRecordID_1	= -1			-- �ж��Ƿ����ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1 Ϊ���ж� )
	local NoRecordID	= 18			-- �ж��Ƿ񲻴���ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1Ϊ���ж� )
	local NoRecordID_1	= -1			-- �ж��Ƿ񲻴���ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1Ϊ���ж� )
	local HasMissionID	= -1			-- �ж��Ƿ����ĳ���� ( ��Ҫ�жϵ����� ID , -1 Ϊ���ж� )
	local HasMissionID_1	= -1			-- �ж��Ƿ����ĳ���� ( ��Ҫ�жϵ����� ID , -1 Ϊ���ж� )
	local No_MissionID	= 18			-- �ж�û�д�ĳ���� ( ��Ҫ�жϵ����� ID ,-1 Ϊ���ж� )
	local No_MissionID_1	= -1			-- �ж�û�д�ĳ���� ( ��Ҫ�жϵ����� ID ,-1 Ϊ���ж� )
	local ChaType		= -1			-- �ж��Ƿ�Ϊ�˻�ֻ ( 1 Ϊ �� , 2 Ϊ �� , -1 Ϊ���ж� )
	local Need_CheckPos	= -1			-- �Ƿ��ж����� ( 1 Ϊ �ж� , -1 Ϊ���ж� , ������ж�������͵�ͼ���� 0 )
	local Cha_x_max		= 1845			-- �ж�����ID �� X �������ֵ
	local Cha_x_min		= 1841			-- �ж�����ID �� X ������Сֵ
	local Cha_y_max		= 1719			-- �ж�����ID �� Y �������ֵ
	local Cha_y_min		= 1715			-- �ж�����ID �� Y ������Сֵ
	local MapName		= "magicsea"			-- �ж��������ڵ�ͼ��
	local GuildType		= -1			-- �ж�����Ĺ������� ( 1 Ϊ���� , 2 Ϊ���� , 0 Ϊû�й��� , -1 Ϊ���ж� )
	local CheckType		= 1			-- �ж����﹫�����͵ķ�ʽ ( 1 Ϊ��ĳ�ֹ������� , 2 Ϊ����ĳ�ֹ������� )


	local HasRecordNotice	 = "���������ҩˮ��ҩ�������"		--�ж� HasRecord ʧ����ʾ
	local HasRecordNotice_1  = "���������ҩˮ��ҩ�������"		--�ж� HasRecord ʧ����ʾ
	local NoRecordNotice	 = "���������ҩˮ��ҩ�������"		--�ж� NoRecord ʧ����ʾ
	local NoRecordNotice_1	 = "���������ҩˮ��ҩ�������"		--�ж� NoRecord ʧ����ʾ
	local HasMissionNotice	 = "���������ҩˮ��ҩ�������"		--�ж� HasMission ʧ����ʾ
	local HasMissionNotice_1 = "���������ҩˮ��ҩ�������"		--�ж� HasMission ʧ����ʾ
	local NoMissionNotice	 = "���������ҩˮ��ҩ�������"		--�ж� NoMission ʧ����ʾ
	local NoMissionNotice_1	 = "���������ҩˮ��ҩ�������"		--�ж� NoMission ʧ����ʾ
	local CheckBoatNotice	 = "���������ҩˮ��ҩ�������"		--�ж� �˻� ʧ����ʾ
	local CheckPosNotice	 = "���������ҩˮ��ҩ�������"		--�ж� ���� ʧ����ʾ
	local GuildTypeNotice	 = "���������ҩˮ��ҩ�������"		--�ж� �������� ʧ����ʾ

	local CheckMissionMsg_1  = MissionMsgCheck ( role , HasRecordID , NoRecordID , HasMissionID , No_MissionID , HasRecordNotice , NoRecordNotice , HasMissionNotice , NoMissionNotice )
--	Notice("CheckMissionMsg_1 = "..CheckMissionMsg_1 ) 
	local CheckMissionMsg_2	 = MissionMsgCheck ( role , HasRecordID_1 , NoRecordID_1 , HasMissionID_1 , No_MissionID_1 , HasRecordNotice_1 , NoRecordNotice_1 , HasMissionNotice_1 , NoMissionNotice_1 )
--	Notice("CheckMissionMsg_2 = "..CheckMissionMsg_2 ) 
	local CheckChaMsg	 = ChaMsgCheck ( role , ChaType , Need_CheckPos ,Cha_x_max , Cha_x_min , Cha_y_max , Cha_y_min , MapName , GuildType , CheckType , CheckBoatNotice , CheckPosNotice ,GuildTypeNotice )
--	Notice("CheckChaMsg = "..CheckChaMsg ) 

	if CheckMissionMsg_1 ~= 1 or CheckMissionMsg_2 ~= 1 or CheckChaMsg ~= 1 then
		UseItemFailed ( role )
		return
	end





	local GiveMisson_1	=	18	--������������ (-1 Ϊ���� )
	local GiveMisson_2	=	18	--������������ (-1 Ϊ���� )
	local GiveMisson_0	=	18	--�޹���������� ( -1 Ϊ���� )
	local ItemID		=	-1	--������� ( -1 Ϊ���� )
	local ItemNum		=	0	--�����������
	local Give_Exp		= 	-1	-- Ҫ����ľ��� ( ���Ϊ -1 Ϊ���� )
	local Give_Money	= 	-1	-- Ҫ�����Ǯ ( ���Ϊ -1 Ϊ���� )
	local DelItem		=	0	--�Ƿ���ʹ�ú�ɾ������( 1 ɾ, 0 ��ɾ )

	local Cha_GuildID = GetChaGuildID( role )
	
	local ChaGuildType_Get = -1
	if Cha_GuildID == 0 then
		ChaGuildType_Get = 0
	elseif Cha_GuildID > 0 and Cha_GuildID <= 100 then
		ChaGuildType_Get = 1
	elseif Cha_GuildID > 100 and Cha_GuildID <= 200 then
		ChaGuildType_Get = 2
	else
		SystemNotice ( role , "����ID�Ƿ�" )
	end

	
	if ChaGuildType_Get == 1 then
		if GiveMisson_1 ~= -1 then
			GiveMission( role, GiveMisson_1 )
		end
	end

	if ChaGuildType_Get == 2 then
		if GiveMisson_2 ~= -1 then
			GiveMission( role, GiveMisson_2 )
		end
	end

	if ChaGuildType_Get == 0 then
		if GiveMisson_0 ~= -1 then
			GiveMission( role, GiveMisson_0 )
		end
	end

	if ItemID ~= -1 then
		GiveItem ( role , 0 , ItemID , ItemNum , 0 )
	end



	if Give_Money > 0 then
		AddMoney ( role , 0 , Give_Money )
	end

	if Give_Exp > 0 then
		local exp = Exp ( role )
		if Lv ( TurnToCha ( role )  )  >= 80 then 
			Give_Exp = math.floor ( exp_dif / 50  ) 
		end 
		local exp_new = exp + Give_Exp
		
		SetCharaAttr ( exp_new , role , ATTR_CEXP )
	end


	if DelItem == 0 then
		UseItemFailed ( role )
		return
	end

end 



function ItemUse_RYDKL (role) --[[���������]]--

	local HasRecordID	= 287			-- �ж��Ƿ����ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1 Ϊ���ж� )
	local HasRecordID_1	= -1			-- �ж��Ƿ����ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1 Ϊ���ж� )
	local NoRecordID	= 20			-- �ж��Ƿ񲻴���ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1Ϊ���ж� )
	local NoRecordID_1	= -1			-- �ж��Ƿ񲻴���ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1Ϊ���ж� )
	local HasMissionID	= 19			-- �ж��Ƿ����ĳ���� ( ��Ҫ�жϵ����� ID , -1 Ϊ���ж� )
	local HasMissionID_1	= -1			-- �ж��Ƿ����ĳ���� ( ��Ҫ�жϵ����� ID , -1 Ϊ���ж� )
	local No_MissionID	= 20			-- �ж�û�д�ĳ���� ( ��Ҫ�жϵ����� ID ,-1 Ϊ���ж� )
	local No_MissionID_1	= -1			-- �ж�û�д�ĳ���� ( ��Ҫ�жϵ����� ID ,-1 Ϊ���ж� )
	local ChaType		= -1			-- �ж��Ƿ�Ϊ�˻�ֻ ( 1 Ϊ �� , 2 Ϊ �� , -1 Ϊ���ж� )
	local Need_CheckPos	= 1			-- �Ƿ��ж����� ( 1 Ϊ �ж� , -1 Ϊ���ж� , ������ж�������͵�ͼ���� 0 )
	local Cha_x_max		= 184500			-- �ж�����ID �� X �������ֵ
	local Cha_x_min		= 184100			-- �ж�����ID �� X ������Сֵ
	local Cha_y_max		= 171900			-- �ж�����ID �� Y �������ֵ
	local Cha_y_min		= 171500			-- �ж�����ID �� Y ������Сֵ
	local MapName		= "magicsea"			-- �ж��������ڵ�ͼ��
	local GuildType		= -1			-- �ж�����Ĺ������� ( 1 Ϊ���� , 2 Ϊ���� , 0 Ϊû�й��� , -1 Ϊ���ж� )
	local CheckType		= 1			-- �ж����﹫�����͵ķ�ʽ ( 1 Ϊ��ĳ�ֹ������� , 2 Ϊ����ĳ�ֹ������� )


	local HasRecordNotice	 = "�������������ħ������д�š�1843��1717��"		--�ж� HasRecord ʧ����ʾ
	local HasRecordNotice_1  = "�������������ħ������д�š�1843��1717��"		--�ж� HasRecord ʧ����ʾ
	local NoRecordNotice	 = "�������������ħ������д�š�1843��1717��"		--�ж� NoRecord ʧ����ʾ
	local NoRecordNotice_1	 = "�������������ħ������д�š�1843��1717��"		--�ж� NoRecord ʧ����ʾ
	local HasMissionNotice	 = "����ȥ�ҽܿ�̸̸"		--�ж� HasMission ʧ����ʾ
	local HasMissionNotice_1 = "�������������ħ������д�š�1843��1717��"		--�ж� HasMission ʧ����ʾ
	local NoMissionNotice	 = "�������������ħ������д�š�1843��1717��"		--�ж� NoMission ʧ����ʾ
	local NoMissionNotice_1	 = "�������������ħ������д�š�1843��1717��"		--�ж� NoMission ʧ����ʾ
	local CheckBoatNotice	 = "�������������ħ������д�š�1843��1717��"		--�ж� �˻� ʧ����ʾ
	local CheckPosNotice	 = "�������������ħ������д�š�1843��1717��"		--�ж� ���� ʧ����ʾ
	local GuildTypeNotice	 = "�������������ħ������д�š�1843��1717��"		--�ж� �������� ʧ����ʾ

	local CheckMissionMsg_1  = MissionMsgCheck ( role , HasRecordID , NoRecordID , HasMissionID , No_MissionID , HasRecordNotice , NoRecordNotice , HasMissionNotice , NoMissionNotice )
--	Notice("CheckMissionMsg_1 = "..CheckMissionMsg_1 ) 
	local CheckMissionMsg_2	 = MissionMsgCheck ( role , HasRecordID_1 , NoRecordID_1 , HasMissionID_1 , No_MissionID_1 , HasRecordNotice_1 , NoRecordNotice_1 , HasMissionNotice_1 , NoMissionNotice_1 )
--	Notice("CheckMissionMsg_2 = "..CheckMissionMsg_2 ) 
	local CheckChaMsg	 = ChaMsgCheck ( role , ChaType , Need_CheckPos ,Cha_x_max , Cha_x_min , Cha_y_max , Cha_y_min , MapName , GuildType , CheckType , CheckBoatNotice , CheckPosNotice ,GuildTypeNotice )
--	Notice("CheckChaMsg = "..CheckChaMsg ) 

	if CheckMissionMsg_1 ~= 1 or CheckMissionMsg_2 ~= 1 or CheckChaMsg ~= 1 then
		UseItemFailed ( role )
		return
	end





	local GiveMisson_1	=	20	--������������ (-1 Ϊ���� )
	local GiveMisson_2	=	20	--������������ (-1 Ϊ���� )
	local GiveMisson_0	=	20	--�޹���������� ( -1 Ϊ���� )
	local ItemID		=	-1	--������� ( -1 Ϊ���� )
	local ItemNum		=	1	--�����������
	local Give_Exp		= 	-1	-- Ҫ����ľ��� ( ���Ϊ -1 Ϊ���� )
	local Give_Money	= 	-1	-- Ҫ�����Ǯ ( ���Ϊ -1 Ϊ���� )
	local DelItem		=	0	--�Ƿ���ʹ�ú�ɾ������( 1 ɾ, 0 ��ɾ )

	if ItemID ~= -1 then
		local Item_CanGet = GetChaFreeBagGridNum ( role )
		
		if Item_CanGet < 1 then
			SystemNotice(role ,"����û���㹻�Ŀռ䣬ʹ��ʧ��")
			UseItemFailed ( role )
			return
		end
	end

	local Cha_GuildID = GetChaGuildID( role )
	
	local ChaGuildType_Get = -1
	if Cha_GuildID == 0 then
		ChaGuildType_Get = 0
	elseif Cha_GuildID > 0 and Cha_GuildID <= 100 then
		ChaGuildType_Get = 1
	elseif Cha_GuildID > 100 and Cha_GuildID <= 200 then
		ChaGuildType_Get = 2
	else
		SystemNotice ( role , "����ID�Ƿ�" )
	end

	
	if ChaGuildType_Get == 1 then
		if GiveMisson_1 ~= -1 then
			GiveMission( role, GiveMisson_1 )
		end
	end

	if ChaGuildType_Get == 2 then
		if GiveMisson_2 ~= -1 then
			GiveMission( role, GiveMisson_2 )
		end
	end

	if ChaGuildType_Get == 0 then
		if GiveMisson_0 ~= -1 then
			GiveMission( role, GiveMisson_0 )
		end
	end

	if ItemID ~= -1 then
		GiveItem ( role , 0 , ItemID , ItemNum , 0 )
	end



	if Give_Money > 0 then
		AddMoney ( role , 0 , Give_Money )
	end

	if Give_Exp > 0 then
		local exp = Exp ( role )
		if Lv ( TurnToCha ( role )  )  >= 80 then 
			Give_Exp = math.floor ( exp_dif / 50  ) 
		end 
		local exp_new = exp + Give_Exp
		
		SetCharaAttr ( exp_new , role , ATTR_CEXP )
	end


	if DelItem == 0 then
		UseItemFailed ( role )
		return
	end

end 




function ItemUse_SXTCQ (role) --[[ˮ��̽����]]--

	local HasRecordID	= -1			-- �ж��Ƿ����ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1 Ϊ���ж� )
	local HasRecordID_1	= -1			-- �ж��Ƿ����ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1 Ϊ���ж� )
	local NoRecordID	= 29			-- �ж��Ƿ񲻴���ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1Ϊ���ж� )
	local NoRecordID_1	= -1			-- �ж��Ƿ񲻴���ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1Ϊ���ж� )
	local HasMissionID	= 381			-- �ж��Ƿ����ĳ���� ( ��Ҫ�жϵ����� ID , -1 Ϊ���ж� )
	local HasMissionID_1	= -1			-- �ж��Ƿ����ĳ���� ( ��Ҫ�жϵ����� ID , -1 Ϊ���ж� )
	local No_MissionID	= 29			-- �ж�û�д�ĳ���� ( ��Ҫ�жϵ����� ID ,-1 Ϊ���ж� )
	local No_MissionID_1	= -1			-- �ж�û�д�ĳ���� ( ��Ҫ�жϵ����� ID ,-1 Ϊ���ж� )
	local ChaType		= 2			-- �ж��Ƿ�Ϊ�˻�ֻ ( 1 Ϊ �� , 2 Ϊ �� , -1 Ϊ���ж� )
	local Need_CheckPos	= 1			-- �Ƿ��ж����� ( 1 Ϊ �ж� , -1 Ϊ���ж� , ������ж�������͵�ͼ���� 0 )
	local Cha_x_max		= 375900			-- �ж�����ID �� X �������ֵ
	local Cha_x_min		= 375500			-- �ж�����ID �� X ������Сֵ
	local Cha_y_max		= 125000			-- �ж�����ID �� Y �������ֵ
	local Cha_y_min		= 124600			-- �ж�����ID �� Y ������Сֵ
	local MapName		= "magicsea"			-- �ж��������ڵ�ͼ��
	local GuildType		= -1			-- �ж�����Ĺ������� ( 1 Ϊ���� , 2 Ϊ���� , 0 Ϊû�й��� , -1 Ϊ���ж� )
	local CheckType		= 1			-- �ж����﹫�����͵ķ�ʽ ( 1 Ϊ��ĳ�ֹ������� , 2 Ϊ����ĳ�ֹ������� )


	local HasRecordNotice	 = "̽��ʧ��"		--�ж� HasRecord ʧ����ʾ
	local HasRecordNotice_1  = "̽��ʧ��"		--�ж� HasRecord ʧ����ʾ
	local NoRecordNotice	 = "̽��ʧ��"		--�ж� NoRecord ʧ����ʾ
	local NoRecordNotice_1	 = "̽��ʧ��"		--�ж� NoRecord ʧ����ʾ
	local HasMissionNotice	 = "̽��ʧ��"		--�ж� HasMission ʧ����ʾ
	local HasMissionNotice_1 = "̽��ʧ��"		--�ж� HasMission ʧ����ʾ
	local NoMissionNotice	 = "̽��ʧ��"		--�ж� NoMission ʧ����ʾ
	local NoMissionNotice_1	 = "̽��ʧ��"		--�ж� NoMission ʧ����ʾ
	local CheckBoatNotice	 = "ˮ��̽����ֻ���ں���ʹ��"		--�ж� �˻� ʧ����ʾ
	local CheckPosNotice	 = "̽��ʧ��"		--�ж� ���� ʧ����ʾ
	local GuildTypeNotice	 = "̽��ʧ��"		--�ж� �������� ʧ����ʾ

	local CheckMissionMsg_1  = MissionMsgCheck ( role , HasRecordID , NoRecordID , HasMissionID , No_MissionID , HasRecordNotice , NoRecordNotice , HasMissionNotice , NoMissionNotice )
--	Notice("CheckMissionMsg_1 = "..CheckMissionMsg_1 ) 
	local CheckMissionMsg_2	 = MissionMsgCheck ( role , HasRecordID_1 , NoRecordID_1 , HasMissionID_1 , No_MissionID_1 , HasRecordNotice_1 , NoRecordNotice_1 , HasMissionNotice_1 , NoMissionNotice_1 )
--	Notice("CheckMissionMsg_2 = "..CheckMissionMsg_2 ) 
	local CheckChaMsg	 = ChaMsgCheck ( role , ChaType , Need_CheckPos ,Cha_x_max , Cha_x_min , Cha_y_max , Cha_y_min , MapName , GuildType , CheckType , CheckBoatNotice , CheckPosNotice ,GuildTypeNotice )
--	Notice("CheckChaMsg = "..CheckChaMsg ) 

	if CheckMissionMsg_1 ~= 1 or CheckMissionMsg_2 ~= 1 or CheckChaMsg ~= 1 then
		UseItemFailed ( role )
		return
	end





	local GiveMisson_1	=	29	--������������ (-1 Ϊ���� )
	local GiveMisson_2	=	29	--������������ (-1 Ϊ���� )
	local GiveMisson_0	=	29	--�޹���������� ( -1 Ϊ���� )
	local ItemID		=	-1	--������� ( -1 Ϊ���� )
	local ItemNum		=	1	--�����������
	local Give_Exp		= 	-1	-- Ҫ����ľ��� ( ���Ϊ -1 Ϊ���� )
	local Give_Money	= 	-1	-- Ҫ�����Ǯ ( ���Ϊ -1 Ϊ���� )
	local DelItem		=	0	--�Ƿ���ʹ�ú�ɾ������( 1 ɾ, 0 ��ɾ )

	if ItemID ~= -1 then
		local Item_CanGet = GetChaFreeBagGridNum ( role )
		
		if Item_CanGet < 1 then
			SystemNotice(role ,"����û���㹻�Ŀռ䣬ʹ��ʧ��")
			UseItemFailed ( role )
			return
		end
	end

	local Cha_GuildID = GetChaGuildID( role )
	
	local ChaGuildType_Get = -1
	if Cha_GuildID == 0 then
		ChaGuildType_Get = 0
	elseif Cha_GuildID > 0 and Cha_GuildID <= 100 then
		ChaGuildType_Get = 1
	elseif Cha_GuildID > 100 and Cha_GuildID <= 200 then
		ChaGuildType_Get = 2
	else
		SystemNotice ( role , "����ID�Ƿ�" )
	end

	
	if ChaGuildType_Get == 1 then
		if GiveMisson_1 ~= -1 then
			GiveMission( role, GiveMisson_1 )
		end
	end

	if ChaGuildType_Get == 2 then
		if GiveMisson_2 ~= -1 then
			GiveMission( role, GiveMisson_2 )
		end
	end

	if ChaGuildType_Get == 0 then
		if GiveMisson_0 ~= -1 then
			GiveMission( role, GiveMisson_0 )
		end
	end

	if ItemID ~= -1 then
		GiveItem ( role , 0 , ItemID , ItemNum , 0 )
	end



	if Give_Money > 0 then
		AddMoney ( role , 0 , Give_Money )
	end

	if Give_Exp > 0 then
		local exp = Exp ( role )
		if Lv ( TurnToCha ( role )  )  >= 80 then 
			Give_Exp = math.floor ( exp_dif / 50  ) 
		end 
		local exp_new = exp + Give_Exp
		
		SetCharaAttr ( exp_new , role , ATTR_CEXP )
	end


	if DelItem == 0 then
		UseItemFailed ( role )
		return
	end

end 





function ItemUse_RJDYW (role) --[[�ռǵ�����]]--

	local HasRecordID	= 290			-- �ж��Ƿ����ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1 Ϊ���ж� )
	local HasRecordID_1	= -1			-- �ж��Ƿ����ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1 Ϊ���ж� )
	local NoRecordID	= 21			-- �ж��Ƿ񲻴���ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1Ϊ���ж� )
	local NoRecordID_1	= -1			-- �ж��Ƿ񲻴���ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1Ϊ���ж� )
	local HasMissionID	= -1			-- �ж��Ƿ����ĳ���� ( ��Ҫ�жϵ����� ID , -1 Ϊ���ж� )
	local HasMissionID_1	= -1			-- �ж��Ƿ����ĳ���� ( ��Ҫ�жϵ����� ID , -1 Ϊ���ж� )
	local No_MissionID	= 21			-- �ж�û�д�ĳ���� ( ��Ҫ�жϵ����� ID ,-1 Ϊ���ж� )
	local No_MissionID_1	= -1			-- �ж�û�д�ĳ���� ( ��Ҫ�жϵ����� ID ,-1 Ϊ���ж� )
	local ChaType		= -1			-- �ж��Ƿ�Ϊ�˻�ֻ ( 1 Ϊ �� , 2 Ϊ �� , -1 Ϊ���ж� )
	local Need_CheckPos	= -1			-- �Ƿ��ж����� ( 1 Ϊ �ж� , -1 Ϊ���ж� , ������ж�������͵�ͼ���� 0 )
	local Cha_x_max		= 0			-- �ж�����ID �� X �������ֵ
	local Cha_x_min		= 0			-- �ж�����ID �� X ������Сֵ
	local Cha_y_max		= 0			-- �ж�����ID �� Y �������ֵ
	local Cha_y_min		= 0			-- �ж�����ID �� Y ������Сֵ
	local MapName		= -1			-- �ж��������ڵ�ͼ��
	local GuildType		= -1			-- �ж�����Ĺ������� ( 1 Ϊ���� , 2 Ϊ���� , 0 Ϊû�й��� , -1 Ϊ���ж� )
	local CheckType		= 1			-- �ж����﹫�����͵ķ�ʽ ( 1 Ϊ��ĳ�ֹ������� , 2 Ϊ����ĳ�ֹ������� )


	local HasRecordNotice	 = "�ռǵ������ϼ����Ű���³һ�������ð��"		--�ж� HasRecord ʧ����ʾ
	local HasRecordNotice_1  = "�ռǵ������ϼ����Ű���³һ�������ð��"		--�ж� HasRecord ʧ����ʾ
	local NoRecordNotice	 = "�ռǵ������ϼ����Ű���³һ�������ð��"		--�ж� NoRecord ʧ����ʾ
	local NoRecordNotice_1	 = "�ռǵ������ϼ����Ű���³һ�������ð��"		--�ж� NoRecord ʧ����ʾ
	local HasMissionNotice	 = "�ռǵ������ϼ����Ű���³һ�������ð��"		--�ж� HasMission ʧ����ʾ
	local HasMissionNotice_1 = "�ռǵ������ϼ����Ű���³һ�������ð��"		--�ж� HasMission ʧ����ʾ
	local NoMissionNotice	 = "�ռǵ������ϼ����Ű���³һ�������ð��"		--�ж� NoMission ʧ����ʾ
	local NoMissionNotice_1	 = "�ռǵ������ϼ����Ű���³һ�������ð��"		--�ж� NoMission ʧ����ʾ
	local CheckBoatNotice	 = "�ռǵ������ϼ����Ű���³һ�������ð��"		--�ж� �˻� ʧ����ʾ
	local CheckPosNotice	 = "�ռǵ������ϼ����Ű���³һ�������ð��"		--�ж� ���� ʧ����ʾ
	local GuildTypeNotice	 = "�ռǵ������ϼ����Ű���³һ�������ð��"		--�ж� �������� ʧ����ʾ

	local CheckMissionMsg_1  = MissionMsgCheck ( role , HasRecordID , NoRecordID , HasMissionID , No_MissionID , HasRecordNotice , NoRecordNotice , HasMissionNotice , NoMissionNotice )
--	Notice("CheckMissionMsg_1 = "..CheckMissionMsg_1 ) 
	local CheckMissionMsg_2	 = MissionMsgCheck ( role , HasRecordID_1 , NoRecordID_1 , HasMissionID_1 , No_MissionID_1 , HasRecordNotice_1 , NoRecordNotice_1 , HasMissionNotice_1 , NoMissionNotice_1 )
--	Notice("CheckMissionMsg_2 = "..CheckMissionMsg_2 ) 
	local CheckChaMsg	 = ChaMsgCheck ( role , ChaType , Need_CheckPos ,Cha_x_max , Cha_x_min , Cha_y_max , Cha_y_min , MapName , GuildType , CheckType , CheckBoatNotice , CheckPosNotice ,GuildTypeNotice )
--	Notice("CheckChaMsg = "..CheckChaMsg ) 

	if CheckMissionMsg_1 ~= 1 or CheckMissionMsg_2 ~= 1 or CheckChaMsg ~= 1 then
		UseItemFailed ( role )
		return
	end





	local GiveMisson_1	=	21	--������������ (-1 Ϊ���� )
	local GiveMisson_2	=	21	--������������ (-1 Ϊ���� )
	local GiveMisson_0	=	21	--�޹���������� ( -1 Ϊ���� )
	local ItemID		=	-1	--������� ( -1 Ϊ���� )
	local ItemNum		=	0	--�����������
	local Give_Exp		= 	-1	-- Ҫ����ľ��� ( ���Ϊ -1 Ϊ���� )
	local Give_Money	= 	-1	-- Ҫ�����Ǯ ( ���Ϊ -1 Ϊ���� )
	local DelItem		=	0	--�Ƿ���ʹ�ú�ɾ������( 1 ɾ, 0 ��ɾ )

	local Cha_GuildID = GetChaGuildID( role )
	
	local ChaGuildType_Get = -1
	if Cha_GuildID == 0 then
		ChaGuildType_Get = 0
	elseif Cha_GuildID > 0 and Cha_GuildID <= 100 then
		ChaGuildType_Get = 1
	elseif Cha_GuildID > 100 and Cha_GuildID <= 200 then
		ChaGuildType_Get = 2
	else
		SystemNotice ( role , "����ID�Ƿ�" )
	end

	
	if ChaGuildType_Get == 1 then
		if GiveMisson_1 ~= -1 then
			GiveMission( role, GiveMisson_1 )
		end
	end

	if ChaGuildType_Get == 2 then
		if GiveMisson_2 ~= -1 then
			GiveMission( role, GiveMisson_2 )
		end
	end

	if ChaGuildType_Get == 0 then
		if GiveMisson_0 ~= -1 then
			GiveMission( role, GiveMisson_0 )
		end
	end

	if ItemID ~= -1 then
		GiveItem ( role , 0 , ItemID , ItemNum , 0 )
	end



	if Give_Money > 0 then
		AddMoney ( role , 0 , Give_Money )
	end

	if Give_Exp > 0 then
		local exp = Exp ( role )
		if Lv ( TurnToCha ( role )  )  >= 80 then 
			Give_Exp = math.floor ( exp_dif / 50  ) 
		end 
		local exp_new = exp + Give_Exp
		
		SetCharaAttr ( exp_new , role , ATTR_CEXP )
	end


	if DelItem == 0 then
		UseItemFailed ( role )
		return
	end

end 






function ItemUse_HL (role) --[[����]]--

	local HasRecordID	= 315			-- �ж��Ƿ����ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1 Ϊ���ж� )
	local HasRecordID_1	= -1			-- �ж��Ƿ����ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1 Ϊ���ж� )
	local NoRecordID	= 22			-- �ж��Ƿ񲻴���ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1Ϊ���ж� )
	local NoRecordID_1	= -1			-- �ж��Ƿ񲻴���ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1Ϊ���ж� )
	local HasMissionID	= -1			-- �ж��Ƿ����ĳ���� ( ��Ҫ�жϵ����� ID , -1 Ϊ���ж� )
	local HasMissionID_1	= -1			-- �ж��Ƿ����ĳ���� ( ��Ҫ�жϵ����� ID , -1 Ϊ���ж� )
	local No_MissionID	= 22			-- �ж�û�д�ĳ���� ( ��Ҫ�жϵ����� ID ,-1 Ϊ���ж� )
	local No_MissionID_1	= -1			-- �ж�û�д�ĳ���� ( ��Ҫ�жϵ����� ID ,-1 Ϊ���ж� )
	local ChaType		= 2			-- �ж��Ƿ�Ϊ�˻�ֻ ( 1 Ϊ �� , 2 Ϊ �� , -1 Ϊ���ж� )
	local Need_CheckPos	= -1			-- �Ƿ��ж����� ( 1 Ϊ �ж� , -1 Ϊ���ж� , ������ж�������͵�ͼ���� 0 )
	local Cha_x_max		= 0			-- �ж�����ID �� X �������ֵ
	local Cha_x_min		= 0			-- �ж�����ID �� X ������Сֵ
	local Cha_y_max		= 0			-- �ж�����ID �� Y �������ֵ
	local Cha_y_min		= 0			-- �ж�����ID �� Y ������Сֵ
	local MapName		= -1			-- �ж��������ڵ�ͼ��
	local GuildType		= -1			-- �ж�����Ĺ������� ( 1 Ϊ���� , 2 Ϊ���� , 0 Ϊû�й��� , -1 Ϊ���ж� )
	local CheckType		= 1			-- �ж����﹫�����͵ķ�ʽ ( 1 Ϊ��ĳ�ֹ������� , 2 Ϊ����ĳ�ֹ������� )


	local HasRecordNotice	 = "���������ŵ�΢��ָ�ż��ɴ�½1497,1707�ķ���"		--�ж� HasRecord ʧ����ʾ
	local HasRecordNotice_1  = "���������ŵ�΢��ָ�ż��ɴ�½1497,1707�ķ���"		--�ж� HasRecord ʧ����ʾ
	local NoRecordNotice	 = "���������ŵ�΢��ָ�ż��ɴ�½1497,1707�ķ���"		--�ж� NoRecord ʧ����ʾ
	local NoRecordNotice_1	 = "���������ŵ�΢��ָ�ż��ɴ�½1497,1707�ķ���"		--�ж� NoRecord ʧ����ʾ
	local HasMissionNotice	 = "���������ŵ�΢��ָ�ż��ɴ�½1497,1707�ķ���"		--�ж� HasMission ʧ����ʾ
	local HasMissionNotice_1 = "���������ŵ�΢��ָ�ż��ɴ�½1497,1707�ķ���"		--�ж� HasMission ʧ����ʾ
	local NoMissionNotice	 = "���������ŵ�΢��ָ�ż��ɴ�½1497,1707�ķ���"		--�ж� NoMission ʧ����ʾ
	local NoMissionNotice_1	 = "���������ŵ�΢��ָ�ż��ɴ�½1497,1707�ķ���"		--�ж� NoMission ʧ����ʾ
	local CheckBoatNotice	 = "���������ŵ�΢���ƺ�ָ�ż��ɺ��ϵ�ĳ������"			--�ж� �˻� ʧ����ʾ
	local CheckPosNotice	 = "���������ŵ�΢��ָ�ż��ɴ�½1497,1707�ķ���"		--�ж� ���� ʧ����ʾ
	local GuildTypeNotice	 = "���������ŵ�΢��ָ�ż��ɴ�½1497,1707�ķ���"		--�ж� �������� ʧ����ʾ

	local CheckMissionMsg_1  = MissionMsgCheck ( role , HasRecordID , NoRecordID , HasMissionID , No_MissionID , HasRecordNotice , NoRecordNotice , HasMissionNotice , NoMissionNotice )
--	Notice("CheckMissionMsg_1 = "..CheckMissionMsg_1 ) 
	local CheckMissionMsg_2	 = MissionMsgCheck ( role , HasRecordID_1 , NoRecordID_1 , HasMissionID_1 , No_MissionID_1 , HasRecordNotice_1 , NoRecordNotice_1 , HasMissionNotice_1 , NoMissionNotice_1 )
--	Notice("CheckMissionMsg_2 = "..CheckMissionMsg_2 ) 
	local CheckChaMsg	 = ChaMsgCheck ( role , ChaType , Need_CheckPos ,Cha_x_max , Cha_x_min , Cha_y_max , Cha_y_min , MapName , GuildType , CheckType , CheckBoatNotice , CheckPosNotice ,GuildTypeNotice )
--	Notice("CheckChaMsg = "..CheckChaMsg ) 

	if CheckMissionMsg_1 ~= 1 or CheckMissionMsg_2 ~= 1 or CheckChaMsg ~= 1 then
		UseItemFailed ( role )
		return
	end





	local GiveMisson_1	=	22	--������������ (-1 Ϊ���� )
	local GiveMisson_2	=	22	--������������ (-1 Ϊ���� )
	local GiveMisson_0	=	22	--�޹���������� ( -1 Ϊ���� )
	local ItemID		=	-1	--������� ( -1 Ϊ���� )
	local ItemNum		=	0	--�����������
	local Give_Exp		= 	-1	-- Ҫ����ľ��� ( ���Ϊ -1 Ϊ���� )
	local Give_Money	= 	-1	-- Ҫ�����Ǯ ( ���Ϊ -1 Ϊ���� )
	local DelItem		=	0	--�Ƿ���ʹ�ú�ɾ������( 1 ɾ, 0 ��ɾ )

	local Cha_GuildID = GetChaGuildID( role )
	
	local ChaGuildType_Get = -1
	if Cha_GuildID == 0 then
		ChaGuildType_Get = 0
	elseif Cha_GuildID > 0 and Cha_GuildID <= 100 then
		ChaGuildType_Get = 1
	elseif Cha_GuildID > 100 and Cha_GuildID <= 200 then
		ChaGuildType_Get = 2
	else
		SystemNotice ( role , "����ID�Ƿ�" )
	end

	
	if ChaGuildType_Get == 1 then
		if GiveMisson_1 ~= -1 then
			GiveMission( role, GiveMisson_1 )
		end
	end

	if ChaGuildType_Get == 2 then
		if GiveMisson_2 ~= -1 then
			GiveMission( role, GiveMisson_2 )
		end
	end

	if ChaGuildType_Get == 0 then
		if GiveMisson_0 ~= -1 then
			GiveMission( role, GiveMisson_0 )
		end
	end

	if ItemID ~= -1 then
		GiveItem ( role , 0 , ItemID , ItemNum , 0 )
	end



	if Give_Money > 0 then
		AddMoney ( role , 0 , Give_Money )
	end

	if Give_Exp > 0 then
		local exp = Exp ( role )
		if Lv ( TurnToCha ( role )  )  >= 80 then 
			Give_Exp = math.floor ( exp_dif / 50  ) 
		end 
		local exp_new = exp + Give_Exp
		
		SetCharaAttr ( exp_new , role , ATTR_CEXP )
	end


	if DelItem == 0 then
		UseItemFailed ( role )
		return
	end

end 





function ItemUse_WNYDYF (role) --[[����ҩ��ҩ��]]--

	local HasRecordID	= 328			-- �ж��Ƿ����ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1 Ϊ���ж� )
	local HasRecordID_1	= -1			-- �ж��Ƿ����ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1 Ϊ���ж� )
	local NoRecordID	= 30			-- �ж��Ƿ񲻴���ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1Ϊ���ж� )
	local NoRecordID_1	= -1			-- �ж��Ƿ񲻴���ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1Ϊ���ж� )
	local HasMissionID	= -1			-- �ж��Ƿ����ĳ���� ( ��Ҫ�жϵ����� ID , -1 Ϊ���ж� )
	local HasMissionID_1	= -1			-- �ж��Ƿ����ĳ���� ( ��Ҫ�жϵ����� ID , -1 Ϊ���ж� )
	local No_MissionID	= 30			-- �ж�û�д�ĳ���� ( ��Ҫ�жϵ����� ID ,-1 Ϊ���ж� )
	local No_MissionID_1	= -1			-- �ж�û�д�ĳ���� ( ��Ҫ�жϵ����� ID ,-1 Ϊ���ж� )
	local ChaType		= -1			-- �ж��Ƿ�Ϊ�˻�ֻ ( 1 Ϊ �� , 2 Ϊ �� , -1 Ϊ���ж� )
	local Need_CheckPos	= -1			-- �Ƿ��ж����� ( 1 Ϊ �ж� , -1 Ϊ���ж� , ������ж�������͵�ͼ���� 0 )
	local Cha_x_max		= 0			-- �ж�����ID �� X �������ֵ
	local Cha_x_min		= 0			-- �ж�����ID �� X ������Сֵ
	local Cha_y_max		= 0			-- �ж�����ID �� Y �������ֵ
	local Cha_y_min		= 0			-- �ж�����ID �� Y ������Сֵ
	local MapName		= -1			-- �ж��������ڵ�ͼ��
	local GuildType		= -1			-- �ж�����Ĺ������� ( 1 Ϊ���� , 2 Ϊ���� , 0 Ϊû�й��� , -1 Ϊ���ж� )
	local CheckType		= 1			-- �ж����﹫�����͵ķ�ʽ ( 1 Ϊ��ĳ�ֹ������� , 2 Ϊ����ĳ�ֹ������� )


	local HasRecordNotice	 = "����ҩ��ҩ���ƺ�˯����"		--�ж� HasRecord ʧ����ʾ
	local HasRecordNotice_1  = "����ҩ��ҩ���ƺ�˯����"		--�ж� HasRecord ʧ����ʾ
	local NoRecordNotice	 = "����ҩ��ҩ���ƺ�˯����"		--�ж� NoRecord ʧ����ʾ
	local NoRecordNotice_1	 = "����ҩ��ҩ���ƺ�˯����"		--�ж� NoRecord ʧ����ʾ
	local HasMissionNotice	 = "����ҩ��ҩ���ƺ�˯����"		--�ж� HasMission ʧ����ʾ
	local HasMissionNotice_1 = "����ҩ��ҩ���ƺ�˯����"		--�ж� HasMission ʧ����ʾ
	local NoMissionNotice	 = "����ҩ��ҩ���ƺ�˯����"		--�ж� NoMission ʧ����ʾ
	local NoMissionNotice_1	 = "����ҩ��ҩ���ƺ�˯����"		--�ж� NoMission ʧ����ʾ
	local CheckBoatNotice	 = "����ҩ��ҩ���ƺ�˯����"		--�ж� �˻� ʧ����ʾ
	local CheckPosNotice	 = "����ҩ��ҩ���ƺ�˯����"		--�ж� ���� ʧ����ʾ
	local GuildTypeNotice	 = "����ҩ��ҩ���ƺ�˯����"		--�ж� �������� ʧ����ʾ

	local CheckMissionMsg_1  = MissionMsgCheck ( role , HasRecordID , NoRecordID , HasMissionID , No_MissionID , HasRecordNotice , NoRecordNotice , HasMissionNotice , NoMissionNotice )
--	Notice("CheckMissionMsg_1 = "..CheckMissionMsg_1 ) 
	local CheckMissionMsg_2	 = MissionMsgCheck ( role , HasRecordID_1 , NoRecordID_1 , HasMissionID_1 , No_MissionID_1 , HasRecordNotice_1 , NoRecordNotice_1 , HasMissionNotice_1 , NoMissionNotice_1 )
--	Notice("CheckMissionMsg_2 = "..CheckMissionMsg_2 ) 
	local CheckChaMsg	 = ChaMsgCheck ( role , ChaType , Need_CheckPos ,Cha_x_max , Cha_x_min , Cha_y_max , Cha_y_min , MapName , GuildType , CheckType , CheckBoatNotice , CheckPosNotice ,GuildTypeNotice )
--	Notice("CheckChaMsg = "..CheckChaMsg ) 

	if CheckMissionMsg_1 ~= 1 or CheckMissionMsg_2 ~= 1 or CheckChaMsg ~= 1 then
		UseItemFailed ( role )
		return
	end





	local GiveMisson_1	=	30	--������������ (-1 Ϊ���� )
	local GiveMisson_2	=	30	--������������ (-1 Ϊ���� )
	local GiveMisson_0	=	30	--�޹���������� ( -1 Ϊ���� )
	local ItemID		=	-1	--������� ( -1 Ϊ���� )
	local ItemNum		=	0	--�����������
	local Give_Exp		= 	-1	-- Ҫ����ľ��� ( ���Ϊ -1 Ϊ���� )
	local Give_Money	= 	-1	-- Ҫ�����Ǯ ( ���Ϊ -1 Ϊ���� )
	local DelItem		=	0	--�Ƿ���ʹ�ú�ɾ������( 1 ɾ, 0 ��ɾ )

	local Cha_GuildID = GetChaGuildID( role )
	
	local ChaGuildType_Get = -1
	if Cha_GuildID == 0 then
		ChaGuildType_Get = 0
	elseif Cha_GuildID > 0 and Cha_GuildID <= 100 then
		ChaGuildType_Get = 1
	elseif Cha_GuildID > 100 and Cha_GuildID <= 200 then
		ChaGuildType_Get = 2
	else
		SystemNotice ( role , "����ID�Ƿ�" )
	end

	
	if ChaGuildType_Get == 1 then
		if GiveMisson_1 ~= -1 then
			GiveMission( role, GiveMisson_1 )
		end
	end

	if ChaGuildType_Get == 2 then
		if GiveMisson_2 ~= -1 then
			GiveMission( role, GiveMisson_2 )
		end
	end

	if ChaGuildType_Get == 0 then
		if GiveMisson_0 ~= -1 then
			GiveMission( role, GiveMisson_0 )
		end
	end

	if ItemID ~= -1 then
		GiveItem ( role , 0 , ItemID , ItemNum , 0 )
	end



	if Give_Money > 0 then
		AddMoney ( role , 0 , Give_Money )
	end

	if Give_Exp > 0 then
		local exp = Exp ( role )
		if Lv ( TurnToCha ( role )  )  >= 80 then 
			Give_Exp = math.floor ( exp_dif / 50  ) 
		end 
		local exp_new = exp + Give_Exp
		
		SetCharaAttr ( exp_new , role , ATTR_CEXP )
	end


	if DelItem == 0 then
		UseItemFailed ( role )
		return
	end

end 






function ItemUse_LZL (role) --[[��֮��]]--

	local HasRecordID	= -1			-- �ж��Ƿ����ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1 Ϊ���ж� )
	local HasRecordID_1	= -1			-- �ж��Ƿ����ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1 Ϊ���ж� )
	local NoRecordID	= 24			-- �ж��Ƿ񲻴���ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1Ϊ���ж� )
	local NoRecordID_1	= -1			-- �ж��Ƿ񲻴���ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1Ϊ���ж� )
	local HasMissionID	= -1			-- �ж��Ƿ����ĳ���� ( ��Ҫ�жϵ����� ID , -1 Ϊ���ж� )
	local HasMissionID_1	= -1			-- �ж��Ƿ����ĳ���� ( ��Ҫ�жϵ����� ID , -1 Ϊ���ж� )
	local No_MissionID	= 24			-- �ж�û�д�ĳ���� ( ��Ҫ�жϵ����� ID ,-1 Ϊ���ж� )
	local No_MissionID_1	= -1			-- �ж�û�д�ĳ���� ( ��Ҫ�жϵ����� ID ,-1 Ϊ���ж� )
	local ChaType		= -1			-- �ж��Ƿ�Ϊ�˻�ֻ ( 1 Ϊ �� , 2 Ϊ �� , -1 Ϊ���ж� )
	local Need_CheckPos	= -1			-- �Ƿ��ж����� ( 1 Ϊ �ж� , -1 Ϊ���ж� , ������ж�������͵�ͼ���� 0 )
	local Cha_x_max		= 0			-- �ж�����ID �� X �������ֵ
	local Cha_x_min		= 0			-- �ж�����ID �� X ������Сֵ
	local Cha_y_max		= 0			-- �ж�����ID �� Y �������ֵ
	local Cha_y_min		= 0			-- �ж�����ID �� Y ������Сֵ
	local MapName		= -1			-- �ж��������ڵ�ͼ��
	local GuildType		= -1			-- �ж�����Ĺ������� ( 1 Ϊ���� , 2 Ϊ���� , 0 Ϊû�й��� , -1 Ϊ���ж� )
	local CheckType		= 1			-- �ж����﹫�����͵ķ�ʽ ( 1 Ϊ��ĳ�ֹ������� , 2 Ϊ����ĳ�ֹ������� )


	local HasRecordNotice	 = "��֮����ɢ������һ�ɱ����ĺ���"		--�ж� HasRecord ʧ����ʾ
	local HasRecordNotice_1  = "��֮����ɢ������һ�ɱ����ĺ���"		--�ж� HasRecord ʧ����ʾ
	local NoRecordNotice	 = "��֮����ɢ������һ�ɱ����ĺ���"		--�ж� NoRecord ʧ����ʾ
	local NoRecordNotice_1	 = "��֮����ɢ������һ�ɱ����ĺ���"		--�ж� NoRecord ʧ����ʾ
	local HasMissionNotice	 = "��֮����ɢ������һ�ɱ����ĺ���"		--�ж� HasMission ʧ����ʾ
	local HasMissionNotice_1 = "��֮����ɢ������һ�ɱ����ĺ���"		--�ж� HasMission ʧ����ʾ
	local NoMissionNotice	 = "��֮����ɢ������һ�ɱ����ĺ���"		--�ж� NoMission ʧ����ʾ
	local NoMissionNotice_1	 = "��֮����ɢ������һ�ɱ����ĺ���"		--�ж� NoMission ʧ����ʾ
	local CheckBoatNotice	 = "��֮����ɢ������һ�ɱ����ĺ���"		--�ж� �˻� ʧ����ʾ
	local CheckPosNotice	 = "��֮����ɢ������һ�ɱ����ĺ���"		--�ж� ���� ʧ����ʾ
	local GuildTypeNotice	 = "��֮����ɢ������һ�ɱ����ĺ���"		--�ж� �������� ʧ����ʾ

	local CheckMissionMsg_1  = MissionMsgCheck ( role , HasRecordID , NoRecordID , HasMissionID , No_MissionID , HasRecordNotice , NoRecordNotice , HasMissionNotice , NoMissionNotice )
--	Notice("CheckMissionMsg_1 = "..CheckMissionMsg_1 ) 
	local CheckMissionMsg_2	 = MissionMsgCheck ( role , HasRecordID_1 , NoRecordID_1 , HasMissionID_1 , No_MissionID_1 , HasRecordNotice_1 , NoRecordNotice_1 , HasMissionNotice_1 , NoMissionNotice_1 )
--	Notice("CheckMissionMsg_2 = "..CheckMissionMsg_2 ) 
	local CheckChaMsg	 = ChaMsgCheck ( role , ChaType , Need_CheckPos ,Cha_x_max , Cha_x_min , Cha_y_max , Cha_y_min , MapName , GuildType , CheckType , CheckBoatNotice , CheckPosNotice ,GuildTypeNotice )
--	Notice("CheckChaMsg = "..CheckChaMsg ) 

	if CheckMissionMsg_1 ~= 1 or CheckMissionMsg_2 ~= 1 or CheckChaMsg ~= 1 then
		UseItemFailed ( role )
		return
	end





	local GiveMisson_1	=	24	--������������ (-1 Ϊ���� )
	local GiveMisson_2	=	24	--������������ (-1 Ϊ���� )
	local GiveMisson_0	=	24	--�޹���������� ( -1 Ϊ���� )
	local ItemID		=	-1	--������� ( -1 Ϊ���� )
	local ItemNum		=	0	--�����������
	local Give_Exp		= 	-1	-- Ҫ����ľ��� ( ���Ϊ -1 Ϊ���� )
	local Give_Money	= 	-1	-- Ҫ�����Ǯ ( ���Ϊ -1 Ϊ���� )
	local DelItem		=	0	--�Ƿ���ʹ�ú�ɾ������( 1 ɾ, 0 ��ɾ )

	local Cha_GuildID = GetChaGuildID( role )
	
	local ChaGuildType_Get = -1
	if Cha_GuildID == 0 then
		ChaGuildType_Get = 0
	elseif Cha_GuildID > 0 and Cha_GuildID <= 100 then
		ChaGuildType_Get = 1
	elseif Cha_GuildID > 100 and Cha_GuildID <= 200 then
		ChaGuildType_Get = 2
	else
		SystemNotice ( role , "����ID�Ƿ�" )
	end

	
	if ChaGuildType_Get == 1 then
		if GiveMisson_1 ~= -1 then
			GiveMission( role, GiveMisson_1 )
		end
	end

	if ChaGuildType_Get == 2 then
		if GiveMisson_2 ~= -1 then
			GiveMission( role, GiveMisson_2 )
		end
	end

	if ChaGuildType_Get == 0 then
		if GiveMisson_0 ~= -1 then
			GiveMission( role, GiveMisson_0 )
		end
	end

	if ItemID ~= -1 then
		GiveItem ( role , 0 , ItemID , ItemNum , 0 )
	end



	if Give_Money > 0 then
		AddMoney ( role , 0 , Give_Money )
	end

	if Give_Exp > 0 then
		local exp = Exp ( role )
		if Lv ( TurnToCha ( role )  )  >= 80 then 
			Give_Exp = math.floor ( exp_dif / 50  ) 
		end 
		local exp_new = exp + Give_Exp
		
		SetCharaAttr ( exp_new , role , ATTR_CEXP )
	end


	if DelItem == 0 then
		UseItemFailed ( role )
		return
	end

end 

function ItemUse_BLP (role) --[[����ƿ]]--

	local HasRecordID	= -1			-- �ж��Ƿ����ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1 Ϊ���ж� )
	local HasRecordID_1	= -1			-- �ж��Ƿ����ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1 Ϊ���ж� )
	local NoRecordID	= -1			-- �ж��Ƿ񲻴���ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1Ϊ���ж� )
	local NoRecordID_1	= -1			-- �ж��Ƿ񲻴���ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1Ϊ���ж� )
	local HasMissionID	= 369			-- �ж��Ƿ����ĳ���� ( ��Ҫ�жϵ����� ID , -1 Ϊ���ж� )
	local HasMissionID_1	= -1			-- �ж��Ƿ����ĳ���� ( ��Ҫ�жϵ����� ID , -1 Ϊ���ж� )
	local No_MissionID	= -1			-- �ж�û�д�ĳ���� ( ��Ҫ�жϵ����� ID ,-1 Ϊ���ж� )
	local No_MissionID_1	= -1			-- �ж�û�д�ĳ���� ( ��Ҫ�жϵ����� ID ,-1 Ϊ���ж� )
	local ChaType		= -1			-- �ж��Ƿ�Ϊ�˻�ֻ ( 1 Ϊ �� , 2 Ϊ �� , -1 Ϊ���ж� )
	local Need_CheckPos	= 1			-- �Ƿ��ж����� ( 1 Ϊ �ж� , -1 Ϊ���ж� , ������ж�������͵�ͼ���� 0 )
	local Cha_x_max		= 380200			-- �ж�����ID �� X �������ֵ
	local Cha_x_min		= 379800			-- �ж�����ID �� X ������Сֵ
	local Cha_y_max		= 55200			-- �ж�����ID �� Y �������ֵ
	local Cha_y_min		= 54800			-- �ж�����ID �� Y ������Сֵ
	local MapName		= "darkblue"			-- �ж��������ڵ�ͼ��
	local GuildType		= -1			-- �ж�����Ĺ������� ( 1 Ϊ���� , 2 Ϊ���� , 0 Ϊû�й��� , -1 Ϊ���ж� )
	local CheckType		= 1			-- �ж����﹫�����͵ķ�ʽ ( 1 Ϊ��ĳ�ֹ������� , 2 Ϊ����ĳ�ֹ������� )


	local HasRecordNotice	 = "ʥˮɢ��������Ϣ�ƺ����Խ�һ��а�񾻻�"		--�ж� HasRecord ʧ����ʾ
	local HasRecordNotice_1  = "ʥˮɢ��������Ϣ�ƺ����Խ�һ��а�񾻻�"		--�ж� HasRecord ʧ����ʾ
	local NoRecordNotice	 = "ʥˮɢ��������Ϣ�ƺ����Խ�һ��а�񾻻�"		--�ж� NoRecord ʧ����ʾ
	local NoRecordNotice_1	 = "ʥˮɢ��������Ϣ�ƺ����Խ�һ��а�񾻻�"		--�ж� NoRecord ʧ����ʾ
	local HasMissionNotice	 = "ʥˮɢ��������Ϣ�ƺ����Խ�һ��а�񾻻�"		--�ж� HasMission ʧ����ʾ
	local HasMissionNotice_1 = "ʥˮɢ��������Ϣ�ƺ����Խ�һ��а�񾻻�"		--�ж� HasMission ʧ����ʾ
	local NoMissionNotice	 = "ʥˮɢ��������Ϣ�ƺ����Խ�һ��а�񾻻�"		--�ж� NoMission ʧ����ʾ
	local NoMissionNotice_1	 = "ʥˮɢ��������Ϣ�ƺ����Խ�һ��а�񾻻�"		--�ж� NoMission ʧ����ʾ
	local CheckBoatNotice	 = "ʥˮɢ��������Ϣ�ƺ����Խ�һ��а�񾻻�"		--�ж� �˻� ʧ����ʾ
	local CheckPosNotice	 = "ʥˮɢ��������Ϣ�ƺ����Խ�һ��а�񾻻�"		--�ж� ���� ʧ����ʾ
	local GuildTypeNotice	 = "ʥˮɢ��������Ϣ�ƺ����Խ�һ��а�񾻻�"		--�ж� �������� ʧ����ʾ

	local CheckMissionMsg_1  = MissionMsgCheck ( role , HasRecordID , NoRecordID , HasMissionID , No_MissionID , HasRecordNotice , NoRecordNotice , HasMissionNotice , NoMissionNotice )
--	Notice("CheckMissionMsg_1 = "..CheckMissionMsg_1 ) 
	local CheckMissionMsg_2	 = MissionMsgCheck ( role , HasRecordID_1 , NoRecordID_1 , HasMissionID_1 , No_MissionID_1 , HasRecordNotice_1 , NoRecordNotice_1 , HasMissionNotice_1 , NoMissionNotice_1 )
--	Notice("CheckMissionMsg_2 = "..CheckMissionMsg_2 ) 
	local CheckChaMsg	 = ChaMsgCheck ( role , ChaType , Need_CheckPos ,Cha_x_max , Cha_x_min , Cha_y_max , Cha_y_min , MapName , GuildType , CheckType , CheckBoatNotice , CheckPosNotice ,GuildTypeNotice )
--	Notice("CheckChaMsg = "..CheckChaMsg ) 

	if CheckMissionMsg_1 ~= 1 or CheckMissionMsg_2 ~= 1 or CheckChaMsg ~= 1 then
		UseItemFailed ( role )
		return
	end





	local GiveMisson_1	=	-1	--������������ (-1 Ϊ���� )
	local GiveMisson_2	=	-1	--������������ (-1 Ϊ���� )
	local GiveMisson_0	=	-1	--�޹���������� ( -1 Ϊ���� )
	local ItemID		=	4257	--������� ( -1 Ϊ���� )
	local ItemNum		=	1	--�����������
	local Give_Exp		= 	-1	-- Ҫ����ľ��� ( ���Ϊ -1 Ϊ���� )
	local Give_Money	= 	-1	-- Ҫ�����Ǯ ( ���Ϊ -1 Ϊ���� )
	local DelItem		=	1	--�Ƿ���ʹ�ú�ɾ������( 1 ɾ, 0 ��ɾ )

	local Cha_GuildID = GetChaGuildID( role )
	
	local ChaGuildType_Get = -1
	if Cha_GuildID == 0 then
		ChaGuildType_Get = 0
	elseif Cha_GuildID > 0 and Cha_GuildID <= 100 then
		ChaGuildType_Get = 1
	elseif Cha_GuildID > 100 and Cha_GuildID <= 200 then
		ChaGuildType_Get = 2
	else
		SystemNotice ( role , "����ID�Ƿ�" )
	end

	
	if ChaGuildType_Get == 1 then
		if GiveMisson_1 ~= -1 then
			GiveMission( role, GiveMisson_1 )
		end
	end

	if ChaGuildType_Get == 2 then
		if GiveMisson_2 ~= -1 then
			GiveMission( role, GiveMisson_2 )
		end
	end

	if ChaGuildType_Get == 0 then
		if GiveMisson_0 ~= -1 then
			GiveMission( role, GiveMisson_0 )
		end
	end

	if ItemID ~= -1 then
		GiveItem ( role , 0 , ItemID , ItemNum , 0 )
	end



	if Give_Money > 0 then
		AddMoney ( role , 0 , Give_Money )
	end

	if Give_Exp > 0 then
		local exp = Exp ( role )
		if Lv ( TurnToCha ( role )  )  >= 80 then 
			Give_Exp = math.floor ( exp_dif / 50  ) 
		end 
		local exp_new = exp + Give_Exp
		
		SetCharaAttr ( exp_new , role , ATTR_CEXP )
	end


	if DelItem == 0 then
		UseItemFailed ( role )
		return
	end

end 


function ItemUse_SS (role) --[[ʥˮ]]--

	local HasRecordID	= -1			-- �ж��Ƿ����ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1 Ϊ���ж� )
	local HasRecordID_1	= -1			-- �ж��Ƿ����ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1 Ϊ���ж� )
	local NoRecordID	= 26			-- �ж��Ƿ񲻴���ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1Ϊ���ж� )
	local NoRecordID_1	= -1			-- �ж��Ƿ񲻴���ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1Ϊ���ж� )
	local HasMissionID	= 370			-- �ж��Ƿ����ĳ���� ( ��Ҫ�жϵ����� ID , -1 Ϊ���ж� )
	local HasMissionID_1	= -1			-- �ж��Ƿ����ĳ���� ( ��Ҫ�жϵ����� ID , -1 Ϊ���ж� )
	local No_MissionID	= 26			-- �ж�û�д�ĳ���� ( ��Ҫ�жϵ����� ID ,-1 Ϊ���ж� )
	local No_MissionID_1	= -1			-- �ж�û�д�ĳ���� ( ��Ҫ�жϵ����� ID ,-1 Ϊ���ж� )
	local ChaType		= -1			-- �ж��Ƿ�Ϊ�˻�ֻ ( 1 Ϊ �� , 2 Ϊ �� , -1 Ϊ���ж� )
	local Need_CheckPos	= -1			-- �Ƿ��ж����� ( 1 Ϊ �ж� , -1 Ϊ���ж� , ������ж�������͵�ͼ���� 0 )
	local Cha_x_max		= 0			-- �ж�����ID �� X �������ֵ
	local Cha_x_min		= 0			-- �ж�����ID �� X ������Сֵ
	local Cha_y_max		= 0			-- �ж�����ID �� Y �������ֵ
	local Cha_y_min		= 0			-- �ж�����ID �� Y ������Сֵ
	local MapName		= -1			-- �ж��������ڵ�ͼ��
	local GuildType		= -1			-- �ж�����Ĺ������� ( 1 Ϊ���� , 2 Ϊ���� , 0 Ϊû�й��� , -1 Ϊ���ж� )
	local CheckType		= 1			-- �ж����﹫�����͵ķ�ʽ ( 1 Ϊ��ĳ�ֹ������� , 2 Ϊ����ĳ�ֹ������� )


	local HasRecordNotice	 = "ʥˮɢ��������Ϣ�ƺ����Խ�һ��а�񾻻�"		--�ж� HasRecord ʧ����ʾ
	local HasRecordNotice_1  = "ʥˮɢ��������Ϣ�ƺ����Խ�һ��а�񾻻�"		--�ж� HasRecord ʧ����ʾ
	local NoRecordNotice	 = "ʥˮɢ��������Ϣ�ƺ����Խ�һ��а�񾻻�"		--�ж� NoRecord ʧ����ʾ
	local NoRecordNotice_1	 = "ʥˮɢ��������Ϣ�ƺ����Խ�һ��а�񾻻�"		--�ж� NoRecord ʧ����ʾ
	local HasMissionNotice	 = "ʥˮɢ��������Ϣ�ƺ����Խ�һ��а�񾻻�"		--�ж� HasMission ʧ����ʾ
	local HasMissionNotice_1 = "ʥˮɢ��������Ϣ�ƺ����Խ�һ��а�񾻻�"		--�ж� HasMission ʧ����ʾ
	local NoMissionNotice	 = "ʥˮɢ��������Ϣ�ƺ����Խ�һ��а�񾻻�"		--�ж� NoMission ʧ����ʾ
	local NoMissionNotice_1	 = "ʥˮɢ��������Ϣ�ƺ����Խ�һ��а�񾻻�"		--�ж� NoMission ʧ����ʾ
	local CheckBoatNotice	 = "ʥˮɢ��������Ϣ�ƺ����Խ�һ��а�񾻻�"		--�ж� �˻� ʧ����ʾ
	local CheckPosNotice	 = "ʥˮɢ��������Ϣ�ƺ����Խ�һ��а�񾻻�"		--�ж� ���� ʧ����ʾ
	local GuildTypeNotice	 = "ʥˮɢ��������Ϣ�ƺ����Խ�һ��а�񾻻�"		--�ж� �������� ʧ����ʾ

	local CheckMissionMsg_1  = MissionMsgCheck ( role , HasRecordID , NoRecordID , HasMissionID , No_MissionID , HasRecordNotice , NoRecordNotice , HasMissionNotice , NoMissionNotice )
--	Notice("CheckMissionMsg_1 = "..CheckMissionMsg_1 ) 
	local CheckMissionMsg_2	 = MissionMsgCheck ( role , HasRecordID_1 , NoRecordID_1 , HasMissionID_1 , No_MissionID_1 , HasRecordNotice_1 , NoRecordNotice_1 , HasMissionNotice_1 , NoMissionNotice_1 )
--	Notice("CheckMissionMsg_2 = "..CheckMissionMsg_2 ) 
	local CheckChaMsg	 = ChaMsgCheck ( role , ChaType , Need_CheckPos ,Cha_x_max , Cha_x_min , Cha_y_max , Cha_y_min , MapName , GuildType , CheckType , CheckBoatNotice , CheckPosNotice ,GuildTypeNotice )
--	Notice("CheckChaMsg = "..CheckChaMsg ) 

	if CheckMissionMsg_1 ~= 1 or CheckMissionMsg_2 ~= 1 or CheckChaMsg ~= 1 then
		UseItemFailed ( role )
		return
	end





	local GiveMisson_1	=	26	--������������ (-1 Ϊ���� )
	local GiveMisson_2	=	26	--������������ (-1 Ϊ���� )
	local GiveMisson_0	=	26	--�޹���������� ( -1 Ϊ���� )
	local ItemID		=	-1	--������� ( -1 Ϊ���� )
	local ItemNum		=	0	--�����������
	local Give_Exp		= 	-1	-- Ҫ����ľ��� ( ���Ϊ -1 Ϊ���� )
	local Give_Money	= 	-1	-- Ҫ�����Ǯ ( ���Ϊ -1 Ϊ���� )
	local DelItem		=	0	--�Ƿ���ʹ�ú�ɾ������( 1 ɾ, 0 ��ɾ )

	local Cha_GuildID = GetChaGuildID( role )
	
	local ChaGuildType_Get = -1
	if Cha_GuildID == 0 then
		ChaGuildType_Get = 0
	elseif Cha_GuildID > 0 and Cha_GuildID <= 100 then
		ChaGuildType_Get = 1
	elseif Cha_GuildID > 100 and Cha_GuildID <= 200 then
		ChaGuildType_Get = 2
	else
		SystemNotice ( role , "����ID�Ƿ�" )
	end

	
	if ChaGuildType_Get == 1 then
		if GiveMisson_1 ~= -1 then
			GiveMission( role, GiveMisson_1 )
		end
	end

	if ChaGuildType_Get == 2 then
		if GiveMisson_2 ~= -1 then
			GiveMission( role, GiveMisson_2 )
		end
	end

	if ChaGuildType_Get == 0 then
		if GiveMisson_0 ~= -1 then
			GiveMission( role, GiveMisson_0 )
		end
	end

	if ItemID ~= -1 then
		GiveItem ( role , 0 , ItemID , ItemNum , 0 )
	end



	if Give_Money > 0 then
		AddMoney ( role , 0 , Give_Money )
	end

	if Give_Exp > 0 then
		local exp = Exp ( role )
		if Lv ( TurnToCha ( role )  )  >= 80 then 
			Give_Exp = math.floor ( exp_dif / 50  ) 
		end 
		local exp_new = exp + Give_Exp
		
		SetCharaAttr ( exp_new , role , ATTR_CEXP )
	end


	if DelItem == 0 then
		UseItemFailed ( role )
		return
	end

end 



function ItemUse_FHSDX (role) --[[�ۺ�ɫ����]]--

	local HasRecordID	= -1			-- �ж��Ƿ����ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1 Ϊ���ж� )
	local HasRecordID_1	= -1			-- �ж��Ƿ����ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1 Ϊ���ж� )
	local NoRecordID	= 27			-- �ж��Ƿ񲻴���ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1Ϊ���ж� )
	local NoRecordID_1	= -1			-- �ж��Ƿ񲻴���ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1Ϊ���ж� )
	local HasMissionID	= 362			-- �ж��Ƿ����ĳ���� ( ��Ҫ�жϵ����� ID , -1 Ϊ���ж� )
	local HasMissionID_1	= -1			-- �ж��Ƿ����ĳ���� ( ��Ҫ�жϵ����� ID , -1 Ϊ���ж� )
	local No_MissionID	= 27			-- �ж�û�д�ĳ���� ( ��Ҫ�жϵ����� ID ,-1 Ϊ���ж� )
	local No_MissionID_1	= -1			-- �ж�û�д�ĳ���� ( ��Ҫ�жϵ����� ID ,-1 Ϊ���ж� )
	local ChaType		= -1			-- �ж��Ƿ�Ϊ�˻�ֻ ( 1 Ϊ �� , 2 Ϊ �� , -1 Ϊ���ж� )
	local Need_CheckPos	= -1			-- �Ƿ��ж����� ( 1 Ϊ �ж� , -1 Ϊ���ж� , ������ж�������͵�ͼ���� 0 )
	local Cha_x_max		= 0			-- �ж�����ID �� X �������ֵ
	local Cha_x_min		= 0			-- �ж�����ID �� X ������Сֵ
	local Cha_y_max		= 0			-- �ж�����ID �� Y �������ֵ
	local Cha_y_min		= 0			-- �ж�����ID �� Y ������Сֵ
	local MapName		= -1			-- �ж��������ڵ�ͼ��
	local GuildType		= -1			-- �ж�����Ĺ������� ( 1 Ϊ���� , 2 Ϊ���� , 0 Ϊû�й��� , -1 Ϊ���ж� )
	local CheckType		= 1			-- �ж����﹫�����͵ķ�ʽ ( 1 Ϊ��ĳ�ֹ������� , 2 Ϊ����ĳ�ֹ������� )


	local HasRecordNotice	 = "һ�����ͨ�ķۺ�ɫ����"		--�ж� HasRecord ʧ����ʾ
	local HasRecordNotice_1  = "һ�����ͨ�ķۺ�ɫ����"		--�ж� HasRecord ʧ����ʾ
	local NoRecordNotice	 = "һ�����ͨ�ķۺ�ɫ����"		--�ж� NoRecord ʧ����ʾ
	local NoRecordNotice_1	 = "һ�����ͨ�ķۺ�ɫ����"		--�ж� NoRecord ʧ����ʾ
	local HasMissionNotice	 = "һ�����ͨ�ķۺ�ɫ����"		--�ж� HasMission ʧ����ʾ
	local HasMissionNotice_1 = "һ�����ͨ�ķۺ�ɫ����"		--�ж� HasMission ʧ����ʾ
	local NoMissionNotice	 = "һ�����ͨ�ķۺ�ɫ����"		--�ж� NoMission ʧ����ʾ
	local NoMissionNotice_1	 = "һ�����ͨ�ķۺ�ɫ����"		--�ж� NoMission ʧ����ʾ
	local CheckBoatNotice	 = "һ�����ͨ�ķۺ�ɫ����"		--�ж� �˻� ʧ����ʾ
	local CheckPosNotice	 = "һ�����ͨ�ķۺ�ɫ����"		--�ж� ���� ʧ����ʾ
	local GuildTypeNotice	 = "һ�����ͨ�ķۺ�ɫ����"		--�ж� �������� ʧ����ʾ

	local CheckMissionMsg_1  = MissionMsgCheck ( role , HasRecordID , NoRecordID , HasMissionID , No_MissionID , HasRecordNotice , NoRecordNotice , HasMissionNotice , NoMissionNotice )
--	Notice("CheckMissionMsg_1 = "..CheckMissionMsg_1 ) 
	local CheckMissionMsg_2	 = MissionMsgCheck ( role , HasRecordID_1 , NoRecordID_1 , HasMissionID_1 , No_MissionID_1 , HasRecordNotice_1 , NoRecordNotice_1 , HasMissionNotice_1 , NoMissionNotice_1 )
--	Notice("CheckMissionMsg_2 = "..CheckMissionMsg_2 ) 
	local CheckChaMsg	 = ChaMsgCheck ( role , ChaType , Need_CheckPos ,Cha_x_max , Cha_x_min , Cha_y_max , Cha_y_min , MapName , GuildType , CheckType , CheckBoatNotice , CheckPosNotice ,GuildTypeNotice )
--	Notice("CheckChaMsg = "..CheckChaMsg ) 

	if CheckMissionMsg_1 ~= 1 or CheckMissionMsg_2 ~= 1 or CheckChaMsg ~= 1 then
		UseItemFailed ( role )
		return
	end





	local GiveMisson_1	=	27	--������������ (-1 Ϊ���� )
	local GiveMisson_2	=	27	--������������ (-1 Ϊ���� )
	local GiveMisson_0	=	27	--�޹���������� ( -1 Ϊ���� )
	local ItemID		=	-1	--������� ( -1 Ϊ���� )
	local ItemNum		=	0	--�����������
	local Give_Exp		= 	-1	-- Ҫ����ľ��� ( ���Ϊ -1 Ϊ���� )
	local Give_Money	= 	-1	-- Ҫ�����Ǯ ( ���Ϊ -1 Ϊ���� )
	local DelItem		=	0	--�Ƿ���ʹ�ú�ɾ������( 1 ɾ, 0 ��ɾ )

	local Cha_GuildID = GetChaGuildID( role )
	
	local ChaGuildType_Get = -1
	if Cha_GuildID == 0 then
		ChaGuildType_Get = 0
	elseif Cha_GuildID > 0 and Cha_GuildID <= 100 then
		ChaGuildType_Get = 1
	elseif Cha_GuildID > 100 and Cha_GuildID <= 200 then
		ChaGuildType_Get = 2
	else
		SystemNotice ( role , "����ID�Ƿ�" )
	end

	
	if ChaGuildType_Get == 1 then
		if GiveMisson_1 ~= -1 then
			GiveMission( role, GiveMisson_1 )
		end
	end

	if ChaGuildType_Get == 2 then
		if GiveMisson_2 ~= -1 then
			GiveMission( role, GiveMisson_2 )
		end
	end

	if ChaGuildType_Get == 0 then
		if GiveMisson_0 ~= -1 then
			GiveMission( role, GiveMisson_0 )
		end
	end

	if ItemID ~= -1 then
		GiveItem ( role , 0 , ItemID , ItemNum , 0 )
	end



	if Give_Money > 0 then
		AddMoney ( role , 0 , Give_Money )
	end

	if Give_Exp > 0 then
		local exp = Exp ( role )
		if Lv ( TurnToCha ( role )  )  >= 80 then 
			Give_Exp = math.floor ( exp_dif / 50  ) 
		end 
		local exp_new = exp + Give_Exp
		
		SetCharaAttr ( exp_new , role , ATTR_CEXP )
	end


	if DelItem == 0 then
		UseItemFailed ( role )
		return
	end

end 






function ItemUse_WYJ (role) --[[��Զ��]]--

	local HasRecordID	= -1			-- �ж��Ƿ����ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1 Ϊ���ж� )
	local HasRecordID_1	= -1			-- �ж��Ƿ����ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1 Ϊ���ж� )
	local NoRecordID	= 28			-- �ж��Ƿ񲻴���ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1Ϊ���ж� )
	local NoRecordID_1	= -1			-- �ж��Ƿ񲻴���ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1Ϊ���ж� )
	local HasMissionID	= 375			-- �ж��Ƿ����ĳ���� ( ��Ҫ�жϵ����� ID , -1 Ϊ���ж� )
	local HasMissionID_1	= -1			-- �ж��Ƿ����ĳ���� ( ��Ҫ�жϵ����� ID , -1 Ϊ���ж� )
	local No_MissionID	= 28			-- �ж�û�д�ĳ���� ( ��Ҫ�жϵ����� ID ,-1 Ϊ���ж� )
	local No_MissionID_1	= -1			-- �ж�û�д�ĳ���� ( ��Ҫ�жϵ����� ID ,-1 Ϊ���ж� )
	local ChaType		= -1			-- �ж��Ƿ�Ϊ�˻�ֻ ( 1 Ϊ �� , 2 Ϊ �� , -1 Ϊ���ж� )
	local Need_CheckPos	= -1			-- �Ƿ��ж����� ( 1 Ϊ �ж� , -1 Ϊ���ж� , ������ж�������͵�ͼ���� 0 )
	local Cha_x_max		= 0			-- �ж�����ID �� X �������ֵ
	local Cha_x_min		= 0			-- �ж�����ID �� X ������Сֵ
	local Cha_y_max		= 0			-- �ж�����ID �� Y �������ֵ
	local Cha_y_min		= 0			-- �ж�����ID �� Y ������Сֵ
	local MapName		= -1			-- �ж��������ڵ�ͼ��
	local GuildType		= -1			-- �ж�����Ĺ������� ( 1 Ϊ���� , 2 Ϊ���� , 0 Ϊû�й��� , -1 Ϊ���ж� )
	local CheckType		= 1			-- �ж����﹫�����͵ķ�ʽ ( 1 Ϊ��ĳ�ֹ������� , 2 Ϊ����ĳ�ֹ������� )


	local HasRecordNotice	 = "����Զ�����Կ�����Զ�ĵط�"		--�ж� HasRecord ʧ����ʾ
	local HasRecordNotice_1  = "����Զ�����Կ�����Զ�ĵط�"		--�ж� HasRecord ʧ����ʾ
	local NoRecordNotice	 = "����Զ�����Կ�����Զ�ĵط�"		--�ж� NoRecord ʧ����ʾ
	local NoRecordNotice_1	 = "����Զ�����Կ�����Զ�ĵط�"		--�ж� NoRecord ʧ����ʾ
	local HasMissionNotice	 = "����Զ�����Կ�����Զ�ĵط�"		--�ж� HasMission ʧ����ʾ
	local HasMissionNotice_1 = "����Զ�����Կ�����Զ�ĵط�"		--�ж� HasMission ʧ����ʾ
	local NoMissionNotice	 = "����Զ�����Կ�����Զ�ĵط�"		--�ж� NoMission ʧ����ʾ
	local NoMissionNotice_1	 = "����Զ�����Կ�����Զ�ĵط�"		--�ж� NoMission ʧ����ʾ
	local CheckBoatNotice	 = "����Զ�����Կ�����Զ�ĵط�"		--�ж� �˻� ʧ����ʾ
	local CheckPosNotice	 = "����Զ�����Կ�����Զ�ĵط�"		--�ж� ���� ʧ����ʾ
	local GuildTypeNotice	 = "����Զ�����Կ�����Զ�ĵط�"		--�ж� �������� ʧ����ʾ

	local CheckMissionMsg_1  = MissionMsgCheck ( role , HasRecordID , NoRecordID , HasMissionID , No_MissionID , HasRecordNotice , NoRecordNotice , HasMissionNotice , NoMissionNotice )
--	Notice("CheckMissionMsg_1 = "..CheckMissionMsg_1 ) 
	local CheckMissionMsg_2	 = MissionMsgCheck ( role , HasRecordID_1 , NoRecordID_1 , HasMissionID_1 , No_MissionID_1 , HasRecordNotice_1 , NoRecordNotice_1 , HasMissionNotice_1 , NoMissionNotice_1 )
--	Notice("CheckMissionMsg_2 = "..CheckMissionMsg_2 ) 
	local CheckChaMsg	 = ChaMsgCheck ( role , ChaType , Need_CheckPos ,Cha_x_max , Cha_x_min , Cha_y_max , Cha_y_min , MapName , GuildType , CheckType , CheckBoatNotice , CheckPosNotice ,GuildTypeNotice )
--	Notice("CheckChaMsg = "..CheckChaMsg ) 

	if CheckMissionMsg_1 ~= 1 or CheckMissionMsg_2 ~= 1 or CheckChaMsg ~= 1 then
		UseItemFailed ( role )
		return
	end





	local GiveMisson_1	=	28	--������������ (-1 Ϊ���� )
	local GiveMisson_2	=	28	--������������ (-1 Ϊ���� )
	local GiveMisson_0	=	28	--�޹���������� ( -1 Ϊ���� )
	local ItemID		=	-1	--������� ( -1 Ϊ���� )
	local ItemNum		=	0	--�����������
	local Give_Exp		= 	-1	-- Ҫ����ľ��� ( ���Ϊ -1 Ϊ���� )
	local Give_Money	= 	-1	-- Ҫ�����Ǯ ( ���Ϊ -1 Ϊ���� )
	local DelItem		=	0	--�Ƿ���ʹ�ú�ɾ������( 1 ɾ, 0 ��ɾ )

	local Cha_GuildID = GetChaGuildID( role )
	
	local ChaGuildType_Get = -1
	if Cha_GuildID == 0 then
		ChaGuildType_Get = 0
	elseif Cha_GuildID > 0 and Cha_GuildID <= 100 then
		ChaGuildType_Get = 1
	elseif Cha_GuildID > 100 and Cha_GuildID <= 200 then
		ChaGuildType_Get = 2
	else
		SystemNotice ( role , "����ID�Ƿ�" )
	end

	
	if ChaGuildType_Get == 1 then
		if GiveMisson_1 ~= -1 then
			GiveMission( role, GiveMisson_1 )
		end
	end

	if ChaGuildType_Get == 2 then
		if GiveMisson_2 ~= -1 then
			GiveMission( role, GiveMisson_2 )
		end
	end

	if ChaGuildType_Get == 0 then
		if GiveMisson_0 ~= -1 then
			GiveMission( role, GiveMisson_0 )
		end
	end

	if ItemID ~= -1 then
		GiveItem ( role , 0 , ItemID , ItemNum , 0 )
	end



	if Give_Money > 0 then
		AddMoney ( role , 0 , Give_Money )
	end

	if Give_Exp > 0 then
		local exp = Exp ( role )
		if Lv ( TurnToCha ( role )  )  >= 80 then 
			Give_Exp = math.floor ( exp_dif / 50  ) 
		end 
		local exp_new = exp + Give_Exp
		
		SetCharaAttr ( exp_new , role , ATTR_CEXP )
	end


	if DelItem == 0 then
		UseItemFailed ( role )
		return
	end

end 





function ItemUse_LDADYW2 (role) --[[³�°�������2]]--

	local HasRecordID	= -1			-- �ж��Ƿ����ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1 Ϊ���ж� )
	local HasRecordID_1	= -1			-- �ж��Ƿ����ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1 Ϊ���ж� )
	local NoRecordID	= 14			-- �ж��Ƿ񲻴���ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1Ϊ���ж� )
	local NoRecordID_1	= -1			-- �ж��Ƿ񲻴���ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1Ϊ���ж� )
	local HasMissionID	= 273			-- �ж��Ƿ����ĳ���� ( ��Ҫ�жϵ����� ID , -1 Ϊ���ж� )
	local HasMissionID_1	= -1			-- �ж��Ƿ����ĳ���� ( ��Ҫ�жϵ����� ID , -1 Ϊ���ж� )
	local No_MissionID	= 14			-- �ж�û�д�ĳ���� ( ��Ҫ�жϵ����� ID ,-1 Ϊ���ж� )
	local No_MissionID_1	= -1			-- �ж�û�д�ĳ���� ( ��Ҫ�жϵ����� ID ,-1 Ϊ���ж� )
	local ChaType		= -1			-- �ж��Ƿ�Ϊ�˻�ֻ ( 1 Ϊ �� , 2 Ϊ �� , -1 Ϊ���ж� )
	local Need_CheckPos	= 1			-- �Ƿ��ж����� ( 1 Ϊ �ж� , -1 Ϊ���ж� , ������ж�������͵�ͼ���� 0 )
	local Cha_x_max		= 7900			-- �ж�����ID �� X �������ֵ
	local Cha_x_min		= 7500			-- �ж�����ID �� X ������Сֵ
	local Cha_y_max		= 397300			-- �ж�����ID �� Y �������ֵ
	local Cha_y_min		= 396900			-- �ж�����ID �� Y ������Сֵ
	local MapName		= "garner"			-- �ж��������ڵ�ͼ��
	local GuildType		= -1			-- �ж�����Ĺ������� ( 1 Ϊ���� , 2 Ϊ���� , 0 Ϊû�й��� , -1 Ϊ���ж� )
	local CheckType		= 1			-- �ж����﹫�����͵ķ�ʽ ( 1 Ϊ��ĳ�ֹ������� , 2 Ϊ����ĳ�ֹ������� )


	local HasRecordNotice	 = "³�°��������ϲ������Ѻ�"		--�ж� HasRecord ʧ����ʾ
	local HasRecordNotice_1  = "³�°��������ϲ������Ѻ�"		--�ж� HasRecord ʧ����ʾ
	local NoRecordNotice	 = "³�°��������ϲ������Ѻ�"		--�ж� NoRecord ʧ����ʾ
	local NoRecordNotice_1	 = "³�°��������ϲ������Ѻ�"		--�ж� NoRecord ʧ����ʾ
	local HasMissionNotice	 = "³�°��������ϲ������Ѻ�"		--�ж� HasMission ʧ����ʾ
	local HasMissionNotice_1 = "³�°��������ϲ������Ѻ�"		--�ж� HasMission ʧ����ʾ
	local NoMissionNotice	 = "³�°��������ϲ������Ѻ�"		--�ж� NoMission ʧ����ʾ
	local NoMissionNotice_1	 = "³�°��������ϲ������Ѻ�"		--�ж� NoMission ʧ����ʾ
	local CheckBoatNotice	 = "³�°��������ϲ������Ѻ�"		--�ж� �˻� ʧ����ʾ
	local CheckPosNotice	 = "³�°�������û���κη�Ӧ"		--�ж� ���� ʧ����ʾ
	local GuildTypeNotice	 = "³�°��������ϲ������Ѻ�"		--�ж� �������� ʧ����ʾ

	local CheckMissionMsg_1  = MissionMsgCheck ( role , HasRecordID , NoRecordID , HasMissionID , No_MissionID , HasRecordNotice , NoRecordNotice , HasMissionNotice , NoMissionNotice )
--	Notice("CheckMissionMsg_1 = "..CheckMissionMsg_1 ) 
	local CheckMissionMsg_2	 = MissionMsgCheck ( role , HasRecordID_1 , NoRecordID_1 , HasMissionID_1 , No_MissionID_1 , HasRecordNotice_1 , NoRecordNotice_1 , HasMissionNotice_1 , NoMissionNotice_1 )
--	Notice("CheckMissionMsg_2 = "..CheckMissionMsg_2 ) 
	local CheckChaMsg	 = ChaMsgCheck ( role , ChaType , Need_CheckPos ,Cha_x_max , Cha_x_min , Cha_y_max , Cha_y_min , MapName , GuildType , CheckType , CheckBoatNotice , CheckPosNotice ,GuildTypeNotice )
--	Notice("CheckChaMsg = "..CheckChaMsg ) 

	if CheckMissionMsg_1 ~= 1 or CheckMissionMsg_2 ~= 1 or CheckChaMsg ~= 1 then
		UseItemFailed ( role )
		return
	end





	local GiveMisson_1	=	14	--������������ (-1 Ϊ���� )
	local GiveMisson_2	=	14	--������������ (-1 Ϊ���� )
	local GiveMisson_0	=	14	--�޹���������� ( -1 Ϊ���� )
	local ItemID		=	-1	--������� ( -1 Ϊ���� )
	local ItemNum		=	0	--�����������
	local Give_Exp		= 	-1	-- Ҫ����ľ��� ( ���Ϊ -1 Ϊ���� )
	local Give_Money	= 	-1	-- Ҫ�����Ǯ ( ���Ϊ -1 Ϊ���� )
	local DelItem		=	0	--�Ƿ���ʹ�ú�ɾ������( 1 ɾ, 0 ��ɾ )

	local Cha_GuildID = GetChaGuildID( role )
	
	local ChaGuildType_Get = -1
	if Cha_GuildID == 0 then
		ChaGuildType_Get = 0
	elseif Cha_GuildID > 0 and Cha_GuildID <= 100 then
		ChaGuildType_Get = 1
	elseif Cha_GuildID > 100 and Cha_GuildID <= 200 then
		ChaGuildType_Get = 2
	else
		SystemNotice ( role , "����ID�Ƿ�" )
	end

	
	if ChaGuildType_Get == 1 then
		if GiveMisson_1 ~= -1 then
			GiveMission( role, GiveMisson_1 )
		end
	end

	if ChaGuildType_Get == 2 then
		if GiveMisson_2 ~= -1 then
			GiveMission( role, GiveMisson_2 )
		end
	end

	if ChaGuildType_Get == 0 then
		if GiveMisson_0 ~= -1 then
			GiveMission( role, GiveMisson_0 )
		end
	end

	if ItemID ~= -1 then
		GiveItem ( role , 0 , ItemID , ItemNum , 0 )
	end



	if Give_Money > 0 then
		AddMoney ( role , 0 , Give_Money )
	end

	if Give_Exp > 0 then
		local exp = Exp ( role )
		if Lv ( TurnToCha ( role )  )  >= 80 then 
			Give_Exp = math.floor ( exp_dif / 50  ) 
		end 
		local exp_new = exp + Give_Exp
		
		SetCharaAttr ( exp_new , role , ATTR_CEXP )
	end


	if DelItem == 0 then
		UseItemFailed ( role )
		return
	end

end 
