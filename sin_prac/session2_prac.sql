1. SELECT – Reading data from a table
SELECT * FROM sakila.actor;
we can Read from SELECT * FROM student;
2. SELECT DISTINCT – Remove duplicates
SELECT DISTINCT department FROM employees;
3. WHERE clause – Filter data
SELECT * FROM products WHERE price < 100;
4. COUNT – Count rows
SELECT COUNT(name) FROM students;
5. COUNT DISTINCT – Count unique values
SELECT COUNT(DISTINCT department) FROM employees
6. Selecting Specific Columns
SELECT product_name, price FROM products;
7. LIMIT – Show only few rows
SELECT name FROM employees LIMIT 2;
8. WHERE with Conditions (AND / OR)
SELECT * FROM employees WHERE role = 'Manager' OR salary > 5000;
9. Sorting using ORDER BY
SELECT price FROM products ORDER BY price ASC;
10. NOT operator
SELECT * FROM students WHERE NOT city = 'London';
11. LIKE operator 
SELECT name FROM students WHERE name LIKE 'J%';
12. NULL checking
SELECT * FROM employees WHERE manager_id IS NULL;
13. BETWEEN – Check range
SELECT * FROM products WHERE price BETWEEN 50 AND 100;
14. GROUP BY – Group rows
SELECT department, COUNT(*) FROM employees GROUP BY department;
15. HAVING – Filter groups
SELECT city, COUNT(*)
FROM customers
GROUP BY city
HAVING COUNT(*) > 10;
16. SQL Execution
SELECT city, COUNT(*)
FROM customers
WHERE age > 18
GROUP BY city
HAVING COUNT(*) > 3
ORDER BY city;
17. Where vs HavingSELECT 
customer_id, SUM(amount)
FROM payment
GROUP BY customer_id
HAVING SUM(amount) > 10