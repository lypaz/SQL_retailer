-- 4. Find the average product price by supplier AND category

SELECT 
    categories.CategoryName AS CATEGORY,
    suppliers.SupplierName AS SUPPLINAME,
    AVG(products.Price) AS AVERGEPRICE
FROM
    products
        JOIN
    categories ON categories.CategoryID = products.CategoryID
        JOIN
    suppliers ON suppliers.supplierid = products.supplierid
GROUP BY category , suppliname
ORDER BY suppliname , category

;