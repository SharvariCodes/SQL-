 select * from sales;
 select * from product;
 select * from users;
 select * from goldusers_signup;

-- 1. what is total amount each customer spent on food app?
select s.userid, sum(price) as total_amt from sales as s
inner join
product as p
on s.product_id = p.product_id
group by s.userid

--2.How many days has each customer visited the food app?
select userid, count(distinct created_date) as days_visited from sales group by userid

--3.what was the first product purchased by each customer?
select * from (select *, dense_rank() over (partition by userid order by created_date) as rn
from sales) as t
where rn = 1

--4.what is most purchased item on menu & how many times was it purchased by all customers ?
select top 1 product_id, count(product_id) as count_prod
from sales
group by product_id
order by count(product_id) desc

--5.which item was most popular for each customer?
select * from 
(select *, rank() over(partition by userid order by count_prod desc) as rnk 
from (select userid, product_id, count(product_id) as count_prod from sales 
	group by userid, product_id) as a
) as b 
where rnk = 1

--6.which item was purchased first by customer after they become a member ?
7. which item was purchased just before the customer became a member?
8. what is total orders and amount spent for each member before they become a member?
9. If buying each product generates points for eg 5rs=2 zomato point 
  and each product has different purchasing points for eg for p1 5rs=1 zomato point,for p2 10rs=zomato point and p3 5rs=1 zomato point  2rs =1zomato point, calculate points collected by each customer and for which product most points have been given till now.
10. In the first year after a customer joins the gold program (including the join date ) irrespective of what customer has purchased earn 5 zomato points for every 10rs spent who earned more more 1 or 3 what int earning in first yr ? 1zp = 2rs
11. rnk all transaction of the customers
12. rank all transaction for each member whenever they are zomato gold member for every non gold member transaction mark as na
