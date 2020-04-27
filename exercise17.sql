use employees;
select * from employees where emp_no not in (select emp_no from dept_manager);
select * from employees as emp left join dept_manager as dm on emp.emp_no = dm.emp_no;
select emp.emp_no,dm.emp_no,first_name, last_name from employees as emp left join dept_manager as dm on emp.emp_no = dm.emp_no;
select emp.emp_no,dm.emp_no,first_name, last_name from employees as emp left join dept_manager as dm on emp.emp_no = dm.emp_no 
where dm.emp_no is not null;
select * from employees.titles;
select  *  from employees where emp_no not in (select emp_no  from titles where to_date = '9999-01-01');
select * from employees as emp left join titles as t on emp.emp_no = t.emp_no and to_date = '9999-01-01';

select * from employees as emp left join titles as t on emp.emp_no = t.emp_no and t.to_date = '9999-01-01'
where t.emp_no is null;