SELECT 
    MIN(age) AS edad_minima,
    MAX(age) AS edad_maxima,
    AVG(age) AS edad_promedio
FROM drivers_license
WHERE gender = 'male' 