
USE ContosoRetailDW

SELECT TOP 100 WITH TIES -- WITH TIES, TRAZER AS LINHAS QUE ESTÃO EMPATADAS
	EmailAddress
	,Gender
	,maritalstatus
	,TotalChildren
	,NumberChildrenAtHome
	,NumberCarsOwned 'Quantidade Carros'
	,Education
FROM DimCustomer
--WHERE NumberChildrenAtHome = 0                                      BUSCA POR COLUNA ESPECIFICA
-- OUTRAS OPÇÕES
WHERE Education = 'High School'
ORDER BY 2 DESC, 3 DESC, 4 DESC, [Quantidade Carros] DESC
