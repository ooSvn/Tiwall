SELECT AVG(Point) AS AveragePoints
FROM comment
WHERE Event_ID = 220 AND Point IS NOT NULL;
