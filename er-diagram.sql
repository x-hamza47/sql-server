-- INSTRUCTOR TABLE
CREATE TABLE instructors (
    instructor_id INT PRIMARY KEY IDENTITY,
    instructor_name VARCHAR(50),
    department VARCHAR(50)
);

--COURSES TABLE
CREATE TABLE courses (
    course_id INT PRIMARY KEY IDENTITY,
    course_name VARCHAR(100),
    instructor_id INT,
    FOREIGN KEY (instructor_id) REFERENCES instructors(instructor_id)
);
--STUDENTS TABLE
CREATE TABLE students(
	stu_id INT PRIMARY KEY IDENTITY,
	stu_name VARCHAR(50) NOT NULL,
	age INT NOT NULL,
	course INT,
	FOREIGN KEY (course) REFERENCES courses(course_id)
);