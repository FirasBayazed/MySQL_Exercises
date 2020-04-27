use employees;
create table author(id integer auto_increment,first_name varchar(50),last_name varchar(50),email varchar (256),phone varchar(15),website varchar(200),
date_created timestamp,date_updated timestamp,primary key (id));

create table book(id integer auto_increment,author_id integer,title varchar(100),sub_title varchar(150), description text,isbn char(13),price decimal(9,2),
date_created timestamp,date_updated timestamp,primary key (id),unique key (isbn),constraint fk_book_author foreign key (author_id) references author (id));

-- create table author(id integer auto_increment,first_name varchar(50),last_name varchar(50),email varchar (256),phone varchar(15),website varchar(200),
-- date_created timestamp,date_updated timestamp not null default current_timestamp,primary key (id));