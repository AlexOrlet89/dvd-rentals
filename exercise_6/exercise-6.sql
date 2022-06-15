-- find all film titles rented out by customers with the first_name Roberta
-- Similar to exercise 5
select title
from film
INNER JOIN inventory on film.film_id = inventory.film_id
INNER JOIN rental on rental.inventory_id = inventory.inventory_id
INNER JOIN customer on customer.customer_id = rental.customer_id
Where customer.first_name = 'Roberta'