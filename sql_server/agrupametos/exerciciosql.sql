/*SELECT TOP(2000) * FROM FactSales
WHERE 
	DateKey BETWEEN '01/01/2007' AND '31/12/2007'

/*SELECT
	channelKey AS 'Canal de Vendas',
	SUM(SalesQuantity) AS 'Quantidade Vendida'
FROM
	FactSales
GROUP BY 
	channelKey*/

/* SELECT
	StoreKey AS 'ID das Lojas',
	SUM(SalesQuantity) AS 'Quantidade Vendida',
	SUM(ReturnQuantity) AS 'Quantidade Devolvida'
FROM
	FactSales
GROUP BY
	StoreKey
ORDER BY StoreKey ASC */

/* SELECT
	channelKey AS 'Canal de Vendas',
	SUM(SalesAmount) AS 'Total Vendido'
FROM
	FactSales
WHERE 
	DateKey BETWEEN '01/01/2007' AND '31/12/2007'
GROUP BY
	channelKey */

SELECT 
	ProductKey AS 'Chave do Produto',
	SUM(SalesAmount) AS 'Total Vendido',
	sum(SalesQuantity) AS 'Quantidade Vendida'
FROM
	FactSales
GROUP BY
	ProductKey
HAVING SUM(SalesAmount) > 5000000
ORDER BY SUM(SalesQuantity) DESC */
/*
SELECT TOP(1000) * FROM FactOnlineSales

SELECT TOP(3)
	ProductKey AS 'ID do Produto',
	SUM(SalesQuantity) AS 'Qtd. Compras'
FROM
	FactOnlineSales
WHERE CustomerKey = 19037
GROUP BY
	(ProductKey)
ORDER BY SUM(SalesQuantity) DESC
*/

SELECT * FROM DimProduct
/*
/*SELECT
	BrandName,
	COUNT(ProductName)
FROM
	DimProduct
GROUP BY
	BrandName
ORDER BY COUNT(ProductName) DESC */

/*SELECT
	ClassName,
	AVG(UnitPrice)
FROM
	DimProduct
GROUP BY
	ClassName
ORDER BY AVG(UnitPrice) DESC */

SELECT
	ColorName,
	SUM(Weight)
FROM
	DimProduct
GROUP BY
	ColorName
ORDER BY SUM(Weight) DESC */


/* SELECT
	StockTypeName,
	SUM(Weight)
FROM
	DimProduct
WHERE BrandName = 'Contoso'
GROUP BY
	StockTypeName
ORDER BY
	SUM(Weight) DESC */

SELECT
	BrandName,
	COUNT(ColorName)
FROM
	DimProduct
GROUP BY
	BrandName -- está errado, lembrar quando voltar, refazer