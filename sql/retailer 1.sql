-- 1. Find the name of the customer that ordered the most orders in January 1997?

SELECT 
    customers.CustomerName AS name,
    COUNT(orders.customerid) AS NUMofORDERS
FROM
    orders
        JOIN
    customers ON customers.Customerid = orders.CustomerID
WHERE
    orderdate LIKE '1997-01-%'
GROUP BY orders.CustomerID
ORDER BY numoforders DESC
LIMIT 1
;
