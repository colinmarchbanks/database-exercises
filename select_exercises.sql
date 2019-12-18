USE codeup_test_db;

SELECT 'Albums by Pink Floyd' AS 'Inquiry 1';
SELECT name FROM albums WHERE artist = 'Pink Floyd';

SELECT 'Year Sgt. Pepper''s Lonely Hearts Club Band was release' AS 'Inquiry 2';
SELECT release_date FROM albums WHERE name = 'Sgt. Peppers Lonely Hearts Club Band';

SELECT 'Genre of Nevermind' AS 'Inquiry 3';
SELECT genre FROM albums WHERE name = 'Nevermind';

SELECT 'Albums released in the 1990s' AS 'Inquiry 4';
SELECT * FROM albums WHERE release_date BETWEEN 1990 AND 1999;

SELECT 'Albums that generated less than 20 million in certified sales' AS 'Inquiry 5';
SELECT * FROM albums WHERE sales < 20000000;

SELECT 'Albums that have the genre of ''Rock''' AS 'Inquiry 5';
SELECT * FROM albums WHERE genre = 'Rock';

