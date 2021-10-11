-- LOGICAL OPERATOR
-- 1.AND && == STEP UP IN OPERATOR == ALL CONDITIONS ARE TRUE
-- OR  

-- select books written by Dave Eggers, published after the year 2010

-- using AND
SELECT title,author_lname,released_year FROM books 
WHERE author_lname ='Eggers' AND  released_year > 2010;

-- using OR
SELECT title,author_lname,released_year FROM books 
WHERE author_lname ='Eggers' &&  released_year > 2010;

SELECT * FROM products WHERE brand = 'lego' AND instock = 'true';

-- TRUE = 1 FALSE =0
SELECT 1<5 && 7=9;
SELECT -10 > -20 && 0 <= 0;
SELECT -40 <= -0 AND 10 > 40;
SELECT 54 <= 54 && 'a' ='A';
SELECT TRUE = 1 && FALSE=0;

-- WE CAN USE 'AND' many times in single query
SELECT author_lname,released_year , title FROM books WHERE
 author_lname='Eggers' AND 
released_year > 2010 &&
 title LIKE '%novel%';
 
 -- OR LOGICAL OPERATOR  '||' - pipe character

SELECT title,author_lname, released_year 
FROM books 
WHERE author_lname = 'Eggers' || 
released_year >2010;

 
-- AND ==> BOTH SIDES MUST BE TRUE ==> condition 1 && condition 2
-- OR ==> ONLY ONE SIDE MUST BE TRUE ==> condition 1 || condition 2

SELECT 40 > 100 || -0>0; -- both are false
SELECT 40<= 100 || -2>0;
SELECT 10>5 || 5=5;
SELECT 'a' = 5 || 3000 > 2000;

SELECT title,author_lname, released_year ,stock_quantity
FROM books 
WHERE author_lname = 'Eggers' || 
released_year >2010 OR 
stock_quantity >100;

-- 3.BETWEEN 
-- SELECT values between upper and lower range 

-- select all books published between year 2004 and 2015

SELECT title, released_year FROM 
books WHERE released_year >= 2004 &&
 released_year <=2015;
 
 
 SELECT title, released_year FROM 
books WHERE released_year BETWEEN 2004 AND 2015;

-- 4.NOT BETWEEN
SELECT title, released_year FROM 
books WHERE released_year NOT BETWEEN 2004 AND 2015 ORDER BY released_year DESC;

-- A note about comparing dates
-- for best result using BETWEEN with DATE and TIME is CAST()

-- CAST()
SELECT CAST('2017-05-02' AS DATETIME);

USE new_testing_db;
SELECT * FROM people;
-- SELECT name, birthdt FROM people WHERE birthdt BETWEEN '1980-01-01';


SELECT 
    name, 
    birthdt 
FROM people
WHERE 
    birthdt BETWEEN CAST('1980-01-01' AS DATETIME)
    AND CAST('2000-01-01' AS DATETIME);


-- 5.IN OPERATOR
-- IT allows us to provide sets of values

-- select all books written by 'carver' , 'lahiri' ,'smith'

USE book_shop;
SELECT title ,author_lname FROM books
WHERE author_lname = 'Carver' OR
      author_lname = 'Lahiri' OR
      author_lname = 'Smith' ;
      
-- USED IN OPERATOR

SELECT title ,author_lname FROM books 
WHERE author_lname IN ('Carver','Lahiri','Smith');

SELECT title ,released_year FROM books
WHERE released_year IN(2017,1985);

-- 6. NOT IN 
-- Excluede books not publish in even number
SELECT title ,released_year FROM books
WHERE released_year !=2000 AND
      released_year !=2002 AND
      released_year !=2004 AND
      released_year !=2008 AND
      released_year !=2010 AND
      released_year !=2012 AND
      released_year !=2014 AND
      released_year !=2016;
      
      
-- using not in
SELECT title ,released_year FROM books
WHERE released_year >= 2000 AND released_year NOT IN (2000,2002,2004,2006,2008,2010,2012,2014,2016);

-- using % == gives even numbers
SELECT title,released_year FROM books 
WHERE released_year >=2000 AND
released_year % 2 !=0;

SELECT title,released_year FROM books 
WHERE released_year >=2000 AND
released_year % 2 !=0 ORDER BY released_year;



      
      
      
      


