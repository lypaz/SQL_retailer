-- 1. Find the name of the customer that ordered the most orders in August 1997?


SELECT 
    MONTH(orderdate),
    MAX(orderdetails.quantity) AS quan,
    orders.customerid
FROM
    orders
        JOIN
    orderdetails ON orders.orderid = orderdetails.orderid
WHERE
    orderdate LIKE '1997-01-%'
GROUP BY MONTH(orderdate);
