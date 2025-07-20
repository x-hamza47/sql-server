---1. DDL Statements ---

CREATE TABLE students(
	stu_id INT PRIMARY KEY IDENTITY,
	stu_name VARCHAR(50) NOT NULL,
	age INT NOT NULL,
	course VARCHAR(50)
);

ALTER TABLE students
ADD phone_number VARCHAR(15);

SELECT * FROM students;

ALTER TABLE students
DROP COLUMN course;

---2. DML Statements ---
INSERT INTO students(stu_name, age, phone_number) VALUES
('Hamza', 21, '03001234567'),
('Zain', 19, '03019876543'),
('Moiz', 17, '03011223344');

UPDATE students SET age = 22 WHERE stu_name = 'Hamza';

DELETE FROM students WHERE age < 18;


