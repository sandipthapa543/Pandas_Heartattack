SELECT * FROM products WHERE prod_name LIKE '%M_n%';
SELECT * FROM products;
SELECT * FROM sales;

SELECT prod_id, Trunc(amount_sold) sold FROM sales WHERE amount_sold BETWEEN 1300 AND 1500
ORDER BY 1 desc;

 SELECT   prod_name, prod_subcategory,
 FROM     products WHERE  &condition ORDER BY 2 ;

 SELECT To_Char(time_id,'yyyy-mm-dd') FROM sales;
 CREATE TABLE datetest(expiry_date date);
 INSERT INTO datetest VALUES ('01-jan-2030');
 INSERT INTO datetest VALUES (To_Date('2020-feb-01','yyyy-mon-dd'));

 SELECT * FROM datetest;

 DROP TABLE datetest;

SELECT Sum(s.quantity_sold),p.prod_category,p.prod_name FROM products p left JOIN sales s ON s.prod_id = p.prod_id GROUP BY Grouping SETS (prod_category,prod_name) ORDER BY 1 DESC;

