-- 
-- SQL Music Database
-- Reuben Clemens
-- Due: 2-19-21
-- 

-- Creates a new database name music.
CREATE DATABASE music;

-- Opens the music database for data to be put in.
USE music;

-- Creates a table named MusicData.
CREATE TABLE MusicData (
-- Defines id as an integer(also becomes the primary key) and then uses auto increments which will increment with each new entry.
	id INTEGER PRIMARY KEY AUTO_INCREMENT,
-- defines field as either INTEGER, TEXT, VARCHAR, and DECIMAL.
	Artist VARCHAR(90),
	Title VARCHAR(90),
	Album VARCHAR(90),
	Year INTEGER,
	Peak INTEGER,
	Week INTEGER);

-- Used to create index on table, retrieves data from database more quickly.
CREATE INDEX idx_Make on MusicData(Artist);
CREATE INDEX idx_Model on MusicData(Year);

-- Shows the structure of the table.
DESCRIBE MusicData;

-- Inserts values into the parameters of the MusicData table.
INSERT INTO MusicData (Artist, Title, Album, Year, Peak, Week)
	VALUES ("Bob Dylan","Like a Rolling Stone","Highway 61 Revisited", 1965, 2, 12),
("The Rolling Stones","(I Can't Get No) Satisfaction","Out of Our Heads", 1965, 1, 14),
("John Lennon","Imagine","Imagine", 1971, 3, 9),
("Marvin Gaye","What's Going On","What's Going On", 1971, 2, 13),
("Aretha Franklin","Respect","I Never Loved a Man the Way I Love You", 1967, 1, 12),
("The Beach Boys","Good Vibrations","Smile/Wild Honey", 1966, 1, 14),
("Chuck Berry","Johnny B. Goode","The Anthology", 1958, 8, 15),
("The Beatles","Hey Jude","1", 1968, 1, 19),
("Nirvana","Smells Like Teen Spirit","Nevermind", 1991, 6, 20),
("Ray Charles","What'd I Say","The Ultimate Hits Collection", 1959, 6, 15),
("The Who","My Generation","My Generation", 1965, 74, 5),
("Sam Cooke","A Change Is Gonna Come","Portrait of a Legend", 1964, 31, 7),
("The Beatles","Yesterday","Help!", 1965, 1, 11),
("Bob Dylan","Blowin' in the Wind","The Freewheelin' Bob Dylan", 1963, 0, 0),
("The Clash","London Calling","London Calling", 1980, 0, 0), 
("The Beatles","I Want to Hold Your Hand","Meet the Beatles!", 1963, 1, 15),
("The Jimi Hendrix Experience","Purple Haze","Are You Experienced?", 1967, 65, 8),
("Chuck Berry","Maybellene","The Anthology", 1955, 5, 11),
("Elvis Presley","Hound Dog","Elvis 30 #1 Hits", 1956, 1, 28),
("The Beatles","Let It Be","Let It Be", 1970, 1, 14),
("Bruce Springsteen","Born to Run","Born to Run", 1975, 23, 11),
("The Ronettes","Be My Baby","The Best of the Ronettes", 1963, 2, 13),
("The Beatles","In My Life","Rubber Soul", 1965, 0, 0),
("The Impressions","People Get Ready","The Very Best of the Impressions", 1965, 14, 8),
("The Beach Boys","God Only Knows","Pet Sounds", 1966, 39, 8),
("Otis Redding","(Sittin' on) the Dock of the Bay","The Dock of the Bay", 1968, 1, 16),
("Derek and the Dominos","Layla","Layla and Other Assorted Love Songs", 1970, 10, 15),
("The Beatles","A Day in the Life","Sgt. Pepper's Lonely Hearts Club Band", 1967, 0, 0),
("The Beatles","Help!","Help!", 1965, 1, 13),
("Johnny Cash","I Walk the Line","The Complete Original Sun Singles", 1956, 17, 22),
("Led Zeppelin","Stairway to Heaven","Led Zeppelin IV", 1971, 0, 0),
("The Rolling Stones","Sympathy for the Devil","Beggar's Banquet", 1968, 0, 0),
("Ike and Tina Turner","River Deep - Mountain High","Proud Mary: The Best of Ike and Tina Turner", 1966, 88, 4),
("The Righteous Brothers","You've Lost That Lovin' Feelin","Anthology 1962-1974", 1964, 1, 16),
("The Doors","Light My Fire","The Doors", 1967, 1, 17),
("U2","One","Achtung Baby", 1991, 10, 20),
("Bob Marley","No Woman, No Cry","Natty Dread", 1975, 0, 0),
("The Rolling Stones","Gimme Shelter","Let It Bleed", 1969, 21, 11),
("Buddy Holly and the Crickets","That'll Be the Day","Greatest Hits", 1957, 1, 1),
("Martha Reeves and the Vandellas","Dancing in the Street","The Ultimate Collection", 1964, 2, 14),
("The Band","The Weight","Music From Big Pink", 1968, 63, 7),
("The Kinks","Waterloo Sunset","Something Else by the Kinks", 1968, 0, 0),
("Little Richard","Tutti-Frutti","The Georgia Peach", 1955, 17, 12),
("Ray Charles","Georgia on My Mind","Ultimate Hits Collection", 1960, 1, 13),
("Elvis Presley","Heartbreak Hotel","Elvis 30 #1 Hits", 1956, 1, 27),
("David Bowie","Heroes","Heroes", 1977, 0, 0),
("The Jimi Hendrix Experience","All Along the Watchtower","Electric Ladyland", 1968, 20, 9),
("Simon and Garfunkel","Bridge Over Troubled Water","Bridge Over Troubled Water", 1970, 1, 14),
("The Eagles","Hotel California","Hotel California", 1976, 1, 19),
("Smokey Robinson and the Miracles","The Tracks of My Tears","Going to a Go-Go", 1965, 16, 12),
("Grandmaster Flash and the Furious Five","The Message","The Best of Sugar Hill Records", 1982, 62, 7),
("Prince","When Doves Cry","Purple Rain", 1984, 1, 21),
("Percy Sledge","When a Man Loves a Woman","It Tears Me Up: The Best of Percy Sledge", 1966, 1, 13),
("The Kingsmen","Louie Louie","The Best of the Kingsmen", 1963, 2, 16),
("Little Richard","Long Tall Sally","The Georgia Peach", 1956, 6, 19),
("The Sex Pistols","Anarchy in the U.K.","Never Mind the Bollocks, Here's the Sex Pistols", 1977, 0, 0),
("Procol Harum","Whiter Shade of Pale","Greatest Hits", 1967, 5, 12),
("Michael Jackson","Billie Jean","Thriller", 1983, 1, 7),
("Bob Dylan","The Times They Are A-Changin'","The Times They Are A-Changin'", 1964, 0, 0),
("Al Green","Let's Stay Together","Let's Stay Together", 1971, 1, 16),
("Jerry Lee Lewis","Whole Lotta Shakin' Going On","Original Sun Greatest Hits", 1957, 3, 29),
("Bo Diddley","Bo Diddley","His Best: The Chess 50th Anniversary Collection", 1955, 0, 0),
("Buffalo Springfield","For What It's Worth","Buffalo Springfield", 1967, 7, 15),
("The Beatles","She Loves You","The Beatles 1", 1963, 1, 15),
("Cream","Sunshine of Your Love","Disraeli Gears", 1968, 5, 26),
("Bob Marley and the Wailers","Redemption Song","Uprising", 1980, 0, 0),
("Elvis Presley","Jailhouse Rock","Elvis 30 #1 Hits", 1957, 1, 27),
("Bob Dylan","Tangled Up in Blue","Blood on the Tracks", 1975, 31, 7),
("Roy Orbison","Crying","For the Lonely: 18 Greatest Hits", 1961, 2, 16),
("Dionne Warwick","Walk On By","The Dionne Warwick Collection: Her All-Time Greatest Hits", 1964, 6, 13),
("James Brown","Papa's Got A Brand New Bag","50th Anniversary Collection", 1966, 8, 13),
("The Beach Boys","California Girls","The Very Best of the Beach Boys", 1965, 3, 11),
("Stevie Wonder","Superstition","Talking Book", 1972, 1, 16),
("Eddie Cochran","Summertime Blues","Somethin' Else", 1958, 8, 16),
("Led Zeppelin","Whole Lotta Love","Led Zeppelin II", 1969, 4, 15),
("The Beatles","Strawberry Fields Forever","Magical Mystery Tour", 1967, 8, 9),
("Elvis Presley","Mystery Train","Sunrise", 1955, 0, 0),
("James Brown","I Got You (I Feel Good)","James Brown 50th Anniversary Collection", 1965, 3, 12),
("The Byrds","Mr. Tambourine Man","Mr. Tambourine Man", 1965, 1, 13),
("The Kinks","You Really Got Me","Kinks", 1964, 7, 15),
("Marvin Gaye","I Heard It Through the Grapevine","Every Motown Hit", 1968, 1, 15),
("Fats Domino","Blueberry Hill","The Fats Domino Jukebox", 1956, 2, 27),
("The Beatles","Norwegian Wood (This Bird Has Flown)","Rubber Soul", 1965, 0, 0),
("The Police","Every Breath You Take","Every Breath You Take", 1983, 1, 22),
("Patsy Cline","Crazy","Patsy Cline's Greatest Hits", 1961, 9, 11),
("Bruce Springsteen","Thunder Road","Born to Run", 1975, 0, 0),
("Johnny Cash","Ring of Fire","The Man in Black: His Greatest Hits", 1963, 17, 13),
("The Temptations","My Girl","The Temptations Sing Smokey", 1965, 1, 13),
("The Mamas and the Papas","California Dreamin","If You Can Believe Your Eyes and Ears", 1965, 4, 17),
("The Five Satins","In the Still of the Night","The Five Satins: Their Greatest Hits", 1956, 24, 19),
("Elvis Presley","Suspicious Minds","Elvis 30 #1 Hits", 1969, 1, 15),
("Ramones","Blitzkrieg Bop","Ramones", 1976, 0, 0),
("U2","I Still Haven't Found What I'm Looking For","The Joshua Tree", 1987, 1, 17),
("Little Richard","Good Golly, Miss Molly","The Georgia Peach", 1958, 10, 15),
("Carl Perkins","Blue Suede Shoes","Original Sun Greatest Hits", 1956, 2, 21),
("Jerry Lee Lewis","Great Balls of Fire","Original Sun Greatest Hits", 1957, 2, 21),
("Chuck Berry","Roll Over Beethoven","The Anthology", 1956, 29, 5),
("Al Green","Love and Happiness","I'm Still in Love With You", 1972, 3, 12),
("Creedence Clearwater Revival", "Fortunate Son", "Willy and the Poor Boys", 1969, 14, 14),
("Gnarls Barkley", "Crazy", "St. Elsewhere", 2006, 2, 24);


