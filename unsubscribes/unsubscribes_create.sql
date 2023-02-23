create table metrics.unsubscribes (
	id serial primary key,
	unsubscribe_date timestamp,
	name varchar(100),
	email_from varchar(100)
);