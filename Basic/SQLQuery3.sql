SELECT 
    ContactTitle,
    COUNT(*) AS ContactCount
FROM 
    Customers
GROUP BY 
    ContactTitle;