-- 1. How many hits are from the 70???s
-- Shows the count of hits returned from SELECT statement. Counts only the ones that follow the WHERE Year >= 1970 AND Year <= 1979, which basically means anything from the 70s.
SELECT COUNT(*) FROM MusicData WHERE Year >= 1970 AND Year <= 1979;

-- 2. How many hits are from the 80s
-- Shows the count of hits returned from SELECT statement. Counts only the ones that follow the WHERE Year >= 1980 AND Year <= 1989, which basically means anything from the 80s.
SELECT COUNT(*) FROM MusicData WHERE Year >= 1980 AND Year <= 1989;

-- 3. How many peaked at ???2???
-- Shows the count of hits returned from SELECT statement. Counts only the ones that follow the WHERE Peak = 2, which basically means anything that peaked at 2 position in top 100.
SELECT COUNT(*) FROM MusicData WHERE Peak = 2;

-- 4. How many peaked longer than ???10??? weeks
-- Shows the count of hits returned from SELECT statement. Counts only the ones that follow the WHERE Week > 10, which basically means anything that was longer than 10 weeks.
SELECT COUNT(*) FROM MusicData WHERE Week > 10;

-- 5. Which songs have ???Love??? in the title
-- Displays the Data WHERE Title is LIKE "%Love%". The % surrounding says to find the word inside at any position. suppose to find anything with love in it.
SELECT * FROM MusicData WHERE Title LIKE "%Love%";

