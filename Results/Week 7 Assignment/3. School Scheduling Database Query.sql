SELECT DISTINCT F.StaffID, CONCAT(S.StfFirstName, ' ', S.StfLastname) AS [Faculty Name]
FROM Faculty F
JOIN Faculty_Classes FC
ON F.StaffID = FC.StaffID
JOIN Staff S
ON F.StaffID = S.StaffID
JOIN Classes C
ON FC.ClassID = C.ClassID
WHERE C.MondaySchedule = '0'