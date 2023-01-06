/*
CREATE INDEX statement in SQL is used to create indexes in tables. 
The indexes are used to retrieve data from the database more quickly than others.
The user can not see the indexes, and they are just used to speed up queries /searches.
Note: Updating the table with indexes takes a lot of time than updating a table without indexes.
It is because the indexes also need an update. 
So, only create indexes on those columns that will be frequently searched against.
*/

use customers ; 

create table student(
	id int not null , 
	first_name varchar(25) , 
	last_name varchar(25) ,
	age int
) ; 

desc student ; 

-- create index on age
create index index_age
	on student(age) ; 
	
desc student ; 

-- create index on multiple columns 
create index index_age_first_name
	on student(age , first_name) ; 

desc student ; 

-- Drop index created
alter table student 
	drop index index_age_first_name ; 
	
alter table student 
	drop index index_age ; 
