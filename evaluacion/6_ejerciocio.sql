SELECT car_make, COUNT(*) AS cantidad_autos
FROM drivers_license
GROUP BY car_make
HAVING COUNT(*) >= 100
ORDER BY COUNT(*) DESC;