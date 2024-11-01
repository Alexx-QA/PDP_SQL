SELECT TOP 10
    o.OrderID, 
    COUNT(od.ProductID) AS TotalItems
FROM 
    Orders o
JOIN 
    OrderDetails od ON o.OrderID = od.OrderID  -- ��������� Orders � OrderDetails
GROUP BY 
    o.OrderID  -- ���������� �� OrderID
ORDER BY 
    TotalItems DESC;  -- ��������� �� ������ ���������� ������� � ������� ��������