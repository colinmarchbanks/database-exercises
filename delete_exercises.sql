USE codeup_test_db;

SELECT 'Albums release after 1991' AS 'Inquiry 1A';
SELECT * FROM albums WHERE release_date > 1991;
DELETE FROM albums WHERE release_date > 1991;
SELECT 'Albums release after 1991' AS 'Inquiry 1B';
SELECT * FROM albums WHERE release_date > 1991;


SELECT 'Albums with the genre of Disco' AS 'Inquiry 2A';
SELECT * FROM albums WHERE genre = 'Disco';
DELETE FROM albums WHERE genre = 'Disco';
SELECT 'Albums with the genre of Disco' AS 'Inquiry 2B';
SELECT * FROM albums WHERE genre = 'Disco';

SELECT 'Albums by Michael Jackson' AS 'INQUIRY 3A';
SELECT * FROM albums WHERE artist = 'Michael Jackson';
DELETE FROM albums WHERE artist = 'Michael Jackson';
SELECT 'Albums by Michael Jackson' AS 'INQUIRY 3B';
SELECT * FROM albums WHERE artist = 'Michael Jackson';
