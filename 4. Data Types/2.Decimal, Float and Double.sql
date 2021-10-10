# DECIMAL

/*1.Maximum number of digits
2.Storage format
3.Storage requirements
4.The nonstandard MySQL extension to the upper range of DECIMAL columns*/
 
-- The declaration syntax for a DECIMAL column is DECIMAL(M,D)
-- M is the maximum number of digits (the precision). 
-- It has a range of 1 to 65

-- D is the number of digits to the right of the decimal point (the scale).
 -- It has a range of 0 to 30 and must be no larger than M.
 
 use new_testing_db;
 
 create table items(price decimal(5,2));
 desc items;
 
insert into items(price) values(7);
insert into items(price) values(0.2458);
insert into items(price) values(7987654);
insert into items(price) values(0.000);
insert into items(price) values(1.99999);
insert into items(price) values(2.88888);
select * from items;



-- FLOAT AND DOUBLE
-- Decimal data types is fixed point type and calculations are exact.
-- The FLOAT and DOUBLE data types are floating point types and claculations are approximate.
-- float and double store lagre numbers using less space
-- FLOAT ==> MEMORY NEEDED (4 BYTES) ==> PRECISION ISSUES (~7- DIGITS)
-- DOUBLE ==> MEMORY NEEDED (8 BYTES) ==> PRECISION ISSUES (~15 DIGITS)


create table thingines (price float);
insert into thingines (price) values(88.45);
insert into thingines (price) values(8877.45);
insert into thingines (price) values(87785269951.3659);
select * from thingines;

-- use decimal == > we have 15 precisons 

