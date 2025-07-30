--Students Table
CREATE TABLE students (
    stu_id INT PRIMARY KEY IDENTITY(1,1),
    stu_name VARCHAR(100) NOT NULL,
    age INT CHECK (age > 0),
    phone_number VARCHAR(20),
    department_id INT
);

INSERT INTO students (stu_name, age, phone_number, department_id) VALUES
('Ali', 22, '03001234567', 1),
('Sara', 19, '03119876543', 2),
('Ahmed', 24, '03219876543', 1),
('Hina', 18, '03019873210', 3),
('Usman', 25, '03331231231', 1),
('Ayesha', 23, '03007894561', 2),
('Zain', 26, '03451231231', 1);

--Department Table
CREATE TABLE departments (
    department_id INT PRIMARY KEY IDENTITY(1,1),
    department_name VARCHAR(100) NOT NULL
);

INSERT INTO departments (department_name) VALUES 
('Computer Science'), ('Electrical Engineering'), ('Business');
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
