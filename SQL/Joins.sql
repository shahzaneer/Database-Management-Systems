-- JOINS

-- To show the relationship of one table with other table we use joins
-- JOIN = Cross Product + Condition
-- In every join there is a Cross Product happening but with the Condition statement it is manipulated


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


-- Now basic Join that is Cross Join / Cross Product

-- if table one contains n rows and table two contains m rows then 
-- Cross Join -> `mxn`

select * from Employee,Department; -- Simple cross join
select * from Employee Cross Join Department; -- it can be presented in this form


