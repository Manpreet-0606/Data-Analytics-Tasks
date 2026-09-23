CREATE DATABASE School;
USE school;
CREATE TABLE Student (
    Student_ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    Course VARCHAR(50),
    Marks INT
);
INSERT INTO Student VALUES
(101, 'Rahul', 20, 'MCA', 78),
(102, 'Priya', 21, 'MCA', 85),
(103, 'Aman', 20, 'MCA', 72),
(104, 'Neha', 22, 'MCA', 90);
ALTER TABLE Student ADD Email VARCHAR(100);
ALTER TABLE Student modify name VARCHAR(200);
ALTER TABLE Student rename to students_details;
SELECT name,marks,
CASE 
    WHEN marks >=90 THEN 'Excellent'
    WHEN marks >=75 THEN 'Good'
    WHEN marks >=50 THEN 'Average'
    ELSE 'Fail'
END AS Grade 
FROM students_details;    