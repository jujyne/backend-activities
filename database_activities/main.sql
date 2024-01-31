--1st activity
CREATE TABLE students (
    id          serial PRIMARY KEY,
    first_name  text,   --use VAR CHAR instead of text 
    middle_name text,
    last_name   text,
    age         integer,
    location    text
);

INSERT INTO students (first_name, middle_name, last_name, age, location)
VALUES 
    ('Juan', NULL, 'Cruz', 18, 'Manila'),
    ('Anne', NULL, 'Wall', 20, 'Manila'),
    ('Theresa', NULL, 'Joseph', 21, 'Manila'),
    ('Isaac', NULL, 'Gray', 19, 'Laguna'),
    ('Zack', NULL, 'Matthews', 22, 'Marikina'),
    ('Finn', NULL, 'Lam', 25, 'Manila');
    
    
UPDATE students
SET (first_name, middle_name, last_name, age, location) = ('Ivan', 'Ingram', 'Howard', 25, 'Bulacan')
WHERE id=1;


DELETE FROM students
WHERE id=6;


--2nd activity 
SELECT COUNT(id) FROM students;
SELECT * FROM students WHERE location = 'Manila';

SELECT AVG(age) FROM students; --SELECT ROUND(AVG(age),2) as average_age FROM students
FROM table
SELECT * FROM students ORDER BY age DESC;



--3rd activity 
CREATE TABLE valid_grades (
    grade_chars VARCHAR(1) PRIMARY KEY
);

INSERT INTO valid_grades (grade_chars)
VALUES 
    ('A'), ('B'), ('C'), ('D'), ('E'), ('F');

CREATE TABLE research_papers (
    id SERIAL PRIMARY KEY NOT NULL,
    student_id INTEGER REFERENCES students(id),
    grades VARCHAR(1) REFERENCES valid_grades(grade_chars) 
);

INSERT INTO research_papers (student_id, grades) 
VALUES 
    (1, 'A'), 
    (2, 'B'), 
    (3, 'C'), 
    (4, 'D'), 
    (5, 'E'), 
    (6, 'F'), 
    (1, 'B'), 
    (2, 'D'), 
    (3, NULL), 
    (4, NULL);



SELECT s.first_name, s.last_name, COUNT(rp.id) AS number_of_research_papers 
FROM students s 
INNER JOIN research_papers rp 
ON s.id = rp.student_id
GROUP BY s.id 
HAVING COUNT(rp.id)>1;

SELECT s.first_name, s.last_name, rp.id AS research_paper_id, rp.grades
FROM students s 
INNER JOIN research_papers rp 
ON s.id = rp.student_id
WHERE rp.grades IS NULL;


SELECT * FROM valid_grades;
SELECT * FROM research_papers;

DROP TABLE research_papers;
DROP TABLE valid_grades;