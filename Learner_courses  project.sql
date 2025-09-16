-- 1. Show all learners
SELECT * FROM Learners;

-- 2. List learners with their course names
SELECT L.FirstName, C.CourseName
FROM Learners L
JOIN Course C ON L.CourseID = C.CourseID;

-- 3. Find learners who scored above 80
SELECT FirstName, Marks
FROM Learners
WHERE Marks > 80;

-- 4. Find average marks per course
Select c.CourseName , AVG(l.Marks) from Learners l
join course c
on l.CourseID = c.CourseID
group by c.CourseName;

--5. Find top 3 learners by marks
select firstname, marks 
from 
	( select firstname, marks , DENSE_RANK() over (order by marks desc) as maxMarks from Learners  ) t
where maxMarks between 1 AND 3;

--Alternate method
SELECT TOP 3 FirstName, Marks
FROM Learners
ORDER BY Marks DESC;

-- 6. Count number of learners in each course
SELECT C.CourseName, COUNT(*) AS LearnerCount
FROM Learners L
JOIN Course C ON L.CourseID = C.CourseID
GROUP BY C.CourseName;

-- 7. Find second highest marks
Select firstname , marks from 
(select firstname, marks , DENSE_RANK() over (order by marks desc ) as SecondHighestMarks from Learners ) as t 
where SecondHighestMarks = 2;

-- 8. Find learners who joined after Jan 2024
select firstname, Join_Date from learners
where Join_date > '2024-01-31';

-- 9. Find learners who scored above average marks
select firstname , marks from learners 
where marks > (select AVG(marks) from learners) ;

-- 10. Rank learners by marks within each course
select l.firstname , l.marks ,c.Coursename , DENSE_RANK() over (partition by c.coursename order by marks desc) as std_rank 
from learners as l
join course c
on l.CourseID = c.CourseID

-- 11. Find pairs of learners in the same course
select l1.Firstname , l2.FirstName ,c.coursename from learners l1
inner join learners l2
on l1.courseID = l2.courseID AND 
l1.learnerID < l2.learnerID
inner join course c
on l1.courseID = c.courseID;

-- 12. Show learners with marks above the course average
SELECT L.FirstName, L.Marks, C.CourseName
FROM Learners L
JOIN Course C ON L.CourseID = C.CourseID
WHERE L.Marks > (
    SELECT AVG(Marks) FROM Learners WHERE CourseID = L.CourseID
);