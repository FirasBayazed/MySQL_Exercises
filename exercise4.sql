use employees;
select first_name as "First Name", last_name as 'Last Name' from employees;
select concat(first_name,'  ',last_name) as Name from employees