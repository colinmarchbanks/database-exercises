USE codeup_test_db;

TRUNCATE albums;

INSERT INTO albums (artist,name,release_date,sales,genre)
VALUES
('Michael Jackson','Thriller',1982,43300000,'Pop,rock,R&B'),
('AC/DC','Back in Black',1980,26400000,'Hard Rock'),
('Meat Load','Bat Out of Hell',1977,21700000,'Hard rock, glam rock, heavy metal'),
('Pink Floyd','The Dark Side of the Moon',1973,24200000,'Progressive rock'),
('Whitney Houston','The Bodyguard',1992,28400000,'Soundtrack,R&B, soul, pop'),
('Eagles','Their Greatest Hits 1971–1975',1976,41200000,'Rock-soft, rock-folk, rock'),
('Bee Gees','Saturday Night Fever',1977,21600000,'Disco'),
('Fleetwood Mac','Rumours',1977,27900000,'Soft rock'),
('Shania Twain','Come On Over',1997,29600000,'Country, pop'),
('Led Zeppelin','Led Zeppelin IV',1971,29000000,'Hard rock, heavy metal'),
('Michael Jackson','Bad',1987,22200000,'Pop-funk-rock'),
('Alanis Morissette','Jagged Little Pill',1995,24400000,'Alternative rock'),
('Celine Dion','Falling into You',1996,20200000,'Pop, Soft rock'),
('The Beatles','Sgt. Peppers Lonely Hearts Club Band',1967,18200000,'Rock'),
('Eagles','Hotel California',1976,31500000,'Rock, soft rock, folk rock'),
('Mariah Carey','Music Box',1993,28000000,'Pop,R&B,Rock'),
('Michael Jackson','Dangerous',1991,17300000,'Rock, Funk, Pop'),
('Various artists','Dirty Dancing',1987,17900000,'Pop, rock, R&B'),
('Celine Dion','Let''s Talk About Love',1997,19300000,'Pop, Soft rock'),
('The Beatles','1',2000,23400000,'Rock'),
('Adele','21',2011,25300000,'Pop, soul'),
('The Beatles','Abbey Road',1969,14400000,'Rock'),
('Bruce Springsteen','Born in the U.S.A.',1984,19600000,'Rock'),
('Dire Straits','Brothers in Arms',1985,17700000,'Rock'),
('James Horner','Titanic: Music from the Motion Picture',1997,18100000,'Soundtrack'),
('Madonna','The Immaculate Collection',1990,19400000,'Pop, Dance'),
('Metallica','Metallica',1991,25200000,'Thrash metal, heavy metal'),
('Nirvana','Nevermind',1991,16700000,'Grunge, alternative rock'),
('Pink Floyd','The Wall',1979,18700000,'Progressive rock'),
('Santana','Supernatural',1999,20500000,'Rock'),
('Guns N Roses','Appetite for Destruction',1987,21900000,'Heavy metal, hard rock');
