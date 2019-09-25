create table authors (
	id serial primary key,
	full_name varchar (50) not null,
	nick_name varchar (50),
	birth_date date not null	
);