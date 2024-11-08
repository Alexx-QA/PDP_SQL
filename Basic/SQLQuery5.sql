SELECT 
    p.ProductID,
    p.ProductName,
    s.CompanyName
FROM 
    Products p
JOIN 
    Suppliers s ON p.SupplierID = s.SupplierID
ORDER BY 
    p.ProductID;