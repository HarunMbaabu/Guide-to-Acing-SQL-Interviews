# SQL Practice question

~~~sql
CREATE DATABASE ORG;
SHOW DATABASES;
USE ORG;

CREATE TABLE Worker (
	WORKER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	FIRST_NAME CHAR(25),
	LAST_NAME CHAR(25),
	SALARY INT(15),
	JOINING_DATE DATETIME,
	DEPARTMENT CHAR(25)
);

INSERT INTO Worker 
	(WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
		(001, 'Harun', 'Mwenda', 100000, '14-02-20 09.00.00', 'HR'),
		(002, 'Tim', 'Timothy', 80000, '14-06-11 09.00.00', 'Admin'),
		(003, 'Winnie', 'Mande;a', 300000, '14-02-20 09.00.00', 'HR'),
		(004, 'Mary', 'Wanjiku', 500000, '14-02-20 09.00.00', 'Admin'),
		(005, 'Dennis', 'Mutwiri', 500000, '14-06-11 09.00.00', 'Admin'),
		(006, 'jeo', 'June', 200000, '14-06-11 09.00.00', 'Account'),
		(007, 'John', 'Doe', 75000, '14-01-20 09.00.00', 'Account'),
		(008, 'Martin', 'Austine', 90000, '14-04-11 09.00.00', 'Admin');

CREATE TABLE Bonus (
	WORKER_REF_ID INT,
	BONUS_AMOUNT INT(10),
	BONUS_DATE DATETIME,
	FOREIGN KEY (WORKER_REF_ID)
		REFERENCES Worker(WORKER_ID)
        ON DELETE CASCADE
);

INSERT INTO Bonus 
	(WORKER_REF_ID, BONUS_AMOUNT, BONUS_DATE) VALUES
		(001, 5000, '16-02-20'),
		(002, 3000, '16-06-11'),
		(003, 4000, '16-02-20'),
		(001, 4500, '16-02-20'),
		(002, 3500, '16-06-11');
~~~


## Creating Teble Title:
~~~sql
CREATE TABLE Title (
	WORKER_REF_ID INT,
	WORKER_TITLE CHAR(25),
	AFFECTED_FROM DATETIME,
	FOREIGN KEY (WORKER_REF_ID)
		REFERENCES Worker(WORKER_ID)
        ON DELETE CASCADE
);

INSERT INTO Title 
	(WORKER_REF_ID, WORKER_TITLE, AFFECTED_FROM) VALUES
 (001, 'Manager', '2016-02-20 00:00:00'),
 (002, 'Executive', '2016-06-11 00:00:00'),
 (008, 'Executive', '2016-06-11 00:00:00'),
 (005, 'Manager', '2016-06-11 00:00:00'),
 (004, 'Asst. Manager', '2016-06-11 00:00:00'),
 (007, 'Executive', '2016-06-11 00:00:00'),
 (006, 'Lead', '2016-06-11 00:00:00'),
 (003, 'Lead', '2016-06-11 00:00:00');

~~~



## 50 Starter Questions

#### Q-1. Write an SQL query to fetch “FIRST_NAME” from Worker table using the alias name as <WORKER_NAME>.

**Ans.**

~~~sql 
Select FIRST_NAME AS WORKER_NAME from Worker;
~~~

#### Q-2. Write an SQL query to fetch “FIRST_NAME” from Worker table in upper case.
**Ans.**

~~~sql
Select upper(FIRST_NAME) from Worker;
~~~

#### Q-3. Write an SQL query to fetch unique values of DEPARTMENT from Worker table.

**Ans.**
~~~sql
Select distinct DEPARTMENT from Worker;
~~~ 

#### Q-4. Write an SQL query to print the first three characters of  FIRST_NAME from Worker table.

**Ans.**
~~~sql
Select substring(FIRST_NAME,1,3) from Worker;
~~~ 

#### Q-5. Write an SQL query to find the position of the alphabet (‘a’) in the first name column ‘Amitabh’ from Worker table.

**Ans.**

~~~sql
Select INSTR(FIRST_NAME, BINARY'a') from Worker where FIRST_NAME = 'Amitabh';
~~~

# More Practice:


## From earthquake.csv file, what was the largest earthquick in 2010?

~~~SQL
SELECT *
FROM earthquick 
WHERE occured_on >= "2010-01-01" AND <= "2010-12-31"
ORDER BY magnitude DESC;

~~~

But this query will returns all data in 2010 but we needed only one row, hence we use LIMIT as shown below


~~~SQL
SELECT *
FROM earthquick 
WHERE occured_on >= "2010-01-01" AND <= "2010-12-31"
ORDER BY magnitude DESC
LIMIT 1;

~~~

Now the above queries will return only one row with the largest earthquick
