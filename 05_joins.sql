USE sales_analysis; 

 -- 1. Customer orders 
 SELECT 
  c.customer_name, 
  o.order_id, 
  o.order_date, 
  o.order_status 
 FROM customers c 
 INNER JOIN orders o 
 ON c.customer_id = o.customer_id; 
 
 -- 2.  produce sales 
 SELECT 
  P.product_name, 
  oi.quantify, 
  oi.unit_price, 
  oi.quantify * oi.unit_price AS total_sales FROM Products p
  INNER JOIN order_items oi 
  ON p.product_id = oi_product_id; 
  
  -- 3. Customer and order details 
  SELECT 
     c.customer_name, 
     c.city, 
     o.order_id, 
     o.order_date 
  FROM customers c 
  LEFT JOIN orders o 
  ON c.customers_id = o.customer_id;
  
 -- 4. Total sales by customers 
 SELECT 
   c.customer_name, 
   SUM(oi.quantify*oi.unit_price) AS total_sales 
   FROM customers.c 
   JOIN orders o 
   ON c.customer_id = o.customer_id 
   JOIN order_item oi 
   ON o.order_id = oi.order_id 
   WHERE o.Order_status = 'Delivered' 
   GROUP BY c.customer_id,c.customer_name 
   ORDER BY total_sales DESC; 
   
-- 5. Total sales by product 
SELECT 
 SUM(oi.quantify * oi.unit_price) AS revenue FROM products p 
 JOIN order_items oi
 ON p.product_id = oi.product_id 
 JOIN orders o 
 ON oi.order_id = o.Order_id 
 WHERE o.Order_status = 'Delivered' 
 GROUP BY p.product_id,p.product_name 
 ORDER BY revenue DESC; 
 
 