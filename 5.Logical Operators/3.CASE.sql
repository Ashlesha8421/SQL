-- CASE STATEMENTS 
USE book_shop;
SELECT title,released_year,
       CASE
           WHEN released_year >=2000 THEN 'Modern Lit'
           ELSE '20th Centuery Lit'
		END AS GENRE
FROM books;

SELECT title,stock_quantity,
      CASE 
          WHEN stock_quantity BETWEEN 0 AND 50 THEN '*'
          WHEN stock_quantity BETWEEN 51 AND 100 THEN '**'
          ELSE '***'
	  END AS stock
    FROM books;  
      
      
SELECT title,stock_quantity,
      CASE 
          WHEN stock_quantity IN(0,50) THEN '*'
          WHEN stock_quantity IN(51,100) THEN '**'
          ELSE '***'
	  END AS stock
FROM books;




SELECT title,stock_quantity,
      CASE 
          WHEN stock_quantity BETWEEN 0 AND 50 THEN '*'
          WHEN stock_quantity BETWEEN 51 AND 100 THEN '**'
          WHEN stock_quantity BETWEEN 101 AND 150 THEN '***'
          ELSE '****'
	  END AS stock
    FROM books;  
      
      SELECT title, stock_quantity,
    CASE 
        WHEN stock_quantity <= 50 THEN '*'
        WHEN stock_quantity <= 100 THEN '**'
        ELSE '***'
    END AS STOCK
FROM books;



-- SOME EXCERSISE
-- 1. 
SELECT 10 != 10;
SELECT 15>14 && 99-5 <= 94;
SELECT 1 IN (5,3) || 9 BETWEEN 8 AND 10;

-- 2.SELECT ALL BOOKS WRITTEN BEFORE 1980 (NON EXCLUSIVE)
USE book_shop;
SELECT title, released_year FROM books
 WHERE released_year >1980 
 ORDER BY released_year;
 
-- 3.SELECT ALL BOOKS WRITTEN BY EGGERS OR CHABON
SELECT title,author_lname FROM books
 WHERE author_lname = 'Eggers' || author_lname = 'Chabon' 
 ORDER BY author_lname;
 
 -- 4.SELECT ALL BOOKS WRITTEN BY LAHIRI, PUBLISHED AFTER 2000
 SELECT title,author_lname, released_year FROM books
 WHERE author_lname ='Lahiri' AND released_year >2000
 ORDER BY released_year;
 
 -- 5.SELECT ALL BOOKS WITH PAGE COUNTS BETWEEN 100 AND 200
 SELECT title, pages FROM books WHERE pages BETWEEN 100 AND 200;
 
 -- 6.SELECT ALL BOOKS WHERE AUTHOR_LNAME STARTS WITH A 'C' OR AN 'S'
 SELECT title,author_lname FROM books
 WHERE author_lname LIKE 'C%' OR
       author_lname LIKE 'S%'; 
       
SELECT 
    title, 
    author_lname 
FROM books 
WHERE 
    SUBSTR(author_lname,1,1) = 'C' OR 
    SUBSTR(author_lname,1,1) = 'S';
 
SELECT title, author_lname FROM books 
WHERE SUBSTR(author_lname,1,1) IN ('C', 'S');
 
 
 /*7.IF title contain stories == short stories ,
 just kinds and  hearbreling work == Memor ,
 everything else == Novel*/
 
 SELECT title ,author_lname,
        CASE 
             WHEN title LIKE '%Stories%' THEN 'SHORT STORIES;'
             WHEN title = 'just kids' OR 'heartbreaking work  of Staggering Genius' THEN 'MEMOIR'
		ELSE 'NOVEL'
	END AS TYPE
 FROM books; 
 
 -- 8. 
 SELECT author_fname,author_lname,
		CASE 
            WHEN COUNT(*) = 1 THEN '1 book'
            ELSE CONCAT(COUNT(*) , ' books')
		END AS COUNT
	FROM books
    GROUP BY author_lname,author_fname;
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

	
