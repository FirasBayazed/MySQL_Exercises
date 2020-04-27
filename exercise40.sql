use employees;
alter table author add column middle_name varchar(50) after first_name;
alter table author drop column middle_name;
alter table author add column middle_name varchar(50);
alter table author change column middle_name middle_name varchar(60) after first_name;
alter table author modify middle_name varchar(50) after last_name;

alter table author add index (last_name);
alter table author drop index last_name;

alter table author add index last_name_idx (last_name);
alter table author drop index last_name_idx;
alter table book drop foreign key fk_book_author;
alter table book add foreign key fk_book_author (author_id) references author(id);