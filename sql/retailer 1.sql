-- 1. Find the name of the customer that ordered the most orders in January 1997?

SELECT 

    orderdate as month,
    count(orders.customerid),
    customers.CustomerName AS name
    
FROM
    orders
        JOIN
    customers ON customers.Customerid = orders.CustomerID
WHERE
    orderdate LIKE '1997-01-%'
GROUP BY orders.CustomerID
order by month desc;
