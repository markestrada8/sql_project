USE devcamp_sql_project_schema;

SELECT *
FROM grades;

INSERT INTO students(students_first_name, students_last_name, students_email)
VALUES ("Harry", "Potter", "harry@hogwarts.com");
INSERT INTO students(students_first_name, students_last_name, students_email)
VALUES ("Hermione", "Granger", "hermione@hogwarts.com");
INSERT INTO students(students_first_name, students_last_name, students_email)
VALUES ("Ron", "Weasley", "ron@hogwarts.com");
INSERT INTO students(students_first_name, students_last_name, students_email)
VALUES ("Draco", "Malfoy", "draco@hogwarts.com");

SELECT * FROM students;

INSERT INTO professors(professors_first_name, professors_last_name, professors_email)
VALUES ("Minerva", "McGonagall", "minerva@hogwarts.com");
INSERT INTO professors(professors_first_name, professors_last_name, professors_email)
VALUES ("Severus", "Snape", "severus@hogwarts.com");
INSERT INTO professors(professors_first_name, professors_last_name, professors_email)
VALUES ("Rubeus", "Hagrid", "minerva@hogwarts.com");
INSERT INTO professors(professors_first_name, professors_last_name, professors_email)
VALUES ("Sybill", "Trelawney", "sybill@hogwarts.com");

select * from professors;

INSERT INTO courses(courses_title, courses_professors_id, courses_students_id)
VALUES (
#Potions enroll
	"Potions", 
    (SELECT professors_id FROM professors WHERE professors_last_name = "Snape"), 
    (SELECT students_id FROM students WHERE students_last_name = "Potter")
    ),
    (
	"Potions", 
    (SELECT professors_id FROM professors WHERE professors_last_name = "Snape"), 
    (SELECT students_id FROM students WHERE students_last_name = "Granger")
    ),
    (
	"Potions", 
    (SELECT professors_id FROM professors WHERE professors_last_name = "Snape"), 
    (SELECT students_id FROM students WHERE students_last_name = "Weasley")
    ),
    (
	"Potions", 
    (SELECT professors_id FROM professors WHERE professors_last_name = "Snape"), 
    (SELECT students_id FROM students WHERE students_last_name = "Malfoy")
    ),
#Creatures enroll
(
	"Care of Magical Creatures", 
    (SELECT professors_id FROM professors WHERE professors_last_name = "Hagrid"), 
    (SELECT students_id FROM students WHERE students_last_name = "Potter")
    ),
    (
	"Care of Magical Creatures", 
    (SELECT professors_id FROM professors WHERE professors_last_name = "Hagrid"), 
    (SELECT students_id FROM students WHERE students_last_name = "Granger")
    ),
    (
	"Care of Magical Creatures", 
    (SELECT professors_id FROM professors WHERE professors_last_name = "Hagrid"), 
    (SELECT students_id FROM students WHERE students_last_name = "Weasley")
    ),
    (
	"Care of Magical Creatures", 
    (SELECT professors_id FROM professors WHERE professors_last_name = "Hagrid"), 
    (SELECT students_id FROM students WHERE students_last_name = "Malfoy")
    ),
    #Transfiguration enroll
(
	"Trasfiguration", 
    (SELECT professors_id FROM professors WHERE professors_last_name = "McGonagall"), 
    (SELECT students_id FROM students WHERE students_last_name = "Potter")
    ),
    (
	"Trasfiguration", 
    (SELECT professors_id FROM professors WHERE professors_last_name = "McGonagall"), 
    (SELECT students_id FROM students WHERE students_last_name = "Granger")
    ),
    (
	"Trasfiguration", 
    (SELECT professors_id FROM professors WHERE professors_last_name = "McGonagall"), 
    (SELECT students_id FROM students WHERE students_last_name = "Weasley")
    ),
    (
	"Trasfiguration", 
    (SELECT professors_id FROM professors WHERE professors_last_name = "McGonagall"), 
    (SELECT students_id FROM students WHERE students_last_name = "Malfoy")
    ),
    #Divination enroll
(
	"Divination", 
    (SELECT professors_id FROM professors WHERE professors_last_name = "Trelawney"), 
    (SELECT students_id FROM students WHERE students_last_name = "Potter")
    ),
    (
	"Divination", 
    (SELECT professors_id FROM professors WHERE professors_last_name = "Trelawney"), 
    (SELECT students_id FROM students WHERE students_last_name = "Granger")
    ),
    (
	"Divination", 
    (SELECT professors_id FROM professors WHERE professors_last_name = "Trelawney"), 
    (SELECT students_id FROM students WHERE students_last_name = "Weasley")
    ),
    (
	"Divination", 
    (SELECT professors_id FROM professors WHERE professors_last_name = "Trelawney"), 
    (SELECT students_id FROM students WHERE students_last_name = "Malfoy")
    );
    
    
