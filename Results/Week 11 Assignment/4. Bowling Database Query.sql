SELECT DISTINCT BowlerLastName, BowlerFirstName
FROM bowlingleagueexample.bowlers
INNER JOIN bowlingleagueexample.bowler_scores
ON bowlers.BowlerID = bowler_scores.BowlerID
WHERE RawScore > (SELECT AVG(RawScore)
				  FROM bowlingleagueexample.bowler_scores
                  );