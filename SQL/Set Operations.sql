-- Set Operation
-- These are same as of set theory in theory

-- Practically they work on two or more tables having
-- 1) Same Column Names
-- 2) Same Data Type

-- They extend the view in vertical way rather than horizontal way as in the case of Joins

-- JOINS VS SET OPERATIONS
-- Joins increases the number of columns while set operations works on the tupples only


-- CREATING A DB AND TWO TABLES WITH TWO SIMILAR COLUMNS 
create database SetOperations;
use SetOperations;

create table table1(
id int not null primary key,
name varchar(255) not null
);

create table table2(
id int not null primary key,
name varchar(255) not null
);

insert into table1()
values
(1,"Shahzaneer Ahmed"),
(2,"Eman Atiq"),
(3,"Hafsa Khalid");

insert into table2()
values
(4,"Deepak Kumar"),
(5,"BhagayShree"),
(3,"Hafsa Khalid");

select * from table1;
select * from table2;




-- Now performing set operations

-- Union

select * from table1 Union select * from table2;  -- do alag alag queries likhni hain aur unka union le lena hai (unique elements only)

-- Intersection 
-- no Keyword in SQL so we have to emulate it
select table1.* from table1 inner join table2 on (table1.id = table2.id);
-- we can use `using` keyword to specify the codition on join if they have same name in both tables
select table1.* from table1 inner join table2 using (id);

-- Minus
-- no keyword present so we need to emulate it via left outer join
select * from table1 left outer join table2 on (table1.id = table2.id);
select table1.* from table1 left outer join table2 using (id) where table2.id is null;


