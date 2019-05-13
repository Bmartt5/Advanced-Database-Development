SELECT StfLastname, StfFirstName
FROM schoolschedulingexample.staff
WHERE DateHired = (SELECT MIN(DateHired) 
					FROM schoolschedulingexample.staff
                    );