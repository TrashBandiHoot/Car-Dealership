-- Refund procedure, I don't think this was required but I made it anyway

SELECT *
FROM invoice;

CREATE OR REPLACE PROCEDURE refund (
	customer INTEGER
	
)
LANGUAGE plpgsql
AS $$
BEGIN
	UPDATE invoice
	SET total_cost = 0
	WHERE customer_id = customer;

	COMMIT;

END;
$$

CALL refund(1);

DROP PROCEDURE refund;

-- Stored function for adding new customers

CREATE OR REPLACE FUNCTION add_customer(_customer_id INTEGER, _first_name VARCHAR,
_last_name VARCHAR, _address VARCHAR, _billing_info VARCHAR)
RETURNS void
AS $MAIN$
BEGIN 
	INSERT INTO customer(customer_id,first_name,last_name,address,billing_info)
	VALUES (_customer_id,_first_name,_last_name,_address,_billing_info);
END;
$MAIN$
LANGUAGE plpgsql;

-- Using the function
SELECT add_customer(3, 'David', 'Davenport', '125 Fake St. Batavia, IL 60510', '1234-5678-1234-5678 420 08/25');

-- Verified that it worked
SELECT * 
FROM customer


--Stored function for adding new vehicles

CREATE OR REPLACE FUNCTION add_vehicle(_vehicle_id INTEGER, _year_ NUMERIC, _make VARCHAR, _model VARCHAR, _new_ BOOLEAN)
RETURNS void
AS $MAIN$
BEGIN 
	INSERT INTO vehicle(vehicle_id,year_,make,model,new_)
	VALUES (_vehicle_id, _year_, _make, _model, _new_);
END;
$MAIN$
LANGUAGE plpgsql;


-- Using the function
SELECT add_vehicle(3, 2004, 'Saturn', 'Ion', FALSE);

--Verified tat it worked
SELECT *
FROM vehicle


