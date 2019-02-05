-- 4. Find the average product price by supplier AND category

SELECT 
   avg (products.Price),
    categories.CategoryName AS category,
        suppliers.SupplierName AS SUPPLINAME

FROM
    products
        JOIN
    categories ON categories.CategoryID = products.CategoryID
    join
        suppliers ON suppliers.supplierid = products.supplierid
        
        group by category,suppliname
        order by suppliname,category

;