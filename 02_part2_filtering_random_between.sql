SELECT * from manga;

UPDATE manga SET rating = RANDOM () * 10+1; 

UPDATE manga SET recommended = 'NO' WHERE rating BETWEEN 1 AND 5; 

-- RANDOM 
-- UPDATE 
-- BETWEEN

ALTER TABLE manga ADD CONSTRAINT rating_limit CHECK (rating >= 0 AND rating <= 10);
UPDATE manga SET rating = 1; 