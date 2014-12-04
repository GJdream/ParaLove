CREATE DATABASE paralove;
use paralove;

CREATE TABLE Person(SSN CHAR(11), Password CHAR(20), FirstName VARCHAR(50), LastName VARCHAR(50), Street VARCHAR(50), City VARCHAR(50), State VARCHAR(50), Zipcode INT, Email VARCHAR(100), Telephone VARCHAR(15));
alter table Person add PRIMARY KEY (SSN);
INSERT INTO Person VALUES ('111-11-1111', '111@11', 'Veronica', 'Alvarado', '45 Rockefeller Plaza', 'New York', 'New York', 10111, 'Fusce@velitPellentesque.net', '(612) 506-2244');
INSERT INTO Person VALUES ('222-22-2222', '222@22', 'Bo', 'Osborne', '45 Rockefeller Plaza', 'New York', 'New York', 10111, 'Fusce@velitPellentesque.net', '(592) 765-8277');
INSERT INTO Person VALUES ('333-33-3333', '333@33', 'Hashim', 'Ross', '350 5th Ave', 'New York', 'New York', 10118, 'Fusce@velitPellentesque.net', '(276) 634-6949');
INSERT INTO Person VALUES ('444-44-4444', '444@44', 'Shaine', 'Terrell', '350 5th Ave', 'New York', 'New York', 10118, 'Fusce@velitPellentesque.net', '(600) 803-9508');
INSERT INTO Person VALUES ('555-55-5555', '555@55', 'Isabelle', 'Odonnell', 'Schomburg Apartments, 350 Circle Road', 'New York', 'New York', 11790, 'Fusce@velitPellentesque.net', '(934) 241-3862');
INSERT INTO Person VALUES ('666-66-6666', '666@66', 'Fletcher', 'Trujillo', '700 Health Sciences Dr', 'New York', 'New York', 11790, 'Fusce@velitPellentesque.net', '(990) 760-1480');
INSERT INTO Person VALUES ('777-77-7777', '777@77', 'Malachi', 'Vasquez', '700 Health Sciences Dr', 'New York', 'New York', 11790, 'Fusce@velitPellentesque.net', '(226) 193-8257');
INSERT INTO Person VALUES ('888-88-8888', '888@88', 'Brenna', 'Cross', 'Schomburg Apartments, 350 Circle Road', 'New York', 'New York', 11790, 'Fusce@velitPellentesque.net', '(968) 409-7641');
INSERT INTO Person VALUES ('999-99-9999', '999@99', 'Desiree', 'Berg', '116th St & Broadway', 'New York', 'New York', 10111, 'Fusce@velitPellentesque.net', '(237) 321-3189');

CREATE TABLE Employee (SSN CHAR(11), Role VARCHAR(50), StartDate DATE, HourlyRate INT);
alter table Employee add PRIMARY KEY (SSN);
alter table Employee add constraint FOREIGN KEY (SSN) REFERENCES Person(SSN) ON DELETE CASCADE;
INSERT INTO Employee VALUES ('111-11-1111', 'Manager', '2014-10-4', 250);
INSERT INTO Employee VALUES ('222-22-2222', 'CustRep', '2014-10-4', 150);
INSERT INTO Employee VALUES ('333-33-3333', 'CustRep', '2014-10-4', 100);
INSERT INTO Employee VALUES ('444-44-4444', 'CustRep', '2014-10-4', 75);

CREATE TABLE User(SSN CHAR(11), PPP VARCHAR(50), Rating INT, DateOfLastAct DATETIME);
alter table User add PRIMARY KEY (SSN);
alter table User add constraint FOREIGN KEY (SSN) REFERENCES Person(SSN) ON DELETE CASCADE;
INSERT INTO User VALUES ('555-55-5555', 'Super-User', 3, '2014-10-07 05:53:13');
INSERT INTO User VALUES ('666-66-6666', 'Good-User', 3, '2014-10-05 05:27:28');
INSERT INTO User VALUES ('777-77-7777', 'Good-User', 4, '2014-10-08 22:37:07');
INSERT INTO User VALUES ('888-88-8888', 'User-User', 3, '2014-10-04 09:10:12');
INSERT INTO User VALUES ('999-99-9999', 'User-User', 2, '2014-10-05 18:28:02');

