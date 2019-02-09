-- 2. What is the full name of the top selling employee in 1996? (in terms of number of orders)?

SELECT 
    employees.FirstName,
    employees.LastName,
    COUNT(orders.EmployeeID) AS NumOfSells
FROM
    employees
        JOIN
    orders ON orders.EmployeeID = employees.EmployeeID
WHERE
    orderdate LIKE '1996-%'
GROUP BY employees.EmployeeID
ORDER BY numofsells DESC
LIMIT 1
;