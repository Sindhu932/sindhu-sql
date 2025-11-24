1.Get all customers whose first name starts with 'J' and who are active.
SELECT *
FROM customer 
WHERE first_name LIKE 'j%'
AND active = 1;
2. Find all films where the title contains 'ACTION' or the description contains 'WAR'
 SELECT *
FROM film 
WHERE title like '%ACTION%'
OR description LIKE '%WAR%';
3. List all customers whose last name is not 'SMITH' and whose first name ends with 'a
SELECT *
FROM customer 
WHERE last_name <> 'SMITH'
 AND first_name LIKE '%a';
4. Get all films where rental rate > 3.0 and replacement cost is NOT NULL.
SELECT *
FROM film 
WHERE rental_rate > 3.0
 AND replacement_cost IS NOT NULL;
 5. Count how many customers exist in each store with active status = 1

SELECT store_id, COUNT(*) AS active_customers
FROM customer
WHERE active = 1
GROUP BY store_id;
6. Show distinct film ratings available.
SELECT DISTINCT rating
FROM film;
7.Number of films for each rental duration where AVG(length) > 100.
SELECT rental_duration, COUNT(*) AS film_count
FROM film
GROUP BY rental_duration
HAVING AVG(length) > 100;
8. Payment dates + total amount for dates where more than 100 payments were made.

9. Find customers whose email is NULL or ends with '.org'.
SELECT *
FROM customer
WHERE email IS NULL
  OR email LIKE '%org';
10.Films rated PG or G ordered by rental rate DESC.
SELECT * 
FROM film 
WHERE rating IN ('PG','G')
ORDER BY rental_rate DESC;
11. Count films for each length where title starts with 'T' and count > 5.
SELECT length, COUNT(*) AS film_count
FROM film
WHERE title LIKE 'T%'
GROUP BY length
HAVING COUNT(*) > 5;
12. Actors who appeared in more than 10 films.
SELECT a.actor_id, a.first_name, a.last_name, COUNT(fa.film_id) AS film_count
FROM actor a
JOIN film_actor fa ON a.actor_id = fa.actor_id
GROUP BY a.actor_id
HAVING COUNT(fa.film_id) > 10;
13. Top 5 films with highest rental rate + longest length (order rental_rate DESC, length DESC).
  SELECT film_id, title, rental_rate, length
  FROM film
  ORDER BY rental_rate DESC, length DESC
  LIMIT 5;
 

