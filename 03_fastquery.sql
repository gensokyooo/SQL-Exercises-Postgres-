CREATE TABLE manga (
id SERIAL PRIMARY KEY,
title TEXT
)

CREATE TABLE genre (
id SERIAL PRIMARY KEY,
name TEXT UNIQUE
)

CREATE TABLE manga_genres (
manga_id INT REFERENCES manga(id),
genre_id INT REFERENCES genre(id)
)


INSERT INTO manga (title) VALUES
('86'),
('Code Geass'),
('Death Note');

INSERT INTO genre (name) VALUES
('Fantasy'),
('Action'),
('Military');

INSERT INTO manga_genres (manga_id, genre_id) VALUES 
(1,3);

SELECT * from manga_genres;
SELECT * from manga;
SELECT * from genre;