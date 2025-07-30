CREATE TABLE deleted_students (
    stu_id INT,
    stu_name VARCHAR(100),
    age INT,
    deleted_at DATETIME DEFAULT GETDATE()
);

--1) After trigger Log deletions

CREATE TRIGGER trg_LogDeletion
ON students
AFTER DELETE
AS
BEGIN
    INSERT INTO deleted_students (stu_id, stu_name, age)
    SELECT stu_id, stu_name, age FROM DELETED;
END;

--2) Instead-of trigger: Prevent age < 16

CREATE TRIGGER trg_PreventUnderageInsert
ON students
INSTEAD OF INSERT
AS
BEGIN
    IF EXISTS (SELECT * FROM inserted WHERE age < 16)
    BEGIN
        RAISERROR('Student age must be 16 or older.', 16, 1);
        RETURN;
    END

    INSERT INTO students (stu_name, age, phone_number, department_id)
    SELECT stu_name, age, phone_number, department_id FROM inserted;
END;

