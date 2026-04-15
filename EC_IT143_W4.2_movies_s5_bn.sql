-- Q: Which movie genres have the highest average user ratings?
DROP TABLE IF EXISTS dbo.tbl_movie_ratings_by_genre;
SELECT * INTO dbo.tbl_movie_ratings_by_genre
FROM dbo.vw_movie_ratings_by_genre
WHERE 1 = 2;