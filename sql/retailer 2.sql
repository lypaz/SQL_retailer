-- 2. What is the full name of the top selling employee in 1996? (in terms of number of orders)?

SELECT 
    employees.LastName,
    employees.FirstName,
    orders.OrderID,year(orders.orderdate),
    MAX(orderdetails.Quantity) AS sales
FROM
    employees
        JOIN
    orders ON orders.EmployeeID = employees.EmployeeID
        JOIN
    orderdetails ON orderdetails.orderid = orders.orderid
    where orderdate like "1996%"
group by year (orderdate) 
    
;