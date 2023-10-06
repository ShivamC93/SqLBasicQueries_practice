CREATE DATABASE ORG;
SHOW DATABASES;
USE ORG;

CREATE TABLE worker(
worker_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
FIRST_NAME CHAR(25),
LAST_NAME CHAR(25),
SALARY INT(10),
JOINING_DATE DATETIME,
DEPARTMENT CHAR(25)
);

INSERT INTO worker
(worker_id,FIRST_NAME,LAST_NAME,SALARY,JOINING_DATE,DEPARTMENT) VALUES
(001,"monika","arora",100000,'14-02-20 09.00.00','HR'),
(002,"neharika","verma",80000,'14-02-20 09.00.00','admin'),
(003,"vishal","singhal",300000,'14-02-20 09.00.00','HR'),
(004,"vipul","singh",200000,'14-02-20 09.00.00','account'),
(005,"satish","kumar",75000,'14-02-20 09.00.00','HR');
(006,"vivek","Bhati",500000,'14-02-20 09.00.00','admin');
(007,"Geetika","Chauhan",90000,'14-01-20 09.00.00','account');
(008,"samitavh","singh",500000,'14-02-20 09.00.00','admin');

SELECT * FROM worker;

CREATE TABLE bonus (
worker_ref_id INT,
bonus_amount INT(10),
bonus_date DATETIME,
FOREIGN KEY (worker_ref_id)
REFERENCES worker(worker_id)
ON DELETE CASCADE
);

INSERT INTO bonus
(worker_ref_id, bonus_amount,bonus_date) VALUES
(001, 5000, '16-02-20'),
(002, 3000, '16-02-11'),
(003, 4000, '16-02-20'),
(004, 4500, '16-02-20');
(004, 4500, '16-02-20');



CREATE TABLE title(
worker_ref_id INT,
worker_title Char(25),
affected_from DATETIME,
FOREIGN KEY (worker_ref_id)
REFERENCES worker(worker_id)
ON DELETE CASCADE
);

INSERT INTO title
(worker_ref_id,worker_title,affected_from) VALUES
(001, 'Manager', '16-02-20 00:00:00'),
(002, 'Executive', '16-02-20 00:00:00'),
(003, 'Asst. Manager', '16-02-20 00:00:00'),
(004, 'Manager', '16-02-20 00:00:00'),
(005, 'Lead', '16-02-20 00:00:00');



