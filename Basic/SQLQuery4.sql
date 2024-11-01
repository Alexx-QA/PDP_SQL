SELECT 
    Title AS Department,
    COUNT(*) AS EmployeeCount
FROM 
    Employees
GROUP BY 
    Title;