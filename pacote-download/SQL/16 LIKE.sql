--O comando LIKE � usado em cl�usulas WHERE para procurar por um padr�o espec�fico dentro de uma coluna. 
--Ele � frequentemente utilizado para realizar buscas em campos de texto (strings).Existem dois caracteres curinga principais que voc� pode usar com o LIKE:
--% (percentual): Representa zero, um ou mais caracteres.
--_ (sublinhado): Representa um �nico caractere.


USE ContosoRetailDW
--	Buscando Nome Completo
SELECT
	FirstName+ ' ' + LastName AS 'NomeCompleto',
* FROM DimEmployee
WHERE FirstName + ' ' + LastName LIKE 'Aaron Painter'

--	come�a com Aaron
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

--	Come�a com 'Michael'
SELECT
	FirstName+ ' ' + LastName AS 'NomeCompleto',
* FROM DimEmployee
WHERE FirstName + ' ' + LastName LIKE '%Michael%'

--	come�a com 'Nur__'
SELECT
	FirstName+ ' ' + LastName AS 'NomeCompleto',
* FROM DimEmployee
WHERE FirstName + ' ' + LastName LIKE 'Nur__%'

--	termina com 'Nev__'
SELECT
	FirstName+ ' ' + LastName AS 'NomeCompleto',
* FROM DimEmployee
WHERE FirstName + ' ' + LastName LIKE '%nev__'

--	cont�m com 'gon[zs]ale[zs]' ===>>>> [sz] 's' ou 'z'
SELECT
	FirstName+ ' ' + LastName AS 'NomeCompleto',
* FROM DimEmployee
WHERE FirstName + ' ' + LastName LIKE '%gon[zs]ale[zs]%'