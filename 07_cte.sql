USE sales_analysis; 

-- 1. Calculate total sales 
WITH sales_data AS (
 SELECT 
 o.order_id, 
 o.order_status, 
 SUM(OI.quantify * oi.unit_price) AS total_amount
 FROM orders.o 
 JOIN order_items.oi 
 ON o.order_id = oi.order_id 
 GROUP BY o.order_id, o.order_status
)
SELECT * FROM sales_data 
WHERE order_status = 'Delivered';

-- 2. Customer revenue analysis 
WITH customer_sales AS (
 SELECT 
  c.customer_name, 
  SUM(oi.quantify * oi.unit_price) AS revenue 
 FROM customers c 
 JOIN orders o 
 ON c.customer_id = oi.customer_id 
 JOIN order_items.oi 
 ON o.order_id = oi.order_id 
 WHERE o.Order_status = 'Delivered' 
 GROUP BY c.customer_id, c.customer_name 
)
SELECT customer_sales 
ORDER BY revenue DESC; 

-- 3. Monthly revenue 
WITH monthly_sales AS (
 SELECT 
  DATE_FORMAT(O.order_date, '%Y-%m') AS sales_month, 
  sum(oi.quantify * oi.order_id)AS revenue FROM orders o 
  JOIN order_items oi 
  ON o.order_id = oi.order_id 
  WHERE o.order_status = 'Delivered' 
  GROUP BY DATE_FORMAL(o.order_date,'%Y-%m') 
)
SELECT * FROM montly_sales 
ORDER BY sales_month; 


 