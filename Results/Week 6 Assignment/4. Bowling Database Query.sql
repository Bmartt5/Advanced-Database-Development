SELECT T.TourneyID, T.TourneyLocation, M.GameNumber, TM.MatchID
FROM Match_Games M
LEFT JOIN Tourney_Matches TM
ON M.MatchID = TM.MatchID
LEFT JOIN Tournaments T
ON T.TourneyID = TM.TourneyID
WHERE M.GameNumber IS NOT NULL