-- 6. Display all of the hits from ???Lionel Richie???
-- Displays the Data, if any, WHERE Artist is "Lionel Richie".
SELECT * FROM MusicData WHERE Artist = "Lionel Richie";

-- 7. Display all of the hits that were number ???1??? in the year ???1988???
-- Displays the Data, if any, WHERE Year was 1988 AND what reached Peak 1.
SELECT * FROM MusicData WHERE Year = 1988 AND Peak = 1;

-- 8. Display all of the hits in 1994 that were not number ???1???
-- Displays the Data WHERE the Year was 1994, AND all the songs underneath Peak 1.
SELECT * FROM MusicData WHERE Year = 1994 AND Peak < 1;

-- 9. How many times did ???Michael Jackson??? make the top 100
-- Shows the count of hits returned from SELECT statement. Counts only the ones that follow the WHERE Artist = "Michael Jackson", which basically means if Michael Jackson is the artist.
SELECT COUNT(*) FROM MusicData WHERE Artist = "Michael Jackson";

-- 10. Display all of the hits from the 60???s
-- Displays all the Data WHERE the Year was between 1960 AND 1969.
SELECT * FROM MusicData WHERE Year >= 1960 AND Year <= 1969;

-- 11. Display all of the hits that have ???Rock??? in the title
-- Displays all the Data WHERE the Title is LIKE "%Rock%". Will find anything that has rock in the title.
SELECT * FROM MusicData WHERE Title LIKE "%Rock%";

-- 12. Display all of the hits from the 00s.
-- Displays all the Data WHERE the Year was between 1900 AND 1909.
SELECT * FROM MusicData WHERE Year <= 1909 AND Year >= 1900;

-- 13. How many hits were in the 00s
-- Shows the count of hits returned from SELECT statement. Counts only the ones that follow the WHERE Year <= 1909 AND Year >= 1900, which basically means anything from the 00s.
SELECT COUNT(*) FROM MusicData WHERE Year <= 1909 AND Year >= 1900;

-- 14. Display all of the hits that peaked below ???2???
-- Displays all the Data WHERE Peak was less than 2.
SELECT * FROM MusicData WHERE Peak < 2;

-- 15. Display all the hits that peaked at 1 from ???Adele???
-- Displays all the Data WHERE Peak was 1 AND the Artist was Adele.
SELECT * FROM MusicData WHERE Peak = 1 AND Artist = "Adele";

-- Drops the music database. 
DROP DATABASE music;