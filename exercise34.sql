use employees;
select count(*) from salaries;
create table salaries2 as (select * from salaries);
select count(*) from salaries2;

truncate table salaries2;

select * from salaries2;
drop table if exists salaries2;
