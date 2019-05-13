SELECT DATEDIFF( DAY, StartDate , EndDate ) AS [Number of Days], EngagementNumber, CustomerID, EntertainerID
FROM Engagements
ORDER BY [number of days] DESC