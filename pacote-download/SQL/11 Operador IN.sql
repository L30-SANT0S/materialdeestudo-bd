
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
-- OUTRAS OP합ES
WHERE 
	--Education = 'High School'											OP플O
	Education IN ('bachelors','Graduate Degree')
	AND NumberChildrenAtHome >=2
	--AND MaritalStatus = 'S'											OP플O
	AND NOT MaritalStatus = 'M'		
	--AND (TotalChildren = 3 OR TotalChildren = 4)						OP플O
	AND TotalChildren IN (3,4)