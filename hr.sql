--Actividad 1
SELECT first_name, last_name, salary from employees
WHERE salary < 6000

--Actividad 2
SELECT e.first_name, e.last_name, d.department_name, l.city, l.state_province FROM employees e 
JOIN departments d on e.department_id = d.department_id 
join locations l on l.location_id = d.location_id

--Actividad 3
SELECT e.first_name AS nomJefe, m.first_name AS nomEmpleados from employees e 
JOIN employees m ON e.employee_id = m.manager_id
ORDER by nomJefe ASC

-- Actividad 4
SELECT e.first_name as nombre , e.last_name as apellido , d.first_name as hijos from employees e
join dependents d on d.employee_id = e.employee_id
ORDER by hijos ASC

--Actividad 5
Mostrar el nombre del empleado con su puesto de trabajo y su salario máximo, ordenado por salario de mayor a menor.
SELECT e.first_name as nombre, j.max_salary FROM employees 
JOIN jobs j on b.job_id = j.job_id
ORDER BY max_salary

--Actividad 6

SELECT first_name, last_name,salary,d.department_name FROM employees e 
JOIN departments d on d.department_id = e.department_id
ORDER BY first_name,d.department_name DESC;

--Actividad 7
SELECT e.first_name, e.last_name,l.state_province FROM employees e 
JOIN departments d on e.department_id = d.department_id
JOIN locations l on l.location_id = d.location_id
order by e.first_name, e.last_name DESC

--Actividad 8
SELECT e.last_name, e.first_name, c.country_name, r.region_name from employees e
JOIN departments d on e.department_id = d.department_id
JOIN locations l on l.location_id = d.location_id
JOIN countries c on l.country_id = c.country_id
JOIN regions r on c.region_id = r.region_id
ORDER BY r.region_name ASC

--Actividad 9
SELECT r.region_name, c.country_name from regions r
join countries c on r.region_id = c.region_id
ORDER BY c.country_name DESC

--Actividad 10

