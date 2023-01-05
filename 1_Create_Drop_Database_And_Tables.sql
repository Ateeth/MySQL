-- Show all databases
show databases ;


-- Create database (databasename)
create database customers ;

-- drop database (databasename)
drop database customers ; 

create database customers ;

-- Use a database
use customers ;

-- Check out the tables in the database
show tables ; 

-- create table:- create table tablename (columnname datatype , ....)
create table customer_info ( id integer , first_name varchar(10) , 
							last_name varchar(10)) ;
							
-- select records from a table
select * from customer_info ;

-- Insert values into table
insert into customer_info(id , first_name , last_name) values(1 , 'Ateeth' , 'Arun');
insert into customer_info values(2 , 'Ateeth A' , 'Thingalaya');

-- Drop table
drop table customer_info
