use LMSdata;

--------complex queries------

------getting highest salary---
select * from Hired_Candidates E1 
where 0=(select COUNT(aggr_per) 
from Hired_Candidates E2 
where E2.aggr_per>E1.aggr_per)
order by E1.aggr_per asc;

select * from Fellowship_Candidates;
--------------------------------------
select 
	SUM(CASE WHEN Fellowship_Candidates.birth_date IS NOT NULL THEN 1 ELSE 0 END) as sum_Per,
	AVG(ISNULL(Fellowship_Candidates.aggr_per,0)) AS avg_difference
From Fellowship_Candidates
Inner join Candidate_Bank_Det ON Fellowship_Candidates.id = Candidate_Bank_Det.candidate_id
Inner join User_Details on Fellowship_Candidates.first_name=User_Details.first_name
Inner join Company_Requirement on Fellowship_Candidates.id=Company_Requirement.candidate_id
group by Fellowship_Candidates.creator_user
HAVING AVG(ISNULL(Fellowship_Candidates.aggr_per,0)) > (select AVG(Fellowship_Candidates.id) FROM Fellowship_Candidates)
ORDER BY Fellowship_Candidates.creator_user asc;

-------Operators and clauses------
----use of and operator-----
select * from User_Details where first_name='Dipti' and password='gthyjuk@yu';

---use of or operator---
select first_name,last_name from User_Details where password='gthyjuk@yu' or contact_number=7789564521;

--use of Union operator---with like----
select first_name from User_Details
where first_name like 'D%'      -----name start with D
union 
select first_name from Fellowship_Candidates;

---------Intersect -------taken common rows only
select first_name from User_Details
Intersect
select first_name from Fellowship_Candidates;

----------In() operator-------
select * from User_Details 
where first_name in('Dipti','Sarika','Deba');

-----Not In-------
select * from User_Details 
where first_name not in('Dipti','Sarika','Deba');

----use of minimum aggregate function---
select min(aggr_per) as minimumPer from Fellowship_Candidates;

----use of maximum aggregate function----
select max(aggr_per) as maximumAgg from Fellowship_Candidates;

----------like function------------
select * from User_Details where first_name like 'D%';
select * from User_Details where first_name like 'D[ei]%';  ---------it will show records with second letter as i or e

----use of between keyword----
select * from Fellowship_Candidates where aggr_per between 30 and 90;

----use of exist keyword----
select * from Fellowship_Candidates where exists(select * from User_Details where User_Details.first_name=Fellowship_Candidates.first_name);

