DROP DATABASE IF EXISTS music_library; 

CREATE DATABASE music_library;

-- Artist Table 
CREATE TABLE artist (
artist_id INT  NOT NULL PRIMARY KEY, 
name VARCHAR(50) NOT NULL,
);


-- Genre Table 
CREATE TABLE  genre (
genre_id INT NOT NULL PRIMARY KEY, 
name VARCHAR(50)
);


-- Album Table
CREATE TABLE album(
album_id INT NOT NULL PRIMARY KEY,
name VARCHAR(50) NOT NULL,
year_released INT, 
artist_id INT,
genre_id INT, 
FOREIGN KEY (artist_id) REFERENCES artist(artist_id) ON DELETE SET NULL,
FOREIGN KEY (genre_id) REFERENCES genre(genre_id) ON DELETE SET NULL
)


-- Artist Data 
INSERT INTO artist VAlUES(1, "Miles Davis");
INSERT INTO artist VALUES(2, "Dr. Dre");


-- Genre Data
INSERT INTO genre VALUES(1, "Rap");
INSERT INTO genre VALUES(2, "Jazz");


-- Album Data
INSERT INTO album VALUES (1, 'Kind of Blue', 1959, 1, 2);
INSERT INTO album VALUES (2, 'The Chronic', 1992, 2, 1);
