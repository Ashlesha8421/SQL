-- LEFT JOIN 
-- Left refers to the first table, or the table you will be joining to.
-- This query finds matches and adds them to a newly created table in the same way as an INNER JOIN.
/*For any rows in the first (or LEFT)
 table that did not have a match, it will still add this row to the new table
 and put in nulls for the columns from the other table.
*/

USE customers_orders;
show tables;

SELECT first_name, last_name,order_date, amount
FROM customers
JOIN orders
	ON customers.id=orders.customer_id
    ORDER BY order_date;
    
SELECT 
first_name,
 last_name,
order_date, 
SUM(amount) AS total_spent
FROM customers
JOIN orders
	ON customers.id=orders.customer_id
GROUP BY orders.customer_id
ORDER BY total_spent DESC;


-- LEFT JOIN 
-- It select everything from A, along with any matching records in B
SELECT * FROM customers
LEFT JOIN orders
    ON customers.id = orders.customer_id;
    
    
SELECT first_name,last_name, order_date,amount 
FROM customers
LEFT JOIN orders
    ON customers.id = orders.customer_id;


-- ISNULL(arg1,arg2) == (Thing wann to ckeck ,want to replace) 
SELECT 
first_name,
last_name, 
IFNULL(SUM(amount),0) AS total_spent
FROM customers
LEFT JOIN orders
    ON customers.id = orders.customer_id
GROUP BY customers.id
ORDER BY total_spent;

-- RIGHT JOIN
-- Select everything from B, along with any matching records in A
-- This is one of the rarest types of JOIN in SQL. 
/* -- The reason for this is that any RIGHT JOIN can be re-written as a LEFT JOIN,
 which is more conventional. */
-- Right refers to the second table.

-- OUR FIRST RIGHT JOIN (seems the same as a left join?)
SELECT first_name,last_name,order_date,amount 
FROM customers
RIGHT JOIN orders
    ON customers.id=orders.customer_id;

DROP TABLES customers,orders;
SHOW TABLES;

-- ALTERING OUR SCHEMA to allow for a better example (optional)
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
    customer_id INT
    );

-- INSERTING NEW DATA (no longer bound by foreign key constraint)

INSERT INTO customers (first_name, last_name, email) 
VALUES ('Boy', 'George', 'george@gmail.com'),
       ('George', 'Michael', 'gm@gmail.com'),
       ('David', 'Bowie', 'david@gmail.com'),
       ('Blue', 'Steele', 'blue@gmail.com'),
       ('Bette', 'Davis', 'bette@aol.com');
       
       
SELECT * FROM customers;
       
INSERT INTO orders (order_date, amount, customer_id)
VALUES ('2016/02/10', 99.99, 1),
       ('2017/11/11', 35.50, 1),
       ('2014/12/12', 800.67, 2),
       ('2015/01/03', 12.50, 2),
       ('1999/04/11', 450.25, 5);
       
SELECT * FROM orders;

INSERT INTO orders(order_Date, amount, customer_id)VALUES
('2021/10/11',23.45,45),
(CURDATE(),777.77,45);

SELECT 
IFNULL(first_name, 'MISSING') AS first,
IFNULL(last_name, 'USER') AS last,
order_date,
SUM(amount)
FROM customers
RIGHT JOIN orders
    ON customers.id = orders.customer_id
GROUP BY first_name, last_name;


-- -- WORKING WITH ON DELETE CASCADE
-- when customer is delete then delete the order as well use CASCADE

DROP TABLE customers, orders;
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
    foreign key (customer_id) 
    REFERENCES customers(id)
    ON DELETE CASCADE
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
DELETE FROM customers WHERE email='george@gmail.com';

SELECT * FROM customers;

-- SOME PRACTICE EXCERICSE
-- 1. IS THERE REALLY A BIG DIFFERENCE BETWEEN RIGHT JOIN AND LEFT JOIN ?
-- NO THEY ARE SAME
-- EXAMPLE

SELECT *
 FROM customers
LEFT JOIN orders
     ON customers.id=orders.customer_id;
     
 SELECT * 
 FROM orders 
 LEFT JOIN customers
       ON customers.id=orders.customer_id;

SELECT * FROM orders
LEFT JOIN customers
    ON customers.id = orders.customer_id; 
    
SELECT * FROM customers
RIGHT JOIN orders
    ON customers.id = orders.customer_id;
    
    
-- 2. WRITE SCHEMA
CREATE TABLE students (
id INT auto_increment PRIMARY KEY,
first_name VARCHAR(100));

CREATE TABLE papers(
title VARCHAR(100),
grade INT,
student_id INT,
FOREIGN KEY (student_id) REFERENCES students(id)
ON DELETE CASCADE
);

-- The Starter Data

INSERT INTO students (first_name) VALUES 
('Caleb'), 
('Samantha'), 
('Raj'), 
('Carlos'), 
('Lisa');
 
INSERT INTO papers (student_id, title, grade ) VALUES
(1, 'My First Book Report', 60),
(1, 'My Second Book Report', 75),
(2, 'Russian Lit Through The Ages', 94),
(2, 'De Montaigne and The Art of The Essay', 98),
(4, 'Borges and Magical Realism', 89);



SELECT first_name,title,grade 
FROM students
INNER JOIN papers
     ON students.id=papers.student_id
ORDER BY grade DESC;


-- 4.
SELECT first_name,title,grade 
FROM students
LEFT JOIN papers
     ON students.id=papers.student_id;
     
-- 5.
SELECT 
first_name,
      IFNULL(title, 'MISSING'),
      IFNULL(grade,0)
FROM students
LEFT JOIN papers
     ON students.id=papers.student_id;

-- 6.
SELECT 
first_name,
IFNULL(avg(grade),0 )AS 'average' 
FROM students
LEFT JOIN papers
      ON students.id=papers.student_id
GROUP BY students.id
ORDER BY average DESC;

-- 7.
SELECT first_name, 
       Ifnull(Avg(grade), 0) AS average, 
       CASE 
         WHEN Avg(grade) IS NULL THEN 'FAILING' 
         WHEN Avg(grade) >= 75 THEN 'PASSING' 
         ELSE 'FAILING' 
       end                   AS passing_status 
FROM   students 
       LEFT JOIN papers 
              ON students.id = papers.student_id 
GROUP  BY students.id 
ORDER  BY average DESC;












    
    