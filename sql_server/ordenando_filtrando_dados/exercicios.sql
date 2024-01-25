SELECT TOP(100)
	*
FROM
	FactSales
ORDER BY SalesQuantity DESC

SELECT
	TOP(10) *
FROM
	DimProduct 
ORDER BY
	UnitPrice DESC, Weight DESC, AvailableForSaleDate ASC


SELECT 
	ProductName AS 'Nome do Produto',
	Weight AS 'Peso'
FROM
	DimProduct
WHERE
	Weight >= 100
ORDER BY Weight DESC


SELECT * FROM DimStore

SELECT
	StoreName AS 'Nome da Loja',
	OpenDate AS 'Data da Abertura',
	EmployeeCount AS 'Contagem de Funcionários'
FROM
	DimStore
WHERE
	Status = 'On'

--EXISTEM 306 LINHAS NO TOTAL
-- 294 ESTÃO ATIVAS

SELECT 
	*
FROM
	DimProduct
WHERE
	BrandName = 'Litware' AND
	ProductName LIKE '%Home Theater%' AND
	AvailableForSaleDate = '20090315' --Ou 15/03/2009

SELECT * FROM DimStore WHERE Status = 'Off'
SELECT * FROM DimStore WHERE CloseDate IS NOT NULL


SELECT * FROM DimStore WHERE  EmployeeCount BETWEEN 1 AND 20
SELECT * FROM DimStore WHERE EmployeeCount BETWEEN 21 AND 50
SELECT * FROM DimStore WHERE EmployeeCount >= 51

SELECT
	ProductKey as 'ID do Produto',
	ProductName as 'Nome do Produto',
	UnitPrice as 'Preço do Produto'
FROM
	DimProduct
WHERE
	ProductName LIKE '%LCD%'

SELECT
	*
FROM
	DimProduct
WHERE
	BrandName IN ('Contoso', 'Litware', 'Fabrikam')
	AND ColorName IN ('Green','Orange','Black','Silver','Pink')


SELECT 
	ProductKey as 'ID do Produto',
	ProductName as 'Nome do Produto',
	UnitPrice as 'Preço do Produto'
FROM
	DimProduct
WHERE
	BrandName = 'Contoso'
	AND ColorName = 'Silver'
	AND UnitPrice BETWEEN 10 AND 30
ORDER BY
	UnitPrice desc
