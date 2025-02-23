use world;
-- Challenge Brief - 1 WORLD DATABASE--
SELECT 
    *
FROM
    world.country;
-- task 2 --
SELECT 
    continent, SUM(Population) AS total
FROM
    country
GROUP BY Continent
ORDER BY total DESC;
-- task 3 --
SELECT 
    country.name as countryname, countrylanguage.Language
FROM
    country
        JOIN
    countrylanguage ON country.Code = countrylanguage.CountryCode
WHERE
    Language = 'french';
    -- Challenge Brief - 2 SAKILA DATABASE --
    -- task 1 --
    use sakila;
SELECT 
    film.film_id, film.title, inventory.inventory_id
FROM
    film
        JOIN
    inventory ON film.film_id = inventory.film_id
WHERE
    film.title IN ('Brotherhood Blanket' , 'Soup Wisdom');
    -- task 2 --
  SELECT 
    COUNT(*) AS count, name
FROM
    category
        JOIN
    film_category ON category.category_id = film_category.category_id
   
GROUP BY category.name
HAVING COUNT(*);
