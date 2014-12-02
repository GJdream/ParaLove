CREATE DATABASE dating_paralove;
use dating_paralove;

CREATE TABLE Person(SSN CHAR(11), Password CHAR(20), FirstName VARCHAR(50), LastName VARCHAR(50), Street VARCHAR(50), City VARCHAR(50), State VARCHAR(50), Zipcode INT, Email VARCHAR(100), Telephone VARCHAR(15));
alter table Person add PRIMARY KEY (SSN);

CREATE TABLE Employee (SSN CHAR(11), Role VARCHAR(50), StartDate DATE, HourlyRate INT);
alter table Employee add PRIMARY KEY (SSN);
alter table Employee add constraint FOREIGN KEY (SSN) REFERENCES Person(SSN) ON DELETE CASCADE;

CREATE TABLE User(SSN CHAR(11), PPP VARCHAR(50), Rating INT, DateOfLastAct DATETIME);
alter table User add PRIMARY KEY (SSN);
alter table User add constraint FOREIGN KEY (SSN) REFERENCES Person(SSN) ON DELETE CASCADE;

CREATE TABLE Profile (ProfileID CHAR(20),OwnerSSN CHAR(11), DatingAgeRangeStart INT, DatingAgeRangeEnd INT, DatinGeoRange INT, M_F VARCHAR(10), Hobbies VARCHAR(1000), Height INT, Weight INT, HairColor VARCHAR(20), CreationDate DATETIME NOT NULL, LastModDate DATETIME NOT NULL);
alter table Profile add PRIMARY KEY (ProfileID);
alter table Profile add constraint FOREIGN KEY (OwnerSSN) REFERENCES User(SSN) ON DELETE CASCADE;

CREATE TABLE Date(
Profile1 CHAR(20),
Profile2 CHAR(20),
CustRep CHAR(11),
Date_Time DATETIME,
Location VARCHAR(100),
BookingFee INT,
Comments TEXT,
User1Rating INT,
User2Rating INT,
PRIMARY KEY (Profile1, Profile2, Date_Time),
FOREIGN KEY (Profile1) REFERENCES Profile(ProfileID) 
ON DELETE CASCADE,
FOREIGN KEY (Profile2) REFERENCES Profile(ProfileID) 
ON DELETE CASCADE,
FOREIGN KEY (CustRep) REFERENCES Employee(SSN) 
ON DELETE SET NULL);

Create TABLE Likes(
Liker CHAR(20),
Likee CHAR(20),
Date_Time DATETIME,PRIMARY KEY (Liker, Likee, Date_Time),
FOREIGN KEY (Liker) REFERENCES Profile(ProfileID) 
ON DELETE CASCADE,
FOREIGN KEY (Likee) REFERENCES Profile(ProfileID) 
ON DELETE CASCADE);

CREATE TABLE BlindDate(
ProfileA CHAR(20),
ProfileB CHAR(20),
ProfileC CHAR (20),
Date_Time DATETIME, 
PRIMARY KEY (ProfileA, ProfileB, ProfileC, Date_Time),
FOREIGN KEY (ProfileA) REFERENCES Profile(ProfileID) 
ON DELETE CASCADE,
FOREIGN KEY (ProfileB) REFERENCES Profile(ProfileID) 
ON DELETE CASCADE,
FOREIGN KEY (Profilec) REFERENCES Profile(ProfileID) 
ON DELETE CASCADE	);

CREATE TABLE SuggestedBy(
CustRep CHAR(11),
Profile1 CHAR(20),
Profile2 CHAR(20),
Date_Time DATETIME,
PRIMARY KEY (CustRep, Profile1, Profile2, Date_Time),
FOREIGN KEY (Profile1) REFERENCES Profile(ProfileID) 
ON DELETE CASCADE,
FOREIGN KEY (Profile2) REFERENCES Profile(ProfileID) 
ON DELETE CASCADE,
FOREIGN KEY (CustRep) REFERENCES Employee(SSN) 
ON DELETE CASCADE );

CREATE TABLE Account(
OwnerSSN CHAR(11),
CardNumber VARCHAR(16),
AcctNum CHAR(30),
PRIMARY KEY(OwnerSSN, CardNumber, AcctNum),
FOREIGN KEY (OwnerSSN) REFERENCES USER(SSN) 
ON DELETE CASCADE );


CREATE VIEW PersonProfile (SSN, ProfileID, FirstName, LastName) AS
    SELECT 	SSN, ProfileID, FirstName, LastName
    FROM 	profile FULL JOIN person
    ON 		OwnerSSN = SSN;

CREATE VIEW PersonProfileDates AS
    SELECT 	*
    FROM 	PersonProfile FULL JOIN date
    WHERE 	ProfileID=Profile1 OR ProfileID=Profile2;

CREATE VIEW AvgDateRating (Date, AvgRating) as
    SELECT Date(Date_Time) AS D, AVG((User1Rating+User2Rating)/2)
    FROM date
    GROUP BY D;
