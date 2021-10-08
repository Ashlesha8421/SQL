-- LIKE == BETTER SERACHING
show databases;
use book_shop;

-- 
select title,author_fname from books where author_fname like '%da%';
 
 -- Select all the title where there is the present
 select title from books where title like 'the';
 select title from books where title like '%the';
 select title from books where title like '%the%'; -- something the something
 
 -- '____' (4undersscores) to specify exactly that charcter (EXACTLY ONE THING)
 -- '%%%%' give all values
 
 select title , stock_quantity from books where stock_quantity like '___'; -- 3 underscore means it gives 3 length 
 select title, stock_quantity from books where stock_quantity like '%%%%'; -- It gives all values
 select title from books where title like '%%%%';
 
 -- (235)234-4568 like '(___)___-____' % (To matvh pattern)
 
 -- but what if....I'm searching for a book with a '%' in it
 -- I'm searching for a book with a '_' in it
 -- '%\%%' backslach is going to match a % sign 
 -- '%\_%' backslach is going to match aescape character
 
 select title from books where title like '%\%%';
 select title from books where title like '%\_%';
 
 select title from books where title like '%stories%';
 
 -- Find longest book 
 select title, pages from books order by pages desc limit 1;

-- Print a summary containing the title and year, for the 3 most recent books 
select concat(
title,' ',
'-',
released_year)
as  summary
from books order by
released_year
desc limit 3;

-- Find all books with an autor_lname that contains a space(" ")
select title, author_lname from books where author_lname like '% %';

-- Find the 3 books with the lowest stock (select title, year and stock)
select * from books;
select title,released_year,stock_quantity 
from books 
order by stock_quantity 
limit 3;

-- Print title and author_lname, sorted first by author_lname and then by title
select title,author_lname from books order by author_lname,title;

-- Print author_lname alphabetically 
SELECT
    CONCAT(
        'MY FAVORITE AUTHOR IS ',
        UPPER(author_fname),
        ' ',
        UPPER(author_lname),
        '!'
    ) AS yell
FROM books ORDER BY author_lname;
 
 
 
 
 
 
 
 
 
 