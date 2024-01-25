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

SELECT * FROM DimProduct WHERE ColorName IN ('Silver','Blue', 'White','Red', 'Black')

SELECT * FROM DimProduct
WHERE ProductName LIKE '%MP3 Player%'

SELECT * FROM DimProduct
WHERE ProductDescription LIKE 'Type%'

SELECT * FROM DimProduct
WHERE UnitPrice NOT BETWEEN 50 AND 100


SELECT * FROM DimProduct
WHERE UnitPrice BETWEEN 50 AND 100
ORDER BY UnitPrice DESC

SELECT * FROM DimEmployee
WHERE HireDate BETWEEN '2000-01-01' AND '2000-12-31'

SELECT * FROM DimCustomer
WHERE CompanyName IS NULL