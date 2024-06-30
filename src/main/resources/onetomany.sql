CREATE TABLE customer(
	id 				INTEGER PRIMARY KEY ,
	customer_name	VARCHAR(256)
);

CREATE TABLE orders(
	id 				INTEGER PRIMARY KEY,
	customer_id		INTEGER REFERENCES customer(id),
	order_price		INTEGER
);