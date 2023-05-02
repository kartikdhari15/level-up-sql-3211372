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

select Type,Name,Price,Description from Dishes
order by Price;

select Type,Name,Price,Description from Dishes
where Type='Appetizer' or Type='Beverage'
order by Type;

select Type,Name,Price,Description from Dishes
where Type!='Beverage'
order by Type;