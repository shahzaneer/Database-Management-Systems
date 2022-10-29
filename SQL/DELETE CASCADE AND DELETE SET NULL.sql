-- Referential Constraints deletion 
-- there are two cases mainly 
-- INSERT (you cannot insert in the child table when you have no id in parent table)
-- DELETE (you cannot delete from the parent table if the child has that id)

-- in simple language
-- aisa order place nhi krste jiska koi customer na ho.
-- ager order mojud ho tou customer delete nhi hoskta

-- making a DB having referential constraints
CREATE database Customer;

use Customer;

create table customer_info(
id int primary key,
cname varchar(255));

create table Orde(
order_id INT Primary key,
order_detail varchar(255),
cust_id INT,
foreign key (cust_id) references customer_info(id)
);

insert into customer_info(id , cname)
values(1,"Shah"),
(2,"Shayan");

insert into Orde()
values(1,"PIZZA",1); -- AS 1 IS PRESENT IN THE CUSTOMER_INFO THEREFORE IT IS ADDED

insert into Orde()
values(2,"bUrGER",45); -- IT IS NOT DELETED AS NO CUSTOMER_ID IS FOUND IN THE CUSTOMER_INFO TABLE

select * from Orde;

delete from customer_info where id = 1; -- cannot delete the cusomter id because the order is placed against it!


-- NOW Resolving the Problem using the on Delete Cascade and on set null
-- if we use delete cascade we will be able to delete the parent then it will also delete the order from the child table  
-- before implementing this , going to re create the tables once again.ALTER

drop database customer; 

create database customer;

-- table 1
create table customer_details(
id INT Primary key,
c_name Varchar(255)
);

-- table 2
create table order_details(
order_id INT Primary key,
detail varchar(255),
cust_id INT,
-- foreign key (cust_id) references customer_details(id) on delete cascade -- yeh delete karega isko if parent is deleted
foreign key (cust_id) references customer_details(id) on delete set null -- yeh delete nahi karega order ko blkay cust_id yani foreign key ko null assign kardega

);
 
insert into customer_details()
values
(1,"Shahzaneer Ahmed"),
(2, "Raheem Arif");

insert into order_details()
values
(1,"Pizza",1);

-- now it will be deleted as we are using delete cascade
delete from customer_details where id = 1;

-- now let us seee the db it should show no order_details as the customer against it is no more
select * from order_details;
-- now in case of on delete set null -> cust_id null hogi albatta order delete nhi hua

-- on delete set null is also the same but in this case the order is not deleted rather the cust_id assigned to it is assigned null
-- INTERVIEW QUESTION
-- Do Foreign keys maybe null?
-- YES is the Answer

drop database customer;

 