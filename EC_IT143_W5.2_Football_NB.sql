/*****************************************************************************************************************
NAME:    Nakyeyune Brenda
DATE:    April 16, 2026
COURSE:  IT143
PURPOSE: Final Project 5.2 - Football Community Answers
******************************************************************************************************************/

-- Q1: Which city has the highest total stadium capacity?
-- Author: Nakyeyune Brenda
SELECT HomeCity, SUM(StadiumCapacity) AS total_capacity
FROM dbo.Teams
GROUP BY HomeCity
ORDER BY total_capacity DESC;

-- Q2: How many teams are currently in the database?
-- Author: Kingsley Onyemaechi Edeh
SELECT COUNT(*) AS total_teams
FROM dbo.Teams;

-- Q3: Which teams have a stadium capacity larger than 60,000?
-- Author: Nakyeyune Brenda
SELECT Team_Name, StadiumCapacity, HomeCity
FROM dbo.Teams
WHERE StadiumCapacity > 60000
ORDER BY StadiumCapacity DESC;

-- Q4: List all teams and their cities alphabetically by team name.
-- Author: Nakyeyune Brenda
SELECT Team_Name, HomeCity
FROM dbo.Teams
ORDER BY Team_Name ASC;