SELECT first_name, last_name, salary from employees
WHERE salary < 6000

SELECT e.first_name, e.last_name, d.department_name, l.city, l.state_province FROM employees e 
JOIN departments d on e.department_id = d.department_id 
join locations l on l.location_id = d.location_id

SELECT e.first_name AS nomJefe, m.first_name AS nomEmpleados from employees e JOIN employees m ON e.employee_id = m.manager_id
ORDER by nomJefe ASC
