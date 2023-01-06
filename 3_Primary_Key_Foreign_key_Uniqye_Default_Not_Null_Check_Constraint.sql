/*
SQL constraints are used to specify any rules for the records in a table .
Constraints can be used to limit the type of data that can go into a table.
It ensures the accuracy and reliability of any of the records in the table , and
if there is any violation between the constraint and the record action ,
the action is aborted . Constraints can be column level or table level.
Column level constraints apply to a column , and table-level constraints
apply to the whole table. 
*/

use customer ;

-- Not null
create table student(
	id int not null ,
	first_name varchar(25) not null ,
	last_name varchar(25) not null , 
	age int
) ;

desc student ;

-- add not null to age
alter table student 
	modify age int not null ; 

desc student ;

-- unique keyword
create table person(
	id int not null ,
	first_name varchar(25) not null ,
	last_name varchar(25) not null ,
	age int not null ,
	unique(id)
) ;

desc person ;

insert into person values (1 , 'Ateeth' , 'Arun' , 21) ;
# Error as id is supposed to be unique we are trying to enter the second record with id 1
insert into person values (1 , 'Arun' , 'Thingalaya' , 55) ; 

-- Method 1 alter the table to make first_name unique
alter table person 
	add unique(first_name) ; 

desc person ; 

-- Method 2 to add constraint to make columns unique
alter table person 
	add constraint uc_person unique(age , first_name) ; 

desc person ; 

-- Drop unique by dropping the constraint
alter table person 
	drop index uc_person ;

desc person ; 

-- Primary key constraint
-- Add constraint to create primary key
create table person1(
	id int not null , 
	first_name varchar(25) not null , 
	last_name varchar(25) , 
	age int ,
	constraint pk_person primary key(id , last_name)
) ;

desc person1 ; 

-- Drop primary key
alter table person1
	drop primary key ;

desc person1 ; 

-- drop table
drop table person ; 

-- create table
create table person(
	id int not null , 
	first_name varchar(25) not null , 
	last_name varchar(25) not null , 
	age int 
) ;

desc person ; 

-- Add a primary key after table has been created
alter table person
	add primary key(id) ; 
	
desc person ; 

-- drop primary key
alter table person
	drop primary key ; 
	
desc person ;

-- add multiple columns as primary key
alter table person
	add constraint pk_person primary key(id , age) ; 
	
desc person ; 

-- drop primary key
alter table person
	drop primary key ; 
	
drop table person ; 

-- Foreign key
-- Create table
create table person(
	id int not null ,
	first_name varchar(25) not null ,
	last_name varchar(25) not null ,
	age int ,
	salary int ,
	primary key(id)
) ;

desc person ; 

-- Create table with a foreign key
-- Method 1 to create foreign key
create table department(
	id int not null , 
	department_id int not null ,
	department_name varchar(25) not null , 
	primary key(department_id) ,
	constraint fk_persondepartment foreign key(id) references person(id)
) ;

desc department ; 

drop table department ; 

-- Method 2 to create foreign key
create table department(
	id int not null , 
	department_id int not null ,
	department_name varchar(25) not null , 
	primary key(department_id) 
) ;

alter table department
	add foreign key(id) references person(id) ; 

-- drop table
drop table department ; 

-- drop table
drop table person ;

-- check constraints
create table person(
	id int not null , 
	first_name varchar(25) not null , 
	last_name varchar(25) not null , 
	age int , 
	salary int , 
	primary key(id) , 
	check(salary < 50000)
) ;

desc person; 

-- Will not be able to insert as salary > 60000 which violates constraint on salary
insert into person values(1 , 'Ateeth' , 'Arun' , 21 , 60000) ; 

insert into person values(1 , 'Ateeth' , 'Arun' , 21 , 40000) ; 

select * from person ; 

drop table person ; 

-- default constraint
create table person (
	id int not null , 
	first_name varchar(25) not null , 
	last_name varchar(25) not null , 
	city_name varchar(25) default 'Bengaluru'	
) ; 

desc person ; 

-- drop default constraint
alter table person 
	alter city_name drop default ; 
