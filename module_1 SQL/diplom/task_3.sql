create view no_flight_tickets as (
	select ticket_no
	from boarding_passes
	full outer join ticket_flights using(ticket_no)
	where boarding_no isnull
);

select book_ref
from no_flight_tickets
join tickets using(ticket_no)
join bookings using(book_ref)
group by book_ref;
