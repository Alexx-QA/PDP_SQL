SELECT 
    s.SupplierID,          
    s.CompanyName,       
    COUNT(p.ProductID) AS ProductCount  -- ������������ ���������� ������� � ����������
FROM 
    Suppliers s
JOIN 
    Products p ON s.SupplierID = p.SupplierID  -- ��������� ������� Suppliers � Products �� SupplierID
WHERE 
    p.Discontinued = 0  -- ��������� ������ �� ��������, ������� �� �������� �������������
    AND p.UnitPrice * 1.2 > p.UnitPrice  -- ������� ��� ����������
GROUP BY 
    s.SupplierID, 
    s.CompanyName  -- ���������� ���������� �� �������������� � �������� ��������
ORDER BY 
    ProductCount DESC;  -- ��������� ���������� �� ���������� ������� � ������� ��������