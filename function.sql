 CREATE OR REPLACE FUNCTION vat(v_value IN NUMBER)
 RETURN NUMBER IS
 BEGIN
 RETURN (v_value * 0.13);
 END vat;
 /
 SELECT * FROM products;

 SELECT prod_name,prod_list_price, vat(prod_list_price) FROM products;
