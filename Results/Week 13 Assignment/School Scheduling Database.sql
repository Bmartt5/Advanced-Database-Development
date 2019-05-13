SELECT 
    Categories.CategoryDescription,
    COUNT(Classes.ClassID) AS CntOfClasses
FROM
    (classes
    INNER JOIN Subjects ON Classes.SubjectID = Subjects.SubjectID)
        INNER JOIN
    Categories ON Subjects.CategoryID = Categories.CategoryID
GROUP BY Categories.CategoryDescription
HAVING COUNT(Classes.ClassID) >= 3