--actividad 1
SELECT rating from film

--Actividad 2
SELECT c.name, COUNT(fl.film_id) from category c 
join film_category f on c.category_id = f.category_id
JOIN film fl ON f.film_id = fl.film_id
GROUP BY c.name

--Actividad 3
