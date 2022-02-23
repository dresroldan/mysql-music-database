DROP DATABASE IF EXISTS music_db; 
CREATE DATABASE music_db;

USE music_db;


-- Genre Table 
CREATE TABLE genre(
id INT AUTO_INCREMENT,
name VARCHAR(25) UNIQUE NOT NULL,
PRIMARY KEY (id)
);


-- Album Table
CREATE TABLE album(
id INT AUTO_INCREMENT,
name VARCHAR(50) UNIQUE NOT NULL,
year_released INT, 
genre_id INT, 
FOREIGN KEY (genre_id) REFERENCES genre(id) ON DELETE SET NULL,
PRIMARY KEY (id)
);



-- Artist Table 
CREATE TABLE artist (
id INT AUTO_INCREMENT,
name VARCHAR(50) UNIQUE NOT NULL,
album_id INT,
genre_id INT,  
FOREIGN KEY (album_id) REFERENCES album(id) ON DELETE SET NULL,
FOREIGN KEY (genre_id) REFERENCES genre(id) ON DELETE SET NULL,
PRIMARY KEY (id)
);

