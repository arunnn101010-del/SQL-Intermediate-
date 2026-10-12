/* Problem:
Find each customer's highest Completed order amount.

Return:
- customer_id
- name
- highest_order_amount

Concepts:
INNER JOIN
WHERE
GROUP BY
MAX()

Input Tables :-- 

Customers
customer_id | name   | city
1           | Arun   | Hyderabad
2           | Ravi   | Mumbai
3           | Aman   | Delhi
4           | Raj    | Chennai
5           | Neha   | Pune

Orders
order_id | customer_id | amount | status
101      | 1           | 5000   | Completed
102      | 2           | 3000   | Completed
103      | 1           | 7000   | Completed
104      | 3           | 4000   | Cancelled
105      | 2           | 6000   | Completed
106      | 5           | 9000   | Completed
107      | 3           | 8000   | Completed */


-- Solution

SELECT
    c.customer_id,
    c.name,
    MAX(o.amount) AS highest_order_amount
FROM Customers AS c
JOIN Orders AS o
    ON c.customer_id = o.customer_id
WHERE o.status = 'Completed'
GROUP BY c.customer_id, c.name;
