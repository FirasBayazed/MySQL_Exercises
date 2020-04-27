use employees;
-- create employee record
-- create title record
-- create employee department record
-- create employee salary record

begin;
insert into employees select max(emp_no) + 1, '1985-01-01','Jessie','Porter','M','2018-01-01' from employees;
insert into titles select max(emp_no), 'Staff', '2018-01-01','9999-01-01' from employees;
insert into dept_emp select max(emp_no),'d008','2018-01-01', '9999-01-01' from employees;
insert into salaries select max(emp_no),120000,'2018-01-01', '9999-01-01' from employees;

commit;

select * from employees where first_name = 'Jessie' and last_name = 'Porter';
select * from salaries where emp_no = 500000;
select * from titles where emp_no = 500000;
select * from dept_emp where emp_no = 500000;