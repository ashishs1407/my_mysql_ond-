-- pattern matching 
-- wildcard operators :=> %  _ 
select * from my_sql_1.data_emp 
where  country  like '_____' ;

-- starts with 'A%'
-- ends with A => '%A'
-- contains '%as%'

-- _ one character a time 

-- second must 'a' first can be any alphabet , later it can be any thing 
-- Tamburo
select * from my_sql_1.data_emp 
where first_name like '_a%'  ;


-- NUll   <>  ''
use my_sql_1 ;
CREATE TABLE Persons (
    ID int ,
    LastName varchar(255) ,
    FirstName varchar(255),
    Age int
);

insert into Persons values (1 , 'sharma' , 'kapil' , 17 ) ;
insert into Persons values (2 , null , '' , 18 ) ;
insert into Persons values (3 , 'sharma3' , 'kapil3' , 19 ) ;
select * from persons ;

select * from persons
where LastName is not  Null ; 


-- conditional function 

select ifnull(lastname,"Valenotprovided") , lastname from persons ;

select if(country_code = 'CN' , 'It is china' , if(country_code = 'SE','its sweden','other country' ))
 , country from data_emp ;
 
 select coalesce(lastname,'NAN') from persons ;
 
 -- case when then  end 
 
 select 
 case 
 when country_code = 'CN' then "Its China" 
 when country_code = 'SE' then "Its sweden"
 else  'other country'
 end my_fav_country ,
 country_code 
 from data_emp ;
 
 -- 10 =  hr , 20 = admin , 30 = finance
 select * ,
 case when deptno = 10 then 'HR' else '' end HR_dept ,
 case when deptno = 20 then 'Admin'  else '' end admin_dept ,
 case when deptno = 30 then 'Finance'  else '' end finance_dept 
 from employee_data
 
 
 -- contraints of sql 
 
 
-- contraints in sql 
/*
NOT NULL - Ensures that a column cannot have a NULL value
UNIQUE - Ensures that all values in a column are different
PRIMARY KEY - A combination of a NOT NULL and UNIQUE. Uniquely identifies each row in a table
FOREIGN KEY - Prevents actions that would destroy links between tables
CHECK - Ensures that the values in a column satisfies a specific condition
DEFAULT - Sets a default value for a column if no value is specified
 
 */
 
use my_sql_1;

/*
CREATE TABLE Orders (
    OrderID int NOT NULL,
    OrderNumber int NOT NULL,
    PersonID int,
    PRIMARY KEY (OrderID),
    FOREIGN KEY (PersonID) REFERENCES Persons(PersonID)
);
*/
drop table sales ;
CREATE TABLE sales (
  sales_id int auto_increment ,
  customer_id VARCHAR(1),
  order_date DATE,
  product_id INTEGER ,
  primary key (sales_id),
   FOREIGN KEY (customer_id) REFERENCES members(customer_id)
);

select * from sales ;
INSERT INTO sales
  (customer_id, order_date, product_id)
VALUES
  -- ('A', '2021-01-01', '1') ,
 -- ('A', '2021-01-01', '2'),
 --  ('A', '2021-01-07', '2'),
 --  ('A', '2021-01-10', '3'),
 --  ('A', '2021-01-11', '3'),
 --  ('A', '2021-01-11', '3'),
 -- ('B', '2021-01-01', '2'),
 -- ('B', '2021-01-02', '2'),
  ('B', '2021-01-04', '1'),
  ('B', '2021-01-11', '1'),
  ('B', '2021-01-16', '3'),
  ('B', '2021-02-01', '3'),
  ('C', '2021-01-01', '3'),
  ('C', '2021-01-01', '3'),
  ('C', '2021-01-07', '3');
 

drop table menu;
CREATE TABLE menu (
  product_id INTEGER primary key ,
  product_name VARCHAR(5),
  price INTEGER
);

INSERT INTO menu
  (product_id, product_name, price)
VALUES
  ('1', 'sushi', '10'),
  ('2', 'curry', '15'),
  ('3', 'ramen', '12');
  
drop table members;
CREATE TABLE members (
  customer_id VARCHAR(1) primary key,
  join_date DATE
);

INSERT INTO members
  (customer_id, join_date)
VALUES
  ('A', '2021-01-07'),
  ('B', '2021-01-09');
  
 
select * from members ;
select * from menu;
select * from sales;

select * from sample;
drop table sample ;
create table sample (id int not null unique auto_increment , 
mobno varchar(50) unique check (length(mobno) = 10) ,
country_code varchar(5) default 'IND' ,
injestion_time datetime default now()
) ;
select now();
insert into sample ( mobno) values ( '1234567890') ;
insert into sample ( mobno,country_code) values ( '1234567892' , 'us') ;
insert into sample ( mobno) values ('1234567893' ) ; 


delete from members
where  customer_id = 'B' ;

delete from sales
where  customer_id = 'B' ;
