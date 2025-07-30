DECLARE @id INT = 1;
DECLARE @max_id INT;

SELECT @max_id = MAX(stu_id) FROM students;

WHILE @id <= @max_id
BEGIN
    IF EXISTS (SELECT * FROM students WHERE stu_id = @id)
        PRINT (SELECT stu_name FROM students WHERE stu_id = @id);

    SET @id = @id + 1;
END;
