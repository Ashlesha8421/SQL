/* REPLACE == Replace parts of string */

select replace('hello world','hell','%$#@');
select replace('hello world','l','7');
select replace('hellO world','o','*'); -- its a case sensitive

select replace('cheese bread coffee milk',' ',' and ');
select replace(title, 'e', '3') from books;

select substr(
replace(title, 'e', '3'),1,10
) as 'weired string' from books;