SELECT *
FROM courses;

DELETE FROM courses WHERE courses_id > 16;
    
INSERT INTO grades(grades_grade, grades_courses_id, grades_students_id, grades_professors_id)
VALUES (
#Potions grades populate
	(SELECT RAND() * 100), 
    (SELECT courses_id FROM courses WHERE courses_title = "Potions" AND courses_students_id = (SELECT students_id FROM students WHERE students_last_name = "Potter")), 
    (SELECT students_id FROM students WHERE students_last_name = "Potter"), 
    (SELECT professors_id FROM professors WHERE professors_last_name = "Snape")
    ),
    (
	(SELECT RAND() * 100), 
    (SELECT courses_id FROM courses WHERE courses_title = "Potions" AND courses_students_id = (SELECT students_id FROM students WHERE students_last_name = "Malfoy")), 
    (SELECT students_id FROM students WHERE students_last_name = "Malfoy"), 
    (SELECT professors_id FROM professors WHERE professors_last_name = "Snape")
    ),
    (
	(SELECT RAND() * 100), 
    (SELECT courses_id FROM courses WHERE courses_title = "Potions" AND courses_students_id = (SELECT students_id FROM students WHERE students_last_name = "Granger")), 
    (SELECT students_id FROM students WHERE students_last_name = "Granger"), 
    (SELECT professors_id FROM professors WHERE professors_last_name = "Snape")
    ),
    (
	(SELECT RAND() * 100), 
    (SELECT courses_id FROM courses WHERE courses_title = "Potions" AND courses_students_id = (SELECT students_id FROM students WHERE students_last_name = "Weasley")), 
    (SELECT students_id FROM students WHERE students_last_name = "Weasley"), 
    (SELECT professors_id FROM professors WHERE professors_last_name = "Snape")
    ),
    (
#Transfiguration grades populate
	(SELECT RAND() * 100), 
    (SELECT courses_id FROM courses WHERE courses_title = "Transfiguration" AND courses_students_id = (SELECT students_id FROM students WHERE students_last_name = "Potter")), 
    (SELECT students_id FROM students WHERE students_last_name = "Potter"), 
    (SELECT professors_id FROM professors WHERE professors_last_name = "McGonagall")
    ),
    (
	(SELECT RAND() * 100), 
    (SELECT courses_id FROM courses WHERE courses_title = "Transfiguration" AND courses_students_id = (SELECT students_id FROM students WHERE students_last_name = "Malfoy")), 
    (SELECT students_id FROM students WHERE students_last_name = "Malfoy"), 
    (SELECT professors_id FROM professors WHERE professors_last_name = "McGonagall")
    ),
    (
	(SELECT RAND() * 100), 
    (SELECT courses_id FROM courses WHERE courses_title = "Transfiguration" AND courses_students_id = (SELECT students_id FROM students WHERE students_last_name = "Granger")), 
    (SELECT students_id FROM students WHERE students_last_name = "Granger"), 
    (SELECT professors_id FROM professors WHERE professors_last_name = "McGonagall")
    ),
    (
	(SELECT RAND() * 100), 
    (SELECT courses_id FROM courses WHERE courses_title = "Transfiguration" AND courses_students_id = (SELECT students_id FROM students WHERE students_last_name = "Weasley")), 
    (SELECT students_id FROM students WHERE students_last_name = "Weasley"), 
    (SELECT professors_id FROM professors WHERE professors_last_name = "McGonagall")
    ),
    (
#Creatures grades populate
	(SELECT RAND() * 100), 
    (SELECT courses_id FROM courses WHERE courses_title = "Care of Magical Creatures" AND courses_students_id = (SELECT students_id FROM students WHERE students_last_name = "Potter")), 
    (SELECT students_id FROM students WHERE students_last_name = "Potter"), 
    (SELECT professors_id FROM professors WHERE professors_last_name = "Hagrid")
    ),
    (
	(SELECT RAND() * 100), 
    (SELECT courses_id FROM courses WHERE courses_title = "Care of Magical Creatures" AND courses_students_id = (SELECT students_id FROM students WHERE students_last_name = "Malfoy")), 
    (SELECT students_id FROM students WHERE students_last_name = "Malfoy"), 
    (SELECT professors_id FROM professors WHERE professors_last_name = "Hagrid")
    ),
    (
	(SELECT RAND() * 100), 
    (SELECT courses_id FROM courses WHERE courses_title = "Care of Magical Creatures" AND courses_students_id = (SELECT students_id FROM students WHERE students_last_name = "Granger")), 
    (SELECT students_id FROM students WHERE students_last_name = "Granger"), 
    (SELECT professors_id FROM professors WHERE professors_last_name = "Hagrid")
    ),
    (
	(SELECT RAND() * 100), 
    (SELECT courses_id FROM courses WHERE courses_title = "Care of Magical Creatures" AND courses_students_id = (SELECT students_id FROM students WHERE students_last_name = "Weasley")), 
    (SELECT students_id FROM students WHERE students_last_name = "Weasley"), 
    (SELECT professors_id FROM professors WHERE professors_last_name = "Hagrid")
    ),
    (
#Divination grades populate
	(SELECT RAND() * 100), 
    (SELECT courses_id FROM courses WHERE courses_title = "Divination" AND courses_students_id = (SELECT students_id FROM students WHERE students_last_name = "Potter")), 
    (SELECT students_id FROM students WHERE students_last_name = "Potter"), 
    (SELECT professors_id FROM professors WHERE professors_last_name = "Trelawney")
    ),
    (
	(SELECT RAND() * 100), 
    (SELECT courses_id FROM courses WHERE courses_title = "Divination" AND courses_students_id = (SELECT students_id FROM students WHERE students_last_name = "Malfoy")), 
    (SELECT students_id FROM students WHERE students_last_name = "Malfoy"), 
    (SELECT professors_id FROM professors WHERE professors_last_name = "Trelawney")
    ),
    (
	(SELECT RAND() * 100), 
    (SELECT courses_id FROM courses WHERE courses_title = "Divination" AND courses_students_id = (SELECT students_id FROM students WHERE students_last_name = "Granger")), 
    (SELECT students_id FROM students WHERE students_last_name = "Granger"), 
    (SELECT professors_id FROM professors WHERE professors_last_name = "Trelawney")
    ),
    (
	(SELECT RAND() * 100), 
    (SELECT courses_id FROM courses WHERE courses_title = "Divination" AND courses_students_id = (SELECT students_id FROM students WHERE students_last_name = "Weasley")), 
    (SELECT students_id FROM students WHERE students_last_name = "Weasley"), 
    (SELECT professors_id FROM professors WHERE professors_last_name = "Trelawney")
    );





