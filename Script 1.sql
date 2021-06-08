ALTER USER sh IDENTIFIED BY sh;
ALTER USER sh account unlock;

SELECT * FROM customers;
SELECT  table_name FROM all_tables;
SELECT table_name
FROM user_tables
ORDER BY table_name;

SELECT * FROM Products;
SELECT * FROM Sales;
SELECT * FROM Channels;

SELECT prod_name,quantity_sold FROM sales JOIN Products USING (prod_id);
SELECT DISTINCT (p.prod_name), s.quantity_sold, c.channel_desc FROM sales s left JOIN channels c  ON s.channel_id = c.channel_id left JOIN
 products p ON s.prod_id=p.prod_id  ORDER BY c.channel_desc;