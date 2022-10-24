select * from worker;

-- Groub by -> used to group the similar data

select department from worker group by department; -- yeh distinct ki trh hi kaam krta hai
-- Group by uis usually used by some aggregation method to calculate basic stats of the similar data 

select department, COUNT(department) from worker group by department; -- COUNT 
select department, AVG(salary) from worker group by department; -- AVG 
select department, MIN(salary) from worker group by department; -- MIN 
select department, MAX(salary) from worker group by department; -- MAX 
select department, SUM(salary) from worker group by department; -- SUM -> the sum of all the entries present in that group 


-- firstly group by selects the distinct groups and then apply the aggregation formula
