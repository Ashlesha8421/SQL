/*Inserting Data
Inserting Data

The "formula":
INSERT INTO table_name(column_name) VALUES (data);*/

show databases;
use my_cat;

show tables;
CREATE TABLE cats
  (
    name VARCHAR(100),
    age INT
  );
  show tables;
insert into cats(name,age) values('Blue',1);
insert into cats(age,name) values(11,'Deaco');

/*How to view data by using SELECT*/
select * from cats;

/*Multiple insert
INSERT INTO table_name 
            (column_name, column_name) 
VALUES      (value, value), 
            (value, value), 
            (value, value);*/
            
insert into cats(name,age)
values ('Charlie', 10),('Sadie',3),('Lazy bear',1);

select * from cats;

/* Exanple*/
create table people(first_name varchar(20), last_name varchar(20), age int);

desc people;

insert into people(first_name,last_name,age) values('Tina','Blechar',13);
select * from people;

INSERT INTO people(age, last_name, first_name)
VALUES (42, 'Belcher', 'Bob');

show tables;
INSERT INTO people(first_name, last_name, age)
VALUES('Linda', 'Belcher', 45)
  ,('Phillip', 'Frond', 38)
  ,('Calvin', 'Fischoeder', 70);
  
  select * from people;

/*MySQL Warnings*/
insert into cats(name, age)values('lima','ajeguiww');
show warnings;

select * from people;

desc cats;
INSERT INTO cats(name, age)
VALUES('This is some text blah blah blah blah blah text text text something about cats lalalalal meowwwwwwwwwww', 10);

show warnings;
/*ry inserting a cat with incorrect data types:

INSERT INTO cats(name, age) VALUES('Lima', 'dsfasdfdas'); 

Then view the warning:
SHOW WARNINGS; 
*/

desc cats;
/*NULL and NOT NULL Code
Try inserting a cat without an age:*/

insert into cats(name)values('Alabma');
select * from cats;
desc cats;

insert into cats()values();
select * from cats;

/*Define a new cats2 table with NOT NULL constraints:*/
create table cats2(name varchar(100) not null, age int not null);
desc cats2;

/*Now try inserting an age less cat:*/
insert into cats2(name) values('Texax');  /*Field 'age' doesn't have a default value*/
 show warnings;
 
 /*Do the same for a nameless cat:*/
 select * from cats2;
 insert into cats2(age)values(10);
 select * from cats2;

/*Default values*/

create table cats3(name varchar(20) default 'no name provided', age int default 99 );
desc cats3;

insert into cats3(age) values(13);
select * from cats3;

insert into cats3() values();
select * from cats3;

insert into cats3(name, age)values('Montana',null);
select * from cats3;

CREATE TABLE cats4(
    name VARCHAR(20) NOT NULL DEFAULT 'unnamed',
    age INT NOT NULL DEFAULT 99
  );
  
  INSERT INTO cats4(name, age) VALUES('Cali', NULL);
  select * from cats4;


/*Primary Keys
Define a table with a PRIMARY KEY constraint:*/

select * from cats;

insert into cats(name, age) values('Helena',6);
insert into cats(name, age) values('Helena',6);
insert into cats(name, age) values('Helena',6);
insert into cats(name, age) values('Helena',6);

select * from cats;
/* How do we make each unique ==> Primary key*/

create table unique_cats(cat_id int not null, name varchar(100), age int, primary key (cat_id));

desc unique_cats;

/*Insert some new cats:*/
insert into unique_cats(cat_id,name,age)values(1,"Fred",23);
select * from unique_cats;
insert into unique_cats(cat_id,name,age)values(2,"dofo",22);
insert into unique_cats(cat_id,name,age)values(1,"tuki",2);

select * from unique_cats;

/*Adding in AUTO_INCREMENT:*/
CREATE TABLE unique_cats2 (
    cat_id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(100),
    age INT,
    PRIMARY KEY (cat_id));
    
    insert into  unique_cats2(name, age) values('skippy',4);
    insert into  unique_cats2(name, age) values('jikk',4);
    insert into  unique_cats2(name, age) values('jikk',5);
    select * from unique_cats2;
    
/*Practice example*/

create table employess(
id int auto_increment not null primary key,
first_name varchar(255) not null,
last_name varchar(255) not null,
middle_name varchar(255),
age int not null,
current_status varchar(255) not null default 'employed');

desc employess;

insert into employess(first_name,last_name,age)values('Dora','smith',58);

select * from employess;


/*Another way to define a primary key
CREATE TABLE employees (
    id INT AUTO_INCREMENT NOT NULL,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    middle_name VARCHAR(255),
    age INT NOT NULL,
    current_status VARCHAR(255) NOT NULL DEFAULT 'employed',
    PRIMARY KEY(id)
);*/






