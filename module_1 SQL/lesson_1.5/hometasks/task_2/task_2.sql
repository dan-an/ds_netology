create materialized view behind_the_scenes
as (
	select 
		customer_id,
		count(distinct film_id)
	from rental
	join inventory using(inventory_id)
	join film using(film_id)
	where 'Behind the Scenes' = any(special_features)
	group by customer_id
	order by(customer_id)
)
with no data;

refresh materialized view behind_the_scenes;

select * from behind_the_scenes;