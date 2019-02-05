-- 2. What is the full name of the top selling employee in 1996? (in terms of number of orders)?

SELECT 
    employees.FirstName, employees.LastName, orders.EmployeeID
FROM
    employees
        JOIN
    orders ON orders.EmployeeID = employees.EmployeeID;