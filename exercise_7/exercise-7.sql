-- find all film titles rented out by customers who live in the city of Dundee
-- Similar to exercise 6 but you need a few more joins to get the city name
SELECT title
from film
INNER JOIN inventory on film.film_id = inventory.film_id
INNER JOIN rental on rental.inventory_id = inventory.inventory_id
INNER JOIN customer on customer.customer_id = rental.customer_id
INNER JOIN address on customer.address_id = address.address_id
INNER JOIN city on address.city_id = city.city_id
Where city.city = 'Dundee'
