use employees;
select date_format(from_date,'%Y') as years from salaries;
select date_format(from_date,'%Y') as years,sum(salary) from salaries group by years order by sum(salary);
select date_format(from_date,'%Y')as salary_year,min(salary)from salaries group by salary_year;
select date_format(from_date,'%Y') as salary_year, max(salary) from salaries group by salary_year order by max(salary) desc;
select date_format(from_date,'%Y') as salary_year,min(salary),max(salary) from salaries group by salary_year;
select salary_year,max_salary,min_salary, max_salary - min_salary as 'diff between max & min' from (select date_format(from_date,'%Y') as salary_year,
max(salary) as max_salary,min(salary) as min_salary from salaries group by salary_year) as sub_select;