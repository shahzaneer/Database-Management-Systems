-- Equi Join is the join which is used when we use = operator

use ravicom;

select * from department;
select * from employee;

alter table department add location varchar(255);

insert into department()
values("D4","Marketing", 2, "Multan");


-- now using equi join finding the person who has the same address as the location of department

select * from employee, department 
where  employee.employee_id = department.employee_id  and employee.employee_address = department.location;

select * from employee cross join department 
where  employee.employee_id = department.employee_id  and employee.employee_address = department.location;

-- there is no keyword for equi join it is also simulated by using generic cross join
