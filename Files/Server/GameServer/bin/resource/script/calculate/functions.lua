MFRADIX=100 
CRTRADIX=100 
ATKER=0 
DEFER=1 

--------------ʥսר�ò���----------------------------------------
count_haidao = 0
count_haijun = 0
five_seconds = 0
second_five_seconds = 0
time_can_setmonster = 0
time_can_setnvsheng = 0
check_need_show = 0 
create_boss_hj = 0
create_boss_hd = 0
--create_two_side_lose = 0
--CLOSENotice = 0


count_haijun2 = 0
count_haidao2 = 0
five_seconds2 = 0
second_five_seconds2 = 0
time_can_setmonster2 = 0
time_can_setnvsheng2 = 0
check_need_show2 = 0
create_boss_hj2 = 0
create_boss_hd2 = 0
--create_two_side_lose2 = 0
--CLOSENotice2 = 0

function get_repatriate_city_guildwar(role)

  local map_name_role_guildwar = GetChaMapName ( role )
  return map_name_role_guildwar

end

function get_repatriate_city_guildwar2(role)

  local map_name_role_guildwar2 = GetChaMapName ( role )
  return map_name_role_guildwar2

end
---------------------------------------------------	
---------------------------------------------------



atk_statecheck = {} 
def_statecheck = {} 

function Reset_Statecheck () 
	for i = 1 , 100 , 1 do 
		atk_statecheck[i] = 0 
		def_statecheck[i] = 0 
	end 
end 



function EightyLv_ExpAdd ( cha , expadd ) 

	if ValidCha (cha) ==1 then					--ָ�����
		if ChaIsBoat ( cha ) == 0 then			--����Ӿ��������⴦��
			if Lv ( cha ) >= 80 then 
				expadd = math.floor ( expadd / 50 ) 
			end 
			if expadd == 0 then 
				SystemNotice ( TurnToCha(cha) , "���̫���޷���þ���" )
			end 
		end 
		exp = GetChaAttr ( cha , ATTR_CEXP ) 
		exp = exp + expadd 
		SetCharaAttr ( exp , cha , ATTR_CEXP ) 
	end 
end 


function Check_State ( atk_role , def_role ) 
	Reset_Statecheck() 
	--����״̬�ж�
--	atk_statecheck[STATE_ZMYJ] = GetChaStateLv ( ATKER , STATE_ZMYJ ) 
--	atk_statecheck[STATE_SMYB] = GetChaStateLv ( ATKER , STATE_SMYB ) 
	atk_statecheck[STATE_YS] = GetChaStateLv ( atk_role , STATE_YS ) 
	--�ܻ�״̬�ж�
--	def_statecheck[STATE_ZJFT] = GetChaStateLv ( DEFER , STATE_ZJFT ) 
--	def_statecheck[STATE_BSHD] = GetChaStateLv ( DEFER , STATE_BSHD ) 
end 

function CreatChaSkill ( role ) 
end 


function CheckJobLegal ( job ) 
	local check_job = 1 
	if job < JOB_TYPE_XINSHOU or job > JOB_TYPE_GONGCHENGSHI then 
		check_job = 0 
	end 
	return check_job 
end 

function RemoveYS( role )
	--SystemNotice ( role , "come here" )
	RemoveState( role , STATE_YS )					
	return 1 
end

function Rem_State_Unnormal ( role ) 
	RemoveState( role , STATE_ZD )					--�ж�
	RemoveState( role , STATE_MB )					--���
	RemoveState( role , STATE_ZZZH )				--����֮��
	RemoveState( role , STATE_SYNZ)				--��Ԩ����
	RemoveState( role , STATE_SDBZ )				--�������
	RemoveState( role , STATE_TJ )					--�Ⱦ�
	RemoveState( role , STATE_SJ )					--�־�
--	RemoveState( role , STATE_XY )					--ѣ��
	RemoveState( role , STATE_JNJZ )				--���ܽ�ֹ
	RemoveState( role , STATE_GJJZ )				--������ֹ
	RemoveState( role , STATE_BDJ )					--������
	RemoveState( role , STATE_XN )					--Ѫŭ
	RemoveState( role , STATE_NT )					--��̶
	RemoveState( role , STATE_DIZ )					--����
	RemoveState( role , STATE_SWCX )				--������Ц
	RemoveState( role , STATE_JSDD )				--��ʬ����
	RemoveState( role , STATE_HYMH )				--����ħ��-�Ȼ�
	RemoveState( role , STATE_HLKJ )				--����-�־�
	RemoveState( role , STATE_HLLM )				--����-����
	RemoveState( role , STATE_CRXSF )				--����з-����
	RemoveState( role , STATE_BlackHX )				--������Х
	RemoveState( role , STATE_HLKJ )				--�����׻�
end 
------------------------------------------REMOVEս��״̬
function Rem_State_StarUnnormal ( role ) 
	RemoveState( role , STATE_KUANGZ )					--��ս��     
	RemoveState( role , STATE_QUANS )					--ȫ��װ��  
	RemoveState( role , STATE_QINGZ )					--��װҩˮ  
end 
function Rem_State_NOSEA ( role ) ------------------�º�ʱ�Ƴ�״̬
	RemoveState( role , STATE_KB )					
	RemoveState( role , STATE_XLZH )					
	RemoveState( role , STATE_PKJSYS )				
	RemoveState( role , STATE_PKSFYS)				
	RemoveState( role , STATE_TSHD )				
	RemoveState( role , STATE_FZLZ )					
	RemoveState( role , STATE_PKZDYS )					
	RemoveState( role , STATE_PKKBYS )					
	RemoveState( role , STATE_YSLLQH )				
	RemoveState( role , STATE_YSMJQH )				
	RemoveState( role , STATE_YSLQQH )					
	RemoveState( role , STATE_YSTZQH )					
	RemoveState( role , STATE_YSJSQH )					
	RemoveState( role , STATE_DENGLONG )					
	RemoveState( role , STATE_YSMspd )				
	RemoveState( role , STATE_PKSBYS )				
	RemoveState( role , STATE_KUANGZ )				
	RemoveState( role , STATE_QUANS )				
	RemoveState( role , STATE_QINGZ )				
	RemoveState( role , STATE_CJBBT )				
	RemoveState( role , STATE_JRQKL )				
	RemoveState( role , STATE_KALA )	
	RemoveState( role , STATE_CZZX )
	RemoveState( role , STATE_JLFT1 )				
	RemoveState( role , STATE_JLFT2 )				
	RemoveState( role , STATE_JLFT3 )				
	RemoveState( role , STATE_JLFT4 )				
	RemoveState( role , STATE_JLFT5 )				
	RemoveState( role , STATE_JLFT6 )				
	RemoveState( role , STATE_JLFT7 )				
	RemoveState( role , STATE_JLFT8 )
	RemoveState( role , STATE_HPHMHF )
	RemoveState( role , STATE_SPHMHF )
	RemoveState( role , STATE_LANTERN )
	RemoveState( role , STATE_RAPIDDRUG )
	RemoveState( role , STATE_WARSIT )
	RemoveState( role , STATE_DARKDRESS )
	RemoveState( role , STATE_DEMON )
	RemoveState( role , STATE_GREATSH )
	RemoveState( role , STATE_MIRAGE )
	RemoveState( role , STATE_DEVOTE )
	RemoveState( role , STATE_VIGOUR )
end 
function SetCharaAttr(a,b,c) --[[���ý�ɫ����ת���ӿ�:����ֵ����ɫ���ͣ����Ա��]]--
	local x,y=b,c 
	local z=math.floor(a) 
--	LuaPrint("���ý�ɫ"..b) 
	--LuaPrint("����"..c) 
	--LuaPrint(a.."\n") 
	--LG("setchaattr","����"..c, "������", "= ", a ,"\n") 
	SetChaAttr(x,y,z) 
end 

function Attr_ap(a) --[[ȡ��ɫʣ��ɷ������]]--
	--LuaPrint("ȡ��ɫ����remain_ap") 
	local attr_ap=GetChaAttr(a,ATTR_AP) 
	return attr_ap 
end 

function Attr_tp(a) 
	--LuaPrint("ȡ��ɫ����remain_tp") 
	local attr_tp=GetChaAttr(a,ATTR_TP) 
	return attr_tp 
end 

function CheckCha_Job(a) --[[ȡ��ɫְҵ]]-- 
	--LuaPrint("ȡ��ɫ����job") 
	local role_attr_job=GetChaAttr(a,ATTR_JOB) 
	return role_attr_job 
end 

function Exp(a) 
	--LuaPrint("ȡ��ɫ��ǰexp�����Я��exp") 
	local exp=GetChaAttr(a,ATTR_CEXP) --[[ȡexp]]--
	return exp 
end 

function Lv(a)
	--LuaPrint("ȡ��ɫ����lv") 
	local b = TurnToCha ( a ) 
	local lv=GetChaAttr( b , ATTR_LV ) --[[ȡlv]]--
	return lv 
end 

function Hp(a)
	--LuaPrint("ȡ��ɫ����hp") 
	local hp=GetChaAttr(a,ATTR_HP) --[[ȡhp]]--
	return hp 
end 

function Mxhp(a)
	--LuaPrint("ȡ��ɫ����mxhp") 
	local mxhp=GetChaAttr(a,ATTR_MXHP) --[[ȡmxhp]]--
	return mxhp 
end 

function MxhpSa(a)
	--LuaPrint("ȡ��ɫ����mxhp_sa") 
	local mxhpsa= GetChaAttr(a, ATTR_STATEC_MXHP)/ATTR_RADIX   --[[ȡmxhp״̬�ٷֱ�]]--
	return mxhpsa 
end 

function MxhpSb(a)
	--LuaPrint("ȡ��ɫ����mxhp_sb") 
	local mxhpsb=GetChaAttr(a, ATTR_STATEV_MXHP) --[[ȡmxhp״̬����]]--
	return mxhpsb 
end 

function MxhpIa(a)
	--LuaPrint("ȡ��ɫ����mxhp_ia") 
	local mxhpia=GetChaAttr(a, ATTR_ITEMC_MXHP)/ATTR_RADIX --[[ȡmxhp���߰ٷֱ�]]--
	return mxhpia 
end 

function MxhpIb(a)
	--LuaPrint("ȡ��ɫ����mshp_ib") 
	local mxhpib=GetChaAttr(a, ATTR_ITEMV_MXHP) --[[ȡmxhp���߳���]]--
	return mxhpib 
end 

function Sp(a)
	--LuaPrint("ȡ��ɫ����sp") 
	local sp=GetChaAttr(a,ATTR_SP) --[[ȡsp]]--
	return sp 
end 

function Mxsp(a)
	--LuaPrint("ȡ��ɫ����mxsp") 
	local mxsp=GetChaAttr(a,ATTR_MXSP) --[[ȡmxsp]]--
	return mxsp 
end 

function MxspSa(a)
	--LuaPrint("ȡ��ɫ����mxsp_sa") 
	local mxspsa=GetChaAttr(a, ATTR_STATEC_MXSP)/ATTR_RADIX  --[[ȡmxsp״̬�ٷֱ�]]--
	return mxspsa 
end 

function MxspSb(a)
	--LuaPrint("ȡ��ɫ����mxsp_sb") 
	local mxspsb=GetChaAttr(a, ATTR_STATEV_MXSP) --[[ȡmxsp״̬����]]--
	return mxspsb 
end 

function MxspIa(a)
	--LuaPrint("ȡ��ɫ����mxsp_ia") 
	local mxspia=GetChaAttr(a, ATTR_ITEMC_MXSP)/ATTR_RADIX --[[ȡmxsp���߰ٷֱ�]]--
	return mxspia 
end 

function MxspIb(a)
	--LuaPrint("ȡ��ɫ����mxsp_ib") 
	local mxspib=GetChaAttr(a, ATTR_ITEMV_MXSP) --[[ȡmxsp���߳���]]--
	return mxspib 
end 

function Mnatk(a)
	--LuaPrint("ȡ��ɫ����mnatk") 
	local mnatk=GetChaAttr(a,ATTR_MNATK) --[[ȡmnatk]]--
	return mnatk 
end 

function MnatkSa(a)
	--LuaPrint("ȡ��ɫ����mnatk_sa") 
	local mnatksa= GetChaAttr(a, ATTR_STATEC_MNATK)/ATTR_RADIX --[[ȡmnatk״̬�ٷֱ�]]--
	return mnatksa 
end 

function MnatkSb(a)
	--LuaPrint("ȡ��ɫ����mnatk_sb") 
	local mnatksb=GetChaAttr(a, ATTR_STATEV_MNATK) --[[ȡmnatk״̬����]]--
	return mnatksb 
end 

function MnatkIa(a)
	--LuaPrint("ȡ��ɫ����mnatk_ia") 
	local mnatkia=GetChaAttr(a, ATTR_ITEMC_MNATK)/ATTR_RADIX --[[ȡmnatk���߰ٷֱ�]]--
	return mnatkia 
end 

function MnatkIb(a)
	--LuaPrint("ȡ��ɫ����mnatk_ib") 
	local mnatkib=GetChaAttr(a, ATTR_ITEMV_MNATK) --[[ȡmnatk���߳���]]--
	return mnatkib 
end 

function Mxatk(a)
	--LuaPrint("ȡ��ɫ����mxatk") 
	local mxatk=GetChaAttr(a,ATTR_MXATK) --[[ȡmxatk]]--
	return mxatk 
end 

function MxatkSa(a)
	--LuaPrint("ȡ��ɫ����mxatk_sa") 
	local mxatksa= GetChaAttr(a, ATTR_STATEC_MXATK)/ATTR_RADIX  --[[ȡmxatk״̬�ٷֱ�]]--
	return mxatksa 
end 

function MxatkSb(a)
	--LuaPrint("ȡ��ɫ����mxatk_sb") 
	local mxatksb=GetChaAttr(a, ATTR_STATEV_MXATK) --[[ȡmxatk״̬����]]--
	return mxatksb 
end 

function MxatkIa(a)
	--LuaPrint("ȡ��ɫ����mxatk_ia") 
	local mxatkia=GetChaAttr(a, ATTR_ITEMC_MXATK)/ATTR_RADIX --[[ȡmxatk���߰ٷֱ�]]--
	return mxatkia 
end 

function MxatkIb(a)
	--LuaPrint("ȡ��ɫ����mxatk_ib") 
	local mxatkib=GetChaAttr(a, ATTR_ITEMV_MXATK) --[[ȡmxatk���߳���]]--
	return mxatkib 
end 

function Def(a)
	--LuaPrint("ȡ��ɫ����def") 
	local def=GetChaAttr(a,ATTR_DEF) --[[ȡdef]]--
	return def 
end 

function DefSa(a)
	--LuaPrint("ȡ��ɫ����def_sa") 
	local defsa= GetChaAttr(a, ATTR_STATEC_DEF)/ATTR_RADIX  --[[ȡdef״̬�ٷֱ�]]--
	return defsa 
end 

function DefSb(a)
	--LuaPrint("ȡ��ɫ����def_sb") 
	local defsb=GetChaAttr(a, ATTR_STATEV_DEF) --[[ȡdef״̬����]]--
	--LG("setchaattr","ȡ��ɫ",ATTR_STATEV_DEF,"������ = ", defsb,"\n" ) 
	return defsb 
end 

function DefIa(a)
	--LuaPrint("ȡ��ɫ����def_ia") 
	local defia=GetChaAttr(a, ATTR_ITEMC_DEF)/ATTR_RADIX --[[ȡdef���߰ٷֱ�]]--
	return defia 
end 

function DefIb(a)
	--LuaPrint("ȡ��ɫ����def_ib") 
	local defib=GetChaAttr(a, ATTR_ITEMV_DEF) --[[ȡdef���߳���]]--
	return defib 
end 

function Resist(a)
	--LuaPrint("ȡ��ɫ����def") 
	local def=GetChaAttr(a,ATTR_PDEF) --[[ȡdef]]--
	return def 
end 

function ResistSa(a)
	--LuaPrint("ȡ��ɫ����def_sa") 
	local defsa= GetChaAttr(a, ATTR_STATEC_PDEF)/ATTR_RADIX  --[[ȡdef״̬�ٷֱ�]]--
	return defsa 
end 

function ResistSb(a)
	--LuaPrint("ȡ��ɫ����def_sb") 
	local defsb=GetChaAttr(a, ATTR_STATEV_PDEF) --[[ȡdef״̬����]]--
	return defsb 
end 

function ResistIa(a)
	--LuaPrint("ȡ��ɫ����def_ia") 
	local defia=GetChaAttr(a, ATTR_ITEMC_PDEF)/ATTR_RADIX --[[ȡdef���߰ٷֱ�]]--
	return defia 
end 

function ResistIb(a)
	--LuaPrint("ȡ��ɫ����def_ib") 
	local defib=GetChaAttr(a, ATTR_ITEMV_PDEF) --[[ȡdef���߳���]]--
	return defib 
end 

function Hit(a)
	--LuaPrint("ȡ��ɫ����hit") 
	local hit=GetChaAttr(a,ATTR_HIT) --[[ȡhit]]--
	return hit 
end 

function HitSa(a)
	--LuaPrint("ȡ��ɫ����hit_sa") 
	local hitsa= GetChaAttr(a, ATTR_STATEC_HIT)/ATTR_RADIX   --[[ȡhit״̬�ٷֱ�]]--
	return hitsa 
end 

function HitSb(a)
	--LuaPrint("ȡ��ɫ����hit_sb") 
	local hitsb=GetChaAttr(a, ATTR_STATEV_HIT) --[[ȡhit״̬����]]--
	return hitsb 
end 

function HitIa(a)
	--LuaPrint("ȡ��ɫ����hit_ia") 
	local hitia=GetChaAttr(a, ATTR_ITEMC_HIT)/ATTR_RADIX --[[ȡhit���߰ٷֱ�]]--
	return hitia 
end 

function HitIb(a)
	--LuaPrint("ȡ��ɫ����hit_ib") 
	local hitib=GetChaAttr(a, ATTR_ITEMV_HIT) --[[ȡhit���߳���]]--
	return hitib 
end 

function Flee(a)
	--LuaPrint("ȡ��ɫ����flee") 
	local flee=GetChaAttr(a,ATTR_FLEE) --[[ȡflee]]--
	return flee 
end 

function FleeSa(a)
	--LuaPrint("ȡ��ɫ����flee_sa") 
	local fleesa=  GetChaAttr(a, ATTR_STATEC_FLEE)/ATTR_RADIX  --[[ȡflee״̬�ٷֱ�]]--
	return fleesa 
end 

function FleeSb(a)
	--LuaPrint("ȡ��ɫ����flee_sb") 
	local fleesb=GetChaAttr(a, ATTR_STATEV_FLEE) --[[ȡflee״̬����]]--
	return fleesb 
end 

function FleeIa(a)
	--LuaPrint("ȡ��ɫ����flee_ia") 
	local fleeia=GetChaAttr(a, ATTR_ITEMC_FLEE)/ATTR_RADIX --[[ȡflee���߰ٷֱ�]]--
	return fleeia 
end 

function FleeIb(a)
	--LuaPrint("ȡ��ɫ����flee_ib") 
	local fleeib=GetChaAttr(a, ATTR_ITEMV_FLEE) --[[ȡflee���߳���]]--
	return fleeib 
end 

function Mf(a)
	--LuaPrint("ȡ��ɫ����mf") 
	local mf=GetChaAttr(a,ATTR_MF)/MFRADIX --[[ȡmf]]--
	return mf 
end 

function MfSa(a)
	--LuaPrint("ȡ��ɫ����mf_sa") 
	local mfsa= GetChaAttr(a, ATTR_STATEC_MF)/ATTR_RADIX  --[[ȡmf״̬�ٷֱ�]]--
	return mfsa 
end 

function MfSb(a)
	--LuaPrint("ȡ��ɫ����mf_sb") 
	local mfsb=GetChaAttr(a, ATTR_STATEV_MF) --[[ȡmf״̬����]]--
	return mfsb 
end 

function MfIa(a)
	--LuaPrint("ȡ��ɫ����mf_ia") 
	local mfia=GetChaAttr(a, ATTR_ITEMC_MF)/ATTR_RADIX --[[ȡmf���߰ٷֱ�]]--
	return mfia 
end 

function MfIb(a)
	--LuaPrint("ȡ��ɫ����mf_ib") 
	local mfib=GetChaAttr(a, ATTR_ITEMV_MF) --[[ȡmf���߳���]]--
	return mfib 
end 

function Crt(a)
	--LuaPrint("ȡ��ɫ����crt") 
	local crt=GetChaAttr(a,ATTR_CRT)/CRTRADIX --[[ȡcrt]]--
	return crt 
end 

function CrtSa(a)
	--LuaPrint("ȡ��ɫ����crt_sa") 
	local crtsa= GetChaAttr(a, ATTR_STATEC_CRT)/ATTR_RADIX  --[[ȡcrt״̬�ٷֱ�]]--
	return crtsa 
end 

function CrtSb(a)
	--LuaPrint("ȡ��ɫ����crt_sb") 
	local crtsb=GetChaAttr(a, ATTR_STATEV_CRT) --[[ȡcrt״̬����]]--
	return crtsb 
end 

function CrtIa(a)
	--LuaPrint("ȡ��ɫ����crt_ia") 
	local crtia=GetChaAttr(a, ATTR_ITEMC_CRT)/ATTR_RADIX --[[ȡcrt���߰ٷֱ�]]--
	return crtia 
end 

function CrtIb(a)
	--LuaPrint("ȡ��ɫ����crt_ib") 
	local crtib=GetChaAttr(a, ATTR_ITEMV_CRT) --[[ȡcrt���߳���]]--
	return crtib 
end 

function Hrec(a)
	--LuaPrint("ȡ��ɫ����hrec") 
	local hrec=GetChaAttr(a,ATTR_HREC) --[[ȡhrec]]--
	return hrec 
end 

function HrecSa(a)
	--LuaPrint("ȡ��ɫ����hrec_sa") 
	local hrecsa=  GetChaAttr(a, ATTR_STATEC_HREC)/ATTR_RADIX  --[[ȡhrec״̬�ٷֱ�]]--
	return hrecsa 
end 

function HrecSb(a)
	--LuaPrint("ȡ��ɫ����hrec_sb") 
	local hrecsb=GetChaAttr(a, ATTR_STATEV_HREC) --[[ȡhrec״̬����]]--
	return hrecsb 
end 

function HrecIa(a)
	--LuaPrint("ȡ��ɫ����hrec_ia") 
	local hrecia=GetChaAttr(a, ATTR_ITEMC_HREC)/ATTR_RADIX --[[ȡhrec���߰ٷֱ�]]--
	return hrecia 
end 

function HrecIb(a)
	--LuaPrint("ȡ��ɫ����hrec_ib") 
	local hrecib=GetChaAttr(a, ATTR_ITEMV_HREC) --[[ȡhrec���߳���]]--
	return hrecib 
end 

function Srec(a)
	--LuaPrint("ȡ��ɫ����srec") 
	local srec=GetChaAttr(a,ATTR_SREC) --[[ȡsrec]]--
	return srec 
end 

function SrecSa(a)
	--LuaPrint("ȡ��ɫ����srec_sa") 
	local srecsa= GetChaAttr(a, ATTR_STATEC_SREC)/ATTR_RADIX  --[[ȡsrec״̬�ٷֱ�]]--
	return srecsa 
end 

function SrecSb(a)
	--LuaPrint("ȡ��ɫ����srec_sb") 
	local srecsb=GetChaAttr(a, ATTR_STATEV_SREC) --[[ȡsrec״̬����]]--
	return srecsb 
end 

function SrecIa(a)
	--LuaPrint("ȡ��ɫ����srec_ia") 
	local srecia=GetChaAttr(a, ATTR_ITEMC_SREC)/ATTR_RADIX --[[ȡsrec���߰ٷֱ�]]--
	return srecia 
end 

function SrecIb(a)
	--LuaPrint("ȡ��ɫ����srec_ib") 
	local srecib=GetChaAttr(a, ATTR_ITEMV_SREC) --[[ȡsrec���߳���]]--
	return srecib 
end 

function Aspd(a)
	--LuaPrint("ȡ��ɫ����aspd") 
	local aspd=math.floor ( 100000 / GetChaAttr(a,ATTR_ASPD) )  --[[ȡaspd]]--
	return aspd 
end 

function AspdSa(a)
	--LuaPrint("ȡ��ɫ����aspd_sa") 
	local aspdsa=  GetChaAttr(a, ATTR_STATEC_ASPD)/ATTR_RADIX    --[[ȡaspd״̬�ٷֱ�]]--
	return aspdsa 
end 

function AspdSb(a)
	--LuaPrint("ȡ��ɫ����aspd_sb") 
	local aspdsb=GetChaAttr(a, ATTR_STATEV_ASPD) --[[ȡaspd״̬����]]--
	return aspdsb 
end 

function AspdIa(a)
	--LuaPrint("ȡ��ɫ����aspd_ia") 
	local aspdia=GetChaAttr(a, ATTR_ITEMC_ASPD)/ATTR_RADIX --[[ȡaspd���߰ٷֱ�]]--
	return aspdia 
end 

function AspdIb(a)
	--LuaPrint("ȡ��ɫ����aspd_ib") 
	local aspdib=GetChaAttr(a, ATTR_ITEMV_ASPD) --[[ȡaspd���߳���]]--
	return aspdib 
end 

function Adis(a)
	--LuaPrint("ȡ��ɫ����adis") 
	local adis=GetChaAttr(a,ATTR_ADIS) --[[ȡadis]]--
	return adis 
end 

function AdisSa(a)
	--LuaPrint("ȡ��ɫ����adis_sa") 
	local adissa=  GetChaAttr(a, ATTR_STATEC_ADIS)/ATTR_RADIX   --[[ȡadis״̬�ٷֱ�]]--
	return adissa 
end 

function AdisSb(a)
	--LuaPrint("ȡ��ɫ����adis_sb") 
	local adissb=GetChaAttr(a, ATTR_STATEV_ADIS) --[[ȡadis״̬����]]--
	return adissb 
end 

function AdisIa(a)
	--LuaPrint("ȡ��ɫ����aids_ia") 
	local adisia=GetChaAttr(a, ATTR_ITEMC_ADIS)/ATTR_RADIX --[[ȡadis���߰ٷֱ�]]--
	return adisia 
end 

function AdisIb(a)
	--LuaPrint("ȡ��ɫ����adis_ib") 
	local adisib=GetChaAttr(a, ATTR_ITEMV_ADIS) --[[ȡadis���߳���]]--
	return adisib 
end 

function Mspd(a)
	--LuaPrint("ȡ��ɫ����mspd") 
	local mspd=GetChaAttr(a,ATTR_MSPD) --[[ȡmspd]]--
	return mspd 
end 

function MspdSa(a)
	--LuaPrint("ȡ��ɫ����mspd_sa") 
	local mspdsa=  GetChaAttr(a, ATTR_STATEC_MSPD)/ATTR_RADIX   --[[ȡmspd״̬�ٷֱ�]]--
	return mspdsa 
end 
function MspdSb(a)
	--LuaPrint("ȡ��ɫ����mspd_sb") 
	local mspdsb=GetChaAttr(a, ATTR_STATEV_MSPD) --[[ȡmspd״̬����]]--
	return mspdsb 
end 
function MspdIa(a)
	--LuaPrint("ȡ��ɫ����mspd_ia") 
	local mspdia=GetChaAttr(a, ATTR_ITEMC_MSPD)/ATTR_RADIX --[[ȡmspd���߰ٷֱ�]]--
	return mspdia 
end 

function MspdIb(a)
	--LuaPrint("ȡ��ɫ����Mspd_ib") 
	local mspdib=GetChaAttr(a, ATTR_ITEMV_MSPD) --[[ȡmspd���߳���]]--
	return mspdib 
end 

function Col(a)
	--LuaPrint("ȡ��ɫ����col") 
	local col=GetChaAttr(a,ATTR_COL) --[[ȡcol]]--
	return col 
end 

function ColSa(a) 
	--LuaPrint("ȡ��ɫ����col_sa") 
	local colsa= GetChaAttr(a, ATTR_STATEC_COL)/ATTR_RADIX  --[[ȡcol״̬�ٷֱ�]]--
	return colsa 
end 

function ColSb(a) 
	--LuaPrint("ȡ��ɫ����col_sb") 
	local colsb=GetChaAttr(a, ATTR_STATEV_COL) --[[ȡcol״̬����]]--
	return colsb 
end 

function ColIa(a) 
	--LuaPrint("ȡ��ɫ����col_ia") 
	local colia=GetChaAttr(a, ATTR_ITEMC_COL)/ATTR_RADIX --[[ȡcol���߰ٷֱ�]]--
	return colia 
end 

function ColIb(a) 
	--LuaPrint("ȡ��ɫ����col_ib") 
	local colib=GetChaAttr(a, ATTR_ITEMV_COL) --[[ȡcol���߳���]]--
	return colib 
end 

function Str(a) 
	--LuaPrint("ȡ��ɫ����str") 
	local str=GetChaAttr(a,ATTR_STR) --[[ȡstr]]--
	return str 
end 

function StrSa(a) 
	--LuaPrint("ȡ��ɫ����str_sa") 
	local strsa= GetChaAttr(a, ATTR_STATEC_STR)/ATTR_RADIX   --[[ȡstr״̬�ٷֱ�]]--
	return strsa 
end 

function StrSb(a) 
	--LuaPrint("ȡ��ɫ����str_sb") 
	local strsb=GetChaAttr(a, ATTR_STATEV_STR) --[[ȡstr״̬����]]--
	return strsb 
end 

function StrIa(a)
	--LuaPrint("ȡ��ɫ����str_ia") 
	local stria=GetChaAttr(a,ATTR_ITEMC_STR)/ATTR_RADIX --[[ȡstr���߰ٷֱ�]]--
	return stria 
end 

function StrIb(a)
	--LuaPrint("ȡ��ɫ����str_ib") 
	local strib=GetChaAttr(a,ATTR_ITEMV_STR) --[[ȡstr���߳���]]--
	return strib 
end 

function Dex(a)
	--LuaPrint("ȡ��ɫ����dex") 
	local dex=GetChaAttr(a,ATTR_DEX) --[[ȡdex]]--
	return dex 
end 

function DexSa(a)
	--LuaPrint("ȡ��ɫ����dex_sa") 
	local dexsa= GetChaAttr(a, ATTR_STATEC_DEX)/ATTR_RADIX  --[[ȡdex״̬�ٷֱ�]]--
	return dexsa 
end 

function DexSb(a)
	--LuaPrint("ȡ��ɫ����dex_sb") 
	local dexsb=GetChaAttr(a, ATTR_STATEV_DEX) --[[ȡdex״̬����]]--
	return dexsb 
end 

function DexIa(a)
	--LuaPrint("ȡ��ɫ����dex_ia") 
	local dexia=GetChaAttr(a,ATTR_ITEMC_DEX)/ATTR_RADIX --[[ȡdex���߰ٷֱ�]]--
	return dexia 
end 

function DexIb(a)
	--LuaPrint("ȡ��ɫ����dex_ib") 
	local dexib=GetChaAttr(a,ATTR_ITEMV_DEX) --[[ȡdex���߳���]]--
	return dexib 
end 

function Agi(a) 
	--LuaPrint("ȡ��ɫ����agi") 
	local agi=GetChaAttr(a,ATTR_AGI) --[[ȡagi]]--
	return agi 
end 

function AgiSa(a)
	--LuaPrint("ȡ��ɫ����agi_sa") 
	local agisa= GetChaAttr(a, ATTR_STATEC_AGI)/ATTR_RADIX  --[[ȡagi״̬�ٷֱ�]]--
	return agisa 
end 

function AgiSb(a)
	--LuaPrint("ȡ��ɫ����agi_sb") 
	local agisb=GetChaAttr(a, ATTR_STATEV_AGI) --[[ȡagi״̬����]]--
	return agisb 
end 

function AgiIa(a)
	--LuaPrint("ȡ��ɫ����agi_ia") 
	local agiia=GetChaAttr(a,ATTR_ITEMC_AGI)/ATTR_RADIX --[[ȡagi���߰ٷֱ�]]--
	return agiia 
end 

function AgiIb(a)
	--LuaPrint("ȡ��ɫ����agi_ib") 
	local agiib=GetChaAttr(a,ATTR_ITEMV_AGI) --[[ȡagi���߳���]]--
	return agiib 
end 

function Con(a)
	--LuaPrint("ȡ��ɫ����con") 
	local con=GetChaAttr(a,ATTR_CON) --[[ȡcon]]--
	return con 
end 

function ConSa(a)
	--LuaPrint("ȡ��ɫ����con_sa") 
	local consa= GetChaAttr(a, ATTR_STATEC_CON)/ATTR_RADIX  --[[ȡcon״̬�ٷֱ�]]--
	return consa 
end 

function ConSb(a)
	--LuaPrint("ȡ��ɫ����con_sb") 
	local consb=GetChaAttr(a, ATTR_STATEV_CON) --[[ȡcon״̬����]]--
	return consb 
end 

function ConIa(a)
	--LuaPrint("ȡ��ɫ����con_ia") 
	local conia=GetChaAttr(a, ATTR_ITEMC_CON)/ATTR_RADIX --[[ȡcon���߰ٷֱ�]]--
	return conia 
end 

function ConIb(a)
	--LuaPrint("ȡ��ɫ����con_ib") 
	local conib=GetChaAttr(a, ATTR_ITEMV_CON) --[[ȡcon���߳���]]--
	return conib 
end 

function Sta(a)
	--LuaPrint("ȡ��ɫ����sta") 
	local sta=GetChaAttr(a,ATTR_STA) --[[ȡsta]]--
	return sta 
end 

function StaSa(a)
	--LuaPrint("ȡ��ɫ����sta_sa") 
	local stasa= GetChaAttr(a, ATTR_STATEC_STA)/ATTR_RADIX  --[[ȡsta״̬�ٷֱ�]]--
	return stasa 
end 

function StaSb(a)
	--LuaPrint("ȡ��ɫ����sta_sb") 
	local stasb=GetChaAttr(a, ATTR_STATEV_STA) --[[ȡsta״̬����]]--
	return stasb 
end 

function StaIa(a)
	--LuaPrint("ȡ��ɫ����sta_ia") 
	local staia=GetChaAttr(a, ATTR_ITEMC_STA)/ATTR_RADIX --[[ȡsta���߰ٷֱ�]]--
	return staia 
end 

function StaIb(a)
	--LuaPrint("ȡ��ɫ����sta_ib") 
	local staib=GetChaAttr(a, ATTR_ITEMV_STA) --[[ȡsta���߳���]]--
	return staib 
end 

function Luk(a)
	--LuaPrint("ȡ��ɫ����luk") 
	local luk=GetChaAttr(a,ATTR_LUK) --[[ȡluk]]--
	return luk 
end 

function LukSa(a)
	--LuaPrint("ȡ��ɫ����luk_sa") 
	local luksa= GetChaAttr(a, ATTR_STATEC_LUK)/ATTR_RADIX   --[[ȡluk״̬�ٷֱ�]]--
	return luksa 
end 

function LukSb(a)
	--LuaPrint("ȡ��ɫ����luk_sb") 
	local luksb=GetChaAttr(a, ATTR_STATEV_LUK) --[[ȡluk״̬����]]--
	return luksb 
end 

function LukIa(a)
	--LuaPrint("ȡ��ɫ����luk_ia") 
	local lukia=GetChaAttr(a, ATTR_ITEMC_LUK)/ATTR_RADIX --[[ȡluk���߰ٷֱ�]]--
	return lukia 
end 

function LukIb(a)
	--LuaPrint("ȡ��ɫ����luk_ib") 
	local lukib = GetChaAttr(a, ATTR_ITEMV_LUK) --[[ȡluk���߳���]]--
	return lukib 
end 




function BSMxhp(a) --[[ȡ����mxhp]]--
	--LuaPrint("ȡ��ɫ����bsmxhp") 
	local bsmxhp=GetChaAttr(a,ATTR_BMXHP) 
	return bsmxhp 
end 

function Mxhp_final(a) 
	local mxhp_final=(BSMxhp(a) * MxhpIa(a) + MxhpIb(a) ) * math.max(0, MxhpSa(a))  + MxhpSb(a) --[[ȡ��ʱʵ��mxhp]]--
	--LG("chaattr_set", " BSMxhp = " , BSMxhp(a) , "MxhpIa = " , MxhpIa(a) , " MxhpIb = " , MxhpIb(a) , "MxhpSa = " , MxhpSa(a) , "MxhpSb = ", MxhpSb(a) , "\n" ) 
	--LG("chaattr_set", "mxhp_final = ", mxhp_final , "\n" ) 
	return mxhp_final 
end 


function Sp_final(a)
	local sp_final=(BSSp(a) * SpIa(a) + SpIb(a) ) * math.max(0 , SpSa(a)) + SpSb(a) --[[ȡ��ʱʵ��sp]]--
	--LG("chaattr_set", " BSMxhp = " , BSmxhp(a) , "MxhpIa = " , MxhpIa(a) , " MxhpIb = " , MxhpIb(a) , "MxhpSa = " , MxhpSa(a) , "MxhpSb = ", MxhpSb(a) , "\n" ) 
	--LG("chaattr_set", "mxhp_final = ", mxhp_final , "\n" ) 
	return sp_final 
end 

function BSMxsp(a) --[[ȡ����mxsp]]--
	--LuaPrint("ȡ��ɫ����bsmxsp") 
	local bsmxsp=GetChaAttr(a,ATTR_BMXSP) 
	return bsmxsp 
end 

function Mxsp_final(a)
	local mxsp_final=(BSMxsp(a) * MxspIa(a) + MxspIb(a) ) * math.max ( 0 , MxspSa(a) ) + MxspSb(a) --[[ȡ��ʱʵ��mxsp]]--
	--LG("chaattr_set", " BSMxsp = " , BSMxsp(a) , "MxspIa = " , MxspIa(a) , " MxspIb = " , MxspIb(a) , "MxspSa = " , MxspSa(a) , "MxspSb = ", MxspSb(a) , "\n" ) 
	--LG("chaattr_set", "mxsp_final = ", mxsp_final , "\n" ) 
	return mxsp_final 
end 

function BSMnatk(a) --[[ȡ����mnatk]]--
	--LuaPrint("ȡ��ɫ����bsmnatk") 
	local bsmnatk=GetChaAttr(a,ATTR_BMNATK) 
	return bsmnatk 
end

function Mnatk_final(a)
	local mnatk_final=math.max ( (BSMnatk(a) * MnatkIa(a) + MnatkIb(a) ) * math.max ( 0 , MnatkSa(a)) + MnatkSb(a) , 1 ) --[[ȡ��ʱʵ��mnatk]]--
	--LG("chaattr_set", " BSMnatk = " , BSMnatk(a) , "MnatkIa = " , MnatkIa(a) , " MnatkIb = " , MnatkIb(a) , "MnatkSa = " , MnatkSa(a) , "MnatkSb = ", MnatkSb(a) , "\n" ) 
	--LG("chaattr_set", "mnatk_final = ", mnatk_final , "\n" ) 
	return mnatk_final 
end 

function BSMxatk(a) --[[ȡ����mxatk]]--
	--LuaPrint("ȡ��ɫ����bsmxatk") 
	local bsmxatk=GetChaAttr(a,ATTR_BMXATK) 
	return bsmxatk 
end

function Mxatk_final(a)
	local mxatk_final=math.max ( (BSMxatk(a) * MxatkIa(a) + MxatkIb(a) ) * math.max ( 0 , MxatkSa(a) ) + MxatkSb(a) , 1 ) --[[ȡ��ʱʵ��mxatk]]--
	return mxatk_final 
end 

function BSDef(a) --[[ȡ����def]]--
	--LuaPrint("ȡ��ɫ����bsdef") 
	local bsdef=GetChaAttr(a,ATTR_BDEF) 
	return bsdef 
end


function Def_final(a)
	local def_final=math.max ( (BSDef(a) * DefIa(a) + DefIb(a) ) * math.max ( 0 , DefSa(a) ) + DefSb(a) , 0 ) --[[ȡ��ʱʵ��def]]--
	--LG("chaattr_set", " BSDef = " , BSDef(a) , "DefIa = " , DefIa(a) , " DefIb = " , DefIb(a) , "DefSa = " , DefSa(a) , "DefSb = ", DefSb(a) , "\n" ) 
	--LG("chaattr_set", "def_final = ", def_final , "\n" ) 
	return def_final 
end 

function BSResist(a) --[[ȡ��������]]--
   --LuaPrint("ȡ��ɫ����bsresist") 
   local bsresist = GetChaAttr(a, ATTR_BPDEF) 
   return bsresist 
end 

function Resist_final(a) 
   local resist_final=(BSResist(a) * ResistIa(a) + ResistIb(a) ) * math.max ( 0 , ResistSa(a) ) + ResistSb(a) --[[ȡʵ��resist]]--
   return resist_final 
end 


function BSHit(a) --[[ȡ����hit]]--
	--LuaPrint("ȡ��ɫ����bshit") 
	local bshit=GetChaAttr(a,ATTR_BHIT) 
	return bshit 
end

function Hit_final(a)
	local hit_final = (BSHit(a) * HitIa(a) + HitIb(a) ) * math.max ( 0 , HitSa(a) ) + HitSb(a) --[[ȡ��ʱʵ��hit]]--
	return hit_final 
end 

function BSFlee(a) --[[ȡ����flee]]--
	--LuaPrint("ȡ��ɫ����bsflee") 
	local bsflee=GetChaAttr(a,ATTR_BFLEE) 
	return bsflee 
end

function Flee_final(a) 
	local flee_final=(BSFlee(a) * FleeIa(a) + FleeIb(a) ) * math.max ( 0 , FleeSa(a) ) + FleeSb(a)  --[[ȡ��ʱʵ��flee]]--
	return flee_final 
end 

function BSMf(a) --[[ȡ����mf]]--
	--LuaPrint("ȡ��ɫ����bsmf") 
	local bsmf=GetChaAttr(a,ATTR_BMF) 
	return bsmf 
end

function Mf_final(a)
	local mf_final=(BSMf(a) * MfIa(a) + MfIb(a) )* math.max ( 0 , MfSa(a) ) + MfSb(a) --[[ȡ��ʱʵ��mf]]--
	return mf_final 
end 

function BSCrt(a) --[[ȡ����crt]]--
	--LuaPrint("ȡ��ɫ����bscrt") 
	local bscrt=GetChaAttr(a,ATTR_BCRT) 
	return bscrt 
end

function Crt_final(a)
	local crt_final=(BSCrt(a) * CrtIa(a) + CrtIb(a) ) * math.max ( 0 , CrtSa(a) )  + CrtSb(a) --[[ȡ��ʱʵ��crt]]--
	return crt_final 
end 

function BSHrec(a) --[[ȡ����hrec]]--
	--LuaPrint("ȡ��ɫ����bshrec") 
	local bshrec=GetChaAttr(a,ATTR_BHREC) 
	return bshrec 
end

function Hrec_final(a)
	local hrec_final=( BSHrec(a) * HrecIa(a) + HrecIb(a) ) * math.max ( 0 , HrecSa(a) ) + HrecSb(a) --[[ȡ��ʱʵ��hrec]]--
	return hrec_final 
end 

function BSSrec(a) --[[ȡ����srec]]--
	--LuaPrint("ȡ��ɫ����bssrec") 
	local bssrec=GetChaAttr(a,ATTR_BSREC) 
	return bssrec 
end

function Srec_final(a)
	local srec_final=(BSSrec(a) * SrecIa(a) + SrecIb(a) ) * math.max ( 0 , SrecSa(a) ) + SrecSb(a) --[[ȡ��ʱʵ��srec]]--
	return srec_final 
end 

function BSAspd(a) --[[ȡ����aspd]]--
	--LuaPrint("ȡ��ɫ����bsaspd") 
	local bsaspd=math.floor ( 100000 / GetChaAttr(a,ATTR_BASPD) ) 
	return bsaspd 
end

function Aspd_final(a)
	local aspd_final=( BSAspd(a)  * AspdIa(a) + AspdIb(a) ) * math.max ( 0 , AspdSa(a) ) + AspdSb(a) --[[ȡ��ʱʵ��aspd]]--
	--LG("aspd", "baspd = " , BSAspd(a),"aspdia= " , AspdIa(a) , " AspdIb = ", AspdIb(a), "AspdSa = " , AspdSa(a) , "AspdSb = " , AspdSb(a) ) 
	return aspd_final 
end 

function BSAdis(a) --[[ȡ����adis]]--
	--LuaPrint("ȡ��ɫ����bsadis") 
	local bsadis=GetChaAttr(a,ATTR_BADIS) 
	return bsadis 
end

function Adis_final(a)
	local adis_final=(BSAdis(a) * AdisIa(a) + AdisIb(a) ) * math.max ( 0 , AdisSa(a) ) + AdisSb(a) --[[ȡ��ʱʵ��adis]]--
	return adis_final 
end 

function BSMspd(a) --[[ȡ����mspd]]--
	--LuaPrint("ȡ��ɫ����bsmspd") 
	local bsmspd=GetChaAttr(a,ATTR_BMSPD) 
	return bsmspd 
end

function Mspd_final(a)
	local mspd_final=math.max ( BSMspd(a) * 0.3 , ( (BSMspd(a) * MspdIa(a) + MspdIb(a) ) * math.max ( 0.3 , MspdSa(a))  + MspdSb(a) )  )  --[[ȡ��ʱʵ��mspd]]--
	return mspd_final 
end 

function BSCol(a) --[[ȡ����col]]--
	--LuaPrint("ȡ��ɫ����bscol") 
	local bscol=GetChaAttr(a,ATTR_BCOL) 
	return bscol 
end

function Col_final(a)
	local col_final=(BSCol(a) * ColIa(a) + ColIb(a) ) * math.max ( 0 , ColSa(a) ) + ColSb(a) --[[ȡ��ʱʵ��col]]--
	return col_final 
end 

function BSStr(a) --[[ȡ����str]]--
	--LuaPrint("ȡ��ɫ����bsstr") 
	local bsstr=GetChaAttr(a,ATTR_BSTR) 
	return bsstr 
end

function Str_final(a)
	local str_final=(BSStr(a) * StrIa(a) + StrIb(a) ) * math.max ( 0 , StrSa(a) ) + StrSb(a) --[[ȡ��ʱʵ��str]]--
	return str_final 
end 

function BSDex(a) --[[ȡ����dex]]--
	--LuaPrint("ȡ��ɫ����bsdex") 
	local bsdex=GetChaAttr(a,ATTR_BDEX) 
	return bsdex 
end

function Dex_final(a)
	local dex_final=(BSDex(a) * DexIa(a) + DexIb(a) ) * math.max ( 0 , DexSa(a) ) + DexSb(a) --[[ȡ��ʱʵ��dex]]--
	return dex_final 
end 

function BSAgi(a) --[[ȡ����agi]]--
	--LuaPrint("ȡ��ɫ����bsagi") 
	local bsagi=GetChaAttr(a,ATTR_BAGI) 
	return bsagi 
end

function Agi_final(a)
	local agi_final=(BSAgi(a) * AgiIa(a) + AgiIb(a) ) * math.max ( 0 , AgiSa(a) ) + AgiSb(a) --[[ȡ��ʱʵ��agi]]--
	return agi_final 
end 

function BSCon(a) --[[ȡ����con]]--
	--LuaPrint("ȡ��ɫ����bscon") 
	local bscon=GetChaAttr(a,ATTR_BCON) 
	return bscon 
end

function Con_final(a)
	local con_final=(BSCon(a) * ConIa(a) + ConIb(a)) * math.max ( 0 , ConSa(a) ) + ConSb(a) --[[ȡ��ʱʵ��con]]--
	return con_final 
end 

function BSSta(a) --[[ȡ����sta]]--
	--LuaPrint("ȡ��ɫ����bssta") 
	local bssta=GetChaAttr(a,ATTR_BSTA) 
	return bssta 
end

function Sta_final(a)
	local sta_final=(BSSta(a) * StaIa(a) + StaIb(a) ) * math.max ( 0 , StaSa(a) ) + StaSb(a) --[[ȡ��ʱʵ��sta]]--
	return sta_final 
end 

function BSLuk(a) --[[ȡ����luk]]--
	--LuaPrint("ȡ��ɫ����bsluk") 
	local bsluk=GetChaAttr(a,ATTR_BLUK) 
	return bsluk 
end

function Luk_final(a)
	local luk_final=(BSLuk(a)  *LukIa(a) + LukIb(a) ) * math.max ( 0 , LukSa(a) ) + LukSb(a) --[[ȡ��ʱʵ��luk]]--
	return luk_final 
end 



--ȡ��ֻ�������Ժ���-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function Ship_BSMnatk ( ship_role )						--��ֻ������С����
	local ship_bsmnatk=GetChaAttr( ship_role , ATTR_BMNATK ) 
	return ship_bsmnatk 
end 

function Ship_BSMxatk ( ship_role )						--��ֻ������󹥻�
	local ship_bsmxatk=GetChaAttr( ship_role , ATTR_BMXATK ) 
	return ship_bsmxatk 
end 
	
function Ship_BSAdis ( ship_role )							--��ֻ������������
	local ship_bsadis=GetChaAttr( ship_role , ATTR_BADIS ) 
	return ship_bsadis  
end 

function Ship_BSCspd ( ship_role )							--�ڵ����������ٶ�
	local ship_bscspd=GetChaAttr( ship_role , ATTR_BOAT_BCSPD ) 
	return ship_bscspd  
end 

function Ship_BSAspd ( ship_role ) 						--�ڵ������������
	local ship_bsaspd=GetChaAttr( ship_role , ATTR_BASPD ) 
	return ship_bsaspd  
end 

function Ship_BSCrange ( ship_role ) 						--�ڵ�������ը��Χ
	local ship_bscrange=GetChaAttr( ship_role , ATTR_BOAT_BCRANGE ) 
	return ship_bscrange  
end 


function Ship_BSDef ( ship_role ) 							--��ֻ��������
	local ship_bsdef=GetChaAttr( ship_role , ATTR_BDEF ) 
	return ship_bsdef   
end 


function Ship_BSResist ( ship_role ) 						--��ֻ�����ֿ�
	local ship_bsresist=GetChaAttr( ship_role , ATTR_BPDEF ) 
	return ship_bsresist   
end 

function Ship_BSMxhp ( ship_role ) 						--��ֻ��������;�
	local ship_bsmxhp=GetChaAttr( ship_role , ATTR_BMXHP ) 
	return ship_bsmxhp    
end 

function Ship_BSHrec ( ship_role ) 						--��ֻ�����;ûظ��ٶ�
	local ship_bshrec=GetChaAttr( ship_role , ATTR_BHREC ) 
	return ship_bshrec 
end 

function Ship_BSSrec ( ship_role ) 							--��ֻ�������������ٶ�
	local ship_bssrec=GetChaAttr( ship_role , ATTR_BSREC ) 
	return ship_bssrec 
end 

function Ship_BSMspd ( ship_role ) 						--��ֻ�����ƶ��ٶ�
	local ship_bsmspd=GetChaAttr( ship_role , ATTR_BMSPD ) 
	return ship_bsmspd 
end 

function Ship_BSMxsp ( ship_role ) 						--��ֻ������󲹸�ֵ
	local ship_bsmxsp=GetChaAttr( ship_role , ATTR_BMXSP ) 
	return ship_bsmxsp 
end 


--ȡ���ﴬֻ���Եļ���Ӱ��--------------------------------------------------------------------------------------------------------------------------------------------------------------------

function Ship_MnatkSa ( cha_role )						--��ֻ������С������ɫ����ϵ��Ӱ��
	local ship_mnatksa=GetChaAttr( cha_role , ATTR_BOAT_SKILLC_MNATK ) / ATTR_RADIX
	return ship_mnatksa 
end 

function Ship_MnatkSb ( cha_role )						--��ֻ������С������ɫ���ܳ���Ӱ��
	local ship_mnatksb=GetChaAttr( cha_role , ATTR_BOAT_SKILLV_MNATK ) 
	return ship_mnatksb 
end 

function Ship_MxatkSa ( cha_role )						--��ֻ������󹥻���ɫ����ϵ��Ӱ��
	local ship_mxatksa=GetChaAttr( cha_role , ATTR_BOAT_SKILLC_MXATK ) / ATTR_RADIX
	return ship_mxatksa 
end 

function Ship_MxatkSb ( cha_role )						--��ֻ������󹥻���ɫ���ܳ���Ӱ��
	local ship_mxatksb=GetChaAttr( cha_role , ATTR_BOAT_SKILLV_MXATK ) 
	return ship_mxatksb 
end 
	
function Ship_AdisSa ( cha_role )							--��ֻ�������������ɫ����ϵ��Ӱ��
	local ship_adissa=GetChaAttr( cha_role , ATTR_BOAT_SKILLC_ADIS ) / ATTR_RADIX
	return ship_adissa  
end 

function Ship_AdisSb ( cha_role )							--��ֻ�������������ɫ���ܳ���Ӱ��
	local ship_adissb=GetChaAttr( cha_role , ATTR_BOAT_SKILLV_ADIS ) 
	return ship_adissb  
end 



function Ship_CspdSa ( cha_role )							--�ڵ����������ٶȽ�ɫ����ϵ��Ӱ��
	local ship_cspdsa=GetChaAttr( cha_role , ATTR_BOAT_SKILLC_CSPD ) / ATTR_RADIX
	return ship_cspdsa  
end 

function Ship_CspdSb ( cha_role )							--�ڵ����������ٶȽ�ɫ���ܳ���Ӱ��
	local ship_cspdsb=GetChaAttr( cha_role , ATTR_BOAT_SKILLV_CSPD ) 
	return ship_cspdsb  
end 



function Ship_AspdSa ( cha_role ) 						--�ڵ��������������ɫ����ϵ��Ӱ��
	local ship_aspdsa=GetChaAttr( cha_role , ATTR_BOAT_SKILLC_ASPD ) / ATTR_RADIX
	return ship_aspdsa  
end 


function Ship_AspdSb ( cha_role ) 						--�ڵ��������������ɫ���ܳ���Ӱ��
	local ship_aspdsb=GetChaAttr( cha_role , ATTR_BOAT_SKILLV_ASPD ) 
	return ship_aspdsb  
end 




function Ship_CrangeSa ( cha_role ) 						--�ڵ�������ը��Χ��ɫ����ϵ��Ӱ��
	local ship_crangesa=GetChaAttr( cha_role , ATTR_BOAT_SKILLC_CRANGE ) / ATTR_RADIX
	return ship_crangesa  
end 

function Ship_CrangeSb ( cha_role ) 						--�ڵ�������ը��Χ��ɫ���ܳ���Ӱ��
	local ship_crangesb=GetChaAttr( cha_role , ATTR_BOAT_SKILLV_CRANGE ) 
	return ship_crangesb  
end 




function Ship_DefSa ( cha_role ) 							--��ֻ����������ɫ����ϵ��Ӱ��
	local ship_defsa=GetChaAttr( cha_role , ATTR_BOAT_SKILLC_DEF ) / ATTR_RADIX
	return ship_defsa   
end 

function Ship_DefSb ( cha_role ) 							--��ֻ����������ɫ���ܳ���Ӱ��
	local ship_defsb=GetChaAttr( cha_role , ATTR_BOAT_SKILLV_DEF ) 
	return ship_defsb   
end 



function Ship_ResistSa ( cha_role ) 						--��ֻ�����ֿ���ɫ����ϵ��Ӱ��
	local ship_resistsa=GetChaAttr( cha_role , ATTR_BOAT_SKILLC_RESIST ) / ATTR_RADIX
	return ship_resistsa   
end 

function Ship_ResistSb ( cha_role ) 						--��ֻ�����ֿ���ɫ���ܳ���Ӱ��
	local ship_resistsb=GetChaAttr( cha_role , ATTR_BOAT_SKILLV_RESIST ) 
	return ship_resistsb   
end 



function Ship_MxhpSa ( cha_role ) 						--��ֻ��������;ý�ɫ����ϵ��Ӱ��
	local ship_mxhpsa=GetChaAttr( cha_role , ATTR_BOAT_SKILLC_MXUSE ) / ATTR_RADIX
	return ship_mxhpsa    
end 

function Ship_MxhpSb ( cha_role ) 						--��ֻ��������;ý�ɫ���ܳ���Ӱ��
	local ship_mxhpsb=GetChaAttr( cha_role , ATTR_BOAT_SKILLV_MXUSE ) 
	return ship_mxhpsb    
end 



function Ship_HrecSa ( cha_role ) 							--��ֻ�����;ûظ��ٶȽ�ɫ����ϵ��Ӱ��
	local ship_hrecsa=GetChaAttr( cha_role , ATTR_BOAT_SKILLC_USEREC ) / ATTR_RADIX
	return ship_hrecsa 
end 

function Ship_HrecSb ( cha_role ) 						--��ֻ�����;ûظ��ٶȽ�ɫ���ܳ���Ӱ��
	local ship_hrecsb=GetChaAttr( cha_role , ATTR_BOAT_SKILLV_USEREC ) 
	return ship_hrecsb 
end 



function Ship_SrecSa ( cha_role ) 							--��ֻ�������������ٶȽ�ɫ����ϵ��Ӱ��
	local ship_srecsa=GetChaAttr( cha_role , ATTR_BOAT_SKILLC_EXP ) / ATTR_RADIX
	return ship_srecsa 
end 

function Ship_SrecSb ( cha_role ) 									--��ֻ�������������ٶȽ�ɫ���ܳ���Ӱ��
	local ship_srecsb=GetChaAttr( cha_role , ATTR_BOAT_SKILLV_EXP ) 
	return ship_srecsb 
end 



function Ship_MspdSa ( cha_role ) 								--��ֻ�����ƶ��ٶȽ�ɫ����ϵ��Ӱ��
	local ship_mspdsa=GetChaAttr( cha_role , ATTR_BOAT_SKILLC_MSPD ) / ATTR_RADIX
	return ship_mspdsa 
end 

function Ship_MspdSb ( cha_role ) 								--��ֻ�����ƶ��ٶȽ�ɫ���ܳ���Ӱ��
	local ship_mspdsb=GetChaAttr( cha_role , ATTR_BOAT_SKILLV_MSPD ) 
	return ship_mspdsb 
end 



function Ship_MxspSa ( cha_role ) 									--��ֻ������󲹸�ֵ��ɫ����ϵ��Ӱ��
	local ship_mxspsa=GetChaAttr( cha_role , ATTR_BOAT_SKILLC_MXSPLY ) / ATTR_RADIX
	return ship_mxspsa 
end 

function Ship_MxspSb ( cha_role ) 								--��ֻ������󲹸�ֵ��ɫ���ܳ���Ӱ��
	local ship_mxspsb=GetChaAttr( cha_role , ATTR_BOAT_SKILLV_MXSPLY ) 
	return ship_mxspsb 
end 

--��ֻ�������Լ���--------------------------------------------------------------------------------------------------------------------------------------------------

function Ship_Mnatk_final ( cha_role , ship_role )							--���㴬ֻ��С����
	local ship_mnatk=  math.floor ( ( Ship_BSMnatk ( ship_role ) * Ship_MnatkSa ( cha_role ) + Ship_MnatkSb ( cha_role ) ) * MnatkSa ( ship_role ) + MnatkSb ( ship_role ) )
	return ship_mnatk 
end 

function Ship_Mnatk ( ship_role )										--��ֻ��С����
	local ship_mnatk=GetChaAttr( ship_role , ATTR_MNATK ) 
	return ship_mnatk 
end 

function Ship_Mxatk_final ( cha_role , ship_role )							--���㴬ֻ��󹥻�
	local ship_mxatk= math.floor ( ( Ship_BSMxatk ( ship_role ) * Ship_MxatkSa ( cha_role ) + Ship_MxatkSb ( cha_role ) ) * MxatkSa ( ship_role ) + MxatkSb ( ship_role ) )
	return ship_mxatk 
end 

function Ship_Mxatk ( ship_role )										--��ֻ��󹥻�
	local ship_mxatk=GetChaAttr( ship_role , ATTR_MXATK ) 
	return ship_mxatk 
end 


	
function Ship_Adis_final ( cha_role , ship_role )							--���㴬ֻ��������
	local ship_adis= math.floor ( ( Ship_BSAdis ( ship_role ) * Ship_AdisSa ( cha_role ) + Ship_AdisSb ( cha_role ) )  ) 
	return ship_adis 
end 

function Ship_Adis ( ship_role )										--��ֻ��������
	local ship_adis=GetChaAttr( ship_role , ATTR_ADIS ) 
	return ship_adis 
end 




function Ship_Cspd_final ( cha_role , ship_role )							--���㴬ֻ�ڵ������ٶ�
	local ship_cspd= math.floor ( ( Ship_BSCspd ( ship_role ) * Ship_CspdSa ( cha_role ) + Ship_CspdSb ( cha_role ) )  )
	return ship_cspd 
end 

function Ship_Cspd ( ship_role )										--��ֻ�ڵ������ٶ�
	local ship_cspd=GetChaAttr( ship_role , ATTR_BOAT_CSPD ) 
	return ship_cspd 
end 



function Ship_Aspd_final ( cha_role , ship_role ) 							--�����ڵ��������
	local ship_aspd= math.floor ((  Ship_BSAspd ( ship_role ) * Ship_AspdSa ( cha_role ) + Ship_AspdSb ( cha_role ) ) * AspdSa ( ship_role ) + AspdSb ( ship_role ) )
	return ship_aspd  
end 

function Ship_Aspd ( ship_role ) 										--�ڵ��������
	local ship_aspd=GetChaAttr( ship_role , ATTR_ASPD ) 
	return ship_aspd  
end 



function Ship_Crange_final (  cha_role , ship_role ) 							--�����ڵ���ը��Χ
	local ship_crange= math.floor ( ( Ship_BSCrange ( ship_role ) * Ship_CrangeSa ( cha_role ) + Ship_CrangeSb ( cha_role ) )  ) 
	return ship_crange  
end 

function Ship_Crange ( ship_role ) 										--�ڵ���ը��Χ
	local ship_crange=GetChaAttr( ship_role , ATTR_CRANGE ) 
	return ship_crange  
end 




function Ship_Def_final ( cha_role , ship_role ) 							--���㴬ֻ����
	local ship_def= math.floor ( ( Ship_BSDef ( ship_role ) * Ship_DefSa ( cha_role ) + Ship_DefSb ( cha_role ) ) * DefSa ( ship_role ) + DefSb ( ship_role ) ) 
	return ship_def  
end 

function Ship_Def ( ship_role ) 										--��ֻ����
	local ship_def=GetChaAttr( ship_role , ATTR_DEF ) 
	return ship_def  
end 



function Ship_Resist_final (  cha_role ,ship_role ) 							--���㴬ֻ�ֿ�
	local ship_resist= math.floor ( ( Ship_BSResist ( ship_role ) * Ship_ResistSa ( cha_role ) + Ship_ResistSb ( cha_role ) ) * ResistSa ( ship_role ) + ResistSb ( ship_role ) ) 
	return ship_resist  
end 

function Ship_Resistl ( ship_role ) 										--��ֻ�ֿ�
	local ship_resist=GetChaAttr( ship_role , ATTR_PDEF ) 
	return ship_resist  
end 



function Ship_Mxhp_final (  cha_role ,ship_role ) 							--���㴬ֻ����;�
	local ship_mxhp= math.floor ( ( Ship_BSMxhp ( ship_role ) * Ship_MxhpSa ( cha_role ) + Ship_MxhpSb ( cha_role ) ) * MxhpSa ( ship_role ) + MxhpSb ( ship_role ) ) 
	return ship_mxhp  
end 

function Ship_Mxhp ( ship_role ) 										--��ֻ����;�
	local ship_mxhp=GetChaAttr( ship_role , ATTR_MXHP ) 
	return ship_mxhp  
end 

function Ship_Hp ( ship_role )										--��ֻ��ǰ�;�
	local ship_hp=GetChaAttr( ship_role , ATTR_HP ) 
	return ship_hp  
end 

function Ship_Hrec_final (  cha_role ,ship_role ) 							--���㴬ֻ�;ûظ��ٶ�
	local ship_hrec= math.floor ( ( Ship_BSHrec ( ship_role ) * Ship_HrecSa ( cha_role ) + Ship_HrecSb ( cha_role ) ) * HrecSa ( ship_role ) + HrecSb ( ship_role )  ) 
	return ship_hrec  
end 

function Ship_Hrec (  ship_role ) 										--��ֻ�;ûظ��ٶ�
	local ship_hrec=GetChaAttr( ship_role , ATTR_HREC ) 
	return ship_hrec  
end 


function Ship_Srec_final (  cha_role ,ship_role ) 							--���㴬ֻ���������ٶ�
	local ship_srec= math.floor ( ( Ship_BSSrec ( ship_role ) * Ship_SrecSa ( cha_role ) + Ship_SrecSb ( cha_role ) ) * SrecSa ( ship_role ) + SrecSb ( ship_role ) ) 
	return ship_srec  
end 

function Ship_Srec ( ship_role ) 										--��ֻ���������ٶ�
	local ship_srec=GetChaAttr( ship_role , ATTR_SREC ) 
	return ship_srec  
end 




function Ship_Mspd_final (  cha_role ,ship_role ) 							--���㴬ֻ�ƶ��ٶ�
	local ship_mspd= math.floor ( ( Ship_BSMspd ( ship_role ) * Ship_MspdSa ( cha_role ) + Ship_MspdSb ( cha_role ) ) * MspdSa ( ship_role ) + MspdSb ( ship_role ) ) 
	return ship_mspd  
end 

function Ship_Mspd ( ship_role ) 										--��ֻ�ƶ��ٶ�
	local ship_mspd=GetChaAttr( ship_role , ATTR_MSPD ) 
	return ship_mspd  
end 



function Ship_Mxsp_final (  cha_role ,ship_role ) 									--��ֻ��󲹸�ֵ
	local ship_mxsp= math.floor ( ( Ship_BSMxsp ( ship_role ) * Ship_MxspSa ( cha_role ) + Ship_MxspSb ( cha_role ) ) * MxspSa ( ship_role ) + MxspSb ( ship_role ) ) 
	return ship_mxsp  
end 

function Ship_Mxsp ( ship_role ) 										--��ֻ��󲹸�ֵ
	local ship_mxsp=GetChaAttr( ship_role , ATTR_MXSP ) 
	return ship_mxsp  
end 

function Ship_Sp ( ship_role )										--��ֻ��ǰ����ֵ
	local ship_sp=GetChaAttr( ship_role , ATTR_SP ) 
	return ship_sp  
end 







function Percentage_Random(a) 
	local x,y=a*1000000000,math.random(0,1000000000) 
	local z 
	if y<=x then 
		z=1 
		else z=0 
	end 
	return z 
end 



function Dis(a,b,c,d) --[[��(a,b)��(c,d)����]]--
	local x1,y1,x2,y2=a,b,c,d 
	local dis=math.pow( math.pow(x1-x2, 2) + math.pow(y1-y2, 2), 0.5) 
	return dis 
end 

function Check_Direction(a) --�ж���ɫ������,x���������Ϊ1�������ߣ���ʱ������Ϊ2��3��4��5��6��7��8
	--LuaPrint("Enter function Check_Direction(a) --�ж���ɫ������,x���������Ϊ1�������ߣ���ʱ������Ϊ2��3��4��5��6��7��8") 
	local direction=GetChaAttr(a, ATTR_DIREC) 
	local division 
	if ((direction>=337.5) and (direction<360)) or ((direction>=0) and (direction<22.5)) then 
		division=1 
	elseif (direction>=22.5) and (direction<67.5) then 
		division=2 
	elseif (direction>=67.5) and (direction<112.5) then 
		division=1 
	elseif (direction>=112.5) and (direction<157.5) then 
		division=8 
	elseif (direction>=157.5) and (direction<202.5) then 
		division=7 
	elseif (direction>=202.5) and (direction<247.5) then 
		division=6 
	elseif (direction>=247.5) and (direction<292.5) then 
		division=5 
	elseif (direction>=292.5) and (direction<337.5) then 
		division=4 
	else --LuaPrint("�����ɫ������Ƕ�".."\n" ) 
      return 
   end 

	--LuaPrint("Out function Check_Direction(a) --[[�ж���ɫ������,x���������Ϊ1�������ߣ���ʱ������Ϊ2��3��4��5��6��7��8�]]--") 
	return division 
end 


function Hp_Dmg(role,dmg) --[[����hp���Ĵ���ʽ]]--

	local map_name_DEFER = GetChaMapName ( role )
	local Can_Pk_Garner2 = Is_NormalMonster (role)
	local T=0.25	
	if map_name_ATKER == "garner2" or map_name_DEFER == "garner2" then
		if Can_Pk_Garner2 == 0 then
			dmg = dmg * T
		end
	end	
	
	--LuaPrint("Enter function Hp_Dmg(role,dmg) --[[hp���Ĵ���ʽ]]--") 
	--Notice("dmg3="..dmg)
	local statelv_mfd = GetChaStateLv ( role , STATE_MFD ) 
	local hp = Hp(role) 
	local sp = Sp(role) 
	if dmg <= 0 then 
		hp = hp - dmg 
		SetCharaAttr(hp, role, ATTR_HP )  
		return 
	end 
	
	local Elf_Item = CheckHaveElf ( role )
	if Elf_Item ~= 0 then
		local Elf_Num = GetItemForgeParam ( Elf_Item , 1 )
		local CheckElfSkill = CheckElfHaveSkill ( Elf_Num , 0 , 1 )
		local PowerSheild = 0
		if CheckElfSkill == 2 then
			PowerSheild = ElfSKill_PowerSheild ( role , Elf_Item , Elf_Num , dmg )
			if PowerSheild ~= 0 then
				SystemNotice ( role , "���鷢�����ܣ����նԷ��˺�" )
			end
			dmg = dmg - PowerSheild
		end
	end

	if statelv_mfd >= 1 then 
		sp_change = statelv_mfd * 0.25 + 0.5
	--local map_name_ATKER = GetChaMapName ( a )
	local map_name_DEFER = GetChaMapName ( role )
	local Can_Pk_Garner2 = Is_NormalMonster (role)
		
		if map_name_ATKER == "garner2" or map_name_DEFER == "garner2" then
	--	Notice("22")
			if Can_Pk_Garner2 == 0 then
				sp_change = statelv_mfd * 0.25 + 0.5
			end
		end
		local Check_Heilong  = CheckItem_Heilong ( role )
		if Check_Heilong == 1 then
			local Percentage = Percentage_Random ( 0.5 )
			if Percentage == 1 then
				  sp_change =  sp_change*1.5
				SystemNotice ( role , "�õ�������װ���������ܼ�ǿ")
			end
		end
		local CheckItem_fighting = CheckItem_fighting ( role )
		local IsGarnerWiner = IsGarnerWiner(role)
		if CheckItem_fighting == 1 then
			if IsGarnerWiner == 1  then 
				local Percentage_1 = Percentage_Random ( 0.5 )
				if Percentage_1 == 1 then
					dmg = dmg*0.5
					SystemNotice ( role , "���Ҷ�֮װ����,�˺�ֵ����" )
				end
			elseif IsGarnerWiner == 2  then
				local Percentage_2 = Percentage_Random ( 0.5 )
				if Percentage_2 == 1 then
					dmg = dmg*0.6
					SystemNotice ( role , "�õ��Ҷ�֮װ����,�˺�ֵ����" )
			
				end
			elseif IsGarnerWiner == 3  then
				local Percentage_3 = Percentage_Random ( 0.5 )
				if Percentage_3 == 1 then
					dmg = dmg*0.7
					SystemNotice ( role , "�õ��Ҷ�֮װ����,�˺�ֵ����" )
			
				end
			elseif IsGarnerWiner == 4  then
				local Percentage_4 = Percentage_Random ( 0.5 )
				if Percentage_4 == 1 then
					dmg = dmg*0.8
					SystemNotice ( role , "�õ��Ҷ�֮װ����,�˺�ֵ����" )
			
				end
			elseif IsGarnerWiner == 5 then
				local Percentage_5 = Percentage_Random ( 0.3 )
				if Percentage_5 == 1 then
					dmg = dmg*0.8
					SystemNotice ( role , "�õ��Ҷ�֮װ����,�˺�ֵ����" )
		
				end
			end	
		end
		if dmg / sp_change <= sp then 
			sp = math.floor ( sp - dmg/sp_change ) 
		else 
			hp =math.floor ( hp - ( dmg/sp_change - sp ) ) 
			sp = 0 
			RemoveState ( role , STATE_MFD ) 
		end 
	else
		local Check_Nianshou = CheckItem_Nianshou ( role )
		local CheckItem_fighting = CheckItem_fighting ( role )
		local IsGarnerWiner = IsGarnerWiner(role)
		if Check_Nianshou == 1 then
			local Percentage = Percentage_Random ( 0.1 )
			if Percentage == 1 then
				dmg = dmg * -1
				SystemNotice ( role , "�õ����޵ı��ӣ����նԷ��˺�ΪHP")
			end
		end
		if CheckItem_fighting == 1 then
			if IsGarnerWiner == 1  then 
				local Percentage_1 = Percentage_Random ( 0.5 )
				if Percentage_1 == 1 then
					dmg = dmg*0.5
					SystemNotice ( role , "���Ҷ�֮װ����,�˺�ֵ����" )
				end
			elseif IsGarnerWiner == 2  then
				local Percentage_2 = Percentage_Random ( 0.5 )
				if Percentage_2 == 1 then
					dmg = dmg*0.6
					SystemNotice ( role , "�õ��Ҷ�֮װ����,�˺�ֵ����" )
			
				end
			elseif IsGarnerWiner == 3  then
				local Percentage_3 = Percentage_Random ( 0.5 )
				if Percentage_3 == 1 then
					dmg = dmg*0.7
					SystemNotice ( role , "�õ��Ҷ�֮װ����,�˺�ֵ����" )
			
				end
			elseif IsGarnerWiner == 4  then
				local Percentage_4 = Percentage_Random ( 0.5 )
				if Percentage_4 == 1 then
					dmg = dmg*0.8
					SystemNotice ( role , "�õ��Ҷ�֮װ����,�˺�ֵ����" )
			
				end
			elseif IsGarnerWiner == 5 then
				local Percentage_5 = Percentage_Random ( 0.3 )
				if Percentage_5 == 1 then
					dmg = dmg*0.8
					SystemNotice ( role , "�õ��Ҷ�֮װ����,�˺�ֵ����" )
		
				end
			end	
		end
	
	--local map_name_ATKER = GetChaMapName ( role )
		local ZSExp = GetChaAttr( role , ATTR_CSAILEXP )
		if ZSExp > 0 and ZSExp < 100 then
			dmg = dmg * 0.945
		end
		if ZSExp >= 100 and ZSExp < 12100 then
			dmg = dmg * ( 0.95 - math.floor( math.pow( (ZSExp / 100) , 0.5 )) * 0.005)
		end
		hp = Hp(role) - dmg 
	end 
	SetCharaAttr(sp, role, ATTR_SP ) 
	SetCharaAttr(hp, role, ATTR_HP )  
	--LuaPrint("Out function Hp_Dmg(role,dmg) --[[hp���Ĵ���ʽ]]--") 
end 


function Endure_Dmg ( role , dmg ) 
	local hp = Hp ( role ) - dmg 
	SetCharaAttr(hp, role, ATTR_HP ) 
end 
	

function Sp_Red(role,sp_reduce) --[[sp���Ĵ���ʽ]]--
	--LuaPrint("Enter function Sp_Red(role,spreduce) --[[sp���Ĵ���ʽ]]--") 
	local sp = Sp(role) - sp_reduce 
	--LG("sp_red", "before_sp = " , Sp(role) , " sp_reduce = " , sp_reduce , "final_sp = " , sp ,"\n" ) 
	SetCharaAttr(sp, role, ATTR_SP ) 
	--LuaPrint("Out function Sp_Red(role,spreduce) --[[sp���Ĵ���ʽ]]--") 
end 

function Coefficientadjust_Steady_atk()	--[[�����ȶ�����ϵ��]]--
	--LuaPrint("Enter function Coefficientadjust_Steady_atk()	--[[�����ȶ�����ϵ��]]--") 
	local steady_atk_maxreduce = 0.9 
	local steady_atk_maxreducepoint = 0.99 
	local steady_atk_maxluk=1500 
	local a = steady_atk_maxreduce / steady_atk_maxluk 
	local b = steady_atk_maxreducepoint / steady_atk_maxluk 
	--LuaPrint("Out function Coefficientadjust_Steady_atk()	--[[�����ȶ�����ϵ��]]--") 
	return a,b,steady_atk_maxreduce,steady_atk_maxreducepoint 
end 

function SetSteady_atk(a) --[[�趨�������ȶ���]]--
	--LuaPrint("Enter function SetSteady_atk(a) --[[�趨�������ȶ���]]--") 
	local x,y,m,n = Coefficientadjust_Steady_atk() --[[�����ȶ�����ϵ��]]--
	local sum=1 
	local atkstep={} --[[ÿ��������ռ����]]--
	local atk={} --[[ÿ������ռ�������ֵ��Χ]]--
	atk[Mnatk_final(a) - 1 ] = 0 
	for i = Mnatk_final(a),  Mxatk_final(a), 1 do 
		atkstep[i] = 1 
	end 
	local maxreduce = math.min(m, Luk_final(a) * x ) 
	local reducepoint = math.min(n, Luk_final(a) * y ) * (Mxatk_final(a) - Mnatk_final(a) ) 
	if reducepoint==0 then 
		--LuaPrint("�޹�������".."\n") 
		atk[Mnatk_final(a)] = 1 
	return atk,sum 
	end --[[�����޹�����������������С������ȡ�ø���Ϊ1]]--
	local steady_step = maxreduce / reducepoint 
	for i = 0, Mxatk_final(a) - Mnatk_final(a), 1 do 
		atkstep[ i + Mnatk_final(a) ] = atkstep [ i + Mnatk_final(a) ] - math.max(0, (maxreduce-i * steady_step) ) 
		sum = sum + atkstep[ i + Mnatk_final(a) ]  
		atk[ i + Mnatk_final(a) ] = sum 
	end 
	--local gatk = 0 
	--for i = Mnatk_final(a), Mxatk_final(a), 1 do 
	--ccc = (atk[i]-atk[i-1]) / sum 
	--gatk = gatk + i * ccc --[[ƽ��������]]--
	--end 
	--LuaPrint("Out function SetSteady_atk(a) --[[�趨�������ȶ���]]--") 
	return atk,sum 
end 
	
	
function CheckSteady_atk(a) --[[�ȶ������ж�]]--
	--LuaPrint("Enter function CheckSteady_atk(a) --[[�ȶ������ж�]]--") 
	local atk,sum = SetSteady_atk(a) 
	local x = math.random( 0, 10000 ) 
	local y = x * sum/10000 
	for i = Mnatk_final(a), Mxatk_final(a), 1 do 
      if y<=atk[i] then 
         return i 
      end 
   end 
	--LuaPrint ("���������е���������������С������".."\n") 
	--LuaPrint("Out function CheckSteady_atk(a) --[[�ȶ������ж�]]--") 
	return Mnatk_fianl(a) 
end 
	

--	function  Skadd_Check( job , lv , tp , form_sklv)									--ѧϰ�����ж�
--		LG( "Skadd", "enter function  Skadd_Check :" ) 
--		local itemuse = 0 
--		local cha_job = GetChaAttr( ATKER , ATTR_JOB ) 
--		if  cha_job ~= job then 
--			LG( "Skadd", "function Skadd:", "�޷�ʹ�ã�ְҵ����" ) 
--			itemuse = 1 
--		end 
--		local cha_lv = GetChaAttr( ATKER , ATTR_LV ) 
--		if cha_lv < lv then 
--			LG( "Skadd", "function Skadd:", "�޷�ʹ�ã�����ȼ�����" ) 
--			itemuse = 2 
--		end 
--		local cha_tp = GetChaAttr( ATKER , ATTR_TP ) 
--		if cha_tp < tp then 
--			LG( "Skadd", "function Skadd:", "�޷�ʹ�ã����ܵ㲻��" ) 
--			itemuse = 3 
--		end 
--		if form_sklv > 0 then 
--			LG( "Skadd", "function Skadd:", "�޷�ʹ�ã���ϰ�øü���" ) 
--			itemuse = 4 
--		end 
--		LG( "Skadd", "out function  Skadd_Check :" ) 
--		return itemuse 
--	end 
	
function Lefthand_Atk ( role , atk )												--˫������״̬                        
	local sklv = GetSkillLv ( role , STATE_FSZ ) 
	add_atk = math.floor ( atk * ( 1.2 + sklv * 0.08 ) ) 
	return add_atk 
end 

function Check_Zmyj ( role , dmg_mul )												--�������һ��״̬
	local statelv = GetChaStateLv ( role , STATE_ZMYJ ) 
	local crt_rad = 0.2 + statelv * 0.02 
	if dmg_mul == 2 or dmg_mul == 1 then 
		a = Percentage_Random ( crt_rad ) 
		if a== 1 then 
			dmg_mul = 2 + statelv/2 
		end 
	end 
	return dmg_mul 
end 
	
function Check_Smyb ( role )													--�������һ��״̬
	local statelv = GetChaStateLv (role , STATE_SMYB ) 
	local hp = Hp ( role ) 
	local mxhp = Mxhp ( role ) 
	local atk_sa = 1 
	if hp <= mxhp * 0.2 and hp > 0 then 
		atk_sa = 1 + statelv * 0.1 
	end 
	local mnatk = Mnatk ( role ) * atk_sa 
	local mxatk = Mxatk ( role ) * atk_sa 
	return mnatk , mxatk 
end 


--����ɫ����״̬���Ƴ������ߵ�����״̬��������������������������������������������������������������������

function Check_Ys_Rem ( role_atk , role_def )	
	Check_State ( role_atk , role_def ) 
	if atk_statecheck[STATE_YS] >= 1 then 
		RemoveState ( role_atk , STATE_YS ) 
	end 
end 

function Check_Bshd (statelv) 
	local statetime = 3 + statelv * 1 
	return statetime 
end 

function Atk_Raise ( rad , atker , defer )			--���ܹ�������
	local atk = rad * math.random ( Mnatk( atker ) , Mxatk ( atker ) ) 
	local defer_def = Def ( defer ) 
	local defer_resist = Resist ( defer ) 
	dmg = Phy_Dmg ( atk, defer_def , defer_resist ) 
	return dmg 
end 

function TurnToCha ( role ) 
	local x_role = role 
	if ChaIsBoat ( role ) == 1 then 
		x_role = GetMainCha ( role ) 
	end 
	return x_role 
end 

function TurnToShip ( role ) 
	local x_role = role 
	if ChaIsBoat ( role ) == 0 then 
		x_role = GetCtrlBoat ( role ) 
		if x_role == nil then 
			LG ( "getshipid_err" , " get a nil shipid " ) 
		end 
	end 
	return x_role 
end 

function ALLExAttrSet ( role )				--���ݽ�ɫ��̬�ֱ�ˢ�µ�ǰ����
	if IsPlayer ( role ) == 0 then				--��ɫΪ����
		ExAttrSet ( role ) 
		return 
	end 
	if ChaIsBoat ( role ) == 0 then			--��ɫ��̬Ϊ����
		AttrRecheck ( role ) 
	else								--��ɫ��̬Ϊ��ֻ
		cha_role = GetMainCha ( role ) 
		ShipAttrRecheck ( cha_role , role ) 
	end 
end 

function Hp_Endure_Dmg ( role , dmg ) 
	if ChaIsBoat ( role ) == 0 then 
		Hp_Dmg ( role , dmg ) 
		local state_ys_lv =  GetChaStateLv (role , STATE_YS ) 
		if state_ys_lv >= 1 then 
			RemoveState ( role , STATE_YS ) 
		end 
	else 
		Endure_Dmg ( role , dmg ) 
	end 
end 

----���㴬ֻ�ɳ�����------------------------------------------------------------------------------
function Boat_plus_MNATk( Lv , mnatk)
	local mnatk_new = 0
	
	if Lv < 1 then
		LG("Boat_plus_MNatk","��ֻ����С��1")
		LG("Boat_plus_MNatk","1")
		return mnatk
	end
	
	if Lv > 100 then
		LG("Boat_plus_MNatk","��ֻ�������100")
		LG("Boat_plus_MNatk","��ֻ����С��2")

		return mnatk
	end
	
	if Lv < 60 then
		LG ( "Boat_plus_MNatk" , mnatk ) 
		mnatk_new = ( 1 + ( Lv - 20 ) / 120 ) * mnatk
		LG("Boat_plus_MNatk","��ֻ����С��3")

		return mnatk_new
	end
	
	if Lv >=60 then
		mnatk_new = ( 1 + ( 60 - 20 ) / 120 ) * mnatk + ( Lv - 60 ) * 5
		LG("Boat_plus_MNatk","��ֻ����С��4")

		return mnatk_new
	end
	

end

function Boat_plus_MXATk( Lv , mxatk)
	local mxatk_new = 0
	
	if Lv < 1 then
		LG("Boat_plus_MXatk","��ֻ����С��1")
		return mxatk_new
	end
	
	if Lv > 100 then
		LG("Boat_plus_MXatk","��ֻ�������100")
		return mxatk_new
	end
	
	if Lv < 60 then
		mxatk_new = ( 1 + ( Lv - 20 ) / 120 ) * mxatk
		return mxatk_new
	end
	
	if Lv >=60 then
		mxatk_new = ( 1 + ( 60 - 20 ) / 120 ) * mxatk + ( Lv - 60 ) * 5
		return mxatk_new
	end
	

end

function Boat_plus_def ( Lv , def )
	local def_new = 0
	
	if  Lv < 1 then
		LG("Boat_plus_def","��ֻ����С��1")
		return def
	end
	
	if Lv > 100 then
		LG("Boat_plus_def","��ֻ�������100")
		return def
	end
	
	if Lv < 60 then
		def_new = ( 1 + ( Lv - 20 ) / 120 ) * def
		LG ( "Boat_plus_def","def_new1 = " ,  def_new ) 
		return def_new

	end
	
	if Lv >= 60 then
		def_new = ( 1 + ( 60 - 20 ) / 120 ) * def + ( Lv - 60 ) * 3
		LG ( "Boat_plus_def","def_new2 = " ,  def_new ) 
		return def_new
	end
	

end

function Boat_plus_Mxhp ( Lv , Mxhp )
	local Mxhp_new = 0
	
	if Lv < 1 then
		LG("Boat_plus_Mxhp","��ֻ����С��1")
		return Mxhp
	end
	
	if Lv > 100 then
		LG("Boat_plus_Mxhp","��ֻ�������100")
		return Mxhp
	end
	
	if Lv < 60 then
		Mxhp_new = ( 1 + ( Lv - 20 ) / 120 ) * Mxhp
		LG ( "Boat_plus_def","def_new2 = " ,  Mxhp_new ) 
		return Mxhp_new
	end
	
	if Lv >= 60 then
		Mxhp_new = ( 1 + ( 60 - 20 ) / 120 ) * Mxhp + (Lv - 60 )  * 20
		LG ( "Boat_plus_def","def_new2 = " ,  Mxhp_new ) 
		return Mxhp_new
	end
end

function Boat_plus_Mspd ( Lv , Mspd )
	local Mspd_new = 0

	if Lv < 1 then
		LG("Boat_plus_Mspd","��ֻ����С��1")
		return Mspd
	end
	
	if Lv >100 then
		LG("Boat_plus_Mspd","��ֻ�������100")
		return Mspd
	end
	
	if Lv < 60 then
		Mspd_new = ( 1 + ( Lv -30) / 300 ) * Mspd
		return Mspd_new
	end

	if Lv >=60 then
		Mspd_new = ( 1 + ( 60 -30) / 300 ) * Mspd
		return Mspd_new
	end

end

--ȡ��ɫ������
function get_cha_guild_id(cha) 
    local ply_cha = CheckChaRole(cha) 
    if ply_cha == 1 then --��ҽ�ɫ
        return GetChaGuildID(cha) 
    else 
        local map_copy = GetChaMapCopy(cha)
        local side_id = GetChaSideID(cha) 
		if side_id == 1 then
			return GetMapCopyParam2(map_copy, 4 ) 
		elseif side_id == 2 then
			return GetMapCopyParam2(map_copy, 3 ) 
		end
    end 

end

--�жϽ�ɫcha1��cha2�Ƿ����ڶ��ѡ�
--�Ƕ����򷵻�1�����򷵻�0
function is_teammate(cha1, cha2) 
    if cha1 == 0 or cha2 == 0 then 
        return 0 
    end 
    if cha1 == cha2 then 
        return 1 
    end
    local ply1 = GetChaPlayer(cha1) 
    local ply2 = GetChaPlayer(cha2) 
    if ply1 ~= 0 and ply2 ~= 0 then 
        if ply1 == ply2 then 
            return 1 
        end 
        local team_id1, team_id2 
        team_id1 = GetChaTeamID(cha1) 
        team_id2 = GetChaTeamID(cha2) 
        if team_id1 ~= 0 and team_id2 ~= 0 and team_id1 == team_id2 then 
            return 1 
        end 
    end 

    return 0 
end 

--�жϽ�ɫcha2�Ƿ���cha1���ѷ���
--���ѷ��򷵻�1�����򷵻�0
function is_friend(cha1, cha2) 
--	SystemNotice ( cha1, "����is_friend" ) 
    local friend_target = 1 
    local Map_type = GetChaMapType( cha1 )
    if CheckChaRole( cha1 ) == 0 and Map_type ~= 2 then			--���cha1Ϊ�����Ҳ��ڹ����ͼ�У���cha2Ϊ����Ϊ�ѷ���cha2Ϊ��Ϊ�з�
	if CheckChaRole( cha2 ) == 0 then							
		return 1 
	else 
		return 0 
	end 

    end
	   
--		SystemNotice ( cha1 , "1" ) 
--		SystemNotice ( cha1 , "Map_type ="..Map_type ) 
--	    if Map_type == 4 then									--�Թ�PK��ͼ�ѷ��ж�
--		local team = is_teammate(cha1, cha2) 
--		if team == 1 then 
--			return 1 
--		end 
--	    else
--		return 0
--	    end
		if Map_type == 1 then 
			if CheckChaRole ( cha1 ) == 1 then 
					if CheckChaRole( cha2 ) == 0 then							
						return 0 
					else 
						return 1 
					end 

			end 
		end 

		if Map_type == 4 then									--�Թ�PK��ͼ�ѷ��ж�
			if Is_NormalMonster (cha1) == 1 then						--�������ͨ��������������ѷ�
				if Is_NormalMonster (cha2) == 1 then 
					return 1 
				end 
			end 
			local team = is_teammate(cha1,cha2) 
			if team == 1 then 
				return 1 
			else 
				local guild_id1, guild_id2 
				guild_id1 = get_cha_guild_id(cha1) 
				guild_id2 = get_cha_guild_id(cha2) 
				if guild_id1 ~= 0 and guild_id2 ~= 0 and guild_id1 == guild_id2 then 
					return 1  
				else
					return 0 
				end
			end
			--local team = is_teammate(cha1,cha2) 
			--		if team == 1 then 
			--			return 1 
			--		else 
			--			return 0 
			--		end 
		end 

--	        SystemNotice ( cha1 , "2" ) 

	    if  Map_type ==3 then									--�Ƕ���ս��ͼ�����Ϊ�ѷ�
--		SystemNotice ( cha1 , "1" ) 
		    local team = is_teammate(cha1, cha2) 
--		    		SystemNotice ( cha1 , "2" ) 

		    if team == 1 then 
--		    		SystemNotice ( cha1 , "3" ) 
		        return 1 
		    else 
			return 0 
		    end
		   
	    end

	    if cha1 == 0 or cha2 == 0 then							--ָ��Ϊ��
	        return 0 
	    end 
--		SystemNotice ( cha1 , "3" ) 
	    if Map_type == 2 then									--����PK��ͼ�ж�
		if Is_NormalMonster (cha1) == 1 then						--�������ͨ��������������ѷ�
			if Is_NormalMonster (cha2) == 1then 
				return 1 
			end 
		end 
		local guild_id1, guild_id2 
		guild_id1 = get_cha_guild_id(cha1) 
		guild_id2 = get_cha_guild_id(cha2) 
		if guild_id1 ~= 0 and guild_id2 ~= 0 and guild_id1 == guild_id2 then 
			return 1 
		else 
			return 0 
		end

	    end 
	    if Map_type == 5 then									--����PK��ͼ�ж�
--		if Is_NormalMonster (cha1) == 1 then						--�������ͨ��������������ѷ�
--			if Is_NormalMonster (cha2) == 1then 
--				return 1 
--			end 
--		end 
		local guild_side_1, guild_side_2 
		guild_side_1 = GetChaSideID(cha1) 
		guild_side_2 = GetChaSideID(cha2) 
		--if guild_side_1 <= 100 and guild_side_1 > 0 and guild_side_2 <= 100 and guild_side_2 > 0 then
		if guild_side_1 == guild_side_2 then
			return 1 
		--elseif
		   --guild_side_1 > 100 and guild_side_1 <= 200 and guild_side_2 > 100 and guild_side_2 <= 200 then
			--return 1
	        else
		        return 0
		end

	    end 
--		SystemNotice ( cha1 , "4" ) 

	    return friend_target 
 end 
--	    local is_plycha1 = CheckChaRole(cha1) 
--	    local is_plycha2 = CheckChaRole(cha2) 
--	    local can_PK1 = CheckChaPKState(cha1) 
--	    if can_PK1 == 0 then 
--	        if is_plycha1 ~= 0 and is_plycha2 ~= 0 then 
--	            return 1 
--	        end 
--	        if is_plycha1 == 0 and is_plycha2 == 0 then 
--	            return 1 
--	        end 
--	    end 
  --  end
--    return 0
-- end 

--��ͨ���ж�
function Is_NormalMonster ( role )
  local cha = TurnToCha ( role )
  local Cha_Num = GetChaTypeID( cha )
  
  for i = 0 , UnNormalMonster_Num , 1 do
	if Cha_Num == UnNormalMonster_ID [i] then
		return 0
	end
  end
  

  return 1
  
end

--�������Ƿ��������Ѳ�����
function CheckMonsterDead ( role )
	if role == nil then
		return 1
	end
	if Hp(role) <= 0 then
		return 1
	end
	return 0
end

--��⼼�����г̶�
function ReCheck_Skill_Dmg ( MaxDmg , MinDmg , Ran )

	local a = 0
	a = Percentage_Random ( Ran / 100)
	if a == 1 then
	
		return MaxDmg
	else
	
		return MinDmg
	end
end

--���PK˫���ȼ����
function ReCheck_PK_Lv ( ATKER , DEFER )
	local Lv_atker = Lv ( ATKER )
	local Lv_defer = Lv ( DEFER )
	return Lv_atker - Lv_defer
end



--PK�����������
function after_player_kill_player( ATKER, DEFER )
	SetCharaAttr(0, DEFER, ATTR_SP)
	local map_name_ATKER = GetChaMapName ( ATKER )
	local map_name_DEFER = GetChaMapName ( DEFER )
	local MGPK_MapNameNum = 10
	local MGPK_MapName = {}
	
	MGPK_MapName[0] = "puzzleworld"
	MGPK_MapName[1] = "puzzleworld2"
	MGPK_MapName[2] = "abandonedcity"
	MGPK_MapName[3] = "abandonedcity2"
	MGPK_MapName[4] = "abandonedcity3"
	MGPK_MapName[5] = "darkswamp"
	MGPK_MapName[6] = "hell"
	MGPK_MapName[7] = "hell2"
	MGPK_MapName[8] = "hell3"
	MGPK_MapName[9] = "hell4"
	MGPK_MapName[10] = "hell5"

	
	local ATKER_Get_Ry = 0
	local DEFER_Get_Ry = 0
	
	local ATKER_Get1_LD = 0
	local DEFER_Get1_Ry = 0
	
	if map_name_ATKER == "garner2" or map_name_DEFER == "garner2" then
		
		local Lv_ATKER = Lv( ATKER )
		local Lv_DEFER = Lv( DEFER )
		local Lv_dif = Lv_ATKER - Lv_DEFER
		if Lv_dif < 15 and Lv_dif > -15 then
			ATKER_Get1_LD = 1
			DEFER_Get1_Ry = -1
			SystemNotice ( ATKER ,"�������ֻ��1���Ҷ�����" )
			SystemNotice ( DEFER ,"�����ֻ���ʧȥ1������ֵ")
		end
		
		if Lv_dif >= 15 then
			ATKER_Get1_LD = 0
			DEFER_Get1_Ry = 0
			SystemNotice ( ATKER , "�������ּ�����ͣ�����õ��Ҷ�����" )
			SystemNotice ( DEFER , "���߼�����ֻ���������ʧȥ��������" )
		end
		
		if Lv_dif <= -14 then
			ATKER_Get1_LD = 2
			DEFER_Get1_Ry = -2
			SystemNotice ( ATKER ,"�����߼�����֣���ö����Ҷ��������õ�2���Ҷ�����" )
			SystemNotice ( DEFER ,"���ͼ�����ֻ��������ͷ����������㣬ʧȥ2������ֵ")
		end

		
--		local RongyuTpye = ITEMATTR_VAL_STR
--		local Kill_Num = 1
--		local Kill_attr = ITEMATTR_VAL_AGI
--		local Killed_attr = ITEMATTR_VAL_DEX
		local ATKER_LD = GetChaItem2 ( ATKER , 2 , 3849 )
		local DEFER_RYZ1 = GetChaItem2 ( DEFER , 2 , 3849 )
		local FightingPoint=GetItemAttr ( ATKER_LD , ITEMATTR_MAXENERGY)
		local HonorPoint = GetItemAttr ( DEFER_RYZ1 , ITEMATTR_VAL_STR)
		local	FightingPoint = FightingPoint + ATKER_Get1_LD
		local	HonorPoint = HonorPoint + DEFER_Get1_Ry
			if ATKER == DEFER then
				ATKER_Get1_LD = ATKER_Get1_LD-1
			end
		SetItemAttr ( ATKER_LD , ITEMATTR_MAXENERGY,FightingPoint)
		SetItemAttr ( DEFER_RYZ1 , ITEMATTR_VAL_STR,HonorPoint)
		local atk_name = GetChaDefaultName ( ATKER )
		local def_name = GetChaDefaultName ( DEFER )
		local map_copy = GetChaMapCopy ( ATKER )

		MapCopyNotice ( map_copy , Notice_map )
	
	end
	if map_name_ATKER == "garner2" or map_name_DEFER == "garner2" then
		local atk_name = GetChaDefaultName ( ATKER )
		local def_name = GetChaDefaultName ( DEFER )
		local Notice_all = "["..def_name.."]��["..atk_name.."]����"
		Notice ( Notice_all )
	end
	
	
	if map_name_ATKER == "teampk" or map_name_DEFER == "teampk" then
		local ATKER_RYZ = GetChaItem2 ( ATKER , 2 , 3849 )
		local DEFER_RYZ = GetChaItem2 ( DEFER , 2 , 3849 )
		local Lv_ATKER = Lv( ATKER )
		local Lv_DEFER = Lv( DEFER )
		local Lv_dif = Lv_ATKER - Lv_DEFER
		if Lv_dif < 10 and Lv_dif > -5 then
			ATKER_Get_Ry = 1
			DEFER_Get_Ry = -1
			SystemNotice ( ATKER ,"�������ֻ������"..ATKER_Get_Ry )
			SystemNotice ( DEFER ,"�����ֻ���ʧȥ����"..ATKER_Get_Ry )
		end
		
		if Lv_dif >= 10 then
			ATKER_Get_Ry = 0
			DEFER_Get_Ry = 0
			SystemNotice ( ATKER , "�������ּ�����ͣ�����õ�����" )

		end
		
		if Lv_dif < -5 then
			ATKER_Get_Ry = 2
			DEFER_Get_Ry = -2
			SystemNotice ( ATKER ,"�����߼�����֣���ö��������������õ�����"..ATKER_Get_Ry )
			SystemNotice ( DEFER ,"���ͼ�����ֻ��������ͷ����������㣬ʧȥ����"..ATKER_Get_Ry )
		end

		local RongyuTpye = ITEMATTR_VAL_STR
		local Kill_Num = 1
		local Kill_attr = ITEMATTR_VAL_AGI
		local Killed_attr = ITEMATTR_VAL_DEX
		local atk_name = GetChaDefaultName ( ATKER )
		local def_name = GetChaDefaultName ( DEFER )
		local map_copy = GetChaMapCopy ( ATKER )
		local Notice_map = def_name.." �� "..atk_name.." ����"
--		SystemNotice( ATKER ,"ɱ����������")
		Add_ItemAttr_RYZ ( ATKER , ATKER_RYZ , RongyuTpye , ATKER_Get_Ry )
--		SystemNotice( ATKER , "����ɱ����")
		Add_ItemAttr_RYZ ( ATKER , ATKER_RYZ , Kill_attr , Kill_Num )
--		SystemNotice( DEFER ,"��ɱ��������")
		Add_ItemAttr_RYZ ( DEFER ,DEFER_RYZ , RongyuTpye , DEFER_Get_Ry )
--		SystemNotice( DEFER , "���ӱ�ɱ��")	
		Add_ItemAttr_RYZ ( DEFER ,DEFER_RYZ , Killed_attr , Kill_Num )
		MapCopyNotice ( map_copy , Notice_map )


	end
	if map_name_ATKER == "secretgarden" or map_name_DEFER == "secretgarden" then
		local atk_name = GetChaDefaultName ( ATKER )
		local def_name = GetChaDefaultName ( DEFER )
		local Notice_all = "["..def_name.."]��["..atk_name.."]����"
		Notice ( Notice_all )
	end




	if map_name_ATKER == "guildwar" or map_name_DEFER == "guildwar" then

		local ATKER = TurnToCha ( ATKER )
		local DEFER = TurnToCha ( DEFER )
		--local Cha = TurnToCha(role) 
		local Num_shengsi_1= CheckBagItem(DEFER,2382)
                --Notice("Num_shengsi"..Num_shengsi)
	if Num_shengsi_1 >=1 then
		TakeItem( DEFER, 0,2382, 1 )    
                GiveItem ( ATKER , 0 , 2383  , 1 , 4 )
	
        else
	   if GetChaGuildID(DEFER) <= 100 and GetChaGuildID(DEFER) > 0 then
              GiveItem ( ATKER , 0 , 2858  , 1 , 4 )
	   end
	   if GetChaGuildID(DEFER) > 100 and GetChaGuildID(DEFER) <= 200 then
	      GiveItem ( ATKER , 0 , 2859  , 1 , 4 )
	   end
	   if GetChaGuildID(DEFER) == 0 then
	      SystemNotice ( ATKER , "�Է������ں������ߺ���,��û���ѳ��κζ���!" )
	   end
	end
     end

     if map_name_ATKER == "guildwar2" or map_name_DEFER == "guildwar2" then

		local ATKER = TurnToCha ( ATKER )
		local DEFER = TurnToCha ( DEFER )
		--local Cha = TurnToCha(role) 
		local Num_shengsi_2= CheckBagItem(DEFER,2382)
                --Notice("Num_shengsi"..Num_shengsi)
	if Num_shengsi_2 >=1 then
		TakeItem( DEFER, 0,2382, 1 )   
                GiveItem ( ATKER , 0 , 2383  , 1 , 4 )
	
        else
	   if GetChaGuildID(DEFER) <= 100 and GetChaGuildID(DEFER) > 0 then
              GiveItem ( ATKER , 0 , 2858  , 1 , 4 )
	   end
	   if GetChaGuildID(DEFER) > 100 and GetChaGuildID(DEFER) <= 200 then
	      GiveItem ( ATKER , 0 , 2859  , 1 , 4 )
	   end
	   if GetChaGuildID(DEFER) == 0 then
	      SystemNotice ( ATKER , "�Է������ں������ߺ���,��û���ѳ��κζ���!" )
	   end
	end
     end

     if map_name_ATKER == "guildwar" or map_name_DEFER == "guildwar" then
		local atk_name = GetChaDefaultName ( ATKER )
		local def_name = GetChaDefaultName ( DEFER )
		--local Notice_all = "�㱻["..atk_name.."]������"
		SystemNotice ( DEFER , "�㱻["..atk_name.."]������" )
     end

     if map_name_ATKER == "guildwar2" or map_name_DEFER == "guildwar2" then
		local atk_name = GetChaDefaultName ( ATKER )
		local def_name = GetChaDefaultName ( DEFER )
		--local Notice_all = "�㱻["..atk_name.."]������"
		SystemNotice ( DEFER , "�㱻["..atk_name.."]������" )
     end




        local C_Map = 0
	for C_Map = 0 , MGPK_MapNameNum , 1 do
	    if  map_name_ATKER == MGPK_MapName[C_Map] then
		local atk_name = GetChaDefaultName ( ATKER )
		local def_name = GetChaDefaultName ( DEFER )
		local map_copy = GetChaMapCopy ( ATKER )
		local Notice_map = def_name.." �� "..atk_name.." ����"
		MapCopyNotice ( map_copy , Notice_map )
		ATKER = TurnToCha ( ATKER )
		DEFER = TurnToCha ( DEFER )
		local Have_TSWW = CheckBagItem( DEFER , 3846 )
		if Have_TSWW <= 0 then
			Dead_Punish_ItemURE ( DEFER )
			MGPK_Dead_Punish_Exp ( DEFER )
		else
			local j = DelBagItem( DEFER , 3846 , 1 )
			if j == 0 then
				LG ( "NewItem" , "��������ɾ��ʧ��" )
			else
				SystemNotice ( DEFER , "���������޴�������,���辭����;óͷ�" )
			end
		end

	    end
	end
	
	--Notice ( "A" )
	local Item_WWZ = GetChaItem2 ( ATKER , 2 , 5803 )
	--Notice ( "B" )
	
	local Kill_WWZ_Num = GetItemAttr ( Item_WWZ , ITEMATTR_VAL_AGI)
	--Notice ( "C" )
	Kill_WWZ_Num = Kill_WWZ_Num + 1

	SetItemAttr( Item_WWZ , ITEMATTR_VAL_AGI , Kill_WWZ_Num )
	--Notice ( "D" )

	if Kill_WWZ_Num >11 then
	end	
	--Notice ( "E" )


--	PK_Dead_Punish_ItemURE ( DEFER )




	
--	PK_Dead_Punish_ItemURE ( DEFER )

end

--�Թ�PK��������ͷ�
function MGPK_Dead_Punish_Exp ( dead )
	local map_name = GetChaMapName ( dead )
	dead = TurnToCha ( dead ) 
	local lv = GetChaAttr( dead, ATTR_LV ) 
	local exp_red 
	local exp = Exp(dead) 
	local nlexp = GetChaAttrI ( dead , ATTR_NLEXP ) 
	local clexp = GetChaAttrI ( dead , ATTR_CLEXP ) 
	local exp_per = math.min ( math.floor ( ( nlexp - clexp ) * 0.02 ) , math.max ( exp - clexp , 0 ) )	---���հٷֱȼ�����ʧ
	if  exp <= clexp then 
		exp_red = 0 
	else 
		exp_red = math.pow( lv , 2 ) * 20								---���յȼ�������ʧ
	end 
	
	if exp_red > exp_per then										---ȡ�����㷨�н�С�Ŀ۳�
		exp_red = exp_per
	end

	if Lv ( dead ) >= 80 then 
		exp_red = math.floor ( exp_red / 50 )
		exp_red_80 = exp_red * 50 
		SystemNotice (dead , "����������ʧ����"..exp_red_80 ) 
	else 
		SystemNotice (dead , "����������ʧ����"..exp_red ) 
	end
	
	exp = Exp(dead) - exp_red

	SetChaAttrI( dead , ATTR_CEXP , exp ) 
	
	local name = GetChaDefaultName ( dead )
	
	LG ( "PKdie_exp" , "��ɫ��" , name , "��ǰ�ȼ� = ", lv , "�����۳�����ֵ = " , exp_red )
end 



--��������֤����
function Add_ItemAttr_RYZ ( Cha_role ,role , attrtype , Num )
	local i = 0
	local attr_num = GetItemAttr ( role , attrtype )
--	SystemNotice ( Cha_role , "����ǰ��ֵ"..attr_num )
--	SystemNotice ( Cha_role , "����ֵ"..Num )
--	SystemNotice ( Cha_role , "��������"..attrtype )
	attr_num = attr_num + Num
	i = SetItemAttr ( role ,attrtype , attr_num )
	local attr_num_1 = GetItemAttr ( role , attrtype )
--	SystemNotice ( Cha_role , "������ֵ"..attr_num_1 )
	if i == 0 then
		LG("RYZ_PK","�������֤����ʧ��")
	end
	
end


--��ȡ����֤����

--�μӳ���
--��������ɫָ��
--����ֵ����������
function Get_ItemAttr_Join ( Cha_role )

	local RYZ_Num = 0
	RYZ_Num = CheckBagItem( Cha_role,3849 )

	if RYZ_Num <= 0 then
		return 0
	end

	local role_RYZ = GetChaItem2 ( Cha_role , 2 , 3849 )
	local attrtype = ITEMATTR_VAL_CON
	local attr_num = GetItemAttr ( role_RYZ , attrtype )
	return attr_num
	
end

--��ȡ��ν֤֮����
--ɱ����
function Get_ItemAttr_Join ( Cha_role )

	local WWZ_Num = 0
	WWZ_Num = CheckBagItem( Cha_role,3849 )

	if RYZ_Num <= 0 then
		return 0
	end

	 
	
end

--ʤ������
--��������ɫָ��
--����ֵ��ʤ������
function Get_ItemAttr_Win ( Cha_role )

	local RYZ_Num = 0
	RYZ_Num = CheckBagItem( Cha_role,3849 )

	if RYZ_Num <= 0 then
		return 0
	end	

	local role_RYZ = GetChaItem2 ( Cha_role , 2 , 3849 )
	local attrtype = ITEMATTR_VAL_STA
	local attr_num = GetItemAttr ( role_RYZ , attrtype )
	return attr_num
	
end

--�������ֵ

function AddYongYuZhi( role ,  value )
	
	local RYZ_Num = 0
	RYZ_Num = CheckBagItem( role,3849 )

	if RYZ_Num <= 0 then
		SystemNotice ( role , "û������֤֮" )
		return 0
	
	end
	
	local role_RYZ = GetChaItem2 ( role , 2 , 3849 )
	local attrtype = ITEMATTR_VAL_STR
	local attr_num = GetItemAttr ( role_RYZ , attrtype )
	local attr_num = attr_num + value
	local i = 0
	SetChaKitbagChange ( role , 0 )
	i = SetItemAttr ( role_RYZ ,attrtype , attr_num )
	
	if i == 0 then 
		return 0
	end
	if value > 0 then
		SystemNotice ( role , "��������"..value )
	end
	if value < 0 then
		local a = -1 * value
		SystemNotice ( role , "�۳�������"..a )
	end

	SynChaKitbag ( role , 7 )
	return 1
end



--�ı���ӹ��׵���
function TakeZuDuiGongXianDu( role , value )
	
	local RYZ_Num = 0
	RYZ_Num = CheckBagItem( role,3849 )

	if RYZ_Num <= 0 then
		SystemNotice ( role , "û������֤֮" )
		return 0
	
	end
	
	local role_RYZ = GetChaItem2 ( role , 2 , 3849 )
	local attrtype = ITEMATTR_MAXURE
	local attr_num = GetItemAttr ( role_RYZ , attrtype )
	local attr_num = attr_num - value
	local i = 0
	SetChaKitbagChange ( role , 0 )
	i = SetItemAttr ( role_RYZ ,attrtype , attr_num )
	
	if i == 0 then 
		return 0
	end
	if value < 0 then
		local a = value * -1
		SystemNotice ( role ,"�õ��Ŷӹ��׵���"..a )
	end
	if value > 0 then
		SystemNotice ( role ,"�۳��Ŷӹ��׵���"..value )
		LG("RYZ_Take_Zdgx" , "ʹ���Ŷӹ��ף��۳�"..value.."��")
	end
	SynChaKitbag ( role , 7 )
	return 1
end



--�ж��Ƿ����㹻����ӹ��׵���
function HasZuDuiGongXianDu ( role ,value )
	local RYZ_Num = 0
	RYZ_Num = CheckBagItem( role,3849 )

	if RYZ_Num <= 0 then
		return 0
	end

	local role_RYZ = GetChaItem2 ( role , 2 , 3849 )
	local attrtype = ITEMATTR_MAXURE
	local attr_num = GetItemAttr ( role_RYZ , attrtype )
	if attr_num >= value then
		return 1
	else
		return 0
	end
end

--�ж�����ֵ�Ƿ��������
function LessYongYuZhi( role , str , value )
		local RYZ_Num = 0
	RYZ_Num = CheckBagItem( role,3849 )

	if RYZ_Num <= 0 then
		return 0
	end

	local role_RYZ = GetChaItem2 ( role , 2 , 3849 )
	local attrtype = ITEMATTR_VAL_STR
	local attr_num = GetItemAttr ( role_RYZ , attrtype )
	if str == ">" then
		if attr_num > value then
			return 1
		end
	elseif str == "<" then
		if attr_num < value then
			return 1
		end
	elseif str == "=" then
		if attr_num == value then
			return 1
		end
	else
		LG("RYZ_PK","�ж������ַ�����")
	end


end

--���ʱ�����ӹ��׵���
function Add_RYZ_TeamPoint ( role ,count_num , add_num )
	local RYZ_Num = 0
	RYZ_Num = CheckBagItem( role,3849 )

	if RYZ_Num <= 0 then
		return
	end
	local role_RYZ = GetChaItem2 ( role , 2 , 3849 )
	local attrtype = ITEMATTR_MAXURE
	local attr_num = GetItemAttr ( role_RYZ , attrtype )
	if attr_num >= 1000 then
		return
	end
	attr_num = attr_num + add_num
	local a = math.min ( 1 , ( count_num - 2 ) * 0.3 )
	local b = 0
	b = Percentage_Random ( a )
	local i = 0
	if b == 1 then

		SetChaKitbagChange ( role , 0 )
		i = SetItemAttr ( role_RYZ ,attrtype , attr_num )

		if i == 0 then
			LG("RYZ_PK","����Ŷӹ��׵���ʧ��")
			return
		end
		SynChaKitbag ( role , 7 )
	
		SystemNotice ( role ,"��� "..add_num.." ����ӹ��׵���")
	end
end

	

--�;�ϵͳ--------------------------------------------

--�۳������������;�

function Take_Atk_ItemURE ( role )
--	SystemNotice( role ,"�۳������������;�")
	local Atk = IsPlayer ( role )
	local boat = ChaIsBoat ( role )
	if Atk == 1 and boat == 0 then					---�ֺʹ�����
--		SystemNotice ( role ,"��ʼ����")
		local Item_1 = 0
		local Item_2 = 0
		Item_1 = GetChaItem ( role , 1 , 6 )
		Item_2 = GetChaItem ( role , 1 , 9 )
		
		local Item_URE = 0
		local Take_Num = 1
		local i = 0
		local Item1_Type = Check_Repair_ItemType ( Item_1 )    --�ж��Ƿ������
		local Item2_Type = Check_Repair_ItemType ( Item_2 )
		
		if Item_1 ~= 0 and Item_1 ~= nil then
--			SystemNotice (role , "����")
			local a = 0.03
			local b = Percentage_Random (a)
			
			if b == 1 and Item1_Type == 1 then
--				SystemNotice (role , "��ʼ������")
				Item_URE = GetItemAttr ( Item_1 , ITEMATTR_URE )
				if Item_URE < 50 then
					Take_Num = 0
				end

				Item_URE = Item_URE - Take_Num
				
				

				i = SetItemAttr ( Item_1 , ITEMATTR_URE , Item_URE )
				if i == 0 then
					LG("Item_URE","�����������ʧ��")
				end
				if Item_URE < 50 and Take_Num ~= 0 then
					SetChaEquipValid ( role , 6 , 0 )
				end
			end
		end
		
		Item_URE = 0
		Take_Num = 1
		i = 0
		
		if Item_2 ~= 0 and Item_2 ~= nil then
--			SystemNotice ( role ,"����")
			local a = 0.03
			local b = Percentage_Random (a)
			if b == 1 and Item2_Type == 1 then
--				SystemNotice(role ,"��ʼ������")
				Item_URE = GetItemAttr ( Item_2 , ITEMATTR_URE )

				if Item_URE < 50 then
					Take_Num = 0
				end

				Item_URE = Item_URE - Take_Num
				
				

				i = SetItemAttr ( Item_2 , ITEMATTR_URE , Item_URE )
				if i == 0 then
					LG("Item_URE","�����������ʧ��")
				end
				if Item_URE < 50 and Take_Num ~= 0 then
					SetChaEquipValid ( role , 9 , 0 )
				end
			end
		end
	end


	
end

--�۳��ܻ��߷����;�

function Take_Def_ItemURE ( role )
	local def = IsPlayer ( role )
	local boat = ChaIsBoat ( role )
	if def == 1 and boat == 0 then						--�ֺʹ�����
		local Item_1 = 0
		local Item_2 = 0
		local Item_3 = 0
		local Item_4 = 0

		Item_1 = GetChaItem ( role , 1 , 0 )
		Item_2 = GetChaItem ( role , 1 , 2 )
		Item_3 = GetChaItem ( role , 1 , 3 )
		Item_4 = GetChaItem ( role , 1 , 4 )
		
		local Item_URE = 0
		local Take_Num = 1
		local i = 0

		if Item_1 ~= 0 and Item_1 ~= nil then
			local a = 0.015
			local b = Percentage_Random ( a )
			if b == 1 then
				Item_URE = GetItemAttr ( Item_1 , ITEMATTR_URE )

				if Item_URE < 50 then
					Take_Num = 0
				end
				
				Item_URE = Item_URE - Take_Num
				
				

				i = SetItemAttr ( Item_1 , ITEMATTR_URE , Item_URE )
				if i == 0 then
					LG("Item_URE","��ӷ�������ʧ��")
				end
				
				if Item_URE < 50 and Take_Num ~= 0 then
					SetChaEquipValid ( role , 0 , 0 )
				end
			end
		end
		
		Item_URE = 0
		Take_Num = 1
		i = 0
		
		if Item_2 ~= 0 and Item_2 ~= nil then
			local a = 0.015
			local b = Percentage_Random ( a )
			if b == 1 then
				Item_URE = GetItemAttr ( Item_2 , ITEMATTR_URE )

				if Item_URE < 50 then
					Take_Num = 0
				end
				
				Item_URE = Item_URE - Take_Num
				
				
				i = SetItemAttr ( Item_2 , ITEMATTR_URE , Item_URE )
				if i == 0 then
					LG("Item_URE","��ӷ�������ʧ��")
				end
				
				if Item_URE < 50 and Take_Num ~= 0 then
					SetChaEquipValid ( role , 2 , 0 )
				end
			end
		end

		Item_URE = 0
		Take_Num = 1
		i = 0
		
		if Item_3 ~= 0 and Item_3 ~= nil then
			local a = 0.015
			local b = Percentage_Random ( a )
			if b == 1 then
				Item_URE = GetItemAttr ( Item_3 , ITEMATTR_URE )

				if Item_URE < 50 then
					Take_Num = 0
				end
				
				Item_URE = Item_URE - Take_Num
				
				
				i = SetItemAttr ( Item_3 , ITEMATTR_URE , Item_URE )
				if i == 0 then
					LG("Item_URE","��ӷ�������ʧ��")
				end

				if Item_URE < 50 and Take_Num ~= 0 then
					SetChaEquipValid ( role , 3 , 0 )
				end
			end
		end

		Item_URE = 0
		Take_Num = 1
		i = 0
		
		if Item_4 ~= 0 and Item_4 ~= nil then
			local a = 0.015
			local b = Percentage_Random ( a )
			if b == 1 then
				Item_URE = GetItemAttr ( Item_4 , ITEMATTR_URE )
				
				if Item_URE < 50 then
					Take_Num = 0
				end

				Item_URE = Item_URE - Take_Num
				

				i = SetItemAttr ( Item_4 , ITEMATTR_URE , Item_URE )
				if i == 0 then
					LG("Item_URE","��ӷ�������ʧ��")
				end
				
				if Item_URE < 50 and Take_Num ~= 0 then
					SetChaEquipValid ( role , 4 , 0 )
				end
			end
		end
	end
end

--��������ʱ�۳��;�
function Dead_Punish_ItemURE ( role )
	local Player = IsPlayer ( role )
	local boat = ChaIsBoat ( role )
	local Punish = 0.05
	
	Dead_Punish_Item_Num = 5							--Ҫ�۳���װ��λ��
	
	local Dead_Punish_Item_WZ = { }
	Dead_Punish_Item_WZ [0] = 0
	Dead_Punish_Item_WZ [1] = 2
	Dead_Punish_Item_WZ [2] = 3
	Dead_Punish_Item_WZ [3] = 4
	Dead_Punish_Item_WZ [4] = 6
	Dead_Punish_Item_WZ [5] = 9

	local Dead_Punish_Item = { }
	Dead_Punish_Item [0] = GetChaItem ( role , 1 , Dead_Punish_Item_WZ [0] )
	Dead_Punish_Item [1] = GetChaItem ( role , 1 , Dead_Punish_Item_WZ [1] )
	Dead_Punish_Item [2] = GetChaItem ( role , 1 , Dead_Punish_Item_WZ [2] )
	Dead_Punish_Item [3] = GetChaItem ( role , 1 , Dead_Punish_Item_WZ [3] )
	Dead_Punish_Item [4] = GetChaItem ( role , 1 , Dead_Punish_Item_WZ [4] )
	Dead_Punish_Item [5] = GetChaItem ( role , 1 , Dead_Punish_Item_WZ [5] )

	if Player == 1 and boat == 0 then						--�ֺʹ�����
		local Item_URE = 0
		local Item_MAXURE = 0
		local Take_Num = 0
		local i = 0
		local j = 0
		local k = 0								--װ����Ч���
		for j = 0 , Dead_Punish_Item_Num , 1 do
				
			if Dead_Punish_Item[j] ~= 0 and Dead_Punish_Item[j] ~= nil then
				
				local ItemType_Check = Check_Repair_ItemType ( Dead_Punish_Item[j] )
				if ItemType_Check == 1 then
					Item_URE = GetItemAttr ( Dead_Punish_Item[j] , ITEMATTR_URE )
					Item_MAXURE = GetItemAttr ( Dead_Punish_Item[j] , ITEMATTR_MAXURE )
					Take_Num = math.floor ( Item_MAXURE * Punish )
					
					if Item_URE >= 50 then
						k = 1
					end

					Item_URE = Item_URE - Take_Num
					
					if Item_URE < 50 then
						Item_URE = 49
						
					end
					
					i = SetItemAttr ( Dead_Punish_Item[j] , ITEMATTR_URE , Item_URE )
					if i == 0 then
						LG("Item_URE","���������۳�����ʧ��"..j)
					end
					
					
					
					if k == 1 and Item_URE == 49 then
							SetChaEquipValid ( role , Dead_Punish_Item_WZ [j] , 0 )
					end


				end
				
			end
		end
		SystemNotice ( role , "�����۳�װ���;�5��" )
	end

end

--PKʱ�����۳��;�

function PK_Dead_Punish_ItemURE ( role )
	local Player = IsPlayer ( role )
	local boat = ChaIsBoat ( role )
	local Punish = 0.05
	PK_Dead_Punish_Item_Num = 5							--Ҫ�۳���װ��λ��
	
	local PK_Dead_Punish_Item_WZ = { }
	PK_Dead_Punish_Item_WZ [0] = 0
	PK_Dead_Punish_Item_WZ [1] = 2
	PK_Dead_Punish_Item_WZ [2] = 3
	PK_Dead_Punish_Item_WZ [3] = 4
	PK_Dead_Punish_Item_WZ [4] = 6
	PK_Dead_Punish_Item_WZ [5] = 9

	local PK_Dead_Punish_Item = { }
	PK_Dead_Punish_Item [0] = GetChaItem ( role , 1 , PK_Dead_Punish_Item_WZ [0] )
	PK_Dead_Punish_Item [1] = GetChaItem ( role , 1 , PK_Dead_Punish_Item_WZ [1] )
	PK_Dead_Punish_Item [2] = GetChaItem ( role , 1 , PK_Dead_Punish_Item_WZ [2] )
	PK_Dead_Punish_Item [3] = GetChaItem ( role , 1 , PK_Dead_Punish_Item_WZ [3] )
	PK_Dead_Punish_Item [4] = GetChaItem ( role , 1 , PK_Dead_Punish_Item_WZ [4] )
	PK_Dead_Punish_Item [5] = GetChaItem ( role , 1 , PK_Dead_Punish_Item_WZ [5] )
	if Player == 1 and boat == 0 then						--�ֺʹ�����
		local Item_URE = 0
		local Item_MAXURE = 0
		local Take_Num = 0
		local i = 0
		local j = 0
		local k = 0								--װ����Ч���
		for j = 0 , PK_Dead_Punish_Item_Num , 1 do
				
			if PK_Dead_Punish_Item[j] ~= 0 and PK_Dead_Punish_Item[j] ~= nil then
				local ItemType_Check = Check_Repair_ItemType ( PK_Dead_Punish_Item[j] )
				
				if ItemType_Check == 1 then

					Item_URE = GetItemAttr ( PK_Dead_Punish_Item[j] , ITEMATTR_URE )
					Item_MAXURE = GetItemAttr ( PK_Dead_Punish_Item[j] , ITEMATTR_MAXURE )
					Take_Num = math.floor ( Item_MAXURE * Punish )
					
					if Item_URE >= 50 then
						k = 1
					end

					Item_URE = Item_URE - Take_Num
					if Item_URE < 50 then
						Item_URE = 49
						
					end

					i = SetItemAttr ( PK_Dead_Punish_Item[j] , ITEMATTR_URE , Item_URE )
					if i == 0 then
						LG("Item_URE","���������۳�����ʧ��"..j)
					end
					
					
					
					if k == 1 and Item_URE == 49 then
							SetChaEquipValid ( role , Dead_Punish_Item_WZ [j] , 0 )
					end
				end
				
			end
		end
		SystemNotice ( role , "PK�����۳�װ���;�5��" )
	end
end



--�������Ƿ������
function can_repair_item ( role_repair , role_want_repair , Item )
	local Check = 0
	local Sklv = 1
	Check = can_repair_itemLua ( role_repair , role_want_repair , Item , Sklv )
	return Check

end

--����Ƿ������������

function can_repair_itemLua ( role_repair , role_want_repair , Item , Sklv )
	--	SystemNotice( role_want_repair , "����can_repair_item ")
	local re_type = IsPlayer ( role_repair )
	local Item_MAXURE = GetItemAttr ( Item , ITEMATTR_MAXURE )
	local Item_URE = GetItemAttr ( Item , ITEMATTR_URE )
	local Money_Need = get_item_repair_money ( Item )
	local Money_Have = GetChaAttr ( role_want_repair , ATTR_GD )
	
	
--	SystemNotice ( role_want_repair , "Item_MAXURE= "..Item_MAXURE)
--	SystemNotice ( role_want_repair , "Item_URE= "..Item_URE)

--	SystemNotice ( role_want_repair , "ҪǮ"..Money_Need )
	
	if Item_MAXURE <= 2500 then
		SystemNotice( role_want_repair , "װ������;�̫�ͣ���������" )
		return 0
	end
	if Item_MAXURE == Item_URE then								--�;�̫�ͣ��;�δ���Ĳ�����
		SystemNotice( role_want_repair , "װ���;�δ���ģ�����Ҫ��������")
		return 0
	end

	if Money_Have < Money_Need then								--ûǮ������
		SystemNotice( role_want_repair , "��Ǯ���㣬��������")
		return 0
	end

--	if re_type == 1 then
--		LG("Item_URE","��������ˣ�")
--		return 0
--	end
	
	local i = 0
	i = Check_Repair_ItemType ( Item )
	if i == 1 then
		return 1
	end
	SystemNotice( role_want_repair , "��������ĵ���")

	return 0
end


--ȡ�����������
function get_item_repair_money ( Item )
	local Money = 0
	local Sklv = 1
	Money = get_item_repair_moneyLua ( Item , Sklv )
	
	if Money < 1 then
		Money = 1
	end

	return Money
	
end

--ȡ�����������������
function get_item_repair_moneyLua ( Item , Sklv )
	local Item_Lv = GetItemLv ( Item )
	local RepairPoint = math.floor ( math.pow(( Item_Lv / 10 ) , 1.7 )) - 1
	local Item_URE = GetItemAttr ( Item , ITEMATTR_URE )
	local Item_MAXURE = GetItemAttr ( Item , ITEMATTR_MAXURE )

	local URE_repair = math.floor ( Item_MAXURE / 50 ) - math.floor ( Item_URE / 50 )
	local Money_Need = math.max ( ( URE_repair * RepairPoint ) , 1 )
	return Money_Need
end

--��ʼ�������
function begin_repair_item ( role_repair , role_want_repair , Item )
	local Sklv = 1
	begin_repair_itemLua ( role_repair , role_want_repair , Item , Sklv )
end

--��ʼ����������
function begin_repair_itemLua ( role_repair , role_want_repair , Item , Sklv )
--	SystemNotice( role_want_repair , "��ʼ�������")
	local Item_MAXURE = GetItemAttr ( Item , ITEMATTR_MAXURE )
	local Item_URE = GetItemAttr ( Item , ITEMATTR_URE )
	local Money_Need = get_item_repair_money ( Item )
	local Money_Have = GetChaAttr ( role_want_repair , ATTR_GD )
--	SystemNotice ( role_want_repair , "Money_Have = "..Money_Have)
--	SystemNotice ( role_want_repair , "��Ǯ "..Money_Need)
	Money_Have = Money_Have - Money_Need
	SetCharaAttr ( Money_Have , role_want_repair , ATTR_GD )
	ALLExAttrSet( role_want_repair )
--	SystemNotice ( role_want_repair , "����Ǯ��" )
--	local a = 1
--	local b = 1
	local i = 0
	local j = 0
	
	
--	local URE_NeedRepair = ( Item_MAXURE - Item_URE ) - ( Item_MAXURE * 0.05 )
	
--	if URE_NeedRepair <= 0 then
--		b = 1
--	end

--	if b == 1 then
	Item_URE = Item_MAXURE
	i = SetItemAttr ( Item , ITEMATTR_URE , Item_URE )

	if i == 0 then 
		LG("Item_URE","�����;�ʧ��")
	end
	SystemNotice( role_want_repair ,"�������" )
--	else
--		local New_Item_MAXURE = math.floor ( Item_MAXURE * 0.95 )
--		i = SetItemAttr ( Item , ITEMATTR_URE , New_Item_MAXURE )
--		j = SetItemAttr ( Item , ITEMATTR_MAXURE , New_Item_MAXURE )
--		SystemNotice ( role_want_repair , "�������" )
--		SystemNotice ( role_want_repair , "���ź��������;��޷��ָ�������;öȽ���" )
--		if i == 0 then
--			LG("Item_URE","����ʧ�ܺ������;�ʧ��")
--		end
--		if j == 0 then
--			LG("Item_URE","����ʧ�ܺ��޸�����;�ʧ��")
--		end
--	end
	return 1
end


--�ж��Ƿ�Ϊ�������װ������
function Check_Repair_ItemType ( Item )
	local Item_ID = GetItemID ( Item )
	if Item_ID < 3243 or Item_ID > 3278  then
		if Item_ID ~= 3669 or Item_ID ~=5825 then
			local Item_Type = GetItemType ( Item )
--			SystemNotice ( role_want_repair , "��������="..Item_Type )
			local i = 0
			for i = 0 , Item_CanRepair_Num , 1 do
				if Item_CanRepair_ID [i] == Item_Type then
					return 1
				end
			end
		end
	end
	return 0
end


-----����ϵͳ32λ���ֲ��----------------

--��ȡ����
function GetNum_Part1 ( Num )
	local a = 0
	a = math.floor ( Num / 1000000000 )
	return a
end

function GetNum_Part2 ( Num )
	local a = 0
	local b = 0
	a = Num - GetNum_Part1 ( Num ) * 1000000000
	b = math.floor ( a / 10000000 )
	return b
end

function GetNum_Part3 ( Num )
	local a = 0
	local b = 0
	a = Num - math.floor ( Num / 10000000 ) * 10000000
	b = math.floor ( a / 1000000 )
	return b
end

function GetNum_Part4 ( Num )
	local a = 0
	local b = 0
	a = Num - math.floor ( Num / 1000000 ) *1000000
	b = math.floor ( a / 10000 )
	return b
end

function GetNum_Part5 ( Num )
	local a = 0
	local b = 0
	a = Num -  math.floor ( Num / 10000 ) * 10000
	b = math.floor ( a / 1000 )
	return b
end

function GetNum_Part6 ( Num )
	local a = 0
	local b = 0
	a = Num - math.floor ( Num / 1000 ) *1000
	b = math.floor ( a / 10 )
	return b
end

function GetNum_Part7 ( Num )
	local a = 0
	local b = 0
	a = Num - math.floor ( Num / 10 ) *10
	b = math.floor ( a / 1 )
	return b
end

-- function GetNum_Test ( Num )
--	local a = 0
--	Notice ( "������Mars�������ݣ��뱣����" )
--	Notice ( "��������Ϊ"..Num )
--	a = GetNum_Part1( Num )
--	Notice ( " �������ֵ�һ���� = "..a)
--	a = GetNum_Part2( Num )
--	Notice ( " �������ֵڶ����� = "..a)
--	a = GetNum_Part3( Num )
--	Notice ( " �������ֵ������� = "..a)
--	a = GetNum_Part4( Num )
--	Notice ( " �������ֵ��Ĳ��� = "..a)
--	a = GetNum_Part5( Num )
--	Notice ( " �������ֵ��岿�� = "..a)
--	a = GetNum_Part6( Num )
--	Notice ( " �������ֵ������� = "..a)
--	a = GetNum_Part7( Num )
--	Notice ( " �������ֵ��߲��� = "..a)
-- end


--д�벿��

function SetNum_Part1 ( Num , Part_Num )
	local a = 0
	local b = 0
	a = GetNum_Part1 ( Num )
	b = Part_Num - a
	Num = Num + b * 1000000000
	return Num
end

function SetNum_Part2 ( Num , Part_Num )
	local a = 0
	local b = 0
	a = GetNum_Part2 ( Num )
	b = Part_Num - a
	Num = Num + b * 10000000
	return Num
end

function SetNum_Part3 ( Num , Part_Num )
	local a = 0
	local b = 0
	a = GetNum_Part3 ( Num )
	b = Part_Num - a
	Num = Num + b * 1000000
	return Num
end

function SetNum_Part4 ( Num , Part_Num )
	local a = 0
	local b = 0
	a = GetNum_Part4 ( Num )
	b = Part_Num - a
	Num = Num + b * 10000
	return Num
end

function SetNum_Part5 ( Num , Part_Num )
	local a = 0
	local b = 0
	a = GetNum_Part5 ( Num )
	b = Part_Num - a
	Num = Num + b * 1000
	return Num
end

function SetNum_Part6 ( Num , Part_Num )
	local a = 0
	local b = 0
	a = GetNum_Part6 ( Num )
	b = Part_Num - a
	Num = Num + b * 10
	return Num
end

function SetNum_Part7 ( Num , Part_Num )
	local a = 0
	local b = 0
	a = GetNum_Part7 ( Num )
	b = Part_Num - a
	Num = Num + b * 1
	return Num
end


--function SetNum_Test ( Num )
--	local a = 0
--	Notice ( "������Mars�������ݣ����ұ�����" )
--	Notice ( "��������Ϊ"..Num)
--	Num = SetNum_Part1 ( Num , 0 )
--	Notice ( "�ı��һ����֮��Ϊ"..Num )
--	Num = SetNum_Part2 ( Num , 12 )
--	Notice ( "�ı�ڶ�����֮��Ϊ"..Num )
--	Num = SetNum_Part3 ( Num , 3 )
--	Notice ( "�ı��������֮��Ϊ"..Num )
--	Num = SetNum_Part4 ( Num , 45 )
--	Notice ( "�ı���Ĳ���֮��Ϊ"..Num )
--	Num = SetNum_Part5 ( Num , 6 )
--	Notice ( "�ı���岿��֮��Ϊ"..Num )
--	Num = SetNum_Part6 ( Num , 78 )
--	Notice ( "�ı��������֮��Ϊ"..Num )
--	Num = SetNum_Part7 ( Num , 9 )
--	Notice ( "�ı���߲���֮��Ϊ"..Num )
--end



--�������ݳ�ʼ��--

function SetItemForgeParam_MonsterBaoliao ( item , Num )
	local i = 0 
	local j = 0
	local a = math.random ( 1, 100 ) 
	local k = 0
	local ItemID = GetItemID ( item )
	local MaxHole = GetItemHoleNum ( ItemID )
	local Item_Type = GetItemType ( item )

	for j = 0 , 3 , 1 do 
		if a <= Item_HoleNum_Monster [j] then 
			k = j
			a = 200
		end
	end

	if k > MaxHole then
		k = MaxHole
	end
	
--	if k <= 1 then
--		k = 1
--	end

	if Item_Type == 49 or Item_Type == 50 then
		k = 0
	end

	Num = SetNum_Part1 ( Num , k )
	  
--	Notice(Num)
	i = SetItemForgeParam ( item , 1 , Num )
	if i == 0 then
		LG( "Creat_Item" , "���þ�������ʧ��" )
	end
end

function SetItemForgeParam_PlayerHecheng ( item , Num )
	local i = 0 
	local j = 0
	local a = math.random ( 1, 100 ) 
	local k = 0
	local ItemID = GetItemID ( item )
	local MaxHole = GetItemHoleNum ( ItemID )
	local Item_Type = GetItemType ( item )

	
	for j = 0 , 3 , 1 do 
		if a <= Item_HoleNum_Hecheng [j] then 
			k = j
			a = 200
		end 
	end 
	
 	if k > MaxHole then
		k = MaxHole
	end

	if Item_Type == 49 or Item_Type == 50 then
		k = 0
	end


	Num = SetNum_Part1 ( Num , k ) 
	 
	i = SetItemForgeParam ( item , 1 , Num )
	if i == 0 then
		LG( "Creat_Item" , "���þ�������ʧ��" )
	end
end

function SetItemForgeParam_QuestAward ( item , Num , item_event )
	local i = 0 
	local j = 0
	local a = math.random ( 1, 100 ) 
	local k = 0
	local ItemID = GetItemID ( item )
	local MaxHole = GetItemHoleNum ( ItemID )
	local Item_Type = GetItemType ( item )

	
	for j = 0 , 3 , 1 do 
		if a <= Item_HoleNum_Mission_1 [j] then 
			k = j
			a = 200
		end 
	end 
	
  	if k > MaxHole then
		k = MaxHole
	end

	if item_event == QUEST_AWARD_SDJ then
		if k == 0 then
			k = 1
		end
	end

	if item_event == QUEST_AWARD_SCBOX then
		k = 2
	end

	if Item_Type == 49 or Item_Type == 50 then
		k = 0
	end

	Num = SetNum_Part1 ( Num , k ) 

	i = SetItemForgeParam ( item , 1 , Num )
	if i == 0 then
		LG( "Creat_Item" , "���þ�������ʧ��" )
	end
end

function SetItemForgeParam_Npc_Sale ( item , Num )
	local i = 0 
	local j = 0
	local a = math.random ( 1, 100 ) 
	local k = 0
--	local ItemID = GetItemID ( Item )
--	local MaxHole = GetItemHoleNum ( ItemID )

--	for j = 0 , 3 , 1 do 
--		if a <= Item_HoleNum_Monster [i] then 
--			k = i
--			a = 200
--		end
--	end

--	if k > MaxHole then
--		k = MaxHole
--	end

	Num = SetNum_Part1 ( Num , k )
	  
--	Num = 2011000000
	i = SetItemForgeParam ( item , 1 , Num )
	if i == 0 then
		LG( "Creat_Item" , "���þ�������ʧ��" )
	end

end


--���Ὰ���������

--ȡĿǰ��ս��������

function GetFightGuildLevel()
--	�Ƚ�ʱ�䣬����level
--	�ڴ˲���ʱ��Ƚϣ�ȷ��GuildLevel
	local Lv = 0
	local Now_Week = GetNowWeek()
	local Now_Time = GetNowTime()
	local CheckNum = Now_Week * 100 + Now_Time
	if CheckNum >= 422 and CheckNum < 522 then
		Lv = 2
	elseif CheckNum >= 522 and CheckNum < 622 then
		Lv = 1
	elseif CheckNum >= 622 and CheckNum < 700 then
		Lv = 3
	elseif CheckNum >= 0 and CheckNum < 22 then
		Lv = 3
	end

	return Lv
end


--ȡ��ս˫���Ĺ�����
--��������ս�ȼ�
--����ֵ�����������ţ���ս���᷽������
function GetFightGuildID( GuildLevel )
	local RedSide = 0
	local BlueSide = 0
	RedSide , BlueSide = GetChallengeGuildID ( GuildLevel )
	return RedSide,BlueSide
end

--ȡ�������ڼ�
function GetNowWeek ( )
	local Now_Week = os.date("%w")
	local Now_WeekNum = tonumber(Now_Week)
	return Now_WeekNum
end

--ȡ�����Ǽ���
function GetNowTime ( )
	local Now_Time = os.date("%H")
	local NowTimeNum = tonumber(Now_Time)
	return NowTimeNum
end


--������װ�ж�

function CheckItem_Nianshou ( role )
	local Atk = IsPlayer ( role )
	local boat = ChaIsBoat ( role )
	if Atk == 0 or boat == 1 then		
		return 0
	end

	local cha = TurnToCha ( role )
	local Cha_Num = GetChaTypeID( cha )
	
	local head = GetChaItem ( role , 1 , 0 )
	local body = GetChaItem ( role , 1 , 2 )
	local hand = GetChaItem ( role , 1 , 3 )
	local foot = GetChaItem ( role , 1 , 4 )

	local Head_ID = GetItemID ( head )
	local Body_ID = GetItemID ( body )
	local Hand_ID = GetItemID ( hand )
	local Foot_ID = GetItemID ( foot )

	if Body_ID ~= 0825  and Body_ID ~= 2549 then
		return 0
	end

	if Hand_ID ~= 0826  and Hand_ID ~= 2550 then
		return 0
	end

	if Foot_ID ~= 0827  and Foot_ID ~= 2551 then
		return 0
	end

	if Cha_Num == 4 then
		if Head_ID ~= 0828  and Head_ID ~= 2552 then
			return 0
		end
	end

	return 1
end

--������װ�ж�

function CheckItem_Heilong ( role )
	local Atk = IsPlayer ( role )
	local boat = ChaIsBoat ( role )
	if Atk == 0 or boat == 1 then		
		return 0
	end

	local cha = TurnToCha ( role )
	local Cha_Num = GetChaTypeID( cha )
	
	 
	local body = GetChaItem ( role , 1 , 2 )
	local hand = GetChaItem ( role , 1 , 3 )
	local foot = GetChaItem ( role , 1 , 4 )

	 
	local Body_ID = GetItemID ( body )
	local Hand_ID = GetItemID ( hand )
	local Foot_ID = GetItemID ( foot )

	if Body_ID ~= 0845 and Body_ID ~= 2367 then
		return 0
	end

	if Hand_ID ~= 0846 and Hand_ID ~= 2368 then
		return 0
	end

	if Foot_ID ~= 0847 and Foot_ID ~= 2369 then
		return 0
	end

	return 1
end

---��⺣����װ
function CheckItem_pirate ( role )

	local cha = TurnToCha ( role )
	local Cha_Num = GetChaTypeID( cha )
	
	 
	local body = GetChaItem ( role , 1 , 2 )
	local hand = GetChaItem ( role , 1 , 3 )
	local foot = GetChaItem ( role , 1 , 4 )

	 
	local Body_ID = GetItemID ( body )
	local Hand_ID = GetItemID ( hand )
	local Foot_ID = GetItemID ( foot )
        local body_gem_id = GetItemAttr ( body , ITEMATTR_VAL_FUSIONID )
        local hand_gem_id = GetItemAttr ( hand , ITEMATTR_VAL_FUSIONID )
	local foot_gem_id = GetItemAttr ( foot , ITEMATTR_VAL_FUSIONID )
        if  Body_ID<5000 or Hand_ID<5000 or Foot_ID<5000 then
	   return 0
	end
        if body_gem_id ~= 2530 and body_gem_id ~= 2533 and body_gem_id ~= 2536 and body_gem_id ~= 2539 and body_gem_id ~= 2542 and body_gem_id ~= 2545 then
	   return 0
        end
	if hand_gem_id ~= 2531 and hand_gem_id ~= 2534 and hand_gem_id ~= 2537 and hand_gem_id ~= 2540 and hand_gem_id ~= 2543 and hand_gem_id ~= 2546 then
	   return 0
	end
	if foot_gem_id ~= 2532 and foot_gem_id ~= 2535 and foot_gem_id ~= 2538 and foot_gem_id ~= 2541 and foot_gem_id ~= 2544 and foot_gem_id ~= 2547 then 
           return 0
	end	
	return 1
end
---���75BOSS
function CheckItem_Death ( role )

	local cha = TurnToCha ( role )
	local Cha_Num = GetChaTypeID( cha )
	
	 
	local body = GetChaItem ( role , 1 , 2 )
	local hand = GetChaItem ( role , 1 , 3 )
	local foot = GetChaItem ( role , 1 , 4 )

	 
	local Body_ID = GetItemID ( body )
	local Hand_ID = GetItemID ( hand )
	local Foot_ID = GetItemID ( foot )
        local body_gem_id = GetItemAttr ( body , ITEMATTR_VAL_FUSIONID )
        local hand_gem_id = GetItemAttr ( hand , ITEMATTR_VAL_FUSIONID )
	local foot_gem_id = GetItemAttr ( foot , ITEMATTR_VAL_FUSIONID )
       if  Body_ID<5000 or Hand_ID<5000 or Foot_ID<5000 then
		body_gem_id=Body_ID
		hand_gem_id=Hand_ID
		foot_gem_id=Foot_ID
		if body_gem_id ~= 2817 and body_gem_id ~= 2820 and body_gem_id ~= 2823 and body_gem_id ~= 2826 and body_gem_id ~= 2829 and body_gem_id ~= 2832 then
		   return 0
		end
		if hand_gem_id ~= 2818 and hand_gem_id ~= 2821 and hand_gem_id ~= 2824 and hand_gem_id ~= 2827 and hand_gem_id ~= 2830 and hand_gem_id ~= 2833 then
		   return 0
		end
		if foot_gem_id ~= 2819 and foot_gem_id ~= 2822 and foot_gem_id ~= 2825 and foot_gem_id ~= 2828 and foot_gem_id ~= 2831 and foot_gem_id ~= 2834 then 
		   return 0
		end
	else
		if body_gem_id ~= 2817 and body_gem_id ~= 2820 and body_gem_id ~= 2823 and body_gem_id ~= 2826 and body_gem_id ~= 2829 and body_gem_id ~= 2832 then
		   return 0
		end
		if hand_gem_id ~= 2818 and hand_gem_id ~= 2821 and hand_gem_id ~= 2824 and hand_gem_id ~= 2827 and hand_gem_id ~= 2830 and hand_gem_id ~= 2833 then
		   return 0
		end
		if foot_gem_id ~= 2819 and foot_gem_id ~= 2822 and foot_gem_id ~= 2825 and foot_gem_id ~= 2828 and foot_gem_id ~= 2831 and foot_gem_id ~= 2834 then 
		   return 0
		end	 
	end
	return 1
end
--�Ҷ�֮װ

function CheckItem_fighting ( role )
	local cha = TurnToCha ( role )
	local Cha_Num = GetChaTypeID( cha )
	
	 
	local body = GetChaItem ( role , 1 , 2 )
	local hand = GetChaItem ( role , 1 , 3 )
	local foot = GetChaItem ( role , 1 , 4 )

	 
	local Body_ID = GetItemID ( body )
	local Hand_ID = GetItemID ( hand )
	local Foot_ID = GetItemID ( foot )
        local body_gem_id = GetItemAttr ( body , ITEMATTR_VAL_FUSIONID )
        local hand_gem_id = GetItemAttr ( hand , ITEMATTR_VAL_FUSIONID )
	local foot_gem_id = GetItemAttr ( foot , ITEMATTR_VAL_FUSIONID )
        if  Body_ID<5000 or Hand_ID<5000 or Foot_ID<5000 then
	   return 0
	end
        if body_gem_id ~= 1124 then
	   return 0
        end
	if hand_gem_id ~= 1125 then
	   return 0
	end
	if foot_gem_id ~= 1126  then 
           return 0
	end
	 
	return 1
end
---����ϵͳ-------------------------------------------------

---���---------------------

function Suanming_Money ( role )
	local a = CheckSuanmingType ( role )			--����õ�ʲôǩ
	if a == 1 then
		SystemNotice ( role , "���˵�ͷ���õ�����ǩ" )
		ShangShangQian_Money ( role )
	elseif a == 2 then
		SystemNotice ( role , "���������õ���ǩ" )
		ShangQian_Money ( role )
	elseif a == 3 then
		ZhongQian_Money ( role )
--		SystemNotice ( role , "������������...����ʲô��û����" )
	elseif a == 4 then
		SystemNotice ( role , "�����ò�õ���ǩ" )
		XiaQian_Money ( role )
	elseif a == 5 then
		SystemNotice ( role , "���ǵ�ù͸�ˣ��õ�����ǩ" )
		XiaXiaQian_Money ( role )
	end
end

---����ҵ-------------------

function Suanming_Work ( role )
	local a = CheckSuanmingType ( role )
	if a == 1 then
		SystemNotice ( role , "���˵�ͷ���õ�����ǩ" )
		ShangShangQian_Work ( role )
	elseif a == 2 then
		SystemNotice ( role , "���������õ���ǩ" )
		ShangQian_Work ( role )
	elseif a == 3 then
		ZhongQian_Work ( role )
--		SystemNotice ( role , "������������...����ʲô��û����" )
	elseif a == 4 then
		SystemNotice ( role , "�����ò�õ���ǩ" )
		XiaQian_Work ( role )
	elseif a == 5 then
		SystemNotice ( role , "���ǵ�ù͸�ˣ��õ�����ǩ" )
		XiaXiaQian_Work ( role )
	end
end


--����õ�ʲôǩ

function CheckSuanmingType ( role )
	local a = math.random ( 1 , 100 )
	local i = 0
	local b = 0
	local qian = { }
	qian [0] = 10
	qian [1] = 35
	qian [2] = 55
	qian [3] = 85
	qian [4] = 100

	for i = 0 , 4 , 1 do
		if qian [i] >= a then
			b = i + 1
			break
		end
	end

	return b

end

--��������ǩ

function ShangShangQian_Money ( role )
	local a = math.random ( 1 , 100 )
	local i = 0
	local b = 0
	local qian = { }
	qian [0] = 10
	qian [1] = 50
	qian [2] = 100
--	qian [3] = 80
--	qian [4] = 100

	for i = 0 , 2 , 1 do
		if qian [i] >= a then
			b = i + 1
			break
		end
	end

	if b == 1 then
		local GiveMoneyNum = 0.01 * math.random ( 1 , 5 )
		local GiveMoneyNum_Notice = GiveMoneyNum * 100
		SystemNotice ( role , "���������Ͻ�Ǯ"..GiveMoneyNum_Notice.."���Ķ����Ǯ" )
		QianAddMoney ( role , 1 , GiveMoneyNum )							----��Ǯ��1Ϊ��������2Ϊ���̶���ֵ
	elseif b == 2 then
		local statelv = 1
		local time_Bei = math.random ( 1 , 60 )
		local statetime = time_Bei * 60
		AddState( role , role , STATE_SBBLGZ , statelv , statetime )
		SystemNotice ( role , "�ܵ�����ף�����ڱ�������"..time_Bei.."���ӵ���������" )
	elseif b == 3 then
		GiveItem ( role , 0 , 1092 , 1 , 0 )							---����ͼ
	end
end

--������ǩ

function ShangQian_Money ( role )
	local a = math.random ( 1 , 100 )
	local i = 0
	local b = 0
	local qian = { }
	qian [0] = 20
	qian [1] = 60
	qian [2] = 100
--	qian [3] = 80
--	qian [4] = 100

	for i = 0 , 2 , 1 do
		if qian [i] >= a then
			b = i + 1
			break
		end
	end
	
	if b == 1 then
		local GiveMoneyNum = 0.001 * math.random ( 1 , 9 )
		local GiveMoneyNum_Notice = GiveMoneyNum * 100
		SystemNotice ( role , "���������Ͻ�Ǯ"..GiveMoneyNum_Notice.."���Ķ����Ǯ" )
		QianAddMoney ( role , 1 , GiveMoneyNum )
	elseif b == 2 then
		local Give_Money = 1000 * math.random ( 1 , 15 )
		QianAddMoney ( role , 2 , Give_Money )
	elseif b == 3 then
		local hp_role = Hp( role )
		local hp_dmg = math.floor ( hp_role * 0.9 )
		local Give_Money = math.random ( 10000 , 20000 )
		Hp_Endure_Dmg ( role , hp_dmg )
		QianAddMoney ( role , 2 , Give_Money )
		SystemNotice ( role , "��Ǯ�ҵ��ˣ���Щɥ����˭�ӵ�Ǯ....." )
	end
end

--������ǩ

function ZhongQian_Money ( role )
	SystemNotice ( role , "����������������ʲôҲû�з���....." )
end


--������ǩ

function XiaQian_Money ( role )
	local a = math.random ( 1 , 100 )
	local i = 0
	local b = 0
	local qian = { }
	qian [0] = 20
	qian [1] = 100
--	qian [2] = 60
--	qian [3] = 80
--	qian [4] = 100

	for i = 0 , 1 , 1 do
		if qian [i] >= a then
			b = i + 1
			break
		end
	end

	if b == 1 then
		local Give_Money = math.random ( 100 , 5000 )
		Give_Money = Give_Money * -1
		QianAddMoney ( role , 2 , Give_Money )
	elseif b == 2 then
		local GiveMoneyNum = 0.001 * math.random ( 1 , 9 )
		local GiveMoneyNum_Notice = GiveMoneyNum * 100
		SystemNotice ( role , "������ʧ���Ͻ�Ǯ"..GiveMoneyNum_Notice.."�������Ľ�Ǯ" )
		GiveMoneyNum = GiveMoneyNum * -1
		QianAddMoney ( role , 1 , GiveMoneyNum )
	end
	
end

--��������ǩ

function XiaXiaQian_Money ( role )
	local a = math.random ( 1 , 100 )
	local i = 0
	local b = 0
	local qian = { }
	qian [0] = 20
	qian [1] = 100
--	qian [2] = 60
--	qian [3] = 80
--	qian [4] = 100

	for i = 0 , 1 , 1 do
		if qian [i] >= a then
			b = i + 1
			break
		end
	end

	if b == 1 then
		local Give_Money = math.random ( 10000 , 30000 )
		Give_Money = Give_Money * -1
		QianAddMoney ( role , 2 , Give_Money )
	elseif b == 2 then
		local GiveMoneyNum = 0.01 * math.random ( 1 , 2 )
		local GiveMoneyNum_Notice = GiveMoneyNum * 100
		SystemNotice ( role , "������ʧ���Ͻ�Ǯ"..GiveMoneyNum_Notice.."�������Ľ�Ǯ" )
		GiveMoneyNum = GiveMoneyNum * -1
		QianAddMoney ( role , 1 , GiveMoneyNum )
	end
end

--��ҵ����ǩ

function ShangShangQian_Work ( role )
	local a = math.random ( 1 , 100 )
	local i = 0
	local b = 0
	local qian = { }
	qian [0] = 20
	qian [1] = 50
	qian [2] = 100
--	qian [3] = 80
--	qian [4] = 100

	for i = 0 , 2 , 1 do
		if qian [i] >= a then
			b = i + 1
			break
		end
	end

	if b == 1 then
		local GiveExpNum = 0.01 * math.random ( 1 , 5 )
		local GiveExpNum_Notice = GiveExpNum * 100
		SystemNotice ( role , "������"..GiveExpNum_Notice.."���ľ���" )
		QianAddExp ( role , GiveExpNum , 1 )							----�����飬����2Ϊ��ǰ�ȼ�����İٷֱȻ�������֣�����3Ϊ����(1Ϊ������,2Ϊ������)
	elseif b == 2 then
		local statelv = 1
		local time_Bei = math.random ( 1 , 60 )
		local statetime = time_Bei * 60
		AddState( role , role , STATE_SBJYGZ , statelv , statetime )
		SystemNotice ( role , "�ܵ�����ף�����ڱ�������"..time_Bei.."���Ӿ����ȡ������" )
	elseif b == 3 then
		QianAddState ( role , 1 )								-----��״̬��1 Ϊ����ǩ״̬��2Ϊ��ǩ״̬
	end
end

--��ҵ��ǩ

function ShangQian_Work ( role )
	local a = math.random ( 1 , 100 )
	local i = 0
	local b = 0
	local qian = { }
	qian [0] = 100
--	qian [1] = 40
--	qian [2] = 60
--	qian [3] = 80
--	qian [4] = 100

	for i = 0 , 0 , 1 do
		if qian [i] >= a then
			b = i + 1
			break
		end
	end

	if b == 1 then
		local Lv_role = Lv ( role )
		local GiveExpNum = Lv_role * math.random ( 50 , 500 )
		QianAddExp ( role , GiveExpNum , 2 )
	end
end

--��ҵ��ǩ

function ZhongQian_Work ( role )
	SystemNotice ( role , "����������������ʲôҲû�з���....." )
end

--��ҵ��ǩ

function XiaQian_Work ( role )
	local a = math.random ( 1 , 100 )
	local i = 0
	local b = 0
	local qian = { }
	qian [0] = 100
--	qian [1] = 40
--	qian [2] = 60
--	qian [3] = 80
--	qian [4] = 100

	for i = 0 , 0 , 1 do
		if qian [i] >= a then
			b = i + 1
			break
		end
	end

	if b == 1 then
		local Lv_role = Lv ( role )
		local GiveExpNum = Lv_role * math.random ( 50 , 500 )
		GiveExpNum = GiveExpNum * -1
		QianAddExp ( role , GiveExpNum , 2 )
	end
end

--��ҵ����ǩ

function XiaXiaQian_Work ( role )
	local a = math.random ( 1 , 100 )
	local i = 0
	local b = 0
	local qian = { }
	qian [0] = 30
	qian [1] = 70
	qian [2] = 100
--	qian [3] = 80
--	qian [4] = 100

	for i = 0 , 2 , 1 do
		if qian [i] >= a then
			b = i + 1
			break
		end
	end

	if b == 1 then
		local GiveExpNum = 0.01 * math.random ( 1 , 2 )
		local GiveExpNum_Notice = GiveExpNum * 100
		SystemNotice ( role , "������ʧ"..GiveExpNum_Notice.."���ľ���" )
		GiveExpNum = GiveExpNum * -1
		QianAddExp ( role , GiveExpNum , 1 )							----�����飬����2Ϊ��ǰ�ȼ�����İٷֱȻ�������֣�����3Ϊ����(1Ϊ������,2Ϊ������)
	elseif b == 2 then
		local Lv_role = Lv ( role )
		local GiveExpNum = Lv_role * math.random ( 100 , 1000 )
		GiveExpNum = GiveExpNum * -1
		QianAddExp ( role , GiveExpNum , 2 )
	elseif b == 3 then
		local hp = Hp ( role )
		local hp_dmg = math.floor ( hp * 1.1 )
		Hp_Endure_Dmg ( role , hp_dmg )
		SystemNotice ( role , "��Ʒ����,��Ȼ��������...." )
	end
end

--�鵽Ǯ

function QianAddMoney ( role , Type , Num )
	if Type == 1 then
		local Money_Have = GetChaAttr ( role , ATTR_GD )
		local Money_Add = Money_Have * Num

		Money_Have = Money_Have + Money_Add
		Money_Add = math.floor( Money_Add )

		Money_Have = math.floor ( Money_Have )

		SetCharaAttr ( Money_Have , role , ATTR_GD )
		ALLExAttrSet( role )
		
		if Money_Add > 0 then
			Num = Num * 100
			SystemNotice ( role , "�����٣��������Ǯ��"..Num.." �����ֽ�" )
			if Money_Add >= 200000 then
				local cha_name = GetChaDefaultName ( role )
				Notice ( cha_name.."��ǩʱ������"..Money_Add.."���ֽ�" )
			end
		elseif Money_Add < 0 then
			Num = Num * -100
			SystemNotice ( role , "��������ʧ����Ǯ��"..Num.."�����ֽ�" )
		end
	
	elseif Type == 2 then
		local Money_Have = GetChaAttr ( role , ATTR_GD )
		local Money_Add = Num

		Money_Have = Money_Have + Money_Add

		if Money_Have < 0 then
			Money_Have = 0
		end

		SetCharaAttr ( Money_Have , role , ATTR_GD )
		ALLExAttrSet( role )
		if Num > 0 then
			SystemNotice ( role , "��"..Num.."���ֽ�" )
			if Num >= 200000 then
				local cha_name = GetChaDefaultName ( role )
				Notice ( cha_name.."��ǩʱ������"..Num.."���ֽ�" )
			end
		elseif Num < 0 then
			Num = Num * -1
			SystemNotice ( role , "������������"..Num.."���ֽ�" )
		end
	end
end

--�鵽����

function QianAddExp ( role , Num , type )
	local lv = GetChaAttr( role, ATTR_LV )
	local exp = Exp(role) 
	local nlexp = GetChaAttrI ( role , ATTR_NLEXP ) 
	local clexp = GetChaAttrI ( role , ATTR_CLEXP )
	local ThisLvexp = nlexp - clexp
	local ExpGet = ThisLvexp * Num
	
	if type == 2 then
		ExpGet = Num
		if lv >= 80 then
			ExpGet = math.floor ( ExpGet / 50 )
		end
	end

	ExpGet = math.floor ( ExpGet )

	exp = exp + ExpGet
	
	if exp > nlexp then
		exp = nlexp + math.floor ( ( exp - nlexp ) / 50 )
	end
	
	if exp < 0 then
		exp = 0
	end

	
	SetChaAttrI( role , ATTR_CEXP , exp )

	if lv >= 80 then
			ExpGet = ExpGet * 50
	end

	if ExpGet > 0 then
		
		SystemNotice ( role , "����Ļ��"..ExpGet.."����" )
		if ExpGet >= 200000 then
				local cha_name = GetChaDefaultName ( role )
				Notice ( cha_name.."��ǩʱ������"..ExpGet.."�ľ���" )
		end
	elseif ExpGet < 0 then
		ExpGet = ExpGet * -1
		SystemNotice ( role , "��ʧ����"..ExpGet.."����" )
	end

end

--�鵽״̬

function QianAddState ( role , Type )

	local State = { }
	local StateName = { }

	State [0] = STATE_PKZDYS
	State [1] = STATE_PKSFYS
	State [2] = STATE_PKMNYS
	State [3] = STATE_PKJZYS
	State [4] = STATE_PKKBYS
	
	StateName [0] = "������"
	StateName [1] = "������"
	StateName [2] = "���HP"
	StateName [3] = "������"
	StateName [4] = "�����ٶ�"

	local i = math.random ( 0 , 4 )
	local statelv = 0
	local TimeRange = 0
	if Type == 1 then
		TimeRange = 60
	elseif Type == 2 then
		TimeRange = 30
	end
	local statetime = math.random ( 1 , TimeRange )
	statetime = statetime * 60
	
	statelv = 10
	AddState ( role , role , State[i] , statelv , statetime ) 
	SystemNotice ( 	role , "�о���"..StateName[i].."������" )
	
end


--��ͼ������

function GiveGoldenMapItem ( role )
	local CheckRandom = math.random ( 1,100 )
	if CheckRandom >= 1 and CheckRandom <= 23 then
		local GiveMoney = 1000 * math.random ( 1, 20 )
		SystemNotice ( role , "�ڵ������ı��أ����"..GiveMoney.."��Ǯ" )
		AddMoney ( role , 0 , GiveMoney )
	elseif CheckRandom > 23 and CheckRandom <= 28 then
		XianJing ( role , 1 )
	elseif CheckRandom > 28 and CheckRandom <= 33 then
		XianJing ( role , 2 )
	elseif CheckRandom > 33 and CheckRandom <= 40 then
		SystemNotice ( role , "ͻȻ�о�������ת����֪��������ʲô�ط���" )
		MapRandomtele ( role )
	else
		SystemNotice ( role , "��ϲ���ڵ��˺������������ı���" )
		local item_type = BaoXiang_CBTBOX
		local item_type_rad = BaoXiang_CBTBOX_Rad 
		local item_type_count = BaoXiang_CBTBOX_Count 
		local maxitem = BaoXiang_CBTBOX_Mxcount						-- �ս���
		local item_quality = BaoXiang_CBTBOX_Qua
		local General = 0  
		local ItemId = 0 
		local Item_CanGet = GetChaFreeBagGridNum ( role )
	
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
		GoodItem[0]	=	0110
		GoodItem[1]	=	0112
		GoodItem[2]	=	0114
		GoodItem[3]	=	0116
		GoodItem[4]	=	0118
		GoodItem[5]	=	0120
		GoodItem[6]	=	0151
		GoodItem[7]	=	0396
		GoodItem[8]	=	0398
		GoodItem[9]	=	0400
		GoodItem[10]	=	0402
		GoodItem[11]	=	0404
		GoodItem[12]	=	0406
		GoodItem[13]	=	0408
		GoodItem[14]	=	0411
		GoodItem[15]	=	0413
		GoodItem[16]	=	0588
		GoodItem[17]	=	0590
		GoodItem[18]	=	0592
		GoodItem[19]	=	0594
		GoodItem[20]	=	0596
		GoodItem[21]	=	0598
		GoodItem[22]	=	0600
		GoodItem[23]	=	0602
		GoodItem[24]	=	0748
		GoodItem[25]	=	0750
		GoodItem[26]	=	0752
		GoodItem[27]	=	0754
		GoodItem[28]	=	0756
		GoodItem[29]	=	0758
		GoodItem[30]	=	0760
		GoodItem[31]	=	0824
		GoodItem[32]	=	0860
		GoodItem[33]	=	0861
		GoodItem[34]	=	0862
		GoodItem[35]	=	0863

		local Good_C = 0
		for Good_C = 0 , 35 , 1 do
			if ItemId == GoodItem[Good_C] then
				local itemname = GetItemName ( ItemId ) 
				local cha_name = GetChaDefaultName ( role ) 
				local message = cha_name.."�ڱ�ʱ��ϲ�ػ��"..itemname  
				Notice ( message )
			end
		end
	end
				

end
------���ձȺ����ر�ͼ������
function GiveGoldenMapItem_JLB ( role )
	local CheckRandom = math.random ( 1,100 )
	local x, y = GetChaPos(role)
	local lv= GetChaAttr(role, ATTR_LV) 
	local a=math.floor ( lv / 5 ) + 826
	local b=math.floor ( lv / 5 ) + 828
	local monserID=math.random(a,b)				--------����ر�ͼ��829��836
	if CheckRandom >= 1 and CheckRandom <= 20 then
		local GiveMoney = 10000 * math.random ( 1, 20 )
		SystemNotice ( role , "�ڵ����ձȺ����ı��أ����"..GiveMoney.."��Ǯ" )
		AddMoney ( role , 0 , GiveMoney )
	elseif CheckRandom > 20 and CheckRandom <= 24 then
		XianJing ( role , 1 )
	elseif CheckRandom > 24 and CheckRandom <= 28 then
		XianJing ( role , 2 )
	elseif CheckRandom > 28 and CheckRandom <= 33 then
		SystemNotice ( role , "ͻȻ�о�������ת����֪��������ʲô�ط���" )
		MapRandomtele ( role )
	elseif CheckRandom > 33 and CheckRandom <= 40 then
		SystemNotice ( role , "���ã��������ˣ����˷Ź���������......" )
		local new1 = CreateCha(monserID, x, y, 145, 30)
		SetChaLifeTime(new1, 90000)
	else
		SystemNotice ( role , "��ϲ���ڵ��˺������������ı���" )
		local item_type = BaoXiang_JLBCBTBOX
		local item_type_rad = BaoXiang_JLBCBTBOX_Rad 
		local item_type_count = BaoXiang_JLBCBTBOX_Count 
		local maxitem = BaoXiang_JLBCBTBOX_Mxcount						-- �ս���
		local item_quality = BaoXiang_JLBCBTBOX_Qua
		local General = 0  
		local ItemId = 0 
		local Item_CanGet = GetChaFreeBagGridNum ( role )
	
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
		GoodItem[0]	=	0110
		GoodItem[1]	=	0112
		GoodItem[2]	=	0114
		GoodItem[3]	=	0116
		GoodItem[4]	=	0118
		GoodItem[5]	=	0120
		GoodItem[6]	=	0151
		GoodItem[7]	=	0396
		GoodItem[8]	=	0398
		GoodItem[9]	=	0400
		GoodItem[10]	=	0402
		GoodItem[11]	=	0404
		GoodItem[12]	=	0406
		GoodItem[13]	=	0408
		GoodItem[14]	=	0411
		GoodItem[15]	=	0413
		GoodItem[16]	=	0588
		GoodItem[17]	=	0590
		GoodItem[18]	=	0592
		GoodItem[19]	=	0594
		GoodItem[20]	=	0596
		GoodItem[21]	=	0598
		GoodItem[22]	=	0600
		GoodItem[23]	=	0602
		GoodItem[24]	=	0748
		GoodItem[25]	=	0750
		GoodItem[26]	=	0752
		GoodItem[27]	=	0754
		GoodItem[28]	=	0756
		GoodItem[29]	=	0758
		GoodItem[30]	=	0760
		GoodItem[31]	=	0824
		GoodItem[32]	=	0860
		GoodItem[33]	=	0861
		GoodItem[34]	=	0862
		GoodItem[35]	=	0863

		local Good_C = 0
		for Good_C = 0 , 35 , 1 do
			if ItemId == GoodItem[Good_C] then
				local itemname = GetItemName ( ItemId ) 
				local cha_name = GetChaDefaultName ( role ) 
				local message = cha_name.."�ڱ�ʱ��ϲ�ػ��"..itemname  
				Notice ( message )
			end
		end
	end
				

end

--�������

function CheckGetMapPos ( role , pos_x , pos_y , MapName )
--	SystemNotice ( role , "CheckPCheckPos" )
	local Cha_Boat = GetCtrlBoat ( role )
	local ChaIsBoat = 0
	if Cha_Boat ~= nil then
		role = Cha_Boat
	end

	local Cha_pos_x , Cha_pos_y = GetChaPos ( role )
	local map_name = GetChaMapName ( role )

	local Cha_x_min = pos_x * 100 - 400
	local Cha_x_max = pos_x * 100 + 400
	local Cha_y_min = pos_y * 100 - 400
	local Cha_y_max = pos_y * 100 + 400

	if map_name ~= MapName then
--		SystemNotice ( role , "map_name"..map_name)
--		SystemNotice ( role , "MapName"..MapName )
--		SystemNotice ( role , "mapname Error" )
		return 0 
	end 

	if Cha_pos_x < Cha_x_min or Cha_pos_x > Cha_x_max then
	
		return 0
	end

	if Cha_pos_y < Cha_y_min or Cha_pos_y > Cha_y_max then
		return 0
	end

	return 1
end
	
--��������

---���---------------------

function SuanmingTeshu_Money ( role )
	local a = CheckSuanmingTypeTeshu ( role )			--����õ�ʲôǩ
	if a == 1 then
		SystemNotice ( role , "���˵�ͷ���õ�����ǩ" )
		ShangShangQianTeshu_Money ( role )
	elseif a == 2 then
		SystemNotice ( role , "���������õ���ǩ" )
		ShangQianTeshu_Money ( role )
	elseif a == 3 then
		ZhongQian_Money ( role )
--		SystemNotice ( role , "������������...����ʲô��û����" )

	end
end

---����ҵ-------------------

function SuanmingTeshu_Work ( role )
	local a = CheckSuanmingTypeTeshu ( role )
	if a == 1 then
		SystemNotice ( role , "���˵�ͷ���õ�����ǩ" )
		ShangShangQianTeshu_Work ( role )
	elseif a == 2 then
		SystemNotice ( role , "���������õ���ǩ" )
		ShangQianTeshu_Work ( role )
	elseif a == 3 then
		ZhongQian_Work ( role )
--		SystemNotice ( role , "������������...����ʲô��û����" )
	end
end

--������
function CheckSuanmingTypeTeshu ( role )
	local a = math.random ( 1 , 100 )
	local i = 0
	local b = 0
	local qian = { }
	qian [0] = 30
	qian [1] = 80
	qian [2] = 100
	
	for i = 0 , 2 , 1 do
		if qian [i] >= a then
			b = i + 1
			break
		end
	end

	return b

end

--�����������ǩ

function ShangShangQianTeshu_Money ( role )
	local a = math.random ( 1 , 100 )
	local i = 0
	local b = 0
	local qian = { }
	qian [0] = 5
	qian [1] = 60
	qian [2] = 100
--	qian [3] = 80
--	qian [4] = 100

	for i = 0 , 2 , 1 do
		if qian [i] >= a then
			b = i + 1
			break
		end
	end

	if b == 1 then
		local GiveMoneyNum = 10000 * math.random ( 10 , 100 )
		QianAddMoney ( role , 2 , GiveMoneyNum )							----��Ǯ��1Ϊ��������2Ϊ���̶���ֵ
	elseif b == 2 then
		local statelv = 1
		local time_Bei = math.random ( 1 , 60 )
		local statetime = time_Bei * 60
		AddState( role , role , STATE_SBBLGZ , statelv , statetime )
		SystemNotice ( role , "�ܵ�����ף�����ڱ�������"..time_Bei.."���ӵ���������" )
	elseif b == 3 then
		GiveItem ( role , 0 , 1092 , 1 , 0 )							---����ͼ
	end
end

--���������ǩ

function ShangQianTeshu_Money ( role )
	local a = math.random ( 1 , 100 )
	local i = 0
	local b = 0
	local qian = { }
	qian [0] = 60
	qian [1] = 100
--	qian [2] = 60
--	qian [3] = 80
--	qian [4] = 100

	for i = 0 , 1 , 1 do
		if qian [i] >= a then
			b = i + 1
			break
		end
	end
	
	if b == 1 then
		local Give_Money = 1000 * math.random ( 1 , 20 )
		QianAddMoney ( role , 2 , Give_Money )
	elseif b == 2 then
		local hp = Hp ( role )
		local hp_dmg = math.floor ( hp * 0.9 )
		local Give_Money = math.random ( 10000 , 30000 )
		Hp_Endure_Dmg ( role , hp_dmg )
		QianAddMoney ( role , 2 , Give_Money )
		SystemNotice ( role , "��Ǯ�ҵ��ˣ���Щɥ����˭�ӵ�Ǯ....." )
	end
end


--������ҵ����ǩ

function ShangShangQianTeshu_Work ( role )
	local a = math.random ( 1 , 100 )
	local i = 0
	local b = 0
	local qian = { }
	qian [0] = 30
	qian [1] = 60
	qian [2] = 90
	qian [3] = 100
--	qian [4] = 100

	for i = 0 , 3 , 1 do
		if qian [i] >= a then
			b = i + 1
			break
		end
	end

	if b == 1 then
		local Lv_role = Lv ( role )
		local GiveExpNum = ( Lv_role * Lv_role * math.random ( 10 , 100 ) ) * ( 1 / math.max ( 1 , ( 50 - Lv_role ) ) )
		QianAddExp ( role , GiveExpNum , 2 )							
	elseif b == 2 then
		local statelv = 1
		local time_Bei = math.random ( 1 , 60 )
		local statetime = time_Bei * 60
		AddState( role , role , STATE_SBJYGZ , statelv , statetime )
		SystemNotice ( role , "�ܵ�����ף�����ڱ�������"..time_Bei.."���Ӿ����ȡ������" )
	elseif b == 3 then
		QianAddState ( role , 1 )								-----��״̬��1 ����ǩ״̬��2��ǩ״̬
	elseif b == 4 then
		QianAddState ( role , 1 )								-----��״̬��1 ����ǩ״̬��2��ǩ״̬
		--QianAddStatePoint ( role , 1 )
	end
end

--������ҵ��ǩ

function ShangQianTeshu_Work ( role )
	local a = math.random ( 1 , 100 )
	local i = 0
	local b = 0
	local qian = { }
	qian [0] = 50
	qian [1] = 100
--	qian [2] = 60
--	qian [3] = 80
--	qian [4] = 100

	for i = 0 , 1 , 1 do
		if qian [i] >= a then
			b = i + 1
			break
		end
	end

	if b == 1 then
		local Lv_role = Lv ( role )
		local GiveExpNum = Lv_role * Lv_role * math.random ( 5 , 50 ) * ( 1 / math.max ( 1 , ( 50 - Lv_role ) ) )
		QianAddExp ( role , GiveExpNum , 2 )
	elseif b == 2 then
		QianAddState ( role , 2 )
	end
end

--�������Ե�
function QianAddStatePoint ( role , Num )
	local CheckNum = CheckStatePointHasGet ( role )
	local a = 1 / math.pow ( 2 , ( CheckNum - 1 ) )
	local check = Percentage_Random ( a )
	if check == 1 then
		local attr_ap = Attr_ap( role )
		local ap_extre = Num
		attr_ap = attr_ap + ap_extre 
		SetCharaAttr( attr_ap, role, ATTR_AP )
		local cha_name = GetChaDefaultName ( role )
		Notice ( cha_name.."��ǩʱ������1������" )
		LG ( "Add_StatePoint" , cha_name.."������Ե�"..Num.."��" )
	else
		local Lv_role = Lv ( role )
		local GiveExpNum = Lv_role * math.random ( 100 , 1000 )
		QianAddExp ( role , GiveExpNum , 2 )
	end
end

--�������ɫ���Ե�
function CheckStatePointHasGet ( role )
	local str = GetChaAttr( role , ATTR_BSTR )
	local con = GetChaAttr( role , ATTR_BCON )
	local agi = GetChaAttr( role , ATTR_BAGI )
	local dex = GetChaAttr( role , ATTR_BDEX )
	local sta = GetChaAttr( role , ATTR_BSTA )
	local ap = GetChaAttr( role , ATTR_AP )
	local StatePointTotal_Have = str + con + agi + dex + sta + ap - 25
	local Lv_role = Lv ( role )
	local StatePointTotal = 3 + Lv_role + math.floor ( Lv_role / 10 ) * 4 + math.max ( 0 , ( Lv_role - 59 ) )
	local Check = StatePointTotal_Have - StatePointTotal
	return Check
end

--ȡ��ͼ����

function GetTheMapPos ( role , type )
--	SystemNotice( role ,"GetTheMapPos" )
	local MapList = { }
	
	MapList [0] = "NoMap"
	MapList [1] = "garner"
	MapList [2] = "magicsea"
	MapList [3] = "darkblue"

	local PosDateNum = 8
	local PosDateMap = {}
	local PosDateMax_X = {}
	local PosDateMin_X = {}
	local PosDateMax_Y = {}
	local PosDateMin_Y = {}
	
	PosDateMap [0]	=	1
	PosDateMap [1]	=	1
	PosDateMap [2]	=	1
	PosDateMap [3]	=	1
	PosDateMap [4]	=	2
	PosDateMap [5]	=	3
	PosDateMap [6]	=	1
	PosDateMap [7]	=	2
	PosDateMap [8]	=	1

	PosDateMax_X [0]	=	800
	PosDateMax_X [1]	=	940
	PosDateMax_X [2]	=	1023
	PosDateMax_X [3]	=	1012
	PosDateMax_X [4]	=	850
	PosDateMax_X [5]	=	2810
	PosDateMax_X [6]	=	380
	PosDateMax_X [7]	=	1420
	PosDateMax_X [8]	=	1614

	PosDateMin_X [0]	=	700
	PosDateMin_X [1]	=	840
	PosDateMin_X [2]	=	919
	PosDateMin_X [3]	=	912
	PosDateMin_X [4]	=	750
	PosDateMin_X [5]	=	2710
	PosDateMin_X [6]	=	280
	PosDateMin_X [7]	=	1320
	PosDateMin_X [8]	=	1514

	PosDateMax_Y [0]	=	1766
	PosDateMax_Y [1]	=	1350
	PosDateMax_Y [2]	=	1054
	PosDateMax_Y [3]	=	2950
	PosDateMax_Y [4]	=	3083
	PosDateMax_Y [5]	=	691
	PosDateMax_Y [6]	=	1725
	PosDateMax_Y [7]	=	3000
	PosDateMax_Y [8]	=	2695

	PosDateMin_Y [0]	=	1666
	PosDateMin_Y [1]	=	1250
	PosDateMin_Y [2]	=	1017
	PosDateMin_Y [3]	=	2850
	PosDateMin_Y [4]	=	2982
	PosDateMin_Y [5]	=	591
	PosDateMin_Y [6]	=	1675
	PosDateMin_Y [7]	=	2900
	PosDateMin_Y [8]	=	2615


	local PosDateGet = math.random ( 0 , PosDateNum )
--	SystemNotice ( role , "PosDateGet"..PosDateGet )

	local Pos_Map = PosDateMap[ PosDateGet ]
--	SystemNotice ( role , "Pos_Map"..Pos_Map )

	local Pos_X = math.random ( PosDateMin_X [PosDateGet] , PosDateMax_X [PosDateGet] )
--	SystemNotice ( role , "Pos_X"..Pos_X )
	local Pos_Y = math.random ( PosDateMin_Y [PosDateGet] , PosDateMax_Y [PosDateGet] )
--	SystemNotice ( role , "Pos_Y"..Pos_Y )
	
	return Pos_X , Pos_Y , Pos_Map
end
--ȡ���ձȵ�ͼ��ͼ����
function GetTheMapPos_JLB ( role , type )
	local MapList = { }
	MapList [0] = "NoMap"
	MapList [1] = "jialebi"

	local PosDateNum = 3
	local PosDateMap = {}
	local PosDateMax_X = {}
	local PosDateMin_X = {}
	local PosDateMax_Y = {}
	local PosDateMin_Y = {}
	
	PosDateMap [0]	=	1
	PosDateMap [1]	=	1
	PosDateMap [2]	=	1
	PosDateMap [3]	=	1

	PosDateMax_X [0]	=	476 
	PosDateMax_X [1]	=	460 
	PosDateMax_X [2]	=	469 
	PosDateMax_X [3]	=	477 

	PosDateMin_X [0]	=	466
	PosDateMin_X [1]	=	452
	PosDateMin_X [2]	=	462
	PosDateMin_X [3]	=	470

	PosDateMax_Y [0]	=	1052
	PosDateMax_Y [1]	=	980
	PosDateMax_Y [2]	=	1000
	PosDateMax_Y [3]	=	1048

	PosDateMin_Y [0]	=	1000 
	PosDateMin_Y [1]	=	954  
	PosDateMin_Y [2]	=	980  
	PosDateMin_Y [3]	=	1036 

----596,609
----629,953
	local PosDateGet = math.random ( 0 , PosDateNum )
	local Pos_Map = PosDateMap[ PosDateGet ]
	local Pos_X = math.random ( PosDateMin_X [PosDateGet] , PosDateMax_X [PosDateGet] )
	local Pos_Y = math.random ( PosDateMin_Y [PosDateGet] , PosDateMax_Y [PosDateGet] )
	return Pos_X , Pos_Y , Pos_Map
end



--����

function XianJing ( role ,type )
	if type == 1 then
		local hp = Hp ( role )
		local hp_dmg = math.floor ( hp * 0.9 )
		Hp_Endure_Dmg ( role , hp_dmg )
		SystemNotice ( role , "��С�������������µİ�������������" ) 
	elseif type == 2 then
		local hp = Hp ( role )
		local hp_dmg = math.floor ( hp * 0.3 )
		Hp_Endure_Dmg ( role , hp_dmg )
		SystemNotice ( role , "��С�������������µĶ����������ӵÿ죬û�д�" )
	end
end

function MapRandomtele ( role )

	local Birth ={}
	Birth[0]	=	"������"
	Birth[1]	=	"������"
	Birth[2]	=	"ɳᰳ�"
	Birth[3]	=	"���Ǳ�"
	Birth[4]	=	"�����ӵ²���վ"
	Birth[5]	=	"����ɭ�ֲ���վ"
	Birth[6]	=	"�Ͽ󲹸�վ"
	Birth[7]	=	"���￩������վ"
	Birth[8]	=	"�߶�ŵ����վ"
	Birth[9]	=	"���ò���վ"
	Birth[10]	=	"ɳȪ����վ"
	Birth[11]	=	"�Ͳ�����վ"
	Birth[12]	=	"��������վ"
	Birth[13]	=	"������˹����վ"
	Birth[14]	=	"����Ӫ�ز���վ"
	Birth[15]	=	"��������վ"
	Birth[16]	=	"���絺"
	Birth[17]	=	"�����"
	Birth[18]	=	"ѩ����"
	Birth[19]	=	"��ѩ��"
	Birth[20]	=	"��ɳ��"
	Birth[21]	=	"�氮��"
	Birth[22]	=	"���˵�"
	Birth[23]	=	"������"
	Birth[23]	=	"����������"
	Birth[24]	=	"ʥѩɽ"
	Birth[25]	=	"����ɭ�ֲ���վ"
	Birth[26]	=	"ɳȪ����վ"
	Birth[27]	=	"��������վ"
	Birth[28]	=	"��į֮�����"
	Birth[29]	=	"ɳ�����"
	Birth[30]	=	"�Ͽ�2��"
	Birth[31]	=	"����2��"
	Birth[32]	=	"����3��"
	Birth[33]	=	"�Ͽ�1��"
	Birth[34]	=	"��į֮��2"
	Birth[35]	=	"��į֮��3"
	Birth[36]	=	"��į֮��4"
	Birth[37]	=	"��į֮��5"
	Birth[38]	=	"��į֮��6"
	Birth[39]	=	"�����ƹ�"

	local PosRandom = math.random ( 0 , 39 )
	DelBagItem ( role , 1093 , 1 )
	MoveCity(role, Birth[PosRandom] )

end


--�����ߵ���Ч��

function check_item_valid ( role , Item )
	local Item_type = GetItemType ( Item )
	local Item_URE = GetItemAttr ( Item , ITEMATTR_URE )

	if Item_type <= 29 or Item_type == 59 then
		if Item_URE ~= 0 and Item_URE <= 49 then
			return 0
		else
			return 1
		end
	end
	return 1
end


--��ɫ��ʱ��
--��������ɫ���󣬵���Ƶ�ʣ��룩�����ô���
--����ֵ����
function cha_timer(role, freq, time) 
	local resume_freq = 5 
	local now_tick = GetChaParam(role, 1) 
	local is_role_living = -1

	SetChaParam(role, 1, now_tick + freq * time) 
	
	--hp�ظ�
	if math.mod(now_tick, resume_freq) == 0 and now_tick > 0 then 
		if is_role_living == -1 then
			is_role_living = IsChaLiving(role)
		end
		if is_role_living == 1 then 
			Resume(role)
		end
		----�̻��;�
		local el_nj = GetEquipItemP(role,9)
		local el_nj_ID= GetItemID (el_nj)
		--SystemNotice ( role , "el_nj_ID=="..el_nj_ID )
		if el_nj_ID==3669 then
			local ure = GetItemAttr(el_nj, ITEMATTR_URE)
			--SystemNotice ( role , "ure=="..ure )
			local ure_resume = 1000 
			ure = ure - ure_resume 
			--SystemNotice ( role , "ure1=="..ure )
			SetItemAttr(el_nj, ITEMATTR_URE, ure )
			SynChaKitbag(role,13)
			if ure <1000 then 
			RemoveChaItem ( role , 3669 , 1 , 1 , -1, 2 , 1  )
			end 
		end
		local Max_xl = GetEquipItemP(role,5)
		local Max_xl_ID= GetItemID (Max_xl)
		--SystemNotice ( role , "Max_xl_ID=="..Max_xl_ID )
		if Max_xl_ID==2980 then
			local statelv = 1
			local statetime = 1
			AddState ( role , role , STATE_ILOVEDAD , statelv , statetime ) 
--			SystemNotice ( role , "��ܰ����ף���Ҳ�ܰ���" )
		end
		local Dina_xl = GetEquipItemP(role,8)
		local Dina_xl_ID= GetItemID (Dina_xl)
		local Dina_x2 = GetEquipItemP(role,2)
		local Dina_x2_ID= GetItemID (Dina_x2)
		if Dina_xl_ID==2577 and Dina_x2_ID==2817 then
			local statelv = 1
			local statetime = 3600
			AddState ( role , role , STATE_BBRING1 , statelv , statetime ) 
		elseif Dina_xl_ID==2578 and Dina_x2_ID==2820 then
			local statelv = 1
			local statetime = 3600
			AddState ( role , role , STATE_BBRING2 , statelv , statetime ) 
		elseif Dina_xl_ID==2579 and Dina_x2_ID==2823 then
			local statelv = 1
			local statetime = 3600
			AddState ( role , role , STATE_BBRING3 , statelv , statetime ) 
		elseif Dina_xl_ID==2580 and Dina_x2_ID==2826 then
			local statelv = 1
			local statetime = 3600
			AddState ( role , role , STATE_BBRING4 , statelv , statetime ) 
		elseif Dina_xl_ID==2581 and Dina_x2_ID==2832 then
			local statelv = 1
			local statetime = 3600
			AddState ( role , role , STATE_BBRING5 , statelv , statetime ) 
		elseif Dina_xl_ID==2582 and Dina_x2_ID==2829 then
			local statelv = 1
			local statetime = 3600
			AddState ( role , role , STATE_BBRING6 , statelv , statetime ) 
		else
			local statelv_bbring1 = GetChaStateLv ( role , STATE_BBRING1 )
			if statelv_bbring1~=0 then
				RemoveState ( role , STATE_BBRING1 ) 
			end
			local statelv_bbring2 = GetChaStateLv ( role , STATE_BBRING2 )
			if statelv_bbring2~=0 then
				RemoveState ( role , STATE_BBRING2 ) 
			end
			local statelv_bbring3 = GetChaStateLv ( role , STATE_BBRING3 )
			if statelv_bbring3~=0 then
				RemoveState ( role , STATE_BBRING3 ) 
			end
			local statelv_bbring4 = GetChaStateLv ( role , STATE_BBRING4 )
			if statelv_bbring4~=0 then
				RemoveState ( role , STATE_BBRING4 ) 
			end
			local statelv_bbring5 = GetChaStateLv ( role , STATE_BBRING5 )
			if statelv_bbring5~=0 then
				RemoveState ( role , STATE_BBRING5 ) 
			end
			local statelv_bbring6 = GetChaStateLv ( role , STATE_BBRING6 )
			if statelv_bbring6~=0 then
				RemoveState ( role , STATE_BBRING6 ) 
			end	
		end
-----------------------���е�����
		local Eric_XZDLL = GetEquipItemP(role,8)
		local Eric_XZDLL_ID = GetItemID (Eric_XZDLL)
		if Eric_XZDLL_ID == 5827 then
			local statelv = 1
			local statetime = 3600
			AddState ( role , role , STATE_XZDLL , statelv , statetime )
		else
			local statelv_XZDLL = GetChaStateLv ( role , STATE_XZDLL )
				if statelv_XZDLL~=0 then
					RemoveState ( role , STATE_XZDLL ) 
				end
		end
-----------------------���е�����		 
	end
--	-----------------------------------------------------����ʮ�´�բз�
--	local crab_freq = 60
--	
--	if math.mod(now_tick, crab_freq) == 0 and now_tick > 0 then 
--		local crab = GetChaItem ( role , 2 , 1  ) --ȡ��ɫ�����ڶ�����ָ��
--		local crab_ID= GetItemID (crab)				--ȡ��ָ��ĵ���ID
--		
--		if crab_ID==58 then				--�������IDΪ58 ��ô
--			local ENERGY = GetItemAttr(crab, ITEMATTR_ENERGY)			--ȡ�õ��ߵĵ�ǰ�;�
--			local ENERGY_resume = 1			--����ÿ���ӿ�ȡֵΪ1
--			if ENERGY <= 0 then
--				ENERGY = 0
--			end
--	
--			if ENERGY ==0 then			--����;�Ϊ0
--				SystemNotice ( role , "з���;���Ϊ0���뾡�쵽�����������̡���������ȡз����" )
--	 		else 					--����;ò�Ϊ0
--				ENERGY = ENERGY - ENERGY_resume  		--�ó��۳����ʵ��ֵ
--				SetItemAttr(crab, ITEMATTR_ENERGY, ENERGY )			--��ô���õ��ߵĵ�ǰ�;�Ϊ�۳����ʵ��ֵ  URE
--			end		
--		end
--	end	
------------------------------------kokora------------------------------------------
	--local Limit_HeiLong_freq = 3600*24*7 ---------�ϻ�����������
	--if math.mod(now_tick, Limit_HeiLong_freq) == 0 and now_tick > 0 then 
	--	Heilong_Star_Count=0
	--end	
	--local Limit_TeDengJiang_freq = 3600*24 ---------�ϻ����صȽ�����
	--if math.mod(now_tick, Limit_TeDengJiang_freq) == 0 and now_tick > 0 then 
	--	TeDengJiang_Star_Count=0
	--end
	--local Limit_YiDengJiang_freq = 3600 ---------�ϻ����صȽ�����
	--if math.mod(now_tick, Limit_YiDengJiang_freq) == 0 and now_tick > 0 then 
	--	YiDengJiang_Star_Count=0
	--end

	-----------------------------------------------------������
	--local Rwine_freq = 60
	
	--if math.mod(now_tick, Rwine_freq) == 0 and now_tick > 0 then 
		--local Rwine = GetChaItem ( role , 2 , 1  ) --ȡ��ɫ�����ڶ�����ָ��
		--local Rwine_ID= GetItemID (Rwine)				--ȡ��ָ��ĵ���ID
		
		--if Rwine_ID==2967 then				--�������IDΪ2967 ��ô
			--local ENERGY = GetItemAttr(Rwine, ITEMATTR_ENERGY)			--ȡ�õ��ߵĵ�ǰ�;�
			--local ENERGY_resume = 1			--����ÿ���ӿ�ȡֵΪ1
			--if ENERGY <= 0 then
				--ENERGY = 0
			--end
	
			--if ENERGY ==0 then			--����;�Ϊ0
				--SystemNotice ( role , "�������;���Ϊ0,���Ǿ���Ũ��ʱ,���õ��ϰ塤Լɪ���ǻ������." )
	 		--else 					--����;ò�Ϊ0
				--ENERGY = ENERGY - ENERGY_resume  		--�ó��۳����ʵ��ֵ
				--SetItemAttr(Rwine, ITEMATTR_ENERGY, ENERGY )			--��ô���õ��ߵĵ�ǰ�;�Ϊ�۳����ʵ��ֵ  URE
			--end		
		--end
--end

---------------------------------------------------------------------------------���200
	--[[local one_minite=60														--�趨one_miniteΪ60��
	if math.mod(now_tick, one_minite) == 0 and now_tick > 0 then            --���one_minite��now_tick��������now_tick����0
		local num_huoju=0                                          --
		local item_huoju=0	
		num_huoju = CheckBagItem( role, 5825 )
		if num_huoju==1 then
			item_huoju = GetChaItem2 ( role , 2 , 5825 )
			local item_huoju_ure=GetItemAttr(item_huoju,ITEMATTR_URE)							
			if item_huoju_ure>=50 then
				item_huoju_ure=item_huoju_ure-50
				SetItemAttr(item_huoju,ITEMATTR_URE,item_huoju_ure)
			end
		end		
	end]]

---------------------------------------------------------------------------------�Ͼɵ��¹ⱦ��60
	local one_minite=1														--�趨one_miniteΪ60��
	if math.mod(now_tick, one_minite) == 0 and now_tick > 0 then            --���one_minite��now_tick��������now_tick����0
		local num_moonbox_feijiu=0                                          --
		local item_moonbox=0	
		num_moonbox_feijiu = CheckBagItem( role, 5786 )
		if num_moonbox_feijiu==1 then
			item_moonbox = GetChaItem2 ( role , 2 , 5786 )
			local item_moonbox_ure=GetItemAttr(item_moonbox,ITEMATTR_URE)
					--SystemNotice ( role , "�Ͼɵ��¹ⱦ�еĵ�ǰ����Ϊ"..item_moonbox_ure )			
			if item_moonbox_ure>=50 then
				item_moonbox_ure=item_moonbox_ure-50
				SetItemAttr(item_moonbox,ITEMATTR_URE,item_moonbox_ure)
			end
		end		
	end
	
	---------------------------------------------------------------------------------�¾ɵ��¹ⱦ��120
	local one_minite=1														--�趨one_miniteΪ60��
	if math.mod(now_tick, one_minite) == 0 and now_tick > 0 then            --���one_minite��now_tick��������now_tick����0
		local num_moonbox_chenjiu=0                                          --
		local item_moonbox=0	
		num_moonbox_chenjiu = CheckBagItem( role, 5787 )
		if num_moonbox_chenjiu==1 then
			item_moonbox = GetChaItem2 ( role , 2 , 5787 )
			local item_moonbox_ure=GetItemAttr(item_moonbox,ITEMATTR_URE)
					--SystemNotice ( role , "�¾ɵ��¹ⱦ�еĵ�ǰ����Ϊ"..item_moonbox_ure )			
			if item_moonbox_ure>=50 then
				item_moonbox_ure=item_moonbox_ure-50
				SetItemAttr(item_moonbox,ITEMATTR_URE,item_moonbox_ure)
			end
		end		
	end
	
	---------------------------------------------------------------------------------ո�µ��¹ⱦ��180
	local one_minite=1														--�趨one_miniteΪ60��
	if math.mod(now_tick, one_minite) == 0 and now_tick > 0 then            --���one_minite��now_tick��������now_tick����0
		local num_moonbox_zhanxin=0                                          --
		local item_moonbox=0	
		num_moonbox_zhanxin = CheckBagItem( role, 5788 )
		if num_moonbox_zhanxin==1 then
			item_moonbox = GetChaItem2 ( role , 2 , 5788 )
			local item_moonbox_ure=GetItemAttr(item_moonbox,ITEMATTR_URE)
					--SystemNotice ( role , "ո�µ��¹ⱦ�еĵ�ǰ����Ϊ"..item_moonbox_ure )			
			if item_moonbox_ure>=50 then
				item_moonbox_ure=item_moonbox_ure-50
				SetItemAttr(item_moonbox,ITEMATTR_URE,item_moonbox_ure)
			end
		end		
	end
	
	---------------------------------------------------------------------------------���µ��¹ⱦ��240
	local one_minite=1														--�趨one_miniteΪ60��
	if math.mod(now_tick, one_minite) == 0 and now_tick > 0 then            --���one_minite��now_tick��������now_tick����0
		local num_moonbox_jingzhi=0                                          --
		local item_moonbox=0	
		num_moonbox_jingzhi = CheckBagItem( role, 5789 )
		if num_moonbox_jingzhi==1 then
			item_moonbox = GetChaItem2 ( role , 2 , 5789 )
			local item_moonbox_ure=GetItemAttr(item_moonbox,ITEMATTR_URE)
					--SystemNotice ( role , "���µ��¹ⱦ�еĵ�ǰ����Ϊ"..item_moonbox_ure )			
			if item_moonbox_ure>=50 then
				item_moonbox_ure=item_moonbox_ure-50
				SetItemAttr(item_moonbox,ITEMATTR_URE,item_moonbox_ure)
			end
		end		
	end
	---------------------------------------------------------------------------------׿Խ���¹ⱦ��360
	local one_minite=1														--�趨one_miniteΪ60��
	if math.mod(now_tick, one_minite) == 0 and now_tick > 0 then            --���one_minite��now_tick��������now_tick����0
		local num_moonbox_zhuoyue=0                                          --
		local item_moonbox=0	
		num_moonbox_zhuoyue = CheckBagItem( role, 5790 )
		if num_moonbox_zhuoyue==1 then
			item_moonbox = GetChaItem2 ( role , 2 , 5790 )
			local item_moonbox_ure=GetItemAttr(item_moonbox,ITEMATTR_URE)
					--SystemNotice ( role , "׿Խ���¹ⱦ�еĵ�ǰ����Ϊ"..item_moonbox_ure )			
			if item_moonbox_ure>=50 then
				item_moonbox_ure=item_moonbox_ure-50
				SetItemAttr(item_moonbox,ITEMATTR_URE,item_moonbox_ure)
			end
		end		
	end
	
----------------------------------------------------------------------------------������֮������¼����ʱ
	local juluka_freq = 60
	local energy_resume = 60
	if math.mod(now_tick, juluka_freq) == 0 and now_tick > 0 then 
		local map_name = GetChaMapName ( role )
		if map_name == "prisonisland" then
			local item_jiluka = GetChaItem( role, 2, 2)
			local item_id = GetItemID( item_jiluka )
			if item_id == 5724 then			----�ж��Ƿ�Ϊ������¼��
				local energy = GetItemAttr(item_jiluka, ITEMATTR_ENERGY)			--ȡ�õ��ߵĵ�ǰ�;�
				if energy < 0 then
					energy = 0
				elseif energy ==0 then			--����;�Ϊ0
					SystemNotice ( role , "����������������Ҽ����������������" )
				else 					--����;ò�Ϊ0
					energy = energy - energy_resume  		--�ó��۳����ʵ��ֵ
					SetItemAttr(item_jiluka, ITEMATTR_ENERGY, energy )			--��ô���õ��ߵĵ�ǰ�;�Ϊ�۳����ʵ��ֵ  URE
				end
			end
		end
	end
--------------------------------------------------------------------08��Ʒ����֮�Զ����ٹ�kokora----------------------------------------------------------------------------------
	local Item_bg = GetChaItem ( role , 2 , 1  ) --ȡ��ɫ�����ڶ�����ָ��
	local Get_Item_Type = GetItemType ( Item_bg )
	local Item_AutoSpeed = GetChaItem ( role , 2 , 2  ) --ȡ��ɫ������������ָ��
	local Item_AutoSpeed_ID = GetItemID ( Item_AutoSpeed )
	if Get_Item_Type == 59 then
	local ChaStateLv = GetChaStateLv ( role , STATE_JLJSGZ)
	--SystemNotice ( role , "ChaStateLv ="..ChaStateLv)
		if ChaStateLv > 1 then
		SystemNotice ( role , "��ʹ�ø��߼��Ĺ��ӣ����Ժ�����" )
		UseItemFailed ( role )
--		return
		end
		if ChaStateLv == 1 then
--		--SystemNotice ( role , "��ʹ�ø��߼��Ĺ��ӣ����Ժ�����" )
		UseItemFailed ( role )
--		return
		end
		if ChaStateLv == 0 and Item_AutoSpeed_ID ==5643 then
		local k = TakeItem(  role,0,5643,1)
			if k==0 then
				SystemNotice ( role , "ɾ����������ʧ�ܣ�" )
			else
			local statetime = 900
			local statelv =1
			AddState( role , role , STATE_JLJSGZ , statelv , statetime )		
				SystemNotice ( role , "�Զ����ٳɳ��ɹ���" )
			end
		end
	end

	local pet_freq = 60 
	--��������
	local Item_Elf = GetChaItem ( role , 2 , 1  )
	local Get_Elf_Type = GetItemType ( Item_Elf )

	if Get_Elf_Type == 59 then
		local ure_type = GetItemAttr( Item_Elf ,ITEMATTR_URE )       --����
		if ure_type<=49 then
			SetChaKbItemValid2(role , Item_Elf , 0 , 1)			
		else
			SetChaKbItemValid2(role , Item_Elf , 1 , 1)			
		end
		local str = GetItemAttr( Item_Elf ,ITEMATTR_VAL_STR )       --����
        	local con = GetItemAttr( Item_Elf ,ITEMATTR_VAL_CON )       --����
        	local agi = GetItemAttr( Item_Elf ,ITEMATTR_VAL_AGI )       --רע
        	local dex = GetItemAttr( Item_Elf ,ITEMATTR_VAL_DEX )       --����
        	local sta = GetItemAttr( Item_Elf ,ITEMATTR_VAL_STA )       --����
		local Lv = str + agi + dex + con + sta
		if Lv > 30 then
			pet_freq = pet_freq + ( Lv - 30 ) * 5
		end
	end
	local sklv = GetChaStateLv ( role , STATE_JLJSGZ ) -----------------������ٹ���˫���ɳ�˫������
	if  sklv~=0 then
		pet_freq =math.floor( pet_freq*0.5 )
	end	
	if math.mod(now_tick, pet_freq) == 0 and now_tick > 0 then 
		if is_role_living == -1 then
			is_role_living = IsChaLiving(role)
		end
		if is_role_living == 1 then   
			local Item_bg = GetChaItem ( role , 2 , 1  ) --ȡ��ɫ�����ڶ�����ָ��
			--local Item = Item_bg      --ȡ����ID
			local Get_Item_Type = GetItemType ( Item_bg ) --���ó���ӿڻ��Item��������
			local Item_siliao = GetChaItem ( role , 2 , 2  ) --ȡ��ɫ������������ָ��
			local Item_siliao_ID = GetItemID ( Item_siliao ) --���ó���ӿڻ��Item��������
----------------------------------------------------------------------08��Ʒ����kokora------------------------------------------------------------------------------
			local Item_numeneat = GetChaItem ( role , 2 , 2  ) --ȡ��ɫ������������ָ��
			local Item_numeneat_ID = GetItemID ( Item_numeneat ) 
			--SystemNotice ( role , "5��" )
			if Get_Item_Type == 59 then
				local Elf_URE = GetItemAttr( Item_bg ,ITEMATTR_URE )       --����
				local Num_JLone = GetItemForgeParam ( Item_bg , 1 )
				local Part1_JLone = GetNum_Part1 ( Num_JLone )	--Get Num Part 1 �� Part 7
				if Elf_URE<=2550 and Item_siliao_ID==2312 then 
					local j = TakeItem(  role,0,2312,1)
					if j==0 then
						SystemNotice ( role , "ɾ����������ʧ�ܣ�" )
					else
						Elf_URE = Elf_URE + 2500
						SystemNotice ( role , "�Զ�ιʳ�ɹ���" )
						SetItemAttr ( Item_bg , ITEMATTR_URE , Elf_URE )
					end
----------------------------------------------------------------------08��Ʒ����kokora------------------------------------------------------------------------------
				elseif  Elf_URE<=5000 and Item_numeneat_ID==5645 then 
					local j = TakeItem(  role,0,5645,1)
					if j==0 then
						SystemNotice ( role , "ɾ����������ʧ�ܣ�" )
					else
						Elf_URE = Elf_URE + 5000
						SystemNotice ( role , "�Զ�ιʳ�ɹ���" )
						SetItemAttr ( Item_bg , ITEMATTR_URE , Elf_URE )
					end
				end
				local star_num = GetItemAttr( Item_bg ,ITEMATTR_VAL_FUSIONID )       --���߾�����Ϣ���Լ�¼����һ�ʵ�����
				star_num=star_num+1
				if math.mod( star_num , 1) == 0 and Elf_URE>=50 and Part1_JLone==1 then
					GiveItemX ( role , 0 , 855 , 1 , 4 )										-------�ɳ�1���һ����Ӳ��
				end
				if math.mod( star_num , 2) == 0 and Elf_URE>=50 and Part1_JLone~=1 then
					GiveItemX ( role , 0 , 855 , 1 , 4 )										-------�ɳ�2���һ����Ӳ��
				end
				if math.mod( star_num , 30) == 0  and Elf_URE>=50 and Part1_JLone==1 then			-------�ɳ�30���һ�����ӡһ��
					GiveItemX ( role , 0 , 2588 , 1 , 4 )						
				end
				if math.mod( star_num , 60) == 0  and Elf_URE>=50 and Part1_JLone~=1 then			-------�ɳ�60���һ�����ӡһ��
					GiveItemX ( role , 0 , 2588 , 1 , 4 )						
				end
				if math.mod( star_num , 120) == 0  and Elf_URE>=50  then						-------�ɳ�120���һ�����ӡһ��
					GiveItemX ( role , 0 , 2588 , 1 , 4 )						
				end
				if math.mod( star_num , 1200) == 0  and Elf_URE>=50 then						-------�ɳ�1200�����������ӡһ��
					GiveItemX ( role , 0 , 2589 , 1 , 4 )						
				end
				if star_num==1200 then
					star_num=0
				end
				SetItemAttr ( Item_bg , ITEMATTR_VAL_FUSIONID , star_num )
				--SystemNotice ( role , "��ʼ�۾�������" )
				Take_ElfURE ( role , Item_bg , 1 , 0 )
				--SystemNotice ( role , "��ʼ���㾫��ɳ���" )
				Give_ElfEXP ( role , Item_bg , 1 , 0 )  --����������
			end 
		end 
	end
end

-------�۳����������������ֵ-------------------------------------
function Take_ElfURE ( role , Item , Type , Num )
	local Elf_URE = GetItemAttr( Item ,ITEMATTR_URE ) 
	--local Elf_MaxURE = GetItemAttr( Item ,ITEMATTR_MAXENERGY ) 
	if Type == 1 then
			--SystemNotice ( role , Elf_URE )
			if Elf_URE >49 then
			--SystemNotice ( role , "��ʼ�۳�" )
                                    Elf_URE = math.max ( ( Elf_URE - 50 ) , 49 )
		                    SetItemAttr ( Item , ITEMATTR_URE , Elf_URE )
			else 
				SetChaKbItemValid2(role , Item , 0 , 1)
			end

	end
	if Type == 2 then
		if Elf_URE > 49 then
			 Elf_URE = math.max ( ( Elf_URE - Num ) , 49 )
			 SetItemAttr ( Item , ITEMATTR_URE , Elf_URE )
		else
			SetChaKbItemValid2(role , Item , 0 , 1)
		end

	end


end


-------���뾫��ɳ�--------------------------------------------------
function Give_ElfEXP ( role , Item ,Type , Num )
	local Elf_EXP =  GetItemAttr( Item ,ITEMATTR_ENERGY ) 
	local Elf_MaxEXP = GetItemAttr( Item ,ITEMATTR_MAXENERGY ) 
	local Elf_URE = GetItemAttr( Item ,ITEMATTR_URE ) 
	--local rad = math.random( 1 , Lv )  

	if Type == 1 then
			--SystemNotice ( role , Elf_EXP )
			--if rad == 1 then
			 if Elf_URE > 49 then
			   Elf_EXP = Elf_EXP + ELEEXP_GETRAD 
			    if Elf_EXP >= Elf_MaxEXP then
                               Elf_EXP = Elf_MaxEXP
			    end
			   SetItemAttr ( Item , ITEMATTR_ENERGY , Elf_EXP )
			  end
                        --end
        end 

end



--------------------------�������Ӿ�������ֵ--------------------------------------------
function Give_ElfURE ( role , Item  , Num )
	local Elf_URE =  GetItemAttr( Item ,ITEMATTR_URE )
	local Elf_MaxURE = GetItemAttr( Item ,ITEMATTR_MAXURE )
	--local Num = 10
        if Elf_URE<=49 then
	SetChaKbItemValid2(role , Item , 1 , 0)
	end
	--SystemNotice ( role , Elf_URE )

	Elf_URE = Elf_URE + Num

	if Elf_URE >= Elf_MaxURE  then
		
		Elf_URE = Elf_MaxURE
	end
	SetItemAttr ( Item , ITEMATTR_URE , Elf_URE )


end


--��⾫���Ƿ�ӵ���㹻�ĳɳ�������
function CheckElf_EXP ( role , Item )
	local Elf_EXP =  GetItemAttr( Item ,ITEMATTR_ENERGY )
	local Elf_MaxEXP =  GetItemAttr( Item ,ITEMATTR_MAXENERGY )


	if Elf_EXP >= Elf_MaxEXP then
	        return 1
	else
		return 0
	end
end

--�����ɳ�
function Lvup_Str ( role , Item_Num ,Item_Traget ) 
	local attr_type =  ITEMATTR_VAL_STR
	--SystemNotice(role ,attr_type )
	Elf_LvUp ( role , Item_Num , Item_Traget , attr_type ) 
end 
--���ʳɳ�
function Lvup_Con ( role , Item_Num ,Item_Traget ) 
	local attr_type =  ITEMATTR_VAL_CON 
	Elf_LvUp ( role , Item_Num , Item_Traget , attr_type ) 
end 
--���ݳɳ�
function Lvup_Agi ( role , Item_Num ,Item_Traget ) 
	local attr_type = ITEMATTR_VAL_AGI 
	Elf_LvUp ( role , Item_Num , Item_Traget , attr_type ) 
end 
--רע�ɳ�
function Lvup_Dex ( role , Item_Num ,Item_Traget ) 
	local attr_type = ITEMATTR_VAL_DEX
	Elf_LvUp ( role , Item_Num , Item_Traget , attr_type ) 
end 
--����ɳ�
function Lvup_Sta ( role , Item_Num ,Item_Traget ) 
	local attr_type = ITEMATTR_VAL_STA 
	Elf_LvUp ( role , Item_Num , Item_Traget , attr_type ) 
end 
--����˫���ɳ�
function Lvup_Str_1 ( role , Item_Num ,Item_Traget ) 
	local attr_type =  ITEMATTR_VAL_STR
	--SystemNotice(role ,attr_type )
	Elf_LvUp_1 ( role , Item_Num , Item_Traget , attr_type ) 
end 
--����˫���ɳ�
function Lvup_Con_1 ( role , Item_Num ,Item_Traget ) 
	local attr_type =  ITEMATTR_VAL_CON 
	Elf_LvUp_1 ( role , Item_Num , Item_Traget , attr_type ) 
end 
--����˫���ɳ�
function Lvup_Agi_1 ( role , Item_Num ,Item_Traget ) 
	local attr_type = ITEMATTR_VAL_AGI 
	Elf_LvUp_1 ( role , Item_Num , Item_Traget , attr_type ) 
end 
--רע˫���ɳ�
function Lvup_Dex_1 ( role , Item_Num ,Item_Traget ) 
	local attr_type = ITEMATTR_VAL_DEX
	Elf_LvUp_1 ( role , Item_Num , Item_Traget , attr_type ) 
end 
--����˫���ɳ�
function Lvup_Sta_1 ( role , Item_Num ,Item_Traget ) 
	local attr_type = ITEMATTR_VAL_STA 
	Elf_LvUp_1 ( role , Item_Num , Item_Traget , attr_type ) 
end 



--������������(����)


function Elf_LvUp ( role , Item_Num , Item_Traget , attr_type )       --
        
        local str = GetItemAttr( Item_Traget ,ITEMATTR_VAL_STR )       --����
        local con = GetItemAttr( Item_Traget ,ITEMATTR_VAL_CON )       --����
        local agi = GetItemAttr( Item_Traget ,ITEMATTR_VAL_AGI )       --רע
        local dex = GetItemAttr( Item_Traget ,ITEMATTR_VAL_DEX )       --����
        local sta = GetItemAttr( Item_Traget ,ITEMATTR_VAL_STA )       --����
	local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 
	local Elf_MaxURE = GetItemAttr(Item_Traget,ITEMATTR_MAXURE) 

	local Lv = str + agi + dex + con + sta
	local attr_type_num = GetItemAttr( Item_Traget ,attr_type )

	local a = 1 / ( math.floor ( ( 1 + ( math.pow ( ( Lv / 10 ) , 3 ) ) ) * 10 ) / 10 * math.max ( 0.01 ,( 1 - attr_type_num * 0.05 ) ) )
	
	if Lv >= 40 and Lv<50 then
	 
	 a=a*0.75 
       end

	if Lv >= 50 then
		a = 1 / ( math.floor ( ( 1 + ( math.pow ( ( Lv / 10 ) , 3 ) ) ) * 10 ) / 10 ) * math.max ( 0.01 ,( 1 - attr_type_num * 0.05 ) )
	end
	
	local b = Percentage_Random ( a )
	
        local item_energe = GetItemAttr( Item_Traget ,ITEMATTR_ENERGY ) --ȡ����ɳ���
        --local item_maxenerge = GetItemAttr( Item_Traget ,ITEMATTR_MAXENERGY ) --ȡ����ɳ������ֵ
   
	if b == 1 then						--�ɳ����������ԣ��۳����гɳ�ֵ -- ITEMATTR_ENERGY
	        AddItemEffect(role , Item_Traget , 0  )
		item_energe = 0
		SystemNotice (role , "���������ɹ����۳�ȫ���ɳ�ֵ")	
		
                attr_type_num = attr_type_num + 1
		SetItemAttr ( Item_Traget , attr_type , attr_type_num )

		local Item_MAXENERGY = 240 * ( Lv + 1 )
		
		if Item_MAXENERGY > 6480 then
			Item_MAXENERGY = 6480
		end


		local Item_MAXURE_NUM = Elf_MaxURE + 1000

		if Item_MAXURE_NUM > 32000 then
			Item_MAXURE_NUM = 32000
		end
		
		SetItemAttr ( Item_Traget , ITEMATTR_MAXENERGY , Item_MAXENERGY )
		SetItemAttr ( Item_Traget , ITEMATTR_MAXURE , Item_MAXURE_NUM )
		ResetItemFinalAttr(Item_Traget)
	        AddItemEffect(role , Item_Traget , 1  )
	else							--δ��ɳ�����۳�һ��ĳɳ�ֵ
		item_energe = 0.5 * item_energe 
		SystemNotice (role , "��������ʧ�ܣ��۳�һ��ɳ�ֵ")	
	end
		SetItemAttr ( Item_Traget , ITEMATTR_ENERGY , item_energe )


end

--��������˫������(����)
function Elf_LvUp_1 ( role , Item_Num , Item_Traget , attr_type )       --
        
        local str = GetItemAttr( Item_Traget ,ITEMATTR_VAL_STR )       --����
        local con = GetItemAttr( Item_Traget ,ITEMATTR_VAL_CON )       --����
        local agi = GetItemAttr( Item_Traget ,ITEMATTR_VAL_AGI )       --רע
        local dex = GetItemAttr( Item_Traget ,ITEMATTR_VAL_DEX )       --����
        local sta = GetItemAttr( Item_Traget ,ITEMATTR_VAL_STA )       --����
	local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 
	local Elf_MaxURE = GetItemAttr(Item_Traget,ITEMATTR_MAXURE) 

	local Lv = str + agi + dex + con + sta
	local attr_type_num = GetItemAttr( Item_Traget ,attr_type )

	local a = 1 / ( math.floor ( ( 1 + ( math.pow ( ( Lv / 10 ) , 3 ) ) ) * 10 ) / 10 * math.max ( 0.01 ,( 1 - attr_type_num * 0.05 ) ) )
	

	if Lv >= 40 and Lv<50 then
	 
	 a=a*0.75 
       end

	if Lv >= 50 then
		a = 1 / ( math.floor ( ( 1 + ( math.pow ( ( Lv / 10 ) , 3 ) ) ) * 10 ) / 10 ) * math.max ( 0.01 ,( 1 - attr_type_num * 0.05 ) )
	end
	
	local b = Percentage_Random ( a )
	
        local item_energe = GetItemAttr( Item_Traget ,ITEMATTR_ENERGY ) --ȡ����ɳ���
        --local item_maxenerge = GetItemAttr( Item_Traget ,ITEMATTR_MAXENERGY ) --ȡ����ɳ������ֵ
   
	if b == 1 then						--�ɳ����������ԣ��۳����гɳ�ֵ -- ITEMATTR_ENERGY
	        AddItemEffect(role , Item_Traget , 0  )
		item_energe = 0
		SystemNotice (role , "���������ɹ����۳�ȫ���ɳ�ֵ")	
		
                attr_type_num = attr_type_num + 2
		SetItemAttr ( Item_Traget , attr_type , attr_type_num )

		local Item_MAXENERGY = 240 * ( Lv + 2 )
		
		if Item_MAXENERGY > 6480 then
			Item_MAXENERGY = 6480
		end


		local Item_MAXURE_NUM = Elf_MaxURE + 2000

		if Item_MAXURE_NUM > 32000 then
			Item_MAXURE_NUM = 32000
		end
		
		SetItemAttr ( Item_Traget , ITEMATTR_MAXENERGY , Item_MAXENERGY )
		SetItemAttr ( Item_Traget , ITEMATTR_MAXURE , Item_MAXURE_NUM )
		ResetItemFinalAttr(Item_Traget)
	        AddItemEffect(role , Item_Traget , 1  )
	else							--δ��ɳ�����۳�һ��ĳɳ�ֵ
		item_energe = 0.5 * item_energe 
		SystemNotice (role , "��������ʧ�ܣ��۳�һ��ɳ�ֵ")	
	end
		SetItemAttr ( Item_Traget , ITEMATTR_ENERGY , item_energe )


end
----------------------------------------
function Give_ElfEXP_MISSION ( role , num )						--�������ӳ��ﾭ��ű�

	local Item = GetChaItem ( role , 2 ,  2  ) 
	local Elf_EXP =  GetItemAttr( Item ,ITEMATTR_ENERGY )		--ȡ���ﵱǰ�ɳ���
	local Elf_MaxEXP = GetItemAttr( Item ,ITEMATTR_MAXENERGY )	--ȡ�������ɳ���
	local Elf_URE = GetItemAttr( Item ,ITEMATTR_URE )			--ȡ���ﵱǰ����ֵ
	if Elf_URE <= 50 then									
		SystemNotice (role , "��������С�����޷���óɳ�")			--��������50ʱ�޷���ó���exp
		return 0 
	else 
		Elf_URE = Elf_URE - 40								--��������ʱ���۳�����40�����������ӳ���EXP
		SetItemAttr ( Item , ITEMATTR_URE , Elf_URE ) 
		num = math.min ( num , Elf_MaxEXP - Elf_EXP ) 
		SetItemAttr ( Item , ITEMATTR_ENERGY , num ) 
	end 
	return 1 
end 


-----------------------------------------------
function CheckElfHaveSkill ( Num , SkillType , SkillNum )
	--Notice( "BEGINCheckElfHaveSkill" )

	local Part2 = GetNum_Part2 ( Num )	--Get Num Part 1 �� Part 7
	local Part3 = GetNum_Part3 ( Num )
	local Part4 = GetNum_Part4 ( Num )
	local Part5 = GetNum_Part5 ( Num )
	local Part6 = GetNum_Part6 ( Num )
	local Part7 = GetNum_Part7 ( Num )


	if Part3 == SkillType and Part2 == SkillNum then
		return 1

	elseif Part2 == SkillNum then
		return 2
	end
	
	if Part5 == SkillType and Part4 == SkillNum then
		return 1
	elseif Part4 == SkillNum then
		return 2
	end
	
	if Part7 == SkillType and Part6 == SkillNum then
		return 1
	elseif Part6 == SkillNum then
		return 2
	end
	
	return 0

end

----------------------------------------------------------

function AddElfSkill ( Item , SkillType , SkillNum )
	--Notice( "BEGINAddElfSkill" )
	

	local Num = GetItemForgeParam ( Item , 1 ) --����32λ������Ϣ����	
	--Notice ( "Num= "..Num)
	local Part1 = GetNum_Part1 ( Num )	--Get Num Part 1 �� Part 7
	local Part2 = GetNum_Part2 ( Num )
	local Part3 = GetNum_Part3 ( Num )
	local Part4 = GetNum_Part4 ( Num )
	local Part5 = GetNum_Part5 ( Num )
	local Part6 = GetNum_Part6 ( Num )
	local Part7 = GetNum_Part7 ( Num )

	if Part2 == SkillNum then
		Part3 = SkillType
		Num = SetNum_Part3 ( Num , Part3 )
		Num = SetNum_Part2 ( Num , Part2 )
		SetItemForgeParam ( Item , 1 , Num )
		return 
	end
	
	if Part4 == SkillNum then
		Part5 = SkillType
		Num = SetNum_Part5 ( Num , Part5 )
		Num = SetNum_Part4 ( Num , Part4 )
		SetItemForgeParam ( Item , 1 , Num )
		return 
	end

	if Part6 == SkillNum then
		 Part7 = SkillType
		Num = SetNum_Part7 ( Num , Part7 )
		Num = SetNum_Part6 ( Num , Part6 )
		SetItemForgeParam ( Item , 1 , Num )
		return 
	end

	local rad = math.random( 1 , 100 )   --��� 1��100                            
	if Part2 == 0 and Part3 == 0 then
		Part2 = SkillNum
		Part3 = SkillType
		Num = SetNum_Part3 ( Num , Part3 )
		Num = SetNum_Part2 ( Num , Part2 )
		SetItemForgeParam ( Item , 1 , Num )
		return
	else
		if rad<= 30 then	
			Part2 = SkillNum
			Part3 = SkillType
			Num = SetNum_Part3 ( Num , Part3 )
			Num = SetNum_Part2 ( Num , Part2 )
			SetItemForgeParam ( Item , 1 , Num )
			return
		--��
		--�޲���
		end
	end
	if Part4 == 0 and Part5 == 0 then
		Part4 = SkillNum
		Part5 = SkillType
		Num = SetNum_Part5 ( Num , Part5 )
		Num = SetNum_Part4 ( Num , Part4 )
		SetItemForgeParam ( Item , 1 , Num )
		return
	else
		if rad> 30 and rad < 60 then
			Part4 = SkillNum
			Part5 = SkillType
			Num = SetNum_Part5 ( Num , Part5 )
			Num = SetNum_Part4 ( Num , Part4 )
			SetItemForgeParam ( Item , 1 , Num )
			return
			--��
			--�޲���
		end
	end
	if Part6 == 0 and Part7 == 0 then
		Part6 = SkillNum
		Part7 = SkillType
		Num = SetNum_Part7 ( Num , Part7 )
		Num = SetNum_Part6 ( Num , Part6 )
		SetItemForgeParam ( Item , 1 , Num )
		return
	else
			Part6 = SkillNum
			Part7 = SkillType
			Num = SetNum_Part7 ( Num , Part7 )
			Num = SetNum_Part6 ( Num , Part6 )	
			SetItemForgeParam ( Item , 1 , Num )
		return
	end
end

------------------------------------------------------------------

function CheckHaveElf ( role )
	local Item = GetChaItem ( role , 2 , 1  ) --ȡ��ɫ�����ڶ�����ָ��
	if Item == nil then              --?Item == 0 ʲô��˼
		return 0
	end
	
	local Item_Type =  GetItemType ( Item ) --Item �ĵ�������
	
	if Item_Type ~= 59 then
		return 0
	else
		local ELf_URE = GetItemAttr( Item ,ITEMATTR_URE )  --��������

		if ELf_URE <= 49 then
			return 0
		end
	end
	--Notice("CheckHaveElf��ִ��" )
	return Item

end

--���鼼��

--������
function ElfSKill_PowerSheild ( role , Elf_Item , Num , dmg )
	if dmg <= 0 then
		return 0
	end
	local role_hp = Hp ( role )
	local role_maxhp = Mxhp ( role )
	local havehp = role_maxhp / role_hp
	if havehp < 5 then
		return 0
	end
	local Elf_SheildLv = GetElfSkill_Lv ( Num , 1 )
	dmg = math.floor ( dmg * ( 0.3 + Elf_SheildLv * 0.15 )  ) 

	local Item_URE = GetItemAttr( Elf_Item , ITEMATTR_URE )
	local Dmg_Take_rad = 10 
	local Elf_Dmg_CanTake = ( Item_URE - 50 ) / Dmg_Take_rad
	
	if Elf_Dmg_CanTake >= dmg then
		local Elf_URE_Take = math.floor ( dmg * Dmg_Take_rad )
		local Elf_URE_Notice = math.floor ( Elf_URE_Take / 50 )
		Take_ElfURE ( role , Elf_Item , 2 , Elf_URE_Take )
		SystemNotice ( role , "���������˺�"..dmg)
		return dmg
	else
		SystemNotice ( role , "����û���㹻�������������������˺�" )
		return 0
	end
end

--��þ���ָ�����ܵȼ�
function GetElfSkill_Lv ( Num , SkillNum )
	local Part2 = GetNum_Part2 ( Num )
	local Part3 = GetNum_Part3 ( Num )
	local Part4 = GetNum_Part4 ( Num )
	local Part5 = GetNum_Part5 ( Num )
	local Part6 = GetNum_Part6 ( Num )
	local Part7 = GetNum_Part7 ( Num )
	
	if SkillNum == Part2 then
		return Part3
	elseif SkillNum == Part4 then
		return Part5
	elseif SkillNum == Part6 then
		return Part7
	end
	return 0
end

--����

function ElfSKill_ElfCrt ( role , Elf_Item , Num )
	local Elf_SkillLv = GetElfSkill_Lv ( Num , 2 )
	local Item_URE = GetItemAttr( Elf_Item , ITEMATTR_URE )
	if Item_URE < 50 then
		SystemNotice ( role , "������������,�޷�������������" )
		return 0
	end
	local b = ( Elf_SkillLv * 2 + 1 )  * 0.01
	local a = Percentage_Random ( b )
	if a == 1 then
		
		Take_ElfURE ( role , Elf_Item , 2 , Elf_SkillLv )
		return 1
		
	else
		return 0
	end
end

--ħ��

function ElfSkill_MagicAtk ( dmg , role )
	local Elf_Item = CheckHaveElf ( role )
	if Elf_Item ~= 0 then
		local Num = GetItemForgeParam ( Elf_Item , 1 )
		local CheckElfSkill = CheckElfHaveSkill ( Num , 0 , 3 )
		if CheckElfSkill == 2 then
			local Elf_SkillLv = GetElfSkill_Lv ( Num , 3 )
			local Item_URE = GetItemAttr( Elf_Item , ITEMATTR_URE )
			if Item_URE <= 50 then
				SystemNotice ( role , "������������,�޷���������" )
				return 0
			else
				if Elf_SkillLv == 1 then	
					Take_ElfURE ( role , Elf_Item , 2 , 1 )
					return dmg * 0.05 + 5 
				elseif Elf_SkillLv == 2 then
					Take_ElfURE ( role , Elf_Item , 2 , 2 )
					return dmg * 0.08 + 8
				elseif Elf_SkillLv == 3 then
					Take_ElfURE ( role , Elf_Item , 2 , 3 )
					return dmg * 0.1 + 10
				end
			end
		end
	end
	return 0
end


--�ظ�
function ElfSkill_HpResume ( role )
	local Elf_Item = CheckHaveElf ( role )
	if Elf_Item ~= 0 then
		local Num = GetItemForgeParam ( Elf_Item , 1 )
		local CheckElfSkill = CheckElfHaveSkill ( Num , 0 , 4 )
		if CheckElfSkill == 2 then
			local Elf_SkillLv = GetElfSkill_Lv ( Num , 4 )
			local Item_URE = GetItemAttr( Elf_Item , ITEMATTR_URE )
			if Item_URE <= 50 then
				SystemNotice ( role , "������������,�޷���������" )
				return 0
			else
				if Elf_SkillLv == 1 then	
					Take_ElfURE ( role , Elf_Item , 2 , 2 )
					return 10
				elseif Elf_SkillLv == 2 then
					Take_ElfURE ( role , Elf_Item , 2 , 2 )
					return 20
				elseif Elf_SkillLv == 3 then
					Take_ElfURE ( role , Elf_Item , 2 , 2 )
					return 35
				end
			end
		end
	end
	return 0
end


--��˼

function ElfSkill_SpResume ( role )
	local Elf_Item = CheckHaveElf ( role )
	if Elf_Item ~= 0 then
		local Num = GetItemForgeParam ( Elf_Item , 1 )
		local CheckElfSkill = CheckElfHaveSkill ( Num , 0 , 5 )
		if CheckElfSkill == 2 then
			local Elf_SkillLv = GetElfSkill_Lv ( Num , 5 )
			local Item_URE = GetItemAttr( Elf_Item , ITEMATTR_URE )
			if Item_URE <= 50 then
				SystemNotice ( role , "������������,�޷���������" )
				return 0
			else
				if Elf_SkillLv == 1 then	
					Take_ElfURE ( role , Elf_Item , 2 , 2 )
					return 10
				elseif Elf_SkillLv == 2 then
					Take_ElfURE ( role , Elf_Item , 2 , 2 )
					return 20
				elseif Elf_SkillLv == 3 then
					Take_ElfURE ( role , Elf_Item , 2 , 2 )
					return 35
				end
			end
		end
	end
	return 0
end
--------------------------------����ֵѡ�񽻻�
function CreditExchangeImpl( role, tp )
	local i = CheckBagItem( role,3849 )
	if i==1 then
		local Item = GetChaItem2 ( role , 2 , 3849 )
		local rongyu_num=GetItemAttr ( Item , ITEMATTR_VAL_STR )
		if rongyu_num<=0 then
			SystemNotice ( role , "û����������ֵ�������ǲ�������ģ�")
			return
		end
		local middle=0
		if rongyu_num<30000 then
			middle=30000 - rongyu_num
		end
		middle= math.floor ( middle / 2 )
		local exp_star=GetChaAttr (  role , ATTR_CEXP )----------��ǰ����
		local job = GetChaAttr(role, ATTR_JOB)
		local lv=GetChaAttr(role, ATTR_LV) 
		local money_num=rongyu_num*100
		local exp_num=rongyu_num*5+exp_star
		local rad=math.random(1,30000)
		local cha_type = GetChaTypeID ( role )
		local cha_namea = GetChaDefaultName ( role )
		LG( "star_rongyuzhichange_lg" ,cha_namea, tp , lv , exp_star , job , cha_type)
		if tp==0 or tp==1 or tp==2 then ----����ֵ��Ǯ
			if lv>=15 and lv<=40 then
				money_num=rongyu_num*200
			elseif lv>=41 and lv<=60 then
				money_num=rongyu_num*250
			elseif lv>=61 then
				money_num=rongyu_num*300
			end
			AddMoney ( role , 0 , money_num ) 
		LG( "star_rongyuzhichange_lg" ,cha_namea.."tp==0 or tp==1 or tp==2��ý�Ǯ"..money_num)
		elseif tp==3 or tp==4 or tp==5 then -----����ֵ������
			local dif_exp = rongyu_num*20+exp_star - DEXP[lv+1]
			if lv>=15 and lv<=30 then
				exp_num=rongyu_num*10+exp_star
				local a1= math.floor (rongyu_num*10 )
				SystemNotice ( role , "�õ�����"..a1 )
			elseif lv>=31 and lv<=40 then
				exp_num=rongyu_num*13+exp_star
				local a1= math.floor (rongyu_num*13 )
				SystemNotice ( role , "�õ�����"..a1 )
			elseif lv>=41 and lv<=50 then
				exp_num=rongyu_num*22+exp_star
				local a1= math.floor (rongyu_num*22 )
				SystemNotice ( role , "�õ�����"..a1 )
			elseif lv>=51 and lv<=60 then
				exp_num=rongyu_num*44+exp_star
				local a1= math.floor (rongyu_num*44 )
				SystemNotice ( role , "�õ�����"..a1 )
			elseif lv>=61 and lv<=70 then
				exp_num=rongyu_num*102+exp_star
				local a1= math.floor (rongyu_num*102 )
				SystemNotice ( role , "�õ�����"..a1 )
			elseif lv>=71 and  lv<=78 then
				exp_num=rongyu_num*270+exp_star
				local a1= math.floor (rongyu_num*270 )
				SystemNotice ( role , "�õ�����"..a1 )
			elseif lv==79 and dif_exp<=0 then 
				exp_num=rongyu_num*270+exp_star
				local a1= math.floor (rongyu_num*270 )
				SystemNotice ( role , "�õ�����"..a1 )
			elseif lv==79 and dif_exp>0 then 
				exp_num = dif_exp*0.02 + DEXP[lv+1]
				local a1= math.floor (rongyu_num*270)
				SystemNotice ( role , "�õ�����"..a1 )
			elseif lv>=80  then
				exp_num=rongyu_num*270*0.02+exp_star
				local a1= math.floor (rongyu_num*270 )
				SystemNotice ( role , "�õ�����"..a1 )
			end
			SetChaAttrI( role , ATTR_CEXP , exp_num )
			local lg_exp=exp_num-exp_star
			LG( "star_rongyuzhichange_lg" ,cha_namea.."tp==3 or tp==4 or tp==5�õ�����"..lg_exp)
		elseif tp==6 or tp==7 or tp==8 then -----����ֵ��װ��
			if lv>=15 and lv<=40 then
				if rad<=rongyu_num or rongyu_num>=30000 then
					GiveItem ( role , 0 , 3458  , 1 , 4 ) 
					LG( "star_rongyuzhichange_lg" ,cha_namea.."lv>=15 and lv<=40�õ�װ��ID="..3458)
				elseif rad>rongyu_num and rad<=middle then
					AddMoney ( role , 0 , money_num ) 
				elseif rad>middle and rad<=30000 then
					SetChaAttrI( role , ATTR_CEXP , exp_num )
					local a1= math.floor (rongyu_num*5 )
					SystemNotice ( role , "�õ�����"..a1 )
				end
			elseif lv>=41 and lv<=60 then
				if rad<=rongyu_num or rongyu_num>=30000 then
					local rad1=math.random(1,12)
					local Lg_ID=787
					if rad1==1 then
						Lg_ID=787
					elseif rad1==2 then
						Lg_ID=791
					elseif rad1==3 then
						Lg_ID=794
					elseif rad1==4 then
						Lg_ID=801
					elseif rad1==5 then
						Lg_ID=805
					elseif rad1==6 then
						Lg_ID=797
					elseif rad1==7 then
						Lg_ID=765
					elseif rad1==8 then
						Lg_ID=768
					elseif rad1==9 then
						Lg_ID=772
					elseif rad1==10 then
						Lg_ID=775
					elseif rad1==11 then
						Lg_ID=779
					elseif rad1==12 then
						Lg_ID=783
					end
					GiveItem ( role , 0 , Lg_ID  , 1 , 4 ) 
					LG( "star_rongyuzhichange_lg" ,cha_namea.."lv>=41 and lv<=60�õ�װ��ID="..Lg_ID)
				elseif rad>rongyu_num and rad<=middle then
					AddMoney ( role , 0 , money_num ) 
				elseif rad>middle and rad<=30000 then
					SetChaAttrI( role , ATTR_CEXP , exp_num )
					local a1= math.floor (rongyu_num*5 )
					SystemNotice ( role , "�õ�����"..a1 )
				end
			elseif lv>=61 then
				if rad<=rongyu_num or rongyu_num>=30000 then
				local rad2=math.random(1,3)
				local rad3=math.random(1,4)
					local Lg_ID=2530
					if job == 8 then --�޽�
						if rad2==1 then
							Lg_ID=2530
						elseif rad2==2 then
							Lg_ID=2531
						elseif rad2==3 then
							Lg_ID=2532
						end
					elseif job == 9 then   --˫��
						if rad2==1 then
							Lg_ID=2533
						elseif rad2==2 then
							Lg_ID=2534
						elseif rad2==3 then
							Lg_ID=2535
						end
					elseif job == 12 then --�ѻ���
						if rad2==1 then
							Lg_ID=2536
						elseif rad2==2 then
							Lg_ID=2537
						elseif rad2==3 then
							Lg_ID=2538
						end
					elseif job == 16 then ---- "����ʿ"
						if cha_type~=4 then
							if rad2==1 then
								Lg_ID=2539
							elseif rad2==2 then
								Lg_ID=2540
							elseif rad2==3 then
								Lg_ID=2541
							end
						else
							if rad3==1 then
								Lg_ID=2539
							elseif rad3==2 then
								Lg_ID=2540
							elseif rad3==3 then
								Lg_ID=2541
							elseif rad3==4 then
								Lg_ID=2548
							end
						end
					elseif job == 13 then    ---- "ʥְ��"
						if cha_type~=4 then
							if rad2==1 then
								Lg_ID=2542
							elseif rad2==2 then
								Lg_ID=2543
							elseif rad2==3 then
								Lg_ID=2544
							end
						else
							if rad3==1 then
								Lg_ID=2542
							elseif rad3==2 then
								Lg_ID=2543
							elseif rad3==3 then
								Lg_ID=2544
							elseif rad3==4 then
								Lg_ID=2548
							end
						end
					elseif job == 14 then    ---- "��ӡʦ"
						if cha_type~=4 then
							if rad2==1 then
								Lg_ID=2545
							elseif rad2==2 then
								Lg_ID=2546
							elseif rad2==3 then
								Lg_ID=2547
							end
						else
							if rad3==1 then
								Lg_ID=2545
							elseif rad3==2 then
								Lg_ID=2546
							elseif rad3==3 then
								Lg_ID=2547
							elseif rad3==4 then
								Lg_ID=2548
							end
						end
					end
					GiveItem ( role , 0 , Lg_ID  , 1 , 4 ) 
					LG( "star_rongyuzhichange_lg" ,cha_namea.."lv>61�õ�װ��ID="..Lg_ID)
				elseif rad>rongyu_num and rad<=middle then
					AddMoney ( role , 0 , money_num ) 
				elseif rad>middle and rad<=30000 then
					SetChaAttrI( role , ATTR_CEXP , exp_num )
					local a1= math.floor (rongyu_num*5 )
					SystemNotice ( role , "�õ�����"..a1 )
				end
			end			
		end
	SetItemAttr ( Item ,ITEMATTR_VAL_STR , 0 )
	end
end
-----------------------------
-----------------------------���辫��ȼ�
function Elf_Attr_cs ( role , Item_JLone , Item_JLother )
	local Item_JLone_num={}
	local Item_JLother_num={}
	---ȡһ��������������
	Item_JLone_num[1] = GetItemAttr( Item_JLone ,ITEMATTR_VAL_STR )	-- ���������ӳ� 26
	Item_JLone_num[2] = GetItemAttr( Item_JLone ,ITEMATTR_VAL_AGI )	-- ���ݳ����ӳ� 27
	Item_JLone_num[3] = GetItemAttr( Item_JLone ,ITEMATTR_VAL_DEX )	-- רע�����ӳ� 28
	Item_JLone_num[4] = GetItemAttr( Item_JLone ,ITEMATTR_VAL_CON )	-- ���ʳ����ӳ� 29
	Item_JLone_num[5] = GetItemAttr( Item_JLone ,ITEMATTR_VAL_STA )	-- ���������ӳ� 30
	Item_JLone_num[6] = GetItemAttr( Item_JLone ,ITEMATTR_URE )			--���� 
	Item_JLone_num[7] = GetItemAttr( Item_JLone ,ITEMATTR_MAXURE )		 --�������
	Item_JLone_num[8] = Item_JLone_num[1] + Item_JLone_num[2] + Item_JLone_num[3] + Item_JLone_num[4] + Item_JLone_num[5]	----һ������ĵȼ�
	---ȡ��һ��������������
	Item_JLother_num[1] = GetItemAttr( Item_JLother ,ITEMATTR_VAL_STR )	-- ���������ӳ�  
	Item_JLother_num[2] = GetItemAttr( Item_JLother ,ITEMATTR_VAL_AGI )	-- ���ݳ����ӳ�  
	Item_JLother_num[3] = GetItemAttr( Item_JLother ,ITEMATTR_VAL_DEX )	-- רע�����ӳ�  
	Item_JLother_num[4] = GetItemAttr( Item_JLother ,ITEMATTR_VAL_CON )	-- ���ʳ����ӳ�  
	Item_JLother_num[5] = GetItemAttr( Item_JLother ,ITEMATTR_VAL_STA )	-- ���������ӳ�  
	Item_JLother_num[6] = GetItemAttr( Item_JLother ,ITEMATTR_URE )			--���� 
	Item_JLother_num[7] = GetItemAttr( Item_JLother ,ITEMATTR_MAXURE )		 --�������
	Item_JLother_num[8] = Item_JLother_num[1] + Item_JLother_num[2] + Item_JLother_num[3] + Item_JLother_num[4] + Item_JLother_num[5]	----һ������ĵȼ�

	local m=0
	local n = 0
	local num_jlone=26
	local num_jlother=26
	local max_JLone_temp=Item_JLone_num[1]
	local max_JLother_temp=Item_JLother_num[1]
	for m=1,4,1 do
		if Item_JLone_num[m+1] >max_JLone_temp then
			max_JLone_temp=Item_JLone_num[m+1]
			num_jlone=m+26
		end
	end
	for n=1,4,1 do
		if Item_JLother_num[n+1] >max_JLother_temp then
			max_JLother_temp=Item_JLother_num[n+1]
			num_jlother=n+26
		end
	end

	max_JLone_temp = max_JLone_temp - 4
	max_JLother_temp = max_JLother_temp - 4
	local new_JLone_MAXENERGY = 240 * (Item_JLone_num[8] + 1 - 4 )
	if new_JLone_MAXENERGY > 6480 then
		new_JLone_MAXENERGY = 6480
	end
	local new_JLone_MAXURE = 5000 + 1000*(Item_JLone_num[8] - 4 )
	if new_JLone_MAXURE > 32000 then
		new_JLone_MAXURE = 32000
	end
	local new_JLother_MAXENERGY = 240 * (Item_JLother_num[8] + 1 - 4 )
	if new_JLother_MAXENERGY > 6480 then
		new_JLother_MAXENERGY = 6480
	end
	local new_JLother_MAXURE = 5000 + 1000*(Item_JLother_num[8] - 4 )
	if new_JLother_MAXURE > 32000 then
		new_JLother_MAXURE = 32000
	end
	----����һֻ���������
	SetItemAttr ( Item_JLone , num_jlone , max_JLone_temp )
	SetItemAttr ( Item_JLone , ITEMATTR_ENERGY , 240) 	
	SetItemAttr ( Item_JLone , ITEMATTR_MAXENERGY , new_JLone_MAXENERGY )
	SetItemAttr ( Item_JLone , ITEMATTR_URE , 5000 ) 	
	SetItemAttr ( Item_JLone , ITEMATTR_MAXURE , new_JLone_MAXURE ) 	
	----������һֻ���������
	SetItemAttr ( Item_JLother , num_jlother , max_JLother_temp )
	SetItemAttr ( Item_JLother , ITEMATTR_ENERGY , 240 ) 	
	SetItemAttr ( Item_JLother , ITEMATTR_MAXENERGY , new_JLother_MAXENERGY )
	SetItemAttr ( Item_JLother , ITEMATTR_URE , 5000 ) 	
	SetItemAttr ( Item_JLother , ITEMATTR_MAXURE , new_JLother_MAXURE )  	
end
function  TigerStart( ... )
	--Notice("TigerStart...................")
	if arg.n ~= 4 then
		SystemNotice ( arg[1] , "���������Ƿ�"..arg.n )
		return 
	end	
	local num = {}
	local Item_type = {}
	local num_star = 0
	local n  = 0
	local m = 0
	local i = 0
	local q=0
	for n=1,9,1 do --------------��ʼ��9����ƷID
		local star = math.random ( 1 , 4700 )
		local ret1 = IsItemValid(star)
		if ret1 ~= LUA_TRUE then
			for m=1,300,1 do
				local ret2 = IsItemValid(star+m)
				if ret2 ~=LUA_TRUE then
				else
					num[n] = star+m
				end
			end
		else 
			num [n]=star
		end
	end
	for i=1,9,1 do
		Item_type[i] = GetItemType2( num [i] )
	end
	local NocLock =	KitbagLock(arg[1], 0 )
	if NocLock == LUA_FALSE then
		SystemNotice( arg[1] , "���ı�����������״̬")
		return 0
	end
	local Item_CanGet = GetChaFreeBagGridNum ( arg[1] )	
	if Item_CanGet < 5 then
		SystemNotice( arg[1] ,"������������Ҫ�������λ")
		return 0
	end
	local Money_Have = GetChaAttr ( arg[1]  , ATTR_GD )
	if Money_Have>1900000000 then
		SystemNotice (arg[1], "����Ǯ��Ҫ����19��Ŷ��Ǯ���˲�̫��ȫ��")
		return	
	end
	if arg[2]==1 then
		local j1 = TakeItem(  arg[1], 0,855, 5 )			        
		if j1==0 then
			SystemNotice ( arg[1] ,"ɾ������Ӳ��ʧ��")
			return
		end
	end
	if arg[3]==1 then
		local j2 = TakeItem(  arg[1], 0,855, 5 )			            
		if j2==0 then
			SystemNotice ( arg[1] ,"ɾ������Ӳ��ʧ��")
			return
		end		
	end
	if arg[4]==1 then
		local j3 = TakeItem(  arg[1], 0,855, 5 )			            
		if j3==0 then
			SystemNotice ( arg[1] ,"ɾ������Ӳ��ʧ��")
			return
		end		
	end
	local lhj_te_flg=0
	local lhj_yi_flg=0
	local lhj_hei_flg=0
	local now_day= os.date("%d")		-------------��          
	local now_hour= os.date("%H")		-------------ʱ          
	local now_miniute= os.date("%M")	-------------��          
	local now_scend=  os.date("%S")		-------------��   
	now_day= tonumber(now_day)		-------------��  
	now_hour= tonumber(now_hour)		-------------ʱ  
	now_miniute= tonumber(now_miniute)	 -------------��  
	now_scend= tonumber(now_scend)	-------------�� 
	local CheckTimeNum = now_day*86400 + now_hour*3600+now_miniute*60+now_scend
	if CheckTimeNum>NOWTIME_TE+86400 then
		NOWTIME_TE=CheckTimeNum
		lhj_te_flg=1
	end
	if CheckTimeNum>NOWTIME_YI+3600 then
		NOWTIME_YI=CheckTimeNum
		lhj_yi_flg=1
	end
	if CheckTimeNum>NOWTIME_HEI+518400 then
		NOWTIME_HEI=CheckTimeNum
		lhj_hei_flg=1
	end
	local num_s=0
	for num_s=1,3,1 do 
		if Item_type[num_s]>=1 and Item_type[num_s]<=11 then
			if Item_type[num_s+3] >=1 and Item_type[num_s+3]<=11 then
				num[num_s+3] = num[num_s]
			end
			if Item_type[num_s+6] >=1 and Item_type[num_s+6]<=11 then
				num[num_s+6] = num[num_s]
			end
		end
		if Item_type[num_s]>=22 and Item_type[num_s]<=29 then
			if Item_type[num_s+3] >=22 and Item_type[num_s+3]<=29 then
				num[num_s+3] = num[num_s]
			end
			if Item_type[num_s+6] >=22 and Item_type[num_s+6]<=29 then
				num[num_s+6] = num[num_s]
			end
		end
		if Item_type[num_s]>=36 and Item_type[num_s]<=66 then
			if Item_type[num_s+3] >=36 and Item_type[num_s+3]<=66 then
				num[num_s+3] = num[num_s]
			end
			if Item_type[num_s+6] >=36 and Item_type[num_s+6]<=66 then
				num[num_s+6] = num[num_s]
			end
		end
	end
	local j=0
	for j=1,9,1 do
		Item_type[j] = GetItemType2( num [j] )----------��������
		if num[j]==822 or num[j]==823 or num[j]==825 or num[j]==826 or num[j]==827 or num[j]==1116 or num[j]==1117 or num[j]==1118 or num[j]==46  or num[j]==1124  or num[j]==1125  or num[j]==1126  or num[j]==1127 or  num[j]==1057  or  num[j]==1060   or  num[j]==1063    or  num[j]==1066   or  num[j]==1034  or  num[j]==586  or  num[j]==762  or  num[j]==3061  or  num[j]==410   or  num[j]==2885  then--------CABAL�Խ�ȯ�����޺ͻԻ�,�Ҷ�����
			num[j]=3360 ---------��ʯ		
		end
		if num[j]>=845 and num[j]<=847 then--------��������
			local rad_s= math.random ( 1 , 40 )
			if rad_s>=3 or lhj_hei_flg==0 then
				num[j]=3360 ---------��ʯ		
			end
		end
		--------------fei�����⼸�����͵���Ʒ����
		if Item_type[j]~=1 and Item_type[j]~=2 and Item_type[j] ~=3 and Item_type[j] ~=4 and Item_type[j] ~=7 and Item_type[j] ~=9 and Item_type[j] ~=11 and Item_type[j] ~=22 and Item_type[j] ~=23 and Item_type[j] ~=24 and Item_type[j] ~=25 and Item_type[j] ~=26 and Item_type[j] ~=27 and Item_type[j] ~=29 and Item_type[j] ~=36 and Item_type[j] ~=47 and Item_type[j] ~=50 and Item_type[j] ~=57 and Item_type[j] ~=58 and Item_type[j] ~=60 and Item_type[j] ~=65 and Item_type[j] ~=66 then
			local eleven = math.random ( 1 , 1000 )	
			local new_id = math.random ( 3850 , 3875 )
			if eleven <= 328 then
				num[j]= new_id ----------��Ƭ
			elseif eleven >=329 and  eleven<=999 then
				num[j]=3360 ---------��ʯ
			else
				num[j]=194 ---------��Ǯ
			end
		end
	end
	local rad1= 0
	local rad2= 0
	local rad3= 0
	local rad4= 0
	local rad5= 0
	local rad6= 0
	local rad7= 0
	local rad8= 0
	local rad9= 0
	local rad10= 0
	local rad11= 0
	local p=0
	local p=0
	for p=1,9,1 do
		if num[p]>=831 and num[p]<=842 then
			rad1=1
		end
		if num[p]>=2300 and num[p]<=2344 then
			rad2=1
		end
		if num[p]>=2367 and num[p]<=2407 then
			rad3=1
		end
		if num[p]>=2549 and num[p]<=2553 then
			rad4=1
		end
		if num[p]>=2588 and num[p]<=3061 then
			rad5=1
		end
		if num[p]>=3936 and num[p]<=3942 then
			rad6=1
		end
		if num[p]>=4311 and num[p]<=4313 then
			rad7=1
		end
		if num[p]>=28 and num[p]<=31 then
			rad8=1
		end
		if num[p]>=194 and num[p]<=227 then
			rad9=1
		end
		if num[p]>=276 and num[p]<=280 then
			rad10=1
		end
		local h=0
		for h=1,252,1 do
			if num[p]==LHJ_ID[h] then
				rad11=1
			end
		end
		if rad1==1 or  rad2==1 or rad3==1 or  rad4==1 or rad5==1 or rad6==1 or  rad7==1  or  rad8==1  or  rad9==1 or  rad10==1  or rad11==1 or  num[p]==457 or num[p]==458 or num[p]==459 or num[p]==464 or num[p]==640 or num[p]==816  or num[p]==822 or num[p]==823 or num[p]==3115 or num[p]==18 or num[p]==19 or num[p]==43 or num[p]==109 or num[p]==111 or num[p]==113 or num[p]==115 or num[p]==117 or num[p]==119  or num[p]==127 or num[p]==150 or num[p]==308 or num[p]==309 or num[p]==348 or num[p]==349 then
			local new_id1 = math.random ( 3850 , 3875 )
			num[p]= new_id1 ----------��Ƭ		
		end
	end
	----------------------���ƴ󽱳��ֻ���
	local reset_rad=math.random ( 1 , 100 )
	local kapian_rad=math.random ( 3850 , 3875 )
	if reset_rad>=47 and num[1]==num[3] and num[1]==num[5] and num[1]==num[7]  and num[1]==num[9]  then-------�帣ͬ�ٽ���39%
		num[9]=kapian_rad
	end
	if reset_rad>=24 and num[2]==num[4] and num[2]==num[5] and num[2]==num[6]  and num[2]==num[8]  then-------ʮȫʮ������66%
		num[8]=kapian_rad
	end
	if  num[1]==num[2] and num[1]==num[3] and num[1]==num[4]  and num[1]==num[6] and num[1]==num[7] and num[1]==num[8]  and num[1]==num[9] then-------����ͬ�콵��66%
		if lhj_yi_flg==0 or reset_rad>=10 then
			num[9]=kapian_rad
		end
	end
	if  num[1]==num[2] and num[1]==num[3] and num[1]==num[4] and num[1]==num[5] and num[1]==num[6] and num[1]==num[7] and num[1]==num[8]  and num[1]==num[9] then-------�����޽�����89%
		if lhj_te_flg==0 or reset_rad>=2 then
			num[9]=kapian_rad
		end
	end
	return num[1] , num[2] , num[3] , num[4] , num[5] , num[6] , num[7] , num[8] , num[9] 
end

function TigerStop(...)
	--Notice("TigerStop...................")
	if arg.n ~= 13 then
		SystemNotice ( arg[1] , "���������Ƿ�"..arg.n )
		return 
	end	
	local flag=0
	if arg[11]==1 and arg[12]==1 and arg[13]==1 then
		flag=1
	end
	local flag_myp=1
	if arg[2]==0 or arg[3]==0 or arg[4]==0 or arg[5]==0 or arg[6]==0 or arg[7]==0 or arg[8]==0 or  arg[9]==0 or arg[10]==0 or arg[2]==nil or arg[3]==nil or arg[4]==nil or arg[5]==nil or arg[6]==nil or arg[7]==nil or arg[8]==nil or  arg[9]==0 or arg[10]==nil then
		 flag_myp=0
		SystemNotice ( arg[1] , "�����ֲ����Ƿ�" )
		return 	
	end
	local new_id = math.random ( 3850 , 3875 )
	if arg[2] == arg[3] and arg[3] == arg[4] and arg[4] == arg[5]  and arg[5] == arg[6] and arg[6] == arg[7] and arg[7] == arg[8] and arg[8] == arg[9] and arg[9] == arg[10]  and arg[2]~=new_id and flag==1 and flag_myp==1 then ---------------------����˹�Ļſ֡�
		local cha_name4 = GetChaDefaultName ( arg[1] ) 
		local item_rad = math.random ( 1 , 9 )
		if item_rad==1 then
			item_rad_id=862
		elseif item_rad==2 then
			item_rad_id=863
		elseif item_rad>=3 or  item_rad<=8 then
			item_rad_id=271
		else
			item_rad_id=1012
		end
		local itemname12 = GetItemName ( item_rad_id ) 
		local message4 = cha_name4.."���С������޽������1000�򺣵���,�صȽ�ȯһ�ź�һ��"..itemname12
		Notice ( message4 )
		SynTigerString ( arg[1] ,"��ϲ�����С������޽������1000�򺣵��Һ�һ��"..itemname12)
		AddMoney ( arg[1] , 0 , 10000000 )--------1000W������
		GiveItem ( arg[1] , 0 ,2665  , 1 , 4  )----------------�صȽ�ȯ
		GiveItem ( arg[1] , 0 , item_rad_id  , 1 , 4  )
		if arg[2] ~= 3360 then --------��ʯ
			if arg[2] == 845 or arg[2] == 846 or arg[2] == 847 then
				local s12=math.random ( 12 , 18 )
				GiveItem ( arg[1] , 0 , arg[2]  , 1 , s12  )
			--	Heilong_Star_Count=1
			else 
				GiveItem ( arg[1] , 0 , arg[2]  , 1 , 23  )
			end
		end
		LG( "LHJ_wanshou_lg" ,cha_name4,arg[2],arg[3],arg[4],arg[5],arg[6],arg[7],arg[8],arg[9],arg[10])
		--TeDengJiang_Star_Count=1
	end
	if arg[2] == arg[3] and arg[3] == arg[4] and arg[4] == arg[5] and arg[5] == arg[7] and arg[7] == arg[8] and arg[8] == arg[9] and arg[9] == arg[10]  and arg[2]~=new_id and flag==1  and flag_myp==1  then ---------------------������ͬ�족
		--local itemname3 = GetItemName ( arg[3] ) 
		local item_rad = math.random ( 1 , 8 )
		if item_rad==1 then
			item_rad_id=878
		elseif item_rad==2 then
			item_rad_id=879
		elseif item_rad==3 then
			item_rad_id=880
		elseif item_rad==4 then
			item_rad_id=881
		elseif item_rad==5 then
			item_rad_id=882
		elseif item_rad==6 then
			item_rad_id=883
		elseif item_rad==7 then
			item_rad_id=884
		else
			item_rad_id=887
		end
		local itemname11 = GetItemName ( item_rad_id ) 
		local cha_name3 = GetChaDefaultName ( arg[1] ) 
		local message3 = cha_name3.."���С�����ͬ�족���300�򺣵��ҽ�����һ��"..itemname11
		Notice ( message3 )
		SynTigerString ( arg[1] ,"��ϲ�����С�����ͬ�족���300�򺣵��Һ�"..itemname11)
		AddMoney ( arg[1] , 0 , 3000000 )--------300W������
		GiveItem ( arg[1] , 0 ,2666  , 1 , 4  )----------------һ�Ƚ�
		--GiveItem ( arg[1] , 0 , 271  , 1 , 4  )
		GiveItem ( arg[1] , 0 , item_rad_id  , 1 , 4  )
		if arg[2] ~= 3360 then --------��ʯ
			if arg[2] == 845 or arg[2] == 846 or arg[2] == 847 then
				local s11=math.random ( 12 , 18 )
				GiveItem ( arg[1] , 0 , arg[2]  , 1 , s11  )
			--	Heilong_Star_Count=1
			else 
				GiveItem ( arg[1] , 0 , arg[2]  , 1 , 23  )
			end
		end
		LG( "LHJ_putian_lg" ,cha_name3,arg[2],arg[3],arg[4],arg[5],arg[6],arg[7],arg[8],arg[9],arg[10])
		--YiDengJiang_Star_Count=1
	end
	if arg[3] == arg[5] and arg[5] == arg[6] and arg[6] == arg[7] and arg[7] == arg[9] and arg[3]~=new_id and flag==1  and flag_myp==1 then ---------------------��ʮȫʮ����
		local itemname2 = GetItemName ( arg[3] ) 
		local cha_name2 = GetChaDefaultName ( arg[1] ) 
		local message2 = cha_name2.."���С�ʮȫʮ���������50�򺣵��Һ�99��ը��һ��"  
		Notice ( message2 )
		SynTigerString( arg[1] ,"��ϲ�����С�ʮȫʮ�������50�򺣵��Һ�99��ը��һ��")
		AddMoney ( arg[1] , 0 , 500000 )--------50W������
		GiveItem ( arg[1] , 0 ,2666  , 1 , 4  )----------------һ�Ƚ�
		GiveItem ( arg[1] , 0 , 1095  , 1 , 4  )
		if arg[3] ~= 3360 then --------��ʯ
			if arg[3] == 845 or arg[3] == 846 or arg[3] == 847 then
				local s10=math.random ( 12 , 18 )
				GiveItem ( arg[1] , 0 , arg[3]  , 1 , s10  )
			--	Heilong_Star_Count=1
			else 
				GiveItem ( arg[1] , 0 , arg[3]  , 1 , 23  )
			end
		end
		LG( "LHJ_shiquan_lg" ,cha_name2,arg[2],arg[3],arg[4],arg[5],arg[6],arg[7],arg[8],arg[9],arg[10])
	end
	if arg[2] == arg[4] and arg[4] == arg[6] and arg[6] == arg[8] and arg[8] == arg[10] and arg[2]~=new_id and flag==1 and flag_myp==1  then ---------------------���帣ͬ�١�
		--local itemname1 = GetItemName ( arg[2] ) 
		local cha_name1 = GetChaDefaultName ( arg[1] ) 
		local message1 = cha_name1.."���С��帣ͬ�١����30�򺣵��ҽ����Ͷ��Ƚ�ȯһ��" 
		Notice ( message1 )
		SynTigerString  ( arg[1] ,"��ϲ�����С��帣ͬ�١����30�򺣵���,���Ƚ�ȯһ��")
		AddMoney ( arg[1] , 0 , 300000 )--------30W������
		GiveItem ( arg[1] , 0 ,2667  , 1 , 4  )----------------���Ƚ�
		if arg[2] ~= 3360 then --------��ʯ
			if arg[2] == 845 or arg[2] == 846 or arg[2] == 847 then
				local s9=math.random ( 12 , 18 )
				GiveItem ( arg[1] , 0 , arg[2]  , 1 , s9  )
			--	Heilong_Star_Count=1
			else 
				GiveItem ( arg[1] , 0 , arg[2]  , 1 , 23  )
			end
		end
		LG( "LHJ_wufu_lg" ,cha_name1,arg[2],arg[3],arg[4],arg[5],arg[6],arg[7],arg[8],arg[9],arg[10])
	end
	if arg[2] == arg[4] and arg[4] == arg[8] and arg[8] == arg[10] and arg[2]~=new_id and flag==1 and flag_myp==1 then ---------------------���ļ�ƽ����
		SystemNotice ( arg[1] ,"��ϲ�����С��ļ�ƽ���������5�򺣵��ҽ����ͺ���װ��һ��")
		SynTigerString  ( arg[1] ,"��ϲ�����С��ļ�ƽ���������5�򺣵���,����װ��һ��")
		AddMoney ( arg[1] , 0 , 50000 )--------5W������
		GiveItem ( arg[1] , 0 ,2668  , 1 , 4  )----------------���Ƚ�
		GiveItem ( arg[1] , 0 , 3323  , 1 , 4  )
		if arg[2] ~= 3360 then --------��ʯ
			if arg[2] == 845 or arg[2] == 846 or arg[2] == 847 then
				local s8=math.random ( 12 , 18 )
				GiveItem ( arg[1] , 0 , arg[2]  , 1 , s8  )
			--	Heilong_Star_Count=1
			else 
				GiveItem ( arg[1] , 0 , arg[2]  , 1 , 23  )
			end
		end
		local cha_name1 = GetChaDefaultName ( arg[1] ) 
		LG( "LHJ_siji_lg" ,cha_name1,arg[2],arg[3],arg[4],arg[5],arg[6],arg[7],arg[8],arg[9],arg[10])
	end
	if arg[3] == arg[5] and arg[5] == arg[7] and arg[7] == arg[9] and arg[3]~=new_id and flag==1 and flag_myp==1 then ---------------------��С���Ĳˡ�
		SystemNotice ( arg[1] ,"��ϲ�����С�С���Ĳˡ������3�򺣵��ҽ����ͺ���װ��һ��")
		SynTigerString  ( arg[1] ,"��ϲ�����С�С���Ĳˡ������3�򺣵���,����װ��һ��")
		AddMoney ( arg[1] , 0 , 30000 )--------3W������
		GiveItem ( arg[1] , 0 ,2668  , 1 , 4  )----------------���Ƚ�
		local rad_heishi=math.random ( 1 , 2 )
		if rad_heishi==1 then
			GiveItem ( arg[1] , 0 , 3326  , 1 , 4  )
		else
			GiveItem ( arg[1] , 0 , 3328  , 1 , 4  )			
		end
		if arg[3] ~= 3360 then --------��ʯ
			if arg[3] == 845 or arg[3] == 846 or arg[3] == 847 then
				local s7=math.random ( 12 , 18 )
				GiveItem ( arg[1] , 0 , arg[3]  , 1 , s7  )
			--	Heilong_Star_Count=1
			else 
				GiveItem ( arg[1] , 0 , arg[3]  , 1 , 23  )
			end
		end
		local cha_name1 = GetChaDefaultName ( arg[1] ) 
		LG( "LHJ_xiaokong_lg" ,cha_name1,arg[2],arg[3],arg[4],arg[5],arg[6],arg[7],arg[8],arg[9],arg[10])
	end
	if arg[4] == arg[6] and arg[6] == arg[8] and arg[4]~=new_id and flag==1 and flag_myp==1 then ---------------------���ƽ�Խ��ߡ�
		SystemNotice ( arg[1] ,"��ϲ�����С��ƽ�Խ��ߡ������1�򺣵��ҽ���")
		SynTigerString ( arg[1] ,"��ϲ�����С��ƽ�Խ��ߡ������1�򺣵��ҽ���")
		AddMoney ( arg[1] , 0 , 10000 )--------1W������
		GiveItem ( arg[1] , 0 , 3096  , 1 , 4  )
		if arg[4] ~= 3360 then --------��ʯ
			if arg[4] == 845 or arg[4] == 846 or arg[4] == 847 then
				local s5=math.random ( 12 , 18 )
				GiveItem ( arg[1] , 0 , arg[4]  , 1 , s5  )
			--	Heilong_Star_Count=1
			else 
				GiveItem ( arg[1] , 0 , arg[4]  , 1 , 23  )
			end
		end
		local cha_name1 = GetChaDefaultName ( arg[1] ) 
		LG( "LHJ_qita_lg" ,cha_name1,arg[2],arg[3],arg[4],arg[5],arg[6],arg[7],arg[8],arg[9],arg[10])
	end
	if arg[2] == arg[6] and arg[6] == arg[10] and arg[2]~=new_id and flag==1 and flag_myp==1 then ---------------------���׽�Խ��ߡ�
		SystemNotice ( arg[1] ,"��ϲ�����С��׽�Խ��ߡ������1�򺣵��ҽ���")
		SynTigerString  ( arg[1] ,"��ϲ�����С��׽�Խ��ߡ������1�򺣵��ҽ���")
		AddMoney ( arg[1] , 0 , 10000 )--------1W������
		GiveItem ( arg[1] , 0 , 3094  , 1 , 4  )
		if arg[2] ~= 3360 then --------��ʯ
			if arg[2] == 845 or arg[2] == 846 or arg[2] == 847 then
				local s6=math.random ( 12 , 18 )
				GiveItem ( arg[1] , 0 , arg[2]  , 1 , s6  )
			--	Heilong_Star_Count=1
			else 
				GiveItem ( arg[1] , 0 , arg[2]  , 1 , 23  )
			end
		end
		local cha_name1 = GetChaDefaultName ( arg[1] ) 
		LG( "LHJ_qita_lg" ,cha_name1,arg[2],arg[3],arg[4],arg[5],arg[6],arg[7],arg[8],arg[9],arg[10])
	end
	if arg[5] == arg[6] and arg[6] == arg[7] and arg[5]~=new_id and flag==1 and flag_myp==1 then ---------------------��һ�����족
		SystemNotice ( arg[1] ,"��ϲ�����С�һ�����족�����8000�����ҽ���")
		SynTigerString ( arg[1] ,"��ϲ�����С�һ�����족�����8000�����ҽ���")
		AddMoney ( arg[1] , 0 , 8000 )--------8k������
		if arg[5] ~= 3360 then --------��ʯ
			if arg[5] == 845 or arg[5] == 846 or arg[5] == 847 then
				local s4=math.random ( 12 , 18 )
				GiveItem ( arg[1] , 0 , arg[5]  , 1 , s4  )
			--	Heilong_Star_Count=1
			else 
				GiveItem ( arg[1] , 0 , arg[5]  , 1 , 23  )
			end
		end
		local cha_name1 = GetChaDefaultName ( arg[1] ) 
		LG( "LHJ_qita_lg" ,cha_name1,arg[2],arg[3],arg[4],arg[5],arg[6],arg[7],arg[8],arg[9],arg[10])
	end
	if arg[2] == arg[5] and arg[5] == arg[8] and arg[11]==1 and arg[2]~=new_id and flag_myp==1 then ---------------------��һ����˳��
		SystemNotice ( arg[1] ,"��ϲ�����С�һ����˳�������2000�����ҽ���")
		SynTigerString( arg[1] ,"��ϲ�����С�һ����˳�������2000�����ҽ���")
		AddMoney ( arg[1] , 0 , 2000 )--------2k������
		if arg[2] ~= 3360 then --------��ʯ
			if arg[2] == 845 or arg[2] == 846 or arg[2] == 847 then
				local s1=math.random ( 12 , 18 )
				GiveItem ( arg[1] , 0 ,arg[2]  , 1 , s1  )
			--	Heilong_Star_Count=1
			else 
				GiveItem ( arg[1] , 0 , arg[2]  , 1 , 23  )
			end
		end
		local cha_name1 = GetChaDefaultName ( arg[1] ) 
		LG( "LHJ_qita_lg" ,cha_name1,arg[2],arg[3],arg[4],arg[5],arg[6],arg[7],arg[8],arg[9],arg[10])
	end
	if arg[3] == arg[6] and arg[6] == arg[9] and arg[12]==1 and arg[3]~=new_id and flag_myp==1 then
		SystemNotice ( arg[1] ,"��ϲ�����С�һ����˳�������2000�����ҽ���")
		SynTigerString( arg[1] ,"��ϲ�����С�һ����˳�������2000�����ҽ���")
		AddMoney ( arg[1] , 0 , 2000 )--------2k������
		if arg[3] ~= 3360 then --------��ʯ
			if arg[3] == 845 or arg[3] == 846 or arg[3] == 847 then
				local s2=math.random ( 12 , 18 )
				GiveItem ( arg[1] , 0 , arg[3]  , 1 , s2  )
			--	Heilong_Star_Count=1
			else 
				GiveItem ( arg[1] , 0 , arg[3]  , 1 , 23  )
			end
		end	
		local cha_name1 = GetChaDefaultName ( arg[1] ) 
		LG( "LHJ_qita_lg" ,cha_name1,arg[2],arg[3],arg[4],arg[5],arg[6],arg[7],arg[8],arg[9],arg[10])
	end
	if arg[4] == arg[7] and arg[7] == arg[10] and arg[13]==1 and arg[4]~=new_id and flag_myp==1 then
		SystemNotice ( arg[1] ,"��ϲ�����С�һ����˳�������2000�����ҽ���")
		SynTigerString( arg[1] ,"��ϲ�����С�һ����˳�������2000�����ҽ���")
		AddMoney ( arg[1] , 0 , 2000 )--------2k������
		if arg[4] ~= 3360 then --------��ʯ
			if arg[4] == 845 or arg[4] == 846 or arg[4] == 847 then
				local s3=math.random ( 12 , 18 )
				GiveItem ( arg[1] , 0 , arg[4]  , 1 , s3  )
			--	Heilong_Star_Count=1
			else 
				GiveItem ( arg[1] , 0 , arg[4]  , 1 , 23  )
			end
		end
		local cha_name1 = GetChaDefaultName ( arg[1] ) 
		LG( "LHJ_qita_lg" ,cha_name1,arg[2],arg[3],arg[4],arg[5],arg[6],arg[7],arg[8],arg[9],arg[10])
	end
	local star = 0
	local eleven = 0
	for star=2,8,3 do
		if arg[star] ==194 and arg[11] == 1 and flag_myp==1 then
			eleven =eleven +1
		end
	end
	for star=3,9,3 do
		if arg[star] ==194 and arg[12] == 1 and flag_myp==1 then
			eleven =eleven +1
		end
	end
	for star=4,10,3 do
		if arg[star] ==194 and arg[13] == 1 and flag_myp==1 then
			eleven =eleven +1
		end
	end
	if eleven==0 then
		SynTigerString( arg[1] ,"��Ҫ�ٽ�������")
	else 
		SystemNotice ( arg[1] ,"���λ��������"..eleven.."����Ǯ�����"..eleven.."�Ű����")
		SynTigerString( arg[1] ,"��ϲ������"..eleven.."�Ű����")
		GiveItem ( arg[1] , 0 , 854  , eleven , 4  )
	end
end
--function Change_FightingBook (character, npc)
--	local HonorBook_Num = 0
--	local HonorBook_Num = CheckBagItem( character,3849 )
--	local FightingBook_Num = 0
--	local FightingBook_Num = CheckBagItem( character,3849 )
--	local retbag = HasLeaveBagGrid( character, 1)
--	if retbag ~= LUA_TRUE then
--		SystemNotice(character,"�����ո�����1���޷�����Ҷ�����")
--		return 
--	end	
--	if FightingBook_Num> 0 then
--		SystemNotice( character , "���Ѿ����Ҷ�������")
--		return 0
--	end
--	
--	
--	
--	if	 HonorBook_Num <= 0 then
--		GiveItem ( character , 0 , 3849  , 1 , 97 )
--	else
--		GiveItem ( character , 0 , 3849  , 1 , 97 )
--		local Book2 =  GetChaItem2 ( character , 2 , 3849 )
--		local HonorPoint=GetItemAttr ( Book2 , ITEMATTR_VAL_STR)
--		local KillNum=GetItemAttr ( Book2 , ITEMATTR_VAL_AGI)
--		local KilledNum=GetItemAttr ( Book2 , ITEMATTR_VAL_DEX)
--		local JionNum=GetItemAttr ( Book2 , ITEMATTR_VAL_CON)
--		local VictoryNum=GetItemAttr ( Book2 , ITEMATTR_VAL_STA)
--		local PartyContributeNum=GetItemAttr ( Book2 , ITEMATTR_MAXURE)
--		local Book = GetChaItem2 ( character , 2 , 3849 )
--		SetItemAttr ( Book , ITEMATTR_VAL_STR,HonorPoint)
--		SetItemAttr ( Book , ITEMATTR_VAL_AGI,KillNum)
--		SetItemAttr ( Book , ITEMATTR_VAL_DEX,KilledNum)
--		SetItemAttr ( Book , ITEMATTR_VAL_CON,JionNum)
--		SetItemAttr ( Book , ITEMATTR_VAL_STA,VictoryNum)
--		SetItemAttr ( Book , ITEMATTR_MAXURE,PartyContributeNum)
----		SetItemAttr ( Book2 , ITEMATTR_MAXENERGY,FightingPoint)
--		RemoveChaItem ( character , 3849 , 1 , 2 , -1, 2 , 1  )	
--		
--	end
--end

function Change_shanyao (character, npc)
	local NocLock =	KitbagLock( character, 0 )
		if NocLock == LUA_FALSE then
		SystemNotice( character , "���ı�����������״̬")
		return 0
	end
		 
	local HonorBook_Num = 0
	local HonorBook_Num = CheckBagItem( character,3849 )
		if HonorBook_Num < 1 then
		SystemNotice( character , "������û������֤֮")
		return 0
		end
	local Book2 =  GetChaItem2 ( character , 2 , 3849 )
	local HonorPoint=GetItemAttr ( Book2 , ITEMATTR_VAL_STR)
		if HonorPoint < 200 then
			SystemNotice( character , "���������㲻��")
			return 0
		end
	local HonorPoint_X=HonorPoint-200
	SetItemAttr ( Book2 , ITEMATTR_VAL_STR,HonorPoint_X)
	local Item_CanGet = GetChaFreeBagGridNum ( character )
		
		if Item_CanGet <= 0 then
			SystemNotice(character ,"����û���㹻�Ŀռ�")
			UseItemFailed ( character )
			return
		end
	GiveItem ( character , 0 , 2614  , 1 , 4 ) 
end

function Change_rongyao (character, npc)
local NocLock =	KitbagLock( character, 0 )
		if NocLock == LUA_FALSE then
		SystemNotice( character , "���ı�����������״̬")
		return 0
	end
	local HonorBook_Num = 0
	local HonorBook_Num = CheckBagItem( character,3849 )
		if HonorBook_Num < 1 then
		SystemNotice( character , "������û������֤֮")
		return 0
		end
	local Book2 =  GetChaItem2 ( character , 2 , 3849 )
	local HonorPoint=GetItemAttr ( Book2 , ITEMATTR_VAL_STR)
		if HonorPoint < 2000 then
			SystemNotice( character , "���������㲻��")
			return 0
		end
	local HonorPoint_X=HonorPoint-2000
	SetItemAttr ( Book2 , ITEMATTR_VAL_STR,HonorPoint_X)
	local Item_CanGet = GetChaFreeBagGridNum ( character )
		
		if Item_CanGet <= 0 then
			SystemNotice(character ,"����û���㹻�Ŀռ�")
			UseItemFailed ( character )
			return
		end
	GiveItem ( character , 0 , 2615  , 1 , 4 )
end

function Change_huihuang (character, npc)
	local NocLock =	KitbagLock( character, 0 )
		if NocLock == LUA_FALSE then
		SystemNotice( character , "���ı�����������״̬")
		return 0
	end
	local HonorBook_Num = 0
	local HonorBook_Num = CheckBagItem( character,3849 )
		if HonorBook_Num < 1 then
		SystemNotice( character , "������û������֤֮")
		return 0
		end
	local Book2 =  GetChaItem2 ( character , 2 , 3849 )
	local HonorPoint=GetItemAttr ( Book2 , ITEMATTR_VAL_STR)
		if HonorPoint < 20000 then
			SystemNotice( character , "���������㲻��")
			return 0
		end
	local HonorPoint_X=HonorPoint-20000
	SetItemAttr ( Book2 , ITEMATTR_VAL_STR,HonorPoint_X)
	local Item_CanGet = GetChaFreeBagGridNum ( character )
		
		if Item_CanGet <= 0 then
			SystemNotice(character ,"����û���㹻�Ŀռ�")
			UseItemFailed ( character )
			return
		end
	GiveItem ( character , 0 , 2616  , 1 , 4 )
end
function Eleven_Log_0( role ) 
	local cha_name = GetChaDefaultName ( role ) 
	local job = GetChaAttr(role, ATTR_JOB)
	local lv = GetChaAttr(role, ATTR_LV) 
	LG( "Eleven_Log_0" ,cha_name,lv,job)
end
function Eleven_Log( role,typ ) 
	local cha_name = GetChaDefaultName ( role ) 
	local job = GetChaAttr(role, ATTR_JOB)
	local lv = GetChaAttr(role, ATTR_LV) 
	LG( "Eleven_Log" ,cha_name,lv,job,typ)
end
-------------------------------------------------------------------------------------
--				Leo�ķ���Ҵ��⽱��
-------------------------------------------------------------------------------------
function WGPrizeBegin( role , rightCount)
	local rightCountTemp = rightCount
	if rightCountTemp > 6 then
		rightCountTemp = 6
	end
	
	local isPrizeRandom = math.random(rightCountTemp,10)
	local retRandom = math.random ( 1 , 100 )
	local ret  = 1
	
	if isPrizeRandom > 5  then
		if math.mod ( retRandom , 6 ) == 0 then
			 ret = WGprize_1(role)
		end
		
		if math.mod ( retRandom , 6 ) == 1  then
			 ret = WGprize_2(role)
		end
		
		if math.mod ( retRandom , 6 ) == 2  then
			 ret = WGprize_3(role)
		end
		
		if math.mod ( retRandom , 6 ) == 3  then
			 ret = WGprize_4(role)
		end
		
		if math.mod ( retRandom , 6 ) == 4  then
			 ret = WGprize_5(role)
		end
		
		if math.mod ( retRandom , 6 ) == 5  then
			 ret = WGprize_6(role)
		end
		
		if ret ==1 then
			SystemNotice( role , "����ֵ����")
		end
	else
		SystemNotice( role , "������ȷ�����Ǻܿ�ϧû�г鵽����" )
	end
end
function WGprize_1( role ) --�Ӿ��� LV * 10
	local expNow = GetChaAttr( role , ATTR_CEXP )
	local lvNow = GetChaAttr( role , ATTR_LV)
	
	SystemNotice( role , "������ȷ��� " .. lvNow*10 .. " �㾭��ֵ")
	SetChaAttrI(  role , ATTR_CEXP ,expNow+lvNow*10  )
	RefreshCha(role)
	return 0
end

function WGprize_2( role ) --����ǰѪ����
	local bloodMaxNow = GetChaAttr( role , ATTR_MXHP)
	SystemNotice( role , "������ȷ�Զ��ָ���Ѫ״̬")
	SetChaAttrI( role , ATTR_HP ,bloodMaxNow  )
	RefreshCha(role)
	return 0
end

function WGprize_3(role) --����ǰ������
	local SPMaxNow = GetChaAttr( role , ATTR_MXSP)
	SystemNotice( role , "������ȷ�Զ��ָ���SP״̬")
	SetChaAttrI( role , ATTR_SP, SPMaxNow  )
	RefreshCha(role)
	return 0
end

function WGprize_4(role) --����LV*1������
	local lvNow = GetChaAttr( role , ATTR_LV)
	SystemNotice( role , "������ȷ��� " .. lvNow .. " ������")
	
	GiveItem( role , 0 , 1849  , lvNow , 4 )	
	return 0
end

function WGprize_5(role) --���ɽ���1��
	SystemNotice( role , "������ȷ��� 1�¾ɻ�Ʊ")
	
	GiveItem( role , 0 , 3141  , 1 , 4 )	
	return 0
end

function WGprize_6(role) --Ѫ��ȫ��
	local bloodMaxNow = GetChaAttr( role , ATTR_MXHP)
	local SPMaxNow = GetChaAttr( role , ATTR_MXSP)
	
	SystemNotice( role , "������ȷ�Զ��ָ���Ѫ��SP״̬")
	
	SetChaAttrI( role , ATTR_HP ,bloodMaxNow  )
	SetChaAttrI( role , ATTR_SP ,SPMaxNow  )
	RefreshCha(role)
	return 0
end

--Leo�Ķһ����
function Can_Exchange(sSrcItem,sSrcNum,sTagItem,sTagNum)
	local Data
	for Data in ChangeItemList do
		 if ChangeItemList[Data][1] == sSrcItem and  ChangeItemList[Data][2] == sSrcNum and ChangeItemList[Data][3] == sTagItem and ChangeItemList[Data][4] == sTagNum then
			return LUA_TRUE
		 end
	end
	return LUA_FALSE
end


function CheckTeam1 ( role , value )
	local player = {}
	player[1] = role
	player[2] = GetTeamCha( role , 0 )
	player[3] = GetTeamCha( role , 1 )
	player[4] = GetTeamCha( role , 2 )
	player[5] = GetTeamCha( role , 3 )

	local n = 0

	for j = 0 , 5 , 1 do	
		if ValidCha( player[j] )== 1  then					--��������Ӿ������Ľ�ɫ�������
			n = n+1
		end
	end
	if n >= value then
		return LUA_TRUE
	end
end

function SetTestTime ( role )
	local i = CheckBagItem( role,579 )
	local now_month= os.date("%m")		-------------��
	local now_day= os.date("%d")		-------------��
	local now_hour= os.date("%H")		-------------ʱ
	local now_miniute= os.date("%M")	-------------��
	local now_second=  os.date("%S")		-------------��
	now_month= tonumber(now_month)		-------------��     
	now_day= tonumber(now_day)			-------------��     
	now_hour= tonumber(now_hour)			-------------ʱ     
	now_miniute= tonumber(now_miniute)	 	-------------��     
	now_second= tonumber(now_second)		-------------��
--	SystemNotice( role , "֤������Ϊ"..i)
--	SystemNotice( role , "����ʱ��Ϊ"..now_month.."��"..now_day.."��"..now_hour.."ʱ"..now_miniute.."��"..now_second.."��")
	if i==1 then
		local Item = GetChaItem2 ( role , 2 , 579 )
		SetItemAttr(Item, ITEMATTR_VAL_STA, now_month )		-------------�� 	
		SetItemAttr(Item, ITEMATTR_VAL_STR, now_day )		-------------��  
		SetItemAttr(Item, ITEMATTR_VAL_CON, now_hour )		-------------ʱ   
		SetItemAttr(Item, ITEMATTR_VAL_DEX, now_miniute )		-------------��   
		SetItemAttr(Item, ITEMATTR_VAL_AGI, now_second )		-------------��
		SetItemAttr(Item, ITEMATTR_MAXENERGY, 0)
		SynChaKitbag(role,13)
		return LUA_TRUE
	end
end

function RenewTestTime1 ( role )
	local i = CheckBagItem( role,579 )
	local now_month= os.date("%m")		-------------��
	local now_day= os.date("%d")		-------------��
	local now_hour= os.date("%H")		-------------ʱ
	local now_miniute= os.date("%M")	-------------��
	local now_second=  os.date("%S")		-------------��
	now_month= tonumber(now_month)		-------------��     
	now_day= tonumber(now_day)			-------------��     
	now_hour= tonumber(now_hour)			-------------ʱ     
	now_miniute= tonumber(now_miniute)	 	-------------��     
	now_second= tonumber(now_second)		-------------�� 
--	SystemNotice( role , "֤������Ϊ"..i)
--	SystemNotice( role , "����ʱ��Ϊ"..now_month.."��"..now_day.."��"..now_hour.."ʱ"..now_miniute.."��"..now_second.."��")
	if i==1 then
		local Item = GetChaItem2 ( role , 2 , 579 )
--		SystemNotice( role , "1")
		local n = GetItemAttr ( Item , ITEMATTR_MAXENERGY )
--		SystemNotice( role , "ԭn="..n)
		local old_month = GetItemAttr ( Item, ITEMATTR_VAL_STA )
		local old_day = GetItemAttr ( Item, ITEMATTR_VAL_STR )
		local old_hour = GetItemAttr ( Item, ITEMATTR_VAL_CON )
--		SystemNotice( role , "ԭmonth="..old_month)
--		SystemNotice( role , "ԭday="..old_day)
--		SystemNotice( role , "ԭhour="..old_hour)
		local old_miniute = GetItemAttr ( Item, ITEMATTR_VAL_DEX )
		local old_second = GetItemAttr ( Item, ITEMATTR_VAL_AGI )
--		SystemNotice( role , "ԭminiute="..old_miniute)
--		SystemNotice( role , "ԭsecond="..old_second)
		local used_time=(now_second - old_second)+(now_miniute - old_miniute)*60+(now_hour - old_hour)*3600+(now_day - old_day)*86400+(now_month - old_month)*259200
--		SystemNotice( role , "����ʱ��Ϊ"..used_time)
		if used_time <= 30 then
			n = n + 1
		end
--		SystemNotice( role , "��Դ���Ϊ"..n)
		SetItemAttr(Item, ITEMATTR_VAL_STA, now_month )		-------------�� 	
		SetItemAttr(Item, ITEMATTR_VAL_STR, now_day )		-------------��  
		SetItemAttr(Item, ITEMATTR_VAL_CON, now_hour )		-------------ʱ   
		SetItemAttr(Item, ITEMATTR_VAL_DEX, now_miniute )		-------------��   
		SetItemAttr(Item, ITEMATTR_VAL_AGI, now_second )		-------------��
		SetItemAttr(Item, ITEMATTR_MAXENERGY, n)
		SynChaKitbag(role,13)
		return LUA_TRUE
	end
end

function RenewTestTime2 ( role )
	local i = CheckBagItem( role,579 )
	local now_month= os.date("%m")		-------------��
	local now_day= os.date("%d")		-------------��
	local now_hour= os.date("%H")		-------------ʱ
	local now_miniute= os.date("%M")	-------------��
	local now_second=  os.date("%S")		-------------��
	now_month= tonumber(now_month)		-------------��     
	now_day= tonumber(now_day)			-------------��     
	now_hour= tonumber(now_hour)			-------------ʱ     
	now_miniute= tonumber(now_miniute)	 	-------------��     
	now_second= tonumber(now_second)		-------------��     
	if i==1 then
		local Item = GetChaItem2 ( role , 2 , 579 )
		SetItemAttr(Item, ITEMATTR_VAL_STA, now_month )		-------------�� 	
		SetItemAttr(Item, ITEMATTR_VAL_STR, now_day )		-------------��  
		SetItemAttr(Item, ITEMATTR_VAL_CON, now_hour )		-------------ʱ   
		SetItemAttr(Item, ITEMATTR_VAL_DEX, now_miniute )		-------------��   
		SetItemAttr(Item, ITEMATTR_VAL_AGI, now_second )		-------------��
		return LUA_TRUE
	end
end


function CheckRightNum ( role )
	local i = CheckBagItem( role,579 )
	if i==1 then
		local Item = GetChaItem2 ( role , 2 , 579 )
		local n = GetItemAttr ( Item , ITEMATTR_MAXENERGY )
		if n == 8 then
			return LUA_TRUE
		end
	end
end

function CheckErroNum ( role )
	local i = CheckBagItem( role,579 )
	if i==1 then
		local Item = GetChaItem2 ( role , 2 , 579 )
		local n = GetItemAttr ( Item , ITEMATTR_MAXENERGY )
		if n < 8 then
			return LUA_TRUE
		end
	end
end

function CheckRealNpc ( role , value )
	local now_hour= os.date("%H")		-------------ʱ
	now_hour= tonumber(now_hour)			-------------ʱ 
	local n = ( now_hour/4 - math.floor ( now_hour/4 )) * 4
	if n == value then
		return LUA_TRUE
	else
		SystemNotice( role, "һ��ͷ���ۻ�֮��,�㱻�ٵĿ�����˹�����˰���")
	end
end

---------------------------------------------------kokora--------------------------------------------------

---------------------------------------------------����ʮ�´�բз�֮����7200�;�ֵ��з��
function Givecrab( character  )	
	local c1=0
	local c2=0
	c1,c2 =MakeItem(character, 58, 1, 4)			--value���ǵ���ID   C2�Ƿ��صĴ�������λ�ñ��
	local Item_CRAB = GetChaItem ( character , 2 , c2 )			--�ӽ�ɫ�ı���λ 2 ȡλ�� C2�ĵ��ߵ�ָ��
	
	local CRAB_NOW = 7200                                                                              
	
	SetItemAttr(Item_CRAB, ITEMATTR_MAXENERGY, CRAB_NOW)						--��������;�
	SetItemAttr(Item_CRAB, ITEMATTR_ENERGY, CRAB_NOW)								 --���õ�ǰ�;ã���ֵ��ÿ���Ӻ���һ��
	RefreshCha( character )
	SystemNotice (character , "з���������ڱ�������2��Ż���׳�ɳ���" )
end


---------------------------------------------------����ʮ�´�բз�֮�ж�з���;��Ƿ�Ϊ0
function crablife( character )
	local Crab_Num = 0
	Crab_Num = CheckBagItem(  character , 58 )		--��鱳����58�ŵ��ߵ�����
	
	if Crab_Num == 1 then				--���58�ŵ��ߵ��������ڵ���1
		local crab = GetChaItem2 (  character , 2 , 58 )			--ȡ����ɫ�����ڵ���IDΪ58�ĵ��ߵ�ָ��
		local ENERGY = GetItemAttr(crab, ITEMATTR_ENERGY)
		if ENERGY ==0 then
			return LUA_TRUE
		end
	else
		SystemNotice( character, "��ȷ����������ֻ��һֻз��")
	end

end

---------------------------------------------------kokora--------------------------------------------------

--�������̸�����

function GiveZNZItem ( role )
		SystemNotice(role ,"������")
	local cha_name = GetChaDefaultName ( role ) 
	local star=math.random ( 1, 10000 )
	--SystemNotice(role ,"star=="..star)
	if star<=8000 then
		GiveItem ( role , 0 , 2999  , 1 , 4  )
	elseif star>=8001 and star<=9500 then
		local el = math.random ( 1, 15 )
		if el<=5  then
			GiveItem ( role , 0 , 0227  , 1 , 4 )
		elseif el>=6 and el<=7 then
			GiveItem ( role , 0 , 3111  , 1 , 4 )
		elseif el>=8 and el<=9 then
			GiveItem ( role , 0 , 3109  , 1 , 4 )
		elseif el>=10 and el<=11 then
			GiveItem ( role , 0 , 3110  , 1 , 4 )
		elseif el>=12 and el<=13 then
			GiveItem ( role , 0 , 3112  , 1 , 4 )
		elseif el>=14 and el<=15 then
			GiveItem ( role , 0 , 3113  , 1 , 4 )
		end


	elseif star>=9501 and star<=9800 then
		local el1= math.random ( 1, 5 )
		if el1==1  then
			GiveItem ( role , 0 , 0863  , 1 , 4 )
			local message = cha_name.."��Ʒ����,������˲ر�ͼ̽���� ����" 
			Notice ( message )
		elseif el1==2 then
			GiveItem ( role , 0 , 0860  , 1 , 4 )
			local message1 = cha_name.."��Ʒ����,������˲ر�ͼ̽���� ����ʯ" 
			Notice ( message1 )
		elseif el1==3 then
			GiveItem ( role , 0 , 0861  , 1 , 4 )
			local message2 = cha_name.."��Ʒ����,������˲ر�ͼ̽���� ӥ��ʯ" 
			Notice ( message2 )
		elseif el1==4 then
			GiveItem ( role , 0 , 0862  , 1 , 4 )
			local message3 = cha_name.."��Ʒ����,������˲ر�ͼ̽���� ����" 
			Notice ( message3 )
		elseif el1==5 then
			GiveItem ( role , 0 , 1028  , 1 , 4 )
			local message4 = cha_name.."��Ʒ����,������˲ر�ͼ̽���� Ħ����ʯ" 
			Notice ( message4 )
		end
	
	
	elseif star>=9801 and star<=9998 then
		local el2= math.random ( 1, 100 )
		if el2<=50  then
			GiveItem ( role , 0 , 0992  , 1 , 4 )
			local message5 = cha_name.."��Ʒ����,������˲ر�ͼ̽���� �ɳ����" 
			Notice ( message5 )
		elseif el2>=51 and el2<=74 then
			GiveItem ( role , 0 , 0853  , 1 , 4 )
			local message6 = cha_name.."��Ʒ����,������˲ر�ͼ̽���� ���ڻ�����־" 
			Notice ( message6 )
		elseif el2>=75 and el2<=100 then
			GiveItem ( role , 0 , 1012  , 1 , 4 )
			local message7 = cha_name.."��Ʒ����,������˲ر�ͼ̽���� ����֮��" 
			Notice ( message7 )
		end

	elseif star>=9899 and star<=10000 then
		local el3= math.random ( 1, 100 )
		if el3==63  then
			GiveItem ( role , 0 , 0096  , 1 , 4 )
			local message8= cha_name.."��Ʒ����,������˲ر�ͼ̽���� ����֮��" 
			Notice ( message8 )
		elseif el3==98  then
			GiveItem ( role , 0 , 0094  , 1 , 4 )
			local message9 = cha_name.."��Ʒ����,������˲ر�ͼ̽���� Ԫ˧֮��" 
			Notice ( message9 )
		end
	end
end

-------------------------------------------------------------------------------------
--				Leo�Ķ���ϵͳ����   
-------------------------------------------------------------------------------------
--ѧ��֤���Զ�Ӧ
--ITEMATTR_FORGE                 ѧ�� ֵ��0��1��2��3��4 ��Ӧ   �׶�԰��Сѧ�����У����У���ѧ
--ITEMATTR_MAXENERGY            �����
--ITEMATTR_MAXURE          ���ѧ��
--ITEMATTR_ENERGY                     ��ǰ����
--ITEMATTR_URE                  ��ǰѧ��

--�鱾���Զ�Ӧ
--ITEMATTR_URE                          ��ǰ�;�
--ITEMATTR_MAXURE                  ����;�
---------------------------------------------------------------------------------
-- �����б�
-- Check_Skill_Rad( Skill_Level )                                              --ͨ�����ܵȼ�ȡ�ü��ܵľ���ӳ�ֵ
-- Check_Equip_Rad( Buff_Equip_ID )		                              --ͨ������ƷIDȡ�ø���Ʒ�ľ���ӳ�ֵ
--  Check_Item_Rad(role)															  --ͨ����ɫȡ�ӳɾ����״̬
-- Check_Exp_Increase( Book_ID )	                                          --ͨ����IDȡ���鱾�ľ�������ֵ
-- Add_BookEXP(role , Certificate , Book_ID , Skill_Level)    --��ѧ��֤����Ӿ���ĺ�������Reading_Book�е���
-- Take_BookDurability(role , Book)                                           --�۳�����װ��������;ú�������Reading_Book�е���
-- Reading_Book(role,Skill_Level)											   --             ������               ���麯�����������ڽ�ɫ�������״̬ʱ�ɷ�����ÿ��һ���ӵ���һ��
function Check_Skill_Rad( Skill_Level )			--ȡ�ü��ܵľ���ӳ�ֵ	
		local Skill_Rad												--LuaΪʲôû��switch!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
		if Skill_Level == 2 then
			Skill_Rad = 0.05
		elseif Skill_Level == 3 then
			Skill_Rad = 0.10
		elseif Skill_Level == 4 then
			Skill_Rad = 0.15
		elseif Skill_Level == 5 then
			Skill_Rad = 0.2
		else
			Skill_Rad = 0
		end

		return Skill_Rad
end

function Check_Equip_Rad( Buff_Equip_ID )		--ȡ�ø���Ʒ�ľ���ӳ�ֵ
		local Equip_Rad
		if Buff_Equip_ID == 3285then
			Equip_Rad = 0.05
		elseif Buff_Equip_ID == 3287 then
			Equip_Rad = 0.1
		else
			Equip_Rad = 0
		end
		
		return Equip_Rad
end

function Check_Item_Rad(role)							--ͨ����ɫȡ�ӳɾ����״̬
	local stateLV_Apple
	local Item_Rad
	
	stateLV_Apple = GetChaStateLv ( role , STATE_APPLE )		--ȡ�ǻ۹�״̬�ȼ�
	
	if stateLV_Apple == 1 then
		Item_Rad = 0.3

	elseif stateLV_Apple == 2 then
		Item_Rad = 0.5
	else
		Item_Rad = 0
	end
	
	return Item_Rad
end

function Check_Exp_Increase( Book_ID )		--ͨ��IDȡ���鱾�ľ�������ֵ
		local Book_ID_mod
		local Book_Exp_Increase
		
		--���ű���
		if Book_ID >= 3243 and Book_ID <= 3246 then            --δתְ   ����
				Book_Exp_Increase = 1
		elseif Book_ID >= 3247 and Book_ID <= 3250 then     --�м�
				Book_Exp_Increase = 3
		elseif Book_ID >= 3251 and Book_ID <= 3254 then     --�߼�
				Book_Exp_Increase =5
		elseif Book_ID >= 3255 and Book_ID <= 3260 then		--תְ  ����
				Book_Exp_Increase = 9
		elseif Book_ID >= 3261 and Book_ID <= 3266 then      --�м�
				Book_Exp_Increase = 13
		elseif Book_ID >= 3267 and Book_ID <= 3272 then       --�߼�
				Book_Exp_Increase = 18
		elseif Book_ID >= 3273 and Book_ID <= 3278 then       --ʵ�ü��ɴ�ȫ
				Book_Exp_Increase = 24
		else
				Book_Exp_Increase = 0
		end
		
		return Book_Exp_Increase
end

function Add_BookEXP(role , Certificate , Book_ID , Skill_Level)    --����������Ӿ���ĺ�������Reading_Book�е���
		
		local Role_Level
		local Buff_Equip
		local Buff_Equip_ID
		local Exp_Increase				--����ɳ���
		local Skill_Rad
		local Equip_Rad
		local Item_Rad
		local DoubleEffect
		
		Role_Level = Lv( role )
		Buff_Equip= GetChaItem ( role , 1 , 6 )                        --ȡ����װ��ָ��
		Buff_Equip_ID = GetItemID( Buff_Equip )
		
		Skill_Rad = Check_Skill_Rad(Skill_Level)					--ȡ���ܶԾ���ļӳ�ֵ
		Equip_Rad = Check_Equip_Rad(Buff_Equip_ID)		--ȡװ���Ծ���ļӳ�ֵ
		Item_Rad = Check_Item_Rad(role)								--ȡ��ɫ״̬�Ծ���ļӳ�ֵ
		Exp_Increase = Check_Exp_Increase( Book_ID )		--ȡ��������ֵ

		Exp_Increase = Exp_Increase * ( 1 + Skill_Rad + Equip_Rad + Item_Rad )		--��������
		
		--��ʼ�Ӿ���
		local Book_Exp_Now = GetItemAttr( Certificate , ITEMATTR_ENERGY )			--ȡ��ǰ����
		local Book_Exp_Max =  GetItemAttr( Certificate , ITEMATTR_MAXENERGY )	--ȡ���;���
		
		Book_Exp_Now = Book_Exp_Now + Exp_Increase
		
		if Book_Exp_Now >= Book_Exp_Max then
			Book_Exp_Now = Book_Exp_Max
		end
		
		SetItemAttr ( Certificate , ITEMATTR_ENERGY , Book_Exp_Now )
end

function  Take_BookDurability(role , Book , Certificate)  --�۳�����װ�����;ú�������Reading_Book�е���
--		SystemNotice(role , "��ʼ�۳��鱾�;�")		
		
		local Durability_Reduce = 250					--�;ü�����
		local Book_Dur_Now = GetItemAttr( Book , ITEMATTR_URE )
		local Book_Dur_Max = GetItemAttr( Book , ITEMATTR_MAXURE )
		
		local Certificate_Exp_Now = GetItemAttr( Certificate , ITEMATTR_ENERGY )			--ȡѧ��֤��ǰ����
		local Certificate_Exp_Max =  GetItemAttr( Certificate , ITEMATTR_MAXENERGY )	--ȡѧ��֤���;���
		
		if Certificate_Exp_Now == Certificate_Exp_Max then
			SystemNotice(role, "���ѧ��֤�еľ����Ѿ��������ˣ��뼰ʱ�μ�С����һ�����")
			return 0
		end
		SystemNotice(role,"ͨ��Ŭ����ѧϰ�����ѧ��֤�еľ������ӡ�")
		Book_Dur_Now =  Book_Dur_Now - Durability_Reduce
		
		if Book_Dur_Now <=0 then
			Book_Dur_Now = 0
		end
		
		SetItemAttr ( Book , ITEMATTR_URE , Book_Dur_Now )
end

function Reading_Book(role,Skill_Level)			--���麯�����������ڽ�ɫ�������״̬ʱ����
		--1������Ƿ���Զ��飬���ɶ����˳�����
		--2����Ƕ��鿪��Ϊ����״̬
		--3����ʼ�����������ۼƾ���
		--4����ʼ�����۳�����;�
--		SystemNotice( role , "��ʼ����" )
		
		local Book
		local Book_ID

		local Certificate
		local Certificate_ID
		
		Book = GetChaItem ( role , 1 , 9 )                        --ȡס��װ��ָ��
		Book_ID =  GetItemID( Book )           								   --ȡ��װ��ID

		Certificate = GetChaItem ( role , 1 , 5 )                --ȡ����װ��ָ��
		Certificate_ID = GetItemID( Certificate )                 --ȡ��װ��ID
		local Book_Dur = GetItemAttr( Book , ITEMATTR_URE )
		if Book_Dur > 0 then
			if  Certificate_ID == 3289 then							             	--���ID����ѧ��֤
				if  Book_ID >= 3243 and  Book_ID <= 3278 then
					Take_BookDurability( role , Book , Certificate)     --�۳����;�
					Add_BookEXP( role , Certificate , Book_ID,Skill_Level )	    --��ѧ��֤����Ӿ���
					Refreshcha( role )
				else
					SystemNotice(role,"û���鱾��ô������")
				end
			else
				SystemNotice(role,"û��ѧ��֤��ôѧϰ����")
			end
		else
			SystemNotice(role,"�����������������ʹ���ˡ�")
		end
end

----ѧ�����ֵ
	Reading_Credit = {}
	Reading_Credit[0] = 150
	Reading_Credit[1] = 250
	Reading_Credit[2] = 400
	Reading_Credit[3] = 800
	Reading_Credit[4] = 4500	
	
----�������ֵ
	Reading_EXP = {}
	Reading_EXP[0] = 120
	Reading_EXP[1] = 700
	Reading_EXP[2] = 1700
	Reading_EXP[3] = 3000
	Reading_EXP[4] = 5000
	


-------���ѧ��֤�о����Ƿ����          --������
function CheckXSZExp( character )
	local xsz_num = 0
	xsz_num = CheckBagItem( character, 3289 )
	if xsz_num ~= 1 then
		SystemNotice ( character , "���ѧ��֤���ڱ�����")
		return 0
	end
	local role_xsz = GetChaItem2 ( character , 2 , 3289 )
	local exp_xsz = GetItemAttr ( role_xsz , ITEMATTR_ENERGY )
	local mexp_xsz = GetItemAttr ( role_xsz, ITEMATTR_MAXENERGY)
	-- SystemNotice( character , ""..exp_xsz)
	-- SystemNotice( character , ""..mexp_xsz)
	if exp_xsz == mexp_xsz then
		return LUA_TRUE
	end

	return LUA_FALSE
end

------���ѧ��֤��ѧ���Ƿ����
function CheckXSZCh( character )
	local xsz_num = 0
	xsz_num = CheckBagItem( character, 3289 )
	if xsz_num ~= 1 then
			SystemNotice( character , "���ѧ��֤���ڱ�����")
			return 0
	end
	local role_xsz = GetChaItem2 ( character , 2 , 3289 )
	local ch_xsz = GetItemAttr ( role_xsz , ITEMATTR_URE )
	local mch_xsz = GetItemAttr ( role_xsz , ITEMATTR_MAXURE )
	if ch_xsz == mch_xsz then
		return LUA_TRUE
	end
	
	return	LUA_FALSE
end

function ReadBookTime()					---------------�趨READINGBOOK�������ü��
--	Notice( "ʱ���趨")
	return 600*1000
end

function ReadBookSkillId()				--------------�趨READINGBOOK�������ܱ��
--	Notice( "���ܱ���趨")
	return 461
end

-------------------------------------------------------------------------------------
--				Leo  end
-------------------------------------------------------------------------------------
--������ʹ��֤�鲢��עʹ��ʱ��--------function


function AuctionEnd (role)
	local sc = CheckBagItem( role, 3025 )	                    -------------080317kokora change	
	if sc <=0 then
		SystemNotice( role ,"��ȷ��������Я�н��þ��꿨")
		return 0
	end
	--local s = DelBagItem ( role , 3025 , 1 ) 
	local item_number = CheckBagItem( role, 3066 )		
	if item_number >=1 then
		SystemNotice( role ,"��ȷ��������û�н���ʹ��֤��")
		return 0
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <2 then
		SystemNotice(role ,"��ȷ����2��ʣ��ռ�")
		return 0
	end
	GiveItem ( role , 0 , 3666 , 10 , 4) ---------------�α�����
	DelBagItem(role,3025,1)
	local r1=0
	local r2=0
	r1,r2 =MakeItem ( role , 3066  , 1 , 4 )
	local Item_new = GetChaItem ( role , 2 , r2 )
	
	----------��¼ʱ��
	
	local now_month= os.date("%m")		-------------��
	local now_day= os.date("%d")		-------------��
	local now_hour= os.date("%H")		-------------ʱ 
	local now_miniute= os.date("%M")	-------------��
	local now_day1= 0
	local now_month1= 0
	local now_hour1= 0
	local now_miniute1= 0
	    
	now_month= tonumber(now_month)		-------------��     
	now_day= tonumber(now_day)			-------------��    
	now_hour= tonumber(now_hour)		
	now_miniute= tonumber(now_miniute)
	local CheckDateNum = now_hour*100 +now_miniute

if CheckDateNum==1830  then 

	now_hour1= 18
	now_miniute1= 0
	if now_month==1 or now_month==3 or now_month==5 or now_month==7 or now_month==8 or now_month==10 or now_month==12 then 
		 if now_day<=26 then 
		    now_day1=now_day+5
		    now_month1=now_month
		 elseif now_day>26 then 
		    now_day1=(now_day+5)-31
		    now_month1=now_month+1
	         end 
	end

	if now_month==4 or now_month==6 or now_month==9 or now_month==11 then 
		 if now_day<=25 then 
		    now_day1=now_day+5
		    now_month1=now_month
		 elseif now_day>25 then 
		    now_day1=(now_day+5)-30
		    now_month1=now_month+1
	         end 
	end

	if now_month==2 then 
		 if now_day<=23 then 
		    now_day1=now_day+5
		    now_month1=now_month
		 elseif now_day>23 then 
		    now_day1=(now_day+5)-28
		    now_month1=now_month+1
		    	
	         end 

	end
	
elseif CheckDateNum==1910  then 
	now_hour1= 20
	now_miniute1= 10	
	if now_month==1 or now_month==3 or now_month==5 or now_month==7 or now_month==8 or now_month==10 or now_month==12 then 
		 if now_day<=26 then 
		    now_day1=now_day+5
		    now_month1=now_month
		 elseif now_day>26 then 
		    now_day1=(now_day+5)-31
		    now_month1=now_month+1
	         end 
	end

	if now_month==4 or now_month==6 or now_month==9 or now_month==11 then 
		 if now_day<=25 then 
		    now_day1=now_day+5
		    now_month1=now_month
		 elseif now_day>25 then 
		    now_day1=(now_day+5)-30
		    now_month1=now_month+1
	         end 
	end

	if now_month==2 then 
		 if now_day<=23 then 
		    now_day1=now_day+5
		    now_month1=now_month
		 elseif now_day>23 then 
		    now_day1=(now_day+5)-28
		    now_month1=now_month+1
	         end 
	end

elseif CheckDateNum==1950  then 
	now_hour1= 18
	now_miniute1= 0  
	if now_month==1 or now_month==3 or now_month==5 or now_month==7 or now_month==8 or now_month==10 or now_month==12 then 
		 if now_day<=25 then 
		    now_day1=now_day+6
		    now_month1=now_month
		 elseif now_day>25 then 
		    now_day1=(now_day+6)-31
		    now_month1=now_month+1
	         end 
	end

	if now_month==4 or now_month==6 or now_month==9 or now_month==11 then 
		 if now_day<=24 then 
		    now_day1=now_day+6
		    now_month1=now_month
		 elseif now_day>24 then 
		    now_day1=(now_day+6)-30
		    now_month1=now_month+1
	         end 
	end

	if now_month==2 then 
		 if now_day<=22 then 
		    now_day1=now_day+6
		    now_month1=now_month
		 elseif now_day>22 then 
		    now_day1=(now_day+6)-28
		    now_month1=now_month+1
	         end 
	end

elseif CheckDateNum==2030  then 

	 now_hour1= 20
	 now_miniute1= 10
	if now_month==1 or now_month==3 or now_month==5 or now_month==7 or now_month==8 or now_month==10 or now_month==12 then 
		 if now_day<=25 then 
		    now_day1=now_day+6
		    now_month1=now_month
		 elseif now_day>25 then 
		    now_day1=(now_day+6)-31
		    now_month1=now_month+1
	         end 
	end

	if now_month==4 or now_month==6 or now_month==9 or now_month==11 then 
		 if now_day<=24 then 
		    now_day1=now_day+6
		    now_month1=now_month
		 elseif now_day>24 then 
		    now_day1=(now_day+6)-30
		    now_month1=now_month+1
	         end 
	end

	if now_month==2 then 
		 if now_day<=22 then 
		    now_day1=now_day+6
		    now_month1=now_month
		 elseif now_day>22 then 
		    now_day1=(now_day+6)-28
		    now_month1=now_month+1
	         end 
	end

end
	--SystemNotice ( role , "now_month1=="..now_month1 )
	--SystemNotice ( role , "now_day1=="..now_day1 )
	--SystemNotice ( role , "now_hour1=="..now_hour1 )
	--SystemNotice ( role , "now_miniute1=="..now_miniute1 )
---------------------��עʱ��
	SetItemAttr(Item_new, ITEMATTR_VAL_STA, now_month1 )		-------------�� 	
	SetItemAttr(Item_new, ITEMATTR_VAL_STR, now_day1 )		-------------��  
	SetItemAttr(Item_new, ITEMATTR_VAL_CON, now_hour1 )		-------------ʱ 
	SetItemAttr(Item_new, ITEMATTR_VAL_DEX, now_miniute1 )		-------------��
	SynChaKitbag(role,13)
end

--------------�����ʸ�
function YORN (role)
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <2 then
		SystemNotice(role ,"��ȷ����2��ʣ��ռ�")
		return  0
	end

	local item_number1 = CheckBagItem( role, 3066 )		
	if item_number1 >=1 then
		SystemNotice( role ,"��ȷ��������û�н���ʹ��֤��")
		return 0
	end
	
	local item_number2 = CheckBagItem( role, 3078 )		
	if item_number2 >=1 then
		SystemNotice( role ,"��ȷ��������û�����")
		return  0
	end
	
	local item_number3 = CheckBagItem( role, 3025 )		
	if item_number3 <1 then
		SystemNotice( role ,"��ȷ���������н��þ��꿨")
		return  0
	end
	 return  1
end

----���ѧ��֤����������0
function HasReadExp( role )
		local xsz_num = 0
	xsz_num = CheckBagItem(  role, 3289 )
	if xsz_num ~= 1 then
		SystemNotice (  role , "���ѧ��֤���ڱ�����")
		return 0
	end
	local role_xsz = GetChaItem2 (  role , 2 , 3289 )
	local exp_xsz = GetItemAttr ( role_xsz , ITEMATTR_ENERGY )
	
	if exp_xsz > 0 then
		return LUA_TRUE
	end
	
	return LUA_FALSE
end

---------------����Ӳ�ұ���
function GiveBragiItem ( role , value )
	local pinzhi = 0
	local ChaName = GetChaDefaultName ( role )
	local a = math.random ( 1 , 100000000 )
	--SystemNotice ( role , "RP="..a)
--	if a >= 1 and a <= 14 then							----��75BOSSװ
--		local Item_Id = a + 2330
--		local Item_Name = GetItemName ( Item_Id )
--		GiveItem ( role , 0 , Item_Id , 1 , 4 )
--		Notice ( "��ϲ"..ChaName.."�򿪾���Ӳ�ұ��䣬��Ʒ���������"..Item_Name)
--		LG ( "JLYBBOX" , "���"..ChaName.."��������Ӳ�ұ���õ�"..Item_Name)
--	elseif a >= 15 and a <= 33 then							-----��75BOSSװ
--		local Item_Id = a + 2802
--		local Item_Name = GetItemName ( Item_Id )
--		GiveItem ( role , 0 , Item_Id , 1 , 4 )
--		Notice ( "��ϲ"..ChaName.."�򿪾���Ӳ�ұ��䣬��Ʒ���������"..Item_Name)
--		LG ( "JLYBBOX" , "���"..ChaName.."��������Ӳ�ұ���õ�"..Item_Name)
	if a >= 1 and a <= 10000000 then						------��1%����
		AddExpAll ( role , 1, 1, 2 )
	elseif a >= 10000001 and a <= 12200000 then					------��2%����
		AddExpAll ( role , 2, 2, 2 )
	elseif a >= 12200001 and a <= 42200000 then					------��Ǯ
		--SystemNotice ( role , "����")
--		local minval = value 
--		local maxval = value * 10
--		--SystemNotice ( role , "��СΪ"..minval.."���Ϊ"..maxval)
--		local b = math.random ( minval , maxval )
--		--SystemNotice ( role , "��Ǯ"..b)
--		local Money_Add = b * 10000
--		AddMoney ( role , 0 , Money_Add )
		AddExpAll( role, 100000, 1000000, 1)
	elseif a >= 42200001 and a <= 62200000 then					------10�������ָ�ҩ��
		GiveItem ( role , 0 , 3848 , 10 , 4 )
	elseif a >= 62200001 and a <= 65500000 then					------������װ��
		local c = math.random ( 1 , 35 )
		if c >= 1 and c <= 33 then
			local Item_Id = c + 3301
			GiveItem ( role , 0 , Item_Id , 1 , 4 )
		else
			local Item_Id = c + 54
			GiveItem ( role , 0 , Item_Id , 1 , 4 )
		end
	elseif a >= 65500001 and a <= 67500000 then					------3��ǿЧ�����ָ���3��SP����ˮ
		GiveItem ( role , 0 , 3098 , 3 , 4 )
		GiveItem ( role , 0 , 3099 , 3 , 4 )
	elseif a >= 67500001 and a <= 87500000 then					------��Ʊ
		local d = math.random ( 1 , 16 )
		if d == 1 then 
			GiveItem ( role , 0 , 3056 , 3 , 4 )
		elseif d == 2 then
			GiveItem ( role , 0 , 3057 , 3 , 4 )
		elseif d == 3 then
			GiveItem ( role , 0 , 3058 , 3 , 4 )
		elseif d == 4 then
			GiveItem ( role , 0 , 3059 , 3 , 4 )
		elseif d == 5 then
			GiveItem ( role , 0 , 3060 , 3 , 4 )
		elseif d == 6 then
			GiveItem ( role , 0 , 3050 , 3 , 4 )
		elseif d == 7 then
			GiveItem ( role , 0 , 3051 , 3 , 4 )
		elseif d == 8 then
			GiveItem ( role , 0 , 3052 , 3 , 4 )
		elseif d == 9 then
			GiveItem ( role , 0 , 3053 , 3 , 4 )
		elseif d == 10 then
			GiveItem ( role , 0 , 3048 , 3 , 4 )
		elseif d == 11 then
			GiveItem ( role , 0 , 332 , 3 , 4 )
		elseif d == 12 then
			GiveItem ( role , 0 , 563 , 3 , 4 )
		elseif d == 13 then
			GiveItem ( role , 0 , 583 , 3 , 4 )
		elseif d == 14 then
			GiveItem ( role , 0 , 2447 , 3 , 4 )
		elseif d == 15 then
			GiveItem ( role , 0 , 2491 , 3 , 4 )
		elseif d == 16 then
			GiveItem ( role , 0 , 2844 , 3 , 4 )
		end
	elseif a >= 87500001 and a <= 93500000 then					----����ʯ
		GiveItem ( role , 0 , 885 , 1 , 4 )
	elseif a >= 93500001 and a <= 94500000 then					----��ʯ
		local e = math.random ( 1 , 11 )
		if e >= 1 and e <= 4 then
			local Item_Id = e + 859
			GiveItem ( role , 0 , Item_Id , 1 , 4 )
		else
			local Item_Id = e + 873
			GiveItem ( role , 0 , Item_Id , 1 , 4 )
		end
	else		
		local f = math.random ( 1 , 58 )
		if value == 1 then
			pinzhi = 4
		elseif value == 2 then
			pinzhi = 16
		elseif value == 3 then
			pinzhi = 22
		else
			SystemNotice( role , "�����Ʒ�õ�����Ҳ��֪���ø���ʲô��")
		end
		if f == 1 then
			GiveItem ( role , 0 , 0299 , 1 , pinzhi) 
		elseif f == 2 then
			GiveItem ( role , 0 , 0475 , 1 , pinzhi) 
		elseif f == 3 then
			GiveItem ( role , 0 , 0651 , 1 , pinzhi) 
		elseif f == 4 then
			GiveItem ( role , 0 , 0304 , 1 , pinzhi) 
		elseif f == 5 then
			GiveItem ( role , 0 , 0480 , 1 , pinzhi) 
		elseif f == 6 then
			GiveItem ( role , 0 , 0656 , 1 , pinzhi) 
		elseif f == 7 then
			GiveItem ( role , 0 , 0229 , 1 , pinzhi) 
		elseif f == 8 then
			GiveItem ( role , 0 , 653 , 1 , pinzhi)  
		elseif f == 9 then
			GiveItem ( role , 0 , 0230 , 1 , pinzhi) 
		elseif f == 10 then
			GiveItem ( role , 0 , 477 , 1 , pinzhi)  
		elseif f == 11 then
			GiveItem ( role , 0 , 0371 , 1 , pinzhi) 
		elseif f == 12 then
			GiveItem ( role , 0 , 0547 , 1 , pinzhi)  
		elseif f == 13 then
			GiveItem ( role , 0 , 0723 , 1 , pinzhi) 
		elseif f == 14 then
			GiveItem ( role , 0 , 0394 , 1 , pinzhi) 
		elseif f == 15 then
			GiveItem ( role , 0 , 0570 , 1 , pinzhi)  
		elseif f == 16 then
			GiveItem ( role , 0 , 0746 , 1 , pinzhi) 
		elseif f == 17 then
			GiveItem ( role , 0 , 0382 , 1 , pinzhi) 
		elseif f == 18 then
			GiveItem ( role , 0 , 0558 , 1 , pinzhi)  
		elseif f == 19 then
			GiveItem ( role , 0 , 0734 , 1 , pinzhi) 
		elseif f == 20 then
			GiveItem ( role , 0 , 2204 , 1 , pinzhi) 
		elseif f == 21 then
			GiveItem ( role , 0 , 0393 , 1 , pinzhi) 
		elseif f == 22 then
			GiveItem ( role , 0 , 0569 , 1 , pinzhi)  
		elseif f == 23 then
			GiveItem ( role , 0 , 0745 , 1 , pinzhi) 
		elseif f == 24 then
			GiveItem ( role , 0 , 2215 , 1 , pinzhi) 
		elseif f == 25 then
			GiveItem ( role , 0 , 0385 , 1 , pinzhi) 
		elseif f == 26 then
			GiveItem ( role , 0 , 0561 , 1 , pinzhi)  
		elseif f == 27 then
			GiveItem ( role , 0 , 0737 , 1 , pinzhi) 
		elseif f == 28 then
			GiveItem ( role , 0 , 2207 , 1 , pinzhi) 
		elseif f == 29 then
			GiveItem ( role , 0 , 0364 , 1 , pinzhi) 
		elseif f == 30 then
			GiveItem ( role , 0 , 0540 , 1 , pinzhi)  
		elseif f == 31 then
			GiveItem ( role , 0 , 0716 , 1 , pinzhi) 
		elseif f == 32 then
			GiveItem ( role , 0 , 2201 , 1 , pinzhi) 
		elseif f == 33 then
			GiveItem ( role , 0 , 0355 , 1 , pinzhi) 
		elseif f == 34 then
			GiveItem ( role , 0 , 0531 , 1 , pinzhi)  
		elseif f == 35 then
			GiveItem ( role , 0 , 0707 , 1 , pinzhi) 
		elseif f == 36 then
			GiveItem ( role , 0 , 2192 , 1 , pinzhi) 
		elseif f == 37 then
			GiveItem ( role , 0 , 0358 , 1 , pinzhi) 
		elseif f == 38 then
			GiveItem ( role , 0 , 0534 , 1 , pinzhi)  
		elseif f == 39 then
			GiveItem ( role , 0 , 0710 , 1 , pinzhi) 
		elseif f == 40 then
			GiveItem ( role , 0 , 2195 , 1 , pinzhi) 
		elseif f == 41 then
			GiveItem ( role , 0 , 0312 , 1 , pinzhi) 
		elseif f == 42 then
			GiveItem ( role , 0 , 0488 , 1 , pinzhi)  
		elseif f == 43 then
			GiveItem ( role , 0 , 0664 , 1 , pinzhi) 
		elseif f == 44 then
			GiveItem ( role , 0 , 0317 , 1 , pinzhi) 
		elseif f == 45 then
			GiveItem ( role , 0 , 0493 , 1 , pinzhi)  
		elseif f == 46 then
			GiveItem ( role , 0 , 0669 , 1 , pinzhi) 
		elseif f == 47 then
			GiveItem ( role , 0 , 0345 , 1 , pinzhi) 
		elseif f == 48 then
			GiveItem ( role , 0 , 0521 , 1 , pinzhi)  
		elseif f == 49 then
			GiveItem ( role , 0 , 0697 , 1 , pinzhi) 
		elseif f == 50 then
			GiveItem ( role , 0 , 0344 , 1 , pinzhi) 
		elseif f == 51 then
			GiveItem ( role , 0 , 0520 , 1 , pinzhi)  
		elseif f == 52 then
			GiveItem ( role , 0 , 0696 , 1 , pinzhi) 
		elseif f == 53 then
			GiveItem ( role , 0 , 0369 , 1 , pinzhi) 
		elseif f == 54 then
			GiveItem ( role , 0 , 0545 , 1 , pinzhi)  
		elseif f == 55 then
			GiveItem ( role , 0 , 0721 , 1 , pinzhi) 
		elseif f == 56 then
			GiveItem ( role , 0 , 0377 , 1 , pinzhi) 
		elseif f == 57 then
			GiveItem ( role , 0 , 0553 , 1 , pinzhi)  
		elseif f == 58 then
			GiveItem ( role , 0 , 0729 , 1 , pinzhi) 
		end
	end
end


	GetExp	=	{}		------------ȡ�ȼ���Ӧ�ܾ���
	GetExp[1]	=	0
	GetExp[2]	=	5
	GetExp[3]	=	15
	GetExp[4]	=	35
	GetExp[5]	=	101
	GetExp[6]	=	250
	GetExp[7]	=	500
	GetExp[8]	=	1000
	GetExp[9]	=	1974
	GetExp[10]	=	3208
	GetExp[11]	=	4986
	GetExp[12]	=	7468
	GetExp[13]	=	10844
	GetExp[14]	=	15338
	GetExp[15]	=	21210
	GetExp[16]	=	28766
	GetExp[17]	=	38356
	GetExp[18]	=	50382
	GetExp[19]	=	65306
	GetExp[20]	=	83656
	GetExp[21]	=	106032
	GetExp[22]	=	133112
	GetExp[23]	=	165668
	GetExp[24]	=	204564
	GetExp[25]	=	250780
	GetExp[26]	=	305412
	GetExp[27]	=	369692
	GetExp[28]	=	444998
	GetExp[29]	=	532870
	GetExp[30]	=	635026
	GetExp[31]	=	753378
	GetExp[32]	=	890062
	GetExp[33]	=	1047438
	GetExp[34]	=	1228138
	GetExp[35]	=	1435074
	GetExp[36]	=	1671470
	GetExp[37]	=	1940892
	GetExp[38]	=	2247288
	GetExp[39]	=	2595010
	GetExp[40]	=	2988860
	GetExp[41]	=	3434132
	GetExp[42]	=	3936658
	GetExp[43]	=	4502856
	GetExp[44]	=	5139778
	GetExp[45]	=	5855180
	GetExp[46]	=	6657576
	GetExp[47]	=	7556310
	GetExp[48]	=	8561630
	GetExp[49]	=	9684764
	GetExp[50]	=	10938016
	GetExp[51]	=	12334856
	GetExp[52]	=	13890020
	GetExp[53]	=	15619622
	GetExp[54]	=	17541282
	GetExp[55]	=	19674240
	GetExp[56]	=	22039516
	GetExp[57]	=	24660044
	GetExp[58]	=	27560852
	GetExp[59]	=	30769230
	GetExp[60]	=	37746418
	GetExp[61]	=	45876427
	GetExp[62]	=	59571153
	GetExp[63]	=	75703638
	GetExp[64]	=	94615279
	GetExp[65]	=	116688304
	GetExp[66]	=	155291059
	GetExp[67]	=	186418013
	GetExp[68]	=	238159614
	GetExp[69]	=	298622278
	GetExp[70]	=	368975850
	GetExp[71]	=	450525549
	GetExp[72]	=	568409779
	GetExp[73]	=	679324744
	GetExp[74]	=	806544569
	GetExp[75]	=	952091724
	GetExp[76]	=	1188099236
	GetExp[77]	=	1480429211
	GetExp[78]	=	1776125584
	GetExp[79]	=	2091634902
	GetExp[80]	=	2425349810
	GetExp[81]	=	2440895086
	GetExp[82]	=	2458896515
	GetExp[83]	=	2479742169
	GetExp[84]	=	2503881436
	GetExp[85]	=	2531834707
	GetExp[86]	=	2564204594
	GetExp[87]	=	2601688923
	GetExp[88]	=	2645095775
	GetExp[89]	=	2695360909
	GetExp[90]	=	2753567934
	GetExp[91]	=	2820971668
	GetExp[92]	=	2899025191
	GetExp[93]	=	2989411170
	GetExp[94]	=	3094078133
	GetExp[95]	=	3215282476
	GetExp[96]	=	3355637105
	GetExp[97]	=	3518167765
	GetExp[98]	=	3706378269
	GetExp[99]	=	3924326032
	GetExp[100]	=	4176709541

function AddReadingBook ( role )
	local job = GetChaAttr( role, ATTR_JOB)
	local Book_Id = 0
	if job == 1 then
		Book_Id = 3243
	elseif job == 2 then
		Book_Id = 3244
	elseif job == 4 then
		Book_Id = 3246
	elseif job == 5 then
		Book_Id = 3245
	elseif job == 8 then
		Book_Id = 3256
	elseif job == 9 then
		Book_Id = 3255
	elseif job == 12 then
		Book_Id = 3257
	elseif job == 13 then
		Book_Id = 3258
	elseif job == 14 then
		Book_Id = 3259
	elseif job == 16 then
		Book_Id = 3260
	else
		Book_Id = 3288
	end
	GiveItem( role , 0, Book_Id, 1, 4 )
	return LUA_TRUE
end


function AddExpPer ( role , value )			----------������ҵ�ǰ�ȼ���������ٷֱȵľ���
	local lv_role = GetChaAttr ( role , ATTR_LV )
	local lv_next = lv_role + 1
	local exp_up = GetExp[lv_next] - GetExp[lv_role]
	local exp_add = math.floor ( exp_up * value / 100 )
	local now_exp = GetChaAttr ( role , ATTR_CEXP )
	local new_exp = now_exp + exp_add
	local cha_name = GetChaDefaultName ( role )
	SetChaAttrI( role , ATTR_CEXP , new_exp )
	SystemNotice( role , "���"..cha_name.."�����"..exp_add.."�㾭��")
	return LUA_TRUE
end
function AddExpAll ( role, value1, value2, type)	------------------��Ӿ���
--	SystemNotice( role , "value1="..value1.."value2="..value2.."type="..type)
	local exp_now = GetChaAttr ( role, ATTR_CEXP )
	if type == 1 then							--------�����ּӾ���
		local exp_add = math.random ( value1, value2)
		local lv = GetChaAttr ( role, ATTR_LV )
		if lv < 80 then
			exp_new = exp_now + exp_add
			SetChaAttrI( role , ATTR_CEXP , exp_new )
		else
			exp_add = exp_add/50
			exp_new = exp_now + exp_add
			SetChaAttrI( role , ATTR_CEXP , exp_new )
		end
	elseif type == 2 then							----------���ٷֱȼӾ���
		local per_exp = math.random ( value1, value2)
		local lv = GetChaAttr ( role , ATTR_LV )
		if lv < 80 then
			local lv_next = lv + 1
			local exp_up = GetExp[lv_next] - GetExp[lv]
			local exp_add = math.floor( ( exp_up * per_exp ) / 100 )
			exp_new = exp_now + exp_add
			SetChaAttrI( role , ATTR_CEXP , exp_new )
		elseif lv >= 80 and lv < 100 then
			local lv_next = lv + 1
			local exp_up = GetExp[lv_next] - GetExp[lv]
			local exp_add =  math.floor ( ( exp_up * per_exp ) / 5000 )
			exp_new = exp_now + exp_add
			SetChaAttrI( role , ATTR_CEXP , exp_new )
		else
			exp_new = exp_now + 10000
			SetChaAttrI( role , ATTR_CEXP , exp_new )
		end
	end
end


function AddExpNextLv1( role ) -----------------����ҵȼ�����һ��
	local exp_add = GetChaAttr ( role, ATTR_NLEXP )
	local cha_name = GetChaDefaultName ( role )
	SetChaAttrI( role , ATTR_CEXP , exp_add )	
	RefreshCha( role )
	Notice ( "���"..cha_name.."�����㣬˫�޳ɹ����ȼ�����1��")
	return LUA_TRUE
end

function AddExpNextLv2( role ) -----------------����ҵȼ�����һ��
	local exp_add = GetChaAttr ( role, ATTR_NLEXP )
	local cha_name = GetChaDefaultName ( role )
	SetChaAttrI( role , ATTR_CEXP , exp_add )
	RefreshCha( role )
	Notice ( "���"..cha_name.."�����㣬���˺�һ���ȼ�����1��")
	return LUA_TRUE
end


---------------------------------------------------����1440�;�ֵ�ĳ�����
function AddChaHJ( character  )	
	local c1=0
	local c2=0
	c1,c2 =MakeItem(character, 2967, 1, 4)			--value���ǵ���ID   C2�Ƿ��صĴ�������λ�ñ��
	local Item_Rwine = GetChaItem ( character , 2 , c2 )			--�ӽ�ɫ�ı���λ 2 ȡλ�� C2�ĵ��ߵ�ָ��
	
	local Rwine_NOW = 1440                                                                              
	
	SetItemAttr(Item_Rwine, ITEMATTR_MAXENERGY, Rwine_NOW)						--��������;�
	SetItemAttr(Item_Rwine, ITEMATTR_ENERGY, Rwine_NOW)								 --���õ�ǰ�;ã���ֵ��ÿ���Ӻ���һ��
	RefreshCha( character )
	SystemNotice (character , "�����Ʊ�������ڱ�������2��Ż���Ӵ���" )
end


---------------------------------------------------�жϳ������;��Ƿ�Ϊ0
function CheckHJ ( character )
	local Rwine_Num = 0
	Rwine_Num = CheckBagItem(  character , 2967 )		--��鱳����2977�ŵ��ߵ�����
	if Rwine_Num == 1 then				--���2977�ŵ��ߵ��������ڵ���1
		local Rwine = GetChaItem2 (  character , 2 , 2967 )			--ȡ����ɫ�����ڵ���IDΪ2977�ĵ��ߵ�ָ��
		local ENERGY = GetItemAttr(Rwine, ITEMATTR_ENERGY)
		if ENERGY ==0 then
			return LUA_TRUE
		end
	else
		SystemNotice( character, "��ȷ����������ֻ��һƿ������")
	end

end

function CreatBBBB( role , MonsterID )
	local x , y = GetChaPos(role)
	x = x + 10
	y = y + 10
	local Refresh = 3600
	local life = 3600000
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaHost(new,role)
	SetChaLifeTime( new, life )
	SetChaTarget(new, role)
	local Role_ID = GetRoleID(role)	---------�µ�
	BBBB[ Role_ID ] = new
	local hit = GetChaAttr( new , ATTR_HIT )
	--SystemNotice( role , "hit=="..hit )
	hit = 225
	SetCharaAttr ( hit , new , ATTR_HIT )
	--SystemNotice( role , "hit00=="..hit )



	return LUA_TRUE
end



function CheckBBBB( role )
	local Role_ID = GetRoleID(role)	
	local BBBB = BBBB[ Role_ID ]
	if BBBB~= nil and BBBB~= 0 then 
		local ISLive = ValidCha( BBBB )
		--SystemNotice( role , "ISLive==" ..ISLive)
		--local hit = GetChaAttr( BBBB , ATTR_HIT )
		--SystemNotice( role , "hit00==" ..hit)
		--if hit== 225 then
			local x01 , y01 = GetChaPos(role)
			local x02 , y02 = GetChaPos(BBBB)
			local X_red = math.abs( x01 - x02 )
			local Y_red = math.abs( y01 - y02 )
			if X_red <= 2000 and Y_red <= 2000 then
				KillCha( BBBB )-------�µ�
				return LUA_TRUE
			else
				SystemNotice( role , "��Ѻ�͵Ķ������������߰�" )
				return LUA_FALSE
			end
		--else
			--SystemNotice( role , "��ֻ������Ҫ���͵��Ǹ�ʥ�����˰�!" )
			--return LUA_FALSE
		--end
	
	else
		SystemNotice( role , "��Ѻ�͵Ķ������������߰�" )
		return LUA_FALSE
	end
end

-----���˽ڽ�ָ�һ��ж�����-----
function ValentinesRingJudge(role)
	local Ring_Num = 0
	local t = {}			--���ø������ѵ�ָ��
		t[0] = role 
		t[1] = GetTeamCha(role, 0 )  
		t[2] = GetTeamCha(role, 1 )   
		t[3] = GetTeamCha(role, 2 )    
		t[4] = GetTeamCha(role, 3 )
	local t_Num = {}		--��¼�����������Ͻ�ָ����
	t_Num[0]	= 0
	t_Num[1]	= 0
	t_Num[2]	= 0
	t_Num[3]	= 0
	t_Num[4]	= 0
	local i = 1
	for i = 1 , 4, 1 do
		if t[i] ~= nil then
			local Ring_Num_Add = CheckBagItem(  t[i] , 2521 )	
			if Ring_Num_Add == 1 then

				local retbag = HasLeaveBagGrid(  t[i], 1)
				if retbag ~= LUA_TRUE then
					SystemNotice(role,"�Է������ո�����1���޷��һ�")
					SystemNotice(t[i],"�����ո�����1���޷��һ�")
					return LUA_FALSE
				end	
				local NocLock =KitbagLock( t[i], 0 )
				if NocLock == LUA_FALSE then
					SystemNotice( role , "�Է�������������")
					SystemNotice( t[i] , "������������")
					return LUA_FALSE
				end

				t_Num[i] = 1		--����н�ָ����ֵ��Ϊ1�����������ж���
				Ring_Num = Ring_Num + Ring_Num_Add	--�������н�ָ������¼�����������ж���
				local USED_Ring_Num = CheckBagItem(  t[i] , 2520 )	--�жϴ˶��������Ƿ��Ѿ��а󶨵Ľ�ָ
				if USED_Ring_Num >= 1 then
					SystemNotice(role,"��������������ػ�")
					SystemNotice(t[i],"�ػ�������")
					return LUA_FALSE		
				end
			end
		end
	end
	
	if Ring_Num == 1 then				--��������н�ָ����Ϊ1���ͽ��������������˽��
		return LUA_TRUE
	elseif Ring_Num > 1 then
		SystemNotice(role,"�ҹ��ᳫһ��һ���ơ���")
		return LUA_FALSE
	else
		SystemNotice(role,"���Ҹ����ȡ�")
		return LUA_FALSE
	end
end
-----���˽ڽ�ָ��¼��Ϣ
function ValentinesRing(role)
	local Ring_Num = 0
	local t = {}			--���ø������ѵ�ָ��
		t[0] = role 
		t[1] = GetTeamCha(role, 0 )  
		t[2] = GetTeamCha(role, 1 )   
		t[3] = GetTeamCha(role, 2 )    
		t[4] = GetTeamCha(role, 3 )
	local t_Num = {}		--��¼�����������Ͻ�ָ����
		t_Num[0]	= 0
		t_Num[1]	= 0
		t_Num[2]	= 0
		t_Num[3]	= 0
		t_Num[4]	= 0
	local i = 1
	for i = 1 , 4, 1 do
		if t[i] ~= nil then
			local Ring_Num_Add = CheckBagItem(  t[i] , 2521 )	
			if Ring_Num_Add == 1 then
				t_Num[i] = 1		--����н�ָ����ֵ��Ϊ1�����������ж���
				Ring_Num = Ring_Num + Ring_Num_Add	--�������н�ָ������¼�����������ж���
				local USED_Ring_Num = CheckBagItem(  t[i] , 2520 )	--�жϴ˶��������Ƿ��Ѿ��а󶨵Ľ�ָ
				if USED_Ring_Num >= 1 then
					SystemNotice(role,"��������������ػ�")
					SystemNotice(t[i],"�ػ�������")
					return LUA_FALSE		
				end
			end
		end
	end
	
	if Ring_Num == 1 then				--��������н�ָ����Ϊ1���ͽ��������������˽��
		local i = 1
		for i = 1 , 4 ,1 do
			if t_Num[i] == 1 then
				
				local RoleType = GetChaID(role)
				local TeamerType = GetChaID(t[i])
				if (RoleType<=2 and TeamerType>=3) or (RoleType>=3 and TeamerType<=2) then		--�Ա��ж�
					--����������ҵ���Ϣ��¼�ڶԷ���ָ��
					local ID_Num = GetRoleID(role)	--ȡ�ý�������ҵ�ID�ţ�����¼�ڽ�ָ��

					GiveItem ( t[i] , 0 , 2520  , 1 , 4  )
					local a = DelBagItem ( t[i] , 2521 , 1) 

					local Item = GetChaItem2 ( t[i] , 2 , 2520 )	--ȡ�ú��ʶ��ѵ����˽ڽ�ָָ��
					
					local Num_JZ = GetItemForgeParam ( Item , 1 )
					Num_JZ = TansferNum ( Num_JZ )
					Num_JZ = ID_Num	---�þ�����Ϣλ��¼��ɫID��
					SetItemForgeParam ( Item , 1 , Num_JZ )
					AddChaSkill ( t[i] , SK_QLZX, 1 , 1 , 0 ) 
					--�����ʶ��ѵ���Ϣ��¼�ڽ�������ҵĽ�ָ��
					local ID_Num1 = GetRoleID(t[i])	--ȡ�ú��ʶ��ѵ�ID�ţ�����¼�ڽ�ָ��

					GiveItem ( role , 0 , 2520  , 1 , 4  )
					local b = DelBagItem ( role , 2521 , 1) 

					local Item1 = GetChaItem2 ( role , 2 , 2520 )	--ȡ�ý�������ҵ����˽ڽ�ָָ��

					local Num_JZ1 = GetItemForgeParam ( Item1 , 1 )
					Num_JZ1 = TansferNum ( Num_JZ1 )
					Num_JZ1 = ID_Num1	---�þ�����Ϣλ��¼��ɫID��
					SetItemForgeParam ( Item1 , 1 , Num_JZ1 )
					AddChaSkill ( role , SK_QLZX, 1 , 1 , 0 ) 
				--	Notice("������")
				else
					SystemNotice(role,"��ע�����ǵ��Ա𡭡�")
				end
			end
		end
		return LUA_TRUE
	elseif Ring_Num > 1 then
		SystemNotice(role,"�ҹ��ᳫһ��һ���ơ���")
		return LUA_FALSE
	else
		SystemNotice(role,"���Ҹ����ȡ�")
		return LUA_FALSE
	end
end

function Checksailexpless ( role , value )
	local sail_role = GetChaAttr ( role , ATTR_CSAILEXP )
	if sail_role < value then
		return LUA_TRUE
	end
end

function Checksailexpmore ( role , value )
	local sail_role = GetChaAttr ( role , ATTR_CSAILEXP )
	if sail_role >= value then
		return LUA_TRUE
	end
end

----------------------------------�뿪������
function Leaveprison ( role )
	AddState( role, role, STATE_BKDB, 10, 3600)
	local br = math.random ( 1, 3)
	if br==1 then
		SetSpawnPos ( role, "������")
		MoveCity ( role, "������")
	elseif br == 2 then
		SetSpawnPos ( role, "ɳᰳ�")
		MoveCity ( role, "ɳᰳ�")
	else
		SetSpawnPos ( role, "���Ǳ�")
		MoveCity ( role, "���Ǳ�")
	end
	return LUA_TRUE
end

---------����������ʱ��
function Checkjlktime ( role )
	local jiluka_num = CheckBagItem ( role, 5724)
	if jiluka_num == 1 then
		local jiluka = GetChaItem2 (  role , 2 , 5724 )			--ȡ����ɫ�����ڵ���IDΪ5724�ĵ��ߵ�ָ��
		local ENERGY = GetItemAttr(jiluka, ITEMATTR_ENERGY)
		if ENERGY ==0 then
			return LUA_TRUE
		end
	else
		SystemNotice( role, "��ȷ�����ı�����ֻ��һ�ż�����¼��")
	end

end

---------���������¼��
function Givejiluka ( role )
	local r1=0
	local r2=0
	r1,r2 =MakeItem ( role , 5724  , 1 , 4 )
	local Item_new = GetChaItem ( role , 2 , r2 )
	SetItemAttr( Item_new, ITEMATTR_ENERGY, 3600)
	SetItemAttr( Item_new, ITEMATTR_MAXENERGY, 3600)
	return LUA_TRUE
end

---------------------------------------------------ʥ���ı���֮�ж��¹ⱦ���;��Ƿ�Ϊ0
function ItemAttrNum( role ,p1,p2,p3,p4)----p1�����߱�ţ�p2������ĳ�����ԣ�p3��Ҫ�������ֵ��p4�����ڣ�1����С�ڣ�2�������ڣ�0�������ڵ��ڣ�3����С�ڵ��ڣ�4��
	local ItemAttr={}
	ItemAttr[1]=ITEMATTR_VAL_STR
	ItemAttr[2]=ITEMATTR_VAL_AGI
	ItemAttr[3]=ITEMATTR_VAL_DEX
	ItemAttr[4]=ITEMATTR_VAL_CON
	ItemAttr[5]=ITEMATTR_VAL_STA
	ItemAttr[6]=ITEMATTR_URE
	ItemAttr[7]=ITEMATTR_ENERGY
	local item_num = 0
	local item=0	
	item_num = CheckBagItem(  role , p1  )		--��鱳����p1�ŵ��ߵ�����-+
	
	if item_num~=1 then
		SystemNotice( role, "��ȷ��������ֻ��һ���¹ⱦ��")
		return LUA_FALSE
	else
		item=GetChaItem2 (  role , 2 , p1 )-----------------ȡ����ָ��
		local itemattrnum=GetItemAttr(item,ItemAttr[p2])--------ȡ���ߵ�p2����
		if p4==0 and itemattrnum==p3 then ------------Ҫ�����Ե���p3
			return LUA_TRUE
		elseif p4==1 and itemattrnum>p3 then ------------Ҫ�����Դ���p3
			return LUA_TRUE
		elseif  p4==2 and itemattrnum<p3 then ------------Ҫ������С��p3
			return LUA_TRUE
		elseif  p4==3 and itemattrnum>=p3 then ------------Ҫ�����Դ��ڵ���p3
			return LUA_TRUE
		elseif  p4==4 and itemattrnum<=p3 then ------------Ҫ������С�ڵ���p3
			return LUA_TRUE			
		else
			return LUA_FALSE			
		end
	end
end

---------------------------------------------------�жϽ�ɫ������Ʒ�Ƿ�Ϸ�--���˻
function CheckChaItem( role )
	local ItemBag = 2									
	local item = GetChaItem(role, 2, 2)                               --- ȡ��ɫ��������3����� 
	local itemattrnum = GetItemAttr(item, ITEMATTR_ENERGY)            ---ȡ��ɫ��������3����� ������ֵ
	local itemtypenum = GetItemType(item)                             ---ȡ��ɫ��������3����� ������
	local item_ID = GetItemID(item)	
	--local R1 = 0	
	if  item == nil then
		SystemNotice(role,"�뽫��Ҫ�����ĵ��߷��ڱ���������")
		return LUA_FALSE
	elseif item_ID == 5842  then
		SystemNotice(role,"���ɲ�����������Ŷ")
		return LUA_FALSE		
	elseif itemattrnum<3000 then
		SystemNotice( role, "��ȷ����Ҫ�����ĵ���Ʒ��Ϊ��ɫ���ϵ�װ��")
		return LUA_FALSE
	elseif itemtypenum~=1 and itemtypenum~=2 and itemtypenum~=3 and itemtypenum~=4 and itemtypenum~=5 and itemtypenum~=6 and itemtypenum~=7 and itemtypenum~=9 and itemtypenum~=10 and itemtypenum~=11 and itemtypenum~=22 and itemtypenum~=23 and itemtypenum~=24 then	 
		SystemNotice( role, "��ȷ����Ҫ��������Ʒ��װ��������")
		return LUA_FALSE
	--elseif R1 == 0 then
		--SystemNotice( role, "�Ƴ�����ʧ��")
		--return LUA_FALSE
	else		
		--RemoveChaItem ( role , item_ID , 1 , 2 , -1 , 2 , 0  )
		--RemoveChaItem ( role , 3669    , 1 , 1 , -1 , 2 , 1  )
		SystemNotice(role ,"Item_ID======"..item_ID)
		return LUA_TRUE
	end	
end


function ClearItemNum2( role )
	local ItemBag = 2									
	local item = GetChaItem(role, 2, 2)                               --- ȡ��ɫ��������3����� 
	local itemattrnum = GetItemAttr(item, ITEMATTR_ENERGY)            ---ȡ��ɫ��������3����� ������ֵ
	local itemtypenum = GetItemType(item)                             ---ȡ��ɫ��������3����� ������
	local item_ID = GetItemID(item)	
	--local R1 = 0	
	if  item == nil then
		--SystemNotice(role,"�뽫��Ҫ�����ĵ��߷��ڱ���������")
		return LUA_FALSE
	elseif item_ID == 5842  then
		--SystemNotice(role,"���ɲ�����������Ŷ")
		return LUA_FALSE		
	elseif itemattrnum<3000 then
		--SystemNotice( role, "��ȷ����Ҫ�����ĵ���Ʒ��Ϊ��ɫ���ϵ�װ��")
		return LUA_FALSE
	elseif itemtypenum~=1 and itemtypenum~=2 and itemtypenum~=3 and itemtypenum~=4 and itemtypenum~=5 and itemtypenum~=6 and itemtypenum~=7 and itemtypenum~=9 and itemtypenum~=10 and itemtypenum~=11 and itemtypenum~=22 and itemtypenum~=23 and itemtypenum~=24 then	 
		--SystemNotice( role, "��ȷ����Ҫ��������Ʒ��װ��������")
		return LUA_FALSE
	else		
		SystemNotice(role ,"Item_ID======"..item_ID)
		return item_ID
	end
end


-----------������Ʊ�Խ� by Lee
function CheckTime_cpopen ( role )
	local now_week= os.date("%w")		-------------���ڼ���ʮ���ƣ� 
	local now_hour= os.date("%H")		-------------ʱ 
	now_week= tonumber(now_week)
	now_hour= tonumber(now_hour)
--	SystemNotice( role, "����"..now_week.."ʱ��"..now_hour)
	if now_week == 7 or now_week == 1 or  now_week == 2 or  now_week == 5 or  now_week == 3 or  now_week == 4  then
		if now_week == 6 then
			if now_hour <19 and now_hour > 20 then
				return LUA_TRUE
			end
	
		end
        end
end
-----------------�رղ�Ʊ��д by eric
function CheckTime_cpcolse ( role )
	local now_week= os.date("%w")		-------------���ڼ���ʮ���ƣ� 
	local now_hour= os.date("%H")		-------------ʱ 
	now_week= tonumber(now_week)
	now_hour= tonumber(now_hour)
--	SystemNotice( role, "����"..now_week.."ʱ��"..now_hour)
	if now_week == 7 or now_week == 1 or  now_week == 2 or  now_week == 5 or  now_week == 3 or  now_week == 4  then
		if now_week == 6 then
			if now_hour <19 and now_hour > 22 then
				return LUA_TRUE
			end
		end
	end
end

------------�һ���Ʊһ�Ƚ�  by Peter
function DuiHhuan1( role )
--		SystemNotice( role, "come here!11")
		local issue = GetLotteryIssue()
--		SystemNotice( role, "issue=="..issue)
		local crab = GetChaItem ( role , 2 , 0  )
		 local caipiaoID= GetItemID (crab)
		 local caipiaoqi = GetTicketIssue(crab)
--		SystemNotice( role, "caipiaoqi=="..caipiaoqi)
		local caipiaoU=issue-1
		if  caipiaoqi ==0 then 
		return LUA_FALSE
		 end
		 if  caipiaoID==5828 and caipiaoqi == caipiaoU   then   --�жϲ�Ʊ�ں�             
			 local  no1 =GetWinLotteryItemno(caipiaoU, 1)         --�н������λ
			local  no2 =GetWinLotteryItemno(caipiaoU, 2)          --�н�����ʮλ
			local  no3 =GetWinLotteryItemno(caipiaoU, 3)          --�н������λ
			local  no4 =GetWinLotteryItemno(caipiaoU, 4)          --�н�����ǧλ
			local  no5 =GetWinLotteryItemno(caipiaoU, 5)          --�н�������λ
			local  no6 =GetWinLotteryItemno(caipiaoU, 6)          --�н�����ʮ��λ
			 local  Nom1 =GetTicketItemno(crab, 1)         --��Ʊ�����λ
			local  Nom2 =GetTicketItemno(crab, 2)          --��Ʊ����ʮλ
			local  Nom3 =GetTicketItemno(crab, 3)          --��Ʊ�����λ
			local  Nom4 =GetTicketItemno(crab, 4)          --��Ʊ����ǧλ
--			SystemNotice( role, "Nom4=="..Nom4)
			local  Nom5 =GetTicketItemno(crab, 5)          --��Ʊ������λ
			local  Nom6 =GetTicketItemno(crab, 6)          --��Ʊ����ʮ��λ
			if  Nom1=="X" then  
				Nom1=no1 
--				SystemNotice( role, "Nom1=="..Nom1)
			elseif   Nom2=="X" then  
				Nom2=no2  
--				SystemNotice( role, "Nom2=="..Nom2)
			elseif   Nom3=="X" then 
				Nom3=no3  
--				SystemNotice( role, "Nom3=="..Nom3)
			elseif   Nom4=="X" then 
				Nom4=no4  
--				SystemNotice( role, "Nom4=="..Nom4)
			elseif   Nom5=="X" then  
				Nom5=no5  
--				SystemNotice( role, "Nom5=="..Nom5)
			elseif   Nom6=="X" then  
				Nom6=no6  	
--				SystemNotice( role, "Nom6=="..Nom6)
			end

			if  no1==Nom1 and  no2==Nom2 and no3==Nom3 and no4==Nom4 and no5==Nom5 and no6==Nom6	then
				  RemoveChaItem ( role , 5828, 1 , 2 , 0 , 2 , 1 , 1)                  --ǿ���Ƴ�������һ�����Ʒ
--				SystemNotice( role, "return LUA_TRUE")
				return LUA_TRUE
			 else
--				SystemNotice( role, "return LUA_FALSE")
				return LUA_FALSE
			 end
		 end
end
     
---------------�һ���Ʊ���Ƚ� by Peter
function DuiHhuan2( role )
--		SystemNotice( role, "come here!22")
		local issue = GetLotteryIssue()
--		SystemNotice( role, "issue=="..issue)
		local crab = GetChaItem ( role , 2 , 0  )
		 local caipiaoID= GetItemID (crab)
		 local caipiaoqi = GetTicketIssue(crab)
--		SystemNotice( role, "caipiaoqi=="..caipiaoqi)
		local caipiaoU=issue-1
		if  caipiaoqi ==0 then 
		return LUA_FALSE
		 end
		 if  caipiaoID==5828 and caipiaoqi == caipiaoU  then   --�жϲ�Ʊ�ں�             
			 local  no1 =GetWinLotteryItemno(caipiaoU, 1)         --�н������λ
			local  no2 =GetWinLotteryItemno(caipiaoU, 2)          --�н�����ʮλ
			local  no3 =GetWinLotteryItemno(caipiaoU, 3)          --�н������λ
			local  no4 =GetWinLotteryItemno(caipiaoU, 4)          --�н�����ǧλ
			local  no5 =GetWinLotteryItemno(caipiaoU, 5)          --�н�������λ
			local  no6 =GetWinLotteryItemno(caipiaoU, 6)          --�н�����ʮ��λ
			 local  Nom1 =GetTicketItemno(crab, 1)         --��Ʊ�����λ
			local  Nom2 =GetTicketItemno(crab, 2)          --��Ʊ����ʮλ
			local  Nom3 =GetTicketItemno(crab, 3)          --��Ʊ�����λ
			local  Nom4 =GetTicketItemno(crab, 4)          --��Ʊ����ǧλ
--			SystemNotice( role, "Nom4=="..Nom4)
			local  Nom5 =GetTicketItemno(crab, 5)          --��Ʊ������λ
			local  Nom6 =GetTicketItemno(crab, 6)          --��Ʊ����ʮ��λ
			if  Nom1=="X" then  
				Nom1=no1 
--				SystemNotice( role, "Nom1=="..Nom1)
			elseif   Nom2=="X" then  
				Nom2=no2  
--				SystemNotice( role, "Nom2=="..Nom2)
			elseif   Nom3=="X" then 
				Nom3=no3  
--				SystemNotice( role, "Nom3=="..Nom3)
			elseif   Nom4=="X" then 
				Nom4=no4  
--				SystemNotice( role, "Nom4=="..Nom4)
			elseif   Nom5=="X" then  
				Nom5=no5  
--				SystemNotice( role, "Nom5=="..Nom5)
			elseif   Nom6=="X" then  
				Nom6=no6  	
--				SystemNotice( role, "Nom6=="..Nom6)
			end

		if  no2==Nom2 and no3==Nom3 and no4==Nom4 and no5==Nom5 and no6==Nom6 then
			 RemoveChaItem ( role , 5828, 1 , 2 , 0 , 2 , 1 , 1)                  --ǿ���Ƴ�������һ�����Ʒ
---			SystemNotice( role, "return LUA_TRUE1")
			return LUA_TRUE
		elseif  no2==Nom2 and no3==Nom3 and no4==Nom4 and no5==Nom5 and no1==Nom1 then
		 RemoveChaItem ( role , 5828, 1 , 2 , 0 , 2 , 1 , 1)                  --ǿ���Ƴ�������һ�����Ʒ
---			SystemNotice( role, "return LUA_TRUE2")
			return LUA_TRUE
		else
---			SystemNotice( role, "return LUA_FALSE")
			return LUA_FALSE
		end

	end

end
-------------�һ���Ʊ���Ƚ� by Peter
function DuiHhuan3( role )
--		SystemNotice( role, "come here!33")
		local issue = GetLotteryIssue()
--		SystemNotice( role, "issue=="..issue)
		local crab = GetChaItem ( role , 2 , 0  )
		 local caipiaoID= GetItemID (crab)
		 local caipiaoqi = GetTicketIssue(crab)
--		SystemNotice( role, "caipiaoqi=="..caipiaoqi)
		local caipiaoU=issue-1
		if  caipiaoqi ==0 then 
		return LUA_FALSE
		 end
		 if  caipiaoID==5828 and caipiaoqi == caipiaoU  then   --�жϲ�Ʊ�ں�             
			 local  no1 =GetWinLotteryItemno(caipiaoU, 1)         --�н������λ
			local  no2 =GetWinLotteryItemno(caipiaoU, 2)          --�н�����ʮλ
			local  no3 =GetWinLotteryItemno(caipiaoU, 3)          --�н������λ
			local  no4 =GetWinLotteryItemno(caipiaoU, 4)          --�н�����ǧλ
			local  no5 =GetWinLotteryItemno(caipiaoU, 5)          --�н�������λ
			local  no6 =GetWinLotteryItemno(caipiaoU, 6)          --�н�����ʮ��λ
			 local  Nom1 =GetTicketItemno(crab, 1)         --��Ʊ�����λ
			local  Nom2 =GetTicketItemno(crab, 2)          --��Ʊ����ʮλ
			local  Nom3 =GetTicketItemno(crab, 3)          --��Ʊ�����λ
			local  Nom4 =GetTicketItemno(crab, 4)          --��Ʊ����ǧλ
--			SystemNotice( role, "Nom4=="..Nom4)
			local  Nom5 =GetTicketItemno(crab, 5)          --��Ʊ������λ
			local  Nom6 =GetTicketItemno(crab, 6)          --��Ʊ����ʮ��λ
			if  Nom1=="X" then  
				Nom1=no1 
--				SystemNotice( role, "Nom1=="..Nom1)
			elseif   Nom2=="X" then  
				Nom2=no2  
--				SystemNotice( role, "Nom2=="..Nom2)
			elseif   Nom3=="X" then 
				Nom3=no3  
--				SystemNotice( role, "Nom3=="..Nom3)
			elseif   Nom4=="X" then 
				Nom4=no4  
--				SystemNotice( role, "Nom4=="..Nom4)
			elseif   Nom5=="X" then  
				Nom5=no5  
--				SystemNotice( role, "Nom5=="..Nom5)
			elseif   Nom6=="X" then  
				Nom6=no6  	
--				SystemNotice( role, "Nom6=="..Nom6)
			end

		
		if  no1==Nom1 and no2==Nom2 and no3==Nom3 and no4==Nom4  then
			  RemoveChaItem ( role , 5828, 1 , 2 , 0 , 2 , 1 , 1)                  --ǿ���Ƴ�������һ�����Ʒ
--			SystemNotice( role, "return LUA_TRUE1")
			return LUA_TRUE
		elseif  no2==Nom2 and no3==Nom3 and no4==Nom4 and no5==Nom5 then
			  RemoveChaItem ( role , 5828, 1 , 2 , 0 , 2 , 1 , 1)                  --ǿ���Ƴ�������һ�����Ʒ
--			SystemNotice( role, "return LUA_TRUE2")
			return LUA_TRUE
                elseif  no3==Nom3 and no4==Nom4 and no5==Nom5 and no6==Nom6 then
		  RemoveChaItem ( role , 5828, 1 , 2 , 0 , 2 , 1 , 1)                  --ǿ���Ƴ�������һ�����Ʒ
---			SystemNotice( role, "return LUA_TRUE2")
			return LUA_TRUE
		 else
---			SystemNotice( role, "return LUA_FALSE")
			return LUA_FALSE
	       end
	end
end
----------�һ���Ʊ�ĵȽ� by Peter
function DuiHhuan4( role )
--		SystemNotice( role, "come here!44")
		local issue = GetLotteryIssue()
--		SystemNotice( role, "issue=="..issue)
		local crab = GetChaItem ( role , 2 , 0  )
		 local caipiaoID= GetItemID (crab)
		 local caipiaoqi = GetTicketIssue(crab)
--		SystemNotice( role, "caipiaoqi=="..caipiaoqi)
		local caipiaoU=issue-1
		if  caipiaoqi ==0 then 
		return LUA_FALSE
		 end
		 if  caipiaoID==5828 and caipiaoqi == caipiaoU  then   --�жϲ�Ʊ�ں�             
			 local  no1 =GetWinLotteryItemno(caipiaoU, 1)         --�н������λ
			local  no2 =GetWinLotteryItemno(caipiaoU, 2)          --�н�����ʮλ
			local  no3 =GetWinLotteryItemno(caipiaoU, 3)          --�н������λ
			local  no4 =GetWinLotteryItemno(caipiaoU, 4)          --�н�����ǧλ
			local  no5 =GetWinLotteryItemno(caipiaoU, 5)          --�н�������λ
			local  no6 =GetWinLotteryItemno(caipiaoU, 6)          --�н�����ʮ��λ
			 local  Nom1 =GetTicketItemno(crab, 1)         --��Ʊ�����λ
			local  Nom2 =GetTicketItemno(crab, 2)          --��Ʊ����ʮλ
			local  Nom3 =GetTicketItemno(crab, 3)          --��Ʊ�����λ
			local  Nom4 =GetTicketItemno(crab, 4)          --��Ʊ����ǧλ
--			SystemNotice( role, "Nom4=="..Nom4)
			local  Nom5 =GetTicketItemno(crab, 5)          --��Ʊ������λ
			local  Nom6 =GetTicketItemno(crab, 6)          --��Ʊ����ʮ��λ
			if  Nom1=="X" then  
				Nom1=no1 
--				SystemNotice( role, "Nom1=="..Nom1)
			elseif   Nom2=="X" then  
				Nom2=no2  
--				SystemNotice( role, "Nom2=="..Nom2)
			elseif   Nom3=="X" then 
				Nom3=no3  
--				SystemNotice( role, "Nom3=="..Nom3)
			elseif   Nom4=="X" then 
				Nom4=no4  
--				SystemNotice( role, "Nom4=="..Nom4)
			elseif   Nom5=="X" then  
				Nom5=no5  
--				SystemNotice( role, "Nom5=="..Nom5)
			elseif   Nom6=="X" then  
				Nom6=no6  	
--				SystemNotice( role, "Nom6=="..Nom6)
			end

		 if  no1==Nom1 and  no2==Nom2 and no3==Nom3  then 
		  RemoveChaItem ( role , 5828, 1 , 2 , 0 , 2 , 1 , 1)                  --ǿ���Ƴ�������һ�����Ʒ
			return LUA_TRUE
		  elseif no2==Nom2 and no3==Nom3 and no4==Nom4 then
		   RemoveChaItem ( role , 5828, 1 , 2 , 0 , 2 , 1 , 1)                  --ǿ���Ƴ�������һ�����Ʒ
			 return LUA_TRUE
		elseif no3==Nom3 and no4==Nom4 and no5==Nom5  then
		 RemoveChaItem ( role , 5828, 1 , 2 , 0 , 2 , 1 , 1)                  --ǿ���Ƴ�������һ�����Ʒ
			 return LUA_TRUE
		 elseif no4==Nom4 and no5 == Nom5 and no6 == Nom6  then
		  RemoveChaItem ( role , 5828, 1 , 2 , 0 , 2 , 1 , 1)                  --ǿ���Ƴ�������һ�����Ʒ
			 return LUA_TRUE
		 else
			return LUA_FALSE
		end
	 end
end
-------------�һ���Ʊ��Ƚ� by Peter
function DuiHhuan5( role )
--		SystemNotice( role, "come here!55")
		local issue = GetLotteryIssue()
--		SystemNotice( role, "issue=="..issue)
		local crab = GetChaItem ( role , 2 , 0  )
		 local caipiaoID= GetItemID (crab)
		 local caipiaoqi = GetTicketIssue(crab)
--		SystemNotice( role, "caipiaoqi=="..caipiaoqi)
		local caipiaoU=issue-1
		if  caipiaoqi ==0 then 
		return LUA_FALSE
		 end
--		SystemNotice( role, "caipiaoU=="..caipiaoU)
		 if  caipiaoID==5828 and caipiaoqi == caipiaoU  then   --�жϲ�Ʊ�ں�             
			 local  no1 =GetWinLotteryItemno(caipiaoU, 1)         --�н������λ
--			SystemNotice( role, "no1=="..no1)
			local  no2 =GetWinLotteryItemno(caipiaoU, 2)          --�н�����ʮλ
			local  no3 =GetWinLotteryItemno(caipiaoU, 3)          --�н������λ
			local  no4 =GetWinLotteryItemno(caipiaoU, 4)          --�н�����ǧλ
			local  no5 =GetWinLotteryItemno(caipiaoU, 5)          --�н�������λ
			local  no6 =GetWinLotteryItemno(caipiaoU, 6)          --�н�����ʮ��λ
			 local  Nom1 =GetTicketItemno(crab, 1)         --��Ʊ�����λ
			local  Nom2 =GetTicketItemno(crab, 2)          --��Ʊ����ʮλ
			local  Nom3 =GetTicketItemno(crab, 3)          --��Ʊ�����λ
			local  Nom4 =GetTicketItemno(crab, 4)          --��Ʊ����ǧλ
--			SystemNotice( role, "Nom4=="..Nom4)
			local  Nom5 =GetTicketItemno(crab, 5)          --��Ʊ������λ
--			SystemNotice( role, "Nom5=="..Nom5)
			local  Nom6 =GetTicketItemno(crab, 6)          --��Ʊ����ʮ��λ
--			SystemNotice( role, "Nom6=="..Nom6)
			if  Nom1=="X" then  
				Nom1=no1 
--				SystemNotice( role, "Nom1=="..Nom1)
			elseif   Nom2=="X" then  
				Nom2=no2  
--				SystemNotice( role, "Nom2=="..Nom2)
			elseif   Nom3=="X" then 
				Nom3=no3  
--				SystemNotice( role, "Nom3=="..Nom3)
			elseif   Nom4=="X" then 
				Nom4=no4  
--				SystemNotice( role, "Nom4=="..Nom4)
			elseif   Nom5=="X" then  
				Nom5=no5  
--				SystemNotice( role, "Nom5=="..Nom5)
			elseif   Nom6=="X" then  
				Nom6=no6  	
--				SystemNotice( role, "Nom6=="..Nom6)
			end

		 if  no1==Nom1 and  no2==Nom2 then
		  RemoveChaItem ( role , 5828, 1 , 2 , 0 , 2 , 1 , 1)                  --ǿ���Ƴ�������һ�����Ʒ
			 return LUA_TRUE
		elseif no2==Nom2 and no3==Nom3  then
		 RemoveChaItem ( role , 5828, 1 , 2 , 0 , 2 , 1 , 1)                  --ǿ���Ƴ�������һ�����Ʒ
			 return LUA_TRUE
		 elseif no3==Nom3 and no4==Nom4 then
		  RemoveChaItem ( role , 5828, 1 , 2 , 0 , 2 , 1 , 1)                  --ǿ���Ƴ�������һ�����Ʒ
			 return LUA_TRUE
		 elseif no4==Nom4 and no5==Nom5  then 
		  RemoveChaItem ( role , 5828, 1 , 2 , 0 , 2 , 1 , 1)                  --ǿ���Ƴ�������һ�����Ʒ
			 return LUA_TRUE
		 elseif  no5==Nom5 and no6==Nom6 then
		  RemoveChaItem ( role , 5828, 1 , 2 , 0 , 2 , 1 , 1)                  --ǿ���Ƴ�������һ�����Ʒ
			 return LUA_TRUE
		else
			return LUA_FALSE
		end
	end
end

--������ʱ�����
-- function csk_refresh(character)
	--local i = 0 
	-- for csk_time = 1,11,1 do
	-- local csk_time_hou = 19                 --��������ʼ��ʾʱ��19ʱ
	-- local csk_time_min = 0                  --��������ʼ��ʾʱ��0��
	-- local role_csk = GetChaItem2 (  role , 2 , 5848 )
		  -- csk_time_min = csk_time_min + 15
		-- if csk_time_min > 60 then 
		   -- csk_time_min = 0
		   -- csk_time_hou + 1		   
		-- end
	-- end
	-- if csk_time == GetItemAttr ( role_csk , ITEMATTR_VAL_CON ) then    ---���������κ�
		-- SetItemAttr(role_csk,ITEMATTR_VAL_STA,
		
---- [ [ �������ִθ��� ] ] ----		
function Add_ItemAttr_CSK ( Cha_role ,role , attrtype , Num )
	local i = 0
	local attr_num = GetItemAttr ( role , attrtype )
--	SystemNotice ( Cha_role , "Operation antenumber value"..attr_num )
--	SystemNotice ( Cha_role , "Operation Value"..Num )
--	SystemNotice ( Cha_role , "Operation attribute"..attrtype )
	attr_num = attr_num + Num
	i = SetItemAttr ( role ,attrtype , attr_num )
	local attr_num_1 = GetItemAttr ( role , attrtype )
--	SystemNotice ( Cha_role , "value after operation"..attr_num_1 )
	if i == 0 then
		LG("RYZ_PK","����ִκ�ʧ��")
	end	
end


	
	
	
	

------------����������[[ �жϽ�ɫ�Ƿ���ӡ��Ƿ�Ϊ�ӳ����Ƿ�Ϊʦͽ ]]
function CheckIsValidTeam(character) --     -1 ���Ƕӳ�, -2 ���鲻��3����, -3  ����ʦͽ
	local ValidTeam = IsValidTeam(character)                 ---����Ƿ�������ӣ�ʦͽ���ӳ������ĳ���ӿں���
		SystemNotice(character , "��ǰֵ="..ValidTeam)
	local team_num_now = GetAmphitheaterTeamCount()          ---������ [[  ȡ��ǰ����������� ]] 
		SystemNotice( character , "��ǰ����="..team_num_now)
	local csk_num = CheckBagItem( character, 6066 )	
	if csk_num ~= 0 then
		SystemNotice(character , "���Ѿ��в��������޷�����")
		return LUA_FALSE
	end	
	if ValidTeam == -1 then
		SystemNotice( character , "����ʧ�ܣ���ȷ�����ڶ����в����ǵ�ǰ����Ķӳ�")
		return LUA_FALSE
	end
	if ValidTeam == -2 then
		SystemNotice( character , "����ʧ�ܣ���ȷ������ǰ�Ķ�������Ϊ3��")
		return LUA_FALSE
	end
	if ValidTeam == -3 then
		SystemNotice( character , "����ʧ�ܣ���ȷ������2�����ѵ�ʦ��")
		return LUA_FALSE
	end
	if team_num_now >= 64 then
		SystemNotice( character , "����ʧ�ܣ�������������")
		return LUA_FALSE
	end
	if ValidTeam == 1 and team_num_now < 64 then
		SystemNotice( character , "��ϲ�㣬�����ɹ�")		
		return LUA_TRUE		
	end	
end
--[   ������   ����ע��  ]--  
function ArenaTeamSignUP(character)         --�ӳ�
	local retbag = HasLeaveBagGrid( character, 1)         --Ҫ�󱳰���1��λ����������ʧ��
	if retbag ~= LUA_TRUE then
		SystemNotice(character,"�����ո�����1���޷���ò�����")
		return LUA_FALSE
	end	
		SystemNotice (character,"������������Ҫ��")
	local teamid =  GetAmphitheaterNoUseTeamID()           --��ȡ���ݿ��еĿն�����
		SystemNotice (character,"��ȡ������")    
	local player1 = GetTeamCha( character , 0 )				--ȡ�ö�����2�Ŷ�Ա����Ϣ
		SystemNotice (character,"��Ա��Ϣ1��")
	local player2 = GetTeamCha( character , 1 )				--ȡ�ö�����3�Ŷ�Ա����Ϣ
		SystemNotice (character,"��Ա��Ϣ2��")
	AmphitheaterTeamSignUP(teamid,character,player1,player2)	--�������ż���Ա��Ϣע�������ݿ�
		SystemNotice(character,"�󶨶�����Ϣ")
	local r1=0
	local r2=0
		r1,r2 =MakeItem ( character , 6066  , 1 , 4 )		--������Ҳ���������õ���ָ��
		SystemNotice(character,"NPC������߳ɹ�")
	local csk_num = GetChaItem ( character , 2 , r2 )
		SetItemAttr(csk_num , ITEMATTR_VAL_STR , teamid)	--����������Ϣ���������
		SystemNotice(character,"������Գɹ�")				
		return LUA_TRUE			
end		
	
--[   ������   �����ɢ  ]--						
function ArenaTeamCancel(character)
	local ValidTeam = IsValidTeam(character)		
	local csk_num = CheckBagItem( character, 6066 )	
	if csk_num ~= 1 then
		SystemNotice(character,"û�в���������ɢ����ʧ��")
		return LUA_FALSE
	end
	if ValidTeam == -1 then
		SystemNotice( character , "��ɢ����ʧ�ܣ���ȷ�����ڶ����в����ǵ�ǰ����Ķӳ�")
		return LUA_FALSE
	end
	if ValidTeam == -2 then
		SystemNotice( character , "��ɢ����ʧ�ܣ���ȷ�����ڶ����в����ǵ�ǰ����Ķӳ�")
		return LUA_FALSE
	end
	if ValidTeam == -3 then
		SystemNotice( character , "��ɢ����ʧ�ܣ���ȷ�����ڶ����в����ǵ�ǰ����Ķӳ�")
		return LUA_FALSE	
	elseif ValidTeam == 1 and csk_num ==1 then
			role_csk = GetChaItem2 ( character , 2 , 6066 )
			csk_teamid = GetItemAttr( role_csk , ITEMATTR_VAL_STR )
			SystemNotice(character,"��ȡ�����ųɹ�")	
			AmphitheaterTeamCancel(csk_teamid)
			SystemNotice(character,"��ɢ����ɹ�")	
			return LUA_TRUE		
	end	
end	

	
--[   ������     �ж��Ƿ���Ч����   ]--	����NPC�ű� ��⴫���ͼ�����Ƿ���Ч
function CheckIsValidRegTeam(character) 
	local csk_num = CheckBagItem(character,6066)
	if csk_num ~= 1 then
		SystemNotice(character,"û�в�����������ʧ��")
		return LUA_FALSE
	else	
		local	role_csk = GetChaItem2 ( character , 2 , 6066 )
		local	csk_sj_num = GetItemAttr ( role_csk , ITEMATTR_VAL_AGI )
		local	csk_lc_num = GetItemAttr ( role_csk , ITEMATTR_VAL_DEX )
		local	csk_teamid = GetItemAttr(role_csk , TEMATTR_VAL_STR)
		local	now_sj_num = GetAmphitheaterSeason()
		local	now_lc_num = GetAmphitheaterRound()
		local	player1 = GetTeamCha( character , 0 )
		local	player2 = GetTeamCha( character , 1 )
		IsValidRegTeam(teamid,character,player1,player2)
		if IsValidRegTeam ~= 1 then
			SystemNotice(character,"��Ա��Ϣ����������ʧ��")
			return LUA_FALSE
		elseif csk_sj_num ~= now_sj_num then
			SystemNotice( character , "����ʧ�ܣ���ȷ�������е��ǵ�ǰ�����Ĳ�����")
			return LUA_FALSE
		elseif csk_lc_num ~= now_lc_num then
			SystemNotice( character , "����ʧ�ܣ����Ķ���û���ʸ�μӱ��ֱ���")
			return LUA_FALSE
		else 
			return LUA_TRUE
		end
	end
end	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

--NPC�������Ƿ����㴫�뾺������ͼ����
function CheckRealTeam(role)
	local csk_num = 0
	local validteam = IsValidTeam(role)
	csk_num = CheckBagItem(  role, 6066 )     --����ɫ�������Ƿ��в�����
	if csk_num ~= 1 or validteam ~= 1 then
		SystemNotice( character , "���������㣬����ʧ��")
	return LUA_FALSE
	end	 
	if csk_num == 1 and validteam == 1 then
		local role_csk = GetChaItem2 (  role , 2 , 6066 )
		local csk_sj_num = GetItemAttr ( role_csk , ITEMATTR_VAL_AGI )    ---������������
		--local csk_cc_num = GetItemAttr ( role_csk , ITEMATTR_VAL_CON )    ---���������κ�
		local csk_lc_num = GetItemAttr ( role_csk , ITEMATTR_VAL_DEX )    ---�������ִκ�
		local team_id = GetItemAttr ( role_csk , ITEMATTR_VAL_STR )       ---��������Ӧ�Ķ���ID	
		local now_sj_num = GetAmphitheaterSeason()                        ---��������ǰ������
		local now_lc_num = GetAmphitheaterRound()					      ---��������ǰ�ִκ�
		--local now_cc_num = GetAmphitheaterMatchNo(team_id)                ---��������ǰ���κ�
		if csk_sj_num ~= now_sj_num then
			SystemNotice( character , "����ʧ�ܣ���ȷ�������е��ǵ�ǰ�����Ĳ�����")
			return LUA_FALSE	
		elseif csk_lc_num ~= now_lc_num then
			SystemNotice( character , "����ʧ�ܣ����Ķ���û���ʸ�μӱ��ֱ���")
			return LUA_FALSE	
		--elseif csk_cc_num ~= now_cc_num then
			--SystemNotice( character , "����ʧ�ܣ���ȷ�����ı��������뵱ǰ�������")
			--return LUA_FALSE		
		else	
			return LUA_TRUE
		end
	end
end
