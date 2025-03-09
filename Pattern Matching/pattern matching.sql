CREATE DATABASE roc;
USE roc;


USE roc;

-- Create table product_data
CREATE TABLE product_data (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(100),
    brand_name VARCHAR(100),
    price DECIMAL(10,2),
    stock INT
);

-- Selecting data from the new table
SELECT * FROM product_data;

-- Insert sample data (30 records)
INSERT INTO product_data (product_name, brand_name, price, stock) VALUES
('Shoes', 'Adidas', 2500.00, 50),
('T-Shirt', 'Nike', 1500.00, 30),
('Jeans', 'Levis', 3000.00, 40),
('Socks', 'Puma', 500.00, 100),
('Watch', 'Casio', 4500.00, 20),
('Bag', 'Wildcraft', 2000.00, 35),
('Sneakers', 'Reebok', 3200.00, 25),
('Sunglasses', 'RayBan', 5000.00, 15),
('Laptop Bag', 'HP', 1800.00, 28),
('Cap', 'Adidas', 700.00, 60),
('Formal Shoes', 'Bata', 2700.00, 40),
('Jacket', 'Woodland', 3500.00, 22),
('Sandals', 'Crocs', 2200.00, 30),
('Kurta', 'FabIndia', 2000.00, 18),
('Slippers', 'Relaxo', 400.00, 55),
('Smartwatch', 'Fossil', 8000.00, 12),
('Headphones', 'Sony', 4500.00, 25),
('Power Bank', 'MI', 1200.00, 40),
('Bluetooth Speaker', 'JBL', 3500.00, 30),
('Wallet', 'Tommy', 1700.00, 45),
('Earbuds', 'Boat', 2500.00, 50),
('Trousers', 'Zara', 2700.00, 35),
('Duffle Bag', 'Nike', 2900.00, 30),
('Perfume', 'Calvin', 3200.00, 20),
('Helmet', 'Steelbird', 1800.00, 42),
('Keyboard', 'Logitech', 2500.00, 28),
('Mouse', 'HP', 700.00, 50),
('Gaming Chair', 'GreenSoul', 12000.00, 8),
('Backpack', 'American', 2300.00, 33),
('Trackpants', 'Puma', 1900.00, 27);


-- Find the products where the product name ends with 's'
SELECT * FROM product_data WHERE product_name LIKE '%s';

-- Find the products where the brand name contains 'ad' 
SELECT * FROM product_data WHERE brand_name LIKE '%ad%';

-- Find the products where name starts with 'P' and ends with 'S'
SELECT * FROM product_data WHERE product_name LIKE 'P%s';

-- Find the products where the product name starts with 'S'
SELECT * FROM product_data WHERE product_name LIKE 'S%';

-- Find the products where the product name contains 'sho'
SELECT * FROM product_data WHERE product_name LIKE '%SHO%';

-- Find the products where the brand name is exactly 6 characters long
SELECT * FROM product_data WHERE brand_name LIKE '______';

-- Find the products where the second character of the brand name is 's'
SELECT * FROM product_data WHERE brand_name LIKE '_s%';