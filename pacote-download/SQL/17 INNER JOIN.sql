--O INNER JOIN em SQL é usado para combinar registros de duas ou mais tabelas com base em uma condição comum.
--Ele retorna apenas as linhas onde há uma correspondência(intercessão/igualdade) em ambas as tabelas.
--Se não houver correspondência, essas linhas não serão incluídas no resultado.

USE ContosoRetailDW

SELECT TOP 100 
	SalesKey
	,DateKey
	,DimChannel.ChannelKey
	,FactSales.channelKey
	,DimChannel.*
FROM FactSales 
INNER JOIN DimChannel  ON DimChannel.ChannelKey = FactSales.channelKey


