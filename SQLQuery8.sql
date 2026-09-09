-- This is a comment

/* this is
a multi line comment
*/

-- Retrieve all customer data

SELECT *
FROM customers

-- Retrieve each customer's name, country, and score

SELECT 
	first_name,
	country,
	score
FROM customers

-- Retrieve customers whose score is not equal to zero

SELECT *
FROM customers
WHERE score != 0

-- Retrieve customer from Germany

SELECT 
	first_name,
	country
FROM customers
WHERE country = 'Germany'-- It uses strings just like python but not the equal.

-- Order the data on the basis of score using orderby

SELECT *
FROM customers
ORDER BY score DESC -- Default value is ascending 

-- Nested sorting
SELECT *
FROM customers
ORDER BY 
	country ASC,
	score DESC

-- Find the total score of each country
SELECT
	country,
	SUM(score) AS total_score -- AS is aliases basically to name new columns which we created by data manipulation
FROM customers
GROUP BY country

-- Find total score and total number of customers for each country

SELECT 
	SUM(score) AS total_score,
	COUNT(id) AS no_of_individual
FROM customers
GROUP BY
	country


-- Aggregated data using Having
-- Find the average score for each country cosidering only customers with a score not equal to zero
SELECT 
	country,
	AVG(score) AS average_score
FROM customers
WHERE 
	score != 0
GROUP BY country;
-- and return only those countries whose average score is greater than 430

SELECT 
	country,
	AVG(score) AS average_score
FROM customers
WHERE 
	score != 0
GROUP BY country
-- HAVING total_score > 430  this is not the logic
HAVING AVG(score) > 430;


-- Return unique list of countries

SELECT DISTINCT country
FROM customers;

-- Retrieve only 3 customers

SELECT TOP 3 *
FROM customers;

-- Retrieve the top 3 customers with the highest scores

SELECT TOP 3 *
FROM customers
ORDER BY score DESC;