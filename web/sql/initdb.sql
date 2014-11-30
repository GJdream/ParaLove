CREATE VIEW PersonProfile (SSN, ProfileID, FirstName, LastName) AS
	SELECT 	SSN, ProfileID, FirstName, LastName
	FROM 	profile FULL JOIN person
    	ON 		OwnerSSN = SSN;

CREATE VIEW PersonProfileDates AS
	SELECT 	*
	FROM 	PersonProfile FULL JOIN date
	WHERE 	ProfileID=Profile1 OR ProfileID=Profile2;

