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
references department(dept_Id));
insert into Employee values
(101, 'jaggu', 'jaggu@gmial.com', 30000 , 19, 1),
(102, 'keerthi', 'keerthi@gmail.com', 40000, 23, 2),
(103, 'Manaswini', 'manaswini@gmail.com', 30000, 24,3),
(104, 'Ramya', 'ramya@gmail.com', 40000, 25, 4),
(105, 'sai', 'sai@gmail.com', 450000, 26, 5),
(106, 'chandana', 'chandana@gmail.com', 50000, 27, 6),
(107, 'preshika', 'preshika@gmail.com', 600000, 18, 7),
(108, 'vidhya', 'vidhya@gmail.com', 700000, 19, 8),
(109, 'srinadh', 'srinadh@gmail.com', 800000, 26, 9),
(110, 'srikanth', 'srikanth@gmail.com', 900000, 29, 10);
select * from Employee;
 
 
