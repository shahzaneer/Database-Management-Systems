-- Logical Operator 
-- AND
--  OR
-- NOT

-- THESE ALL ARE UPPORTED IN SQL

SELECT * FROM Title WHERE worker_ref_id between 1 AND 4; 
SELECT * FROM Title WHERE worker_ref_id = 1 or worker_ref_id = 4 ;       
select * from Title where worker_ref_id not in (2,3);