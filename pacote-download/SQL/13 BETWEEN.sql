--O operador BETWEEN em SQL Server � usado para selecionar valores dentro de um intervalo especificado. Ele pode ser aplicado a valores num�ricos, datas ou texto.

USE ContosoRetailDW
SELECT 
	EmailAddress
    ,Gender
	,MaritalStatus
	,TotalChildren
	,NumberChildrenAtHome
	,NumberChildrenAtHome AS'QTD DE CARROS'
	,Education
	,BirthDate
FROM DimCustomer
WHERE 
	MaritalStatus IS NOT NULL
	--AND TotalChildren >= 2 AND TotalChildren<=4						OUTRA OP��O A SEGUIR
	AND TotalChildren BETWEEN 2 AND 4
	AND BirthDate BETWEEN '1950-01-01' AND '1960-01-02'
ORDER BY BirthDate ASC




