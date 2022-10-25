CREATE TABLE customer (
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	address VARCHAR(150),
	billing_info VARCHAR(150)
);

CREATE TABLE salesperson (
	salesperson_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100)
);

CREATE TABLE vehicle (
	vehicle_id SERIAL PRIMARY KEY,
	year_ NUMERIC(4,0),
	make VARCHAR(20),
	model VARCHAR(50),
	new_ BOOLEAN
);

CREATE TABLE invoice (
	invoice_id SERIAL PRIMARY KEY,
	sub_total NUMERIC(10,2),
	total_cost NUMERIC(10,2),
	vehicle_id INTEGER,
	customer_id INTEGER,
	salesperson_id INTEGER,
	FOREIGN KEY(vehicle_id) REFERENCES vehicle(vehicle_id),
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY(salesperson_id) REFERENCES salesperson(salesperson_id)
);

CREATE TABLE mechanic (
	mechanic_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100)
);

CREATE TABLE part_inventory (
	part_id SERIAL PRIMARY KEY,
	part_name VARCHAR(100),
	amount NUMERIC(8,2)
);

CREATE TABLE service_ticket (
	service_ticket_id SERIAL PRIMARY KEY,
	sub_total NUMERIC(8,2),
	total_cost NUMERIC(8,2),
	part_id INTEGER,
	vehicle_id INTEGER,
	FOREIGN KEY(part_id) REFERENCES part_inventory(part_id),
	FOREIGN KEY(vehicle_id) REFERENCES vehicle(vehicle_id)
);