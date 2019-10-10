select
	aircraft_code,
	model,
	(count(*) * 100/(select count(*) from flights)) as "percentage_in_%"
from flights
join aircrafts using (aircraft_code)
group by (aircraft_code, model)
order by ("percentage_in_%") desc