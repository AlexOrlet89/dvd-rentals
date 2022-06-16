-- find the title and count of the top 10 most rented films
-- use COUNT to count each row
-- GROUP BY the film_id
-- ORDER in descending order
-- LIMIT 10
select title, COUNT (rental_id)
from film 
INNER JOIN inventory on film.film_id = inventory.film_id
INNER JOIN rental on rental.inventory_id = inventory.inventory_id
GROUP BY film.film_id
ORDER by COUNT desc
LIMIT 10