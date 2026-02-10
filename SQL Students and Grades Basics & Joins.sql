/* SQL BASICS PROJECT*/

-- 1 & 2. view the table (select, from)

select *
from students

select *
from student_grades;

-- 3. show students who get school lunch (WHERE)
select student_name, school_lunch
from students
where school_lunch = 'Yes' ;

-- 4. sort the students by gpa (ORDER BY)
select *
from students
where GPA is not null
order by gpa desc;

-- 5. show the average gpa for each grade level (group by)
select  grade_level,avg(gpa) as avg_gpa
from students
group by grade_level
order by grade_level desc;

-- 6. show the grade levels with an average gpa below 3.3 (having)
select  grade_level,avg(gpa) as avg_gpa
from students
group by grade_level
having avg(gpa) < 3.3
order by grade_level desc;

-- 7. special keywords: LIMIT | COUNT | Distinct

--LIMIT
select *
from students
limit 5;

--COUNT
select count(*) as student_school_lunch
from students
where school_lunch = 'Yes' ;

-- Distinct
select distinct gpa
from students
where gpa is not null
order by gpa desc;

-- 8. show the final grades for each student: LEFT JOIN

--select student_name, id
--from students
--left join student_grades
--on students.id = student_grades.student_id;

select *
from students left  join student_grades
  on students.id = student_grades.student_id;

select students.id, students.student_name,
  student_grades.class_name, student_grades.final_grade
from students left  join student_grades
  on students.id = student_grades.student_id;

-- making the above code cleaner
select s.id, s.student_name,
sg.class_name, sg.final_grade
from students as s
left join student_grades as sg
on s.id = sg.student_id;

-- Inner Join
select s.student_name,
        sg.final_grade
from students as s
inner join student_grades as sg
  on s.id = sg.student_id;

-- 9. find students with NO grades
select s.student_name
from students as s
left join student_grades as sg
on s.id = sg.student_id
where sg.student_id is null;



