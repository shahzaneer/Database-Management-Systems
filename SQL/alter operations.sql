use temp;

select * from account;
select * from loan;
select * from benefits;

--  Alteration in SQL (DDL)
-- Adding new Column 
ALTER TABLE account add interest FLOAT not null default 0;

-- Modify the column details

ALTER TABLE account modify interest double not null default 7; 

desc account; -- interest's Data type is converted into double

-- CHANGE Column -> it will rename the already existing column in the table with the change in data type as well
alter table account change column interest saving_interest INT NOT NULL default 2; 
 
 -- DROP COLUMN
 alter table account drop column saving_interest;
 
 -- RENAME THE TABLE
 alter table account rename to account_details;
 
 
 