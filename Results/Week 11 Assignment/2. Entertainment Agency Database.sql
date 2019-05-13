SELECT  COUNT(*) * 100.0 / SUM(COUNT(*)) OVER() AS PercentOfFemales
FROM entertainmentagencyexample.members
GROUP BY Gender
