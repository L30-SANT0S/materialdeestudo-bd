USE ContosoRetailDW
SELECT
	EmailAddress
	,Gender
	,MaritalStatus
	,TotalChildren
	,NumberChildrenAtHome
	,NumberCarsOwned AS 'QTD CARROS'
	,Education
	,BirthDate
FROM DimCustomer
WHERE	
	MaritalStatus IS NOT NULL												-- NOT, EXCLUI OS FILHOES DE 2 A 4
	AND NOT TotalChildren BETWEEN 2 AND 4					
	AND NOT BirthDate BETWEEN '1950-01-01' AND '1960-01-02'					-- NOT, EXCLUI O PERIODO SELECIONADO USANDO BETWEEN
	AND NumberChildrenAtHome NOT IN (0,1,5)									-- NOT IN, EXCLUI O NUM DE CRINÇAS EM CASA (0,1,5)
ORDER BY TotalChildren ASC
