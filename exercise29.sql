use northwind;
select * from orders as ord join order_details as ord_det on ord.id = ord_det.order_id join customers as cust on ord.customer_id = cust.id;
