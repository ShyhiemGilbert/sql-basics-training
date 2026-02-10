# SQL Basics Training

This repository contains a **mini guided SQL project** completed as part of foundational SQL practice.

The goal of the project is to reinforce core SQL concepts using a simple relational dataset, with a particular focus on:
- filtering and sorting data
- aggregation and grouping
- understanding JOIN behaviour (LEFT vs INNER)

---

## Dataset

This project uses the **PostgreSQL `maven-student-grades-db`** sample database.

The dataset includes:
- `students` — basic student information (name, grade level, GPA, school lunch)
- `student_grades` — class-level final grades linked to students

The database was sourced from Maven Analytics and is publicly available.

**Download link:**  
https://maven-datasets.s3.amazonaws.com/YouTube+Downloads/maven-student-grades-db.zip

---

## What This Project Covers

The SQL scripts in this repository demonstrate:

- Viewing and exploring tables (`SELECT`, `FROM`)
- Filtering rows with `WHERE`
- Sorting results with `ORDER BY`
- Aggregations using `AVG`, `COUNT`
- Grouping data with `GROUP BY`
- Filtering aggregated results with `HAVING`
- Using `DISTINCT`
- Joining tables using:
  - `LEFT JOIN` (to retain all students)
  - `INNER JOIN` (to return only students with grades)
- Identifying unmatched records (students with no grades)

---

## Tools Used

- **Database:** PostgreSQL  
- **SQL Client:** DBeaver  
- **Language:** SQL  

---

## Notes

This project was completed as guided practice while learning SQL fundamentals.  
The focus is on **query correctness, readability, and understanding**, rather than optimisation or production deployment.

Future projects will build on this foundation with more complex joins and analysis-style queries.
