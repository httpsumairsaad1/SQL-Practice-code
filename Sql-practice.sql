-- 188, 04-02-2024.
-- 240, 05-02-2024.
use sqlalltask;
create table employee(
	id int auto_increment primary key,
    emp_age int,
    emp_name varchar(55),
    emp_position varchar(55),
    emp_contact varchar(55)
);
alter table employee MODIFY COLUMN id int auto_increment primary key;
desc employee;
insert into sqlalltask.employee (emp_name, emp_position, emp_contact) values ('Ali', 'Sqa engineer', '22222');
insert into employee (emp_name, emp_position, emp_contact) values ('Saleem', 'Software engineer', '55555');
insert into employee (emp_name, emp_position, emp_contact) values ('Ali', 'Data scientist', '66666');
insert into employee (emp_name, emp_position, emp_contact) values ( 'Uzzam', 'Software engineer', '77777');
insert into employee (emp_name, emp_position, emp_contact) values ('Hanan', 'Sqa engineer', '88888');
insert into employee (emp_name, emp_position, emp_contact) values ('Majeed', 'Sqa engineer', '99999');
insert into employee (emp_name, emp_position, emp_contact) values ('Majeed', 'Sqa engineer', '123321');
insert into employee (emp_name, emp_position, emp_contact) values ('Ayaan', 'Computer Science', '999321');
insert into employee (emp_name, emp_position, emp_contact) values ('Zubair', 'Computer Science', '998877');
insert into employee (emp_name, emp_position, emp_contact) values ('Ramesh', 'Software engineer', '00000');
select * from employee;
truncate table sqlalltask.employee;
-- ==================================================================================
desc departments;
create table departments(
	id int auto_increment primary key,
    dept_name varchar(55)
);
insert into departments (dept_name) values('SE');
insert into departments (dept_name) values('CS');
insert into departments (dept_name) values('SE');
select * from departments;
select emp_position from employee where emp_position="sqa engineer";
select count(dept_name) from departments;
select distinct emp_name from employee;
-- ==================================================================================  1:09 AM, 29-01-24.
use abc;
create table Customer(
	Cid int auto_increment primary key,
    Cname varchar(50),
    Cage int,
    Cgender char(1),
    Ccountry varchar(50)
);
insert into customer (Cname, Cage, Cgender, Ccountry) values ('Amir', '25', 'M','Pakistan');
select * from customer;
select distinct cage from customer order by cage asc;
select distinct cage from customer order by cage desc;

SELECT cgender, COUNT(*) AS gender_count
FROM customer
GROUP BY cgender;
SELECT cage, COUNT(*) AS age_count
FROM customer
GROUP BY cage;
select ccountry, count(*) as customer_country
from customer
GROUP BY ccountry;
SELECT cage FROM CUSTOMER 
WHERE cage BETWEEN 18 AND 22 ORDER BY cage ASC;
SELECT ccountry FROM CUSTOMER 
WHERE ccountry LIKE "I%";
SELECT cid from customer where cid between 10 and 20;
SELECT ccountry, LENGTH(ccountry) AS country_length
FROM customer;

use abc;
create table products(
	p_id int auto_increment primary key,
    p_name varchar(55),
    p_targetAudience char(1),
    p_ageGroup varchar(50),
    p_color varchar(30),
    p_price int
);
alter table products
drop column p_ageGroup;
alter table products 
add column p_ageGroup varchar(50);
alter table products
add column p_price int;
insert into abc.products (p_name, p_targetAudience, p_ageGroup, p_color, p_price)
values ('Skin Care', 'F', '18 to 30+', 'red', '5200');
select * from products;
select * from products order by p_price asc;
select * from products where p_price between 700 and 6000;
select p_price from products where p_price is not null;
show databases;
select * from sqlalltask.employee;
select * from sqlalltask.employee
limit 3;
select * from sqlalltask.employee
limit 5;
use abc;
-- 01-02-2024 -- SQL LAB ==========================================
-- OUTLINE >>> primary key, foreign key, unique key, Default, (OR, AND, NOT)
-- orderby, asc, as, min and max, count, avg, sum, NULL;
-- === primary key === 
create table ibastudents(
sid int auto_increment primary key,
firstName varchar(55),
lastName varchar(55)
);
insert into ibastudents (firstName, lastName) values ('Umair', 'Saad');
insert into ibastudents (firstName, lastName) values ('Ali', 'khan');
insert into ibastudents (firstName, lastName) values ('Qaseem', 'khan');
insert into ibastudents (firstName, lastName) values ('Zaid', 'Haider');
insert into ibastudents (firstName, lastName) values ('Shahnawaz', 'Mustafa');
insert into ibastudents (firstName, lastName) values ('', '');
desc ibastudents;
select * from ibastudents;
insert into ibastudents (firstName, lastName) values ('', '');
insert into ibastudents (firstName, lastName) values ('Nawaz', 'Ali');
insert into ibastudents values ('','', '');
insert into ibastudents (firstName, lastName) values ('Shaboor', 'Jaan');

