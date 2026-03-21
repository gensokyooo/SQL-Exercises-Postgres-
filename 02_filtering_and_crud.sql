CREATE TABLE manga (
id SERIAL PRIMARY KEY,
name TEXT,
rating DECIMAL (3,1) CHECK (rating >= 0 AND rating <= 10),
)

INSERT INTO manga (name,rating,description)
VALUES 
('Frieren', 10.0, 'A great adventure'),
('Code Geass', 9.0, 'A dark secret'),
('Fruit of Grisaia', 8.1, 'An unexpected life');

-- ADDING DATA

INSERT INTO manga (name) VALUES 
('Oregairu')
INSERT INTO manga (name, rating) VALUES 
('Oregairu', 9.0)
INSERT INTO manga (name,rating) VALUES
('Frieren', 10);

INSERT INTO manga (name, rating, description) VALUES
('Soil', 8.9, 'Family vanishes in suburb'),
('Imawa no Kuni no Alice', 9.0, 'Trapped in deadly game world'),
('Yokohama Kaidashi Kikou', 9.2, 'Robot enjoys quiet post-apocalypse'),
('Boku no Chikyuu wo Mamotte', 8.6, 'Teens recall alien past lives'),
('Shiroi Heya no Futari', 8.3, 'Early shoujo ai classic'),
('Saltiness', 8.1, 'Slice of fishing life'),
('Ran to Haiiro no Sekai', 8.5, 'Girl slowly inherits witch powers'),
('Cipher', 8.2, 'Twin brothers share one life'),
('Joshi Kousei', 7.9, 'Mundane highschool girl observations'),
('Thermae Romae', 8.4, 'Roman architect discovers modern baths');

-- UPDATING 

UPDATE manga SET rating = 7 WHERE rating > 9; 


-- DELETE 

DELETE FROM manga WHERE (name = 'Oregairu' OR  id = 2);

--NEW CONCEPT: ALTER TABLE (name) ADD COLUMN (name_of_column) TYPE (int,text etc...)
-- NEW TYPE: DECIMAL 
-- NEW CRUD: DELETE FROM 
--NEW CONCEPT: FILTERING: Using WHERE, ORDER BY, LIMIT 

SELECT * from manga WHERE rating > 8 ORDER BY rating DESC;
SELECT * from manga WHERE name = 'Soil'; 

SELECT * from manga ORDER BY rating DESC; 
SELECT * from manga WHERE rating < 10 LIMIT 10;


