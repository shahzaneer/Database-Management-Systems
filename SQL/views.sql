use ravicom;

select * from employee; -- emp_id , emp_name , emp_address
-- is table main teen columns hain jo harddisk main actually kahein na kahein stored hain
-- DBMS main hum views banaskte hain jo mukhtalif users k liay in tables k different views generate krte hain
-- yehi abstraction bhi kehlaati hai 


create view ravi_employee as select employee_id , employee_name from employee;

select * from ravi_employee; -- yeh temporary view hota hai jo fetch original table se hi houta hai , yeh alag se save nhi hua hai

alter view ravi_employee as select employee_name , employee_address from employee; 

select * from ravi_employee;

-- it will drop the view if present 
drop view if exists ravi_employee;