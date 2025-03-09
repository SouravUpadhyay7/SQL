CREATE TABLE product_details (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(100),
    brand_name VARCHAR(100),
    category VARCHAR(100),
    discounted_price DECIMAL(10,2),
    marked_price DECIMAL(10,2),
    rating_count INT
);

INSERT INTO product_details (product_name, brand_name, category, discounted_price, marked_price, rating_count) VALUES
('Nike Running Shoes', 'Nike', 'Footwear', 3499.99, 4999.99, 1200),
('Adidas Sneakers', 'Adidas', 'Footwear', 2999.99, 4499.99, 1500),
('Puma Sports T-Shirt', 'Puma', 'Clothing', 1299.99, 1799.99, 900),
('Levi’s Denim Jacket', 'Levi’s', 'Clothing', 3799.99, 4999.99, 850),
('Fastrack Analog Watch', 'Fastrack', 'Accessories', 2499.99, 3499.99, 1300),
('Samsung Smart Watch', 'Samsung', 'Electronics', 10999.99, 12999.99, 1700),
('Sony Wireless Earbuds', 'Sony', 'Electronics', 7499.99, 9999.99, 2000),
('JBL Bluetooth Speaker', 'JBL', 'Electronics', 3999.99, 5499.99, 2500),
('Ray-Ban Sunglasses', 'Ray-Ban', 'Accessories', 5999.99, 7999.99, 650),
('Apple AirPods Pro', 'Apple', 'Electronics', 19999.99, 21999.99, 2200),
('HP Pavilion Laptop', 'HP', 'Computers', 64999.99, 74999.99, 450),
('Samsung Galaxy S21', 'Samsung', 'Mobile Phones', 57999.99, 69999.99, 500),
('Boat Rockerz Headphones', 'Boat', 'Electronics', 1999.99, 2999.99, 1800),
('Titan Wrist Watch', 'Titan', 'Accessories', 3499.99, 4999.99, 1250),
('Woodland Leather Shoes', 'Woodland', 'Footwear', 4299.99, 5999.99, 890),
('Casio Digital Watch', 'Casio', 'Accessories', 2799.99, 3999.99, 980),
('Sony PlayStation 5', 'Sony', 'Gaming', 44999.99, 49999.99, 350),
('MSI Gaming Laptop', 'MSI', 'Computers', 79999.99, 89999.99, 320),
('Adidas Running Shoes', 'Adidas', 'Footwear', 3999.99, 5999.99, 1600),
('Puma Hooded Jacket', 'Puma', 'Clothing', 2599.99, 3499.99, 990),
('Apple MacBook Air', 'Apple', 'Computers', 87999.99, 94999.99, 410),
('Samsung Galaxy Buds', 'Samsung', 'Electronics', 8499.99, 9999.99, 1400),
('Nike Training Shorts', 'Nike', 'Clothing', 1799.99, 2499.99, 860),
('Raymond Formal Shirt', 'Raymond', 'Clothing', 1999.99, 2799.99, 740),
('Levi’s Cargo Pants', 'Levi’s', 'Clothing', 2899.99, 3999.99, 720),
('Timberland Leather Boots', 'Timberland', 'Footwear', 6999.99, 8999.99, 480),
('Asus ROG Gaming Monitor', 'Asus', 'Computers', 34999.99, 39999.99, 275),
('Samsung 4K Smart TV', 'Samsung', 'Electronics', 59999.99, 64999.99, 520),
('OnePlus Nord Smartphone', 'OnePlus', 'Mobile Phones', 28999.99, 32999.99, 780),
('Realme Smartwatch', 'Realme', 'Electronics', 5999.99, 7499.99, 980),
('Boat BassHeads Earphones', 'Boat', 'Electronics', 999.99, 1499.99, 2100),
('Dell Inspiron Laptop', 'Dell', 'Computers', 54999.99, 62999.99, 390),
('HP Gaming Keyboard', 'HP', 'Computers', 4999.99, 5999.99, 430),
('Fossil Smart Watch', 'Fossil', 'Accessories', 12999.99, 14999.99, 880),
('Wrangler Denim Jeans', 'Wrangler', 'Clothing', 2399.99, 2999.99, 920),
('Puma Running Shoes', 'Puma', 'Footwear', 3799.99, 4999.99, 1050),
('U.S. Polo T-Shirt', 'U.S. Polo', 'Clothing', 1499.99, 1999.99, 870),
('Noise Wireless Earbuds', 'Noise', 'Electronics', 2999.99, 3999.99, 1280),
('MI Power Bank 20000mAh', 'Xiaomi', 'Electronics', 1599.99, 2499.99, 1720),
('Apple iPhone 13', 'Apple', 'Mobile Phones', 78999.99, 85999.99, 690),
('Samsung Curved Monitor', 'Samsung', 'Computers', 25999.99, 29999.99, 310),
('LG Front Load Washing Machine', 'LG', 'Appliances', 39999.99, 44999.99, 250),
('Sony 65-Inch OLED TV', 'Sony', 'Electronics', 119999.99, 129999.99, 180),
('Levi’s Cotton Shirt', 'Levi’s', 'Clothing', 2199.99, 2799.99, 750),
('Nike Training Shoes', 'Nike', 'Footwear', 4799.99, 5999.99, 1250),
('Samsung Side-by-Side Refrigerator', 'Samsung', 'Appliances', 79999.99, 89999.99, 190),
('Voltas 1.5 Ton AC', 'Voltas', 'Appliances', 34999.99, 39999.99, 290),
('Canon DSLR Camera', 'Canon', 'Electronics', 59999.99, 64999.99, 210),
('Sony Soundbar', 'Sony', 'Electronics', 17999.99, 19999.99, 300),
('Nike Casual Sneakers', 'Nike', 'Footwear', 2599.99, 3499.99, 860),
('Samsung Galaxy Tab', 'Samsung', 'Tablets', 47999.99, 52999.99, 320),
('Bose Noise Cancelling Headphones', 'Bose', 'Electronics', 24999.99, 29999.99, 270),
('Asus TUF Gaming Laptop', 'Asus', 'Computers', 94999.99, 99999.99, 200),
('OnePlus Buds Pro', 'OnePlus', 'Electronics', 8999.99, 9999.99, 1050),
('Lenovo ThinkPad Laptop', 'Lenovo', 'Computers', 64999.99, 69999.99, 390),
('Dell XPS 13 Laptop', 'Dell', 'Computers', 104999.99, 114999.99, 180),
('Nike Cotton Socks', 'Nike', 'Clothing', 499.99, 899.99, 2300),
('Reebok Training Jacket', 'Reebok', 'Clothing', 2999.99, 3999.99, 780);


-- Finding the number of products in the dataset

SELECT count(*) as total_products FROM product_details ;
SELECT COUNT(product_name) AS total_products FROM product_details;


-- Finding the average discounted price of products in the dataset
SELECT avg(discounted_price) as average_price FROM product_details ;
SELECT avg(marked_price) as average_price FROM product_details;

-- Finding the most expensive product on myntra
SELECT max(discounted_price) as average_price FROM product_details;
SELECT max(marked_price) as average_price FROM product_details;


-- Finding the least expensive product on myntra
SELECT min(discounted_price) as average_price FROM product_details ;
SELECT min(marked_price) as average_price FROM product_details ;

-- Find the total rating count of all products
SELECT sum(rating_count) as total_rating FROM product_details ;

-- Find the total unique brands
SELECT DISTINCT (brand_name) as brands FROM product_details ;


-- Find the number of unique brands
SELECT count(DISTINCT(brand_name)) as total_brands FROM product_details ;
