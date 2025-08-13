CREATE DATABASE Temp1;
DROP DATABASE Temp1;

CREATE DATABASE college;
USE college;
CREATE TABLE student (
   id INT PRIMARY KEY,
   name VARCHAR(50),
   age INT NOT NULL
);
INSERT into student VALUES(1,"radha",21);
INSERT into student VALUES(2,"rekha",19);

SELECT *from student;

DROP DATABASE college;

CREATE DATABASE college;
USE college;
CREATE TABLE student(
  rollno INT PRIMARY KEY,
  name VARCHAR(50)
);

SELECT *FROM student;

INSERT INTO student
(rollno, name)
VALUES
(101, "Chetan"),
(102, "Radha");

SELECT *FROM student;
INSERT INTO student VALUES(104, "Rekha");

CREATE DATABASE company;
USE company;
CREATE TABLE ibm(
  name VARCHAR(50),
  salary INT PRIMARY KEY
);
INSERT INTO ibm
(name, salary)
VALUES
("rekha", 52000),
("Chetan", 50000);

SELECT *FROM ibm;

CREATE DATABASE college1;
USE college1;
CREATE TABLE student(
  rollno INT PRIMARY KEY,
  name VARCHAR(50),
  marks INT NOT NULL,
  grade VARCHAR(1),
  city VARCHAR(20)
);

INSERT INTO student 
(rollno, name, marks, grade, city)
VALUES
(101, "Chetan", 98, "A", "Belgavi"),
(102, "Radha", 95, "A", "Bangalore"),
(103, "Rekha", 80, "A", "mysore"),
(104, "chaitra", 85, "A", "Bangalore"),
(105, "Ravi", 70, "B", "Gangavathi");

SELECT rollno, name FROM student;
SELECT DISTINCT city FROM student;
SELECT *from student WHERE marks > 80;
SELECT *FROM student WHERE city = "Belgavi";
SELECT *FROM student WHERE marks > 90 AND city = "Belgavi";

SELECT *FROM student WHERE marks BETWEEN 80 AND 90;

SELECT *FROM student WHERE city IN ("Belgavi", "Bangalore");
SELECT *FROM student WHERE city NOT IN ("Belgavi", "Bangalore");
SELECT *FROM student LIMIT 3;
SELECT *FROM student WHERE marks > 80 LIMIT 3;
SELECT *FROM student WHERE marks > 80 ;

SELECT *FROM student ORDER BY name ASC;
SELECT *FROM student ORDER BY name DESC;
SELECT *FROM student ORDER BY city ASC;
SELECT *FROM student ORDER BY marks DESC LIMIT 3;

SELECT MAX(marks) FROM student;
SELECT MIN(marks) FROM student;
SELECT AVG(marks) FROM student;
SELECT COUNT(name) FROM student;

SELECT city 
from student 
GROUP BY city;

SELECT city, COUNT(rollno)
from student 
GROUP BY city;

SELECT city, AVG(marks)
FROM student
GROUP BY city
ORDER BY city DESC;

SELECT city, COUNT(rollno)
FROM student 
GROUP BY city
HAVING MAX(marks) > 90;
