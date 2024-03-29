-- update syntax 
-- update <tbl_name> set <something>  where <condition>
use my_sql_1 ;
select * from employee_data ;
update employee_data 
set job = 'Sr.Manager' , Sal = sal*1.1  
where emp_no = 7499;


SET autocommit=0;

-- TCL 
-- commit 

select * from employee_data ;
delete from employee_data where emp_no = 7499 ; 
rollback ; 
select * from employee_data;

use my_sql_1;
select * from employee_data ;
commit ;


-- concept of variables 
Set @X = 'THE END' ;

select @max_sal_emp ;

set @max_sal_emp = (select max(sal) from employee_data) ;
Set @min_sal_emp = (select min(sal) from employee_data);

select abs( - @max_sal_emp + @min_sal_emp ) ;


revoke select on my_sql_1.data_emp from 'Ashish'@'localhost'; 


CREATE USER 'ashish'@'localhost' IDENTIFIED BY '5356';
FLUSH PRIVILEGES;
SHOW GRANTS FOR 'ashish'@'localhost';
revoke '*' on my_sql_1.data_emp from 'Ashish'@'localhost'; 
grant select on my_sql_1.data_emp to 'Ashish'@'localhost' ;

grant <previ> on db.tbl_name to 'user'@'localhost' 
revoke <previ> on db.tbl_name from 'user'@'localhost'


grant 

--  Transactions 
set autocommit = 0 ;

create table users (username varchar(50) , password varchar(50)) ;

insert into users values ('Ashish' , '1234') ;
select * from users ;

insert into users values ('Ájay' ,'7890') ;
commit ;


insert into users values ('ajay1' ,'3890') ;
insert into users values ('ajay2' ,'3890') ;
insert into users values ('ajay3' ,'3890') ;

rollback ;


insert into users values ('ajay1' ,'3890') ;
savepoint s1 ;
insert into users values ('ajay2' ,'3890') ;
savepoint s2 ;
insert into users values ('ajay3' ,'3890') ;
savepoint s3 ;

rollback to s2 ;

commit ;

rollback to s1 ;

-- ACID proprties 
-- 

use my_sql_1 ;
select * from data_emp ;
update data_emp 
set first_name = 'Ring light'
where id = 1 ;



-- Join 
use my_sql_1 ;
select * from members ;
insert into members values ('B' , current_date()) ; 

truncate table sales ;
select * from sales ;

INSERT INTO sales
  (customer_id, order_date, product_id)
VALUES
  ('A', '2021-01-01', '1'),
  ('A', '2021-01-01', '2'),
  ('A', '2021-01-07', '2'),
  ('A', '2021-01-10', '3'),
  ('A', '2021-01-11', '3'),
  ('A', '2021-01-11', '3'),
  ('B', '2021-01-01', '2'),
  ('B', '2021-01-02', '2'),
  ('B', '2021-01-04', '1'),
  ('B', '2021-01-11', '1'),
  ('B', '2021-01-16', '3'),
  ('B', '2021-02-01', '3');
  
  
  select *  from members as m
  join sales as  s
  on m.customer_id = s.customer_id ;



A	07-01-2021	16	A	01-01-2021	1
A	07-01-2021	17	A	01-01-2021	2
A	07-01-2021	18	A	07-01-2021	2
A	07-01-2021	19	A	10-01-2021	3
A	07-01-2021	20	A	11-01-2021	3
A	07-01-2021	21	A	11-01-2021	3
B	17-03-2024	22	B	01-01-2021	2
B	17-03-2024	23	B	02-01-2021	2
B	17-03-2024	24	B	04-01-2021	1
B	17-03-2024	25	B	11-01-2021	1
B	17-03-2024	26	B	16-01-2021	3
B	17-03-2024	27	B	01-02-2021	3


-- types of joins 
-- inner join => inner join 
-- outer join  

use my_sql_1;


CREATE TABLE sales (
  customer_id VARCHAR(1),
  order_date DATE,
  product_id INTEGER
);

INSERT INTO sales
  (customer_id, order_date, product_id)
