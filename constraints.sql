--- 5. CONSTRAINTS

CREATE TABLE books (
    book_id INT PRIMARY KEY IDENTITY,
    title VARCHAR(100) NOT NULL,
    price MONEY CHECK (Price > 0) 
);

CREATE TABLE users (
    userId INT PRIMARY KEY IDENTITY,
    userName VARCHAR(50),
    email VARCHAR(100) UNIQUE
);

CREATE TABLE courses (
    course_id INT PRIMARY KEY IDENTITY,
    course_name VARCHAR(100)
);

INSERT INTO courses (course_name) VALUES 
('Database Systems'),
('Web Development'),
('Computer Networks');

SELECT * FROM courses;

--STUDENTS TABLE
CREATE TABLE students(
	stu_id INT PRIMARY KEY IDENTITY,
	stu_name VARCHAR(50) NOT NULL,
	age INT NOT NULL,
	course_id INT,
	FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

INSERT INTO Students (stu_name, age, course_id) VALUES 
('Hamza', 21, 1),
('Zain', 20, 2),
('Bilal', 22, 3),
('Ahmed', 18, null),
('Moiz', 23, 1);



SELECT * FROM students;