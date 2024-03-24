-- cte , sub-query , views , temporary table 

-- CTE : common table exp. 

-- syntax 
-- with < cte > as ( query ) select * from < cte >
-- with < cte1 > as ( query1 ) 
-- , < cte2 > as ( query2 ) 
-- select * from ctes


select *  from data_emp ;

with cte_japan as 
( select * from data_emp where country_code = 'JP') 
, cte_ru as 
( select * from data_emp where country = 'Russia')
(select * from  cte_ru) 
union 
(select * from cte_japan)  ;

-- weather observation pb.no 20 : calculate median of lat_n 
-- [ 12 , 13 , 15 ,16 ,17 , 21 ]
-- even / odd 


with ctea as (
    select lat_n  from station   order by lat_n asc
  )
  , cte1 as ( 
select lat_n , row_number() over()  as rn  from ctea  
  ), 
  cte2 as (
    select  count(rn) as cnt  from cte1 
  )
  , cte3 as (
  select 
  case  when  cnt %2 = 1 then floor(cnt/2) 
  else floor(cnt/2) - 1
  end  as n from cte2
  )
  , upper_bck_remove as (
  select lat_n , rn from cte1 where  rn > (select n from cte3  ) 
  order by rn asc 
  ) 
  , lower_bck_remove as (
  select lat_n , rn , row_number() over() as rn1  from upper_bck_remove  order by rn desc 
  )
  , cte_final as (
  select * from lower_bck_remove where rn1 > (select n from cte3)
)
select round(avg(lat_n),4) from cte_final ;





with sales1 as 
(select * from sales ) 
, members1 as 
( select * from members ) 
select * from sales1 s1
join members1  m1
on m1.customer_id = s1.customer_id   ; 



-- temporary Table : life of temp. table lasts for the on-going session only

-- syntax 
create temporary table  cost  as 
( select * from members ) ;

use my_sql_1 ;
select * from cost ;  

-- Views 
-- syntax : create view <view name >  as () ; 

create view order_gt_04_01_2021  as ( 
select s.* , m.join_date 
from members m
join sales  s
on m.customer_id = s.customer_id 
and s.order_date >= '2021-01-04' 
 ) ;

use my_sql_1 ;
select * from order_gt_04_01_2021 ;


create table sales as (select * from sales1 ) ;

create table order_gt as (select * from order_gt_04_01_2021 ) ;

drop table sales ;  


select * from data_emp ;

create view data_emp_view as ( select id , first_name , last_name , email , country , country_code from data_emp )  ;

select * from data_emp_view  where country like '%jap%'; 


-- sub-query : query within query is sub-query 

-- sub-query in from  
select email from (
select * from data_emp where country like '%Aus%' ) tttty  ; 

-- sub-query in where  
-- (se , ru , fr , ma ,co ) 


select first_name , last_name  from data_emp 
where country in ( select country from data_emp where country_code in ( 'SE','RU' ,'FR', 'MA','CO') )   ;



select * from menu 
where product_id = 
(
select product_id 
from members m
join sales  s
on m.customer_id = s.customer_id 
and s.order_date = m.join_date 
) ;  


select xt.* , menu.* from  
(
select product_id 
from members m
join sales  s
on m.customer_id = s.customer_id 
and s.order_date = m.join_date 
) xt   
join menu 
on menu.product_id =  xt.product_id ;