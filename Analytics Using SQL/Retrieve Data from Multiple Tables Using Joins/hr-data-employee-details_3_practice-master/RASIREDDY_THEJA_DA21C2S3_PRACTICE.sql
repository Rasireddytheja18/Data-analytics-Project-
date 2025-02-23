use hr;
-- task 1--
SELECT departments.department_id, employees.first_name, employees.last_name 
FROM employees inner join departments on
employees.department_id = departments.department_id where department_name ='it';

-- task 2 --
SELECT departments.department_id, MIN(employees.salary) as min_salary, MAX(employees.salary) as max_salary
FROM employees JOIN departments ON employees.department_id = departments.department_id
GROUP BY departments.department_id;

-- task 3--
select locations.city , count(*) as emp_count 
from employees 
join departments on  employees.department_id = departments.department_id
join locations on departments.location_id = locations.location_id
group by locations.city
order by emp_count desc ;
