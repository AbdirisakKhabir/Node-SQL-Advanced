-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
SELECT Products.ProductName, Categories.CategoryName
FROM Products
INNER JOIN Categories ON Products.CategoryID = Categories.CategoryID;

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
SELECT Orders.OrderID, Shippers.ShipperName
FROM Orders 
INNER JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID;

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
SELECT Products.ProductName,OrderDetails.Quantity
FROM Products
INNER JOIN OrderDetails 
WHERE OrderID = 10251
ORDER BY ProductName;

-- Display the OrderID, Customer's ContactName and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
SELECT Orders.OrderID, Customers.ContactName, Employees.LastName
FROM ((Orders
INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID)
INNER JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID);