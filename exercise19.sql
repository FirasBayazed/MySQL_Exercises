use employees;
select * from employees;
insert into employees select max(emp_no) + 1,'1976-01-01','John','Thompson','M','2018-06-18' from employees;
select * from employees where first_name = 'John';
select max(emp_no),'1976-01-01','John','Thompson','M','2018-06-18' from employees;

-- create employee record
-- create title record
-- create employee department record
-- create employee salary record

insert into employees select max(emp_no) +1,'1985-01-01','Jessie','Porter','M','2018-01-01' from employees;
select * from employees where first_name = 'Jessie' and last_name = 'Porter';
insert into titles values(500001,'Staff','2018-01-01','9999-01-01');
insert into dept_emp values(500001,'d008','2018-01-01','9999-01-01');
insert into salaries values(500001,120000,'2018-01-01','9999-01-01');
select * from salaries where emp_no = 500001;
select * from titles where emp_no = 500001;
select * from dept_emp where emp_no = 500001;
select * from employees where emp_no = 500001;
