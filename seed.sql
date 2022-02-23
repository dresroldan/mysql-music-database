USE music_db;

-- Genres
INSERT INTO genre VALUES(1, "Jazz");
INSERT INTO genre VALUES(2, "Funk");
INSERT INTO genre VALUES(3, "Soul");

-- Albums
INSERT INTO album VALUES (1, "Kind of Blue", 1959, 1);
INSERT INTO album VALUES (2, "A Love Supreme", 1965, 1);
INSERT INTO album VALUES (3, "Maiden Voyage", 1966, 1);
INSERT INTO album VALUES (4, "Undercurrent", 1962, 1);

INSERT INTO album VALUES (5, "There's a Riot Goin' On", 1971, 2);
INSERT INTO album VALUES (6, "Super Fly", 1972, 2);
INSERT INTO album VALUES (7, "Maggot Brain", 1971, 2);
INSERT INTO album VALUES (8, "Street Songs", 1981, 2);

INSERT INTO album VALUES (9, "Live at the Apollo", 1971, 3);
INSERT INTO album VALUES (10, "I Never Loved a Man the Way I Love You", 1972, 3);
INSERT INTO album VALUES (11, "What's Going On", 1971, 3);
INSERT INTO album VALUES (12, "Songs in the Key of Life", 1981, 3);

-- Artists
INSERT INTO artist VAlUES(1, "Miles Davis", 1, 1);
INSERT INTO artist VALUES(2, "John Coltrane", 2, 1);
INSERT INTO artist VAlUES(3, "Herbie Hancock", 3, 1);
INSERT INTO artist VALUES(4, "Bill Evans", 4, 1);

INSERT INTO artist VAlUES(5, "Sly and the Family Stone", 5, 2);
INSERT INTO artist VALUES(6, "Curtis Mayfield", 6, 2);
INSERT INTO artist VAlUES(7, "Funkadelic", 7, 2);
INSERT INTO artist VALUES(8, "Rick James", 8, 2);

INSERT INTO artist VAlUES(9, "James Brown", 9, 3);
INSERT INTO artist VALUES(10, "Aretha Franklin", 10, 3);
INSERT INTO artist VAlUES(11, "Marvin Gaye", 11, 3);
INSERT INTO artist VALUES(12, "Stevie Wonder", 12, 3);