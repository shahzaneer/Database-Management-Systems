-- Having 
-- It is used as where but in the case of group by only
-- having hamesha group by main hi use hoga
--  where use kr skte hain lekin wo group by se pehle likha jayega
use org;
select department from worker;
select department, COUNT(department) from worker group by department;
select department, COUNT(department) from worker group by department having COUNT(department) > 2;