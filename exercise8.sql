use employees;
select * from employees where first_name = 'Elvis';
select * from employees where last_name = 'Elvis';
select * from employees where first_name <> 'Elvis';  #not equal '<>'
select * from employees where first_name != 'Elvis';  #not equal '!='
select count(*) from employees where first_name = 'Elvis';
select * from employees where first_name = 'Elvis' and last_name = 'Rossi';
select * from employees where first_name = 'Elvis' and gender = 'M';
select count(*) from employees where first_name = 'Elvis' and gender = 'M';
select count(*) from employees where first_name = 'Elvis' and gender = 'F';
select * from employees where first_name = 'Elvis' or last_name = 'Rossi';
select * from employees where first_name in ('Elvis','Mary','Uri','Moss');
select * from employees where first_name = 'Elvis' and last_name = 'Rossi' 
or first_name = 'Chenye' and last_name = 'Velasco';
select * from employees where first_name not in ('Elvis','Mary','Uri','Moss');
select * from employees where first_name is null;
select * from employees where first_name is not null;