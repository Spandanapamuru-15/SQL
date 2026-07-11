create database company_name;
show databases;
use company_name;
create table department(
dept_id int primary key, dept_name varchar(50)
);
desc department;
insert into department value(101,'Finance'),(102,'IT');
select * from department;

create database college_db;
use college_db;

create table student(
student_id int, student_name varchar(30),age int,city varchar(30));
desc student;
insert into student value(101, 'Rahul', 21, 'Hyderabad'),(102, 'Anjali', 20, 'Chennai'),(103, 'Ravi', 22, 'Bangalore'),(104, 'Priya', 19,'pune'),(105, 'Kiran', 23, 'Mumbai');
select * from student;