VALUES
  ('A', '2021-01-01', '1'),
  ('A', '2021-01-01', '2'),
  ('A', '2021-01-07', '2'),
  ('A', '2021-01-10', '3'),
  ('A', '2021-01-11', '3'),
  ('A', '2021-01-11', '3'),
  ('B', '2021-01-01', '2'),
  ('B', '2021-01-02', '2'),
  ('B', '2021-01-04', '1'),
  ('B', '2021-01-11', '1'),
  ('B', '2021-01-16', '3'),
  ('B', '2021-02-01', '3'),
  ('C', '2021-01-01', '3'),
  ('C', '2021-01-01', '3'),
  ('C', '2021-01-07', '3');
 

CREATE TABLE menu (
  product_id INTEGER,
  product_name VARCHAR(5),
  price INTEGER
);

INSERT INTO menu
  (product_id, product_name, price)
VALUES
  ('1', 'sushi', '10'),
  ('2', 'curry', '15'),
  ('3', 'ramen', '12');
  

CREATE TABLE members (
  customer_id VARCHAR(1),
  join_date DATE
);

INSERT INTO members
  (customer_id, join_date)
VALUES
  ('A', '2021-01-07'),
  ('B', '2021-01-09');
  
  
  
  
  
select * from members ;
select * from sales ;



 select *  from members as m
 inner join sales as  s
  on m.customer_id = s.customer_id ;
  
  
  select * from sales as s
  left join members as m
  on m.customer_id = s.customer_id ;

    select * from sales as s
  left join members as m
  on m.customer_id = s.customer_id ;
  
  /*
cid	order_date	p_id	cid	joining_date
A	01-01-2021	1	A	07-01-2021
A	01-01-2021	2	A	07-01-2021
A	07-01-2021	2	A	07-01-2021
A	10-01-2021	3	A	07-01-2021
A	11-01-2021	3	A	07-01-2021
A	11-01-2021	3	A	07-01-2021
B	01-01-2021	2	B	09-01-2021
B	02-01-2021	2	B	09-01-2021
B	04-01-2021	1	B	09-01-2021
B	11-01-2021	1	B	09-01-2021
B	16-01-2021	3	B	09-01-2021
B	01-02-2021	3	B	09-01-2021
C	01-01-2021	3	null	null
C	01-01-2021	3	null	null
C	07-01-2021	3	null	null



  */
  
  select * from sales ;
  select * from members ;
  
  use my_sql_1 ;
  
select * 
from sales s  
right join members  m 
  on m.customer_id = s.customer_id ;
  
  
  -- left anti join 
    select * from sales as s
  left join members as m
  on m.customer_id = s.customer_id 
  where m.customer_id is null ;
  
  
  -- full join 
  
  
  -- self  join : a table joined to itself is self join 
  
  select * from sales  a
  join sales b
  on a.customer_id = b.customer_id ;
  
-- employee salary >  manager  salary  
  
  use my_sql_1 ;
    
  select * from sales ;  -- a b c  A 
  select * from members ; -- a b d  B
  (
  select * from  sales  s  
  left join members m 
  on m.customer_id = s.customer_id 
  where m.customer_id is null 
  )
  union 
(
 select * from  sales  s  
  right join members m 
  on m.customer_id = s.customer_id
  where s.customer_id is null ) ;
  
  
  
  create table employee1(
    c_id int ,
    salary int ,
    m_id int
    );
insert into employee1 values (1 , 100 , null ) ;
insert into employee1 values (2 , 200 , 1 ) ;
insert into employee1 values (3 , 50 , 1 ) ;
select * from employee1;


select  e2.c_id from employee1 e1   
join employee1 e2 
on e1.c_id = e2.m_id 
where e2.salary > e1.salary  ;


-- customer who palced oreder the same they join membership 

select * from members ;
select * from sales;


select s.* , m.* 
from members m
join sales  s
on m.customer_id = s.customer_id 
and s.order_date >= '2021-01-04' 

-- joining 3 tables 
select * from members ;
select * from sales ;
select * from menu ;


select * from sales s
left join members  m 
-- using (customer_id)
on m.customer_id = s.customer_id 
left join menu mu
on s.product_id = mu.product_id ;


-- natural join 

select * from sales , members 
where sales.customer_id = members.customer_id;

select * from sales 
cross join menu ;  