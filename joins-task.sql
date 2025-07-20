----------6. JOINS ---------------

---INNER JOIN
SELECT s.stu_name AS StudentName, c.course_name
FROM students s
INNER JOIN courses c ON s.course_id = c.course_id;

--FULL OUTER JOIN
SELECT * FROM students s
FULL OUTER JOIN courses c ON s.course_id = c.course_id;
