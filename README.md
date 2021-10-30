# SQL 
## --What Is A Database?
1. A collection of data
2. A method for accessing and manipulating that data

# MYSQL 
## -- A global leading software for working with relational database.

## Role of SQL in DATA SCIENCE :
A major part of a data scientist's role involves handling data from a varity of data sources.
* Extraction the data out of production schema.
*  Querying databse and concatenating datasets together.
*  Cleaning and formatting data.
*  Storing data into a suitable physical location so you can run your analysis.

## What is DBMS ?
Database Management System(DBMS) is a software for storing and retriving users data by considering appopriate security measures.It allows to create their own databases as per their requirement.
* -- A group od progra, which manipullate the database
*  -- Provides an interface between databses and users
*  -- Include details about the users of the databse and other application programs.
*  -- Accept requests for data from an applicatiob and retrives the Specific data.
*  -- Allows third-party software to store and retrive data.

### TYPES OF DBMS :
|__Hirarchial DBMS__|__Network DBMS__|__Object Oriented DBMS__|__RDBMS__|
|-------------------|-----------------|-------------------|-------------|
           
## What is RDBMS?
* -- An RDBMS is a subset of DBMS designed speecifically for relational databases.
* -- Is "relational" because the values within each table releated to each other.
* -- Table may also be related to each other.
* -- The relational structure make it possible to run queres across multiple tables.

## Popular DBMS Software
| MySQL| Microsoft Access | Oracle | PostgreSQL | dBASE | FoxPro | SQLite | IBM DB2 | LibreOffice Base | MariaDB | Microsoft SQL Server |

# RDBMS CONCEPT 
### Table : Data element organised in terms of rows and columns
### TUPLE : A single entery in a table (Record/Row)
### ATTRIBUTE : each record can be broken down into several smaller part of data
### RELATIONAL INTEGRITY CONSTRAINT: A rational databse model should be certain constraints.

## -- Key Constraints
-- The key attribute should never be NULL or same for two different rows of data.

## -- Domain Constraints
-- Refers to the values that can be stored for a certain attibute.
### | UNIQUE | NOT NULL | CHECK | DEFAULT 

 * -- Referential integrity Constraints 
 * -- Referential integrity (RI) is a relational databse concept, which states that tabel relationship must always be consistent.(any foreign key field must agree with the primary key that refersed by the foreign key)
 * -- If a table has a reference to some data from another table, then that data should be present for referential integrity constraint to hold true.
### PRIMARY KEY | FOREIGN KEY 
* --PRIMARY KEY : is the unique value key
* --Foreign key : Refrence to another table within a given table

## NO-SQL DATABASES
-- NoSQL or most commonly know as 'Not only SQL' databse, it provides a mechanism for storage and retrival of unstructured data. It can handle a humongous amount of data and has dynamic schema.
-- A NoSQL databse has no specific query language and no or very few relationship. Data is stored in the form of collections and documents.

| Types | KEY-VALUES STORIES | WIDE COLUMN STORES | DOCUMENT DATABASES | GRAPH DATABASES |
|-------|--------------------|--------------------|--------------------|-----------------|
| Ex.   | Redis, Riak,Voldemort| Cassandra,HBase |MongoDB | Neo4J, HyperGgaphDB |

## A COMPARISON 
 |   SQL    |   NoSQL  |
 |----------|----------|
 | Relational database | Non-Relational database |
 | Predifine schema | Dynamic schema |
 | Table based databases | Key-value pair,documents, graph bases |
 | Better fit for complex query enviroment | Not a good fit for complex queries |
 | Vertically scalable | Horizontally scalable |
 | Hevy-duty transactions | Not stable in high load and complex transactions |
 | MySQL, Oracle,PostGreSQL | MongoDB ,Cassandra, HBase |
 
 ## MYSQL
 
 ## SQL Commands
 | DDL(Data Definition Language) | DML(Data Manipulation language) | DQL(Data Query Language)| DCL(Data Control Language) | TCL(Transaction Control Language) |
|-----------------|-----------------|-----------------|-----------------|-----------------|
| DROP, RENAME,CREATE,ALTER,TRUNCATE| INSERT,UPDATE,DELETE | SELECT | GRANT,REVOKE | COMMIT,ROLLBACK,SAVEPOINT,SET,TRANSACTION|

## Database Objects
Any object in a database that is used to store reference data. database objects are created using the create command They are used to hold and manipulate the data.

* -- Table : Basic unit of storage , Composed of rows and columns
* -- View : Logically represents subsets of data from one or more tables.
* -- Sequence : Generates primary key values
* -- Index : Improves the preformance of some queries

## SQL DATA TYPES :
* Numeric Data Types
*  Date and Time
*  Large Object Data(LOB) Types 
 

 






