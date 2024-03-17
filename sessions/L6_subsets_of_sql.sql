-- ---------------------------------


 -- subsets of sql  | type of sql statement 
 -- ddl => data defination lang. eg. create, drop , alter , rename , truncate 
 -- dml => data manupulation lang. eg. insert , update , delete , join ,union 
 -- dql => data query lang.  eg. select 
 -- dcl => data control lang. eg. grant , revoke
 -- tcl => transaction control lang .  eg. commit , rollback , savepoint 
 
  -- ddl => data defination lang.
 -- drop ,, truncate |  delete 
 create table data_prac as ( select id , first_name , email  from data_emp ) ;
 
 select * from data_prac ;
 
 -- syntax drop 
 -- drop table <tbl_name> ; 
 
 use my_sql_1 ;
 drop table data_emp11 ; 
 
 
 -- syntax truncate 
 --  truncate table  <tbl_name> ; 
 
 truncate table data_prac ;
 
 select * from data_prac  ;
 


-- RENAME TABLE a TO aa; 
 -- subsets of sql  | type of sql statement 
 -- ddl => data defination lang. eg. drop , alter , rename , truncate 
 -- dml => data manupulation lang. eg. insert , update , delete , join ,union 
 -- dql => data query lang.  eg. select 
 -- dcl => data control lang.
 -- tcl => transaction control lang . eg. commit , rollback , save point ;


-- rename table <orignal_tabl_name> to <new_table_name>
RENAME TABLE data_emp21 TO data_employee; 
-- table 
-- col name datatyes 
-- add a column 
 -- alter table columns add operation 
-- syntax => alter table <tabl_name > add < colname dataype >  

select * from data_employee ;
alter table data_employee add age int ;

 -- alter table columns drop operation 
-- syntax => alter table <tabl_name > drop  column < colname dataype >  
-- alter table <table_name> drop column <colname >

 alter table data_employee drop column age ;
 select * from data_employee ;
 
 -- rename column 
 -- syntax => alter table < tabl_name > rename column <old col name> to <new colunm name >
 alter table data_employee rename column email to email_address; 
  select * from data_employee ;
  
-- alter the datatype 
-- syntax => alter table <tble_name> modify <existing column  new_datatype>
 alter table data_employee modify country_code varchar(5);
 
 
 -- DDL IMP points to remember 
 /*
 1) DDL changes the structure of the table like creating a table, drop a table,
 altering a table, etc.
2) All the command of DDL are auto-committed 
that means it permanently save all the changes in the database.
 */

-- DML Data Manipulation lang. 

-- Delete 
-- Syntax => delete from <tbl name> [where condition] 
use my_sql_1 ;
select * from employee_data ;
delete from employee_data where emp_no = 7566 ;

select * from data_emp1;
delete from data_emp1  ;

create table data_emp_del as ( select * from data_emp ) ;
create table data_emp_trunc as ( select * from data_emp ) ;


select count(*) from data_emp_trunc ;

truncate table data_emp_trunc ;

delete from  data_emp_del  where true = true ;


-- update syntax 
-- update <tbl_name> set <something>  where <condition>

select * from employee_data ;
update employee_data 
set job = 'Sr.salesman'
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