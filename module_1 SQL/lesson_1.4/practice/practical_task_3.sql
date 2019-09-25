create table books (
	year integer not null,
	title varchar (50) not null,
	author_id integer references authors(id)
);

insert into books (year, title, author_id) values
	(1988, 'Endemion rises', 2),
	(1972, 'Mountains of madness', 1);
	
select * from books;

delete from authors
	where id=3;
	
