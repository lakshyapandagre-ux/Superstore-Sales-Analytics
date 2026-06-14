
CREATE TABLE customers (

    customer_id TEXT,
    customer_name TEXT,
    segment TEXT

);

CREATE TABLE products (

    product_id TEXT,
    product_name TEXT,
    category TEXT,
    sub_category TEXT

);

CREATE TABLE orders (

    order_id TEXT,
    order_date DATE,
    ship_date DATE,
    ship_mode TEXT,
    customer_id TEXT,
    product_id TEXT,
    country TEXT,
    city TEXT,
    state TEXT,
    region TEXT,
    sales NUMERIC,
    quantity NUMERIC,
    discount NUMERIC,
    profit NUMERIC

);

SELECT tablename
FROM pg_tables
WHERE schemaname = 'public';
