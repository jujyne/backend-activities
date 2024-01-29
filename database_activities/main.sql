CREATE TABLE students (
    id          serial PRIMARY KEY,
    first_name  text,
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

SELECT COUNT(id) FROM students;
SELECT * FROM students WHERE location = 'Manila';
SELECT AVG(age) FROM students;
SELECT * FROM students ORDER BY age DESC;


SELECT * FROM students;
DROP TABLE students;
