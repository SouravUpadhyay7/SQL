USE roc;

CREATE TABLE IF NOT EXISTS products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(255),
    product_tag VARCHAR(100),
    brand_name VARCHAR(100),
    brand_tag VARCHAR(100),
    marked_price DECIMAL(10,2),
    discounted_price DECIMAL(10,2),
    discount_percent DECIMAL(5,2),
    rating DECIMAL(3,2),
    rating_count INT
);

INSERT INTO products (product_name, product_tag, brand_name, brand_tag, marked_price, discounted_price, discount_percent, rating, rating_count) VALUES
('Nike Running Shoes', 'shoes', 'Nike', 'nike', 5000, 4500, 10.00, 4.5, 1200),
('Adidas Sports Shoes', 'shoes', 'Adidas', 'adidas', 5500, 4800, 12.73, 4.3, 900),
('Puma Casual Sneakers', 'shoes', 'Puma', 'puma', 4000, 3500, 12.50, 4.1, 800),
('Levi\'s Blue Jeans', 'jeans', 'Levi\'s', 'levis', 3000, 2700, 10.00, 4.2, 1100),
('Wrangler Slim Fit Jeans', 'jeans', 'Wrangler', 'wrangler', 3200, 2900, 9.38, 4.0, 950),
('US Polo Assn Polo T-Shirt', 'tshirts', 'US Polo Assn', 'uspolo', 1500, 1200, 20.00, 4.4, 850),
('Tommy Hilfiger T-Shirt', 'tshirts', 'Tommy Hilfiger', 'tommyhilfiger', 2000, 1800, 10.00, 4.6, 1000),
('H&M Casual Shirt', 'shirts', 'H&M', 'hm', 2200, 1900, 13.64, 4.3, 890),
('Zara Cotton Dress', 'dresses', 'Zara', 'zara', 5000, 4500, 10.00, 4.5, 780),
('Raymond Formal Shirt', 'shirts', 'Raymond', 'raymond', 2500, 2200, 12.00, 4.1, 720),
('Pepe Jeans Slim Fit Jeans', 'jeans', 'Pepe Jeans', 'pepe', 2800, 2500, 10.71, 4.0, 680),
('Nike Sports T-Shirt', 'tshirts', 'Nike', 'nike', 1800, 1500, 16.67, 4.7, 1300),
('Adidas Casual Sneakers', 'shoes', 'Adidas', 'adidas', 4500, 4000, 11.11, 4.4, 970),
('Puma Running T-Shirt', 'tshirts', 'Puma', 'puma', 1600, 1400, 12.50, 4.2, 910),
('Allen Solly Formal Shirt', 'shirts', 'Allen Solly', 'allensolly', 2400, 2100, 12.50, 4.3, 850),
('Reebok Jogging Shoes', 'shoes', 'Reebok', 'reebok', 4800, 4200, 12.50, 4.3, 720),
('Calvin Klein Jeans', 'jeans', 'Calvin Klein', 'calvinklein', 6000, 5400, 10.00, 4.6, 560),
('Forever 21 Casual Dress', 'dresses', 'Forever 21', 'forever21', 3500, 3200, 8.57, 4.1, 630),
('Mango Floral Dress', 'dresses', 'Mango', 'mango', 4500, 4000, 11.11, 4.4, 750),
('Jack & Jones Slim Fit T-Shirt', 'tshirts', 'Jack & Jones', 'jackjones', 1800, 1600, 11.11, 4.3, 890);




-- 1. Finding the names of unique brands
select distinct brand_name from products;

-- 2. Finding the number of unique brands
select count(distinct brand_name) from products;

-- 3. Finding the number of products in each brands
select brand_tag, count(product_tag) from products group by brand_tag;


-- 4. Finding the top 5 brand who has the most number of products | different product in their inventory
select brand_tag, count(product_tag)  as 'products' 
from products 
group by brand_tag
order by products desc limit 5;

