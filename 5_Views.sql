/*
Views is a virtual table based on the result set of a SQL query.
*/

use customers ; 

create table student(
	student_id int auto_increment , 
	first_name varchar(25) not null , 
	last_name varchar(25) not null , 
	age int , 
	primary key(student_id)
) ; 

insert into student values
	(1 , 'Ateeth' , 'Arun' , 21) ,
	(2 , 'Ithi' , 'Arun' , 18) , 
	(3 , 'Arun' , 'Thingalaya' , 54) ; 

select * from student ; 


create table department(
	student_id int auto_increment , 
	department_name varchar(25) not null , 
	foreign key(student_id) references student(student_id)
) ;

desc department ; 

insert into department values
	(1 , 'Computer Science') , 
	(2 , 'Electronics') , 
	(3 , 'Mechanical') ; 
	
select * from department ; 

-- creating view
create view student_info as
	select first_name , last_name , age , department_name from student inner join department
	using (student_id) ; 
	
-- Select info from the virtual table / view
select * from student_info ; 

-- Drop the view
drop view student_info ;  
