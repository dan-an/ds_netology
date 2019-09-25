select
	row_number() over (partition by customer_id order by rental_date),
	*
from rental;