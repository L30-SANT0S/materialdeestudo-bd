--O comando LIKE é usado em cláusulas WHERE para procurar por um padrão específico dentro de uma coluna. 
--Ele é frequentemente utilizado para realizar buscas em campos de texto (strings).Existem dois caracteres curinga principais que você pode usar com o LIKE:
--% (percentual): Representa zero, um ou mais caracteres.
--_ (sublinhado): Representa um único caractere.


USE ContosoRetailDW
--	Buscando Nome Completo
SELECT
	FirstName+ ' ' + LastName AS 'NomeCompleto',
* FROM DimEmployee
WHERE FirstName + ' ' + LastName LIKE 'Aaron Painter'

--	começa com Aaron
SELECT
	FirstName+ ' ' + LastName AS 'NomeCompleto',
* FROM DimEmployee
WHERE FirstName + ' ' + LastName LIKE 'Aaron%'

--	contem 'paul'	em qualquer parte da String
SELECT
	FirstName+ ' ' + LastName AS 'NomeCompleto',
* FROM DimEmployee
WHERE FirstName + ' ' + LastName LIKE '%PAUL%'

--	Termina com 'allen'
SELECT
	FirstName+ ' ' + LastName AS 'NomeCompleto',
* FROM DimEmployee
WHERE FirstName + ' ' + LastName LIKE '%allen'

--	Começa com 'Michael'
SELECT
	FirstName+ ' ' + LastName AS 'NomeCompleto',
* FROM DimEmployee
WHERE FirstName + ' ' + LastName LIKE '%Michael%'

--	começa com 'Nur__'
SELECT
	FirstName+ ' ' + LastName AS 'NomeCompleto',
* FROM DimEmployee
WHERE FirstName + ' ' + LastName LIKE 'Nur__%'

--	termina com 'Nev__'
SELECT
	FirstName+ ' ' + LastName AS 'NomeCompleto',
* FROM DimEmployee
WHERE FirstName + ' ' + LastName LIKE '%nev__'

--	contém com 'gon[zs]ale[zs]' ===>>>> [sz] 's' ou 'z'
SELECT
	FirstName+ ' ' + LastName AS 'NomeCompleto',
* FROM DimEmployee
WHERE FirstName + ' ' + LastName LIKE '%gon[zs]ale[zs]%'