USE roc;

CREATE TABLE IF NOT EXISTS restaurants (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    city VARCHAR(50),
    cuisine VARCHAR(50),
    rating FLOAT,
    rating_count INT,
    cost INT
);

INSERT INTO restaurants (name, city, cuisine, rating, rating_count, cost) VALUES
('Spicy Delight', 'Mumbai', 'Indian', 4.5, 120, 500),
('Tandoori Treats', 'Delhi', 'Indian', 4.2, 95, 450),
('Sushi World', 'Bangalore', 'Japanese', 4.7, 150, 800),
('Pizza Hub', 'Mumbai', 'Italian', 4.0, 110, 600),
('Pasta Paradise', 'Delhi', 'Italian', 3.8, 85, 550),
('Burger Junction', 'Chennai', 'Fast Food', 4.1, 130, 400),
('BBQ Nation', 'Bangalore', 'BBQ', 4.6, 200, 900),
('Chaat Corner', 'Delhi', 'Street Food', 4.3, 180, 300),
('Dimsum Den', 'Mumbai', 'Chinese', 4.4, 140, 700),
('Biryani Bliss', 'Hyderabad', 'Indian', 4.8, 250, 650),
('Taco House', 'Bangalore', 'Mexican', 4.2, 160, 750),
('Steakhouse', 'Chennai', 'American', 4.5, 140, 1000);

-- Verify inserted data
SELECT * FROM restaurants;

-- 1. Create new column containing average rating of restaurants throught the dataset
select *,  round(avg(rating) over(),2) as 'avg_rating' from restaurants;

-- 2. Create new column containing average rating_count of restaurants throught the dataset
select *,  round(avg(rating_count) over(),0) as 'avg_rating_count' from restaurants;

-- 3. Create new column containing average cost of restaurants throught the dataset
select *,  round(avg(cost) over(),0) as 'avg_cost' from restaurants;

-- 4. Create column containing average, min, max of cost,rating,rating_count of restaurants throught the dataset
select id, name, city, cuisine, rating,
	round(max(rating) over(), 2) as 'max_rating',
    round(avg(rating) over(), 2) as 'avg_rating',
    round(min(rating) over(), 2) as 'min_rating',
    
    round(max(cost) over(), 2) as 'max_cost',
    round(avg(cost) over(), 2) as 'avg_cost',
    round(min(cost) over(), 2) as 'min_cost'
    
from restaurants;

-- 5. Create column containing average cost of the city where that specific restaurant is from
select *, round(avg(cost) over( partition by city) ) as 'avg_cost' from restaurants;

-- 6. Create column containing average cost of the cuisine which that specific restaurant is serving
select *, round(avg(cost) over( partition by cuisine) ) as 'avg_cost' from restaurants;

-- 7. Create both column together
select *, 
	round(avg(cost) over( partition by city) ) as 'avg_cost_city',
    round(avg(cost) over( partition by cuisine) ) as 'avg_cost_cuisine'
from restaurants;

-- 8. List the restaurants whose cost is more than the average cost of the restaurants?
select * from restaurants where cost > (select avg(cost) from restaurants);
select * from (select *, avg(cost) over() as 'avg_cost' from restaurants) t where t.cost > t.avg_cost; 


-- 10. List the restaurants whose cuisine cost is more than the average cost?
select * from (select *, avg(cost) over(partition by cuisine) as 'avg_cost' from restaurants) t where t.cost > t.avg_cost; 
