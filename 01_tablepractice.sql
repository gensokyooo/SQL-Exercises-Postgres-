-- TABLES 
CREATE TABLE Lelouch (
id SERIAL PRIMARY KEY,
name TEXT,
age INT
)

CREATE TABLE subjects (
student_id INT,
subject TEXT
)
-- INSERTING DATA 
INSERT INTO Lelouch (name,age)
VALUES
('Lelouch', 21),
('Suzuki', 22),
('Nunnally', 23),
('Milly', 24);

INSERT INTO subjects (student_id, subject)
VALUES 
(4, 'Maths'),
(4, 'Coding'); 
(5, 'Programming'),
(6, 'Algorithms'),
(7, 'Artificial Intelligence'); 

-- JOINING TABLES 
SELECT lelouch.id, lelouch.name, subjects.subject
FROM Lelouch
JOIN subjects
ON lelouch.id = subjects.student_id 

-- SHOWING DATA
SELECT age, name FROM Lelouch; 

-- DELETING DATA 
DELETE FROM Lelouch
WHERE name IN ('Lelouch');

-- UPDATING DATA
UPDATE Lelouch
SET age = 29
WHERE name = 'Suzuki'



