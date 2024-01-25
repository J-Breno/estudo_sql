SELECT TOP(100)
	*
FROM
	DimStore
ORDER BY
	EmployeeCount DESC -- Maior para o menor

SELECT TOP(10)
	ProductName,
	UnitCost,
	Weight
FROM
	DimProduct 
ORDER BY
	UnitCost DESC,
	Weight DESC

SELECT
	ProductName AS 'Produto',
	UnitPrice AS 'Preço'
FROM 
	DimProduct
WHERE
	UnitPrice >= 2000

SELECT * FROM DimProduct

SELECT
	* 
FROM
	DimProduct
WHERE
	BrandName = 'Fabrikam'


SELECT
	*
FROM
	DimProduct
WHERE 
	ColorName = 'Black'

SELECT * FROM DimCustomer
WHERE BirthDate >= '1970/12/31'
ORDER BY BirthDate DESC -- ASSIM ESTÁ MOSTRANDO O MAIS NOVO PARA O MAIS VELHO


SELECT
	*
FROM
	DimProduct
WHERE
	BrandName = 'Fabrikam' AND ColorName = 'Black'

SELECT
	*
FROM
	DimProduct
WHERE
	BrandName = 'Contoso' OR ColorName = 'White'

SELECT * FROM DimEmployee
WHERE NOT DepartmentName = 'Marketing'