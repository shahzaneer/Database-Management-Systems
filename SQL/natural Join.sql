-- Natural Join
-- it is used to map the two tables with each other at the common attributes (where primary key == foreign key)

Drop Database Ravicom;

create database Ravicom; 
use Ravicom;  

create table Employee(
employee_id INT NOT NULL PRIMARY KEY,
employee_name Varchar(255),
employee_address Varchar(255)
);


create table Department(
depatment_id Varchar(20) NOT NULL PRIMARY KEY,
department_name Varchar(255),
employee_id INT NOT NULL,
foreign key (employee_id) references Employee(employee_id)

);

insert into Employee
()
values
(1,"Shahzaneer Ahmed","Lahore"),
(2,"Sameer","Multan"),
(3,"Hamza","Faislabad"),
(4,"Shahmeer","Sialkot"),
(5,"Hamza","Kamra");


insert into Department
()
VALUES
("D1","Management",1),
("D2","FLutter dev",5),
("D3","Web Dev",4);

select * from Department;
select * from Employee;



select * from Employee,Department where Employee.employee_id = Department.employee_id; -- Simple natural join without keyword
-- natural join keyword can only be used when the PK and FK have exactly same name;
select * from Employee Natural Join Department; -- it can be represented in this form with natural join keyword 
select * from Department Natural Join Employee; -- order change hojayega (department k attributes pehle aajayengay) ans same
-- natural join keyword k case main foreign key jo k repeated hai wo


