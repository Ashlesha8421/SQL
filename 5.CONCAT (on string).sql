-- CONCATE - To combine
show databases;
use book_shop;

select author_fname, author_lname from books;
 
  -- Combine the column
   -- CONCAT(x,y,z) 
  -- CONCAT(column, anotherColumn); // from slides
  -- CONCAT(author_fname,author_lname);
  -- Concat(column,'text',anothercolumn,'moretext')
  -- CONCAT(author_fname,'',author_lname);
  -- CONCAT(author_fname,author_lname); // invalid syntax
  
  -- for examples
  select concat('hello', 'world');
  select concat('Hello' , '....' , 'world');
  
  -- Apply on Book table to concat two column
  select concat(author_fname, ' ', author_lname) from books;
  
  -- To change column name use following query
  select concat(author_fname, ' ' , author_lname) as 'Full_name' from books;
  
  select author_fname as first, author_lname as last,
  concat(author_fname, ' ',author_lname) as full from books;
  
  -- Concat-ws ==Concat multiple things together
  select concat(title,'-',author_fname,'-',author_lname) from books;
  
  select concat_ws(' -', title,author_fname, author_lname) from books;
  
  select substring('hello world',1,3);