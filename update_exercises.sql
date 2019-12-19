USE codeup_test_db;

SELECT 'All the Albums' AS 'Inquiry 1';
SELECT * FROM albums;
UPDATE albums
SET sales = (sales * 10);
SELECT * FROM albums;


SELECT 'All Albums made before 1980' AS 'Inquiry 2';
SELECT * FROM albums WHERE release_date < 1980;
UPDATE albums
SET release_date = (release_date - 100)
WHERE release_date < 1980;
SELECT * FROM albums WHERE release_date < 1980;


SELECT 'All Albums made by the Notorious Michael Jackson' AS 'Inquiry 3';
SELECT * FROM albums WHERE artist = 'Michael Jackson';
UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';
SELECT * FROM albums WHERE artist = 'Peter Jackson';
