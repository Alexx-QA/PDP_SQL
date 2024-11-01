SELECT DISTINCT 
    s.PostalCode  -- ���� ��������� ������� �� ������� �����������
FROM 
    Suppliers s  -- �������� �������: ����������, ���������� ��������� 's'
JOIN 
    Customers c ON s.PostalCode = c.PostalCode;  -- ���������� � �������� �������� �� ��������� �������