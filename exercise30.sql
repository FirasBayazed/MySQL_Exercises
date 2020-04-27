use northwind;
select date_format(order_date, '%Y - %m') as 'Sales Month',ord.ship_state_province as 'State',
concat('$',format((odt.quantity * products.list_price),2)) as 'Total Sales' from orders as ord
join order_details as odt on ord.id = odt.order_id 
join products on odt.product_id = products.id 
where odt.status_id = 2 group by date_format(order_date, '%Y - %m'),ord.ship_state_province order by 'SalesMonth' asc;


select date_format(order_date, '%Y - %m') as 'Sales Month',ord.ship_state_province as 'State',
sum(odt.quantity * products.list_price) as 'Total Sales' from orders as ord
join order_details as odt on ord.id = odt.order_id 
join products on odt.product_id = products.id 
where odt.status_id = 2 group by date_format(order_date, '%Y - %m');
