function hp_med_min( role , Item ) --[[����hp�ظ�ҩƷ��ʽ]]--
	--LuaPrint("Enter function hp_med_min() --[[����hp�ظ�ҩƷ��ʽ]]--") 
	local hp = GetChaAttr( role , ATTR_HP ) 
	local con = Con(role)
	--LG("ҩƷʹ��", "��ǰhp = ", hp , "\n" ) 
	if hp <= 0 then --��������ʱ����ʹ��
		--LuaPrint("���������Ƿ�hpֵ")  
		--LG("ҩƷʹ��", "���������Ƿ�hpֵ","\n" )  
		return 
	end 
	hp_resume = 20 +con*5 
	hp = hp + hp_resume 
	mxhp = GetChaAttr( role , ATTR_MXHP) 
	if hp > mxhp then --�ӳ������hpʱ����Ϊ���hp
		 hp = mxhp 
		 --LG("ҩƷʹ��", "�Ѵ�hp�������", "\n" ) 
	 end 
		--LG("ҩƷʹ��", "hp�ظ�Ϊ", hp ,"\n" ) 
	SetCharaAttr(hp, role, ATTR_HP) 
	--LuaPrint("Out function hp_med_min() --[[����hp�ظ�ҩƷ��ʽ]]--") 
end 

function hp_med_small(role, Item ) --[[С��Ѫƿ��ʽ]]--
	--LuaPrint("Enter function hp_med_small() --[[С��Ѫƿ��ʽ]]--") 
	local hp = GetChaAttr(role, ATTR_HP)
	local con = Con(role)
	--LG("ҩƷʹ��", "��ǰhp = ", hp , "\n" ) 
	if hp <= 0 then 
		--LuaPrint("���������Ƿ�hpֵ")  return 
		--LG("ҩƷʹ��", "���������Ƿ�hpֵ","\n" )  
	end 
	hp_resume = 20+ con*5  
	hp = hp + hp_resume 
	mxhp = GetChaAttr(role,ATTR_MXHP) 
	if hp > mxhp then --�ӳ������hpʱ����Ϊ���hp
		hp = mxhp 
		--LG("ҩƷʹ��", "�Ѵ�hp�������", "\n" ) 
	end 
		--LG("ҩƷʹ��", "hp�ظ�Ϊ", hp ,"\n" ) 
	SetCharaAttr(hp, role, ATTR_HP) 
	--LuaPrint("Out function hp_med_small() --[[С��Ѫƿ��ʽ]]--") 
end 





----[[�����ʽ]]--��������������������������������������������������������������������������������������������������������������������������������������������������������

function ItemUse_BREAD (role, Item ) --[[�����ʽ]]--
	local hp = GetChaAttr(role, ATTR_HP) 
	--LG("ҩƷʹ��", "��ǰhp = ", hp , "\n" ) 
	if hp <= 0 then 
		--LuaPrint("���������Ƿ�hpֵ")  return 
		--LG("ҩƷʹ��", "���������Ƿ�hpֵ","\n" )  
	end 
	hp_resume = 80    
	hp = hp + hp_resume 
	mxhp = GetChaAttr(role,ATTR_MXHP) 
	if hp > mxhp then --�ӳ������hpʱ����Ϊ���hp
		hp = mxhp 
		--LG("ҩƷʹ��", "�Ѵ�hp�������", "\n" ) 
	end 
		--LG("ҩƷʹ��", "hp�ظ�Ϊ", hp ,"\n" ) 
	SetCharaAttr(hp, role, ATTR_HP) 
	--LuaPrint("Out function hp_med_small() --[[�������ʽ]]--") 
end 

----[[ƻ����ʽ]]--��������������������������������������������������������������������������������������������������������������������������������������������������������

function ItemUse_APPLE ( role , Item )  --[[ƻ����ʽ]]--
	local hp = GetChaAttr(role, ATTR_HP) 
	--LG("ҩƷʹ��", "��ǰhp = ", hp , "\n" ) 
	if hp <= 0 then 
		--LuaPrint("���������Ƿ�hpֵ")  return 
		--LG("ҩƷʹ��", "���������Ƿ�hpֵ","\n" )  
	end 
	hp_resume = 20    
	hp = hp + hp_resume 
	mxhp = GetChaAttr(role,ATTR_MXHP) 
	if hp > mxhp then --�ӳ������hpʱ����Ϊ���hp
		hp = mxhp 
		--LG("ҩƷʹ��", "�Ѵ�hp�������", "\n" ) 
	end 
		--LG("ҩƷʹ��", "hp�ظ�Ϊ", hp ,"\n" ) 
	SetCharaAttr(hp, role, ATTR_HP) 
	--LuaPrint("Out function hp_med_small( role )  --[[�������ʽ]]--") 
end 

------[[���гṫʽ]]--��������������������������������������������������������������������������������������������������������������������������������������������������������
--
--function ItemUse_WANZICHI ( role , Item )  --[[���з���ʽ]]--
--	local hp = GetChaAttr(role, ATTR_HP) 
--	--LG("ҩƷʹ��", "��ǰhp = ", hp , "\n" ) 
--	if hp <= 0 then 
--		--LuaPrint("���������Ƿ�hpֵ")  return 
--		--LG("ҩƷʹ��", "���������Ƿ�hpֵ","\n" )  
--	end 
--	hp_resume = 400    
--	hp = hp + hp_resume 
--	mxhp = GetChaAttr(role,ATTR_MXHP) 
--	if hp > mxhp then --�ӳ������hpʱ����Ϊ���hp
--		hp = mxhp 
--		--LG("ҩƷʹ��", "�Ѵ�hp�������", "\n" ) 
--	end 
--		--LG("ҩƷʹ��", "hp�ظ�Ϊ", hp ,"\n" ) 
--	SetCharaAttr(hp, role, ATTR_HP) 
--	--LuaPrint("Out function hp_med_small( role )  --[[�������ʽ]]--") 
--end 
----[[���⹫ʽ]]--��������������������������������������������������������������������������������������������������������������������������������������������������������

function ItemUse_CAKE ( role , Item )  --[[���⹫ʽ]]--
	local hp = GetChaAttr(role, ATTR_HP) 
	--LG("ҩƷʹ��", "��ǰhp = ", hp , "\n" ) 
	if hp <= 0 then 
		--LuaPrint("���������Ƿ�hpֵ")  return 
		--LG("ҩƷʹ��", "���������Ƿ�hpֵ","\n" )  
	end 
	hp_resume = 180   
	hp = hp + hp_resume 
	mxhp = GetChaAttr(role,ATTR_MXHP) 
	if hp > mxhp then --�ӳ������hpʱ����Ϊ���hp
		hp = mxhp 
		--LG("ҩƷʹ��", "�Ѵ�hp�������", "\n" ) 
	end 
		--LG("ҩƷʹ��", "hp�ظ�Ϊ", hp ,"\n" ) 
	SetCharaAttr(hp, role, ATTR_HP) 
	--LuaPrint("Out function hp_med_small( role )  --[[�������ʽ]]--") 
end 
--function ItemUse_CAKE ( role )
--	local str = GetChaAttr( role , ATTR_BSTR )
--	local ap = GetChaAttr( role , ATTR_AP )
--	SystemNotice ( role , "�����޸�ǰΪ"..str )
--	SystemNotice ( role , "���Ե��޸�ǰӦΪ"..ap )
--	if str <= 5 then 
--		SystemNotice ( role , "��û���㹻�ĵ�����ϴ��,ϴ��ʧ��" )
--		return
--	end
--	local str_dif = 1
--	local ap_dif = 1
--	str = str - str_dif
--	ap = ap + 1
--	
--	SystemNotice ( role , "�����޸ĺ�ӦΪ"..str )
--	SystemNotice ( role , "���Ե��޸ĺ�ӦΪ"..ap )
--	SetCharaAttr ( str , role , ATTR_BSTR )
--	SetCharaAttr ( ap , role , ATTR_AP )
--end

-- function ItemUse_CAKE ( role )  --[[���⹫ʽ]]--
--	local cha = TurnToCha ( cha ) 
--	local x_give = 0 
--	local y_give = 0 
--	local script_count = CheckBagItem ( cha , 887 )					--��鱳���жһ�ȯ����
--	local DiamondId = Roll_DiamondId ( cha )						--����һ���ʯ������
--	if script_count >= 1 then 
--		x_del = DelBagItem ( cha , 887 , 1 ) 
--		if x_del == 1 then 
--			x_give = GiveItem ( cha , 0 , DiamondId , 1 , 101 )				--�һ���ʯ
--
--			y_give = GiveItem ( cha , 0 , 885 , 1 , 101 )					--�һ�����ʯ
--
--
--		else 
--			SystemNotice ( cha , "�޷���ȷ�۳���ʯ�һ�ȯ" ) 
--		end 
--	else 
--		SystemNotice ( cha , "��������Ҫһ����ʯ�һ�ȯ�ſɶһ�"  ) 
--	end 
--	if x_give == 1 and y_give ==1 then 
--		return 1 
--	else 
--		return 0 
--	end 
--end 
--
--
--



----[[�������ʽ]]--��������������������������������������������������������������������������������������������������������������������������������������������������������

function ItemUse_JLG( role , Item )  --[[�������ʽ]]--
	local hp = GetChaAttr(role, ATTR_HP) 
	--LG("ҩƷʹ��", "��ǰhp = ", hp , "\n" ) 
	if hp <= 0 then 
		--LuaPrint("���������Ƿ�hpֵ")  return 
		--LG("ҩƷʹ��", "���������Ƿ�hpֵ","\n" )  
	end 
	hp_resume = 15   
	hp = hp + hp_resume 
	mxhp = GetChaAttr(role,ATTR_MXHP) 
	if hp > mxhp then --�ӳ������hpʱ����Ϊ���hp
		hp = mxhp 
		--LG("ҩƷʹ��", "�Ѵ�hp�������", "\n" ) 
	end 
		--LG("ҩƷʹ��", "hp�ظ�Ϊ", hp ,"\n" ) 
	SetCharaAttr(hp, role, ATTR_HP) 
	--LuaPrint("Out function hp_med_small( role )  --[[�������ʽ]]--") 
end 


function ItemUse_SZ ( role , Item )  --[[ɳ��]]--
	local hp = GetChaAttr(role, ATTR_HP) 
	--LG("ҩƷʹ��", "��ǰhp = ", hp , "\n" ) 
	if hp <= 0 then 
		--LuaPrint("���������Ƿ�hpֵ")  return 
		--LG("ҩƷʹ��", "���������Ƿ�hpֵ","\n" )  
	end 
	hp_resume = 20   
	hp = hp + hp_resume 
	mxhp = GetChaAttr(role,ATTR_MXHP) 
	if hp > mxhp then --�ӳ������hpʱ����Ϊ���hp
		hp = mxhp 
		--LG("ҩƷʹ��", "�Ѵ�hp�������", "\n" ) 
	end 
		--LG("ҩƷʹ��", "hp�ظ�Ϊ", hp ,"\n" ) 
	SetCharaAttr(hp, role, ATTR_HP) 
	--LuaPrint("Out function hp_med_small( role )  --[[�������ʽ]]--") 
end 



function ItemUse_MG ( role , Item )  --[[Ģ��]]--
	local hp = GetChaAttr(role, ATTR_HP) 
	--LG("ҩƷʹ��", "��ǰhp = ", hp , "\n" ) 
	if hp <= 0 then 
		--LuaPrint("���������Ƿ�hpֵ")  return 
		--LG("ҩƷʹ��", "���������Ƿ�hpֵ","\n" )  
	end 
	hp_resume = 35  
	hp = hp + hp_resume 
	mxhp = GetChaAttr(role,ATTR_MXHP) 
	if hp > mxhp then --�ӳ������hpʱ����Ϊ���hp
		hp = mxhp 
		--LG("ҩƷʹ��", "�Ѵ�hp�������", "\n" ) 
	end 
		--LG("ҩƷʹ��", "hp�ظ�Ϊ", hp ,"\n" ) 
	SetCharaAttr(hp, role, ATTR_HP) 
	--LuaPrint("Out function hp_med_small( role )  --[[�������ʽ]]--") 
end 




function ItemUse_MTLG ( role , Item )  --[[�����޹�]]--
	local hp = GetChaAttr(role, ATTR_HP) 
	--LG("ҩƷʹ��", "��ǰhp = ", hp , "\n" ) 
	if hp <= 0 then 
		--LuaPrint("���������Ƿ�hpֵ")  return 
		--LG("ҩƷʹ��", "���������Ƿ�hpֵ","\n" )  
	end 
	hp_resume = 40  
	hp = hp + hp_resume 
	mxhp = GetChaAttr(role,ATTR_MXHP) 
	if hp > mxhp then --�ӳ������hpʱ����Ϊ���hp
		hp = mxhp 
		--LG("ҩƷʹ��", "�Ѵ�hp�������", "\n" ) 
	end 
		--LG("ҩƷʹ��", "hp�ظ�Ϊ", hp ,"\n" ) 
	SetCharaAttr(hp, role, ATTR_HP) 
	--LuaPrint("Out function hp_med_small( role )  --[[�������ʽ]]--") 
end 


function ItemUse_BG ( role , Item )  --[[����]]--
	local hp = GetChaAttr(role, ATTR_HP) 
	--LG("ҩƷʹ��", "��ǰhp = ", hp , "\n" ) 
	if hp <= 0 then 
		--LuaPrint("���������Ƿ�hpֵ")  return 
		--LG("ҩƷʹ��", "���������Ƿ�hpֵ","\n" )  
	end 
	hp_resume = 50 
	hp = hp + hp_resume 
	mxhp = GetChaAttr(role,ATTR_MXHP) 
	if hp > mxhp then --�ӳ������hpʱ����Ϊ���hp
		hp = mxhp 
		--LG("ҩƷʹ��", "�Ѵ�hp�������", "\n" ) 
	end 
		--LG("ҩƷʹ��", "hp�ظ�Ϊ", hp ,"\n" ) 
	SetCharaAttr(hp, role, ATTR_HP) 
	--LuaPrint("Out function hp_med_small( role )  --[[�������ʽ]]--") 
end 



function ItemUse_WCG( role , Item )  --[[��ʹ�]]--
	local hp = GetChaAttr(role, ATTR_HP) 
	--LG("ҩƷʹ��", "��ǰhp = ", hp , "\n" ) 
	if hp <= 0 then 
		--LuaPrint("���������Ƿ�hpֵ")  return 
		--LG("ҩƷʹ��", "���������Ƿ�hpֵ","\n" )  
	end 
	hp_resume = 108 
	hp = hp + hp_resume 
	mxhp = GetChaAttr(role,ATTR_MXHP) 
	if hp > mxhp then --�ӳ������hpʱ����Ϊ���hp
		hp = mxhp 
		--LG("ҩƷʹ��", "�Ѵ�hp�������", "\n" ) 
	end 
		--LG("ҩƷʹ��", "hp�ظ�Ϊ", hp ,"\n" ) 
	SetCharaAttr(hp, role, ATTR_HP) 
	--LuaPrint("Out function hp_med_small( role )  --[[�������ʽ]]--") 
end 


function ItemUse_JLGZ( role , Item )  --[[�����֭]]--
	local hp = GetChaAttr(role, ATTR_HP) 
	--LG("ҩƷʹ��", "��ǰhp = ", hp , "\n" ) 
	if hp <= 0 then 
		--LuaPrint("���������Ƿ�hpֵ")  return 
		--LG("ҩƷʹ��", "���������Ƿ�hpֵ","\n" )  
	end 
	hp_resume = 250 
	
	hp = hp + hp_resume 
	mxhp = GetChaAttr(role,ATTR_MXHP) 
	if hp > mxhp then --�ӳ������hpʱ����Ϊ���hp
		hp = mxhp 
		--LG("ҩƷʹ��", "�Ѵ�hp�������", "\n" ) 
	end 
		--LG("ҩƷʹ��", "hp�ظ�Ϊ", hp ,"\n" ) 
	SetCharaAttr(hp, role, ATTR_HP) 
	--LuaPrint("Out function hp_med_small( role )  --[[�������ʽ]]--") 
end 

function ItemUse_SZC( role , Item )  --[[ɳ���]]--
	local hp = GetChaAttr(role, ATTR_HP) 
	--LG("ҩƷʹ��", "��ǰhp = ", hp , "\n" ) 
	if hp <= 0 then 
		--LuaPrint("���������Ƿ�hpֵ")  return 
		--LG("ҩƷʹ��", "���������Ƿ�hpֵ","\n" )  
	end 
	hp_resume = 300
	
	hp = hp + hp_resume 
	mxhp = GetChaAttr(role,ATTR_MXHP) 
	if hp > mxhp then --�ӳ������hpʱ����Ϊ���hp
		hp = mxhp 
		--LG("ҩƷʹ��", "�Ѵ�hp�������", "\n" ) 
	end 
		--LG("ҩƷʹ��", "hp�ظ�Ϊ", hp ,"\n" ) 
	SetCharaAttr(hp, role, ATTR_HP) 
	--LuaPrint("Out function hp_med_small( role )  --[[�������ʽ]]--") 
end 



function ItemUse_MGT( role , Item )  --[[Ģ����]]--
	local hp = GetChaAttr(role, ATTR_HP) 
	--LG("ҩƷʹ��", "��ǰhp = ", hp , "\n" ) 
	if hp <= 0 then 
		--LuaPrint("���������Ƿ�hpֵ")  return 
		--LG("ҩƷʹ��", "���������Ƿ�hpֵ","\n" )  
	end 
	hp_resume = 350 
	
	hp = hp + hp_resume 
	mxhp = GetChaAttr(role,ATTR_MXHP) 
	if hp > mxhp then --�ӳ������hpʱ����Ϊ���hp
		hp = mxhp 
		--LG("ҩƷʹ��", "�Ѵ�hp�������", "\n" ) 
	end 
		--LG("ҩƷʹ��", "hp�ظ�Ϊ", hp ,"\n" ) 
	SetCharaAttr(hp, role, ATTR_HP) 
	--LuaPrint("Out function hp_med_small( role )  --[[�������ʽ]]--") 
end 

function ItemUse_MTLGZ( role , Item )  --[[�����޹�֭]]--
	local hp = GetChaAttr(role, ATTR_HP) 
	--LG("ҩƷʹ��", "��ǰhp = ", hp , "\n" ) 
	if hp <= 0 then 
		--LuaPrint("���������Ƿ�hpֵ")  return 
		--LG("ҩƷʹ��", "���������Ƿ�hpֵ","\n" )  
	end 
	hp_resume = 400
	
	hp = hp + hp_resume 
	mxhp = GetChaAttr(role,ATTR_MXHP) 
	if hp > mxhp then --�ӳ������hpʱ����Ϊ���hp
		hp = mxhp 
		--LG("ҩƷʹ��", "�Ѵ�hp�������", "\n" ) 
	end 
		--LG("ҩƷʹ��", "hp�ظ�Ϊ", hp ,"\n" ) 
	SetCharaAttr(hp, role, ATTR_HP) 
	--LuaPrint("Out function hp_med_small( role )  --[[�������ʽ]]--") 
end 


function ItemUse_BQL( role , Item )  --[[������]]--
	local hp = GetChaAttr(role, ATTR_HP) 
	--LG("ҩƷʹ��", "��ǰhp = ", hp , "\n" ) 
	if hp <= 0 then 
		--LuaPrint("���������Ƿ�hpֵ")  return 
		--LG("ҩƷʹ��", "���������Ƿ�hpֵ","\n" )  
	end 
	hp_resume = 450
	
	hp = hp + hp_resume 
	mxhp = GetChaAttr(role,ATTR_MXHP) 
	if hp > mxhp then --�ӳ������hpʱ����Ϊ���hp
		hp = mxhp 
		--LG("ҩƷʹ��", "�Ѵ�hp�������", "\n" ) 
	end 
		--LG("ҩƷʹ��", "hp�ظ�Ϊ", hp ,"\n" ) 
	SetCharaAttr(hp, role, ATTR_HP) 
	--LuaPrint("Out function hp_med_small( role )  --[[�������ʽ]]--") 
end 


function ItemUse_WCLLZ( role , Item )  --[[�������֭]]--
	local hp = GetChaAttr(role, ATTR_HP) 
	--LG("ҩƷʹ��", "��ǰhp = ", hp , "\n" ) 
	if hp <= 0 then 
		--LuaPrint("���������Ƿ�hpֵ")  return 
		--LG("ҩƷʹ��", "���������Ƿ�hpֵ","\n" )  
	end 
	hp_resume = 500 
	
	hp = hp + hp_resume 
	mxhp = GetChaAttr(role,ATTR_MXHP) 
	if hp > mxhp then --�ӳ������hpʱ����Ϊ���hp
		hp = mxhp 
		--LG("ҩƷʹ��", "�Ѵ�hp�������", "\n" ) 
	end 
		--LG("ҩƷʹ��", "hp�ظ�Ϊ", hp ,"\n" ) 
	SetCharaAttr(hp, role, ATTR_HP) 
	--LuaPrint("Out function hp_med_small( role )  --[[�������ʽ]]--") 
end 


function ItemUse_ZHGZ( role , Item )  --[[�ۺϹ�֭]]--
	local hp = GetChaAttr(role, ATTR_HP) 
	--LG("ҩƷʹ��", "��ǰhp = ", hp , "\n" ) 
	if hp <= 0 then 
		--LuaPrint("���������Ƿ�hpֵ")  return 
		--LG("ҩƷʹ��", "���������Ƿ�hpֵ","\n" )  
	end 
	hp_resume = 550
	
	hp = hp + hp_resume 
	mxhp = GetChaAttr(role,ATTR_MXHP) 
	if hp > mxhp then --�ӳ������hpʱ����Ϊ���hp
		hp = mxhp 
		--LG("ҩƷʹ��", "�Ѵ�hp�������", "\n" ) 
	end 
		--LG("ҩƷʹ��", "hp�ظ�Ϊ", hp ,"\n" ) 
	SetCharaAttr(hp, role, ATTR_HP) 
	--LuaPrint("Out function hp_med_small( role )  --[[�������ʽ]]--") 
end 







function ItemUse_YYCY( role , Item )  --[[ҩ�ò�Ҷ]]--
	local sp = GetChaAttr(role, ATTR_SP) 
	--LG("ҩƷʹ��", "��ǰsp = ", sp , "\n" ) 
	sp_resume = 4 
	
	sp = sp + sp_resume 
	mxsp = GetChaAttr(role,ATTR_MXSP) 
	if sp > mxsp then --�ӳ������spʱ����Ϊ���sp
		sp = mxsp 
		--LG("ҩƷʹ��", "�Ѵ�sp�������", "\n" ) 
	end 
		--LG("ҩƷʹ��", "sp�ظ�Ϊ", sp ,"\n" ) 
	SetCharaAttr(sp, role, ATTR_SP) 
end 



function ItemUse_MHHB( role , Item )  --[[�λû���]]--
	local sp = GetChaAttr(role, ATTR_SP) 
	--LG("ҩƷʹ��", "��ǰsp = ", sp , "\n" ) 
	sp_resume = 8 
	
	sp = sp + sp_resume 
	mxsp = GetChaAttr(role,ATTR_MXSP) 
	if sp > mxsp then --�ӳ������spʱ����Ϊ���sp
		sp = mxsp 
		--LG("ҩƷʹ��", "�Ѵ�sp�������", "\n" ) 
	end 
		--LG("ҩƷʹ��", "sp�ظ�Ϊ", sp ,"\n" ) 
	SetCharaAttr(sp, role, ATTR_SP) 
end 



function ItemUse_QYGS( role , Item )  --[[�����ʵ]]--
	local sp = GetChaAttr(role, ATTR_SP) 
	--LG("ҩƷʹ��", "��ǰsp = ", sp , "\n" ) 
	sp_resume = 18 
	
	sp = sp + sp_resume 
	mxsp = GetChaAttr(role,ATTR_MXSP) 
	if sp > mxsp then --�ӳ������spʱ����Ϊ���sp
		sp = mxsp 
		--LG("ҩƷʹ��", "�Ѵ�sp�������", "\n" ) 
	end 
		--LG("ҩƷʹ��", "sp�ظ�Ϊ", sp ,"\n" ) 
	SetCharaAttr(sp, role, ATTR_SP) 
end 


function ItemUse_BFCY( role , Item )  --[[�����ѿ]]--
	local sp = GetChaAttr(role, ATTR_SP) 
	--LG("ҩƷʹ��", "��ǰsp = ", sp , "\n" ) 
	sp_resume = 22 
	
	sp = sp + sp_resume 
	mxsp = GetChaAttr(role,ATTR_MXSP) 
	if sp > mxsp then --�ӳ������spʱ����Ϊ���sp
		sp = mxsp 
		--LG("ҩƷʹ��", "�Ѵ�sp�������", "\n" ) 
	end 
		--LG("ҩƷʹ��", "sp�ظ�Ϊ", sp ,"\n" ) 
	SetCharaAttr(sp, role, ATTR_SP) 
end 


function ItemUse_GCYS( role , Item )  --[[�ʲ�ҩˮ]]--
	local sp = GetChaAttr(role, ATTR_SP) 
	--LG("ҩƷʹ��", "��ǰsp = ", sp , "\n" ) 
	sp_resume = 33  
	
	sp = sp + sp_resume 
	mxsp = GetChaAttr(role,ATTR_MXSP) 
	if sp > mxsp then --�ӳ������spʱ����Ϊ���sp
		sp = mxsp 
		--LG("ҩƷʹ��", "�Ѵ�sp�������", "\n" ) 
	end 
		--LG("ҩƷʹ��", "sp�ظ�Ϊ", sp ,"\n" ) 
	SetCharaAttr(sp, role, ATTR_SP) 
end 


function ItemUse_XSHC( role , Item )  --[[���񻨲�]]--
	local sp = GetChaAttr(role, ATTR_SP) 
	--LG("ҩƷʹ��", "��ǰsp = ", sp , "\n" ) 
	sp_resume = 38 
	
	sp = sp + sp_resume 
	mxsp = GetChaAttr(role,ATTR_MXSP) 
	if sp > mxsp then --�ӳ������spʱ����Ϊ���sp
		sp = mxsp 
		--LG("ҩƷʹ��", "�Ѵ�sp�������", "\n" ) 
	end 
		--LG("ҩƷʹ��", "sp�ظ�Ϊ", sp ,"\n" ) 
	SetCharaAttr(sp, role, ATTR_SP) 
end 


function ItemUse_MZQYG( role , Item )  --[[���������]]--
	local sp = GetChaAttr(role, ATTR_SP) 
	--LG("ҩƷʹ��", "��ǰsp = ", sp , "\n" ) 
	sp_resume = 41 
	
	sp = sp + sp_resume 
	mxsp = GetChaAttr(role,ATTR_MXSP) 
	if sp > mxsp then --�ӳ������spʱ����Ϊ���sp
		sp = mxsp 
		--LG("ҩƷʹ��", "�Ѵ�sp�������", "\n" ) 
	end 
		--LG("ҩƷʹ��", "sp�ظ�Ϊ", sp ,"\n" ) 
	SetCharaAttr(sp, role, ATTR_SP) 
end 


function ItemUse_BYS( role , Item )  --[[��ѿ��]]--
	local sp = GetChaAttr(role, ATTR_SP) 
	--LG("ҩƷʹ��", "��ǰsp = ", sp , "\n" ) 
	sp_resume = 59 
	
	sp = sp + sp_resume 
	mxsp = GetChaAttr(role,ATTR_MXSP) 
	if sp > mxsp then --�ӳ������spʱ����Ϊ���sp
		sp = mxsp 
		--LG("ҩƷʹ��", "�Ѵ�sp�������", "\n" ) 
	end 
		--LG("ҩƷʹ��", "sp�ظ�Ϊ", sp ,"\n" ) 
	SetCharaAttr(sp, role, ATTR_SP) 
end 


function ItemUse_TMLGZ( role , Item )  --[[����������]]--
	local sp = GetChaAttr(role, ATTR_SP) 
	--LG("ҩƷʹ��", "��ǰsp = ", sp , "\n" ) 
	sp_resume = 100 
	
	sp = sp + sp_resume 
	mxsp = GetChaAttr(role,ATTR_MXSP) 
	if sp > mxsp then --�ӳ������spʱ����Ϊ���sp
		sp = mxsp 
		--LG("ҩƷʹ��", "�Ѵ�sp�������", "\n" ) 
	end 
		--LG("ҩƷʹ��", "sp�ظ�Ϊ", sp ,"\n" ) 
	SetCharaAttr(sp, role, ATTR_SP) 
end 


function ItemUse_SMG( role , Item )  --[[���ع�]]--
	local sp = GetChaAttr(role, ATTR_SP) 
	--LG("ҩƷʹ��", "��ǰsp = ", sp , "\n" ) 
	sp_resume = 111 
	
	sp = sp + sp_resume 
	mxsp = GetChaAttr(role,ATTR_MXSP) 
	if sp > mxsp then --�ӳ������spʱ����Ϊ���sp
		sp = mxsp 
		--LG("ҩƷʹ��", "�Ѵ�sp�������", "\n" ) 
	end 
		--LG("ҩƷʹ��", "sp�ظ�Ϊ", sp ,"\n" ) 
	SetCharaAttr(sp, role, ATTR_SP) 
end 



function ItemUse_TSJ( role , Item )  --[[�����]]--
	local sp = GetChaAttr(role, ATTR_SP) 
	--LG("ҩƷʹ��", "��ǰsp = ", sp , "\n" ) 
	sp_resume = 141 
	
	sp = sp + sp_resume 
	mxsp = GetChaAttr(role,ATTR_MXSP) 
	if sp > mxsp then --�ӳ������spʱ����Ϊ���sp
		sp = mxsp 
		--LG("ҩƷʹ��", "�Ѵ�sp�������", "\n" ) 
	end 
		--LG("ҩƷʹ��", "sp�ظ�Ϊ", sp ,"\n" ) 
	SetCharaAttr(sp, role, ATTR_SP) 
end 



function ItemUse_MHYS( role , Item )  --[[ħ��ҩˮ]]--
	local sp = GetChaAttr(role, ATTR_SP) 
	--LG("ҩƷʹ��", "��ǰsp = ", sp , "\n" ) 
	sp_resume = 201 
	
	sp = sp + sp_resume 
	mxsp = GetChaAttr(role,ATTR_MXSP) 
	if sp > mxsp then --�ӳ������spʱ����Ϊ���sp
		sp = mxsp 
		--LG("ҩƷʹ��", "�Ѵ�sp�������", "\n" ) 
	end 
		--LG("ҩƷʹ��", "sp�ظ�Ϊ", sp ,"\n" ) 
	SetCharaAttr(sp, role, ATTR_SP) 
end 

function ItemUse_TZCMB ( role , Item )  --[[���Ʋ�ݮ��]]--
	tempt_monster( role ,  99 )			--��������

end 











function hp_med_middle( role , Item )  --[[����Ѫƿ��ʽ]]--
	--LuaPrint("Enter function hp_med_small( role )  --[[����Ѫƿ��ʽ]]--") 
	local hp = GetChaAttr(role, ATTR_HP) 
	--LG("ҩƷʹ��", "��ǰhp = ", hp , "\n" ) 
	if hp <= 0 then 
		--LuaPrint("���������Ƿ�hpֵ")  return 
		--LG("ҩƷʹ��", "���������Ƿ�hpֵ","\n" )  
	end 
	hp_resume = 800 
	hp = hp + hp_resume 
	mxhp = GetChaAttr(role,ATTR_MXHP) 
	 if hp > mxhp then --�ӳ������hpʱ����Ϊ���hp
		hp = mxhp 
		--LG("ҩƷʹ��", "�Ѵ�hp�������", "\n" ) 
	end 
		--LG("ҩƷʹ��", "hp�ظ�Ϊ", hp ,"\n" ) 
	SetCharaAttr(hp, role, ATTR_HP) 
	--LuaPrint("Out function hp_med_small( role )  --[[����Ѫƿ��ʽ]]--") 
end 

function hp_med_large( role , Item )  --[[����Ѫƿ��ʽ]]--
	--LuaPrint("Enter function hp_med_small( role )  --[[����Ѫƿ��ʽ]]--") 
	local hp = GetChaAttr(role, ATTR_HP) 
	--LG("ҩƷʹ��", "��ǰhp = ", hp , "\n" ) 
	if hp <= 0 then 
		--LuaPrint("���������Ƿ�hpֵ")  return 
		--LG("ҩƷʹ��", "���������Ƿ�hpֵ","\n" )  
	end 
	local mxhp = GetChaAttr(role, ATTR_MXHP) 
	hp_resume = 0.2 * mxhp 
	hp = hp + hp_resume 
	mxhp = GetChaAttr(role,ATTR_MXHP) 
	if hp > mxhp then --�ӳ������hpʱ����Ϊ���hp
		hp = mxhp 
		--LG("ҩƷʹ��", "�Ѵ�hp�������", "\n" ) 
	end 
	--LG("ҩƷʹ��", "hp�ظ�Ϊ", hp ,"\n" ) 
	SetCharaAttr(hp, role, ATTR_HP) 
	--LuaPrint("Out function hp_med_small( role )  --[[����Ѫƿ��ʽ]]--") 
end 

function hp_med_super( role , Item )  --[[����Ѫƿ��ʽ]]--
	--LuaPrint("Enter function hp_med_small( role )  --[[����Ѫƿ��ʽ]]--") 
	local hp = GetChaAttr(role, ATTR_HP) 
	--LG("ҩƷʹ��", "��ǰhp = ", hp , "\n" ) 
	if hp <= 0 then 
		--LuaPrint("���������Ƿ�hpֵ")  return 
		--LG("ҩƷʹ��", "���������Ƿ�hpֵ","\n" )  
	end 
	local mxhp = GetChaAttr(role, ATTR_MXHP) 
	hp_resume = 0.8 * mxhp  
	hp = hp + hp_resume 
	mxhp = GetChaAttr(role,ATTR_MXHP) 
	if hp > mxhp then --�ӳ������hpʱ����Ϊ���hp
		hp = mxhp 
		--LG("ҩƷʹ��", "�Ѵ�hp�������", "\n" ) 
	end 
	--LG("ҩƷʹ��", "hp�ظ�Ϊ", hp ,"\n" ) 
	SetCharaAttr(hp, role, ATTR_HP) 
	--LuaPrint("Out function hp_med_small( role )  --[[����Ѫƿ��ʽ]]--") 
end 










function Sk_Script_Dpsl ( role , Item ) 											--���ܾ��ᡰ������������ʹ�ù�ʽ
	local sk_add = SK_DPSL
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--���ܵȼ��Ϸ��Լ��
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

function Sk_Script_Lzj ( role , Item ) 											--���ܾ��ᡰ���������ʹ�ù�ʽ
										
	local sk_add = SK_LZJ  
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--���ܵȼ��Ϸ��Լ��
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 


function Sk_Script_Lxjy ( role , Item ) 								--���ܾ��ᡰ���Ǽ��ꡱ��ʹ�ù�ʽ
	local sk_add = SK_LXJY 
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--���ܵȼ��Ϸ��Լ��
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 



function Sk_Script_Lh ( role , Item ) 								--���ܾ��ᡰ�Ǻ�����ʹ�ù�ʽ
	local sk_add = SK_LH 
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--���ܵȼ��Ϸ��Լ��
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 


function Sk_Script_Ssd ( role , Item )  								--���ܾ��ᡰɢ�䵯����ʹ�ù�ʽ
	local sk_add = SK_SSD  
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--���ܵȼ��Ϸ��Լ��
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 


function Sk_Script_Ctd ( role , Item ) 								--���ܾ��ᡰ��͸������ʹ�ù�ʽ
	local sk_add = SK_CTD 
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--���ܵȼ��Ϸ��Լ��
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 


function Sk_Script_Dzy ( role , Item ) 								--���ܾ��ᡰ����������ʹ�ù�ʽ
	local sk_add = SK_DZY 
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--���ܵȼ��Ϸ��Լ��
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 


function Sk_Script_Hx ( role , Item ) 											
	local sk_add = SK_HX 
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--���ܵȼ��Ϸ��Լ��
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 


function Sk_Script_Rsd ( role , Item ) 											
	local sk_add =SK_RSD 
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--���ܵȼ��Ϸ��Լ��
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 




function Sk_Script_Jssl ( role , Item ) 											
	local sk_add = SK_JSSL 
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--���ܵȼ��Ϸ��Լ��
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 



function Sk_Script_Gtyz ( role , Item ) 											
	local sk_add = SK_GTYZ 
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--���ܵȼ��Ϸ��Լ��
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 


function Sk_Script_Qhtz ( role , Item ) 											
	local sk_add = SK_QHTZ
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--���ܵȼ��Ϸ��Լ��
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 


function Sk_Script_Lqhb ( role , Item ) 											
	local sk_add = SK_LQHB 
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--���ܵȼ��Ϸ��Լ��
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 



function Sk_Script_Jdzz ( role , Item ) 											
	local sk_add = SK_JDZZ 
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--���ܵȼ��Ϸ��Լ��
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 



function Sk_Script_Hyz ( role , Item ) 											
	local sk_add = SK_HYZ 
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--���ܵȼ��Ϸ��Լ��
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	--LG( " learn sk " , " Sk_Script_Hyz ()	: " , "sever �жϷ��� = " , a ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 



function Sk_Script_Zj ( role , Item ) 											
	local sk_add = SK_ZJ 
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--���ܵȼ��Ϸ��Լ��
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 


function Sk_Script_Jjsl ( role , Item ) 											
	local sk_add = SK_JJSL 
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--���ܵȼ��Ϸ��Լ��
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 


function Sk_Script_Ymsl ( role , Item ) 											
	local sk_add = SK_YMSL 
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--���ܵȼ��Ϸ��Լ��
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 



function Sk_Script_Kb ( role , Item ) 											
	local sk_add = SK_KB  
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--���ܵȼ��Ϸ��Լ��
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	--LG( " learn sk " , " function Sk_Script_Kb ()	: " , "sever �жϷ��� = " , a ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 



function Sk_Script_Ttcb ( role , Item ) 											
	local sk_add = SK_TTCB  
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--���ܵȼ��Ϸ��Լ��
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 



function Sk_Script_Mnrx ( role , Item ) 											
	local sk_add = SK_MNRX 
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--���ܵȼ��Ϸ��Լ��
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 



function Sk_Script_Swzq ( role , Item ) 											
	local sk_add = SK_SWZQ 
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--���ܵȼ��Ϸ��Լ��
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 



function Sk_Script_Ssjjc ( role , Item ) 											
	local sk_add = SK_FSZ 
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--���ܵȼ��Ϸ��Լ��
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 



function Sk_Script_Hys ( role , Item ) 											
	local sk_add = SK_HYS  
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--���ܵȼ��Ϸ��Լ��
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 


function Sk_Script_Pxkg ( role , Item ) 											
	local sk_add = SK_PXKG 
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--���ܵȼ��Ϸ��Լ��
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 


function Sk_Script_Qx ( role , Item ) 											
	local sk_add = SK_YS  
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--���ܵȼ��Ϸ��Լ��
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 


function Sk_Script_Bc ( role , Item ) 											
	local sk_add = SK_BC  
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--���ܵȼ��Ϸ��Լ��
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 



function Sk_Script_Guz ( role , Item ) 											
	local sk_add = SK_GWZ 
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--���ܵȼ��Ϸ��Լ��
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	--LG( " learn sk " , " function Sk_Script_Guz ()	: " , "sever �жϷ��� = " , a ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 



function Sk_Script_Db ( role , Item ) 											
	local sk_add = SK_DB  
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--���ܵȼ��Ϸ��Լ��
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 



function Sk_Script_Mb ( role , Item ) 											
	local sk_add = SK_MB  
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--���ܵȼ��Ϸ��Լ��
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 



function Sk_Script_Shtz ( role , Item ) 											
	local sk_add = SK_SHTZ  
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--���ܵȼ��Ϸ��Լ��
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 



function Sk_Script_Tzhf ( role , Item ) 											
	local sk_add = SK_TZHF  
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--���ܵȼ��Ϸ��Լ��
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 



function Sk_Script_Gjsl ( role , Item ) 											
	local sk_add = SK_GJSL  
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--���ܵȼ��Ϸ��Լ��
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 



function Sk_Script_Jfb ( role , Item ) 											
	local sk_add = SK_JFB  
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--���ܵȼ��Ϸ��Լ��
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 



function Sk_Script_Yy ( role , Item ) 											
	local sk_add = SK_YY 
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--���ܵȼ��Ϸ��Լ��
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 



function Sk_Script_Hqsl ( role , Item ) 											
	local sk_add = SK_HQSL  
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--���ܵȼ��Ϸ��Լ��
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 



function Sk_Script_Lxjy ( role , Item ) 											
	local sk_add = SK_LXJY  
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--���ܵȼ��Ϸ��Լ��
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 


function Sk_Script_Dyjj ( role , Item ) 											
	local sk_add = SK_DYJJ 
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--���ܵȼ��Ϸ��Լ��
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 


function Sk_Script_Tj ( role , Item ) 											
	local sk_add = SK_TJ 
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--���ܵȼ��Ϸ��Լ��
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 



function Sk_Script_Sj ( role , Item ) 											
	local sk_add = SK_SJ  
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--���ܵȼ��Ϸ��Լ��
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 



function Sk_Script_Bt ( role , Item ) 											
	local sk_add = SK_BT  
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--���ܵȼ��Ϸ��Լ��
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 



function Sk_Script_Jsjc ( role , Item ) 											
	local sk_add = SK_JSJC  
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--���ܵȼ��Ϸ��Լ��
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 



function Sk_Script_Xzys ( role , Item ) 											
	local sk_add = SK_XZY  
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--���ܵȼ��Ϸ��Լ��
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 



function Sk_Script_Hfs ( role , Item ) 											
	local sk_add = SK_HFS  
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--���ܵȼ��Ϸ��Լ��
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 



function Sk_Script_Xlcz ( role , Item ) 											
	local sk_add = SK_XLCZ  
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--���ܵȼ��Ϸ��Լ��
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 



function Sk_Script_Syzy ( role , Item ) 											
	local sk_add = SK_SYZY  
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--���ܵȼ��Ϸ��Լ��
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 




function Sk_Script_Dzy( role , Item ) 											
	local sk_add = SK_DZY  
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--���ܵȼ��Ϸ��Լ��
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 




function Sk_Script_Dhfs ( role , Item ) 											
	local sk_add = SK_DHFS  
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--���ܵȼ��Ϸ��Լ��
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 


function Sk_Script_Xlzh ( role , Item ) 											
	local sk_add = SK_XLZH  
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--���ܵȼ��Ϸ��Լ��
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 



function Sk_Script_Fzlz ( role , Item ) 											
	local sk_add = SK_FZLZ  
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--���ܵȼ��Ϸ��Լ��
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 



function Sk_Script_Sy ( role , Item ) 											
	local sk_add = SK_SY  
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--���ܵȼ��Ϸ��Լ��
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 



function Sk_Script_Fh ( role , Item ) 											
	local sk_add = SK_FH  
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--���ܵȼ��Ϸ��Լ��
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 



function Sk_Script_Jsfb ( role , Item ) 											
	local sk_add = SK_JSFB  
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--���ܵȼ��Ϸ��Լ��
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 



function Sk_Script_Tshd ( role , Item ) 											
	local sk_add = SK_TSHD  
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--���ܵȼ��Ϸ��Լ��
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 



function Sk_Script_Xzfy ( role , Item ) 											
	local sk_add = SK_XZFY  
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--���ܵȼ��Ϸ��Լ��
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 



function Sk_Script_Ayzz ( role , Item ) 											
	local sk_add = SK_AYZZ 
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--���ܵȼ��Ϸ��Լ��
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 



function Sk_Script_Zzzh ( role , Item ) 											
	local sk_add = SK_ZZZH  
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--���ܵȼ��Ϸ��Լ��
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 



function Sk_Script_Sdbz ( role , Item ) 											
	local sk_add = SK_SDBZ  
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--���ܵȼ��Ϸ��Լ��
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 



function Sk_Script_Nzs ( role , Item ) 											
	local sk_add = SK_SYNZ  
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--���ܵȼ��Ϸ��Լ��
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 



function Sk_Script_Xlpz ( role , Item ) 											
	local sk_add = SK_XLPZ 
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--���ܵȼ��Ϸ��Լ��
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 



function Sk_Script_Hfwq ( role , Item ) 											
	local sk_add = SK_HFWQ  
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--���ܵȼ��Ϸ��Լ��
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 



function Sk_Script_Ks	( role , Item ) 
	local sk_add = SK_KS  
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--���ܵȼ��Ϸ��Լ��
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 
----------------����
function Sk_Script_ZhiZao( role , Item ) 
	local star_lv=GetItemID(Item)-2678
	local sk_add = SK_ZHIZAO  
	local form_sklv = GetSkillLv( role , sk_add ) 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 1 then
		SystemNotice(role ,"ѧϰ�˼���������Ҫ1����λ")
		UseItemFailed ( role )
		return
	end
	if form_sklv ~= star_lv-1  then 
		UseItemFailed ( role )  
		return 
	end 
	local el_sklv = GetSkillLv( role , SK_KS ) 
	if el_sklv <star_lv  then 	
		SystemNotice ( role , "��Ҫ����"..star_lv.."����ľ���ܲ����Ķ�����" ) 
		UseItemFailed ( role )
		return
	end 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if star_lv==1 and Item_CanGet < 1 then
		SystemNotice(role ,"ѧϰ�˼���������Ҫ1����λ")
		UseItemFailed ( role )
		return
	end
	a = AddChaSkill ( role , sk_add, star_lv , 1 , 1 ) 
	if a== 0 then 
		SystemNotice ( role , "����ܵ������㣬�볢����ɸ�����ʷ����" ) 
		UseItemFailed ( role )  
		return 
	end 
	if star_lv==1 then
		local m1 = -1
		local m2 = -1
		m1, m2 = MakeItem ( role , 1068  , 1 , 4 )
		local Itemfinal = GetChaItem ( role , 2 , m2 )
		SetItemAttr(Itemfinal, ITEMATTR_VAL_STR ,1)--���ù��ߵȼ�Ϊ1
		SetItemAttr(Itemfinal, ITEMATTR_MAXENERGY ,10000)--���ù����������
		SetItemAttr(Itemfinal, ITEMATTR_ENERGY ,1)--���ù��ߵ�ǰ����
	end
end 
----------------����
function Sk_Script_ZhuZao( role , Item ) 
	local star_lv=GetItemID(Item)-2698
	local sk_add = SK_ZHUZAO  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= star_lv-1  then 
		UseItemFailed ( role )  
		return 
	end 
	local el_sklv = GetSkillLv( role , SK_WK ) 
	if el_sklv <star_lv  then 	
		SystemNotice ( role ,  "��Ҫ����"..star_lv.."���ڿ��ܲ����Ķ�����" ) 
		UseItemFailed ( role )
		return
	end 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if star_lv==1 and Item_CanGet < 1 then
		SystemNotice(role ,"ѧϰ�˼���������Ҫ1����λ")
		UseItemFailed ( role )
		return
	end
	a = AddChaSkill ( role , sk_add, star_lv , 1 , 1 ) 
	if a== 0 then 
		SystemNotice ( role , "����ܵ������㣬�볢����ɸ�����ʷ����" ) 
		UseItemFailed ( role )  
		return 
	end
	if star_lv==1 then
		local m1 = -1
		local m2 = -1
		m1, m2 = MakeItem ( role , 1069  , 1 , 4 )
		local Itemfinal = GetChaItem ( role , 2 , m2 )
		SetItemAttr(Itemfinal, ITEMATTR_VAL_STR ,1)--���ù��ߵȼ�Ϊ1
		SetItemAttr(Itemfinal, ITEMATTR_MAXENERGY ,10000)--���ù����������
		SetItemAttr(Itemfinal, ITEMATTR_ENERGY ,1)--���ù��ߵ�ǰ����
	end
end 
----------------���
function Sk_Script_PengRen( role , Item ) 
	local star_lv=GetItemID(Item)-2688
	local sk_add = SK_PENGREN  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= star_lv-1  then 
		UseItemFailed ( role )  
		return 
	end 
	local el_sklv = GetSkillLv( role , SK_BY ) 
	if el_sklv <star_lv  then 	
		SystemNotice ( role ,  "��Ҫ����"..star_lv.."�����㼼�ܲ����Ķ�����" ) 
		UseItemFailed ( role )
		return
	end 
	a = AddChaSkill ( role , sk_add, star_lv , 1 , 1 ) 
	if a== 0 then 
		SystemNotice ( role , "����ܵ������㣬�볢����ɸ�����ʷ����" ) 
		UseItemFailed ( role )  
		return 
	end 
	if star_lv==1 then
		local m1 = -1
		local m2 = -1
		m1, m2 = MakeItem ( role , 1067  , 1 , 4 )
		local Itemfinal = GetChaItem ( role , 2 , m2 )
		SetItemAttr(Itemfinal, ITEMATTR_VAL_STR ,1)--���ù��ߵȼ�Ϊ1
		SetItemAttr(Itemfinal, ITEMATTR_MAXENERGY ,10000)--���ù����������
		SetItemAttr(Itemfinal, ITEMATTR_ENERGY ,1)--���ù��ߵ�ǰ����
	end
end 
----------------�ֽ�
function Sk_Script_FenJie( role , Item ) 
	local star_lv=GetItemID(Item)-2708
	local sk_add = SK_FENJIE  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= star_lv-1  then 
		UseItemFailed ( role )  
		return 
	end 
	local el_sklv = GetSkillLv( role , SK_DL ) 
	if el_sklv <star_lv  then 	
		SystemNotice ( role , "��Ҫ����"..star_lv.."�����̼��ܲ����Ķ�����" ) 
		UseItemFailed ( role )
		return
	end 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if star_lv==1 and Item_CanGet < 1 then
		SystemNotice(role ,"ѧϰ�˼���������Ҫ1����λ")
		UseItemFailed ( role )
		return
	end
	a = AddChaSkill ( role , sk_add, star_lv , 1 , 1 ) 
	if a== 0 then 
		SystemNotice ( role , "����ܵ������㣬�볢����ɸ�����ʷ����" ) 
		UseItemFailed ( role )  
		return 
	end
	if star_lv==1 then
		local m1 = -1
		local m2 = -1
		m1, m2 = MakeItem ( role , 1070  , 1 , 4 )
		local Itemfinal = GetChaItem ( role , 2 , m2 )
		SetItemAttr(Itemfinal, ITEMATTR_VAL_STR ,1)--���ù��ߵȼ�Ϊ1
		SetItemAttr(Itemfinal, ITEMATTR_MAXENERGY ,10000)--���ù����������
		SetItemAttr(Itemfinal, ITEMATTR_ENERGY ,1)--���ù��ߵ�ǰ����
	end
end 
function Sk_Script_Wk	( role , Item ) 
	local sk_add = SK_WK  
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--���ܵȼ��Ϸ��Լ��
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 


function Sk_Script_Jr	( role , Item ) 
	local sk_add = SK_JR  
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--���ܵȼ��Ϸ��Լ��
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 



function Sk_Script_Sl	( role , Item ) 
	local sk_add = SK_SL  
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--���ܵȼ��Ϸ��Լ��
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 


function Sk_Script_Bkzj ( role , Item ) 
	local sk_add = SK_BKZJ   
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--���ܵȼ��Ϸ��Լ��
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 



function Sk_Script_Jf ( role , Item ) 
	local sk_add = SK_JF   
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--���ܵȼ��Ϸ��Լ��
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 


function Sk_Script_Lj ( role , Item ) 
	local sk_add = SK_LJ    
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--���ܵȼ��Ϸ��Լ��
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

function Sk_Script_Hzcr ( role , Item ) 
	local sk_add = SK_HZCR     
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--���ܵȼ��Ϸ��Լ��
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

function Sk_Script_Bkcj ( role , Item ) 
	local sk_add = SK_BKCJ      
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--���ܵȼ��Ϸ��Լ��
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 



function Sk_Script_Sf ( role , Item ) 
	local sk_add = SK_SF       
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--���ܵȼ��Ϸ��Լ��
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 



function Sk_Script_Xw ( role , Item ) 
	local sk_add = SK_XW        
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--���ܵȼ��Ϸ��Լ��
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 


function Sk_Script_Mw ( role , Item ) 
	local sk_add = SK_MW        
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--���ܵȼ��Ϸ��Լ��
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

function Sk_Script_Lm ( role , Item ) 
	local sk_add = SK_LM         
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--���ܵȼ��Ϸ��Լ��
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

function Sk_Script_Pj ( role , Item ) 
	local sk_add = SK_PJ         
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--���ܵȼ��Ϸ��Լ��
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

function Sk_Script_Fnq ( role , Item ) 
	local sk_add = SK_FNQ         
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--���ܵȼ��Ϸ��Լ��
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

function Sk_Script_Bdj ( role , Item ) 
	local sk_add = SK_BDJ         
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--���ܵȼ��Ϸ��Լ��
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

function Sk_Script_Dj ( role , Item ) 
	local sk_add = SK_DJ         
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--���ܵȼ��Ϸ��Լ��
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

function Sk_Script_Shpf ( role , Item ) 
	local sk_add = SK_SHPF         
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--���ܵȼ��Ϸ��Լ��
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

function Sk_Script_Cf ( role , Item )
	local sk_add = SK_CHF         
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--���ܵȼ��Ϸ��Լ��
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end

function Sk_Script_Px ( role , Item )
	local sk_add = SK_PAX         
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--���ܵȼ��Ϸ��Լ��
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end

function Sk_Script_MLCH ( role , Item )
	local sk_add = SK_MLCH         
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--���ܵȼ��Ϸ��Լ��
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end


function Sk_Script_BLYZ ( role , Item )
	local sk_add = SK_BLYZ         
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--���ܵȼ��Ϸ��Լ��
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end


function AddSailSkill ( role , i , sk_add , sailexp_req ) 
	LG ( "AddSailSkill" , "__add a new sailsk________________________ "  ) 

	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= i - 1  then 
		SystemNotice ( role , "�Ȿ���޷����㵱ǰ�ļ��ܵȼ��������" ) 
		UseItemFailed ( role )  
		return 
	end 

	local sail_exp_remain = GetChaAttr ( role , ATTR_CLEFT_SAILEXP ) 
	if sail_exp_remain < sailexp_req  then 
		SystemNotice ( role , "ʣ�ຽ�����鲻�㣬�޷��������ܵȼ������������� ��" ) 
		UseItemFailed ( role )  
		return 
	end 
	LG ( "AddSailSkill" , "���ܱ�� " ,  sk_add , "  ���ܵȼ�  " , i  ) 
	LG ( "AddSailSkill" , " ԭ�к�������  " , sail_exp_remain , "  ������������ " , sailexp_req ) 
	sail_exp_remain = sail_exp_remain - sailexp_req 
	LG ( "AddSailSkill" , " ʣ�ຽ������  " , sail_exp_remain ) 

	SetCharaAttr ( sail_exp_remain , role , ATTR_CLEFT_SAILEXP ) 
	SystemNotice ( role , "���ĺ�������" .. sailexp_req ) 

	a = AddChaSkill ( role , sk_add, 1 , 0 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

function Sk_Script_Hpsl1 ( role , Item ) 
	local i = 1 
	local sk_add = SK_HPSL         
	local sailexp_req = sk_hpsl [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 

end


function Sk_Script_Hpsl2 ( role , Item ) 
	local i = 2 
	local sk_add = SK_HPSL         
	local sailexp_req = sk_hpsl [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end


function Sk_Script_Hpsl3 ( role , Item ) 
	local i = 3 
	local sk_add = SK_HPSL         
	local sailexp_req = sk_hpsl [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Hpsl4 ( role , Item ) 
	local i = 4 
	local sk_add = SK_HPSL         
	local sailexp_req = sk_hpsl [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Hpsl5 ( role , Item ) 
	local i = 5 
	local sk_add = SK_HPSL         
	local sailexp_req = sk_hpsl [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end


function Sk_Script_Hpsl6 ( role , Item ) 
	local i = 6 
	local sk_add = SK_HPSL         
	local sailexp_req = sk_hpsl [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Hpsl7 ( role , Item ) 
	local i = 7 
	local sk_add = SK_HPSL         
	local sailexp_req = sk_hpsl [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Hpsl8 ( role , Item ) 
	local i = 8 
	local sk_add = SK_HPSL         
	local sailexp_req = sk_hpsl [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Hpsl9 ( role , Item ) 
	local i = 9 
	local sk_add = SK_HPSL         
	local sailexp_req = sk_hpsl [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Hpsl10 ( role , Item ) 
	local i = 10 
	local sk_add = SK_HPSL         
	local sailexp_req = sk_hpsl [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Jbjg1 ( role , Item ) 
	local i = 1 
	local sk_add = SK_JBJG         
	local sailexp_req = sk_jbjg [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Jbjg2 ( role , Item ) 
	local i = 2 
	local sk_add = SK_JBJG         
	local sailexp_req = sk_jbjg [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Jbjg3 ( role , Item ) 
	local i = 3 
	local sk_add = SK_JBJG         
	local sailexp_req = sk_jbjg [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Jbjg4 ( role , Item ) 
	local i = 4 
	local sk_add = SK_JBJG         
	local sailexp_req = sk_jbjg [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Jbjg5 ( role , Item ) 
	local i = 5 
	local sk_add = SK_JBJG         
	local sailexp_req = sk_jbjg [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Jbjg6 ( role , Item ) 
	local i = 6 
	local sk_add = SK_JBJG         
	local sailexp_req = sk_jbjg [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Jbjg7 ( role , Item ) 
	local i = 7 
	local sk_add = SK_JBJG         
	local sailexp_req = sk_jbjg [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Jbjg8 ( role , Item ) 
	local i = 8 
	local sk_add = SK_JBJG         
	local sailexp_req = sk_jbjg [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Jbjg9 ( role , Item ) 
	local i = 9 
	local sk_add = SK_JBJG         
	local sailexp_req = sk_jbjg [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Jbjg10 ( role , Item ) 
	local i = 10 
	local sk_add = SK_JBJG         
	local sailexp_req = sk_jbjg [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Cfs1 ( role , Item ) 
	local i = 1 
	local sk_add = SK_CFS         
	local sailexp_req = sk_cfs [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Cfs2 ( role , Item ) 
	local i = 2 
	local sk_add = SK_CFS         
	local sailexp_req = sk_cfs [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Cfs3 ( role , Item ) 
	local i = 3 
	local sk_add = SK_CFS         
	local sailexp_req = sk_cfs [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Cfs4 ( role , Item ) 
	local i = 4 
	local sk_add = SK_CFS         
	local sailexp_req = sk_cfs [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Cfs5 ( role , Item ) 
	local i = 5 
	local sk_add = SK_CFS         
	local sailexp_req = sk_cfs [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Cfs6 ( role , Item ) 
	local i = 6 
	local sk_add = SK_CFS         
	local sailexp_req = sk_cfs [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Cfs7 ( role , Item ) 
	local i = 7 
	local sk_add = SK_CFS         
	local sailexp_req = sk_cfs [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Cfs8 ( role , Item ) 
	local i = 8 
	local sk_add = SK_CFS         
	local sailexp_req = sk_cfs [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Cfs9 ( role , Item ) 
	local i = 9 
	local sk_add = SK_CFS         
	local sailexp_req = sk_cfs [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Cfs10 ( role , Item ) 
	local i = 10 
	local sk_add = SK_CFS         
	local sailexp_req = sk_cfs [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Ctqh1 ( role , Item ) 
	local i = 1 
	local sk_add = SK_CTQH         
	local sailexp_req = sk_ctqh [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Ctqh2 ( role , Item ) 
	local i = 2 
	local sk_add = SK_CTQH         
	local sailexp_req = sk_ctqh [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Ctqh3 ( role , Item ) 
	local i = 3 
	local sk_add = SK_CTQH         
	local sailexp_req = sk_ctqh [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Ctqh4 ( role , Item ) 
	local i = 4 
	local sk_add = SK_CTQH         
	local sailexp_req = sk_ctqh [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 

end

function Sk_Script_Ctqh5 ( role , Item ) 
	local i = 5 
	local sk_add = SK_CTQH         
	local sailexp_req = sk_ctqh [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Ctqh6 ( role , Item ) 
	local i = 6 
	local sk_add = SK_CTQH         
	local sailexp_req = sk_ctqh [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Ctqh7 ( role , Item ) 
	local i = 7 
	local sk_add = SK_CTQH         
	local sailexp_req = sk_ctqh [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Ctqh8 ( role , Item ) 
	local i = 8 
	local sk_add = SK_CTQH         
	local sailexp_req = sk_ctqh [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Ctqh9 ( role , Item ) 
	local i = 9 
	local sk_add = SK_CTQH         
	local sailexp_req = sk_ctqh [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Ctqh10 ( role , Item ) 
	local i = 10 
	local sk_add = SK_CTQH         
	local sailexp_req = sk_ctqh [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Bjkr1 ( role , Item ) 
	local i = 1 
	local sk_add = SK_BJKR         
	local sailexp_req = sk_bjkr [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Bjkr2 ( role , Item ) 
	local i = 2 
	local sk_add = SK_BJKR         
	local sailexp_req = sk_bjkr [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Bjkr3 ( role , Item ) 
	local i = 3 
	local sk_add = SK_BJKR         
	local sailexp_req = sk_bjkr [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Bjkr4 ( role , Item ) 
	local i = 4 
	local sk_add = SK_BJKR         
	local sailexp_req = sk_bjkr [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Bjkr5 ( role , Item ) 
	local i = 5 
	local sk_add = SK_BJKR         
	local sailexp_req = sk_bjkr [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Bjkr6 ( role , Item ) 
	local i = 6 
	local sk_add = SK_BJKR         
	local sailexp_req = sk_bjkr [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Bjkr7 ( role , Item ) 
	local i = 7 
	local sk_add = SK_BJKR         
	local sailexp_req = sk_bjkr [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Bjkr8 ( role , Item ) 
	local i = 8 
	local sk_add = SK_BJKR         
	local sailexp_req = sk_bjkr [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Bjkr9 ( role , Item ) 
	local i = 9 
	local sk_add = SK_BJKR         
	local sailexp_req = sk_bjkr [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Bjkr10 ( role , Item ) 
	local i = 10 
	local sk_add = SK_BJKR         
	local sailexp_req = sk_bjkr [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_By ( role , Item )										--���ܲ���
	local sk_add = SK_BY         
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end


function Sk_Script_Dl ( role , Item )											--���ܴ���
	local sk_add = SK_DL         
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end

function Sk_Script_Btjn ( role , Item )										---���ܰ�̯
	local sk_add = SK_BAT         
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end

function Sk_Script_Pkqx ( role , Item )
	local sk_add = SK_PKQX         
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end

----�سǾ���-----------------------------------------------------------------------------------------------------------------------------------------

function Jz_Script_hc(role, Item )
	local i = CheckBagItem(role,3141)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "�����Ǽ����۵����飬�뱣��100����hp��spŶ")
		UseItemFailed ( role )
		return
	end
------MoveCity���Ӽ������ж�
	local map_name = GetChaMapName ( role )
	if map_name == "prisonisland" then
		SystemNotice ( role , "��ǰ��ͼ���ܴ���" )
		UseItemFailed ( role )
		return
	end
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3141,1)
			if j == 1 then
				MoveCity(role,"")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
	
end
----�������;���-------------------------------------------------------------------------------------------------------------------------------------
function Jz_Script_bycs(role, Item )
	local i = CheckBagItem(role,4602)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "�����Ǽ����۵����飬�뱣��100����hp��spŶ")
		UseItemFailed ( role )
		return
	end
------MoveCity���Ӽ������ж�
	local map_name = GetChaMapName ( role )
	if map_name == "prisonisland" then
		SystemNotice ( role , "��ǰ��ͼ���ܴ���" )
		UseItemFailed ( role )
		return
	end
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,4602,1)
			if j == 1 then
				MoveCity(role,"������")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end
----ɳᰴ��;���--------------------------------------------------------------------------------------------------------------------------------------
function Jz_Script_slcs(role, Item )
	local i = CheckBagItem(role,4603)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "�����Ǽ����۵����飬�뱣��100����hp��spŶ")
		UseItemFailed ( role )
		return
	end
------MoveCity���Ӽ������ж�
	local map_name = GetChaMapName ( role )
	if map_name == "prisonisland" then
		SystemNotice ( role , "��ǰ��ͼ���ܴ���" )
		UseItemFailed ( role )
		return
	end
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,4603,1)
			if j == 1 then
				MoveCity(role,"ɳᰳ�")
				return
			end
		end
	else
		UseItemFailed ( role )
	end

end
----���Ǵ��;���--------------------------------------------------------------------------------------------------------------------------------------
function Jz_Script_blbcs(role, Item )
	local i = CheckBagItem(role,4604)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "�����Ǽ����۵����飬�뱣��100����hp��spŶ")
		UseItemFailed ( role )
		return
	end 
------MoveCity���Ӽ������ж�
	local map_name = GetChaMapName ( role )
	if map_name == "prisonisland" then
		SystemNotice ( role , "��ǰ��ͼ���ܴ���" )
		UseItemFailed ( role )
		return
	end
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,4604,1)
			if j == 1 then
				MoveCity(role,"���Ǳ�")
				return
			end
		end
	else
		UseItemFailed ( role )
	end

end
----�������;���-------------------------------------------------------------------------------------------------------------------------------------
function Jz_Script_cfzs(role, Item )
	local i = CheckBagItem(role,332)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "�����Ǽ����۵����飬�뱣��100����hp��spŶ")
		UseItemFailed ( role )
		return
	end
------MoveCity���Ӽ������ж�
	local map_name = GetChaMapName ( role )
	if map_name == "prisonisland" then
		SystemNotice ( role , "��ǰ��ͼ���ܴ���" )
		UseItemFailed ( role )
		return
	end
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,332,1)
			if j == 1 then
				MoveCity(role,"������")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

--ľ����ʹ��Ч��------------------------------------------------------------------------------------------------------------------

function ItemUse_Wood ( role , Item ) 
	local k = ChaIsBoat ( role ) 
	if k == 0 then 
		UseItemFailed ( role ) 
		SystemNotice ( role , "����Ʒֻ���ڴ�ֻ����ʱʹ��" )
		return 
	end 
	local hp = GetChaAttr ( role , ATTR_HP ) 
	local mxhp = GetChaAttr ( role, ATTR_MXHP ) 
	if hp < 0 then 
		UseItemFailed ( role ) 
		SystemNotice ( role , "��ֻ�ѳ�û���޷�ʹ����Ʒ" ) 
	end 
	local statelv = 1
	local statetime = 63
	AddState ( role , role , STATE_MCK , statelv , statetime )
	
 

end 

function State_MCK_Add ( role , statelv ) 
	local hpdmg = -100   
	Hp_Endure_Dmg ( role , hpdmg ) 
	ALLExAttrSet(role)  
end 

function State_MCK_Rem ( role , statelv ) 
end

--����ʹ��Ч��------------------------------------------------------------------------------------------------------------------

function ItemUse_Fish ( role , Item ) 
	local k = ChaIsBoat ( role ) 
	if k == 0 then 
		UseItemFailed ( role ) 
		SystemNotice ( role , "����Ʒֻ���ڴ�ֻ����ʱʹ��" )
		return 
	end 
	local sp = GetChaAttr ( role , ATTR_SP ) 
	local mxsp = GetChaAttr ( role, ATTR_MXSP ) 
	local hp = GetChaAttr ( role , ATTR_HP ) 
	local mxhp = GetChaAttr ( role, ATTR_MXHP ) 
	if hp < 0 then 
		UseItemFailed ( role ) 
		SystemNotice ( role , "��ֻ�ѳ�û���޷�ʹ����Ʒ" ) 
	end 
	local sp_resume = 50 
	sp = math.min ( mxsp , sp + sp_resume  ) 
	SetCharaAttr ( sp , role , ATTR_SP ) 
end 

----�±�ʹ��Ч��------------------------------------------------------------------------------------------------------------------
function ItemUse_YB ( role , Item )
	local exp = Exp ( role )
	local charLv=Lv ( role )
	local exp_new = 0
	if charLv >= 80 then
		exp_new = exp + 6
	else
		exp_new = exp + 300		
	end
	SetCharaAttr ( exp_new , role , ATTR_CEXP )
end
--�������䡪������������������������������������������������������������������������������������������������������������������������������

function ItemUse_HLBX ( role , Item )
	local item_type = BaoXiang_HLBX 
	local item_type_rad = BaoXiang_HLBX_Rad 
	local item_type_count = BaoXiang_HLBX_Count 
	local maxitem = BaoXiang_HLBX_Mxcount						-- �ս���
	local item_quality = BaoXiang_HLBX_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬���俪��ʧ��")
		UseItemFailed ( role )
		return
	end

	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General		
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1							--������Ʒ���
	for k = 1 , maxitem , 1 do				-- �������ӵ�ǰ׺���

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break 
		end 
		b = d 
	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
	--local itemname = GetItemName ( ItemId ) 
	--local cha_name = GetChaDefaultName ( role ) 
	--local message = cha_name.."�������侪ϲ�ػ��"..itemname  
	--Notice ( message )
end 


--���ر��䡪������������������������������������������������������������������������������������������������������������������������������

function ItemUse_SMBX ( role , Item )
	local item_type = BaoXiang_SMBX 
	local item_type_rad = BaoXiang_SMBX_Rad 
	local item_type_count = BaoXiang_SMBX_Count 
	local maxitem = BaoXiang_SMBX_Mxcount						-- �ս���
	local item_quality = BaoXiang_SMBX_Qua
	local General = 0  
	local ItemId = 0 
	
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬���俪��ʧ��")
		UseItemFailed ( role )
		return
	end
	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General		
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1							--������Ʒ���
	for k = 1 , maxitem , 1 do				-- �������ӵ�ǰ׺���

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break 
		end 
		b = d 

	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
	--local itemname = GetItemName ( ItemId ) 
	--local cha_name = GetChaDefaultName ( role ) 
	--local message = cha_name.."�������侪ϲ�ػ��"..itemname  
	--Notice ( message )
end 


--��豦��----------------------------------------------------------------

function ItemUse_SYBOX ( role , Item )
	local item_type = BaoXiang_SYBOX 
	local item_type_rad = BaoXiang_SYBOX_Rad 
	local item_type_count = BaoXiang_SYBOX_Count 
	local maxitem = BaoXiang_SYBOX_Mxcount						-- �ս���
	local item_quality = BaoXiang_SYBOX_Qua
	local General = 0  
	local ItemId = 0 
	
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬���俪��ʧ��")
		UseItemFailed ( role )
		return
	end
	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General		
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1							--������Ʒ���
	for k = 1 , maxitem , 1 do				-- �������ӵ�ǰ׺���

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break 
		end 
		b = d 

	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
	 if   ItemId >= 0183 and  ItemId <= 0199   then
	 
		local itemname = GetItemName ( ItemId ) 
		local cha_name = GetChaDefaultName ( role ) 
		local message = cha_name.."�������侪ϲ�ػ��"..itemname  
 		Notice ( message )
	end
end




----������----------------------------------------------------------------------------------------------

function ItemUse_WZX ( role , Item )
	local item_type = BaoXiang_WZX 
	local item_type_rad = BaoXiang_WZX_Rad 
	local item_type_count = BaoXiang_WZX_Count 
	local maxitem = BaoXiang_WZX_Mxcount						-- �ս���
	local item_quality = BaoXiang_WZX_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬���俪��ʧ��")
		UseItemFailed ( role )
		return
	end
	
	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General		
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1							--������Ʒ���
	for k = 1 , maxitem , 1 do				-- �������ӵ�ǰ׺���

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break 
		end 
		b = d 


	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
--	local itemname = GetItemName ( ItemId ) 
--	local cha_name = GetChaDefaultName ( role ) 
--	local message = cha_name.."���������侪ϲ�ػ��"..itemname  
--	Notice ( message )
end

--����֮��ʿ���䡪������������������������������������������������������������������������������������������������������������������������������

function ItemUse_KLJS ( role , Item )
	local item_type = BaoXiang_KLJS 
	local item_type_rad = BaoXiang_KLJS_Rad 
	local item_type_count = BaoXiang_KLJS_Count 
	local maxitem = BaoXiang_KLJS_Mxcount						-- �ս���
	local item_quality = BaoXiang_KLJS_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬���俪��ʧ��")
		UseItemFailed ( role )
		return
	end
	
	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General		
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1							--������Ʒ���
	for k = 1 , maxitem , 1 do				-- �������ӵ�ǰ׺���

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break 
		end 
		b = d 

	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.."�������侪ϲ�ػ��"..itemname  
	Notice ( message )
end 

--����֮���˱��䡪������������������������������������������������������������������������������������������������������������������������������

function ItemUse_KLLR ( role , Item )
	local item_type = BaoXiang_KLLR 
	local item_type_rad = BaoXiang_KLLR_Rad 
	local item_type_count = BaoXiang_KLLR_Count 
	local maxitem = BaoXiang_KLLR_Mxcount						-- �ս���
	local item_quality = BaoXiang_KLLR_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬���俪��ʧ��")
		UseItemFailed ( role )
		return
	end
	
	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General		
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1							--������Ʒ���
	for k = 1 , maxitem , 1 do				-- �������ӵ�ǰ׺���

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break 
		end 
		b = d 

	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.."�������侪ϲ�ػ��"..itemname  
	Notice ( message )
end 

--����֮ҽ�����䡪������������������������������������������������������������������������������������������������������������������������������

function ItemUse_KLYS ( role , Item )
	local item_type = BaoXiang_KLYS 
	local item_type_rad = BaoXiang_KLYS_Rad 
	local item_type_count = BaoXiang_KLYS_Count 
	local maxitem = BaoXiang_KLYS_Mxcount						-- �ս���
	local item_quality = BaoXiang_KLYS_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬���俪��ʧ��")
		UseItemFailed ( role )
		return
	end
	
	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General		
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1							--������Ʒ���
	for k = 1 , maxitem , 1 do				-- �������ӵ�ǰ׺���

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break 
		end 
		b = d 

	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.."�������侪ϲ�ػ��"..itemname  
	Notice ( message )
end

--����֮ð���߱��䡪������������������������������������������������������������������������������������������������������������������������������

function ItemUse_KLMX ( role , Item )
	local item_type = BaoXiang_KLMX 
	local item_type_rad = BaoXiang_KLMX_Rad 
	local item_type_count = BaoXiang_KLMX_Count 
	local maxitem = BaoXiang_KLMX_Mxcount						-- �ս���
	local item_quality = BaoXiang_KLMX_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬���俪��ʧ��")
		UseItemFailed ( role )
		return
	end
	
	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General		
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1							--������Ʒ���
	for k = 1 , maxitem , 1 do				-- �������ӵ�ǰ׺���

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break 
		end 
		b = d 

	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.."�������侪ϲ�ػ��"..itemname  
	Notice ( message )
end


--����֮˫��ʿװ���䡪������������������������������������������������������������������������������������������������������������������������������

function ItemUse_ZSSJ ( role , Item )
	local item_type = BaoXiang_ZSSJ 
	local item_type_rad = BaoXiang_ZSSJ_Rad 
	local item_type_count = BaoXiang_ZSSJ_Count 
	local maxitem = BaoXiang_ZSSJ_Mxcount						-- �ս���
	local item_quality = BaoXiang_ZSSJ_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬���俪��ʧ��")
		UseItemFailed ( role )
		return
	end
	
	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General		
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1							--������Ʒ���
	for k = 1 , maxitem , 1 do				-- �������ӵ�ǰ׺���

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break 
		end 
		b = d 

	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.."�������侪ϲ�ػ��"..itemname  
	Notice ( message )
end

--����֮�޽�ʿװ���䡪������������������������������������������������������������������������������������������������������������������������������

function ItemUse_ZSJS ( role , Item )
	local item_type = BaoXiang_ZSJS 
	local item_type_rad = BaoXiang_ZSJS_Rad 
	local item_type_count = BaoXiang_ZSJS_Count 
	local maxitem = BaoXiang_ZSJS_Mxcount						-- �ս���
	local item_quality = BaoXiang_ZSJS_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬���俪��ʧ��")
		UseItemFailed ( role )
		return
	end
	
	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General		
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1							--������Ʒ���
	for k = 1 , maxitem , 1 do				-- �������ӵ�ǰ׺���

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break 
		end 
		b = d 

	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.."�������侪ϲ�ػ��"..itemname  
	Notice ( message )
end


--����֮�ѻ���װ���䡪������������������������������������������������������������������������������������������������������������������������������

function ItemUse_ZSJJ ( role , Item )
	local item_type = BaoXiang_ZSJJ
	local item_type_rad = BaoXiang_ZSJJ_Rad 
	local item_type_count = BaoXiang_ZSJJ_Count 
	local maxitem = BaoXiang_ZSJJ_Mxcount						-- �ս���
	local item_quality = BaoXiang_ZSJJ_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬���俪��ʧ��")
		UseItemFailed ( role )
		return
	end
	
	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General		
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1							--������Ʒ���
	for k = 1 , maxitem , 1 do				-- �������ӵ�ǰ׺���

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break 
		end 
		b = d 

	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.."�������侪ϲ�ػ��"..itemname  
	Notice ( message )
end


--����֮ʥְ��װ���䡪������������������������������������������������������������������������������������������������������������������������������

function ItemUse_ZSSZ ( role , Item )
	local item_type = BaoXiang_ZSSZ
	local item_type_rad = BaoXiang_ZSSZ_Rad 
	local item_type_count = BaoXiang_ZSSZ_Count 
	local maxitem = BaoXiang_ZSSZ_Mxcount						-- �ս���
	local item_quality = BaoXiang_ZSSZ_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬���俪��ʧ��")
		UseItemFailed ( role )
		return
	end
	
	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General		
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1							--������Ʒ���
	for k = 1 , maxitem , 1 do				-- �������ӵ�ǰ׺���

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break 
		end 
		b = d 

	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.."�������侪ϲ�ػ��"..itemname  
	Notice ( message )
end


--����֮��ӡʦװ���䡪������������������������������������������������������������������������������������������������������������������������������

function ItemUse_ZSFY ( role , Item )
	local item_type = BaoXiang_ZSFY
	local item_type_rad = BaoXiang_ZSFY_Rad 
	local item_type_count = BaoXiang_ZSFY_Count 
	local maxitem = BaoXiang_ZSFY_Mxcount						-- �ս���
	local item_quality = BaoXiang_ZSFY_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬���俪��ʧ��")
		UseItemFailed ( role )
		return
	end
	
	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General		
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1							--������Ʒ���
	for k = 1 , maxitem , 1 do				-- �������ӵ�ǰ׺���

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break 
		end 
		b = d 

	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.."�������侪ϲ�ػ��"..itemname  
	Notice ( message )
end


--����֮����ʿװ���䡪������������������������������������������������������������������������������������������������������������������������������

function ItemUse_ZSHH ( role , Item )
	local item_type = BaoXiang_ZSHH
	local item_type_rad = BaoXiang_ZSHH_Rad 
	local item_type_count = BaoXiang_ZSHH_Count 
	local maxitem = BaoXiang_ZSHH_Mxcount						-- �ս���
	local item_quality = BaoXiang_ZSHH_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬���俪��ʧ��")
		UseItemFailed ( role )
		return
	end
	
	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General		
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1							--������Ʒ���
	for k = 1 , maxitem , 1 do				-- �������ӵ�ǰ׺���

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break 
		end 
		b = d 
	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.."�������侪ϲ�ػ��"..itemname  
	Notice ( message )
end

--����֮˫��ʿװ���䡪������������������������������������������������������������������������������������������������������������������������������

function ItemUse_HLSJ ( role , Item )
	local item_type = BaoXiang_HLSJ
	local item_type_rad = BaoXiang_HLSJ_Rad 
	local item_type_count = BaoXiang_HLSJ_Count 
	local maxitem = BaoXiang_HLSJ_Mxcount						-- �ս���
	local item_quality = BaoXiang_HLSJ_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬���俪��ʧ��")
		UseItemFailed ( role )
		return
	end
	
	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General		
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1							--������Ʒ���
	for k = 1 , maxitem , 1 do				-- �������ӵ�ǰ׺���

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break 
		end 
		b = d 
	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.."�������侪ϲ�ػ��"..itemname  
	Notice ( message )
end


--����֮�޽�ʿװ���䡪������������������������������������������������������������������������������������������������������������������������������

function ItemUse_HLJS ( role , Item )
	local item_type = BaoXiang_HLJS
	local item_type_rad = BaoXiang_HLJS_Rad 
	local item_type_count = BaoXiang_HLJS_Count 
	local maxitem = BaoXiang_HLJS_Mxcount						-- �ս���
	local item_quality = BaoXiang_HLJS_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬���俪��ʧ��")
		UseItemFailed ( role )
		return
	end
	
	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General		
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1							--������Ʒ���
	for k = 1 , maxitem , 1 do				-- �������ӵ�ǰ׺���

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break 
		end 
		b = d 
	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.."�������侪ϲ�ػ��"..itemname  
	Notice ( message )
end


--����֮�ѻ���װ���䡪������������������������������������������������������������������������������������������������������������������������������

function ItemUse_HLJJ ( role , Item )
	local item_type = BaoXiang_HLJJ
	local item_type_rad = BaoXiang_HLJJ_Rad 
	local item_type_count = BaoXiang_HLJJ_Count 
	local maxitem = BaoXiang_HLJJ_Mxcount						-- �ս���
	local item_quality = BaoXiang_HLJJ_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬���俪��ʧ��")
		UseItemFailed ( role )
		return
	end
	
	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General		
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1							--������Ʒ���
	for k = 1 , maxitem , 1 do				-- �������ӵ�ǰ׺���

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break 
		end 
		b = d 
	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.."�������侪ϲ�ػ��"..itemname  
	Notice ( message )
end

--����֮ʥְ��װ���䡪������������������������������������������������������������������������������������������������������������������������������

function ItemUse_HLSZ ( role , Item )
	local item_type = BaoXiang_HLSZ
	local item_type_rad = BaoXiang_HLSZ_Rad 
	local item_type_count = BaoXiang_HLSZ_Count 
	local maxitem = BaoXiang_HLSZ_Mxcount						-- �ս���
	local item_quality = BaoXiang_HLSZ_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬���俪��ʧ��")
		UseItemFailed ( role )
		return
	end
	
	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General		
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1							--������Ʒ���
	for k = 1 , maxitem , 1 do				-- �������ӵ�ǰ׺���

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break 
		end 
		b = d 
	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.."�������侪ϲ�ػ��"..itemname  
	Notice ( message )
end

--����֮��ӡʦװ���䡪������������������������������������������������������������������������������������������������������������������������������

function ItemUse_HLFY ( role , Item )
	local item_type = BaoXiang_HLFY
	local item_type_rad = BaoXiang_HLFY_Rad 
	local item_type_count = BaoXiang_HLFY_Count 
	local maxitem = BaoXiang_HLFY_Mxcount						-- �ս���
	local item_quality = BaoXiang_HLFY_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬���俪��ʧ��")
		UseItemFailed ( role )
		return
	end
	
	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General		
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1							--������Ʒ���
	for k = 1 , maxitem , 1 do				-- �������ӵ�ǰ׺���

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break 
		end 
		b = d 
	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.."�������侪ϲ�ػ��"..itemname  
	Notice ( message )
end

--����֮����ʿװ���䡪������������������������������������������������������������������������������������������������������������������������������

function ItemUse_HLHH ( role , Item )
	local item_type = BaoXiang_HLHH
	local item_type_rad = BaoXiang_HLHH_Rad 
	local item_type_count = BaoXiang_HLHH_Count 
	local maxitem = BaoXiang_HLHH_Mxcount						-- �ս���
	local item_quality = BaoXiang_HLHH_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬���俪��ʧ��")
		UseItemFailed ( role )
		return
	end
	
	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General		
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1							--������Ʒ���
	for k = 1 , maxitem , 1 do				-- �������ӵ�ǰ׺���

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break 
		end 
		b = d 
	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.."�������侪ϲ�ػ��"..itemname  
	Notice ( message )
end

--��֮˫��ʿװ���䡪������������������������������������������������������������������������������������������������������������������������������

function ItemUse_MSJ ( role , Item )
	local item_type = BaoXiang_MSJ
	local item_type_rad = BaoXiang_MSJ_Rad 
	local item_type_count = BaoXiang_MSJ_Count 
	local maxitem = BaoXiang_MSJ_Mxcount						-- �ս���
	local item_quality = BaoXiang_MSJ_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬���俪��ʧ��")
		UseItemFailed ( role )
		return
	end
	
	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General		
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1							--������Ʒ���
	for k = 1 , maxitem , 1 do				-- �������ӵ�ǰ׺���

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break 
		end 
		b = d 
	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.."�������侪ϲ�ػ��"..itemname  
	Notice ( message )
end

--��֮�޽�ʿװ���䡪������������������������������������������������������������������������������������������������������������������������������

function ItemUse_MJS ( role , Item )
	local item_type = BaoXiang_MJS
	local item_type_rad = BaoXiang_MJS_Rad 
	local item_type_count = BaoXiang_MJS_Count 
	local maxitem = BaoXiang_MJS_Mxcount						-- �ս���
	local item_quality = BaoXiang_MJS_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬���俪��ʧ��")
		UseItemFailed ( role )
		return
	end
	
	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General		
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1							--������Ʒ���
	for k = 1 , maxitem , 1 do				-- �������ӵ�ǰ׺���

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break 
		end 
		b = d 
	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.."�������侪ϲ�ػ��"..itemname  
	Notice ( message )
end


--��֮�ѻ���װ���䡪������������������������������������������������������������������������������������������������������������������������������

function ItemUse_MJJ ( role , Item )
	local item_type = BaoXiang_MJJ
	local item_type_rad = BaoXiang_MJJ_Rad 
	local item_type_count = BaoXiang_MJJ_Count 
	local maxitem = BaoXiang_MJJ_Mxcount						-- �ս���
	local item_quality = BaoXiang_MJJ_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬���俪��ʧ��")
		UseItemFailed ( role )
		return
	end
	
	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General		
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1							--������Ʒ���
	for k = 1 , maxitem , 1 do				-- �������ӵ�ǰ׺���

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break 
		end 
		b = d 
	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.."�������侪ϲ�ػ��"..itemname  
	Notice ( message )
end

--��֮ʥְ��װ���䡪������������������������������������������������������������������������������������������������������������������������������

function ItemUse_MSZ ( role , Item )
	local item_type = BaoXiang_MSZ
	local item_type_rad = BaoXiang_MSZ_Rad 
	local item_type_count = BaoXiang_MSZ_Count 
	local maxitem = BaoXiang_MSZ_Mxcount						-- �ս���
	local item_quality = BaoXiang_MSZ_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬���俪��ʧ��")
		UseItemFailed ( role )
		return
	end
	
	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General		
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1							--������Ʒ���
	for k = 1 , maxitem , 1 do				-- �������ӵ�ǰ׺���

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break 
		end 
		b = d 
	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.."�������侪ϲ�ػ��"..itemname  
	Notice ( message )
end

--��֮��ӡʦװ���䡪������������������������������������������������������������������������������������������������������������������������������

function ItemUse_MFY ( role , Item )
	local item_type = BaoXiang_MFY
	local item_type_rad = BaoXiang_MFY_Rad 
	local item_type_count = BaoXiang_MFY_Count 
	local maxitem = BaoXiang_MFY_Mxcount						-- �ս���
	local item_quality = BaoXiang_MFY_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬���俪��ʧ��")
		UseItemFailed ( role )
		return
	end
	
	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General		
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1							--������Ʒ���
	for k = 1 , maxitem , 1 do				-- �������ӵ�ǰ׺���

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break 
		end 
		b = d 
	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.."�������侪ϲ�ػ��"..itemname  
	Notice ( message )
end

--��֮����ʿװ���䡪������������������������������������������������������������������������������������������������������������������������������

function ItemUse_MHH ( role , Item )
	local item_type = BaoXiang_MHH
	local item_type_rad = BaoXiang_MHH_Rad 
	local item_type_count = BaoXiang_MHH_Count 
	local maxitem = BaoXiang_MHH_Mxcount						-- �ս���
	local item_quality = BaoXiang_MHH_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬���俪��ʧ��")
		UseItemFailed ( role )
		return
	end
	
	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General		
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1							--������Ʒ���
	for k = 1 , maxitem , 1 do				-- �������ӵ�ǰ׺���

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break 
		end 
		b = d 
	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.."�������侪ϲ�ػ��"..itemname  
	Notice ( message )
end

--���鱦�䡪������������������������������������������������������������������������������������������������������������������������������

function ItemUse_FLBX ( role , Item )
	local item_type = BaoXiang_FLBX
	local item_type_rad = BaoXiang_FLBX_Rad 
	local item_type_count = BaoXiang_FLBX_Count 
	local maxitem = BaoXiang_FLBX_Mxcount						-- �ս���
	local item_quality = BaoXiang_FLBX_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬���俪��ʧ��")
		UseItemFailed ( role )
		return
	end
	
	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General		
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1							--������Ʒ���
	for k = 1 , maxitem , 1 do				-- �������ӵ�ǰ׺���

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break 
		end 
		b = d 
	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.."�������侪ϲ�ػ��"..itemname  
	Notice ( message )
end

--�����䡪������������������������������������������������������������������������������������������������������������������������������

function ItemUse_ZZBX ( role , Item )
	local item_type = BaoXiang_ZZBX
	local item_type_rad = BaoXiang_ZZBX_Rad 
	local item_type_count = BaoXiang_ZZBX_Count 
	local maxitem = BaoXiang_ZZBX_Mxcount						-- �ս���
	local item_quality = BaoXiang_ZZBX_Qua
	local General = 0  
	local ItemId = 0 
	
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬���俪��ʧ��")
		UseItemFailed ( role )
		return
	end
	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General		
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1							--������Ʒ���
	for k = 1 , maxitem , 1 do				-- �������ӵ�ǰ׺���

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break 
		end 
		b = d 
	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.."�������侪ϲ�ػ��"..itemname  
	Notice ( message )
end

--ħ�����䡪������������������������������������������������������������������������������������������������������������������������������

function ItemUse_MFBX ( role , Item )
	local item_type = BaoXiang_MFBX
	local item_type_rad = BaoXiang_MFBX_Rad 
	local item_type_count = BaoXiang_MFBX_Count 
	local maxitem = BaoXiang_MFBX_Mxcount						-- �ս���
	local item_quality = BaoXiang_MFBX_Qua
	local General = 0  
	local ItemId = 0 
	
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬���俪��ʧ��")
		UseItemFailed ( role )
		return
	end
	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General		
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1							--������Ʒ���
	for k = 1 , maxitem , 1 do				-- �������ӵ�ǰ׺���

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break 
		end 
		b = d 
	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.."�������侪ϲ�ػ��"..itemname  
	Notice ( message )
end


--��֮����-------------------------------------------------------------------------

function ItemUse_MZBX ( role , Item )
	local item_type = BaoXiang_MZBX
	local item_type_rad = BaoXiang_MZBX_Rad 
	local item_type_count = BaoXiang_MZBX_Count 
	local maxitem = BaoXiang_MZBX_Mxcount						-- �ս���
	local item_quality = BaoXiang_MZBX_Qua
	local General = 0  
	local ItemId = 0 
	
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬���俪��ʧ��")
		UseItemFailed ( role )
		return
	end
	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General		
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1							--������Ʒ���
	for k = 1 , maxitem , 1 do				-- �������ӵ�ǰ׺���

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break 
		end 
		b = d 
	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.."�������侪ϲ�ػ��"..itemname  
	Notice ( message )
end


--ˮ��ʩ�š���������������������������������������������������������������������������������������������������

function  ItemUse_BOMB ( role , Item ) 
	local bomb = SummonCha ( role , 1 , 704 ) 
	local statetime = 10 
	local statelv = 1 
	AddState ( role , bomb , STATE_BOMB , statelv , statetime ) 
	AddChaSkill ( bomb , SK_BOMB , 1 , 1 , 0 ) 
	SystemNotice ( role , "����ˮ�׳ɹ�" ) 
end 



---PK����ҩƷ---------------------------------------------------------------------------------------------------

--��ţҩˮ--------
function ItemUse_PKMNYS ( role , Item )
	local statelv = 10
	local statetime = 1800
	AddState( role , role , STATE_PKMNYS , statelv , statetime )
end


--ս��ҩˮ--------
function ItemUse_PKZDYS ( role , Item )
	local statelv = 10
	local statetime = 150
	AddState( role , role , STATE_PKZDYS , statelv , statetime )
end

--��ҩˮ--------
function ItemUse_PKKBYS ( role , Item )
	local statelv = 10
	local statetime = 20
	AddState( role , role , STATE_PKKBYS , statelv , statetime )
end

--����ҩˮ---------
function ItemUse_PKJSYS ( role , Item )
	local statelv = 10
	local statetime = 180
	AddState( role , role , STATE_PKJSYS , statelv , statetime )
end

--ʯ��ҩˮ---------
function ItemUse_PKSFYS ( role , Item )
	local statelv = 10
	local statetime = 300
	AddState( role , role , STATE_PKSFYS , statelv , statetime )
end

--��׼ҩˮ--------
function ItemUse_PKJZYS ( role , Item )
	local statelv = 10
	local statetime = 900
	AddState( role , role , STATE_PKJZYS , statelv , statetime )
end

--����ҩˮ--------
function ItemUse_PKWDYS ( role , Item )
	local statelv = 10
	local statetime = 15
	AddState( role , role , STATE_PKWD , statelv , statetime )
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.."�����޵�״̬15��"  
	Notice ( message )
end

--�߼�ľ����-------
function ItemUse_PKMCK ( role , Item )
	local map_name = GetChaMapName ( role )
	if map_name == "secretgarden" then
		local hpdmg = -500   
		Hp_Endure_Dmg ( role , hpdmg ) 
		ALLExAttrSet(role)
	else
		SystemNotice ( role , "����Ʒֻ���ھ�����԰ʹ�òŻ���Ч" )
	end
end



--------������Ʒ-------------------------------------------------------------------------------------------
--��������Ʊ

function Jz_Script_ltcs(role, Item )
	local i = CheckBagItem(role,3828)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "�����Ǽ����۵����飬�뱣��100����hp��spŶ")
		UseItemFailed ( role )
		return
	end 
------MoveCity���Ӽ������ж�
	local map_name = GetChaMapName ( role )
	if map_name == "prisonisland" then
		SystemNotice ( role , "��ǰ��ͼ���ܴ���" )
		UseItemFailed ( role )
		return
	end
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3828,1)
			if j == 1 then
				MoveCity(role,"������")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end



--���������ۻ�Ʊ
function Jz_Script_ltjgcs(role, Item )
	local i = CheckBagItem(role,3829)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "�����Ǽ����۵����飬�뱣��100����hp��spŶ")
		UseItemFailed ( role )
		return
	end
------MoveCity���Ӽ������ж�
	local map_name = GetChaMapName ( role )
	if map_name == "prisonisland" then
		SystemNotice ( role , "��ǰ��ͼ���ܴ���" )
		UseItemFailed ( role )
		return
	end
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3829,1)
			if j == 1 then
				MoveCity(role,"����������")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end


--ʥѩɽ��Ʊ

function Jz_Script_sxscs(role, Item )
	local i = CheckBagItem(role,3830)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "�����Ǽ����۵����飬�뱣��100����hp��spŶ")
		UseItemFailed ( role )
		return
	end 
------MoveCity���Ӽ������ж�
	local map_name = GetChaMapName ( role )
	if map_name == "prisonisland" then
		SystemNotice ( role , "��ǰ��ͼ���ܴ���" )
		UseItemFailed ( role )
		return
	end
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3830,1)
			if j == 1 then
				MoveCity(role,"ʥѩɽ")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

--����ɭ�ֲ���վ��Ʊ

function Jz_Script_laslcs(role, Item )
	local i = CheckBagItem(role,3831)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "�����Ǽ����۵����飬�뱣��100����hp��spŶ")
		UseItemFailed ( role )
		return
	end
------MoveCity���Ӽ������ж�
	local map_name = GetChaMapName ( role )
	if map_name == "prisonisland" then
		SystemNotice ( role , "��ǰ��ͼ���ܴ���" )
		UseItemFailed ( role )
		return
	end
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3831,1)
			if j == 1 then
				MoveCity(role,"����ɭ�ֲ���վ")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

--ɳȪ����վ��Ʊ
function Jz_Script_sqcs(role, Item )
	local i = CheckBagItem(role,3832)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "�����Ǽ����۵����飬�뱣��100����hp��spŶ")
		UseItemFailed ( role )
		return
	end
------MoveCity���Ӽ������ж�
	local map_name = GetChaMapName ( role )
	if map_name == "prisonisland" then
		SystemNotice ( role , "��ǰ��ͼ���ܴ���" )
		UseItemFailed ( role )
		return
	end
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3832,1)
			if j == 1 then
				MoveCity(role,"ɳȪ����վ")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

--��������վ��Ʊ

function Jz_Script_bjcs(role, Item )
	local i = CheckBagItem(role,3833)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "�����Ǽ����۵����飬�뱣��100����hp��spŶ")
		UseItemFailed ( role )
		return
	end
------MoveCity���Ӽ������ж�
	local map_name = GetChaMapName ( role )
	if map_name == "prisonisland" then
		SystemNotice ( role , "��ǰ��ͼ���ܴ���" )
		UseItemFailed ( role )
		return
	end
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3833,1)
			if j == 1 then
				MoveCity(role,"��������վ")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

--��į֮����ڻ�Ʊ

function Jz_Script_jmztcs(role, Item )
	local i = CheckBagItem(role,3834)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "�����Ǽ����۵����飬�뱣��100����hp��spŶ")
		UseItemFailed ( role )
		return
	end
------MoveCity���Ӽ������ж�
	local map_name = GetChaMapName ( role )
	if map_name == "prisonisland" then
		SystemNotice ( role , "��ǰ��ͼ���ܴ���" )
		UseItemFailed ( role )
		return
	end
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3834,1)
			if j == 1 then
				MoveCity(role,"��į֮�����")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

--ɳ����ڻ�Ʊ
function Jz_Script_scrkcs(role, Item )
	local i = CheckBagItem(role,3835)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "�����Ǽ����۵����飬�뱣��100����hp��spŶ")
		UseItemFailed ( role )
		return
	end
------MoveCity���Ӽ������ж�
	local map_name = GetChaMapName ( role )
	if map_name == "prisonisland" then
		SystemNotice ( role , "��ǰ��ͼ���ܴ���" )
		UseItemFailed ( role )
		return
	end
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3835,1)
			if j == 1 then
				MoveCity(role,"ɳ�����")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

--�Ͽ�2���Ʊ

function Jz_Script_fk2cs(role, Item )
	local i = CheckBagItem(role,3836)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "�����Ǽ����۵����飬�뱣��100����hp��spŶ")
		UseItemFailed ( role )
		return
	end
------MoveCity���Ӽ������ж�
	local map_name = GetChaMapName ( role )
	if map_name == "prisonisland" then
		SystemNotice ( role , "��ǰ��ͼ���ܴ���" )
		UseItemFailed ( role )
		return
	end
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3836,1)
			if j == 1 then
				MoveCity(role,"�Ͽ�2��")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

--����2���Ʊ

function Jz_Script_yk2cs(role, Item )
	local i = CheckBagItem(role,3837)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "�����Ǽ����۵����飬�뱣��100����hp��spŶ")
		UseItemFailed ( role )
		return
	end
------MoveCity���Ӽ������ж�
	local map_name = GetChaMapName ( role )
	if map_name == "prisonisland" then
		SystemNotice ( role , "��ǰ��ͼ���ܴ���" )
		UseItemFailed ( role )
		return
	end
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3837,1)
			if j == 1 then
				MoveCity(role,"����2��")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

--����3���Ʊ

function Jz_Script_yk3cs(role, Item )
	local i = CheckBagItem(role,3838)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "�����Ǽ����۵����飬�뱣��100����hp��spŶ")
		UseItemFailed ( role )
		return
	end
------MoveCity���Ӽ������ж�
	local map_name = GetChaMapName ( role )
	if map_name == "prisonisland" then
		SystemNotice ( role , "��ǰ��ͼ���ܴ���" )
		UseItemFailed ( role )
		return
	end
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3838,1)
			if j == 1 then
				MoveCity(role,"����3��")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

--��į֮��2��Ʊ

function Jz_Script_jmzt2cs(role, Item )
	local i = CheckBagItem(role,3839)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "�����Ǽ����۵����飬�뱣��100����hp��spŶ")
		UseItemFailed ( role )
		return
	end
------MoveCity���Ӽ������ж�
	local map_name = GetChaMapName ( role )
	if map_name == "prisonisland" then
		SystemNotice ( role , "��ǰ��ͼ���ܴ���" )
		UseItemFailed ( role )
		return
	end
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3839,1)
			if j == 1 then
				MoveCity(role,"��į֮��2")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end
--��į֮��3��Ʊ

function Jz_Script_jmzt3cs(role, Item )
	local i = CheckBagItem(role,3840)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "�����Ǽ����۵����飬�뱣��100����hp��spŶ")
		UseItemFailed ( role )
		return
	end
------MoveCity���Ӽ������ж�
	local map_name = GetChaMapName ( role )
	if map_name == "prisonisland" then
		SystemNotice ( role , "��ǰ��ͼ���ܴ���" )
		UseItemFailed ( role )
		return
	end
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3840,1)
			if j == 1 then
				MoveCity(role,"��į֮��3")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end
--��į֮��4��Ʊ
function Jz_Script_jmzt4cs(role, Item )
	local i = CheckBagItem(role,3841)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "�����Ǽ����۵����飬�뱣��100����hp��spŶ")
		UseItemFailed ( role )
		return
	end 
------MoveCity���Ӽ������ж�
	local map_name = GetChaMapName ( role )
	if map_name == "prisonisland" then
		SystemNotice ( role , "��ǰ��ͼ���ܴ���" )
		UseItemFailed ( role )
		return
	end
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3841,1)
			if j == 1 then
				MoveCity(role,"��į֮��4")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end
--��į֮��5��Ʊ

function Jz_Script_jmzt5cs(role, Item )
	local i = CheckBagItem(role,3842)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "�����Ǽ����۵����飬�뱣��100����hp��spŶ")
		UseItemFailed ( role )
		return
	end
------MoveCity���Ӽ������ж�
	local map_name = GetChaMapName ( role )
	if map_name == "prisonisland" then
		SystemNotice ( role , "��ǰ��ͼ���ܴ���" )
		UseItemFailed ( role )
		return
	end
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3842,1)
			if j == 1 then
				MoveCity(role,"��į֮��5")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end
--��į֮��6��Ʊ
function Jz_Script_jmzt6cs(role, Item )
	local i = CheckBagItem(role,3843)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "�����Ǽ����۵����飬�뱣��100����hp��spŶ")
		UseItemFailed ( role )
		return
	end
------MoveCity���Ӽ������ж�
	local map_name = GetChaMapName ( role )
	if map_name == "prisonisland" then
		SystemNotice ( role , "��ǰ��ͼ���ܴ���" )
		UseItemFailed ( role )
		return
	end
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3843,1)
			if j == 1 then
				MoveCity(role,"��į֮��6")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

--�Ͽ�1���Ʊ

function Jz_Script_fk1cs(role, Item )
	local i = CheckBagItem(role,3847)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "�����Ǽ����۵����飬�뱣��100����hp��spŶ")
		UseItemFailed ( role )
		return
	end
------MoveCity���Ӽ������ж�
	local map_name = GetChaMapName ( role )
	if map_name == "prisonisland" then
		SystemNotice ( role , "��ǰ��ͼ���ܴ���" )
		UseItemFailed ( role )
		return
	end
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3847,1)
			if j == 1 then
				MoveCity(role,"�Ͽ�1��")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end




--�������
function ItemUse_MoreExpGz( role , Item )
	local statelv = 1
	local ChaStateLv = GetChaStateLv ( role , STATE_SBJYGZ )
	
	if ChaStateLv > statelv then
		SystemNotice ( role , "��ʹ�ø��߼��Ĺ��ӣ����Ժ�����" )
		UseItemFailed ( role )
		return
	end

	local statetime = 900
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_SBJYGZ , statelv , statetime )
	else
		AddState( Cha_Boat , Cha_Boat , STATE_SBJYGZ , statelv , statetime )
	end
end


--��Ӿ������
function ItemUse_ZD_MoreExpGz( role , Item )
	local statelv = 1
	local ChaStateLv = GetChaStateLv ( role , STATE_ZDSBJYGZ )
	
	if ChaStateLv > statelv then
		SystemNotice ( role , "��ʹ�ø��߼��Ĺ��ӣ����Ժ�����" )
		UseItemFailed ( role )
		return
	end

	local statetime = 900
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_ZDSBJYGZ , statelv , statetime )
	else
		AddState( Cha_Boat , Cha_Boat , STATE_ZDSBJYGZ , statelv , statetime )
	end
end


--���Ϲ���
function ItemUse_MoreItemGz( role , Item )
	local statelv = 1
	local ChaStateLv = GetChaStateLv ( role , STATE_SBBLGZ )
	
	if ChaStateLv > statelv then
		SystemNotice ( role , "��ʹ�ø��߼��Ĺ��ӣ����Ժ�����" )
		UseItemFailed ( role )
		return
	end
	
	local statetime = 900
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_SBBLGZ , statelv , statetime )
	else
		AddState( Cha_Boat , Cha_Boat , STATE_SBBLGZ , statelv , statetime )
	end
end

--�������2��
function ItemUse_MoreExpGzLv2( role , Item )
	local Lv = Lv( role )
	if Lv < 40 then
		SystemNotice(role ,"�ȼ�����40��������ʹ��")
		UseItemFailed ( role )
		return
	end

	local statelv = 2
	
	local ChaStateLv = GetChaStateLv ( role , STATE_SBJYGZ )
	
	if ChaStateLv > statelv then
		SystemNotice ( role , "��ʹ�ø��߼��Ĺ��ӣ����Ժ�����" )
		UseItemFailed ( role )
		return
	end
	
	local statetime = 900
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_SBJYGZ , statelv , statetime )
	else
		AddState( Cha_Boat , Cha_Boat , STATE_SBJYGZ , statelv , statetime )
	end
	SystemNotice ( role ,"���ܵ���Ч���ɹ���Ч��" )
end

--���Ϲ���2��
function ItemUse_MoreItemGzLv2( role , Item )
	local Lv = Lv( role )
	if Lv < 40 then
		SystemNotice(role ,"�ȼ�����40��������ʹ��")
		UseItemFailed ( role )
		return
	end


	local statelv = 2
	local ChaStateLv = GetChaStateLv ( role , STATE_SBBLGZ )
	
	if ChaStateLv > statelv then
		SystemNotice ( role , "��ʹ�ø��߼��Ĺ��ӣ����Ժ�����" )
		UseItemFailed ( role )
		return
	end

	local statetime = 900
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_SBBLGZ , statelv , statetime )
	else
		AddState( Cha_Boat , Cha_Boat , STATE_SBBLGZ , statelv , statetime )
	end
	SystemNotice ( role ,"���ܵ���Ч���˹���Ч��" )
end

--�������3��
function ItemUse_MoreExpGzLv3( role , Item )
	local Lv = Lv( role )
	if Lv < 60 then
		SystemNotice(role ,"�ȼ�����60��������ʹ��")
		UseItemFailed ( role )
		return
	end

	local statelv = 3
	
	local ChaStateLv = GetChaStateLv ( role , STATE_SBJYGZ )
	
	if ChaStateLv > statelv then
		SystemNotice ( role , "��ʹ�ø��߼��Ĺ��ӣ����Ժ�����" )
		UseItemFailed ( role )
		return
	end
	
	local statetime = 900
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_SBJYGZ , statelv , statetime )
	else
		AddState( Cha_Boat , Cha_Boat , STATE_SBJYGZ , statelv , statetime )
	end
	SystemNotice ( role ,"���ܵ��������ɹ���Ч��" )
end

--���Ϲ���3��
function ItemUse_MoreItemGzLv3( role , Item )
	local Lv = Lv( role )
	if Lv < 60 then
		SystemNotice(role ,"�ȼ�����60��������ʹ��")
		UseItemFailed ( role )
		return
	end


	local statelv = 3	
	
	local ChaStateLv = GetChaStateLv ( role , STATE_SBBLGZ )
	
	if ChaStateLv > statelv then
		SystemNotice ( role , "��ʹ�ø��߼��Ĺ��ӣ����Ժ�����" )
		UseItemFailed ( role )
		return
	end

	local statetime = 900
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_SBBLGZ , statelv , statetime )
	else
		AddState( Cha_Boat , Cha_Boat , STATE_SBBLGZ , statelv , statetime )
	end
	SystemNotice ( role ,"���ܵ��������˹���Ч��" )
end




--�漣����
function ItemUse_MoreItemAndExpGz( role , Item )
	local Lv = Lv( role )
	if Lv < 30 then
		SystemNotice(role ,"�ȼ�����30��������ʹ��")
		UseItemFailed ( role )
		return
	end

	local statelv = 1
	local statetime = 900
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_SBJYGZ , statelv , statetime )
		AddState( role , role , STATE_SBBLGZ , statelv , statetime )
	else
		AddState( Cha_Boat , Cha_Boat , STATE_SBJYGZ , statelv , statetime )
		AddState( Cha_Boat , Cha_Boat , STATE_SBBLGZ , statelv , statetime )
	end
end

--�����ָ���
function ItemUse_TLHFJ( role , Item )
	local hp = GetChaAttr(role, ATTR_HP) 
	hp_resume = 800 
	
	hp = hp + hp_resume 
	mxhp = GetChaAttr(role,ATTR_MXHP) 
	if hp > mxhp then --�ӳ������spʱ����Ϊ���sp
		hp = mxhp 
	end 
	SetCharaAttr(hp, role, ATTR_HP)
end


-----ϴ��------------------------------------------------------------------

--����1��
function ItemUse_XD_Str1 ( role , Item )
	local str = GetChaAttr( role , ATTR_BSTR )
	local ap = GetChaAttr( role , ATTR_AP )
--	SystemNotice ( role , "�����޸�ǰΪ"..str )
--	SystemNotice ( role , "���Ե��޸�ǰӦΪ"..ap )
	if str <= 5 then 
		SystemNotice ( role , "��û���㹻�ĵ�����ϴ��,ϴ��ʧ��" )
		UseItemFailed ( role )
		return
	end
	local str_dif = 1
	local ap_dif = 1
	str = str - str_dif
	ap = ap + 1

	SystemNotice ( role , "����һ������������һ�����Ե�" )
--	SystemNotice ( role , "�����޸ĺ�ӦΪ"..str )
--	SystemNotice ( role , "���Ե��޸ĺ�ӦΪ"..ap )
	SetCharaAttr ( str , role , ATTR_BSTR )
	SetCharaAttr ( ap , role , ATTR_AP )
end

--����1��
function ItemUse_XD_Con1 ( role , Item )
	local con = GetChaAttr( role , ATTR_BCON )
	local ap = GetChaAttr( role , ATTR_AP )
--	SystemNotice ( role , "�����޸�ǰΪ"..con )
--	SystemNotice ( role , "���Ե��޸�ǰӦΪ"..ap )
	if con <= 5 then 
		SystemNotice ( role , "��û���㹻�ĵ�����ϴ��,ϴ��ʧ��" )
		UseItemFailed ( role )
		return
	end
	local con_dif = 1
	local ap_dif = 1
	con = con - con_dif
	ap = ap + 1

	SystemNotice ( role , "����һ�����ʣ�����һ�����Ե�" )
	
--	SystemNotice ( role , "�����޸ĺ�ӦΪ"..con )
--	SystemNotice ( role , "���Ե��޸ĺ�ӦΪ"..ap )
	SetCharaAttr ( con , role , ATTR_BCON )
	SetCharaAttr ( ap , role , ATTR_AP )
end

--����1��
function ItemUse_XD_Agi1 ( role , Item )
	local agi = GetChaAttr( role , ATTR_BAGI )
	local ap = GetChaAttr( role , ATTR_AP )
--	SystemNotice ( role , "�����޸�ǰΪ"..agi )
--	SystemNotice ( role , "���Ե��޸�ǰӦΪ"..ap )
	if agi <= 5 then 
		SystemNotice ( role , "��û���㹻�ĵ�����ϴ��,ϴ��ʧ��" )
		UseItemFailed ( role )
		return
	end
	local agi_dif = 1
	local ap_dif = 1
	agi = agi - agi_dif
	ap = ap + 1

	SystemNotice ( role , "����һ�����ݣ�����һ�����Ե�" )
	
--	SystemNotice ( role , "�����޸ĺ�ӦΪ"..agi )
--	SystemNotice ( role , "���Ե��޸ĺ�ӦΪ"..ap )
	SetCharaAttr ( agi , role , ATTR_BAGI )
	SetCharaAttr ( ap , role , ATTR_AP )
end

--רע1��
function ItemUse_XD_Dex1 ( role , Item )
	local dex = GetChaAttr( role , ATTR_BDEX )
	local ap = GetChaAttr( role , ATTR_AP )
--	SystemNotice ( role , "רע�޸�ǰΪ"..dex )
--	SystemNotice ( role , "���Ե��޸�ǰӦΪ"..ap )
	if dex <= 5 then 
		SystemNotice ( role , "��û���㹻�ĵ�����ϴ��,ϴ��ʧ��" )
		UseItemFailed ( role )
		return
	end
	local dex_dif = 1
	local ap_dif = 1
	dex = dex - dex_dif
	ap = ap + 1

	SystemNotice ( role , "����һ��רע������һ�����Ե�" )
	
--	SystemNotice ( role , "רע�޸ĺ�ӦΪ"..dex )
--	SystemNotice ( role , "���Ե��޸ĺ�ӦΪ"..ap )
	SetCharaAttr ( dex , role , ATTR_BDEX )
	SetCharaAttr ( ap , role , ATTR_AP )
end

--����1��
function ItemUse_XD_Sta1 ( role , Item )
	local sta = GetChaAttr( role , ATTR_BSTA )
	local ap = GetChaAttr( role , ATTR_AP )
--	SystemNotice ( role , "�����޸�ǰΪ"..sta )
--	SystemNotice ( role , "���Ե��޸�ǰӦΪ"..ap )
	if sta <= 5 then 
		SystemNotice ( role , "��û���㹻�ĵ�����ϴ��,ϴ��ʧ��" )
		UseItemFailed ( role )
		return
	end
	local sta_dif = 1
	local ap_dif = 1
	sta = sta - sta_dif
	ap = ap + 1

	SystemNotice ( role , "����һ�㾫������һ�����Ե�" )
	
--	SystemNotice ( role , "�����޸ĺ�ӦΪ"..sta )
--	SystemNotice ( role , "���Ե��޸ĺ�ӦΪ"..ap )
	SetCharaAttr ( sta , role , ATTR_BSTA )
	SetCharaAttr ( ap , role , ATTR_AP )
end

--��Ʒ����ҩ��

--���ҩ��( agi )
function ItemUse_SPLhyj( role , Item )
	local OtherStateLv = 0
	local i = 0
	local State_Num = 3
	local State = {}
	State [0] = GetChaStateLv ( role , STATE_YSLQQH )
	State [1] = GetChaStateLv ( role , STATE_YSTZQH )
	State [2] = GetChaStateLv ( role , STATE_YSJSQH )
	State [3] = GetChaStateLv ( role , STATE_YSLLQH )

	for i = 0 , State_Num , 1 do
		if State[i] >= 1 then
			OtherStateLv = OtherStateLv + 1
		end
	end



	if OtherStateLv > 0 then
		SystemNotice(role ,"ҩˮ��ǿ����Ч�����ɵ���")
		UseItemFailed ( role )
		return
	end
	
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end

	local statelv = 1
	local statetime = 3600
	AddState( role , role , STATE_YSMJQH , statelv , statetime )

end

--ӥ��ҩ��( dex )
function ItemUse_SPYyyj( role , Item )
	local OtherStateLv = 0
	local i = 0
	local State_Num = 3
	local State = {}
	State [0] = GetChaStateLv ( role , STATE_YSMJQH )
	State [1] = GetChaStateLv ( role , STATE_YSTZQH )
	State [2] = GetChaStateLv ( role , STATE_YSJSQH )
	State [3] = GetChaStateLv ( role , STATE_YSLLQH )

	for i = 0 , State_Num , 1 do
		if State[i] >= 1 then
			OtherStateLv = OtherStateLv + 1
		end
	end



	if OtherStateLv > 0 then
		SystemNotice(role ,"ҩˮ��ǿ����Ч�����ɵ���")
		UseItemFailed ( role )
		return
	end

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end


	local statelv = 1
	local statetime = 3600
	AddState( role , role , STATE_YSLQQH , statelv , statetime )

end

--��ţҩ��( con )
function ItemUse_SPMnyj( role , Item )
	
	local OtherStateLv = 0
	local i = 0
	local State_Num = 3
	local State = {}
	State [0] = GetChaStateLv ( role , STATE_YSMJQH )
	State [1] = GetChaStateLv ( role , STATE_YSLQQH )
	State [2] = GetChaStateLv ( role , STATE_YSJSQH )
	State [3] = GetChaStateLv ( role , STATE_YSLLQH )

	for i = 0 , State_Num , 1 do
		if State[i] >= 1 then
			OtherStateLv = OtherStateLv + 1
		end
	end



	if OtherStateLv > 0 then
		SystemNotice(role ,"ҩˮ��ǿ����Ч�����ɵ���")
		UseItemFailed ( role )
		return
	end

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end


	local statelv = 1
	local statetime = 3600
	AddState( role , role , STATE_YSTZQH , statelv , statetime )

end

--ʥ��ҩ��( sta )
function ItemUse_SPSlyj( role , Item )
	
	local OtherStateLv = 0
	local i = 0
	local State_Num = 3
	local State = {}
	State [0] = GetChaStateLv ( role , STATE_YSMJQH )
	State [1] = GetChaStateLv ( role , STATE_YSLQQH )
	State [2] = GetChaStateLv ( role , STATE_YSTZQH )
	State [3] = GetChaStateLv ( role , STATE_YSLLQH )

	for i = 0 , State_Num , 1 do
		if State[i] >= 1 then
			OtherStateLv = OtherStateLv + 1
		end
	end


	if OtherStateLv > 0 then
		SystemNotice(role ,"ҩˮ��ǿ����Ч�����ɵ���")
		UseItemFailed ( role )
		return
	end

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end


	local statelv = 1
	local statetime = 3600
	AddState( role , role , STATE_YSJSQH , statelv , statetime )

end

--��ʨҩ��( str )
function ItemUse_SPXsyj( role , Item )
	
	local OtherStateLv = 0
	local i = 0
	local State_Num = 3
	local State = {}
	State [0] = GetChaStateLv ( role , STATE_YSMJQH )
	State [1] = GetChaStateLv ( role , STATE_YSLQQH )
	State [2] = GetChaStateLv ( role , STATE_YSTZQH )
	State [3] = GetChaStateLv ( role , STATE_YSJSQH )

	for i = 0 , State_Num , 1 do
		if State[i] >= 1 then
			OtherStateLv = OtherStateLv + 1
		end
	end



	if OtherStateLv > 0 then
		SystemNotice(role ,"ҩˮ��ǿ����Ч�����ɵ���")
		UseItemFailed ( role )
		return
	end	

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end


	local statelv = 1
	local statetime = 3600
	AddState( role , role , STATE_YSLLQH , statelv , statetime )

end


--��ɫ�����
function ItemUse_LSDZG ( role , Item )
	local statelv = 4
	local statetime = 60
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_JLGLJB , statelv , statetime )
	else
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end
end

--��ɫ�����

function ItemUse_HSDZG ( role , Item )
	local statelv = 2
	local statetime = 60
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_HCGLJB , statelv , statetime )
	else
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end
end

--ʥ������

--��ʧ��ʥ��ñ��

function ItemUse_DSSDM ( role , Item )
	local statelv = 1
	local statetime = 300
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_PKSFYS , statelv , statetime )
	else
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end
end

--а��֮��

function ItemUse_XEZJ ( role , Item )
	local statelv = 1
	local statetime = 1800
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_PKZDYS , statelv , statetime )
	else
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end
end

--��ս�� �����߹�����С�����ͷ������ĵ��߳���ʱ��15����
function ItemUse_XEZJB ( role , Item )
	Rem_State_StarUnnormal ( role )
	local statelv = 1
	local statetime = 900
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ==  nil then
		Rem_State_StarUnnormal ( role )
		AddState( role , role , STATE_KUANGZ , statelv , statetime )
	else
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end
end

--ʥ���ǹ�

function ItemUse_SDTG ( role , Item )
	
	local hp = GetChaAttr(role, ATTR_HP) 
	local sp = GetChaAttr(role, ATTR_SP) 
	
	hp_resume = 30 
	sp_resume = 10
	
	hp = hp + hp_resume 
	sp = sp + sp_resume 

	mxhp = GetChaAttr(role,ATTR_MXHP) 
	mxsp = GetChaAttr(role,ATTR_MXSP) 

	if hp > mxhp then 
		hp = mxhp 
	end 

	if sp > mxsp then 
		sp = mxsp 
	end 

	SetCharaAttr(hp, role, ATTR_HP)
	SetCharaAttr(sp, role, ATTR_SP) 

end

--ʥ������

function ItemUse_SDWZBOX ( role , Item )
	local Now_Day = os.date("%d")
	local Now_Month = os.date("%m")
	local Now_Time = os.date("%H")
	local NowTimeNum = tonumber(Now_Time)
	local NowDayNum = tonumber(Now_Day)
	local NowMonthNum = tonumber(Now_Month)
	local CheckDateNum = NowMonthNum * 10000 + NowDayNum * 100 + NowTimeNum
	
	if CheckDateNum < 122423  then
		SystemNotice ( role , "��Ҫ�ż�Ŷ��ʥ�����˵������Ǻ�׼ʱ��Ŷ������12��24������11�㵽12��25������6��֮��ʹ��Ŷ" )
		UseItemFailed ( role )
		return
	end
	
	if CheckDateNum > 122506 then
		SystemNotice ( role , "ʥ�����˺����Ѿ����ˣ�����ֻ�еȴ�������" )
		UseItemFailed ( role )
		return
	end
	
	local item_type = BaoXiang_SDWZBOX
	local item_type_rad = BaoXiang_SDWZBOX_Rad 
	local item_type_count = BaoXiang_SDWZBOX_Count 
	local maxitem = BaoXiang_SDWZBOX_Mxcount						-- �ս���
	local item_quality = BaoXiang_SDWZBOX_Qua
	local General = 0  
	local ItemId = 0 
	
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬���俪��ʧ��")
		UseItemFailed ( role )
		return
	end
	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General		
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1							--������Ʒ���
	for k = 1 , maxitem , 1 do				-- �������ӵ�ǰ׺���

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k

		end 
		b = d 
	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
end

--ʥ�����

function ItemUse_SDLHBOX ( role , Item )
	local Check = math.random ( 1, 100 )
	if Check <= 35 then

		local exp = Exp ( role )
		local exp_dif = math.random ( 100 , 300 )
		if Lv ( TurnToCha ( role )  )  >= 80 then 
			exp_dif = math.floor ( exp_dif / 50  ) 
		end 
		local exp_new = exp + exp_dif
	
		SetCharaAttr ( exp_new , role , ATTR_CEXP )

	elseif Check > 35 and Check <= 70 then
		local Money_add = math.random ( 200 , 600 )
		AddMoney ( role , 0 , Money_add )
	else
		local item_type = BaoXiang_SDLHBOX
		local item_type_rad = BaoXiang_SDLHBOX_Rad 
		local item_type_count = BaoXiang_SDLHBOX_Count 
		local maxitem = BaoXiang_SDLHBOX_Mxcount						-- �ս���
		local item_quality = BaoXiang_SDLHBOX_Qua
		local General = 0  
		local ItemId = 0 
		
		local Item_CanGet = GetChaFreeBagGridNum ( role )
		
		if Item_CanGet <= 0 then
			SystemNotice(role ,"����û���㹻�Ŀռ䣬���俪��ʧ��")
			UseItemFailed ( role )
			return
		end
		for i = 1 , maxitem , 1 do 
			General = item_type_rad [ i ] + General		
		end 
		local a = math.random ( 1, General )
		local b = 0
		local d = 0 
		local c = -1							--������Ʒ���
		for k = 1 , maxitem , 1 do				-- �������ӵ�ǰ׺���

			d = item_type_rad [ k ] + b

			 if a <= d and a > b then
				c = k

			end 
			b = d 
		end 
		if c == -1 then 
			ItemId = 3124 
		else 
			ItemId = item_type [c]  
			ItemCount = item_type_count [c] 
		end 
		GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
	end
end

--���˰�
function ItemUse_HYBOX ( role , Item )

--	local Item_CanGet = GetChaFreeBagGridNum ( role )
--	if Item_CanGet <= 1 then
--		SystemNotice(role ,"����û���㹻�Ŀռ䣬���˰�����ʧ��")
--		UseItemFailed ( role )
--		return
--	end
	
	local Money_Add = 8
	local exp_dif = 0
	local exp_random = math.random( 1 , 1000 )
	if exp_random == 1000 then
		Money_Add = 8888
		exp_dif = 66600
	else
		
		exp_dif = math.random ( 2 , 6 )
		exp_dif = exp_dif * 50
	end
	
	local exp = Exp ( role )
	if Lv ( TurnToCha ( role )  )  >= 80 then 
		exp_dif = math.floor ( exp_dif / 50  ) 
	end 
	local exp_new = exp + exp_dif
	
	AddMoney ( role , 0 , Money_Add )
	SetCharaAttr ( exp_new , role , ATTR_CEXP )
	
        local zmbox_random = math.random( 1 , 500 )
        if  zmbox_random == 500 then

	    local item_type = BaoXiang_HYBOX 
	    local item_type_rad = BaoXiang_HYBOX_Rad 
	    local item_type_count = BaoXiang_HYBOX_Count 
	    local maxitem = BaoXiang_HYBOX_Mxcount						-- �ս���
	    local item_quality = BaoXiang_HYBOX_Qua
	    local General = 0  
	    local ItemId = 0 
	    for i = 1 , maxitem , 1 do 
	  	    General = item_type_rad [ i ] + General		
	    end 
	    local a = math.random ( 1, General )
	    local b = 0
	    local d = 0 
	    local c = -1							--������Ʒ���
	    for k = 1 , maxitem , 1 do				-- �������ӵ�ǰ׺���

		  d = item_type_rad [ k ] + b

		   if a <= d and a > b then
			  c = k
			  break 
		  end 
		  b = d 
	    end 
	    if c == -1 then 
		  ItemId = 3124 
	    else 
		  ItemId = item_type [c]  
	  	  ItemCount = item_type_count [c] 
	    end 
	  GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
       end
	  GiveItem ( role , 0 , 3904 , 1 , 5 ) 
--	local itemname = GetItemName ( ItemId ) 
--	local cha_name = GetChaDefaultName ( role ) 
--	local message = cha_name.."�������˰���ϲ�ػ��"..itemname  
--	Notice ( message )
end 


--�����
function ItemUse_FGBOX ( role , Item )
	
	AddMoney ( role , 0 , 88 )	
	local item_type = BaoXiang_FGBOX 
	local item_type_rad = BaoXiang_FGBOX_Rad 
	local item_type_count = BaoXiang_FGBOX_Count 
	local maxitem = BaoXiang_FGBOX_Mxcount						-- �ս���
	local item_quality = BaoXiang_FGBOX_Qua
	local General = 0  
	local ItemId = 0 
--	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
--	if Item_CanGet <= 1 then
--		SystemNotice(role ,"����û���㹻�Ŀռ䣬���������ʧ��")
--		UseItemFailed ( role )
--		return
--	end

	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General		
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1							--������Ʒ���
	for k = 1 , maxitem , 1 do				-- �������ӵ�ǰ׺���

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break
		end 
		b = d 

	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality )
	GiveItem ( role , 0 , 3904 , 1 , item_quality )

	
	if ItemId == 878 then
		local itemname = GetItemName ( ItemId ) 
		local cha_name = GetChaDefaultName ( role ) 
		local message = cha_name.."�򿪸������ϲ�ػ��"..itemname  
		Notice ( message )
	end
end 

--���˰�
function ItemUse_HYUNBOX ( role , Item )
	
	AddMoney ( role , 0 , 888 )
	local item_type = BaoXiang_HYUNBOX 
	local item_type_rad = BaoXiang_HYUNBOX_Rad 
	local item_type_count = BaoXiang_HYUNBOX_Count 
	local maxitem = BaoXiang_HYUNBOX_Mxcount						-- �ս���
	local item_quality = BaoXiang_HYUNBOX_Qua
	local General = 0  
	local ItemId = 0 
--	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
--	if Item_CanGet <= 1 then
--		SystemNotice(role ,"����û���㹻�Ŀռ䣬���˰�����ʧ��")
--		UseItemFailed ( role )
--		return
--	end

	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General		
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1							--������Ʒ���
	for k = 1 , maxitem , 1 do				-- �������ӵ�ǰ׺���

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break		
		end 
		b = d 

	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality )
	GiveItem ( role , 0 , 3904 , 1 , item_quality )

	local GoodItem = {}
	GoodItem[0] = 3844
	GoodItem[1] = 3845
	GoodItem[2] = 899
	GoodItem[3] = 900
	GoodItem[4] = 901
	GoodItem[5] = 902
	GoodItem[6] = 903

	local Good_C = 0
	for Good_C = 0 , 6 , 1 do
		if ItemId == GoodItem[Good_C] then
			local itemname = GetItemName ( ItemId ) 
			local cha_name = GetChaDefaultName ( role ) 
			local message = cha_name.."�򿪺��˰���ϲ�ػ��"..itemname  
			Notice ( message )
		end
	end
end 

--��������Ըʯ
function ItemUse_ADBOX ( role , Item )
	local item_type = BaoXiang_ADBOX 
	local item_type_rad = BaoXiang_ADBOX_Rad 
	local item_type_count = BaoXiang_ADBOX_Count 
	local maxitem = BaoXiang_ADBOX_Mxcount						-- �ս���
	local item_quality = BaoXiang_ADBOX_Qua
	local General = 0  
	local ItemId = 0 
--	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
--	if Item_CanGet <= 0 then
--		SystemNotice(role ,"����û���㹻�Ŀռ䣬��Ըʯ����ʧ��")
--		UseItemFailed ( role )
--		return
--	end

	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General		
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1							--������Ʒ���
	for k = 1 , maxitem , 1 do				-- �������ӵ�ǰ׺���

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break
		end 
		b = d 
	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
--	local itemname = GetItemName ( ItemId ) 
--	local cha_name = GetChaDefaultName ( role ) 
--	local message = cha_name.."������Ըʯ��ϲ�ػ��"..itemname  
--	Notice ( message )
end 

--�������Ըʯ
function ItemUse_SGBOX ( role , Item )
	local item_type = BaoXiang_SGBOX 
	local item_type_rad = BaoXiang_SGBOX_Rad 
	local item_type_count = BaoXiang_SGBOX_Count 
	local maxitem = BaoXiang_SGBOX_Mxcount						-- �ս���
	local item_quality = BaoXiang_SGBOX_Qua
	local General = 0  
	local ItemId = 0 
--	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
--	if Item_CanGet <= 0 then
--		SystemNotice(role ,"����û���㹻�Ŀռ䣬��Ըʯ����ʧ��")
--		UseItemFailed ( role )
--		return
--	end

	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General		
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1							--������Ʒ���
	for k = 1 , maxitem , 1 do				-- �������ӵ�ǰ׺���

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break
		end 
		b = d 
	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
	
	local GoodItem = {}
	
	GoodItem[0] = 879
	GoodItem[1] = 880
	GoodItem[2] = 881
	GoodItem[3] = 882
	GoodItem[4] = 883
	GoodItem[5] = 884
	GoodItem[6] = 885
	GoodItem[7] = 887
	GoodItem[8] = 7
	GoodItem[9] = 42
	GoodItem[10] = 18
	GoodItem[11] = 1375
	GoodItem[12] = 1384
	GoodItem[13] = 1394
	GoodItem[14] = 1411
	GoodItem[15] = 1421
	GoodItem[16] = 4198
	GoodItem[17] = 4200
	GoodItem[18] = 4202
	GoodItem[19] = 4204
	GoodItem[20] = 4206
	GoodItem[21] = 4208
	

	local Good_C = 0
	for Good_C = 0 , 21 , 1 do
		if ItemId == GoodItem[Good_C] then
			local itemname = GetItemName ( ItemId ) 
			local cha_name = GetChaDefaultName ( role ) 
			local message = cha_name.."ʹ���������Ըʯ��ϲ�ػ��"..itemname  
			Notice ( message )
		end
	end
end 
--������Ʒ��

function ItemUse_JingLingBOX ( role, Item )
	local item_type = BaoXiang_JingLingBOX 
	local item_type_rad = BaoXiang_JingLingBOX_Rad 
	local item_type_count = BaoXiang_JingLingBOX_Count 
	local maxitem = BaoXiang_JingLingBOX_Mxcount						-- �ս���
	local item_quality = BaoXiang_JingLingBOX_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬������Ʒ�п���ʧ��")
		UseItemFailed ( role )
		return
	end

	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General		
	end   
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1							--������Ʒ���
	for k = 1 , maxitem , 1 do				-- �������ӵ�ǰ׺���--k �� 1 �� 7

		d = item_type_rad [ k ] + b   
		 if a <= d and a > b then
			c = k
			break
		end 
		b = d 
	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
end

--ʳ��ˮ��
function ItemUse_SSSJ ( role , Item )

  	local hp = GetChaAttr(role, ATTR_HP) 
	local mxhp = GetChaAttr(role,ATTR_MXHP) 	
	hp = hp + 0.3*mxhp 

	if hp > mxhp then 
		hp = mxhp 
	end 
	SetCharaAttr(hp, role, ATTR_HP)

end




--�����Ǻ�«

function ItemUse_CJTHL ( role , Item )
      
	GiveItem ( role , 0 , 3911 , 1 , 5 ) 	
  	local hp = GetChaAttr(role, ATTR_HP) 
	local sp = GetChaAttr(role, ATTR_SP) 
	
	hp_resume = 100 
	sp_resume = 100
	
	hp = hp + hp_resume 
	sp = sp + sp_resume 

	mxhp = GetChaAttr(role,ATTR_MXHP) 
	mxsp = GetChaAttr(role,ATTR_MXSP) 

	if hp > mxhp then 
		hp = mxhp 
	end 

	if sp > mxsp then 
		sp = mxsp 
	end 

	SetCharaAttr(hp, role, ATTR_HP)
	SetCharaAttr(sp, role, ATTR_SP)    


end

--����
function ItemUse_Denglong ( role , Item )
	local statelv = 1
	local statetime = 600
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_DENGLONG , statelv , statetime )
	else
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end
end

	
--õ��
function ItemUse_MeiGui ( role , Item )
	local statelv = 1
	local statetime = 600
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_MEIGUI , statelv , statetime )
	else
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end
end

--����
function ItemUse_BZ ( role , Item )
	local Now_Day = os.date("%d")
	local Now_Month = os.date("%m")
	local Now_Time = os.date("%H")
	local NowTimeNum = tonumber(Now_Time)
	local NowDayNum = tonumber(Now_Day)
	local NowMonthNum = tonumber(Now_Month)
	local CheckDateNum = NowMonthNum * 10000 + NowDayNum * 100 + NowTimeNum
	local Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )

	if Cha_Boat ~= nil then 
		SystemNotice( role , "����ʱ����ʹ��" ) 
		UseItemFailed ( role ) 
		return 
	end 
end 


function ItemUse_SaintCloth ( role , Item ) 
	local cha = TurnToCha ( role ) 
	local cha_type = GetChaTypeID ( cha ) 

	local Item_CanGet = GetChaFreeBagGridNum ( cha )

	if Item_CanGet <= 3 then
		SystemNotice(role ,"����û��4���ʣ��ռ䣬���ޱ��俪��ʧ�ܡ�")
		UseItemFailed ( role )
		return
	end
	if cha_type == 4 then 
		GiveItem ( cha , 0 , 828 , 1 , 0 )	
	end 
	GiveItem ( cha , 0 , 825 , 1 , 0 )	
	GiveItem ( cha , 0 , 826 , 1 , 0 )	
	GiveItem ( cha , 0 , 827 , 1 , 0 )	
end 


--�̳�װ������

function ItemUse_SCBoxYXTZ ( role , Item )		--ҹ����װ
	local cha = TurnToCha ( role ) 
	local cha_type = GetChaTypeID ( cha ) 

	local Item_CanGet = GetChaFreeBagGridNum ( cha )

	if Item_CanGet <= 2 then
		SystemNotice(role ,"����û��3���ʣ��ռ䣬���俪��ʧ�ܡ�")
		UseItemFailed ( role )
		return
	end

	if cha_type == 1 then
		GiveItem ( cha , 0 , 0395 , 1 , 95 )	
		GiveItem ( cha , 0 , 0587 , 1 , 95 )	
		GiveItem ( cha , 0 , 0747 , 1 , 95 )	
	else
		SystemNotice(role ,"���Ͳ��������俪��ʧ�ܡ�")
		UseItemFailed ( role )
		return
	end
end

function ItemUse_SCBoxLSTZ ( role , Item )		--��ʿ��װ
	local cha = TurnToCha ( role ) 
	local cha_type = GetChaTypeID ( cha ) 

	local Item_CanGet = GetChaFreeBagGridNum ( cha )

	if Item_CanGet <= 3 then
		SystemNotice(role ,"����û���㹻��ʣ��ռ䣬���俪��ʧ�ܡ�")
		UseItemFailed ( role )
		return
	end
	if cha_type == 2 then
		GiveItem ( cha , 0 , 0397 , 1 , 95 )
		GiveItem ( cha , 0 , 0829 , 1 , 95 )
		GiveItem ( cha , 0 , 0603 , 1 , 95 )
	else
		SystemNotice(role ,"���Ͳ��������俪��ʧ�ܡ�")
		UseItemFailed ( role )
		return
	end

end

function ItemUse_SCBoxHYTZ ( role , Item )		--������װ
	local cha = TurnToCha ( role ) 
	local cha_type = GetChaTypeID ( cha ) 

	local Item_CanGet = GetChaFreeBagGridNum ( cha )

	if Item_CanGet <= 2 then
		SystemNotice(role ,"����û��3���ʣ��ռ䣬���俪��ʧ�ܡ�")
		UseItemFailed ( role )
		return
	end

	if cha_type == 1 or cha_type == 3 then
		GiveItem ( cha , 0 , 0399 , 1 , 95 )
		GiveItem ( cha , 0 , 0589 , 1 , 95 )
		GiveItem ( cha , 0 , 0749 , 1 , 95 )
	else
		SystemNotice(role ,"���Ͳ��������俪��ʧ�ܡ�")
		UseItemFailed ( role )
		return
	end

end

function ItemUse_SCBoxFYSTZ ( role , Item )		--��ӡְҵ��װ
	local cha = TurnToCha ( role ) 
	local cha_type = GetChaTypeID ( cha ) 

	local Item_CanGet = GetChaFreeBagGridNum ( cha )

	if Item_CanGet <= 3 then
		SystemNotice(role ,"����û��4���ʣ��ռ䣬���俪��ʧ�ܡ�")
		UseItemFailed ( role )
		return
	end
	
	if cha_type == 3 then
		GiveItem ( cha , 0 , 0401 , 1 , 95 )
		GiveItem ( cha , 0 , 0591 , 1 , 95 )
		GiveItem ( cha , 0 , 0751 , 1 , 95 )
	elseif cha_type == 4 then
		GiveItem ( cha , 0 , 0403 , 1 , 95 )
		GiveItem ( cha , 0 , 0593 , 1 , 95 )
		GiveItem ( cha , 0 , 0753 , 1 , 95 )
		GiveItem ( cha , 0 , 2218 , 1 , 95 )
	else
		SystemNotice(role ,"���Ͳ��������俪��ʧ�ܡ�")
		UseItemFailed ( role )
		return
	end
	
end

function ItemUse_SCBoxSZZTZ ( role , Item )		--ʥְ����װ
	local cha = TurnToCha ( role ) 
	local cha_type = GetChaTypeID ( cha ) 

	local Item_CanGet = GetChaFreeBagGridNum ( cha )

	if Item_CanGet <= 3 then
		SystemNotice(role ,"����û��4���ʣ��ռ䣬���俪��ʧ�ܡ�")
		UseItemFailed ( role )
		return
	end
	
	if cha_type == 3 then
		GiveItem ( cha , 0 , 0405 , 1 , 95 )
		GiveItem ( cha , 0 , 0595 , 1 , 95 )
		GiveItem ( cha , 0 , 0755 , 1 , 95 )
	elseif cha_type == 4 then
		GiveItem ( cha , 0 , 0407 , 1 , 95 )
		GiveItem ( cha , 0 , 0597 , 1 , 95 )
		GiveItem ( cha , 0 , 0757 , 1 , 95 )
		GiveItem ( cha , 0 , 2220 , 1 , 95 )
	else
		SystemNotice(role ,"���Ͳ��������俪��ʧ�ܡ�")
		UseItemFailed ( role )
		return
	end
end

function ItemUse_SCBoxHHSTZ ( role , Item )		--����ʿ��װ
	local cha = TurnToCha ( role ) 
	local cha_type = GetChaTypeID ( cha ) 

	local Item_CanGet = GetChaFreeBagGridNum ( cha )

	if Item_CanGet <= 3 then
		SystemNotice(role ,"����û��4���ʣ��ռ䣬���俪��ʧ�ܡ�")
		UseItemFailed ( role )
		return
	end
	
	if cha_type == 1 or cha_type == 3 then
		GiveItem ( cha , 0 , 0409 , 1 , 95 )
		GiveItem ( cha , 0 , 0599 , 1 , 95 )
		GiveItem ( cha , 0 , 0759 , 1 , 95 )
	elseif cha_type == 4 then
		GiveItem ( cha , 0 , 0412 , 1 , 95 )
		GiveItem ( cha , 0 , 0601 , 1 , 95 )
		GiveItem ( cha , 0 , 0761 , 1 , 95 )
		GiveItem ( cha , 0 , 2222 , 1 , 95 )
	else
		SystemNotice(role ,"���Ͳ��������俪��ʧ�ܡ�")
		UseItemFailed ( role )
		return
	end
end


function ItemUse_SCBoxRYBZ ( role , Item )		--���ⱦ��
	local cha = TurnToCha ( role ) 
	local cha_type = GetChaTypeID ( cha ) 

	local Item_CanGet = GetChaFreeBagGridNum ( cha )

	if Item_CanGet == 0 then
		SystemNotice(role ,"����û��ʣ��ռ䣬���俪��ʧ�ܡ�")
		UseItemFailed ( role )
		return
	end

	GiveItem ( cha , 0 , 0109 , 1 , 95 )
end

function ItemUse_SCBoxXMC ( role , Item )		--��ħ��
	local cha = TurnToCha ( role ) 
	local cha_type = GetChaTypeID ( cha ) 

	local Item_CanGet = GetChaFreeBagGridNum ( cha )

	if Item_CanGet == 0 then
		SystemNotice(role ,"����û��ʣ��ռ䣬���俪��ʧ�ܡ�")
		UseItemFailed ( role )
		return
	end

	GiveItem ( cha , 0 , 0111 , 1 , 95 )
end

function ItemUse_SCBoxLQJ ( role , Item )		--��Ȫ��
	local cha = TurnToCha ( role ) 
	local cha_type = GetChaTypeID ( cha ) 

	local Item_CanGet = GetChaFreeBagGridNum ( cha )

	if Item_CanGet == 0 then
		SystemNotice(role ,"����û��ʣ��ռ䣬���俪��ʧ�ܡ�")
		UseItemFailed ( role )
		return
	end

	GiveItem ( cha , 0 , 0113 , 1 , 95 )
end

function ItemUse_SCBoxLYJ ( role , Item )		--���ҽ�
	local cha = TurnToCha ( role ) 
	local cha_type = GetChaTypeID ( cha ) 

	local Item_CanGet = GetChaFreeBagGridNum ( cha )

	if Item_CanGet == 0 then
		SystemNotice(role ,"����û��ʣ��ռ䣬���俪��ʧ�ܡ�")
		UseItemFailed ( role )
		return
	end

	GiveItem ( cha , 0 , 0115 , 1 , 95 )
end

function ItemUse_SCBoxFHG ( role , Item )		--�ɺ�
	local cha = TurnToCha ( role ) 
	local cha_type = GetChaTypeID ( cha ) 

	local Item_CanGet = GetChaFreeBagGridNum ( cha )

	if Item_CanGet == 0 then
		SystemNotice(role ,"����û��ʣ��ռ䣬���俪��ʧ�ܡ�")
		UseItemFailed ( role )
		return
	end

	GiveItem ( cha , 0 , 0117 , 1 , 95 )
end

function ItemUse_SCBoxLXHZ ( role , Item )		--���ǻ���
	local cha = TurnToCha ( role ) 
	local cha_type = GetChaTypeID ( cha ) 

	local Item_CanGet = GetChaFreeBagGridNum ( cha )

	if Item_CanGet == 0 then
		SystemNotice(role ,"����û��ʣ��ռ䣬���俪��ʧ�ܡ�")
		UseItemFailed ( role )
		return
	end

	GiveItem ( cha , 0 , 0119 , 1 , 95 )
end

function ItemUse_SCBoxYCJ ( role , Item )		--�㳦
	local cha = TurnToCha ( role ) 
	local cha_type = GetChaTypeID ( cha ) 

	local Item_CanGet = GetChaFreeBagGridNum ( cha )

	if Item_CanGet == 0 then
		SystemNotice(role ,"����û��ʣ��ռ䣬���俪��ʧ�ܡ�")
		UseItemFailed ( role )
		return
	end

	GiveItem ( cha , 0 , 0150 , 1 , 95 )
end

--��Ƥ�� 

function ItemUse_Map_YPJ ( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 1 then
		SystemNotice(role ,"����������Ҫ1����λ")
		UseItemFailed ( role )
		return
	end 
	local Has_GoldenMap = CheckBagItem ( role , 1093 )
	if Has_GoldenMap >= 1 then
		SystemNotice ( role , "ͬʱֻ��Я��һ�Ųر�ͼ" )
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 1093 , 1 , 0 )
end

--��ʽ��Ƥ��
function ItemUse_Map_JLBYPJ( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 1 then
		SystemNotice(role ,"����������Ҫ1����λ")
		UseItemFailed ( role )
		return
	end 
	local Has_GoldenMap = CheckBagItem ( role , 682 )
	local lv= GetChaAttr(role, ATTR_LV) 
	if Has_GoldenMap >= 1 then
		SystemNotice ( role , "ͬʱֻ��Я��һ�Ųر�ͼ" )
		UseItemFailed ( role )
		return
	end
	if lv <15 or  lv >40 then
		SystemNotice ( role , "��ɫ��ǰ�������15�������40������ʹ����ʽ��Ƥ��" )
		UseItemFailed ( role )
		return	
	end
	GiveItem ( role , 0 , 682 , 1 , 0 )
end
-- �ر�ͼ

function ItemUse_GoldenMap ( role , Item )
 	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 1 then
		SystemNotice(role ,"����������Ҫ1����λ")
		UseItemFailed ( role )
		return
	end 
	local Has_GoldenMap = CheckBagItem ( role , 1093 )
	if Has_GoldenMap >= 2 then
		SystemNotice ( role , "��Я���Ĳر�ͼ����һ�ţ��ھ�ʧ��" )
		UseItemFailed ( role )
		return
	end
	local Item = GetChaItem2 ( role , 2 , 1093 )
	local Item_MAXURE = GetItemAttr ( Item , ITEMATTR_MAXURE )
	local Item_URE = GetItemAttr ( Item , ITEMATTR_URE )
	local Item_MAXENERGY = GetItemAttr ( Item , ITEMATTR_MAXENERGY )
	local pos_x = Item_MAXURE
	local pos_y = Item_MAXENERGY
	local Themap = Item_URE
--	SystemNotice ( role , "pos_x"..pos_x )
--	SystemNotice ( role , "pos_y"..pos_y )
--	SystemNotice ( role , "Themap"..Themap )
	
	local MapList = { }
	
	MapList [0] = "NoMap"
	MapList [1] = "garner"
	MapList [2] = "magicsea"
	MapList [3] = "darkblue"

	local MapNameList = { }
	
	MapNameList [0] = "û�е�ͼ"
	MapNameList [1] = "����"
	MapNameList [2] = "ħŮ"
	MapNameList [3] = "����"
	if pos_x == 0 or pos_y == 0 or Themap == 0 then
		pos_x , pos_y , Themap = GetTheMapPos ( role , 1 )		
--		pos_x,pos_y,Themap = GetMapRanPos ( role )
		Item_MAXURE = pos_x
		Item_URE = Themap
		Item_MAXENERGY = pos_y
		
		SetItemAttr ( Item , ITEMATTR_MAXENERGY , Item_MAXENERGY )
		SetItemAttr ( Item , ITEMATTR_MAXURE , Item_MAXURE )
		SetItemAttr ( Item , ITEMATTR_URE , Item_URE )
--		SystemNotice ( role , "Themap"..Themap )
--		Item_MAXENERGY = GetItemAttr ( Item , ITEMATTR_MAXENERGY )
--		SystemNotice ( role , "Item_MAXENERGY"..Item_MAXENERGY )
	end
	local GetPos = CheckGetMapPos ( role , pos_x , pos_y , MapList[Themap] )
--	SystemNotice ( role , "CheckPosOver"..GetPos ) 
	if GetPos == 0 then
		SystemNotice ( role , "���ص�λ����"..MapNameList[Themap].."����� "..pos_x..","..pos_y.." ����" )
		UseItemFailed ( role )
		return
	elseif GetPos == 1 then
		local getrandom = math.random ( 1 , 3 )
		if getrandom == 1 then
			GiveGoldenMapItem ( role )
		else
			SystemNotice ( role , "����û�ڳ���ʲô�������ڸ������ڿ���" )
			UseItemFailed ( role )
			return
		end
	end
end

-- ���ձȲر�ͼ
function ItemUse_JLB_GoldenMap ( role , Item )
 	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"����������Ҫ1����λ")
		UseItemFailed ( role )
		return
	end 
	local lv= GetChaAttr(role, ATTR_LV) 
	if lv <15 or  lv >40 then
		SystemNotice ( role , "��ɫ��ǰ�������15�������40������ʹ�òر�ͼ" )
		UseItemFailed ( role )
		return	
	end
	local Has_GoldenMap = CheckBagItem ( role , 682 )
	if Has_GoldenMap >= 2 then
		SystemNotice ( role , "��Ҫ�ڱ�����ֻ�ܴ�һ�Ųر�ͼ������Ĳر�ͼ������ʱ��ŵ�������" )
		UseItemFailed ( role )
		return
	end
	local Item = GetChaItem2 ( role , 2 , 682 )
	local Item_MAXURE = GetItemAttr ( Item , ITEMATTR_MAXURE )
	local Item_URE = GetItemAttr ( Item , ITEMATTR_URE )
	local Item_MAXENERGY = GetItemAttr ( Item , ITEMATTR_MAXENERGY )
	local pos_x = Item_MAXURE
	local pos_y = Item_MAXENERGY
	local Themap = Item_URE
	local MapList = { }	
	MapList [0] = "NoMap"
	MapList [1] = "jialebi"
	local MapNameList = { }
	MapNameList [0] = "û�е�ͼ"
	MapNameList [1] = "�ر�����"
	if pos_x == 0 or pos_y == 0 or Themap == 0 then
		pos_x , pos_y , Themap = GetTheMapPos_JLB ( role , 1 )	
		Item_MAXURE = pos_x
		Item_URE = Themap
		Item_MAXENERGY = pos_y
		SetItemAttr ( Item , ITEMATTR_MAXENERGY , Item_MAXENERGY )
		SetItemAttr ( Item , ITEMATTR_MAXURE , Item_MAXURE )
		SetItemAttr ( Item , ITEMATTR_URE , Item_URE )
	end
	local GetPos = CheckGetMapPos ( role , pos_x , pos_y , MapList[Themap] )
	if GetPos == 0 then
		SystemNotice ( role , "���ص�λ����"..MapNameList[Themap].."����� "..pos_x..","..pos_y.." ����" )
		UseItemFailed ( role )
		return
	elseif GetPos == 1 then
		local getrandom = math.random ( 1 , 3 )
		if getrandom == 1 then
			GiveGoldenMapItem_JLB ( role )
		else
			SystemNotice ( role , "����û�ڳ���ʲô�������ڸ������ڿ���" )
			UseItemFailed ( role )
			return
		end
	end
end




--���յ���
function ItemUse_BirthCake ( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ==  nil then
		local attr_ap = Attr_ap( role )
		local ap_extre = 3
		attr_ap = attr_ap + ap_extre 
		SetCharaAttr( attr_ap, role, ATTR_AP )
	else
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end
end
------------------------���ڻ�����־
function ItemUse_HappyBook ( role , Item )
	local Cha_Boat = 0
	local charLv=Lv ( role )
	local dif_exp_one = DEXP[charLv+1]
	local dif_exp_three = DEXP[charLv+3]
	local dif_exp_five = DEXP[charLv+5]
	local Exp_star=GetChaAttr (  role , ATTR_CEXP )----------��ǰ�ȼ�����
	local dif_exp_half = (DEXP[charLv+1] - DEXP[charLv])*0.5 +  Exp_star +10
	local dif_exp_thalf = (DEXP[charLv+1] - DEXP[charLv])*0.3  +  Exp_star + 10
	local dif_exp_thalf_b = dif_exp_thalf - DEXP[charLv+1]
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	elseif charLv>=1 and charLv<=9 then
		SetChaAttrI( role , ATTR_CEXP , dif_exp_five )
	elseif charLv>=10 and charLv<=29 then
			SetChaAttrI( role , ATTR_CEXP , dif_exp_three )
	elseif charLv>=30 and charLv<=59 then
			SetChaAttrI( role , ATTR_CEXP , dif_exp_one )
	elseif charLv>=60 and charLv<=75 then
			SetChaAttrI( role , ATTR_CEXP , dif_exp_half )
	elseif charLv>=76 and charLv<=85 and charLv~=79  then
			SetChaAttrI( role , ATTR_CEXP , dif_exp_thalf )
	elseif charLv==79 and dif_exp_thalf_b<=0 then 
			SetChaAttrI( role , ATTR_CEXP , dif_exp_thalf )
	elseif charLv==79 and dif_exp_thalf_b>0 then 
			dif_exp_thalf = dif_exp_thalf_b*0.02 + DEXP[charLv+1]
			SetChaAttrI( role , ATTR_CEXP , dif_exp_thalf )
	elseif charLv>=86 then
		SystemNotice( role , "������߲���ʹ��" )
		UseItemFailed ( role )
		return
	end
end
------------���¾���

function ItemUse_MarchElf ( role , Item )
	local statelv = 1
	local statetime = 600
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ==  nil then
		local cha_type = GetChaTypeID ( role )
		if cha_type == 3 or cha_type == 4 then
			AddState( role , role , STATE_MarchElf , statelv , statetime )
		else
			SystemNotice ( role , "���¾���ֻ��Ů�Խ�ɫʹ��" )
			UseItemFailed ( role )
			return
		end
	else
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end

end

--����ҩˮ

function ItemUse_MspdYS ( role , Item )
	local statelv = 1
	local statetime = 900
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )


	if Cha_Boat ==  nil then
		AddState( role , role , STATE_YSMspd , statelv , statetime )
		--SystemNotice( role , "A" )

	else
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end

end

--���Ƿ�

function ItemUse_SanJiaoFan ( role , Item )
	local statelv = 1
	local statetime = 900
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ~=  nil then
		AddState( Cha_Boat , Cha_Boat , STATE_YSBoatMspd , statelv , statetime )
	else
		SystemNotice( role , "����ʱ�ſ�ʹ��" )
		UseItemFailed ( role )
		return
	end

end

--�߼�װ��

function ItemUse_GJZhuangJia ( role , Item )
	local statelv = 1
	local statetime = 900
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ~=  nil then
		AddState( Cha_Boat , Cha_Boat , STATE_YSBoatDEF , statelv , statetime )
	else
		SystemNotice( role , "����ʱ�ſ�ʹ��" )
		UseItemFailed ( role )
		return
	end

end

--��ǩ

--����ǩ

function ItemUse_SuanmingMoney ( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ==  nil then
		
		
		local Has_GoldenMap = CheckBagItem ( role , 3336 )
		if Has_GoldenMap >= 1 then
			SystemNotice ( role , "ʹ�������" )
			SuanmingTeshu_Money ( role )
			DelBagItem( role , 3336 , 1 )
		else
			Suanming_Money ( role )
		end
	else
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end

	
end

--��ҵǮ

function ItemUse_SuanmingWork ( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ==  nil then
		local lv = Lv ( role )
		local exp = Exp(role) 
		local clexp = GetChaAttrI ( role , ATTR_CLEXP )
		if exp < clexp then
			SystemNotice ( role , "������ڵ�ǰ�������辭�飬���ܳ�ǩ��" )
			UseItemFailed ( role )
			return
		end
		
		local Has_GoldenMap = CheckBagItem ( role , 3336 )
		if Has_GoldenMap >= 1 then
			SystemNotice ( role , "ʹ�������" )
			SuanmingTeshu_Work ( role )
			DelBagItem( role , 3336 , 1 )	
		else
			Suanming_Work ( role )
		end
	else
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end
end



--����

function ItemUse_HuoRongSW ( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ==  nil then
		RemoveState( role , STATE_BDJ )
		AddState ( role , role , STATE_TTISW , 1 , 300 )
	else
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end
	
end

--���

function ItemUse_ZhouGUSW ( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ==  nil then
		RemoveState( role , STATE_ZZZH )
		AddState ( role , role , STATE_TTISW , 2 , 300 )
	else
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end
	
end

--ˮâ

function ItemUse_ShuiMangSW ( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ==  nil then
		RemoveState( role , STATE_CRXSF )
		AddState ( role , role , STATE_TTISW , 3 , 300 )
	else
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end
	
end

--����

function ItemUse_HuFuSW ( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ==  nil then
		RemoveState( role , STATE_JSDD )
		AddState ( role , role , STATE_TTISW , 4 , 1200 )
	else
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end
	
end
--28�񱳰�GetKbCap
----[[28������ʽ]]--��������������������������������������������������������������������������������������������������������������������������������������������������������

function ItemUse_28BeiBao( role , Item ) 
	local bagnum = GetKbCap(role) 
	if bagnum >= 28 then
		SystemNotice(role ,"�����ظ�ʹ�õ���")
		UseItemFailed ( role )
		return
	end
	AddKbCap(role, 4) 
end 

----[[32������ʽ]]--��������������������������������������������������������������������������������������������������������������������������������������������������������

function ItemUse_32BeiBao( role , Item ) 
	local bagnum = GetKbCap(role) 
	if bagnum >= 32 then
		SystemNotice(role ,"�����ظ�ʹ�õ���")
		UseItemFailed ( role )
		return
	end
	if bagnum <= 24 then
		SystemNotice(role ,"����Խ��ʹ�õ���")
		UseItemFailed ( role )
		return
	end
	AddKbCap(role, 4) 
end 
----[[36������ʽ]]--��������������������������������������������������������������������������������������������������������������������������������������������������������

function ItemUse_36BeiBao( role , Item ) 
	local bagnum = GetKbCap(role) 
	if bagnum >= 36 then
		SystemNotice(role ,"�����ظ�ʹ�õ���")
		UseItemFailed ( role )
		return
	end
	if bagnum <= 28 then
		SystemNotice(role ,"����Խ��ʹ�õ���")
		UseItemFailed ( role )
		return
	end
	AddKbCap(role, 4) 
end 
----[[40������ʽ]]--��������������������������������������������������������������������������������������������������������������������������������������������������������

function ItemUse_40BeiBao( role , Item ) 
	local bagnum = GetKbCap(role) 
	if bagnum >= 40 then
		SystemNotice(role ,"�����ظ�ʹ�õ���")
		UseItemFailed ( role )
		return
	end
	if bagnum <= 32 then
		SystemNotice(role ,"����Խ��ʹ�õ���")
		UseItemFailed ( role )
		return
	end
	AddKbCap(role, 4) 
end 
----[[44������ʽ]]--��������������������������������������������������������������������������������������������������������������������������������������������������������

function ItemUse_44BeiBao( role , Item ) 
	local bagnum = GetKbCap(role) 
	if bagnum >= 44 then
		SystemNotice(role ,"�����ظ�ʹ�õ���")
		UseItemFailed ( role )
		return
	end
	if bagnum <= 36 then
		SystemNotice(role ,"����Խ��ʹ�õ���")
		UseItemFailed ( role )
		return
	end
	AddKbCap(role, 4) 
end 
----[[48������ʽ]]--��������������������������������������������������������������������������������������������������������������������������������������������������������

function ItemUse_48BeiBao( role , Item ) 
	local bagnum = GetKbCap(role) 
	if bagnum >= 48 then
		SystemNotice(role ,"�����ظ�ʹ�õ���")
		UseItemFailed ( role )
		return
	end
	if bagnum <= 40 then
		SystemNotice(role ,"����Խ��ʹ�õ���")
		UseItemFailed ( role )
		return
	end
	AddKbCap(role, 4) 
end 
----[[����]]--------------------------------------
function ItemUse_BQ ( role , Item )

end 
----[[��������]]--------------------------------------

function ItemUse_SiLiao ( role , Item , Item_Traget )
	
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "����ʱ����ʹ��" ) 
		UseItemFailed ( role ) 
		return 
	end      
		local Item_Traget_URE=GetItemAttr(Item_Traget,ITEMATTR_URE)  --ȡ��ǰ�;�
		local Item_Traget_MAXURE=GetItemAttr(Item_Traget,ITEMATTR_MAXURE)--ȡ����;�
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		local Num = 2500

		if Item_type == 57 and Item_Traget_Type == 59 then
				if Item_Traget_URE < Item_Traget_MAXURE then
				   Give_ElfURE ( role , Item_Traget , Num )
   	 			else
                                        SystemNotice(role , "�����Ѿ��Ա�" ) 
					UseItemFailed ( role )
					return
				end
		end 

end

----[[������������]]--------------------------------------������������������

function ItemUse_CWSiLiao ( role , Item , Item_Traget )
	
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "����ʱ����ʹ��" ) 
		UseItemFailed ( role ) 
		return 
	end      
		local Item_Traget_URE=GetItemAttr(Item_Traget,ITEMATTR_URE)  --ȡ��ǰ�;�
		local Item_Traget_MAXURE=GetItemAttr(Item_Traget,ITEMATTR_MAXURE)--ȡ����;�
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		local Num = 250

		if Item_type == 57 and Item_Traget_Type == 59 then
				if Item_Traget_URE < Item_Traget_MAXURE then
				   Give_ElfURE ( role , Item_Traget , Num )
   	 			else
                                        SystemNotice(role , "�����Ѿ��Ա�" ) 
					UseItemFailed ( role )
					return
				end
		end 

end


----[[��ʳ����]]--------------------------------------

--ʥѩɽ����
function ItemUse_LS_longguo ( role , Item , Item_Traget ) 

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "����ʱ����ʹ��" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		local Item_Num = GetItemID ( Item )
		local Check_Exp = 0
		local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 
		--SystemNotice(role ,Elf_MaxEXP )

		if Item_type == 58 and Item_Traget_Type == 59 then
				Check_Exp = CheckElf_EXP ( role , Item_Traget ) --����exp�Ƿ�������������
				if Check_Exp == 0 then
					SystemNotice(role , "�ɳ���û�дﵽ�����ιʳʥѩɽ����" ) 
					UseItemFailed ( role )
				else
				   Lvup_Str ( role , Item_Num , Item_Traget ) --���ݾ������ѡ��ͬ���Եĳɳ����� ( ����Ϊstr )
				end 
		end 
end

--����ˬ��÷
function ItemUse_LS_koumei ( role , Item , Item_Traget ) 

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "����ʱ����ʹ��" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		local Item_Num = GetItemID ( Item )
		local Check_Exp = 0
		local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 

		if Item_type == 58 and Item_Traget_Type == 59 then
				Check_Exp = CheckElf_EXP ( role , Item_Traget ) --����exp�Ƿ�������������
				if Check_Exp == 0 then
					SystemNotice(role , "�ɳ���û�дﵽ�����ιʳ����ˬ��÷" ) 
					UseItemFailed ( role )
				else
				   Lvup_Agi ( role , Item_Num , Item_Traget ) --���ݾ������ѡ��ͬ���Եĳɳ����� ( ����Ϊstr )
				end 
		end 
end

--��������˿
function ItemUse_LS_yusi ( role , Item , Item_Traget ) 

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "����ʱ����ʹ��" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		local Item_Num = GetItemID ( Item )
		local Check_Exp = 0
		local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 

		if Item_type == 58 and Item_Traget_Type == 59  then
				Check_Exp = CheckElf_EXP ( role , Item_Traget ) --����exp�Ƿ�������������
				if Check_Exp == 0 then
					SystemNotice(role , "�ɳ���û�дﵽ�����ιʳ��������˿" ) 
					UseItemFailed ( role )
				else
				   Lvup_Dex ( role , Item_Num , Item_Traget ) --���ݾ������ѡ��ͬ���Եĳɳ����� ( ����Ϊstr )
				end 
		end 
end

--�����ǹ���
function ItemUse_LS_guopu ( role , Item , Item_Traget ) 

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "����ʱ����ʹ��" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		local Item_Num = GetItemID ( Item )
		local Check_Exp = 0
		local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 

		if Item_type == 58 and Item_Traget_Type == 59 then
				Check_Exp = CheckElf_EXP ( role , Item_Traget ) --����exp�Ƿ�������������
				if Check_Exp == 0 then
					SystemNotice(role , "�ɳ���û�дﵽ�����ιʳ�����ǹ���" ) 
					UseItemFailed ( role )
				else
				   Lvup_Con ( role , Item_Num , Item_Traget ) --���ݾ������ѡ��ͬ���Եĳɳ����� ( ����Ϊstr )
				end 
		end 
end

--��ɳ��ױ�
function ItemUse_LS_mibing ( role , Item , Item_Traget ) 

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "����ʱ����ʹ��" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		local Item_Num = GetItemID ( Item )
		local Check_Exp = 0
		local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 

		if Item_type == 58 and Item_Traget_Type == 59  then
				Check_Exp = CheckElf_EXP ( role , Item_Traget ) --����exp�Ƿ�������������
				if Check_Exp == 0 then
					SystemNotice(role , "�ɳ���û�дﵽ�����ιʳ��ɳ��ױ�" ) 
					UseItemFailed ( role )
				else
				   Lvup_Sta ( role , Item_Num , Item_Traget ) --���ݾ������ѡ��ͬ���Եĳɳ����� ( ����Ϊstr )
				end  
			        --local Item_MAXENERGY = Elf_MaxEXP + 20
				--SetItemAttr ( Item_Traget , ITEMATTR_MAXENERGY , Item_MAXENERGY )				
		end 
end
----------------------------------------------------
function ItemUse_HuDun_CJ ( role , Item , Item_Traget )   --����������
			--SystemNotice( role , "s" )

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "����ʱ����ʹ��" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )	 --����32λ������Ϣ����
		local SkillType = 1		--Ҫ���ӵ� Skill ����
		local SkillNum = 1		--Ҫ���ӵ�Skill ���
				--SystemNotice( role , SkillType )
				--SystemNotice( role , SkillNum )

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )

			if Check == 1 then
				SystemNotice(role , "���иü���,ʹ��ʧ��" ) 
				UseItemFailed ( role )
			else
		        --SystemNotice( role , "AddElfSkill" )

			AddElfSkill ( Item_Traget , SkillType , SkillNum )
		        --SystemNotice( role , "���������" )

			end
		end

end
----------------------------------------------------
function ItemUse_HuDun_ZJ ( role , Item , Item_Traget )   --�м�������
			--SystemNotice( role , "s" )

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "����ʱ����ʹ��" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )	 --����32λ������Ϣ����
		local SkillType = 2		--Ҫ���ӵ� Skill ����
		local SkillNum = 1		--Ҫ���ӵ�Skill ���
				--SystemNotice( role , SkillType )
				--SystemNotice( role , SkillNum )

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )

			if Check == 1 then
				SystemNotice(role , "���иü���,ʹ��ʧ��" ) 
				UseItemFailed ( role )
			else
		        --SystemNotice( role , "AddElfSkill" )

			AddElfSkill ( Item_Traget , SkillType , SkillNum )
		        --SystemNotice( role , "���������" )

			end
		end

end

----------------------------------------------------
function ItemUse_HuDun_GJ ( role , Item , Item_Traget )   --�߼�������
			--SystemNotice( role , "s" )

--	local Cha_Boat = 0
--	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
--	if Cha_Boat ~= nil then 
--		SystemNotice( role , "����ʱ����ʹ��" ) 
		UseItemFailed ( role ) 
--		return 
--	end 
--		local Item_type =  GetItemType ( Item )
--		local Item_Traget_Type =  GetItemType ( Item_Traget )
--		local Num = GetItemForgeParam ( Item_Traget , 1 )	 --����32λ������Ϣ����
--		local SkillType = 3		--Ҫ���ӵ� Skill ����
--		local SkillNum = 1		--Ҫ���ӵ�Skill ���
				--SystemNotice( role , SkillType )
				--SystemNotice( role , SkillNum )
--
--		if Item_type == 58 and Item_Traget_Type == 59 then
--			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )

--			if Check == 1 then
--				SystemNotice(role , "���иü���,ʹ��ʧ��" ) 
--				UseItemFailed ( role )
--			else
		        --SystemNotice( role , "AddElfSkill" )

--			AddElfSkill ( Item_Traget , SkillType , SkillNum )
		        --SystemNotice( role , "���������" )
--			end
--		end

end


----------------------------------------------------
function ItemUse_BaoJi_CJ ( role , Item , Item_Traget )   --��������
			--SystemNotice( role , "s" )

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "����ʱ����ʹ��" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )	 --����32λ������Ϣ����
		local SkillType = 1		--Ҫ���ӵ� Skill ����
		local SkillNum = 2		--Ҫ���ӵ�Skill ���
				--SystemNotice( role , SkillType )
				--SystemNotice( role , SkillNum )

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )

			if Check == 1 then
				SystemNotice(role , "���иü���,ʹ��ʧ��" ) 
				UseItemFailed ( role )
			else
		        --SystemNotice( role , "AddElfSkill" )

			AddElfSkill ( Item_Traget , SkillType , SkillNum )
		        --SystemNotice( role , "���������" )

			end
		end

end

----------------------------------------------------
function ItemUse_BaoJi_ZJ ( role , Item , Item_Traget )   --�м�����
			--SystemNotice( role , "s" )

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "����ʱ����ʹ��" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )	 --����32λ������Ϣ����
		local SkillType = 2		--Ҫ���ӵ� Skill ����
		local SkillNum = 2		--Ҫ���ӵ�Skill ���
				--SystemNotice( role , SkillType )
				--SystemNotice( role , SkillNum )

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )

			if Check == 1 then
				SystemNotice(role , "���иü���,ʹ��ʧ��" ) 
				UseItemFailed ( role )
			else
		        --SystemNotice( role , "AddElfSkill" )

			AddElfSkill ( Item_Traget , SkillType , SkillNum )
		        --SystemNotice( role , "���������" )

			end
		end

end


----------------------------------------------------
function ItemUse_BaoJi_GJ ( role , Item , Item_Traget )   --�߼�����
			--SystemNotice( role , "s" )

--	local Cha_Boat = 0
--	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
--	if Cha_Boat ~= nil then 
--		SystemNotice( role , "����ʱ����ʹ��" ) 
		UseItemFailed ( role ) 
--		return 
--	end 
--		local Item_type =  GetItemType ( Item )
--		local Item_Traget_Type =  GetItemType ( Item_Traget )
--		local Num = GetItemForgeParam ( Item_Traget , 1 )	 --����32λ������Ϣ����
--		local SkillType = 3		--Ҫ���ӵ� Skill ����
--		local SkillNum = 2		--Ҫ���ӵ�Skill ���
				--SystemNotice( role , SkillType )
				--SystemNotice( role , SkillNum )

--		if Item_type == 58 and Item_Traget_Type == 59 then
--			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )
--
--			if Check == 1 then
--				SystemNotice(role , "���иü���,ʹ��ʧ��" ) 
--				UseItemFailed ( role )
--			else
--		       -- SystemNotice( role , "AddElfSkill" )
--
--			AddElfSkill ( Item_Traget , SkillType , SkillNum )
--		        --SystemNotice( role , "���������" )
--
--			end
--		end
--
end


----------------------------------------------------
function ItemUse_MoLi_CJ ( role , Item , Item_Traget )   --����ħ��
			--SystemNotice( role , "s" )

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "����ʱ����ʹ��" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )	 --����32λ������Ϣ����
		local SkillType = 1		--Ҫ���ӵ� Skill ����
		local SkillNum = 3		--Ҫ���ӵ�Skill ���
				--SystemNotice( role , SkillType )
				--SystemNotice( role , SkillNum )

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )

			if Check == 1 then
				SystemNotice(role , "���иü���,ʹ��ʧ��" ) 
				UseItemFailed ( role )
			else
		        --SystemNotice( role , "AddElfSkill" )

			AddElfSkill ( Item_Traget , SkillType , SkillNum )
		        --SystemNotice( role , "���������" )

			end
		end

end


----------------------------------------------------
function ItemUse_MoLi_ZJ ( role , Item , Item_Traget )   --�м�ħ��
			--SystemNotice( role , "s" )

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "����ʱ����ʹ��" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )	 --����32λ������Ϣ����
		local SkillType = 2		--Ҫ���ӵ� Skill ����
		local SkillNum = 3		--Ҫ���ӵ�Skill ���
				--SystemNotice( role , SkillType )
				--SystemNotice( role , SkillNum )

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )

			if Check == 1 then
				SystemNotice(role , "���иü���,ʹ��ʧ��" ) 
				UseItemFailed ( role )
			else
		        --SystemNotice( role , "AddElfSkill" )

			AddElfSkill ( Item_Traget , SkillType , SkillNum )
		        --SystemNotice( role , "���������" )

			end
		end

end

----------------------------------------------------
function ItemUse_MoLi_GJ ( role , Item , Item_Traget )   --�߼�ħ��
			--SystemNotice( role , "s" )

--	local Cha_Boat = 0
--	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
--	if Cha_Boat ~= nil then 
--		SystemNotice( role , "����ʱ����ʹ��" ) 
		UseItemFailed ( role ) 
--		return 
--	end 
--		local Item_type =  GetItemType ( Item )
--		local Item_Traget_Type =  GetItemType ( Item_Traget )
--		local Num = GetItemForgeParam ( Item_Traget , 1 )	 --����32λ������Ϣ����
--		local SkillType = 3		--Ҫ���ӵ� Skill ����
--		local SkillNum = 3		--Ҫ���ӵ�Skill ���
--				--SystemNotice( role , SkillType )
--				--SystemNotice( role , SkillNum )
--
--		if Item_type == 58 and Item_Traget_Type == 59 then
--			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )
--
--			if Check == 1 then
--				SystemNotice(role , "���иü���,ʹ��ʧ��" ) 
--				UseItemFailed ( role )
--			else
--		        --SystemNotice( role , "AddElfSkill" )
--
--			AddElfSkill ( Item_Traget , SkillType , SkillNum )
--		        --SystemNotice( role , "���������" )
--
--			end
--		end

end

----------------------------------------------------
function ItemUse_HuiFu_CJ ( role , Item , Item_Traget )   --�����ָ�
			--SystemNotice( role , "s" )

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "����ʱ����ʹ��" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )	 --����32λ������Ϣ����
		local SkillType = 1		--Ҫ���ӵ� Skill ����
		local SkillNum = 4		--Ҫ���ӵ�Skill ���
				--SystemNotice( role , SkillType )
				--SystemNotice( role , SkillNum )

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )

			if Check == 1 then
				SystemNotice(role , "���иü���,ʹ��ʧ��" ) 
				UseItemFailed ( role )
			else
		        --SystemNotice( role , "AddElfSkill" )

			AddElfSkill ( Item_Traget , SkillType , SkillNum )
		        --SystemNotice( role , "���������" )

			end
		end

end

----------------------------------------------------
function ItemUse_HuiFu_ZJ ( role , Item , Item_Traget )   --�м��ָ�
			--SystemNotice( role , "s" )

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "����ʱ����ʹ��" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )	 --����32λ������Ϣ����
		local SkillType = 2		--Ҫ���ӵ� Skill ����
		local SkillNum = 4		--Ҫ���ӵ�Skill ���
				--SystemNotice( role , SkillType )
				--SystemNotice( role , SkillNum )

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )

			if Check == 1 then
				SystemNotice(role , "���иü���,ʹ��ʧ��" ) 
				UseItemFailed ( role )
			else
		        --SystemNotice( role , "AddElfSkill" )

			AddElfSkill ( Item_Traget , SkillType , SkillNum )
		        --SystemNotice( role , "���������" )

			end
		end

end


----------------------------------------------------
function ItemUse_HuiFu_GJ ( role , Item , Item_Traget )   --�߼��ָ�
			--SystemNotice( role , "s" )

--	local Cha_Boat = 0
--	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
--	if Cha_Boat ~= nil then 
--		SystemNotice( role , "����ʱ����ʹ��" ) 
		UseItemFailed ( role ) 
--		return 
--	end 
--		local Item_type =  GetItemType ( Item )
--		local Item_Traget_Type =  GetItemType ( Item_Traget )
--		local Num = GetItemForgeParam ( Item_Traget , 1 )	 --����32λ������Ϣ����
--		local SkillType = 3		--Ҫ���ӵ� Skill ����
--		local SkillNum = 4		--Ҫ���ӵ�Skill ���
--				--SystemNotice( role , SkillType )
--				--SystemNotice( role , SkillNum )
--
--		if Item_type == 58 and Item_Traget_Type == 59 then
--			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )
--
--			if Check == 1 then
--				SystemNotice(role , "���иü���,ʹ��ʧ��" ) 
--				UseItemFailed ( role )
--			else
--		        --SystemNotice( role , "AddElfSkill" )
--
--			AddElfSkill ( Item_Traget , SkillType , SkillNum )
--		        --SystemNotice( role , "���������" )

--			end
--		end

end

----------------------------------------------------
function ItemUse_ChenSi_CJ ( role , Item , Item_Traget )   --������˼
			--SystemNotice( role , "s" )

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "����ʱ����ʹ��" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )	 --����32λ������Ϣ����
		local SkillType = 1		--Ҫ���ӵ� Skill ����
		local SkillNum = 5		--Ҫ���ӵ�Skill ���
				--SystemNotice( role , SkillType )
				--SystemNotice( role , SkillNum )

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )

			if Check == 1 then
				SystemNotice(role , "���иü���,ʹ��ʧ��" ) 
				UseItemFailed ( role )
			else
		        --SystemNotice( role , "AddElfSkill" )

			AddElfSkill ( Item_Traget , SkillType , SkillNum )
		        --SystemNotice( role , "���������" )

			end
		end

end

----------------------------------------------------
function ItemUse_ChenSi_ZJ ( role , Item , Item_Traget )   --�м���˼
			--SystemNotice( role , "s" )

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "����ʱ����ʹ��" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )	 --����32λ������Ϣ����
		local SkillType = 2		--Ҫ���ӵ� Skill ����
		local SkillNum = 5		--Ҫ���ӵ�Skill ���
				--SystemNotice( role , SkillType )
				--SystemNotice( role , SkillNum )

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )

			if Check == 1 then
				SystemNotice(role , "���иü���,ʹ��ʧ��" ) 
				UseItemFailed ( role )
			else
		        --SystemNotice( role , "AddElfSkill" )

			AddElfSkill ( Item_Traget , SkillType , SkillNum )
		        --SystemNotice( role , "���������" )

			end
		end

end


----------------------------------------------------
function ItemUse_ChenSi_GJ ( role , Item , Item_Traget )   --�߼���˼
			--SystemNotice( role , "s" )

--	local Cha_Boat = 0
--	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
--	if Cha_Boat ~= nil then 
--		SystemNotice( role , "����ʱ����ʹ��" ) 
		UseItemFailed ( role ) 
--		return 
--	end 
--		local Item_type =  GetItemType ( Item )
--		local Item_Traget_Type =  GetItemType ( Item_Traget )
--		local Num = GetItemForgeParam ( Item_Traget , 1 )	 --����32λ������Ϣ����
--		local SkillType = 3		--Ҫ���ӵ� Skill ����
--		local SkillNum = 5		--Ҫ���ӵ�Skill ���
--				--SystemNotice( role , SkillType )
--				--SystemNotice( role , SkillNum )
--
--		if Item_type == 58 and Item_Traget_Type == 59 then
--			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )
--
--			if Check == 1 then
--				SystemNotice(role , "���иü���,ʹ��ʧ��" ) 
--				UseItemFailed ( role )
--			else
--		        --SystemNotice( role , "AddElfSkill" )
--
--			AddElfSkill ( Item_Traget , SkillType , SkillNum )
--		        --SystemNotice( role , "���������" )
--
--			end
--		end

end

-----------------------------------------------------------
--�����ٻ�

function ItemUse_MonsterSummon ( role , Item , Item_Traget )

	local Monster_GetID = {}
	Monster_GetID[1] = math.random ( 40 , 80 )
	Monster_GetID[2] = math.random ( 98 , 146 )
	Monster_GetID[3] = math.random ( 194, 241 )
	Monster_GetID[4] = math.random ( 500, 571 )
	Monster_GetID[5]= 789

	local ID_Get = math.random ( 1 , 5 )
	local x, y = GetChaPos( role )
	local MonsterID = Monster_GetID [ ID_Get ]
	local Refresh = 50					--����ʱ�䣬�뵥λ
	local life = 40000					--����ʱ�䣬���뵥λ
	local new = CreateCha( MonsterID , x , y , 145 , Refresh )
	SetChaLifeTime( new, life )

end


----------------------------------------------------------

--���ݼ�
function ItemUse_Ant_Hzcr ( role , Item , Item_Traget )

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		RemoveState( Cha_Boat , STATE_HZCR )
	else
		SystemNotice( role , "�ڰ����޷�ʹ��" )
		UseItemFailed ( role )
		return
	end

end


--��֮���鵰

function ItemUse_MINGZJLD ( role, Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬ʹ����֮���鵰ʧ��")
		UseItemFailed ( role )
		return
	end

	GiveItem ( role , 0 , 183  , 1 , 4 ) 
end

--��֮���鵰

function ItemUse_FAZJLD ( role, Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬ʹ�÷�֮���鵰ʧ��")
		UseItemFailed ( role )
		return
	end

	GiveItem ( role , 0 , 184  , 1 , 4 ) 
end

--ǫ֮���鵰

function ItemUse_QIANZJLD ( role, Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬ʹ��ǫ֮���鵰ʧ��")
		UseItemFailed ( role )
		return
	end

	GiveItem ( role , 0 , 185  , 1 , 4 ) 
end

--��֮���鵰

function ItemUse_HENGZJLD( role, Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬ʹ�ú�֮���鵰ʧ��")
		UseItemFailed ( role )
		return
	end

	GiveItem ( role , 0 , 186  , 1 , 4 )  
end

--��֮���鵰

function ItemUse_YUZJLD( role, Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬ʹ����֮���鵰ʧ��")
		UseItemFailed ( role )
		return
	end

	GiveItem ( role , 0 , 187  , 1 , 4 )  
end
--Ѫ֮���鵰

function ItemUse_XUEZJLD( role, Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬ʹ��Ѫ֮���鵰ʧ��")
		UseItemFailed ( role )
		return
	end

	GiveItem ( role , 0 , 188  , 1 , 4 )  
end

--��֮���鵰

function ItemUse_XINGZJLD ( role, Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬ʹ����֮���鵰ʧ��")
		UseItemFailed ( role )
		return
	end

	GiveItem ( role , 0 , 189  , 1 , 4 )  
end

--��֮���鵰

function ItemUse_HUIZJLD( role, Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬ʹ�û�֮���鵰ʧ��")
		UseItemFailed ( role )
		return
	end

	GiveItem ( role , 0 , 190  , 1 , 4 )  

end

--��֮���鵰

function ItemUse_AIZJLD ( role, Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬ʹ�ð�֮���鵰ʧ��")
		UseItemFailed ( role )
		return
	end

	GiveItem ( role , 0 , 191  , 1 , 4 )  
end

--��֮���鵰

function ItemUse_XINGZHIJLD ( role, Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬ʹ����֮���鵰ʧ��")
		UseItemFailed ( role )
		return
	end

	GiveItem ( role , 0 , 199  , 1 , 4 )  
end
-------------------------------���˱���
function ItemUse_XRBOX( role, Item )
--	SystemNotice(role ,"�˹�����ʱδ����")
--	UseItemFailed ( role )
--	return
	local lv = GetChaAttr(role, ATTR_LV)
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 5 then
		SystemNotice(role ,"Ҫ�����˱�����Ҫ������������5����λ")
		UseItemFailed ( role )
		return
	end
	if lv < 5 then
		SystemNotice(role ,"��ǰ�������5��������ʹ��ʧ�ܣ�")
		UseItemFailed ( role )	
	else
		GiveItem ( role , 0 , 437  , 1 , 4 )
		GiveItem ( role , 0 , 9  , 1 , 95 )
		GiveItem ( role , 0 , 4308  , 1 , 95 )
		GiveItem ( role , 0 , 444  , 1 , 4 )
		GiveItem ( role , 0 , 0985  , 1 , 4 )--------------35�������
	end
end


-------------------------------35������------------10��
function ItemUse_SANWUBOX( role, Item )

	local lv = GetChaAttr(role, ATTR_LV)
	local job = GetChaAttr( role, ATTR_JOB) --ȡְҵ
	local cha_type = GetChaTypeID ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 4 then
		SystemNotice(role ,"Ҫ�����˱�����Ҫ������������4����λ")
		UseItemFailed ( role )
		return
	end
	if lv < 10 then
		SystemNotice(role ,"��ǰ�������10��������ʹ��ʧ�ܣ�")
		UseItemFailed ( role )
		return
	end
	if cha_type ~= 2 and job==4 then
		GiveItem ( role , 0 , 0803 , 1 , 4 )--------------��������		
		GiveItem ( role , 0 , 0986 , 1 , 4 )--------------45������
	elseif cha_type ~= 2 and job==16 then
		GiveItem ( role , 0 , 0803 , 1 , 4 )--------------��������		
		GiveItem ( role , 0 , 0986 , 1 , 4 )--------------45������
	elseif cha_type == 2  and job~=0 then
		GiveItem ( role , 0 , 0763  , 1 , 4 )----------------��������
		GiveItem ( role , 0 , 0986  , 1 , 4 )--------------45������
	elseif cha_type ~= 2 and  cha_type ~= 4 and job==2 then
		GiveItem ( role , 0 , 0777  , 1 , 4 )-----------------�������
		GiveItem ( role , 0 , 0986  , 1 , 4 )--------------45������
	elseif cha_type ~= 2 and  cha_type ~= 4 and job==12 then
		GiveItem ( role , 0 , 0777  , 1 , 4 )-----------------�������
		GiveItem ( role , 0 , 0986  , 1 , 4 )--------------45������
	elseif cha_type ~= 1 and  cha_type ~= 2 and job==5 then
	        GiveItem ( role , 0 , 0789  , 1 , 4 )-------------�׶�����
		GiveItem ( role , 0 , 0986  , 1 , 4 )--------------45������
	elseif cha_type ~= 1 and  cha_type ~= 2 and job==13 then
	        GiveItem ( role , 0 , 0789  , 1 , 4 )-------------�׶�����
		GiveItem ( role , 0 , 0986  , 1 , 4 )--------------45������
	elseif cha_type ~= 1 and  cha_type ~= 2 and job==14 then
	        GiveItem ( role , 0 , 0789  , 1 , 4 )-------------�׶�����
		GiveItem ( role , 0 , 0986  , 1 , 4 )--------------45������
	elseif cha_type == 1 and  job==1 then
	        GiveItem ( role , 0 , 1928  , 1 , 4 )-------------���ս��
		GiveItem ( role , 0 , 0986  , 1 , 4 )--------------45������
	else 
		SystemNotice(role ,"Ŀǰ����ʹ�ã����Ҹ���ְҵ��ʦתְ.")
		UseItemFailed ( role )
		return
	end
end


-------------------------------45������-----------35��
function ItemUse_SIWUBOX( role, Item )

	local lv = GetChaAttr(role, ATTR_LV)
	local job = GetChaAttr( role, ATTR_JOB) --ȡְҵ
	local cha_type = GetChaTypeID ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 4 then
		SystemNotice(role ,"Ҫ�����˱�����Ҫ������������4����λ")
		UseItemFailed ( role )
		return
	end
	if lv < 35 then
		SystemNotice(role ,"��ǰ�������35��������ʹ��ʧ�ܣ�")
		UseItemFailed ( role )
		return
	end
	if cha_type == 1 and job==9 then
		GiveItem ( role , 0 , 0767 , 1 , 4 )----------------����֮��ּ�	
		GiveItem ( role , 0 , 0987 , 1 , 4 )--------------55������
	elseif cha_type == 2 and job==8 then
		GiveItem ( role , 0 , 0764  , 1 , 4 )-----------------��ʿ֮��������
		GiveItem ( role , 0 , 0987  , 1 , 4 )--------------55������
	elseif cha_type == 1 and job==12 then
		GiveItem ( role , 0 , 778  , 1 , 4 )-------------���ƽ�����
		GiveItem ( role , 0 , 0987  , 1 , 4 )--------------55������
	elseif cha_type == 3 and job==12 then
		GiveItem ( role , 0 , 778  , 1 , 4 )-------------���ƽ�����
		GiveItem ( role , 0 , 0987  , 1 , 4 )--------------55������
	elseif cha_type == 4 and job==13 then
		GiveItem ( role , 0 , 0790  , 1 , 4 )-------------��������
		GiveItem ( role , 0 , 0987  , 1 , 4 )--------------55������
	elseif cha_type == 3  and job==13 then
		GiveItem ( role , 0 , 0790  , 1 , 4 )-------------��������
		GiveItem ( role , 0 , 0987  , 1 , 4 )--------------55������
	elseif cha_type == 3  and job==14 then
		GiveItem ( role , 0 , 0796  , 1 , 4 )-------------����֮��
		GiveItem ( role , 0 , 0987  , 1 , 4 )--------------55������
	elseif cha_type == 4 and job==14 then
		GiveItem ( role , 0 , 0796  , 1 , 4 )-------------����֮��
		GiveItem ( role , 0 , 0987  , 1 , 4 )--------------55������
	elseif cha_type == 3 and job==16 then
		GiveItem ( role , 0 , 0804  , 1 , 4 )-------------�����
		GiveItem ( role , 0 , 0987  , 1 , 4 )--------------55������
	elseif cha_type == 1 and job==16 then
		GiveItem ( role , 0 , 0804  , 1 , 4 )-------------�����
		GiveItem ( role , 0 , 0987  , 1 , 4 )--------------55������
	elseif cha_type ==4 and job==16 then
		GiveItem ( role , 0 , 0804  , 1 , 4 )-------------�����
		GiveItem ( role , 0 , 0987  , 1 , 4 )--------------55������
	else 
		SystemNotice(role ,"Ŀǰ����ʹ�ã����Ҹ���ְҵ��ʦתְ.")
		UseItemFailed ( role )
		return
	end
end

-------------------------------55������-----------45��
function ItemUse_WUWUBOX( role, Item )

	local lv = GetChaAttr(role, ATTR_LV)
	local job = GetChaAttr( role, ATTR_JOB) --ȡְҵ
	local cha_type = GetChaTypeID ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 4 then
		SystemNotice(role ,"Ҫ�����˱�����Ҫ������������4����λ")
		UseItemFailed ( role )
		return
	end
	if lv < 45 then
		SystemNotice(role ,"��ǰ�������45��������ʹ��ʧ�ܣ�")
		UseItemFailed ( role )
		return
	end
	if cha_type == 1 and job==9 then
		GiveItem ( role , 0 , 0768 , 1 , 4 )----------------����ս��		
		GiveItem ( role , 0 , 0988 , 1 , 4 )--------------65������
	elseif cha_type == 2 and job==8 then
		GiveItem ( role , 0 , 0765  , 1 , 4 )-----------------��������
		GiveItem ( role , 0 , 0988  , 1 , 4 )-------------65������
	elseif cha_type == 3 and job==12 then
		GiveItem ( role , 0 , 0779  , 1 , 4 )----------------��������
		GiveItem ( role , 0 , 0988  , 1 , 4 )--------------65������
	elseif cha_type == 1 and job==12 then
		GiveItem ( role , 0 , 0779  , 1 , 4 )----------------��������
		GiveItem ( role , 0 , 0988  , 1 , 4 )--------------65������
	elseif cha_type == 3 and job==13 then
	        GiveItem ( role , 0 , 0791  , 1 , 4 )----------------�÷�֮��
		GiveItem ( role , 0 , 0988  , 1 , 4 )--------------65������
	elseif cha_type == 4 and job==13 then
	        GiveItem ( role , 0 , 0791  , 1 , 4 )----------------�÷�֮��
		GiveItem ( role , 0 , 0988  , 1 , 4 )--------------65������
	elseif cha_type == 3 and job==14 then
	        GiveItem ( role , 0 , 0797  , 1 , 4 )----------------����֮��
		GiveItem ( role , 0 , 0988  , 1 , 4 )--------------65������
	elseif cha_type == 4 and job==14 then
	        GiveItem ( role , 0 , 0797  , 1 , 4 )----------------����֮��
		GiveItem ( role , 0 , 0988  , 1 , 4 )--------------65������
	elseif cha_type == 1 and job==16 then
	        GiveItem ( role , 0 , 0805  , 1 , 4 )----------------��������
		GiveItem ( role , 0 , 0988  , 1 , 4 )--------------65������
	elseif cha_type == 3 and job==16 then
	        GiveItem ( role , 0 , 0805  , 1 , 4 )----------------��������
		GiveItem ( role , 0 , 0988  , 1 , 4 )--------------65������
	elseif cha_type == 4 and job==16 then
	        GiveItem ( role , 0 , 0805  , 1 , 4 )----------------��������
		GiveItem ( role , 0 , 0988  , 1 , 4 )--------------65������
	else 
		SystemNotice(role ,"Ŀǰ����ʹ�ã����Ҹ���ְҵ��ʦתְ.")
		UseItemFailed ( role )
		return
	end
end

-------------------------------65������-----------55��
function ItemUse_LIUWUBOX( role, Item )

	local lv = GetChaAttr(role, ATTR_LV)
	local job = GetChaAttr( role, ATTR_JOB) --ȡְҵ
	local cha_type = GetChaTypeID ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 4 then
		SystemNotice(role ,"Ҫ�����˱�����Ҫ������������4����λ")
		UseItemFailed ( role )
		return
	end
	if lv < 55 then
		SystemNotice(role ,"��ǰ�������55��������ʹ��ʧ�ܣ�")
		UseItemFailed ( role )
		return
	end
	if cha_type == 1 and job==9 then
		GiveItem ( role , 0 , 0769 , 1 , 4 )----------------��֮ս��		
	elseif cha_type == 2 and job==8 then
		GiveItem ( role , 0 , 0766  , 1 , 4 )-----------------��֮����
	elseif cha_type == 3 and job==12 then
		GiveItem ( role , 0 , 0780  , 1 , 4 )----------------��֮����
	elseif cha_type == 1 and job==12 then
		GiveItem ( role , 0 , 0780  , 1 , 4 )----------------��֮����
	elseif cha_type == 3 and job==13 then
	        GiveItem ( role , 0 , 0792  , 1 , 4 )----------------��֮����
	elseif cha_type == 4 and job==13 then
	        GiveItem ( role , 0 , 0792  , 1 , 4 )----------------��֮����
	elseif cha_type == 3 and job==14 then
	        GiveItem ( role , 0 , 0798  , 1 , 4 )----------------���䷨��
	elseif cha_type == 4 and job==14 then
	        GiveItem ( role , 0 , 0798  , 1 , 4 )----------------���䷨��
	elseif cha_type == 1 and job==16 then
	        GiveItem ( role , 0 , 0806  , 1 , 4 )----------------�Իö���
	elseif cha_type == 3 and job==16 then
	        GiveItem ( role , 0 , 0806  , 1 , 4 )----------------�Իö���
	elseif cha_type == 4 and job==16 then
	        GiveItem ( role , 0 , 0806  , 1 , 4 )----------------�Իö���
	else 
		SystemNotice(role ,"Ŀǰ����ʹ�ã����Ҹ���ְҵ��ʦתְ.")
		UseItemFailed ( role )
		return
	end
end


----------------------------------+1���˱���
function ItemUse_XRBOX1( role, Item )
	local job = GetChaAttr(role, ATTR_JOB)
	local lv = GetChaAttr(role, ATTR_LV) 
        local cha_type = GetChaTypeID ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 7 then
		SystemNotice(role ,"Ҫ�����˱�����Ҫ������������7����λ")
		UseItemFailed ( role )
		return
	end
	if lv < 10 then
		SystemNotice(role ,"��ǰ�������10��������ʹ��ʧ�ܣ�")
		UseItemFailed ( role )	
	elseif job == 1 then  
		GiveItem ( role , 0 , 438  , 1 , 4 ) 
		GiveItem ( role , 0 , 10  , 1 , 95 ) 
		GiveItem ( role , 0 , 296  , 1 , 95 )
		GiveItem ( role , 0 , 4602  , 1 , 4 )
		GiveItem ( role , 0 , 4603  , 1 , 4 )
		GiveItem ( role , 0 , 4604  , 1 , 4 )
		GiveItem ( role , 0 , 445  , 1 , 4 ) 
	elseif job == 2 then   
		GiveItem ( role , 0 , 438  , 1 , 4 ) 
		GiveItem ( role , 0 , 32  , 1 , 95 ) 
		GiveItem ( role , 0 , 311  , 1 , 95 )
		GiveItem ( role , 0 , 4602  , 1 , 4 )
		GiveItem ( role , 0 , 4603  , 1 , 4 )
		GiveItem ( role , 0 , 4604  , 1 , 4 )
		GiveItem ( role , 0 , 445  , 1 , 4 ) 
	elseif job == 4 then  
		GiveItem ( role , 0 , 4602  , 1 , 4 )
		GiveItem ( role , 0 , 4603  , 1 , 4 )
		GiveItem ( role , 0 , 4604  , 1 , 4 )
		GiveItem ( role , 0 , 445  , 1 , 4 ) 
		GiveItem ( role , 0 , 438  , 1 , 4 ) 
		GiveItem ( role , 0 , 80  , 1 , 95 ) 
		if cha_type == 1 or cha_type == 3 then 
			GiveItem ( role , 0 , 336  , 1 , 95 ) 
		else 
			GiveItem ( role , 0 , 351  , 1 , 95 ) 
		end
	elseif job == 5 then   
		GiveItem ( role , 0 , 4602  , 1 , 4 ) 
		GiveItem ( role , 0 , 4603  , 1 , 4 ) 
		GiveItem ( role , 0 , 4604  , 1 , 4 ) 
		GiveItem ( role , 0 , 445  , 1 , 4 ) 
		GiveItem ( role , 0 , 438  , 1 , 4 ) 
		GiveItem ( role , 0 , 104  , 1 , 95 ) 
		if cha_type == 3 then 
			GiveItem ( role , 0 , 372  , 1 , 95 )
		else 
			GiveItem ( role , 0 , 359  , 1 , 95 ) 
		end
	else 
		SystemNotice(role ,"ְҵ������������������תְ�󷽿�ʹ�ã�")
		UseItemFailed ( role )	
	end
end
----------------------------------+2���˱���
function ItemUse_XRBOX2( role, Item )
	local job = GetChaAttr(role, ATTR_JOB)
	local lv = GetChaAttr(role, ATTR_LV) 
        local cha_type = GetChaTypeID ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 6 then
		SystemNotice(role ,"Ҫ�����˱�����Ҫ������������6����λ")
		UseItemFailed ( role )
		return
	end
	if lv < 15 then
		SystemNotice(role ,"��ǰ�������15��������ʹ��ʧ�ܣ�")
		UseItemFailed ( role )	
	elseif job == 1 then  
		GiveItem ( role , 0 , 2  , 1 , 95 ) 
		GiveItem ( role , 0 , 291  , 1 , 95 )
		GiveItem ( role , 0 , 4264  , 1 , 4 )
		GiveItem ( role , 0 , 3351  , 1 , 4 )
		GiveItem ( role , 0 , 446  , 1 , 4 ) 
		GiveItem ( role , 0 , 439  , 1 , 4 ) 
	elseif job == 2 then   
		GiveItem ( role , 0 , 26  , 1 , 95 ) 
		GiveItem ( role , 0 , 306  , 1 , 95 )
		GiveItem ( role , 0 , 4264  , 1 , 4 )
		GiveItem ( role , 0 , 3352  , 1 , 4 )
		GiveItem ( role , 0 , 446  , 1 , 4 ) 
		GiveItem ( role , 0 , 439  , 1 , 4 ) 
	elseif job == 4 then  
		GiveItem ( role , 0 , 4264  , 1 , 4 )
		GiveItem ( role , 0 , 3353  , 1 , 4 )
		GiveItem ( role , 0 , 446  , 1 , 4 ) 
		GiveItem ( role , 0 , 74  , 1 , 95 ) 
		GiveItem ( role , 0 , 439  , 1 , 4 ) 
		if cha_type == 1 or cha_type == 3 then 
			GiveItem ( role , 0 , 338  , 1 , 95 )
		else
			GiveItem ( role , 0 , 386  , 1 , 95 ) 
		end
	elseif job == 5 then
		GiveItem ( role , 0 , 4264  , 1 , 4 )
		GiveItem ( role , 0 , 3352  , 1 , 4 )
		GiveItem ( role , 0 , 446  , 1 , 4 ) 
		GiveItem ( role , 0 , 439  , 1 , 4 ) 
		GiveItem ( role , 0 , 98  , 1 , 95 ) 
		if cha_type == 3 then 
			GiveItem ( role , 0 , 366  , 1 , 95 ) 
		else 
			GiveItem ( role , 0 , 381  , 1 , 95 )
		end
	else 
		SystemNotice(role ,"ְҵ������������������תְ�󷽿�ʹ�ã�")
		UseItemFailed ( role )	
	end
end
----------------------------------+3���˱���
function ItemUse_XRBOX3( role, Item )
	local job = GetChaAttr(role, ATTR_JOB)
	local lv = GetChaAttr(role, ATTR_LV) 
        local cha_type = GetChaTypeID ( role )
        local cha_type = GetChaTypeID ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 5 then
		SystemNotice(role ,"Ҫ�����˱�����Ҫ������������5����λ")
		UseItemFailed ( role )
		return
	end
	if lv < 20 then
		SystemNotice(role ,"��ǰ�������20��������ʹ��ʧ�ܣ�")
		UseItemFailed ( role )	
	elseif job == 1 then  
		GiveItem ( role , 0 , 14  , 1 , 95 ) 
		GiveItem ( role , 0 , 297  , 1 , 95 )
		GiveItem ( role , 0 , 3844  , 1 , 4 )
		GiveItem ( role , 0 , 447  , 1 , 4 ) 
		GiveItem ( role , 0 , 440  , 1 , 4 ) 
	elseif job == 2 then  
		GiveItem ( role , 0 , 33  , 1 , 95 ) 
		GiveItem ( role , 0 , 313  , 1 , 95 )
		GiveItem ( role , 0 , 3844  , 1 , 4 )
		GiveItem ( role , 0 , 447  , 1 , 4 ) 
		GiveItem ( role , 0 , 440  , 1 , 4 ) 
	elseif job == 4 then  
		GiveItem ( role , 0 , 3844  , 1 , 4 )
		GiveItem ( role , 0 , 447  , 1 , 4 ) 
		GiveItem ( role , 0 , 440  , 1 , 4 ) 
		GiveItem ( role , 0 , 81  , 1 , 95 ) 
		if cha_type == 1 or cha_type == 3 then 
			GiveItem ( role , 0 , 337  , 1 , 95 )
		else
			GiveItem ( role , 0 , 352  , 1 , 95 ) 
		end
	elseif job == 5 then 
		GiveItem ( role , 0 , 3844  , 1 , 4 )
		GiveItem ( role , 0 , 447  , 1 , 4 ) 
		GiveItem ( role , 0 , 440  , 1 , 4 ) 
		GiveItem ( role , 0 , 105  , 1 , 95 )
		if cha_type == 3 then 
			GiveItem ( role , 0 , 373  , 1 , 95 )
		else 
			GiveItem ( role , 0 , 360  , 1 , 95 )
		end
	else 
		SystemNotice(role ,"ְҵ������������������תְ�󷽿�ʹ�ã�")
		UseItemFailed ( role )	
	end
end
----------------------------------+4���˱���
function ItemUse_XRBOX4( role, Item )
	local job = GetChaAttr(role, ATTR_JOB)
	local lv = GetChaAttr(role, ATTR_LV) 
        local cha_type = GetChaTypeID ( role )
        local cha_type = GetChaTypeID ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	--local r1,r2 =MakeItem ( role , 0 , 3  , 1 , 11 )

	if Item_CanGet < 4 then
		SystemNotice(role ,"Ҫ�����˱�����Ҫ������������4����λ")
		UseItemFailed ( role )
		return
	end
	if lv < 25 then
		SystemNotice(role ,"��ǰ�������25��������ʹ��ʧ�ܣ�")
		UseItemFailed ( role )	
	elseif job == 1 then   ----��ʿ
		local r1,r2 =MakeItem ( role , 3  , 1 , 11 )
		local Item1 = GetChaItem ( role , 2 , r2 )			--ȡ������������ָ��
		GiveItem ( role , 0 , 293  , 1 , 95 )
		GiveItem ( role , 0 , 448  , 1 , 95 )
		GiveItem ( role , 0 , 441  , 1 , 4 ) 
	elseif job == 2 then  
		local r1,r2 =MakeItem ( role , 27  , 1 , 11 )
		local Item1 = GetChaItem ( role , 2 , r2 )			--ȡ������������ָ��
		GiveItem ( role , 0 , 307  , 1 , 95 )
		GiveItem ( role , 0 , 448  , 1 , 95 )
		GiveItem ( role , 0 , 441  , 1 , 4 ) 
	elseif job == 4 then 
		GiveItem ( role , 0 , 448  , 1 , 95 )
		GiveItem ( role , 0 , 441  , 1 , 4 ) 
		local r1,r2 =MakeItem ( role , 75  , 1 , 11 )
		local Item1 = GetChaItem ( role , 2 , r2 )			--ȡ������������ָ��
		if cha_type == 1 or cha_type == 3 then
			GiveItem ( role , 0 , 340  , 1 , 95 ) 
		else
			GiveItem ( role , 0 , 350  , 1 , 95 ) 
		end
	elseif job == 5 then 
		GiveItem ( role , 0 , 448  , 1 , 95 )
		GiveItem ( role , 0 , 441  , 1 , 4 ) 
		local r1,r2 =MakeItem ( role , 99  , 1 , 11 )
		local Item1 = GetChaItem ( role , 2 , r2 )			--ȡ������������ָ��
		if cha_type == 3 then
			GiveItem ( role , 0 , 368  , 1 , 95 )
		else 
			GiveItem ( role , 0 , 389  , 1 , 95 )
		end
	else 
		SystemNotice(role ,"ְҵ������������������תְ�󷽿�ʹ�ã�")
		UseItemFailed ( role )	
	end
end
----------------------------------+5���˱���
function ItemUse_XRBOX5( role, Item )
	local job = GetChaAttr(role, ATTR_JOB)
	local lv = GetChaAttr(role, ATTR_LV) 
        local cha_type = GetChaTypeID ( role )
        local cha_type = GetChaTypeID ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 4 then
		SystemNotice(role ,"Ҫ�����˱�����Ҫ������������4����λ")
		UseItemFailed ( role )
		return
	end
	if lv < 30 then
		SystemNotice(role ,"��ǰ�������30��������ʹ��ʧ�ܣ�")
		UseItemFailed ( role )	
	elseif job == 1 then  
		GiveItem ( role , 0 , 12  , 1 , 95 ) 
		GiveItem ( role , 0 , 298  , 1 , 95 )
		GiveItem ( role , 0 , 449  , 1 , 95 )
		GiveItem ( role , 0 , 442  , 1 , 4 ) 
	elseif job == 2 then 
		GiveItem ( role , 0 , 34  , 1 , 95 ) 
		GiveItem ( role , 0 , 314  , 1 , 95 )
		GiveItem ( role , 0 , 449  , 1 , 95 )
		GiveItem ( role , 0 , 442  , 1 , 4 ) 
	elseif job == 4 then  
		GiveItem ( role , 0 , 449  , 1 , 95 )
		GiveItem ( role , 0 , 442  , 1 , 4 )
		GiveItem ( role , 0 , 82  , 1 , 95 )
		if cha_type == 1 or cha_type == 3 then 
			GiveItem ( role , 0 , 339  , 1 , 95 )
		else 
			GiveItem ( role , 0 , 354  , 1 , 95 ) 
		end
	elseif job == 5 then
		GiveItem ( role , 0 , 449  , 1 , 95 )
		GiveItem ( role , 0 , 442  , 1 , 4 ) 
		GiveItem ( role , 0 , 106  , 1 , 95 )
		if cha_type == 3 then
			GiveItem ( role , 0 , 374  , 1 , 95 )
		else 
			GiveItem ( role , 0 , 361  , 1 , 95 )
		end
	else 
		SystemNotice(role ,"ְҵ������������������תְ�󷽿�ʹ�ã�")
		UseItemFailed ( role )	
	end
end
----------------------------------+6���˱���
function ItemUse_XRBOX6( role, Item )
	local job = GetChaAttr(role, ATTR_JOB)
	local lv = GetChaAttr(role, ATTR_LV) 
        local cha_type = GetChaTypeID ( role )
        local cha_type = GetChaTypeID ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 2 then
		SystemNotice(role ,"Ҫ�����˱�����Ҫ������������2����λ")
		UseItemFailed ( role )
		return
	end
	if lv < 35 then
		SystemNotice(role ,"��ǰ�������35��������ʹ��ʧ�ܣ�")
		UseItemFailed ( role )	
	elseif job == 1 or job == 2 or job == 4 or job == 5 then
		GiveItem ( role , 0 , 443  , 1 , 4 ) 
		GiveItem ( role , 0 , 451  , 1 , 4 ) 
		AddMoney ( role , 0 , 20000 ) 
	else 
		SystemNotice(role ,"ְҵ������������������תְ�󷽿�ʹ�ã�")
		UseItemFailed ( role )	
	end
end
----------------------------------+7���˱���
function ItemUse_XRBOX7( role, Item )
	local job = GetChaAttr(role, ATTR_JOB)
	local lv = GetChaAttr(role, ATTR_LV) 
        local cha_type = GetChaTypeID ( role )
        local cha_type = GetChaTypeID ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 5 then
		SystemNotice(role ,"Ҫ�����˱�����Ҫ������������5����λ")
		UseItemFailed ( role )
		return
	end
	if lv < 40 then
		SystemNotice(role ,"��ǰ�������40��������ʹ��ʧ�ܣ�")
		UseItemFailed ( role )	
	elseif job == 9 then 
		GiveItem ( role , 0 , 450  , 1 , 4 ) 
		GiveItem ( role , 0 , 295  , 1 , 95 )
		GiveItem ( role , 0 , 4  , 1 , 95 ) 
		GiveItem ( role , 0 , 302  , 1 , 95 )
		local r1,r2 =MakeItem ( role , 22  , 1 , 11 )
		local Item1 = GetChaItem ( role , 2 , r2 )			--ȡ������������ָ��
	elseif job == 8 then   
		GiveItem ( role , 0 , 450  , 1 , 4 ) 
		GiveItem ( role , 0 , 300  , 1 , 95 )
		GiveItem ( role , 0 , 15  , 1 , 95 ) 
		GiveItem ( role , 0 , 301  , 1 , 95 )
		local r1,r2 =MakeItem ( role , 20  , 1 , 11 )
		local Item1 = GetChaItem ( role , 2 , r2 )			--ȡ������������ָ��
	elseif job == 12 then 
		GiveItem ( role , 0 , 39  , 1 , 95 ) 
		GiveItem ( role , 0 , 310  , 1 , 95 )
		local r1,r2 =MakeItem ( role , 44  , 1 , 11 )
		local Item1 = GetChaItem ( role , 2 , r2 )			--ȡ������������ָ��
		GiveItem ( role , 0 , 315  , 1 , 95 )
		GiveItem ( role , 0 , 450  , 1 , 4 ) 
	elseif job == 16 then 
		GiveItem ( role , 0 , 450  , 1 , 95 )
		GiveItem ( role , 0 , 76  , 1 , 95 ) 
		local r1,r2 =MakeItem ( role , 83  , 1 , 11 )
		local Item1 = GetChaItem ( role , 2 , r2 )			--ȡ������������ָ��
		if cha_type == 1 or cha_type == 3 then 
			GiveItem ( role , 0 , 341  , 1 , 95 )
			GiveItem ( role , 0 , 342  , 1 , 95 )
		else 
			GiveItem ( role , 0 , 353  , 1 , 95 )
			GiveItem ( role , 0 , 356  , 1 , 95 )
		end
	elseif job == 13 then    
		GiveItem ( role , 0 , 450  , 1 , 4 ) 
		GiveItem ( role , 0 , 100  , 1 , 95 )
		local r1,r2 =MakeItem ( role , 1440  , 1 , 11 )
		local Item1 = GetChaItem ( role , 2 , r2 )			--ȡ������������ָ��
		if cha_type == 3 then 
			GiveItem ( role , 0 , 370  , 1 , 95 )
			GiveItem ( role , 0 , 378  , 1 , 95 )
		else 
			GiveItem ( role , 0 , 392  , 1 , 95 ) 
			GiveItem ( role , 0 , 388  , 1 , 95 ) 
		end
	elseif job == 14 then    
		GiveItem ( role , 0 , 450  , 1 , 4 ) 
		GiveItem ( role , 0 , 101  , 1 , 95 ) 
		local r1,r2 =MakeItem ( role , 107  , 1 , 11 )
		local Item1 = GetChaItem ( role , 2 , r2 )			--ȡ������������ָ��
		if cha_type == 3 then 
			GiveItem ( role , 0 , 367  , 1 , 95 ) 
			GiveItem ( role , 0 , 375  , 1 , 95 ) 
		else  
			GiveItem ( role , 0 , 390  , 1 , 95 ) 
			GiveItem ( role , 0 , 362  , 1 , 95 ) 
		
		end
	else 
		SystemNotice(role ,"ְҵ��������ת��ְ�󷽿ɴ򿪣�")
		UseItemFailed ( role )	
	end
end
-------------------------------------------------------- --[[���ӹ�ʽ]]--
function ItemUse_ZhongZi ( role , Item ) 
	local hp = GetChaAttr(role, ATTR_HP)  
	if hp <= 0 then   
	end 
	hp_resume = 1000   
	hp = hp + hp_resume 
	mxhp = GetChaAttr(role,ATTR_MXHP) 
	if hp > mxhp then --�ӳ������hpʱ����Ϊ���hp
		hp = mxhp 
	end 
	SetCharaAttr(hp, role, ATTR_HP) 
end 
------------------------------------------------------------ --[[�ۻƾƹ�ʽ]]--
function ItemUse_XiongHJ ( role , Item ) 
	local statelv = 1
	local statetime = 1800
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_PKSFYS , statelv , statetime )
	else
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end
end 
---------------------------------------------------------- --[[���ݹ�ʽ]]--
function ItemUse_AiCao ( role , Item )  
	local statelv = 1
	local statetime = 180
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_PKSBYS , statelv , statetime )
	else
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end
end 



------------------------------------------- ���ױ���
function ItemUse_FLeiBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	local BNUM = B1+B2+B3+B4+B5+B6+B7+B8+B9+B10+B11+B12+B13+B14+B15
	if Item_CanGet < BNUM then
		SystemNotice(role ,"Ҫ�򿪷��ױ�����Ҫ������������"..BNUM.."����λ")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , A1 , B1 , 4 )
	GiveItem ( role , 0 , A2 , B2 , 4 )
	GiveItem ( role , 0 , A3 , B3 , 4 )
	GiveItem ( role , 0 , A4 , B4 , 4 )
	GiveItem ( role , 0 , A5 , B5 , 4 )
	GiveItem ( role , 0 , A6 , B6 , 4 )
	GiveItem ( role , 0 , A7 , B7 , 4 )
	GiveItem ( role , 0 , A8 , B8 , 4 )
	GiveItem ( role , 0 , A9 , B9 , 4 )
	GiveItem ( role , 0 , A10 , B10 , 4 )
	GiveItem ( role , 0 , A11 , B11 , 4 )
	GiveItem ( role , 0 , A12 , B12 , 4 )
	GiveItem ( role , 0 , A13 , B13 , 4 )
	GiveItem ( role , 0 , A14 , B14 , 4 )
	GiveItem ( role , 0 , A15 , B15 , 4 )
	GiveItem ( role , 0 , A16 , B16 , 4 )
	GiveItem ( role , 0 , A17 , B17 , 4 )
	GiveItem ( role , 0 , A18 , B18 , 4 )
	GiveItem ( role , 0 , A19 , B19 , 4 )
	GiveItem ( role , 0 , A20 , B20 , 4 )
	GiveItem ( role , 0 , A21 , B21 , 4 )
	GiveItem ( role , 0 , A22 , B22 , 4 )
	GiveItem ( role , 0 , A23 , B23 , 4 )
	GiveItem ( role , 0 , A24 , B24 , 4 )
end
	 
----------------------------------------------�������ﱦ��
function ItemUse_CJBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <1 then
		SystemNotice(role ,"Ҫ�򿪱�����Ҫ������������1����λ")
		UseItemFailed ( role )
		return
	end
	local r1,r2 =MakeItem ( role , C1  , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )			--ȡ�¾������ָ��
	local Item_newJLID = GetItemID ( Item_newJL )			--ȡ�¾������ָ��


	local str_JLone = GetItemAttr( Item_newJL ,ITEMATTR_VAL_STR )       --����
	local con_JLone = GetItemAttr( Item_newJL ,ITEMATTR_VAL_CON )       --����
	local agi_JLone = GetItemAttr( Item_newJL ,ITEMATTR_VAL_AGI )       --רע
	local dex_JLone = GetItemAttr( Item_newJL ,ITEMATTR_VAL_DEX )       --����
	local sta_JLone = GetItemAttr( Item_newJL ,ITEMATTR_VAL_STA )       --����

	local Num_JL = GetItemForgeParam ( Item_newJL , 1 )
	Num_JL = TansferNum ( Num_JL )
	local Part1_JL = GetNum_Part1 ( Num_JL )	--Get Num Part 1 �� Part 7
	local Part2_JL = GetNum_Part2 ( Num_JL )	
	local Part3_JL = GetNum_Part3 ( Num_JL )
	local Part4_JL = GetNum_Part4 ( Num_JL )
	local Part5_JL = GetNum_Part5 ( Num_JL )
	local Part6_JL = GetNum_Part6 ( Num_JL )
	local Part7_JL = GetNum_Part7 ( Num_JL )
	if Item_newJLID==231 or Item_newJLID==232 or Item_newJLID==233 or Item_newJLID==234 or Item_newJLID==235  or Item_newJLID==236  or Item_newJLID==237  or Item_newJLID==681 then
		Part1_JL=1
		Num_JL = SetNum_Part1 ( Num_JL , 1 ) ----------��ת���
		SetItemForgeParam ( Item_newJL , 1 , Num_JL )
	end
	str_JLone	= N1
	con_JLone = N2
	agi_JLone	= N3
	dex_JLone = N4
	sta_JLone	= N5
	local new_lv=N1+N2+N3+N4+N5
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		new_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		new_MAXURE = 32000
	end
	SetItemAttr ( Item_newJL ,ITEMATTR_VAL_STR , str_JLone )
	SetItemAttr ( Item_newJL ,ITEMATTR_VAL_CON , con_JLone )
	SetItemAttr ( Item_newJL ,ITEMATTR_VAL_AGI , agi_JLone )
	SetItemAttr ( Item_newJL ,ITEMATTR_VAL_DEX , dex_JLone)
	SetItemAttr ( Item_newJL ,ITEMATTR_VAL_STA , sta_JLone)
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY ) 	
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
	SetItemAttr ( Item_newJL , ITEMATTR_ENERGY , new_MAXENERGY ) 	
	SetItemAttr ( Item_newJL , ITEMATTR_URE , new_MAXURE )
	local cha_name = GetChaDefaultName ( role )
	--LG( "star_JLZS_lg" ,cha_name,Item_JLone_ID , lv_JLone , str_JLone , con_JLone , agi_JLone , dex_JLone , sta_JLone , Item_JLother_ID , lv_JLother  , str_JLother , con_JLother , agi_JLother , dex_JLother , sta_JLother )
	LG( "star_CJBOX" ,cha_name, C1 , N1 , N2 ,  N3 , N4 , N5 )

end

----------------------------------------------���߱���
function ItemUse_YZheBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 8 then
		SystemNotice(role ,"Ҫ�����߱�����Ҫ������������8����λ")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 453 , 1 , 4 )
	GiveItem ( role , 0 , 454 , 1 , 4 )
	GiveItem ( role , 0 , 455 , 1 , 4 )
	GiveItem ( role , 0 , 456 , 1 , 4 )
	local rad = math.random ( 1, 8 )
	if rad == 1 then
	GiveItem ( role , 0 , 5013  , 1 , 4 ) 
	GiveItem ( role , 0 , 5021  , 1 , 4 ) 
	GiveItem ( role , 0 , 5029  , 1 , 4 ) 
	elseif rad == 2 then
	GiveItem ( role , 0 , 5014  , 1 , 4 ) 
	GiveItem ( role , 0 , 5022  , 1 , 4 ) 
	GiveItem ( role , 0 , 5030  , 1 , 4 ) 
	elseif rad == 3 then
	GiveItem ( role , 0 , 5015  , 1 , 4 ) 
	GiveItem ( role , 0 , 5023  , 1 , 4 ) 
	GiveItem ( role , 0 , 5031  , 1 , 4 ) 
	elseif rad == 4 then
	GiveItem ( role , 0 , 5016  , 1 , 4 ) 
	GiveItem ( role , 0 , 5024  , 1 , 4 ) 
	GiveItem ( role , 0 , 5032  , 1 , 4 ) 
	GiveItem ( role , 0 , 5037  , 1 , 4 ) 
	elseif rad == 5 then
	GiveItem ( role , 0 , 5017  , 1 , 4 ) 
	GiveItem ( role , 0 , 5025  , 1 , 4 ) 
	GiveItem ( role , 0 , 5033  , 1 , 4 )
	elseif rad == 6 then
	GiveItem ( role , 0 , 5018  , 1 , 4 ) 
	GiveItem ( role , 0 , 5026  , 1 , 4 ) 
	GiveItem ( role , 0 , 5034  , 1 , 4 )
	elseif rad == 7 then
	GiveItem ( role , 0 , 5019  , 1 , 4 ) 
	GiveItem ( role , 0 , 5027  , 1 , 4 ) 
	GiveItem ( role , 0 , 5035  , 1 , 4 )
	elseif rad == 8 then
	GiveItem ( role , 0 , 5020  , 1 , 4 ) 
	GiveItem ( role , 0 , 5028  , 1 , 4 ) 
	GiveItem ( role , 0 , 5036  , 1 , 4 )
	GiveItem ( role , 0 , 5038  , 1 , 4 )
	end
end

----------------------------------------Ŭ��������
function ItemUse_MoreExpGzA( role , Item )
	local statelv = 1
	local ChaStateLv = GetChaStateLv ( role , STATE_SBJYGZ )
	
	if ChaStateLv > statelv then
		SystemNotice ( role , "��ʹ�ø��߼��Ĺ��ӣ����Ժ�����" )
		UseItemFailed ( role )
		return
	end

	local statetime = 1800
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_SBJYGZ , statelv , statetime )
	else
		AddState( Cha_Boat , Cha_Boat , STATE_SBJYGZ , statelv , statetime )
	end
end

----------------------------------------�߼�Ŭ��������
function ItemUse_MoreExpGzLv3A( role , Item )
	local Lv = Lv( role )
	if Lv < 60 then
		SystemNotice(role ,"�ȼ�����60��������ʹ��")
		UseItemFailed ( role )
		return
	end

	local statelv = 3
	
	local ChaStateLv = GetChaStateLv ( role , STATE_SBJYGZ )
	
	if ChaStateLv > statelv then
		SystemNotice ( role , "��ʹ�ø��߼��Ĺ��ӣ����Ժ�����" )
		UseItemFailed ( role )
		return
	end
	
	local statetime = 1800
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_SBJYGZ , statelv , statetime )
	else
		AddState( Cha_Boat , Cha_Boat , STATE_SBJYGZ , statelv , statetime )
	end
	SystemNotice ( role ,"���ܵ��߼�Ŭ��������Ч��" )
end


--ItemUse_MoreItemGz
-------------------------------�Ƹ�������
function ItemUse_MoreItemGzA( role , Item )
	local statelv = 1
	local ChaStateLv = GetChaStateLv ( role , STATE_SBBLGZ )
	
	if ChaStateLv > statelv then
		SystemNotice ( role , "��ʹ�ø��߼��Ĺ��ӣ����Ժ�����" )
		UseItemFailed ( role )
		return
	end
	
	local statetime = 1800
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_SBBLGZ , statelv , statetime )
	else
		AddState( Cha_Boat , Cha_Boat , STATE_SBBLGZ , statelv , statetime )
	end
end

----------------------------------------�߼��Ƹ�������
function ItemUse_MoreItemGzLv3A( role , Item )
	local Lv = Lv( role )
	if Lv < 60 then
		SystemNotice(role ,"�ȼ�����60��������ʹ��")
		UseItemFailed ( role )
		return
	end


	local statelv = 3	
	
	local ChaStateLv = GetChaStateLv ( role , STATE_SBBLGZ )
	
	if ChaStateLv > statelv then
		SystemNotice ( role , "��ʹ�ø��߼��Ĺ��ӣ����Ժ�����" )
		UseItemFailed ( role )
		return
	end

	local statetime = 1800
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_SBBLGZ , statelv , statetime )
	else
		AddState( Cha_Boat , Cha_Boat , STATE_SBBLGZ , statelv , statetime )
	end
	SystemNotice ( role ,"���ܵ��߼��Ƹ�������Ч��" )
end
-------------------------------------ǿ�������ָ���
function ItemUse_TLHFJA( role , Item )
	local hp = GetChaAttr(role, ATTR_HP) 
	hp_resume = 1000 
	
	hp = hp + hp_resume 
	mxhp = GetChaAttr(role,ATTR_MXHP) 
	if hp > mxhp then --�ӳ������spʱ����Ϊ���sp
		hp = mxhp 
	end 
	SetCharaAttr(hp, role, ATTR_HP)
end
------------------------------------SP����ˮ
function ItemUse_TMLGZA( role , Item ) 
	local sp = GetChaAttr(role, ATTR_SP) 
	sp_resume = 150 
	
	sp = sp + sp_resume 
	mxsp = GetChaAttr(role,ATTR_MXSP) 
	if sp > mxsp then --�ӳ������spʱ����Ϊ���sp
		sp = mxsp 
	end 
	SetCharaAttr(sp, role, ATTR_SP) 
end 
---------------------------------------------��ʨģ��ҩ��( str )kokora08����
function ItemUse_SPXsyjA( role , Item )
	
	local OtherStateLv = 0
	local i = 0
	local State_Num = 8
	local State = {}
	State [0] = GetChaStateLv ( role , STATE_YSMJQH )
	State [1] = GetChaStateLv ( role , STATE_YSLQQH )
	State [2] = GetChaStateLv ( role , STATE_YSTZQH )
	State [3] = GetChaStateLv ( role , STATE_YSJSQH )
	State [4] = GetChaStateLv ( role , STATE_DEMON )
	State [5] = GetChaStateLv ( role , STATE_GREATSH )
	State [6] = GetChaStateLv ( role , STATE_MIRAGE )
	State [7] = GetChaStateLv ( role , STATE_DEVOTE )
	State [8] = GetChaStateLv ( role , STATE_VIGOUR )

	for i = 0 , State_Num , 1 do
		if State[i] >= 1 then
			OtherStateLv = OtherStateLv + 1
		end
	end



	if OtherStateLv > 0 then
		SystemNotice(role ,"ҩˮ��ǿ����Ч�����ɵ���")
		UseItemFailed ( role )
		return
	end	

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end


	local statelv = 1
	local statetime = 5400
	AddState( role , role , STATE_YSLLQH , statelv , statetime )

end
-----------------------------------------------���ģ��ҩ��( agi )kokora08����
function ItemUse_SPLhyjA( role , Item )
	local OtherStateLv = 0
	local i = 0
	local State_Num = 8
	local State = {}
	State [0] = GetChaStateLv ( role , STATE_YSLQQH )
	State [1] = GetChaStateLv ( role , STATE_YSTZQH )
	State [2] = GetChaStateLv ( role , STATE_YSJSQH )
	State [3] = GetChaStateLv ( role , STATE_YSLLQH )
	State [4] = GetChaStateLv ( role , STATE_DEMON )
	State [5] = GetChaStateLv ( role , STATE_GREATSH )
	State [6] = GetChaStateLv ( role , STATE_MIRAGE )
	State [7] = GetChaStateLv ( role , STATE_DEVOTE )
	State [8] = GetChaStateLv ( role , STATE_VIGOUR )

	for i = 0 , State_Num , 1 do
		if State[i] >= 1 then
			OtherStateLv = OtherStateLv + 1
		end
	end



	if OtherStateLv > 0 then
		SystemNotice(role ,"ҩˮ��ǿ����Ч�����ɵ���")
		UseItemFailed ( role )
		return
	end
	
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end

	local statelv = 1
	local statetime = 5400
	AddState( role , role , STATE_YSMJQH , statelv , statetime )

end

------------------------------------------------ӥ��ģ��ҩ��( dex )kokora08����
function ItemUse_SPYyyjA( role , Item )
	local OtherStateLv = 0
	local i = 0
	local State_Num = 8
	local State = {}
	State [0] = GetChaStateLv ( role , STATE_YSMJQH )
	State [1] = GetChaStateLv ( role , STATE_YSTZQH )
	State [2] = GetChaStateLv ( role , STATE_YSJSQH )
	State [3] = GetChaStateLv ( role , STATE_YSLLQH )
	State [4] = GetChaStateLv ( role , STATE_DEMON )
	State [5] = GetChaStateLv ( role , STATE_GREATSH )
	State [6] = GetChaStateLv ( role , STATE_MIRAGE )
	State [7] = GetChaStateLv ( role , STATE_DEVOTE )
	State [8] = GetChaStateLv ( role , STATE_VIGOUR )

	for i = 0 , State_Num , 1 do
		if State[i] >= 1 then
			OtherStateLv = OtherStateLv + 1
		end
	end



	if OtherStateLv > 0 then
		SystemNotice(role ,"ҩˮ��ǿ����Ч�����ɵ���")
		UseItemFailed ( role )
		return
	end

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end


	local statelv = 1
	local statetime = 5400
	AddState( role , role , STATE_YSLQQH , statelv , statetime )

end

-----------------------------------------------------��ţģ��ҩ��( con )kokora08����
function ItemUse_SPMnyjA( role , Item )
	
	local OtherStateLv = 0
	local i = 0
	local State_Num = 8
	local State = {}
	State [0] = GetChaStateLv ( role , STATE_YSMJQH )
	State [1] = GetChaStateLv ( role , STATE_YSLQQH )
	State [2] = GetChaStateLv ( role , STATE_YSJSQH )
	State [3] = GetChaStateLv ( role , STATE_YSLLQH )
	State [4] = GetChaStateLv ( role , STATE_DEMON )
	State [5] = GetChaStateLv ( role , STATE_GREATSH )
	State [6] = GetChaStateLv ( role , STATE_MIRAGE )
	State [7] = GetChaStateLv ( role , STATE_DEVOTE )
	State [8] = GetChaStateLv ( role , STATE_VIGOUR )

	for i = 0 , State_Num , 1 do
		if State[i] >= 1 then
			OtherStateLv = OtherStateLv + 1
		end
	end



	if OtherStateLv > 0 then
		SystemNotice(role ,"ҩˮ��ǿ����Ч�����ɵ���")
		UseItemFailed ( role )
		return
	end

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end


	local statelv = 1
	local statetime = 5400
	AddState( role , role , STATE_YSTZQH , statelv , statetime )

end

------------------------------------------------ʥ��ģ��ҩ��( sta )kokora08��Ʒ����
function ItemUse_SPSlyjA( role , Item )
	
	local OtherStateLv = 0
	local i = 0
	local State_Num = 8
	local State = {}
	State [0] = GetChaStateLv ( role , STATE_YSMJQH )
	State [1] = GetChaStateLv ( role , STATE_YSLQQH )
	State [2] = GetChaStateLv ( role , STATE_YSTZQH )
	State [3] = GetChaStateLv ( role , STATE_YSLLQH )
	State [4] = GetChaStateLv ( role , STATE_DEMON )
	State [5] = GetChaStateLv ( role , STATE_GREATSH )
	State [6] = GetChaStateLv ( role , STATE_MIRAGE )
	State [7] = GetChaStateLv ( role , STATE_DEVOTE )
	State [8] = GetChaStateLv ( role , STATE_VIGOUR )

	for i = 0 , State_Num , 1 do
		if State[i] >= 1 then
			OtherStateLv = OtherStateLv + 1
		end
	end


	if OtherStateLv > 0 then
		SystemNotice(role ,"ҩˮ��ǿ����Ч�����ɵ���")
		UseItemFailed ( role )
		return
	end

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end


	local statelv = 1
	local statetime = 5400
	AddState( role , role , STATE_YSJSQH , statelv , statetime )

end

--------------------------------�����󻬼�

function ItemUse_MspdYSA ( role , Item )
	local statelv = 1
	local statetime = 1800
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_YSMspd , statelv , statetime )
	else
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end

end
--------------------------------��װҩˮ �����������ٶ�С�����ͷ����ĵ��߳���ʱ��15����
function ItemUse_MspdYSB ( role , Item )
	local statelv = 1
	local statetime = 900
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		Rem_State_StarUnnormal ( role )
		AddState( role , role , STATE_QINGZ , statelv , statetime )
	else
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end
end
-------------------------------------ս��װ��
function ItemUse_GJZhuangJiaA ( role , Item )
	local statelv = 1
	local statetime = 1800
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ~=  nil then
		AddState( Cha_Boat , Cha_Boat , STATE_YSBoatDEF , statelv , statetime )
	else
		SystemNotice( role , "����ʱ�ſ�ʹ��" )
		UseItemFailed ( role )
		return
	end

end
-----------------------------------Ԫ�������
function ItemUse_DenglongA ( role , Item )
	local statelv = 1
	local statetime = 900
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_DENGLONG , statelv , statetime )
	else
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end
end
-----------------------------------ȫ��װ�� �����߷�����С�����͹������ĵ��߳���ʱ��15����
function ItemUse_DenglongB ( role , Item )
	local statelv = 1
	local statetime = 900
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		Rem_State_StarUnnormal ( role )
		AddState( role , role , STATE_QUANS , statelv , statetime )
	else
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end
end

--��������Ʊ

function Jz_Script_ltcsA(role, Item )
	local i = CheckBagItem(role,3048)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "�����Ǽ����۵����飬�뱣��100����hp��spŶ")
		UseItemFailed ( role )
		return
	end
------MoveCity���Ӽ������ж�
	local map_name = GetChaMapName ( role )
	if map_name == "prisonisland" then
		SystemNotice ( role , "��ǰ��ͼ���ܴ���" )
		UseItemFailed ( role )
		return
	end
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3048,1)
			if j == 1 then
				MoveCity(role,"������")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end



--���������ۻ�Ʊ
function Jz_Script_ltjgcsA(role, Item )
	local i = CheckBagItem(role,3049)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "�����Ǽ����۵����飬�뱣��100����hp��spŶ")
		UseItemFailed ( role )
		return
	end
------MoveCity���Ӽ������ж�
	local map_name = GetChaMapName ( role )
	if map_name == "prisonisland" then
		SystemNotice ( role , "��ǰ��ͼ���ܴ���" )
		UseItemFailed ( role )
		return
	end
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3049,1)
			if j == 1 then
				MoveCity(role,"����������")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end


--ʥѩɽ��Ʊ

function Jz_Script_sxscsA(role, Item )
	local i = CheckBagItem(role,3050)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "�����Ǽ����۵����飬�뱣��100����hp��spŶ")
		UseItemFailed ( role )
		return
	end 
------MoveCity���Ӽ������ж�
	local map_name = GetChaMapName ( role )
	if map_name == "prisonisland" then
		SystemNotice ( role , "��ǰ��ͼ���ܴ���" )
		UseItemFailed ( role )
		return
	end
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3050,1)
			if j == 1 then
				MoveCity(role,"ʥѩɽ")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

--����ɭ�ֲ���վ��Ʊ

function Jz_Script_laslcsA(role, Item )
	local i = CheckBagItem(role,3051)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "�����Ǽ����۵����飬�뱣��100����hp��spŶ")
		UseItemFailed ( role )
		return
	end
------MoveCity���Ӽ������ж�
	local map_name = GetChaMapName ( role )
	if map_name == "prisonisland" then
		SystemNotice ( role , "��ǰ��ͼ���ܴ���" )
		UseItemFailed ( role )
		return
	end
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3051,1)
			if j == 1 then
				MoveCity(role,"����ɭ�ֲ���վ")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

--ɳȪ����վ��Ʊ
function Jz_Script_sqcsA(role, Item )
	local i = CheckBagItem(role,3052)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "�����Ǽ����۵����飬�뱣��100����hp��spŶ")
		UseItemFailed ( role )
		return
	end
------MoveCity���Ӽ������ж�
	local map_name = GetChaMapName ( role )
	if map_name == "prisonisland" then
		SystemNotice ( role , "��ǰ��ͼ���ܴ���" )
		UseItemFailed ( role )
		return
	end
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3052,1)
			if j == 1 then
				MoveCity(role,"ɳȪ����վ")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

--��������վ��Ʊ

function Jz_Script_bjcsA(role, Item )
	local i = CheckBagItem(role,3053)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "�����Ǽ����۵����飬�뱣��100����hp��spŶ")
		UseItemFailed ( role )
		return
	end
------MoveCity���Ӽ������ж�
	local map_name = GetChaMapName ( role )
	if map_name == "prisonisland" then
		SystemNotice ( role , "��ǰ��ͼ���ܴ���" )
		UseItemFailed ( role )
		return
	end
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3053,1)
			if j == 1 then
				MoveCity(role,"��������վ")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

--��į֮����ڻ�Ʊ

function Jz_Script_jmztcsA(role, Item )
	local i = CheckBagItem(role,3054)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "�����Ǽ����۵����飬�뱣��100����hp��spŶ")
		UseItemFailed ( role )
		return
	end
------MoveCity���Ӽ������ж�
	local map_name = GetChaMapName ( role )
	if map_name == "prisonisland" then
		SystemNotice ( role , "��ǰ��ͼ���ܴ���" )
		UseItemFailed ( role )
		return
	end
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3054,1)
			if j == 1 then
				MoveCity(role,"��į֮�����")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

--ɳ����ڻ�Ʊ
function Jz_Script_scrkcsA(role, Item )
	local i = CheckBagItem(role,3055)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "�����Ǽ����۵����飬�뱣��100����hp��spŶ")
		UseItemFailed ( role )
		return
	end
------MoveCity���Ӽ������ж�
	local map_name = GetChaMapName ( role )
	if map_name == "prisonisland" then
		SystemNotice ( role , "��ǰ��ͼ���ܴ���" )
		UseItemFailed ( role )
		return
	end
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3055,1)
			if j == 1 then
				MoveCity(role,"ɳ�����")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

--�Ͽ�2���Ʊ

function Jz_Script_fk2csA(role, Item )
	local i = CheckBagItem(role,3056)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "�����Ǽ����۵����飬�뱣��100����hp��spŶ")
		UseItemFailed ( role )
		return
	end
------MoveCity���Ӽ������ж�
	local map_name = GetChaMapName ( role )
	if map_name == "prisonisland" then
		SystemNotice ( role , "��ǰ��ͼ���ܴ���" )
		UseItemFailed ( role )
		return
	end
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3056,1)
			if j == 1 then
				MoveCity(role,"�Ͽ�2��")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

--����2���Ʊ

function Jz_Script_yk2csA(role, Item )
	local i = CheckBagItem(role,3057)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "�����Ǽ����۵����飬�뱣��100����hp��spŶ")
		UseItemFailed ( role )
		return
	end
------MoveCity���Ӽ������ж�
	local map_name = GetChaMapName ( role )
	if map_name == "prisonisland" then
		SystemNotice ( role , "��ǰ��ͼ���ܴ���" )
		UseItemFailed ( role )
		return
	end
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3057,1)
			if j == 1 then
				MoveCity(role,"����2��")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

--����3���Ʊ

function Jz_Script_yk3csA(role, Item )
	local i = CheckBagItem(role,3058)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "�����Ǽ����۵����飬�뱣��100����hp��spŶ")
		UseItemFailed ( role )
		return
	end
------MoveCity���Ӽ������ж�
	local map_name = GetChaMapName ( role )
	if map_name == "prisonisland" then
		SystemNotice ( role , "��ǰ��ͼ���ܴ���" )
		UseItemFailed ( role )
		return
	end
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3058,1)
			if j == 1 then
				MoveCity(role,"����3��")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

--��į֮��2��Ʊ

function Jz_Script_jmzt2csA(role, Item )
	local i = CheckBagItem(role,3059)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "�����Ǽ����۵����飬�뱣��100����hp��spŶ")
		UseItemFailed ( role )
		return
	end
------MoveCity���Ӽ������ж�
	local map_name = GetChaMapName ( role )
	if map_name == "prisonisland" then
		SystemNotice ( role , "��ǰ��ͼ���ܴ���" )
		UseItemFailed ( role )
		return
	end
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3059,1)
			if j == 1 then
				MoveCity(role,"��į֮��2")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end
--��į֮��3��Ʊ

function Jz_Script_jmzt3csA(role, Item )
	local i = CheckBagItem(role,3060)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "�����Ǽ����۵����飬�뱣��100����hp��spŶ")
		UseItemFailed ( role )
		return
	end
------MoveCity���Ӽ������ж�
	local map_name = GetChaMapName ( role )
	if map_name == "prisonisland" then
		SystemNotice ( role , "��ǰ��ͼ���ܴ���" )
		UseItemFailed ( role )
		return
	end
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3060,1)
			if j == 1 then
				MoveCity(role,"��į֮��3")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end
--��į֮��4��Ʊ
function Jz_Script_jmzt4csA(role, Item )
	local i = CheckBagItem(role,3070)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "�����Ǽ����۵����飬�뱣��100����hp��spŶ")
		UseItemFailed ( role )
		return
	end
------MoveCity���Ӽ������ж�
	local map_name = GetChaMapName ( role )
	if map_name == "prisonisland" then
		SystemNotice ( role , "��ǰ��ͼ���ܴ���" )
		UseItemFailed ( role )
		return
	end
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3070,1)
			if j == 1 then
				MoveCity(role,"��į֮��4")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end
--��į֮��5��Ʊ

function Jz_Script_jmzt5csA(role, Item )
	local i = CheckBagItem(role,3071)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "�����Ǽ����۵����飬�뱣��100����hp��spŶ")
		UseItemFailed ( role )
		return
	end
------MoveCity���Ӽ������ж�
	local map_name = GetChaMapName ( role )
	if map_name == "prisonisland" then
		SystemNotice ( role , "��ǰ��ͼ���ܴ���" )
		UseItemFailed ( role )
		return
	end
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3071,1)
			if j == 1 then
				MoveCity(role,"��į֮��5")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end
--��į֮��6��Ʊ
function Jz_Script_jmzt6csA(role, Item )
	local i = CheckBagItem(role,3072)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "�����Ǽ����۵����飬�뱣��100����hp��spŶ")
		UseItemFailed ( role )
		return
	end
------MoveCity���Ӽ������ж�
	local map_name = GetChaMapName ( role )
	if map_name == "prisonisland" then
		SystemNotice ( role , "��ǰ��ͼ���ܴ���" )
		UseItemFailed ( role )
		return
	end
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3072,1)
			if j == 1 then
				MoveCity(role,"��į֮��6")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

--�Ͽ�1���Ʊ

function Jz_Script_fk1csA(role, Item )
	local i = CheckBagItem(role,3073)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "�����Ǽ����۵����飬�뱣��100����hp��spŶ")
		UseItemFailed ( role )
		return
	end
------MoveCity���Ӽ������ж�
	local map_name = GetChaMapName ( role )
	if map_name == "prisonisland" then
		SystemNotice ( role , "��ǰ��ͼ���ܴ���" )
		UseItemFailed ( role )
		return
	end
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3073,1)
			if j == 1 then
				MoveCity(role,"�Ͽ�1��")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end
----�������;���-------------------------------------------------------------------------------------------------------------------------------------
function Jz_Script_cfzsA(role, Item )
	local i = CheckBagItem(role,3076)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "�����Ǽ����۵����飬�뱣��100����hp��spŶ")
		UseItemFailed ( role )
		return
	end
------MoveCity���Ӽ������ж�
	local map_name = GetChaMapName ( role )
	if map_name == "prisonisland" then
		SystemNotice ( role , "��ǰ��ͼ���ܴ���" )
		UseItemFailed ( role )
		return
	end
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3076,1)
			if j == 1 then
				MoveCity(role,"������")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end
---------------��������ʹ��-------------------
function ItemUse_CiChang( role, Item )
	local Elf_URE = GetItemAttr(Item,ITEMATTR_URE) --��ǰ�;ü�¼ʣ���ӡ����
	local Elf_EXP = GetItemAttr(Item,ITEMATTR_ENERGY) --���������¼�������
	if Elf_URE ~= 0 then
		SystemNotice(role ,"��ӡ��δ��ȫ���")
		UseItemFailed ( role )
		return
	end
	if Elf_EXP >9 then
		SystemNotice(role ,"�����������9���޷���������")
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬ʹ�õ���ʧ��")
		UseItemFailed ( role )
		return
	end
	local sta = GetItemAttr( Item ,ITEMATTR_VAL_STA )       --����
	if sta == 0 then
		SystemNotice(role ,"δ�������װ����ʹ�õ���ʧ��")
		UseItemFailed ( role )
		return
	end
	local cha_name = GetChaDefaultName ( role ) 
	if sta == 1 then ---����һ866����֮��----------������֮��
		if Elf_EXP == 0 then
		GiveItem ( role , 0 , 845  , 1 , 20  )  		
		end
		if Elf_EXP == 1 then
		GiveItem ( role , 0 , 845  , 1 , 19  )  		
		end
		if Elf_EXP == 2 then
		GiveItem ( role , 0 , 845  , 1 , 18  )  		
		end
		if Elf_EXP == 3 then
		GiveItem ( role , 0 , 845  , 1 , 17  )  		
		end
		if Elf_EXP == 4 then
		GiveItem ( role , 0 , 845  , 1 , 16  )  		
		end
		if Elf_EXP == 5 then
		GiveItem ( role , 0 , 845  , 1 , 15  )  		
		end
		if Elf_EXP == 6 then
		GiveItem ( role , 0 , 845  , 1 , 14  )  		
		end
		if Elf_EXP == 7 then
		GiveItem ( role , 0 , 845  , 1 , 13  )  		
		end
		if Elf_EXP == 8 then
		GiveItem ( role , 0 , 845  , 1 , 12  )  		
		end
		if Elf_EXP == 9 then
		GiveItem ( role , 0 , 845  , 1 , 12  )  		
		end
		local message ="������̳�͸���".. cha_name.."��ϲ�ػ�ú���֮��"  
		Notice ( message )
		LG("HeiLongJiTan","��ɫ��Ϊ",cha_name,"������������Ϊ",Elf_EXP,"������´򿪺�����̳��õ��ߺ���֮��")
	end
	if sta == 2 then ---���Ķ�865����֮��---------------������֮��
		if Elf_EXP == 0 then
		GiveItem ( role , 0 , 847  , 1 , 20  )  		
		end
		if Elf_EXP == 1 then
		GiveItem ( role , 0 , 847  , 1 , 19  )  		
		end
		if Elf_EXP == 2 then
		GiveItem ( role , 0 , 847  , 1 , 18  )  		
		end
		if Elf_EXP == 3 then
		GiveItem ( role , 0 , 847  , 1 , 17  )  		
		end
		if Elf_EXP == 4 then
		GiveItem ( role , 0 , 847  , 1 , 16  )  		
		end
		if Elf_EXP == 5 then
		GiveItem ( role , 0 , 847  , 1 , 15  )  		
		end
		if Elf_EXP == 6 then
		GiveItem ( role , 0 , 847  , 1 , 14  )  		
		end
		if Elf_EXP == 7 then
		GiveItem ( role , 0 , 847  , 1 , 13  )  		
		end
		if Elf_EXP == 8 then
		GiveItem ( role , 0 , 847  , 1 , 12  )  		
		end
		if Elf_EXP == 9 then
		GiveItem ( role , 0 , 847  , 1 , 2  )  		
		end
		local message ="������̳�͸���".. cha_name.."��ϲ�ػ�ú���֮��"  
		Notice ( message )
		LG("HeiLongJiTan","��ɫ��Ϊ",cha_name,"������������Ϊ",Elf_EXP,"������´򿪺�����̳��õ��ߺ���֮��")
	end
	if sta == 3 then ---������864����֮ͫ---------------������֮צ
		if Elf_EXP == 0 then
		GiveItem ( role , 0 , 846  , 1 , 20  )  		
		end
		if Elf_EXP == 1 then
		GiveItem ( role , 0 , 846  , 1 , 19  )  		
		end
		if Elf_EXP == 2 then
		GiveItem ( role , 0 , 846  , 1 , 18  )  		
		end
		if Elf_EXP == 3 then
		GiveItem ( role , 0 , 846  , 1 , 17  )  		
		end
		if Elf_EXP == 4 then
		GiveItem ( role , 0 , 846  , 1 , 16  )  		
		end
		if Elf_EXP == 5 then
		GiveItem ( role , 0 , 846  , 1 , 15  )  		
		end
		if Elf_EXP == 6 then
		GiveItem ( role , 0 , 846  , 1 , 14  )  		
		end
		if Elf_EXP == 7 then
		GiveItem ( role , 0 , 846  , 1 , 13  )  		
		end
		if Elf_EXP == 8 then
		GiveItem ( role , 0 , 846  , 1 , 12  )  		
		end
		if Elf_EXP == 9 then
		GiveItem ( role , 0 , 846  , 1 , 2  )  		
		end
		local message ="������̳�͸���".. cha_name.."��ϲ�ػ�ú���֮צ"  
		Notice ( message )
		LG("HeiLongJiTan","��ɫ��Ϊ",cha_name,"������������Ϊ",Elf_EXP,"������´򿪺�����̳��õ��ߺ���֮צ")
	end
	if sta == 4 then ---������������֮��
		if Elf_EXP == 0 then
		GiveItem ( role , 0 , 848  , 1 , 20  )  		
		end
		if Elf_EXP == 1 then
		GiveItem ( role , 0 , 848  , 1 , 19  )  		
		end
		if Elf_EXP == 2 then
		GiveItem ( role , 0 , 848  , 1 , 18  )  		
		end
		if Elf_EXP == 3 then
		GiveItem ( role , 0 , 848  , 1 , 17  )  		
		end
		if Elf_EXP == 4 then
		GiveItem ( role , 0 , 848  , 1 , 16  )  		
		end
		if Elf_EXP == 5 then
		GiveItem ( role , 0 , 848  , 1 , 15  )  		
		end
		if Elf_EXP == 6 then
		GiveItem ( role , 0 , 848  , 1 , 14  )  		
		end
		if Elf_EXP == 7 then
		GiveItem ( role , 0 , 848  , 1 , 13  )  		
		end
		if Elf_EXP == 8 then
		GiveItem ( role , 0 , 848  , 1 , 12  )  		
		end
		if Elf_EXP == 9 then
		GiveItem ( role , 0 , 848  , 1 , 2  )  		
		end
		local message ="������̳�͸���".. cha_name.."��ϲ�ػ�ú���֮��"  
		Notice ( message )
		LG("HeiLongJiTan","��ɫ��Ϊ",cha_name,"������������Ϊ",Elf_EXP,"������´򿪺�����̳��õ��ߺ���֮��")
	end
	if Elf_EXP ~=0 then
		SystemNotice(role ,"���ڵ������ʹ����װ����������")
	end
end
---------------����ʹ��-----------------------sta = GetItemAttr( Item_Traget ,ITEMATTR_VAL_STA )       --����
function ItemUse_hexin ( role , Item , Item_Traget ) 
	local Item_Traget_ID = GetItemID ( Item_Traget )
	local Item_ID = GetItemID ( Item )		
	local sta = GetItemAttr( Item_Traget ,ITEMATTR_VAL_STA )       --����
	if Item_Traget_ID ~= 266 then
		SystemNotice(role ,"��Ѽ�Ʒ���ڼ�̳��")
		UseItemFailed ( role )
		return
	end
	if sta==1 and Item_ID == 866 then
		SystemNotice(role ,"���Ѿ�ʹ���˺���֮����Ϊ��Ʒ")
		UseItemFailed ( role )
		return	
	end
	if sta==2 and Item_ID == 865 then
		SystemNotice(role ,"���Ѿ�ʹ���˺���֮����Ϊ��Ʒ")
		UseItemFailed ( role )
		return	
	end
	if sta==3 and Item_ID == 864 then
		SystemNotice(role ,"���Ѿ�ʹ���˺���֮ͫ��Ϊ��Ʒ")
		UseItemFailed ( role )
		return	
	end
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "����ʱ����ʹ��" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		local cha_name = GetChaDefaultName ( role ) 
		if Item_type == 49 and Item_Traget_Type == 65 then
				if Item_ID == 866 then						---����A
				sta =1
				SystemNotice( role , "ʹ�ú���֮����Ϊ��Ʒ�ɻ��װ��--����֮��" )
				LG("HeiLongJiTan_HeXin","��ɫ��Ϊ",cha_name,"�����ʹ�ú���֮����Ϊ��Ʒ")
				elseif Item_ID == 865 then						---����B
				sta =2
				SystemNotice( role , "ʹ�ú���֮����Ϊ��Ʒ�ɻ��װ��--����֮��" )
				LG("HeiLongJiTan_HeXin","��ɫ��Ϊ",cha_name,"�����ʹ�ú���֮����Ϊ��Ʒ")
				elseif Item_ID == 864 then						---����C
				sta =3
				SystemNotice( role , "ʹ�ú���֮ͫ��Ϊ��Ʒ�ɻ��װ��--����֮צ" )
				LG("HeiLongJiTan_HeXin","��ɫ��Ϊ",cha_name,"�����ʹ�ú���֮ͫ��Ϊ��Ʒ")
				elseif Item_ID == 275 then						---����D
				sta =4
				else 
						UseItemFailed ( role )
						return
				end
				SetItemAttr( Item_Traget ,ITEMATTR_VAL_STA ,sta )
		end 
end
---------------��֮��ʹ��--------------------------str = GetItemAttr( Item_Traget ,ITEMATTR_VAL_STR )       --����
function ItemUse_HZLi ( role , Item , Item_Traget ) 
	local Item_ID = GetItemID ( Item_Traget )
	if Item_ID ~= 266 then
		SystemNotice(role ,"�����֮�����ڼ�̳��")
		UseItemFailed ( role )
		return
	end
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "����ʱ����ʹ��" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		if Item_type == 66 and Item_Traget_Type == 65  then
				local str = GetItemAttr( Item_Traget ,ITEMATTR_VAL_STR )       --����
				if str >= 5 then
					UseItemFailed ( role )
				return
				end
				local rad = math.random ( 1, 100 )
				 if rad<=50 then
					local Elf_URE = GetItemAttr(Item_Traget,ITEMATTR_URE) --��ǰ�;ü�¼ʣ���ӡ����
					str = str + 1
					if Elf_URE >= 50 then
					Elf_URE = Elf_URE-50
					end
					SetItemAttr( Item_Traget ,ITEMATTR_VAL_STR ,str )
					SetItemAttr( Item_Traget ,ITEMATTR_URE ,Elf_URE )
				else 
				local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) --���������¼�������
				local Elf_EXP = GetItemAttr(Item_Traget,ITEMATTR_ENERGY) --���������¼�������
					Elf_MaxEXP = Elf_MaxEXP + 1
					Elf_EXP = Elf_EXP + 1
					SystemNotice( role , "��̳���ұ������Ĺ������" ) 
					SetItemAttr( Item_Traget ,ITEMATTR_MAXENERGY ,Elf_MaxEXP )
					SetItemAttr( Item_Traget ,ITEMATTR_ENERGY ,Elf_EXP )
				end 
		end 
end


---------------��֮��ʹ��-------------------------con = GetItemAttr( Item_Traget ,ITEMATTR_VAL_CON )       --����

function ItemUse_BZLi ( role , Item , Item_Traget ) 
	local Item_ID = GetItemID ( Item_Traget )
	if Item_ID ~= 266 then
		SystemNotice(role ,"��ѱ�֮�����ڼ�̳��")
		UseItemFailed ( role )
		return
	end
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "����ʱ����ʹ��" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		if Item_type == 66 and Item_Traget_Type == 65 then
				local con = GetItemAttr( Item_Traget ,ITEMATTR_VAL_CON )       --����
				if con >= 5 then
					UseItemFailed ( role )
				return
				end
				local rad = math.random ( 1, 100 )
				 if rad<=50 then
					local Elf_URE = GetItemAttr(Item_Traget,ITEMATTR_URE) --��ǰ�;ü�¼ʣ���ӡ����
					con = con + 1
					if Elf_URE >= 50 then
					Elf_URE = Elf_URE-50
					end
					SetItemAttr( Item_Traget ,ITEMATTR_VAL_CON ,con )
					SetItemAttr( Item_Traget ,ITEMATTR_URE ,Elf_URE )
				else 
				local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) --���������¼�������
				local Elf_EXP = GetItemAttr(Item_Traget,ITEMATTR_ENERGY) --���������¼�������
					Elf_MaxEXP = Elf_MaxEXP + 1
					Elf_EXP = Elf_EXP + 1
					SystemNotice( role , "��̳���ұ������Ĺ������" ) 
					SetItemAttr( Item_Traget ,ITEMATTR_MAXENERGY ,Elf_MaxEXP )
					SetItemAttr( Item_Traget ,ITEMATTR_ENERGY ,Elf_EXP )
				end 
		end 
end
----------------��֮��ʹ��---------------------------agi = GetItemAttr( Item_Traget ,ITEMATTR_VAL_AGI )       --����
function ItemUse_FZLi( role , Item , Item_Traget ) 
	local Item_ID = GetItemID ( Item_Traget )
	if Item_ID ~= 266 then
		SystemNotice(role ,"��ѷ�֮�����ڼ�̳��")
		UseItemFailed ( role )
		return
	end
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "����ʱ����ʹ��" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		if Item_type == 66 and Item_Traget_Type == 65 then
				local agi = GetItemAttr( Item_Traget ,ITEMATTR_VAL_AGI )       --����
					if agi >= 5 then
					UseItemFailed ( role )
					return
					end
				local rad = math.random ( 1, 100 )
				 if rad<=50 then
					local Elf_URE = GetItemAttr(Item_Traget,ITEMATTR_URE) --��ǰ�;ü�¼ʣ���ӡ����
					agi = agi + 1
					if Elf_URE >= 50 then
					Elf_URE = Elf_URE-50
					end
					SetItemAttr( Item_Traget ,ITEMATTR_VAL_AGI ,agi )
					SetItemAttr( Item_Traget ,ITEMATTR_URE ,Elf_URE )
				else 
				local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) --���������¼�������
				local Elf_EXP = GetItemAttr(Item_Traget,ITEMATTR_ENERGY) --���������¼�������
					Elf_MaxEXP = Elf_MaxEXP + 1
					Elf_EXP = Elf_EXP + 1
					SystemNotice( role , "��̳���ұ������Ĺ������" ) 
					SetItemAttr( Item_Traget ,ITEMATTR_MAXENERGY ,Elf_MaxEXP )
					SetItemAttr( Item_Traget ,ITEMATTR_ENERGY ,Elf_EXP )
				end 
		end 
end

----------------��֮��ʹ��---------------------------dex = GetItemAttr( Item_Traget ,ITEMATTR_VAL_DEX )       --רע
function ItemUse_LZli ( role , Item , Item_Traget ) 
	local Item_ID = GetItemID ( Item_Traget )
	if Item_ID ~= 266 then
		SystemNotice(role ,"�����֮�����ڼ�̳��")
		UseItemFailed ( role )
		return
	end
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "����ʱ����ʹ��" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		if Item_type == 66 and Item_Traget_Type == 65 then
				local dex = GetItemAttr( Item_Traget ,ITEMATTR_VAL_DEX )       --����
					if dex >= 5 then
					UseItemFailed ( role )
					return
					end
				local rad = math.random ( 1, 100 )
				 if rad<=50 then
					local Elf_URE = GetItemAttr(Item_Traget,ITEMATTR_URE) --��ǰ�;ü�¼ʣ���ӡ����
					dex = dex + 1
					if Elf_URE >= 50 then
					Elf_URE = Elf_URE-50
					end
					SetItemAttr( Item_Traget ,ITEMATTR_VAL_DEX ,dex )
					SetItemAttr( Item_Traget ,ITEMATTR_URE ,Elf_URE )
				else 
				local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) --���������¼�������
				local Elf_EXP = GetItemAttr(Item_Traget,ITEMATTR_ENERGY) --���������¼�������
					Elf_MaxEXP = Elf_MaxEXP + 1
					Elf_EXP = Elf_EXP + 1
					SystemNotice( role , "��̳���ұ������Ĺ������" ) 
					SetItemAttr( Item_Traget ,ITEMATTR_MAXENERGY ,Elf_MaxEXP )
					SetItemAttr( Item_Traget ,ITEMATTR_ENERGY ,Elf_EXP )
				end 
		end 
end
----------------��ʹ����ʹ��-------------------------
function ItemUse_ZhuFu ( role , Item , Item_Traget ) 
	local Item_ID = GetItemID ( Item_Traget )
	if Item_ID ~= 266 then
		SystemNotice(role ,"����ȷʹ����ʹ����")
		UseItemFailed ( role )
		return
	end
	local Elf_EXP = GetItemAttr(Item_Traget,ITEMATTR_ENERGY) --��ǰ������¼�������
	local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) --���������¼�������

	if Elf_EXP ==0 then
		UseItemFailed ( role )
		
		return
	end
	local rad = math.random ( 1, 100 )

	if Elf_EXP <= 5 and Elf_EXP >= 1 then
		if rad <= 30 then
			Elf_EXP = Elf_EXP -1
		else
			SystemNotice(role ,"�������ղ�ʹ�õ���ʹ��������̫��,���䲢û�н��")
		end
	end

	if Elf_EXP <= 10 and Elf_EXP >= 6 then
		if rad <= 50 then
			Elf_EXP = Elf_EXP -1
		else
			SystemNotice(role ,"�������ղ�ʹ�õ���ʹ��������̫��,���䲢û�н��")
		end
	end

	if Elf_EXP <= 15 and Elf_EXP >= 11 then
		if rad <= 80 then
			Elf_EXP = Elf_EXP -1
		else
			SystemNotice(role ,"�������ղ�ʹ�õ���ʹ��������̫��,���䲢û�н��")
		end
	end

	if Elf_EXP >= 16  then
		Elf_EXP = Elf_EXP -1
	end

	SetItemAttr( Item_Traget ,ITEMATTR_ENERGY ,Elf_EXP )
	SetItemAttr( Item_Traget ,ITEMATTR_MAXENERGY ,Elf_EXP )
end

--һԪ�����
function ItemUse_YiYuanHaoYunBOX ( role , Item )
	local Percentage = Percentage_Random ( 0.1 )
			if Percentage == 1 then
				 AddMoney ( role , 0 , 50000 )
			else	
				local item_type = BoxXiang_YiYuanBOX
				local item_type_rad = BoxXiang_YiYuanBOX_Rad 
				local item_type_count = BoxXiang_YiYuanBOX_Count 
				local maxitem = BoxXiang_YiYuanBOX_Mxcount						-- �ս���
				local item_quality = BoxXiang_YiYuanBOX_Qua
				local General = 0  
				local ItemId = 0 
			--	local Item_CanGet = GetChaFreeBagGridNum ( role )
				
			--	if Item_CanGet <= 1 then
			--		SystemNotice(role ,"����û���㹻�Ŀռ䣬���˰�����ʧ��")
			--		UseItemFailed ( role )
			--		return
			--	end
				for i = 1 , maxitem , 1 do 
					General = item_type_rad [ i ] + General		
				end 
				local a = math.random ( 1, General )
				local b = 0
				local d = 0 
				local c = -1							--������Ʒ���
				for k = 1 , maxitem , 1 do				-- �������ӵ�ǰ׺���

					d = item_type_rad [ k ] + b

					 if a <= d and a > b then
						c = k
						break		
					end 
					b = d 
				end 
				if c == -1 then 
					ItemId = 3124 
				else 
					ItemId = item_type [c]  
					ItemCount = item_type_count [c] 
				end 

				GiveItem ( role , 0 , ItemId , ItemCount , item_quality )
		
				local GoodItem = {}
				GoodItem[0] = 3336
				GoodItem[1] = 3885
				GoodItem[2] = 430
				GoodItem[3] = 3886
				GoodItem[4] = 3113
				GoodItem[5] = 3111
				GoodItem[6] = 3093
				GoodItem[7] = 3090
				GoodItem[8] =0860
				GoodItem[9] =0861
				GoodItem[10] =0862
				GoodItem[11] =0863
				GoodItem[12] =179
				GoodItem[13] =3084
				GoodItem[14] =3085


				local Good_C = 0
				for Good_C = 0 , 14 , 1 do
					if ItemId == GoodItem[Good_C] then
						local itemname = GetItemName ( ItemId ) 
						local cha_name = GetChaDefaultName ( role ) 
						local message = cha_name.."��һԪ���˰���ϲ�ػ��"..itemname  
						Notice ( message )
					end
				end
			end 
	end

---------------�صȽ�
function ItemUse_tedengjiang ( role , Item )
local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 3 then
		SystemNotice(role ,"�������Ӳ���")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 845  , 1 , 16  )  
	GiveItem ( role , 0 , 846  , 1 , 16  )  
	GiveItem ( role , 0 , 847  , 1 , 16  ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.."���صȽ���ϲ�ػ�ú�����װ"
		Notice ( message )
end


-----------------------һ�Ƚ�
function ItemUse_yidengjiang ( role , Item )
local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 1 then
		SystemNotice(role ,"�������Ӳ���")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0853  , 1 , 4 ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.."��һ�Ƚ���ϲ�ػ�ü��ڻ�����־" 
		Notice ( message )
end

---------------------------���Ƚ�
function ItemUse_erdengjiang ( role , Item )
local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 14 then
		SystemNotice(role ,"�������Ӳ���")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0456  , 10 , 4  ) 
	local rad = math.random ( 1, 8 )
	if rad == 1 then
	GiveItem ( role , 0 , 5013  , 1 , 4 ) 
	GiveItem ( role , 0 , 5021  , 1 , 4 ) 
	GiveItem ( role , 0 , 5029  , 1 , 4 ) 
	elseif rad == 2 then
	GiveItem ( role , 0 , 5014  , 1 , 4 ) 
	GiveItem ( role , 0 , 5022  , 1 , 4 ) 
	GiveItem ( role , 0 , 5030  , 1 , 4 ) 
	elseif rad == 3 then
	GiveItem ( role , 0 , 5015  , 1 , 4 ) 
	GiveItem ( role , 0 , 5023  , 1 , 4 ) 
	GiveItem ( role , 0 , 5031  , 1 , 4 ) 
	elseif rad == 4 then
	GiveItem ( role , 0 , 5020  , 1 , 4 ) 
	GiveItem ( role , 0 , 5024  , 1 , 4 ) 
	GiveItem ( role , 0 , 5032  , 1 , 4 ) 
	GiveItem ( role , 0 , 5037  , 1 , 4 ) 
	elseif rad == 5 then
	GiveItem ( role , 0 , 5017  , 1 , 4 ) 
	GiveItem ( role , 0 , 5025  , 1 , 4 ) 
	GiveItem ( role , 0 , 5033  , 1 , 4 )
	elseif rad == 6 then
	GiveItem ( role , 0 , 5018  , 1 , 4 ) 
	GiveItem ( role , 0 , 5026  , 1 , 4 ) 
	GiveItem ( role , 0 , 5034  , 1 , 4 )
	elseif rad == 7 then
	GiveItem ( role , 0 , 5019  , 1 , 4 ) 
	GiveItem ( role , 0 , 5027  , 1 , 4 ) 
	GiveItem ( role , 0 , 5035  , 1 , 4 )
	elseif rad == 8 then
	GiveItem ( role , 0 , 5016  , 1 , 4 ) 
	GiveItem ( role , 0 , 5028  , 1 , 4 ) 
	GiveItem ( role , 0 , 5036  , 1 , 4 )
	GiveItem ( role , 0 , 5038  , 1 , 4 )
	end
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.."�򿪶��Ƚ���ϲ�ػ��ǿ����ʯ10����Ħ����װ1��"   
		Notice ( message )
end

	
--------------------------���Ƚ�
function ItemUse_sandengjiang ( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 2 then
		SystemNotice(role ,"�������Ӳ���")
		UseItemFailed ( role )
		return
	end
	local rad = math.random ( 1, 2 )
	if rad == 1 then
		GiveItem ( role , 0 , 3094  , 1 , 4 ) 
		GiveItem ( role , 0 , 3096  , 1 , 4 )
	else
		GiveItem ( role , 0 , 1094  , 1 , 4 ) 
	end
end

-------------------------------------------------------kokora 08��Ʒ����(���޸����ԭʹ�ò��ֽ⿪)--------------------------------------
--99��ը��
--function ItemUse_BaoZhaBOX ( role , Item )
--	local item_type = BoxXiang_BaoZhaBOX
--	local item_type_rad = BoxXiang_BaoZhaBOX_Rad
--	local item_type_count = BoxXiang_BaoZhaBOX_Count
--	local maxitem = BoxXiang_baozhabao_Mxcount						-- �ս���
--	local item_quality = BoxXiang_baozhabao_Qua
--	local General = 0  
--	local ItemId = 0 
--	local Item_CanGet = GetChaFreeBagGridNum ( role )
--		
--	--if Item_CanGet <= 1 then
--		--SystemNotice(role ,"����û���㹻�Ŀռ䣬���˰�����ʧ��")
--		--UseItemFailed ( role )
--		--return
--	--end
--	for i = 1 , maxitem , 1 do 
--		General = item_type_rad [ i ] + General		
--	end 
--	local a = math.random ( 1, General )
--	local b = 0
--	local d = 0 
--	local c = -1							--������Ʒ���
--	for k = 1 , maxitem , 1 do				-- �������ӵ�ǰ׺���
--		d = item_type_rad [ k ] + b
--
--		 if a <= d and a > b then
--			c = k
--			break		
--		end 
--		b = d 
--	end 
--	if c == -1 then 
--		ItemId = 3124 
--	else 
--		ItemId = item_type [c]  
--		ItemCount = item_type_count [c] 
--	end 
--
--	GiveItem ( role , 0 , ItemId , ItemCount , item_quality )
--	local GoodItem = {}
--	GoodItem[0] = 3111
--	GoodItem[1] = 3110
--	GoodItem[2] = 3112
--	GoodItem[3] = 3886
--	GoodItem[4] = 3093
--	GoodItem[5] = 3090
--	GoodItem[6] = 430
--	GoodItem[7] = 179
--	GoodItem[8] =3084
--	GoodItem[9] =3085
--	GoodItem[10] =0244
--	GoodItem[11] =0250
--	GoodItem[12] =0253
--	GoodItem[13] =0260
--	GoodItem[14] =0860
--	GoodItem[15] =0861
--	GoodItem[16] =0862
--	GoodItem[17] =3458
--	GoodItem[18] =0247
--	GoodItem[19] =0271
--	local Good_C = 0
--	for Good_C = 0 , 19 , 1 do
--		if ItemId == GoodItem[Good_C] then
--			local itemname = GetItemName ( ItemId ) 
--			local cha_name = GetChaDefaultName ( role ) 
--			local message = cha_name.."��99��ը����ϲ�ػ��"..itemname  
--			Notice ( message )
--		end
--	end
--end
function ItemUse_BaoZhaBOX ( role , Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end 
	local NocLock =	KitbagLock( role, 0 )
	if NocLock == LUA_FALSE then
		SystemNotice( role , "���ı�����������״̬")
		return 
	end
	local Money_Have = GetChaAttr ( role , ATTR_GD )
	if Money_Have>1900000000 then
		SystemNotice (role, "����Ǯ��Ҫ����19��Ŷ��Ǯ���˲�̫��ȫ��")
		return 
	end
	AddMoney ( role , 0 , 10000 )                 --------10000������
		SystemNotice ( role ,"��ϲ�����10000�����ҵĻ���")	
end

-------------------------------------���������ֻ���
function ItemUse_wxlh( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <1 then
		SystemNotice(role ,"Ҫ�򿪱�����Ҫ������������1����λ")
		UseItemFailed ( role )
		return
	end
	local r1,r2 =MakeItem ( role , SI  , SN , SE )
	local Item_star = GetChaItem ( role , 2 , r2 )			--ȡ����ָ��
	local num={}
	local numAttr={}
	local b = 0
	local a = {}
	for b=1,5,1 do
		num [b]=0
		numAttr [b]=0
	end
	b = 0
	for i=1,47,1 do		---------------ȡ�����ߵ�ȫ��ʵ��������
	    a [i]=GetItemAttr ( Item_star , i )
		if a [i]~=0 then
	--		SystemNotice( role , a [i] )
				b = b + 1
				num [b]=i    -------------num [b]��¼ʵ�������Եı��
				numAttr [b]=a[i] ------------���еĸ�ʵ��������ֵ
		end
	end
	SetItemAttr ( Item_star ,num [1] , SA1 )
	SetItemAttr ( Item_star ,num [2] , SA2 )
	SetItemAttr ( Item_star ,num [3] , SA3 )
	SetItemAttr ( Item_star ,num [4] , SA4)
	SetItemAttr ( Item_star ,num [5] , SA5)

end
----------------------------------�߼���ָ�һ�
function ItemUse_Sjz( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 5 then
		SystemNotice(role ,"�򿪸߼���ָ�һ�ȯ������Ҫ5����λ")
		UseItemFailed ( role )
		return
	end
	local rad = math.random ( 1, 5 )
	if rad ==1 then
	--�����ļ��
	--�������
	--������ӡ
	--��֮��
	--���صĺ���
	GiveItem ( role , 0 , 281  , 1 , 4 )	
	GiveItem ( role , 0 , 286  , 1 , 4 )	
	GiveItem ( role , 0 , 324  , 1 , 4 )	
	GiveItem ( role , 0 , 334  , 1 , 4 )	
	GiveItem ( role , 0 , 387  , 1 , 4 )	
	end
	if rad ==2 then
	--�����Ŀ�̽
	--����֮��
	--���ǻ���
	--����֮��
	--��ά��֮��
	GiveItem ( role , 0 , 282  , 1 , 4 )	
	GiveItem ( role , 0 , 287  , 1 , 4 )	
	GiveItem ( role , 0 , 327  , 1 , 4 )	
	GiveItem ( role , 0 , 346  , 1 , 4 )	
	GiveItem ( role , 0 , 414  , 1 , 4 )		
	end
	if rad ==3 then
	--����֮��
	--���������
	--����ָ��
	--��֮��
	--��ŷ�ķ�ŭ
	GiveItem ( role , 0 , 283  , 1 , 4 )	
	GiveItem ( role , 0 , 288  , 1 , 4 )	
	GiveItem ( role , 0 , 328  , 1 , 4 )	
	GiveItem ( role , 0 , 347  , 1 , 4 )	
	GiveItem ( role , 0 , 415  , 1 , 4 )	
	end
	if rad ==4 then
	--��ͽ֮��
	--����ɮ
	--�����޵�ף��
	--����
	--Сɽ����Ǹ��
	GiveItem ( role , 0 , 284  , 1 , 4 )	
	GiveItem ( role , 0 , 524  , 1 , 4 )	
	GiveItem ( role , 0 , 329  , 1 , 4 )	
	GiveItem ( role , 0 , 348  , 1 , 4 )	
	GiveItem ( role , 0 , 416  , 1 , 4 )		
	end
	if rad ==5 then
	--�黷
	--ʥ��
	--��ʹ�ı���
	--����
	--ʥŮ�ķ���
	GiveItem ( role , 0 , 285  , 1 , 4 )	
	GiveItem ( role , 0 , 321  , 1 , 4 )	
	GiveItem ( role , 0 , 330  , 1 , 4 )	
	GiveItem ( role , 0 , 349  , 1 , 4 )	
	GiveItem ( role , 0 , 417  , 1 , 4 )			
	end
end
----------------------------------�߼������һ�
function ItemUse_Sxl( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 5 then
		SystemNotice(role ,"�򿪸߼������һ�ȯ������Ҫ5����λ")
		UseItemFailed ( role )
		return
	end
	local rad = math.random ( 1, 2 )
	if rad ==1 then
	--̫��ʯ׹��
	--��ҫʯ������
	--ͻ��
	--�첽ð����
	--����������
	GiveItem ( role , 0 , 418  , 1 , 4 )	
	GiveItem ( role , 0 , 420  , 1 , 4 )	
	GiveItem ( role , 0 , 739  , 1 , 4 )	
	GiveItem ( role , 0 , 462  , 1 , 4 )	
	GiveItem ( role , 0 , 495  , 1 , 4 )		
	end
	if rad ==2 then
	--�׽�����
	--��֮��ʹ
	--��������
	--�Թ�̽����
	--���ӵĴ���
	GiveItem ( role , 0 , 419  , 1 , 4 )	
	GiveItem ( role , 0 , 421  , 1 , 4 )	
	GiveItem ( role , 0 , 461  , 1 , 4 )	
	GiveItem ( role , 0 , 463  , 1 , 4 )	
	GiveItem ( role , 0 , 497  , 1 , 4 )		
	end
end
----------------------------------�߼����Ƕһ�
function ItemUse_Sbk( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 5 then
		SystemNotice(role ,"�򿪸߼����Ƕһ�ȯ������Ҫ5����λ")
		UseItemFailed ( role )
		return
	end
	local rad = math.random ( 1, 2 )
	if rad ==1 then
	--ѧͽ���ױ�
	--ͨ�����ױ�
	--�м���֮��
	--�߼���֮��
	--����2006
	GiveItem ( role , 0 , 498  , 1 , 4 )	
	GiveItem ( role , 0 , 503  , 1 , 4 )	
	GiveItem ( role , 0 , 504  , 1 , 4 )	
	GiveItem ( role , 0 , 505  , 1 , 4 )	
	GiveItem ( role , 0 , 506  , 1 , 4 )		
	end
	if rad ==2 then
	--ѧͽ�÷籴  
	--ͨ���ͷ籴  
	--�м���֮��  
	--�߼���֮��  
	--����2006 
	GiveItem ( role , 0 , 508  , 1 , 4 )	
	GiveItem ( role , 0 , 509  , 1 , 4 )	
	GiveItem ( role , 0 , 510  , 1 , 4 )	
	GiveItem ( role , 0 , 522  , 1 , 4 )	
	GiveItem ( role , 0 , 523  , 1 , 4 )		
	end
end
----�ĵ��ɻ�Ʊ-------------------------------------------------------------------------------------------------------------------------------------
function Jz_Script_xdfjp(role, Item )
	local i = CheckBagItem(role,563)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "�����Ǽ����۵����飬�뱣��100����hp��spŶ")
		UseItemFailed ( role )
		return
	end
------MoveCity���Ӽ������ж�
	local map_name = GetChaMapName ( role )
	if map_name == "prisonisland" then
		SystemNotice ( role , "��ǰ��ͼ���ܴ���" )
		UseItemFailed ( role )
		return
	end
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,563,1)
			if j == 1 then
				MoveCity(role,"�ĵ�")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

----�ﵺ�ɻ�Ʊ-------------------------------------------------------------------------------------------------------------------------------------
function Jz_Script_qdfjp(role, Item )
	local i = CheckBagItem(role,583)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "�����Ǽ����۵����飬�뱣��100����hp��spŶ")
		UseItemFailed ( role )
		return
	end
------MoveCity���Ӽ������ж�
	local map_name = GetChaMapName ( role )
	if map_name == "prisonisland" then
		SystemNotice ( role , "��ǰ��ͼ���ܴ���" )
		UseItemFailed ( role )
		return
	end
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,583,1)
			if j == 1 then
				MoveCity(role,"�ﵺ")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end
----���˰�����-------------------------------------------------------------------------------------------------------------------------------------
function ItemUse_Crbbt(role, Item )
	SystemNotice(role ,"����Ʒ����ù��ö�����ʧЧ,��Ҫ̫ʧ��Ŷ")
--	local statelv = 1
--	local statetime = 20
--	AddState( role , role , STATE_CJBBT , statelv , statetime )
end
----�����ɿ���-------------------------------------------------------------------------------------------------------------------------------------
function ItemUse_Jrqkl(role, Item )
	SystemNotice(role ,"����Ʒ����ù��ö�����ʧЧ,��Ҫ̫ʧ��Ŷ")
--	local statelv = 1
--	local statetime = 20
--	AddState( role , role , STATE_JRQKL , statelv , statetime )
end
--��������
function ItemUse_ZhouSuiBOX ( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 2 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬���հ�����ʧ��")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 1097 , 1 , 0 )
	local item_type = BoxXiang_ZhousSuiBOX
	local item_type_rad = BoxXiang_ZhousSuiBOX_Rad 
	local item_type_count = BoxXiang_ZhousSuiBOX_Count 
	local maxitem = BoxXiang_ZhouSui_Mxcount						-- �ս���
	local item_quality = BoxXiang_ZhouSui_Qua
	local General = 0  
	local ItemId = 0 
	
	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General		
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1							--������Ʒ���
	for k = 1 , maxitem , 1 do				-- �������ӵ�ǰ׺���

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break		
		end 
		b = d 
	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality )
	if ItemId ==  0853 then
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.."���������ձ��侪ϲ�ػ�ü��ڻ�����־" 
	Notice ( message )
	end
end
-------------------------------�����ItemUse_CZHe
function ItemUse_CZHe( role , Item ) 							
 	local Money_add = 1000000
	local Money_Have = GetChaAttr ( role , ATTR_GD )
	if Money_Have>=999900000 then
		SystemNotice (role, "����ʻ��Ѿ����ͣ�ʹ�õ���ʧ��")
		UseItemFailed ( role )
		return	
	end
	AddMoney ( role , 0 , Money_add )
end 
-----------------------------------Ħ��С�Ӿ��鵰ItemUse_MDXZJLD
function ItemUse_MDXZJLD ( role, Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬ʹ����֮���鵰ʧ��")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 680  , 1 , 4 ) 
end
----���ձȹ۹�Ʊ-------------------------------------------------------------------------------------------------------------------------------------
function Jz_Script_jialebi(role, Item )
	local i = CheckBagItem(role,2445)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "�����Ǽ����۵����飬�뱣��100����hp��spŶ")
		UseItemFailed ( role )
		return
	end
------MoveCity���Ӽ������ж�
	local map_name = GetChaMapName ( role )
	if map_name == "prisonisland" then
		SystemNotice ( role , "��ǰ��ͼ���ܴ���" )
		UseItemFailed ( role )
		return
	end
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,2445,1)
			if j == 1 then
				MoveCity(role,"���ձ�")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end
----------------------------------��֮���鵰
function ItemUse_YZJLD( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬ʹ����֮���鵰ʧ��")
		UseItemFailed ( role )
		return
	end
	local Num_newJL = GetItemForgeParam ( Item , 1 )
	local Part1_newJL = GetNum_Part1 ( Num_newJL )	--Get Num Part 1 �� Part 7
	local Part2_newJL = GetNum_Part2 ( Num_newJL )	
	local Part3_newJL = GetNum_Part3 ( Num_newJL )

	local new_str=GetItemAttr ( Item , ITEMATTR_VAL_STR )      
	local new_dex=GetItemAttr( Item , ITEMATTR_VAL_DEX  )	  
	local new_sta=GetItemAttr ( Item , ITEMATTR_VAL_STA  )    
	local new_agi=GetItemAttr( Item , ITEMATTR_VAL_AGI )       
	local new_con=GetItemAttr ( Item , ITEMATTR_VAL_CON )  
	local new_lv = new_str + new_con + new_agi + new_dex + new_sta
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		Item_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		Item_MAXURE_NUM = 32000
	end	  

	local rad = math.random ( 1, 100 )
	if Part3_newJL==3 then
		GiveItem ( role , 0 , 609  , 1 , 4 ) 
	end
	if Part3_newJL==2 then
		if rad <=95 then
			GiveItem ( role , 0 , 608  , 1 , 4 ) 
		elseif rad > 95 and rad <=100 then
			GiveItem ( role , 0 , 609  , 1 , 4 ) 
		end
	end
	if Part3_newJL==1 then
		if rad <=90 then
			GiveItem ( role , 0 , 239  , 1 , 4 ) 
		elseif rad > 90 and rad <=98 then
			GiveItem ( role , 0 , 608  , 1 , 4 ) 
		elseif rad > 98 and rad <=100 then
			GiveItem ( role , 0 , 609  , 1 , 4 ) 
		end
	end
	local r1,r2 =MakeItem ( role , 231  , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )			--ȡ�¾������ָ��
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_STR , new_str )
	SetItemAttr( Item_newJL , ITEMATTR_VAL_DEX , new_dex )	 
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_STA , new_sta )
	SetItemAttr( Item_newJL , ITEMATTR_VAL_AGI , new_agi )
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_CON , new_con ) 
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY ) 	
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
end
----------------------------------��֮���鵰
function ItemUse_TZJLD( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬ʹ����֮���鵰ʧ��")
		UseItemFailed ( role )
		return
	end
	local Num_newJL = GetItemForgeParam ( Item , 1 )
	local Part1_newJL = GetNum_Part1 ( Num_newJL )	--Get Num Part 1 �� Part 7
	local Part2_newJL = GetNum_Part2 ( Num_newJL )	
	local Part3_newJL = GetNum_Part3 ( Num_newJL )

	local new_str=GetItemAttr ( Item , ITEMATTR_VAL_STR )      
	local new_dex=GetItemAttr( Item , ITEMATTR_VAL_DEX  )	  
	local new_sta=GetItemAttr ( Item , ITEMATTR_VAL_STA  )    
	local new_agi=GetItemAttr( Item , ITEMATTR_VAL_AGI )       
	local new_con=GetItemAttr ( Item , ITEMATTR_VAL_CON )  
	local new_lv = new_str + new_con + new_agi + new_dex + new_sta
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		Item_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		Item_MAXURE_NUM = 32000
	end	  

	local rad = math.random ( 1, 100 )
	if Part3_newJL==3 then
		GiveItem ( role , 0 , 609  , 1 , 4 ) 
	end
	if Part3_newJL==2 then
		if rad <=95 then
			GiveItem ( role , 0 , 608  , 1 , 4 ) 
		elseif rad > 95 and rad <=100 then
			GiveItem ( role , 0 , 609  , 1 , 4 ) 
		end
	end
	if Part3_newJL==1 then
		if rad <=90 then
			GiveItem ( role , 0 , 239  , 1 , 4 ) 
		elseif rad > 90 and rad <=98 then
			GiveItem ( role , 0 , 608  , 1 , 4 ) 
		elseif rad > 98 and rad <=100 then
			GiveItem ( role , 0 , 609  , 1 , 4 ) 
		end
	end
	local r1,r2 =MakeItem ( role , 233  , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )			--ȡ�¾������ָ��
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_STR , new_str )
	SetItemAttr( Item_newJL , ITEMATTR_VAL_DEX , new_dex )	 
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_STA , new_sta )
	SetItemAttr( Item_newJL , ITEMATTR_VAL_AGI , new_agi )
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_CON , new_con ) 
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY ) 	
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
end
----------------------------------��֮���鵰
function ItemUse_LZJLD( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬ʹ����֮���鵰ʧ��")
		UseItemFailed ( role )
		return
	end
	local Num_newJL = GetItemForgeParam ( Item , 1 )
	local Part1_newJL = GetNum_Part1 ( Num_newJL )	--Get Num Part 1 �� Part 7
	local Part2_newJL = GetNum_Part2 ( Num_newJL )	
	local Part3_newJL = GetNum_Part3 ( Num_newJL )

	local new_str=GetItemAttr ( Item , ITEMATTR_VAL_STR )      
	local new_dex=GetItemAttr( Item , ITEMATTR_VAL_DEX  )	  
	local new_sta=GetItemAttr ( Item , ITEMATTR_VAL_STA  )    
	local new_agi=GetItemAttr( Item , ITEMATTR_VAL_AGI )       
	local new_con=GetItemAttr ( Item , ITEMATTR_VAL_CON )  
	local new_lv = new_str + new_con + new_agi + new_dex + new_sta
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		Item_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		Item_MAXURE_NUM = 32000
	end	  

	local rad = math.random ( 1, 100 )
	if Part3_newJL==3 then
		GiveItem ( role , 0 , 609  , 1 , 4 ) 
	end
	if Part3_newJL==2 then
		if rad <=95 then
			GiveItem ( role , 0 , 608  , 1 , 4 ) 
		elseif rad > 95 and rad <=100 then
			GiveItem ( role , 0 , 609  , 1 , 4 ) 
		end
	end
	if Part3_newJL==1 then
		if rad <=90 then
			GiveItem ( role , 0 , 239  , 1 , 4 ) 
		elseif rad > 90 and rad <=98 then
			GiveItem ( role , 0 , 608  , 1 , 4 ) 
		elseif rad > 98 and rad <=100 then
			GiveItem ( role , 0 , 609  , 1 , 4 ) 
		end
	end
	local r1,r2 =MakeItem ( role , 232  , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )			--ȡ�¾������ָ��
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_STR , new_str )
	SetItemAttr( Item_newJL , ITEMATTR_VAL_DEX , new_dex )	 
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_STA , new_sta )
	SetItemAttr( Item_newJL , ITEMATTR_VAL_AGI , new_agi )
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_CON , new_con ) 
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY ) 	
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
end
----------------------------------��֮���鵰
function ItemUse_SZJLD( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬ʹ����֮���鵰ʧ��")
		UseItemFailed ( role )
		return
	end
	local Num_newJL = GetItemForgeParam ( Item , 1 )
	local Part1_newJL = GetNum_Part1 ( Num_newJL )	--Get Num Part 1 �� Part 7
	local Part2_newJL = GetNum_Part2 ( Num_newJL )	
	local Part3_newJL = GetNum_Part3 ( Num_newJL )

	local new_str=GetItemAttr ( Item , ITEMATTR_VAL_STR )      
	local new_dex=GetItemAttr( Item , ITEMATTR_VAL_DEX  )	  
	local new_sta=GetItemAttr ( Item , ITEMATTR_VAL_STA  )    
	local new_agi=GetItemAttr( Item , ITEMATTR_VAL_AGI )       
	local new_con=GetItemAttr ( Item , ITEMATTR_VAL_CON )  
	local new_lv = new_str + new_con + new_agi + new_dex + new_sta
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		Item_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		Item_MAXURE_NUM = 32000
	end	  

	local rad = math.random ( 1, 100 )
	if Part3_newJL==3 then
		GiveItem ( role , 0 , 609  , 1 , 4 ) 
	end
	if Part3_newJL==2 then
		if rad <=95 then
			GiveItem ( role , 0 , 608  , 1 , 4 ) 
		elseif rad > 95 and rad <=100 then
			GiveItem ( role , 0 , 609  , 1 , 4 ) 
		end
	end
	if Part3_newJL==1 then
		if rad <=90 then
			GiveItem ( role , 0 , 239  , 1 , 4 ) 
		elseif rad > 90 and rad <=98 then
			GiveItem ( role , 0 , 608  , 1 , 4 ) 
		elseif rad > 98 and rad <=100 then
			GiveItem ( role , 0 , 609  , 1 , 4 ) 
		end
	end
	local r1,r2 =MakeItem ( role , 234  , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )			--ȡ�¾������ָ��
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_STR , new_str )
	SetItemAttr( Item_newJL , ITEMATTR_VAL_DEX , new_dex )	 
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_STA , new_sta )
	SetItemAttr( Item_newJL , ITEMATTR_VAL_AGI , new_agi )
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_CON , new_con ) 
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY ) 	
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
end
----------------------------------ר֮���鵰
function ItemUse_ZZJLD( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬ʹ��ר֮���鵰ʧ��")
		UseItemFailed ( role )
		return
	end
	local Num_newJL = GetItemForgeParam ( Item , 1 )
	local Part1_newJL = GetNum_Part1 ( Num_newJL )	--Get Num Part 1 �� Part 7
	local Part2_newJL = GetNum_Part2 ( Num_newJL )	
	local Part3_newJL = GetNum_Part3 ( Num_newJL )

	local new_str=GetItemAttr ( Item , ITEMATTR_VAL_STR )      
	local new_dex=GetItemAttr( Item , ITEMATTR_VAL_DEX  )	  
	local new_sta=GetItemAttr ( Item , ITEMATTR_VAL_STA  )    
	local new_agi=GetItemAttr( Item , ITEMATTR_VAL_AGI )       
	local new_con=GetItemAttr ( Item , ITEMATTR_VAL_CON )  
	local new_lv = new_str + new_con + new_agi + new_dex + new_sta
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		Item_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		Item_MAXURE_NUM = 32000
	end	  

	local rad = math.random ( 1, 100 )
	if Part3_newJL==3 then
		GiveItem ( role , 0 , 609  , 1 , 4 ) 
	end
	if Part3_newJL==2 then
		if rad <=95 then
			GiveItem ( role , 0 , 608  , 1 , 4 ) 
		elseif rad > 95 and rad <=100 then
			GiveItem ( role , 0 , 609  , 1 , 4 ) 
		end
	end
	if Part3_newJL==1 then
		if rad <=90 then
			GiveItem ( role , 0 , 239  , 1 , 4 ) 
		elseif rad > 90 and rad <=98 then
			GiveItem ( role , 0 , 608  , 1 , 4 ) 
		elseif rad > 98 and rad <=100 then
			GiveItem ( role , 0 , 609  , 1 , 4 ) 
		end
	end
	local r1,r2 =MakeItem ( role , 235  , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )			--ȡ�¾������ָ��
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_STR , new_str )
	SetItemAttr( Item_newJL , ITEMATTR_VAL_DEX , new_dex )	 
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_STA , new_sta )
	SetItemAttr( Item_newJL , ITEMATTR_VAL_AGI , new_agi )
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_CON , new_con ) 
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY ) 	
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
end
----------------------------------��֮���鵰
function ItemUse_MZJLD( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬ʹ����֮���鵰ʧ��")
		UseItemFailed ( role )
		return
	end
	local Num_newJL = GetItemForgeParam ( Item , 1 )
	local Part1_newJL = GetNum_Part1 ( Num_newJL )	--Get Num Part 1 �� Part 7
	local Part2_newJL = GetNum_Part2 ( Num_newJL )	
	local Part3_newJL = GetNum_Part3 ( Num_newJL )

	local new_str=GetItemAttr ( Item , ITEMATTR_VAL_STR )      
	local new_dex=GetItemAttr( Item , ITEMATTR_VAL_DEX  )	  
	local new_sta=GetItemAttr ( Item , ITEMATTR_VAL_STA  )    
	local new_agi=GetItemAttr( Item , ITEMATTR_VAL_AGI )       
	local new_con=GetItemAttr ( Item , ITEMATTR_VAL_CON )  
	local new_lv = new_str + new_con + new_agi + new_dex + new_sta
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		Item_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		Item_MAXURE_NUM = 32000
	end	  

	local rad = math.random ( 1, 100 )
	if Part3_newJL==3 then
		GiveItem ( role , 0 , 609  , 1 , 4 ) 
	end
	if Part3_newJL==2 then
		if rad <=95 then
			GiveItem ( role , 0 , 608  , 1 , 4 ) 
		elseif rad > 95 and rad <=100 then
			GiveItem ( role , 0 , 609  , 1 , 4 ) 
		end
	end
	if Part3_newJL==1 then
		if rad <=90 then
			GiveItem ( role , 0 , 239  , 1 , 4 ) 
		elseif rad > 90 and rad <=98 then
			GiveItem ( role , 0 , 608  , 1 , 4 ) 
		elseif rad > 98 and rad <=100 then
			GiveItem ( role , 0 , 609  , 1 , 4 ) 
		end
	end
	local r1,r2 =MakeItem ( role , 236  , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )			--ȡ�¾������ָ��
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_STR , new_str )
	SetItemAttr( Item_newJL , ITEMATTR_VAL_DEX , new_dex )	 
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_STA , new_sta )
	SetItemAttr( Item_newJL , ITEMATTR_VAL_AGI , new_agi )
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_CON , new_con ) 
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY ) 	
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
end
----------------------------------а֮���鵰
function ItemUse_XZJLD( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬ʹ��а֮���鵰ʧ��")
		UseItemFailed ( role )
		return
	end
	local Num_newJL = GetItemForgeParam ( Item , 1 )
	local Part1_newJL = GetNum_Part1 ( Num_newJL )	--Get Num Part 1 �� Part 7
	local Part2_newJL = GetNum_Part2 ( Num_newJL )	
	local Part3_newJL = GetNum_Part3 ( Num_newJL )

	local new_str=GetItemAttr ( Item , ITEMATTR_VAL_STR )      
	local new_dex=GetItemAttr( Item , ITEMATTR_VAL_DEX  )	  
	local new_sta=GetItemAttr ( Item , ITEMATTR_VAL_STA  )    
	local new_agi=GetItemAttr( Item , ITEMATTR_VAL_AGI )       
	local new_con=GetItemAttr ( Item , ITEMATTR_VAL_CON )  
	local new_lv = new_str + new_con + new_agi + new_dex + new_sta
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		Item_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		Item_MAXURE_NUM = 32000
	end	  

	local rad = math.random ( 1, 100 )
	if Part3_newJL==3 then
		GiveItem ( role , 0 , 609  , 1 , 4 ) 
	end
	if Part3_newJL==2 then
		if rad <=95 then
			GiveItem ( role , 0 , 608  , 1 , 4 ) 
		elseif rad > 95 and rad <=100 then
			GiveItem ( role , 0 , 609  , 1 , 4 ) 
		end
	end
	if Part3_newJL==1 then
		if rad <=90 then
			GiveItem ( role , 0 , 239  , 1 , 4 ) 
		elseif rad > 90 and rad <=98 then
			GiveItem ( role , 0 , 608  , 1 , 4 ) 
		elseif rad > 98 and rad <=100 then
			GiveItem ( role , 0 , 609  , 1 , 4 ) 
		end
	end
	local r1,r2 =MakeItem ( role , 237  , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )			--ȡ�¾������ָ��
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_STR , new_str )
	SetItemAttr( Item_newJL , ITEMATTR_VAL_DEX , new_dex )	 
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_STA , new_sta )
	SetItemAttr( Item_newJL , ITEMATTR_VAL_AGI , new_agi )
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_CON , new_con ) 
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY ) 	
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
end
-----------Ħ��С�Ӷ������鵰
function ItemUse_MDXZESJLD( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬ʹ��Ħ�����鵰ʧ��")
		UseItemFailed ( role )
		return
	end
	local new_str=GetItemAttr ( Item , ITEMATTR_VAL_STR )      
	local new_dex=GetItemAttr( Item , ITEMATTR_VAL_DEX  )	  
	local new_sta=GetItemAttr ( Item , ITEMATTR_VAL_STA  )    
	local new_agi=GetItemAttr( Item , ITEMATTR_VAL_AGI )       
	local new_con=GetItemAttr ( Item , ITEMATTR_VAL_CON )  
	local new_lv = new_str + new_con + new_agi + new_dex + new_sta
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		Item_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		Item_MAXURE_NUM = 32000
	end	  
	GiveItem ( role , 0 , 609  , 1 , 4 ) 
	local r1,r2 =MakeItem ( role , 681  , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )			--ȡ�¾������ָ��
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_STR , new_str )
	SetItemAttr( Item_newJL , ITEMATTR_VAL_DEX , new_dex )	 
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_STA , new_sta )
	SetItemAttr( Item_newJL , ITEMATTR_VAL_AGI , new_agi )
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_CON , new_con ) 
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY ) 	
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
end
-----------------------------------------�������鸽��
function Sk_Script_CJJLFT( role , Item ) 							
 	local sk_add = SK_JLFT  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv >= 1  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 
 -----------------------------------------�м����鸽��
function Sk_Script_ZJJLFT ( role , Item ) 							
  	local sk_add = SK_JLFT  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv >= 2 then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 2 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 
 -----------------------------------------�߼����鸽��
function Sk_Script_GJJLFT( role , Item ) 							
   	local sk_add = SK_JLFT  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv >= 3  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 3 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 
--�߼�ʥѩɽ����
function ItemUse_CJ_longguo( role , Item , Item_Traget ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "����ʱ����ʹ��" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local Item_type = GetItemType ( Item )
	local Item_Traget_Type = GetItemType ( Item_Traget )
	local Item_Num = GetItemID ( Item )
	local Check_Exp = 0
	local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 
	--SystemNotice(role ,Elf_MaxEXP )

	if Item_type == 58 and Item_Traget_Type == 59 then
			Check_Exp = CheckElf_EXP ( role , Item_Traget ) --����exp�Ƿ�������������
			if Check_Exp == 0 then
				SystemNotice(role , "�ɳ���û�дﵽ�����ιʳʥѩɽ����" ) 
				UseItemFailed ( role )
			else
			Lvup_Str_1 ( role , Item_Num , Item_Traget ) --�������Եĳɳ�����
			end 
	end 
end

--�߼�����ˬ��÷
function ItemUse_CJ_koumei ( role , Item , Item_Traget ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "����ʱ����ʹ��" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local Item_type = GetItemType ( Item )
	local Item_Traget_Type = GetItemType ( Item_Traget )
	local Item_Num = GetItemID ( Item )
	local Check_Exp = 0
	local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 

	if Item_type == 58 and Item_Traget_Type == 59 then
			Check_Exp = CheckElf_EXP ( role , Item_Traget ) --����exp�Ƿ�������������
			if Check_Exp == 0 then
				SystemNotice(role , "�ɳ���û�дﵽ�����ιʳ����ˬ��÷" ) 
				UseItemFailed ( role )
			else
			   Lvup_Agi_1 ( role , Item_Num , Item_Traget ) --�������Եĳɳ����� 
			end 
	end 
end
--�߼���������˿
function ItemUse_CJ_yusi ( role , Item , Item_Traget ) 

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "����ʱ����ʹ��" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local Item_type = GetItemType ( Item )
	local Item_Traget_Type = GetItemType ( Item_Traget )
	local Item_Num = GetItemID ( Item )
	local Check_Exp = 0
	local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 

	if Item_type == 58 and Item_Traget_Type == 59  then
			Check_Exp = CheckElf_EXP ( role , Item_Traget ) --����exp�Ƿ�������������
			if Check_Exp == 0 then
				SystemNotice(role , "�ɳ���û�дﵽ�����ιʳ��������˿" ) 
				UseItemFailed ( role )
			else
			   Lvup_Dex_1 ( role , Item_Num , Item_Traget ) --רע���Եĳɳ����� 
			end 
	end 
end
--�߼������ǹ���
function ItemUse_CJ_guopu ( role , Item , Item_Traget ) 

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "����ʱ����ʹ��" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local Item_type = GetItemType ( Item )
	local Item_Traget_Type = GetItemType ( Item_Traget )
	local Item_Num = GetItemID ( Item )
	local Check_Exp = 0
	local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 

	if Item_type == 58 and Item_Traget_Type == 59 then
			Check_Exp = CheckElf_EXP ( role , Item_Traget ) --����exp�Ƿ�������������
			if Check_Exp == 0 then
				SystemNotice(role , "�ɳ���û�дﵽ�����ιʳ�����ǹ���" ) 
				UseItemFailed ( role )
			else
			   Lvup_Con_1 ( role , Item_Num , Item_Traget ) --�������Եĳɳ����� 
			end 
	end 
end

--�߼���ɳ��ױ�
function ItemUse_CJ_mibing ( role , Item , Item_Traget ) 

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "����ʱ����ʹ��" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local Item_type = GetItemType ( Item )
	local Item_Traget_Type = GetItemType ( Item_Traget )
	local Item_Num = GetItemID ( Item )
	local Check_Exp = 0
	local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 

	if Item_type == 58 and Item_Traget_Type == 59  then
			Check_Exp = CheckElf_EXP ( role , Item_Traget ) --����exp�Ƿ�������������
			if Check_Exp == 0 then
				SystemNotice(role , "�ɳ���û�дﵽ�����ιʳ��ɳ��ױ�" ) 
				UseItemFailed ( role )
			else
			   Lvup_Sta_1 ( role , Item_Num , Item_Traget ) --�������Եĳɳ����� 
			end  
		        --local Item_MAXENERGY = Elf_MaxEXP + 20
			--SetItemAttr ( Item_Traget , ITEMATTR_MAXENERGY , Item_MAXENERGY )				
	end 
end
--���ٳɳ�����
function ItemUse_JLJSGz( role , Item )
	local statelv = 1
	local ChaStateLv = GetChaStateLv ( role , STATE_JLJSGZ)
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "����ʱ����ʹ��" ) 
		UseItemFailed ( role ) 
		return 
	end 
	if ChaStateLv > statelv then
		SystemNotice ( role , "��ʹ�ø��߼��Ĺ��ӣ����Ժ�����" )
		UseItemFailed ( role )
		return
	end
	local statetime = 900
	--local Cha_Boat = 0
	--Cha_Boat = GetCtrlBoat ( role )
	AddState( role , role , STATE_JLJSGZ , statelv , statetime )
end
---------------------70����ӡ���䱦��
function ItemUse_70FYZWBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬ʹ��70����ӡ���䱦��ʧ��")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 4204  , 1 , 22) 
end
---------------------70���޽����䱦��
function ItemUse_70JJZWBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬ʹ��70���޽����䱦��ʧ��")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 1375 , 1 , 22) 
end
---------------------70��˫�����䱦��
function ItemUse_70SJZWBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬ʹ��70��˫�����䱦��ʧ��")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 1394 , 1 , 22) 
end
---------------------70���ѻ����䱦��

function ItemUse_70JUJZWBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬ʹ��70���ѻ����䱦��ʧ��")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 42 , 1 , 22) 
end

---------------------70���������䱦��
function ItemUse_70HHZWBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬ʹ��70���������䱦��ʧ��")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 1421 , 1 , 22) 
end
---------------------70��ʥְ���䱦��
function ItemUse_70SZZWBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬ʹ��70��ʥְ���䱦��ʧ��")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 4198 , 1 , 22) 
end
---------------------50��˫������
function ItemUse_50SJBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬ʹ��50��˫������ʧ��")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0299 , 1 , 22) 
	GiveItem ( role , 0 , 0475 , 1 , 22) 
	GiveItem ( role , 0 , 0651 , 1 , 22) 
end
--------------------60��˫������
function ItemUse_60SJBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬ʹ��60��˫������ʧ��")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0304 , 1 , 22) 
	GiveItem ( role , 0 , 0480 , 1 , 22) 
	GiveItem ( role , 0 , 0656 , 1 , 22) 
end
--------------------70��˫������
function ItemUse_70SJBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 2 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬ʹ��70��˫������ʧ��")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 4150 , 1 , 22) 
	GiveItem ( role , 0 , 4166 , 1 , 22) 
	GiveItem ( role , 0 , 4182 , 1 , 22) 
end
--------------------50���޽�����
function ItemUse_50JJBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬ʹ��50���޽�����ʧ��")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0229 , 1 , 22) 
	GiveItem ( role , 0 , 653 , 1 , 22)  
end
--------------------60���޽�����
function ItemUse_60JJBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬ʹ��60���޽�����ʧ��")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0230 , 1 , 22) 
	GiveItem ( role , 0 , 477 , 1 , 22)  
end
--------------------70���޽�����
function ItemUse_70JJBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 2 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬ʹ��70���޽�����ʧ��")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 4148 , 1 , 22) 
	GiveItem ( role , 0 , 653 , 1 , 22)  
	GiveItem ( role , 0 , 477 , 1 , 22)
end
--------------------50��ʥְ����
function ItemUse_50SZBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬ʹ��50��ʥְ����ʧ��")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0371 , 1 , 22) 
	GiveItem ( role , 0 , 0547 , 1 , 22)  
	GiveItem ( role , 0 , 0723 , 1 , 22) 
end
--------------------60��ʥְ����
function ItemUse_60SZBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬ʹ��60��ʥְ����ʧ��")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0394 , 1 , 22) 
	GiveItem ( role , 0 , 0570 , 1 , 22)  
	GiveItem ( role , 0 , 0746 , 1 , 22) 
end
--------------------70��ʥְ����
function ItemUse_70SZBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 2 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬ʹ��70��ʥְ����ʧ��")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 4159 , 1 , 22) 
	GiveItem ( role , 0 , 4175 , 1 , 22)  
	GiveItem ( role , 0 , 4191 , 1 , 22) 
end
--------------------50������ʥְ����
function ItemUse_50AMSZBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬ʹ��50������ʥְ����ʧ��")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0382 , 1 , 22) 
	GiveItem ( role , 0 , 0558 , 1 , 22)  
	GiveItem ( role , 0 , 0734 , 1 , 22) 
	GiveItem ( role , 0 , 2204 , 1 , 22) 
end
--------------------60������ʥְ����
function ItemUse_60AMSZBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬ʹ��60������ʥְ����ʧ��")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0393 , 1 , 22) 
	GiveItem ( role , 0 , 0569 , 1 , 22)  
	GiveItem ( role , 0 , 0745 , 1 , 22) 
	GiveItem ( role , 0 , 2215 , 1 , 22) 
end
--------------------70������ʥְ����
function ItemUse_70AMSZBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 2 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬ʹ��70������ʥְ����ʧ��")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 4160 , 1 , 22) 
	GiveItem ( role , 0 , 4176 , 1 , 22)  
	GiveItem ( role , 0 , 4192 , 1 , 22)  
end
--------------------50�����׷�ӡ����
function ItemUse_50AMFYBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬ʹ��50�����׷�ӡ����ʧ��")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0385 , 1 , 22) 
	GiveItem ( role , 0 , 0561 , 1 , 22)  
	GiveItem ( role , 0 , 0737 , 1 , 22) 
	GiveItem ( role , 0 , 2207 , 1 , 22) 
end
--------------------60�����׷�ӡ����
function ItemUse_60AMFYBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬ʹ��60�����׷�ӡ����ʧ��")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0364 , 1 , 22) 
	GiveItem ( role , 0 , 0540 , 1 , 22)  
	GiveItem ( role , 0 , 0716 , 1 , 22) 
	GiveItem ( role , 0 , 2201 , 1 , 22) 
end
--------------------70�����׷�ӡ����
function ItemUse_70AMFYBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 2 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬ʹ��70�����׷�ӡ����ʧ��")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 4164 , 1 , 22) 
	GiveItem ( role , 0 , 4180 , 1 , 22)  
	GiveItem ( role , 0 , 4196 , 1 , 22) 
end
--------------------50��������ӡ����
function ItemUse_50AMHHBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬ʹ��50�����׺�������ʧ��")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0355 , 1 , 22) 
	GiveItem ( role , 0 , 0531 , 1 , 22)  
	GiveItem ( role , 0 , 0707 , 1 , 22) 
	GiveItem ( role , 0 , 2192 , 1 , 22) 
end
--------------------60��������ӡ����
function ItemUse_60AMHHBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬ʹ��60�����׺�������ʧ��")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0358 , 1 , 22) 
	GiveItem ( role , 0 , 0534 , 1 , 22)  
	GiveItem ( role , 0 , 0710 , 1 , 22) 
	GiveItem ( role , 0 , 2195 , 1 , 22) 
end
--------------------70��������ӡ����
function ItemUse_70AMHHBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 2 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬ʹ��70�����׺�������ʧ��")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 4156 , 1 , 22) 
	GiveItem ( role , 0 , 4172 , 1 , 22)  
	GiveItem ( role , 0 , 4188 , 1 , 22)  
end
--------------------50���ѻ�����
function ItemUse_50JUJBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬ʹ��50���ѻ�����ʧ��")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0312 , 1 , 22) 
	GiveItem ( role , 0 , 0488 , 1 , 22)  
	GiveItem ( role , 0 , 0664 , 1 , 22) 
end
--------------------60���ѻ�����
function ItemUse_60JUJBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬ʹ��60���ѻ�����ʧ��")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0317 , 1 , 22) 
	GiveItem ( role , 0 , 0493 , 1 , 22)  
	GiveItem ( role , 0 , 0669 , 1 , 22) 
end
--------------------70���ѻ�����
function ItemUse_70JUJBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 2 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬ʹ��70���ѻ�����ʧ��")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 4152 , 1 , 22) 
	GiveItem ( role , 0 , 4168 , 1 , 22)  
	GiveItem ( role , 0 , 4184 , 1 , 22) 
end
--------------------50����������
function ItemUse_50HHBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬ʹ��50����������ʧ��")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0345 , 1 , 22) 
	GiveItem ( role , 0 , 0521 , 1 , 22)  
	GiveItem ( role , 0 , 0697 , 1 , 22) 
end
--------------------60����������
function ItemUse_60HHBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬ʹ��60����������ʧ��")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0344 , 1 , 22) 
	GiveItem ( role , 0 , 0520 , 1 , 22)  
	GiveItem ( role , 0 , 0696 , 1 , 22) 
end
--------------------70����������
function ItemUse_70HHBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 2 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬ʹ��70����������ʧ��")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 4155 , 1 , 22) 
	GiveItem ( role , 0 , 4171 , 1 , 22)  
	GiveItem ( role , 0 , 4187 , 1 , 22) 
end
--------------------50����ӡ����
function ItemUse_50FYBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬ʹ��50����ӡ����ʧ��")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0369 , 1 , 22) 
	GiveItem ( role , 0 , 0545 , 1 , 22)  
	GiveItem ( role , 0 , 0721 , 1 , 22) 
end
--------------------60����ӡ����
function ItemUse_60FYBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬ʹ��60����ӡ����ʧ��")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0377 , 1 , 22) 
	GiveItem ( role , 0 , 0553 , 1 , 22)  
	GiveItem ( role , 0 , 0729 , 1 , 22) 
end
--------------------70����ӡ����
function ItemUse_70FYBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 2 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬ʹ��70����ӡ����ʧ��")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 4163 , 1 , 22) 
	GiveItem ( role , 0 , 4179 , 1 , 22)  
	GiveItem ( role , 0 , 4195 , 1 , 22) 
end
-------------------------------------------------------kokora 08��Ʒ����(���޸����ԭʹ�ò��ֽ⿪)--------------------------------------
--98���ð�
--function ItemUse_98BOX ( role , Item )
--			local item_type = BaoXiang_98BOX
--			local item_type_rad = BaoXiang_98BOX_Rad 
--			local item_type_count = BaoXiang_98BOX_Count 
--			local maxitem = BaoXiang_98BOX_Mxcount						-- �ս���
--			local item_quality = BaoXiang_98BOX_Qua
--			local General = 0  
--			local ItemId = 0 
--			
--		local Item_CanGet = GetChaFreeBagGridNum ( role )
--		
--		if Item_CanGet <= 0 then
--			SystemNotice(role ,"����û���㹻�Ŀռ䣬���俪��ʧ��")
--			UseItemFailed ( role )
--			return
--		end
--				for i = 1 , maxitem , 1 do 
--					General = item_type_rad [ i ] + General		
--				end 
--				local a = math.random ( 1, General )
--				local b = 0
--				local d = 0 
--				local c = -1							--������Ʒ���
--				for k = 1 , maxitem , 1 do				-- �������ӵ�ǰ׺���
--
--					d = item_type_rad [ k ] + b
--
--					 if a <= d and a > b then
--						c = k
--						break		
--					end 
--					b = d 
--				end 
--				if c == -1 then 
--					ItemId = 3124 
--				else 
--					ItemId = item_type [c]  
--					ItemCount = item_type_count [c] 
--				end 
--
--				GiveItem ( role , 0 , ItemId , ItemCount , item_quality )
--		
--				local GoodItem = {}
--				GoodItem[0] = 3074
--				GoodItem[1] = 0937
--				GoodItem[2] = 3885
--				GoodItem[3] = 0680
--				GoodItem[4] = 0938
--				GoodItem[5] = 2488
--				GoodItem[6] = 2489
--				GoodItem[7] = 2490
--				GoodItem[8] =2436
--				GoodItem[9] =3075
--
--				local Good_C = 0
--				for Good_C = 0 , 9 , 1 do
--					if ItemId == GoodItem[Good_C] then
--						local itemname = GetItemName ( ItemId ) 
--						local cha_name = GetChaDefaultName ( role ) 
--						local message = cha_name.."��98���ð���ϲ�ػ��"..itemname  
--						Notice ( message )
--					end
--				end
--	
--	end
function ItemUse_98BOX ( role , Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end 
	local NocLock =	KitbagLock( role, 0 )
	if NocLock == LUA_FALSE then
		SystemNotice( role , "���ı�����������״̬")
		return 
	end
	local Money_Have = GetChaAttr ( role , ATTR_GD )
	if Money_Have>1900000000 then
		SystemNotice (role, "����Ǯ��Ҫ����19��Ŷ��Ǯ���˲�̫��ȫ��")
		return 
	end
	AddMoney ( role , 0 , 10000 )                 --------10000������
		SystemNotice ( role ,"��ϲ�����10000�����ҵĻ���")	
end
--------------------����ʯ�һ�ȯ
function ItemUse_lieyanBook( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬ʹ������ʯ�һ�ȯʧ��")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0878 , 1 , 4) 
end
--------------------����ʯ�һ�ȯ
function ItemUse_zhiyanBook( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬ʹ������ʯ�һ�ȯʧ��")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0879 , 1 , 4) 
end
--------------------��ҩʯ�һ�ȯ
function ItemUse_huoyaoBook( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬ʹ�û�ҩʯ�һ�ȯʧ��")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0880 , 1 , 4) 
end
--------------------���ʯ�һ�ȯ
function ItemUse_manaoBook( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬ʹ�����ʯ�һ�ȯʧ��")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0881 , 1 , 4) 
end
--------------------ʥ��ʯ�һ�ȯ
function ItemUse_shengguangBook( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬ʹ��ʥ��ʯ�һ�ȯʧ��")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0887 , 1 , 4) 
end
--------------------��֮�Ķһ�ȯ
function ItemUse_yuezhixinBook( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬ʹ����֮�Ķһ�ȯʧ��")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0883 , 1 , 4) 
end
--------------------����һ�ȯ
function ItemUse_hanyuBook( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬ʹ�ú���һ�ȯʧ��")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0882 , 1 , 4) 
end
--------------------����ʯ�һ�ȯ
function ItemUse_fenglingBook( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬ʹ�÷���ʯ�һ�ȯʧ��")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0860 , 1 , 4) 
end
--------------------����ʯ�һ�ȯ
function ItemUse_xianlingBook( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬ʹ������ʯ�һ�ȯʧ��")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0884 , 1 , 4) 
end
--------------------ӥ��ʯ�һ�ȯ
function ItemUse_yingyanBook( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬ʹ��ӥ��ʯ�һ�ȯʧ��")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0861 , 1 , 4) 
end
--------------------����һ�ȯ
function ItemUse_yanyuBook( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬ʹ������һ�ȯʧ��")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0862 , 1 , 4) 
end
--------------------����һ�ȯ
function ItemUse_tanyuBook( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬ʹ������һ�ȯʧ��")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0863 , 1 , 4) 
end
--------------------50��˫�����䱦��
function ItemUse_50SJZWBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬ʹ��50��˫�����䱦��ʧ��")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 1392 , 1 , 22) 
end
--------------------50���޽����䱦��
function ItemUse_50JJZWBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬ʹ��50���޽����䱦��ʧ��")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 1373 , 1 , 22) 
end
--------------------50���ѻ����䱦��
function ItemUse_50JUJZWBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬ʹ��50���ѻ����䱦��ʧ��")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0040 , 1 , 22) 
end
--------------------50���������䱦��
function ItemUse_50HHZWBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬ʹ��50���������䱦��ʧ��")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 1419 , 1 , 22) 
end
--------------------50��ʥְ���䱦��
function ItemUse_50SZZWBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬ʹ��50��ʥְ���䱦��ʧ��")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0103 , 1 , 22) 
end
--------------------50����ӡ���䱦��
function ItemUse_50FYZWBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬ʹ��50����ӡ���䱦��ʧ��")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0102 , 1 , 22) 
end



--------------------60��˫�����䱦��
function ItemUse_60SJZWBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬ʹ��60��˫�����䱦��ʧ��")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 1393 , 1 , 22) 
end
--------------------60���޽����䱦��
function ItemUse_60JJZWBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬ʹ��60���޽����䱦��ʧ��")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 1374 , 1 , 22) 
end
--------------------60���ѻ����䱦��
function ItemUse_60JUJZWBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬ʹ��60���ѻ����䱦��ʧ��")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0041 , 1 , 22) 
end
--------------------60���������䱦��
function ItemUse_60HHZWBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬ʹ��60���������䱦��ʧ��")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 1420 , 1 , 22) 
end
--------------------60��ʥְ���䱦��
function ItemUse_60SZZWBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬ʹ��60��ʥְ���䱦��ʧ��")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 4303 , 1 , 22) 
end
--------------------60����ӡ���䱦��
function ItemUse_60FYZWBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬ʹ��60����ӡ���䱦��ʧ��")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 4300 , 1 , 22) 
end
--------------------����֮�ģ�����֮��
function ItemUse_CZZX( role , Item )
--	local statelv = 1
--	local statetime = 30
--	local Item_ID=GetItemID(Item)
--	AddState( role , role , STATE_CZZX , statelv , statetime )
--	if Item_ID~=1013 then
--		GiveItem ( role , 0 , 1010 , 1 , 4)
--	end
		SystemNotice( role , "����Ʒ�ѱ�������ʴ,����ʹ��." )
		UseItemFailed ( role )
end
--------------------�Ի�����
function ItemUse_HHLP( role , Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end
	local Now_Day = os.date("%d")
	local Now_Month = os.date("%m")
	local Now_Time = os.date("%H")
	local NowTimeNum = tonumber(Now_Time)
	local NowDayNum = tonumber(Now_Day)
	local NowMonthNum = tonumber(Now_Month)
	local CheckDateNum = NowMonthNum * 10000 + NowDayNum * 100 + NowTimeNum
	local star = 0


	if CheckDateNum >= 10122  and CheckDateNum <= 10123 then
		ItemUse_XNBOX ( role , Item )


	--if CheckDateNum >= 100122  and CheckDateNum <= 100123 then
		--star=1
	--end
	--if CheckDateNum >= 100622  and CheckDateNum <= 100623 then
		--star=1
	--end
	--if star ==1 then
		--ItemUse_BaoZhaBOX ( role , Item )	
	end
end
--------------------����֮��
function ItemUse_GNZS( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		local attr_sta = GetChaAttr( role , ATTR_STA )
		local sta_extre = 5
		attr_sta = attr_sta + sta_extre 
		SetCharaAttr( attr_sta, role, ATTR_STA )
	else
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end
end
--------------------���ܾ��鵰
function ItemUse_JNJLD( role , Item )
	local star=math.random ( 1, 10 )
	local r1 = 0
	local r2 = 0
	if star==1 then
		r1,r2=MakeItem( role , 183 , 1 , 4)
	elseif  star==2 then
		r1,r2=MakeItem( role , 184 , 1 , 4)
	elseif  star==3 then
		r1,r2=MakeItem( role , 185 , 1 , 4)
	elseif  star==4 then
		r1,r2=MakeItem( role , 186 , 1 , 4)
	elseif  star==5 then
		r1,r2=MakeItem( role , 187 , 1 , 4)
	elseif  star==6 then
		r1,r2=MakeItem( role , 188 , 1 , 4)
	elseif  star==7 then
		r1,r2=MakeItem( role , 189 , 1 , 4)
	elseif  star==8 then
		r1,r2=MakeItem( role , 190 , 1 , 4)
	elseif  star==9 then
		r1,r2=MakeItem( role , 191 , 1 , 4)
	else  
		r1,r2=MakeItem( role , 199 , 1 , 4)
	end
	local Item_newJL = GetChaItem ( role , 2 , r2 )			--ȡ�¾������ָ��
	local Num_newJL = GetItemForgeParam ( Item_newJL , 1 )
	local Part1_newJL = GetNum_Part1 ( Num_newJL )	--Get Num Part 1 �� Part 7
	local Part2_newJL = GetNum_Part2 ( Num_newJL )	
	local Part3_newJL = GetNum_Part3 ( Num_newJL )
	local Part4_newJL = GetNum_Part4 ( Num_newJL )
	local Part5_newJL = GetNum_Part5 ( Num_newJL )
	local Part6_newJL = GetNum_Part6 ( Num_newJL )
	local Part7_newJL= GetNum_Part7 ( Num_newJL )
	local t={}
		t[0]=1
		t[1]=2
		t[2]=3
		t[3]=4
		t[4]=5
	local eleven=math.random ( 1,3 )
	Part2_newJL=t[eleven-1]
	Part4_newJL=t[eleven]
	Part6_newJL=t[eleven+1]
	Num_newJL = SetNum_Part2 ( Num_newJL , Part2_newJL )
	Num_newJL = SetNum_Part3 ( Num_newJL , 1 )
	Num_newJL = SetNum_Part4 ( Num_newJL , Part4_newJL )
	Num_newJL = SetNum_Part5 ( Num_newJL , 1 )
	Num_newJL = SetNum_Part6 ( Num_newJL , Part6_newJL )
	Num_newJL = SetNum_Part7 ( Num_newJL , 1 )
	SetItemForgeParam ( Item_newJL , 1 , Num_newJL )
end
-----------------------------------------------------------
--�����ٻ�
function ItemUse_NSSN ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end
	local star = 0
	star =IsChaInRegion( role, 2 )
	if star == 1 then
		SystemNotice( role , "��ɫ��ǰ���ڰ�ȫ���������ٻ�����" )
		UseItemFailed ( role )
		return
	end
	local x, y = GetChaPos(role)
	local MonsterID = 857
	local Refresh = 3700					--����ʱ�䣬�뵥λ
	local life = 3600000					--����ʱ�䣬���뵥λ
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaLifeTime( new, life )
end
-----------------------------------------------------------
--Ů���С��
function ItemUse_NSDXB ( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬Ů���С������ʧ��")
		UseItemFailed ( role )
		return
	end
	local star=math.random ( 1, 12 )
	local r1 = 0
	local r2 = 0
	if star==1 then
		r1,r2=MakeItem( role , 619 , 1 , 4)
	elseif star==2 then
		r1,r2=MakeItem( role , 625 , 1 , 4)
	elseif  star==3 then
		r1,r2=MakeItem( role , 628 , 1 , 4)
	elseif  star==4 then
		r1,r2=MakeItem( role , 631 , 1 , 4)
	elseif  star==5 then
		r1,r2=MakeItem( role , 634 , 1 , 4)
	elseif  star==6 then
		r1,r2=MakeItem( role , 674 , 1 , 4)
	elseif  star==7 then
		r1,r2=MakeItem( role , 698 , 1 , 4)
	elseif  star==8 then
		r1,r2=MakeItem( role , 701 , 1 , 4)
	else 
		local eleven =math.random ( 2530, 2548 )
		r1,r2=MakeItem( role , eleven , 1 , 4)
	end
	local Item_new = GetChaItem ( role , 2 , r2 )			--ȡ����ָ��
	local Item_ID = GetItemID ( Item_new )
	local itemname = GetItemName (Item_ID) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.."��Ů���С����ϲ�ػ��"..itemname  
	Notice ( message )
end
----���ɱ���
function ItemUse_JaNaBox ( role , Item ) 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬���俪��ʧ��")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 1012 , 1 , 4) 			
	local itemname = GetItemName (1012) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.."�򿪼��ɱ��侪ϲ�ػ��"..itemname  
	Notice ( message )
end


--------�������˺���װ��--Leo
function gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	local cha_name = GetChaDefaultName ( role ) 
	local General = 0  
	local ItemId = 0 
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬���俪��ʧ��")
		UseItemFailed ( role )
		return
	end
	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General		
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1							--������Ʒ���
	for k = 1 , maxitem , 1 do				-- �������ӵ�ǰ׺���

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break		
		end 
		b = d 
	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	if ItemId==0845 or ItemId==0846 or ItemId==0847 or ItemId==0848 then
		local check_rad = math.random ( 1, 100 )
		local heilong_rad = math.random ( 1, 1000 )
		if check_rad==99 and heilong_rad>=999 then
			item_quality=16
		elseif  check_rad==99 and  heilong_rad>=900 then 
			item_quality=15
		elseif  check_rad==99 and  heilong_rad>=500 then 
			item_quality=14
		elseif  check_rad==99 and  heilong_rad>=200 then 
			item_quality=13
		elseif  check_rad==99 then  
			item_quality=12
		else 
			ItemId=0266
		end
	end	
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality )
	local GoodItem = {}
	GoodItem[0] = 0845
	GoodItem[1] = 0846
	GoodItem[2] = 0847
	GoodItem[3] = 0848
	GoodItem[4] = 0266
	local Good_C = 0
	for Good_C = 0 , 4 , 1 do
		if ItemId == GoodItem[Good_C] then
			local itemname = GetItemName ( ItemId ) 
			local message = cha_name.."�򿪺���װ����ϲ�ػ��"..itemname  
			Notice ( message )
		end
	end
	--LG( "HeiShiZhangBei_XinXi" , cha_name , ItemId )

	return 1
end

--��������24��
function ItemUse_jsyla( role , Item )
	local item_quality =BaoXiang_jsyla_Qua
	local maxitem = BaoXiang_jsyla_Mxcount
	local item_type = BaoXiang_jsyla
	local item_type_rad =BaoXiang_jsyla_Rad

	local item_type_count =BaoXiang_jsyla_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--��������23��
function ItemUse_jsylb( role , Item )
	local item_quality =BaoXiang_jsylb_Qua
	local maxitem =BaoXiang_jsylb_Mxcount
	local item_type = BaoXiang_jsylb
	local item_type_rad =BaoXiang_jsylb_Rad

	local item_type_count =BaoXiang_jsylb_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--��֮���б���24��
function ItemUse_jsmzlra( role , Item )
	local item_quality =BaoXiang_jsmzlra_Qua
	local maxitem =BaoXiang_jsmzlra_Mxcount
	local item_type = BaoXiang_jsmzlra
	local item_type_rad =BaoXiang_jsmzlra_Rad

	local item_type_count =BaoXiang_jsmzlra_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--��֮���б���23��
function ItemUse_jsmzlrb( role , Item )
	local item_quality =BaoXiang_jsmzlrb_Qua
	local maxitem =BaoXiang_jsmzlrb_Mxcount
	local item_type = BaoXiang_jsmzlrb
	local item_type_rad =BaoXiang_jsmzlrb_Rad

	local item_type_count =BaoXiang_jsmzlrb_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--���ڱ���24��
function ItemUse_jsjqa( role , Item )
	local item_quality =BaoXiang_jsjqa_Qua
	local maxitem =BaoXiang_jsjqa_Mxcount
	local item_type = BaoXiang_jsjqa
	local item_type_rad =BaoXiang_jsjqa_Rad

	local item_type_count =BaoXiang_jsjqa_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--���ڱ���23��
function ItemUse_jsjqb( role , Item )
	local item_quality =BaoXiang_jsjqb_Qua
	local maxitem =BaoXiang_jsjqb_Mxcount
	local item_type = BaoXiang_jsjqb
	local item_type_rad =BaoXiang_jsjqb_Rad

	local item_type_count =BaoXiang_jsjqb_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--��֮�þ�����24��
function ItemUse_jsmzcja( role , Item )
	local item_quality =BaoXiang_jsmzcja_Qua
	local maxitem =BaoXiang_jsmzcja_Mxcount
	local item_type = BaoXiang_jsmzcja
	local item_type_rad =BaoXiang_jsmzcja_Rad

	local item_type_count =BaoXiang_jsmzcja_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--��֮�þ�����23��
function ItemUse_jsmzcjb( role , Item )
	local item_quality =BaoXiang_jsmzcjb_Qua
	local maxitem =BaoXiang_jsmzcjb_Mxcount
	local item_type = BaoXiang_jsmzcjb
	local item_type_rad =BaoXiang_jsmzcjb_Rad

	local item_type_count =BaoXiang_jsmzcjb_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--˫�����ױ���24��
function ItemUse_jssjkja( role , Item )
	local item_quality =BaoXiang_jssjkja_Qua
	local maxitem =BaoXiang_jssjkja_Mxcount
	local item_type = BaoXiang_jssjkja
	local item_type_rad =BaoXiang_jssjkja_Rad

	local item_type_count =BaoXiang_jssjkja_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--˫�����ױ���23��
function ItemUse_jssjkjb( role , Item )
	local item_quality =BaoXiang_jssjkjb_Qua
	local maxitem =BaoXiang_jssjkjb_Mxcount
	local item_type = BaoXiang_jssjkjb
	local item_type_rad =BaoXiang_jssjkjb_Rad

	local item_type_count =BaoXiang_jssjkjb_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--�ѻ����ױ���24��
function ItemUse_jszjkja( role , Item )
	local item_quality =BaoXiang_jszjkja_Qua
	local maxitem =BaoXiang_jszjkja_Mxcount
	local item_type = BaoXiang_jszjkja
	local item_type_rad =BaoXiang_jszjkja_Rad

	local item_type_count =BaoXiang_jszjkja_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--�ѻ����ױ���23��
function ItemUse_jszjkjb( role , Item )
	local item_quality =BaoXiang_jszjkjb_Qua
	local maxitem =BaoXiang_jszjkjb_Mxcount
	local item_type = BaoXiang_jszjkjb
	local item_type_rad =BaoXiang_jszjkjb_Rad

	local item_type_count =BaoXiang_jszjkjb_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--ʥְ���ױ���24��
function ItemUse_jsszkja( role , Item )
	local item_quality =BaoXiang_jsszkja_Qua
	local maxitem =BaoXiang_jsszkja_Mxcount
	local item_type = BaoXiang_jsszkja
	local item_type_rad =BaoXiang_jsszkja_Rad

	local item_type_count =BaoXiang_jsszkja_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--ʥְ���ױ���23��
function ItemUse_jsszkjb( role , Item )
	local item_quality =BaoXiang_jsszkjb_Qua
	local maxitem =BaoXiang_jsszkjb_Mxcount
	local item_type = BaoXiang_jsszkjb
	local item_type_rad =BaoXiang_jsszkjb_Rad

	local item_type_count =BaoXiang_jsszkjb_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--��ӡ���ױ���24��
function ItemUse_jsfykja( role , Item )
	local item_quality =BaoXiang_jsfykja_Qua
	local maxitem =BaoXiang_jsfykja_Mxcount
	local item_type = BaoXiang_jsfykja
	local item_type_rad =BaoXiang_jsfykja_Rad

	local item_type_count =BaoXiang_jsfykja_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--��ӡ���ױ���23��
function ItemUse_jsfykjb( role , Item )
	local item_quality =BaoXiang_jsfykjb_Qua
	local maxitem =BaoXiang_jsfykjb_Mxcount
	local item_type = BaoXiang_jsfykjb
	local item_type_rad =BaoXiang_jsfykjb_Rad

	local item_type_count =BaoXiang_jsfykjb_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--�������ױ���24��
function ItemUse_jshhkja( role , Item )
	local item_quality =BaoXiang_jshhkja_Qua
	local maxitem =BaoXiang_jshhkja_Mxcount
	local item_type = BaoXiang_jshhkja
	local item_type_rad =BaoXiang_jshhkja_Rad

	local item_type_count =BaoXiang_jshhkja_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--�������ױ���23��
function ItemUse_jshhkjb( role , Item )
	local item_quality =BaoXiang_jshhkjb_Qua
	local maxitem =BaoXiang_jshhkjb_Mxcount
	local item_type = BaoXiang_jshhkjb
	local item_type_rad =BaoXiang_jshhkjb_Rad

	local item_type_count =BaoXiang_jshhkjb_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--�޽����ױ���24��
function ItemUse_jsjjkja( role , Item )
	local item_quality =BaoXiang_jsjjkja_Qua
	local maxitem =BaoXiang_jsjjkja_Mxcount
	local item_type = BaoXiang_jsjjkja
	local item_type_rad =BaoXiang_jsjjkja_Rad

	local item_type_count =BaoXiang_jsjjkja_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--�޽����ױ���23��
function ItemUse_jsjjkjb( role , Item )
	local item_quality =BaoXiang_jsjjkjb_Qua
	local maxitem =BaoXiang_jsjjkjb_Mxcount
	local item_type = BaoXiang_jsjjkjb
	local item_type_rad =BaoXiang_jsjjkjb_Rad

	local item_type_count =BaoXiang_jsjjkjb_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--����֮������24��
function ItemUse_jshlza( role , Item )
	local item_quality =BaoXiang_jshlza_Qua
	--local 
	local maxitem =BaoXiang_jshlza_Mxcount
	local item_type = BaoXiang_jshlza
	local item_type_rad =BaoXiang_jshlza_Rad

	local item_type_count =BaoXiang_jshlza_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--����֮������23��
function ItemUse_jshlzb( role , Item )
	local item_quality =BaoXiang_jshlzb_Qua
	local maxitem =BaoXiang_jshlzb_Mxcount
	local item_type = BaoXiang_jshlzb
	local item_type_rad =BaoXiang_jshlzb_Rad

	local item_type_count =BaoXiang_jshlzb_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--����֮�ױ���24��
function ItemUse_jshlta( role , Item )
	local item_quality =BaoXiang_jshlta_Qua
	local maxitem =BaoXiang_jshlta_Mxcount
	local item_type = BaoXiang_jshlta
	local item_type_rad =BaoXiang_jshlta_Rad

	local item_type_count =BaoXiang_jshlta_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--����֮צ����24��
function ItemUse_jshlsa( role , Item )
	local item_quality =BaoXiang_jshlsa_Qua
	local maxitem =BaoXiang_jshlsa_Mxcount
	local item_type = BaoXiang_jshlsa
	local item_type_rad =BaoXiang_jshlsa_Rad

	local item_type_count =BaoXiang_jshlsa_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--����֮צ����23��
function ItemUse_jshlsb( role , Item )
	local item_quality =BaoXiang_jshlsb_Qua
	local maxitem =BaoXiang_jshlsb_Mxcount
	local item_type = BaoXiang_jshlsb
	local item_type_rad =BaoXiang_jshlsb_Rad

	local item_type_count =BaoXiang_jshlsb_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--����֮����24��
function ItemUse_jshlya( role , Item )
	local item_quality =BaoXiang_jshlya_Qua
	local maxitem =BaoXiang_jshlya_Mxcount
	local item_type = BaoXiang_jshlya
	local item_type_rad =BaoXiang_jshlya_Rad

	local item_type_count =BaoXiang_jshlya_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--����֮����23��
function ItemUse_jshlyb( role , Item )
	local item_quality =BaoXiang_jshlyb_Qua
	local maxitem =BaoXiang_jshlyb_Mxcount
	local item_type = BaoXiang_jshlyb
	local item_type_rad =BaoXiang_jshlyb_Rad

	local item_type_count =BaoXiang_jshlyb_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--�Ի�֮�̱���24��
function ItemUse_jsmhzca( role , Item )
	local item_quality =BaoXiang_jsmhzca_Qua
	local maxitem =BaoXiang_jsmhzca_Mxcount
	local item_type = BaoXiang_jsmhzca
	local item_type_rad =BaoXiang_jsmhzca_Rad

	local item_type_count =BaoXiang_jsmhzca_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--�Ի�֮�̱���23��
function ItemUse_jsmhzcb( role , Item )
	local item_quality =BaoXiang_jsmhzcb_Qua
	local maxitem =BaoXiang_jsmhzcb_Mxcount
	local item_type = BaoXiang_jsmhzcb
	local item_type_rad =BaoXiang_jsmhzcb_Rad

	local item_type_count =BaoXiang_jsmhzcb_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--���䷨�ȱ���24��
function ItemUse_jsmzfza( role , Item )
	local item_quality =BaoXiang_jsmzfza_Qua
	local maxitem =BaoXiang_jsmzfza_Mxcount
	local item_type = BaoXiang_jsmzfza
	local item_type_rad =BaoXiang_jsmzfza_Rad

	local item_type_count =BaoXiang_jsmzfza_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--���䷨�ȱ���23��
function ItemUse_jsmzfzb( role , Item )
	local item_quality =BaoXiang_jsmzfzb_Qua
	local maxitem =BaoXiang_jsmzfza_Mxcount
	local item_type = BaoXiang_jsmzfzb
	local item_type_rad =BaoXiang_jsmzfzb_Rad

	local item_type_count =BaoXiang_jsmzfzb_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--�Է�֮�ȱ���24��
function ItemUse_jsmfzza( role , Item )
	local item_quality =BaoXiang_jsmfzza_Qua
	local maxitem =BaoXiang_jsmfzza_Mxcount
	local item_type = BaoXiang_jsmfzza
	local item_type_rad =BaoXiang_jsmfzza_Rad

	local item_type_count =BaoXiang_jsmfzza_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--�Է�֮�ȱ���23��
function ItemUse_jsmfzzb( role , Item )
	local item_quality =BaoXiang_jsmfzzb_Qua
	local maxitem =BaoXiang_jsmfzzb_Mxcount
	local item_type = BaoXiang_jsmfzzb
	local item_type_rad =BaoXiang_jsmfzzb_Rad

	local item_type_count =BaoXiang_jsmfzzb_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--��֮��ǹ����24��
function ItemUse_jsmzcqa( role , Item )
	local item_quality =BaoXiang_jsmzcqa_Qua
	local maxitem =BaoXiang_jsmzcqa_Mxcount
	local item_type = BaoXiang_jsmzcqa
	local item_type_rad =BaoXiang_jsmzcqa_Rad

	local item_type_count =BaoXiang_jsmzcqa_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end

--��֮��ǹ����23��
function ItemUse_jsmzcqa( role , Item )
	local item_quality =BaoXiang_jsmzcqa_Qua
	local maxitem =BaoXiang_jsmzcqa_Mxcount
	local item_type = BaoXiang_jsmzcqa
	local item_type_rad =BaoXiang_jsmzcqa_Rad

	local item_type_count =BaoXiang_jsmzcqa_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--���������
function ItemUse_minibh( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"������Ҫ1������")
		UseItemFailed ( role )
		return
	end
	local cha_name = GetChaDefaultName ( role ) 
	local star=math.random ( 1, 10000 )
	if star==1 then
		GiveItem ( role , 0 , 272  , 1 , 4  )
		local message = cha_name.."�������������ϲ�ػ���صȽ� ������װһ��" 
		Notice ( message )
	elseif star>1 and star<=51 then
		GiveItem ( role , 0 , 273  , 1 , 4  ) 
		local message1 = cha_name.."�������������ϲ�ػ��һ�Ƚ� ���ڻ�����־һ��" 
		Notice ( message1 )
	elseif star>51 and star<1652 then
		GiveItem ( role , 0 , 274  , 1 , 4  ) 
	else
		GiveItem ( role , 0 , 275  , 1 , 4  ) 
	end
end
--������ʤ��
function ItemUse_kala( role , Item )
	SystemNotice(role ,"����Ʒ����ù��ö�����ʧЧ,��Ҫ̫ʧ��Ŷ.")
--	local statelv = 1
--	local statetime = 20
--	AddState( role , role , STATE_KALA , statelv , statetime )
end
-----------------------------------------------------------
--�����ٻ�
function ItemUse_MHDYSD ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end
	local star = 0
	star =IsChaInRegion( role, 2 )
	if star == 1 then
		SystemNotice( role , "��ɫ��ǰ���ڰ�ȫ���������ٻ�����" )
		UseItemFailed ( role )
		return
	end
	--local pet_num = GetPetNum(role)
	--if pet_num > 1 then
	--	SystemNotice( role , "��������!" )
	--	return
	--end
	local x, y = GetChaPos(role)
	local MonsterID = 858
	local Refresh = 190					--����ʱ�䣬�뵥λ
	local life = 180000					--����ʱ�䣬���뵥λ
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	--SetChaHost(new,role)
	SetChaLifeTime( new, life )
	--SetChaTarget(new, role)
end
----------ħ��Ů��
function ItemUse_mohuan( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"������Ҫ1������")
		UseItemFailed ( role )
		return
	end
	local cha_name = GetChaDefaultName ( role ) 
	local star=math.random ( 1, 1000 )
	--SystemNotice(role ,"star=="..star)
	if star<=8 then
		GiveItem ( role , 0 , 1014  , 1 , 4  )
		local message = cha_name.."��ħ��Ů�񿨾�ϲ�ػ�� Ů��������ʽ" 
		Notice ( message )
	elseif star>=9 and star<=17 then
		GiveItem ( role , 0 , 271, 1 , 4  ) 
		local message1 = cha_name.."��ħ��Ů�񿨾�ϲ�ػ�� ��ʹ����" 
		Notice ( message1 )
	elseif star>=18 and star<=27 then
		GiveItem ( role , 0 , 1012, 1 , 4  ) 
		local message3 = cha_name.."��ħ��Ů�񿨾�ϲ�ػ�� ����֮��" 
		Notice ( message3 )
	elseif star>=28 and star<=227 then
		GiveItem ( role , 0 , 3886, 1 , 4  ) 
	else
		GiveItem ( role , 0 , 3830, 5 , 4  ) 
	end
end
----------ħ����ĸ������
function ItemUse_MoHuanBox( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"������Ҫ1������")
		UseItemFailed ( role )
		return
	end
	local star=math.random ( 1, 4663 )
	if star>=1 and star<=3 then
		GiveItem ( role , 0 , 3866, 1 , 4  ) 	
	elseif star>=4 and star<=14 then
		GiveItem ( role , 0 , 3864, 1 , 4  ) 		
	elseif star>=15 and star<=65 then
		GiveItem ( role , 0 , 3858, 1 , 4  )		
	else
		local star=math.random ( 3850, 3875 )
		if star==3858 or star==3864 or star==3866  then
			GiveItem ( role , 0 , 3850  , 1 , 4  ) 
		else 
			GiveItem ( role , 0 , star  , 1 , 4  ) 			
		end
	end
end
-----------------------------------------���������Ա�
function Sk_Script_CJJLZB( role , Item ) 							
 	local sk_add = SK_JLZB  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv >= 1  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 
 -----------------------------------------�м������Ա�
function Sk_Script_ZJJLZB ( role , Item ) 							
  	local sk_add = SK_JLZB
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv >= 2 then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 2 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 
 -----------------------------------------�߼������Ա�
function Sk_Script_GJJLZB( role , Item ) 							
   	local sk_add = SK_JLZB  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv >= 3  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 3 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 
---------------------------ģ����ͼֽ
function ItemUse_MHDTZ( role , Item ) 							
 	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 1 then
		SystemNotice(role ,"��ģ����ͼֽ������Ҫ1����λ")
		UseItemFailed ( role )
		return
	end  	
	local r1 = 0
	local r2 = 0
	local item_ID=GetItemID(Item)
	local Itemnew_ID=2300
	local rad_ID=math.random ( 1, 100 )
	if rad_ID<=40 then
		Itemnew_ID=2300  --------����ͼֽ
	elseif rad_ID>=41 and rad_ID<=81 then
		Itemnew_ID=2302  --------���ͼֽ
	else
		Itemnew_ID=2301  --------����ͼֽ
	end
	r1, r2 = MakeItem ( role , Itemnew_ID  , 1 , 4 )
	local Itemnew = GetChaItem ( role , 2 , r2 )


	local rad_energy=math.random ( 1, 100 )
	local energy = 1--------���ּ�ͼֽ
	if item_ID==1000 then-------���ּ�ģ��ͼֽ
		energy=1
	elseif item_ID==1001 then -------����ģ��ͼֽ
		if rad_energy<=5 then
			energy=4
		elseif  rad_energy<=30 and rad_energy>=6 then
			energy=3
		else
			energy=2
		end
	elseif item_ID==1002 then -------�м�ģ��ͼֽ
		if rad_energy<=5 then
			energy=6
		elseif  rad_energy<=30 and rad_energy>=6 then
			energy=5
		else
			energy=4
		end
	elseif item_ID==1003 then -------�߼�ģ��ͼֽ
		if rad_energy<=5 and Itemnew_ID~=2301 then------------���첻����80����Ʒ
			energy=8
		elseif  rad_energy<=30 and rad_energy>=6 then
			energy=7
		else
			energy=6
		end
	end	
	--SystemNotice(role ,"item_ID=="..item_ID)
	--SystemNotice(role ,"rad_energy=="..rad_energy)
	--SystemNotice(role ,"energy=="..energy)

	local final_ID=1849 --------Ĭ�ϵ���
	local final_LV=20 --------Ĭ��20
	local final_ID1=3116 --------Ĭ�Ͼ����
	local final_ID2=3116 --------Ĭ�Ͼ����
	local final_ID3=3116 --------Ĭ�Ͼ����
	------����ȡ��������Ʒ��ID
	local General = 0  
	local ItemId =3124
	if Itemnew_ID==2300 then -----����
		local STAR_BEGIN=ZHIZAO_Mxcount*(energy-1)/10+1
		local STAR_END=ZHIZAO_Mxcount*energy/10
	--SystemNotice(role ,"STAR_BEGIN=="..STAR_BEGIN)
	--SystemNotice(role ,"STAR_END=="..STAR_END)

		for i = STAR_BEGIN , STAR_END , 1 do 
		    General = ZHIZAO__Rad[ i ] + General		
		end 
		local a = math.random ( 1, General )
		local b = 0
		local d = 0 
		local k = 0 
		local c = -1									--������Ʒ���
		for k = STAR_BEGIN , STAR_END , 1 do				-- �������ӵ�ǰ׺���
			d = ZHIZAO__Rad[ k ] + b
			if a <= d and a > b then
				c = k
				break 
			end 
			b = d 
		end 
		if c == -1 then
			c =STAR_BEGIN
		end
	--SystemNotice(role ,"c=="..c)

		--local rad_num1=math.random ( 1, 280 )
		final_ID=ZHIZAO_ID[c]
		final_LV=ZHIZAO_LV[c]
		final_ID1=ZHIZAO_ID1[c]
		final_ID2=ZHIZAO_ID2[c]
		final_ID3=ZHIZAO_ID3[c]

	end
	if Itemnew_ID==2301 then -----����
		local STAR_BEGIN=1
		local STAR_END=77
		if energy==1 then
			STAR_BEGIN=1
			STAR_END=77
		elseif energy==2 then
			STAR_BEGIN=78
			STAR_END=166
		elseif energy==3 then
			STAR_BEGIN=167
			STAR_END=278
		elseif energy==4 then
			STAR_BEGIN=279
			STAR_END=434
		elseif energy==5 then
			STAR_BEGIN=435
			STAR_END=596
		elseif energy==6 then
			STAR_BEGIN=597
			STAR_END=732
		elseif energy==7 then
			STAR_BEGIN=733
			STAR_END=871--------872�Ժ�Ŀǰ������
		elseif energy==8 then
			STAR_BEGIN=895
			STAR_END=902
		end
		--SystemNotice( role ,"energy=="..energy)
		--SystemNotice( role ,"STAR_BEGIN=="..STAR_BEGIN)
		--SystemNotice( role ,"STAR_END=="..STAR_END)

		for i = STAR_BEGIN , STAR_END , 1 do 
		    General = ZHUZAO__Rad[ i ] + General		
		end 
		local a = math.random ( 1, General )
		local b = 0
		local d = 0 
		local k = 0 
		local c = -1									--������Ʒ���
		for k = STAR_BEGIN , STAR_END , 1 do				-- �������ӵ�ǰ׺���
			d = ZHUZAO__Rad[ k ] + b
			if a <= d and a > b then
				c = k
				break 
				end 
			b = d 
		end 
		if c == -1 then
			c =STAR_BEGIN
		end
		--local rad_num2=math.random ( 1, 906 )
		final_ID=ZHUZAO_ID[c]
		final_LV=ZHUZAO_LV[c]
		final_ID1=ZHUZAO_ID1[c]
		final_ID2=ZHUZAO_ID2[c]
		final_ID3=ZHUZAO_ID3[c]		
		local final_type=GetItemType2(final_ID)
		local check=0
		local i = 0
		for i = 0 , Item_CanJinglian_Num  , 1 do
			if final_type == Item_CanJinglian_ID [i] then
				check=1
			end
		end
		--SystemNotice( role ,"check=="..check)

		if  check==1 then-----------------����������װ��ʱ
			local check_rad=math.random ( 1, 1000 )
			if check_rad==1 then
				final_LV=70
			elseif check_rad>=2 and check_rad<=11 then
				final_LV=60
			elseif check_rad>=12 and check_rad<=21 then
				final_LV=50
			elseif check_rad>=22 and check_rad<=221 then
				final_LV=40
			elseif check_rad>=222 and check_rad<=421 then
				final_LV=30
			elseif check_rad>=422 and check_rad<=621 then
				final_LV=20
			else
				final_LV=10				
			end
			if final_LV>70 then
				final_LV=70
			end
			--SystemNotice( role ,"check_energy=="..energy)

			if final_LV~=10 and final_LV~=0 then
				local tmd=(energy-1)*6+final_LV*0.1-1
			--SystemNotice( role ,"tmd=="..tmd)
				final_ID3=TESHU_ID[tmd]
			--SystemNotice( role ,"TESHU_ID[tmd]=="..TESHU_ID[tmd])
			end
		end
	end
	if Itemnew_ID==2302 then -----���
		local STAR_BEGIN=1
		local STAR_END=80
		if energy==1 then
			STAR_BEGIN=1
			STAR_END=7
		elseif energy==2 then
			STAR_BEGIN=8
			STAR_END=12
		elseif energy==3 then
			STAR_BEGIN=13
			STAR_END=17
		elseif energy==4 then
			STAR_BEGIN=18
			STAR_END=26
		elseif energy==5 then
			STAR_BEGIN=27
			STAR_END=31
		elseif energy==6 then
			STAR_BEGIN=32
			STAR_END=36
		else
			STAR_BEGIN=energy+30
			STAR_END=energy+30             
		end
		for i = STAR_BEGIN , STAR_END , 1 do 
		    General = ZHIZAO__Rad[ i ] + General		
		end 
		local a = math.random ( 1, General )
		local b = 0
		local d = 0 
		local k = 0 
		local c = -1									--������Ʒ���
		for k = STAR_BEGIN , STAR_END , 1 do				-- �������ӵ�ǰ׺���
			d = PENGREN__Rad[ k ] + b
			if a <= d and a > b then
				c = k
				break 
			end 
			b = d 
		end 
		if c == -1 then
			c =STAR_BEGIN
		end
		--local rad_num3=math.random ( 1, 40 )
		final_ID=PENGREN_ID[c]
		final_LV=PENGREN_LV[c]
		final_ID1=PENGREN_ID1[c]
		final_ID2=PENGREN_ID2[c]
		final_ID3=PENGREN_ID3[c]		
	end
	--SystemNotice(role ,"ͼֽ�ȼ�energy=="..energy)

	local star_number=energy*10
	local yingbi_num=math.random ( 10, star_number )
	if energy<=3 then
		SetItemAttr(Itemnew, ITEMATTR_MAXURE, energy )--����Ӳ������
		SetItemAttr(Itemnew, ITEMATTR_URE, energy )--ͼֽ�ȼ�		
	else
		SetItemAttr(Itemnew, ITEMATTR_MAXURE, yingbi_num )--����Ӳ������
		SetItemAttr(Itemnew, ITEMATTR_URE, energy )--ͼֽ�ȼ�
	end
	local sta =math.random ( 1, 10 )
	if Itemnew_ID==2301 then-------------����ͼֽʹ�ô�������
		sta=sta*0.5
		sta=math.max(1,sta)
	end
	SetItemAttr(Itemnew, ITEMATTR_VAL_STA, sta )--ͼֽʹ�ô���
	--SetItemAttr(Itemnew, ITEMATTR_MAXURE, maxure )--ͼֽʹ�ô���
	local qulity=math.floor(final_LV*0.1)+100
	SetItemAttr(Itemnew, ITEMATTR_MAXENERGY, qulity )--����

	local ure=10-final_LV*0.1-------------Ҫ��ʾ�ɰٷֱ�
	SetItemAttr(Itemnew, ITEMATTR_ENERGY, ure )--�����ɹ���
	--SetItemAttr(Itemnew, ITEMATTR_URE, ure )--�����ɹ���

	SetItemAttr(Itemnew, ITEMATTR_VAL_STR, final_ID1 )--�������1ID
	SetItemAttr(Itemnew, ITEMATTR_VAL_CON, final_ID2 )--�������2ID
	SetItemAttr(Itemnew, ITEMATTR_VAL_DEX, final_ID3 )--�������3ID
	SetItemAttr(Itemnew, ITEMATTR_VAL_AGI, final_ID )--������ƷID

	local Num_new = GetItemForgeParam ( Itemnew , 1 )
	local Part2_new = GetNum_Part2 ( Num_new )	
	local Part4_new = GetNum_Part4 ( Num_new )
	local Part6_new = GetNum_Part6 ( Num_new )
	Part2_new = math.random ( 3, 20 )					--�������1���� 
	Part4_new = math.random ( 2, 9 )					--�������2����
	Part6_new = math.random ( 1, 3 )					--�������3����
	Part6_new = Part6_new*math.max(1,(energy-2))					--�������3����
	Num_new = SetNum_Part2 ( Num_new , Part2_new )
	Num_new = SetNum_Part4 ( Num_new , Part4_new )
	Num_new = SetNum_Part6 ( Num_new , Part6_new )
	SetItemForgeParam ( Itemnew , 1 , Num_new )

end 
--Sk_Script_GS
--Sk_Script_NK
--Sk_Script_JQ
-----------------------------------------Sk_Script_DBs
function Sk_Script_DBs( role , Item ) 							
 	local sk_add = SK_JLTX1  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv >= 1  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 
-----------------------------------------Sk_Script_NKs
function Sk_Script_NKs( role , Item ) 							
 	local sk_add = SK_JLTX2  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv >= 1  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 
-----------------------------------------Sk_Script_XZs
function Sk_Script_XZs( role , Item ) 							
 	local sk_add = SK_JLTX3  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv >= 1  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 
-----------------------------------------Sk_Script_JQs
function Sk_Script_JQs( role , Item ) 							
 	local sk_add = SK_JLTX4  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv >= 1  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 
-----------------------------------------Sk_Script_BCs
function Sk_Script_BCs( role , Item ) 							
 	local sk_add = SK_JLTX5  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv >= 1  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 
-----------------------------------------Sk_Script_BSs
function Sk_Script_BSs( role , Item ) 							
 	local sk_add = SK_JLTX6  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv >= 1  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 
-----------------------------------------Sk_Script_PZs
function Sk_Script_PZs( role , Item ) 							
 	local sk_add = SK_JLTX7  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv >= 1  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 
-----------------------------------------Sk_Script_SZs
function Sk_Script_SZs( role , Item ) 							
 	local sk_add = SK_JLTX8  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv >= 1  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 
--------------------------�Ŷ�֮��
function ItemUse_TunDuiZhiXing( role , Item ) 							
   	local r1 = 0
	local r2 = 0
	r1, r2 = MakeItem ( role , 1034 , 1 , 4 )
	local Itemnew = GetChaItem ( role , 2 , r2 )
	--SetItemAttr(Itemnew, ITEMATTR_ENERGY, 100 )--��ǰ�洢����
	--SetItemAttr(Itemnew, ITEMATTR_MAXENERGY, 201000 )--��ߴ洢����
	SetItemAttr(Itemnew, ITEMATTR_URE, 100 )--��ǰ�洢����
	SetItemAttr(Itemnew, ITEMATTR_MAXURE, 20100 )--��ߴ洢����
end 
----------------------΢��Ŭ��������
function ItemUse_WeiXing( role , Item )
	local statelv = 1
	local ChaStateLv = GetChaStateLv ( role , STATE_SBJYGZ )
	if ChaStateLv > statelv then
		SystemNotice ( role , "��ʹ�ø��߼��Ĺ��ӣ����Ժ�����" )
		UseItemFailed ( role )
		return
	end
	local lv_star = GetChaAttr( role , ATTR_LV) 
	if lv_star > 40 then
		SystemNotice ( role , "ֻ��40����ǰ��Ч" )
		UseItemFailed ( role )
		return
	end
	local statetime = 60+5*(lv_star-1)
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_SBJYGZ , statelv , statetime )
	else
		AddState( Cha_Boat , Cha_Boat , STATE_SBJYGZ , statelv , statetime )
	end
end
----------------------------------------------------
function ItemUse_JLZhiZ_CJ ( role , Item , Item_Traget )   --��������������
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "����ʱ����ʹ��" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )	 --����32λ������Ϣ����
		local SkillType = 1		--Ҫ���ӵ� Skill ����
		local SkillNum = 13		--Ҫ���ӵ�Skill ���

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )
			if Check == 1 then
				SystemNotice(role , "���иü���,ʹ��ʧ��" ) 
				UseItemFailed ( role )
			else
				AddElfSkill ( Item_Traget , SkillType , SkillNum )
			end
		end
end
----------------------------------------------------
function ItemUse_JLZhiZ_ZJ ( role , Item , Item_Traget )   --�м�����������
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "����ʱ����ʹ��" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )	 --����32λ������Ϣ����
		local SkillType = 2		--Ҫ���ӵ� Skill ����
		local SkillNum = 13		--Ҫ���ӵ�Skill ���

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )
			if Check == 1 then
				SystemNotice(role , "���иü���,ʹ��ʧ��" ) 
				UseItemFailed ( role )
			else
				AddElfSkill ( Item_Traget , SkillType , SkillNum )
			end
		end
end
----------------------------------------------------
function ItemUse_JLZhiZ_GJ ( role , Item , Item_Traget )   --�߼�����������
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "����ʱ����ʹ��" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )	 --����32λ������Ϣ����
		local SkillType = 3		--Ҫ���ӵ� Skill ����
		local SkillNum = 13		--Ҫ���ӵ�Skill ���

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )
			if Check == 1 then
				SystemNotice(role , "���иü���,ʹ��ʧ��" ) 
				UseItemFailed ( role )
			else
				AddElfSkill ( Item_Traget , SkillType , SkillNum )
			end
		end
end
----------------------------------------------------
function ItemUse_JLZhuZ_CJ ( role , Item , Item_Traget )   --��������������
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "����ʱ����ʹ��" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )	 --����32λ������Ϣ����
		local SkillType = 1		--Ҫ���ӵ� Skill ����
		local SkillNum = 14		--Ҫ���ӵ�Skill ���

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )
			if Check == 1 then
				SystemNotice(role , "���иü���,ʹ��ʧ��" ) 
				UseItemFailed ( role )
			else
				AddElfSkill ( Item_Traget , SkillType , SkillNum )
			end
		end
end
----------------------------------------------------
function ItemUse_JLZhuZ_ZJ ( role , Item , Item_Traget )   --�м�����������
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "����ʱ����ʹ��" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )	 --����32λ������Ϣ����
		local SkillType = 2		--Ҫ���ӵ� Skill ����
		local SkillNum = 14		--Ҫ���ӵ�Skill ���

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )
			if Check == 1 then
				SystemNotice(role , "���иü���,ʹ��ʧ��" ) 
				UseItemFailed ( role )
			else
				AddElfSkill ( Item_Traget , SkillType , SkillNum )
			end
		end
end
----------------------------------------------------
function ItemUse_JLZhuZ_GJ ( role , Item , Item_Traget )   --�߼�����������
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "����ʱ����ʹ��" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )	 --����32λ������Ϣ����
		local SkillType = 3		--Ҫ���ӵ� Skill ����
		local SkillNum = 14		--Ҫ���ӵ�Skill ���

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )
			if Check == 1 then
				SystemNotice(role , "���иü���,ʹ��ʧ��" ) 
				UseItemFailed ( role )
			else
				AddElfSkill ( Item_Traget , SkillType , SkillNum )
			end
		end
end
----------------------------------------------------
function ItemUse_JLFenJ_CJ ( role , Item , Item_Traget )   --��������ֽ���
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "����ʱ����ʹ��" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )	 --����32λ������Ϣ����
		local SkillType = 1		--Ҫ���ӵ� Skill ����
		local SkillNum = 15		--Ҫ���ӵ�Skill ���

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )
			if Check == 1 then
				SystemNotice(role , "���иü���,ʹ��ʧ��" ) 
				UseItemFailed ( role )
			else
				AddElfSkill ( Item_Traget , SkillType , SkillNum )
			end
		end
end
----------------------------------------------------
function ItemUse_JLFenJ_ZJ ( role , Item , Item_Traget )   --�м�����ֽ���
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "����ʱ����ʹ��" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )	 --����32λ������Ϣ����
		local SkillType = 2		--Ҫ���ӵ� Skill ����
		local SkillNum = 15		--Ҫ���ӵ�Skill ���

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )
			if Check == 1 then
				SystemNotice(role , "���иü���,ʹ��ʧ��" ) 
				UseItemFailed ( role )
			else
				AddElfSkill ( Item_Traget , SkillType , SkillNum )
			end
		end
end
----------------------------------------------------
function ItemUse_JLFenJ_GJ ( role , Item , Item_Traget )   --�߼�����ֽ���
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "����ʱ����ʹ��" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )	 --����32λ������Ϣ����
		local SkillType = 3		--Ҫ���ӵ� Skill ����
		local SkillNum = 15		--Ҫ���ӵ�Skill ���

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )
			if Check == 1 then
				SystemNotice(role , "���иü���,ʹ��ʧ��" ) 
				UseItemFailed ( role )
			else
				AddElfSkill ( Item_Traget , SkillType , SkillNum )
			end
		end
end
----------------------------------------------------
function ItemUse_JLPengR_CJ ( role , Item , Item_Traget )   --�������������
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "����ʱ����ʹ��" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )	 --����32λ������Ϣ����
		local SkillType = 1		--Ҫ���ӵ� Skill ����
		local SkillNum = 16		--Ҫ���ӵ�Skill ���

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )
			if Check == 1 then
				SystemNotice(role , "���иü���,ʹ��ʧ��" ) 
				UseItemFailed ( role )
			else
				AddElfSkill ( Item_Traget , SkillType , SkillNum )
			end
		end
end
----------------------------------------------------
function ItemUse_JLPengR_ZJ ( role , Item , Item_Traget )   --�м����������
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "����ʱ����ʹ��" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )	 --����32λ������Ϣ����
		local SkillType = 2		--Ҫ���ӵ� Skill ����
		local SkillNum = 16		--Ҫ���ӵ�Skill ���

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )
			if Check == 1 then
				SystemNotice(role , "���иü���,ʹ��ʧ��" ) 
				UseItemFailed ( role )
			else
				AddElfSkill ( Item_Traget , SkillType , SkillNum )
			end
		end
end
----------------------------------------------------
function ItemUse_JLPengR_GJ ( role , Item , Item_Traget )   --�߼����������
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "����ʱ����ʹ��" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )	 --����32λ������Ϣ����
		local SkillType = 3		--Ҫ���ӵ� Skill ����
		local SkillNum = 16		--Ҫ���ӵ�Skill ���

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )
			if Check == 1 then
				SystemNotice(role , "���иü���,ʹ��ʧ��" ) 
				UseItemFailed ( role )
			else
				AddElfSkill ( Item_Traget , SkillType , SkillNum )
			end
		end
end
----------------------------------�Ҷ�����
function ItemUse_FightingBox( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 2 then
		SystemNotice(role ,"���Ҷ�����������Ҫ2����λ")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 2610  , 1 , 4 )
	local rad = math.random ( 1, 3 )
	if rad ==1 then
	GiveItem ( role , 0 , 1124  , 1 , 15 )	
	end
	
	if rad ==2 then
	GiveItem ( role , 0 , 1125  , 1 , 15 )	
	end
	
	if rad ==3 then
	GiveItem ( role , 0 , 1126  , 1 , 15 )	
	end
end
---------------------------------�������ƹ������HP+100�������ֿ�+1��ʱ��15����
function ItemUse_XUEYU( role , Item ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "����ʱ����ʹ��" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local statelv = 1
	local ChaStateLv = GetChaStateLv ( role , STATE_XUEYU )
	if ChaStateLv > statelv then
		SystemNotice ( role , "��ʹ�ø��߼���ͬ����Ʒ�����Ժ�����" )
		UseItemFailed ( role )
		return
	end
	local statetime = 900
	AddState( role , role , STATE_XUEYU , statelv , statetime )
end 
---------------------------------�������ࣺ���HP+400�������ֿ�+2��ʱ��10����
function ItemUse_CUIZHU( role , Item ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "����ʱ����ʹ��" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local statelv = 2
	local ChaStateLv = GetChaStateLv ( role , STATE_XUEYU )
	if ChaStateLv > statelv then
		SystemNotice ( role , "��ʹ�ø��߼���ͬ����Ʒ�����Ժ�����" )
		UseItemFailed ( role )
		return
	end
	local statetime = 600
	AddState( role , role , STATE_XUEYU , statelv , statetime )
end 
---------------------------------������ˮ�㣺���HP+900�������ֿ�+2��ʱ��10����
function ItemUse_HUIXIANG( role , Item ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "����ʱ����ʹ��" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local statelv = 3
	local ChaStateLv = GetChaStateLv ( role , STATE_XUEYU )
	if ChaStateLv > statelv then
		SystemNotice ( role , "��ʹ�ø��߼���ͬ����Ʒ�����Ժ�����" )
		UseItemFailed ( role )
		return
	end
	local statetime = 600
	AddState( role , role , STATE_XUEYU , statelv , statetime )
end 
---------------------------------ӳ�������������HP+1600�������ֿ�+3��ʱ��8����
function ItemUse_YINGYUE( role , Item ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "����ʱ����ʹ��" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local statelv = 4
	local ChaStateLv = GetChaStateLv ( role , STATE_XUEYU )
	if ChaStateLv > statelv then
		SystemNotice ( role , "��ʹ�ø��߼���ͬ����Ʒ�����Ժ�����" )
		UseItemFailed ( role )
		return
	end
	local statetime =480
	AddState( role , role , STATE_XUEYU , statelv , statetime )
end 
---------------------------------�˱��м�������HP+2500�������ֿ�+3��ʱ��8����
function ItemUse_LANGBEI( role , Item ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "����ʱ����ʹ��" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local statelv =5
	local ChaStateLv = GetChaStateLv ( role , STATE_XUEYU )
	if ChaStateLv > statelv then
		SystemNotice ( role , "��ʹ�ø��߼���ͬ����Ʒ�����Ժ�����" )
		UseItemFailed ( role )
		return
	end
	local statetime = 480
	AddState( role , role , STATE_XUEYU , statelv , statetime )
end 
---------------------------------СС��Ϻ�ȣ����HP+3600�������ֿ�+4��ʱ��6����
function ItemUse_XIAOXIAO( role , Item ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "����ʱ����ʹ��" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local statelv = 6
	local ChaStateLv = GetChaStateLv ( role , STATE_XUEYU )
	if ChaStateLv > statelv then
		SystemNotice ( role , "��ʹ�ø��߼���ͬ����Ʒ�����Ժ�����" )
		UseItemFailed ( role )
		return
	end
	local statetime = 360
	AddState( role , role , STATE_XUEYU , statelv , statetime )
end 
---------------------------------��Ƥ����֣����HP+4900�������ֿ�+5��ʱ��5����
function ItemUse_HUPI( role , Item ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "����ʱ����ʹ��" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local statelv =7
	local ChaStateLv = GetChaStateLv ( role , STATE_XUEYU )
	if ChaStateLv > statelv then
		SystemNotice ( role , "��ʹ�ø��߼���ͬ����Ʒ�����Ժ�����" )
		UseItemFailed ( role )
		return
	end
	local statetime = 300
	AddState( role , role , STATE_XUEYU , statelv , statetime )
end 
---------------------------------���޺��ʷ������HP+6400�������ֿ�+6��ʱ��3����
function ItemUse_YINJIAO( role , Item ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "����ʱ����ʹ��" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local statelv = 8
	local ChaStateLv = GetChaStateLv ( role , STATE_XUEYU )
	if ChaStateLv > statelv then
		SystemNotice ( role , "��ʹ�ø��߼���ͬ����Ʒ�����Ժ�����" )
		UseItemFailed ( role )
		return
	end
	local statetime = 180
	AddState( role , role , STATE_XUEYU , statelv , statetime )
end 
---------------------------------���������������HP+8100�������ֿ�+6��ʱ��3����
function ItemUse_TAOTU( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "����ʱ����ʹ��" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local statelv = 9
	local ChaStateLv = GetChaStateLv ( role , STATE_XUEYU )
	if ChaStateLv > statelv then
		SystemNotice ( role , "��ʹ�ø��߼���ͬ����Ʒ�����Ժ�����" )
		UseItemFailed ( role )
		return
	end
	local statetime = 180
	AddState( role , role , STATE_XUEYU , statelv , statetime )
end 
---------------------------------������᣺���HP+10000�������ֿ�+8��ʱ��1����
function ItemUse_BAIWANG( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "����ʱ����ʹ��" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local statelv = 10
	local ChaStateLv = GetChaStateLv ( role , STATE_XUEYU )
	if ChaStateLv > statelv then
		SystemNotice ( role , "��ʹ�ø��߼���ͬ����Ʒ�����Ժ�����" )
		UseItemFailed ( role )
		return
	end
	local statetime =60
	AddState( role , role , STATE_XUEYU , statelv , statetime )
end 
---------------------------------- ��ͷ��HP+200��������+50��ʱ��15����
function ItemUse_MANTOU( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "����ʱ����ʹ��" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local hp = GetChaAttr( role , ATTR_HP ) 
	local hp_resume = 200 
	hp = hp + hp_resume 
	local mxhp = GetChaAttr( role , ATTR_MXHP) 
	if hp > mxhp then 
		 hp = mxhp 
	 end 
	SetCharaAttr(hp, role, ATTR_HP) 
	local statelv = 1
	local ChaStateLv = GetChaStateLv ( role , STATE_MANTOU )
	if ChaStateLv > statelv then
		SystemNotice ( role , "��ʹ�ø��߼���ͬ����Ʒ�����Ժ�����" )
		UseItemFailed ( role )
		return
	end
	local statetime = 900
	AddState( role , role , STATE_MANTOU , statelv , statetime )
end 
---------------------------------���ӣ�HP+400��������+150��ʱ��10����
function ItemUse_BAOZI( role , Item ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "����ʱ����ʹ��" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local hp = GetChaAttr( role , ATTR_HP ) 
	local hp_resume = 400 
	hp = hp + hp_resume 
	local mxhp = GetChaAttr( role , ATTR_MXHP) 
	if hp > mxhp then 
		 hp = mxhp 
	 end 
	SetCharaAttr(hp, role, ATTR_HP) 
	local statelv = 2
	local ChaStateLv = GetChaStateLv ( role , STATE_MANTOU )
	if ChaStateLv > statelv then
		SystemNotice ( role , "��ʹ�ø��߼���ͬ����Ʒ�����Ժ�����" )
		UseItemFailed ( role )
		return
	end
	local statetime =600
	AddState( role , role , STATE_MANTOU , statelv , statetime )
end 
---------------------------------�����HP+600��������+250��ʱ��7����
function ItemUse_DABING( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "����ʱ����ʹ��" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local hp = GetChaAttr( role , ATTR_HP ) 
	local hp_resume = 600 
	hp = hp + hp_resume 
	local mxhp = GetChaAttr( role , ATTR_MXHP) 
	if hp > mxhp then 
		 hp = mxhp 
	 end 
	SetCharaAttr(hp, role, ATTR_HP) 
	local statelv = 3
	local ChaStateLv = GetChaStateLv ( role , STATE_MANTOU )
	if ChaStateLv > statelv then
		SystemNotice ( role , "��ʹ�ø��߼���ͬ����Ʒ�����Ժ�����" )
		UseItemFailed ( role )
		return
	end
	local statetime = 420
	AddState( role , role , STATE_MANTOU , statelv , statetime )
end 
---------------------------------������HP+800��������+350��ʱ��5����
function ItemUse_YOUTIAO( role , Item ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "����ʱ����ʹ��" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local hp = GetChaAttr( role , ATTR_HP ) 
	local hp_resume = 800 
	hp = hp + hp_resume 
	local mxhp = GetChaAttr( role , ATTR_MXHP) 
	if hp > mxhp then 
		 hp = mxhp 
	 end 
	SetCharaAttr(hp, role, ATTR_HP) 
	local statelv = 4
	local ChaStateLv = GetChaStateLv ( role , STATE_MANTOU )
	if ChaStateLv > statelv then
		SystemNotice ( role , "��ʹ�ø��߼���ͬ����Ʒ�����Ժ�����" )
		UseItemFailed ( role )
		return
	end
	local statetime =300
	AddState( role , role , STATE_MANTOU , statelv , statetime )
end 
---------------------------------����HP+1000��������+450��ʱ��2����
function ItemUse_CHUNJUAN( role , Item ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "����ʱ����ʹ��" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local hp = GetChaAttr( role , ATTR_HP ) 
	local hp_resume = 1000 
	hp = hp + hp_resume 
	local mxhp = GetChaAttr( role , ATTR_MXHP) 
	if hp > mxhp then 
		 hp = mxhp 
	 end 
	SetCharaAttr(hp, role, ATTR_HP) 
	local statelv = 5
	local ChaStateLv = GetChaStateLv ( role , STATE_MANTOU )
	if ChaStateLv > statelv then
		SystemNotice ( role , "��ʹ�ø��߼���ͬ����Ʒ�����Ժ�����" )
		UseItemFailed ( role )
		return
	end
	local statetime = 120
	AddState( role , role , STATE_MANTOU , statelv , statetime )
end 
---------------------------------Ů���죺SP+100������+5��ʱ��15����
function ItemUse_NVER( role , Item ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "����ʱ����ʹ��" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local sp = GetChaAttr( role , ATTR_SP ) 
	local sp_resume = 100 
	sp = sp + sp_resume 
	local mxsp = GetChaAttr( role , ATTR_MXSP) 
	if sp > mxsp then 
		 sp = mxsp 
	 end 
	SetCharaAttr(sp, role, ATTR_SP) 
	local statelv = 1
	local ChaStateLv = GetChaStateLv ( role , STATE_NVER )
	if ChaStateLv > statelv then
		SystemNotice ( role , "��ʹ�ø��߼���ͬ����Ʒ�����Ժ�����" )
		UseItemFailed ( role )
		return
	end
	local statetime = 900
	AddState( role , role , STATE_NVER , statelv , statetime )
end 
---------------------------------״Ԫ�죺SP+200������+10��ʱ��10����
function ItemUse_ZHUANGYUAN( role , Item ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "����ʱ����ʹ��" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local sp = GetChaAttr( role , ATTR_SP ) 
	local sp_resume = 200 
	sp = sp + sp_resume 
	local mxsp = GetChaAttr( role , ATTR_MXSP) 
	if sp > mxsp then 
		 sp = mxsp 
	 end 
	SetCharaAttr(sp, role, ATTR_SP) 
	local statelv = 2
	local ChaStateLv = GetChaStateLv ( role , STATE_NVER )
	if ChaStateLv > statelv then
		SystemNotice ( role , "��ʹ�ø��߼���ͬ����Ʒ�����Ժ�����" )
		UseItemFailed ( role )
		return
	end
	local statetime = 600
	AddState( role , role , STATE_NVER , statelv , statetime )
end 
---------------------------------�ſ���SP+300������+15��ʱ��7����
function ItemUse_DUKANG( role , Item ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "����ʱ����ʹ��" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local sp = GetChaAttr( role , ATTR_SP ) 
	local sp_resume = 300 
	sp = sp + sp_resume 
	local mxsp = GetChaAttr( role , ATTR_MXSP) 
	if sp > mxsp then 
		 sp = mxsp 
	 end 
	SetCharaAttr(sp, role, ATTR_SP) 
	local statelv = 3
	local ChaStateLv = GetChaStateLv ( role , STATE_NVER )
	if ChaStateLv > statelv then
		SystemNotice ( role , "��ʹ�ø��߼���ͬ����Ʒ�����Ժ�����" )
		UseItemFailed ( role )
		return
	end
	local statetime = 420
	AddState( role , role , STATE_NVER , statelv , statetime )
end 
---------------------------------ę́��SP+400������+20��ʱ��5����
function ItemUse_MAOTAI( role , Item ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "����ʱ����ʹ��" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local sp = GetChaAttr( role , ATTR_SP ) 
	local sp_resume = 400 
	sp = sp + sp_resume 
	local mxsp = GetChaAttr( role , ATTR_MXSP) 
	if sp > mxsp then 
		 sp = mxsp 
	 end 
	SetCharaAttr(sp, role, ATTR_SP) 
	local statelv = 4
	local ChaStateLv = GetChaStateLv ( role , STATE_NVER )
	if ChaStateLv > statelv then
		SystemNotice ( role , "��ʹ�ø��߼���ͬ����Ʒ�����Ժ�����" )
		UseItemFailed ( role )
		return
	end
	local statetime = 300
	AddState( role , role , STATE_NVER , statelv , statetime )
end 
---------------------------------�˲ξƣ�SP+500������+25��ʱ��3����
function ItemUse_RENSHEN( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "����ʱ����ʹ��" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local sp = GetChaAttr( role , ATTR_SP ) 
	local sp_resume = 500 
	sp = sp + sp_resume 
	local mxsp = GetChaAttr( role , ATTR_MXSP) 
	if sp > mxsp then 
		 sp = mxsp 
	 end 
	SetCharaAttr(sp, role, ATTR_SP) 
	local statelv = 5
	local ChaStateLv = GetChaStateLv ( role , STATE_NVER )
	if ChaStateLv > statelv then
		SystemNotice ( role , "��ʹ�ø��߼���ͬ����Ʒ�����Ժ�����" )
		UseItemFailed ( role )
		return
	end
	local statetime = 180
	AddState( role , role , STATE_NVER , statelv , statetime )
end 
---------------------------------���Ǿƣ�SP+600������+30��ʱ��2����
function ItemUse_HUGU( role , Item ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "����ʱ����ʹ��" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local sp = GetChaAttr( role , ATTR_SP ) 
	local sp_resume = 600 
	sp = sp + sp_resume 
	local mxsp = GetChaAttr( role , ATTR_MXSP) 
	if sp > mxsp then 
		 sp = mxsp 
	 end 
	SetCharaAttr(sp, role, ATTR_SP) 
	local statelv = 6
	local ChaStateLv = GetChaStateLv ( role , STATE_NVER )
	if ChaStateLv > statelv then
		SystemNotice ( role , "��ʹ�ø��߼���ͬ����Ʒ�����Ժ�����" )
		UseItemFailed ( role )
		return
	end
	local statetime = 120
	AddState( role , role , STATE_NVER , statelv , statetime )
end 
-------------------��ʽĦ����װ����
function ItemUse_MOLIBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet < 4 then
		SystemNotice(role ,"�򿪱��䱳����������Ҫ��4����λ")
		UseItemFailed ( role )
		return
	end
	local rad = math.random ( 1, 12 )
	if rad == 1 then
	GiveItem ( role , 0 , 5107  , 1 , 4 ) 
	GiveItem ( role , 0 , 5108  , 1 , 4 ) 
	GiveItem ( role , 0 , 5109  , 1 , 4 ) 
	elseif rad == 2 then
	GiveItem ( role , 0 , 5111  , 1 , 4 ) 
	GiveItem ( role , 0 , 5112  , 1 , 4 ) 
	GiveItem ( role , 0 , 5113  , 1 , 4 ) 
	elseif rad == 3 then
	GiveItem ( role , 0 , 5115  , 1 , 4 ) 
	GiveItem ( role , 0 , 5116  , 1 , 4 ) 
	GiveItem ( role , 0 , 5117  , 1 , 4 ) 
	elseif rad == 4 then
	GiveItem ( role , 0 , 5119  , 1 , 4 ) 
	GiveItem ( role , 0 , 5120  , 1 , 4 ) 
	GiveItem ( role , 0 , 5121  , 1 , 4 ) 
	elseif rad == 5 then
	GiveItem ( role , 0 , 5123  , 1 , 4 ) 
	GiveItem ( role , 0 , 5124  , 1 , 4 ) 
	GiveItem ( role , 0 , 5125  , 1 , 4 )
	elseif rad == 6 then
	GiveItem ( role , 0 , 5127  , 1 , 4 ) 
	GiveItem ( role , 0 , 5128  , 1 , 4 ) 
	GiveItem ( role , 0 , 5129  , 1 , 4 )
	elseif rad == 7 then
	GiveItem ( role , 0 , 5130  , 1 , 4 ) 
	GiveItem ( role , 0 , 5131  , 1 , 4 ) 
	GiveItem ( role , 0 , 5132  , 1 , 4 )
	GiveItem ( role , 0 , 5133  , 1 , 4 )
	elseif rad == 8 then
	GiveItem ( role , 0 , 5134  , 1 , 4 ) 
	GiveItem ( role , 0 , 5135  , 1 , 4 ) 
	GiveItem ( role , 0 , 5136  , 1 , 4 )
	GiveItem ( role , 0 , 5137  , 1 , 4 )
	elseif rad == 9 then
	GiveItem ( role , 0 , 5138  , 1 , 4 ) 
	GiveItem ( role , 0 , 5139  , 1 , 4 ) 
	GiveItem ( role , 0 , 5140  , 1 , 4 )
	GiveItem ( role , 0 , 5141  , 1 , 4 )
	elseif rad == 10 then
	GiveItem ( role , 0 , 5143  , 1 , 4 ) 
	GiveItem ( role , 0 , 5144  , 1 , 4 ) 
	GiveItem ( role , 0 , 5145  , 1 , 4 ) 
	elseif rad == 11 then
	GiveItem ( role , 0 , 5147  , 1 , 4 ) 
	GiveItem ( role , 0 , 5148  , 1 , 4 ) 
	GiveItem ( role , 0 , 5149  , 1 , 4 )
	elseif rad == 12 then
	GiveItem ( role , 0 , 5151  , 1 , 4 ) 
	GiveItem ( role , 0 , 5152  , 1 , 4 ) 
	GiveItem ( role , 0 , 5153  , 1 , 4 )
	end
	--local cha_name = GetChaDefaultName ( role ) 
	--local message = cha_name.."��Ħ����װ���佱��ϲ�ػ����ʽĦ����װ1��"   
	--Notice ( message )
end

function ItemUse_IDBOX(role, Item )
	local lv = GetChaAttr(role, ATTR_LV)
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	local cha_name = GetChaDefaultName ( role ) 
	local count = 1
	
	if lv < 60 then
		SystemNotice( role ,"��ǰ�������60��������ʹ��ʧ�ܣ�")
		UseItemFailed ( role )	
	else
		SystemNotice(role,"��ѽ�����лл���Ĳ��룬���ע�������ٷ���վ����ø������ᣡ")
	end
end 

---------------------�����ӵ���
function ItemUse_HonorPoint (role, Item )
	local HonorBook_Num = 0
	local HonorBook_Num = CheckBagItem( role,3849 )
		if HonorBook_Num < 1 then
		SystemNotice( role , "������û������֤֮")
		return 0
		end
	local Book2 =  GetChaItem2 ( role , 2 , 3849 )
	local HonorPoint=GetItemAttr ( Book2 , ITEMATTR_VAL_STR)
	
	local HonorPoint_X=HonorPoint+100
	SetItemAttr ( Book2 , ITEMATTR_VAL_STR,HonorPoint_X)
	
end
-------------------------�Ҷ��ӵ���
function ItemUse_FightingPoint (role, Item )
	local HonorBook_Num = 0
	local HonorBook_Num = CheckBagItem( role,3849 )
		if HonorBook_Num < 1 then
		SystemNotice( role , "������û������֤֮")
		return 0
		end
	local Book2 =  GetChaItem2 ( role , 2 , 3849 )
	local FightingPoint=GetItemAttr ( Book2 , ITEMATTR_MAXENERGY)
	
	local FightingPoint_X=FightingPoint+10
	SetItemAttr ( Book2 , ITEMATTR_MAXENERGY,FightingPoint_X)
	
end
----------------------------[[��ζ����]]--
function ItemUse_MWHJ ( role , Item )  
	local el_exp = GetChaAttr(role, ATTR_CEXP)
	local exp1=el_exp
	local charLv=Lv ( role )
	local exp_resume = 5000
	local	exp_resume_1= 100
	el_exp = el_exp + exp_resume
	 if charLv>=80 then	
		el_exp = exp1 + exp_resume_1
	end
	SetCharaAttr(el_exp, role, ATTR_CEXP) 
end 
------------------------ʥ�����
function ItemUse_SDDC ( role , Item )
	local Cha_Boat = 0
	local charLv=Lv ( role )
	local dif_exp_one = DEXP[charLv+1]
	local dif_exp_three = DEXP[charLv+3]
	local dif_exp_five = DEXP[charLv+5]
	local Exp_star=GetChaAttr (  role , ATTR_CEXP )----------��ǰ�ȼ�����
	local dif_exp_half = (DEXP[charLv+1] - DEXP[charLv])*0.5 +  Exp_star +10
	local dif_exp_thalf = (DEXP[charLv+1] - DEXP[charLv])*0.3  +  Exp_star + 10
	local dif_exp_thalf_b = dif_exp_thalf - DEXP[charLv+1]
	local dif_exp_thalf_c = (DEXP[charLv+1] - DEXP[charLv])*0.01+Exp_star ----------------
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	elseif charLv>=1 and charLv<=9 then
		SetChaAttrI( role , ATTR_CEXP , dif_exp_five )
	elseif charLv>=10 and charLv<=29 then
			SetChaAttrI( role , ATTR_CEXP , dif_exp_three )
	elseif charLv>=30 and charLv<=59 then
			SetChaAttrI( role , ATTR_CEXP , dif_exp_one )
	elseif charLv>=60 and charLv<=75 then
			SetChaAttrI( role , ATTR_CEXP , dif_exp_half )
	elseif charLv>=76 and charLv<=85 and charLv~=79  then
			SetChaAttrI( role , ATTR_CEXP , dif_exp_thalf )
	elseif charLv==79 and dif_exp_thalf_b<=0 then
			SetChaAttrI( role , ATTR_CEXP , dif_exp_thalf )
	elseif charLv==79 and dif_exp_thalf_b>0 then 
			dif_exp_thalf = dif_exp_thalf_b*0.02 + DEXP[charLv+1]
			SetChaAttrI( role , ATTR_CEXP , dif_exp_thalf )
	elseif charLv>=86 then
		SetChaAttrI( role , ATTR_CEXP , dif_exp_thalf_c )-------------
		--SystemNotice( role , "86�����Ͻ�ɫʹ�ü�1%����ֵ" )--------------
	end
end
------------------------------------�����ٻ�ȯ--˫������ĸ��ٻ�ȯ
function ItemUse_GWZHQ ( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <=3 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬����Ҫ��4����λ��ʹ�þ�����ʥ�����ʧ��")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 2888  , 1 , 4) 
	GiveItem ( role , 0 , 2889  , 1 , 4)
	GiveItem ( role , 0 , 2890  , 1 , 4)
	GiveItem ( role , 0 , 2891  , 1 , 4)
end
---------------------------------���ٻ�ȯ--˫���ٻ��𼦳���
function ItemUse_HJZHQ ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "���ϲ���ʹ��" )
		UseItemFailed ( role )
		return
	end
	local pet_num = GetPetNum(role)
	if pet_num >= 5 then
		SystemNotice( role , "��������5ֻ,���Ժ����ٻ�!" )
		UseItemFailed ( role )
		return
	end
	local x, y = GetChaPos(role)
	x_resume = 5
	y_resume = 5
	x = x + x_resume
	y = y + y_resume
	local MonsterID =930     -------------------ûë��
	local Refresh = 1800					--����ʱ�䣬�뵥λ
	local life = 1800000					--����ʱ�䣬���뵥λ
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaHost(new,role)
	SetChaLifeTime( new, life )
	SetChaTarget(new, role)
	PlayEffect( new, 361 )
end

------------------------------��¹�ٻ�ȯ--˫���ٻ���¹

function ItemUse_MLZHQ ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "���ϲ���ʹ��" )
		UseItemFailed ( role )
		return
	end
	local pet_num = GetPetNum(role)
	if pet_num >= 5 then
		SystemNotice( role , "��������5ֻ,���Ժ����ٻ�!" )
		UseItemFailed ( role )
		return
	end
	local x, y = GetChaPos(role)
	x_resume = 5
	y_resume = 5
	x = x + x_resume
	y = y + y_resume
	local MonsterID =931-----------------------��¹
	local Refresh = 3600					--����ʱ�䣬�뵥λ
	local life = 3600000					--����ʱ�䣬���뵥λ
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaHost(new,role)
	SetChaLifeTime( new, life )
	SetChaTarget(new, role)
	PlayEffect( new, 361 )
end
-----------------------------------ѩ���ٻ�ȯ--˫���ٻ�ѩ��
function ItemUse_XRZHQ ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "���ϲ���ʹ��" )
		UseItemFailed ( role )
		return
	end
	local pet_num = GetPetNum(role)
	if pet_num >= 5 then
		SystemNotice( role , "��������5ֻ,���Ժ����ٻ�!" )
		UseItemFailed ( role )
		return
	end
	local x, y = GetChaPos(role)
	x_resume = 5
	y_resume = 5
	x = x + x_resume
	y = y + y_resume
	local MonsterID =932-----------------------------ʥ������
	local Refresh = 7200					--����ʱ�䣬�뵥λ
	local life = 7200000					--����ʱ�䣬���뵥λ
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaHost(new,role)
	SetChaLifeTime( new, life )
	SetChaTarget(new, role)
	PlayEffect( new, 361 )
end

--------------------------------------------------ʥ�������ٻ�ȯ--˫���ٻ�ʥ������

function ItemUse_SDZHQ ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "���ϲ���ʹ��" )
		UseItemFailed ( role )
		return
	end
	local pet_num = GetPetNum(role)
	if pet_num >= 5 then
		SystemNotice( role , "��������5ֻ,���Ժ����ٻ�!" )
		UseItemFailed ( role )
		return
	end
	local x, y = GetChaPos(role)
	x_resume = 5
	y_resume = 5
	x = x + x_resume
	y = y + y_resume
	local MonsterID =929-----------------------------ʥ������
	local Refresh = 10800					--����ʱ�䣬�뵥λ
	local life = 10800000					--����ʱ�䣬���뵥λ
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaHost(new,role)
	SetChaLifeTime( new, life )
	SetChaTarget(new, role)
	PlayEffect( new, 361 )
end
---------------------------------------------ʥ�������--˫�����һϵ�е���
function ItemUse_SDDLB ( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <=5 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬����Ҫ��6����λ��ʹ�þ�����ʥ�����ʧ��")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 2894  , 1 , 4) 
	GiveItem ( role , 0 , 2893  , 10 , 4) 
	GiveItem ( role , 0 , 2889  , 1 , 4) 
	GiveItem ( role , 0 , 2890 , 1 , 4) 
	GiveItem ( role , 0 , 2891  , 1 , 4) 
	GiveItem ( role , 0 , 2896  , 99 , 4) 
end


--------------------------------------------------------̨���Ʊ1
function TW_Ticket_Script1(role, Item )
	local i = CheckBagItem(role,2446)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "�����Ǽ����۵����飬�뱣��100����hp��spŶ")
		UseItemFailed ( role )
		return
	end
------MoveCity���Ӽ������ж�
	local map_name = GetChaMapName ( role )
	if map_name == "prisonisland" then
		SystemNotice ( role , "��ǰ��ͼ���ܴ���" )
		UseItemFailed ( role )
		return
	end
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,2446,1)
			if j == 1 then
				GoTo( role,  2816, 3255, "darkblue")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end
--------------------------------------------------------̨���Ʊ2
function TW_Ticket_Script2(role, Item )
	local i = CheckBagItem(role,2447)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "�����Ǽ����۵����飬�뱣��100����hp��spŶ")
		UseItemFailed ( role )
		return
	end
------MoveCity���Ӽ������ж�
	local map_name = GetChaMapName ( role )
	if map_name == "prisonisland" then
		SystemNotice ( role , "��ǰ��ͼ���ܴ���" )
		UseItemFailed ( role )
		return
	end
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,2447,1)
			if j == 1 then
				GoTo( role,  609 , 624 , "jialebi")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

--------------------------------------------------------̨���Ʊ3
function TW_Ticket_Script3(role, Item )
	local i = CheckBagItem(role,2491)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "�����Ǽ����۵����飬�뱣��100����hp��spŶ")
		UseItemFailed ( role )
		return
	end
------MoveCity���Ӽ������ж�
	local map_name = GetChaMapName ( role )
	if map_name == "prisonisland" then
		SystemNotice ( role , "��ǰ��ͼ���ܴ���" )
		UseItemFailed ( role )
		return
	end
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,2491,1)
			if j == 1 then
				GoTo( role,  1080 , 210 , "jialebi" )
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

--������ʥ�����
function ItemUse_JMSDBOX ( role , Item )
	local item_type = BoxXiang_BaoZhaBOX
	local item_type_rad = BoxXiang_BaoZhaBOX_Rad
	local item_type_count = BoxXiang_BaoZhaBOX_Count
	local maxitem = BoxXiang_baozhabao_Mxcount						-- �ս���
	local item_quality = BoxXiang_baozhabao_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
		
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬������ʥ����п���ʧ��")
		UseItemFailed ( role )
		return
	end
	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General		
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1							--������Ʒ���
	for k = 1 , maxitem , 1 do				-- �������ӵ�ǰ׺���
		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break		
		end 
		b = d 
	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 

	GiveItem ( role , 0 , ItemId , ItemCount , item_quality )
	local GoodItem = {}
	GoodItem[0] = 3111
	GoodItem[1] = 3110
	GoodItem[2] = 3112
	GoodItem[3] = 3886
	GoodItem[4] = 3093
	GoodItem[5] = 3090
	GoodItem[6] = 430
	GoodItem[7] = 179
	GoodItem[8] =3084
	GoodItem[9] =3085
	GoodItem[10] =0244
	GoodItem[11] =0250
	GoodItem[12] =0253
	GoodItem[13] =0260
	GoodItem[14] =0860
	GoodItem[15] =0861
	GoodItem[16] =0862
	GoodItem[17] =3458
	GoodItem[18] =0247
	GoodItem[19] =0271
	local Good_C = 0
	for Good_C = 0 , 19 , 1 do
		if ItemId == GoodItem[Good_C] then
			local itemname = GetItemName ( ItemId ) 
			local cha_name = GetChaDefaultName ( role ) 
			local message = cha_name.."�򿪾�����ʥ����о�ϲ�ػ��"..itemname  
			Notice ( message )
		end
	end
end



----------------------------------------------------------------------------------��������
function ItemUse_XNLP( role , Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end
	local Now_Day = os.date("%d")
	local Now_Month = os.date("%m")
	local Now_Time = os.date("%H")
	local NowTimeNum = tonumber(Now_Time)
	local NowDayNum = tonumber(Now_Day)
	local NowMonthNum = tonumber(Now_Month)
	local CheckDateNum = NowMonthNum * 10000 + NowDayNum * 100 + NowTimeNum
	local star = 0
	if CheckDateNum >= 10122  and CheckDateNum <= 10123 then
		ItemUse_XINBOX ( role , Item )	
	end
end
function ItemUse_XINBOX ( role , Item )
	local item_type = BoxXiang_BaoZhaBOX
	local item_type_rad = BoxXiang_BaoZhaBOX_Rad
	local item_type_count = BoxXiang_BaoZhaBOX_Count
	local maxitem = BoxXiang_baozhabao_Mxcount						-- �ս���
	local item_quality = BoxXiang_baozhabao_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
		
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬����ʹ��ʧ��")
		UseItemFailed ( role )
		return
	end
	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General		
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1							--������Ʒ���
	for k = 1 , maxitem , 1 do				-- �������ӵ�ǰ׺���
		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break		
		end 
		b = d 
	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 

	GiveItem ( role , 0 , ItemId , ItemCount , item_quality )
	local GoodItem = {}
	GoodItem[0] = 3111
	GoodItem[1] = 3110
	GoodItem[2] = 3112
	GoodItem[3] = 3886
	GoodItem[4] = 3093
	GoodItem[5] = 3090
	GoodItem[6] = 430
	GoodItem[7] = 179
	GoodItem[8] =3084
	GoodItem[9] =3085
	GoodItem[10] =0244
	GoodItem[11] =0250
	GoodItem[12] =0253
	GoodItem[13] =0260
	GoodItem[14] =0860
	GoodItem[15] =0861
	GoodItem[16] =0862
	GoodItem[17] =3458
	GoodItem[18] =0247
	GoodItem[19] =0271
	local Good_C = 0
	for Good_C = 0 , 19 , 1 do
		if ItemId == GoodItem[Good_C] then
			local itemname = GetItemName ( ItemId ) 
			local cha_name = GetChaDefaultName ( role ) 
			local message = cha_name.."ʹ�����ھ�ϲ�ػ��"..itemname  
			Notice ( message )
		end
	end
end

-------------------���걦��
function ItemUse_XNBOX( role , Item )
		
	local lv = GetChaAttr(role, ATTR_LV)
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if lv < 40 then
		SystemNotice( role ,"��ǰ�������40��������ʹ��ʧ�ܣ�")
		UseItemFailed ( role )	
	return
	end
	if Item_CanGet < 1 then
		SystemNotice(role ,"�򿪱��䱳����������Ҫ��1����λ")
		UseItemFailed ( role )
		return
	end
	local el = math.random ( 1, 30000 )
	if  el>=29700 and el<30000 then
	GiveItem ( role , 0 , 2240  , 1 , 4 ) 
	elseif el>=28700 and el<29700 then
	GiveItem ( role , 0 , 2237  , 1 , 4 ) 
	elseif el>=25700 and el<28700 then
	GiveItem ( role , 0 , 2239  , 1 , 4 ) 
	elseif el>=15700 and el<25700 then
	GiveItem ( role , 0 , 2241  , 1 , 4 )
	else
	local EID = math.random ( 2242, 2245 )
	GiveItem ( role , 0 , EID  , 1 , 4 ) 	
	end
end

------------------------------------���ַ�
function ItemUse_SZF ( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <1 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬����Ҫ��1����λ��ʹ�ú����һ�ȯ8ʧ��")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 2306  , 1 , 4)
	local cha_name = GetChaDefaultName ( role ) 
			local message ="��ϲ" ..cha_name.."��ü�ֵ3ǧԪ����ҵ�IPOD��Ʒ" 
			Notice ( message )
	
end
----------------------------------------------ʯͷ��
function ItemUse_ShiTouJi( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <1 then
		SystemNotice(role ,"Ҫ�򿪱�����Ҫ������������1����λ")
		UseItemFailed ( role )
		return
	end
	local r1,r2 =MakeItem ( role , STONE_ID  , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )			
	local Item_newJLID = GetItemID ( Item_newJL )		
	if STONE_LV>8 then
		STONE_LV=8
	end
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_BaoshiLV , STONE_LV )
	local cha_name = GetChaDefaultName ( role )
	LG( "star_stonebox" ,cha_name, STONE_ID , STONE_LV )
end

-------------------��ϰ��ɳ��Lv1
function ItemUse_ShaBao1(role , Item)
local Cha_Boat = 0
      Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end
	local reg = 0
	      reg =IsChaInRegion( role, 2 )
	if reg == 1 then
		SystemNotice( role , "���ڰ�ȫ�����������ΰɣ�" )
		UseItemFailed ( role )
                return
	end
		local x, y = GetChaPos(role)
		local x_move=5
		local y_move=5
		x=x_move+x
		y=y_move+y
		local MonsterID = 937
                local Refresh = 1900000				        
		local life = 1800000						
		local new = CreateChaX( MonsterID , x , y , 145 , Refresh,role )
		SetChaLifeTime( new, life )
end


-------------------��ϰ��ɳ��Lv2
function ItemUse_ShaBao2(role , Item)
local Cha_Boat = 0
      Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end
	local reg = 0
	      reg =IsChaInRegion( role, 2 )
	if reg == 1 then
		SystemNotice( role , "���ڰ�ȫ�����������ΰɣ�" )
		UseItemFailed ( role )
                return
	end
	        local x, y = GetChaPos(role)
		local x_move=5
		local y_move=5
		x=x_move+x
		y=y_move+y
		local MonsterID = 938
                local Refresh = 1900000				        
		local life = 1800000						
		local new = CreateChaX( MonsterID , x , y , 145 , Refresh,role )
		SetChaLifeTime( new, life )
end


-------------------��ϰ��ɳ��Lv3

function ItemUse_ShaBao3(role , Item)
local Cha_Boat = 0
      Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end
	local reg = 0
	      reg =IsChaInRegion( role, 2 )
	if reg == 1 then
		SystemNotice( role , "���ڰ�ȫ�����������ΰɣ�" )
		UseItemFailed ( role )
                return
	end
	        local x, y = GetChaPos(role)
		local x_move=5
		local y_move=5
		x=x_move+x
		y=y_move+y
		local MonsterID = 939
                local Refresh = 1900000				        
		local life = 1800000						
		local new = CreateChaX( MonsterID , x , y , 145 , Refresh , role )
		SetChaLifeTime( new, life )
end


-------------------��ϰ��ɳ��Lv4
function ItemUse_ShaBao4(role , Item)
local Cha_Boat = 0
      Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end
	local reg = 0
	      reg =IsChaInRegion( role, 2 )
	if reg == 1 then
		SystemNotice( role , "���ڰ�ȫ�����������ΰɣ�" )
		UseItemFailed ( role )
                return
	end
		local x, y = GetChaPos(role)
		local x_move=5
		local y_move=5
		x=x_move+x
		y=y_move+y
		local MonsterID = 940
                local Refresh = 1900000				        
		local life = 1800000						
		local new = CreateChaX( MonsterID , x , y , 145 , Refresh,role )
		SetChaLifeTime( new, life )
end


-------------------��ϰ��ɳ��Lv5
function ItemUse_ShaBao5(role , Item)
local Cha_Boat = 0
      Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end
	local reg = 0
	      reg =IsChaInRegion( role, 2 )
	if reg == 1 then
		SystemNotice( role , "���ڰ�ȫ�����������ΰɣ�" )
		UseItemFailed ( role )
                return
	end
		local x, y = GetChaPos(role)
		local x_move=5
		local y_move=5
		x=x_move+x
		y=y_move+y
		local MonsterID = 941
                local Refresh = 1900000				        
		local life = 1800000						
		local new = CreateChaX( MonsterID , x , y , 145 , Refresh,role )
		SetChaLifeTime( new, life )
end

------------------а������Lv1
function ItemUse_FaSheng1(role,Item)
local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end
        local reg = 0
	      reg =IsChaInRegion( role, 2 )
	if reg == 1 then
	      SystemNotice( role , "���ڰ�ȫ���ٻ�ǿ���Ĺ������Ҫ�����" )
	      UseItemFailed ( role )
	return
	end
	local radID = math.random ( 1,8 )
	local MonsterID = 0
--	local Monster_GetID = {}
--		Monster_GetID[1] = 841
--		Monster_GetID[2] = 842
--		Monster_GetID[3] = 843
--		Monster_GetID[4] = 844
--		Monster_GetID[5] = 845
--		Monster_GetID[6] = 846
--		Monster_GetID[7] = 229
--		Monster_GetID[8] = 274
--        

	  if radID == 1   then
	       MonsterID = 841
	       
	  elseif radID == 2 then
	       MonsterID = 842
	           
	  elseif radID == 3 then
	       MonsterID = 843

	  elseif radID == 4 then
	       MonsterID = 843

	  elseif radID == 5 then
	       MonsterID = 845
	  elseif radID == 6 then
	       MonsterID = 846
	  elseif radID == 7 then
	       MonsterID = 229
	  elseif radID == 8 then
	       MonsterID = 274

	  end
		
		local x, y = GetChaPos(role)
		local x_move=5
		local y_move=5
		x=x_move+x
		y=y_move+y
                local Refresh = 3700000			                --����ʱ�䣬�뵥λ
		local life =  3600000					--����ʱ�䣬���뵥λ
		local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
		SetChaLifeTime( new, life )
end
------------------а������Lv2

function ItemUse_FaSheng2(role,Item)
local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end
        local reg = 0
	      reg =IsChaInRegion( role, 2 )
	if reg == 1 then	
	      SystemNotice( role , "���ڰ�ȫ���ٻ�ǿ���Ĺ������Ҫ�����" )
	      UseItemFailed ( role )
	return
	end
	local radID = math.random ( 1,15 )
	local MonsterID = 0
--	local Monster_GetID = {}
--
--                Monster_GetID[1] = 847      
--		Monster_GetID[2] = 848
--		Monster_GetID[3] = 849
--		Monster_GetID[4] = 850
--		Monster_GetID[5] = 851
--		Monster_GetID[6] = 852
--		Monster_GetID[7] = 211
--		Monster_GetID[8] = 706
--		Monster_GetID[9] = 673
--		Monster_GetID[10] = 690
--		Monster_GetID[11] = 691
--		Monster_GetID[12] = 692
--		Monster_GetID[13] = 693
--		Monster_GetID[14] = 106
--		Monster_GetID[15] = 289

		local x, y = GetChaPos(role)
		local x_move=5
		local y_move=5
		x=x_move+x
		y=y_move+y
	  if radID == 1 then
	      MonsterID = 847
	  elseif radID == 2 then
	      MonsterID = 848
	  elseif radID == 3 then 
	      MonsterID = 849
	  elseif radID == 4 then 
	      MonsterID = 850
          elseif radID == 5 then
	      MonsterID = 851
	    elseif radID == 6 then
	      MonsterID = 852
	    elseif radID == 7 then
	      MonsterID = 211
	    elseif radID == 8 then
	      MonsterID = 706
	    elseif radID == 9 then
	      MonsterID = 673
	    elseif radID == 10 then
	      MonsterID = 690
	    elseif radID == 11 then
	      MonsterID = 691
	    elseif radID == 12 then
	      MonsterID = 692
	    elseif radID == 13 then
	      MonsterID = 693
	    elseif radID == 14 then
	      MonsterID = 106
	    elseif radID == 15 then
	      MonsterID = 289
	  end
		local Refresh = 3700000				        --����ʱ�䣬�뵥λ
		local life = 3600000					--����ʱ�䣬���뵥λ
		local new = CreateChaX( MonsterID , x , y , 145 , Refresh,role )
		SetChaLifeTime( new, life )
end
------------------а������Lv3
function ItemUse_FaSheng3(role,Item)
local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end
        local reg = 0
	      reg =IsChaInRegion( role, 2 )
	if reg == 1 then	
	      SystemNotice( role , "���ڰ�ȫ���ٻ�ǿ���Ĺ������Ҫ�����" )
	      UseItemFailed ( role )
	return
	end
	local radID = math.random ( 1,7 )
	local MonsterID = 0
--	local Monster_GetID = {}
--		Monster_GetID[1] = 757
--		Monster_GetID[2] = 679
--		Monster_GetID[3] = 678
--		Monster_GetID[4] = 707
--		Monster_GetID[5] = 708
--		Monster_GetID[6] = 776
--		Monster_GetID[7] = 74
		 
                local x, y = GetChaPos(role)
		local x_move=5
		local y_move=5
		x=x_move+x
		y=y_move+y
	  if radID == 1 then
	       MonsterID = 757       
	  elseif radID == 2 then
	       MonsterID = 679                          
	  elseif radID == 3 then                    
	       MonsterID = 678                           
	  elseif radID == 4 then                    
	       MonsterID = 707      
	  elseif radID == 5 then
	       MonsterID = 708                          
          elseif radID == 6 then
	       MonsterID = 776                           
          elseif radID == 7 then
	       MonsterID = 74   
	  end
		local Refresh = 7300000				        --����ʱ�䣬�뵥λ
		local life = 7200000     				--����ʱ�䣬���뵥λ
		local new = CreateChaX( MonsterID , x , y , 145 , Refresh,role )
		SetChaLifeTime( new, life )
end
------------------а������Lv4
function ItemUse_FaSheng4(role,Item)
local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end
        local reg = 0
	      reg =IsChaInRegion( role, 2 )
	if reg == 1 then	
	      SystemNotice( role , "���ڰ�ȫ���ٻ�ǿ���Ĺ������Ҫ�����" )
	      UseItemFailed ( role )
	return
	end
	local radID = math.random ( 1,5 )
	local MonsterID = 0
	local Refresh = 0
	local life = 0
--	local Monster_GetID = {}
--		Monster_GetID[1] = 952
--		Monster_GetID[2] = 805
--		Monster_GetID[3] = 807
--		Monster_GetID[4] = 786
--		Monster_GetID[5] = 788
--		
                local x, y = GetChaPos(role)
		local x_move=5
		local y_move=5
		x=x_move+x
		y=y_move+y
	  if radID == 1 then
	      MonsterID = 952        
	  elseif radID == 2 then
	      MonsterID = 805                          
	  elseif radID == 3 then                    
	      MonsterID = 807                           
	  elseif radID == 4 then                    
	      MonsterID = 786      
	  elseif radID == 5 then
	      MonsterID = 788                           
	  end
	       
	       if MonsterID == 952 then 
	          Refresh = 10900000
	          life = 10800000
	       else
		  Refresh = 7300000     			        --����ʱ�䣬�뵥λ
		  life = 7200000					--����ʱ�䣬���뵥λ
	       end
	          local new = CreateChaX( MonsterID , x , y , 145 , Refresh ,role)
		SetChaLifeTime( new, life )
end

--------------------а������Lv5
--function ItemUse_FaSheng5(role,Item)
--local Cha_Boat = 0
--	Cha_Boat = GetCtrlBoat ( role )
--	if Cha_Boat ~=  nil then
--		SystemNotice( role , "����ʱ����ʹ��" )
--		UseItemFailed ( role )
--		return
--	end
--        local reg = 0
--	      reg =IsChaInRegion( role, 2 )
--	if reg == 1 then	
--	      SystemNotice( role , "���ڰ�ȫ���ٻ�ǿ���Ĺ������Ҫ�����" )
--	      UseItemFailed ( role )
--	return
--	end
--	local radID = math.random ( 1,30 )
--	local MonsterID = 0
--	local Refresh = 0
--	local life = 0
--	local Monster_GetID = {}
--		Monster_GetID[1] = 229 
--		Monster_GetID[2] = 211
--		Monster_GetID[3] = 99
--		Monster_GetID[4] = 673
--		Monster_GetID[5] = 786
--		Monster_GetID[6] = 757
--		Monster_GetID[7] = 263
--		Monster_GetID[8] = math.random ( 678 , 679 )
--                Monster_GetID[9] = math.random ( 841 , 852 )
--		Monster_GetID[10] = math.random ( 690 , 693 )
--		Monster_GetID[11] = math.random ( 706, 708 )
--		Monster_GetID[12] = 952
--		Monster_GetID[13] = 805
--		Monster_GetID[14] = 807
--		
--                local x, y = GetChaPos(role)
--		local x_move=5
--		local y_move=5
--		x=x_move+x
--		y=y_move+y
--	  if radID == 1 or  radID ==2 then
--	      MonsterID = Monster_GetID[8]        ----------5%
--	  elseif radID == 3 or  radID ==4 then
--	      MonsterID = 786                          
--	  elseif radID == 5 or  radID ==6 then                    
--	      MonsterID = 673                           
--	  elseif radID == 7 or  radID ==8 then                    
--	      MonsterID = 757      
--	  elseif radID == 9 or  radID ==10 then
--	      MonsterID = 263                           ----------10%
--          elseif radID == 11 or  radID ==12 then
--	      MonsterID = 211                           
--          elseif radID == 13 or  radID ==14 then
--	      MonsterID = 99
--	  elseif radID == 15 or  radID ==16 then
--	      MonsterID = 229
--	  elseif radID == 17 or  radID ==18 or  radID ==19 then            ----------15%
--              MonsterID = Monster_GetID[9]
--	  elseif radID == 20 or  radID ==21 then
--	      MonsterID = Monster_GetID[10]
--          elseif radID == 22 or radID ==23 or radID ==24 then
--	      MonsterID = Monster_GetID[11]
--	  elseif radID == 25 or  radID ==26 then
--	      MonsterID = Monster_GetID[12]
--	  elseif radID == 27 or  radID ==28 then
--	      MonsterID = Monster_GetID[13]
--          elseif radID == 29 or  radID ==30 then
--	      MonsterID = Monster_GetID[14]
--	  end
--	       
--	       if MonsterID == Monster_GetID[12] then 
--	          Refresh = 10900000
--	          life = 10800000
--	       else
--		  Refresh = 7300000     			        --����ʱ�䣬�뵥λ
--		  life = 7200000					--����ʱ�䣬���뵥λ
--	       end
--	          local new = CreateChaX( MonsterID , x , y , 145 , Refresh ,role)
--		SetChaLifeTime( new, life )
--end

--ˮ��LV1-----------------------------------------------------------

function ItemUse_SL1 ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		SystemNotice( role , "ֻ���ں���ʹ��" )
		UseItemFailed ( role )
		return
	end
	local reg = 0
	      reg =IsChaInRegion( role, 2 )
	if reg == 1 then
		SystemNotice( role , "��ȫ���޷�ʹ��" )
		UseItemFailed ( role )
                return
	end
	local x,y = GetChaPos(Cha_Boat)
	local x_move=0
	local y_move=0
        local fx_move = math.random ( 1,8 )
	   if  fx_move == 1 then
	       x_move = 1200
	       y_move = 0
	 elseif fx_move == 2 then
	       x_move=1200
	       y_move=-1200
	 elseif fx_move == 3 then
	       x_move=0
	       y_move=-1000
	 elseif fx_move == 4 then
	       x_move=-1000
	       y_move=-1000
	 elseif fx_move == 5 then
	       x_move=1000
	       y_move=0
	 elseif fx_move == 6 then
	       x_move=-1000
	       y_move=1000
	 elseif fx_move == 7 then
	       x_move=0
	       y_move=1000
	 else  x_move=1000
	       y_move=1000
	 end
	      x =x_move + x
	      y =y_move + y

	local MonsterID = 942
	local Refresh = 700000					--����ʱ�䣬�뵥λ
	local life = 600000					--����ʱ�䣬���뵥λ
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh,Cha_Boat )
	SetChaLifeTime( new, life )
end
--ˮ��LV2-----------------------------------------------------------

function ItemUse_SL2 ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		SystemNotice( role , "ֻ���ں���ʹ��" )
		UseItemFailed ( role )
		return
	end
	local reg = 0
	      reg =IsChaInRegion( role, 2 )
	if reg == 1 then
		SystemNotice( role , "��ȫ���޷�ʹ��" )
		UseItemFailed ( role )
                return
	end
	local x,y = GetChaPos(Cha_Boat)
	local x_move=0
	local y_move=0
        local fx_move = math.random ( 1,8 )
	   if  fx_move == 1 then
	       x_move = 1200
	       y_move = 0
	 elseif fx_move == 2 then
	       x_move=1200
	       y_move=-1200
	 elseif fx_move == 3 then
	       x_move=0
	       y_move=-1000
	 elseif fx_move == 4 then
	       x_move=-1000
	       y_move=-1000
	 elseif fx_move == 5 then
	       x_move=1000
	       y_move=0
	 elseif fx_move == 6 then
	       x_move=-1000
	       y_move=1000
	 elseif fx_move == 7 then
	       x_move=0
	       y_move=1000
	 else  x_move=1000
	       y_move=1000
	 end
	      x =x_move + x
	      y =y_move + y
	local MonsterID = 943
	local Refresh = 700000					--����ʱ�䣬�뵥λ
	local life = 600000					--����ʱ�䣬���뵥λ
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh,Cha_Boat )
	SetChaLifeTime( new, life )
end
--ˮ��LV3-----------------------------------------------------------

function ItemUse_SL3 ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		SystemNotice( role , "ֻ���ں���ʹ��" )
		UseItemFailed ( role )
		return
	end
	local reg = 0
	      reg =IsChaInRegion( role, 2 )
	if reg == 1 then
		SystemNotice( role , "��ȫ���޷�ʹ��" )
		UseItemFailed ( role )
                return
	end
	local x,y = GetChaPos(Cha_Boat)
	local x_move=0
	local y_move=0
        local fx_move = math.random ( 1,8 )
	   if  fx_move == 1 then
	       x_move = 1200
	       y_move = 0
	 elseif fx_move == 2 then
	       x_move=1200
	       y_move=-1200
	 elseif fx_move == 3 then
	       x_move=0
	       y_move=-1000
	 elseif fx_move == 4 then
	       x_move=-1000
	       y_move=-1000
	 elseif fx_move == 5 then
	       x_move=1000
	       y_move=0
	 elseif fx_move == 6 then
	       x_move=-1000
	       y_move=1000
	 elseif fx_move == 7 then
	       x_move=0
	       y_move=1000
	 else  x_move=1000
	       y_move=1000
	 end
	      x =x_move + x
	      y =y_move + y
	local MonsterID = 944
	local Refresh = 700000					--����ʱ�䣬�뵥λ
	local life = 600000					--����ʱ�䣬���뵥λ
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh,Cha_Boat )
	SetChaLifeTime( new, life )
end
--ˮ��LV4-----------------------------------------------------------

function ItemUse_SL4 ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		SystemNotice( role , "ֻ���ں���ʹ��" )
		UseItemFailed ( role )
		return
	end
	local reg = 0
	      reg =IsChaInRegion( role, 2 )
	if reg == 1 then
		SystemNotice( role , "��ȫ���޷�ʹ��" )
		UseItemFailed ( role )
                return
	end
	local x,y = GetChaPos(Cha_Boat)
	local x_move=0
	local y_move=0
        local fx_move = math.random ( 1,8 )
	   if  fx_move == 1 then
	       x_move = 1200
	       y_move = 0
	 elseif fx_move == 2 then
	       x_move=1200
	       y_move=-1200
	 elseif fx_move == 3 then
	       x_move=0
	       y_move=-1000
	 elseif fx_move == 4 then
	       x_move=-1000
	       y_move=-1000
	 elseif fx_move == 5 then
	       x_move=1000
	       y_move=0
	 elseif fx_move == 6 then
	       x_move=-1000
	       y_move=1000
	 elseif fx_move == 7 then
	       x_move=0
	       y_move=1000
	 else  x_move=1000
	       y_move=1000
	 end
	      x =x_move + x
	      y =y_move + y

	local MonsterID = 945
	local Refresh = 700000					--����ʱ�䣬�뵥λ
	local life = 600000					--����ʱ�䣬���뵥λ
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh,Cha_Boat )
	SetChaLifeTime( new, life )
end
--ˮ��LV5-----------------------------------------------------------

function ItemUse_SL5 ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		SystemNotice( role , "ֻ���ں���ʹ��" )
		UseItemFailed ( role )
		return
	end
	local reg = 0
	      reg =IsChaInRegion( role, 2 )
	if reg == 1 then
		SystemNotice( role , "��ȫ���޷�ʹ��" )
		UseItemFailed ( role )
                return
	end
	local x,y = GetChaPos(Cha_Boat)
	local x_move=0
	local y_move=0
        local fx_move = math.random ( 1,8 )
	   if  fx_move == 1 then
	       x_move = 1200
	       y_move = 0
	 elseif fx_move == 2 then
	       x_move=1200
	       y_move=-1200
	 elseif fx_move == 3 then
	       x_move=0
	       y_move=-1000
	 elseif fx_move == 4 then
	       x_move=-1000
	       y_move=-1000
	 elseif fx_move == 5 then
	       x_move=1000
	       y_move=0
	 elseif fx_move == 6 then
	       x_move=-1000
	       y_move=1000
	 elseif fx_move == 7 then
	       x_move=0
	       y_move=1000
	 else  x_move=1000
	       y_move=1000
	 end
	      x =x_move + x
	      y =y_move + y

	local MonsterID = 946
	local Refresh = 700000					--����ʱ�䣬�뵥λ
	local life = 600000					--����ʱ�䣬���뵥λ
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh,Cha_Boat )

	SetChaLifeTime( new, life )
end

--�Ա�����LV1-----------------------------------------------------------

function ItemUse_ZBML1 ( role , Item  )
 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( Cha_Boat , "�����ں���ʹ��" )
		UseItemFailed ( Cha_Boat )
		return
	end
	local reg = 0
	      reg =IsChaInRegion( role, 2 )
	if reg == 1 then
		SystemNotice( role , "��ȫ���޷�ʹ��" )
		UseItemFailed ( role )
                return
	end
	
	local x,y = GetChaPos(role)
	local x_move=0
	local y_move=0
        local fx_move = math.random ( 1,8 )
	   if  fx_move == 1 then
	       x_move = 800
	       y_move = 0
	 elseif fx_move == 2 then
	       x_move=800
	       y_move=-800
	 elseif fx_move == 3 then
	       x_move=0
	       y_move=-800
	 elseif fx_move == 4 then
	       x_move=-800
	       y_move=-800
	 elseif fx_move == 5 then
	       x_move=800
	       y_move=0
	 elseif fx_move == 6 then
	       x_move=-800
	       y_move=800
	 elseif fx_move == 7 then
	       x_move=0
	       y_move=800
	 else  x_move=800
	       y_move=800
	 end
	      x =x_move + x
	      y =y_move + y
	local MonsterID = 947
	local Refresh = 700000					--����ʱ�䣬�뵥λ
	local life = 600000					--����ʱ�䣬���뵥λ
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh,role )
	SetChaLifeTime( new, life )
end
--�Ա�����LV2-----------------------------------------------------------

function ItemUse_ZBML2 ( role , Item  )
 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( Cha_Boat , "�����ں���ʹ��" )
		UseItemFailed ( Cha_Boat )
		return
	end
	local reg = 0
	      reg =IsChaInRegion( role, 2 )
	if reg == 1 then
		SystemNotice( role , "��ȫ���޷�ʹ��" )
		UseItemFailed ( role )
                return
	end
	
	local x,y = GetChaPos(role)
	local x_move=0
	local y_move=0
        local fx_move = math.random ( 1,8 )
	   if  fx_move == 1 then
	       x_move = 800
	       y_move = 0
	 elseif fx_move == 2 then
	       x_move=800
	       y_move=-800
	 elseif fx_move == 3 then
	       x_move=0
	       y_move=-800
	 elseif fx_move == 4 then
	       x_move=-800
	       y_move=-800
	 elseif fx_move == 5 then
	       x_move=800
	       y_move=0
	 elseif fx_move == 6 then
	       x_move=-800
	       y_move=800
	 elseif fx_move == 7 then
	       x_move=0
	       y_move=800
	 else  x_move=800
	       y_move=800
	 end
	      x =x_move + x
	      y =y_move + y
	local MonsterID = 948
	local Refresh = 700000					--����ʱ�䣬�뵥λ
	local life = 600000					--����ʱ�䣬���뵥λ
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh,role )
	SetChaLifeTime( new, life )
end
--�Ա�����LV3-----------------------------------------------------------

function ItemUse_ZBML3 ( role , Item  )
 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( Cha_Boat , "�����ں���ʹ��" )
		UseItemFailed ( Cha_Boat )
		return
	end
	local reg = 0
	      reg =IsChaInRegion( role, 2 )
	if reg == 1 then
		SystemNotice( role , "��ȫ���޷�ʹ��" )
		UseItemFailed ( role )
                return
	end
	
	local x,y = GetChaPos(role)
	local x_move=0
	local y_move=0
        local fx_move = math.random ( 1,8 )
	   if  fx_move == 1 then
	       x_move = 800
	       y_move = 0
	 elseif fx_move == 2 then
	       x_move=800
	       y_move=-800
	 elseif fx_move == 3 then
	       x_move=0
	       y_move=-800
	 elseif fx_move == 4 then
	       x_move=-800
	       y_move=-800
	 elseif fx_move == 5 then
	       x_move=800
	       y_move=0
	 elseif fx_move == 6 then
	       x_move=-800
	       y_move=800
	 elseif fx_move == 7 then
	       x_move=0
	       y_move=800
	 else  x_move=800
	       y_move=800
	 end
	      x =x_move + x
	      y =y_move + y
	local MonsterID = 949
	local Refresh = 700000					--����ʱ�䣬�뵥λ
	local life = 600000					--����ʱ�䣬���뵥λ
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh,role )
	SetChaLifeTime( new, life )
end
--�Ա�����LV4-----------------------------------------------------------

function ItemUse_ZBML4 ( role , Item  )
 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( Cha_Boat , "�����ں���ʹ��" )
		UseItemFailed ( Cha_Boat )
		return
	end
	local reg = 0
	      reg =IsChaInRegion( role, 2 )
	if reg == 1 then
		SystemNotice( role , "��ȫ���޷�ʹ��" )
		UseItemFailed ( role )
                return
	end
	
	local x,y = GetChaPos(role)
	local x_move=0
	local y_move=0
        local fx_move = math.random ( 1,8 )
	   if  fx_move == 1 then
	       x_move = 800
	       y_move = 0
	 elseif fx_move == 2 then
	       x_move=800
	       y_move=-800
	 elseif fx_move == 3 then
	       x_move=0
	       y_move=-800
	 elseif fx_move == 4 then
	       x_move=-800
	       y_move=-800
	 elseif fx_move == 5 then
	       x_move=800
	       y_move=0
	 elseif fx_move == 6 then
	       x_move=-800
	       y_move=800
	 elseif fx_move == 7 then
	       x_move=0
	       y_move=800
	 else  x_move=800
	       y_move=800
	 end
	      x =x_move + x
	      y =y_move + y
	local MonsterID = 950
	local Refresh = 700000					--����ʱ�䣬�뵥λ
	local life = 600000					--����ʱ�䣬���뵥λ
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh,role )
	SetChaLifeTime( new, life )
end
--�Ա�����LV5-----------------------------------------------------------

function ItemUse_ZBML5 ( role , Item  )
 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( Cha_Boat , "�����ں���ʹ��" )
		UseItemFailed ( Cha_Boat )
		return
	end
	local reg = 0
	      reg =IsChaInRegion( role, 2 )
	if reg == 1 then
		SystemNotice( role , "��ȫ���޷�ʹ��" )
		UseItemFailed ( role )
                return
	end
	
	local x,y = GetChaPos(role)
	local x_move=0
	local y_move=0
        local fx_move = math.random ( 1,8 )
	   if  fx_move == 1 then
	       x_move = 800
	       y_move = 0
	 elseif fx_move == 2 then
	       x_move=800
	       y_move=-800
	 elseif fx_move == 3 then
	       x_move=0
	       y_move=-800
	 elseif fx_move == 4 then
	       x_move=-800
	       y_move=-800
	 elseif fx_move == 5 then
	       x_move=800
	       y_move=0
	 elseif fx_move == 6 then
	       x_move=-800
	       y_move=800
	 elseif fx_move == 7 then
	       x_move=0
	       y_move=800
	 else  x_move=800
	       y_move=800
	 end
	      x =x_move + x
	      y =y_move + y
	local MonsterID = 951
	local Refresh = 700000					--����ʱ�䣬�뵥λ
	local life = 600000					--����ʱ�䣬���뵥λ
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh,role )
	SetChaLifeTime( new, life )
end

----------------------------------��Ե����
function ItemUse_LoveBox( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 1 then
		SystemNotice(role ,"����Ե����������Ҫ1����λ")
		UseItemFailed ( role )
		return
	end
	local cha_type = GetChaTypeID ( role ) 
	local count = 0
	if cha_type == 3 or cha_type == 4 then 
	       count =1
	end
	if cha_type == 1 or cha_type == 2 then
	       count =2
	end
	local el = math.random ( 1, 35 )
	if   count == 1 then
		if el==35 then
			local r1 = 0
			local r2 = 0	
			r1,r2 =MakeItem ( role , 2902  , 1 , 4 )
			local Item_girl = GetChaItem ( role , 2 , r2 )			--ȡŮ�Ե���ָ��
			local new_el=math.random ( 1, 200 )
			SetItemAttr ( Item_girl , ITEMATTR_VAL_STR , new_el )	
		else
			local el1 = math.random ( 1, 12 )
			if el1==1  then
				GiveItem ( role , 0 , 3343  , 1 , 4 ) ---------------õ�廨
			elseif el1==2 then
				GiveItem ( role , 0 , 3077  , 1 , 4 )------------�����ɿ���	
			else
				local EID = math.random ( 4264, 4273 )----------10������
				GiveItem ( role , 0 , EID  , 1 , 4 )
			end
		end
	end
	local el2= math.random ( 1, 7 )
	if   count == 2 then
			--SystemNotice(role ,"count=="..count)
		if el2==7 then
			local r1 = 0
			local r2 = 0	
				r1,r2 =MakeItem ( role , 2903  , 1 , 4 )
			local Item_boy = GetChaItem ( role , 2 , r2 )			--ȡ���Ե���ָ��
			local new_el=math.random ( 1, 1000 )
			--SystemNotice(role ,"new_el=="..new_el)
			SetItemAttr( Item_boy , ITEMATTR_VAL_STR , new_el )
		else
			local el3 = math.random ( 1, 12 )
			if el3==1  then
				GiveItem ( role , 0 , 3343  , 1 , 4 ) ---------------õ�廨
			elseif el3==2 then
				GiveItem ( role , 0 , 3077  , 1 , 4 )------------�����ɿ���	
			else
				local EID = math.random ( 4264, 4273 )----------10������
				GiveItem ( role , 0 , EID  , 1 , 4 )
			end
		end
	end
end


------------------------������䣺˫�������ݽ�ɫ�������

function ItemUse_MarryBox ( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 4 then
		SystemNotice(role ,"ʹ���������������Ҫ4����λ")
		UseItemFailed ( role )
		return
	end
	local cha_type = GetChaTypeID ( role ) 
	if cha_type == 3  then 
	       GiveItem ( role , 0 , 5244  , 1 , 4 )
	       GiveItem ( role , 0 , 5245  , 1 , 4 )
	       GiveItem ( role , 0 , 5246  , 1 , 4 )
	       GiveItem ( role , 0 , 5247  , 1 , 4 )
	elseif cha_type == 4  then 
	       GiveItem ( role , 0 , 5252  , 1 , 4 )
	       GiveItem ( role , 0 , 5253  , 1 , 4 )
	       GiveItem ( role , 0 , 5254  , 1 , 4 )
	       GiveItem ( role , 0 , 5255  , 1 , 4 )
	elseif cha_type == 1 then 
	       GiveItem ( role , 0 , 5221  , 1 , 4 )
	       GiveItem ( role , 0 , 5222  , 1 , 4 )
	       GiveItem ( role , 0 , 5223  , 1 , 4 )
	elseif cha_type == 2 then 
	       GiveItem ( role , 0 , 5238  , 1 , 4 )
	       GiveItem ( role , 0 , 5239  , 1 , 4 )
	       GiveItem ( role , 0 , 5240  , 1 , 4 )
	end
end
		----------------------------------���˶������
function ItemUse_JRDQBox( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 10 then
		SystemNotice(role ,"�򿪼��˶������������Ҫ10����λ")
		UseItemFailed ( role )
		return
	end
	local cha_type = GetChaTypeID ( role ) 
	 if cha_type ==1 or cha_type ==2 then
	 SystemNotice(role ,"���˶������ֻ��Ů�Խ�ɫ���Դ�")
	UseItemFailed ( role )
		return
	end 
	
	local el = math.random ( 1, 100 )
	if  el>=1 and el<=20 then
	GiveItem ( role , 0 , 3343  , 1 , 4 )----------õ�廨
	elseif  el>=21 and el<=40 then
	GiveItem ( role , 0 , 3354  , 1 , 4 )
	GiveItem ( role , 0 , 3355  , 1 , 4 )
	GiveItem ( role , 0 , 3356  , 1 , 4 )
	GiveItem ( role , 0 , 3357  , 1 , 4 )
	GiveItem ( role , 0 , 3358  , 1 , 4 )
	GiveItem ( role , 0 , 3359  , 1 , 4 )----------������ 
	elseif el>=41 and el<=45 then
	GiveItem ( role , 0 , 937  , 1 , 4 ) -----------��ʹ֮��
	elseif el>=46 and el<=65 then
	GiveItem ( role , 0 , 4264  , 1 , 4 )
	GiveItem ( role , 0 , 4265  , 1 , 4 )
	GiveItem ( role , 0 , 4266  , 1 , 4 )
	GiveItem ( role , 0 , 4267  , 1 , 4 )
	GiveItem ( role , 0 , 4268  , 1 , 4 )
	GiveItem ( role , 0 , 4269  , 1 , 4 )
	GiveItem ( role , 0 , 4270  , 1 , 4 )
	GiveItem ( role , 0 , 4271  , 1 , 4 )
	GiveItem ( role , 0 , 4272  , 1 , 4 )
	GiveItem ( role , 0 , 4273  , 1 , 4 )---------------10������
	elseif el>=66 and el<=75 then
	GiveItem ( role , 0 , 3094  , 3 , 4 )------------Ŭ��������3��
	elseif el>=76 and el<=85 then
	GiveItem ( role , 0 , 855  , 10 , 4 ) -----------����Ӳ��
	elseif el>=86 and el<87 then
	GiveItem ( role , 0 , 1012  , 1 , 4 ) -----------����֮��1��
	elseif el>=87 and el<89 and cha_type == 3  then 
	GiveItem ( role , 0 , 5244  , 1 , 4 )
	GiveItem ( role , 0 , 5245  , 1 , 4 )
	GiveItem ( role , 0 , 5246  , 1 , 4 )
	GiveItem ( role , 0 , 5247  , 1 , 4 ) -----------����װ
	elseif el>=89 and el<=90 and cha_type == 4 then
	GiveItem ( role , 0 , 5252  , 1 , 4 )
	GiveItem ( role , 0 , 5253  , 1 , 4 )
	GiveItem ( role , 0 , 5254  , 1 , 4 )
	GiveItem ( role , 0 , 5255  , 1 , 4 ) -----------����װ
	else
	local EID = math.random ( 1808, 1811 )----------������
	GiveItem ( role , 0 , EID  , 1 , 4 )
	end
end


----------------------------------�ſ��������
function ItemUse_CJDQBox( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 10 then
		SystemNotice(role ,"�򿪲ſ��������������Ҫ10����λ")
		UseItemFailed ( role )
		return
	end
	local cha_type = GetChaTypeID ( role ) 
	 if cha_type ==3 or cha_type ==4 then
		SystemNotice(role ,"�ſ��������ֻ�����Խ�ɫ���Դ�")
		UseItemFailed ( role )
		return
	end
	local el = math.random ( 1, 100 )
	if  el>=1 and el<=20 then
	GiveItem ( role , 0 , 3077  , 1 , 4 )----------�����ɿ���
	elseif  el>=21 and el<=40 then
	GiveItem ( role , 0 , 3354  , 1 , 4 )
	GiveItem ( role , 0 , 3355  , 1 , 4 )
	GiveItem ( role , 0 , 3356  , 1 , 4 )
	GiveItem ( role , 0 , 3357  , 1 , 4 )
	GiveItem ( role , 0 , 3358  , 1 , 4 )
	GiveItem ( role , 0 , 3359  , 1 , 4 )----------������ 
	elseif el>=41 and el<=45 then
	GiveItem ( role , 0 , 0936  , 1 , 4 ) -----------����
	elseif el>=46 and el<=65 then
	GiveItem ( role , 0 , 4264  , 1 , 4 )
	GiveItem ( role , 0 , 4265  , 1 , 4 )
	GiveItem ( role , 0 , 4266  , 1 , 4 )
	GiveItem ( role , 0 , 4267  , 1 , 4 )
	GiveItem ( role , 0 , 4268  , 1 , 4 )
	GiveItem ( role , 0 , 4269  , 1 , 4 )
	GiveItem ( role , 0 , 4270  , 1 , 4 )
	GiveItem ( role , 0 , 4271  , 1 , 4 )
	GiveItem ( role , 0 , 4272  , 1 , 4 )
	GiveItem ( role , 0 , 4273  , 1 , 4 )---------------10������
	elseif el>=66 and el<=75 then
	GiveItem ( role , 0 , 3094  , 3 , 4 )------------Ŭ��������3��
	elseif el>=76 and el<=85 then
	GiveItem ( role , 0 , 855  , 10 , 4 ) -----------����Ӳ��
	elseif el>=86 and el<87 then
	GiveItem ( role , 0 , 0862  , 1 , 4 ) -----------����1��
	elseif el>=87 and el<89 and cha_type == 1  then 
	GiveItem ( role , 0 , 5221  , 1 , 4 )
	GiveItem ( role , 0 , 5222  , 1 , 4 )
	GiveItem ( role , 0 , 5223  , 1 , 4 ) -----------ҹ����װ
	elseif el>=89 and el<=90 and cha_type == 2 then
	GiveItem ( role , 0 , 5238  , 1 , 4 )
	GiveItem ( role , 0 , 5239  , 1 , 4 )
	GiveItem ( role , 0 , 5240  , 1 , 4 )-----------�ڽ�װ
	else
	local EID = math.random ( 1808, 1811 )----------������
	GiveItem ( role , 0 , EID  , 1 , 4 )
	end
end
---------------------------------ϲ��
function ItemUse_XTBOX ( role , Item )
	local item_type = BoxXiang_BaoZhaBOX
	local item_type_rad = BoxXiang_BaoZhaBOX_Rad
	local item_type_count = BoxXiang_BaoZhaBOX_Count
	local maxitem = BoxXiang_baozhabao_Mxcount						-- �ս���
	local item_quality = BoxXiang_baozhabao_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
		
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬ϲ��ʹ��ʧ��")
		UseItemFailed ( role )
		return
	end
	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General		
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1							--������Ʒ���
	for k = 1 , maxitem , 1 do				-- �������ӵ�ǰ׺���
		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break		
		end 
		b = d 
	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 

	GiveItem ( role , 0 , ItemId , ItemCount , item_quality )
	local GoodItem = {}
	GoodItem[0] = 3111
	GoodItem[1] = 3110
	GoodItem[2] = 3112
	GoodItem[3] = 3886
	GoodItem[4] = 3093
	GoodItem[5] = 3090
	GoodItem[6] = 430
	GoodItem[7] = 179
	GoodItem[8] =3084
	GoodItem[9] =3085
	GoodItem[10] =0244
	GoodItem[11] =0250
	GoodItem[12] =0253
	GoodItem[13] =0260
	GoodItem[14] =0860
	GoodItem[15] =0861
	GoodItem[16] =0862
	GoodItem[17] =3458
	GoodItem[18] =0247
	GoodItem[19] =0271
	local Good_C = 0
	for Good_C = 0 , 19 , 1 do
		if ItemId == GoodItem[Good_C] then
			local itemname = GetItemName ( ItemId ) 
			local cha_name = GetChaDefaultName ( role ) 
			local message = cha_name.."ʹ��ϲ�Ǿ�ϲ�ػ��"..itemname  
			Notice ( message )
		end
	end
end

-------------------��������
function ItemUse_HQBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 4 then
		SystemNotice(role ,"�򿪻�������������Ҫ4����λ")
		UseItemFailed ( role )
		return
	end
	local el = math.random ( 1, 100 )
	if  el>=1 and el<=20 then
	GiveItem ( role , 0 , 1012  , 1 , 4 ) -------------����֮��
	elseif el>=21 and el<=40 then
	GiveItem ( role , 0 , 1016  , 1 , 4 ) ---------------Ů��С��
	elseif el>=41 and el<60 then
	GiveItem ( role , 0 , 0333  , 1 , 4 ) ----------------�߼���ʯ�һ�ȯ
	elseif el>=61 and el<=100 then
	GiveItem ( role , 0 , 0273  , 1 , 4 )-----------------һ�Ƚ�	
	end
end

-----------------------------------�������䣺��������ӥ��ʯ������ʯ������֮��Ů��С��

function ItemUse_XYPIGBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 1 then
		SystemNotice(role ,"����������������Ҫ1����λ")
		UseItemFailed ( role )
		return
	end
	local el = math.random ( 1, 100 )
	if  el>=1 and el<=4 then
	GiveItem ( role , 0 , 1012  , 1 , 4 ) -------------����֮��
	elseif el==5  then
	GiveItem ( role , 0 , 1016  , 1 , 4 ) ---------------Ů��С��
	elseif el>=6 and el<=30 then
	GiveItem ( role , 0 , 0861  , 1 , 4 ) ----------------ӥ��ʯ
	elseif el>=31 and el<=60 then
	GiveItem ( role , 0 , 885  , 1 , 4 )-----------------����ʯ
	elseif el>=61 and el<=75 then
	GiveItem ( role , 0 , 0860  , 1 , 4 ) ---------------����ʯ
	elseif el>=76 and el<=88 then
	GiveItem ( role , 0 , 0862  , 1 , 4 ) ----------------����
	elseif el>=89 and el<=100 then
	GiveItem ( role , 0 , 0863  , 1 , 4 )-----------------����
	end
end


-----------------------------ѹ�����ѹ���ֻ���ڳ�Ϧҹ��2��17����23:00--2��18���賿���㣩�򿪲Ż���Ч
----------------------------------------------------------------------------------ѹ���
function ItemUse_YSB( role , Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 1 then
		SystemNotice(role ,"��ѹ���������Ҫ1����λ")
		UseItemFailed ( role )
		return
	end
	local Now_Day = os.date("%d")
	local Now_Month = os.date("%m")
	local Now_Time = os.date("%H")
	local NowTimeNum = tonumber(Now_Time)
	local NowDayNum = tonumber(Now_Day)
	local NowMonthNum = tonumber(Now_Month)
	local CheckDateNum = NowMonthNum * 10000 + NowDayNum * 100 + NowTimeNum
	local star = 0
	if CheckDateNum >= 21723  and CheckDateNum <= 21801 then
		ItemUse_YSBOX ( role , Item )
	else 
		SystemNotice(role ,"��û��ʱ��,����ʹ�úܿ���Ŷ!")
		UseItemFailed ( role )
		return
	end
end
function ItemUse_YSBOX ( role , Item )
	local el = math.random ( 1, 1000 )
	if  el>=1 and el<=5 then
		GiveItem ( role , 0 , 1012  , 1 , 4 ) -------------����֮��        0.5
	elseif el>=6 and el<=10 then
		GiveItem ( role , 0 , 1016  , 1 , 4 ) ---------------Ů��С��       0.5
	elseif el>=11 and el<=20 then
		GiveItem ( role , 0 , 0860  , 1 , 4 ) ---------------����         1
	elseif el>=21 and el<=30 then
		GiveItem ( role , 0 , 0861  , 1 , 4 ) ----------------ӥ��ʯ     1
	elseif el>=31 and el<40 then
		GiveItem ( role , 0 , 0862  , 1 , 4 ) ----------------����       1
	elseif el>=41 and el<=50 then
		GiveItem ( role , 0 , 0863  , 1 , 4 )-----------------����       1
	elseif el>=51 and el<=270 then
		GiveItem ( role , 0 , 855  , 99 , 4 )-----------------����Ӳ��       22
	elseif el>=271 and el<=500 then
		GiveItem ( role , 0 , 0227  , 5 , 4 )-----------------�ػ���������    23
	elseif el>=501 and el<=750 then
		GiveItem ( role , 0 , 3096  , 3 , 4 )-----------------�Ƹ�������3��   25
	elseif el>=751 and el<=1000 then
		GiveItem ( role , 0 , 3094  , 3 , 4 )-----------------Ŭ��������3��   25
	end
end
function ItemUse_Hadisi( role , Item )		----------����˹����
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 4 then
		SystemNotice(role ,"�򿪹���˹����������Ҫ3����λ")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 2817  , 1 , 4 )
	GiveItem ( role , 0 , 2818  , 1 , 4 )
	GiveItem ( role , 0 , 2819  , 1 , 4 )
end
function ItemUse_Anhei( role , Item )		----------���ں���
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 4 then
		SystemNotice(role ,"�򿪰��ں���������Ҫ3����λ")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 2820  , 1 , 4 )
	GiveItem ( role , 0 , 2821  , 1 , 4 )
	GiveItem ( role , 0 , 2822  , 1 , 4 )
end
function ItemUse_Diyu( role , Item )		----------��������
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 4 then
		SystemNotice(role ,"�򿪵�������������Ҫ3����λ")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 2823  , 1 , 4 )
	GiveItem ( role , 0 , 2824  , 1 , 4 )
	GiveItem ( role , 0 , 2825  , 1 , 4 )
end
function ItemUse_Xiuluo( role , Item )		----------��������
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 4 then
		SystemNotice(role ,"����������������Ҫ3����λ")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 2826  , 1 , 4 )
	GiveItem ( role , 0 , 2827  , 1 , 4 )
	GiveItem ( role , 0 , 2828  , 1 , 4 )
end
function ItemUse_Youming( role , Item )	----------��ڤ����
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 4 then
		SystemNotice(role ,"����ڤ����������Ҫ3����λ")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 2829  , 1 , 4 )
	GiveItem ( role , 0 , 2830  , 1 , 4 )
	GiveItem ( role , 0 , 2831  , 1 , 4 )
end
function ItemUse_Minghe( role , Item )		----------ڤ��С��
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 4 then
		SystemNotice(role ,"��ڤ��С��������Ҫ3����λ")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 2832  , 1 , 4 )
	GiveItem ( role , 0 , 2833  , 1 , 4 )
	GiveItem ( role , 0 , 2834  , 1 , 4 )
end
function ItemUse_Sishen( role , Item )		----------�����ʬ��
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 2 then
		SystemNotice(role ,"�������ʬ��������Ҫ1����λ")
		UseItemFailed ( role )
		return
	end
	local job = GetChaAttr(role, ATTR_JOB)
	local lv = GetChaAttr(role, ATTR_LV) 
	local star_rad=math.random ( 1, 2 )
	if lv < 40 then
		SystemNotice(role ,"��ǰ�������40��������ʹ��ʧ�ܣ�")
		UseItemFailed ( role )	
	elseif job == 9 then 
		if star_rad==1 then
			GiveItem ( role , 0 , 2331  , 1 , 4 ) 
		else
			GiveItem ( role , 0 , 2332  , 1 , 4 ) 
		end
	elseif job == 8 then   
		if star_rad==1 then
			GiveItem ( role , 0 , 2333  , 1 , 4 ) 
		else
			GiveItem ( role , 0 , 2334  , 1 , 4 ) 
		end
	elseif job == 12 then 
		local eleven_rad=math.random ( 1, 4 )
		if eleven_rad==1 then
			GiveItem ( role , 0 , 2337  , 1 , 4 ) 
		elseif eleven_rad==2 then
			GiveItem ( role , 0 , 2338  , 1 , 4 ) 
		elseif eleven_rad==3 then
			GiveItem ( role , 0 , 2339  , 1 , 4 ) 
		else
			GiveItem ( role , 0 , 2340  , 1 , 4 ) 
		end
	elseif job == 16 then 
		if star_rad==1 then
			GiveItem ( role , 0 , 2335  , 1 , 4 ) 
		else
			GiveItem ( role , 0 , 2336  , 1 , 4 ) 
		end
	elseif job == 13 then    
		if star_rad==1 then
			GiveItem ( role , 0 , 2341  , 1 , 4 ) 
		else
			GiveItem ( role , 0 , 2342  , 1 , 4 ) 
		end
	elseif job == 14 then    
		if star_rad==1 then
			GiveItem ( role , 0 , 2343  , 1 , 4 ) 
		else
			GiveItem ( role , 0 , 2344  , 1 , 4 ) 
		end
	else 
		SystemNotice(role ,"ְҵ��������ת��ְ�󷽿ɴ򿪣�")
		UseItemFailed ( role )	
	end
end
function ItemUse_Zhenheilong( role , Item )	----------���������
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 5 then
		SystemNotice(role ,"�����������������Ҫ4����λ")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 2367  , 1 , 16 ) 
	GiveItem ( role , 0 , 2368  , 1 , 16 ) 
	GiveItem ( role , 0 , 2369  , 1 , 16 )
        local cha_type = GetChaTypeID ( role )
	if cha_type == 4 then 
		GiveItem ( role , 0 , 2370  , 1 , 16 )		
	end
end
--�����Ĳ��Ʊ
function Jz_Script_4thDy(role, Item )
	local i = CheckBagItem(role,2844)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "�����Ǽ����۵����飬�뱣��100����hp��spŶ")
		UseItemFailed ( role )
		return
	end
------MoveCity���Ӽ������ж�
	local map_name = GetChaMapName ( role )
	if map_name == "prisonisland" then
		SystemNotice ( role , "��ǰ��ͼ���ܴ���" )
		UseItemFailed ( role )
		return
	end
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,2844,1)
			if j == 1 then
				MoveCity(role,"���ձȵ���4��")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end
--���������A
function ItemUse_DathBagA(role, Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 2 then
		SystemNotice(role ,"�����������������Ҫ1����λ")
		UseItemFailed ( role )
		return
	end
	local star_rad=math.random ( 1, 4 )
	if star_rad==4 then
		GiveItem ( role , 0 , 2846  , 1 , 16 ) 
	else
		GiveItem ( role , 0 , 2928  , 1 , 16 ) 
	end
end
--���������B
function ItemUse_DathBagB(role, Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 2 then
		SystemNotice(role ,"�����������������Ҫ1����λ")
		UseItemFailed ( role )
		return
	end
	local star_rad=math.random ( 1, 4 )
	if star_rad==4 then
		GiveItem ( role , 0 , 2847  , 1 , 16 ) 
	else
		GiveItem ( role , 0 , 2929  , 1 , 16 ) 
	end
end
--���������C
function ItemUse_DathBagC(role, Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 2 then
		SystemNotice(role ,"�����������������Ҫ1����λ")
		UseItemFailed ( role )
		return
	end
	local star_rad=math.random ( 1, 4 )
	if star_rad==4 then
		GiveItem ( role , 0 , 2848  , 1 , 16 ) 
	else
		GiveItem ( role , 0 , 2927  , 1 , 16 ) 
	end
end
--���������D
function ItemUse_DathBagD(role, Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 2 then
		SystemNotice(role ,"�����������������Ҫ1����λ")
		UseItemFailed ( role )
		return
	end
	local star_rad=math.random ( 1, 4 )
	if star_rad==4 then
		GiveItem ( role , 0 , 2849  , 1 , 16 ) 
	else
		GiveItem ( role , 0 , 2927  , 1 , 16 ) 
	end
end
--���������E
function ItemUse_DathBagE(role, Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 2 then
		SystemNotice(role ,"�����������������Ҫ1����λ")
		UseItemFailed ( role )
		return
	end
	local star_rad=math.random ( 1, 4 )
	if star_rad==4 then
		GiveItem ( role , 0 , 2850  , 1 , 16 ) 
	else
		GiveItem ( role , 0 , 2929  , 1 , 16 ) 
	end
end
--���������F
function ItemUse_DathBagF(role, Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 2 then
		SystemNotice(role ,"�����������������Ҫ1����λ")
		UseItemFailed ( role )
		return
	end
	local star_rad=math.random ( 1, 4 )
	if star_rad==4 then
		GiveItem ( role , 0 , 2851  , 1 , 16 ) 
	else
		GiveItem ( role , 0 , 2931  , 1 , 16 ) 
	end
end
--���������G
function ItemUse_DathBagG(role, Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 2 then
		SystemNotice(role ,"�����������������Ҫ1����λ")
		UseItemFailed ( role )
		return
	end
	local star_rad=math.random ( 1, 4 )
	if star_rad==4 then
		GiveItem ( role , 0 , 2852  , 1 , 16 ) 
	else
		GiveItem ( role , 0 , 2932  , 1 , 16 ) 
	end
end
--���������H
function ItemUse_DathBagH(role, Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 2 then
		SystemNotice(role ,"�����������������Ҫ1����λ")
		UseItemFailed ( role )
		return
	end
	local star_rad=math.random ( 1, 4 )
	if star_rad==4 then
		GiveItem ( role , 0 , 2930  , 1 , 16 ) 
	else
		GiveItem ( role , 0 , 2930  , 1 , 16 ) 
	end
end
----ת����
function ItemUse_ZSCard(role, Item )
	local i = CheckBagItem(role,2941)
	local k = ChaIsBoat(role)
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"ʹ��ת����������Ҫ1����λ")
		UseItemFailed ( role )
		return
	end
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,2941,1)
			if j == 1 then
				SystemNotice(role, "ʹ��ת�����ɹ��������ڿ��Ժ��Աߵ�ת����ʹ�Ի�ֱ�ӽ���ת��")
				GiveItem ( role , 0 , 2235 , 1 , 42)
				GoTo( role,  1750 , 909 , "jialebi")
				return
			end
		end
	else
		UseItemsFailed ( role )
	end
		
end
-----------���������ػ����ٻ�ȯ--------------------
function ItemUse_SummonBigBOSS(role, Item )
local map_name_role = GetChaMapName ( role )
local Cha_Boat = 0
      Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( Cha_Boat , "�����ں���ʹ��" )
		UseItemFailed ( Cha_Boat )
		return
	end
	local reg = 0
	      reg =IsChaInRegion( role, 2 )
	if reg == 1 then
		SystemNotice( role , "��ȫ���޷�ʹ��" )
		UseItemFailed ( role )
                return
	end
   if  map_name_role == "guildwar" then
	local x,y = GetChaPos(role)
	if GetChaGuildID(role) <= 100 and GetChaGuildID(role) > 0 then
	local MonsterID = 1007
	local Refresh = 1300					--����ʱ�䣬�뵥λ
	local life = 1200000					--����ʱ�䣬���뵥λ
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh,role )
	SetChaLifeTime( new, life )
	SetChaSideID(new,1)
	end

	if GetChaGuildID(role) > 100 and GetChaGuildID(role) <= 200 then
	local MonsterID = 1008
	local Refresh = 1300					--����ʱ�䣬�뵥λ
	local life = 1200000					--����ʱ�䣬���뵥λ
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh,role )
	SetChaLifeTime( new, life )
	SetChaSideID(new,2)
	end
   elseif map_name_role == "guildwar2" then 

    local x,y = GetChaPos(role)
	if GetChaGuildID(role) <= 100 and GetChaGuildID(role) > 0 then
	local MonsterID = 1007
	local Refresh = 1300					--����ʱ�䣬�뵥λ
	local life = 1200000					--����ʱ�䣬���뵥λ
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh,role )
	SetChaLifeTime( new, life )
	SetChaSideID(new,1)
	end

	if GetChaGuildID(role) > 100 and GetChaGuildID(role) <= 200 then
	local MonsterID = 1008
	local Refresh = 1300					--����ʱ�䣬�뵥λ
	local life = 1200000					--����ʱ�䣬���뵥λ
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh,role )
	SetChaLifeTime( new, life )
	SetChaSideID(new,2)
	end
    else 
        SystemNotice( role , "���ٻ�ȯֻ����ʥս��ͼ��ʹ��" )
        UseItemFailed ( role )
        return
    end

end


----------------------�����Ʊ---------------------
function ItemUse_moveDX(role, Item)
local i = CheckBagItem(role,2986)
--local k = ChaIsBoat(role)
 local Cha_Boat = 0
       Cha_Boat = GetCtrlBoat ( role )
	 if Cha_Boat ~=  nil then
		SystemNotice( Cha_Boat , "�����ں���ʹ��" )
		UseItemFailed ( Cha_Boat )
		return
	 end
	 local reg = 0
	      reg =IsChaInRegion( role, 2 )
	 if reg == 1 then
		SystemNotice( role , "��ȫ���޷�ʹ��" )
		UseItemFailed ( role )
                return
	 end


 if GetChaGuildID(role) == 0 then
    SystemNotice( role , "��û�й����޷�ʹ�ô˻�Ʊ" )
    UseItemFailed ( role )
    return
 end

local map_name_role = GetChaMapName ( role )
if map_name_role =="guildwar" then
	 if GetChaGuildID(role) <= 100 and GetChaGuildID(role) > 0 and map_name_role =="guildwar" then
			if i > 0 then
				local j = DelBagItem(role,2986,1)
				if j == 1 then
					MoveTo( role,  305, 87,  "guildwar" )
					return
				end
			end
								 

	 elseif GetChaGuildID(role) > 100 and GetChaGuildID(role) <= 200 and map_name_role =="guildwar" then
			 if i > 0 then
				local j = DelBagItem(role,2986,1)
				if j == 1 then
					MoveTo( role,  309, 539,  "guildwar" )
					return
				end
			end
	 
	 else
			UseItemFailed ( role )
			    
	 end

elseif map_name_role =="guildwar2" then

	 if GetChaGuildID(role) <= 100 and GetChaGuildID(role) > 0 and map_name_role =="guildwar2"  then
		       if i > 0 then
				local j = DelBagItem(role,2986,1)
				if j == 1 then
					MoveTo( role,  305, 87,  "guildwar2" )
					return
				end
			end
			
	 elseif GetChaGuildID(role) > 100 and GetChaGuildID(role) <= 200 and map_name_role =="guildwar2"  then
			 if i > 0 then
				local j = DelBagItem(role,2986,1)
				if j == 1 then
					 MoveTo( role,  309, 539,  "guildwar2" )
					return
				end
			end
	 
	 else
			UseItemFailed ( role )
		
   
         end

else
        SystemNotice( role , "�˻�Ʊֻ����ʥս��ͼ��ʹ��" )
        UseItemFailed ( role )
        return
   end        
end


------------------------���򴬳����䣺˫�������ݽ�ɫ�������

function ItemUse_CZBox ( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 4 then
		SystemNotice(role ,"ʹ�ð����װ����������Ҫ4����λ")
		UseItemFailed ( role )
		return
	end
	local cha_type = GetChaTypeID ( role ) 
	if cha_type == 3  then 
	     
	       GiveItem ( role , 0 , 5349  , 1 , 4 )
	       GiveItem ( role , 0 , 5350  , 1 , 4 )
	       GiveItem ( role , 0 , 5351  , 1 , 4 )
	elseif cha_type == 4  then 
	       GiveItem ( role , 0 , 5352  , 1 , 4 )
	       GiveItem ( role , 0 , 5353  , 1 , 4 )
	       GiveItem ( role , 0 , 5354  , 1 , 4 )
	       GiveItem ( role , 0 , 5355  , 1 , 4 )
	elseif cha_type == 1 then 
	      
	       GiveItem ( role , 0 , 5341  , 1 , 4 )
	       GiveItem ( role , 0 , 5342  , 1 , 4 )
	       GiveItem ( role , 0 , 5343  , 1 , 4 )
	elseif cha_type == 2 then 
	       
	       GiveItem ( role , 0 , 5345  , 1 , 4 )
	       GiveItem ( role , 0 , 5346  , 1 , 4 )
	       GiveItem ( role , 0 , 5347  , 1 , 4 )
	end
end


------------------------���˽�����----------2953----------itemeffect
function ItemUse_Foolish ( role , Item )
	local charLv=Lv ( role )
	local Cha_Boat = 0
		Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end
	local Exp_el=GetChaAttr (  role , ATTR_CEXP )----------��ǰ�ȼ�����
	local dif_exp_thalf_c = (DEXP[charLv+1] - DEXP[charLv])*0.03+Exp_el ----------------
		SetChaAttrI( role , ATTR_CEXP , dif_exp_thalf_c )-------------
		--SystemNotice( role , "ʹ�����˽ڵ������3%����ֵ" )--------------
end
---------------------------�ٻ������ػ���
function ItemUse_BYSHJZ ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end
	local star = 0
	star =IsChaInRegion( role, 2 )
	if star == 1 then
		SystemNotice( role , "��ɫ��ǰ���ڰ�ȫ���������ٻ�����" )
		UseItemFailed ( role )
		return
	end
	local x, y = GetChaPos(role)
	local MonsterID = 1009
	local Refresh = 3700					--����ʱ�䣬�뵥λ
	local life = 3600000					--����ʱ�䣬���뵥λ
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaLifeTime( new, life )
end

--------˫��ʿתְ������
function Sk_Script_Wyz ( role , Item ) 											
	local sk_add = SK_WYZ 
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--���ܵȼ��Ϸ��Լ��
--		return 
--	end 
	if form_sklv >= 1  then 
		UseItemFailed ( role )  
		return 
	end
	local zs_exp = GetChaAttr ( role , ATTR_CSAILEXP )
	if zs_exp <= 0 then
		UseItemFailed ( role )  
		return 
	end
	a = AddChaSkill ( role , sk_add, 1 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

--------�޽�ʿתְ������
function Sk_Script_Bsj ( role , Item ) 											
	local sk_add = SK_BSJ 
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--���ܵȼ��Ϸ��Լ��
--		return 
--	end 
	if form_sklv >= 1  then 
		UseItemFailed ( role )  
		return 
	end
	local zs_exp = GetChaAttr ( role , ATTR_CSAILEXP )
	if zs_exp <= 0 then
		UseItemFailed ( role )  
		return 
	end
	a = AddChaSkill ( role , sk_add, 1 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

--------��ӡʦתְ������
function Sk_Script_Emzz ( role , Item ) 											
	local sk_add = SK_EMZZ 
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--���ܵȼ��Ϸ��Լ��
--		return 
--	end 
	if form_sklv >= 1  then 
		UseItemFailed ( role )  
		return 
	end 
	local zs_exp = GetChaAttr ( role , ATTR_CSAILEXP )
	if zs_exp <= 0 then
		UseItemFailed ( role )  
		return 
	end
	a = AddChaSkill ( role , sk_add, 1 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 
--------ʥְ��תְ������
function Sk_Script_Sssp ( role , Item ) 											
	local sk_add = SK_SSSP 
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--���ܵȼ��Ϸ��Լ��
--		return 
--	end 
	if form_sklv >= 1  then 
		UseItemFailed ( role )  
		return 
	end
	local zs_exp = GetChaAttr ( role , ATTR_CSAILEXP )
	if zs_exp <= 0 then
		UseItemFailed ( role )  
		return 
	end
	local zs_exp = GetChaAttr ( role , ATTR_CSAILEXP )
	if zs_exp <= 0 then
		UseItemFailed ( role )  
		return 
	end
	a = AddChaSkill ( role , sk_add, 1 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

--------����ʿתְ������
function Sk_Script_Cyn ( role , Item ) 											
	local sk_add = SK_CYN 
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--���ܵȼ��Ϸ��Լ��
--		return 
--	end 
	if form_sklv >= 1  then 
		UseItemFailed ( role )  
		return 
	end 
	local zs_exp = GetChaAttr ( role , ATTR_CSAILEXP )
	if zs_exp <= 0 then
		UseItemFailed ( role )  
		return 
	end
	a = AddChaSkill ( role , sk_add, 1 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

--------�ѻ���תְ������
function Sk_Script_Hlp ( role , Item ) 											
	local sk_add = SK_HLP 
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--���ܵȼ��Ϸ��Լ��
--		return 
--	end 
	if form_sklv >= 1  then 
		UseItemFailed ( role )  
		return 
	end 
	local zs_exp = GetChaAttr ( role , ATTR_CSAILEXP )
	if zs_exp <= 0 then
		UseItemFailed ( role )  
		return 
	end
	a = AddChaSkill ( role , sk_add, 1 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 
-------------------------Ʒ�Ƶ���
function ItemUse_NiceCake (role, Item )

	local HonorBook_Num = 0
	local HonorBook_Num = CheckBagItem( role,3849 )
		if HonorBook_Num < 1 then
		SystemNotice( role , "������û������֤֮")
		UseItemFailed ( role )
		return 0
		end
	local Book2 =  GetChaItem2 ( role , 2 , 3849 )
	local HonorPoint=GetItemAttr ( Book2 , ITEMATTR_VAL_STR)
	local el_fame = GetChaAttr(role, ATTR_FAME)
	
		if HonorPoint < 27000 and el_fame < 99990001 then
		local HonorPoint_X=HonorPoint+3000
		SetItemAttr ( Book2 , ITEMATTR_VAL_STR,HonorPoint_X)
		
		local fame_resume = 9999
		el_fame = el_fame + fame_resume
		SetCharaAttr(el_fame, role, ATTR_FAME) 

		else 
		SystemNotice( role , "�����ϵ�����ֵ������ֵ���ߣ���Ʒ�Ƶ����Ѿ�������������")
		UseItemFailed ( role )
		end
end

-------------------QQ����
--function ItemUse_QQBOX( role , Item )
	
	--local cha_name = GetChaDefaultName ( role )
	--local cha_num = GetActName(role)	
	--local lv = GetChaAttr(role, ATTR_LV)
	--local Item_CanGet = GetChaFreeBagGridNum ( role )
	--if lv < 40 then
		--SystemNotice( role ,"��ǰ�������40��������ʹ��ʧ�ܣ�")
		--UseItemFailed ( role )	
	--return
	--end
	
	--local BorG = 0 
	--local cha_type = GetChaTypeID ( role ) 
	--if cha_type == 1  or cha_type == 2 then 
		--BorG=1
	--elseif cha_type == 3  or cha_type == 4 then
		--BorG=2
	--end
	
	--LG( "QQ" , "���"..cha_name.."��QQ����", "��"..BorG.."�Ž�ɫ","�˺���"..cha_num)
--end

----------------------------------------------�α�����
--function ItemUse_JBBOX( role , Item )
--	local Item_CanGet = GetChaFreeBagGridNum ( role )
--	if Item_CanGet <1 then
--		SystemNotice(role ,"Ҫ�򿪱�����Ҫ������������1����λ")
--		UseItemFailed ( role )
--		return
--	end
--	local r1,r2 =MakeItem ( role , 3078  , 1 , 4 )-------���
--	local Item_el = GetChaItem ( role , 2 , r2 )			--ȡ�¾������ָ��
--
--	local item_old = GetChaItem2 ( role , 2 , 3066 )---------����ʹ��֤��
--
--	local old_month = GetItemAttr(item_old, ITEMATTR_VAL_STA)		-------------�� 	
--	local old_day = GetItemAttr(item_old, ITEMATTR_VAL_STR)			-------------��  
--	local old_hour = GetItemAttr(item_old, ITEMATTR_VAL_CON)			-------------ʱ   
--	local old_miniute = GetItemAttr(item_old, ITEMATTR_VAL_DEX)		-------------��   
--	
--	--SystemNotice ( role , "old_month=="..old_month )
--	--SystemNotice ( role , "old_day=="..old_day )       
--	--SystemNotice ( role , "old_hour=="..old_hour )    
--	--SystemNotice ( role , "old_miniute=="..old_miniute)
--
--	SetItemAttr(Item_el, ITEMATTR_VAL_STA, old_month )	-------------�� 	
--	SetItemAttr(Item_el, ITEMATTR_VAL_STR, old_day )		-------------��  
--	SetItemAttr(Item_el, ITEMATTR_VAL_CON, old_hour )		-------------ʱ 
--	SetItemAttr(Item_el, ITEMATTR_VAL_DEX, old_miniute )	-------------��
--
--	local old_month2 = GetItemAttr(Item_el, ITEMATTR_VAL_STA)		-------------�� 	
--	local old_day2 = GetItemAttr(Item_el, ITEMATTR_VAL_STR)			-------------��  
--	local old_hour2 = GetItemAttr(Item_el, ITEMATTR_VAL_CON)			-------------ʱ   
--	local old_miniute2 = GetItemAttr(Item_el, ITEMATTR_VAL_DEX)		-------------�� 
--
--	--SystemNotice ( role , "old_month2=="..old_month2 )
--	--SystemNotice ( role , "old_day2=="..old_day2 )       
--	--SystemNotice ( role , "old_hour2=="..old_hour2 )    
--	--SystemNotice ( role , "old_miniute2=="..old_miniute2)
--
--	SynChaKitbag(role,13)
--
--end
--
--
--------------------�����̻�
--function ItemUse_LMYH ( role , Item )
--	local Cha_Boat = GetCtrlBoat ( role )
--	if Cha_Boat ~=  nil then
--		SystemNotice( role , "����ʱ����ʹ��" )
--		UseItemFailed ( role )
--		return
--	end
--end
--
--------------------�����̻�
--function ItemUse_JXYH ( role , Item )
--	local Cha_Boat = GetCtrlBoat ( role )
--	if Cha_Boat ~=  nil then
--		SystemNotice( role , "����ʱ����ʹ��" )
--		UseItemFailed ( role )
--		return
--	end
--end
--
--------------------�����̻�
--function ItemUse_HHLH ( role , Item )
--	local Cha_Boat = GetCtrlBoat ( role )
--	if Cha_Boat ~=  nil then
--		SystemNotice( role , "����ʱ����ʹ��" )
--		UseItemFailed ( role )
--		return
--	end
--end
--
---------����ʹ��֤��
--function Jz_Script_jtsyzs (role, Item )
--	--SystemNotice ( role , "���������" )
--	local Now_Day = os.date("%d")
--	local Now_Month = os.date("%m")
--	local Now_Time = os.date("%H")
--	--SystemNotice ( role , "�޹���" )
--	local NowMniuteNum= os.date("%M")	-------------��
--	local NowMiniuteNum= tonumber(Now_Miniute)	 	-------------��
--	local NowTimeNum = tonumber(Now_Time)
--	--SystemNotice ( role , "�ٺٺٺ�" )
--	local NowDayNum = tonumber(Now_Day)
--	--SystemNotice ( role , "��������" )
--	local NowMonthNum = tonumber(Now_Month)
--	--SystemNotice ( role , "�ǺǺǺ�" )
--	local CheckDateNum = NowMonthNum * 1000000 + NowDayNum * 10000 + NowTimeNum*100+NowMniuteNum
--	--SystemNotice ( role , "����ʱ��"..CheckDateNum)
--	--local old_type = GetItemAttr(item_old, ITEMATTR_MAXENERGY)	----------------��ʽ����
--
--	local item_old = GetChaItem2 ( role , 2 , 3078 )---------���
--	local old_month = GetItemAttr(item_old, ITEMATTR_VAL_STA)		-------------�� 	
--	local old_day = GetItemAttr(item_old, ITEMATTR_VAL_STR)			-------------��  
--	local old_hour = GetItemAttr(item_old, ITEMATTR_VAL_CON)			-------------ʱ 
--	local old_miniute = GetItemAttr(item_old, ITEMATTR_VAL_DEX)  
--	 
--
--	local CheckBook1Num = old_month * 1000000 + old_day * 10000 + old_hour*100+old_miniute
--	--SystemNotice ( role , "CheckBook1Num"..CheckBook1Num)
--	local CheckBook2Num = old_month * 1000000 + old_day * 10000 + (old_hour+2)*100+old_miniute
--	--SystemNotice ( role , "CheckBook2Num"..CheckBook2Num)
--	
--	if CheckDateNum < CheckBook1Num then
--		SystemNotice ( role , "��Ҫ�ż�Ŷ�����û�û���ţ�����ݱ�ע��ʱ��ʹ��Ŷ" )
--		UseItemFailed ( role )
--		return
--	end
--	--SystemNotice ( role , "����")
--	if CheckDateNum > CheckBook2Num then
--		SystemNotice ( role , "��Ҫ�μӵĵ����Ѿ������ˣ��ÿ�ϧŶ" )
--		UseItemFailed ( role )
--		return
--	end
--	--SystemNotice ( role , "�ְ�")
--
--	local i = CheckBagItem(role,3066)----����ʹ��֤��
--	local k = ChaIsBoat(role)
--	local hp = Hp(role)
--	local mxhp = Mxhp(role)
--	local sp = Sp(role)
--	local mxsp = Mxsp(role)
--	if sp < mxsp or hp < mxhp then 
--		SystemNotice (role, "�ι۽����Ǽ����۵����飬�뱣��100����hp��spŶ")
--		UseItemFailed ( role )
--		return
--	end 
--	if k == 0 then
--		if i > 0 then
--			local j = DelBagItem(role,3066,1)-------����ʹ��֤��
--			--if j == 1 and old_type=1 then
--				--MoveCity(role,"��ʽ����")
--			--elseif	j == 1 and old_type=2 then
--				--MoveCity(role,"��ʽ����")
--			if j == 1 then-------------elseif	j == 1 and old_type=3 then
--				MoveCity(role,"��ʽ����")
--				--SystemNotice ( role , "үү")
--			--elseif	j == 1 and old_type=4 then
--				--MoveCity(role,"��ʽ����")
--			end
--		end
--	else
--		UseItemFailed ( role )
--	end
--	--SystemNotice ( role , "����")	
--end
--
--
--------------���
--function Jz_Script_qj (role, Item )
--	--SystemNotice ( role , "���������" )
--	local Now_Day = os.date("%d")
--	local Now_Month = os.date("%m")
--	local Now_Time = os.date("%H")
--	--SystemNotice ( role , "�޹���" )
--	local NowMniuteNum= os.date("%M")	-------------��
--	local NowMiniuteNum= tonumber(Now_Miniute)	 	-------------��
--	local NowTimeNum = tonumber(Now_Time)
--	--SystemNotice ( role , "�ٺٺٺ�" )
--	local NowDayNum = tonumber(Now_Day)
--	--SystemNotice ( role , "��������" )
--	local NowMonthNum = tonumber(Now_Month)
--	--SystemNotice ( role , "�ǺǺǺ�" )
--	local CheckDateNum = NowMonthNum * 1000000 + NowDayNum * 10000 + NowTimeNum*100+NowMniuteNum
--	--SystemNotice ( role , "����ʱ��"..CheckDateNum)
--	--local old_type = GetItemAttr(item_old, ITEMATTR_MAXENERGY)	----------------��ʽ����
--
--	local item_old = GetChaItem2 ( role , 2 , 3078 )-----���
--	local old_month = GetItemAttr(item_old, ITEMATTR_VAL_STA)		-------------�� 	
--	local old_day = GetItemAttr(item_old, ITEMATTR_VAL_STR)			-------------��  
--	local old_hour = GetItemAttr(item_old, ITEMATTR_VAL_CON)			-------------ʱ 
--	local old_miniute = GetItemAttr(item_old, ITEMATTR_VAL_DEX)  
--	 
--
--	local CheckBook1Num = old_month * 1000000 + old_day * 10000 + old_hour*100+old_miniute
--	--SystemNotice ( role , "CheckBook1Num"..CheckBook1Num)
--	local CheckBook2Num = old_month * 1000000 + old_day * 10000 + (old_hour+2)*100+old_miniute
--	--SystemNotice ( role , "CheckBook2Num"..CheckBook2Num)
--	
--	if CheckDateNum < CheckBook1Num then
--		SystemNotice ( role , "��Ҫ�ż�Ŷ�����û�û���ţ�����ݱ�ע��ʱ��ʹ��Ŷ" )
--		UseItemFailed ( role )
--		return
--	end
--	--SystemNotice ( role , "����")
--	if CheckDateNum > CheckBook2Num then
--		SystemNotice ( role , "��Ҫ�μӵĵ����Ѿ������ˣ��ÿ�ϧŶ" )
--		UseItemFailed ( role )
--		return
--	end
--	--SystemNotice ( role , "�ְ�")
--
--	local i = CheckBagItem(role,3078)
--	local k = ChaIsBoat(role)
--	local hp = Hp(role)
--	local mxhp = Mxhp(role)
--	local sp = Sp(role)
--	local mxsp = Mxsp(role)
--	if sp < mxsp or hp < mxhp then 
--		SystemNotice (role, "�ι۽����Ǽ����۵����飬�뱣��100����hp��spŶ")
--		UseItemFailed ( role )
--		return
--	end 
--	if k == 0 then
--		if i > 0 then
--			local j = DelBagItem(role,3078,1)
--			--if j == 1 and old_type=1 then
--				--MoveCity(role,"��ʽ����")
--			--elseif	j == 1 and old_type=2 then
--				--MoveCity(role,"��ʽ����")
--			if j == 1 then-------------elseif	j == 1 and old_type=3 then
--				MoveCity(role,"��ʽ����")
--				--SystemNotice ( role , "үү")
--			--elseif	j == 1 and old_type=4 then
--				--MoveCity(role,"��ʽ����")
--			end
--		end
--	else
--		UseItemFailed ( role )
--	end
--	--SystemNotice ( role , "����")	
--end
-----------------------------�ٻ�����������
--function ItemUse_FLOWER ( role , Item  )
--	local Cha_Boat = 0
--	Cha_Boat = GetCtrlBoat ( role )
--	if Cha_Boat ~=  nil then
--		SystemNotice( role , "����ʱ����ʹ��" )
--		UseItemFailed ( role )
--		return
--	end
--
--	local el = 0
--	el =IsChaInRegion( role, 2 )
--	if el == 1 then
--		SystemNotice( role , "��ɫ��ǰ���ڰ�ȫ���������ٻ�����" )
--		UseItemFailed ( role )
--		return
--	end
--	local x, y = GetChaPos(role)
--	local MonsterID = 1037
--	local Refresh = 7300					--����ʱ�䣬�뵥λ
--	local life = 7200000					--����ʱ�䣬���뵥λ
--	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
--	SetChaLifeTime( new, life )
--end
--
--
-----------------------------������Ϸȯ
--function ItemUse_QQ ( role , Item  )
--	local Cha_Boat = 0
--	Cha_Boat = GetCtrlBoat ( role )
--	if Cha_Boat ~=  nil then
--		SystemNotice( role , "����ʱ����ʹ��" )
--		UseItemFailed ( role )
--		return
--	end
--
--	local el = 0
--	el =IsChaInRegion( role, 2 )
--	if el == 1 then
--		SystemNotice( role , "��ɫ��ǰ���ڰ�ȫ���������ٻ�����" )
--		UseItemFailed ( role )
--		return
--	end
--	local x, y = GetChaPos(role)
--	local MonsterID = 1036
--	local Refresh = 60					--����ʱ�䣬�뵥λ
--	local life = 7200000					--����ʱ�䣬���뵥λ
--	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
--	SetChaLifeTime( new, life )
--end
----��ʽ���òι���Ʊ
--function Jz_Script_yszs (role, Item )
--	
--	local Now_Week = os.date("%w")
--	local Now_WeekNum = tonumber(Now_Week)
--	local Now_Time = os.date("%H")
--	local Now_TimeNum = tonumber(Now_Time)
--	local Now_Miniute= os.date("%M")	
--	local Now_Miniute= tonumber(Now_Miniute)
--	local CheckDateNum = Now_WeekNum * 10000 + Now_TimeNum * 100+Now_Miniute
--
--	if CheckDateNum < 11700  then
--		SystemNotice ( role , "��Ҫ�ż�Ŷ�����û�û���ţ�����ÿ����һ����17�㵽17��30��֮��ʹ��Ŷ" )
--		UseItemFailed ( role )
--		return
--	end
--	
--	if CheckDateNum > 11730 then
--		SystemNotice ( role , "�����Ѿ������ˣ�����ֻ�еȴ��¸�����һ��������" )
--		UseItemFailed ( role )
--		return
--	end
--
--	local i = CheckBagItem(role,3024)
--	local k = ChaIsBoat(role)
--	local hp = Hp(role)
--	local mxhp = Mxhp(role)
--	local sp = Sp(role)
--	local mxsp = Mxsp(role)
--	if sp < mxsp or hp < mxhp then 
--		SystemNotice (role, "�ι۽����Ǽ����۵����飬�뱣��100����hp��spŶ")
--		UseItemFailed ( role )
--		return
--	end 
--	if k == 0 then
--		if i > 0 then
--			local j = DelBagItem(role,3024,1)
--			if j == 1 then
--				MoveCity(role,"��ʽ����")
--				return
--			end
--		end
--	else
--		UseItemFailed ( role )
--	end
--		
--end
-------------------------------��������ֻ���ڣ�ÿ����\����18:00--22��10���򿪲Ż���Ч
--
--function ItemUse_RedBox( role , Item )
--	local Cha_Boat = GetCtrlBoat ( role )
--	if Cha_Boat ~=  nil then
--		SystemNotice( role , "����ʱ����ʹ��" )
--		UseItemFailed ( role )
--		return
--	end
--	local Item_CanGet = GetChaFreeBagGridNum ( role )
--	 if Item_CanGet < 1 then
--		SystemNotice(role ,"��ѹ���������Ҫ1����λ")
--		UseItemFailed ( role )
--		return
--	end
--	local now_week= os.date("%w")		-------------���ڼ���ʮ���ƣ� 
--	local now_hour= os.date("%H")		-------------ʱ 
--	local now_miniute= os.date("%M")	-------------��
--	now_week= tonumber(now_week)
--	now_hour= tonumber(now_hour)		
--	now_miniute= tonumber(now_miniute)
--	local CheckDateNum = now_hour*100 +now_miniute
--	--Notice("CheckDateNum = "..CheckDateNum)
--      if now_week==6 or now_week==0 then
--		
--		if 1800<=CheckDateNum and  CheckDateNum<=2210 then
--		--SystemNotice( role , "ʹ��YSBOX" )
--		ItemUse_YSBOX ( role , Item )
--		else 
--		SystemNotice(role ,"��û��ʱ��,����ʹ�úܿ���Ŷ!")
--		UseItemFailed ( role )
--		return
--		end
--	end
--end

------------------------�����ƽ���(kokora��statelv�������µ��ƹ�)
function ItemUse_TJQ ( role , Item )
	local lv= GetChaAttr(role, ATTR_LV) 
	if lv >70 then
		SystemNotice ( role , "70�����Ͻ�ɫ����ʹ�ø������ƽ���" )
		UseItemFailed ( role )
		return	
	end
	local statelv = 5
	local ChaStateLv = GetChaStateLv ( role , STATE_SBJYGZ )
	if ChaStateLv > statelv then
		SystemNotice ( role , "��ʹ�ø��߼�����������,���Ժ�����" )
		UseItemFailed ( role )
		return
	end
	local statetime = 1800
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_SBJYGZ , statelv , statetime )
	else
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end
end

------------------------��ţ�������䣺˫�������ݽ�ɫ�������

function ItemUse_JNCZBox ( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 4 then
		SystemNotice(role ,"ʹ�ý�ţ��װ����������Ҫ4����λ")
		UseItemFailed ( role )
		return
	end
	local cha_type = GetChaTypeID ( role ) 
	if cha_type == 3  then 
	     
	       GiveItem ( role , 0 , 5364  , 1 , 4 )
	       GiveItem ( role , 0 , 5365  , 1 , 4 )
	       GiveItem ( role , 0 , 5366  , 1 , 4 )
	       GiveItem ( role , 0 , 5367  , 1 , 4 )
	elseif cha_type == 4  then 

	       GiveItem ( role , 0 , 5368  , 1 , 4 )
	       GiveItem ( role , 0 , 5369  , 1 , 4 )
	       GiveItem ( role , 0 , 5370  , 1 , 4 )
	       GiveItem ( role , 0 , 5371  , 1 , 4 )
	elseif cha_type == 1 then 
	      
	       GiveItem ( role , 0 , 5356  , 1 , 4 )
	       GiveItem ( role , 0 , 5357  , 1 , 4 )
	       GiveItem ( role , 0 , 5358  , 1 , 4 )
	       GiveItem ( role , 0 , 5359  , 1 , 4 )
	elseif cha_type == 2 then 

	       GiveItem ( role , 0 , 5360  , 1 , 4 )
	       GiveItem ( role , 0 , 5361  , 1 , 4 )
	       GiveItem ( role , 0 , 5362  , 1 , 4 )
	       GiveItem ( role , 0 , 5363  , 1 , 4 )
	end
end


---------------------------�ٻ���ţ�ػ���
function ItemUse_JNSHZ ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end
	local el = 0
	el =IsChaInRegion( role, 2 )
	if el == 1 then
		SystemNotice( role , "��ɫ��ǰ���ڰ�ȫ���������ٻ�����" )
		UseItemFailed ( role )
		return
	end
	local x, y = GetChaPos(role)
	local MonsterID = 1038
	local Refresh = 10900					--����ʱ�䣬�뵥λ
	local life = 3600000					--����ʱ�䣬���뵥λ
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaLifeTime( new, life )
end

--Ŵ����
function ItemUse_NMZ ( role , Item )
	SystemNotice(role ,"����Ʒ����ù��ö�����ʧЧ,��Ҫ̫ʧ��Ŷ")
  	--local hp = GetChaAttr(role, ATTR_HP) 
	--local mxhp = GetChaAttr(role,ATTR_MXHP) 	
	--hp = hp + 0.35*mxhp 

	--if hp > mxhp then 
		--hp = mxhp 
	--end 
	--SetCharaAttr(hp, role, ATTR_HP)

end


------------------------------��ɳ�գ������ٶ���15�������нϴ�����Ч��
function ItemUse_DSZ ( role , Item )
	SystemNotice(role ,"����Ʒ����ù��ö�����ʧЧ,��Ҫ̫ʧ��Ŷ")
	--local statelv = 1
	--local statetime = 900
	--local Cha_Boat = 0
	--Cha_Boat = GetCtrlBoat ( role )
	--if Cha_Boat ==  nil then
		--Rem_State_StarUnnormal ( role )----------
		--AddState( role , role , STATE_DSZ , statelv , statetime )
	--else
		--SystemNotice( role , "����ʱ����ʹ��" )
		--UseItemFailed ( role )
		--return
	--end
end

-------------------------------������: ��������10����������60��
function ItemUse_DHZ ( role , Item )
	SystemNotice(role ,"����Ʒ����ù��ö�����ʧЧ,��Ҫ̫ʧ��Ŷ")
	--local statelv = 1
	--local statetime = 600
	--local Cha_Boat = 0
	--Cha_Boat = GetCtrlBoat ( role )

	--if Cha_Boat ==  nil then
		--AddState( role , role , STATE_DHZ , statelv , statetime )
	--else
		--SystemNotice( role , "����ʱ����ʹ��" )
		--UseItemFailed ( role )
		--return
	--end
end
----------------------------��������
function ItemUse_WQZZ ( role , Item )
	SystemNotice(role ,"����Ʒ����ù��ö�����ʧЧ,��Ҫ̫ʧ��Ŷ")
	--local el_exp = GetChaAttr(role, ATTR_CEXP)
	--local exp1=el_exp
	--local charLv=Lv ( role )
	--local exp_resume = 50
	--local	exp_resume_1= 1
	--el_exp = el_exp + exp_resume
	-- if charLv>=80 then	
		--el_exp = exp1 + exp_resume_1
	--end
	--SetCharaAttr(el_exp, role, ATTR_CEXP) 
end 

---------------------------�ٻ���������
function ItemUse_HLHT ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end
	local el = 0
	el =IsChaInRegion( role, 2 )
	if el == 1 then
		SystemNotice( role , "��ɫ��ǰ���ڰ�ȫ���������ٻ�����" )
		UseItemFailed ( role )
		return
	end
	local x, y = GetChaPos(role)
	local MonsterID = 952---------������Ӱ
	local Refresh = 9000					--����ʱ�䣬�뵥λ
	local life =9000000					--����ʱ�䣬���뵥λ
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaLifeTime( new, life )
end

---------------------------�ٻ�����սʿͳ��
function ItemUse_XYZSTL ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end
	local el = 0
	el =IsChaInRegion( role, 2 )
	if el == 1 then
		SystemNotice( role , "��ɫ��ǰ���ڰ�ȫ���������ٻ�����" )
		UseItemFailed ( role )
		return
	end
	local x, y = GetChaPos(role)
	local MonsterID = 786---------����սʿͳ��
	local Refresh = 9000					--����ʱ�䣬�뵥λ
	local life = 9000000					--����ʱ�䣬���뵥λ
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaLifeTime( new, life )
end

---------------------------�ٻ�а�����������
function ItemUse_XETZQZ ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end
	local el = 0
	el =IsChaInRegion( role, 2 )
	if el == 1 then
		SystemNotice( role , "��ɫ��ǰ���ڰ�ȫ���������ٻ�����" )
		UseItemFailed ( role )
		return
	end
	local x, y = GetChaPos(role)
	local MonsterID = 788---------а�����������
	local Refresh = 9000					--����ʱ�䣬�뵥λ
	local life = 9000000					--����ʱ�䣬���뵥λ
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaLifeTime( new, life )
end

---------------------------�ٻ������������㷢
function ItemUse_HDCZ ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end
	local el = 0
	el =IsChaInRegion( role, 2 )
	if el == 1 then
		SystemNotice( role , "��ɫ��ǰ���ڰ�ȫ���������ٻ�����" )
		UseItemFailed ( role )
		return
	end
	local x, y = GetChaPos(role)
	local MonsterID = 757---------�����������㷢
	local Refresh = 9000					--����ʱ�䣬�뵥λ
	local life = 9000000					--����ʱ�䣬���뵥λ
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaLifeTime( new, life )
end

---------------------------�ٻ�����
function ItemUse_HY ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end
	local el = 0
	el =IsChaInRegion( role, 2 )
	if el == 1 then
		SystemNotice( role , "��ɫ��ǰ���ڰ�ȫ���������ٻ�����" )
		UseItemFailed ( role )
		return
	end
	local x, y = GetChaPos(role)
	local MonsterID = 761---------����
	local Refresh = 9000					--����ʱ�䣬�뵥λ
	local life = 9000000					--����ʱ�䣬���뵥λ
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaLifeTime( new, life )
end
----------������ĸ������
function ItemUse_XingYunBox( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"������Ҫ1������")
		UseItemFailed ( role )
		return
	end
	local el=math.random ( 1, 241920 )
	if el==1 then
		GiveItem ( role , 0 , 0961, 1 , 4  ) -------------c	
	elseif el==2 then
		GiveItem ( role , 0 , 0969, 1 , 4  ) -----------k		
	elseif el>=3 and el<=4 then
		GiveItem ( role , 0 , 0973, 1 , 4  )	-------------p	
	elseif el>=5 and el<=6 then
		GiveItem ( role , 0 , 0980, 1 , 4  )	-------------v
	elseif el>=7 and el<=8 then
		GiveItem ( role , 0 , 0979, 1 , 4  )	-------------u
	else
		local el=math.random ( 0959, 0984 )
		if el==0961 or el==0969 or el==0973 or el==0980 or el==0979 then
			GiveItem ( role , 0 , 0959  , 1 , 4  ) 
		else 
			GiveItem ( role , 0 , el , 1 , 4  ) 			
		end
	end
end

------------------------����������(��statelv�����˵���kokora)
function ItemUse_CJZTQ ( role , Item )
	local lv= GetChaAttr(role, ATTR_LV) 
	if lv >49 then
		SystemNotice ( role , "49�����Ͻ�ɫ����ʹ�øó���������" )
		UseItemFailed ( role )
		return	
	end
	local statelv = 6
	local ChaStateLv = GetChaStateLv ( role , STATE_SBJYGZ )
	if ChaStateLv > statelv then
		SystemNotice ( role , "��ʹ�ø��߼�����������,���Ժ�����" )
		UseItemFailed ( role )
		return
	end
	local statetime = 900
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_SBJYGZ , statelv , statetime )
	else
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end
end

----------���ͻԻͲ�Ʊ
function ItemUse_SJHHCP( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"������Ҫ1������")
		UseItemFailed ( role )
		return
	end
	local star=math.random ( 1, 1000000 )
	local el=math.random ( 1, 100 )

	--SystemNotice(role ,"star=="..star)
	--SystemNotice(role ,"el=="..el)
	if  star==1 then
		if el>=1 and el<=40 then
		GiveItem ( role , 0 , 1115  , 1 , 4  )
		elseif el>=41 and el<=65 then
		GiveItem ( role , 0 , 1117  , 1 , 4  )
		elseif el>=65 and el<=90 then
		GiveItem ( role , 0 , 1118  , 1 , 4  )
		elseif el>=91 and el<=100 then
		GiveItem ( role , 0 , 1116  , 1 , 4  ) 
		end
	elseif star>1 and star<=9999 then
		GiveItem ( role , 0 , 0273, 1 , 4  ) 
	elseif star>=10000 and star<170000 then
		GiveItem ( role , 0 , 2312, 30 , 4  ) 
	elseif star>=170000 and star<=1000000 then
		GiveItem ( role , 0 , 3877, 1 , 4  ) 
	end
end


----------�������޲�Ʊ
function ItemUse_ZZNSCP( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"������Ҫ1������")
		UseItemFailed ( role )
		return
	end
	local star=math.random ( 1, 1000000 )
	local el=math.random ( 1, 100 )

	--SystemNotice(role ,"star=="..star)
	--SystemNotice(role ,"el=="..el)
	if  star==1 then
		if el>=1 and el<=40 then
		GiveItem ( role , 0 , 2552  , 1 , 4  )
		elseif el>=41 and el<=65 then
		GiveItem ( role , 0 , 2550  , 1 , 4  )
		elseif el>=65 and el<=90 then
		GiveItem ( role , 0 , 2551  , 1 , 4  )
		elseif el>=91 and el<=100 then
		GiveItem ( role , 0 , 2549  , 1 , 4  ) 
		end
	elseif star>1 and star<=9999 then
		GiveItem ( role , 0 , 0273, 1 , 4  ) 
	elseif star>=10000 and star<170000 then
		GiveItem ( role , 0 , 2312, 30 , 4  ) 
	elseif star>=170000 and star<=1000000 then
		GiveItem ( role , 0 , 3877, 1 , 4  ) 
	end
end

----------�桤������Ʊ
function ItemUse_ZHLCP( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"������Ҫ1������")
		UseItemFailed ( role )
		return
	end
	local star=math.random ( 1, 1000000 )
	local el=math.random ( 1, 100 )

	--SystemNotice(role ,"star=="..star)
	--SystemNotice(role ,"el=="..el)
	if  star==1 then
		if el>=1 and el<=40 then
		GiveItem ( role , 0 , 2370  , 1 , 4  )
		elseif el>=41 and el<=65 then
		GiveItem ( role , 0 , 2368  , 1 , 4  )
		elseif el>=65 and el<=90 then
		GiveItem ( role , 0 , 2369  , 1 , 4  )
		elseif el>=91 and el<=100 then
		GiveItem ( role , 0 , 2367  , 1 , 4  ) 
		end
	elseif star>1 and star<=9999 then
		GiveItem ( role , 0 , 0273, 1 , 4  ) 
	elseif star>=10000 and star<170000 then
		GiveItem ( role , 0 , 2312, 30 , 4  ) 
	elseif star>=170000 and star<=1000000 then
		GiveItem ( role , 0 , 3877, 1 , 4  ) 
	end
end




----------����ת����Ʊ------rockҪ��
function ItemUse_JSZSCP( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"������Ҫ1������")
		UseItemFailed ( role )
		return
	end
	local star=math.random ( 1, 1000 )

	if  star==1 then
		GiveItem ( role , 0 , 2941, 1 , 4  ) 
		local cha_name = GetChaDefaultName ( role ) 
		local message = "���"..cha_name.."��Ʒ����,�򿪾���ת����Ʊ��ϲ�ػ��1��ת����." 
		Notice ( message )
	elseif star>1 and star<=10 then
		GiveItem ( role , 0 , 3016, 1 , 4  ) 
		local cha_name = GetChaDefaultName ( role ) 
		local message = "���"..cha_name.."��Ʒ����,�򿪾���ת����Ʊ��ϲ�ػ��1�ź��������ٻ���." 
		Notice ( message )
	elseif star>=11 and star<190 then
		GiveItem ( role , 0 , 0992, 1 , 4  ) 
	elseif star>=190 and star<=1000 then
		GiveItem ( role , 0 , 3885, 1 , 4  ) 
	end
end
-------------------ף������
function ItemUse_ZFBZ( role , Item )
	local statelv = 1
	local statetime = 15
	AddState( role , role , STATE_CZZX , statelv , statetime )
end
------------------------�ɳ����
function ItemUse_CZKC ( role , Item )
	local Cha_Boat = 0
	local charLv=Lv ( role )
	local Exp_star=GetChaAttr (  role , ATTR_CEXP )----------��ǰ�ȼ�����
	local dif_exp_thalf_c = (DEXP[charLv+1] - DEXP[charLv])*0.01+Exp_star
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end
	if charLv<86 then
		SystemNotice( role , "86�����½�ɫ����ʹ��" )
		UseItemFailed ( role )
		return
	end
	if charLv>=86 then
		SetChaAttrI( role , ATTR_CEXP , dif_exp_thalf_c )
        end
end
------------------------˫�Ӵ������䣺˫�������ݽ�ɫ�������

function ItemUse_SZCZBox ( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 4 then
		SystemNotice(role ,"ʹ��˫�ӿ�װ����������Ҫ4����λ")
		UseItemFailed ( role )
		return
	end
	local cha_type = GetChaTypeID ( role ) 
	if cha_type == 3  then 
	     
	       GiveItem ( role , 0 , 5380  , 1 , 4 )
	       GiveItem ( role , 0 , 5381  , 1 , 4 )
	       GiveItem ( role , 0 , 5382  , 1 , 4 )
	       GiveItem ( role , 0 , 5383  , 1 , 4 )
	elseif cha_type == 4  then 

	       GiveItem ( role , 0 , 5384  , 1 , 4 )
	       GiveItem ( role , 0 , 5385  , 1 , 4 )
	       GiveItem ( role , 0 , 5386  , 1 , 4 )
	       GiveItem ( role , 0 , 5387  , 1 , 4 )
	elseif cha_type == 1 then 
	      
	       GiveItem ( role , 0 , 5372  , 1 , 4 )
	       GiveItem ( role , 0 , 5373  , 1 , 4 )
	       GiveItem ( role , 0 , 5374  , 1 , 4 )
	       GiveItem ( role , 0 , 5375  , 1 , 4 )
	elseif cha_type == 2 then 

	       GiveItem ( role , 0 , 5376  , 1 , 4 )
	       GiveItem ( role , 0 , 5377  , 1 , 4 )
	       GiveItem ( role , 0 , 5378  , 1 , 4 )
	       GiveItem ( role , 0 , 5379  , 1 , 4 )
	end
end



---------------------------�ٻ�˫���ػ���
function ItemUse_SZSHZ ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end
	local el = 0
	el =IsChaInRegion( role, 2 )
	if el == 1 then
		SystemNotice( role , "��ɫ��ǰ���ڰ�ȫ���������ٻ�����" )
		UseItemFailed ( role )
		return
	end
	local x, y = GetChaPos(role)
	local MonsterID = 1039
	local Refresh = 10900					--����ʱ�䣬�뵥λ
	local life = 3600000					--����ʱ�䣬���뵥λ
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaLifeTime( new, life )
end


----------��ҵ֤��ʹ��
function ItemUse_byzm ( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"������Ҫ1������")
		UseItemFailed ( role )
		return
	end
	local cha_name = GetChaDefaultName ( role ) 
	local star=math.random ( 1, 100 )
	SystemNotice(role ,"star=="..star)
	if star<=5 then
		GiveItem ( role , 0 , 1028  , 1 , 4  )
		local message = cha_name.."�򿪱�ҵ֤�龪ϲ�ػ�� 1��Ħ����ʯ" 
		Notice ( message )
	elseif star>=6 and star<=20 then
		GiveItem ( role , 0 , 885, 1 , 4  ) 
		local message1 = cha_name.."�򿪱�ҵ֤�龪ϲ�ػ�� 1�ž���ʯ" 
		Notice ( message1 )
	elseif star>=21 and star<=50 then
		GiveItem ( role , 0 , 3039, 5 , 4  ) 
		local message2 = cha_name.."�򿪱�ҵ֤�龪ϲ�ػ�� 5�������ƽ���" 
		Notice ( message2 )
	else
		GiveItem ( role , 0 , 227, 10 , 4  )
		local message3 = cha_name.."�򿪱�ҵ֤�龪ϲ�ػ�� 10���ػ���������" 
		Notice ( message3 )
	end
end
------------------------��ѧ�������˫�������ݽ�ɫ�������

function ItemUse_kxdlb ( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 4 then
		SystemNotice(role ,"ʹ�ÿ�ѧ�����������Ҫ4����λ")
		UseItemFailed ( role )
		return
	end
	local cha_type = GetChaTypeID ( role ) 
	if cha_type == 3  then 
	       GiveItem ( role , 0 , 5396  , 1 , 4 )
	       GiveItem ( role , 0 , 5397  , 1 , 4 )
	       GiveItem ( role , 0 , 5398  , 1 , 4 )
	       GiveItem ( role , 0 , 5399  , 1 , 4 )
	elseif cha_type == 4  then 
	       GiveItem ( role , 0 , 5400  , 1 , 4 )
	       GiveItem ( role , 0 , 5401  , 1 , 4 )
	       GiveItem ( role , 0 , 5402  , 1 , 4 )
	       GiveItem ( role , 0 , 5403  , 1 , 4 )
	elseif cha_type == 1 then 
	       GiveItem ( role , 0 , 5388  , 1 , 4 )
	       GiveItem ( role , 0 , 5389  , 1 , 4 )
	       GiveItem ( role , 0 , 5390  , 1 , 4 )
	       GiveItem ( role , 0 , 5391  , 1 , 4 )
	elseif cha_type == 2 then 
	       GiveItem ( role , 0 , 5392  , 1 , 4 )
	       GiveItem ( role , 0 , 5393  , 1 , 4 )
	       GiveItem ( role , 0 , 5394  , 1 , 4 )
	       GiveItem ( role , 0 , 5395  , 1 , 4 )
	end
end


-------------------------------ʤ������
function ItemUse_SLBox ( role , Item )
	local a = math.random ( 1 , 100 )
	local Item_ID = 0
	if a >= 1 and a <= 50 then
		Item_ID = 1012
	elseif a > 50 and a <= 80 then
		Item_ID = 271
	else
		Item_ID = 885
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 1 then
		SystemNotice(role ,"ʹ��ʤ������������Ҫ1����λ")
		UseItemFailed ( role )
		return
	else
		GiveItem ( role , 0 , Item_ID , 1 , 4 )
	end
end

--------------------------------65BOSSװ����
function ItemUse_65BBBox ( role , Item )
	local job = GetChaAttr( role, ATTR_JOB) --ȡְҵ
        local cha_type = GetChaTypeID ( role )
	if job == 0 then
		SystemNotice ( role , "ֻ��һת���ϵĽ�ɫ�ſ���ʹ�ñ�����")
		UseItemFailed ( role )
		return
	else
		if job == 12 or job == 2 then		--���˻�ѻ�
			GiveItem( role , 0 , 780  , 1 , 4 )
		elseif job == 9	then			--˫��
			GiveItem( role , 0 , 769  , 1 , 4 )
		elseif job == 16 or job == 4 then	--ð�ջ򺽺�
			GiveItem( role , 0 , 806  , 1 , 4 )
		elseif job == 8	then			--�޽�
			GiveItem( role , 0 , 766  , 1 , 4 )
		elseif job == 13 or job == 5 then	--ʥְ��ҩʦ
			GiveItem( role , 0 ,792  , 1 , 4 )
		elseif job == 14 then			--��ӡ
			GiveItem( role , 0 , 798  , 1 , 4 )
		elseif job == 1 then
			if cha_type == 1 then
				GiveItem( role , 0 , 769  , 1 , 4 )
			elseif cha_type == 2 then
				GiveItem( role , 0 , 766  , 1 , 4 )
			end
		end
	
	end
end


---------------------��з�������䣺˫�������ݽ�ɫ�������

function ItemUse_JXBox ( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 4 then
		SystemNotice(role ,"ʹ�þ�з��װ����������Ҫ4����λ")
		UseItemFailed ( role )
		return
	end
	local cha_type = GetChaTypeID ( role ) 
	if cha_type == 3  then 
	     
	       GiveItem ( role , 0 , 5464  , 1 , 4 )
	       GiveItem ( role , 0 , 5465  , 1 , 4 )
	       GiveItem ( role , 0 , 5466  , 1 , 4 )
	       GiveItem ( role , 0 , 5467  , 1 , 4 )
	elseif cha_type == 4  then 

	       GiveItem ( role , 0 , 5468  , 1 , 4 )
	       GiveItem ( role , 0 , 5469  , 1 , 4 )
	       GiveItem ( role , 0 , 5470  , 1 , 4 )
	       GiveItem ( role , 0 , 5471  , 1 , 4 )
	elseif cha_type == 1 then 
	      
	       GiveItem ( role , 0 , 5456  , 1 , 4 )
	       GiveItem ( role , 0 , 5457  , 1 , 4 )
	       GiveItem ( role , 0 , 5458  , 1 , 4 )
	       GiveItem ( role , 0 , 5459  , 1 , 4 )
	elseif cha_type == 2 then 

	       GiveItem ( role , 0 , 5460  , 1 , 4 )
	       GiveItem ( role , 0 , 5461  , 1 , 4 )
	       GiveItem ( role , 0 , 5462  , 1 , 4 )
	       GiveItem ( role , 0 , 5463  , 1 , 4 )
	end
end

---------------------------�ٻ���з�ػ���
function ItemUse_JXSHZ ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end
	local el = 0
	el =IsChaInRegion( role, 2 )
	if el == 1 then
		SystemNotice( role , "��ɫ��ǰ���ڰ�ȫ���������ٻ�����" )
		UseItemFailed ( role )
		return
	end
	local x, y = GetChaPos(role)
	local MonsterID = 1040
	local Refresh = 10900					--����ʱ�䣬�뵥λ
	local life = 3600000					--����ʱ�䣬���뵥λ
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaLifeTime( new, life )
end


--------------------------------------------------kokora--------------------------------------------------
--------------------------------����ʮ�»֮ëзʳ��Ч��(��statelv�����˵���)
function ItemUse_littlecrab ( role , Item )
	local lv= GetChaAttr(role, ATTR_LV) 
	if lv >86 then
		SystemNotice ( role , "86�����Ͻ�ɫ����ʹ�ã�" )
		UseItemFailed ( role )
		return	
	end

	local statelv = 5
	local ChaStateLv = GetChaStateLv ( role , STATE_SBJYGZ )
	
	if ChaStateLv > statelv then
		SystemNotice ( role , "��ʹ�ø��ߵȼ���ͬ����Ʒ�����Ժ�����" )
		UseItemFailed ( role )
		return
	end
	local statetime = 120
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_SBJYGZ , statelv , statetime )
	else
		AddState( Cha_Boat , Cha_Boat , STATE_SBJYGZ , statelv , statetime )
	end
	SystemNotice ( role ,"���ܵ�ʳ��ëз��Ч��" )
end


--------------------------------����ʮ�»֮��բзʳ��Ч��(��statelv�����˵���)
function ItemUse_bigcrab ( role , Item )
	local lv= GetChaAttr(role, ATTR_LV) 
	if lv >86 then
		SystemNotice ( role , "86�����Ͻ�ɫ����ʹ�ã�" )
		UseItemFailed ( role )
		return	
	end

	local statelv = 7
	local ChaStateLv = GetChaStateLv ( role , STATE_SBJYGZ )
	
	if ChaStateLv > statelv then
		SystemNotice ( role , "��ʹ�ø��ߵȼ���ͬ����Ʒ�����Ժ�����" )
		UseItemFailed ( role )
		return
	end
	local statetime = 120
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_SBJYGZ , statelv , statetime )
	else
		AddState( Cha_Boat , Cha_Boat , STATE_SBJYGZ , statelv , statetime )
	end
	SystemNotice ( role ,"���ܵ�ʳ�ô�բз��Ч��" )
end

--------------------------------����ʮ�»֮з��ʳ��Ч��
function ItemUse_babycrab ( role , Item )  
	local el_exp = GetChaAttr(role, ATTR_CEXP)
	local exp1=el_exp
	local charLv=Lv ( role )
	local exp_resume = 1000
	local	exp_resume_1= 20
	el_exp = el_exp + exp_resume
	 if charLv>=80 then	
		el_exp = exp1 + exp_resume_1
	end
	SetCharaAttr(el_exp, role, ATTR_CEXP) 
end 
--------------------------------����ʮ�»֮з��ʳ��Ч��
function ItemUse_kingcrab ( role , Item )
	local Cha_Boat = 0
	local charLv=Lv ( role )
	local dif_exp_one = DEXP[charLv+1]
	local dif_exp_three = DEXP[charLv+3]
	local dif_exp_five = DEXP[charLv+5]
	local Exp_star=GetChaAttr (  role , ATTR_CEXP )----------��ǰ�ȼ�����
	local dif_exp_half = (DEXP[charLv+1] - DEXP[charLv])*0.5 +  Exp_star +10
	local dif_exp_thalf = (DEXP[charLv+1] - DEXP[charLv])*0.3  +  Exp_star + 10
	local dif_exp_thalf_b = dif_exp_thalf - DEXP[charLv+1]
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	elseif charLv>=1 and charLv<=9 then
		SetChaAttrI( role , ATTR_CEXP , dif_exp_five )
	elseif charLv>=10 and charLv<=29 then
			SetChaAttrI( role , ATTR_CEXP , dif_exp_three )
	elseif charLv>=30 and charLv<=59 then
			SetChaAttrI( role , ATTR_CEXP , dif_exp_one )
	elseif charLv>=60 and charLv<=75 then
			SetChaAttrI( role , ATTR_CEXP , dif_exp_half )
	elseif charLv>=76 and charLv<=85 and charLv~=79  then
			SetChaAttrI( role , ATTR_CEXP , dif_exp_thalf )
	elseif charLv==79 and dif_exp_thalf_b<=0 then 
			SetChaAttrI( role , ATTR_CEXP , dif_exp_thalf )
	elseif charLv==79 and dif_exp_thalf_b>0 then 
			dif_exp_thalf = dif_exp_thalf_b*0.02 + DEXP[charLv+1]
			SetChaAttrI( role , ATTR_CEXP , dif_exp_thalf )
	elseif charLv>=86 then
		SystemNotice( role , "������߲���ʹ��" )
		UseItemFailed ( role )
		return
	end
end


------------------------------------------------kokora--------------------------------------------------
----------��ʹ����
function ItemUse_TSBox( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"������Ҫ1������")
		UseItemFailed ( role )
		return
	end
	local cha_name = GetChaDefaultName ( role ) 
	local star=math.random ( 1, 100 )
	--SystemNotice(role ,"star=="..star)
	if star<=20 then
		GiveItem ( role , 0 , 3457  , 1 , 4  )
		local message = cha_name.."����ʹ���ؾ�ϲ�ػ�� �ɿ���ʯ" 
		Notice ( message )
	elseif star>=21 and star<=70 then
		GiveItem ( role , 0 ,3433, 1 , 4  ) 
		local message1 = cha_name.."����ʹ���ؾ�ϲ�ػ�� ��ŵ��ʯ" 
		Notice ( message1 )
	else
		GiveItem ( role , 0 , 0271, 1 , 4  ) 
		local message2 = cha_name.."����ʹ���ؾ�ϲ�ػ�� ��ʹ����" 
		Notice ( message2 )
	end
end


----------�ƽ�ʥ��ʿ����
function ItemUse_SDSBox( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"������Ҫ1������")
		UseItemFailed ( role )
		return
	end
	local cha_name = GetChaDefaultName ( role ) 
	local star=math.random ( 1, 100 )
	--SystemNotice(role ,"star=="..star)
	if star<=25 then
		GiveItem ( role , 0 , 2955  , 1 , 4  )
		local message = cha_name.."�򿪻ƽ�ʥ��ʿ���ؾ�ϲ�ػ�� ���򴬳���װ����" 
		Notice ( message )
	elseif star>=26 and star<=50 then
		GiveItem ( role , 0 ,3035, 1 , 4  ) 
		local message1 = cha_name.."�򿪻ƽ�ʥ��ʿ���ؾ�ϲ�ػ�� ��ţ������װ����" 
		Notice ( message1 )
	elseif star>=51 and star<=75 then
		GiveItem ( role , 0 ,1881, 1 , 4  ) 
		local message2 = cha_name.."�򿪻ƽ�ʥ��ʿ���ؾ�ϲ�ػ�� ˫�Ӵ�����װ����" 
		Notice ( message2 )
	else
		GiveItem ( role , 0 , 2575, 1 , 4  ) 
		local message3 = cha_name.."�򿪻ƽ�ʥ��ʿ���ؾ�ϲ�ػ�� ��з������װ����" 
		Notice ( message3 )
	end
end


----------��������
function ItemUse_ShenLongBox( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"������Ҫ1������")
		UseItemFailed ( role )
		return
	end
	local cha_name = GetChaDefaultName ( role ) 
	local star=math.random ( 1, 100 )
	--SystemNotice(role ,"star=="..star)
	if star<=20 then
		GiveItem ( role , 0 , 0864  , 1 , 4  )
		local message = cha_name.."���������ؾ�ϲ�ػ�� ����֮ͫ" 
		Notice ( message )
	elseif star>=21 and star<=40 then
		GiveItem ( role , 0 ,0865, 1 , 4  ) 
		local message1 = cha_name.."���������ؾ�ϲ�ػ�� ����֮��" 
		Notice ( message1 )
	elseif star>=41 and star<=60 then
		GiveItem ( role , 0 ,0866, 1 , 4  ) 
		local message2 = cha_name.."���������ؾ�ϲ�ػ�� ����֮��" 
		Notice ( message2 )
	else
		GiveItem ( role , 0 , 1012, 1 , 4  ) 
		local message3 = cha_name.."���������ؾ�ϲ�ػ�� ����֮��" 
		Notice ( message3 )
	end
end


----------���ٱ���
function ItemUse_JSBox( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"������Ҫ1������")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0992 , 99 , 4) 			
	local itemname = GetItemName (0992) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.."�򿪼��ٱ��ؾ�ϲ�ػ��99��"..itemname  
	Notice ( message )
end

----------��ħ����
function ItemUse_EMBox( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"������Ҫ1������")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 2842 , 1 , 4) 			
	local itemname = GetItemName (2842) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.."�򿪶�ħ���ؾ�ϲ�ػ��"..itemname  
	Notice ( message )
end

----------���ޱ���
function ItemUse_NSBox( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"������Ҫ1������")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0192 , 1 , 4) 			
	local itemname = GetItemName (0192) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.."�����ޱ��ؾ�ϲ�ػ��"..itemname  
	Notice ( message )
end
--------------------------------���񱦲�
function ItemUse_SSBox ( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"������Ҫ1������")
		UseItemFailed ( role )
		return
	end
	local job = GetChaAttr( role, ATTR_JOB) --ȡְҵ
        local cha_type = GetChaTypeID ( role )
	if job == 0 or job ==1   or job ==2  or job ==4   or job ==5  then
		SystemNotice ( role , "ֻ�ж�ת��ɫ�ſ���ʹ�ñ�����")
		UseItemFailed ( role )
		return
	else
		if job == 12 then			--�ѻ�
			GiveItem( role , 0 , 2838  , 1 , 4 )
			local cha_name = GetChaDefaultName ( role ) 
			local message = cha_name.."�����񱦲ؾ�ϲ�ػ�� ��������"  
			Notice ( message )
		elseif job == 9	then			--˫��
			GiveItem( role , 0 , 2837  , 1 , 4 )
			local cha_name = GetChaDefaultName ( role ) 
			local message1 = cha_name.."�����񱦲ؾ�ϲ�ػ�� ���ں���"  
			Notice ( message1 )
		elseif job == 16 then			--����
			GiveItem( role , 0 , 2839  , 1 , 4 )
			local cha_name = GetChaDefaultName ( role ) 
			local message2 = cha_name.."�����񱦲ؾ�ϲ�ػ�� ��������"  
			Notice ( message2 )
		elseif job == 8	then			--�޽�
			GiveItem( role , 0 , 2836  , 1 , 4 )
			local cha_name = GetChaDefaultName ( role ) 
			local message3 = cha_name.."�����񱦲ؾ�ϲ�ػ�� ����˹����"  
			Notice ( message3 )
		elseif job == 13 then			--ʥְ
			GiveItem( role , 0 ,2840  , 1 , 4 )
			local cha_name = GetChaDefaultName ( role ) 
			local message4 = cha_name.."�����񱦲ؾ�ϲ�ػ�� ��ڤ����"  
			Notice ( message4 )
		elseif job == 14 then			--��ӡ
			GiveItem( role , 0 , 2841  , 1 , 4 )
			local cha_name = GetChaDefaultName ( role ) 
			local message5 = cha_name.."�����񱦲ؾ�ϲ�ػ�� ڤ��С��"  
			Notice ( message5 )
		
		end
	
	end
end

--��˲ر�ͼ 

function ItemUse_Map_LK ( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 1 then
		SystemNotice(role ,"����������Ҫ1����λ")
		UseItemFailed ( role )
		return
	end 
	local Has_GoldenMap = CheckBagItem ( role , 2998 )
	if Has_GoldenMap >= 1 then
		SystemNotice ( role , "ͬʱֻ��Я��һ����������" )
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 2998 , 1 , 0 )
end


-- ��������


function ItemUse_HDLP ( role , Item )
	SystemNotice(role ,"���̰�.....")
 	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 1 then
		SystemNotice(role ,"����������Ҫ1����λ")
		UseItemFailed ( role )
		return
	end 
	local Has_GoldenMap = CheckBagItem ( role , 2998 )
	if Has_GoldenMap >= 2 then
		SystemNotice ( role , "��Я���ĺ������̳���һ��,��̫̰����,Ѱ��ʧ��.����Ĳر�ͼ������ʱ��ŵ�������" )
		UseItemFailed ( role )
		return
	end
	local Item = GetChaItem2 ( role , 2 , 2998 )
	local Item_MAXURE = GetItemAttr ( Item , ITEMATTR_MAXURE )
	local Item_URE = GetItemAttr ( Item , ITEMATTR_URE )
	local Item_MAXENERGY = GetItemAttr ( Item , ITEMATTR_MAXENERGY )
	local pos_x = Item_MAXURE
	local pos_y = Item_MAXENERGY
	local Themap = Item_URE
--	SystemNotice ( role , "pos_x"..pos_x )
--	SystemNotice ( role , "pos_y"..pos_y )
--	SystemNotice ( role , "Themap"..Themap )
	
	local MapList = { }
	
	MapList [0] = "NoMap"
	MapList [1] = "garner"
	MapList [2] = "magicsea"
	MapList [3] = "darkblue"

	local MapNameList = { }
	
	MapNameList [0] = "û�е�ͼ"
	MapNameList [1] = "����"
	MapNameList [2] = "ħŮ"
	MapNameList [3] = "����"
	if pos_x == 0 or pos_y == 0 or Themap == 0 then
		pos_x , pos_y , Themap = GetTheMapPos ( role , 1 )		
--		pos_x,pos_y,Themap = GetMapRanPos ( role )
		Item_MAXURE = pos_x
		Item_URE = Themap
		Item_MAXENERGY = pos_y
		
		SetItemAttr ( Item , ITEMATTR_MAXENERGY , Item_MAXENERGY )
		SetItemAttr ( Item , ITEMATTR_MAXURE , Item_MAXURE )
		SetItemAttr ( Item , ITEMATTR_URE , Item_URE )
--		SystemNotice ( role , "Themap"..Themap )
--		Item_MAXENERGY = GetItemAttr ( Item , ITEMATTR_MAXENERGY )
--		SystemNotice ( role , "Item_MAXENERGY"..Item_MAXENERGY )
	end
	local GetPos = CheckGetMapPos ( role , pos_x , pos_y , MapList[Themap] )
--	SystemNotice ( role , "CheckPosOver"..GetPos ) 
	if GetPos == 0 then
		SystemNotice ( role , "���ص�λ����"..MapNameList[Themap].."����� "..pos_x..","..pos_y.." ����" )
		UseItemFailed ( role )
		return
	elseif GetPos == 1 then
		local getrandom = math.random ( 1 , 3 )
		if getrandom==1 then
			GiveZNZItem ( role )
		else
			SystemNotice ( role , "����û�ڳ���ʲô,�����ڸ������ڿ���" )
			UseItemFailed ( role )
			return
		end
	end
end

function Sk_Script_DS	( role , Item ) 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		UseItemFailed ( role ) 
		SystemNotice( role , "��������Ҫһ���ո������ѧ��֤")
		return 
	end 
	local sk_add = SK_DS  
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 				--ѧ�Ἴ��
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
	
	local r1 = 0
	local r2 = 0
	r1, r2 = MakeItem ( role , 3289 , 1 , 4 )				--��ѧ��֤
	local Itemnew = GetChaItem ( role , 2 , r2 )

	SetItemAttr(Itemnew, ITEMATTR_MAXENERGY , 120)           --������ߴ洢����
	SetItemAttr(Itemnew, ITEMATTR_ENERGY , 0 )              				 --���õ�ǰ�洢����
	SetItemAttr(Itemnew, ITEMATTR_URE,0)								 --���õ�ǰ�洢ѧ��
	SetItemAttr(Itemnew, ITEMATTR_MAXURE,150)						--���õ�ǰ���ѧ�֣���ֵ��ÿ���������Ժ��仯
	SetItemAttr(Itemnew, ITEMATTR_FORGE,0)								--����ѧ��
	
	LiveSkillLearnLog(role, 461)
end 

function ItemUse_WisdomApple( role , Item )		-------�ǻ۹�ʹ��Ч��
	local Lv = Lv( role )
	if Lv < 40 then
		SystemNotice(role ,"�ȼ�����40��������ʹ��")
		UseItemFailed ( role )
		return
	end

	local statelv = 1
	local ChaStateLv = GetChaStateLv ( role , STATE_APPLE )
	
	if ChaStateLv > statelv then
		SystemNotice ( role , "��ʹ�ø��߼��Ĺ��ӣ����Ժ�����" )
		UseItemFailed ( role )
		return
	end

	local statetime = 1800
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_APPLE , statelv , statetime )
	else
		UseItemFailed ( role )
		SystemNotice( role , "�����޷�ʳ���ǻ۹�")
	end
end

function ItemUse_GoldApple ( role , Item )
	local Lv = Lv( role )
	if Lv < 60 then
		SystemNotice(role ,"�ȼ�����60��������ʹ��")
		UseItemFailed ( role )
		return
	end

	local statelv = 2
	local ChaStateLv = GetChaStateLv ( role , STATE_APPLE )
	
	if ChaStateLv > statelv then
		SystemNotice ( role , "��ʹ�ø��߼��Ĺ��ӣ����Ժ�����" )
		UseItemFailed ( role )
		return
	end

	local statetime = 1800
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_APPLE , statelv , statetime )
	else
		UseItemFailed ( role )
		SystemNotice( role , "�����޷�ʳ�ý�ƻ����")
	end
end


--------------------------------------------�α�����
function ItemUse_JBBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <1 then
		SystemNotice(role ,"Ҫ�򿪱�����Ҫ������������1����λ")
		UseItemFailed ( role )
		return
	end
	local r1,r2 =MakeItem ( role , 3078  , 1 , 4 )
	local Item_el = GetChaItem ( role , 2 , r2 )			--ȡ�¾������ָ��

	local item_old = GetChaItem2 ( role , 2 , 3066 )

	local old_month = GetItemAttr(item_old, ITEMATTR_VAL_STA)		-------------�� 	
	local old_day = GetItemAttr(item_old, ITEMATTR_VAL_STR)			-------------��  
	local old_hour = GetItemAttr(item_old, ITEMATTR_VAL_CON)			-------------ʱ   
	local old_miniute = GetItemAttr(item_old, ITEMATTR_VAL_DEX)		-------------��   
	
	--SystemNotice ( role , "old_month=="..old_month )
	--SystemNotice ( role , "old_day=="..old_day )       
	--SystemNotice ( role , "old_hour=="..old_hour )    
	--SystemNotice ( role , "old_miniute=="..old_miniute)

	SetItemAttr(Item_el, ITEMATTR_VAL_STA, old_month )	-------------�� 	
	SetItemAttr(Item_el, ITEMATTR_VAL_STR, old_day )		-------------��  
	SetItemAttr(Item_el, ITEMATTR_VAL_CON, old_hour )		-------------ʱ 
	SetItemAttr(Item_el, ITEMATTR_VAL_DEX, old_miniute )	-------------��

	local old_month2 = GetItemAttr(Item_el, ITEMATTR_VAL_STA)		-------------�� 	
	local old_day2 = GetItemAttr(Item_el, ITEMATTR_VAL_STR)			-------------��  
	local old_hour2 = GetItemAttr(Item_el, ITEMATTR_VAL_CON)			-------------ʱ   
	local old_miniute2 = GetItemAttr(Item_el, ITEMATTR_VAL_DEX)		-------------�� 

	--SystemNotice ( role , "old_month2=="..old_month2 )
	--SystemNotice ( role , "old_day2=="..old_day2 )       
	--SystemNotice ( role , "old_hour2=="..old_hour2 )    
	--SystemNotice ( role , "old_miniute2=="..old_miniute2)

	SynChaKitbag(role,13)

end


------------------�����̻�
function ItemUse_LMYH ( role , Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end
end

------------------�����̻�
function ItemUse_JXYH ( role , Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end
end

------------------�����̻�
function ItemUse_HHLH ( role , Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end
end

---------����ʹ��֤��
function Jz_Script_jtsyzs (role, Item )
	
	local Now_Day = os.date("%d")
	local Now_Month = os.date("%m")
	local Now_Time = os.date("%H")
	local NowMniuteNum= os.date("%M")	
	local NowMiniuteNum= tonumber(Now_Miniute)	 	
	local NowTimeNum = tonumber(Now_Time)
	local NowDayNum = tonumber(Now_Day)
	local NowMonthNum = tonumber(Now_Month)
	local CheckDateNum = NowMonthNum * 1000000 + NowDayNum * 10000 + NowTimeNum*100+NowMniuteNum
	--SystemNotice ( role , "����ʱ��"..CheckDateNum)

	local item_old = GetChaItem2 ( role , 2 , 3066 )----����ʹ��֤
	local old_month = GetItemAttr(item_old, ITEMATTR_VAL_STA)			
	local old_day = GetItemAttr(item_old, ITEMATTR_VAL_STR)			  
	local old_hour = GetItemAttr(item_old, ITEMATTR_VAL_CON)			 
	local old_miniute = GetItemAttr(item_old, ITEMATTR_VAL_DEX)  
	 
	local CheckBook1Num = old_month * 1000000 + old_day * 10000 + old_hour*100+old_miniute
	--SystemNotice ( role , "CheckBook1Num"..CheckBook1Num)
	local CheckBook2Num = old_month * 1000000 + old_day * 10000 + (old_hour+2)*100+old_miniute
	--SystemNotice ( role , "CheckBook2Num"..CheckBook2Num)
	
	local i = CheckBagItem(role,3066)
	local k = ChaIsBoat(role)
	if CheckDateNum >= CheckBook1Num  and CheckDateNum <= CheckBook2Num and k ==0 and  i >0 then
		 DelBagItem(role,3066,1)
		MoveCity(role,"��ʽ����")	
	else
		SystemNotice ( role , "��?�ѵ���ʱ�䲻��")
		UseItemFailed ( role )
	end
end

------------���
function Jz_Script_qj (role, Item )
	--SystemNotice ( role , "���������" )
	local Now_Day = os.date("%d")
	local Now_Month = os.date("%m")
	local Now_Time = os.date("%H")
	--SystemNotice ( role , "�޹���" )
	local NowMniuteNum= os.date("%M")	-------------��
	local NowMiniuteNum= tonumber(Now_Miniute)	 	-------------��
	local NowTimeNum = tonumber(Now_Time)
	--SystemNotice ( role , "�ٺٺٺ�" )
	local NowDayNum = tonumber(Now_Day)
	--SystemNotice ( role , "��������" )
	local NowMonthNum = tonumber(Now_Month)
	--SystemNotice ( role , "�ǺǺǺ�" )
	local CheckDateNum = NowMonthNum * 1000000 + NowDayNum * 10000 + NowTimeNum*100+NowMniuteNum
	--SystemNotice ( role , "����ʱ��"..CheckDateNum)
	--local old_type = GetItemAttr(item_old, ITEMATTR_MAXENERGY)	----------------��ʽ����

	local item_old = GetChaItem2 ( role , 2 , 3078 )
	local old_month = GetItemAttr(item_old, ITEMATTR_VAL_STA)		-------------�� 	
	local old_day = GetItemAttr(item_old, ITEMATTR_VAL_STR)			-------------��  
	local old_hour = GetItemAttr(item_old, ITEMATTR_VAL_CON)			-------------ʱ 
	local old_miniute = GetItemAttr(item_old, ITEMATTR_VAL_DEX)  
	 

	local CheckBook1Num = old_month * 1000000 + old_day * 10000 + old_hour*100+old_miniute
	--SystemNotice ( role , "CheckBook1Num"..CheckBook1Num)
	local CheckBook2Num = old_month * 1000000 + old_day * 10000 + (old_hour+2)*100+old_miniute
	--SystemNotice ( role , "CheckBook2Num"..CheckBook2Num)
	
	if CheckDateNum < CheckBook1Num then
		SystemNotice ( role , "��Ҫ�ż�Ŷ�����û�û���ţ�����ݱ�ע��ʱ��ʹ��Ŷ" )
		UseItemFailed ( role )
		return
	end
	--SystemNotice ( role , "����")
	if CheckDateNum > CheckBook2Num then
		SystemNotice ( role , "��Ҫ�μӵĵ����Ѿ������ˣ��ÿ�ϧŶ" )
		UseItemFailed ( role )
		return
	end
	--SystemNotice ( role , "�ְ�")

	local i = CheckBagItem(role,3078)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "�ι۽����Ǽ����۵����飬�뱣��100����hp��spŶ")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3078,1)
			--if j == 1 and old_type=1 then
				--MoveCity(role,"��ʽ����")
			--elseif	j == 1 and old_type=2 then
				--MoveCity(role,"��ʽ����")
			if j == 1 then-------------elseif	j == 1 and old_type=3 then
				MoveCity(role,"��ʽ����")
				--SystemNotice ( role , "үү")
			--elseif	j == 1 and old_type=4 then
				--MoveCity(role,"��ʽ����")
			end
		end
	else
		UseItemFailed ( role )
	end
	--SystemNotice ( role , "����")	
end
---------------------------�ٻ�����������
function ItemUse_FLOWER ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end

	local el = 0
	el =IsChaInRegion( role, 2 )
	if el == 1 then
		SystemNotice( role , "��ɫ��ǰ���ڰ�ȫ���������ٻ�����" )
		UseItemFailed ( role )
		return
	end
	local x, y = GetChaPos(role)
	local MonsterID = 1037
	local Refresh = 7300					--����ʱ�䣬�뵥λ
	local life = 7200000					--����ʱ�䣬���뵥λ
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaLifeTime( new, life )
end


---------------------------������Ϸȯ
function ItemUse_QQ ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end

	local el = 0
	el =IsChaInRegion( role, 2 )
	if el == 1 then
		SystemNotice( role , "��ɫ��ǰ���ڰ�ȫ���������ٻ�����" )
		UseItemFailed ( role )
		return
	end
	local x, y = GetChaPos(role)
	local MonsterID = 1036
	local Refresh = 60					--����ʱ�䣬�뵥λ
	local life = 7200000					--����ʱ�䣬���뵥λ
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaLifeTime( new, life )
end
--��ʽ���òι���Ʊ
function Jz_Script_yszs (role, Item )
	
	local Now_Week = os.date("%w")
	local Now_WeekNum = tonumber(Now_Week)
	local Now_Time = os.date("%H")
	local Now_TimeNum = tonumber(Now_Time)
	local Now_Miniute= os.date("%M")	
	local Now_Miniute= tonumber(Now_Miniute)
	local CheckDateNum = Now_WeekNum * 10000 + Now_TimeNum * 100+Now_Miniute

	if CheckDateNum < 11700  then
		SystemNotice ( role , "��Ҫ�ż�Ŷ�����û�û���ţ�����ÿ����һ����17�㵽17��10��֮��ʹ��Ŷ" )
		UseItemFailed ( role )
		return
	end
	
	if CheckDateNum > 11710 then
		SystemNotice ( role , "�����Ѿ������ˣ�����ֻ�еȴ��¸�����һ��������" )
		UseItemFailed ( role )
		return
	end

	local i = CheckBagItem(role,3024)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "�ι۽����Ǽ����۵����飬�뱣��100����hp��spŶ")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3024,1)
			if j == 1 then
				MoveCity(role,"��ʽ����")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end
-----------------------------��������ֻ���ڣ�ÿ����\����18:00--22��10���򿪲Ż���Ч

function ItemUse_RedBox( role , Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	 if Item_CanGet < 1 then
		SystemNotice(role ,"�򿪺��������Ҫ1����λ")
		UseItemFailed ( role )
		return
	end
	local now_week= os.date("%w")		-------------���ڼ���ʮ���ƣ� 
	local now_hour= os.date("%H")		-------------ʱ 
	local now_miniute= os.date("%M")	-------------��
	now_week= tonumber(now_week)
	now_hour= tonumber(now_hour)		
	now_miniute= tonumber(now_miniute)
	local CheckDateNum = now_hour*100 +now_miniute
	local flag=0
      if now_week==6 or now_week==0 then
		flag=1
      end
	if 1800<=CheckDateNum and  CheckDateNum<=2210 and flag==1 then
		ItemUse_hongbaoBOX ( role , Item )
	else 
		SystemNotice(role ,"��û��ʱ��,����ʹ�úܿ���Ŷ!")
		UseItemFailed ( role )
		return
	end
end

function ItemUse_hongbaoBOX ( role , Item )
	local ChaName = GetChaDefaultName ( role )

	local el = math.random ( 1, 1000 )
	if  el>=1 and el<=5 then
		GiveItem ( role , 0 , 1012  , 1 , 4 ) -------------����֮��        0.5
			local message ="��ϲ���" ..ChaName.."��Ʒ����,�򿪺����� ����֮��" 
			Notice ( message )
	elseif el>=6 and el<=10 then
		GiveItem ( role , 0 , 1016  , 1 , 4 ) ---------------Ů��С��       0.5
			local message1 ="��ϲ���" ..ChaName.."��Ʒ����,�򿪺����� Ů��С��" 
			Notice ( message1 )
	elseif el>=11 and el<=20 then
		GiveItem ( role , 0 , 0860  , 1 , 4 ) ---------------����         1
			local message2 ="��ϲ���" ..ChaName.."��Ʒ����,�򿪺����� ����ʯ" 
			Notice ( message2 )
	elseif el>=21 and el<=30 then
		GiveItem ( role , 0 , 0861  , 1 , 4 ) ----------------ӥ��ʯ     1
			local message3 ="��ϲ���" ..ChaName.."��Ʒ����,�򿪺����� ӥ��ʯ" 
			Notice ( message3 )
	elseif el>=31 and el<40 then
		GiveItem ( role , 0 , 0862  , 1 , 4 ) ----------------����       1
			local message4 ="��ϲ���" ..ChaName.."��Ʒ����,�򿪺����� ����" 
			Notice ( message4 )
	elseif el>=41 and el<=50 then
		GiveItem ( role , 0 , 0863  , 1 , 4 )-----------------����       1
			local message5 ="��ϲ���" ..ChaName.."��Ʒ����,�򿪺����� ����" 
			Notice ( message5 )
	elseif el>=51 and el<=270 then
		GiveItem ( role , 0 , 855  , 99 , 4 )-----------------����Ӳ��       22
	elseif el>=271 and el<=500 then
		GiveItem ( role , 0 , 0227  , 5 , 4 )-----------------�ػ���������    23
	elseif el>=501 and el<=750 then
		GiveItem ( role , 0 , 3096  , 3 , 4 )-----------------�Ƹ�������3��   25
	elseif el>=751 and el<=1000 then
		GiveItem ( role , 0 , 3094  , 3 , 4 )-----------------Ŭ��������3��   25
	end
end
------------------------------------------------���ɲر�ͼ(kokora)---------------------------------
function ItemUse_KYCBT (role, Item)
	local	sc = math.random ( 1,100 )
	if  sc <=50 then
	local cha_name = GetChaDefaultName ( role ) 
	local message1= cha_name.."��Ʒ����,������˲ر�ͼ̽���� ����֮��" 
		Notice ( message1 )
	else 
	local cha_name = GetChaDefaultName ( role ) 
	local message2 = cha_name.."��Ʒ����,������˲ر�ͼ̽���� Ԫ˧֮��" 
		Notice ( message2 )
	end
end
-----------------------------------------------------------kokora---------------------------------------------------------
------------------------------------------------�һ���������(kokora)---------------------------------
function ItemUse_goddessBOX (role, Item)
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ����������" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	 if Item_CanGet < 1 then
		SystemNotice(role ,"����������������Ҫ1����λ")
		UseItemFailed ( role )
		return
	end
	local	sc = math.random ( 1, 43 )
	local ItemId = 0
	
	if sc <=14 then	
		local GoodItem = {}
		GoodItem[0] = 0111                                       -------------��ħ��          ��û���14%
		GoodItem[1] = 0150                                       -------------�㳦             ��û���14%
	
		local Good_C = math.random ( 1, 2 )-1
		ItemId = GoodItem[Good_C]
	elseif sc <=26 then		
		local GoodItem = {}
		GoodItem[0] = 0109                                       -------------���ⱦ��       ��û���12%
		GoodItem[1] = 0115                                       -------------����             ��û���12%
		GoodItem[2] = 0117                                       -------------�ɺ�             ��û���12%
		GoodItem[3] = 0119                                       -------------���ǻ���       ��û���12%
	
		local Good_C = math.random ( 1, 4 )-1
		ItemId = GoodItem[Good_C]
	elseif sc <=36 then
		ItemId = 0113                                       -------------��Ȫ          ��û���10%
	else  local GoodItem = {}
		GoodItem[0] = 0861                                       -------------ӥ��ʯ          ��û���7%
		GoodItem[1] = 0860                                       -------------����ʯ          ��û���7%
	
		local Good_C = math.random ( 1, 2 )-1
		ItemId = GoodItem[Good_C]
	end
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	GiveItem ( role , 0 , ItemId , 1 , 94 )
	local message = "��ϲ���" ..cha_name.."����������,��ϲ�Ļ��"..itemname  
	Notice ( message )
end
-----------------------------------------------------------kokora---------------------------------------------------------

------------------------------------------------�һ���������(kokora)---------------------------------
function ItemUse_overlordBOX (role, Item)
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ�ð�������" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	 if Item_CanGet < 1 then
		SystemNotice(role ,"�򿪰�������������Ҫ1����λ")
		UseItemFailed ( role )
		return
	end
	local	sc = math.random ( 1, 43 )
	local ItemId = 0
	
	if  sc <=14 then	
		local GoodItem = {}
		GoodItem[0] = 0112                                       -------------����֮��          ��û���14%
		GoodItem[1] = 0151                                       -------------�ϻ�                ��û���14%
	
		local Good_C = math.random ( 1, 2 )-1
		ItemId = GoodItem[Good_C]
	elseif sc <=26 then		
		local GoodItem = {}
		GoodItem[0] = 0110                                       -------------����֮��       ��û���12%
		GoodItem[1] = 0116                                       -------------����             ��û���12%
		GoodItem[2] = 0118                                       -------------����             ��û���12%
		GoodItem[3] = 0120                                       -------------��������       ��û���12%
	
		local Good_C = math.random ( 1, 4 )-1
		ItemId = GoodItem[Good_C]
	elseif sc <=36 then
		ItemId = 0114                                       -------------����          ��û���10%
	else local GoodItem = {}
		GoodItem[0] = 0863                                       -------------����          ��û���7%
		GoodItem[1] = 0862                                       -------------����          ��û���7%
	
		local Good_C = math.random ( 1, 2 )-1
		ItemId = GoodItem[Good_C]
	end
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	GiveItem ( role , 0 , ItemId , 1 , 94 )
	local message = "��ϲ���" ..cha_name.."�򿪰�������,��ϲ�Ļ��"..itemname  
	Notice ( message )
end
-----------------------------------------------------------kokora---------------------------------------------------------
function ItemUse_XiDianBook ( role , item )
	local zsskill_lv  = {} 							----ȡ��ɫת�����ܵȼ�
	 zsskill_lv [0] = GetSkillLv ( role, 453 )
	 zsskill_lv [1] = GetSkillLv ( role, 454 )
	 zsskill_lv [2] = GetSkillLv ( role, 455 )
	 zsskill_lv [3] = GetSkillLv ( role, 456 )
	 zsskill_lv [4] = GetSkillLv ( role, 457 )
	 zsskill_lv [5] = GetSkillLv ( role, 458 )
	local n = 0
	local item_canget = GetChaFreeBagGridNum ( role )
	--���˽ڽ�ָ�����ж�---JACK
	local QLZX= GetSkillLv ( role, SK_QLZX )
	--�жϽ���
	if item_canget < 2 then
		SystemNotice(role ,"������������Ҫ��2����λ")
		UseItemFailed ( role )
	else
		for i = 0, 5, 1 do
			if zsskill_lv [i] >= 1 then
				n = n+1
			end
		end
		local cha_skill_num=GetChaAttr(role, ATTR_TP  )				----ȡ��ɫ��ǰʣ��ս�����ܵ�
		local clear_skill_num=ClearFightSkill(role)				----ȡ������ܵ�
		cha_skill_num=cha_skill_num+clear_skill_num
		if n > 0 then							----��ת������
			local job = GetChaAttr( role, ATTR_JOB)				----ȡְҵ
			local item_id = {}
			item_id [8] = 2957
			item_id [9] = 2956
			item_id [12] = 2961
			item_id [13] = 2959
			item_id [14] = 2958
			item_id [16] = 2960
			GiveItem ( role, 0, item_id [job] , 1, 4)
			GiveItem ( role, 0, 1572, 1, 4)
			cha_skill_num = cha_skill_num - 2
		end
		--���˽ڽ�ָ���ܴ���---JACK
		if QLZX == 1 then
			cha_skill_num = cha_skill_num - 1
			AddChaSkill ( role , SK_QLZX , 1 , 1 , 0 )
		end
		--���˽ڽ�ָ���ܴ������
		SetChaAttr(role, ATTR_TP ,cha_skill_num ) 
	end
end

function Sk_Script_ZSSL( role , item )
	local sk_add = SK_ZSSL 
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--���ܵȼ��Ϸ��Լ��
--		return 
--	end 
	if form_sklv >= 1  then 
		UseItemFailed ( role )  
		return 
	end 
	local zs_exp = GetChaAttr ( role , ATTR_CSAILEXP )
	if zs_exp <= 0 then
		UseItemFailed ( role )  
		return 
	end
	a = AddChaSkill ( role , sk_add, 1 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

------------------------����Ӳ�ұ���
function ItemUse_YingbiBox ( role , Item )
	local map_name_role = GetChaMapName ( role )
	if map_name_role == "darkblue" then
		local lv = GetChaAttr ( role , ATTR_LV )
		if lv >= 10 then
			local Item_CanGet = GetChaFreeBagGridNum ( role )
			if Item_CanGet < 4 then
				SystemNotice(role ,"��������Ӳ�ұ���������Ҫ4������")
				UseItemFailed ( role )
				return
			end
			local ChaName = GetChaDefaultName(role)
			if PlayUseBox1[ChaName] == nil then
				PlayUseBox1[ChaName] = 0
			end
			local Use_Num = PlayUseBox1[ChaName]
			local now_day= os.date("%d")		-------------��   
			local now_month= os.date("%m")		-------------��
			now_month= tonumber(now_month)		-------------��     
			now_day = tonumber(now_day)		-------------��
			local Date = JNSTime_Flag[now_month]+now_day
			local Yingbi_Num = 0
			if Use_Num == 0 then
				local Time = 1
				Use_Num = Date * 10 + Time
				Yingbi_Num = 20
				local j = TakeItem ( role , 0 , 855 , Yingbi_Num )
					if j == 1 then 
						PlayUseBox1[ChaName] = Use_Num
						GiveBragiItem ( role , 1 )
						GiveItem ( role , 0 , 1872 , 1 , 4 )
					else
						UseItemFailed ( role )
						SystemNotice( role, "����Ӳ�Ҳ���")
					end
			else
				local Date_Box = math.floor ( Use_Num / 10 )
				local a = Date - Date_Box
				local Time = Use_Num - Date_Box * 10
				--SystemNotice ( role , "a="..a)
				if a == 0 then
					Use_Num = Use_Num +1
					local time_new = Time + 1
					if time_new >= 1 and time_new <= 3 then
						Yingbi_Num = (time_new*5) + 15
						--SystemNotice ( role  , "��"..time_new.."�ο����ӣ�����"..Yingbi_Num.."��Ӳ�ң�Ʒ��Ϊ1")
						local j = TakeItem ( role , 0 , 855 , Yingbi_Num )
						if j == 1 then
							GiveBragiItem ( role , 1 )
							PlayUseBox1[ChaName] = Use_Num
							GiveItem ( role , 0 , 1872 , 1 , 4 )
						else
							UseItemFailed ( role )
							SystemNotice( role, "����Ӳ�Ҳ���")
						end
					elseif time_new >= 4 and time_new <= 6 then
						Yingbi_Num = Time * 15
						--SystemNotice ( role  , "��"..time_new.."�ο����ӣ�����"..Yingbi_Num.."��Ӳ�ң�Ʒ��Ϊ2")
						local j = TakeItem ( role , 0 , 855 , Yingbi_Num )
						if j == 1 then
							GiveBragiItem ( role , 2 )
							PlayUseBox1[ChaName] = Use_Num
							GiveItem ( role , 0 , 1872 , 1 , 4 )
						else
							UseItemFailed ( role )
							SystemNotice( role, "����Ӳ�Ҳ���")
						end
					else
						Yingbi_Num = 99
						--SystemNotice ( role  , "��"..time_new.."�ο����ӣ�����"..Yingbi_Num.."��Ӳ�ң�Ʒ��Ϊ3")
						local j = TakeItem ( role , 0 , 855 , Yingbi_Num )
						if j == 1 then
							GiveBragiItem ( role , 3 )
							PlayUseBox1[ChaName] = Use_Num
							GiveItem ( role , 0 , 1872 , 1 , 4 )
						else
							UseItemFailed ( role )
							SystemNotice( role, "����Ӳ�Ҳ���")
						end
					end
				elseif a == -1 then
					UseItemFailed ( role )
					SystemNotice ( role , "������Ѿ�����10������Ӳ�ұ�����")
				else
					local Time = 1
					Use_Num = Date * 10 + Time
					Yingbi_Num = 20
					--SystemNotice ( role  , "��"..Time.."�����ӣ�����"..Yingbi_Num.."��Ӳ��")
					local j = TakeItem ( role , 0 , 855 , Yingbi_Num )
					if j == 1 then
						PlayUseBox1[ChaName] = Use_Num
						GiveBragiItem ( role )
						GiveItem ( role , 0 , 1872 , 1 , 4 )
					else
						UseItemFailed ( role )
						SystemNotice( role, "����Ӳ�Ҳ���")
					end
				end
			end
		else
			SystemNotice( role , "�ȼ�����10���޷�ʹ�øõ���")
			UseItemFailed ( role )
		end
	else
		SystemNotice( role , "�õ���ֻ��������Ⱥ����ͼʹ��")
		UseItemFailed ( role )
	end
end

------------------------------------�����ӡ����
function ItemUse_HuiYinBox ( role, Item )
	local map_name_role = GetChaMapName ( role )
	if map_name_role == "darkblue" then
		local lv = GetChaAttr ( role , ATTR_LV )
		if lv >= 60 then
			local Item_CanGet = GetChaFreeBagGridNum ( role )
			if Item_CanGet < 2 then
				SystemNotice(role ,"���������ӡ����������Ҫ2������")
				UseItemFailed ( role )
				return
			end
			local ChaName = GetChaDefaultName(role)
			if PlayUseBox2[ChaName] == nil then
				PlayUseBox2[ChaName] = 0
			end
			local Use_Num = PlayUseBox2[ChaName]
			local now_day= os.date("%d")		-------------��   
			local now_month= os.date("%m")		-------------��
			now_month= tonumber(now_month)		-------------��     
			now_day = tonumber(now_day)		-------------��
			local Date = JNSTime_Flag[now_month]+now_day
			if Use_Num == 0 then
				local Time = 1
				Use_Num = Date * 10 + Time
				local j = TakeItem ( role , 0 , 2588 , 10 )
				if j == 1 then 
					PlayUseBox2[ChaName] = Use_Num
					GiveItem ( role , 0 , 3107 , 1 , 4 )
					GiveItem ( role , 0 , 1570 , 1 , 4 )
				else
					UseItemFailed ( role )
					SystemNotice( role, "�����ӡ����")
				end
			else
				local Date_Box = math.floor ( Use_Num / 10 )
				local a = Date - Date_Box
				local Time = Use_Num - Date_Box * 10
				if a == 0 then
					local time_new = Time + 1
					if time_new == 1 then
						Use_Num = Use_Num + 1
						local j = TakeItem ( role , 0 , 2588 , 10 )
						if j == 1 then 
							PlayUseBox2[ChaName] = Use_Num
							GiveItem ( role , 0 , 3107 , 1 , 4 )
							GiveItem ( role , 0 , 1570 , 1 , 4 )
						else
							UseItemFailed ( role )
							SystemNotice( role, "�����ӡ����")
						end
					elseif time_new == 2 then
						Use_Num = Use_Num + 1
						local j = TakeItem ( role , 0 , 2588 , 20 )
						if j == 1 then 
							PlayUseBox2[ChaName] = Use_Num
							AddExpAll ( role , 1 , 1, 2)
							GiveItem ( role , 0 , 1570 , 1 , 4 )
						else
							UseItemFailed ( role )
							SystemNotice( role, "�����ӡ����")
						end
					elseif time_new == 3 then
						Use_Num = Use_Num + 1
						local j = TakeItem ( role , 0 , 2588 , 30 )
						if j == 1 then 
							PlayUseBox2[ChaName] = Use_Num
							GiveItem ( role , 0 , 850 , 1 , 4 )
							GiveItem ( role , 0 , 1570 , 1 , 4 )
						else
							UseItemFailed ( role )
							SystemNotice( role, "�����ӡ����")
						end
					elseif time_new == 4 then
						Use_Num = Use_Num + 1
						local j = TakeItem ( role , 0 , 2588 , 40 )
						if j == 1 then 
							PlayUseBox2[ChaName] = Use_Num
							GiveItem ( role , 0 , 852 , 1 , 4 )
							GiveItem ( role , 0 , 1570 , 1 , 4 )
						else
							UseItemFailed ( role )
							SystemNotice( role, "�����ӡ����")
						end
					elseif time_new == 5 then
						Use_Num = ( Date + 1 )*10
						local j = TakeItem ( role , 0 , 2588 , 50 )
						if j == 1 then 
							PlayUseBox2[ChaName] = Use_Num
							GiveItem ( role , 0 , 851 , 1 , 4 )
							GiveItem ( role , 0 , 1570 , 1 , 4 )
						else
							UseItemFailed ( role )
							SystemNotice( role, "�����ӡ����")
						end
					end
				elseif a == -1 then
					UseItemFailed ( role )
					SystemNotice ( role , "������Ѿ�����5�������ӡ������")
				else
					local Time = 1
					Use_Num = Date * 10 + Time
					local j = TakeItem ( role , 0 , 2588 , 10 )
					if j == 1 then
						PlayUseBox2[ChaName] = Use_Num
						GiveItem ( role , 0 , 3107 , 1 , 4 )
						GiveItem ( role , 0 , 1570 , 1 , 4 )
					else
						UseItemFailed ( role )
						SystemNotice( role, "�����ӡ����")
					end
				end
			end
		else
			SystemNotice( role , "�ȼ�����60���޷�ʹ�øõ���")
			UseItemFailed ( role )
		end
	else
		SystemNotice( role , "�õ���ֻ��������Ⱥ����ͼʹ��")
		UseItemFailed ( role )
	end
end

-----------------------------��������ӡ����
function ItemUse_HuiYinKBox ( role, Item )
	local map_name_role = GetChaMapName ( role )
	if map_name_role == "darkblue" then
		local lv = GetChaAttr ( role , ATTR_LV )
		if lv >= 70 then
			local Item_CanGet = GetChaFreeBagGridNum ( role )
			if Item_CanGet < 2 then
				SystemNotice(role ,"���������ӡ������������Ҫ2������")
				UseItemFailed ( role )
				return
			end
			local ChaName = GetChaDefaultName(role)
			if PlayUseBox3[ChaName] == nil then
				PlayUseBox3[ChaName] = 0
			end
			local Use_Num = PlayUseBox3[ChaName]
			local now_day= os.date("%d")		-------------��   
			local now_month= os.date("%m")		-------------��
			now_month= tonumber(now_month)		-------------��     
			now_day = tonumber(now_day)		-------------��
			local Date = JNSTime_Flag[now_month]+now_day
			if Use_Num == 0 then
				local Time = 1
				Use_Num = Date * 10 + Time
				local j = TakeItem ( role , 0 , 2589 , 1 )
				if j == 1 then 
					PlayUseBox3[ChaName] = Use_Num
					AddExpAll ( role , 3 , 3, 2 )
					GiveItem ( role , 0 , 1571 , 1 , 4 )
				else
					UseItemFailed ( role )
					SystemNotice( role, "��������ӡ����")
				end
			else
				local Date_Box = math.floor ( Use_Num / 10 )
				local a = Date - Date_Box
				local Time = Use_Num - Date_Box * 10
				if a == 0 then
					local time_new = Time + 1
					if time_new == 1 then
						Use_Num = Use_Num + 1
						local j = TakeItem ( role , 0 , 2589 , 1 )
						if j == 1 then 
							PlayUseBox3[ChaName] = Use_Num
							AddExpAll ( role , 3 , 3, 2 )
							GiveItem ( role , 0 , 1571 , 1 , 4 )
						else
							UseItemFailed ( role )
							SystemNotice( role, "��������ӡ����")
						end
					elseif time_new == 2 then
						Use_Num = ( Date + 1 ) * 10
						local j = TakeItem ( role ,  0 , 2589 , 2 )
						if j == 1 then 
							PlayUseBox3[ChaName] = Use_Num
							GiveItem ( role , 0 , 3336 , 1 , 4 )
							GiveItem ( role , 0 , 1571 , 1 , 4 )
						else
							UseItemFailed ( role )
							SystemNotice( role, "��������ӡ����")
						end
					end
				elseif a == -1 then
					UseItemFailed ( role )
					SystemNotice ( role , "������Ѿ�����2����������ӡ������")
				else
					local Time = 1
					Use_Num = Date * 10 + Time
					local j = TakeItem ( role , 0 , 2588 , 10 )
					if j == 1 then
						PlayUseBox3[ChaName] = Use_Num
						AddExpAll ( role , 3, 3, 2 )
						GiveItem ( role , 0 , 1571 , 1 , 4 )
					else
						UseItemFailed ( role )
						SystemNotice( role, "��������ӡ����")
					end
				end
			end
		else
			SystemNotice( role , "�ȼ�����70���޷�ʹ�øõ���")
			UseItemFailed ( role )
		end
	else
		SystemNotice( role , "�õ���ֻ��������Ⱥ����ͼʹ��")
		UseItemFailed ( role )
	end
end


------------------------��ϻ��
function ItemUse_BACKBOX ( role , Item )
	local Cha_Boat = 0
	local charLv=Lv ( role )
	local Exp_star=GetChaAttr (  role , ATTR_CEXP )----------��ǰ�ȼ�����
	local dif_exp_thalf = (DEXP[charLv+1] - DEXP[charLv])*0.15  +  Exp_star + 10
	local dif_exp_thalf_a = (DEXP[charLv+1] - DEXP[charLv])*0.12  +  Exp_star + 10
	local dif_exp_thalf_b = (DEXP[charLv+1] - DEXP[charLv])*0.08  +  Exp_star + 10
	local dif_exp_thalf_c = (DEXP[charLv+1] - DEXP[charLv])*0.05+Exp_star+ 10

	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end
	if charLv>=100 then
		SystemNotice( role , "100����100�����Ͻ�ɫ����ʹ��" )
		UseItemFailed ( role )
		return
	end
	local el = math.random ( 1, 100 )
	if  el>=1 and el<=40 then
		SetChaAttrI( role , ATTR_CEXP , dif_exp_thalf_c )
	elseif el>=41 and el<=70 then
		SetChaAttrI( role , ATTR_CEXP , dif_exp_thalf_b )
	elseif el>=71 and el<=90 then
		SetChaAttrI( role , ATTR_CEXP , dif_exp_thalf_a )
	elseif el>=91 and el<=100 then
		SetChaAttrI( role , ATTR_CEXP , dif_exp_thalf )
        end
end
----------------����ƿ���
function ItemUse_jyplb( role , item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"������Ҫһ�������ո�")
		UseItemFailed ( role )
		return
	end
	local r1 = 0
	local r2 = 0
	r1,r2 =MakeItem ( role , 171  , 1 , 4 )
	local Item = GetChaItem ( role , 2 , r2 )
	SetItemAttr(Item, ITEMATTR_VAL_PARAM1, 0 )		-------------��  
	SynChaKitbag(role,13)
end

---------------------------��֤֮����kokora���Ʒ��汾ר��
function ItemUse_fancyprove ( role , Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ�û�֤֮��" )
		UseItemFailed ( role )
		return
	end
	 local cha_name = GetChaDefaultName ( role )
	 local lv = GetChaAttr ( role , ATTR_LV )
	 if lv>=20 and lv<=54 then
		SetChaAttrI(role, ATTR_CEXP , 19674240)		
	 local message = "��ϲ���" ..cha_name.."ʹ�û�֤֮����,�ȼ���"..lv .."������55��!�û�֤֮��,�������̳�������ṩ�!" 
		Notice ( message )
	 else 
		SystemNotice( role , "��֤֮����ʹ�õȼ���20����54��֮��,���ĵȼ�������ʹ�û�֤֮����Ҫ��" )
		UseItemFailed ( role )
	end
	return
end

---------------------------���˱��䣨kokora���Ʒ��汾ר��
function ItemUse_superBOX ( role , Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ�ó��˱���" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet < 1 then
		SystemNotice(role ,"�򿪳��˱���������Ҫ1����λ")
		UseItemFailed ( role )
		return
	end
	local cha_name = GetChaDefaultName ( role ) 
	local lv = GetChaAttr ( role , ATTR_LV )	
	if lv>=70 then
	GiveItem ( role , 0 , 996 , 1 , 4 )
	local message = "��ϲ���" ..cha_name.."�򿪳��˱���,��ϲ�Ļ�ó���֤��,�ó��˱���,�������̳�������ṩ�!"
	Notice ( message )
	 else 
		SystemNotice( role , "���˱�����ʹ�õȼ���70������,���ĵȼ�������ʹ�ó��˱����Ҫ��" )
		UseItemFailed ( role )
	end
	return
end

---------------------------����֤����kokora���Ʒ��汾ר��
function ItemUse_superprove ( role , Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ�ó���֤��" )
		UseItemFailed ( role )
		return
	end
	 local cha_name = GetChaDefaultName ( role ) 
	 local lv = GetChaAttr ( role , ATTR_LV )	
	 if lv>=55 and lv<=59 then
		SetChaAttrI(role, ATTR_CEXP , 37746418)
	 local message = "��ϲ���" ..cha_name.."ʹ�ó���֤����,�ȼ���"..lv .."������60��!�ó���֤��,�������̳�������ṩ�!" 
		Notice ( message )
	 else 
		SystemNotice( role , "����֤����ʹ�õȼ���55����59��֮��,���ĵȼ�������ʹ�ó���֤����Ҫ��" )
		UseItemFailed ( role )
	end
	return
end

---------------------------��֤֮����kokora���Ʒ��汾ר��
function ItemUse_riddleprove ( role , Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ����֤֮��" )
		UseItemFailed ( role )
		return
	end
	local i= CheckBagItem( role, 3849 )                                                
	if i~=1 then
		SystemNotice(  role , "��ȷ��������������֤֮")
		UseItemFailed ( role )
		return LUA_FALSE
	end

	local credit = GetChaItem2 ( role , 2 , 3849 )
	local creditprove = GetItemAttr (credit , ITEMATTR_VAL_STR)
	if creditprove < 100 then
		SystemNotice ( role , "��������ֵδ�ﵽ100��,������ʹ����֤֮��������!" )
		UseItemFailed ( role )
		return LUA_FALSE
	end

	local meleeprove = GetItemAttr (credit , ITEMATTR_MAXENERGY)	
	if meleeprove < 11 then
		SystemNotice ( role , "�����Ҷ�����δ�ﵽ11��,������ʹ����֤֮��������!" )
		UseItemFailed ( role )
		return LUA_FALSE
	end
															
	 local cha_name = GetChaDefaultName ( role ) 
	 local lv = GetChaAttr ( role , ATTR_LV )	
	 if lv>=60 and lv<=64 then
		SetChaAttrI(role, ATTR_CEXP , 116688304)
	 local message = "��ϲ���" ..cha_name.."ʹ����֤֮����,�ȼ���"..lv .."������65��!����֤֮��,�������̳�������ṩ�!" 
		Notice ( message )
	 else 
		SystemNotice( role , "��֤֮����ʹ�õȼ���60����64��֮��,���ĵȼ�������ʹ����֤֮����Ҫ��" )
		UseItemFailed ( role )
	end
	return 
end

---------------------------��֮��������kokora���Ʒ��汾ר��(��statelv���й����µ���)
function ItemUse_riddleroll ( role , Item )
	local lv= GetChaAttr(role, ATTR_LV) 
	if lv < 65 or lv > 75  then
		SystemNotice ( role , "����ʹ����֮��������" )
		UseItemFailed ( role )
		return	
	end

	local statelv = 6
	local ChaStateLv = GetChaStateLv ( role , STATE_SBJYGZ )
	
	if ChaStateLv > statelv then
		SystemNotice ( role , "��ʹ�ø��ߵȼ���ͬ����Ʒ�����Ժ�����" )
		UseItemFailed ( role )
		return
	end
	local statetime = 1800
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_SBJYGZ , statelv , statetime )
	else
		AddState( Cha_Boat , Cha_Boat , STATE_SBJYGZ , statelv , statetime )
	end
	SystemNotice ( role ,"���ܵ���֮��������Ч��,��Сʱ��,��־����10�������!" )
end

------------------------------------------------�һ���Ľ����(kokora)---------------------------------
function ItemUse_baimodabox (role, Item)
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ�ð�Ľ����" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	 if Item_CanGet < 1 then
		SystemNotice(role ,"�򿪰�Ľ����������Ҫ1����λ")
		UseItemFailed ( role )
		return
	end
	local	sc = math.random ( 1, 100 )
	
	if  sc <=25 then	
		GiveItem ( role , 0 , 1036 , 50 , 4 )                    ---------------ħ��Ů��   ��û���25%
	elseif sc <=50 then		
		GiveItem ( role , 0 , 0578 , 99 , 4 )                    ---------------���ٳɳ���   ��û���25%
	elseif sc <=75 then
		GiveItem ( role , 0 , 0850 , 99 , 4 )                    ---------------��װҩˮ   ��û���25%
	else   
		GiveItem ( role , 0 , 0852 , 99 , 4 )                    ---------------ȫ��װ��   ��û���25%
	end
end

------------------------------------------------��į��ٻ�ȯ(kokora)---------------------------------
function ItemUse_monsterbec (role, Item)
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end
	local sc = 0
	sc =IsChaInRegion( role, 2 )
	if sc == 1 then
		SystemNotice( role , "��ɫ��ǰ���ڰ�ȫ��������ʹ���ٻ�ȯ" )
		UseItemFailed ( role )
		return
	end

	local Monsterattr = {533,509,531,534,550,557,553,559,50,50}
	local	sc = math.random(1,10)
	local x, y = GetChaPos( role )
	local Refresh = 3700				--����ʱ�䣬�뵥λ
	local life = 3600000					--����ʱ�䣬���뵥λ
	local new = CreateChaX( Monsterattr[sc] , x , y , 145 ,  Refresh, role )
	SetChaLifeTime( new, life )
end

------------------------------------------------�����ٻ�ȯ(kokora)---------------------------------
function ItemUse_bierbec (role, Item)
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end
	local sc = 0
	sc =IsChaInRegion( role, 2 )
	if sc == 1 then
		SystemNotice( role , "��ɫ��ǰ���ڰ�ȫ��������ʹ���ٻ�ȯ" )
		UseItemFailed ( role )
		return
	end
	local Monsterattr = {687,686}
	local	sc = math.random(1,2)
	local x, y = GetChaPos( role )
	local Refresh = 3700				--����ʱ�䣬�뵥λ
	local life = 3600000					--����ʱ�䣬���뵥λ
	local new = CreateChaX( Monsterattr[sc] , x , y , 145 ,  Refresh, role )
	SetChaLifeTime( new, life )
end

------------------------------------------------��į�ٻ�ȯ(kokora)---------------------------------
function ItemUse_loneybec (role, Item)
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end
	local sc = 0
	sc =IsChaInRegion( role, 2 )
	if sc == 1 then
		SystemNotice( role , "��ɫ��ǰ���ڰ�ȫ��������ʹ���ٻ�ȯ" )
		UseItemFailed ( role )
		return
	end

	local Monsterattr = {523,524,525,36,526,527,529,35,532,532}
	local	sc = math.random(1,10)
	local x, y = GetChaPos( role )
	local Refresh = 3700				--����ʱ�䣬�뵥λ
	local life = 3600000					--����ʱ�䣬���뵥λ
	local new = CreateChaX( Monsterattr[sc] , x , y , 145 ,  Refresh, role )
	SetChaLifeTime( new, life )
end

------------------------------------------------------ʥ�������̻�
function ItemUse_XmasQRYH ( role , Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end
	local Now_Day = os.date("%d")
	local Now_Month = os.date("%m")
	local NowDayNum = tonumber(Now_Day)
	local NowMonthNum = tonumber(Now_Month)
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����ʹ��ʧ�ܣ�����������Ҫ��һ���ո�")
		UseItemFailed ( role )
		return
	end
	if NowMonthNum == 12 and NowDayNum >= 25 and NowDayNum <= 31 then
		local el = math.random ( 1 , 5 )
		local Item_ID = 0
		if el == 1 then
			Item_ID = 3354
		elseif el == 2 then
			Item_ID = 3355
		elseif el == 3 then
			Item_ID = 3356
		elseif el == 4 then
			Item_ID = 3077
		else
			Item_ID = 3343
		end
		GiveItem ( role , 0 , Item_ID , 1 , 4 )
	else
		SystemNotice( role , "������ֻ����ʥ�����ڼ�ʹ��Ŷ")
		UseItemFailed ( role )
		return
	end
end

---------------------------------------------------------ʥ�����̻�
function ItemUse_XmasKHYH ( role, Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end
	local Now_Day = os.date("%d")
	local Now_Month = os.date("%m")
	local NowDayNum = tonumber(Now_Day)
	local NowMonthNum = tonumber(Now_Month)
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����ʹ��ʧ�ܣ�����������Ҫ��һ���ո�")
		UseItemFailed ( role )
		return
	end
	if NowMonthNum == 12 and NowDayNum >= 25 and NowDayNum <= 31 then
		local el = math.random ( 1 , 10000 )
		local Item_ID = 0
		if el >= 1 and el <= 3000 then
			Item_ID = 2999
		elseif el >3000 and el <= 5000 then
			Item_ID = 1870
		elseif el > 5000 and el <= 7000 then
			Item_ID = 0145
		elseif el > 7000 and el <= 9000 then
			Item_ID = 1019
		elseif el == 9001 then
			Item_ID = 3000
		else
			Item_ID = 1036
		end
		GiveItem ( role , 0 , Item_ID , 1 , 4 )
	else
		SystemNotice( role , "������ֻ����ʥ�����ڼ�ʹ��Ŷ")
		UseItemFailed ( role )
		return
	end
end

------------------------------------------ʥ�����˱����̻�
function ItemUse_SDLRYH ( role , Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end
	local Now_Day = os.date("%d")
	local Now_Month = os.date("%m")
	local NowDayNum = tonumber(Now_Day)
	local NowMonthNum = tonumber(Now_Month)
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����ʹ��ʧ�ܣ�����������Ҫ��һ���ո�")
		UseItemFailed ( role )
		return
	end
	if NowMonthNum == 12 and NowDayNum >= 17 and NowDayNum <= 31 then
	local cha_name = GetChaDefaultName ( role ) 
		local el = math.random ( 1 , 1000 )
		local Item_ID = 0
		local Item_Num = 0
		if el >= 1 and el <= 500 then
			Item_ID = 227
			Item_Num = 5
		elseif el == 501 then
			Item_ID = 1014
			Item_Num = 1
		else
			Item_ID = 3834
			Item_Num = 5
		end
		GiveItem ( role , 0 , Item_ID , Item_Num , 4 )
		Notice ( cha_name.."ףԸȫ�����ʥ������!")
	else
		SystemNotice( role , "������ֻ����ʥ�����ڼ�ʹ��Ŷ")
		UseItemFailed ( role )
		return
	end
end

-------------------------------------merry christmas�̻�
function ItemUse_MCYH ( role , Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end
	local Now_Day = os.date("%d")
	local Now_Month = os.date("%m")
	local NowDayNum = tonumber(Now_Day)
	local NowMonthNum = tonumber(Now_Month)
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����ʹ��ʧ�ܣ�����������Ҫ��һ���ո�")
		UseItemFailed ( role )
		return
	end
	if NowMonthNum == 12 and NowDayNum >= 17 and NowDayNum <= 31 then
	local cha_name = GetChaDefaultName ( role ) 
		local el = math.random ( 1 , 100 )
		local Item_ID = 0
		local Item_Num = 0
		if el >= 1 and el <= 40 then
			Item_ID = 849
			Item_Num = 5
		elseif el > 40 and el <= 65 then
			Item_ID = 3097
			Item_Num = 2
		elseif el > 65 and el <= 90 then
			Item_ID = 3096
			Item_Num = 4
		else
			Item_ID = 3909
			Item_Num = 1
		end
		GiveItem ( role , 0 , Item_ID , Item_Num , 4 )
		Notice ( cha_name.."ףԸȫ�����Merry Christmas!")
	else
		SystemNotice( role , "������ֻ����ʥ�����ڼ�ʹ��Ŷ")
		UseItemFailed ( role )
		return
	end
end

-----------------------------------------------Happy NewYear�̻�
function ItemUse_HNYH ( role , Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end
	local Now_Day = os.date("%d")
	local Now_Month = os.date("%m")
	local NowDayNum = tonumber(Now_Day)
	local NowMonthNum = tonumber(Now_Month)
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����ʹ��ʧ�ܣ�����������Ҫ��һ���ո�")
		UseItemFailed ( role )
		return
	end
	if NowMonthNum == 12 and NowDayNum >= 17 and NowDayNum <= 31 then
	local cha_name = GetChaDefaultName ( role ) 
		local el = math.random ( 1 , 100 )
		local Item_ID = 0
		local Item_Num = 0
		if el >= 1 and el <= 40 then
			Item_ID = 849
			Item_Num = 5
		elseif el > 40 and el <= 65 then
			Item_ID = 3097
			Item_Num = 2
		elseif el > 65 and el <= 90 then
			Item_ID = 3096
			Item_Num = 4
		else
			Item_ID = 3909
			Item_Num = 1
		end
		GiveItem ( role , 0 , Item_ID , Item_Num , 4 )
		Notice ( cha_name.."ףԸȫ�����Happy NewYear!")
	else
		SystemNotice( role , "������ֻ����ʥ�����ڼ�ʹ��Ŷ")
		UseItemFailed ( role )
		return
	end
end

--------------------------------------------------ѩ�˱����̻�
function ItemUse_XRBQYH ( role , Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end
	local Now_Day = os.date("%d")
	local Now_Month = os.date("%m")
	local NowDayNum = tonumber(Now_Day)
	local NowMonthNum = tonumber(Now_Month)
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����ʹ��ʧ�ܣ�����������Ҫ��һ���ո�")
		UseItemFailed ( role )
		return
	end
	if NowMonthNum == 12 and NowDayNum >= 17 and NowDayNum <= 31 then
		local el = math.random ( 1 , 100 )
		local Item_ID = 0
		local Item_Num = 0
		if el >= 1 and el <= 50 then
			Item_ID = 3098
			Item_Num = 25
		elseif el == 51 then
			Item_ID = 333
			Item_Num = 1
		elseif el > 51 and el <= 81 then
			Item_ID = 227
			Item_Num = 15
		elseif el > 81 and el <= 91 then
			Item_ID = 3105
			Item_Num = 10
		else
			Item_ID = 3342
			Item_Num = 10
		end
		GiveItem ( role , 0 , Item_ID , Item_Num , 4 )
	else
		SystemNotice( role , "������ֻ����ʥ�����ڼ�ʹ��Ŷ")
		UseItemFailed ( role )
		return
	end
end

--------------------------------------------------��¹�����̻�
function ItemUse_MLBQYH ( role , Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end
	local Now_Day = os.date("%d")
	local Now_Month = os.date("%m")
	local NowDayNum = tonumber(Now_Day)
	local NowMonthNum = tonumber(Now_Month)
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"����ʹ��ʧ�ܣ�����������Ҫ��һ���ո�")
		UseItemFailed ( role )
		return
	end
	if NowMonthNum == 12 and NowDayNum >= 17 and NowDayNum <= 31 then
		local el = math.random ( 1 , 100 )
		local Item_ID = 0
		local Item_Num = 0
		if el >= 1 and el <= 61 then
			Item_ID = 885
			Item_Num = 1
		elseif el == 62 then
			Item_ID = 333
			Item_Num = 1
		elseif el >= 63 and el <= 64 then
			Item_ID = math.random ( 276 , 280 )
			Item_Num = 1
		elseif el > 64 and el <= 84 then
			Item_ID = 2312
			Item_Num = 15
		else
			Item_ID = 578
			Item_Num = 17
		end
		GiveItem ( role , 0 , Item_ID , Item_Num , 4 )
	else
		SystemNotice( role , "������ֻ����ʥ�����ڼ�ʹ��Ŷ")
		UseItemFailed ( role )
		return
	end
end

--------------------------------------------------ʥ�����˵�����
function ItemUse_SDLRKZ ( role , Item )
	local Item_ID = {}
	local Item_Num = {}
	local Item_PZ = {}
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 3 then
		SystemNotice(role ,"����ʹ��ʧ�ܣ�����������Ҫ�������ո�")
		UseItemFailed ( role )
		return
	end
	local role_job = GetChaAttr ( role, ATTR_JOB)
	if role_job == 0 or role_job == 1 or role_job == 2 or role_job == 4 or role_job == 5 then
		SystemNotice( role , "ֻ��2תְҵ�Ľ�ɫ�ſ���ʹ�ñ�����" )
		UseItemFailed ( role )
		return
	end
	local role_type = GetChaTypeID ( role )
	local a = math.random ( 1, 1000)
	if a >= 0 and a <= 300 then
		Item_ID[1] = 2872
		Item_Num[1] = 5
		Item_PZ[1] = 4
	elseif a >= 301 and a <= 600 then
		Item_ID[1] = 2873
		Item_Num [1]= 5
		Item_PZ[1] = 4
	elseif a >= 601 and a <= 650 then
		if role_type == 1 then
			Item_ID[1] = 5264
			Item_ID[2] = 5265
			Item_ID[3] = 5266
			Item_Num[1] = 1
			Item_Num[2] = 1
			Item_Num[3] = 1
			Item_PZ[1] = 4
			Item_PZ[2] = 4
			Item_PZ[3] = 4
		elseif role_type == 2 then
			Item_ID[1] = 5267
			Item_ID[2] = 5268
			Item_ID[3] = 5269
			Item_Num[1] = 1
			Item_Num[2] = 1
			Item_Num[3] = 1
			Item_PZ[1] = 4
			Item_PZ[2] = 4
			Item_PZ[3] = 4
		elseif role_type == 3 then
			Item_ID[1] = 5270
			Item_ID[2] = 5271
			Item_ID[3] = 5272
			Item_Num[1] = 1
			Item_Num[2] = 1
			Item_Num[3] = 1
			Item_PZ[1] = 4
			Item_PZ[2] = 4
			Item_PZ[3] = 4
		elseif role_type == 4 then
			Item_ID[1] = 5273
			Item_ID[2] = 5274
			Item_ID[3] = 5275
			Item_Num[1] = 1
			Item_Num[2] = 1
			Item_Num[3] = 1
			Item_PZ[1] = 4
			Item_PZ[2] = 4
			Item_PZ[3] = 4
		end
	elseif a >= 651 and a <= 700 then
		if role_job == 8 then
			Item_ID[1] = 1375
			Item_Num[1] = 1
			Item_PZ[1] = 22
		elseif role_job == 9 then
			Item_ID[1] = 1394
			Item_Num[1] = 1
			Item_PZ[1] = 22
		elseif role_job == 12 then
			Item_ID[1] = 42
			Item_Num[1] = 1
			Item_PZ[1] = 22
		elseif role_job == 13 then
			Item_ID[1] = 4198
			Item_Num[1] = 1
			Item_PZ[1] = 22
		elseif role_job == 14 then
			Item_ID[1] = 4204
			Item_Num[1] = 1
			Item_PZ[1] = 22
		elseif role_job == 16 then
			Item_ID[1] = 1421
			Item_Num[1] = 1
			Item_PZ[1] = 22
		end
	elseif a >= 701 and a <= 750 then
			Item_ID[1] = 2888
			Item_Num[1] = 3
			Item_PZ[1] = 4
	elseif a >= 751 and a <= 800 then
			Item_ID[1] = 2889
			Item_Num[1] = 3
			Item_PZ[1] = 4
	elseif a >= 801 and a <= 850 then
			Item_ID[1] = 2890
			Item_Num[1] = 3
			Item_PZ[1] = 4
	elseif a >= 851 and a <= 900 then
			Item_ID[1] = 2891
			Item_Num[1] = 3
			Item_PZ[1] = 4
	elseif a >= 901 and a <= 950 then
		if role_job == 8 then
			Item_ID[1] = 4148
			Item_Num[1] = 1
			Item_PZ[1] = 22
		elseif role_job == 9 then
			Item_ID[1] = 4150
			Item_Num[1] = 1
			Item_PZ[1] = 22
		elseif role_job == 12 then
			Item_ID[1] = 4152
			Item_Num[1] = 1
			Item_PZ[1] = 22
		elseif role_job == 13 then
			if role_type == 3 then
				Item_ID[1] = 4159
				Item_Num[1] = 1
				Item_PZ[1] = 22
			else
				Item_ID[1] = 4160
				Item_Num[1] = 1
				Item_PZ[1] = 22
			end
		elseif role_job == 14 then
			if role_type == 4 then
				Item_ID[1] = 4164
				Item_Num[1] = 1
				Item_PZ[1] = 22
			else
				Item_ID[1] = 4163
				Item_Num[1] = 1
				Item_PZ[1] = 22
			end
		elseif role_job == 16 then
			if role_type == 4 then
				Item_ID[1] = 4156
				Item_Num[1] = 1
				Item_PZ[1] = 22
			else
				Item_ID[1] = 4155
				Item_Num[1] = 1
				Item_PZ[1] = 22
			end
		end
	elseif a >= 951 and a <= 975 then
		if role_job == 8 then
			Item_ID[1] = 653
			Item_Num[1] = 1
			Item_PZ[1] = 22
		elseif role_job == 9 then
			Item_ID[1] = 4182
			Item_Num[1] = 1
			Item_PZ[1] = 22
		elseif role_job == 12 then
			Item_ID[1] = 4184
			Item_Num[1] = 1
			Item_PZ[1] = 22
		elseif role_job == 13 then
			if role_type == 3 then
				Item_ID[1] = 4191
				Item_Num[1] = 1
				Item_PZ[1] = 22
			else
				Item_ID[1] = 4192
				Item_Num[1] = 1
				Item_PZ[1] = 22
			end
		elseif role_job == 14 then
			if role_type == 4 then
				Item_ID[1] = 4196
				Item_Num[1] = 1
				Item_PZ[1] = 22
			else
				Item_ID[1] = 4195
				Item_Num[1] = 1
				Item_PZ[1] = 22
			end
		elseif role_job == 16 then
			if role_type == 4 then
				Item_ID[1] = 4188
				Item_Num[1] = 1
				Item_PZ[1] = 22
			else
				Item_ID[1] = 4187
				Item_Num[1] = 1
				Item_PZ[1] = 22
			end
		end
	else
		if role_job == 8 then
			Item_ID[1] = 477
			Item_Num[1] = 1
			Item_PZ[1] = 22
		elseif role_job == 9 then
			Item_ID[1] = 4166
			Item_Num[1] = 1
			Item_PZ[1] = 22
		elseif role_job == 12 then
			Item_ID[1] = 4168
			Item_Num[1] = 1
			Item_PZ[1] = 22
		elseif role_job == 13 then
			if role_type == 3 then
				Item_ID[1] = 4175
				Item_Num[1] = 1
				Item_PZ[1] = 22
			else
				Item_ID[1] = 4176
				Item_Num[1] = 1
				Item_PZ[1] = 22
			end
		elseif role_job == 14 then
			if role_type == 4 then
				Item_ID[1] = 4180
				Item_Num[1] = 1
				Item_PZ[1] = 22
			else
				Item_ID[1] = 4179
				Item_Num[1] = 1
				Item_PZ[1] = 22
			end
		elseif role_job == 16 then
			if role_type == 4 then
				Item_ID[1] = 4172
				Item_Num[1] = 1
				Item_PZ[1] = 22
			else
				Item_ID[1] = 4171
				Item_Num[1] = 1
				Item_PZ[1] = 22
			end
		end
	end
	for i = 1, 3, 1 do
		if Item_ID[i] ~= nil and Item_Num[i] ~= nil and Item_PZ[i] ~= nil then
			GiveItem ( role , 0 , Item_ID[i] , Item_Num[i] , Item_PZ[i] )
		end
	end
end

-------------------------------------ʥ�����(С)
function ItemUse_XmasLB ( role, Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"����ʹ��ʧ�ܣ�����������Ҫ��һ���ո�")
		UseItemFailed ( role )
		return
	end
	local br = math.random( 1, 10)
	local Item_ID = 0
	local Item_Num = 0
	if br >= 1 and br <= 3 then
		Item_ID = 3343
		Item_Num = 10
	elseif br >= 4 and br <= 6 then
		Item_ID = 3344
		Item_Num = 10
	else
		Item_ID = 2883
		Item_Num = 5
	end
	GiveItem ( role , 0 , Item_ID , Item_Num , 4 )
end

--------------------------------------ʥ����Ʊ
function ItemUse_movexmas ( role , Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "�����Ǽ����۵����飬�뱣��100����hp��spŶ")
		UseItemFailed ( role )
		return
	end
------MoveCity���Ӽ������ж�
	local map_name = GetChaMapName ( role )
	if map_name == "prisonisland" then
		SystemNotice ( role , "��ǰ��ͼ���ܴ���" )
		UseItemFailed ( role )
		return
	end
	local Now_Day = os.date("%d")
	local Now_Month = os.date("%m")
	local NowDayNum = tonumber(Now_Day)
	local NowMonthNum = tonumber(Now_Month)
	if NowMonthNum == 12 and NowDayNum <= 31 then
		local j = DelBagItem(role,2883,1)
		if j == 1 then
			MoveCity(role,"ʥ����")
			return
		end
	else
		SystemNotice(role ,"ʥ�����Ѿ�����Ŷ")
		UseItemFailed ( role )
		return
	end
end	
------------------------------------------------------------����������
function ItemUse_ALDXB ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"û���㹻�Ŀռ䣬�޷������ӡ�")
		UseItemFailed ( role )
		return
	end

	local cha_name = GetChaDefaultName ( role ) 
	local star=math.random ( 1, 20000 )
	--SystemNotice(role ,"star=="..star)
		if star<=3700 then
			GiveItem ( role , 0 , 2440  , 10 , 4  )
		elseif star>=3701 and star<=5700 then
			GiveItem ( role , 0 , 3885  , 1 , 4  )
		elseif star>=5701 and star<=7100 then
			GiveItem ( role , 0 , 3094  , 1 , 4  )
		elseif star>=7101 and star<=13100 then
			local el = math.random ( 1, 5 )
			if el==1  then
				GiveItem ( role , 0 , 2445  , 3 , 4 )
			elseif el==2	then
				GiveItem ( role , 0 , 3076  , 3 , 4 )
			elseif el==3	then
				GiveItem ( role , 0 , 0563  , 3 , 4 )
			elseif el==4	then	
				GiveItem ( role , 0 , 0583  , 3 , 4 )
			elseif el==5	then
				GiveItem ( role , 0 , 3050  , 3 , 4 )
			end
		elseif star>=13101 and star<=15100 then
			local el = math.random ( 1, 2 )
			if el==1  then
				GiveItem ( role , 0 , 0849  , 1 , 4 )
			elseif el==2  then
				GiveItem ( role , 0 , 0680  , 1 , 4 )
			end
		elseif star>=15101 and star<=19300then
			local el1= math.random ( 1, 6 )
			if el1==1  then
				GiveItem ( role , 0 , 2438  , 5 , 4 )
			elseif el1==2 then
				GiveItem ( role , 0 , 2419  , 3 , 4 )
			elseif el1==3 then
				GiveItem ( role , 0 , 2386  , 4 , 4 )
			elseif el1==4 then
				GiveItem ( role , 0 , 0179  , 1 , 4 )
			elseif el1==5 then
				GiveItem ( role , 0 , 3084  , 1 , 4 )
			elseif el1==6 then
				GiveItem ( role , 0 , 3085  , 1 , 4 )
			end
		elseif star>=19301 and star<=19600then
			local el1= math.random ( 1, 5 )
			if el1==1  then
				GiveItem ( role , 0 , 0863  , 1 , 4 )
				local message = cha_name.."�򿪰�����С��,�õ�������" 
				Notice ( message )
			elseif el1==2 then
				GiveItem ( role , 0 , 0860  , 1 , 4 )
				local message1 = cha_name.."�򿪰�����С��,�õ��˷���ʯ" 
				Notice ( message1 )
			elseif el1==3 then
				GiveItem ( role , 0 , 0861  , 1 , 4 )
				local message2 = cha_name.."�򿪰�����С��,�õ���ӥ��ʯ" 
				Notice ( message2 )
			elseif el1==4 then
				GiveItem ( role , 0 , 0862  , 1 , 4 )
				local message3 = cha_name.."�򿪰�����С��,�õ�������" 
				Notice ( message3 )
			elseif el1==5 then
				GiveItem ( role , 0 , 1012  , 1 , 4 )
				local message4 = cha_name.."�򿪰�����С��,�õ����������֮��" 
				Notice ( message4 )
			end

		elseif star==19601 then
			GiveItem ( role , 0 , 0192  , 1 , 4  )
			local message8= cha_name.."�򿪰�����С��,�õ������ޱ���" 
			Notice ( message8 )

		elseif star>=19601 and star<=20000 then	
			GiveItem ( role , 0 , 2224  , 1 , 4  )
			local message8= cha_name.."�򿪰�����С��,�õ�����ʽĦ����װ����" 
			Notice ( message8 )
		end
	
end

----���˽ڽ�ָ----
function ItemUse_QRJJZ (role, Item )
	local x, y = GetChaPos(role)
	local map_name = GetChaMapName (role)
	x = math.floor (x*0.01)
	y = math.floor (y*0.01)
	local t = {} 
	t[0] = DEFER 
	t[1] = GetTeamCha(role, 0 )  
	t[2] = GetTeamCha(role, 1 )   
	t[3] = GetTeamCha(role, 2 )    
	t[4] = GetTeamCha(role, 3 )
	local item_count = CheckBagItem ( role , 3101 )	 ----���˽ڽ�ָ
	if item_count <= 0 then  
	end
end 

-------------------------------------------------85BBϵ�� By dina
----------������ָ�һ�ȯ
function ItemUse_byjz( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "���ϲ���ʹ��" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"������Ҫ1������")
		UseItemFailed ( role )
		return
	end
	local cha_name = GetChaDefaultName ( role ) 
	local star=math.random ( 1, 10 )
	--SystemNotice(role ,"star=="..star)
	if star==1 then
		GiveItem ( role , 0 , 1107  , 1 , 4  )
		local message = cha_name.."�򿪰�����ָ�һ�ȯ��ϲ�ػ�� ���ָ��" 
		Notice ( message )
	elseif star==2 then
		GiveItem ( role , 0 , 1108, 1 , 4  ) 
		local message1 = cha_name.."�򿪰�����ָ�һ�ȯ��ϲ�ػ�� ����ָ��" 
		Notice ( message1 )
	elseif star==3 then
		GiveItem ( role , 0 , 1109, 1 , 4  ) 
		local message2 = cha_name.."�򿪰�����ָ�һ�ȯ��ϲ�ػ�� ��Ȼָ��" 
		Notice ( message2 )
	elseif star==4 then
		GiveItem ( role , 0 , 1110, 1 , 4  ) 
		local message3 = cha_name.."�򿪰�����ָ�һ�ȯ��ϲ�ػ�� ѩ��ָ��" 
		Notice ( message3 )
	elseif star==5 then
		GiveItem ( role , 0 , 1112, 1 , 4  ) 
		local message4 = cha_name.."�򿪰�����ָ�һ�ȯ��ϲ�ػ�� ��Ѫָ��" 
		Notice ( message4 )
	elseif star==6 then
		GiveItem ( role , 0 , 1113, 1 , 4  ) 
		local message5 = cha_name.."�򿪰�����ָ�һ�ȯ��ϲ�ػ�� ����ָ��" 
		Notice ( message5 )
	elseif star==7 then
		GiveItem ( role , 0 , 1114, 1 , 4  ) 
		local message6 = cha_name.."�򿪰�����ָ�һ�ȯ��ϲ�ػ�� ��ӯָ��" 
		Notice ( message6 )
	elseif star==8 then
		GiveItem ( role , 0 , 1862, 1 , 4  ) 
		local message7 = cha_name.."�򿪰�����ָ�һ�ȯ��ϲ�ػ�� ����ָ��" 
		Notice ( message7 )
	elseif star==9 then
		GiveItem ( role , 0 , 2209, 1 , 4  ) 
		local message8 = cha_name.."�򿪰�����ָ�һ�ȯ��ϲ�ػ�� ��ηָ��" 
		Notice ( message8 )
	else
		GiveItem ( role , 0 , 1111, 1 , 4  ) 
		local message9 = cha_name.."�򿪰�����ָ�һ�ȯ��ϲ�ػ�� ʧ��ָ��" 
		Notice ( message9 )
	end
end

----------�ƽ��ָ�һ�ȯ
function ItemUse_hjjz( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "���ϲ���ʹ��" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"������Ҫ1������")
		UseItemFailed ( role )
		return
	end
	local cha_name = GetChaDefaultName ( role ) 
	local star=math.random ( 1, 10 )
	--SystemNotice(role ,"star=="..star)
	if star==1 then
		GiveItem ( role , 0 , 2308  , 1 , 4  )
		local message = cha_name.."�򿪻ƽ��ָ�һ�ȯ��ϲ�ػ�� �Ա�����" 
		Notice ( message )
	elseif star==2 then
		GiveItem ( role , 0 , 2309, 1 , 4  ) 
		local message1 = cha_name.."�򿪻ƽ��ָ�һ�ȯ��ϲ�ػ�� ��ʨŭ��" 
		Notice ( message1 )
	elseif star==3 then
		GiveItem ( role , 0 , 2310, 1 , 4  ) 
		local message2 = cha_name.."�򿪻ƽ��ָ�һ�ȯ��ϲ�ػ�� ����ͷ�" 
		Notice ( message2 )
	elseif star==4 then
		GiveItem ( role , 0 , 2311, 1 , 4  ) 
		local message3 = cha_name.."�򿪻ƽ��ָ�һ�ȯ��ϲ�ػ�� �ݾ���" 
		Notice ( message3 )
	elseif star==5 then
		GiveItem ( role , 0 , 2316, 1 , 4  ) 
		local message4 = cha_name.."�򿪻ƽ��ָ�һ�ȯ��ϲ�ػ�� ��¹����" 
		Notice ( message4 )
	elseif star==6 then
		GiveItem ( role , 0 , 2317, 1 , 4  ) 
		local message5 = cha_name.."�򿪻ƽ��ָ�һ�ȯ��ϲ�ػ�� ����֮��" 
		Notice ( message5 )
	elseif star==7 then
		GiveItem ( role , 0 , 2318, 1 , 4  ) 
		local message6 = cha_name.."�򿪻ƽ��ָ�һ�ȯ��ϲ�ػ�� ��ӥ֮צ" 
		Notice ( message6 )
	elseif star==8 then
		GiveItem ( role , 0 , 2319, 1 , 4  ) 
		local message7 = cha_name.."�򿪻ƽ��ָ�һ�ȯ��ϲ�ػ�� ��Գ֮��" 
		Notice ( message7 )
	elseif star==9 then
		GiveItem ( role , 0 , 2320, 1 , 4  ) 
		local message8 = cha_name.."�򿪻ƽ��ָ�һ�ȯ��ϲ�ػ�� ����֮��" 
		Notice ( message8 )
	else
		GiveItem ( role , 0 , 2321, 1 , 4  ) 
		local message9 = cha_name.."�򿪻ƽ��ָ�һ�ȯ��ϲ�ػ�� ����֮��" 
		Notice ( message9 )
	end
end

----------��ʯ��ָ�һ�ȯ
function ItemUse_zsjz( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "���ϲ���ʹ��" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"������Ҫ1������")
		UseItemFailed ( role )
		return
	end
	local cha_name = GetChaDefaultName ( role ) 
	local star=math.random ( 1, 10 )
	--SystemNotice(role ,"star=="..star)
	if star==1 then
		GiveItem ( role , 0 , 2322  , 1 , 4  )
		local message = cha_name.."����ʯ��ָ�һ�ȯ��ϲ�ػ�� ����" 
		Notice ( message )
	elseif star==2 then
		GiveItem ( role , 0 , 2345, 1 , 4  ) 
		local message1 = cha_name.."����ʯ��ָ�һ�ȯ��ϲ�ػ�� ����" 
		Notice ( message1 )
	elseif star==3 then
		GiveItem ( role , 0 , 2346, 1 , 4  ) 
		local message2 = cha_name.."����ʯ��ָ�һ�ȯ��ϲ�ػ�� ���" 
		Notice ( message2 )
	elseif star==4 then
		GiveItem ( role , 0 , 2347, 1 , 4  ) 
		local message3 = cha_name.."����ʯ��ָ�һ�ȯ��ϲ�ػ�� ����" 
		Notice ( message3 )
	elseif star==5 then
		GiveItem ( role , 0 , 2397, 1 , 4  ) 
		local message4 = cha_name.."����ʯ��ָ�һ�ȯ��ϲ�ػ�� ����" 
		Notice ( message4 )
	elseif star==6 then
		GiveItem ( role , 0 , 2398, 1 , 4  ) 
		local message5 = cha_name.."����ʯ��ָ�һ�ȯ��ϲ�ػ�� ����" 
		Notice ( message5 )
	elseif star==7 then
		GiveItem ( role , 0 , 2399, 1 , 4  ) 
		local message6 = cha_name.."����ʯ��ָ�һ�ȯ��ϲ�ػ�� ��˪" 
		Notice ( message6 )
	elseif star==8 then
		GiveItem ( role , 0 , 2400, 1 , 4  ) 
		local message7 = cha_name.."����ʯ��ָ�һ�ȯ��ϲ�ػ�� �̷�" 
		Notice ( message7 )
	elseif star==9 then
		GiveItem ( role , 0 , 2401, 1 , 4  ) 
		local message8 = cha_name.."����ʯ��ָ�һ�ȯ��ϲ�ػ�� ����" 
		Notice ( message8 )
	else
		GiveItem ( role , 0 , 2402, 1 , 4  ) 
		local message9 = cha_name.."����ʯ��ָ�һ�ȯ��ϲ�ػ�� ��ѩ" 
		Notice ( message9 )
	end
end

----------���������һ�ȯ
function ItemUse_bjxl( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "���ϲ���ʹ��" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"������Ҫ1������")
		UseItemFailed ( role )
		return
	end
	local cha_name = GetChaDefaultName ( role ) 
	local star=math.random ( 1, 5 )
	--SystemNotice(role ,"star=="..star)
	if star==1 then
		GiveItem ( role , 0 , 2405  , 1 , 4  )
		local message = cha_name.."�򿪲��������һ�ȯ��ϲ�ػ�� �ǳ�֮��" 
		Notice ( message )
	elseif star==2 then
		GiveItem ( role , 0 , 2406, 1 , 4  ) 
		local message1 = cha_name.."�򿪲��������һ�ȯ��ϲ�ػ�� �ǳ�֮��" 
		Notice ( message1 )
	elseif star==3 then
		GiveItem ( role , 0 , 2407, 1 , 4  ) 
		local message2 = cha_name.."�򿪲��������һ�ȯ��ϲ�ػ�� �ǳ�֮��" 
		Notice ( message2 )
	elseif star==4 then
		GiveItem ( role , 0 , 2494, 1 , 4  ) 
		local message3 = cha_name.."�򿪲��������һ�ȯ��ϲ�ػ�� �ǳ�֮��" 
		Notice ( message3 )
	else
		GiveItem ( role , 0 , 2497, 1 , 4  ) 
		local message4 = cha_name.."�򿪲��������һ�ȯ��ϲ�ػ�� �ǳ�֮��" 
		Notice ( message4 )
	end
end

----------��������һ�ȯ
function ItemUse_hjxl( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "���ϲ���ʹ��" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"������Ҫ1������")
		UseItemFailed ( role )
		return
	end
	local cha_name = GetChaDefaultName ( role ) 
	local star=math.random ( 1, 5 )
	--SystemNotice(role ,"star=="..star)
	if star==1 then
		GiveItem ( role , 0 , 2498  , 1 , 4  )
		local message = cha_name.."�򿪺�������һ�ȯ��ϲ�ػ�� ����֮��" 
		Notice ( message )
	elseif star==2 then
		GiveItem ( role , 0 , 2506, 1 , 4  ) 
		local message1 = cha_name.."�򿪺�������һ�ȯ��ϲ�ػ�� ����֮��" 
		Notice ( message1 )
	elseif star==3 then
		GiveItem ( role , 0 , 2507, 1 , 4  ) 
		local message2 = cha_name.."�򿪺�������һ�ȯ��ϲ�ػ�� ����֮��" 
		Notice ( message2 )
	elseif star==4 then
		GiveItem ( role , 0 , 2508, 1 , 4  ) 
		local message3 = cha_name.."�򿪺�������һ�ȯ��ϲ�ػ�� ����֮��" 
		Notice ( message3 )
	else
		GiveItem ( role , 0 , 2509, 1 , 4  ) 
		local message4 = cha_name.."�򿪺�������һ�ȯ��ϲ�ػ�� ����֮��" 
		Notice ( message4 )
	end
end

----------���������һ�ȯ
function ItemUse_gjxl( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "���ϲ���ʹ��" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"������Ҫ1������")
		UseItemFailed ( role )
		return
	end
	local cha_name = GetChaDefaultName ( role ) 
	local star=math.random ( 1, 5 )
	--SystemNotice(role ,"star=="..star)
	if star==1 then
		GiveItem ( role , 0 , 2510  , 1 , 4  )
		local message = cha_name.."�򿪹��������һ�ȯ��ϲ�ػ�� ��֮ͫ��" 
		Notice ( message )
	elseif star==2 then
		GiveItem ( role , 0 , 2511, 1 , 4  ) 
		local message1 = cha_name.."�򿪹��������һ�ȯ��ϲ�ػ�� ��֮ͫ��" 
		Notice ( message1 )
	elseif star==3 then
		GiveItem ( role , 0 , 2512, 1 , 4  ) 
		local message2 = cha_name.."�򿪹��������һ�ȯ��ϲ�ػ�� ��֮ͫ��" 
		Notice ( message2 )
	elseif star==4 then
		GiveItem ( role , 0 , 2513, 1 , 4  ) 
		local message3 = cha_name.."�򿪹��������һ�ȯ��ϲ�ػ�� ��֮ͫ��" 
		Notice ( message3 )
	else
		GiveItem ( role , 0 , 2514, 1 , 4  ) 
		local message4 = cha_name.."�򿪹��������һ�ȯ��ϲ�ػ�� ��֮ͫ��" 
		Notice ( message4 )
	end
end

---------------------------------��֮����
function ItemUse_SZQFB( role, Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "���ϲ���ʹ��" )
		UseItemFailed ( role )
		return
	end
	local job = GetChaAttr( role, ATTR_JOB) --ȡְҵ
	local cha_type = GetChaTypeID ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"Ҫ����֮������Ҫ������������1����λ")
		UseItemFailed ( role )
		return
	end
	if cha_type ~= 2 and job==4 then
		GiveItem ( role , 0 , 4276 , 1 , 4 )--------------��ӡ��ѩ�´�	
	elseif cha_type ~= 2 and job==16 then
		GiveItem ( role , 0 , 4276 , 1 , 4 )--------------��ӡ��ѩ�´�	
	elseif cha_type == 2  and job~=0 then
		local dina=math.random ( 1, 2 )
	    if dina==1 then
		GiveItem ( role , 0 , 4281  , 1 , 4 )-------------��ӡ�Ŀ�ѩ��
		else
		GiveItem ( role , 0 , 4275  , 1 , 4 )------------��ӡ�������ؽ�
		end
	elseif cha_type ~= 2 and  cha_type ~= 4 and job==2 then
		local dina1=math.random ( 1, 2 )
	    if dina1==1 then
		GiveItem ( role , 0 , 4278  , 1 , 4 )-------------��ӡ�ĺ��ȹ�
		else
		GiveItem ( role , 0 , 4277  , 1 , 4 )------------��ӡ��ѩħǹ
		end
	elseif cha_type ~= 2 and  cha_type ~= 4 and job==12 then
		local dina2=math.random ( 1, 2 )
	    if dina2==1 then
		GiveItem ( role , 0 , 4277  , 1 , 4 )------------��ӡ��ѩħǹ
		else
		GiveItem ( role , 0 , 4278  , 1 , 4 )-------------��ӡ�ĺ��ȹ�
		end
	elseif cha_type ~= 1 and  cha_type ~= 2 and job==5 then
		local dina3=math.random ( 1, 2 )
	    if dina3==1 then
		GiveItem ( role , 0 , 4279  , 1 , 4 )------------��ӡ�ĺ���֮��
		else
		GiveItem ( role , 0 , 4280  , 1 , 4 )-------------��ӡ�Ĺ�˪֮��
		end
	elseif cha_type ~= 1 and  cha_type ~= 2 and job==13 then
	    GiveItem ( role , 0 , 4279  , 1 , 4 )------------��ӡ�ĺ���֮��
	elseif cha_type ~= 1 and  cha_type ~= 2 and job==14 then
	    GiveItem ( role , 0 , 4280  , 1 , 4 )-------------��ӡ�Ĺ�˪֮��
	elseif cha_type == 1 and  job==1 then
	    GiveItem ( role , 0 , 4274  , 1 , 4 )-------------��ӡ�������ὣ
	elseif cha_type == 1 and  job==9 then
	    GiveItem ( role , 0 , 4274  , 1 , 4 )-------------��ӡ�������ὣ
	else 
		SystemNotice(role ,"Ŀǰ����ʹ�ã����Ҹ���ְҵ��ʦתְ.")
		UseItemFailed ( role )
		return
	end
end


---------------------------------ʥ֮���ٰ�
function ItemUse_SZJFB( role, Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "���ϲ���ʹ��" )
		UseItemFailed ( role )
		return
	end
	local job = GetChaAttr( role, ATTR_JOB) --ȡְҵ
	local cha_type = GetChaTypeID ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"Ҫ��ʥ֮���ٰ���Ҫ������������1����λ")
		UseItemFailed ( role )
		return
	end
	if cha_type ~= 2 and job==4 then
		GiveItem ( role , 0 , 2580 , 1 , 4 )--------------����֮����		
	elseif cha_type ~= 2 and job==16 then
		GiveItem ( role , 0 , 2580 , 1 , 4 )--------------����֮����		
	elseif cha_type == 2  and job~=0 then
		GiveItem ( role , 0 , 2577 , 1 , 4 )----------------����˹֮ǿ��
	elseif cha_type ~= 2 and  cha_type ~= 4 and job==2 then
		GiveItem ( role , 0 , 2579  , 1 , 4 )-----------------����֮����
	elseif cha_type ~= 2 and  cha_type ~= 4 and job==12 then
		GiveItem ( role , 0 , 2579  , 1 , 4 )-----------------����֮����
	elseif cha_type ~= 1 and  cha_type ~= 2 and job==5 then
		local dina=math.random ( 1, 2 )
	    if dina==1 then
		GiveItem ( role , 0 , 2582  , 1 , 4 )------------��ڤ֮����
		else
		GiveItem ( role , 0 , 2581  , 1 , 4 )-------------ڤ��֮ħ��
		end
	elseif cha_type ~= 1 and  cha_type ~= 2 and job==13 then
	    GiveItem ( role , 0 , 2582  , 1 , 4 )------------��ڤ֮����
	elseif cha_type ~= 1 and  cha_type ~= 2 and job==14 then
	    GiveItem ( role , 0 , 2581  , 1 , 4 )-------------ڤ��֮ħ��
	elseif cha_type == 1 and  job==1 then
	    GiveItem ( role , 0 , 2578  , 1 , 4 )-------------�ڰ�֮����
	elseif cha_type == 1 and  job==9 then
	    GiveItem ( role , 0 , 2578  , 1 , 4 )-------------�ڰ�֮����
	else 
		SystemNotice(role ,"Ŀǰ����ʹ�ã����Ҹ���ְҵ��ʦתְ.")
		UseItemFailed ( role )
		return
	end
end

---------------------------------��֮���Ӱ�
function ItemUse_XZHYB( role, Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "���ϲ���ʹ��" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"Ҫ����֮���Ӱ���Ҫ������������1����λ")
		UseItemFailed ( role )
		return
	else
		GiveItem ( role , 0 , 4282 , 1 , 4 )
	end
end

-----------------------------------------------------08���괺��ϵ�к��kokora-----------------------------------------------------------

----------------------------------------------����������----------------------------------------------------------
function ItemUse_springgiftA (role, Item)
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ������������" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	 if Item_CanGet < 1 then
		SystemNotice(role ,"������������������Ҫ1����λ")
		UseItemFailed ( role )
		return
	end
	local	sc = math.random ( 1, 100 )
	local cha_name = GetChaDefaultName ( role )
	local item_name = ""
	if  sc <=60 then	
		GiveItem ( role , 0 , 3094 , 5 , 4 )                      ---------------Ŭ��������   ��û���60%
		item_name = "Ŭ��������"
	elseif sc <=76 then		
		GiveItem ( role , 0 , 0849 , 5 , 4 )                      ---------------��Ӿ����   ��û���16%
		item_name = "��Ӿ����"
	elseif sc <=86 then
		GiveItem ( role , 0 , 3096 , 5 , 4 )                      ---------------�Ƹ�������   ��û���10%
		item_name = "�Ƹ�������"
	elseif sc <=91 then
		GiveItem ( role , 0 , 3095 , 2 , 4 )                      ---------------�߼�Ŭ��������   ��û���5%
		item_name = "�߼�Ŭ��������"
	elseif sc <=96 then
		GiveItem ( role , 0 , 3097 , 2 , 4 )                      ---------------�߼��Ƹ�������   ��û���5%
		item_name = "�߼��Ƹ�������"
	elseif sc <=98 then
		GiveItem ( role , 0 , 1036 , 1 , 4 )                      ---------------ħ��Ů��   ��û���2%
		item_name = "ħ��Ů��"
	else   
		GiveItem ( role , 0 , 1019 , 1 , 4 )                      ---------------���������   ��û���2%
		item_name = "���������"
	end
	Notice ( "��ϲ���" ..cha_name.."������������,��ϲ�Ļ��"..item_name )
	
end

------------------------------------------------�߼�������-------------------------------------------------------
function ItemUse_springgiftB (role, Item)
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ�ø߼�������" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	 if Item_CanGet < 1 then
		SystemNotice(role ,"�򿪸߼�������������Ҫ1����λ")
		UseItemFailed ( role )
		return
	end
	local	sc = math.random ( 1, 49 )
	local ItemId = 0
	
	if sc <=14 then	
		ItemId = 3457						     -------------�ɿ���ʯ       ��û���14%

	elseif sc <=26 then		
		local GoodItem = {}
		GoodItem[0] = 1923                                       -------------������ӡ���Ի�֮��       ��û���12%
		GoodItem[1] = 1905                                       -------------������ӡ����֮��ǹ       ��û���12%
	
		local Good_C = math.random ( 1, 2 )-1
		ItemId = GoodItem[Good_C]

	elseif sc <=36 then
		local GoodItem = {}
		GoodItem[0] = 0890                                       -------------װ���ӹ̼�       ��û���10%
		GoodItem[1] = 1916                                       -------------������ӡ�����䷨��       ��û���10%
	
		local Good_C = math.random ( 1, 2 )-1
		ItemId = GoodItem[Good_C]

	elseif sc <=44 then
		local GoodItem = {}
		GoodItem[0] = 1897                                       -------------������ӡ����֮����       ��û���8%
		GoodItem[1] = 1894                                       -------------������ӡ����֮�þ�       ��û���8%
		GoodItem[2] = 1909                                       -------------������ӡ���Է�֮��       ��û���8%
	
		local Good_C = math.random ( 1, 3 )-1
		ItemId = GoodItem[Good_C]

	elseif sc <=47 then
		local GoodItem = {}
		GoodItem[0] = 2536                                       -------------������ʯ       ��û���3%
		GoodItem[1] = 2539                                       -------------�ܿ���ʯ       ��û���3%
		GoodItem[2] = 2542                                       -------------������ʯ       ��û���3%
		GoodItem[3] = 2545                                       -------------ά����ʯ       ��û���3%
	
		local Good_C = math.random ( 1, 4 )-1
		ItemId = GoodItem[Good_C]

	else  local GoodItem = {}
		GoodItem[0] = 0891                                       -------------װ���߻���       ��û���2%
		GoodItem[1] = 2533                                       -------------÷����ʯ          ��û���2%
		GoodItem[2] = 2530                                       -------------��ά��ʯ          ��û���2%
	
		local Good_C = math.random ( 1, 3 )-1
		ItemId = GoodItem[Good_C]
	end
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role )
	GiveItem ( role , 0 , ItemId , 1 , 4 )
	local message = "��ϲ���" ..cha_name.."�򿪸߼�������,��ϲ�Ļ��"..itemname  
	Notice ( message )
end

----------------------------------------------����������----------------------------------------------------------
function ItemUse_springgiftC (role, Item)
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ�ó���������" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	 if Item_CanGet < 1 then
		SystemNotice(role ,"�򿪳���������������Ҫ1����λ")
		UseItemFailed ( role )
		return
	end
	local	sc = math.random ( 1, 1000 )
	local cha_name = GetChaDefaultName ( role )
	local item_name = ""
	local cha_type = GetChaTypeID ( role ) 

	if  sc <=239 then
		if cha_type == 1  then
		GiveItem ( role , 0 , 5651 , 1 , 4 )                      ---------------�´���װ-����ͷ��   ��û���23.9%
		item_name = "�´���װ-����ͷ��"
		elseif	cha_type == 2  then
		GiveItem ( role , 0 , 5655 , 1 , 4 )                      ---------------�´���װ-����˹ͷ��   ��û���23.9%
		item_name = "�´���װ-����˹ͷ��"
		elseif	cha_type == 3  then
		GiveItem ( role , 0 , 5659 , 1 , 4 )                      ---------------�´���װ-������ͷ��   ��û���23.9%
		item_name = "�´���װ-������ͷ��"
		elseif	cha_type == 4  then
		GiveItem ( role , 0 , 5695 , 1 , 4 )                      ---------------�´���װ-����ͷ��   ��û���23.9%
		item_name = "�´���װ-����ͷ��"
		end
	elseif sc <=439 then
		if cha_type == 1  then
		GiveItem ( role , 0 , 5652 , 1 , 4 )                      ---------------�´���װ-��������   ��û���20%
		item_name = "�´���װ-��������"
		elseif	cha_type == 2  then
		GiveItem ( role , 0 , 5656 , 1 , 4 )                      ---------------�´���װ-����˹����   ��û���20%
		item_name = "�´���װ-����˹����"
		elseif	cha_type == 3  then
		GiveItem ( role , 0 , 5660 , 1 , 4 )                      ---------------�´���װ-����������   ��û���20%
		item_name = "�´���װ-����������"
		elseif	cha_type == 4  then
		GiveItem ( role , 0 , 5696 , 1 , 4 )                      ---------------�´���װ-��������   ��û���20%
		item_name = "�´���װ-��������"
		end
	elseif sc <=639 then
		if cha_type == 1  then
		GiveItem ( role , 0 , 5653 , 1 , 4 )                      ---------------�´���װ-��������   ��û���20%
		item_name = "�´���װ-��������"
		elseif	cha_type == 2  then
		GiveItem ( role , 0 , 5657 , 1 , 4 )                      ---------------�´���װ-����˹����   ��û���20%
		item_name = "�´���װ-����˹����"
		elseif	cha_type == 3  then
		GiveItem ( role , 0 , 5693 , 1 , 4 )                      ---------------�´���װ-����������   ��û���20%
		item_name = "�´���װ-����������"
		elseif	cha_type == 4  then
		GiveItem ( role , 0 , 5697 , 1 , 4 )                      ---------------�´���װ-��������   ��û���20%
		item_name = "�´���װ-��������"
		end
	elseif sc <=839 then
		if cha_type == 1  then
		GiveItem ( role , 0 , 5654 , 1 , 4 )                      ---------------�´���װ-����Ь��   ��û���20%
		item_name = "�´���װ-����Ь��"
		elseif	cha_type == 2  then
		GiveItem ( role , 0 , 5658 , 1 , 4 )                      ---------------�´���װ-����˹Ь��   ��û���20%
		item_name = "�´���װ-����˹Ь��"
		elseif	cha_type == 3  then
		GiveItem ( role , 0 , 5694 , 1 , 4 )                      ---------------�´���װ-������Ь��   ��û���20%
		item_name = "�´���װ-������Ь��"
		elseif	cha_type == 4  then
		GiveItem ( role , 0 , 5698 , 1 , 4 )                      ---------------�´���װ-����Ь��   ��û���20%
		item_name = "�´���װ-����Ь��"
		end
	elseif sc <=909 then
		GiveItem ( role , 0 , 1012 , 1 , 4 )                      ---------------����֮��          ��û���7%
		item_name = "����֮��"
	elseif sc <=939 then
		GiveItem ( role , 0 , 0863 , 1 , 4 )                      ---------------����   ��û���3%
		item_name = "����"
	elseif sc <=969 then
		GiveItem ( role , 0 , 0862 , 1 , 4 )                      ---------------����   ��û���3%
		item_name = "����"
	elseif sc <=979 then
		GiveItem ( role , 0 , 0864 , 1 , 4 )                      ---------------����֮ͫ   ��û���1%
		item_name = "����֮ͫ"
	elseif sc <=989 then
		GiveItem ( role , 0 , 0865 , 1 , 4 )                      ---------------����֮��   ��û���1%
		item_name = "����֮��"
	elseif sc <=999 then
		GiveItem ( role , 0 , 0866 , 1 , 4 )                      ---------------����֮��   ��û���1%
		item_name = "����֮��"
	else   
		GiveItem ( role , 0 , 0094 , 1 , 4 )                      ---------------Ԫ˧֮��   ��û���0.1%
		item_name = "Ԫ˧֮��"
	end
	local message = "��ϲ���" ..cha_name.."�򿪳���������,��ϲ�Ļ��"..item_name  
	Notice ( message )
	
end

-----------------------------------------------------------------------end----------------------------------------------------------------------

----------------------------------------------------------------------08����Ʒ����(����,Ч������) kokora-----------------------------------------------

------------------------------------------------------------------������˲ر�ͼ--------------------------------------------------- 
function ItemUse_rockluck ( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 1 then
		SystemNotice(role ,"����������Ҫ1����λ")
		UseItemFailed ( role )
		return
	end 
	local Has_GoldenMap = CheckBagItem ( role , 2998 )
	if Has_GoldenMap >= 1 then
		SystemNotice ( role , "ͬʱֻ��Я��һ����������" )
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 2998 , 1 , 0 )
end

-------------------------------------------------------- ����ת����Ʊ-----------------------------------------------------------
function ItemUse_superticket( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"������Ҫ1������")
		UseItemFailed ( role )
		return
	end
	local star=math.random ( 1, 1000 )

	if  star==1 then
		GiveItem ( role , 0 , 2941, 1 , 4  ) 
		local cha_name = GetChaDefaultName ( role ) 
		local message = "���"..cha_name.."��Ʒ����,�򿪳���ת����Ʊ��ϲ�ػ��1��ת����." 
		Notice ( message )
	elseif star>1 and star<=10 then
		GiveItem ( role , 0 , 3016, 1 , 4  ) 
		local cha_name = GetChaDefaultName ( role ) 
		local message = "���"..cha_name.."��Ʒ����,�򿪳���ת����Ʊ��ϲ�ػ��1�ź��������ٻ���." 
		Notice ( message )
	elseif star>=11 and star<190 then
		GiveItem ( role , 0 , 0992, 1 , 4  ) 
	elseif star>=190 and star<=1000 then
		GiveItem ( role , 0 , 3885, 1 , 4  ) 
	end
end

----------------------------------------------------------------- ����ħ��Ů��--------------------------------------------------
function ItemUse_supergodness( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"������Ҫ1������")
		UseItemFailed ( role )
		return
	end
	local cha_name = GetChaDefaultName ( role ) 
	local star=math.random ( 1, 1000 )

	if star<=8 then
		GiveItem ( role , 0 , 1014  , 1 , 4  )
		local message = cha_name.."�򿪳���ħ��Ů�񿨾�ϲ�ػ�� Ů��������ʽ" 
		Notice ( message )
	elseif star>=9 and star<=17 then
		GiveItem ( role , 0 , 271, 1 , 4  ) 
		local message1 = cha_name.."�򿪳���ħ��Ů�񿨾�ϲ�ػ�� ��ʹ����" 
		Notice ( message1 )
	elseif star>=18 and star<=27 then
		GiveItem ( role , 0 , 1012, 1 , 4  ) 
		local message3 = cha_name.."�򿪳���ħ��Ů�񿨾�ϲ�ػ�� ����֮��" 
		Notice ( message3 )
	elseif star>=28 and star<=227 then
		GiveItem ( role , 0 , 3886, 1 , 4  ) 
	else
		GiveItem ( role , 0 , 3830, 5 , 4  ) 
	end
end

-----------------------------------------------------------�׽������Ʊ--------------------------------------------------------------
function ItemUse_platinadress( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"������Ҫ1������")
		UseItemFailed ( role )
		return
	end
	local star=math.random ( 1, 1000000 )
	local el=math.random ( 1, 100 )

	--SystemNotice(role ,"star=="..star)
	--SystemNotice(role ,"el=="..el)
	if  star==1 then
		if el>=1 and el<=40 then
		GiveItem ( role , 0 , 2370  , 1 , 4  )
		elseif el>=41 and el<=65 then
		GiveItem ( role , 0 , 2368  , 1 , 4  )
		elseif el>=65 and el<=90 then
		GiveItem ( role , 0 , 2369  , 1 , 4  )
		elseif el>=91 and el<=100 then
		GiveItem ( role , 0 , 2367  , 1 , 4  ) 
		end
	elseif star>1 and star<=9999 then
		GiveItem ( role , 0 , 0273, 1 , 4  ) 
	elseif star>=10000 and star<170000 then
		GiveItem ( role , 0 , 2312, 30 , 4  ) 
	elseif star>=170000 and star<=1000000 then
		GiveItem ( role , 0 , 3877, 1 , 4  ) 
	end
end

------------------------------------------------------------�׽����޲�Ʊ------------------------------------------------------
function ItemUse_platinayear( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"������Ҫ1������")
		UseItemFailed ( role )
		return
	end
	local star=math.random ( 1, 1000000 )
	local el=math.random ( 1, 100 )

	--SystemNotice(role ,"star=="..star)
	--SystemNotice(role ,"el=="..el)
	if  star==1 then
		if el>=1 and el<=40 then
		GiveItem ( role , 0 , 2552  , 1 , 4  )
		elseif el>=41 and el<=65 then
		GiveItem ( role , 0 , 2550  , 1 , 4  )
		elseif el>=65 and el<=90 then
		GiveItem ( role , 0 , 2551  , 1 , 4  )
		elseif el>=91 and el<=100 then
		GiveItem ( role , 0 , 2549  , 1 , 4  ) 
		end
	elseif star>1 and star<=9999 then
		GiveItem ( role , 0 , 0273, 1 , 4  ) 
	elseif star>=10000 and star<170000 then
		GiveItem ( role , 0 , 2312, 30 , 4  ) 
	elseif star>=170000 and star<=1000000 then
		GiveItem ( role , 0 , 3877, 1 , 4  ) 
	end
end

----------------------------------------------------------------------�׽�ԻͲ�Ʊ----------------------------------------------------
function ItemUse_platinareful( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"������Ҫ1������")
		UseItemFailed ( role )
		return
	end
	local star=math.random ( 1, 1000000 )
	local el=math.random ( 1, 100 )

	--SystemNotice(role ,"star=="..star)
	--SystemNotice(role ,"el=="..el)
	if  star==1 then
		if el>=1 and el<=40 then
		GiveItem ( role , 0 , 1115  , 1 , 4  )
		elseif el>=41 and el<=65 then
		GiveItem ( role , 0 , 1117  , 1 , 4  )
		elseif el>=65 and el<=90 then
		GiveItem ( role , 0 , 1118  , 1 , 4  )
		elseif el>=91 and el<=100 then
		GiveItem ( role , 0 , 1116  , 1 , 4  ) 
		end
	elseif star>1 and star<=9999 then
		GiveItem ( role , 0 , 0273, 1 , 4  ) 
	elseif star>=10000 and star<170000 then
		GiveItem ( role , 0 , 2312, 30 , 4  ) 
	elseif star>=170000 and star<=1000000 then
		GiveItem ( role , 0 , 3877, 1 , 4  ) 
	end
end

---------------------------------------------------------------------Ħ�����ɹ�-------------------------------------------------
function ItemUse_moliimm ( role , Item )
	local lv= GetChaAttr(role, ATTR_LV) 
	if lv >49 then
		SystemNotice ( role , "49�����Ͻ�ɫ����ʹ�ø�Ħ�����ɹ�" )
		UseItemFailed ( role )
		return	
	end
	local statelv = 5
	local ChaStateLv = GetChaStateLv ( role , STATE_SBJYGZ )
	if ChaStateLv > statelv then
		SystemNotice ( role , "��ʹ�ø��߼�����������,���Ժ�����" )
		UseItemFailed ( role )
		return
	end
	local statetime = 900
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_SBJYGZ , statelv , statetime )
	else
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end
end

--------------------------------------------------------------Ħ��ף����-------------------------------------------------
function ItemUse_molibless ( role , Item )
	local lv= GetChaAttr(role, ATTR_LV) 
	if lv > 75  then
		SystemNotice ( role , "70�����Ͻ�ɫ����ʹ��Ħ��ף������" )
		UseItemFailed ( role )
		return	
	end

	local statelv = 6
	local ChaStateLv = GetChaStateLv ( role , STATE_SBJYGZ )
	
	if ChaStateLv > statelv then
		SystemNotice ( role , "��ʹ�ø��ߵȼ���ͬ����Ʒ�����Ժ�����" )
		UseItemFailed ( role )
		return
	end
	local statetime = 1800
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_SBJYGZ , statelv , statetime )
	else
		AddState( Cha_Boat , Cha_Boat , STATE_SBJYGZ , statelv , statetime )
	end
	SystemNotice ( role ,"���ܵ�Ħ��ף������Ч��,��Сʱ��,��־����5�������!" )
end

--------------------------------------------------------------Ħ���Ŷӹ�-----------------------------------------------------
function ItemUse_moliteam( role , Item )
	local statelv = 1
	local ChaStateLv = GetChaStateLv ( role , STATE_ZDSBJYGZ )
	
	if ChaStateLv > statelv then
		SystemNotice ( role , "��ʹ�ø��߼��Ĺ��ӣ����Ժ�����" )
		UseItemFailed ( role )
		return
	end

	local statetime = 900
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_ZDSBJYGZ , statelv , statetime )
	else
		AddState( Cha_Boat , Cha_Boat , STATE_ZDSBJYGZ , statelv , statetime )
	end
end

-------------------------------------------------------------------��������ʯ-----------------------------------------------------------------------
function Jz_Script_spring(role, Item )
	local i = CheckBagItem(role,5619)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "�����Ǽ����۵����飬�뱣��100����hp��spŶ")
		UseItemFailed ( role )
		return
	end
------MoveCity���Ӽ������ж�
	local map_name = GetChaMapName ( role )
	if map_name == "prisonisland" then
		SystemNotice ( role , "��ǰ��ͼ���ܴ���" )
		UseItemFailed ( role )
		return
	end
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,5619,1)
			if j == 1 then
				MoveCity(role,"������")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

------------------------------------------------------------�ĵ�����ʯ-----------------------------------------------------------------------------
function Jz_Script_summer(role, Item )
	local i = CheckBagItem(role,5620)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "�����Ǽ����۵����飬�뱣��100����hp��spŶ")
		UseItemFailed ( role )
		return
	end
------MoveCity���Ӽ������ж�
	local map_name = GetChaMapName ( role )
	if map_name == "prisonisland" then
		SystemNotice ( role , "��ǰ��ͼ���ܴ���" )
		UseItemFailed ( role )
		return
	end
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,5620,1)
			if j == 1 then
				MoveCity(role,"�ĵ�")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

----------------------------------------------------------------�ﵺ����ʯ-------------------------------------------------------------------------
function Jz_Script_autumn(role, Item )
	local i = CheckBagItem(role,5621)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "�����Ǽ����۵����飬�뱣��100����hp��spŶ")
		UseItemFailed ( role )
		return
	end
------MoveCity���Ӽ������ж�
	local map_name = GetChaMapName ( role )
	if map_name == "prisonisland" then
		SystemNotice ( role , "��ǰ��ͼ���ܴ���" )
		UseItemFailed ( role )
		return
	end
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,5621,1)
			if j == 1 then
				MoveCity(role,"�ﵺ")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

-----------------------------------------------------------------���ձȴ���ʯ------------------------------------------------------------------------
function Jz_Script_caribbean (role, Item )
	local i = CheckBagItem(role,5622)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "�����Ǽ����۵����飬�뱣��100����hp��spŶ")
		UseItemFailed ( role )
		return
	end
------MoveCity���Ӽ������ж�
	local map_name = GetChaMapName ( role )
	if map_name == "prisonisland" then
		SystemNotice ( role , "��ǰ��ͼ���ܴ���" )
		UseItemFailed ( role )
		return
	end
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,5622,1)
			if j == 1 then
				MoveCity(role,"���ձ�")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

------------------------------------------------------------------����4�㴫��ʯ----------------------------------------------------------------------
function Jz_Script_4clime(role, Item )
	local i = CheckBagItem(role,5623)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "�����Ǽ����۵����飬�뱣��100����hp��spŶ")
		UseItemFailed ( role )
		return
	end
------MoveCity���Ӽ������ж�
	local map_name = GetChaMapName ( role )
	if map_name == "prisonisland" then
		SystemNotice ( role , "��ǰ��ͼ���ܴ���" )
		UseItemFailed ( role )
		return
	end
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,5623,1)
			if j == 1 then
				MoveCity(role,"���ձȵ���4��")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

-----------------------------------------------------------------------ʥѩɽ����ʯ---------------------------------------------------------------------
function Jz_Script_jokul(role, Item )
	local i = CheckBagItem(role,5624)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "�����Ǽ����۵����飬�뱣��100����hp��spŶ")
		UseItemFailed ( role )
		return
	end
------MoveCity���Ӽ������ж�
	local map_name = GetChaMapName ( role )
	if map_name == "prisonisland" then
		SystemNotice ( role , "��ǰ��ͼ���ܴ���" )
		UseItemFailed ( role )
		return
	end
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,5624,1)
			if j == 1 then
				MoveCity(role,"ʥѩɽ")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

-------------------------------------------------------------------����������ʯ-----------------------------------------------------------------------
function Jz_Script_lante(role, Item )
	local i = CheckBagItem(role,5625)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "�����Ǽ����۵����飬�뱣��100����hp��spŶ")
		UseItemFailed ( role )
		return
	end
------MoveCity���Ӽ������ж�
	local map_name = GetChaMapName ( role )
	if map_name == "prisonisland" then
		SystemNotice ( role , "��ǰ��ͼ���ܴ���" )
		UseItemFailed ( role )
		return
	end
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,5625,1)
			if j == 1 then
				MoveCity(role,"������")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

----------------------------------------------------------------------08����Ʒ����(����,Ч������) kokora-----------------------------------------------

-------------------------------------���������ָ�ҩ��-----------------------------------------
function ItemUse_superment( role , Item )
	local hp = GetChaAttr(role, ATTR_HP) 
	hp_resume = 1500 
	
	hp = hp + hp_resume 
	mxhp = GetChaAttr(role,ATTR_MXHP) 
	if hp > mxhp then --�ӳ������spʱ����Ϊ���sp
		hp = mxhp 
	end 
	SetCharaAttr(hp, role, ATTR_HP)
end

------------------------------------ħ��ʥˮ-----------------------------------------
function ItemUse_holywater( role , Item ) 
	local sp = GetChaAttr(role, ATTR_SP) 
	sp_resume = 250
	
	sp = sp + sp_resume 
	mxsp = GetChaAttr(role,ATTR_MXSP) 
	if sp > mxsp then --�ӳ������spʱ����Ϊ���sp
		sp = mxsp 
	end 
	SetCharaAttr(sp, role, ATTR_SP) 
end 

------------------------------------------------------�캽����-------------------------------------------------------------
function ItemUse_lantern ( role , Item )
	local statelv = 2
--	local ChaStateLv = GetChaStateLv ( role , STATE_LANTERN )
--	if ChaStateLv > statelv then
--		SystemNotice ( role , "��ʹ�ø��߼�����Ʒ�����Ժ�����" )
--		UseItemFailed ( role )
--		return
--	end
	local statetime = 600
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_LANTERN , statelv , statetime )
	else
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end
end

---------------------------------------------------------------���˽���-----------------------------------------------------------------
function ItemUse_supdumpling ( role , Item )

  	local hp = GetChaAttr(role, ATTR_HP) 
	local mxhp = GetChaAttr(role,ATTR_MXHP) 	
	hp = hp + 0.35*mxhp 

	if hp > mxhp then 
		hp = mxhp 
	end 
	SetCharaAttr(hp, role, ATTR_HP)

end

--------------------------------Ѹ�ݻ���ˮ �ƶ��ٶ����50%С���Ƚ��ͷ���,����ʱ��5����---------------------------------------------------
function ItemUse_rapiddrug ( role , Item )
	local statelv = 1
	local statetime = 300
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		Rem_State_StarUnnormal ( role )
		AddState( role , role , STATE_RAPIDDRUG , statelv , statetime )
	else
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end
end

--ս��ҩ�� ˲����߹�����500ͬʱ����������60����ʱ��10����------------------------------------------------------
function ItemUse_warsit ( role , Item )
	Rem_State_StarUnnormal ( role )
	local statelv = 1
	local statetime = 600
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ==  nil then
		Rem_State_StarUnnormal ( role )
		AddState( role , role , STATE_WARSIT , statelv , statetime )
	else
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end
end

------------------------------------------����װ�� ˲����߹�����100ͬʱ����������30����ʱ��10����--------------------------------------------
function ItemUse_darkdress ( role , Item )
	local statelv = 1
	local statetime = 600
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		Rem_State_StarUnnormal ( role )
		AddState( role , role , STATE_DARKDRESS , statelv , statetime )
	else
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end
end

---------------------------------------------------��ħ���---------------------------------------------------------------------
function ItemUse_demon( role , Item )
	
	local OtherStateLv = 0
	local i = 0
	local State_Num = 8
	local State = {}
	State [0] = GetChaStateLv ( role , STATE_YSMJQH )
	State [1] = GetChaStateLv ( role , STATE_YSLQQH )
	State [2] = GetChaStateLv ( role , STATE_YSTZQH )
	State [3] = GetChaStateLv ( role , STATE_YSLLQH )
	State [4] = GetChaStateLv ( role , STATE_YSJSQH )
	State [5] = GetChaStateLv ( role , STATE_GREATSH )
	State [6] = GetChaStateLv ( role , STATE_MIRAGE )
	State [7] = GetChaStateLv ( role , STATE_DEVOTE )
	State [8] = GetChaStateLv ( role , STATE_VIGOUR )

	for i = 0 , State_Num , 1 do
		if State[i] >= 1 then
			OtherStateLv = OtherStateLv + 1
		end
	end


	if OtherStateLv > 0 then
		SystemNotice(role ,"ҩˮ��ǿ����Ч�����ɵ���")
		UseItemFailed ( role )
		return
	end

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end


	local statelv = 1
	local statetime = 900
	AddState( role , role , STATE_DEMON , statelv , statetime )

end

----------------------------------------------------------------�޼����-------------------------------------------------------------------
function ItemUse_greatsh( role , Item )
	
	local OtherStateLv = 0
	local i = 0
	local State_Num = 8
	local State = {}
	State [0] = GetChaStateLv ( role , STATE_YSMJQH )
	State [1] = GetChaStateLv ( role , STATE_YSLQQH )
	State [2] = GetChaStateLv ( role , STATE_YSTZQH )
	State [3] = GetChaStateLv ( role , STATE_YSLLQH )
	State [4] = GetChaStateLv ( role , STATE_YSJSQH )
	State [5] = GetChaStateLv ( role , STATE_DEMON )
	State [6] = GetChaStateLv ( role , STATE_MIRAGE )
	State [7] = GetChaStateLv ( role , STATE_DEVOTE )
	State [8] = GetChaStateLv ( role , STATE_VIGOUR )


	for i = 0 , State_Num , 1 do
		if State[i] >= 1 then
			OtherStateLv = OtherStateLv + 1
		end
	end



	if OtherStateLv > 0 then
		SystemNotice(role ,"ҩˮ��ǿ����Ч�����ɵ���")
		UseItemFailed ( role )
		return
	end

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end


	local statelv = 1
	local statetime = 900
	AddState( role , role , STATE_GREATSH , statelv , statetime )

end

----------------------------------------------------------------�������-------------------------------------------------------------------
function ItemUse_mirage( role , Item )
	local OtherStateLv = 0
	local i = 0
	local State_Num = 8
	local State = {}
	State [0] = GetChaStateLv ( role , STATE_YSMJQH )
	State [1] = GetChaStateLv ( role , STATE_YSLQQH )
	State [2] = GetChaStateLv ( role , STATE_YSTZQH )
	State [3] = GetChaStateLv ( role , STATE_YSLLQH )
	State [4] = GetChaStateLv ( role , STATE_YSJSQH )
	State [5] = GetChaStateLv ( role , STATE_DEMON )
	State [6] = GetChaStateLv ( role , STATE_GREATSH )
	State [7] = GetChaStateLv ( role , STATE_DEVOTE )
	State [8] = GetChaStateLv ( role , STATE_VIGOUR )




	for i = 0 , State_Num , 1 do
		if State[i] >= 1 then
			OtherStateLv = OtherStateLv + 1
		end
	end

	if OtherStateLv > 0 then
		SystemNotice(role ,"ҩˮ��ǿ����Ч�����ɵ���")
		UseItemFailed ( role )
		return
	end
	
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end

	local statelv = 1
	local statetime = 900
	AddState( role , role , STATE_MIRAGE , statelv , statetime )

end

--------------------------------------------------------------------רע���-------------------------------------------------------------------------
function ItemUse_devote( role , Item )
	local OtherStateLv = 0
	local i = 0
	local State_Num = 8
	local State = {}
	State [0] = GetChaStateLv ( role , STATE_YSMJQH )
	State [1] = GetChaStateLv ( role , STATE_YSLQQH )
	State [2] = GetChaStateLv ( role , STATE_YSTZQH )
	State [3] = GetChaStateLv ( role , STATE_YSLLQH )
	State [4] = GetChaStateLv ( role , STATE_YSJSQH )
	State [5] = GetChaStateLv ( role , STATE_DEMON )
	State [6] = GetChaStateLv ( role , STATE_GREATSH )
	State [7] = GetChaStateLv ( role , STATE_MIRAGE )
	State [8] = GetChaStateLv ( role , STATE_VIGOUR )

	for i = 0 , State_Num , 1 do
		if State[i] >= 1 then
			OtherStateLv = OtherStateLv + 1
		end
	end



	if OtherStateLv > 0 then
		SystemNotice(role ,"ҩˮ��ǿ����Ч�����ɵ���")
		UseItemFailed ( role )
		return
	end

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end


	local statelv = 1
	local statetime = 900
	AddState( role , role , STATE_DEVOTE , statelv , statetime )

end

--------------------------------------------------------------�������--------------------------------------------------------------------
function ItemUse_vigour( role , Item )
	
	local OtherStateLv = 0
	local i = 0
	local State_Num = 8
	local State = {}
	State [0] = GetChaStateLv ( role , STATE_YSMJQH )
	State [1] = GetChaStateLv ( role , STATE_YSLQQH )
	State [2] = GetChaStateLv ( role , STATE_YSTZQH )
	State [3] = GetChaStateLv ( role , STATE_YSLLQH )
	State [4] = GetChaStateLv ( role , STATE_YSJSQH )
	State [5] = GetChaStateLv ( role , STATE_DEMON )
	State [6] = GetChaStateLv ( role , STATE_GREATSH )
	State [7] = GetChaStateLv ( role , STATE_MIRAGE )
	State [8] = GetChaStateLv ( role , STATE_DEVOTE )

	for i = 0 , State_Num , 1 do
		if State[i] >= 1 then
			OtherStateLv = OtherStateLv + 1
		end
	end


	if OtherStateLv > 0 then
		SystemNotice(role ,"ҩˮ��ǿ����Ч�����ɵ���")
		UseItemFailed ( role )
		return
	end	

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end


	local statelv = 1
	local statetime = 900
	AddState( role , role , STATE_VIGOUR , statelv , statetime )

end

---------------------------------------------------------------Ħ�����˹�---------------------------------------------------------
function ItemUse_molilucky( role , Item )
	local statelv = 1
	local ChaStateLv = GetChaStateLv ( role , STATE_SBJYGZ )
	if ChaStateLv > statelv then
		SystemNotice ( role , "��ʹ�ø��߼��Ĺ��ӣ����Ժ�����" )
		UseItemFailed ( role )
		return
	end
	local lv_star = GetChaAttr( role , ATTR_LV) 
	if lv_star > 40 then
		SystemNotice ( role , "ֻ��40����ǰ��Ч" )
		UseItemFailed ( role )
		return
	end
	local statetime = 60+5*(lv_star-1)
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_SBJYGZ , statelv , statetime )
	else
		AddState( Cha_Boat , Cha_Boat , STATE_SBJYGZ , statelv , statetime )
	end
end

-----------------------------------------------------------------����Ŭ����-----------------------------------------------------------
function ItemUse_moliegis( role , Item )
	local Lv = Lv( role )
	if Lv < 60 then
		SystemNotice(role ,"�ȼ�����60��������ʹ��")
		UseItemFailed ( role )
		return
	end

	local statelv = 4
	
	local ChaStateLv = GetChaStateLv ( role , STATE_SBJYGZ )
	
	if ChaStateLv > statelv then
		SystemNotice ( role , "��ʹ�ø��߼��Ĺ��ӣ����Ժ�����" )
		UseItemFailed ( role )
		return
	end
	
	local statetime = 1800
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_SBJYGZ , statelv , statetime )
	else
		AddState( Cha_Boat , Cha_Boat , STATE_SBJYGZ , statelv , statetime )
	end
	SystemNotice ( role ,"���ܵ�����Ŭ������Ч��,��Сʱ�ڿɻ��3����־����" )
end

-------------------------------------------------------------ħ���Ƹ���-----------------------------------------------------------------------------
function ItemUse_molimoney( role , Item )
	local Lv = Lv( role )
	if Lv < 60 then
		SystemNotice(role ,"�ȼ�����60��������ʹ��")
		UseItemFailed ( role )
		return
	end


	local statelv = 3	
	
	local ChaStateLv = GetChaStateLv ( role , STATE_SBBLGZ )
	
	if ChaStateLv > statelv then
		SystemNotice ( role , "��ʹ�ø��߼��Ĺ��ӣ����Ժ�����" )
		UseItemFailed ( role )
		return
	end

	local statetime = 1800
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_SBBLGZ , statelv , statetime )
	else
		AddState( Cha_Boat , Cha_Boat , STATE_SBBLGZ , statelv , statetime )
	end
	SystemNotice ( role ,"��Сʱ���������3�����ϵľ���Ч��" )
end

------------------------------------------------------����ļ���\�Զ����鼦��-----------------------------------------------------------------------------

function ItemUse_numeneat ( role , Item , Item_Traget )
	
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "����ʱ����ʹ��" ) 
		UseItemFailed ( role ) 
		return 
	end      
		local Item_Traget_URE=GetItemAttr(Item_Traget,ITEMATTR_URE)  --ȡ��ǰ�;�
		local Item_Traget_MAXURE=GetItemAttr(Item_Traget,ITEMATTR_MAXURE)--ȡ����;�
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		local Num = 5000

		if Item_type == 57 and Item_Traget_Type == 59 then
				if Item_Traget_URE < Item_Traget_MAXURE then
				   Give_ElfURE ( role , Item_Traget , Num )
   	 			else
                                        SystemNotice(role , "�����Ѿ��Ա�" ) 
					UseItemFailed ( role )
					return
				end
		end 

end

----------------------------------------------------------��ֻ������-----------------------------------------------------------------------
function ItemUse_shipdrive ( role , Item )
	local statelv = 1
	local statetime = 900
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		AddState( Cha_Boat , Cha_Boat , STATE_SHIPDRIVE , statelv , statetime )
	else
		SystemNotice( role , "����ʱ�ſ�ʹ��" )
		UseItemFailed ( role )
		return
	end

end


-------------------------------------------------------------��ֻ������----------------------------------------------------------------
function ItemUse_shiprecovery ( role , Item )
	local statelv = 1
	local statetime = 1800
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )                  
	if Cha_Boat ~=  nil then
		AddState( Cha_Boat , Cha_Boat , STATE_SHIPRECOVER , statelv , statetime )
	else
		SystemNotice( role , "����ʱ�ſ�ʹ��" )
		UseItemFailed ( role )
		return
	end

end


-------------------------------------------------------����ͫϻ��
function ItemUse_HLTBOX ( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <2 then
		SystemNotice(role ,"Ҫ�򿪱�����Ҫ������������2����λ")
		UseItemFailed ( role )
		return
	end
	local stone1_id = 864
	local stone1_lv = 5
	local stone2_id = 885
	local stone2_lv = 5
	local r1,r2 =MakeItem ( role , stone1_id  , 1 , 4 )
	local Item_newJL1 = GetChaItem ( role , 2 , r2 )			
	local Item_newJLID1 = GetItemID ( Item_newJL1 )		
	SetItemAttr ( Item_newJL1 , ITEMATTR_VAL_BaoshiLV , stone1_lv)
	SynChaKitbag(role,13)
	local cha_name = GetChaDefaultName ( role )
	local now_yes = os.date("%y")		-------------��
	local now_month= os.date("%m")		-------------��
	local now_day= os.date("%d")		-------------��
	local now_hour= os.date("%H")		-------------ʱ
	local now_miniute= os.date("%M")	-------------��
	now_yes = tonumber(now_yes)			-------------��     
	now_month= tonumber(now_month)		-------------��     
	now_day= tonumber(now_day)			-------------��     
	now_hour= tonumber(now_hour)			-------------ʱ     
	now_miniute= tonumber(now_miniute)	 	-------------��
	local r3,r4 =MakeItem ( role , stone2_id  , 1 , 4 )
	local Item_newJL2 = GetChaItem ( role , 2 , r4 )			
	local Item_newJLID2 = GetItemID ( Item_newJL2 )		
	SetItemAttr ( Item_newJL2 , ITEMATTR_VAL_BaoshiLV , stone2_lv )
	LG( "Lv5StoneBox" ,cha_name, now_yes, now_month, now_day, now_hour, now_miniute , stone1_id )
end

-------------------------------------------------------������ϻ��
function ItemUse_HLXBOX ( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <2 then
		SystemNotice(role ,"Ҫ�򿪱�����Ҫ������������2����λ")
		UseItemFailed ( role )
		return
	end
	local stone1_id = 866
	local stone1_lv = 5
	local stone2_id = 885
	local stone2_lv = 5
	local r1,r2 =MakeItem ( role , stone1_id  , 1 , 4 )
	local Item_newJL1 = GetChaItem ( role , 2 , r2 )			
	local Item_newJLID1 = GetItemID ( Item_newJL1 )		
	SetItemAttr ( Item_newJL1 , ITEMATTR_VAL_BaoshiLV , stone1_lv)
	SynChaKitbag(role,13)
	local cha_name = GetChaDefaultName ( role )
	local now_yes = os.date("%y")		-------------��
	local now_month= os.date("%m")		-------------��
	local now_day= os.date("%d")		-------------��
	local now_hour= os.date("%H")		-------------ʱ
	local now_miniute= os.date("%M")	-------------��
	now_yes = tonumber(now_yes)			-------------��     
	now_month= tonumber(now_month)		-------------��     
	now_day= tonumber(now_day)			-------------��     
	now_hour= tonumber(now_hour)			-------------ʱ     
	now_miniute= tonumber(now_miniute)	 	-------------��
	local r3,r4 =MakeItem ( role , stone2_id  , 1 , 4 )
	local Item_newJL2 = GetChaItem ( role , 2 , r4 )			
	local Item_newJLID2 = GetItemID ( Item_newJL2 )		
	SetItemAttr ( Item_newJL2 , ITEMATTR_VAL_BaoshiLV , stone2_lv )
	LG( "Lv5StoneBox" ,cha_name, now_yes, now_month, now_day, now_hour, now_miniute , stone1_id )
end

-------------------------------------------------------������ϻ��
function ItemUse_HLHBOX ( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <2 then
		SystemNotice(role ,"Ҫ�򿪱�����Ҫ������������2����λ")
		UseItemFailed ( role )
		return
	end
	local stone1_id = 865
	local stone1_lv = 5
	local stone2_id = 885
	local stone2_lv = 5
	local r1,r2 =MakeItem ( role , stone1_id  , 1 , 4 )
	local Item_newJL1 = GetChaItem ( role , 2 , r2 )			
	local Item_newJLID1 = GetItemID ( Item_newJL1 )		
	SetItemAttr ( Item_newJL1 , ITEMATTR_VAL_BaoshiLV , stone1_lv)
	SynChaKitbag(role,13)
	local cha_name = GetChaDefaultName ( role )
	local now_yes = os.date("%y")		-------------��
	local now_month= os.date("%m")		-------------��
	local now_day= os.date("%d")		-------------��
	local now_hour= os.date("%H")		-------------ʱ
	local now_miniute= os.date("%M")	-------------��
	now_yes = tonumber(now_yes)			-------------��     
	now_month= tonumber(now_month)		-------------��     
	now_day= tonumber(now_day)			-------------��     
	now_hour= tonumber(now_hour)			-------------ʱ     
	now_miniute= tonumber(now_miniute)	 	-------------��
	local r3,r4 =MakeItem ( role , stone2_id  , 1 , 4 )
	local Item_newJL2 = GetChaItem ( role , 2 , r4 )			
	local Item_newJLID2 = GetItemID ( Item_newJL2 )		
	SetItemAttr ( Item_newJL2 , ITEMATTR_VAL_BaoshiLV , stone2_lv )
	LG( "Lv5StoneBox" ,cha_name, now_yes, now_month, now_day, now_hour, now_miniute , stone1_id )
end
------------------------------------------------------------��۰�ɫ���˽ھ�ѡ����------------------by FGCA.Justice---------
function ItemUse_JXBX ( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <4 then
		SystemNotice(role ,"Ҫ�򿪱�����Ҫ������������4����λ")
		UseItemFailed ( role )
		return
	end
		GiveItem ( role , 0 , 3354  , 1 , 4 ) 
		GiveItem ( role , 0 , 3355  , 1 , 4 ) 
		GiveItem ( role , 0 , 3356  , 1 , 4 )
		GiveItem ( role , 0 , 3077  , 1 , 4 )
end

---------------------------------------------------080220������-------------------------kokora-------------------------------

----------------------------------Ǭ������--------------------------------------------------------------
function ItemUse_universebox (role, Item)
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ��Ǭ������" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	 if Item_CanGet < 1 then
		SystemNotice(role ,"��Ǭ������������Ҫ1����λ")
		UseItemFailed ( role )
		return
	end
		
	local Itemsc = {0863,0860,0862,0861,1012}	 -----------------------------�򿪱����������;����ʯ;����;ӥ��ʯ;����֮��Ļ���Ϊ20%
	local	sc = math.random(1,5)
	local ItemId = Itemsc[sc]
	GiveItem ( role , 0 , ItemId , 1 , 4 )
	local cha_name = GetChaDefaultName ( role )
	local itemname = GetItemName ( ItemId )
	Notice ( "��ϲ���" ..cha_name.."��Ǭ������,��ϲ�Ļ��"..itemname )
end

----------------------------------��������--------------------------------------------------------------
function ItemUse_jetdragon (role, Item)
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ����������" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	 if Item_CanGet < 1 then
		SystemNotice(role ,"����������������Ҫ1����λ")
		UseItemFailed ( role )
		return
	end
		
	local Itemsc = {0866,0866,0865,0864}	 -----------------------------�򿪱�����ú���֮�ĵĻ���Ϊ50%,��ú���֮ͫ�ͺ���֮��Ļ���Ϊ25%
	local	sc = math.random(1,4)
	local ItemId = Itemsc[sc]
	GiveItem ( role , 0 , ItemId , 1 , 4 )
	local cha_name = GetChaDefaultName ( role )
	local itemname = GetItemName ( ItemId )
	Notice ( "��ϲ���" ..cha_name.."����������,��ϲ�Ļ��"..itemname )
end

----------------------------------85����װ����--------------------------------------------------------------
function ItemUse_raritybox (role, Item)
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ��85����װ����" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	 if Item_CanGet < 1 then
		SystemNotice(role ,"��85����װ����������Ҫ1����λ")
		UseItemFailed ( role )
		return
	end
	
	local job = GetChaAttr( role, ATTR_JOB) --ȡְҵ
	local cha_type = GetChaTypeID ( role )
	local itemname = ""
	if cha_type ~= 2 and job==4 then
		GiveItem ( role , 0 , 2580 , 1 , 4 )--------------����֮����
		itemname = "����֮����"
	elseif cha_type ~= 2 and job==16 then
		GiveItem ( role , 0 , 2580 , 1 , 4 )--------------����֮����
		itemname = "����֮����"
	elseif cha_type == 2  and job~=0 then
		GiveItem ( role , 0 , 2577 , 1 , 4 )----------------����˹֮ǿ��
		itemname = "����˹֮ǿ��"
	elseif cha_type ~= 2 and  cha_type ~= 4 and job==2 then
		GiveItem ( role , 0 , 2579  , 1 , 4 )-----------------����֮����
		itemname = "����֮����"
	elseif cha_type ~= 2 and  cha_type ~= 4 and job==12 then
		GiveItem ( role , 0 , 2579  , 1 , 4 )-----------------����֮����
		itemname = "����֮����"
	elseif cha_type ~= 1 and  cha_type ~= 2 and job==5 then
		local dina=math.random ( 1, 2 )
	if dina==1 then
		GiveItem ( role , 0 , 2582  , 1 , 4 )------------��ڤ֮����
		itemname = "��ڤ֮����"
	else
		GiveItem ( role , 0 , 2581  , 1 , 4 )-------------ڤ��֮ħ��
		itemname = "ڤ��֮ħ��"
	end
	elseif cha_type ~= 1 and  cha_type ~= 2 and job==13 then
		GiveItem ( role , 0 , 2582  , 1 , 4 )------------��ڤ֮����
		itemname = "ڤ��֮����"
	elseif cha_type ~= 1 and  cha_type ~= 2 and job==14 then
		GiveItem ( role , 0 , 2581  , 1 , 4 )-------------ڤ��֮ħ��
		itemname = "ڤ��֮ħ��"
	elseif cha_type == 1 and  job==1 then
		GiveItem ( role , 0 , 2578  , 1 , 4 )-------------�ڰ�֮����
		itemname = "�ڰ�֮����"
	elseif cha_type == 1 and  job==9 then
		GiveItem ( role , 0 , 2578  , 1 , 4 )-------------�ڰ�֮����
		itemname = "�ڰ�֮����"
	else 
		SystemNotice(role ,"Ŀǰ����ʹ�ã����Ҹ���ְҵ��ʦתְ.")
		UseItemFailed ( role )
		return
	end
	local cha_name = GetChaDefaultName ( role )
	Notice ( "��ϲ���" ..cha_name.."��85����װ����,��ϲ�Ļ��"..itemname )
end

----------------------------------�Ͼ����� --------------------------------------------------------------
function ItemUse_purplebox (role, Item)
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ���Ͼ�����" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	 if Item_CanGet < 1 then
		SystemNotice(role ,"���Ͼ�����������Ҫ1����λ")
		UseItemFailed ( role )
		return
	end
	local i= CheckBagItem( role, 5702 )                                                
	if i <=0 then
		SystemNotice(  role , "��ȷ���������п����Ͼ�������Ͼ�Կ��")
		UseItemFailed ( role )
		return LUA_FALSE
	end
	
	local s = DelBagItem ( role , 5702 , 1 ) 
	local	sc = math.random(1,100)
	local itemname = ""
	if  sc <=50 then	
		GiveItem ( role , 0 , 5711 , 1 , 4 )                    ---------------��������   ��û���50%
		itemname = "��������"
	elseif sc <=90 then		
		GiveItem ( role , 0 , 2997 , 5 , 4 )                    ---------------��˲ر�ͼ   ��û���40%
		itemname = "5����˲ر�ͼ"
	elseif sc <=95 then
		GiveItem ( role , 0 ,5703 , 1 , 4 )                    ---------------����Կ��   ��û���5%
		itemname = "����Կ��"
	elseif sc <=98 then
		GiveItem ( role , 0 ,5707 , 1 , 4 )                    ---------------Ǭ������   ��û���3%
		itemname = "Ǭ������"
	elseif sc <=99 then
		GiveItem ( role , 0 ,0091 , 1 , 4 )                    ---------------��У֮��   ��û���1%
		itemname = "��У֮��"	
	else   
		GiveItem ( role , 0 , 0853 , 1 , 4 )                   ---------------���ڻ�����־   ��û���1%
		itemname = "���ڻ�����־"
	end
	local cha_name = GetChaDefaultName ( role )
	Notice ( "��ϲ���" ..cha_name.."���Ͼ�����,��ϲ�Ļ��"..itemname )
end

----------------------------------�������� --------------------------------------------------------------
function ItemUse_greenbox (role, Item)
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ����������" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	 if Item_CanGet < 1 then
		SystemNotice(role ,"����������������Ҫ1����λ")
		UseItemFailed ( role )
		return
	end
	local i= CheckBagItem( role, 5703 )                                                
	if i <=0 then
		SystemNotice(  role , "��ȷ���������п����������������Կ��")
		UseItemFailed ( role )
		return LUA_FALSE
	end
	
	local s = DelBagItem ( role , 5703 , 1 ) 
	local	sc = math.random(1,100)
	local itemname = ""
	if  sc <=30 then	
		GiveItem ( role , 0 , 5712 , 1 , 4 )                    ---------------��������   ��û���30%
		itemname = "��������"
	elseif sc <=50 then		
		GiveItem ( role , 0 , 5707 , 1 , 4 )                    ---------------Ǭ������   ��û���20%
		itemname = "Ǭ������"
	elseif sc <=65 then
		GiveItem ( role , 0 ,5750 , 1 , 4 )                    ---------------����  ��û���15%
		itemname = "����"
	elseif sc <=80 then
		GiveItem ( role , 0 ,5752 , 1 , 4 )                    ---------------����   ��û���15%
		itemname = "����"
	elseif sc <=93 then
		GiveItem ( role , 0 ,5751 , 1 , 4 )                    ---------------����   ��û���13%
		itemname = "����"
	elseif sc <=98 then
		GiveItem ( role , 0 ,5704 , 1 , 4 )                    ---------------����Կ��   ��û���5%
		itemname = "����Կ��"
	else   
		GiveItem ( role , 0 , 0092 , 1 , 4 )                   ---------------��У֮��   ��û���2%
		itemname = "��У֮��"
	end
	local cha_name = GetChaDefaultName ( role )
	Notice ( "��ϲ���" ..cha_name.."����������,��ϲ�Ļ��"..itemname )
end

----------------------------------�������� --------------------------------------------------------------
function ItemUse_turebox (role, Item)
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ����������" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	 if Item_CanGet < 1 then
		SystemNotice(role ,"����������������Ҫ1����λ")
		UseItemFailed ( role )
		return
	end
	local i= CheckBagItem( role, 5704 )                                                
	if i <=0 then
		SystemNotice(  role , "��ȷ���������п����������������Կ��")
		UseItemFailed ( role )
		return LUA_FALSE
	end
	
	local s = DelBagItem ( role , 5704 , 1 ) 
	local	sc = math.random(1,100)
	local itemname = ""
	if  sc <=38 then	
		GiveItem ( role , 0 , 1014 , 1 , 4 )                    ---------------Ů��������ʽ   ��û���38%
		itemname = "Ů��������ʽ"
	elseif sc <=58 then		
		GiveItem ( role , 0 , 5713 , 1 , 4 )                    ---------------������   ��û���20%
		itemname = "������"
	elseif sc <=77 then
		GiveItem ( role , 0 ,0992 , 20 , 4 )                    ---------------�ɳ����   ��û���19%
		itemname = "�ɳ���� "
	elseif sc <=92 then
		GiveItem ( role , 0 ,3016, 1 , 4 )                    ---------------���������ٻ�ȯ   ��û���15%
		itemname = "���������ٻ�ȯ"
	elseif sc <=97 then
		GiveItem ( role , 0 ,5708 , 1 , 4 )                    ---------------��������   ��û���5%
		itemname = "��������"
	else   
		GiveItem ( role , 0 , 5705 , 1 , 4 )                   ---------------����Կ��   ��û���3%
		itemname = "����Կ��"
	end
	local cha_name = GetChaDefaultName ( role )
	Notice ( "��ϲ���" ..cha_name.."����������,��ϲ�Ļ��"..itemname )
end

----------------------------------������ --------------------------------------------------------------
function ItemUse_respectbox (role, Item)
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ��������" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	 if Item_CanGet < 1 then
		SystemNotice(role ,"��������������Ҫ1����λ")
		UseItemFailed ( role )
		return
	end
	local i= CheckBagItem( role, 5705 )                                                
	if i <=0 then
		SystemNotice(  role , "��ȷ���������п��������������Կ��")
		UseItemFailed ( role )
		return LUA_FALSE
	end
	
	local s = DelBagItem ( role , 5705 , 1 ) 
	local	sc = math.random(1,100)
	local itemname = ""
	if  sc <=20 then	
		GiveItem ( role , 0 , 0094 , 1 , 4 )                    ---------------Ԫ˧֮��   ��û���20%
		itemname = "Ԫ˧֮��"
	elseif sc <=40 then		
		GiveItem ( role , 0 , 2368 , 1 , 20 )                    ---------------�����֮צ   ��û���20%
		itemname = "�����֮צ"
	elseif sc <=60 then
		GiveItem ( role , 0 ,2369 , 1 , 20 )                    ---------------�����֮��   ��û���20%
		itemname = "�����֮��"
	elseif sc <=75 then
		GiveItem ( role , 0 ,5714 , 1 , 4 )                    ---------------��˫����   ��û���15%
		itemname = "��˫����"
	elseif sc <=89 then
		GiveItem ( role , 0 ,2367 , 1 , 20 )                    ---------------�����֮��   ��û���14%
		itemname = "�����֮��"
	elseif sc <=99 then
		GiveItem ( role , 0 ,5769 , 1 , 4 )                    ---------------���ǰٱ���   ��û���10%
		itemname = "���ǰٱ���"
	else   
		GiveItem ( role , 0 , 5706 , 1 , 4 )                   ---------------��˫Կ��   ��û���1%
		itemname = "��˫Կ��"
	end
	local cha_name = GetChaDefaultName ( role )
	Notice ( "��ϲ���" ..cha_name.."��������,��ϲ�Ļ��"..itemname )
end

----------------------------------��˫���� --------------------------------------------------------------
function ItemUse_peerlessbox (role, Item)
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ����˫����" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	 if Item_CanGet < 1 then
		SystemNotice(role ,"����˫����������Ҫ1����λ")
		UseItemFailed ( role )
		return
	end
	local i= CheckBagItem( role, 5706 )                                                
	if i <=0 then
		SystemNotice(  role , "��ȷ���������п�����˫�������˫Կ��")
		UseItemFailed ( role )
		return LUA_FALSE
	end
	
	local s = DelBagItem ( role , 5706 , 1 ) 
	local	sc = math.random(1,100)
	local itemname = ""
	if  sc <=60 then	
		GiveItem ( role , 0 , 5709 , 1 , 4 )                    ---------------85����װ����   ��û���60%
		itemname = "85����װ����"
	else   
		GiveItem ( role , 0 , 2522 , 1 , 4 )                   ---------------��֮����   ��û���15%
		itemname = "��֮����"
	end
	local cha_name = GetChaDefaultName ( role )
	Notice ( "��ϲ���" ..cha_name.."����˫����,��ϲ�Ļ��"..itemname )
end

---------------------------------------------080228��Ӫ��������ӷ�����˲ر�ͼ��kokora��------------------------------------------
function ItemUse_hidebox (role, Item)

	local Itemsc = {0863,0860,0862,0861,1028,0992,0853,1012,0096,0094}	 --------------�򿪲ر�ͼ�������;����ʯ;ӥ��ʯ;����;Ħ����ʯ;�ɳ����;���ڻ�����־;����֮��;����֮��;Ԫ˧֮�׵Ļ��ʸ�Ϊ10%
	local	sc = math.random(1,10)
	local ItemId = Itemsc[sc]
	local cha_name = GetChaDefaultName ( role )
	local itemname = GetItemName ( ItemId )
	Notice ( cha_name.."��Ʒ����,������˲ر�ͼ̽����"..itemname )
end


------��ս������-------
function ItemUse_HZRYX ( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <=0 then
		SystemNotice(role ,"����û���㹻�Ŀռ䣬����Ҫ��1����λ���򿪻�ս������ʧ��")
		UseItemFailed ( role )
		return
	end

--	local s = DelBagItem ( role , 5716 , 1 ) 
	local	sc = math.random(1,100)
	local itemname = ""
	if  sc <=30 then	
		GiveItem ( role , 0 , 0992 , 1 , 4 )                    ---------------�ɳ����   ��û���30%
		itemname = "�ɳ����"
	elseif sc <=69 then		
		GiveItem ( role , 0 , 2951 , 1 , 4 )                    ---------------�Ҷ��ӵ���   ��û���39%
		itemname = "�Ҷ��ӵ���"
	elseif sc <=99 then
		local Money_add = 3000000
		AddMoney ( role , 0 , Money_add )                  ---------------��Ǯ300��   ��û���30%
		itemname = "��Ǯ300��"
	else   
		GiveItem ( role , 0 , 0090 , 1 , 4 )                   ---------------��У֮��   ��û���1%
		itemname = "��У֮��"
	end
	local cha_name = GetChaDefaultName ( role )
	local Guild_ID = GetChaGuildID(role)
	local Guild_Name = GetGuildName( Guild_ID )
	Notice ( Guild_Name.."�����ù���սʤ��,��Ա"..cha_name.."������ս�����䣬��ϲ�ػ��"..itemname )

end
-------------------------
---------------------------------------------080401��Ӫ��������ת���ȼ�����-ͨ�����־��kokora��------------------------------------------
function ItemUse_generalbook ( role , Item )
	local zs_exp = GetChaAttr ( role , ATTR_CSAILEXP )
	if zs_exp <= 0 then
		UseItemFailed ( role )
		SystemNotice(role ,"��δת������ʹ��ͨ�����־")
		return 
	end
	if zs_exp >= 10000 then
		UseItemFailed ( role )
		SystemNotice(role ,"ת���ȼ��ﵽ�򳬹�10��,����ʹ��ͨ�����־")
		return 
	end
	local goodluck = "ʹ��ͨ�����־ת����������1��"
	if zs_exp > 0 and zs_exp < 400 then 
	SetChaAttrI(role, ATTR_CSAILEXP , 400)
	RefreshCha ( role )
	SystemNotice(role , goodluck)
	end
	if zs_exp >= 400 and zs_exp < 900 then 
	SetChaAttrI(role, ATTR_CSAILEXP , 900)
	RefreshCha ( role )
	SystemNotice(role , goodluck)
	end
	if zs_exp >= 900 and zs_exp < 1600 then 
	SetChaAttrI(role, ATTR_CSAILEXP , 1600)
	RefreshCha ( role )
	SystemNotice(role , goodluck)
	end
	if zs_exp >= 1600 and zs_exp < 2500 then 
	SetChaAttrI(role, ATTR_CSAILEXP , 2500)
	RefreshCha ( role )
	SystemNotice(role , goodluck)
	end
	if zs_exp >= 2500 and zs_exp < 3600 then 
	SetChaAttrI(role, ATTR_CSAILEXP , 3600)
	RefreshCha ( role )
	SystemNotice(role , goodluck)
	end
	if zs_exp >= 3600 and zs_exp < 4900 then 
	SetChaAttrI(role, ATTR_CSAILEXP , 4900)
	RefreshCha ( role )
	SystemNotice(role , goodluck)
	end
	if zs_exp >= 4900 and zs_exp < 6400 then 
	SetChaAttrI(role, ATTR_CSAILEXP , 6400)
	RefreshCha ( role )
	SystemNotice(role , goodluck)
	end
	if zs_exp >= 6400 and zs_exp < 8100 then 
	SetChaAttrI(role, ATTR_CSAILEXP , 8100)
	RefreshCha ( role )
	SystemNotice(role , goodluck)
	end
	if zs_exp >= 8100 and zs_exp < 10000 then 
	SetChaAttrI(role, ATTR_CSAILEXP , 10000)
	RefreshCha ( role )
	SystemNotice(role , goodluck)
	end
end

------------------------------------------------------���ǰٱ��� by eric
function ItemUse_hpbbxBOX (role, Item)
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ�û��ǰٱ���" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	 if Item_CanGet < 1 then
		SystemNotice(role ,"�򿪻��ǰٱ���������Ҫ1����λ")
		UseItemFailed ( role )
		return
	end
	local job = GetChaAttr(role, ATTR_JOB)
	local itemname = ""
	if job == 9 then
		GiveItem ( role , 0 , 2563  , 1 , 41 )
		itemname = "�ڰ��Ļ���"
	elseif job == 8 then
		GiveItem ( role , 0 , 2562  , 1 , 41 )
		itemname = "����˹�Ļ���" 
	elseif job == 12 then
		GiveItem ( role , 0 , 2564  , 1 , 41 )
		itemname = "�����Ļ���" 
	elseif job == 16 then
		GiveItem ( role , 0 , 2565  , 1 , 41 )
		itemname = "���޵Ļ���"
	elseif job == 13 then
		GiveItem ( role , 0 , 2566  , 1 , 41 )
		itemname = "��ڤ�Ļ���"
	elseif job == 14 then
		GiveItem ( role , 0 , 2567  , 1 , 41 )
		itemname = "ڤ�ӵĻ���"
	else
		SystemNotice( role , "ֻ��2ת��ſ��Դ򿪴˱���Ŷ" )
		UseItemFailed ( role )
		return
	end
	local cha_name = GetChaDefaultName ( role )
	Notice ( "��ϲ���" ..cha_name.."�򿪻��ǰٱ���,��ϲ�Ļ��"..itemname )
end

---------------------------�ٻ�ڤ�ʡ����� by eric
function ItemUse_MHKALAZHQ ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end
	local star = 0
	star =IsChaInRegion( role, 2 )
	if star == 1 then
		SystemNotice( role , "��ɫ��ǰ���ڰ�ȫ���������ٻ�����" )
		UseItemFailed ( role )
		return
	end
	local x, y = GetChaPos(role)
	local MonsterID = 988
	local Refresh = 9000					--����ʱ�䣬�뵥λ
	local life = 9000000						--����ʱ�䣬���뵥λ
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaLifeTime( new, life )
end


--------------------------һ��ʥ������
function ItemUse_lv1swbzbox (role, Item)
	SystemNotice( role , "in1" )
	local Cha_Boat = GetCtrlBoat ( role )
	
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ��һ��ʥ������" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	 if Item_CanGet < 1 then
		SystemNotice(role ,"��һ��ʥ������������Ҫ1����λ")
		UseItemFailed ( role )
		return
	end
	local	sc = math.random(1,100)
	local itemname = ""
	if  sc <=5 then	
		GiveItem ( role , 0 , 3012 , 1 , 4 )                    ---------------����սʿͳ���ٻ�ȯ   ��û���5%
		itemname = "����սʿͳ���ٻ�ȯ"
	elseif sc <=26 then		
		GiveItem ( role , 0 , 3095 , 1 , 4 )                    ---------------�߼�Ŭ��������   ��û���21%
		itemname = "�߼�Ŭ��������"
	elseif sc <=27 then
		GiveItem ( role , 0 , 5782 , 1 , 4 )                    ---------------����ʥ������Կ��   ��û���1%
		itemname = "����ʥ������Կ��"
	elseif sc <=77 then
		GiveItem ( role , 0 , 5778 , 1 , 4 )                    ---------------����ʥ������   ��û���50%
		itemname = "����ʥ������"
	else   
		GiveItem ( role , 0 , 5609 , 1 , 4 )                   ---------------��������   ��û���23%
		itemname = "��������"
	end
	local cha_name = GetChaDefaultName ( role )
	Notice ( "��ϲ���" ..cha_name.."��һ��ʥ������,��ϲ�Ļ��"..itemname )
end

--------------------------����ʥ������
function ItemUse_lv2swbzbox (role, Item)
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ�ö���ʥ������" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	 if Item_CanGet < 1 then
		SystemNotice(role ,"�򿪶���ʥ������������Ҫ1����λ")
		UseItemFailed ( role )
		return
	end
	local i= CheckBagItem( role, 5782)                                                
	if i <=0 then
		SystemNotice(  role , "��ȷ���������п�������ʥ�����صĶ���ʥ������Կ��")
		UseItemFailed ( role )
		return LUA_FALSE
	end
	
	local s = DelBagItem ( role , 5782 , 1 ) 
	local	sc = math.random(1,100)
	local itemname = ""
	if  sc <=35 then	
		GiveItem ( role , 0 , 5779 , 1 , 4 )                    ---------------����ʥ������   ��û���35%
		itemname = "����ʥ������"
	elseif sc <=36 then
		GiveItem ( role , 0 , 5783 , 1 , 4 )                    ---------------����ʥ������Կ��   ��û���1%
		itemname = "����ʥ������Կ��"
	elseif sc <=40 then
		GiveItem ( role , 0 , 5703 , 1 , 4 )                    ---------------����Կ��   ��û���4%
		itemname = "����Կ��"
	elseif sc <=70 then
		GiveItem ( role , 0 , 0578 , 1 , 4 )                    ---------------���ٳɳ���   ��û���30%
		itemname = "���ٳɳ���"
	elseif sc <=90 then
		GiveItem ( role , 0 , 0145 , 1 , 4 )                    ---------------��������   ��û���20%
		itemname = "��������"
	else 
		GiveItem ( role , 0 , 0146 , 1 , 4 )                    ---------------��������   ��û���10%
		itemname = "��������"	
	end
	local cha_name = GetChaDefaultName ( role )
	Notice ( "��ϲ���" ..cha_name.."�򿪶���ʥ������,��ϲ�Ļ��"..itemname )
end


--------------------------����ʥ������
function ItemUse_lv3swbzbox (role, Item)
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ������ʥ������" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	 if Item_CanGet < 1 then
		SystemNotice(role ,"������ʥ������������Ҫ1����λ")
		UseItemFailed ( role )
		return
	end
	local i= CheckBagItem( role, 5783)                                                
	if i <=0 then
		SystemNotice(  role , "��ȷ���������п�������ʥ�����ص�����ʥ������Կ��")
		UseItemFailed ( role )
		return LUA_FALSE
	end
	
	local s = DelBagItem ( role , 5783 , 1 ) 
	local	sc = math.random(1,100)
	local itemname = ""
	if  sc <=30 then	
		GiveItem ( role , 0 , 5780 , 1 , 4 )                    --------------�ļ�ʥ������   ��û���30%
		itemname = "�ļ�ʥ������"
	elseif sc <=31 then
		GiveItem ( role , 0 , 5783 , 1 , 4 )                    ---------------�ļ�ʥ������Կ��   ��û���1%
		itemname = "�ļ�ʥ������Կ��"
	elseif sc <=32 then
		GiveItem ( role , 0 , 5704 , 1 , 4 )                    ---------------����Կ��   ��û���1%
		itemname = "����Կ��"
	elseif sc <=50 then
		GiveItem ( role , 0 , 0853 , 1 , 4 )                    ---------------���ڻ�����־   ��û���18%
		itemname = "���ڻ�����־"
	elseif sc <=60 then
		GiveItem ( role , 0 , 0271 , 1 , 4 )                    ---------------��ʹ����   ��û���10%
		itemname = "��ʹ����"
	elseif sc <=90 then 
		GiveItem ( role , 0 , 1036 , 10 , 4 )                    ---------------ħ��Ů��   ��û���30%
		itemname = "ħ��Ů��"	
	else 
		GiveItem ( role , 0 , 1019 , 10 , 4 )                    ---------------���������   ��û���10%
		itemname = "���������"		
	end
	local cha_name = GetChaDefaultName ( role )
	Notice ( "��ϲ���" ..cha_name.."������ʥ������,��ϲ�Ļ��"..itemname )
end
--------------------------�ļ�ʥ������
function ItemUse_lv4swbzbox (role, Item)
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ���ļ�ʥ������" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	 if Item_CanGet < 1 then
		SystemNotice(role ,"���ļ�ʥ������������Ҫ1����λ")
		UseItemFailed ( role )
		return
	end
	local i= CheckBagItem( role, 5784)                                                
	if i <=0 then
		SystemNotice(  role , "��ȷ���������п����ļ�ʥ�����ص��ļ�ʥ������Կ��")
		UseItemFailed ( role )
		return LUA_FALSE
	end
	
	local s = DelBagItem ( role , 5784 , 1 ) 
	local	sc = math.random(1,100)
	local itemname = ""
	if  sc <=25 then	
		GiveItem ( role , 0 , 5781 , 1 , 4 )                    --------------�弶ʥ������   ��û���25%
		itemname = "�弶ʥ������"
	elseif sc <=26 then
		GiveItem ( role , 0 , 5785 , 1 , 4 )                    ---------------�弶ʥ������Կ��   ��û���1%
		itemname = "�弶ʥ������Կ��"
	elseif sc <=26.5 then
		GiveItem ( role , 0 , 5705 , 1 , 4 )                    ---------------����Կ��   ��û���0.5%
		itemname = "����Կ��"
	elseif sc <=46.5 then
		GiveItem ( role , 0 , 5707 , 1 , 4 )                    ---------------Ǭ������   ��û���20%
		itemname = "Ǭ������"
	elseif sc <=76.5 then
		GiveItem ( role , 0 , 3018 , 1 , 4 )                    ---------------�ƽ�ʥ��ʿ����   ��û���30%
		itemname = "�ƽ�ʥ��ʿ����"
	elseif sc <=86.5 then 
		GiveItem ( role , 0 , 5615 , 10 , 4 )                    ---------------�׽�ԻͲ�Ʊ   ��û���10%
		itemname = "�׽�ԻͲ�Ʊ"	
	else 
		GiveItem ( role , 0 , 5614 , 10 , 4 )                    ---------------�׽����޲�Ʊ   ��û���13.5%
		itemname = "�׽����޲�Ʊ"		
	end
	local cha_name = GetChaDefaultName ( role )
	Notice ( "��ϲ���" ..cha_name.."���ļ�ʥ������,��ϲ�Ļ��"..itemname )
end
--------------------------�弶ʥ������
function ItemUse_lv5swbzbox (role, Item)
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ���弶ʥ������" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	 if Item_CanGet < 1 then
		SystemNotice(role ,"���弶ʥ������������Ҫ1����λ")
		UseItemFailed ( role )
		return
	end
	local i= CheckBagItem( role, 5785)                                                
	if i <=0 then
		SystemNotice(  role , "��ȷ���������п����弶ʥ�����ص��弶ʥ������Կ��")
		UseItemFailed ( role )
		return LUA_FALSE
	end
	
	local s = DelBagItem ( role , 5785 , 1 ) 
	local	sc = math.random(1,100)
	local itemname = ""
	if  sc <=0.1 then	
		GiveItem ( role , 0 , 5706 , 1 , 4 )                    --------------��˫Կ��   ��û���0.1%
		itemname = "��˫Կ��"
	elseif sc <=10.1 then
		GiveItem ( role , 0 , 0242 , 1 , 4 )                    ---------------������ָ�һ�ȯ   ��û���10%
		itemname = "������ָ�һ�ȯ"
	elseif sc <=14.1 then
		GiveItem ( role , 0 , 2515 , 1 , 4 )                    ---------------�ƽ��ָ�һ�ȯ   ��û���4%
		itemname = "�ƽ��ָ�һ�ȯ"
	elseif sc <=16.1 then
		GiveItem ( role , 0 , 2516 , 1 , 4 )                    ---------------��ʯ��ָ�һ�ȯ   ��û���2%
		itemname = "��ʯ��ָ�һ�ȯ"
	elseif sc <=31.1 then
		GiveItem ( role , 0 , 2517 , 1 , 4 )                    ---------------���������һ�ȯ   ��û���15%
		itemname = "���������һ�ȯ"
	elseif sc <=37.1 then 
		GiveItem ( role , 0 , 2518 , 1 , 4 )                    ---------------��������һ�ȯ   ��û���6%
		itemname = "��������һ�ȯ"	
	elseif sc <=40.1 then 
		GiveItem ( role , 0 , 2519 , 1 , 4 )                    ---------------���������һ�ȯ   ��û���3%
		itemname = "���������һ�ȯ"	
	else 
		GiveItem ( role , 0 , 0333 , 1 , 4 )                    ---------------�߼���ʯ�һ�ȯ   ��û���59.9%
		itemname = "�߼���ʯ�һ�ȯ"	
	end
	local cha_name = GetChaDefaultName ( role )
	Notice ( "��ϲ���" ..cha_name.."���弶ʥ������,��ϲ�Ļ��"..itemname )
end
------------------------------��һ��ͯ������
function ItemUse_ETJ (role, Item)
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ����һ��ͯ�ڵ�����" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	 if Item_CanGet < 6 then
		SystemNotice(role ,"����һ��ͯ������������Ҫ6����λ")
		UseItemFailed ( role )
		return
	end
		local BY1 = CheckBagItem( role, 5341 )
		local BY2 = CheckBagItem( role, 5345 )
		local BY3 = CheckBagItem( role, 5349 )
		local BY4 = CheckBagItem( role, 5353 )
		local JN1 = CheckBagItem( role, 5357 )
		local JN2 = CheckBagItem( role, 5361 )
		local JN3 = CheckBagItem( role, 5365 )
		local JN4 = CheckBagItem( role, 5369 )
		local SZ1 = CheckBagItem( role, 5373 )
		local SZ2 = CheckBagItem( role, 5377 )
		local SZ3 = CheckBagItem( role, 5381 )
		local SZ4 = CheckBagItem( role, 5385 )
		local JX1 = CheckBagItem( role, 5457 )
		local JX2 = CheckBagItem( role, 5461 )
		local JX3 = CheckBagItem( role, 5465 )
		local JX4 = CheckBagItem( role, 5469 )


	if BY1 == 1 or BY2 == 1 or BY3 == 1 or BY4 == 1 then
			if JN1 == 1 or JN2 == 1 or JN3 == 1 or JN4 == 1 or SZ1 == 1 or SZ2 == 1 or SZ3 == 1 or SZ4 == 1 or JX1 == 1 or JX2 == 1 or JX3 == 1 or JX4 == 1 then
			SystemNotice(role ,"�����ϲ���ͬʱ��2������ʥ��Ŷ")
			UseItemFailed ( role )
        	return
        end
		   GiveItem ( role , 0 , 3080  , 99 , 4 )
	       GiveItem ( role , 0 , 581  , 1 , 4 )
	elseif JN1 == 1 or JN2 == 1 or JN3 == 1 or JN4 == 1 then
		if BY1 == 1 or BY2 == 1 or BY3 == 1 or BY4 == 1 or SZ1 == 1 or SZ2 == 1 or SZ3 == 1 or SZ4 == 1 or JX1 == 1 or JX2 == 1 or JX3 == 1 or JX4 == 1 then
			SystemNotice(role ,"�����ϲ���ͬʱ��2������ʥ��Ŷ")
			UseItemFailed ( role )
        	return
        end
	   GiveItem ( role , 0 , 3089  , 1 , 4 )
	   GiveItem ( role , 0 , 580  , 1 , 4 )
	elseif SZ1 == 1 or SZ2 == 1 or SZ3 == 1 or SZ4 == 1 then
		if BY1 == 1 or BY2 == 1 or BY3 == 1 or BY4 == 1 or JN1 == 1 or JN2 == 1 or JN3 == 1 or JN4 == 1 or JX1 == 1 or JX2 == 1 or JX3 == 1 or JX4 == 1 then
			SystemNotice(role ,"�����ϲ���ͬʱ��2������ʥ��Ŷ")
			UseItemFailed ( role )
        	return
        end
	   GiveItem ( role , 0 , 580  , 1 , 4 )
	   GiveItem ( role , 0 , 3047  , 5 , 4 )
	elseif JX1 == 1 or JX2 == 1 or JX3 == 1 or JX4 == 1 then
		if BY1 == 1 or BY2 == 1 or BY3 == 1 or BY4 == 1 or JN1 == 1 or JN2 == 1 or JN3 == 1 or JN4 == 1 or SZ1 == 1 or SZ2 == 1 or SZ3 == 1 or SZ4 == 1 then
			SystemNotice(role ,"�����ϲ���ͬʱ��2������ʥ��Ŷ")
			UseItemFailed ( role )
        	return
        end
	   GiveItem ( role , 0 , 333  , 1 , 4 )
	elseif BY1 < 1 and BY2 < 1 and BY3 < 1 and BY4 < 1 and JN1 < 1 and JN2 < 1 and JN3 < 1 and JN4 < 1 and SZ1 < 1 and SZ2 < 1 and SZ3 < 1 and SZ4 < 1 and JX1 < 1 and JX2 < 1 and JX3 < 1 and JX4 < 1 then
	   GiveItem ( role , 0 , 3083  , 10 , 4 )
	   GiveItem ( role , 0 , 5804  , 1 , 4 )
	end
end
----------------------------------------------�����ͯ����
function ItemUse_ZNBOX (role, Item)
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ����һ��ͯ�ڵ�����" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	 if Item_CanGet < 4 then
		SystemNotice(role ,"�������ͯ����������Ҫ4����λ")
		UseItemFailed ( role )
		return
	end
	    	local cha_type = GetChaTypeID ( role ) 
			if cha_type == 1  then 
	       GiveItem ( role , 0 , 5315  , 1 , 4 )
	       GiveItem ( role , 0 , 5316  , 1 , 4 )
	       GiveItem ( role , 0 , 5317  , 1 , 4 )
	       GiveItem ( role , 0 , 5318  , 1 , 4 )
	       
			elseif cha_type == 2  then 
	       GiveItem ( role , 0 , 5319 , 1 , 4 )
	       GiveItem ( role , 0 , 5320  , 1 , 4 )
	       GiveItem ( role , 0 , 5321  , 1 , 4 )
	       GiveItem ( role , 0 , 5322  , 1 , 4 )
	       
			elseif cha_type == 3 then 
	       GiveItem ( role , 0 , 5323  , 1 , 4 )
	       GiveItem ( role , 0 , 5324  , 1 , 4 )
	       GiveItem ( role , 0 , 5325  , 1 , 4 )
	       GiveItem ( role , 0 , 5326  , 1 , 4 )
	       
			elseif cha_type == 4 then 
	       GiveItem ( role , 0 , 5327  , 1 , 4 )
	       GiveItem ( role , 0 , 5328  , 1 , 4 )
	       GiveItem ( role , 0 , 5329  , 1 , 4 )
	       GiveItem ( role , 0 , 5330  , 1 , 4 )
	       
		   end

end
------------------------------------------���������ٻ�ȯ
function ItemUse_FKDSJSummon (role, Item)
		local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end

	local el = 0
	el =IsChaInRegion( role, 2 )
	if el == 1 then
		SystemNotice( role , "��ɫ��ǰ���ڰ�ȫ���������ٻ�����" )
		UseItemFailed ( role )
		return
	end
	local x, y = GetChaPos(role)
	local MonsterID = 1070
	local Refresh = 1801					--����ʱ�䣬�뵥λ
	local life = 1800000					--����ʱ�䣬���뵥λ
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaLifeTime( new, life )
	local x, y = GetChaPos(role)
	local MonsterID1 = 1069
	local new1 = CreateChaX( MonsterID1 , x , y , 145 , Refresh, role )
	SetChaLifeTime( new1, life )
	local x, y = GetChaPos(role)
	local MonsterID2 = 1069
	local new2 = CreateChaX( MonsterID2 , x , y , 145 , Refresh, role )
	SetChaLifeTime( new2, life )
end
-------------------------------------------------а��̻��ٻ�ȯ
function ItemUse_XEJHSummon (role, Item)
		local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ��" )
		UseItemFailed ( role )
		return
	end

	local el = 0
	el =IsChaInRegion( role, 2 )
	if el == 1 then
		SystemNotice( role , "��ɫ��ǰ���ڰ�ȫ���������ٻ�����" )
		UseItemFailed ( role )
		return
	end
	local x, y = GetChaPos(role)
	local MonsterID = 1071
	local Refresh = 1801					--����ʱ�䣬�뵥λ
	local life = 1800000					--����ʱ�䣬���뵥λ
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaLifeTime( new, life )
end
-------------------------------------cosplay�Ͽ�֤��
function ItemUse_COSPLAY (role, Item)
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ��cosplay�Ͽ�֤��" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	 if Item_CanGet < 1 then
		SystemNotice(role ,"��cosplay�Ͽ�֤��������Ҫ1����λ")
		UseItemFailed ( role )
		return
	end
	local	sc = math.random(1,4)
	if sc == 1 then
		GiveItem ( role , 0 , 5807  , 1 , 4 )
	elseif sc == 2 then
		GiveItem ( role , 0 , 5808  , 1 , 4 )
	elseif sc == 3 then
		GiveItem ( role , 0 , 5809  , 1 , 4 )
	elseif sc == 4 then
		GiveItem ( role , 0 , 5810  , 1 , 4 )
	end
end

---------------------------------��Ǯ��С���ٻ�ȯ--˫���ٻ���Ǯ��С�� by Lee 2008.06.13

function ItemUse_CQJXZ ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "���ϲ���ʹ��" )
		UseItemFailed ( role )
		return
	end
	local pet_num = GetPetNum(role)
	if pet_num >= 2 then
		SystemNotice( role , "��������2ֻ,���Ժ����ٻ�!" )
		UseItemFailed ( role )
		return
	end
	local x, y = GetChaPos(role)
	x_resume = 5
	y_resume = 5
	x = x + x_resume
	y = y + y_resume
	local MonsterID = 1072     -------------------��Ǯ��С�� 1072
	local Refresh = 3600					--����ʱ�䣬�뵥λ
	local life = 3600000					--����ʱ�䣬���뵥λ
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaHost(new,role)
	SetChaLifeTime( new, life )
	SetChaTarget(new, role)
	PlayEffect( new, 361 )
end

---------------------------------��żС���ٻ�ȯ--˫���ٻ���żС�� by Lee 2008.06.13

function ItemUse_ROXZ ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "���ϲ���ʹ��" )
		UseItemFailed ( role )
		return
	end
	
	local pet_num = GetPetNum(role)
	if pet_num >= 2 then
		SystemNotice( role , "��������2ֻ,���Ժ����ٻ�!" )
		UseItemFailed ( role )
		return
	end
	
	local x, y = GetChaPos(role)
	x_resume = 5
	y_resume = 5
	x = x + x_resume
	y = y + y_resume
	local MonsterID = 1074     -------------------��żС�� 1074
	local Refresh = 3600					--����ʱ�䣬�뵥λ
	local life = 3600000					--����ʱ�䣬���뵥λ
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaHost(new,role)
	SetChaLifeTime( new, life )
	SetChaTarget(new, role)
	PlayEffect( new, 361 )
end