use employees;
select * from employees;
begin;
insert into employees select max(emp_no) + 1,'1976-02-02','Micheal','Weston','M','2015-01-02' from employees;
commit;
select * from employees where last_name = 'Weston';
commit;

update employees set birth_date = '1976-03-02' where emp_no = 500000;
delete from employees where emp_no = 500000;

rollback;

set autocommit = 0 ;

set autocommit = 1;