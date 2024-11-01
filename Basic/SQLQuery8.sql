SELECT * FROM Products

SELECT * FROM OrderDetails

DELETE FROM Products
WHERE StockQuantity = 0
  AND ProductID NOT IN (
      SELECT DISTINCT ProductID
      FROM OrderDetails
  );