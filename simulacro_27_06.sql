--Actividad 1--
SELECT e.first_name, e.last_name, d.department_name, l.state_province, e.salary , m.first_name
from employees e 
join departments d on e.department_id = d.department_id
join locations l on l.location_id = d.location_id
join employees m on m.employee_id = e.manager_id
order by e.salary ASC;

--Actividad 2--
UPDATE jobs
SET min_salary = min_salary * 0.75,
    max_salary = max_salary * 0.75;

--Actividad 3--
DELETE from employees WHERE (SELECT s.max_salary FROM employees e
                          JOIN jobs s on e.job_id = s.job_id
                          WHERE s.max_salary < e.salary )
