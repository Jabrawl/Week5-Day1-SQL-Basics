-- QUESTION 1: There are 2 actors with the last name Wahlberg
SELECT first_name, last_name
FROM actor
WHERE last_name = 'Wahlberg';

-- QUESTION 2: There are 5607 payments between 3.99 and 5.99

SELECT COUNT(amount)
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;

-- QUESTION 3: There are multiple with 8
SELECT film_id, COUNT(film_id) as num
FROM inventory
GROUP BY film_id
ORDER BY num DESC;

-- QUESTION 4: 0 Customers with the last name William
SELECT first_name, last_name
FROM customer
WHERE last_name = 'William';

-- QUESTION 5: Staff 1 (Mike) rented 8040
SELECT staff_id, COUNT(staff_id)
FROM rental
GROUP BY staff_id
ORDER BY staff_id;

-- QUESTION 6: 378 Different districts
SELECT COUNT(DISTINCT district)
FROM address;

-- QUESTION 7: 508 has 15 actors
SELECT film_id, COUNT(actor_id) as actors
FROM film_actor
GROUP BY film_id
ORDER BY actors DESC;


-- QUESTION 8: 13 last names with es in store_id 1
SELECT COUNT(last_name)
FROM customer
WHERE last_name LIKE '%es' and store_id = 1;

-- QUESTION 9: 3 payment amounts
SELECT amount, COUNT(amount)
FROM payment
WHERE customer_id BETWEEN 380 and 430
GROUP BY amount
HAVING COUNT(*) > 250;

-- QUESTION 10: 5 categories with PG-13 at 223
SELECT rating, COUNT(rating) as num
FROM film
GROUP BY rating
ORDER BY num DESC;

