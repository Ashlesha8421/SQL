-- CHAR & VARCHAR
/* 1.CHAR has a fixed length.
2.The length can be any value from 0 to 255
3.char(3) -> only 3 characters allowed.
4.When we have a fixed length ex: PAN number, Addhar no ,sex F/Metc, give in char because
 the retrive speed is high.
5.Memory wise char is not efficient
6. Retrieved wise char is fast*/

-- **Thing to note**
-- When we have combination of char and number then it will be consider as char



-- Create a new database
create database new_testing_db;
show databases;
use new_testing_db;

create table  dogs(name char(5) , breed varchar(10));
show tables;

insert into dogs (name,breed) values('bob','beagle');
insert into dogs (name,breed) values('robby','corgi');
insert into dogs (name,breed) values('princess jen','retrive'); -- does not show in table due to limit

select * from dogs;
insert into dogs (name,breed) values('bobkadjowije','beagleakdwhwlieh');

-- If we have any problem then go with VARCHAR

-- VARCHAR
-- memory wise VARCHAR is EFFICIENT
-- Retrieved wise VARCHAR is SLOW 





