create database library;

use library;

create table books (
ISBN int not null unique auto_increment primary key,
book_name varchar (40));

create table users (
user_ID int not null unique auto_increment primary key, 
Name varchar (40));

insert into users (user_id, firts_name, last_name)
values (1, 'A', 'B'),
(2, 'J', 'R');

select * from users;

alter table books
add column user_id int;

insert into books (ISBN, book_name, user_id)
values (1234, 'of mice and men', 1),
(5678, 'meditation', 2);

select * from books;

alter table books
add foreign key (user_id) references users(user_id); 
