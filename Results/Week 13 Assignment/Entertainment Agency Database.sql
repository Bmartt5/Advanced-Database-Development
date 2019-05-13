SELECT 
    Entertainers.EntStageName,
    SUM(Engagements.ContractPrice) AS TotContPrice 
FROM
    (entertainers
    INNER JOIN engagements ON entertainers.EntertainerID = engagements.EntertainerID)
GROUP BY Entertainers.EntStageName
HAVING SUM(engagements.ContractPrice) > 15000
