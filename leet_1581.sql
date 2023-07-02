-- Customer Who Visited but Did Not Make Any Transactions --
-- Write a SQL query to find the IDs of the users who visited without making any transactions --
-- and the number of times they made these types of visits. --

DROP TABLE visits

CREATE TABLE visits
(
    visit_id INT,
    customer_id INT
)

INSERT INTO visits VALUES
(1, 23),
(2, 9),
(4, 30),
(5, 54),
(6, 96),
(7, 54),
(8, 54)

SELECT *
FROM visits

DROP TABLE transactions

CREATE TABLE transactions
(
    transaction_id INT,
    visit_id INT,
    amount INT
)

INSERT INTO transactions VALUES
(2, 5, 310),
(3, 5, 300),
(9, 5, 200),
(12, 1, 910),
(13, 2, 970)

SELECT *
FROM transactions

SELECT customer_id, COUNT(customer_id) AS count_no_trans
FROM visits v
LEFT JOIN transactions t 
    ON v.visit_id = t.visit_id
WHERE transaction_id IS NULL
GROUP BY customer_id

