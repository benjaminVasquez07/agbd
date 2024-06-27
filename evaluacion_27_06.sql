--Actividad 1--
SELECT j.job_title, COUNT(e.employee_id) AS empleados, 
SUM(e.salary) AS salario_total
FROM employees e
JOIN jobs j ON e.job_id = j.job_id
GROUP BY j.job_title
ORDER BY empleados DESC;

--Actividad 2--
SELECT e.first_name, e.last_name, j.job_title, d.department_name
FROM employees e
JOIN jobs j ON e.job_id = j.job_id
JOIN departments d ON e.department_id = d.department_id;

--Actividad 3--
SELECT employee_id, first_name, last_name, email, phone_number, department_id
FROM employees
WHERE phone_number IS NULL;


UPDATE employees
SET phone_number = '303.404.505'
WHERE phone_number IS NULL;

--Actividad 4--
UPDATE employees
SET salary = salary * 1.35
WHERE salary < 8000
AND job_id IN ( SELECT job_id FROM jobs
    WHERE job_title IN ('Programmer', 'Accountant'));

--Actividad 5--
INSERT INTO departments (department_name, location_id)
    VALUES ('Consultants', (SELECT location_id FROM locations WHERE city = 'Seattle'))
    
INSERT INTO locations (street_address, city, country_id)
    VALUES ('2004 Charade Rd','Seattle', (SELECT country_id FROM countries WHERE country_name = 'United States of America'))
    
INSERT INTO jobs (job_title, min_salary, max_salary)
     VALUES ('Consultant', 411, 912)
     
INSERT INTO employees (first_name, last_name, email, phone_number, hire_date, salary, manager_id, job_id, department_id)
    VALUES ('Raul','Lopez','rlopez@gmail.com','1.231.231.122','2024-06-27',5000,100,(SELECT job_id FROM jobs WHERE job_title = 'Consultant'),(SELECT department_id FROM departments WHERE department_name = 'Consultants')),
           ('Andres','Gonzalez','agonzalez@gmail.com','1.231.231.122','2024-06-27',5000,100,(SELECT job_id FROM jobs WHERE job_title = 'Consultant'),(SELECT department_id FROM departments WHERE department_name = 'Consultants')),
           ('Laura','Fernandez','lfernandez@gmail.com','1.231.231.122','2024-06-27',5000,100,(SELECT job_id FROM jobs WHERE job_title = 'Consultant'),(SELECT department_id FROM departments WHERE department_name = 'Consultants'))

--Actividad 6--
DELETE FROM employees
WHERE department_id IN (SELECT department_id FROM departments WHERE location_id IN ( SELECT location_id FROM locations WHERE country_id = ( SELECT country_id FROM countries WHERE country_name = 'Canada')));

DELETE FROM departments
WHERE location_id IN (SELECT location_id FROM locations WHERE country_id = (SELECT country_id FROM countries WHERE country_name = 'Canada'));

DELETE FROM locations
WHERE country_id = (SELECT country_id FROM countries WHERE country_name = 'Canada');

DELETE FROM countries
WHERE country_name = 'Canada';


--Actividad 7--
