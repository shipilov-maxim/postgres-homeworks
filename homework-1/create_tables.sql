-- SQL-команды для создания таблиц
CREATE TABLE customers
(
    customer_id varchar PRIMARY KEY,
    company_name varchar NOT NULL,
    contact_name varchar NOT NULL
);

CREATE TABLE employees
(
    employee_id int PRIMARY KEY,
    first_name varchar NOT NULL,
	last_name varchar NOT NULL,
	title varchar NOT NULL,
    birth_date varchar NOT NULL,
	notes text NOT NULL
);

CREATE TABLE orders
(
	order_id int PRIMARY KEY,
    customer_id varchar REFERENCES customers(customer_id),
    employee_id int REFERENCES employees(employee_id),
	order_date varchar NOT NULL,
	ship_city varchar NOT NULL
);