-- (foreign key)
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    Quantity INT,
    FOREIGN KEY (ProductID) REFERENCES NewProducts(ProductID)
);
CREATE TABLE NewProducts (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(255)
);
desc orders;
CREATE TABLE COURSES(
courseid int primary key,
cname varchar(55)
);
CREATE TABLE ENROLLMENTS(
EnrollmentId INT PRIMARY KEY,
studentId int,
courseId int,
FOREIGN KEY (courseId) references courses(courseid) 
);
insert into courses (courseid, cname) values (2223, 'Saad');
insert into enrollments (enrollmentId, studentID,courseId) values (99, '023210182', 2223);
select * from courses;
select * from enrollments;

-- unique key
CREATE TABLE EmployeePRC(
eid int primary key,
email varchar(55) unique,
phnum varchar(55) unique
);
insert into employeePRC values (1,NULL,NULL);

-- default 
CREATE TABLE DefaultExample2(
id int primary key,
examplename varchar(55),
age int default 25 
);
insert into DefaultExample2 (id, examplename) values (1, "Maheem");
select * from DefaultExample2;
CREATE TABLE EXAMPLE3 (
ID INT PRIMARY KEY,
AGE INT DEFAULT 18,
CITYNAME VARCHAR(55) DEFAULT "DIGRI"
);
insert into Example3 (id) values (3);
select * from EXAMPLE3;

-- OR, AND, NOT
CREATE TABLE PERSON_EMP2(
EMPID INT PRIMARY KEY,
FNAME VARCHAR(55),
LNAME VARCHAR(55),
SALARY INT DEFAULT 7000,
DEPARTMENT VARCHAR(55) DEFAULT "CS"
);
INSERT INTO PERSON_EMP2 (EMPID, FNAME, LNAME) VALUES (4, "PALLII", "HAIRDER");
SELECT * FROM PERSON_EMP2 WHERE
(SALARY>5000 AND DEPARTMENT = 'CS') OR (SALARY<8000 and DEPARTMENT = "CS");
select min(p_price) as kamhaai, max(p_price) as zydahaai from products;
select avg(p_price) as avgS from products;
select sum(p_price) as Summ from products;
-- =========== OUTLINE =============
-- sql task of labs
-- 1 feb 24
	-- primary key, foreign key, unique key, Default, (OR, AND, NOT)
    -- orderby, asc, as, min and max, count, avg, sum, NULL;
-- ================================= >190 line.

-- Practice of SQL in vacation of the election - 04-02-2024.
use abc;
CREATE TABLE Vote_users (
    UserID INT PRIMARY KEY,
    UserName VARCHAR(255) NOT NULL,
    Email VARCHAR(255) UNIQUE NOT NULL
);
CREATE TABLE Vote_candidate (
    CandidateID INT PRIMARY KEY,
    CandidateName VARCHAR(255) NOT NULL,
    PartyAffiliation VARCHAR(255)
);
CREATE TABLE Votes (
    VoteID INT PRIMARY KEY AUTO_INCREMENT,
    VoterID INT,
    CandidateID INT,
    VoteTimeStamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	FOREIGN KEY (VoterID) REFERENCES Vote_users(UserID),
	FOREIGN KEY (CandidateID) REFERENCES Vote_candidate(CandidateID)
);
insert into vote_users values 
(1, 'Ali', 'Ali@gmail.com'),
(2, 'Faraz', 'Faraz@gmail.com'),
(3, 'Saad', 'Saad@gmail.com');

insert into vote_candidate values 
(1, 'Candidate1', 'PartyA'),
(2, 'Candidate2', 'PartyB'),
(3, 'Candidate3', 'PartyC');

insert into votes (voterid, candidateid) values (1,1), (2,2), (3,3);
select * from votes;
select * from vote_users;
select * from vote_candidate;

