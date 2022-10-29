-- Replace
-- if row is present then it will update it completely
-- if the row is not present then it will add the row in the table
-- it works on complete tupple/row

use temp;
select * from account_details;

replace into account_details() -- arguments main kuch na dia jaye tou sb consider hongay
values(8,"Manahil Adil",87600);

replace into account_details(id,name)
values(9,"Iris Liaquat"); -- note that it will set the whole tupple so the previous values of missing parameter will be set to default i.e null in this case


-- it can be used with set operator

replace into account_details set id = 9 , balance = 98900; -- note that the name parameter was not given so it is set to null

-- replace vs update set 
-- update set mehiz value ko set krta hai jbke replace puray tupple ko alter krdeta hai
update account_details set name = "IRIS BAAJI" where id = 9;

