use employees;
select * from departments;
insert into departments value('d999','foo');

select * from departments where dept_no = 'd999';

update departments set dept_name = 'Social Media Marketing' where dept_no = 'd999';
select * from employees where first_name = 'Jessie' and last_name = 'Porter';

update employees set first_name = 'Sam', last_name = 'Axe' where emp_no = 500001;

select * from employees where emp_no = 500001;

select * from employees where first_name = 'Sam';

select * from salaries where emp_no = 500001;
insert into salaries values(500001,140000,'2019-01-01','9999-01-01');

update salaries set to_date = '2019-01-01' where emp_no = 500001 and from_date ='2018-01-01';
select * from salaries where emp_no = 500001 and from_date = '2018-01-01';