CREATE TABLE Profile (ProfileID CHAR(20), OwnerSSN CHAR(11), Age INT, DatingAgeRangeStart INT, DatingAgeRangeEnd INT, DatinGeoRange INT, M_F VARCHAR(10), Hobbies VARCHAR(1000), Height INT, Weight INT, HairColor VARCHAR(20), CreationDate DATETIME NOT NULL, LastModDate DATETIME NOT NULL);
alter table Profile add PRIMARY KEY (ProfileID);
alter table Profile add constraint FOREIGN KEY (OwnerSSN) REFERENCES User(SSN) ON DELETE CASCADE;
INSERT INTO Profile VALUES ('Isabelle2014', '555-55-5555', 22, 20, 25, 5, 'Female', 'Shopping, Cooking', 5.7, 110, 'Black', '2014-10-04 22:43:25', '2014-10-09 11:51:19');
INSERT INTO Profile VALUES ('Isabelle2013', '555-55-5555', 22, 20, 22, 29, 'Female', 'Shopping, Dance, Mountain Claiming', 5.7 , 120, 'Black', '2014-10-04 00:37:12', '2014-10-04 17:08:38');
INSERT INTO Profile VALUES ('Fletcher2013', '666-66-6666', 25, 20, 28, 18, 'Female', 'Reading, Basketball', 5.6, 150, 'Brown', '2014-10-04 19:21:37', '2014-10-07 01:25:55');
INSERT INTO Profile VALUES ('Fletcher_Trujillo', '666-66-6666', 23, 19, 30, 8, 'Female', 'Shopping, Volleyball', 5.6, 150, 'Brown', '2014-10-04 18:26:49', '2014-10-05 00:42:03');
INSERT INTO Profile VALUES ('VazquezFromAlajuela', '777-77-7777', 26, 20, 28, 15, 'Male', 'Hunting, Running', 5.7, 170, 'Black', '2014-10-04 17:13:30', '2014-10-07 04:16:43');
INSERT INTO Profile VALUES ('Brenna_Berlin', '888-88-8888', 18, 19, 21, 8, 'Female', 'Dance, Acting', 6, 180, 'Blonde', '2014-10-04 20:20:55', '2014-10-07 12:21:58');
INSERT INTO Profile VALUES ('DesiraeBerg', '999-99-9999', 20, 19, 25, 5, 'Male', 'Water sports, Football', 5.6, 200, 'Red', '2014-10-04 19:13:18', '2014-10-04 15:54:48');

CREATE TABLE Date(Profile1 CHAR(20), Profile2 CHAR(20), CustRep CHAR(11), Date_Time DATETIME, Location VARCHAR(100), BookingFee INT, Comments TEXT, User1Rating INT, User2Rating INT);
alter table Date add PRIMARY KEY (Profile1, Profile2, Date_Time);
alter table Date add constraint FOREIGN KEY (Profile1) REFERENCES Profile(ProfileID) ON DELETE CASCADE;
alter table Date add constraint FOREIGN KEY (Profile2) REFERENCES Profile(ProfileID) ON DELETE CASCADE;
alter table Date add constraint FOREIGN KEY (CustRep) REFERENCES Employee(SSN) ON DELETE SET NULL;
INSERT INTO Date VALUES ('Isabelle2014', 'VazquezFromAlajuela', '222-22-2222', '2014-10-06 21:49:30', 'The Mall', 90.91, 'Comments Here', 3, 3);
INSERT INTO Date VALUES ('Isabelle2013', 'DesiraeBerg', '222-22-2222', '2014-10-04 21:39:42', 'Port Jeff Cinema', 65.25, 'Comments Here', 3, 5);
INSERT INTO Date VALUES ('Fletcher2013', 'VazquezFromAlajuela', '333-33-3333', '2014-10-06 04:30:52', 'Ruvos Restaurant', 42.75, 'Comments Here', 3, 1);
INSERT INTO Date VALUES ('Brenna_Berlin', 'DesiraeBerg', '333-33-3333', '2014-10-06 12:21:06', 'The Mall', 36.46, 'Comments Here', 2, 3);
INSERT INTO Date VALUES ('VazquezFromAlajuela', 'Brenna_Berlin', '444-44-4444', '2014-10-06 05:34:04', 'Turkish Restaurant', 69.26, 'Comments Here', 4, 4);

