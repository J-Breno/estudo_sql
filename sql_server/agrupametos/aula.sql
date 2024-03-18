/* SELECT * FROM DimProduct

SELECT
	BrandName,
	COUNT(*) AS 'Quantidade da marca'
FROM
	DimProduct
GROUP BY
	BrandName */

	/*
SELECT * FROM DimStore

SELECT
	StoreType,
	SUM(EmployeeCount)
FROM
	DimStore
GROUP BY
	StoreType */

	
/*SELECT * FROM DimProduct
/*
SELECT
	BrandName,
	AVG(UnitCost)
FROM
	DimProduct
GROUP BY
	BrandName */

SELECT
	ClassName,
	MAX(UnitPrice) AS 'MAX PRE�O'
FROM
	DimProduct
GROUP BY

	ClassName*/

/*SELECT * FROM DimStore

SELECT
	StoreType,
	SUM(EmployeeCount) 
FROM
	DimStore
GROUP BY
	StoreType
ORDER BY
	SUM(EmployeeCount) DESC -- O SEU ORDER BY DEVE SER DO MESMO JEITO QUE VOC� ESCOLHEU O QUE VAI FAZER A��O COM O GROUP BY

*/

SELECT * FROM DimProduct

/*SELECT
	ColorName AS 'Cor do Produto',
	COUNT(*) AS 'Total de Produto'
FROM
	DimProduct
WHERE 
	BrandName = 'Contoso'
GROUP BY
	ColorName */
	/*
SELECT
	BrandName AS 'Marca',
	COUNT(BrandName) AS 'Total por Marca' -- S� DA PARA FAZER QUALQUER UMA FUN��O, SELECIONANDO OUTRA TABELA JUNTO SE USAR O GROUP BY JUNTO
FROM
	DimProduct 
GROUP BY 
	BrandName
HAVING	 -- QUANDO VOC� QUISER FAZER UM FILTRO ANTES DE AGRUPAR, VOC� IRA USAR O WHERE, MAS SE FOR DEPOIS DE AGRUPAR VOC� USAR� O HAVING
	COUNT(BrandName) >= 200

	*/

SELECT
	BrandName AS 'Marca',
	COUNT(BrandName) AS 'Total Marca'
FROM
	DimProduct
WHERE 
	ClassName = 'Economy' -- FILTRA A TABELA ORIGINAL, ANTES DO AGRUPAMENTO
GROUP BY BrandName
HAVING COUNT(BrandName) >= 200 -- FILTRA A TABELA DE J� AGRUPADA