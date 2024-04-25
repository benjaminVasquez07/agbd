SELECT rating from film

SELECT c.name, COUNT(fl.film_id) from category c 
join film_category f on c.category_id = f.category_id
JOIN film fl ON f.film_id = fl.film_id
GROUP BY c.name

