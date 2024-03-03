-- proper case => 
-- "ashish" , 'IND' ,"iNd" 


select concat(upper(left("ashish",1))  , lower(right("ashish",(length("ashish") - 1 )))) as prper_case ;
select substring("IND",2) ;

-- Numeric functions 

-- Returns the absolute value of a number
select ABS(-123); 

-- 	Rounds a number to a specified number of decimal places
select round(123.656,2) ; -- 123.66


-- 	Returns the smallest integer value that is >= to a number 
select ceiling(123.656)  ;
select ceiling(123.456)  ;
select ceiling(123.056)  ;
select ceil(123.056) ;

-- 	Returns the largest integer value that is <= to a number

select floor(123.056) ;
select floor(123.656)  ;

-- 
select SQRT(121) ;
select round(POWER(1331, (1/3) ));

select pi();

-- Returns the remainder of a number divided by another number
select mod(8,2) ;

-- Returns the greatest value of the list of arguments
select greatest(12,24,56,100) ;
select least(788,12,24,56,100) ;

-- 	Returns e raised to the power of a specified number 
-- e value = 2.7
select exp(2) ;

select 1/3 ;
select  1 div 3 ;

select round(emp_no, -1) , emp_no from my_prac.employee;

-- 7* functions  
-- Aggregated fun. => sum , avg , min , max , count 

/*
sum	100703
avg	7746.384615
count	13
min	7499
max	7934

*/
select sum(emp_no) from my_prac.employee ;
select avg(emp_no) from my_prac.employee ;
select count(emp_no) from my_prac.employee ;
select min(emp_no) from my_prac.employee ;
select max(emp_no) from my_prac.employee ;


-- date functions
-- Returns the current date
select CURDATE() ;
select CURRENT_DATE();
select CURRENT_TIME();
select CURRENT_TIMESTAMP();
select CURTIME();


SELECT ADDDATE(CURDATE() , INTERVAL 10 DAY) ; 
select adddate(hiredate , interval 10 day) , hiredate from my_prac.employee ;

select date('ashish') ;
select date('2023-03-03') ;

SELECT SUBDATE("2017-06-15", INTERVAL 10 DAY);


SELECT DATEDIFF("2017-06-25", "2017-06-15");
SELECT DATEDIFF("2017-06-15", "2017-06-25");


SELECT DAY("2017-06-15") as birth_day;
SELECT month("2017-06-15") as birth_month;
SELECT year("2017-06-15") as birth_year;

SELECT EXTRACT(MONTH FROM "2017-06-15");

SELECT DAYNAME("2017-06-15");
select dayname(date_add(curdate(),interval 1 day) );

SELECT MONTHNAME("2017-06-15");
SELECT WEEKOFYEAR("2017-06-15");
select WEEKDAY(date_add(curdate(),interval 1 day)) ; 

select WEEKDAY('2024-03-10') , dayname('2024-03-10') ;

SELECT DATE_FORMAT("2024-03-03", "%y-%M-%d %W");
-- '24-March-03 Sunday'
SELECT STR_TO_DATE("August 10 2017", "%M %d %Y");
SELECT STR_TO_DATE('24-March-03 Sunday' , '%y-%M-%d %W') ; 