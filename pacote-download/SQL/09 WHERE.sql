
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
--WHERE NumberChildrenAtHome = 0                                      BUSCA POR COLUNA ESPECIFICA
-- OUTRAS OP��ES
WHERE Education = 'High School'
ORDER BY 2 DESC, 3 DESC, 4 DESC, [Quantidade Carros] DESC
