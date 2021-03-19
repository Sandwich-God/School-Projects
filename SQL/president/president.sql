-- 
-- SQL President Database
-- Reuben Clemens
-- Due: 3-17-21
-- 

-- Creates a new database name president.
CREATE DATABASE president;

-- Opens the president database for data to be put in.
USE president;

-- Creates a table named PresidentData.
CREATE TABLE PresidentData (
-- PN is the primary key.
	PN INTEGER PRIMARY KEY,
-- defines field as VARCHAR.
	LN VARCHAR(20),
	FN VARCHAR(20),
	P VARCHAR(50),
	N VARCHAR(50),
	YB VARCHAR(10),
	YD VARCHAR(10),
	T VARCHAR(10),
	D VARCHAR(10),
	OP VARCHAR(300),
	MA VARCHAR(255),
	W VARCHAR(255));

-- Used to create index on table, retrieves data from database more quickly.
CREATE INDEX idx_LN on PresidentData(LN);
CREATE INDEX idx_P on PresidentData(P);

-- Shows the structure of the table.
DESCRIBE PresidentData;

-- Inserts a record into the table. Uses the parameters in defined in the CREATE TABLE line.
INSERT INTO PresidentData (PN, LN, FN, P, N, YB, YD, T, D, OP, MA, W)
-- Defines the values for the INSERT INTO.
	VALUES (1, 'Washington', 'George', 'Federalist', 'Father of His Country', '1732', '1799', '2', '8-90s', 'Member of Virginia House of Burgesses, Member of Continental Congress, Chairman of the Constitutional Convention, Commander', 'First President, Presided over creation the creation of the U.S. Constituion, Victory against the British', 'None'),
	(2, 'Adams', 'John', 'Federalist', 'Atlas of Independence', '1735', '1826', '1', '9-00s', 'Member of Continental Congress, Commissioner to France, Minister to the Netherlands, Minister to England, Vice President', 'Succesfuly defended Brisih soldiers involved with Boston Massacre, PRominent role in American Revolution, leading member of Continental Congress, Played Administering role in American Revolutionary War, Helped with 1783 Treaty of Paris', 'Quasi War'),
	(3, 'Jefferson', 'Thomas', 'Democratic-Republican', 'Man of the People', '1743', '1826', '2', '00s', 'Member of Virginia House of Burgesses, Member of Continental Congress, Govenor of virginia, Member of Continental Congress, Minister to France, Secretary of State, Vice President', 'Established US Military Academy, Purchase of Louisiana, Admission of Ohio into Union, Lewis Clarke expedition, abolition of slave trade, Chesapke affair and Embargo Act', 'Tripolitan war'),
	(4, 'Madison', 'James', 'Democratic-Republican', 'Father of the Constitution', '1751', '1836', '2', '0-10s', 'Member of Virginia Constitutional Convention, Member of Continental Congress, Member of Virginia Legislature, Member of Constitutional Convention, Member of U.S. House of Representatives, Secretary of State', 'Helped write the Bill of Rights, Erskine Agreement', 'War of 1812'),
	(5, 'Monroe', 'James', 'Democratic-Republican', 'The Last Cocked Hat', '1758', '1831', '2', '1-20s', 'Member of Continental Congress, United States Senator, Minister to France, Governor of Virginia, Minister to France and England, Secretary of State, Secretary of War', 'Monroe Doctrine', 'First Seminole War'),
	(6, 'Adams', 'John', 'Whig', 'Old Man Eloquent', '1767', '1848', '1', '20s', 'Secretary to U.S. Minister to Russia, Minister to the Netherlands, Minister to Prussia, United States Senator, Minister to Russia, Peace Commissioner at Treaty of Ghent, Secretary of State, Member of U.S. House of Representatives', 'Negotiated Florida purchase, Author of Monroe Doctrine, Prominent opponent of Slavery', 'None'),
	(7, 'Jackson', 'Andrew', 'Democrat', 'Old Hickory', '1767', '1845', '2', '2-30s', 'Member of U.S. House of Representatives, United States Senator, Justice on Tennessee Supreme Court, Justice on Tennessee Supreme Court, Governor of the Florida Territory, United States Senator', 'Jackson lead a victory against the British', 'None'),
	(8, 'Buren', 'Martin', 'Democrat', 'The Little Magician', '1782', '1862', '1', '3-40s', 'New York State Senator, New York Attorney-General, United States Senator, Governor of New York, Secretary of State, Minister to England, Vice President', 'Contributed to creating healthy foreign relations', 'Aroostook war'),
	(9, 'Harrison', 'William', 'Whig', 'Old Tippecanoe', '1773', '1841', '1', '40s', 'Secretary of Northwest Territory, Territorial Delegate to Congress, Territorial Governor of Indiana, U.S. Congressman from Ohio, United States Senator, Minister to Colombia', 'Recaptured Detroit', 'None'),
	(10, 'Tyler', 'John', 'Whig', 'His Accidency', '1790', '1862', '1', '40s', 'Member of Virginia House of Delegates, Member of U.S. House of Representatives, Virginia State Legislator, Governor of Virginia, United States Senator, Vice President, ', 'Annexation of Texas', 'None'),
	(11, 'Polk', 'James', 'Democrat', 'Young Hickory', '1795', '1849', '1', '40s', 'Member of Tennessee House of Representatives, Member of U.S. House of Representatives, Speaker of the House, Governor of Tennessee', 'OREGON TREATY', 'Mexican–American War'),
	(12, 'Taylor', 'Zachary', 'Whig', 'Old Rough and Ready', '1784', '1850', '1', '4-50s', 'General', 'War hero', 'None'),
	(13, 'Filmore', 'Millard', 'Whig', 'The American Louis Philippe', '1800', '1874', '1', '50s', 'Member of New York State Assembly, Member of U.S. House of Representatives, Comptroller of New York, Vice President', 'War Hero', 'None'),
	(14, 'Pierce', 'Franklin', 'Democrat', 'Young Hickory of the Granite Hills', '1804', '1869', '1', '50s', 'Served in New Hampshire Legislature, Member of U.S. House of Representatives, Unites States Senate', 'Nationality laws changed to allow children abroad to US Parents to be considered citizens', 'None'),
	(15, 'Buchanan', 'James', 'Democrat', 'Ten-Cent Jimmy', '1791', '1868', '1', '5-60s', 'Member of Pennsylvania House of Representatives, Member of U.S. House of Representatives, Minister to Russia, United States Senator, Secretary of State, Minister to England', 'Became president', 'None'),
	(16, 'Lincoln', 'Abraham', 'Republican', 'Honest Abe', '1809', '1865', '1', '60s', 'Elected to Illinois State Legislature, Member of U.S. House of Representatives', 'Won Civil War, Helped end slavery', 'Civil War'),
	(17, 'Johnson', 'Andrew', 'Unionist', 'The Tennessee Tailor', '1808', '1875', '1', '60s', 'Served as Alderman of Greeneville, Tennessee, Elected Mayor of Greeneville, Tennessee, Member of Tennessee State Legislature, Member of U.S. House of Representatives, Governor of Tennessee, United States Senator, Military Governor of Tennessee, Vice President, United States Senator', 'Increased funds for Schools', 'Civil War'),
	(18, 'Grant', 'Ulysses', 'Republican', 'Hero of Appomattox', '1822', '1885', '2', '6-70s', 'General', 'Led the Union Army to Victory', 'None'),
	(19, 'Hayes', 'Rutherford', 'Republican', 'His Fraudulency', '1822', '1893', '1', '7-80s', 'Member of U.S. House of Representatives, Governor of Ohio', 'Civil Rights reform, Belva Bill', 'None'),
	(20, 'Garfield', 'James', 'Republican', 'Preacher President', '1831', '1881', '1', '80s', 'Member of Ohio State Senate, Member of U.S. House of Representatives, Elected to United States Senate', 'Pushed for Civil Rights, Cleaned corruption in post office', 'None'),
	(21, 'Arthur', 'Chester', 'Republican', 'The Gentleman Boss', '1829', '1886', '1', '80s', 'Vice president', 'Chinese Exclusion Act vetoed', 'None'),
	(22, 'Cleveland', 'Grover', 'Democrat', 'Uncle Jumbo', '1837', '1908', '2', '80s', 'Sheriff of Erie County, Mayor of Buffalo, Governor of New York', 'Established ICC', 'None'),
	(23, 'Harrison', 'Benjamin', 'Republican', 'Little Ben', '1833', '1901', '1', '8-90s', 'Officer, brigadier general','Mckinely Tariff, Sherman Antirust Act, Land Revision Act of 1891','None'),
	(24,'Cleveland','Grover','Democrat','Big Steve','1837','1908','2','80s-90s','Was a Sheriff of Erie County, Mayor of Buffalo City, and was nominated governor of New York','The leader of the pro-business Bourbon Democrats who opposed high tariffs','None'),
	(25,'Mckinley','William','Republican','Liberator of Cuba','1843','1901','1','90s-0s','Joined the twenty-third Ohio Volunteer Infantry, congressman, and governor','Relief for Cuba, Dingley Tariff Law, and American defense in Cuba','Spanish-American War'),
	(26,'Roosevelt','Theodore','Republican','Teddy','1858','1919','2','10s','25th Vice President,33rd Governor of New York, and Assistant Secretary of the Navy','promoted conservation movement, expanded the system of national parks and national forests, and supported labor unions','None'),
	(27,'Taft','William','Republican','Old Bill','1857','1930','1','0s-10s','served as Professor of Law at Yale, Chief Justice','16th amendment, Mann Act, and Mobilizing along Mexican Border','None'),
	(28,'Wilson','Woodrow','Democrat','The Professor','1856','1924','2','10s-20s','Governor of New Jersey, President of Princeton University, and book writer','Led America through World War 1, created the League of Nations, and created the nineteenth amendment','World War 1'),
	(29,'Harding','Warren','Republican','Wobbly Warren','1865','1923','1','20s','Won Ohio Senator','Budget and Accounting Act, Fordney-McCumber Tariff','None'),
	(30,'Coolidge','Calvin','Republican','Cool Cal','1872','1933','2','20s','Massachusetts governor','lowered national debt, granted citizenship to Native Americans, and Kellogg-Briand Pact','None'),
	(31,'Hoover','Herbert','Republican','Bert','1874','1964','1','20s-30s','mining engineer and businessnman','Smoot-Hawley Tariff Act, Hoover Dam, and funding public works', 'None'),
	(32,'Roosevelt','Franklin','Democrat','F.D.R','1882','1945','4','30s-40s','Senator of New York, Governor of New York','Was elected for 4 terms, created the New Deal program, and led America through World War 2','World War 2'),
	(33, 'Truman','Harry','Democrat','Haberdasher Harry','1884','1972','2','40s-50s','Fought in World War 1 as a captain, joined the county court in Jackson County, and became a Senator','Dropped the A-bomb ending World War 2, created the policy of containment, and took part in Korean War', 'World War 2, Korean War, Cold War'),
	(34,'Eisenhower','Dwight','Republican','Ike','1890','1969','1','50s-60s','In the Military, World War 2 hero','signed the Civil Rights Act of 1957, sent troops to Little Rock to help enforce rules','Korean War, Cold War, Vietnam War'),
	(35,'Kennedy','John','Democrat','J.F.K','1917','1963','1','60s','Journalist, House of Representatives member, and Senator','Prevented Cold War escalation, improved the Economy, and signed the Nuclear Test Ban Treaty','Cold War,Vietnam War,Bay of Pigs Invasion'),
	(36,'Johnson','Lyndon','Democrat','LBJ','1908','1973','2','60s','37th vice president','Major tax cut, Clean Air Act, and Civil Rights Act of 1964','Vietnam War, Cold War'),
	(37,'Nixon','Richard','Republican','Red Hunter','1913','1994','1','60s-70s','36th vice president','Signed the Anti-Ballistic Missile Treaty, and Salt 1','Vietnam War, Cold War'),
	(38,'Ford','Gerald','Republican','Jerry','1913','2006','1','70s', 'Member of U.S. House of Representatives, Vice President','Went to Law School, joined the Navy','Vietnam War, Cold War'),
	(39,'Carter','James','Democrat','The Peanut Farmer','1924', null, '1','70s-80s','Georgia Senator, Georgia Governor', 'The Department of Energy Organization Act, Negotiate Peace between Egypt and Israel','Cold War'),
	(40,'Reagan','Ronald','Republican','Ronnie','1911','2004','2','80s','Governor','Tax Reform, Inflation Decrease, and Job Growth','Cold War,Grenada'),
	(41,'Bush','George','Republican','Papa Bush','1924','2018','1','80s-90s','Joined the House of Representatives, vice president', 'landmark Americans with Disabilities Act, Ending Cold War, Awarded Presidential Medal of Freedom', 'U.S. Invasion of Panama, Persian Gulf War, Cold War'),
	(42,'Clinton','William','Democrat','Bill','1946',null,'2','90s-00s','Went to law school, state attorney general','Signed NAFTA, Violent Crime Control Act, and Law Enforcement Act','Intervention in Bosnia and Herzegovina, Cold War'),
	(43,'Bush','George','Republican','Bush Jr.','1946',null, '2','00s','vice president, U.S. Ambassador in the UN, and member of teh House of Representatives','Pushed a tax cut, No Child Left Behind Act, and Partial-Birth Abortion Ban Act','Invasion of Iraq, Invasion of Afghanistan,War in the Northwest Pakistan, Somalia and Northeastern Kenya'),
	(44,'Obama','Barack','Democrat','Barry','1961',null,'2','00s-10s','Went to law school','major stimulus package, partial extension of the Bush tax cuts, and healthcare reform','Operation Ocean Shield,Intervention in Libya,Lords Resistance Army,intervention in Iraq,intervention in Syria, Yemeni Civil War, intervention in Libya'),
	(45,'Trump','Donald','Republican','Orange','1946',null,'1','10s-20s','businessman','Shutdown of the government for 2 weeks to get money for wall','None'),
	(46,'Biden','Joe','Democrat','Cup of Joe','1942',null,'1','20s','vice president','stimulus check','None');


