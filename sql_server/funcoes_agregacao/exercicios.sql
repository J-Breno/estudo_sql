/*
-- exercicio 1
SELECT * FROM FactSales

SELECT 
	SUM(SalesQuantity) AS 'Quantidade Vendida',
	SUM(ReturnQuantity) AS 'Quantidade Devolvida'
FROM
	FactSales
WHERE
	ChannelKey = 1


SELECT * FROM DimChannel

*/

/*
-- exrcicio 2

SELECT * FROM DimCustomer

SELECT
	AVG(YearlyIncome)
FROM
	DimCustomer
WHERE
	Occupation = 'Professional'
*/

/*
-- Exercicio 3

SELECT
	StoreName,
	EmployeeCount 
FROM
	DimStore
WHERE
	StoreType = 'Store' AND
	EmployeeCount IS NOT NULL
ORDER BY
	EmployeeCount DESC

SELECT
	StoreName,
	EmployeeCount
FROM
	DimStore
WHERE
	StoreType = 'Store' AND
	EmployeeCount IS NOT NULL
ORDER BY
	EmployeeCount ASC 
*/

/*

-- eXERCICIO 4

SELECT * FROM DimEmployee

SELECT
	
	FirstName AS 'Primeiro Nome M',
	EmailAddress AS 'Email',
	StartDate AS 'Data de inicio'
FROM
	DimEmployee
WHERE
	Gender = 'M'
ORDER BY 
	StartDate ASC

SELECT
	
	FirstName AS 'Primeiro Nome F',
	EmailAddress AS 'Email',
	StartDate AS 'Data de inicio'
FROM
	DimEmployee
WHERE
	Gender = 'F'
ORDER BY 
	StartDate ASC

SELECT
	COUNT(Gender) AS 'Total Masculino'
FROM
	DimEmployee
WHERE
	Gender = 'M'

SELECT
	COUNT(Gender) AS 'Total Femenino'
FROM
	DimEmployee 
WHERE Gender = 'F'
*/
/*
-- eXERCICIO 5

SELECT
	COUNT(DISTINCT ColorName) AS 'Nome da Cor',
	COUNT(DISTINCT BrandName) AS 'Nome da Marca',
	COUNT(DISTINCT ClassName) AS 'Nome da Classe'
FROM
	DimProduct

*/