UPDATE Orders
SET ShipRegion = 'Eastern Connection'
WHERE ShipRegion IS NULL
  AND ShipCountry = 'Spain'
  AND ShipPostalCode = '28023';