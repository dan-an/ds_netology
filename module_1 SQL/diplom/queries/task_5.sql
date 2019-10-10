create view flights_fare_comparison as (
	select
		flight_id,
		arrival_city,
		max(amount) filter (where fare_conditions = 'Economy') as max_economy_fare,
		min(amount) filter (where fare_conditions = 'Business') as min_business_fare
	from ticket_flights
	join flights_v using(flight_id)
	group by (flight_id, arrival_city)
);

select arrival_city
from flights_fare_comparison
where min_business_fare < max_economy_fare;