/*1. ONE TO ONE RELEATIONSHIP.
example:
One customer has their won row in customers details table and one customer details
row is  associate with one customer bue there is no other user or customer that would
be associated with it because its a one to one relationship.

2. ONE TO MANY RELATIONSHIP.
relationship between one book and many reviews but reviews belong to one book i.e 
one to many relationship.

3.MAY TO MANY RELATIONSHIP.
books can have many authors and those authors have many books i.e many to many 
releationship

ONE:MANY
PRIMARY KEY : is the unique value key
Foreign key : Refrence to another table within a given table*/


SHOW DATABASES;
CREATE DATABASE customers_orders;
use customers_orders;
-- Creating the customers and orders tables

CREATE TABLE customers(
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    email VARCHAR(100)
);
CREATE TABLE orders(
    id INT AUTO_INCREMENT PRIMARY KEY,
    order_date DATE,
    amount DECIMAL(8,2),
    customer_id INT,
    foreign key (customer_id) REFERENCES customers(id)
    );

-- Inserting some customers and orders

INSERT INTO customers (first_name, last_name, email) 
VALUES ('Boy', 'George', 'george@gmail.com'),
       ('George', 'Michael', 'gm@gmail.com'),
       ('David', 'Bowie', 'david@gmail.com'),
       ('Blue', 'Steele', 'blue@gmail.com'),
       ('Bette', 'Davis', 'bette@aol.com');
       
select * from customers;
       
INSERT INTO orders (order_date, amount, customer_id)
VALUES ('2016/02/10', 99.99, 1),
       ('2017/11/11', 35.50, 1),
       ('2014/12/12', 800.67, 2),
       ('2015/01/03', 12.50, 2),
       ('1999/04/11', 450.25, 5);
       
SELECT * FROM orders;
INSERT INTO orders (order_date, amount, customer_id)
VALUES ('2016/06/06', 33.67, 98);   
-- when we used forgine key then we can not add any id if it not persent in customers table

