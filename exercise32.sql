use northwind;
select * from orders,order_details,products
where orders.id = order_details.order_id and order_details.product_id = products.id;

select week(order_date),employee_id,shipping_fee + (quantity * list_price)
from orders,order_details,products
where orders.id = order_details.order_id and order_details.product_id = products.id;

select first_name, last_name, sales from employees
left join
(select week(order_date) as week, employee_id, sum(shipping_fee + (quantity * list_price)) as sales 
from orders, order_details, products
where orders.id = order_details.order_id and order_details.product_id = products.id
group by 1,2) as order_data on employees.id = order_data.employee_id;