-- 5. Finding the top 5 brand who sold the most number of products
select brand_tag, sum(rating_count)  as 'products_sold' from products 
group by brand_tag
order by products_sold desc limit 5;

-- 6. Finding the top 5 most expensive brands based on their discounted price
select brand_tag, round(avg(discounted_price))  as 'average_price' from products 
group by brand_tag
order by average_price desc limit 5;


-- 7. Finding the top 5 least expensive brands based on their discounted price
select brand_tag, round(avg(discounted_price))  as 'average_price' from products 
group by brand_tag
order by average_price asc limit 5;


-- 8. Finding the top 10 best-selling product categories 
select product_tag, sum(rating_count)  as 'product_sold' from products 
group by product_tag
order by product_sold desc limit 5;

-- 9. Finding the top 10 brands who gives maximum discount
select brand_tag, avg(discount_percent)  as 'avg_discount' from products 
group by brand_tag
order by avg_discount desc limit 5;

-- 10. Finding the top 5 most expensive product categories
select product_tag, avg(discounted_price)  as 'avg_price' from products 
group by product_tag
order by avg_price desc limit 5;

-- 11. Brand Report Card
select brand_tag, 
	sum(rating_count) as 'people_rated',
    min(marked_price) as 'min_mar_price',
    avg(marked_price) as 'avg_mar_price',
    max(marked_price) as 'max_mar_price' 
from products group by brand_tag;

-- 12. Which product_category of any brand is sold the most?
select brand_tag, product_tag, sum(rating_count) as 'people_rated' from products 
group by brand_tag, product_tag
order by people_rated desc limit 10;

-- 13. List top 5 brands which has sold most number of tshirts
select brand_tag, product_tag, sum(rating_count) as 'orders', avg(discounted_price) as 'avg_price'
from products 
where product_tag = 'tshirts'
group by brand_tag
order by orders desc limit 5;

-- 14. List top 5 brands which has sold most number of shirts
select brand_tag, product_tag, sum(rating_count) as 'orders', avg(discounted_price) as 'avg_price'
from products 
where product_tag = 'shirts'
group by brand_tag
order by orders desc limit 5;

-- 15. List top 5 brands which has sold most number of jeans
select brand_tag, product_tag, sum(rating_count) as 'orders', avg(discounted_price) as 'avg_price'
from products 
where product_tag = 'jeans'
group by brand_tag
order by orders desc limit 5;

-- 16. List top 5 brands which has sold most number of dresses
select brand_tag, product_tag, sum(rating_count) as 'orders', avg(discounted_price) as 'avg_price'
from products 
where product_tag = 'dresses'
group by brand_tag
order by orders desc limit 5;

-- 17. Most popular product name listed
select product_name ,count(product_name) as 'name_count' from products 
group by product_name 
order by name_count desc limit 10;

-- 18. Number of products sold for every rating (0 - 5)
select rating ,count(rating) as 'freq' from products 
group by rating 
order by rating asc;

-- 19. Number of products sold for every rating by nike
select rating ,count(rating) as 'freq' from products 
where brand_tag = 'nike'
group by rating 
order by rating asc;

-- 20. Number of products sold for every rating in tshirt category

select rating ,count(rating_count) as 'freq' from products 
where  product_tag = 'tshirts'
group by rating 
order by rating asc;






-- 21. Relation between price of the thisrt and its rating wrt to people rated
select product_tag, rating, round(avg(rating_count)) as 'product_count', round(avg(discounted_price))
from products
where product_tag = 'tshirts'
group by rating
order by rating asc;


-- 22. Find the average rating for each product category (product tag) along with the number of products and total rating count
select product_tag, avg(rating) as 'avg_rating', count(*) as 'total_products', sum(rating_count) as 'total_rating_count'
from products
group by product_tag
order by avg_rating asc;


-- 23. Find the brand with the highest average rating among products with a discounted price greater than 5000
select brand_tag, avg(rating) as 'avg_rating', sum(rating_count)
from products
where discounted_price > 5000
group by brand_tag
order by avg_rating desc;