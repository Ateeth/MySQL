-- Show all databases
show databases ;

-- Use database
use customers ;

-- Check for existing tables
show tables ;

-- Create customer table
create table customer_info (
	id integer auto_increment ,
	first_name varchar(25) ,
	last_name varchar(25) ,
	salary integer ,
	primary key(id)
) ;

-- Insert values into table
insert into customer_info (first_name , last_name , salary)
values
('John' , 'Daniel' , 50000) ,
('Ateeth' , 'Arun' , 60000) ,
('Darius' , 'Bengali' , 70000) ,
('Chandan' , 'Kumar' , 40000) ,
('Ankit' , 'Sharma' , NULL) ; 

-- Select all values from table
select * from customer_info ;

-- Fetch records where salary is null
select * from customer_info where salary is null ; 

-- Fetch records where salary is not null
select * from customer_info where salary is not null ; 

-- Update statement to replace null values
update customer_info set salary = 50000 where id = 5 ; 

-- Select all values from table
select * from customer_info ;

-- Delete statement to delete records where id = 5
delete from customer_info where id = 5 ; 

-- Select all values from table
select *  from customer_info ;

-- sql alter table
-- Add column in existing table

alter table customer_info add email varchar(25) ; 

alter table customer_info add dob date ; 

-- add date values to records
update customer_info set dob = 2001 where first_name = 'Ateeth';

-- Modify column type

alter table customer_info modify dob year ; 

-- Check the schema
desc customer_info ;

-- Drop/delete column
alter table customer_info drop column email;
