use org;
select * from worker;

-- All the Logical Operators are supported 
-- in SQL 

-- OR
select * from bonus where bonus_amount = 4500 OR bonus_amount = 8000;
-- NOT
 SELECT * FROM worker where department not in ("COMPUTER SCIENCE");   
 -- AND
 select * from worker where department = "COMPUTER SCIENCE" AND first_name = "Shahzaneer";