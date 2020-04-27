use employees;
create table customer(id integer auto_increment,first_name varchar(100),last_name varchar(100),address varchar(100),city varchar(100),state varchar(2),zip_code varchar(10),
primary key (id));
create table drink_order (id integer,customer_id integer, drink_description varchar(10),primary key (id));

insert into customer values(1234,'Michael','Weston','123 Brickel','Miami','FL','33123');
insert into customer values(null,'Michael 2','Weston','123 Brickel','Miami','FL','33123');

insert into drink_order values(123344,1234,'Scotch');

select * from customer;
select * from drink_order;

create table persons(id int auto_increment,first_name varchar(255),last_name varchar(255),primary key (id));
insert into persons (first_name,last_name) values('John','Thompson');

select * from persons;

drop table if exists persons,customer,drink_order;