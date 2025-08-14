CREATE DATABASE college2;
USE college2;
CREATE TABLE student
(rollno INT PRIMARY KEY, 
name VARCHAR(50), 
marks INT, 
grade VARCHAR(1), 
city VARCHAR(20)
);
INSERT INTO student
(rollno, name, marks, grade, city)
VALUES
(101, "shwetha", 98, "A", "koppal"),
(102, "rekha", 84, "B", "mysore"),
(103, "ravi", 76, "C", "koppal"),
(104, "nandini", 69, "D", "gangavathi"),
(105, "sanni", 53, "E", "gangavathi");
SELECT *FROM student;

SET SQL_SAFE_UPDATES = 0;

UPDATE student 
SET grade = "O"
WHERE grade = "A";
SELECT *FROM student;

UPDATE student 
SET marks = 93
WHERE rollno = 105;

SELECT *FROM student;

UPDATE student 
SET grade = "A"
WHERE marks > 90;

SELECT *FROM student;

UPDATE student 
SET marks = marks + 1;

SELECT *FROM student;

UPDATE student 
SET marks = 12
WHERE rollno = 104;
SELECT *FROM student;

UPDATE student 
SET grade = "F"
WHERE marks > 10 AND marks < 35;
SELECT *FROM student;

DELETE FROM student 
WHERE marks < 35;

CREATE TABLE dept(
id INT PRIMARY KEY,
name VARCHAR(50)
);
CREATE TABLE teacher(
id INT PRIMARY KEY,
name VARCHAR(50),
dept_id INT,
FOREIGN KEY(dept_id) REFERENCES dept(id)
);
USE college2;
ALTER TABLE student 
ADD COLUMN age INT;
SELECT *FROM student;


ALTER TABLE student 
DROP COLUMN age ;
SELECT *FROM student;

ALTER TABLE student 
ADD COLUMN age INT NOT NULL DEFAULT 19;

ALTER TABLE student
CHANGE age stu_age INT;

ALTER TABLE student 
RENAME TO stu;
SELECT *FROM stu;
ALTER TABLE stu
RENAME TO student;

ALTER TABLE student 
CHANGE name full_name VARCHAR(20);

DELETE FROM student
WHERE marks >80 AND marks < 90;

ALTER TABLE student 
DROP COLUMN grade;