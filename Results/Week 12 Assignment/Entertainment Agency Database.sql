SELECT Entertainers.EntStageName, 
SUM(Engagements.ContractPrice) AS TotContracts
FROM Entertainmentagencyexample.Entertainers
INNER JOIN Entertainmentagencyexample.Engagements
ON Entertainers.EntertainerID = Engagements.EntertainerID
GROUP BY Entertainers.EntStageName
ORDER BY Engagements.ContractPrice DESC