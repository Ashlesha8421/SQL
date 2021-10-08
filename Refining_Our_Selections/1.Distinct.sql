show databases;
use book_shop;
select database();

INSERT INTO books
    (title, author_fname, author_lname, released_year, stock_quantity, pages)
    VALUES ('10% Happier', 'Dan', 'Harris', 2014, 29, 256), 
           ('fake_book', 'Freida', 'Harris', 2001, 287, 428),
           ('Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367);
           
select * from books;

-- DISTINCT 
-- DISTINCT that we use in conjection with select

select author_lname from books;
select distinct author_lname from books;

select released_year from books;

select distinct released_year from books;
select author_lname from books;
select distinct author_fname,author_lname from books;
 
 select distinct concat(author_fname, ' ',author_lname)from books;
 
 select distinct author_fname, author_lname from books;
 
 
 -- ORDER BY (Sorting Our Result)
 select author_lname from books;
 select author_lname from books order by author_lname;
 select title from books order by title;   -- IT is accending by default
 
 -- Used desc -->Its reserse
 select author_lname from books order by author_lname desc;
 select title from books order by title desc;
 
 -- Numbers Too
 select released_year from books;
 select released_year from books order by released_year; -- ByDefault its asceding
  select released_year from books order by released_year desc; -- Descending order
 
 
 select title, released_year, pages from books order by released_year;
 select title,  pages from books order by released_year;
 
 -- order by 2
 select title, released_year, pages from books order by 2;
 select title, author_fname,author_lname from books order by 3 ;
  select title, author_fname,author_lname from books order by 1;
   select title, author_fname,author_lname from books order by 1 desc;
   
   -- ORDER BY
   select author_fname, author_lname from books order by author_lname;
   
   select author_lname, author_fname from books order by author_lname, author_fname;
   
 
 