use employees;
select first_name, count(*) as counter from employees group by first_name;
select count(first_name) from employees;
select salary,count(*) as salary_count from salaries group by salary order by salary_count desc;

select first_name,count(*) as emp_count from employees group by first_name having emp_count > 275 order by emp_count;

select salary,count(*) as salary_count from salaries group by salary having salary_count > 100 order by salary_count desc;

select * from salaries;
select salary, count(*) as sal_count from salaries where from_date > '1994-06-24' group by salary having sal_count > 70 order by sal_count asc;