--HR ATTRITION ANALYSIS PROJECT

--Database creation
create database Hr_attrition_db


--Dtabase selection
use HR_attrition_db

--Data verification
select top 10 *from Hr_data

--count records
select count(*) as total_employees from Hr_data

--overall attrion rate
select concat(round(AVG(Attrition_Flag)*100,2),'%')as attrion_rate
from Hr_data

--Department -Wise Attrition
select Department,
AVG(Attrition_Flag) as Attrition_Rate
from Hr_data
group by Department
order by Attrition_Rate desc

--salary VS Attrition
select salary_Group,
AVG(Attrition_Flag) as Attrition_Rate
from Hr_data
group by Salary_Group
order by Attrition_Rate desc

select Experience_Group,
AVG(Attrition_Flag) as Attrition_Rate
from Hr_data
group by Experience_Group
order by Attrition_Rate desc

select satisfaction_Group,
AVG(Attrition_Flag) as Attrition_Rate
from Hr_data
group by  satisfaction_Group
order by Attrition_Rate desc

select Salary_Group,Satisfaction_Group,
AVG(Attrition_Flag) as Attrition_Rate
from Hr_data
group by Satisfaction_group,Salary_Group
order by Attrition_Rate desc


