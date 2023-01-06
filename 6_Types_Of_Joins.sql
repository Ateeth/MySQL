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
	(3 , 'Arun' , 'Thingalaya' , 54) ,
	(4 , 'Ankit' , 'Kumar' , 27) , 
	(5 , 'Ramesh' , 'Singh' , 27) ; 


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

-- Inner Join
select * from student inner join department 
	on student.student_id = department.student_id ; 
	
select student.first_name , student.last_name , 
	student.age , department.department_name
	from student inner join department 
	on student.student_id = department.student_id ; 
	
-- Left join
-- This has all rows of left table against matching rows of right table
select * from student left join department 
	on student.student_id = department.student_id ;

select student.first_name , student.last_name , 
	student.age , department.department_name
	from student left join department 
	on student.student_id = department.student_id ; 
	
-- Right join
-- This has all rows of right table against matching rows of left table
select * from student right join department 
	on student.student_id = department.student_id ;

select student.first_name , student.last_name , 
	student.age , department.department_name
	from student right join department 
	on student.student_id = department.student_id ; 
	
-- Full outer join
--  full outer join is used to combine the result of both left and right outer join and returns all rows (don't care its matched or unmatched) from the both participating tables.
select * from student left join department 
	on student.student_id = department.student_id 
				union
select * from student right join department 
	on student.student_id = department.student_id ;

select student.first_name , student.last_name , 
	student.age , department.department_name
	from student left join department 
	on student.student_id = department.student_id  
				union 
select student.first_name , student.last_name , 
	student.age , department.department_name
	from student right join department 
	on student.student_id = department.student_id  
	
-- Cross join 
-- A cross join is a type of join that returns the Cartesian product 
-- of rows from the tables in the join. In other words, it combines each row from the first table with each row from the second table.

select * from student cross join department ;

select student.first_name , student.last_name , 
	student.age , department.department_name
	from student cross join department  ;
	
-- Natural Join
-- A NATURAL JOIN is a JOIN operation that creates an implicit join clause for you based on the common columns in the two tables being joined. Common columns are columns that have the same name in both tables. A NATURAL JOIN can be an INNER join, a LEFT OUTER join, or a RIGHT OUTER join. The default is INNER join.

select * from student natural join department ;

select student.first_name , student.last_name , 
	student.age , department.department_name
	from student natural join department  ;
