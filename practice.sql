SELECT * FROM tabs;

SELECT * FROM locations;

SELECT * FROM employees;

SELECT * FROM departments;

SELECT l.city, d.department_name,e.first_name FROM departments d left JOIN locations l
ON d.location_id = l.location_id left JOIN employees e ON d.department_id = e.department_id WHERE l.city = 'Southlake';

CREATE OR REPLACE FUNCTION commission(p_value IN NUMBER)
RETURN NUMBER IS
BEGIN
RETURN (p_value*0.3);
END commission;
/

SELECT first_name, Avg(salary)  FROM employees
 GROUP BY  first_name
 HAVING AVG(salary)>13000;


CREATE OR REPLACE PROCEDURE follow AS
BEGIN
---------no parameterize-----------
END;
/


