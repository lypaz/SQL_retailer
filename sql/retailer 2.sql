-- 2. What is the full name of the top selling employee in 1996? (in terms of number of orders)?

SELECT 
    employees.FirstName,
    employees.LastName,
    COUNT(orders.EmployeeID)
FROM
    employees
        JOIN
    orders ON orders.EmployeeID = employees.EmployeeID
WHERE
    ORDERS.employeeid = (SELECT 
            MAX(employeeid)
        FROM
            orders)
        AND orderdate LIKE '1996-%'
;