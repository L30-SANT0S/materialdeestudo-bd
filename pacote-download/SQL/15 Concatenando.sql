--A concatena��o em SQL Server � o processo de unir duas ou mais strings em uma �nica string. Isso pode ser feito usando o operador + ou a fun��o CONCAT.

USE ContosoRetailDW

SELECT
	FirstName+ ' ' + LastName AS 'NomeCompleto',
*,				--Chama toda a lista
	FirstName+ ' '+ LastName AS 'FullName'				-- esse comando no final(*) 
FROM DimEmployee