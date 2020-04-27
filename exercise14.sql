use employess;
select date_format(from_date,'%Y') as salary_year, avg(salary) as avg_salary,count(*) as total_recs,sum(salary) as salary_sum
 from salaries group by salary_year order by salary_year;
 select avg_salary,salary_sum/total_recs as calculated_avg
 from(select date_format(from_date,'%Y') as salary_year, avg(salary) as avg_salary,count(*) as total_recs,sum(salary) as salary_sum
 from salaries group by salary_year order by salary_year) as sub;
 
select date_format(from_date,'%Y') as salary_year, avg(salary) as avg_salary,count(*) as total_recs,sum(salary) as salary_sum,max(salary),min(salary)
 from salaries group by salary_year order by salary_year;
select * from dept_manager;
select distinct emp_no from dept_manager;
select COUNT( DISTINCT emp_no ) AS "Number of employees",count(emp_no) FROM dept_manager;
select distinct count(emp_no) as dist from salaries;
select COUNT( DISTINCT emp_no ) AS "Number of employees",count(emp_no) FROM salaries;
select distinct emp_no as dist from salaries;

select *
from salaries
group by emp_no;

select count(emp_no) from salaries;
select * from salaries;
select * from salaries where emp_no not in (select distinct emp_no from dept_manager);

select date_format(from_date,'%Y') as salary_year,sum(salary) as total_salary,
												  max(salary) as max_salary,
                                                  min(salary) as min_salary,
                                                  count(salary) as counter,
                                                  avg(salary) as avg_salary
                                                  from salaries 
                                                  where emp_no not in (select distinct emp_no from dept_manager) group by salary_year;
