
USE ContosoRetailDW

SELECT 
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
	AND NumberChildrenAtHome >0
	AND MaritalStatus = 'S'
	AND (TotalChildren = 3 OR TotalChildren = 4)

ORDER BY 2 DESC, 3 DESC, 4 DESC, 5 ASC, [Quantidade Carros] DESC
