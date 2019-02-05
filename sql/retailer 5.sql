-- 5. Show how many "Beverages" (it's a category) were sold each month in 1996

SELECT 
    categories.CategoryName,
   sum( orderdetails.Quantity),
   month (orders.OrderDate),
    products.CategoryID
FROM
    orderdetails
        JOIN
    orders ON orders.OrderID = orderdetails.OrderID
        JOIN
    products ON products.ProductID = orderdetails.ProductID
        JOIN
    categories ON categories.CategoryID = products.CategoryID
    where categories.CategoryName like "beverages"
     and orderdate not like "1997%"
     group by month(orders.OrderDate)
     ;
    
