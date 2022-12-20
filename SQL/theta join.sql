-- Theta Join
-- Normal cross join main table 1 ki sb rows se table 2 ki sb rows multiply hojatin hain
-- jbke theta join main kisi condition ko dekh kr kia jaata hai yeh kaam


--! Theta join aik trhh ka Equi Join hi hai 

use ravicom;

select * from employee;
select * from department;

select * from employee, department; -- normal cross join
select * from employee, department where employee.employee_name = "Shahzaneer Ahmed" or employee.employee_name = "Noor Ul Huda"; -- theta join