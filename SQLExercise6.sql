USE northwind;

-- 1 --
INSERT INTO suppliers (SupplierID, CompanyName, ContactName, ContactTitle, Address, City, Region, PostalCode, Country)
VALUES ("30", "Sing Tut Inc.", "Sing Tuttanon", "Order Administrator", "123 Abc Ln", "Charlotte", "NC", "28213", "USA");

-- 2 --
INSERT INTO products (ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued)
VALUES ("78", "Wine Of Song", "30", "1", "4 - 30oz bottles", "40.0000", "100", "0", "20", "0");
 
-- 3 --
SELECT
	p.ProductName, s.CompanyName
FROM
	products p
		INNER JOIN
	suppliers s
		ON
		p.SupplierID = s.SupplierID;
        
-- 4 --
UPDATE 
	productsadvertisements
SET
	UnitPrice = ((15/100)*40.00) + 40.00
WHERE
	ProductID = 78;

-- 5 --
SELECT
	ProductName,
    UnitPrice
FROM
	products p
		INNER JOIN
	suppliers s 
		ON
		p.SupplierID = s.SupplierID
	WHERE
		s.SupplierID = 30;
        
-- 6 --
DELETE
	FROM
		products p
	WHERE
		p.ProductID = 78;
	
-- 7 --
DELETE 
	FROM
		suppliers s
	WHERE
		s.SupplierID = 30;

-- 8 --
SELECT
	*
FROM
	products;

-- 9 --
SELECT
	*
FROM
	suppliers;