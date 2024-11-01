SELECT 
    s.SupplierID,          
    s.CompanyName,       
    COUNT(p.ProductID) AS ProductCount  -- Подсчитываем количество товаров у поставщика
FROM 
    Suppliers s
JOIN 
    Products p ON s.SupplierID = p.SupplierID  -- Соединяем таблицы Suppliers и Products по SupplierID
WHERE 
    p.Discontinued = 0  -- Фильтруем только те продукты, которые не являются прекращёнными
    AND p.UnitPrice * 1.2 > p.UnitPrice  -- Условие для фильтрации
GROUP BY 
    s.SupplierID, 
    s.CompanyName  -- Группируем результаты по идентификатору и названию компании
ORDER BY 
    ProductCount DESC;  -- Сортируем результаты по количеству товаров в порядке убывания