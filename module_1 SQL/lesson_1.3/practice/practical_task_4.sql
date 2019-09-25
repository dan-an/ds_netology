select film.title "Film title", count(actor_id)
from film
join film_actor using (film_id)
join actor using(actor_id)
group by film.title
having count(film.film_id) > 10
