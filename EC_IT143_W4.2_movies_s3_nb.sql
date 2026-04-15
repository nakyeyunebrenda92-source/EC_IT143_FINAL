-- Q: Which movie genres have the highest average user ratings?

SELECT m.genre, 
       AVG(CAST(r.User_Rating AS DECIMAL(10, 2))) AS AvgRating
FROM [MyCommunitiesDB].[dbo].[movies_metadata] AS m
INNER JOIN [MyCommunitiesDB].[dbo].[ratings] AS r
    ON m.movie_id = r.Movie_ID
GROUP BY m.genre
ORDER BY AvgRating DESC;