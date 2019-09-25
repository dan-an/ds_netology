create table lang(
	id serial primary key,
	name varchar (50) not null
);

create table nations(
	id serial primary key,
	name varchar (50) not null,
	lang_id integer references lang(id)
);

create table countries(
	id serial primary key,
	name varchar (50) not null
);

create table countries_nations(
	nation_id integer references nations(id),
	country_id integer references lang(id),
	primary key(nation_id, country_id)
	
);

insert into lang(name) values
	('English'),
	('Russian'),
	('French');


insert into nations(name, lang_id) values
	('British', 1),
	('Russian', 2),
	('French', 3);

insert into countries(name) values 
	('Great Britain'),
	('Russia'),
	('France');

insert into countries_nations(nation_id, country_id) values
	(1, 1),
	(2, 1),
	(2, 2),
	(3, 3),
	(3, 1);
