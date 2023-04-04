--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-------------------------------- SINTAXE ---------------------------------------
--------------------------- FUNÇÕES DE GRUPO -----------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
SELECT DISTINCT [COLUNAS, FUNCOES], 
  FROM TABELAS
 WHERE CONDICOES/FILTROS
 GROUP BY [COLUNAS, EXPRESSOES]
 ORDER BY [COLUNAS, EPRESSOES];

-- EXEMPLO COM SOMENTE FUNÇÕES DE GRUPO:
SELECT MAX(DT_NASCIMENTO),
       MIN(DT_NASCIMENTO),
       COUNT(*)
  FROM PESSOA; -- O GROUP BY NÃO É NECESSÁRIO
  
-- EXEMPLO CONSIDERANDO COLUNAS DO TIPO DATA
SELECT DISTINCT DT_CADASTRO, 
       COUNT(DT_NASCIMENTO),
       TO_CHAR(DT_CADASTRO, 'DD/MM/RRRR HH24:MI:SS')
  FROM PESSOA
 WHERE DT_NASCIMENTO <= TO_DATE('09/08/85','DD/MM/RR')
 GROUP BY DT_CADASTRO;

-- EXEMPLO CONSIDERANDO COLUNAS DO TIPO DATA
SELECT DISTINCT TO_CHAR(DT_CADASTRO, 'DD/MM/RRRR'), 
       COUNT(DT_NASCIMENTO)
  FROM PESSOA
 WHERE DT_NASCIMENTO <= TO_DATE('09/08/85','DD/MM/RR')
 GROUP BY TO_CHAR(DT_CADASTRO, 'DD/MM/RRRR');