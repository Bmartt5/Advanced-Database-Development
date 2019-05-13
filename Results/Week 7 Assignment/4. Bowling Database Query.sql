SELECT Distinct CaptainID,
(SELECT MAX(RawScore) FROM Bowler_Scores ) As [Best Raw Game Score]
FROM Bowlers B
Join Teams T
ON T.TeamID = B.TeamID
Join Bowler_Scores BS
ON T.TeamID = B.TeamID


select*
from Bowler_Scores

select *
from Teams

select *
from Bowlers
