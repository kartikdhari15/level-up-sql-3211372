-- This file is intended for notes
-- and for demonstrating how to work
-- with SQLite in Codespaces.

-- These two statements operate on the 
-- restaurant.db SQLite database.

SELECT * FROM Dishes;
SELECT * FROM Customers;

select FirstName,LastName,Email from Customers order by LastName;

create table Anniversary(
CustomerID integer,
PartySize integer);