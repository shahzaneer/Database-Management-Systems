-- Outer Join
-- left outer join -> left side aur common area
-- Right outer join -> right side aur common area
-- full outer join -> all the data of both tables to be presented in a single table


select * from employee;
select * from department;

-- inserting something in the left table that will not be in the right one
insert into employee()
values
(8,"Noor ul huda","karachi"),
(9,"Hafsa Khalid","Toronto");

select * from employee left outer join department on (employee.employee_id = department.employee_id);
select * from employee right outer join department on (employee.employee_id = department.employee_id);

-- select * from employee  full join department on (employee.employee_id = department.employee_id);


-- full outer join can be shown by using the union of left outer join and right outer join
select * from employee left outer join department on (employee.employee_id = department.employee_id) Union 
select * from employee right outer join department on (employee.employee_id = department.employee_id);




