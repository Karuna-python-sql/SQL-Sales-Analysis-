USE sales_analysis; 

-- 1. Display all customers 
SELECT * FROM customers; 

-- 2. Display all Products 
SELECT * FROM Products; 

-- 3. Find electronics Products 
SELECT * FROM Products WHERE category='Electronics'; 
SELECT * FROM Products WHERE category='Accessories';

-- 4. Find expensive product
SELECT * FROM Products WHERE price > 50000;

-- 5. Total numbers of Customers 
SELECT COUNT(*) AS total_customers FROM customers; 

-- 6. Total numbers of Orders 
SELECT COUNT(*) AS total_orders FROM Products;

 -- 7. Product Category count 
SELECT Category, 
 COUNT(*) AS total_Products FROM Products GROUP BY category; 
 
 -- 8. Average Product price 
SELECT AVG(Price) AS average_price FROM Products; 

-- 9. Highest Products price 
SELECT MAX(price) AS highest_price FROM Products; 

-- 10. Lowest Product price 
SELECT MIN(price) AS lowest_price FROM products; 


 
 

 
    
 









