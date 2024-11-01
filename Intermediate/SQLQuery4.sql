SELECT DISTINCT 
    s.PostalCode  -- Поле почтового индекса из таблицы поставщиков
FROM 
    Suppliers s  -- Основная таблица: Поставщики, используем псевдоним 's'
JOIN 
    Customers c ON s.PostalCode = c.PostalCode;  -- Объединяем с таблицей клиентов по почтовому индексу