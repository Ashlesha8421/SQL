-- Sum == Add things together
-- Sum all pages in the entire database

show databases;
use book_shop;
select sum(pages) from books;

select sum(released_year) from books;

-- SUM + GROUP BY
-- sum all pages each author has written
select author_fname, author_lname , sum(pages) 
from books
group by author_fname, author_lname;

-- Sum all
select author_fname, author_lname , sum(released_year)
from books
group by author_fname, author_lname;


-- 	AVERAGE (AVG) 
-- Calculate the average released_year across all books

select AVG(released_year) from books;
 select avg(pages) from books;
 
 -- Calculate the avergae stock quantity for book relased in same year
 
 select avg(stock_quantity) from books group by released_year;
 
 select released_year,avg(stock_quantity) from books group by released_year;
 
 select author_fname, author_lname , avg(pages) from books group by author_fname, author_lname;
 
 
-- Count, min , max and avg with group by

-- 1. Print the number of books on the database
select count(*) from books;
-- select count('Number of book in databases are:',' ',  title) from books;

-- 2.Print out how many books were released in each year
select concat(count(released_year) ,' in ', released_year) from books group by released_year;

-- 3.Print out the total number of books in stock
select * from books;
select sum(stock_quantity) from books;

-- 4.Find the average released_year for each author
select author_fname,author_lname, avg(released_year) from books group by released_year;


-- 5.find the full name of author who wrote the longest book
select concat(author_fname,' ',author_lname) pages from books where pages=(select max(pages) from books);

-- OR
select released_year as year,
count(*) as '# of books',
avg(pages) as ' avg pages' from books
group by released_year;



-- 6
select released_year,avg(pages)as 'avg pages', count(stock_quantity)as '#book' from books group by pages;



 
 
 