SELECT
    v.VoteID,
    vu.UserID,
    vc.CandidateID,
    vu.UserName,
    vu.Email,
    vc.CandidateName,
    vc.PartyAffiliation,
	v.VoteTimeStamp
FROM
    Votes v
JOIN
    Vote_users vu ON v.VoterID = vu.UserID
JOIN
    Vote_candidate vc ON v.CandidateID = vc.CandidateID;
-- Practice of SQL in vacation of the election - 05-02-2024.
-- =========== OUTLINE =============
-- sql task of labs
-- 1 feb 24
	-- primary key, foreign key, unique key, Default, (OR, AND, NOT)
    -- orderby, asc, as, min and max, count, avg, sum, NULL;
use abc;
desc vote_candidate;
desc vote_users;
desc votes;
select * from votes;

create table user_tbl(
	user_Id INT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL
);
create table orders_tbl(
order_id INT PRIMARY KEY,
user_id INT,
product_name VARCHAR(50) NOT NULL,
order_date DATE NOT NULL,
foreign key (user_id) references user_tbl(user_id)
);

INSERT INTO user_tbl (user_id, username, email) VALUES
(1, 'john_doe', 'john@example.com'),
(2, 'jane_smith', 'jane@example.com'),
(3, 'Khan', 'khan@gmail.com');
-- Inserting data into the orders table, linking orders to users
INSERT INTO orders_tbl (order_id, user_id, product_name, order_date) VALUES
(101, 1, 'Product A', '2024-02-13'),
(102, 2, 'Product B', '2024-02-14');
use abc;
select * from orders_tbl;
select * from user_tbl;
-- 14-02-2024 =======================================================================
use abc;
create table salaries(
	empId int, deptId int, salary int
);
insert into salaries values (1, 1, 10000), (2,2, 35000), (3,3, 56000);
select MIN(salary) from salaries;
SELECT MAX(SALARY) FROM SALARIES;
SELECT AVG(SALARY) FROM SALARIES;
SELECT SUM(SALARY) FROM SALARIES;
SELECT SUM(SALARY) - AVG(SALARY) FROM SALARIES;

SELECT AVG(SALARY) AS AVG_SALARY, MIN(SALARY) AS MIN_SALARY FROM SALARIES;

CREATE TABLE job (
	EMP_ID INT,
    EMP_CITY VARCHAR(55) DEFAULT 'DIGRI',
    HIRE_YEAR INT DEFAULT '2024'
);
INSERT INTO JOB (EMP_ID) VALUES (3);
SELECT * FROM JOB;

CREATE TABLE newOrders (
    order_id INT PRIMARY KEY,
    order_date DATE DEFAULT CURRENT_DATE,
    delivery_date DATE DEFAULT (CURRENT_DATE + INTERVAL '7' DAY)
);
INSERT INTO newOrders (ORDER_ID) VALUES (126);
SELECT * FROM newOrders;

-- 15-02-2024 MYSQL
create database SqlQuiz;

