CREATE TABLE sales (
    order_id INT,
    region VARCHAR(50),
    country VARCHAR(50),
    product VARCHAR(50),
    quantity INT,
    price NUMERIC(10,2),
    order_date DATE
);

INSERT INTO sales VALUES
(1, 'North America', 'USA', 'Laptop', 2, 899.99, '2024-01-10'),
(2, 'Europe', 'Germany', 'Phone', 5, 499.99, '2024-01-12'),
(3, 'Asia', 'India', 'Tablet', 3, 299.99, '2024-01-15'),
(4, 'North America', 'Canada', 'Monitor', 4, 199.99, '2024-01-18'),
(5, 'Europe', 'France', 'Laptop', 1, 999.99, '2024-01-20');


SELECT * FROM sales;
