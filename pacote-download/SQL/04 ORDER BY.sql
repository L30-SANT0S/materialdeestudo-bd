-- Seleciona o banco de dados ContosoRetailDW para executar a consulta
USE ContosoRetailDW

-- Seleciona todas as colunas da tabela DimCustomer
SELECT 
    * 
FROM DimCustomer

-- Ordena os resultados pela coluna LastName em ordem decrescente
ORDER BY 
    LastName DESC
