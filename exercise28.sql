use employees;
select * from salaries where emp_no = 500000;

begin;
update salaries set salary = salary + 20 where emp_no = 500000;

commit;