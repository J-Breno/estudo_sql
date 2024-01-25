-- EXERCICIO 1

SELECT
	*
FROM
	DimProduct

-- Existem 2517 produtos, reportei ao gestor que n�o existe nenhum defasagem no controle do produtos

SELECT
	*
FROM
	DimCustomer

-- Existem 18869 clientes, no caso reduziu o n�mero de clientes

SELECT
	CustomerKey,
	FirstName,
	EmailAddress,
	BirthDate
FROM
	DimCustomer

SELECT
	CustomerKey AS 'Id do Cliente',
	FirstName AS 'Primeiro Nome',
	EmailAddress AS 'Email',
	BirthDate AS 'Data de anivers�rio'
FROM
	DimCustomer

SELECT TOP(100)
	*
FROM
	DimCustomer

SELECT TOP(20) PERCENT
	*
FROM 
	DimCustomer

SELECT TOP(100)
	FirstName,
	EmailAddress,
	BirthDate
FROM
	DimCustomer

SELECT TOP(100)
	FirstName AS 'Primeiro Nome',
	EmailAddress AS 'Email',
	BirthDate AS 'Data Anivers�rio'
FROM
	DimCustomer

SELECT 
	DISTINCT Manufacturer
FROM
	DimProduct

SELECT 
	DISTINCT *
FROM
	DimProduct


SELECT 
	DISTINCT ProductKey
FROM
	FactSales