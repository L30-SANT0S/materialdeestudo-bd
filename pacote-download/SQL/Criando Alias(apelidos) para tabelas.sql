

USE ContosoRetailDW

SELECT TOP 100 
	FS.SalesKey
	,FS.DateKey
	,DC.ChannelKey
	,FS.channelKey
	,DC.*
FROM FactSales AS FS  -- USANDO 'AS' PARA APELIDAR A 'FactSales' de 'FS'
INNER JOIN DimChannel DC ON DC.ChannelKey = FS.channelKey			-- No 'INNER JOIN' é nessesario apenas colocar o apelido 
																	-- a frente do nome da tabela


