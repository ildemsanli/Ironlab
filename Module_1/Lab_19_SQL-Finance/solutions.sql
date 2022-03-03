SELECT * FROM olist.order_items;
use olist;
#Question 1
select * from order_items order by price DESC limit 1;
select * from order_items order by price ASC limit 1;
#Question 2
select * from order_items order by shipping_limit_date ASC limit 1;
select * from order_items order by shipping_limit_date DESC limit 1;
#Question 3
select * from customers;
select customer_state, count(*) from customers group by customer_state order by count(*) DESC;
#Question 4
select customer_city, count(*) from customers where customer_state="SP" group by customer_city order by count(*) DESC;
#Question 5
select count(distinct business_segment) from closed_deals;
#Question 6
select business_segment, sum(declared_monthly_revenue) from closed_deals 
group by business_segment order by sum(declared_monthly_revenue) DESC limit 3;
#Question 7
select count(distinct review_score) from order_reviews;
#Question 8
select review_score, count(review_score), case
	when review_score = 5 then 'very good'
	when review_score = 4 then 'good'
	when review_score = 3 then 'ok'
	when review_score = 2 then 'bad'
	when review_score = 1 then 'very bad'
end as cat from order_reviews
group by review_score
order by count(review_score) desc;

#Question 9
select count(review_score), review_score from order_reviews 
group by review_score order by count(review_score) DESC;

