use employees;
SELECT 
    salary,
    salary * .01 AS 'weekly salary',
    salary * .01 * 4 AS 'monthly salary',
    salary * .01 * 52 AS 'yearly salary',
    (salary + 200) *.01 as add_first,
    salary * 0.1 /7 as 'daily salary',
    salary div 3 as div_op,
    salary % 3 as mod_op
FROM
    salaries;