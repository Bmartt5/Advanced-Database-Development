SELECT Teams.TeamName, 
SUM(WonGame) AS Wins
FROM (bowler_scores
INNER JOIN match_games
ON bowler_Scores.MatchID = Match_Games.MatchID)
INNER JOIN teams
ON Match_games.MatchID = Teams.TeamID
WHERE bowler_scores.WonGame = "1"
GROUP BY teams.TeamName;