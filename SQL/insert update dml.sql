use temp;

select * from account_details;

-- INSERTION 
insert into account_details(id, name) -- ager kam parameters ka name dya jaye tou iska mtlb hai k baki null hongay
values(5,"Haris Riaz");

insert into account_details() -- kuch na likhne ki soorat main tasawwur hoga k sb values required hain
values(6,"Aleeza Maryam",9000);

insert into account_details() -- multiple insertion is also possible
values
(7,"Aleeza Tahir",9000),
(8,"Imran Tahir",9000),
(9,"Babar Azam",9000),
(10,"Robert Kiyoski",9000),
(11,"Tehseen Riaz Abbasi",9000),
(12,"Hunia Nadeem",9000),
(13,"Zamin Raza",9000);

-- UPDATION
-- normally when we need to change some row (tupple/entry)
-- where let us know k kese hona hai kaam
UPDATE account_details SET balance = 89999, where id = 5; 
-- Multiple updation
-- pehle safe mode se bahir jana hoga qk mysql by default allow nhi krti k direct aik hi baar main pura column change krdia jaye
set SQL_SAFE_UPDATES = 0;-- yani iski value false krdi gyi 
set sql_safe_updates = 1; -- again setting the safe mode on
UPDATE account_details set balance = 70000;

-- DELETE 
delete  from account_details where id = 12; -- where clause is used for the selection of rows/tuples
delete from account_details where name = "Noor Ul Huda";
-- complete deletion of table
delete from benefits; -- is trh tamaam tuples delete krdeta hai
drop table benefits; -- deleting the whole table




