

create database my_prac ;

create database my_sql_1 ; 
 
show databases;

use my_prac;

-- statement terminator = ; 

/*
Database defined
A database is an organized collection of structured information, 
or data, typically stored electronically in a computer system. 
A database is usually controlled by a database management system (DBMS).
*/

-- To Acess the database we need DBMS => Database manage. system 
-- RDBMS eg mysql , postgress , oracle , etc 
-- once you master any one of the tool you can work with any RDBMS tools available 
-- 90 - 95 %  similarity  = SQL => Prog. lang to interact with RDBMS .


-- select the database 

use my_prac ; 

-- to acess the table 

-- 1) syntax 

select * from employee_data; 

-- data rdbms 
-- 1) file uploads 
-- 2) insert statement 

-- select statement => print (anology)

select * from employee ;  --  =>  select and from 
select * from my_sql_1.employee_data ;

-- create table 
-- create table <tbl_name> (col1 dtype1 , col2 dtype ,..... coln dtype n ) 

create table my_sql_1.sales2 (id int , sales_person_name text , salary int  ) ;

select * from my_prac.sales ; 

-- insert statement 
-- insert into <table> value (val1 , val2 , val n) ;

insert into sales values (2 , 'ajay1' , 12000) , 
(3 , 'ajay3' , 15000)  ;

insert into sales ( sales_person_name , id  , salary ) 
values ('ajay5',4,7500) , ('ajay6' , 5 , 20000)  ;



-- data uploads 
-- 1)GUI to upload the data 
-- 2) via insert into statements  => 2 variations  | proper seq | user_defined seq
-- select 
-- from => 

select * from employee ;

SELECT 
    sal AS salary, ename as name
FROM
    employee ;
    
-- concept of alias 
-- concept of commenting 

-- # for single line comment 
-- """"  """" => for multi line 

-- used for single line comment  (-- )
-- /*  < > */  used for multiline comment 
/*  dasdajsdhs 
dhqshf
hasjaf
haskjf
 */
 
 -- concepts of datatype 
 
 create table car (model_name varchar(50), m_year  year , oner_name varchar(50) ,  purchase_date date , Amount_lkh decimal(20,5) , time_of_entry datetime  );
 
 insert into car 
 values ("creta" , "2023" ,"Ajay singh", "2023-01-01" , 15.56  , "2024-02-11 21:58:10" ) ;

select * from car ;
-- 5 

-- model_name varchar(50), m_year  year , oner_name varchar(50) ,  purchase_date date , Amount decimal(size,d) , time_of_entry datetime  






 













