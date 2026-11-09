USE sales_analysis; 

-- Customer Table 
CREATE TABLe Customers(
 Customer_id INT PRIMARY KEY, 
 customer_name VARCHAR(50), 
 city VARCHAR(50), 
 Phone VARCHAR(50), 
 email VARCHAR(100), 
 registration_data DATE 
 
 );
 
 -- Product Table 
 CREATE TABLE Products(
  product_id INT PRIMARY KEY, 
  product_name VARCHAR(100), 
  Category VARCHAR(50), 
  Price DECIMAL(10,2)
 
 );
 
 --- Order Table 
 CREATE TABLE Orders (
  Order_id INT PRIMARY KEY, 
  Customer_id INT, 
  order_date DATE, 
  Order_status VARCHAR(30), 
  
  FOREIGN KEY (Customer_id)
   REFERENCES Customers(customer_id) 
 
 );
 
 -- Order_items_table 
 CREATE TABLE order_items(
  item_id INT PRIMARY KEY, 
  order_id INT, 
  Product_id INT, 
  quantify INT, 
  unit_price DECIMAL(10,2), 
  
  FOREIGN KEY (order_id) 
   REFERENCES orders(order_id), 
   
  FOREIGN KEY (Product_id)
   REFERENCES Products(Product_id)

 );
 
  -- Verfify Tables 
  SHOW TABLES; 
  
  DESC customers; 
  DESC Products; 
  DESC orders; 
  DESC order_items; 
  
  
    
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 