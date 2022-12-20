-- 50 INTERVIEW QUESTIONS ON SQL--

-- Q-1. Write an SQL query to fetch “FIRST_NAME” from Worker table using the alias name as <WORKER_NAME>.

select FIRST_NAME  as WORKER_NAME from worker;

-- Q-2. Write an SQL query to fetch “FIRST_NAME” from Worker table in upper case.

Select Upper(FIRST_NAME) from worker; 

-- Q-3. Write an SQL query to fetch unique values of DEPARTMENT from Worker table.

select DISTINCT DEPARTMENT FROM worker;
-- Q-4. Write an SQL query to print the first three characters of  FIRST_NAME from Worker table.

select substring(FIRST_NAME,1,3)  from worker; -- 1 char se 3 char tk yeh inclusie hota hai both ends k liay

-- Q-5. Write an SQL query to find the position of the alphabet (‘b’) in the first name column ‘Amitabh’ from Worker table.

select instr(FIRST_NAME, "b") as posOFb from worker where FIRST_NAME = "Amitabh";
-- instr(string , substring) -> it gives the position of first occurence of substring
-- Q-6. Write an SQL query to print the FIRST_NAME from Worker table after removing white spaces from the right side.
select rtrim(FIRST_NAME) from worker;
-- Q-7. Write an SQL query to print the DEPARTMENT from Worker table after removing white spaces from the left side.
select ltrim(FIRST_NAME) from worker;

-- Q-8. Write an SQL query that fetches the unique values of DEPARTMENT from Worker table and prints its length.
select DISTINCT length(DEPARTMENT) from worker; -- LENGTH() -> IT WILL count the occurences of different departments

select DISTINCT DEPARTMENT, length(DEPARTMENT) from worker;

-- Q-9. Write an SQL query to print the FIRST_NAME from Worker table after replacing ‘a’ with ‘A’.
select replace(FIRST_NAME, "a","A") from worker;
-- Q-10. Write an SQL query to print the FIRST_NAME and LAST_NAME from Worker table into a single column COMPLETE_NAME.
-- A space char should separate them.
-- CONCAT(varargs) -> so as many arguments can be given (String)
select concat(FIRST_NAME, " " , LAST_NAME) as name from worker;
-- Q-11. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending.
SELECT * FROM worker order by FIRST_NAME ASC;
-- Q-12. Write an SQL query to print all Worker details from the Worker table order by 
-- FIRST_NAME Ascending and DEPARTMENT Descending.
SELECT * FROM worker order by FIRST_NAME ASC , DEPARTMENT DESC;

-- Q-13. Write an SQL query to print details for Workers with the first name as “Vipul” and “Satish” from Worker table.
select * from worker where FIRST_NAME in ("Vipul","Satish");
-- Q-14. Write an SQL query to print details of workers excluding first names, “Vipul” and “Satish” from Worker table.
select * from worker where FIRST_NAME not in ("Vipul","Satish");

-- Q-15. Write an SQL query to print details of Workers with DEPARTMENT name as “Admin*”.
select * from worker where DEPARTMENT like "Admin%"; -- the string here is incase-sensitive
-- Q-16. Write an SQL query to print details of the Workers whose FIRST_NAME contains ‘a’.
select * from worker where FIRST_NAME like "%a%"; -- % means aagay peechay kitne bhi elements aaskte hain
-- Q-17. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘a’.
select * from worker where FIRST_NAME like "%a";
-- Q-18. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets.
select * from worker where FIRST_NAME like "_____h";
-- Q-19. Write an SQL query to print details of the Workers whose SALARY lies between 100000 and 500000.
select * from worker where SALARY >= 100000 and SALARY <= 500000;
-- Q-20. Write an SQL query to print details of the Workers who have joined in Feb’2014.
select * from worker where JOINING_DATE like "2014-02%";
-- Q-21. Write an SQL query to fetch the count of employees working in the department ‘Admin’.
select count(DEPARTMENT) from worker where DEPARTMENT = "ADMIN";
-- Q-22. Write an SQL query to fetch worker full names with salaries >= 50000 and <= 100000.
select concat(FIRST_NAME, " " , LAST_NAME) as NAME from worker where SALARY >= 50000 and SALARY <= 100000;

-- Q-23. Write an SQL query to fetch the no. of workers for each department in the descending order.
SELECT DEPARTMENT, COUNT(worker_id) from worker group by DEPARTMENT order by COUNT(worker_id) desc;

-- Q-24. Write an SQL query to print details of the Workers who are also Managers.
select * from worker inner join title on worker.WORKER_ID = title.WORKER_REF_ID where  WORKER_TITLE = "Manager";
-- Q-25. Write an SQL query to fetch number (more than 1) of same titles in the ORG of different types.
select * from worker inner join title on worker.WORKER_ID = title.WORKER_REF_ID WHERE

-- Q-26. Write an SQL query to show only odd rows from a table.
-- select * from worker where MOD (WORKER_ID, 2) != 0; 

-- Q-27. Write an SQL query to show only even rows from a table. 

-- Q-28. Write an SQL query to clone a new table from another table.


-- Q-29. Write an SQL query to fetch intersecting records of two tables.

-- Q-30. Write an SQL query to show records from one table that another table does not have.
-- MINUS

-- Q-31. Write an SQL query to show the current date and time.
-- DUAL


-- Q-32. Write an SQL query to show the top n (say 5) records of a table order by descending salary.

-- Q-33. Write an SQL query to determine the nth (say n=5) highest salary from a table.

-- Q-34. Write an SQL query to determine the 5th highest salary without using LIMIT keyword.
 
-- Q-35. Write an SQL query to fetch the list of employees with the same salary.

-- Q-36. Write an SQL query to show the second highest salary from a table using sub-query.

-- Q-37. Write an SQL query to show one row twice in results from a table.

-- Q-38. Write an SQL query to list worker_id who does not get bonus.

-- Q-39. Write an SQL query to fetch the first 50% records from a table.

-- Q-40. Write an SQL query to fetch the departments that have less than 4 people in it.

-- Q-41. Write an SQL query to show all departments along with the number of people in there.

-- Q-42. Write an SQL query to show the last record from a table.

-- Q-43. Write an SQL query to fetch the first row of a table.

-- Q-44. Write an SQL query to fetch the last five records from a table.

-- Q-45. Write an SQL query to print the name of employees having the highest salary in each department.

-- Q-46. Write an SQL query to fetch three max salaries from a table using co-related subquery

-- Q-47. Write an SQL query to fetch three min salaries from a table using co-related subquery

-- Q-48. Write an SQL query to fetch nth max salaries from a table.

-- Q-49. Write an SQL query to fetch departments along with the total salaries paid for each of them.

-- Q-50. Write an SQL query to fetch the names of workers who earn the highest salary.






select * from worker;
select * from title;
select * from bonus;