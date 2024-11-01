SELECT ProductID, ProductName, UnitsInStock, UnitsOnOrder, ReorderLevel
FROM Products
WHERE (UnitsInStock + UnitsOnOrder) <= ReorderLevel
AND Discontinued = 0;