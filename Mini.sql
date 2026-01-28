use mini_project;

select * from customers;

----- level 1 question 1

select name, email from customers;

----- level 1 question 2

select * from products;

----- level 1 question 3

select distinct category from products;

----- level 1 question 4
select * from products where price >=1000;

----- level 1 question 5

select * from products where price>=2000 and  price<=5000;

----- level 1 question 6
select * from customers where customer_id in (3,4,5);

----- level 1 question 7

select * from customers where name like'A%';

----- level 1 question 8
select * from products where price < 3000;

----- level 1 question 9
select name, price from product order by price desc;

----- level 1 question 10
select name,price from products order by price desc,name asc;


---- level 2 Quecstion 1 

select * from orders where customer_id is null;

select * from products;

---- level 2 Quecstion 2

select name as customer_name  ,email as customer_email from customers;

---- level 2 Quecstion 3
select name, price* stock_quantity as total_value from products;

---- level 2 Quecstion 4

select * from customers;

select concat(name, phone ) as contact_directory  from customers;

---- level 2 Quecstion 5 

select * from orders;
select date (order_date) from orders;

---- level 2 Quecstion 6

 select * from products;
 
 select * from orders;
 
 ---- level 3 question 1
 
 select count(*)as count_orders from orders;
 
  ---- level 3 question 2
select sum(total_amount)  as total_revenue from orders;

  ---- level 3 question 3
  select average(total_amount)  from orders;

  ---- level 3 question 4
  
  select * from orders;
  select count(distinct customer_id) as customer_count from orders;
  select * from orders;
---- level 3 question 5

select customer_id, count(total_amount) from orders group by customer_id;   

---- level 3 question 6

select customer_id, sum(total_amount) from orders group by customer_id;   

---- level 3 question 7

select * from products;
select * from order_items;

select p.category, count(p.category)
from order_items oi
left join products p
on oi.product_id= p.prduct_id
group by product_category;

---- level 3 question 8
select category, avg(price) from products
group by category;

---- level 3 question 9
select date(order_date), count(order_id)
from orders
group by date(order_date);

---- level 3 question 10
select * from payments;

select method,sum(amount_paid)
from payments
group by method;

---- level 4 Question 1

select * from customers;
select * from orders;

select c.name, o.order_id
from customers c
inner join orders o
on c.customer_id=o.customer_id ;


---- level 4 Question 2

select * from products;
select * from order_items;

select p.name,oi.order_id
from products p
inner join order_items oi
on p.product_id=oi.product_id;

---- level 4 Question 3

select * from orders;
select * from payments;

select o.order_id,o.order_date,o.status,o.total_amount
from orders o
inner join payments p
on o.order_id=p.order_id;


---- level 4 Question 4

select * from customers;
select * from orders;

select c.name,c.email,o.order_id,o.order_date,o.status,o.total_amount
from customers c
left join orders o
on c.customer_id=o.customer_id;

---- level 4 Question 5
select * from products;
select * from order_items;

select p.product_id,p.name,oi.order_id,oi.product_id,oi.quantity
from  products p
left join order_items oi
on p.product_id=oi.product_id;


---- level 4 Question 6

select * from orders;
select * from payments;

select o.order_id,o.order_date,p.payment_id,p.payment_date,p.amount_paid
from orders o
right join payments p
on o.order_id=p.order_id;

---- level 4 Question 7
select c.*,o.*,p.*
from orders o
left join customers c
on o.customer_id=c.customer_id
left join payments p
on o.order_id=p.order_id;

select * from products;

---- level 5 Question 1

select * from products where price > (select avg(price) from products);

select * from orders; 

---- level 5 Question 2

 select * from orders order by order_date desc limit 1;

---- level 5 Question 3
select *
from orders
where total_amount>
(select avg(total_amount) 
from orders
where customer_id= o.customer_id);

---- level 5 Question 4
 select * from customers;
 select name from customers where customer_id not in 
 (select customer_id from orders);
 
 ---- level 5 Question 5
 select name from products where product_id not in 
 (select product_id from orders);
 
 select customer_id,max(total_amount) from orders
 group by customer_id;
 
  ---- level 5 Question 6
  
  select customer_id,max (total_amount) from orders
  group by customer_id;
  
    ---- level 5 Question 7

select customer_id,max (total_amount) from orders
inner join orders o on c.customer_id = o.customer_id
group by customer_id,customer_name
order by 
totalspent desc limit 1;

---- level 6 Question 1

  select customer_id from orders
  union
  select customer_id from product_reviews;

---- level 6 Question 2

select distinct customer_id from orders where customer_id in  
(select customer_id from product_reviews);






 







  
  


 
 
 





















