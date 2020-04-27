use employees ;
select * from salaries order by salary ;
select * from salaries order by salary asc;
select * from salaries order by salary desc;
select * from salaries order by from_date,salary desc;
select * from employees order by first_name;
select * from employees where first_name = 'Elvis' order by birth_date;
select * from employees where first_name = 'Elvis' order by birth_date desc,gender desc;