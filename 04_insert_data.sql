6USE sales_analysis; 

-- insert customers Table 
INSERT INTO customers VALUES (1,'Arun','Madurai','9876546888','Arun@gmail.com','2025-01-12');
INSERT INTO customers VALUES (2,'Priya','Madurai','9765434556','Priya@gmail.com','2025-02-12');
INSERT INTO customers VALUES (3,'Kumar','Coimbatore','7200476568','Kumar@gmail.com','2025-10-13'); 
INSERT INTO customers VALUES (4,'Rahul','Salem','9876543212','Rahul@gmail.com','2025-05-15');
INSERT INTO customers VALUES (5,'vijay','Chennai','9865456689','Vijay@gmail.com','2025-06-13'); 
INSERT INTO customers VALUES (6,'Hari Priya','Vellore','9865432459','Haripriya@gmail.com','2025-10-12');
INSERT INTO customers VALUES (6,'Jeni','Chennai','654566898','jeni@gmail.com','2025-10-15');
INSERT INTO customers VALUES (7,'Pooja','Chennai','9865432678','pooja@gmail.com','2025-10-12');
INSERT INTO customers VALUES (8,'Keethi','Chennai','9865456654','Keethi@gmail.com','2025-11-13');
INSERT INTO customers VALUES (9,'malathi','Kerala','9876543556','malathi@gmail.com','2025-10-11');
INSERT INTO customers VALUES (10,'Dinesh','Chennai','9865434556','Dinesh@gmail.com','2025-10-19');

-- Products 
INSERT INTO Products VALUES (101,'Laptop','Electronics',550000);
INSERT INTO Products VALUES (102,'Moblie','Electronics',700000); 
INSERT INTO products VALUES (103,'Headphones','Accessories',780000);
INSERT INTO products VALUES (104,'keyboard','Accessories',89999);
INSERT INTO products VALUES (105,'Monitor','Electronics',860000);

-- Orders 
INSERT INTO orders VALUES (1001, 1,'2025-10-12','Delivered');
INSERT INTO orders VALUES (1002, 2,'2025-10-14','Deliveres');
INSERT INTO orders VALUES (1003, 3,'2025-11-10','Deilveres');
INSERT INTO orders VALUES (1004, 1,'2025-12-12','Deilveres');
INSERT INTO orders VALUES (1005, 4,'2025-10-12','Deilveres');
INSERT INTO orders VALUES (1006, 5,'2025-03-15','Delivered');
INSERT INTO orders VALUES (1007, 2,'2025-04-10','Delivered');
INSERT INTO orders VALUES (1008, 3,'2025-04-10','Cancelled'); 

-- Disolay records 
SELECT *FROM orders; 


-- Display Records 
SELECT *FROM Products; 

-- Display customers 
SELECT *FROM customers; 

-- Order items 
INSERT INTO order_items VALUES (1,1001,101,1,550000);
INSERT INTO order_items VALUES (2,1001,103,2,15000);
INSERT INTO order_items VALUES (3,1002,102,1,200000);
INSERT INTO order_items VALUES (4,1003,105,3,120000);
INSERT INTO order_items VALUES (5,1004,104,3,1000);
INSERT INTO order_items VALUES (6,1005,101,1,55000);
INSERT INTO order_items VALUES (7,1006,102,2,20000);
INSERT INTO order_items VALUES (8,1007,103,3,15000);
INSERT INTO order_items VALUES (9,1008,105,1,120000);

-- Display records 
SELECT *FROM order_items; 
            

 






