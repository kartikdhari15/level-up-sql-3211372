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

insert into Customers values(101,'Henry','Ford', 'asmith@samoca.org', '479 Lapis Dr.', 'Memphis', 'TN', '555-555-1212', '1973-07-21',30);

UPDATE Customers set Address='New Address' where CustomerID=101;

DELETE from Customers where CustomerID=64;
DELETE FROM Reservations WHERE ReservationID = 2000;
