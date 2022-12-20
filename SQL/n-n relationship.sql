-- Implementation of referential relations in SQL 
-- key points!
-- 1-M -> 2 tables (A,RB)
-- M-1 -> 2 tables (RA,B)
-- 1-1 -> 2 tables (RA,B) or (A,RB)
-- M-M -> 3 Tables (A,B,R) 

-- One to One 
create database Customer;
use Customer;

-- table 1
create table customer_details(
id INT Primary key,
c_name Varchar(255)
);

-- table 2
create table order_details(
order_id INT Primary key,
detail varchar(255),
cust_id INT,
foreign key (cust_id) references customer_details(id) on delete set null
);
 
insert into customer_details()
values
(1,"Shahzaneer Ahmed"),
(2, "Raheem Arif");

insert into order_details()
values
(1,"Pizza",1);


select * from order_details;

-- One to Many 

insert into order_details()
values(2,"Burger",1);

insert into order_details()
values(3,"Fries",1);

-- now against one id (1) there are 2 orders associated so it is one to many

select * from order_details;


-- Many to One 

create database Universities;
use Universities;

create table university_details
( uni_id INT PRIMARY KEY,
uni_name varchar(255)
);

create table city_details(
city_id INT PRIMARY KEY,
city_name varchar(255),
uni varchar(255),
foreign key (uni) references university_details(uni_name)
);

insert into university_details()
values
(1,"NUST"),
(2,"COMSATS"),
(3,"FJWU"),
(4,"GCU"),
(5,"FCCU");


insert into city_details()
values
(1, "Lahore","GCU"),
(1,"Lahore","FCCU"),
(2, "Islamabad","FJWU"),
(2, "Islamabad","NUST"),
(2, "Islamabad","COMSATS");


-- Many to Many

create DATABASE Courses;
use Courses;

-- table 1
create table course
( 
course_id INT PRIMARY KEY,
course_name varchar(255)
);

-- table 2
create table students
(
student_id INT PRIMARY KEY,
student_name varchar(255),
c_id int,
foreign key (c_id) REFERENCES course(course_id)
);

insert into course
()
values
(1,"PF"),
(2,"OOP"),
(3,"DSA");


insert into students
()
values
(1,"Shahzaneer",1),
(2,"Ahmad", 1),
(3, "Hasher", 2),
(4,"Sameem", 3);

select * from students;
select * from course;

select * from students natural join course where c_id = course_id;


-- With Composite Primary key


create DATABASE Courses1;
use Courses1;

-- table 1
create table course1
( 
course_id INT PRIMARY KEY,
course_name varchar(255)
);

-- table 2
create table students1
(
student_id INT,
student_name varchar(255),
c_id int,
constraint our_key primary key (student_id,c_id) -- composite key
-- foreign key (c_id) REFERENCES course(course_id)
);

insert into course1
()
values
(1,"PF"),
(2,"OOP"),
(3,"DSA");


insert into students1
()
values
(1,"Shahzaneer",1),
(1,"Shahzaneer",2),
(2,"Ahmad", 1),
(2,"Ahmad",3),
(3, "Hasher", 2),
(4,"Sameem", 3);

select * from students1;
select * from course1;
