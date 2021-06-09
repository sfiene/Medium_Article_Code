DROP TABLE IF EXISTS customers CASCADE;
DROP TABLE IF EXISTS orders CASCADE;

CREATE TEMP TABLE customers (
	cust_id	INT PRIMARY KEY NOT NULL,
	first_name VARCHAR(200) NOT NULL,
	lifetime_value FLOAT NULL
);

CREATE TEMP TABLE orders (
		order_id INT PRIMARY KEY NOT NULL,
		cust_id INT NOT NULL,
		date		DATE NULL,
		product VARCHAR(200) NOT NULL,
		CONSTRAINT fk_customer
			FOREIGN KEY(cust_id)
				REFERENCES customers(cust_ID)
				ON DELETE CASCADE
);

INSERT INTO customers VALUES (1, 'Jim', 4003)
							, (2, 'Albert', 49024)
							, (3, 'Juanita', 3200)
							, (4, 'Bill', 5000)
							, (5, 'Leslie', 23500)
							, (6, 'Fredrick', NULL)
							, (7, 'Ricky', NULL)
							, (8, 'Dean', NULL);

INSERT INTO orders VALUES (1, 1, '01/01/2020', 'Pen')
						, (2, 2, '04/20/2021', 'Scissors')
						, (3, 1, '02/28/2021', 'Paper')
						, (4, 3, '03/25/2021', 'Paper')
						, (5, 4, '06/01/2021', 'Computer')
						, (6, 5, '12/24/2020', 'Stapler')
						, (7, 3, '01/19/2021', 'Desk')
						, (8, 4, '01/28/2021', 'Pens')
						, (9, 2, '05/08/2021', 'Paper Clip')
						, (10, 1, '06/02/2021', 'Scissors');
						
SELECT *
FROM customers;

SELECT *
FROM orders;
						
-- INNER JOIN						
SELECT *
FROM customers c
	JOIN orders o ON c.cust_id = o.cust_id;

SELECT *
FROM customers c
	INNER JOIN orders o ON c.cust_id = o.cust_id;
	
-- LEFT JOIN
SELECT *
FROM customers c
	LEFT JOIN orders o ON c.cust_id = o.cust_id;
 
SELECT *
FROM customers c
	LEFT OUTER JOIN orders o ON c.cust_id = o.cust_id;
	
-- UNION
SELECT *
FROM customers

UNION

SELECT *
FROM customers;

-- UNION ALL
SELECT *
FROM customers

UNION ALL

SELECT *
FROM customers;