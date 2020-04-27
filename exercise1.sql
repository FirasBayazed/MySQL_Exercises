use employees;

SELECT 
    *
FROM
    employees;
select count(*) from employees;
select count(*) from departments;
select count(*) from dept_emp;
select count(*) from dept_manager;
select count(*) from employees;
select count(*) from salaries;

SELECT 
    COUNT(*)
FROM
    titles;

select emp_no, count(*) as emp_count from employees where emp_no > 1 group by rmp_no having emp_count > 0 order by emp_no limit 5, 10;