--Students Table
CREATE TABLE students (
    stu_id INT PRIMARY KEY IDENTITY(1,1),
    stu_name VARCHAR(100) NOT NULL,
    age INT CHECK (age > 0),
    phone_number VARCHAR(20),
    department_id INT
);
--Department Table
CREATE TABLE departments (
    department_id INT PRIMARY KEY IDENTITY(1,1),
    department_name VARCHAR(100) NOT NULL
);
--1) Students older than average
SELECT stu_name FROM students 
WHERE age > (SELECT AVG(age) FROM students);

--2) Departments with more than 5 students
SELECT department_id FROM students 
GROUP BY department_id 
HAVING COUNT(*) > 5;

--3) Students with highest age
SELECT * FROM students 
WHERE age = (SELECT MAX(age) FROM students);