-- 22-02-2024
-- INNER JOINS IN SQL. 
CREATE DATABASE BEFORE_MID;
USE BEFORE_MID;
CREATE TABLE NEW_ORDERS(
	ORDER_ID INT PRIMARY KEY,
    CUSTOMER_ID INT,
    ORDER_DATE TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO NEW_ORDERS (ORDER_ID, CUSTOMER_ID) VALUES (1, 1);
INSERT INTO NEW_ORDERS (ORDER_ID, CUSTOMER_ID) VALUES (3, 3);
SELECT * FROM NEW_ORDERS;
CREATE TABLE NEW_CUSTOMER(
	CUSTOMER_ID INT PRIMARY KEY,
    CUSTOMER_NAME VARCHAR(65)
);
INSERT INTO NEW_CUSTOMER (CUSTOMER_ID, CUSTOMER_NAME) VALUES (1, "SAAD");
SELECT * FROM NEW_CUSTOMER;
SELECT * FROM NEW_ORDERS;
-- TASK1
SELECT NEW_ORDERS.ORDER_ID, NEW_CUSTOMER.CUSTOMER_NAME, NEW_ORDERS.ORDER_DATE
FROM NEW_ORDERS
INNER JOIN NEW_CUSTOMER ON NEW_ORDERS.ORDER_ID = NEW_CUSTOMER.CUSTOMER_ID; 
desc new_customer;
desc new_orders;
-- TASK2
CREATE TABLE SHIPPERS(
	SHIP_ID INT PRIMARY KEY,
    SHIP_NAME VARCHAR(55)
);
ALTER TABLE NEW_ORDERS ADD SHIP_ID INT;
-- INSERT INTO THREE TABLES;
SELECT * FROM NEW_ORDERS;
INSERT INTO NEW_ORDERS (ORDER_ID, CUSTOMER_ID, SHIP_ID) VALUES (5, 5, 2); -- gap of 3 ids.
INSERT INTO NEW_CUSTOMER (CUSTOMER_ID, CUSTOMER_NAME) VALUES (5, "SHAHZAD");
INSERT INTO SHIPPERS (SHIP_ID, SHIP_NAME) VALUES (5, "E");
-- TASK 2
use before_mid;
SELECT
NEW_ORDERS.ORDER_ID, NEW_CUSTOMER.CUSTOMER_NAME, SHIPPERS.SHIP_NAME
FROM ((NEW_ORDERS
INNER JOIN NEW_CUSTOMER ON NEW_ORDERS.CUSTOMER_ID = NEW_CUSTOMER.CUSTOMER_ID)
INNER JOIN SHIPPERS ON NEW_ORDERS.SHIP_ID = SHIPPERS.SHIP_ID);

SELECT O.ORDER_ID, C.CUSTOMER_NAME, S.SHIP_NAME
FROM
NEW_ORDERS O
INNER JOIN NEW_CUSTOMER C ON O.CUSTOMER_ID = C.CUSTOMER_ID
INNER JOIN SHIPPERS S ON O.SHIP_ID=S.SHIP_ID;
-- ============================================================================
-- Practice: Friday 23-02-2024.
-- SELF LEARNING TASK 1:
USE BEFORE_MID;
CREATE TABLE EMPLOYEES(
	EMPLOYEE_ID INT PRIMARY KEY, EMPLOYEE_NAME VARCHAR(55), DEPARTMENT_ID INT
);
CREATE TABLE DEPARTMENTS(
	DEPARTMENT_ID INT PRIMARY KEY, DEPARTMENT_NAME VARCHAR(55)
);
CREATE TABLE PROJECTS(
	PROJECT_ID INT PRIMARY KEY, PROJECT_NAME VARCHAR(55), 
    EMPLOYEE_ID INT,
    FOREIGN KEY (EMPLOYEE_ID) REFERENCES EMPLOYEES(EMPLOYEE_ID)	
);
INSERT INTO EMPLOYEES VALUES (4, "SARA ", 983);
INSERT INTO DEPARTMENTS VALUES (981, "JAVA DEVELOPER");
INSERT INTO PROJECTS VALUES (5, "AI", 2);
DROP TABLE DEPARTMENTS;
SELECT
EMPLOYEES.EMPLOYEE_NAME,
EMPLOYEES.EMPLOYEE_ID,
DEPARTMENTS.DEPARTMENT_NAME,
PROJECTS.PROJECT_NAME
FROM EMPLOYEES
INNER JOIN DEPARTMENTS ON EMPLOYEES.DEPARTMENT_ID = DEPARTMENTS.DEPARTMENT_ID
INNER JOIN PROJECTS ON PROJECTS.EMPLOYEE_ID = EMPLOYEES.EMPLOYEE_ID;
-- ==========================================================================
-- SELF LEARNING TASK 2 - (4 TABLES) INNER JOINS. 
USE BEFORE_MID;
CREATE TABLE TASKS(
	TASK_ID INT PRIMARY KEY,
    PROJECT_ID INT,
    FOREIGN KEY (PROJECT_ID) REFERENCES PROJECTS(PROJECT_ID),
    TASK_DESCRIPTION VARCHAR(200)
);
INSERT INTO TASKS VALUES (5, 5, "USER-INTERFACE FOR AI WEBSITES.");
use before_mid;
SELECT
EMPLOYEES.EMPLOYEE_NAME,
EMPLOYEES.EMPLOYEE_ID,
DEPARTMENTS.DEPARTMENT_NAME,
PROJECTS.PROJECT_NAME,
TASKS.TASK_DESCRIPTION
FROM EMPLOYEES
INNER JOIN DEPARTMENTS ON EMPLOYEES.DEPARTMENT_ID = DEPARTMENTS.DEPARTMENT_ID
INNER JOIN PROJECTS ON PROJECTS.EMPLOYEE_ID = EMPLOYEES.EMPLOYEE_ID
INNER JOIN TASKS ON PROJECTS.PROJECT_ID = TASKS.PROJECT_ID;
SELECT * FROM EMPLOYEES;
-- ========================== self learning task3 (5 tables) ==========================
USE BEFORE_MID;
CREATE TABLE PROGRESS(
PROGESS_ID INT PRIMARY KEY, 
PROGRESS_PERCENTAGE VARCHAR(4),
TASK_ID INT,
FOREIGN KEY (TASK_ID) REFERENCES TASKS(TASK_ID)
);
SELECT * FROM PROGRESS;
INSERT INTO PROGRESS VALUES (1,"60%", 1);
INSERT INTO PROGRESS VALUES (2, "80%", 2);
INSERT INTO PROGRESS VALUES (3, "100%", 3);
INSERT INTO PROGRESS VALUES (4, "8%", 4);
INSERT INTO PROGRESS VALUES (5, "23%", 5);
SELECT 
EMPLOYEES.EMPLOYEE_NAME,
EMPLOYEES.EMPLOYEE_ID,
DEPARTMENTS.DEPARTMENT_NAME,
PROJECTS.PROJECT_NAME,
TASKS.TASK_DESCRIPTION,
PROGRESS.PROGRESS_PERCENTAGE
FROM
	EMPLOYEES
INNER JOIN 
	DEPARTMENTS ON EMPLOYEES.DEPARTMENT_ID = DEPARTMENTS.DEPARTMENT_ID
INNER JOIN	
	PROJECTS ON PROJECTS.EMPLOYEE_ID = EMPLOYEES.EMPLOYEE_ID
INNER JOIN
	TASKS ON PROJECTS.PROJECT_ID = TASKS.PROJECT_ID
INNER JOIN
	PROGRESS ON PROGRESS.TASK_ID = TASKS.TASK_ID;
-- ================ self learning task4 (Aliases) + (Clause) =================
SELECT 
E.EMPLOYEE_ID,
E.EMPLOYEE_NAME,
D.DEPARTMENT_NAME,
P.PROJECT_NAME,
T.TASK_DESCRIPTION
FROM 
EMPLOYEES E
INNER JOIN
	DEPARTMENTS D ON E.DEPARTMENT_ID = D.DEPARTMENT_ID
INNER JOIN	
	PROJECTS P ON P.EMPLOYEE_ID = E.EMPLOYEE_ID
INNER JOIN
	TASKS T ON P.PROJECT_ID = T.PROJECT_ID
WHERE P.PROJECT_NAME = "SOFTWARE DEVELOPER";
-- =====================================================================
USE BEFORE_MID; -- 24-02-2024
SHOW TABLES; -- NEWORDERS, NEWCUSTOMER, SHIPPERS.
SELECT 
	O.CUSTOMER_ID,
    C.CUSTOMER_NAME,
    O.ORDER_DATE
FROM
	NEW_CUSTOMER C
LEFT JOIN
	NEW_ORDERS O ON C.CUSTOMER_ID = O.CUSTOMER_ID
ORDER BY C.CUSTOMER_NAME;
-- ====================================== 
SELECT 
	O.CUSTOMER_ID,
    C.CUSTOMER_NAME,
    O.ORDER_DATE
FROM
    NEW_CUSTOMER C
RIGHT JOIN 
	NEW_ORDERS O ON C.CUSTOMER_ID = O.CUSTOMER_ID
ORDER BY C.CUSTOMER_NAME;
-- ======================================
-- ================================ START 3 SIMILAR QUERIES
SELECT ORDER_ID, CUSTOMER_NAME FROM NEW_ORDERS, NEW_CUSTOMER WHERE NEW_ORDERS.CUSTOMER_ID = NEW_CUSTOMER.CUSTOMER_ID;
-- ======================================
SELECT 
    NEW_ORDERS.ORDER_ID, 
    NEW_CUSTOMER.CUSTOMER_NAME
FROM 
    NEW_CUSTOMER
JOIN 
    NEW_ORDERS ON NEW_CUSTOMER.CUSTOMER_ID = NEW_ORDERS.CUSTOMER_ID;
-- ======================================
SELECT
	O.ORDER_ID,
	C.CUSTOMER_NAME
FROM
	NEW_CUSTOMER C
CROSS JOIN 
	NEW_ORDERS O;
-- ================================ END 3 SIMILAR QUERIES
-- *********************************************************
-- ====================== SELF JOIN ===================== 
-- 355 EMPLOYEES TABLE.
SELECT * FROM EMPLOYEES;
SELECT 
	A.EMPLOYEE_NAME AS NAME1, B.EMPLOYEE_NAME AS NAME2, A.DEPARTMENT_ID
FROM
	EMPLOYEES A, EMPLOYEES B
    
WHERE 
	A.EMPLOYEE_ID <> B.EMPLOYEE_ID
AND 
	A.DEPARTMENT_ID = B.DEPARTMENT_ID
ORDER BY DEPARTMENT_ID;
-- ################################# SELF PRACTICE ################################# 
-- LEFT JOINS, RIGHT JOINS, CROSS JOINS, SELF JOINS
USE BEFORE_MID;
SELECT * FROM EMPLOYEES 		-- TO AVOID Cartesian product.
JOIN DEPARTMENTS D ON E.DEPARTMENT_ID = D.DEPARTMENT_ID;

CREATE TABLE PRODUCTS (
	PRODUCT_ID INT PRIMARY KEY, 
    PRODUCT_NAME VARCHAR(55),
    PRICE DECIMAL(10, 2),
    CATEGORY VARCHAR(55)
);
CREATE TABLE LIST_ORDER (
	ORDER_ID INT PRIMARY KEY,
    PRODUCT_ID INT,
    ORDER_DATE TIMESTAMP,
    QUANTITY INT,
    FOREIGN KEY (PRODUCT_ID) REFERENCES PRODUCTS(PRODUCT_ID)
);
ALTER TABLE PRODUCTS MODIFY COLUMN PRODUCT_NAME VARCHAR(55) NOT NULL; 
INSERT INTO PRODUCTS VALUES (5, "SMALL SOAP", 30, "SKIN CARE PRODUCT");
INSERT INTO LIST_ORDER (ORDER_ID, PRODUCT_ID, QUANTITY) VALUES (5, 5, 1);
SELECT * FROM PRODUCTS JOIN LIST_ORDER WHERE PRODUCTS.PRODUCT_ID = LIST_ORDER.PRODUCT_ID;
-- =====================================================================================
SELECT 
PRODUCTS.PRODUCT_ID, 
PRODUCTS.PRODUCT_NAME,
LIST_ORDER.ORDER_DATE,
LIST_ORDER.ORDER_DATE
FROM 
PRODUCTS
LEFT JOIN LIST_ORDER ON PRODUCTS.PRODUCT_ID = LIST_ORDER.PRODUCT_ID;
-- =========================================================================== 29-02-2024
-- union, group by;
USE BEFORE_MID;
CREATE TABLE STUDENT (
	STD_ID INT PRIMARY KEY, STD_NAME VARCHAR(55)
);
CREATE TABLE COURSE (
	C_ID INT PRIMARY KEY, C_NAME VARCHAR(55)
);
-- Union --> distinct
-- Union All --> !Distinct 
INSERT INTO COURSE VALUES (8, "MARKETING");
SELECT '2', C_NAME FROM COURSE
UNION ALL
SELECT '1', STD_NAME FROM STUDENT;
-- for the constant values use '';
ALTER TABLE STUDENT
ADD COLUMN country VARCHAR(50);
INSERT INTO STUDENT VALUES (12, "SHAHZAIN", "QATAR");
INSERT INTO COURSE VALUES (12, "RUBY");
-- GROUP BY
SELECT COUNTRY as MULK, COUNT(COUNTRY)
FROM STUDENT
GROUP BY COUNTRY 
ORDER BY STD_ID; 
-- GROUP BY WITH INNER JOIN 
SELECT COUNTRY, COUNT(COUNTRY)
FROM STUDENT
INNER JOIN COURSE ON COURSE.C_ID = STUDENT.STD_ID
WHERE COUNTRY = "Pakistan"
GROUP BY COUNTRY
ORDER BY STD_ID ASC;
-- =================================================
SELECT STD_ID AS STUDENT_ID, CITY_NAME
FROM STUDENT
INNER JOIN CITY ON CITY.CITY_ID = STUDENT.STD_ID 
WHERE STD_ID IS NOT NULL
GROUP BY CITY_NAME;  
-- ================================================= SOLUTION BY SIR
USE BEFORE_MID;
CREATE TABLE CITY (
	CITY_ID INT PRIMARY KEY,
    CITY_NAME VARCHAR(55)
);
INSERT INTO CITY VALUES (12, "KHANPUR");
SELECT S.STD_ID, S.STD_NAME, 
C.CITY_NAME FROM STUDENT S
INNER JOIN CITY C ON S.STD_ID = C.CITY_ID
WHERE C.CITY_NAME = "KHAIRPUR"
GROUP BY C.CITY_NAME 
ORDER BY S.STD_ID ASC;
-- ==============================
select * from student;


-- ==================================================== 07-03-2024 ==================
-- 5 record, 4 tables, 5 queries. 
-- Task 
use before_mid;
CREATE TABLE GROUND(
	GID INT PRIMARY KEY,
    G_NAME VARCHAR(60),
    G_CONDITION VARCHAR(60),
    G_REFRE VARCHAR(1)
);
CREATE TABLE SPORTS (
	M_NO INT,
    SID INT,
    SNAME VARCHAR(60),
    T1 VARCHAR(2),
    T2 VARCHAR(2),
    WIN VARCHAR(2)
);
CREATE TABLE TEAM (
	TID INT PRIMARY KEY, 
    T_NAME VARCHAR(2),
    CAPTAIN VARCHAR(60)
);
CREATE TABLE PLAYERS(
	PID INT, 
    P_NAME VARCHAR(60),
    TID INT,
    FOREIGN KEY (TID) REFERENCES TEAM(TID)
);
INSERT INTO GROUND VALUES (003, "KHI", "SUNNY", "C");
SELECT * FROM GROUND;

INSERT INTO SPORTS VALUES (12, 44, "TENIS", "AA", "DD", "DD");
SELECT * FROM SPORTS;

INSERT INTO TEAM VALUES (4, "DD", "HANAN"); 
SELECT * FROM TEAM;

INSERT INTO PLAYERS VALUES (80, "rahim", 3);
 SELECT * FROM PLAYERS;


-- Q1 
SELECT P.P_NAME
FROM PLAYERS P
JOIN TEAM T ON P.TID = T.TID
JOIN SPORTS S ON T.T_NAME = S.T1 OR T.T_NAME = S.T2
WHERE S.M_NO = 9 AND S.WIN = T.T_NAME;

SELECT SNAME FROM SPORTS WHERE WIN = "AA"; -- Q2 

SELECT TEAM.T_NAME, TEAM.CAPTAIN, PLAYERS.P_NAME FROM TEAM
INNER JOIN PLAYERS ON TEAM.TID = PLAYERS.TID; -- Q3

SELECT SNAME,COUNT(WIN) FROM SPORTS
WHERE WIN = "DD"						-- Q4
GROUP BY SNAME; 

SELECT DISTINCT PLAYERS.PID FROM PLAYERS INNER JOIN TEAM ON PLAYERS.TID = TEAM.TID; -- Q5
-- =====================  MID TERM ===============================
SELECT 
E.EMPLOYEE_NAME,
E.EMPLOYEE_ID,
D.DEPARTMENT_NAME,
P.PROJECT_NAME,
T.TASK_DESCRIPTION,
PR.PROGRESS_PERCENTAGE
FROM
	EMPLOYEES E
INNER JOIN 
	DEPARTMENTS D ON E.DEPARTMENT_ID = D.DEPARTMENT_ID
INNER JOIN	
	PROJECTS P ON P.EMPLOYEE_ID = E.EMPLOYEE_ID
INNER JOIN
	TASKS T ON P.PROJECT_ID = T.PROJECT_ID
INNER JOIN
	PROGRESS PR ON PR.TASK_ID = T.TASK_ID;
-- ========================== LEFT JOIN
SELECT E.EMPLOYEE_ID, E.EMPLOYEE_NAME, D.DEPARTMENT_ID, D.DEPARTMENT_NAME
FROM EMPLOYEES E
INNER JOIN DEPARTMENTS D ON E.DEPARTMENT_ID = D.DEPARTMENT_ID
WHERE E.EMPLOYEE_NAME LIKE "%R___I";
-- ==========================================================
SELECT * FROM EMPLOYEES;
INSERT INTO DEPARTMENTS VALUES (985, 'REACT NATIVE');
DESC EMPLOYEES;
DESC DEPARTMENTS;
