-- the top 10 cities with the most total rental payment amount
-- include the city name and sum
-- use SUM to sum up the amounts
select city, SUM (amount) as sum
from city
INNER JOIN address on address.city_id = city.city_id
INNER JOIN customer on customer.address_id = address.address_id
INNER JOIN payment on payment.customer_id = customer.customer_id
GROUP BY city.city_id
ORDER BY sum desc
Limit 10