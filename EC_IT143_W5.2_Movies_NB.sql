/*****************************************************************************************************************
NAME:    Nakyeyune Brenda
DATE:    April 16, 2026
COURSE:  IT143
PURPOSE: Final Project 5.2 - Movies Community Answers
******************************************************************************************************************/

-- Q1: Which movies were the most profitable (Revenue minus Budget)?
-- Author: Nakyeyune Brenda
SELECT title, (revenue - budget) AS profit
FROM dbo.movies_metadata
WHERE budget > 0
ORDER BY profit DESC;

-- Q2: What is the average popularity score of all movies?
-- Author: Kevin Mace
SELECT AVG(popularity) AS average_popularity
FROM dbo.movies_metadata;

-- Q3: List the titles and genres of movies released after 2010.
-- Author: Nakyeyune Brenda
SELECT title, genre, release_date
FROM dbo.movies_metadata
WHERE release_date > '2010'
ORDER BY release_date DESC;

-- Q4: What is the total revenue for all movies in the Animation genre?
-- Author: Nakyeyune Brenda
SELECT SUM(revenue) AS total_animation_revenue
FROM dbo.movies_metadata
WHERE genre = 'Animation';