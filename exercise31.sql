use northwind;
select * from orders as ord,order_details as odt,products as p where ord.id = odt.order_id and odt.product_id = p.id;

select odt.quantity * p.list_price,p.standard_cost 
from orders as ord,order_details as odt,products as p where ord.id = odt.order_id and odt.product_id = p.id;