--O INNER JOIN em SQL � usado para combinar registros de duas ou mais tabelas com base em uma condi��o comum.
--Ele retorna apenas as linhas onde h� uma correspond�ncia(intercess�o/igualdade) em ambas as tabelas.
--Se n�o houver correspond�ncia, essas linhas n�o ser�o inclu�das no resultado.

USE ContosoRetailDW

SELECT TOP 100 
	SalesKey
	,DateKey
	,DimChannel.ChannelKey
	,FactSales.channelKey
	,DimChannel.*
FROM FactSales 
INNER JOIN DimChannel  ON DimChannel.ChannelKey = FactSales.channelKey


