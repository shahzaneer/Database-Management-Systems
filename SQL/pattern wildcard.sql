select * from worker;
-- Wild Card / Pattern Searching
-- % means any number of characters
--  `_` means a single character before or after
-- LIKE -> this keyword is use before giving the pattern 

select * from worker where first_name LIKE "%e%";    -- e se pehle aur baad main kaafi characters aaaskte hain 
select * from worker where first_name LIKE "_e%";    -- yani pehle srff aik character hoga aur r k baad kaaafi characters aaskte hain   