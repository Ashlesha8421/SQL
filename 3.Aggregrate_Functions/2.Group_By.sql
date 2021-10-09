-- Group By
-- GROUP BY summarizes or aggregates identical data into single rows.

show databases;
use book_shop;
select title,author_lname from books;
select author_lname from books group by author_lname;
select title,author_lname,author_fname from books group by author_lname;
select author_fname, author_lname, count(*) from books group by author_lname;
select author_fname,author_lname , count(*) from books group by author_lname, author_fname;

select released_year from books;
select released_year, count(*) from books group by released_year;

-- Using CONCAT

select concat(' In ' , released_year, ' ',Count(*) ,' Book(s) rleased ') as year from books group by released_year;


