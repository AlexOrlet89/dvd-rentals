-- find all film titles that an actor with the last_name Davis appears in
-- Similar to exercise 3 but with actor, film_actor, film
select title
from film
INNER JOIN film_actor on film.film_id = film_actor.film_id
INNER JOIN actor on film_actor.actor_id = actor.actor_id
Where actor.last_name = 'Davis'