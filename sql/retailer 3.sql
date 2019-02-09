-- What is the most popular product sold (don't forget the quantity!)?

SELECT 
    products.ProductName AS product,
    SUM(orderdetails.quantity) AS quantity,
    COUNT(orderdetails.productid) AS numOForders
FROM
    products
        JOIN
    orderdetails ON orderdetails.ProductID = products.ProductID
GROUP BY orderdetails.productid
ORDER BY quantity desc;
