use employees;
select * from employees where first_name = 'Jessie' and last_name = 'Porter';

begin;

update employees set birth_date = '1976-04-02' where emp_no = 500000;


commit;
