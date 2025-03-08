DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS malls;
DROP TABLE IF EXISTS payment_methods;
DROP TABLE IF EXISTS categories;
DROP TABLE IF EXISTS genders;


CREATE TABLE genders (
    gender_id SERIAL PRIMARY KEY,
    gender TEXT NOT NULL UNIQUE
);

CREATE TABLE categories (
    category_id SERIAL PRIMARY KEY,
    category TEXT NOT NULL UNIQUE
);

CREATE TABLE payment_methods (
    payment_method_id SERIAL PRIMARY KEY,
    payment_method TEXT NOT NULL UNIQUE
);

CREATE TABLE malls (
    mall_id SERIAL PRIMARY KEY,
    shopping_mall TEXT NOT NULL UNIQUE
);

CREATE TABLE customers (
    customer_id TEXT PRIMARY KEY,
    gender_id INTEGER NOT NULL,
    age INTEGER NOT NULL,
    FOREIGN KEY (gender_id) REFERENCES genders(gender_id)
);

CREATE TABLE invoices (
    invoice_no TEXT PRIMARY KEY,
    invoice_date DATE NOT NULL,
    customer_id TEXT NOT NULL,
    payment_method_id INTEGER NOT NULL,
    mall_id INTEGER NOT NULL,
    category_id INTEGER NOT NULL,
    quantity INTEGER NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (payment_method_id) REFERENCES payment_methods(payment_method_id),
    FOREIGN KEY (mall_id) REFERENCES malls(mall_id),
    FOREIGN KEY (category_id) REFERENCES categories(category_id)
);
