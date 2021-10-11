-- 5.LOGICAL OPERATORS
-- 1.NOT EQUAL OPERATOR !=

SHOW DATABASES;
USE book_shop;
SELECT * FROM books;

-- Used Not equal operator
SELECT title FROM books WHERE released_year = 2017;
SELECT title FROM books WHERE released_year != 2017;
SELECT title, author_lname FROM books WHERE author_lname = 'Harris';
select title, author_lname From books Where author_lname != 'Harris';

-- 2. LIKE OPERATOR
-- which is pretty similar to not like.
-- It allows a match pattern in string.

SELECT title FROM books WHERE title Like '%W%';

-- 3. NOT LIKE OPERATOR
 SELECT title FROM books WHERE title NOT LIKE 'W%';

-- 4. GREATER THAN '>'
select title, released_year from books order by released_year;
SELECT title,released_year FROM books WHERE released_year > 2000 ORDER BY released_year;


-- 5.GREATER THAN EQUAL TOO >=
SELECT title,released_year FROM books WHERE released_year >=2000 ORDER BY released_year;

SELECT title,stock_quantity FROM books;
SELECT title,stock_quantity FROM books WHERE stock_quantity >=100 ORDER BY stock_quantity;

select 99 > 1 ; -- return boolen value TRUE-1, FALSE-0
select -99 >1 ;

SELECT 100>5;
SELECT -15>15;
SELECT 1>1;
SELECT 'b' >'a';
SELECT 'A'>= 'a';

SELECT title,author_lname from books WHERE author_lname ='eggers';
SELECT title,author_lname from books WHERE author_lname ='eGGers';

-- 6.LESS THAN <

SELECT * FROM books WHERE released_year < 2000;

-- 7.LESS THAN OR EQUAL TOO
SELECT title,released_year FROM books WHERE released_year <= 2000 ORDER BY released_year;

SELECT 3<-10;
SELECT -10<-9;
SELECT 42<=42;
SELECT 'h' <= 'p';
SELECT 'Q' <= 'q';











