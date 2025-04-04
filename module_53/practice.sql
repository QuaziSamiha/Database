-- 4 April, 25

CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10, 2)
)

INSERT INTO
    orders (
        customer_id,
        order_date,
        total_amount
    )
VALUES (101, '2024-01-15', 150.75),
    (101, '2024-01-15', 250.75),
    (102, '2024-02-10', 320.50),
    (103, '2024-03-05', 210.00),
    (103, '2024-03-05', 310.00),
    (103, '2023-03-05', 10.00),
    (103, '2024-03-05', 410.00),
    (104, '2022-03-20', 450.25),
    (104, '2024-03-20', 450.25),
    (105, '2024-04-02', 99.99),
    (106, '2024-04-10', 275.30),
    (106, '2021-04-10', 275.30),
    (106, '2024-04-10', 275.30),
    (107, '2024-05-01', 510.80),
    (107, '2024-05-01', 510.80),
    (107, '2021-05-01', 510.80),
    (107, '2022-05-01', 510.80),
    (107, '2023-05-01', 510.80),
    (107, '2024-05-01', 510.80),
    (108, '2024-05-15', 125.50),
    (109, '2024-06-07', 330.00),
    (109, '2022-06-07', 530.00),
    (109, '2021-06-07', 330.00),
    (109, '2024-06-07', 330.00),
    (109, '2024-06-07', 330.00),
    (110, '2024-06-20', 215.75);

SELECT * FROM orders;

-- find customers who have placed more than 2 orders and calculate the total amount spent by each of these customers.

-- SELECT * FROM orders GROUP BY customer_id; -- it will show an error

SELECT customer_id FROM orders GROUP BY customer_id;

SELECT customer_id, count(order_id) FROM orders GROUP BY customer_id;

SELECT customer_id, count(order_id)
FROM orders
GROUP BY
    customer_id
HAVING
    count(order_id) > 2;

SELECT customer_id, count(order_id), sum(total_amount) AS total_spent
FROM orders
GROUP BY
    customer_id
HAVING
    count(order_id) > 2;

DROP TABLE orders;

-- find the total amount of orders placed each month in the year 2022

SELECT extract( month FROM order_date ) FROM orders;

SELECT extract(
        month
        FROM order_date
    ) AS month_name
FROM orders
GROUP BY
    month_name;

SELECT extract(
        month
        FROM order_date
    ) AS month_name, sum(total_amount)
FROM orders
GROUP BY
    month_name;

SELECT extract(
        month
        FROM order_date
    ) AS month_name, sum(total_amount)
FROM orders
WHERE
    extract(
        year
        FROM order_date
    ) = 2022
GROUP BY
    month_name;