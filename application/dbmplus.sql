DROP DATABASE IF EXISTS dbmplus;
CREATE DATABASE dbmplus;
USE dbmplus;

CREATE TABLE BOOK(
	id int auto_increment primary key ,
	title varchar(100) not null ,
	author varchar(100) not null,
	date_published date,
	number_of_pages int,
	type_of_books varchar(100)
)