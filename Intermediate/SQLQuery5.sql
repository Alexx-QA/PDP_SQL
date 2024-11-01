SELECT 
    e.EmployeeID, 
    e.LastName, 
    o.OrderID, 
    p.ProductName, 
    od.Quantity
FROM 
    Employees e
JOIN 
    Orders o ON e.EmployeeID = o.EmployeeID  -- Соединяем Employees с Orders
JOIN 
    OrderDetails od ON o.OrderID = od.OrderID  -- Соединяем Orders с OrderDetails
JOIN 
    Products p ON od.ProductID = p.ProductID  -- Соединяем OrderDetails с Products
ORDER BY 
    o.OrderID, 
    od.ProductID;  -- Сортируем по OrderID и ProductID