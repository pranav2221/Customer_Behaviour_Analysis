create database customer_behavior;
use customer_behavior;
select * from customer limit 20;

-- lets answer some of the business questions
-- Q.1 What is the total revenue genrated by male vs. female customers
select gender ,sum(purchase_amount) as revenue
from customer
group by gender

-- Q.2 Which customer used a discount but still spent more than average purchase amount?
SELECT customer_id, purchase_amount
FROM customer
WHERE discount_applied = 'Yes'
  AND purchase_amount >= (
      SELECT AVG(purchase_amount)
      FROM customer
  );
  
  -- Q.3 which are the top 5 products with the highest average review rating?
 SELECT item_purchased,
       ROUND(AVG(CAST(review_rating AS DECIMAL(10,2))), 2) AS `Average Product Rating`
FROM customer
GROUP BY item_purchased
ORDER BY AVG(CAST(review_rating AS DECIMAL(10,2))) DESC
LIMIT 5;

-- Q.4 compare the average purchase amount between standard and express shipping
select shipping_type,
round(avg(purchase_amount),2) from customer
where shipping_type in ('Standard','Express')
group by shipping_type

-- Q5. Do subscribed customers spend more? Compare average spend and total revenue 
-- between subscribers and non-subscribers.
select subscription_status,
COUNT(customer_id) as total_customers,
round(AVG(purchase_amount),2) as avg_spend,
round(sum(purchase_amount),2) as total_revenue
from customer 
group by subscription_status
order by total_revenue,avg_spend desc;

-- Q.6  Which 5 products have the highest percentage of purchases with discounts applied?
SELECT item_purchased,
       ROUND(100.0 * SUM(CASE WHEN discount_applied = 'Yes' THEN 1 ELSE 0 END)/COUNT(*),2) AS discount_rate
FROM customer
GROUP BY item_purchased
ORDER BY discount_rate DESC
LIMIT 5;

-- Q7. Segment customers into New, Returning, and Loyal based on their total 
-- number of previous purchases, and show the count of each segment
with customer_type as (
SELECT customer_id, previous_purchases,
CASE 
    WHEN previous_purchases = 1 THEN 'New'
    WHEN previous_purchases BETWEEN 2 AND 10 THEN 'Returning'
    ELSE 'Loyal'
    END AS customer_segment
FROM customer)

select customer_segment,count(*) AS "Number of Customers" 
from customer_type 
group by customer_segment;

-- Q.8 Are customers who are repeat buyers (more than 5 previous purchases) also likely to subscribe?
SELECT subscription_status,
       COUNT(customer_id) AS repeat_buyers
FROM customer
WHERE previous_purchases > 5
GROUP BY subscription_status;

-- Q10. What is the revenue contribution of each age group? 
SELECT 
    age_group,
    SUM(purchase_amount) AS total_revenue
FROM customer
GROUP BY age_group
ORDER BY total_revenue desc;
