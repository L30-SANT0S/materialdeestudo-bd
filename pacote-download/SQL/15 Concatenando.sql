--A concatenação em SQL Server é o processo de unir duas ou mais strings em uma única string. Isso pode ser feito usando o operador + ou a função CONCAT.

USE ContosoRetailDW

SELECT
	FirstName+ ' ' + LastName AS 'NomeCompleto',
*,				--Chama toda a lista
	FirstName+ ' '+ LastName AS 'FullName'				-- esse comando no final(*) 
FROM DimEmployee