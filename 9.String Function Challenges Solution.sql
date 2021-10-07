-- 1st task
-- Reverse and Uppercase the following sentence
-- "why does my cat look at me with such hatred?"
select upper("why does my cat look at me with such hatred?");
select reverse("why does my cat look at me with such hatred?");

-- 2nd task what does this print out
select replace
(
concat('I', ' ', 'like', ' ', 'cats'),
' ',
'_'
);

-- 3rd task (Replace all spaces on book title by '-->')
use book_shop;
 select replace(title , ' ' ,'-->')as title from books;
 
-- 4th task (print authors_lname regurarly and then reverse and change column name)
select author_lname as forwards,
 reverse(author_lname) as backwards
 from books;
 
 -- 5th task(full author name in upper case and concat)
 select concat
 (upper(author_fname), ' ', upper(author_lname)) 
 as 'full name in caps' 
 from books;
 
 -- 6th task (combine title and relased year by 'was relesed in'and change col name as blurb)
 select concat(title, ' ' ,'was released  in', released_year )as blurb from books;
 
 -- 7th task(print title and number of char in title)
 select title,char_length(title) as 'Character_length' from books;
 
 
 -- 8th task ( combine 3 col )
 select 
 concat(substr(title, 1,10), '...')as 'short title',
 concat(author_lname, ',', author_fname) as author,
 concat(stock_quantity, ' in stock ')as quantity
 from books;
 
 
 
 
 