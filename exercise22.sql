use employees;
-- CRUD: Create, Read, Update, Delete
select * from employees;
insert into employees select max(emp_no) + 1,'1976-02-02','Micheal','Weston','M','2015-01-02' from employees;
select * from employees where last_name = 'Weston';
update employees set birth_date = '1976-01-02' where emp_no = 500000;
delete from employees where emp_no = 500000;
