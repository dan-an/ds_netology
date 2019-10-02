create view max_range_aircraft as (
	select aircraft_code
	from aircrafts
	where range = (select max(range) from aircrafts)
);

select airport_code, airport_name 
from airports
join flights on flights.departure_airport = airports.airport_code OR flights.arrival_airport = airports.airport_code
join max_range_aircraft using(aircraft_code)
where aircraft_code = max_range_aircraft.aircraft_code
group by (airport_code);