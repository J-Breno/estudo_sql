/*
	Comentário de bloco
*/

-- comentário de linha



SELECT
	*
FROM
	DimCustomer

SELECT
	*
FROM
	DimStore

SELECT
	StoreKey,
	StoreName,
	StorePhone
FROM
	DimStore

SELECT
	*
FROM
	DimProduct

SELECT
	ProductName,
	BrandName
FROM
	DimProduct

-- Comando SELECT TOP(n) E TOP(N) PERCENT: retorna as N primeiras linhas

-- 1. Crie um código que retorna as 10 primeiras linhas da tabela de produto

SELECT TOP(10)
	FirstName,
	EmailAddress
FROM
	DimEmployee

-- PERCENT serve para trazer em porcentagem
SELECT TOP(10) PERCENT
	*
FROM
	DimCustomer

SELECT TOP(1000)
	*
FROM 
	factSales

-- Comando SELECT DISTINT: Retorna os valores distintos de uma tabela [1,2,3,1,1,2,2,5,4] = [1,2,3,4,5]

SELECT 
	*
FROM
	DimProduct

SELECT
	DISTINCT ColorName
FROM
	DimProduct

SELECT
	*
FROM
	DimEmployee

SELECT 
	DISTINCT DepartmentName
FROM
	DimEmployee

-- comando as: Renomeando colunas (aliasing)

SELECT
	ProductName,
	BrandName,
	ColorName
FROM
	DimProduct

SELECT
	ProductName AS 'Nome do Produto', -- aspas simples, sempre coloque quando for renomear
	BrandName AS 'Marca', 
	ColorName AS 'Cor'
FROM
	DimProduct