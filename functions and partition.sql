 SELECT * FROM tabs;
 SELECT * FROM products;
 SELECT p1.prod_name, p1.prod_list_price, p1.prod_subcategory,
 (SELECT trunc(Avg(prod_list_price))FROM products p2 WHERE p2.prod_name = p1.prod_name) FROM products p1   ORDER BY 3;

 SELECT  prod_name, (prod_subcategory),prod_list_price, max(prod_list_price)OVER (PARTITION BY prod_subcategory)
 FROM products ;

------------function pl/sql--------------------------------------------------------------
 CREATE OR REPLACE Function interest(p_values IN NUMBER)
 RETURN NUMBER IS
 BEGIN
 RETURN (p_values*0.12);
 END interest;
 /

 SELECT prod_name,prod_list_price, Trunc(interest(prod_list_price)+ prod_list_price) FROM products;

 CREATE TABLE sandip AS SELECT * FROM products WHERE 1=2;

 ---------procedure no parameterized---------------------------------
 CREATE OR REPLACE PROCEDURE challenges AS
 BEGIN
 DELETE FROM sandip;
 INSERT INTO sandip SELECT * FROM products;
 UPDATE sandip SET prod_id = prod_category_id;
 COMMIT;
 END;
 /
 EXEC challenges
 SELECT * FROM sandip;


 SELECT prod_name, prod_list_price FROM products WHERE prod_list_price BETWEEN 800 AND 1000;
 SELECT prod_name, prod_list_price FROM products WHERE prod_list_price IN (899.99,1099.99);

 select prod_name, Avg(prod_list_price) FROM products GROUP BY prod_name
 HAVING Avg(prod_list_price) = 1099.99
 ORDER BY 1 DESC;

 SELECT prod_name FROM products WHERE prod_name LIKE 'E%';

 -------------function-------------------
 CREATE OR REPLACE FUNCTION PI(p_values IN NUMBER )
 RETURN NUMBER IS
 BEGIN
 RETURN (p_values *0.24);
 END PI;
 /




 SELECT prod_name,prod_subcategory, Count(prod_subcategory)OVER (PARTITION BY prod_subcategory),
  Avg(Trunc(prod_list_price)) OVER (PARTITION BY prod_name)
   FROM products ORDER BY 3 desc;
