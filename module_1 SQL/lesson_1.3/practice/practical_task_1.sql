select
	film.title "Film title",
	language.name "Film language"
from
	film
inner join
	language on film.language_id = language.language_id