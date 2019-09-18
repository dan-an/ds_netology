select 
	customer_id,
	first_name,
	last_name,
	city
from customer
join address using(address_id)
join city using(city_id)
order by customer_id;