SELECT * FROM grades;

INSERT INTO grades(grades_grade, grades_courses_id, grades_students_id, grades_professors_id)
VALUES     (
#Creatures grades populate
	(SELECT RAND() * 100), 
    (SELECT courses_id FROM courses WHERE courses_title = "Care of Magical Creatures" AND courses_students_id = (SELECT students_id FROM students WHERE students_last_name = "Potter")), 
    (SELECT students_id FROM students WHERE students_last_name = "Potter"), 
    (SELECT professors_id FROM professors WHERE professors_last_name = "Hagrid")
    ),
    (
	(SELECT RAND() * 100), 
    (SELECT courses_id FROM courses WHERE courses_title = "Care of Magical Creatures" AND courses_students_id = (SELECT students_id FROM students WHERE students_last_name = "Malfoy")), 
    (SELECT students_id FROM students WHERE students_last_name = "Malfoy"), 
    (SELECT professors_id FROM professors WHERE professors_last_name = "Hagrid")
    ),
    (
	(SELECT RAND() * 100), 
    (SELECT courses_id FROM courses WHERE courses_title = "Care of Magical Creatures" AND courses_students_id = (SELECT students_id FROM students WHERE students_last_name = "Granger")), 
    (SELECT students_id FROM students WHERE students_last_name = "Granger"), 
    (SELECT professors_id FROM professors WHERE professors_last_name = "Hagrid")
    ),
    (
	(SELECT RAND() * 100), 
    (SELECT courses_id FROM courses WHERE courses_title = "Care of Magical Creatures" AND courses_students_id = (SELECT students_id FROM students WHERE students_last_name = "Weasley")), 
    (SELECT students_id FROM students WHERE students_last_name = "Weasley"), 
    (SELECT professors_id FROM professors WHERE professors_last_name = "Hagrid")
    );


DELETE FROM grades WHERE grades_id > 0;
SELECT * FROM courses;

UPDATE courses
SET courses_title = "Transfiguration"
WHERE courses_title = "Trasfiguration";

SELECT * FROM grades;












    
    