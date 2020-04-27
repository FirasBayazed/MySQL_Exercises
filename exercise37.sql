use employees;
create table customer(id integer auto_increment,first_name varchar(100),last_name varchar(100),address varchar(100),city varchar(100),state varchar(2),zip_code varchar(10),
primary key (id));
create table drink_order (id integer auto_increment,customer_id integer, drink_description varchar(100),primary key (id),
CONSTRAINT fk_drink_order_customer FOREIGN KEY (customer_id) REFERENCES customer (id));


insert into customer values(null,'Michael','Weston','123 Brickel','Miami','FL','33123');

insert into drink_order values (123344, 1, 'Scotch');

select * from customer; 
select * from drink_order;