CREATE DATABASE college3;
USE college3;
CREATE TABLE student(
  id INT PRIMARY KEY,
  name VARCHAR(50)
);
INSERT INTO student 
(id, name)
VALUES
(101, "Chetan"),
(102, "Radha"),
(103, "chaitra");
SELECT *FROM student;

CREATE TABLE course(
id INT PRIMARY KEY,
course VARCHAR(50)
);
INSERT INTO course
(id, course)
VALUES
(102, "english"),
(105, "maths"),
(103, "science"),
(107, "cs");

SELECT *FROM course;
SELECT *
FROM student
INNER JOIN course
ON student.id=course.id;

SELECT *
FROM student
LEFT JOIN course
ON student.id=course.id;

SELECT *
FROM student
RIGHT JOIN course
ON student.id=course.id;

SELECT *
FROM student
LEFT JOIN course
ON student.id = course.id
UNION
SELECT *
FROM student
RIGHT JOIN course
ON student.id = course.id;

SELECT *
FROM student 
LEFT JOIN course
ON student.id = course.id
WHERE student.id IS NULL;

SELECT *
FROM student 
RIGHT JOIN course
ON student.id = course.id
WHERE course.id IS NULL;

USE college3;
CREATE TABLE employee(
id Int PRIMARY KEY,
name VARCHAR(50),
manager_id INT
);

INSERT INTO employee
(id, name, manager_id)
VALUES
(101, "sanni", 103),
(102, "bob", 104),
(103, "casey", NULL),
(104, "donala", 103);

SELECT *FROM employee;
SELECT *
FROM employee as a
JOIN employee as b
ON a.id = b.manager_id;

SELECT a.name as manager_name, b.name
FROM employee as a
JOIN employee as b
ON a.id = b.manager_id;

CREATE VIEW view1 AS
SELECT id, name FROM student;
DROP VIEW view1;