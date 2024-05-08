--Actividad 1
SELECT title from film
ORDER by title ASC

--Actividad 2
SELECT DISTINCT rating FROM film
ORDER by rating ASC

--Actividad 3
SELECT title, replacement_cost, rating from film
WHERE rating IN ('PG-13', 'PG')
ORDER BY replacement_cost DESC, title ASC;

--Actividad 4
SELECT c.city as ciudad, b.country as pais from city c
JOIN country b on  c.country_id = b.country_id
order by pais;

--Actividad 5 
SELECT c.country, count(b.country_id) as NumCiudades FROM country c
join city b on c.country_id = b.country_id
GROUP by c.country_id, country
ORDER BY NumCities DESC

--Actividad 6
SELECT c.country, count(b.country_id) as numCiudades FROM country c
JOIN city b on c.country_id = b.country_id
GROUP BY c.country_id, country
HAVING COUNT(b.country_id) > 2
