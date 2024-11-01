SELECT 
    e.EmployeeID, 
    e.LastName, 
    o.OrderID, 
    p.ProductName, 
    od.Quantity
FROM 
    Employees e
JOIN 
    Orders o ON e.EmployeeID = o.EmployeeID  -- ��������� Employees � Orders
JOIN 
    OrderDetails od ON o.OrderID = od.OrderID  -- ��������� Orders � OrderDetails
JOIN 
    Products p ON od.ProductID = p.ProductID  -- ��������� OrderDetails � Products
ORDER BY 
    o.OrderID, 
    od.ProductID;  -- ��������� �� OrderID � ProductID