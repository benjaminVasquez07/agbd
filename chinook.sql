--Actividad 1
SELECT name, Composer, Milliseconds from tracks

--Actividad 2
SELECT LastName, FirstName, Address, City FROM customers

--Actividad 3
SELECT name, Milliseconds, Composer FROM tracks 
WHERE Composer is null and Milliseconds > 2900000

--Actividad 4
SELECT LastName,FirstName,Company from customers
WHERE Company is NOT NULL

--Actividad 5
SELECT DISTINCT BillingCity, BillingState from invoices
WHERE BillingState is not NULL
ORDER by BillingCity DESC

--Actividad 6 
SELECT DISTINCT BillingCity, BillingState from invoices
WHERE BillingState is not NULL
ORDER by BillingCity DESC

--Actividad 7
SELECT t.name, g.name from tracks t join genres g on t.GenreId = g.GenreId

--Actividad 8
SELECT t.name, g.name from tracks t join genres g on t.GenreId = g.GenreId