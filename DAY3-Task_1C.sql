USE company;
CREATE TABLE department(dept_id INT PRIMARY KEY, dept_name VARCHAR(50));
DESC department;
INSERT INTO department VALUES(109, 'IT'),(110, 'Finance'),(111, 'Sales'),(112,'Marketing'),(113, 'Testing'),(114, 'Security'),(115, 'Opportunities');
SELECT * FROM department;


CREATE TABLE  Employee3(
emp_id INT PRIMARY KEY, 
emp_name VARCHAR(50) NOT NULL, 
email VARCHAR(50) UNIQUE, salary DECIMAL(10,2) DEFAULT 30000, age int check(age >= 18),
dept_id INT, FOREIGN kEY(dept_id) REFERENCES department(dept_id));

INSERT INTO Employee3 VALUES(1, 'jhon', 'john@gmail.com', 45000,25,101), 
(2, 'David', 'devide@gmail.com', 500000, 20,102), 
(3, 'Emma', 'emma@gmail.com',300000, 25,103),
(4, 'Sophia','sophia@gmial.com',50000, 26,104),
(5, 'james', 'james@gmail.com', 70000, 32,105),
(6, 'michael', 'Michael@gmail.com', 48000,27,103),
(7, 'olivia', 'olivia@gmailcom', 520000, 25,104),
(8, 'Daniel', 'daniel@gmail.com', 650000, 29,101),
(9, 'Charlottee', 'Charlotteea@gmail.com', 50000,29,101),
(10, 'Henry', 'henry@gmail.com',75000, 35, 105);
SELECT * FROM Employee3;

-- TASK-1C -- Table Modification--
ALTER TABLE Employee3 ADD Phone_Number VARCHAR(60);
SELECT * FROM Employee3;
-- UPDATING PHONE_NUMBERS--
UPDATE Employee3 SET phone_number = '7947694348' WHERE emp_id = 1;
UPDATE Employee3 SET phone_number = '9875347537' WHERE emp_id = 3;
UPDATE Employee3 SET phone_number = '8998765434' WHERE emp_id = 5;

-- DISPLAYING THE TABLE --
SELECT * FROM Employee3;

