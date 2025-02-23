-- CHALLANGE --
use hr;
-- TASK 1--
select * from employees;
SELECT COUNT(*) from employees;
-- TASK 2--
select department_id, count(*) as employee_count from employees group by department_id;
-- TASK 3--
select  first_name, last_name, salary from employees where salary >6000;
-- TASK 4--
select count(*) from employees where salary > 20000;
-- TASK 5,6,7--
select * from employees where commission_pct is not null;
select concat(first_name, ' ', last_name) as fullname from employees;
select employee_id AS "Employee ID",CONCAT(first_name, ' ', last_name) as "Full Name",email as "Email ID",    phone_number AS "Phone Number" from employees
where commission_pct is not null;  
-- TASK 8--
select department_id, sum(salary) as total_salary from employees group by department_id order by total_salary desc limit 3;


