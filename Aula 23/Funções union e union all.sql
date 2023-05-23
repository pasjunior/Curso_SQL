-- UNION DE SELECTS
-- AULA 23
	-- MESMO NÚMERO DE COLUNA
	-- O USO DO NULL PARA CONTORNAR LIMITAÇÃO
	-- NOME DAS COLUNAS SERÁ DO PRIMEIRO SELECT
	-- EXECUTA UN DISTINCT QUANDO UTILIZADO

USE AdventureWorks20216;

SELECT p.EnglishProductName, p.SafetyStockLevel, p.DaysToManufacture, p.Class, p.Color
FROM DimProduct P
WHERE p.Color = 'NA'

union

SELECT p.EnglishProductName, p.SafetyStockLevel, p.DaysToManufacture, p.Class, p.Color
FROM DimProduct P
WHERE p.Color <> 'NA'

-- IGNORANDO LIMITAÇÃO DA QUANTIDADE DE COLUNAS

SELECT p.EnglishProductName, p.SafetyStockLevel, p.DaysToManufacture, NULL, NULL
FROM DimProduct P
WHERE p.Color = 'NA'

union

SELECT p.EnglishProductName, p.SafetyStockLevel, p.DaysToManufacture, p.Class, p.Color
FROM DimProduct P
WHERE p.Color <> 'NA'

-- ALIAS PARA COLUNAS

SELECT p.EnglishProductName, p.SafetyStockLevel, p.DaysToManufacture, p.Class, p.Color
FROM DimProduct P
WHERE p.Color = 'NA'
	AND P.Class IS NOT NULL

UNION

SELECT p.EnglishProductName, p.SafetyStockLevel, p.DaysToManufacture, p.Class, p.Color
FROM DimProduct P
WHERE p.Color = 'BLACK'
	AND P.Class = 'l'

-- UNION (DISTINCT) / UNION ALL (TODOS OS REGISTROS)

SELECT EnglishProductName, Class, Color
FROM DimProduct

UNION ALL

SELECT EnglishProductName, Class, Color
FROM DimProduct