use employees;
select dm.dept_no,emp.emp_no,dept_name,first_name,last_name,title,dm.to_date from employees as emp join dept_manager as dm on emp.emp_no = dm.emp_no 
join departments as dept on dm.dept_no = dept.dept_no join titles as tit on emp.emp_no = tit.emp_no where dm.to_date = '9999-01-01' and tit.to_date = '9999-01-01' 
order by dept_name,last_name;


select dm.dept_no,emp.emp_no,dept_name,first_name,last_name,title,dm.to_date from employees as emp natural join dept_manager as dm  
natural join departments as dept  natural join titles as tit  where dm.to_date = '9999-01-01' and tit.to_date = '9999-01-01' 
order by dept_name,last_name;


select dm.dept_no,emp.emp_no,dept_name,first_name,last_name,title,dm.to_date from employees as emp,  dept_manager as dm , 
 departments as dept,  titles as tit  where emp.emp_no = dm.emp_no and dm.dept_no = dept.dept_no and emp.emp_no = tit.emp_no and
 dm.to_date = '9999-01-01' and tit.to_date = '9999-01-01' 
order by dept_name,last_name;


select * from employees as emp natural join dept_manager as dm  
natural join departments as dept  natural join titles as tit  where dm.to_date = '9999-01-01' and tit.to_date = '9999-01-01' 
order by dept_name,last_name;