
USE ContosoRetailDW

SELECT TOP 103 -- SELECIONAR Nº DE LINHAS ESPECIFICAS
	EmailAddress
	,Gender
	,maritalstatus
	,Education
	,NumberCarsOwned 'Quantidade Carros'
	,NumberChildrenAtHome
	,TotalChildren
FROM DimCustomer
ORDER BY 2 DESC, 3 DESC, 4 DESC, [Quantidade Carros] DESC
