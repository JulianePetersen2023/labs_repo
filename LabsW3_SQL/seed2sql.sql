create database car_company;

use car_company

create table cars (
Car_ID int not null unique auto_increment primary key,
Vin int,
manufacturer varchar (40), 
model varchar (40), 
year int, 
colours varchar (40));

create table customer (
ID int not null unique auto_increment primary key,
customer_id int, 
Name varchar (40), 
Contact varchar (40), 
Adress varchar (40));


create table salesperson (
ID int not null unique auto_increment primary key, 
staff_ID int, 
Name varchar (40), 
store varchar (40));

create table (
ID int not null unique auto_increment primary key, 
invoice_no int, 
Date varchar (40), 
Car varchar (40), 
Customer varchar (40), 
Salesperson varchar (40));

