-- Show all the Database
show databases;

-- Create database  with student name
create database if not exists student;

-- Delete database 
drop database student;

-- use databse 
use student;

-- Create Table
create table student
(student_id int primary key,
name varchar(100),
age int,
gender varchar(100),
course varchar(100),
marks int);

-- Delet table from database
drop table student;

-- Insert data into student table
insert into student (student_id, name, age, gender, course, marks) VALUES
(1, 'Aryan', 20, 'Male', 'Computer Science', 85),
(2, 'Neha', 21, 'Female', 'Mathematics', 90),
(3, 'Ravi', 22, 'Male', 'Physics', 78),
(4, 'Anjali', 20, 'Female', 'Computer Science', 95),
(5, 'Soham', 23, 'Male', 'Mathematics', 65);

-- Select All Students
select * from student;

-- To describe about table
describe table student;

-- Students with Marks Greater Than 80
select * from student where marks=80

--  Count Total Students
select count(*) from student;

-- Find the highest marks scored by any student.
select max(marks) as highest_marks from student;

-- Find the lowest marks scored by any student.
select min(marks) as highest_marks from student;

--  Average Marks
select avg(marks) as average_marks from student;

-- Update Marks
update student set marks = 88 where student_id = 2;
 
 
 --  Group by Course
select course, count(*) as total_student from student group by course;
 
 --  Order by Marks (Descending)
 select * from student order by marks desc;

-- Find all students who are enrolled in 'Computer Science'.
select * from student Where course="Computer Science";

-- Count how many male and female students are there
select gender, count(*) AS total from student group by  gender;

-- Course Table
create table course (
    course_name varchar(100) primary key,
    instructor varchar(100),
    duration int  -- duration in weeks
);
--  Sample Data
insert into course (course_name, instructor, duration) values
('Computer Science', 'Dr. Ahuja', 12),
('Mathematics', 'Dr. Rao', 10),
('Physics', 'Dr. Sharma', 14),
('Data Science', 'Dr. Kapoor', 16);

-- INNER JOIN – Match students with their course info
select s.name, s.course, c.instructor,c.duration
from student s
inner join course c on s.course=c.course_name;

-- LEFT JOIN – All students, even if course is missing in course table
select s.name, s.course, c.instructor
from student s
left join course c on s.course=c.course_name;

--  RIGHT JOIN – All courses, even if no student enrolled
select s.name, c.course_name, c.instructor
from student s
right join course c on s.course=c.course_name;

-- JOIN + WHERE – Students in a course taught by "Dr. Ahuja"
select s.name,s.course
from student s
join course c on s.course=c.course_name
where c.instructor='Dr.Ahuja';
DESCRIBE course;

-- CASE WHEN – Add remarks based on marks
select name, marks,
case
when marks>=90 then "Excellent"
when marks>=75 then "Good"
when marks>=60 then "Average"
else "Poor"
end as performance
from student;

-- Subquery – Students with marks above average
select * from student
where marks>(select avg(marks) from student);
 
 SELECT AVG(marks) FROM student;

-- Students NOT in Computer Science or Physics
select  * from student
where course not in ('Computer Science', 'Physics');

--  DISTINCT – Unique course names
select distinct course from student;

-- LIMIT – Top 2 scorers
select * from student order by marks desc limit 2;