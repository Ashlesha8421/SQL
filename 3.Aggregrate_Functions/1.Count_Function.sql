-- Aggergate Functions
-- 1.Count
-- 2.Min
-- 3.Max

-- Here we discuss Count Function
show databases;
use book_shop;

-- To find How many books are in the database
select * from books;
select count(*) from books; -- 19 books are present

-- To find the author_fname
select author_fname from books;
select count(author_fname) from books;

-- To find unique name
select count(distinct author_fname) from books;

select count(distinct author_lname) from books;
select count(distinct author_lname, author_fname) from books;

-- How many titles contain "the"
select title from books where title like "%the%";

select count(title) from books where title like "%the%";
select count(*) from books where title like "%the%";










