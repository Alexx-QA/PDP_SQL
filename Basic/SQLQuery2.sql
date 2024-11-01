SELECT 
    FirstName,
    LastName,
    HireDate
FROM 
    Employees
WHERE 
    YEAR(HireDate) = 1994;