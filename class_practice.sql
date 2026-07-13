create database company;
show databases;
use company;
create table department(dept_id int primary key, dept_name varchar(50));
desc department;
insert into department values(109, 'IT'),(110, 'Finance'),(111, 'Sales'),(112,'Marketing'),(113, 'Testing'),(114, 'Security'),(115, 'Opportunities');
select * from department;


create table Employee(
emp_id int primary key, 
emp_name varchar(50) not null, 
email varchar(50) UNIQUE, salary DECIMAL(10,2) default 30000, age int check(age >= 18),
dept_id int, FOREIGN key(dept_id) REFERENCES department(dept_id));

insert into Employee values(1, 'jhon', 'john@gmail.com', 45000,25,101), 
(2, 'David', 'devide@gmail.com', 500000, 20,102), 
(3, 'Emma', 'emma@gmail.com',300000, 25,103),
(4, 'Sophia','sophia@gmial.com',50000, 26,104),
(5, 'james', 'james@gmail.com', 70000, 32,105),
(6, 'michael', 'Michael@gmail.com', 48000,27,103),
(7, 'olivia', 'olivia@gmailcom', 520000, 25,104),
(8, 'Daniel', 'daniel@gmail.com', 650000, 29,101),
(9, 'Charlottee', 'Charlotteea@gmail.com', 50000,29,101),
(10, 'Henry', 'henry@gmail.com',75000, 35, 105);
select * from Employee;

-- Primary Key example--
insert into Employee values(1, "Alex", "john@gmail.com", 50000, 25, 101);

-- Unique example --
insert into Employee values(11, 'alex',  'jhon@gmail.com', 50000, 25, 101); 

-- Not Null example --
insert into Employee values(11, 'alexa@gmail.com', 50000,25,101);

-- Default Example --
insert into Employee values(12, 'Alex', 'alexa@gmail.com', 25, 101);
select * from Employee where emp_id = 11;

-- Check example -- 
insert into Employee values(12, 'Tom', 'tom@gmail.com', 45000, 15, 101);
select * from Employee;

-- Foreign Key --
insert into Employee values(13, 'Sam', 'sam@gmail.com', 45000, 25, 999);

-- select -- 
select * from Employee;
select emp_name from Employee;

select emp_id from Employee;

select age from Employee;


select emp_name, emp_id from Employee;


select emp_id, age from Employee;

-- Where  --

select * from Employee where salary > 50000;

select * from Employee where age > 30;

select * from Employee where dept_id = 103; 

select * from Employee where emp_name = 'jhon';

-- Distinct --

select distinct dept_id from Employee;

-- Order by --

select * from Employee order by emp_name;
select * from Employee order by salary desc; 

-- LIMIT --
select * from Employee limit 5;

select * from Employee limit 7;

-- BETWEEN --

select * from Employee where salary between 50000 and 65000;
select * from Employee where age between 15 and 35;

-- IN --

select * from Employee where dept_id in (101, 105, 107);

select * from Employee where dept_id in (101, 103, 105);

-- NOT IN --
select * from Employee where dept_id not in (101, 103, 105);

-- IS NULL --
select * from Employee where email is null;

-- IS NOT NULL --
select * from Employee where email is not null;

-- LIKE --
select * from Employee where email like 'j%';

select * from Employee where emp_name like 's%';

 select * from Employee where emp_name like '_s%';
  
-- AGGREGATE FUNCTIONS --
--  in aggregate functions sum, average, min, max --

select max(salary) from Employee;

select min(salary) from Employee;

select avg(salary) from Employee;
 
select sum(salary) from Employee;

select count(salary) from Employee;

select count(dept_id) from Employee;

-- GROUP BY --
select dept_id , count(*) from Employee group by dept_id;

select salary , count(*) from Employee group by salary;

-- HAVING --
select dept_id, count(*) from Employee group by dept_id having count(*)>2; 


-- ALIAS --
select emp_name as Employee_Name, salary as Employee_salary from Employee;

select e.emp_name, e.salary from Employee e	;

select dept_id, count(*) from Employee group by dept_id;

select dept_id, avg(salary) from Employee group by dept_id;



select department.dept_id from department  inner join Employee on department.dept_id = Employee.dept_id; 


select d.dept_id from department as d inner join Employee on d.dept_id = Employee.dept_id; 

select department.dept_id from department  left join Employee on department.dept_id = Employee.dept_id; 

select department.dept_id from department  right join Employee on department.dept_id = Employee.dept_id; 

