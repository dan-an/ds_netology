select 
	title,
	first_name || ' ' || last_name as full_name,
	count(actor_id) over (partition by actor_id)
from film
join film_actor using (film_id)
join actor using (actor_id);