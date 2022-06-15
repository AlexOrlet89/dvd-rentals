-- find all rental dates for customers with the first_name Patricia
-- use INNER JOIN FROM customer onto rental
select *
from rental
INNER JOIN customer on customer.customer_id = rental.customer_id
Where customer.first_name = 'Patricia'
