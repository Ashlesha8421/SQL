-- Min and Maz function
Show databases;
use book_shop;
select min(released_year) from books; -- 1945
select max(released_year) from books; -- 2017

select min(pages) from books; -- 176
select max(pages) from books; -- 634

select max(pages), title  from books; -- Wrong output
-- They are are connect to each other

select * from books where pages = (select min(pages) from books);

select max(pages) from books;
select * from books where pages=634;

select title, pages from books where pages =(select max(pages) from books);
select title, pages from books where pages =(select min(pages) from books);


-- OR Using ORDER BY
select * from books order by pages desc limit 1; -- ASC
select title,pages books from books order by pages Asc limit 1;

-- Min Max with Group By
-- find the year each author published their first book

select min(released_year) from books;

select author_fname,author_lname, 
        min(released_year) 
from books 
group by author_fname,
         author_lname;
         
select author_lname, author_fname,max(pages) from books group by author_lname, author_fname;

SELECT
  CONCAT(author_fname, ' ', author_lname) AS author,
  MAX(pages) AS 'longest book'
FROM books
GROUP BY author_lname,
         author_fname;
         



















