SELECT name FROM v$databases;

ALTER USER sh IDENTIFIED BY sh;
ALTER USER sh account unlock;

SELECT table_name FROM ALL_tables;

SELECT table_name
FROM user_tables
ORDER BY table_name;

SELECT * FROM  cal_month_sales_mv;

SELECT * FROM employees;

ALTER USER hr IDENTIFIED BY hr;
ALTER USER hr account unlock;

SELECT table_name FROM user_tables
ORDER BY table_name;

SELECT  FROM departments


---------------Analytical function Partition By aggregrate---------------------
SELECT DISTINCT (e.first_name),d.department_name,Sum(e.salary) OVER (PARTITION BY e.salary) High_salary  FROM employees e left JOIN departments d ON e.department_id =d.department_id WHERE e.salary >=13000  ORDER BY 2;

SELECT first_name, department_name, employee_id, salary, commission_pct FROM employees e left JOIN departments d ON e.department_id = d.department_id WHERE department_name= 'Executive';