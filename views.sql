--1) View v_StudentDetails
CREATE VIEW v_StudentDetails AS
SELECT stu_name, age FROM students;

--2) students older than 21
CREATE VIEW v_StudentsAbove21 AS
SELECT * FROM students 
WHERE age > 21;

--3) Modify view to include phone number
ALTER VIEW v_StudentDetails AS
SELECT stu_name, age, phone_number FROM students;
