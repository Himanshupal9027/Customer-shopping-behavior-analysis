USE  customer_behaviordb;

SELECT * from customer_table LIMIT 10;

SELECT item_purchased, AVG(review_rating) as "Product review rating"
from customer_table 
group by item_purchased
order by AVG(review_rating) DESC LIMIT 5;

SELECT avg(purchase_amount) from customer_table 
WHERE shipping_type = "Express";

SELECT avg(purchase_amount) from customer_table 
WHERE shipping_type = "standard"; 

SELECT shipping_type , AVG(purchase_amount)
FROM customer_table
WHERE shipping_type in ('Standard' , 'Express')
group by shipping_type;

SELECT subscription_status, 
count(customer_id) as Total_customer ,
avg(purchase_amount) as average_spend,
sum(purchase_amount) as total_spend 
FROM customer_table
GROUP BY subscription_status
ORDER BY average_spend , total_spend desc;