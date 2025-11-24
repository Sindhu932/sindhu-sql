1. Identify duplicates in the Customer table (Do NOT use customer_id)
SELECT first_name,last_name,COUNT(*)AS duplicate_count
FROM customer 
GROUP BY first_name,last_name
HAVING COUNT(*)>2;
2. Count number of times letter ‘a’ appears in all film descriptions
SELECT 
    SUM(LENGTH(description) - LENGTH(REPLACE(description, 'a', ''))) 
    AS total_a_count
FROM film;
3. Count number of times each vowel appears in film descriptions
SELECT 
SUM(LENGTH(description) - LENGTH(REPLACE(description, 'a', ''))) AS a_count,
SUM(LENGTH(description) - LENGTH(REPLACE(description, 'e', ''))) AS e_count,
SUM(LENGTH(description) - LENGTH(REPLACE(description, 'i', ''))) AS i_count,
SUM(LENGTH(description) - LENGTH(REPLACE(description, 'o', ''))) AS o_count,
SUM(LENGTH(description) - LENGTH(REPLACE(description, 'u', ''))) AS u_count
FROM file;
4. Payments made by each customer — Month-wise, Year-wise, Week-wise
Month-wise payment totals
SELECT 
customer_id,
DATE_FORMAT(payment_date,  '%Y-%m') AS month,
SUM(amount) AS total_paid
FROM Payment
GROUP BY customer_id, month
Year-wise payment totals
SELECT 
customer_id,
YEAR(payment_date) AS year,
SUM(amount) AS total_paid
FROM payment 
GROUP BY customer_id, year;
Week-wise payment totals
SELECT 
  customer_id,
  YEARWEEK (payment_date) AS year_week,
  SUM (amount_AS total_paid
FROM payment 
GROUP BY customer_id, year_week;
5. Check if a given year is a leap year


6. Number of days remaining in the current year
SELECT
    DATADIFF(
        CONCAT(YEAR(CURDATE()),  '-12-31'),
        CURDATE()
        )AS days_remaining;
7. Display quarter number (Q1–Q4) for payment dates
    SELECT
    payment_id,
    payment_date,
    CONCAT('Q', QUARTER(payment_date)) AS quarter_number
FROM payment;
    8. Display age in Years, Months, Days
    
        
      

