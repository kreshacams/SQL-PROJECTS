-- OPERATIONS IN SELECTING TABLES
SELECT 
	ProductName, 
    Quantity + 2,
    price,
    (Price + 10) * 100 AS "discount factor"
From tblproducts;

SELECT *
FROM order_items
WHERE order_id = "6" AND quantity * unit_price > 30;

SELECT *, quantity * unit_price AS total_price
FROM order_items
WHERE order_id = 2
ORDER BY total_price DESC;

-- SHOWING BIRTHDATE FROM Jan 1,1990 to Jan 1, 2020
SELECT * 
FROM customers
WHERE birth_date BETWEEN "1990-01-01" AND "2000-01-01";

-- choosing address with "trail" and "avenue" in it
SELECT *
FROM customers
WHERE address LIKE "%trail%" OR 
	  address LIKE "%AVENUE%";

-- using regexp with different conditions

-- first names are ELKA OR AMBUR 
SELECT *
FROM customers
WHERE first_name regexp "ELKA|AMBUR";

-- LAST NAMES ENDS WITH EY OR ON
SELECT *
FROM customers
WHERE last_name LIKE "%EY" OR last_name LIKE "%ON";

SELECT *
FROM customers
WHERE last_name regexp "EY$|ON$";

-- LAST NAMES START WITH MY OR CONTAINS SE
SELECT *
FROM customers
WHERE last_name LIKE "MY%" OR last_name LIKE "%SE%";

SELECT *
FROM customers
where last_name regexp "^MY|SE";

-- LAST NAMES CONTAIN B FOLLOWED BY R OR U
SELECT *
from customers
where last_name regexp "b[ru]";

SELECT *
from customers
where last_name regexp "br|bu";

-- INNER JOIN 
-- joining tables in same database
select ORDER_ID, O.CUSTOMER_ID, FIRST_NAME, LAST_NAME
FROM ORDERS O
JOIN CUSTOMERS C 
	ON O.CUSTOMER_ID = C.CUSTOMER_ID; 

SELECT order_id, p.product_id, name, quantity, OI.unit_price
FROM order_items OI
JOIN products P 
	ON OI.product_id = P.product_id;
    
-- joining tables from different database
USE sql_inventory

SELECT *
FROM sql_store.order_items oi
JOIN products p
	on oi.product_id = p.product_id;
    
-- joining tables within the same table
USE sql_hr

SELECT 
	e.employee_id, 
	e.first_name, 
    m.first_name as manager
FROM employees e
JOIN EMPLOYEES m
 on e.reports_to = m.employee_id;
 
 -- joining 3 tables from same database
 USE SQL_STORE;

select 
	o.order_id,
    o.order_date,
    c.first_name,
    c.last_name,
    os.name as status
from orders o
join customers c
	on o.customer_id = c.customer_id
join order_statuses os
	on o.status = os.order_status_id
    
USE sql_invoicing;
	
SELECT 
	p.client_id,
    c.name as client_name,
	p.invoice_id,
    p.date,
    p.amount,
    pm.name as payment_method
FROM payments p 
JOIN payment_methods pm
	ON p.payment_method = pm.payment_method_id
JOIN clients c 
	ON c.client_id = p.client_id;





