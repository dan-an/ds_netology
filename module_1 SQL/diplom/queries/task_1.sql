select 
	city,
	count(airport_name) as airports_qty
from airports
group by city
having count(airport_name) > 1
order by city;