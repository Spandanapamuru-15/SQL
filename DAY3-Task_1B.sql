USE company;
CREATE TABLE department(dept_id INT PRIMARY KEY, dept_name VARCHAR(50));
DESC department;
INSERT INTO department VALUES(109, 'IT'),(110, 'Finance'),(111, 'Sales'),(112,'Marketing'),(113, 'Testing'),(114, 'Security'),(115, 'Opportunities');
SELECT * FROM department;


CREATE TABLE  Employee2(
emp_id INT PRIMARY KEY, 
emp_name VARCHAR(50) NOT NULL, 
email VARCHAR(50) UNIQUE, salary DECIMAL(10,2) DEFAULT 30000, age int check(age >= 18),
dept_id INT, FOREIGN kEY(dept_id) REFERENCES department(dept_id));

INSERT INTO Employee2 VALUES(1, 'jhon', 'john@gmail.com', 45000,25,101), 
(2, 'David', 'devide@gmail.com', 500000, 20,102), 
(3, 'Emma', 'emma@gmail.com',300000, 25,103),
(4, 'Sophia','sophia@gmial.com',50000, 26,104),
(5, 'james', 'james@gmail.com', 70000, 32,105),
(6, 'michael', 'Michael@gmail.com', 48000,27,103),
(7, 'olivia', 'olivia@gmailcom', 520000, 25,104),
(8, 'Daniel', 'daniel@gmail.com', 650000, 29,101),
(9, 'Charlottee', 'Charlotteea@gmail.com', 50000,29,101),
(10, 'Henry', 'henry@gmail.com',75000, 35, 105);
SELECT * FROM Employee2;

-- TASK 1B -- 
SET autocommit=0;
START TRANSACTION;
UPDATE Employee1 SET salary = salary + 5000 WHERE emp_id = 1;
SELECT * FROM Employee1;
rollback;
SELECT * FROM Employee1;

-- ANOTHER TRANSACTION --
START TRANSACTION;
UPDATE Employee1 SET salary = salary + 50000 WHERE emp_id = 2;
COMMIT;
SELECT * FROM Employee1;
