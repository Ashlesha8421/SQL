show databases;

/*Create database shirt_db*/
create database shirts_db;    
show databases;
use shirts_db;

/*Create table shirts in shirts_db database*/
create table shirts(
shirt_id int not null auto_increment,
article varchar(100),
color varchar(100),
shirt_size varchar(100),
last_worn int,
primary key(shirt_id));

/*Insert Multiple values in shirt table*/
desc shirts;
INSERT INTO shirts(article, color, shirt_size, last_worn) VALUES
('t-shirt', 'white', 'S', 10),
('t-shirt', 'green', 'S', 200),
('polo shirt', 'black', 'M', 10),
('tank top', 'blue', 'S', 50),
('t-shirt', 'pink', 'S', 0),
('polo shirt', 'red', 'M', 5),
('tank top', 'white', 'S', 200),
('tank top', 'blue', 'M', 15);

select * from shirts;
/*Add A new shirt purple polo shirt,size M last worn 50days age'*/
INSERT INTO shirts(color, article, shirt_size, last_worn) 
VALUES('purple', 'polo shirt', 'medium', 50);

/*Select all shirts but only print out article and color*/
select * from shirts;
select article,color from shirts;

/*Select all medium shirts print out everythings but shirt_id*/
select * from shirts where shirt_size='M';
select article,color,shirt_size,last_worn from shirts where shirt_size='M';

/*Update all polo shirts change their size to L*/
select * from shirts where article='polo shirt';
update shirts set shirt_size='L' where article='polo shirt';
select * from shirts where article='polo shirt';

/*Update the shirt last worn 15 days age change last_worn to 0*/
select * from shirts;
select * from shirts where last_worn=15;
update shirts set last_worn=0 where last_worn=15;
select * from shirts where last_worn=15;
select * from shirts ;
select * from shirts where last_worn=0;

/*Update all white shirts change size to 'XS' color to 'off-white'*/
select * from shirts where color='white';
update shirts set shirt_size='XS',color='off-white' where color='white';
select * from shirts where color='off-white';

/*Delete all odd shirts last worn 200 days age*/
select * from shirts where last_worn=200;
select * from shirts;
delete from shirts where last_worn=200;
select * from shirts;

/*Delete all tank top your tastes have changed*/
select * from shirts where article='tank top';
delete from shirts where article='tank top';
select * from shirts;

/*Delete all shirts*/
delete from shirts;
select * from shirts;
desc shirts;

/*Drop the entire shirts table*/
drop table shirts;
desc shirts;
show tables;















