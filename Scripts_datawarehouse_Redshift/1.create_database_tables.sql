CREATE DATABASE NORTHWIND;

CREATE TABLE categories (
    category_id smallint NOT NULL,
    category_name varchar(15) NOT NULL,
    description VARCHAR(max)
);
CREATE TABLE customers (
    customer_id varchar(40) NOT NULL,
    company_name varchar(40) NOT NULL,
    contact_name varchar(30),
    contact_title varchar(30),
    address varchar(60),
    city varchar(15),
    region varchar(15),
    postal_code varchar(10),
    country varchar(15),
    phone varchar(24)
);
CREATE TABLE employees (
    employee_id smallint NOT NULL,
    last_name varchar(20) NOT NULL,
    first_name varchar(10) NOT NULL,
    title varchar(30),
    title_of_courtesy varchar(25),
    birth_date date,
    hire_date date,
    address varchar(60),
    city varchar(15),
    region varchar(15),
    postal_code varchar(10),
    country varchar(15),
    home_phone varchar(24),
    extension varchar(4),
    notes varchar(max),
    reports_to smallint,
    photo_path varchar(255),
	salary real
);
CREATE TABLE order_details (
    order_id smallint NOT NULL,
    product_id smallint NOT NULL,
    unit_price real NOT NULL,
    quantity smallint NOT NULL,
    discount real NOT NULL
);

CREATE TABLE orders (
    order_id smallint NOT NULL,
    customer_id bpchar,
    employee_id smallint,
    order_date date,
    required_date date,
    shipped_date date,
    ship_via smallint,
    freight real,
    ship_name varchar(40),
    ship_address varchar(60),
    ship_city varchar(15),
    ship_region varchar(15),
    ship_postal_code varchar(10),
    ship_country varchar(15)
);
CREATE TABLE products (
    product_id smallint NOT NULL,
    product_name varchar(40) NOT NULL,
    supplier_id smallint,
    category_id smallint,
    quantity_per_unit varchar(20),
    unit_price real,
    units_in_stock smallint,
    units_on_order smallint,
    reorder_level smallint,
    discontinued integer NOT NULL
);

CREATE TABLE shippers (
    shipper_id smallint NOT NULL,
    company_name varchar(40) NOT NULL,
    phone varchar(24)
);
CREATE TABLE suppliers (
    supplier_id smallint NOT NULL,
    company_name varchar(40) NOT NULL,
    contact_name varchar(30),
    contact_title varchar(30),
    address varchar(60),
    city varchar(15),
    region varchar(15),
    postal_code varchar(10),
    country varchar(15),
    phone varchar(24),
    fax varchar(24),
    homepage varchar(max)
);
