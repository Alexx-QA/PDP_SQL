SELECT 
    o.OrderID,
    CAST(o.OrderDate AS DATE) AS OrderDate,
    s.CompanyName
FROM 
    Orders o
JOIN 
    Shippers s ON o.ShipVia = s.ShipperID
WHERE 
    o.OrderID < 11000
ORDER BY 
    o.OrderID;