
-- Seleciona o banco de dados ContosoRetailDW para executar a consulta
USE ContosoRetailDW

-- Seleciona todas as colunas da tabela DimCustomer
SELECT 
    * 
FROM DimCustomer

-- Ordena os resultados pela coluna Gender em ordem decrescente,
-- seguida pela coluna MaritalStatus também em ordem decrescente,
-- e, por fim, pela coluna TotalChildren também em ordem decrescente
ORDER BY 
	 Gender DESC
	,MaritalStatus DESC
	,TotalChildren DESC
