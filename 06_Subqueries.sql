USE sales_analysis; 

-- 1. Products above average price 
SELECT * FROM products 
WHERE price > (
 SELECT AVG(price) FROM Products
 
 ); 
 
 -- 2. Customer who placed orders 
 SELECT * FROM customers 
 WHERE customer_id IN (
  SELECT Customer_id FROM orders 
  
  );
  
 -- 3. Find highest priced product 
 SELECT * FROM Products 
 WHERE price =  (
  SELECT MAX(price) FROM products
  
 );
 
 -- 4. Customers who have not placed orders 
 SELECT * FROM customers
 WHERE customers_id NOT IN (
  SELECT customer_id 
  FROM orders 
  
  );
  
  