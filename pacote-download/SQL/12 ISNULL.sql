
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
WHERE
MaritalStatus IS NULL				-- Explica��o, nesse Banco espec�fico, quem preencheu NULL em uma linha, preencheu em todas.
	