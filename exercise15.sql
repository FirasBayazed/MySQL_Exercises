use employees;
select * from employees inner join dept_manager on employees.emp_no = dept_manager.emp_no;
select * from employees  join dept_manager on employees.emp_no = dept_manager.emp_no; #the inner is optional
Select * from employees JOIN dept_manager USING(emp_no) ;
select * from employees as emp join dept_manager as dm on emp.emp_no = dm.emp_no join departments as dept on dm.dept_no = dept.dept_no;
Select * from employees JOIN dept_manager USING(emp_no) join departments using(dept_no);

select dept_name,emp.emp_no,first_name,last_name from employees as emp join dept_manager as dm on emp.emp_no = dm.emp_no join 
departments as dept on dm.dept_no = dept.dept_no order by dept_name,last_name;

select dept_name,emp.emp_no,first_name,last_name,dm.to_date  from employees as emp join dept_manager as dm on emp.emp_no = dm.emp_no join 
departments as dept on dm.dept_no = dept.dept_no where dm.to_date = '9999-01-01' order by dept_name,last_name;


select dept_name,emp.emp_no,first_name,last_name,dm.to_date,emp.gender from employees as emp join dept_manager as dm on emp.emp_no = dm.emp_no join 
departments as dept on dm.dept_no = dept.dept_no where dm.to_date = '9999-01-01' and emp.gender = 'F' order by dept_name,last_name;

select dm.dept_no,emp.emp_no,dept_name,first_name,last_name,dm.to_date,emp.gender from employees as emp join dept_manager as dm on emp.emp_no = dm.emp_no join 
departments as dept on dm.dept_no = dept.dept_no where dm.to_date = '9999-01-01' and emp.gender = 'M' order by dept_name,last_name;
