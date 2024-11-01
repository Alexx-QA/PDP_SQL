SELECT TOP 10
    o.OrderID, 
    COUNT(od.ProductID) AS TotalItems
FROM 
    Orders o
JOIN 
    OrderDetails od ON o.OrderID = od.OrderID  -- Соединяем Orders с OrderDetails
GROUP BY 
    o.OrderID  -- Группируем по OrderID
ORDER BY 
    TotalItems DESC;  -- Сортируем по общему количеству позиций в порядке убывания