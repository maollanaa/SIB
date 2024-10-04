-- Create the tables
CREATE TABLE public.superstore_orders (
    row_id SERIAL PRIMARY KEY,
    order_id VARCHAR(50),
    order_date DATE,
    ship_date DATE,
    ship_mode VARCHAR(50),
    customer_id VARCHAR(50),
    customer_name VARCHAR(100),
    segment VARCHAR(50),
    country VARCHAR(100),
    city VARCHAR(100),
    state VARCHAR(100),
    postal_code VARCHAR(50),
    region VARCHAR(100),
    product_id VARCHAR(50),
    category VARCHAR(100),
    sub_category VARCHAR(100),
    product_name VARCHAR(255),
    sales NUMERIC(10, 2),
    quantity INT,
    discount NUMERIC(10, 2),
    profit NUMERIC(10, 2)
);

CREATE TABLE public.superstore_returns (
    returned BOOLEAN,
    order_id VARCHAR(50),
    FOREIGN KEY (order_id) REFERENCES public.superstore_orders(order_id)
);

CREATE TABLE public.superstore_people (
    person VARCHAR(100),
    region VARCHAR(100)
);
