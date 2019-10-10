create view flights_delay_time as (
	select 
		flight_id,
		age(actual_departure, scheduled_departure) as delay_time
	from flights
	where actual_departure != scheduled_departure and actual_departure is not null
	order by (delay_time) desc
);

select max(delay_time) as max_delay from delay_time;