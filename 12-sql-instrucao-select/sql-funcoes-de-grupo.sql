--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-------------------------------INTRODUÇÃO --------------------------------------
--------------------------- FUNÇÕES DE GRUPO -----------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- SINTAXE DA CONSULTA QUANDO UTILIZAMOS FUNÇÕES DE GRUPO:
SELECT DISTINCT COLUMN01, -- LISTAGEM DE COLUNAS PARTICIPANTES DA CONSULTA
                COLUMN02, -- LISTAGEM DE COLUNAS PARTICIPANTES DA CONSULTA
                COUNT(*)  -- FUNÇÃO DE GRUPO PARA CONTAR OS REGISTROS
  FROM TABELAS            -- TABELA(S) DA CONSULTA
 WHERE CONDICAO_DE_FILTRO -- CONDIÇÃO PARA FILTRAR REGISTROS
 GROUP BY COLUMN01, COLUMN02 -- INFORME AS COLUNAS QUE NÃO FAZ PARTE DE UMA 
                             -- FUNÇÃO DE GRUPO. NESTE EXEMPLO, O RESULTADO DA 
                             -- CONSULTA SERÁ AGRUPADO PELAS COLUNAS: COLUMN01 
                             -- E COLUMN02
 ORDER BY COLUMN01;          -- INFORME AS COLUNAS QUE SERÃO UTILIZADAS NA 
                             -- ORDENAÇÃO DOS DADOS