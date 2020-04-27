use employees;
select * from salaries;
-- update salaries set to_date = '9999-01-01' (this will show us error without using where
-- drop database employees;
select * from departments;
insert into departments values('d999','foo');
delete from departments where dept_no = 'd999';
-- delete from departments where dept_no like 'd%';  this will delete all records in departments and dept_emp and dept_manager
-- delete from employees  where emp_no > 1;  this will delete everything