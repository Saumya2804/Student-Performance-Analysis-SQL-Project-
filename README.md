# 🎓 Student Performance Analysis (SQL Project) 

## 📌 Overview
This project analyzes student performance across multiple courses using **SQL Server**.  
The goal is to practice **real-world SQL skills** — filtering, sorting, joins, aggregations, subqueries, and ranking — while answering meaningful business questions.

---

## 📂 Dataset
The project uses two tables:

### Learners
| LearnerID | FirstName | Age | Marks | Join_Date  | CourseID |
|-----------|-----------|-----|-------|------------|----------|
| 1         | Alice     | 20  | 85.50 | 2024-01-15 | 201      |
| 2         | Bob       | 22  | 92.00 | 2024-02-20 | 201      |
| 3         | Charlie   | 21  | 76.25 | 2024-03-10 | 202      |
| 4         | David     | 23  | 88.75 | 2023-11-05 | 202      |
| 5         | Eva       | 20  | 95.00 | 2024-05-18 | 203      |
| 6         | Frank     | 22  | 67.00 | 2023-09-12 | 204      |
| 7         | Grace     | 21  | 73.50 | 2024-07-07 | 203      |
| 8         | Hannah    | 23  | 89.25 | 2024-08-25 | 204      |

### Courses
| CourseID | CourseName        |
|----------|-------------------|
| 201      | Mathematics       |
| 202      | Science           |
| 203      | History           |
| 204      | Computer Science  |

---

## 📊 Business Problems & Queries

### 🔹 Easy
1. Show all learners with their course names.  
2. Find learners who scored above 80.  
3. List learners who joined after January 2024.  

### 🔹 Medium
4. Find the **average marks per course**.  
5. Get the **top 3 learners** by marks.  
6. Count the number of learners in each course.  

### 🔹 Hard
7. Find the **second-highest marks**.  
8. Show learners who scored **above the overall average**.  
9. Display learners who scored **above their course average**.  

### 🔹 Interview-Type
10. Rank learners by marks **within each course** using `DENSE_RANK()`.  
11. Find **pairs of learners in the same course**.  
12. Show the **course-wise topper** (highest scorer in each course).  

---

## ✅ Skills Used
- **DDL/DML** (CREATE, INSERT)  
- **Filtering** (WHERE, BETWEEN, LIKE, IN)  
- **Sorting** (ORDER BY, TOP)  
- **Aggregations** (COUNT, AVG, MIN, MAX)  
- **Joins** (INNER JOIN, SELF JOIN)  
- **Grouping** (GROUP BY, HAVING)  
- **Subqueries** (scalar & correlated)  
- **Window functions** (DENSE_RANK, RANK)  

---

## 🚀 How to Run
1. Download the dataset files:  
   - 📘 `Learners.xlsx`  
   - 📗 `Courses.xlsx`  

2. Import them into **SQL Server** (use SQL Server Import Wizard or `OPENROWSET`).  
3. Run queries from `Learner_courses  project.sql`
4. (Optional) Save query outputs in `/results` folder for proof.  

---

## 📈 Future Scope
- Build **Power BI / Tableau dashboards** for visualization.  
- Expand dataset with more learners and performance metrics.  
- Add **real-world analytics use cases** like pass/fail, improvement tracking.  

---

👨‍💻 **Author:** Saumya Jain  
📌 *This project is part of my SQL learning roadmap.*  
