use employees;
select right('asdf',1);
select right('asdf',3);
select left('asdf',1);
select left('asdf',2);
select * from employees;
select first_name,last_name, concat(left(first_name,1),'     ', left(last_name,1)) as initials from employees;