-- 1. Display all presidents with the first name of “James”. (first and last)
SELECT CONCAT(FN, ' ', LN) AS 'Presidents with the first name "James"' FROM PresidentData WHERE FN = 'James';

-- 2. Display all presidents that are a “Democrat”. (first, last & party)
SELECT CONCAT(FN, ' ', LN, '', P) AS 'Presidents who are Democrats' FROM PresidentData WHERE P = 'Democrat';

-- 3. Display all presidents that are a “Republican”. (first, last & party)
SELECT CONCAT(FN, ' ', LN, ' ', P) AS 'Presidents who are Republican' FROM PresidentData WHERE P = 'Republican';

-- 4. Display all presidents that aren’t “Republican or Democrat”. (first, last & party)
SELECT CONCAT(FN, ' ', LN, ' ', P) AS 'Presidents who are neither Republican or Democrat' FROM PresidentData WHERE P != 'Democrat' AND P != 'Republican';

-- 5. Display all presidents that last name starts with an “M”. (first and last)
SELECT CONCAT(FN, ' ', LN) AS 'Presidents with the last name that start with "M"' FROM PresidentData WHERE LN LIKE 'M%';

-- 6. Display all presidents that served 1 term. (first, last & terms)
SELECT CONCAT(FN, ' ', LN, ' ', T) AS 'Presidents who have served 1 term' FROM PresidentData WHERE T = 1;

-- 7. Display all presidents that served 2 terms. (first, last & terms)
SELECT CONCAT(FN, ' ', LN, ' ', T) AS 'Presidents who have served 2 terms' FROM PresidentData WHERE T = 2;

-- 8. Display all presidents that served more than 2 terms. (first, last & terms)
SELECT CONCAT(FN, ' ', LN, ' ', T) AS 'Presidents who have served more than 2 terms' FROM PresidentData WHERE T > 2;

-- 9. Display all presidents that served during peace time. (first & last)
SELECT CONCAT(FN, ' ', LN) AS 'Presidents who served during peace time' FROM PresidentData WHERE W = 'None';

-- Drops the president database. 
DROP DATABASE president;