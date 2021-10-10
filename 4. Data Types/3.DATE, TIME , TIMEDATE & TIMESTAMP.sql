-- ## ON TO DATES AND TIMES.
-- DATE == values with a Date But No Time 'YY-MM-DD' format
-- Time == values with a Time But No date  'HH-MM-SS' format
-- DATETIME == value with a Date and Time 'YYYY-MM-DD HH:MM:SS' format

-- Creating Our data types
  use new_testing_db;
  create table people(name varchar(100), Birthdate date, Birthtime time, Birthdt datetime);
  show tables;
  
  INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES('Padma', '1983-11-11', '10:07:35', '1983-11-11 10:07:35');
 
INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES('Larry', '1943-12-25', '04:10:42', '1943-12-25 04:10:42');
 
SELECT * FROM people;

-- CURDATE() , CURTIME(), NOW()  == > To get current time

-- CURDATE() - gives current date
-- CURTIME() -- gives current TIME
-- NOW() -- gives current datetime
-- DAYOFYEAR() -- gives day of year

select curdate();
select curtime();
select now();

insert into people (name,birthdate, birthtime, birthdt) values
('Microvave' ,curdate(), curtime(), now());

SELECT * FROM people;

delete from people where name='Microvave';

-- FORMATING DATES
select name, birthdate from people;
select name, day(birthdate) from people;
select name, birthdate, dayname(birthdate) from people; -- day, year, monthname,dayname,dayofyear etc we used 
select name, birthdate, dayofyear(birthdate) from people;

select name,birthtime, dayofyear(birthtime) from people;

select name, birthdt, dayofyear(birthdt) from people;

select name, birthdate , monthname(birthdate) from people;
select name, birthtime , hour(birthtime) from people;

 /*"2017-04-21"
(concat(monthname(birthdate),' ' ,day(birthdate), ' ' year(birthdate))
"April 21st 2017"*/


-- DATE_FORMAT
select date_format('2009-10-04 22:23:00' ,'%W-%M-%Y');

SELECT DATE_FORMAT(birthdt,'%W') from people;
select date_format(birthtime,'%H') FROM PEOPLE;

SELECT DATE_FORMAT(birthdt, '%m/%d/%y') from people;
SELECT DATE_FORMAT(birthdt, '%m/%d/%Y') from people;
SELECT DATE_FORMAT(birthdt, '%m/%d/%Y at %h:%m') from people;


-- DATE MATH
-- DATEDIFF(exp1,exp2)
-- DATEADD()

SELECT * FROM people;

/*lect datediff(now() , birthdate) from people;
select  name ,birthdate, datediff(now() , birthdate)as datedifference from people

/* DATE_ADD(date,INTERVAL expr unit), DATE_SUB(date,INTERVAL expr unit)*/


 select * from people;
 
select birthdt,DATE_ADD(birthdt, INTERVAL 1 SECOND) FROM people;
select birthdt,DATE_aDD(birthdt, INTERVAL 5 month) FROM people;
SELECT birthdt, DATE_ADD(birthdt, INTERVAL 10 SECOND) FROM people;
 
SELECT birthdt, DATE_ADD(birthdt, INTERVAL 3 QUARTER) FROM people;

SELECT birthdt,birthdt + INTERVAL 2 QUARTER FROM people;
SELECT birthdt, birthdt + INTERVAL 2 MONTH + INTERVAL 15 DAY + INTERVAL 15 HOUR from people;
 
SELECT birthdt, birthdt + INTERVAL 1 MONTH FROM people;
 
SELECT birthdt, birthdt - INTERVAL 5 MONTH FROM people;
 
SELECT birthdt, birthdt + INTERVAL 15 MONTH + INTERVAL 10 HOUR FROM people;


-- TIMESTAMPS 
-- DATETIMES AND TIMESTAMP are both save same time and date but there is two differences
-- DATETIMES support range '1000-01-01 00:00:00 ' to '9999-12-31 00:00:01'
-- TIMESTAMPS support range '1970-01-01 00:00:01' UTC to '2038-01-19 03:014:07' UTC

CREATE TABLE comments(
content VARCHAR(100),
created_at TIMESTAMP DEFAULT NOW());

INSERT INTO comments (content) VALUES ('lol what a funny article');
INSERT INTO comments (content) VALUES ('I found this offensive');

SELECT * FROM comments;
INSERT INTO comments (content) VALUES ('adkjpolsfknd');

select * from comments order by created_at desc;


CREATE TABLE comment2(
content VARCHAR(100),
changed_at TIMESTAMP DEFAULT NOW() ON UPDATE CURRENT_TIMESTAMP);

INSERT INTO comment2 (content) VALUES('lolololo');
INSERT INTO comment2 (content) VALUES('dasdasdas');
INSERT INTO comment2 (content) VALUES('I LIKE CATS AND DOGS');

UPDATE comment2 SET content='THIS IS NOT GIBBERISH' WHERE content='dasdasdasd';

SELECT * FROM comment2;
SELECT * FROM comment2 ORDER BY changed_at;

CREATE TABLE comment2 (
    content VARCHAR(100),
    changed_at TIMESTAMP DEFAULT NOW() ON UPDATE NOW()
);



-- Some exercises
-- 1What's a good use case for CHAR?
/*
Used for text that we know has a fixed length, e.g., State abbreviations, 
abbreviated company names, sex M/F, etc. */

-- 2.Fill in the blanks
CREATE TABLE inventory(
item_name VARCHAR(100),
price DECIMAL(8,2),
quantity INT );


-- 3.DIFFERENCE BETWEEN DATETIME AND TIMESTAMP ?
/*They both store datetime information, but there's a difference in the range, 
TIMESTAMP has a smaller range. TIMESTAMP also takes up less space. 
TIMESTAMP is used for things like meta-data about when something is created
or updated.*/


-- 4.Print out current time
select curtime();

-- 5.Print out current date (but not time)
select curdate();

-- 6.Print out the current day of the week
select dayofweek(curdate());

-- 7.print out the current day of the week
select dayname(curdate());

-- 8.Print out the current day and time using this format mm/dd/yy
select DATE_FORMAT(now(), '%M %D at %h:%i');

-- 9 print out the current day and time using this format
-- January 2nd at 3:15
-- April 1st at 10:18

CREATE TABLE tweets(
    content VARCHAR(140),
    username VARCHAR(20),
    created_at TIMESTAMP DEFAULT NOW()
);


INSERT INTO tweets (content, username) VALUES('this is my first tweet', 'coltscat');
SELECT * FROM tweets;
 
INSERT INTO tweets (content, username) VALUES('this is my second tweet', 'coltscat');
SELECT * FROM tweets;







