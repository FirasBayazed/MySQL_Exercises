use employees;
select * from employees limit 20; # this is the number of index
select * from employees limit 19,10;
select * from employees order by emp_no limit 0,20;
select distinct last_name from employees;
select  count(distinct last_name) from employees;
select sum(salary) from salaries;
select distinct first_name from employees where first_name like 'E%';
select count(distinct first_name) from employees where first_name like 'E%';
select * from employees where first_name in (select distinct first_name from employees where first_name like 'E%');