Create TABLE Likes(Liker CHAR(20), Likee CHAR(20), Date_Time DATETIME);
alter table Likes add PRIMARY KEY (Liker, Likee, Date_Time);
alter table Likes add constraint FOREIGN KEY (Liker) REFERENCES Profile(ProfileID) ON DELETE CASCADE;
alter table Likes add constraint FOREIGN KEY (Likee) REFERENCES Profile(ProfileID) ON DELETE CASCADE;

CREATE TABLE BlindDate(ProfileA CHAR(20), ProfileB CHAR(20), ProfileC CHAR (20), Date_Time DATETIME);
alter table BlindDate add PRIMARY KEY (ProfileA, ProfileB, ProfileC, Date_Time);
alter table BlindDate add constraint FOREIGN KEY (ProfileA) REFERENCES Profile(ProfileID) ON DELETE CASCADE;
alter table BlindDate add constraint FOREIGN KEY (ProfileB) REFERENCES Profile(ProfileID) ON DELETE CASCADE;
alter table BlindDate add constraint FOREIGN KEY (Profilec) REFERENCES Profile(ProfileID) ON DELETE CASCADE;

CREATE TABLE SuggestedBy(CustRep CHAR(11), Profile1 CHAR(20), Profile2 CHAR(20), Date_Time DATETIME);
alter table SuggestedBy add PRIMARY KEY (CustRep, Profile1, Profile2, Date_Time);
alter table SuggestedBy add constraint FOREIGN KEY (Profile1) REFERENCES Profile(ProfileID) ON DELETE CASCADE;
alter table SuggestedBy add constraint FOREIGN KEY (Profile2) REFERENCES Profile(ProfileID) ON DELETE CASCADE;
alter table SuggestedBy add constraint FOREIGN KEY (CustRep) REFERENCES Employee(SSN) ON DELETE CASCADE;

CREATE TABLE Account(OwnerSSN CHAR(11), CardNumber VARCHAR(16), AcctNum CHAR(30));
alter table Account add PRIMARY KEY(OwnerSSN, CardNumber, AcctNum);
alter table Account add constraint FOREIGN KEY (OwnerSSN) REFERENCES USER(SSN) ON DELETE CASCADE;


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

CREATE VIEW RepRevenue (CustRep, Revenue) AS
    SELECT 	SSN, SUM(BookingFee)
    FROM 	employee FULL JOIN date ON SSN=CustRep 
    WHERE 	Role = 'CustRep' 
    GROUP BY SSN;

CREATE VIEW CusRevenue(CustomerSSN, Revenue) AS
    SELECT 	SSN, SUM(BookingFee) 
    FROM 	PersonProfileDates P 
    GROUP BY SSN;

CREATE VIEW DateCount (CustomerSSN, NumDates) AS
    SELECT 	P.SSN, COUNT(*) 
    FROM 	PersonProfileDates P 
    GROUP BY P.SSN;

CREATE VIEW ReceivedCount(CustomerSSN, LikesReceived, NumLikes) AS 
    (SELECT     OwnerSSN, COUNT(*) AS LikesReceived,0 AS NumLikes
    FROM 	Likes FULL JOIN Profile ON Likee = ProfileID 
    GROUP BY    OwnerSSN) 
    UNION
    (SELECT     OwnerSSN, 0 AS LikesReceived, COUNT(*) AS NumLikes
     FROM 	Likes FULL JOIN profile ON Liker = ProfileID
     GROUP BY 	OwnerSSN);


CREATE VIEW TotalLikes (CustomerSSN, LikesReceived, NumLikes) AS
    SELECT 	CustomerSSN, SUM(LikesReceived), SUM(NumLikes)
    FROM 	ReceivedCount T
    GROUP BY 	CustomerSSN;

CREATE VIEW UserList AS
    SELECT 	*
    FROM 	user NATURAL JOIN person;
