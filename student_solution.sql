USE CollegeDB;

DROP TABLE IF EXISTS Student;
DROP TABLE IF EXISTS Department;

CREATE TABLE Department (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100)
);

CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(100),
    DepartmentID INT
);

INSERT INTO Department (DepartmentID, DepartmentName) VALUES
(1, 'Computer Science'),
(2, 'Commerce'),
(3, 'Mathematics');

INSERT INTO Student (StudentID, StudentName, DepartmentID) VALUES
(101, 'John', 1),
(102, 'David', 2),
(103, 'Alex', 1),
(104, 'Sam', 3);

SELECT
    s.StudentID,
    s.StudentName,
    d.DepartmentName
FROM Student s
INNER JOIN Department d
ON s.DepartmentID = d.DepartmentID;
