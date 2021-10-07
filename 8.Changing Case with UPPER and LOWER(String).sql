-- Things to note sql.format.com ==> used to format querys
-- 1. REVERSE ==> used to reverse the string
-- example
SELECT
  REVERSE('Good-Morning');

show databases;
USE book_shop;


SELECT
  REVERSE(author_fname)
FROM books;

-- 
-- 'woof' 'foow'
SELECT
  concat('woof', REVERSE('woof'));
-- Use on author table (Palindrome)
SELECT
  concat(author_fname, REVERSE(author_fname))
FROM books;



-- 2. CHAR_LENGTH == COUNT CHARACTERS IN STRINGS 
-- example
SELECT
  CHAR_LENGTH('Hello worldskjwoeheois');

-- used on table
SELECT
  author_lname,
  CHAR_LENGTH(author_lname) AS 'length'
FROM books; -- apply on lname
SELECT
  author_fname,
  CHAR_LENGTH(author_fname) AS 'length'
FROM books; -- apply on fname

-- To print following format
-- "Egger is 6 characters long"

SELECT
  concat(author_lname, ' is ', CHAR_LENGTH(author_lname), ' characters long ')
FROM books;


-- UPPER() AND LOWER() ==> CHANGE A STRING'S CASE
-- Example UPPER
select upper('Hello World');

-- Example Lower()
select lower('Hello World');

-- use on book data
select upper(title) from books;

select concat('MY FAVORITE BOOK IS THE', UPPER(title)) from books;
SELECT CONCAT('MY FAVORITE BOOK IS ', LOWER(title)) FROM books;
 
