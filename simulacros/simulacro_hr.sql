--Actividad 1
SELECT department_name from departments
ORDER by department_name ASC

--Actividad 2
SELECT DISTINCT salary from employees
order by salary DESC

--Actividad 3
SELECT job_title, min_salary, max_salary from jobs
WHERE job_title LIKE '%manager'
GROUP BY job_title
order by min_salary,max_salary DESC

-- Actividad 4
SELECT c.country_name as pais, r.region_name as region FROM countries c
JOIN regions r on c.region_id = r.region_id
ORDER BY  region, pais;

