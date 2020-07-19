--- Years covered in the dataset:

SELECT DISTINCT year from population_years;

--- Largest population size for Gabon:

SELECT MAX(population) 
  FROM population_years
  WHERE country = 'Gabon';

--- 10 lowest population countries in 2005:

SELECT country
  FROM population_years
  WHERE year = 2005
  ORDER BY population
  LIMIT 10;

--- Distinct countries with a population of over 100 million in the year 2010:

SELECT DISTINCT country
  FROM population_years
  WHERE population > 100 AND year = 2010;

--- How many countries in the dataset have the world "Islands" in their name:

SELECT COUNT(DISTINCT country)
  FROM population_years
  WHERE country LIKE '%Islands%';

--- Difference in population between 2000 and 2010 in Indonesia:

SELECT population
  FROM population_years
  WHERE country = 'Indonesia' AND year = 2000;
SELECT population
  FROM population_years
  WHERE country = 'Indonesia' AND year = 2010;


