
USE ContosoRetailDW

SELECT TOP 100 WITH TIES -- WITH TIES, TRAZER AS LINHAS QUE EST�O EMPATADAS
	EmailAddress
	,Gender
	,maritalstatus
	,TotalChildren
	,NumberChildrenAtHome
	,NumberCarsOwned 'Quantidade Carros'
	,Education
FROM DimCustomer
ORDER BY 2 DESC, 3 DESC, 4 DESC, [Quantidade Carros] DESC
