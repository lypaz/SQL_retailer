-- 4. Find the average product price by supplier AND category

SELECT 
    products.ProductName,
    AVG(products.PRICE) AS avgprice,
    categories.CategoryName AS category,
        suppliers.SupplierName AS SUPPLINAME

FROM
    products
        JOIN
    categories ON categories.CategoryID = products.CategoryID
    join
        suppliers ON suppliers.supplierid = products.supplierid

GROUP BY productname;