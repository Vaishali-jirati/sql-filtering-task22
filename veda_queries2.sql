USE chinook_autoincrement;
-- 1. WHERE =: customers in Germany
SELECT FirstName, LastName, City FROM Customer WHERE Country = 'Germany';

-- 2. WHERE <>: employees who are not Sales Support Agents
SELECT FirstName, LastName, Title FROM Employee WHERE Title <> 'Sales Support Agent';

-- 3. WHERE with AND: long tracks (over 10 minutes) priced 0.99
SELECT Name, Milliseconds, UnitPrice FROM Track
WHERE Milliseconds > 600000 AND UnitPrice = 0.99 ORDER BY Milliseconds;

-- 4. WHERE with OR: customers in France or Germany
SELECT FirstName, LastName, Country FROM Customer
WHERE Country = 'France' OR Country = 'Germany' ORDER BY Country, LastName;

-- 5. IN: customers in four countries
SELECT FirstName, LastName, Country FROM Customer
WHERE Country IN ('United Kingdom', 'Ireland', 'Portugal', 'Spain') ORDER BY Country;

-- 6. NOT IN: countries other than USA, Canada, Brazil
SELECT DISTINCT Country FROM Customer
WHERE Country NOT IN ('USA', 'Canada', 'Brazil') ORDER BY Country;

-- 7. BETWEEN (numbers): invoices with a total from 5 to 10
SELECT InvoiceId, BillingCountry, Total FROM Invoice
WHERE Total BETWEEN 5 AND 10 ORDER BY Total, InvoiceId;

-- 8. BETWEEN (dates): invoices in the first half of 2022
SELECT InvoiceId, CustomerId, InvoiceDate, Total FROM Invoice
WHERE InvoiceDate BETWEEN '2022-01-01' AND '2022-06-30' ORDER BY InvoiceDate;

-- 9. LIKE (starts with): customers whose last name starts with S
SELECT FirstName, LastName FROM Customer WHERE LastName LIKE 'S%' ORDER BY LastName;

-- 10. LIKE (ends with): customers with a Gmail address
SELECT FirstName, LastName, Email FROM Customer WHERE Email LIKE '%@gmail.com' ORDER BY LastName;

-- 11. LIKE (contains): track names containing "love"
SELECT Name FROM Track WHERE Name LIKE '%love%' ORDER BY Name;

-- 12. IS NULL: customers with no company
SELECT FirstName, LastName, Country FROM Customer WHERE Company IS NULL ORDER BY Country, LastName;