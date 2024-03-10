-- ------ ---------------------------------------------------------
-- Big Six notation 
-- select => print
-- from  =>  to point to a data source 
-- where  => filter
-- group by => to perform agg. at col levels 
-- having  => filter after agg.
-- order by => sorting
-- limit  => to restrict the record in o/p
-- distinct => unique values 



-- Group by 

-- distinct 
select distinct Deptno , job  from my_sql_1.employee_data;
select * from my_sql_1.employee_data;

-- limit 
select * from my_sql_1.employee_data limit 5 ;


-- order by -- sorting 
-- asc , desc
select * from my_sql_1.employee_data order by deptno  ;
select * from my_sql_1.employee_data order by deptno asc ;

select * from my_sql_1.employee_data order by job desc , deptno asc ;


-- Group by  -- aggregation => sum ,count , avg , min ,max 
-- i want to find total salary by dept 

select Deptno  , max(sal)  from my_sql_1.employee_data 
group by Deptno ;


/*
30	salesman	5600
30	manager	2850
30	clerk	950
20	Manager	2950
20	Analyst	6000
20	Clerk	1100
10	Manager	2450
10	President	5000
10	Clerk	1300
*/
select Deptno ,job , sum(sal)  from my_sql_1.employee_data 
group by Deptno  , job ;


-- having 
select Deptno ,job , sum(sal) as total_dept_job_sal
from my_sql_1.employee_data
group by Deptno  , job 
having total_dept_job_sal >  3000 ;





select * from my_sql_1.data_emp limit 10 , 10  ;

create table data_emp21 as (
select * from my_sql_1.data_emp limit 10 , 10  );


-- 1- 10 => chat 1 
-- 11 - 20 => chap 2 


select id , fist_name , last_name, email , gender , country , country_code from data_emp11 ; -- = > 1-11
select * from data_emp21 ; -- = 11-20


( select id , first_name , last_name, email , gender , country , country_code  from data_emp11 )
union all
(select id , first_name , last_name, email , gender , country , country_code from data_emp21 ) ;
