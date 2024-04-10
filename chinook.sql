SELECT name, Composer, Milliseconds from tracks

SELECT LastName, FirstName, Address, City FROM customers

SELECT name, Milliseconds, Composer FROM tracks 
WHERE Composer is null and Milliseconds > 2900000

SELECT LastName,FirstName,Company from customers
WHERE Company is NOT NULL

SELECT DISTINCT BillingCity, BillingState from invoices
WHERE BillingState is not NULL
ORDER by BillingCity DESC

SELECT DISTINCT BillingCity, BillingState from invoices
WHERE BillingState is not NULL
ORDER by BillingCity DESC

SELECT t.name, g.name from tracks t join genres g on t.GenreId = g.GenreId

SELECT t.name, g.name from tracks t join genres g on t.GenreId = g.GenreId