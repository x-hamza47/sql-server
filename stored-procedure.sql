--1) Insert a new student
CREATE PROCEDURE sp_insertStudent
    @stu_name VARCHAR(100),
    @age INT,
    @phone_number VARCHAR(20),
    @department_id INT
AS
BEGIN
    INSERT INTO students (stu_name, age, phone_number, department_id)
    VALUES (@stu_name, @age, @phone_number, @department_id);
END;
--Execute
EXEC sp_insertStudent 'Talha', 21, '03009998888', 2;

--2) Get students by department
CREATE PROCEDURE sp_getStudentsByDepartment
    @department_id INT
AS
BEGIN
    SELECT * FROM students 
    WHERE department_id = @department_id;
END;
--Execute
EXEC sp_getStudentsByDepartment 1;

--3) Update student age by ID
CREATE PROCEDURE sp_updateStudentAge
    @stu_id INT,
    @new_age INT
AS
BEGIN
    UPDATE students 
    SET age = @new_age 
    WHERE stu_id = @stu_id;
END;
--Execute
EXEC sp_updateStudentAge 2, 20;



