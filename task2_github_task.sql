create database office_db;
use office_db;
create table department(dept_id int primary key,
dept_name varchar(50) not null);
insert into department values(1, 'IT'),
(2, 'HR'),(3, 'marketing'),(4, 'Finance'),
(5, 'Security');
select * from  department;



create table Employee(
emp_id int primary key, 
emp_name varchar(50) not null, 
email varchar(50) unique, 
salary float default 25000,
Age int check(age >= 18),
dept_id int, foreign key(dept_id) 
references department(dept_id));


insert into Employee values
(101, 'jaggu', 'jaggu@gmail.com', 30000 , 19, 1),
(102, 'keerthi', 'keerthi@gmail.com', 40000, 23, 2),
(103, 'Manaswini', 'manaswini@gmail.com', 30000, 24,3),
(104, 'Ramya', 'ramya@gmail.com', 40000, 25, 4),
(105, 'sai', 'sai@gmail.com', 450000, 26, 5),
(106, 'chandana', 'chandana@gmail.com', 50000, 27, 2),
(107, 'preshika', 'preshika@gmail.com', 60000, 18, 3),
(108, 'vidhya', 'vidhya@gmail.com', 70000, 19, 4),
(109, 'srinadh', 'srinadh@gmail.com', 80000, 26, 5),
(110, 'srikanth', 'srikanth@gmail.com', 90000, 29, 1);
select * from Employee;
select emp_name, salary from Employee;
Select * From Employee Where salary > 50000;
select * from Employee where age between 25 and 30;
select * from Employee where dept_id in (1, 3);
select distinct  emp_name from Employee;
select * from Employee order by salary desc;
select * from Employee limit 5;
select * from Employee where emp_name like 'j%';
select * from Employee;
select max(salary) from Employee;
select min(salary) from Employee;
select avg(salary) from Employee;
select dept_id, count(*) from Employee group by dept_id;
select dept_id, count(*) from Employee group by dept_id having count(*)>2; 
select emp_name, department.dept_name 
from Employee inner join department on Employee.dept_id = department.dept_id;


 
 
