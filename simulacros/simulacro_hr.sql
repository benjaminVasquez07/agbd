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


