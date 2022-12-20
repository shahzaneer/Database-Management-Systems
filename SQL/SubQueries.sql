-- Sub Queries -> more than one query working in a single command

-- Divide and conquer technique
-- easy to use
-- Slow in process
-- alternative for joins


-- Outer Query -> dependent on inner query
-- Inner Query -> Independent query


use ravicom;
select * from employee;
select * from department;

select depatment_id from department where employee_id in (select employee_id from employee where employee_id < 4);

