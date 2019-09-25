create view customer_rent as (
	select
		"first_name" || ' ' || "last_name" as name,
		email,
		title,
		rental_date,
		max(rental_date) over (partition by customer_id) as max_date
	from customer
	join rental using(customer_id)
	join inventory using(inventory_id)
	join film using(film_id)
	order by name
);

select name, email, title
from customer_rent
where rental_date = max_date;