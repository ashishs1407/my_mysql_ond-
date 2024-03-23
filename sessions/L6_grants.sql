-- to create a user 
-- syntax CREATE USER 'user'@'localhost' IDENTIFIED BY 'password'
 
create user 'ajay'@'localhost' identified by '1234' ;
 
-- to list all the users 
-- syntax SELECT User, Host FROM mysql.user;
 
-- grant 
-- syntax grant select on my_sql_1.employee_data to 'ajay'@'localhost' ;
grant select on my_sql_1.employee_data to 'ajay'@'localhost' ;
select * from my_sql_1.employee_data ;
 
 
-- show grants 
SHOW GRANTS FOR 'user'@'localhost';
 
-- grant update 
grant update on my_sql_1.employee_data to 'ajay'@'localhost' ;
 
-- revoke 
-- syntax revoke update on my_sql_1.employee_data from 'ajay'@'localhost'; 
revoke update on my_sql_1.employee_data from 'ajay'@'localhost';