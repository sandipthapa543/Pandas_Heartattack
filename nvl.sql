SELECT * FROM tabs;
SELECT *FROM employees;

SELECT last_name,job_id,salary,
CASE job_id
WHEN 'IT_PROG' THEN 1.10*salary
WHEN 'ST_CLERK' THEN 1.15*salary
 ELSE salary END    "Revised salary" FROM employees ORDER BY 3;


 SELECT last_name,first_name,coalesce(commission_pct,0) FROM employees;

 SELECT last_name, first_name, Nvl2(commission_pct,salary*commission_pct+salary,salary) income FROM employees;


 SELECT last_name,job_id,salary,Decode(job_id, 'IT_PROG',1.10*salary,'ST_CLERK',1.15*salary, salary) Revised_salary FROM employees;