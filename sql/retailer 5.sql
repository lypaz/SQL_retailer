-- 5. Show how many "Beverages" (it's a category) were sold each month in 1996

SELECT 
    categories.CategoryName,
    SUM(orderdetails.Quantity) AS AmountOfBevaragesSold,
    MONTH(orders.OrderDate) AS MONTH
FROM
    orderdetails
        JOIN
    orders ON orders.OrderID = orderdetails.OrderID
        JOIN
    products ON products.ProductID = orderdetails.ProductID
        JOIN
    categories ON categories.CategoryID = products.CategoryID
WHERE
    categories.CategoryName LIKE 'beverages'
        AND orderdate LIKE '1996%'
GROUP BY MONTH(orders.OrderDate)
;
    
