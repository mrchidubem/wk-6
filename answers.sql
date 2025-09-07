-- Question 1 🧑‍💼
-- Get firstName, lastName, email, and officeCode of all employees
-- Using INNER JOIN to include only employees who are linked to an office
SELECT 
    e.firstName, 
    e.lastName, 
    e.email, 
    e.officeCode
FROM employees e
INNER JOIN offices o
    ON e.officeCode = o.officeCode;

-- Question 2 🛍️
-- Get productName, productVendor, and productLine from products
-- Using LEFT JOIN to include all products, even if their productLine has no match
SELECT 
    p.productName, 
    p.productVendor, 
    p.productLine
FROM products p
LEFT JOIN productlines pl
    ON p.productLine = pl.productLine;

-- Question 3 📦
-- Retrieve orderDate, shippedDate, status, and customerNumber for the first 10 orders
-- Using RIGHT JOIN to include all orders, even if they have no matching customer
SELECT 
    o.orderDate, 
    o.shippedDate, 
    o.status, 
    o.customerNumber
FROM customers c
RIGHT JOIN orders o
    ON c.customerNumber = o.customerNumber
LIMIT 10;
