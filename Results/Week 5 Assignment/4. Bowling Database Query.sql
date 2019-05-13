 SELECT A.TeamName, A.TeamID, B.WinningTeamID, B.MatchID, B.GameNumber 
 FROM Teams A
 RIGHT OUTER JOIN Match_Games B
 ON A.TeamID = B.MatchID