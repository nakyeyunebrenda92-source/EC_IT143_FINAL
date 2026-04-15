-- Q: Which movie genres have the highest average user ratings?
INSERT INTO dbo.tbl_movie_ratings_by_genre
SELECT * FROM dbo.vw_movie_ratings_by_genre;