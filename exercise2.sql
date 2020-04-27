use employees;
SELECT 
    emp_no, COUNT(*) AS emp_count
FROM
    employees
WHERE
    emp_no > 1
GROUP BY emp_no
HAVING emp_count > 0
ORDER BY emp_no
LIMIT 5 , 10;