
USE ContosoRetailDW

SELECT 
	EmailAddress
	,Gender
	,maritalstatus
	,Education
	,NumberCarsOwned 'Quantidade Carros'
	,NumberChildrenAtHome
	,TotalChildren
FROM DimCustomer
--ORDER BY Gender DESC, MaritalStatus DESC, TotalChildren DESC        FORMA PADRÃO
ORDER BY 2 DESC, 3 DESC, 4 DESC, [Quantidade Carros] DESC  --FORMA SIMPLIFICADA
