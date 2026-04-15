-- Q: Which movie genres have the highest average user ratings?
DROP PROCEDURE IF EXISTS dbo.sp_refresh_movie_ratings;
GO
CREATE PROCEDURE dbo.sp_refresh_movie_ratings
AS
BEGIN
    TRUNCATE TABLE dbo.tbl_movie_ratings_by_genre;
    INSERT INTO dbo.tbl_movie_ratings_by_genre
    SELECT * FROM dbo.vw_movie_ratings_by_genre;
END;