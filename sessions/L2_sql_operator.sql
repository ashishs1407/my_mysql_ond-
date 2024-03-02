--  CRUD = create READ UPDATE DELETE  operation  

-- Create table , insert records , 


-- compartition =>:  = , != , < ,  <=,  >,  >=
;

select * from my_prac.employee
where (job = 'salesman') and  (sal > 1000) ;

select * from my_prac.employee
where True and  True ;

select * from my_prac.employee
where True  ;

-- job = salesman and sal > 1000 

-- logical operators :> and  or 


-- between <lowerlimit> and <upperlimit >

select * from my_prac.employee
where sal between 500 and 1000 ;

-- NOT operator (negative operator)

select * from my_prac.employee
where job = 'President' or job = 'Analyst' or  job = 'Manager' or job = 'Clerk';

select * from my_prac.employee
where  job <> 'salesman' ;

select * from my_prac.employee
where  sal  between 500 and 1000 ;

-- in operator 

select * from my_prac.employee
where job = 'President' or job = 'Analyst' or  job = 'Manager' or job = 'Clerk';

select * from my_prac.employee
where  job in ( 'President' , 'Analyst' , 'Manager' , 'Clerk' );

-- not in 

select * from my_prac.employee
where  job not in ( 'President' , 'Analyst' , 'Manager' , 'Clerk' );

select concat() job from my_prac.employee ;

select 123 + 234 ;
select 123 - 234 ;

select 2*2 ;
select 4/2 ;

select *   from my_prac.employee  
where not (Emp_No % 2)  =  1 ; 

select 7499 % 2 ; 

-- like 'Patter matching '
-- functions 
-- inbuilt | user defined 


 -- string functions 
 
 -- concat 
 
 select concat("Ashish " , "Shimpi") as full_name ;
 
 select concat(ename ,' ', job, " " , hiredate ) as full_name  from my_prac.employee ;
 
 select left("Ashish", -3) ;
 select left( ename , 5 ) ,ename  from my_prac.employee ;
 
  select right("Ashish", 3) ;
select right( ename , 3 ) ,ename  from my_prac.employee ;

select left(trim("  Ashish  " ), 3);

select right( trim(ename) , 3 ) ,ename  from my_prac.employee ;


select ltrim("  Ashish  ") ; -- 'Ashish  '
select rtrim("  Ashish  ") ; -- '  Ashish'

select ucase("ind") ; 

select right( upper(trim(ename)) , 3 ) ,ename  from my_prac.employee ;

select length("Ashish") ;
select length(ename) ,ename  from my_prac.employee 
where length(ename) % 2 = 0  ;

select reverse("Ashish") ;