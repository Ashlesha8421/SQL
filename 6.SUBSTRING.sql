show databases;
-- select substring query
select substring('hello world',1,4);
select substring('Hello world',7);
select substring('hello world',-3);
select substring('hello world',-7);

use book_shop;
select title from books;

select substring("Where I'm Calling From: Selected Stories",1,10); -- when you have single quation in string use "" to avoide error

select substring(title,1,10) from books;
select substring(title,1,10) as short_title from books;


/* Shortcut key SUBSTR() also works 
 if SUBSTRING  is just too much typing for you */
 
 select substr(title,1,10) from books;
 select substr(title,1,10) as short_title from books;
 
-- select concat(short_title, '....') from books; // wrong method
select concat
(substr(title,1,10)
,'...'
)
from books;
 
 select concat
 (substr(title,1,10),'...') as short_title from books;
 
 
 
 
 
 
 
 
 