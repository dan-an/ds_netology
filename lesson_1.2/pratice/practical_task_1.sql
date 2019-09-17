select 
	film_id as FilmId,
	title as FilmTitle,
	description as FilmDescription,
	release_year as FilmReleaseYear,
	rental_rate/rental_duration as FilmDayRate
from film