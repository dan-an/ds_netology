insert into authors (full_name, nick_name, birth_date) values
	('Lovecraft', 'Cthulhu', '1/8/1990'),
	('Simmons', 'Giperion', '1/8/1991'),
	('Bredberry', 'Martian', '1/8/1992');

alter table authors add column birth_place varchar (50);

update authors set birth_place = 'Earth';

select * from authors;