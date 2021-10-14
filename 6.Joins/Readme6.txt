# JOINS 
# 1.DATA REALATIONSHIPS.
## --A). ONE TO ONE RELEATIONSHIP.
example:
One customer has their won row in customers details table and one customer details
row is  associate with one customer bue there is no other user or customer that would
be associated with it because its a one to one relationship.

## --B). ONE TO MANY RELATIONSHIP.
relationship between one book and many reviews but reviews belong to one book i.e 
one to many relationship.

## --C).MAY TO MANY RELATIONSHIP.
books can have many authors and those authors have many books i.e many to many 
releationship

1:MANY
PRIMARY KEY : is the unique value key
Foreign key : Refrence to another table within a given table
 
 Things to Note :
 -- when we used forgine key then we can not add any id if it not persent in customers table.


# --2.INNER JOIN 
-- IMPLICIT INNER JOIN
-- Select all records from A and B where the join condition is met
-- Join based on some meaingless condition

-- EXPLICIT INNER JOIN
-- JOIN DATA BASED ON SOME CONDITION.

-- ARBITRIRY JOIN
-- Don't go with 
-- ARBITRARY JOIN - meaningless, but still possible

# --2.CROSS JOIN
Triggers
SQL statements that are AUTOMATCALLY RUN when a specific table is changed

#  --3.LEFT JOIN 
-- Left refers to the first table, or the table you will be joining to.
-- This query finds matches and adds them to a newly created table in the same way as an INNER JOIN.
/*For any rows in the first (or LEFT)
 table that did not have a match, it will still add this row to the new table
 and put in nulls for the columns from the other table.
*/


## --3.RIGHT JOIN
-- Select everything from B, along with any matching records in A
-- This is one of the rarest types of JOIN in SQL. 
/* -- The reason for this is that any RIGHT JOIN can be re-written as a LEFT JOIN,
 which is more conventional. */
-- Right refers to the second table.

## --4. Many to many

TRIGGER SYNTAX ::
CREATE TRIGGER trigger_name
       trigger_time, trigger_event ON table_name FOR EACH ROW 
       BEGIN 
       .....
       END;


THE SYNTAX ::
trigger_time ==> BEFORE , AFTER
trigger_event ==> INSERT, UPDATE, DELETE
table_name ==> photos, users etc
