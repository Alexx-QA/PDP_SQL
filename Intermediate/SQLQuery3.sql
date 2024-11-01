SELECT TOP 5
    ShipCountry, 
    AVG(Freight) AS AverageFreight
FROM 
    Orders
WHERE 
    OrderDate >= DATEADD(MONTH, -12, (SELECT MAX(OrderDate) FROM Orders))
GROUP BY 
    ShipCountry
ORDER BY 
    AverageFreight DESC;