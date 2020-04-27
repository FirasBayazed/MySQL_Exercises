use employees;
drop table if exists drink_order,customer;

create  table customer(id integer auto_increment, first_name varchar(100),last_name varchar(100),address varchar(100),city varchar(100),
state varchar(2), zip_code varchar(10), primary key (id), index last_name_idx (last_name asc));

create  table customer(id integer auto_increment, first_name varchar(100),last_name varchar(100),address varchar(100),city varchar(100),
state varchar(2), zip_code varchar(10), primary key (id),unique key unique_idx (first_name, last_name,address,city,state,zip_code), index last_name_idx (last_name asc));

insert into customer values(null,'Michael','Weston','123 Brickel','Miami','FL','33123');
insert into customer values(null,'Sam','Weston','123 Brickel','Miami','FL','33123');
insert into customer values(null,'Sam','Axe','123 Brickel','Miami','FL','33123');
select * from customer;