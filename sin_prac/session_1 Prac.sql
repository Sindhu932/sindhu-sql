SQL commands
1.DDL-Data Defination languagge.
CreateTable, Alter Table, Drop Table,Trucate.
2.DML-Data Manipulation Language.
Insert, Update,Delete.
3.DQL-Data Query Language.(Used to retrive data)
4.DCL-Data control language(used to control permission)
Grant,Revoke.
5.-Transaction Control languagge.(Used to transaction)
Commit,Roll back, Save point.
Creating Data base.
6.Creating Data base Company_db(This Create a new date base)
7.Creating Table 
CREATE TABLE 
CREATE TABLE company_db.test_table (
  id INT,
  name VARCHAR(100)
);
8.Inserting Data.
Insert INTO Comapny_db.test_table (id,name)Value 
INSERT INTO company_db.test_table (id, name)
VALUES (1, 'Alice');
8.Selecting data.
SELECT from Comapny_db. test_table (shows all data in the table )
Alter table 
Add new colums.
9.Alter table Company_db. test_table ADD email VARCHAR (299);
Rename columns 
Alter table Coampany_db.test_table_RENAME columns.
ALTER TABLE employee ADD department VARCHAR(80);
ALTER TABLE student MODIFY name VARCHAR(180);
 10.NOT NULL & UNIQUE Constraints
CREATE TABLE Persons (
    ID INT NOT NULL UNIQUE,
    LastName VARCHAR(255) NOT NULL
);
NOT NULL
Column cannot be empty.
UNIQUE
No duplicates allowed.
11. PRIMARY KEY
ALTER TABLE Persons ADD PRIMARY KEY (ID);
CREATE TABLE customer (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100)
);
12. FOREIGN KEY
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    PersonID INT,
    FOREIGN KEY (PersonID) REFERENCES Persons(ID)
);
13. DEFAULT Constraint
city VARCHAR(255) DEFAULT 'Chicago'
14. DELETE vs DROP vs TRUNCATE
 DELETE
Removes selected rows.
DELETE FROM test_table WHERE id=1;
 DROP
Deletes the entire table.
DROP TABLE test_table;
 TRUNCATE
Removes all rows but keeps the table.
TRUNCATE TABLE test_table;
examples.
DELETE FROM employee WHERE age < 20;
15. TABLE products;
DROP DATABASE
DROP DATABASE company_db;
