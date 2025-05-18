
# 📊 Student Analysis - SQL Practice

Welcome to my daily SQL practice log! This repository documents my journey of learning and applying SQL for data analysis using a **Student Database**.

## 📅 Day 1: Basic to Intermediate SQL Queries

### 🧾 Tables Used

#### 📘 `student` Table

| id | name   | age | gender | course           | marks |
|----|--------|-----|--------|------------------|--------|
| 1  | Aryan  | 20  | Male   | Computer Science | 85     |
| 2  | Neha   | 21  | Female | Mathematics      | 88     |
| 3  | Ravi   | 22  | Male   | Physics          | 78     |
| 4  | Anjali | 20  | Female | Computer Science | 95     |
| 5  | Soham  | 23  | Male   | Mathematics      | 65     |

#### 📙 `course` Table

| course_name       | instructor   |
|-------------------|--------------|
| Computer Science  | Dr. Ahuja    |
| Mathematics       | Dr. Mehta    |
| Physics           | Dr. Sharma   |

---

### ✅ Practiced SQL Concepts

- `SELECT`, `UPDATE`, and `WHERE` clauses
- Aggregate functions: `AVG()`
- Subqueries
- `JOIN` with condition filtering
- Error handling (Safe Update Mode in MySQL Workbench)

---

### 🧪 Example Queries

#### 🔹 Students scoring above average:
```sql
SELECT * FROM student
WHERE marks > (
    SELECT AVG(marks) FROM student
);
```

#### 🔹 Students taught by Dr. Ahuja:
```sql
SELECT s.name, s.course
FROM student s
JOIN course c ON s.course = c.course_name
WHERE c.instructor = 'Dr. Ahuja';
```

---

### 💡 Key Learnings

- How to use subqueries inside `WHERE` conditions.
- Performing joins to combine data from multiple tables.
- Solved a real error: `Error Code: 1175` using MySQL settings.

---

### 📌 Goals

- Practice SQL daily
- Understand real-world data query scenarios
- Build a solid foundation for data analysis roles

---

### 📍 Next Steps

- Grouping and aggregation (`GROUP BY`, `HAVING`)
- More advanced subqueries
- Window functions and case analysis

---

### 📁 Folder Structure

```
/student-analysis
│
├── student_analysis_day1.sql
├── README.md
```

---

> 🌱 Stay tuned for daily SQL learning logs in this repo!

---

### 🔗 Connect With Me

- 💼 [LinkedIn](https://www.linkedin.com)
- 📬 aryan@email.com

#SQL #StudentDatabase #DataAnalytics #Practice #MySQL #GitHubPortfolio
