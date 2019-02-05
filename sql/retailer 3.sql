-- What is the most popular product sold (don't forget the quantity!)?

select products.ProductName as product, max(orderdetails.quantity) as quan
from products
join orderdetails on orderdetails.ProductID = products.ProductID