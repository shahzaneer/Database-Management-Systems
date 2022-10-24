create database temp;
use temp;
-- INTEGRITY CONSTRAINTS

-- PRIMARY KEY , UNQIUE , CHECK 
create table account(
id INT primary key,
name varchar(255) unique,
balance int,
Constraint account_balance_check check(balance >= 2000)
-- Constraint k name account_balance_check hai aur Check(condition hai)
 
);

insert into account(id,name,balance)
values
(1,"Shahzaneer Ahmed", 70000),
(2,"Noor Ul Huda", 8000);

select * from account;

-- Duplicate values cannot be inserted
-- insert into account(id, name , balance)
-- values(3, "Shahzaneer Ahmed", 9000);

-- The constraint account balance check is violated
-- insert into account(id, name , balance)
-- values(3, "Anas Awan", 1000);

-- FOREIGN KEY
create table loan(
cust_id INT,
loan_amount INT,
issued_date date,
due_date date,
-- Making foreign key connection 
Foreign key (cust_id) references account(id)
); 

select * from account;

insert into loan(cust_id, loan_amount, issued_date , due_date)
-- values(7,7000,NULL,NULL); -- the 7 customer Id is not in account ID column 
values(1,6000,NULL,NULL); -- as 1 is present in the account ID column therefore it is successfully inserted

select * from loan;

create table benefits(
benefit_id INT,
beneficiary_name Varchar(255),
benefit_amount INT NOT NULL DEFAULT 0
);

-- Dropping table
-- Drop table benefits;

-- insert krte huay jitne parameters lengay utne hi arguments bhi aaskte hain
insert into benefits(benefit_id , beneficiary_name)
values(1, "Zamin Raza");

select * from benefits;


