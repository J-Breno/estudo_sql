/*
-- Exercicio 1:

SELECT
	TOP 100 channelKey,
	SUM(SalesQuantity)
FROM
	FactSales
GROUP BY channelKey

SELECT
	StoreKey,
	SUM(SalesQuantity),
	SUM(ReturnQuantity)
FROM 
	FactSales
GROUP BY 
	StoreKey


SELECT 
	ChannelKey,
	SUM(SalesAmount)
FROM
	FactSales
GROUP BY
	channelKey

-- Exercicio 2:	

SELECT
	TOP 10
	ProductKey,
	SUM(SalesAmount)
FROM
	FactSales
GROUP BY
	ProductKey
HAVING SUM(SalesAmount) >= 5000000
ORDER BY SUM(SalesAmount) DESC

SELECT
	TOP 3 ProductKey, -- CustomerKey = 19037
	SUM(SalesQuantity)
FROM
	FactOnlineSales
WHERE CustomerKey = 19037
GROUP BY
	ProductKey
ORDER BY SUM(SalesQuantity) DESC

--Exercicio 4

SELECT
	ColorName,
	SUM(Weight)
FROM
	DimProduct
GROUP BY ColorName
-- EXERCICIO 5
SELECT
	StockTypeName,
	SUM(Weight)
FROM
	DimProduct
WHERE BrandName = 'Contoso'
GROUP BY StockTypeName
-- EXERCICIO 6
SELECT
	BrandName,
	COUNT(DISTINCT ColorName)
FROM
	DimProduct
GROUP BY
	BrandName
-- exercICIO 7
SELECT
	Gender,
	COUNT(LastName)
FROM
	DimCustomer
WHERE Gender IS NOT NULL
GROUP BY
	Gender
-- exercicio 8

SELECT
	Education,
	COUNT(LastName),
	AVG(YearlyIncome)
FROM
	DimCustomer
WHERE Education IS NOT NULL
GROUP BY
	Education
-- Exercicio 9
SELECT
	DepartmentName,
	COUNT(FirstName)
FROM
	DimEmployee
WHERE 
	EndDate IS NULL
GROUP BY
	DepartmentName
*/
-- EXERCICIO 10
SELECT
	Title,
	SUM(VacationHours)
FROM
	DimEmployee
WHERE
	Gender = 'F' AND
	 DepartmentName = 'Production' OR
	 DepartmentName = 'Marketing' OR
	 DepartmentName = 'Engineering' OR
	 DepartmentName = 'Finance' AND
	StartDate BETWEEN '1999/01/01' AND '2000/01/01'
GROUP BY
	Title
/*
SELECT * FROM DimEmployee*/