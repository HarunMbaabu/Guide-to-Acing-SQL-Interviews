# **Guide-to-Acing-SQL-Interviews**

**SQL (Structured Query Language)** is a powerful and widely used programming language for managing and manipulating relational databases. It plays a crucial role in data analysis, data manipulation, and database management.

>>  Acing SQL interviews requires a solid understanding of SQL concepts, as well as practical experience in writing efficient and effective SQL queries.

In this comprehensive guide, we will cover the essential topics and strategies to help you succeed in SQL interviews. We'll start with a review of SQL basics, including syntax, data types, and constraints. Understanding the fundamentals is crucial for building a strong foundation.

We'll then delve into more advanced concepts, such as database design principles, normalization, and relationships between tables. You'll learn how to write complex SQL queries using joins, subqueries, and aggregations to retrieve and analyze data from multiple tables. Additionally, we'll explore data manipulation statements like INSERT, UPDATE, and DELETE, as well as transaction management and database security.

To prepare you for performance tuning questions, we'll discuss techniques for optimizing SQL queries, understanding execution plans, and improving database performance. Lastly, we'll provide guidance on practicing with real-world examples, honing your communication skills, and acing mock interviews.

By following this beginner's guide, you'll gain the knowledge and confidence to excel in SQL interviews, demonstrating your expertise in SQL and database management to potential employers. Let's dive in and become proficient in the world of SQL!


>>> Acing SQL interviews requires a combination of knowledge, preparation, and effective communication. 

Here's a guide to help you succeed in your SQL interviews:

### **Review the Basics**:
- Brush up on fundamental SQL concepts, such as tables, columns, rows, primary keys, foreign keys, and relationships between tables.
- Understand different data types, such as integers, strings, dates, and booleans, and how they are used in SQL.
- Familiarize yourself with basic SQL operations, including SELECT, INSERT, UPDATE, DELETE, JOIN, GROUP BY, HAVING, and ORDER BY.

### **Understand Database Concepts:**
- Learn about database management systems (DBMS) and the different types, such as MySQL, Oracle, SQL Server, and PostgreSQL.
- Gain knowledge about normalization techniques, indexing, and query optimization to demonstrate a deep understanding of database design and performance.

### **Practice SQL Queries:**
- Work on a variety of SQL queries involving simple and complex SELECT statements.
- Practice writing queries with conditions using WHERE clauses, aggregate functions, subqueries, and multiple table joins.
- Solve SQL puzzles and exercises available online or in SQL textbooks to enhance your query-writing skills.

### **Study Relational Database Concepts:**
- Understand the relationships between tables, such as one-to-one, one-to-many, and many-to-many.
- Learn about primary keys, foreign keys, and their roles in maintaining data integrity.
- Be aware of different types of relationships, such as inner joins, left joins, right joins, and full outer joins.

### **Gain Practical Experience:**
- Work on real-world SQL projects or create sample databases to gain hands-on experience.
- Use online platforms like SQLFiddle, SQLZoo, or interactive tutorials to practice writing and executing SQL queries.
- Consider contributing to open-source projects or participating in data-related challenges to showcase your SQL skills.

### **Be Familiar with Advanced Topics:**
- Learn about stored procedures, views, triggers, and functions to demonstrate your ability to leverage SQL for complex tasks.
- Understand how to handle large datasets efficiently, including techniques like partitioning and indexing.
- Familiarize yourself with database administration tasks, such as backup and recovery, security, and user management.


### **Resources to Learn SQL**

1). w3Shool SQL Tutorial: https://www.w3schools.com/sql/default.asp

2). SQL Server Tutorial: https://www.sqlservertutorial.net/ 

3). Programiz SQL Tutorial for Beginners: https://www.programiz.com/sql

5). GitLab SQL Style Guide: https://about.gitlab.com/handbook/business-technology/data-team/platform/sql-style-guide/

### **SQL Practice question**

**Create a Database ORG**
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

#### Q-5. Write an SQL query to find the position of the alphabet (‘a’) in the first name column ’Mary’ from Worker table.

**Ans.**

~~~sql
Select INSTR(FIRST_NAME, BINARY'a') from Worker where FIRST_NAME = 'Mary';
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



## **Bonus Tips**

- Research common SQL interview questions and practice answering them concisely.
- Be prepared to explain your thought process and reasoning behind your query solutions.
- Understand how to optimize queries and troubleshoot performance issues.


- During interviews, clearly communicate your understanding of the problem and your approach to solving it using SQL, use proper SQL syntax and adhere to best practices, and sk clarifying questions if necessary and seek feedback to ensure your solutions are meeting the interviewer's expectations.


Also Keep yourself updated with the latest SQL features and enhancements in popular database management systems, stay informed about industry trends, such as NoSQL databases and big data technologies, to demonstrate your broader knowledge of data management.


After each interview, assess your performance and seek feedback from interviewers or mentors, dentify areas where you can improve and focus on strengthening those skills and remember, practice and preparation are key to acing SQL interviews. The more you practice and gain hands-on experience, the more confident you'll be in demonstrating your SQL skills and problem-solving abilities. 
