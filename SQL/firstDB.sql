show databases;
create database org;
use org;

CREATE TABLE Worker(
worker_id INT NOT NULL PRIMARY KEY  AUTO_INCREMENT,
first_name VARCHAR(255),
last_name VARCHAR(255),
salary INT(15),
joining_date DATETIME,
department VARCHAR(255)
);

INSERT INTO Worker (worker_id, first_name, last_name, salary, joining_date, department)
VALUE
(001,"Shahzaneer","Ahmed",1500000, '22-10-18 09.00.00' , "COMPUTER SCIENCE"),
(002,"Deepak","Kumar",1500000, '22-10-18 09.00.00' , "COMPUTER SCIENCE"),
(003,"Aleeza","Tahir",1500000, '22-10-18 09.00.00' , "COMPUTER SCIENCE"),
(004,"Anas","Awan",1500000, '22-10-18 09.00.00' , "COMPUTER SCIENCE");

SELECT * FROM Worker;

CREATE TABLE Bonus(
worker_ref_id INT,
bonus_amount INT,
bonus_date DATETIME,

FOREIGN KEY (worker_ref_id)
REFERENCES Worker(worker_id)
ON DELETE CASCADE
);


INSERT INTO Bonus
(worker_ref_id, bonus_amount, bonus_date)
VALUES
(001,4500,'22-10-22 09.00.00'),
(002,6000,'22-10-22 09.00.00'),
(003,8000,'22-10-22 09.00.00'),
(004,2300,'22-10-22 09.00.00');


SELECT * FROM Bonus;

CREATE TABLE Title(
worker_ref_id INT,
worker_title VARCHAR(255),
effected_from DATETIME,

FOREIGN KEY (worker_ref_id)
REFERENCES Worker(worker_id)
ON DELETE CASCADE
);


INSERT INTO Title
-- tarteeb k bagair ger naam na den tou bhi kaam hojata hai! 
()
VALUES
(001, "President Pakistan", '22-10-22 09.00.00'),
(002, "CSS Executive", '22-10-22 09.00.00'),
(003, "VICE President C3", '22-10-22 09.00.00'),
(004, "President C3", '22-10-22 09.00.00');

Select * from Title;




