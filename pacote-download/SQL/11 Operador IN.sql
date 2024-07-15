
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
-- OUTRAS OP��ES
WHERE 
	--Education = 'High School'											OP��O
	Education IN ('bachelors','Graduate Degree')
	AND NumberChildrenAtHome >=2
	--AND MaritalStatus = 'S'											OP��O
	AND NOT MaritalStatus = 'M'		
	--AND (TotalChildren = 3 OR TotalChildren = 4)						OP��O
	AND TotalChildren IN (3,4)