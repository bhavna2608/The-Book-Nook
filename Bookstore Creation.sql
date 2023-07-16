create database bookstore;

use bookstore;
create table Book(
book_id varchar(30),
title varchar(255),
author_id varchar(30) ,
publication_date date,
genre_id varchar(30),
ISBN int(13),
price float(5,2),
quantity int(5),
supplier_id varchar(30),
PRIMARY KEY(book_id)
);

create table Author(
author_id varchar(30),
name varchar(100) NOT NULL,
birthdate date NULL,
nationality varchar(100) NULL,
no_of_books int(4) NOT NULL,
website varchar(255) NULL,
image varchar(255) NULL,
awards varchar(255) NULL,
contact varchar(255) NULL,
PRIMARY KEY(author_id)
);

create table Genre(
genre_id varchar(30),
genres varchar(255) NOT NULL,
PRIMARY KEY(genre_id)
);

create table Orders(
order_id varchar(30),
customer_id varchar(30) NOT NULL,
order_date date NOT NULL,
total_amount float(5,2) NOT NULL,
PRIMARY KEY(order_id)
);

create table OrderItems(
order_item_id varchar(30),
order_id varchar(30) NOT NULL,
book_id varchar(30) NOT NULL,
quantity int(4) NOT NULL,
price float(5,2) NOT NULL,
PRIMARY KEY(order_item_id)
);

create table Customer(
customer_id varchar(30),
name varchar(100) NOT NULL,
email varchar(255) NULL,
address_line1 varchar(255) NOT NULL,
address_line2 varchar(255) NULL,
city varchar(255) NOT NULL,
zipcode int(6) NOT NULL,
phone int(10) NOT NULL,
birthdate date NULL,
total_books_purchased int(5) NOT NULL,
status varchar(20) NOT NULL,
PRIMARY KEY(customer_id)
);

create table Employee(
employee_id varchar(30),
name varchar(100) NOT NULL,
position varchar(100) NOT NULL,
email varchar(255) NOT NULL,
phone int(10) NOT NULL,
birthdate date NULL,
PRIMARY KEY(employee_id)
);

create table Supplier(
supplier_id varchar(30),
name varchar(100) NOT NULL,
email varchar(255) NOT NULL,
address_line1 varchar(255) NOT NULL,
address_line2 varchar(255) NULL,
city varchar(255) NOT NULL,
country varchar(255) NOT NULL,
zipcode int(6) NOT NULL,
phone int(10) NOT NULL,
PRIMARY KEY(supplier_id)
);

create table Review(
review_id varchar(30),
book_id varchar(30) NOT NULL,
customer_id varchar(30) NOT NULL,
rating float(2,1) NOT NULL,
comment mediumtext NULL,
review_date date NOT NULL,
PRIMARY KEY(review_id)
);

create table Promotion(
promotion_id varchar(30),
name varchar(100) NOT NULL,
start_date date NOT NULL,
end_date date NULL,
discount_percentage float(3,1) NOT NULL,
PRIMARY KEY(promotion_id)
);

create table EmployeeShift(
shift_id varchar(30),
employee_id varchar(30) NOT NULL,
start_time datetime NOT NULL,
end_time datetime NOT NULL,
PRIMARY KEY(shift_id)
);