-- find all customers first_name, last_name, addfress, and city
-- Similar to exercise 3 but with customer, addrfess, city
select customer.first_name, customer.last_name, address.address, city.city 
from customer
LEFT JOIN address on customer.address_id = address.address_id
LEFT JOIN city on city.city_id = address.city_id