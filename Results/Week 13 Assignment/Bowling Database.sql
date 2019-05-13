SELECT 
    Bowlers.BowlerFirstName,
    Bowlers.BowlerLastName,
    AVG(Bowler_Scores.RawScore) AS CurrentAverageScore
FROM
    Bowlers
        INNER JOIN
    Bowler_Scores ON Bowlers.BowlerID = Bowler_Scores.BowlerID
GROUP BY Bowlers.BowlerFirstName , Bowlers.BowlerLastName
HAVING AVG(Bowler_Scores.RawScore) >= (SELECT 
        AVG(RawScore)
    FROM
        bowlingleagueexample.bowlers
            INNER JOIN
        bowler_scores ON bowlers.BowlerID = bowler_scores.BowlerID)