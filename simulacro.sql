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