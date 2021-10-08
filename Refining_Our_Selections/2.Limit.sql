/* LIMIT : is a Toolbox
LIMIT allows us to specify a number for how many results that we want ro select 
Used with order by or Sorting */

show databases;
use book_shop;

select title from books limit 3; -- Top 3 title
select * from books limit 1;

-- 5 most resently released book
select title, released_year from books order by released_year desc limit 5;
select title, released_year from books order by released_year desc limit 0,5;

select title from books limit 5;
select title from books limit 5,9875512333656343;

