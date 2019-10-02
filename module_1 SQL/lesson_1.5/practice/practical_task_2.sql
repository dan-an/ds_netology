with cte_staff as (
	select "last_name" || ' ' || "first_name" as staff,
	count(*)
	from staff
	join rental using(staff_id)
	group by staff_id
)

select * from cte_staff;