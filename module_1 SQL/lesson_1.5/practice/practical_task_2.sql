with cte_staff as (
	select "last_name" || ' ' || "first_name" as staff,
	count(rental_id)
	from staff
	join rental using(staff_id)
	group by staff_id
)

select * from cte_staff;