CREATE DATABASE SCHOOL;
USE SCHOOL;

CREATE TABLE COURSE ( ID INT PRIMARY KEY , NAME VARCHAR(15));
INSERT INTO course (id, name) VALUES 
(1, 'Mathematics'),
(2, 'Physics'),
(3, 'Chemistry'),
(4, 'Biology'),
(5, 'Computer Sci'),
(6, 'English'),
(7, 'History'),
(8, 'Geography'),
(9, 'Economics'),
(10, 'Philosophy'),
(11, 'Statistics'),
(12, 'Accounting'),
(13, 'Psychology'),
(14, 'Sociology'),
(15, 'Political Sci'),
(16, 'Astronomy'),
(17, 'Geology'),
(18, 'Robotics'),
(19, 'Architecture'),
(20, 'Linguistics');
 CREATE TABLE ENROLLMENTS ( STUDENT_ID INT UNIQUE , COURSE_ID INT NOT NULL , GRADE INT );
 INSERT INTO enrollments (student_id, course_id, grade) VALUES 
(101, 1, 85),
(102, 2, 90),
(103, 3, 78),
(104, 4, 92),
(105, 5, 88),
(106, 6, 76),
(107, 7, 95),
(108, 8, 81),
(109, 9, 89),
(110, 10, 91),
(111, 11, 84),
(112, 12, 79),
(113, 13, 93),
(114, 14, 87),
(115, 15, 80),
(116, 16, 94),
(117, 17, 82),
(118, 18, 86),
(119, 19, 77),
(120, 20, 96);
 -- to find all student enrolled in each course 
select C.ID AS COURSE_ID , C.NAME AS COURSE_NAME, E.STUDENT_ID , E.GRADE  from course AS C
join enrollments E
ON C.ID = E.COURSE_ID ORDER BY C.ID , E.STUDENT_ID;


-- TO FIND AVERAGE GRADE PER COURSE 
SELECT C.NAME AS COURSE_NAME , C.ID AS COURSE_ID  , AVG(E.GRADE) AS AVERAGE_GRADE FROM COURSE C
JOIN ENROLLMENTS E
ON C.ID = E.COURSE_ID 
GROUP BY C.ID , C.NAME 
ORDER BY C.ID;

-- FIND TOP 3 STUDENT OVERALL
SELECT STUDENT_ID ,COURSE_ID , GRADE FROM ENROLLMENTS
ORDER BY GRADE DESC LIMIT 3;

-- COUNT STUDENTS WHO FAILED (GRADE < 40)
SELECT COUNT(STUDENT_ID) AS FAILED FROM ENROLLMENTS 
WHERE GRADE < 40 ;



