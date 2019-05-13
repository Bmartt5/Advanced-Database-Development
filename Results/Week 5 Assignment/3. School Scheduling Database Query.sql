SELECT CONCAT(A.StudFirstName, ' ', A.StudLastName) AS [Full Name], B.StartDate AS [Start Date In 2017]
FROM Students A
LEFT OUTER JOIN Classes B
ON A.StudentID = B.ClassID
WHERE StartDate IS NULL
	OR StartDate BETWEEN '2016-12-31' AND '2018-01-01' 
ORDER BY A.StudLastName ASC, A.StudFirstName ASC

