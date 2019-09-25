CREATE TABLE orders ( ID serial NOT NULL PRIMARY KEY, info json NOT NULL);

INSERT INTO orders (info) VALUES 
	('{ "customer": "John Doe", "items": {"product": "Beer","qty": 6}}' ),
	( '{ "customer": "Lily Bush", "items": {"product": "Diaper","qty": 24}}' ),
	( '{ "customer": "Josh William", "items": {"product": "Toy Car","qty": 1}}' ),
	( '{ "customer": "Mary Clark", "items": {"product": "Toy Train","qty": 2}}' );

select sum(cast(info -> 'items' ->> 'qty' as integer)) from orders;