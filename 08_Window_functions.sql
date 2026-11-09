USE sales_analysis; 

-- 1. Rank products by price 
SELECT 
 Product_name, 
 Price, 
 RANK() OVER(
  ORDER BY price DESC 
  )AS product_rank  
 FROM Products; 
 
-- 2 Rank customers by revenue 
WITH customer_sales AS(
 SELECT 
 c.customer_id, 
 c.customer_name, 
 SUM(oi.qunatify * oi.unit_price) AS revenue FROM Customers c 
 JOIN orders o 
 ON c.customer_id = o.customer_id 
 JOIN order_items oi 
 ON o.order_id = oi.order_id
 WHERE o.order_status = 'Delivered'
 GROUP BY c.customer_id, c.customer_name
)
SELECT 
 customer_name, 
 reverse,
 DENSE_RANK() OVER (
  ORDER BY reverse DESC
 )AS revenue_rank 
FROM customer_sales; 
 
-- 3. Row number for orders 
SELECT 
 order_id, 
 customers_id, 
 order_date, 
 ROW_NUMBER() OVER (
  PARTITION BY customer_id 
  ORDER BY order_date 
  )AS order_number 
  FROM orders; 
  
 -- 4 Running total of monthiy revenue 
 WITH monthly_sales AS (
  SELECT 
    DATE_FORMAL(o.order_date, '%Y-%m') AS sales_month, 
     SUM(oi.quantify * oi.unit_price) AS revenue FROM orders.o 
  JOIN order_items oi 
  ON o.order_id = order_id 
  WHERE o.order_status = 'Delivered' 
  GROUP BY DATE_FORMAL(o.order_date, '%Y-%m') 
 )
 SELECT 
  sales_month, 
  revenue, 
  SUM(revenue) OVER (
    ORDER BY sales_month 
  ) AS running_total
  FROM monthly_sales; 
  
  