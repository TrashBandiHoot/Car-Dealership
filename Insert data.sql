-- Inserts both customers

INSERT INTO customer (
	customer_id,
	first_name,
	last_name,
	address,
	billing_info
) VALUES (
	1,
	'Jim',
	'Halpert',
	'123 Fake St. Chicago, IL 60606',
	'5555-5555-5555-5555 123 02/24'
);

INSERT INTO customer (
	customer_id,
	first_name,
	last_name,
	address,
	billing_info
) VALUES (
	2,
	'John',
	'Hancock',
	'124 Fake St. Chicago, IL 60606',
	'4444-4444-4444-4444 124 03/25'
);


-- Inserts both salespersons

INSERT INTO salesperson (
	salesperson_id,
	first_name,
	last_name
) VALUES (
	1,
	'Greg',
	'Smith'
);

INSERT INTO salesperson (
	salesperson_id,
	first_name,
	last_name
) VALUES (
	2,
	'Tom',
	'Pierce'
);


-- Inserts for both vehicles

INSERT INTO vehicle (
	vehicle_id,
	year_,
	make,
	model,
	new_
) VALUES (
	1,
	1998,
	'Ford',
	'F-150 XLT',
	FALSE
);


INSERT INTO vehicle (
	vehicle_id,
	year_,
	make,
	model,
	new_
) VALUES (
	2,
	2023,
	'Hyundai',
	'Elantra Limited',
	TRUE
);


-- Inserts for both invoices

INSERT INTO invoice (
	invoice_id,
	sub_total,
	total_cost,
	vehicle_id,
	customer_id,
	salesperson_id
) VALUES (
	1,
	5000.00,
	5500.00,
	1,
	1,
	1
);

INSERT INTO invoice (
	invoice_id,
	sub_total,
	total_cost,
	vehicle_id,
	customer_id,
	salesperson_id
) VALUES (
	2,
	25175,
	29174.32,
	2,
	2,
	2
);

-- Inserts for both mechanics

INSERT INTO mechanic (
	mechanic_id,
	first_name,
	last_name
) VALUES (
	1,
	'Dominic',
	'Davenport'
);

INSERT INTO mechanic (
	mechanic_id,
	first_name,
	last_name
) VALUES (
	2,
	'Paul',
	'Rothlesberger'
);

-- Inserts for both parts

INSERT INTO part_inventory (
	part_id,
	part_name,
	amount
) VALUES (
	1,
	'spark plug',
	10.99
);

INSERT INTO part_inventory (
	part_id,
	part_name,
	amount
) VALUES (
	2,
	'serpentine belt',
	35.99
);

-- Inserts for both service_tickets

INSERT INTO service_ticket (
	service_ticket_id,
	sub_total,
	total_cost,
	part_id,
	vehicle_id
) VALUES (
	1,
	254.95,
	296.24,
	1,
	1
);

INSERT INTO service_ticket (
	service_ticket_id,
	sub_total,
	total_cost,
	part_id,
	vehicle_id
) VALUES (
	2,
	40.10,
	43.60,
	NULL,
	2
);




