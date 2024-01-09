-- find all products

SELECT * FROM products;

-- find all products that cost $1400

SELECT * FROM products
WHERE price = 1400;

-- find all products that cost $11.99 or $13.99

SELECT * FROM products
WHERE price = 11.99 OR price = 13.99;

-- find all products that do NOT cost 11.99 - using NOT

SELECT * FROM products
WHERE NOT price = 11.99;

-- find all products and sort them by price FROM greatest to least

SELECT * FROM products
ORDER by price DESC;

-- find all employees who don't have a middle initial

SELECT * FROM employees
WHERE Middleinitial is null;

-- find distinct product prices

SELECT DISTINCT price FROM products;

-- find all employees whose first name starts with the letter ‘j’

SELECT * FROM employees
WHERE firstname LIKE "j%";

-- find all Macbooks

SELECT * FROM products
WHERE Name LIKE "Macbook";

-- find all products that are on sale
SELECT * FROM products
Where OnSale = 1;

-- find the average price of all products

SELECT AVG(Price) as "Average of Products" FROM products;

-- find all Geek Squad employees who don't have a middle initial

SELECT * FROM employees
Where title = "Geek Squad" AND MiddleInitial is null;

-- find all products FROM the products table whose stock level is in the range -- of 500 to 1200. Order by 
-- Price FROM least to greatest. Hint: Use the between keyword

SELECT * FROM products
-- WHERE StockLevel >= 500 AND StockLevel <= 1200
WHERE StockLevel BETWEEN 500 AND 1200
ORDER by price;
