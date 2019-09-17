select	
	count(*)
from film
join film_actor using(film_id)
join actor using(actor_id)
where film_actor.film_id = 384