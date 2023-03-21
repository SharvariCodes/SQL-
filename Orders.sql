drop table Orders
create table Orders (
	order_id int,
	order_date varchar(50),
	customer_order_id int,
	order_status varchar(50)
);
insert into Orders (order_id, order_date, customer_order_id, order_status) values (1, '12/01/2023', 53, 'COMPLETED');
insert into Orders (order_id, order_date, customer_order_id, order_status) values (2, '08/10/2022', 39, 'CLOSED');
insert into Orders (order_id, order_date, customer_order_id, order_status) values (3, '22/04/2022', 9, 'CLOSED');
insert into Orders (order_id, order_date, customer_order_id, order_status) values (4, '09/09/2022', 13, 'COMPLETED');
insert into Orders (order_id, order_date, customer_order_id, order_status) values (5, '08/11/2022', 54, 'COMPLETED');
insert into Orders (order_id, order_date, customer_order_id, order_status) values (6, '10/06/2022', 11, 'PENDING');
insert into Orders (order_id, order_date, customer_order_id, order_status) values (7, '18/12/2022', 51, 'CLOSED');
insert into Orders (order_id, order_date, customer_order_id, order_status) values (8, '25/07/2022', 10, 'COMPLETED');
insert into Orders (order_id, order_date, customer_order_id, order_status) values (9, '24/01/2023', 84, 'PENDING');
insert into Orders (order_id, order_date, customer_order_id, order_status) values (10, '09/02/2023', 69, 'PENDING');
insert into Orders (order_id, order_date, customer_order_id, order_status) values (11, '15/02/2023', 64, 'CLOSED');
insert into Orders (order_id, order_date, customer_order_id, order_status) values (12, '18/05/2022', 33, 'PENDING');
insert into Orders (order_id, order_date, customer_order_id, order_status) values (13, '14/09/2022', 43, 'CLOSED');
insert into Orders (order_id, order_date, customer_order_id, order_status) values (14, '05/09/2022', 91, 'PENDING');
insert into Orders (order_id, order_date, customer_order_id, order_status) values (15, '01/01/2023', 70, 'PENDING');
insert into Orders (order_id, order_date, customer_order_id, order_status) values (16, '06/03/2023', 46, 'COMPLETED');
insert into Orders (order_id, order_date, customer_order_id, order_status) values (17, '22/01/2023', 95, 'PENDING');
insert into Orders (order_id, order_date, customer_order_id, order_status) values (18, '20/02/2023', 95, 'PENDING');
insert into Orders (order_id, order_date, customer_order_id, order_status) values (19, '10/07/2022', 33, 'PENDING');
insert into Orders (order_id, order_date, customer_order_id, order_status) values (20, '10/09/2022', 4, 'COMPLETED');
insert into Orders (order_id, order_date, customer_order_id, order_status) values (21, '20/02/2023', 95, 'PENDING');
insert into Orders (order_id, order_date, customer_order_id, order_status) values (22, '10/07/2022', 33, 'PENDING');
insert into Orders (order_id, order_date, customer_order_id, order_status) values (23, '10/09/2022', 4, 'COMPLETED');
insert into Orders (order_id, order_date, customer_order_id, order_status) values (24, '20/02/2023', 95, 'COMPLETED');
insert into Orders (order_id, order_date, customer_order_id, order_status) values (25, '20/02/2023', 95, 'COMPLETED');
insert into Orders (order_id, order_date, customer_order_id, order_status) values (26, '20/02/2023', 95, 'COMPLETED');
insert into Orders (order_id, order_date, customer_order_id, order_status) values (27, '10/09/2022', 4, 'COMPLETED');
insert into Orders (order_id, order_date, customer_order_id, order_status) values (28, '12/01/2023', 53, 'COMPLETED');
insert into Orders (order_id, order_date, customer_order_id, order_status) values (29, '08/10/2022', 39, 'CLOSED');
insert into Orders (order_id, order_date, customer_order_id, order_status) values (30, '22/04/2022', 9, 'CLOSED');

select * from Orders

--total orders each customer has placed. Premium customers (who places more orders)

--Approach 1 : Subquery approach
select avg(total_orders_per_customer) as avg_orders_per_customer
from(select customer_order_id, count(*) as total_orders_per_customer
     from Orders group by customer_order_id) x

--Approach 2 : CTE / with clause
with total_orders (customer_order_id, total_orders_per_customer) as 
	(select customer_order_id, count(*) as total_orders_per_customer
	from Orders group by customer_order_id)
select avg(total_orders_per_customer) as avg_orders from total_orders

--premium customers who placed orders greater than avg orders

---Subquery approach
select * from (select customer_order_id, count(*) as total_orders_per_customer
     from Orders group by customer_order_id) total_orders
join 

(select avg(total_orders_per_customer) as avg_orders_per_customer
from(select customer_order_id, count(*) as total_orders_per_customer
     from Orders group by customer_order_id) x) average_orders

on total_orders.total_orders_per_customer > average_orders.avg_orders_per_customer

---CTE Approach
---3 step process
--1. calculate total orders.
--2. calculate average orders.
--3. compare both of them to find premium customers.

with total_orders (customer_order_id, total_orders_per_customer) as
(select customer_order_id, count(*) as total_orders_per_customer from Orders group by customer_order_id),
average_orders (average_orders_per_customer) as 
(select avg(total_orders_per_customer) as average_orders_per_customer from total_orders)
select * from total_orders join average_orders
on total_orders.total_orders_per_customer > average_orders.average_orders_per_customer

