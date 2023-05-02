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

SELECT * FROM Reservations
JOIN Customers ON Reservations.CustomerID = Customers.CustomerID
WHERE Customers.FirstName = 'Norby'
AND Reservations.Date > '2022-07-24';
DELETE FROM Reservations WHERE ReservationID = 2000;

INSERT INTO Anniversary
  (CustomerID, PartySize) 
VALUES (
  (SELECT CustomerID 
    FROM Customers 
    WHERE Email = 'atapley2j@kinetecoinc.com'),
  4);
SELECT * FROM Anniversary;

SELECT Customers.FirstName, Customers.LastName, Reservations.Date, Reservations.PartySize
FROM Reservations
JOIN Customers ON Customers.CustomerID = Reservations.CustomerID
WHERE Customers.LastName LIKE 'St%'
AND PartySize = 4
ORDER BY Reservations.Date DESC;

INSERT INTO Customers 
(FirstName, LastName, Email, Phone) VALUES 
('Sam', 'McAdams', 'smac@kinetecoinc.com', '(555) 555-1232');
INSERT INTO Reservations 
(CustomerID, Date, PartySize) VALUES 
(102, '2022-08-12 18:00:00', 5);

SELECT CustomerID, FirstName, LastName, Phone 
FROM Customers
WHERE Address = '6939 Elka Place' AND LastName = 'Hundey';
INSERT INTO Orders (CustomerID, OrderDate) 
VALUES (70, '2022-09-20 14:00:00');

UPDATE Customers 
SET FavoriteDish = 9 
  WHERE CustomerID = 42;
UPDATE Customers 
  SET FavoriteDish = (SELECT DishID FROM Dishes WHERE Name = 'Quinoa Salmon Salad') 
  WHERE CustomerID = 42;

SELECT COUNT(Orders.orderID) as OrderCount, Customers.FirstName, Customers.LastName, Customers.Email
FROM Orders
JOIN Customers ON Orders.CustomerID = Customers.CustomerID
GROUP BY Orders.CustomerID
ORDER BY OrderCount DESC
LIMIT 15;