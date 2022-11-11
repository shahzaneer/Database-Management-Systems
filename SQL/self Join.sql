-- Self Join
-- isme aik hi table per join lgta hai 
-- emp -> emp as t1 , emp as t2 --> is trh

 
 
create database university;
use university;  

create table Student(
student_id INT NOT NULL PRIMARY KEY,
student_name Varchar(255)
);


create table Course(
course_id Varchar(20) NOT NULL PRIMARY KEY,
course_name Varchar(255)
);

insert into Student
()
values
(1,"Shahzaneer Ahmed"),
(2,"Sameer"),
(3,"Hamza"),
(4,"Shahmeer");



insert into Course
()
VALUES
("C1","Data Structures"),
("C2","OOP"),
("C3","Web Dev");

select * from Student;
select * from Course;

create table enrollment(
s_id INT NOT NULL,
c_id varchar(20),
since INT default 2016,
foreign key (s_id) references Student(student_id), 
foreign key (c_id) references Course(course_id),
CONSTRAINT our_key Primary key (s_id, c_id)
);

insert into enrollment
(s_id,c_id)
values
(1,"C1"),
(2,"C3"),
(3,"C2"),
(1,"C2");


select * from enrollment;


-- Self join use krte hain
-- select student from enrollments jisne atleast 2 courses rkhay huay hain

-- There is no self join keyword in SQL we have to simulate it through its usage
select T1.id from enrollment as T1 , enrollment as T2
where T1.s_id = T2.s_id and T1.c_id <> T2.c_id; 
-- <> is used for not equal to






