use employees;

begin;
select (@employee_no:=(max(emp_no) + 1 )) from employees;

insert into employees values(@employee_no,'1985-01-01','Sam','Axe','M','2018-01-01');
insert into titles values(@employee_no,'Staff','2018-01-01','9999-01-01');
insert into dept_emp values(@employee_no,'d008','2018-01-01','9999-01-01');
insert into salaries values(@employee_no,120000 ,'2018-01-01','9999-01-01');

commit;

select * from employees where emp_no = @employee_no;

select * from salaries where emp_no = @employee_no;

select @employee_no;

select (@employee_n:=(max(emp_no) + 3 )) from employees;

select @employee_n;

select * from employees;