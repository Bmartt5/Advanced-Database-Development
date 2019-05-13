SELECT Subjects.SubjectName, COUNT(Classes.ClassID) AS ClassesOffered
FROM Schoolschedulingexample.Subjects
INNER JOIN Schoolschedulingexample.Classes
ON Subjects.SubjectID = Classes.SubjectID
GROUP BY Subjects.SubjectName
