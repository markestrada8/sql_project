USE devcamp_sql_project_schema;

#AVERAGE GRADES
SELECT 
AVG(grades_grade) AS "SEVERUS Snape" 
FROM grades 
WHERE grades_professors_id = (SELECT professors_id FROM professors WHERE professors_last_name = "Snape");

SELECT
AVG(grades_grade) AS "MINERVA McGonagall" 
FROM grades 
WHERE grades_professors_id = (SELECT professors_id FROM professors WHERE professors_last_name = "McGonagall");

SELECT 
AVG(grades_grade) AS "RUBEUS Hagrid" 
FROM grades 
WHERE grades_professors_id = (SELECT professors_id FROM professors WHERE professors_last_name = "Hagrid");

SELECT 
AVG(grades_grade) AS "SYBILL Trelawney" 
FROM grades 
WHERE grades_professors_id = (SELECT professors_id FROM professors WHERE professors_last_name = "Trelawney");

#TOP GRADES PER STUDENT
SELECT 
MAX(grades_grade) AS "HARRY Potter" 
FROM grades 
WHERE grades_students_id = (SELECT students_id FROM students WHERE students_last_name = "Potter");

SELECT 
MAX(grades_grade) AS "DRACO Malfoy" 
FROM grades 
WHERE grades_students_id = (SELECT students_id FROM students WHERE students_last_name = "Malfoy");

SELECT 
MAX(grades_grade) AS "HERMIONE Granger" 
FROM grades 
WHERE grades_students_id = (SELECT students_id FROM students WHERE students_last_name = "Granger");

SELECT 
MAX(grades_grade) AS "RON Weasley" 
FROM grades 
WHERE grades_students_id = (SELECT students_id FROM students WHERE students_last_name = "Weasley");

#GROUP STUDENTS BY COURSE
#EACH STUDENT IS IN EACH COURSE

SELECT s.students_first_name, c.courses_title
FROM students s 
	JOIN courses c 
	ON s.students_id = c.courses_students_id
GROUP BY s.students_first_name, c.courses_title

