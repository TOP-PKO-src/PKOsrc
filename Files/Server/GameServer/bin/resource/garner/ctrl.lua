--���ļ��У����ǿ��ܱ����ִ�еĺ�������������Ҫ���ϵ�ͼ��ǰ׺

function config(map)

end


function get_map_entry_pos_garner()   --������ڵ�λ�õ����꣨���꣨�ף���

end

function init_entry(map)

end

function after_enter_garner( role , map_copy )
end

function before_leave_garner( role )
end

function map_copy_first_run_garner( map_copy )

end

function map_copy_run_garner( map_copy )
end

--ÿ5��ִ��һ�ε�
function map_run_garner( map )
	----��¼��ǰϵͳʱ��
	local Now_Week = os.date("%w")
	local Now_WeekNum = tonumber(Now_Week)
--	Notice("Now_WeekNum=="..Now_WeekNum)
	
	local Now_Time = os.date("%H")
	local NowTimeNum = tonumber(Now_Time)
--	Notice("NowTimeNum=="..NowTimeNum)
	
	local Now_Minite = os.date("%M")
	local NowMiniteNum = tonumber(Now_Minite)
--	Notice("NowMiniteNum=="..NowMiniteNum)
	
	local Now_Scend=  os.date("%S")		-----��
	local Now_ScendNum = tonumber(Now_Scend)
--	 Notice("Now_ScendNum"..Now_ScendNum)
	
	local CheckTimeNum=NowTimeNum*3600+NowMiniteNum*60+Now_ScendNum
--	 Notice("CheckTimeNum=="..CheckTimeNum)
	 
	local time_mod=math.mod(CheckTimeNum,5)
--	 Notice("time_mod=="..time_mod)
	TimeNum = TimeNum+5 
	local i = 0
	local  no1 = 0
	local  no2 = 0
	local  no3 = 0
	local  no4 = 0
	local  no5 = 0
	local  no6 = 0
	local  no0 = 0
--	Notice("����ٺ�==")
	
	if Now_WeekNum == 6 and NowTimeNum == 19 and NowMiniteNum == 55 and Now_ScendNum >= 50 and Now_ScendNum <55 and  i < 1  then   				-----���������ں�
			local issue = GetLotteryIssue()
	---		Notice("issue=="..issue)
			Notice (" ��Ʊ����Ҫ������һ����!��д�ò�Ʊ�����ȥ2296,2824׼���һ����!")
			local winItemno = CalWinLottery(issue, 2)
	---		Notice("�н���Ʊ����winItemno"..winItemno)
			i = i + 1
		
--	no1 =GetWinLotteryItemno(issue, 1)         --�н������λ
--	Notice("no1=="..no1)
--	no2 =GetWinLotteryItemno(issue, 2)          --�н�����ʮλ
--	Notice("no2=="..no2)
--	no3 =GetWinLotteryItemno(issue, 3)          --�н������λ
--	Notice("no3=="..no3)
--	no4 =GetWinLotteryItemno(issue, 4)          --�н�����ǧλ
--	Notice("no4=="..no4)
--	no5=GetWinLotteryItemno(issue, 5)          --�н�������λ
--	Notice("no5=="..no5)
--	no6 =GetWinLotteryItemno(issue, 6)          --�н�����ʮ��λ
--	Notice("no6=="..no6)
--	no0 =GetWinLotteryItemno(issue, 0)          --�н�����ȫ��
--	Notice("no0=="..no0)
	end
	
		if CheckTimeNum>=72000 and CheckTimeNum<72005 then              ---ÿʮ����ӹ㲥һλ�н����룬�Ӹ�λ��ʼ
		local issue = GetLotteryIssue()
		no1 = GetWinLotteryItemno(issue-1,1)
		Notice ("��Ʊ���Ѿ�������Ҫ�������ڲ�Ʊ����ҵ�2293,2824�Ҳ�Ʊ����Ա�˵����Ʊ!")
		Notice("�н������ʮ��λ���ǣ�"..no1)
		end

		if CheckTimeNum>=72900 and CheckTimeNum<72905 then               --ʮλ
		 local issue = GetLotteryIssue()
		no2 = GetWinLotteryItemno(issue-1,2)
		Notice("�н��������λ���ǣ�"..no2)
                 end

		if CheckTimeNum>=73800 and CheckTimeNum<73805 then               --��λ
		local issue = GetLotteryIssue()
		no3 = GetWinLotteryItemno(issue-1,3)
		Notice("�н������ǧλ���ǣ�"..no3)
		end

		if CheckTimeNum>=74700 and CheckTimeNum<74705 then               --ǧλ
		local issue = GetLotteryIssue()
		no4 = GetWinLotteryItemno(issue-1,4)
		Notice("�н�����İ�λ���ǣ�"..no4)
		end

		if CheckTimeNum>=75600 and CheckTimeNum<75605 then               --��λ
		local issue = GetLotteryIssue()
		no5 = GetWinLotteryItemno(issue-1,5)
		Notice("�н������ʮλ���ǣ�"..no5)
		end

		if CheckTimeNum>=76500 and CheckTimeNum<76505 then               --ʮ��λ
		local issue = GetLotteryIssue()
		no6 = GetWinLotteryItemno(issue-1,6)
		Notice("�н�����ĸ�λ���ǣ�"..no6)
                end
		
		if CheckTimeNum>=77400 and CheckTimeNum<77405 then               --ʮ��λ
		local issue = GetLotteryIssue()
		 local NOWqihao = issue - 1
		Notice("���Ѿ����������ڵ�2296,2824���ԲμӶҽ�����Ҳ���Թ�����һ�ڵĲ�Ʊ���µĲ�Ʊ�ں��ǣ�"..issue)
		no0 = GetWinLotteryItemno(issue-1,0)
		Notice("���ڿɶһ����н������ǣ�"..no0)
                end

		if CheckTimeNum>=77700 and CheckTimeNum<77705 then               --ʮ��λ
		local issue = GetLotteryIssue()
		local NOWqihao = issue - 1
		Notice("���Ѿ����������ڵ�2296,2824���ԲμӶҽ�����Ҳ���Թ�����һ�ڵĲ�Ʊ���µĲ�Ʊ�ں��ǣ�"..issue)
		no0 = GetWinLotteryItemno(issue-1,0)
		Notice("���ڿɶһ����н������ǣ�"..no0)
                end


		if CheckTimeNum>=78000 and CheckTimeNum<78005 then               --ʮ��λ
		local issue = GetLotteryIssue()
		local NOWqihao = issue - 1
		Notice("���Ѿ����������ڵ�2296,2824���ԲμӶҽ�����Ҳ���Թ�����һ�ڵĲ�Ʊ���µĲ�Ʊ�ں��ǣ�"..issue)
		no0 = GetWinLotteryItemno(issue-1,0)
		Notice("���ڿɶһ����н������ǣ�"..no0)
                end
		
		if CheckTimeNum>=78300 and CheckTimeNum<78305 then               --ʮ��λ
		local issue = GetLotteryIssue()
		local NOWqihao = issue - 1
		Notice("���Ѿ����������ڵ�2296,2824���ԲμӶҽ�����Ҳ���Թ�����һ�ڵĲ�Ʊ���µĲ�Ʊ�ں��ǣ�"..issue)
		no0 = GetWinLotteryItemno(issue-1,0)
		Notice("���ڿɶһ����н������ǣ�"..no0)
                end
		TimeNum=0	

end

--��ͼ�ر�ʱִ��
function map_copy_close_garner ( map_copy )
end
		
--��ͼ�����жϡ�����������������������������������������������������������������������������������

function can_open_entry_garner( map ) 
end 