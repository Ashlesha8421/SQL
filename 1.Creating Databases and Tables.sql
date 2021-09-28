/*Creating Databases Code

List available databases:
show databases; 

The general command for creating a database:
CREATE DATABASE database_name; 
*/


show databases;    
select database();       /*to show which database we used*/
create database my_cat;    
use my_cat;


/* Creating Your own table  
CREATE TABLE tablename
  (
    column_name data_type,
    column_name data_type
  );  */
  
create table cats(name varchar(100),age int);

/* How to show and describe tables
 SHOW TABLES;
 SHOW COLUMNS FROM tablename;
 DESC tablename;   */
 
show tables;  /* To show tables*/
show columns from cats;  /*To describe tables */
desc cats;  /*To describe table*/

/* How to drop table
Dropping Tables
DROP TABLE <tablename>;*/
drop table cats;
show tables;

/* Creating Your Own Tables Challenge */
create table pastries
(name varchar(50), quantity int);

show tables;
desc pastries;
drop table pastries;








