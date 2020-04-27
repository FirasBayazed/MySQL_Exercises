use empoyees;
create table persons(first_name varchar(255),last_name varchar(255));
Alter Table persons ADD COLUMN full_name VARCHAR(255);
insert into persons values('John','Thompson','John Thompson');
INSERT INTO persons (full_name) SELECT concat(first_name,' ',last_name) from persons;
select concat(first_name,' ',last_name) as full_name from persons;
select * from persons;
ALTER TABLE persons ADD COLUMN full_name varchar(255);
INSERT INTO persons (full_name) SELECT concat(first_name,' ',last_name) from persons;
drop table if exists persons;

Alter Table persons
ADD COLUMN full_name VARCHAR(255) NOT NULL Default 'f'; 