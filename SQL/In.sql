-- Normally we use many OR statements 
select * from worker where department = "Computer Science" 
or department = "Data Science" or department = "AI";

-- but here we will use IN Operator to minimize this work
select * from worker where department in ("Computer Science","Data Science","AI");