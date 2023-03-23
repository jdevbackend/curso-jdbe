--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-------------------------------- ORDENANDO DADOS -------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- ORDER BY: ASC (DEFAULT) DESC
-- FORMA DE ORDENAÇÃO INFORMANDO OS NOMES DAS COLUNAS
SELECT *
  FROM ESCOLARIDADE
 ORDER BY DS_ESCOLARIDADE, ID_ESCOLARIDADE;
 
-- FORMA DE ORDENAÇÃO INFORMANDO A POSIÇÃO DAS COLUNAS (ATALHO)
SELECT *
  FROM ESCOLARIDADE
 ORDER BY 2,1;
 
-- FORMA DE ORDENAÇÃO INFORMANDO UMA EXPRESSÃO
SELECT ID_ESCOLARIDADE, 
       DS_ESCOLARIDADE, 
       ROWNUM,
       (ROWNUM * 2) || DS_ESCOLARIDADE AS DS_ESCOLARIDADE_TESTE
  FROM ESCOLARIDADE
 ORDER BY (ROWNUM * 2) || DS_ESCOLARIDADE;
 
-- COMBINANDO TODAS AS FORMAS DE ORDENAÇÃO COM (ASC DEFAULT)
SELECT ID_ESCOLARIDADE, 
       DS_ESCOLARIDADE, 
       ROWNUM,
       (ROWNUM * 2) || DS_ESCOLARIDADE AS DS_ESCOLARIDADE_TESTE
  FROM ESCOLARIDADE
 ORDER BY (ROWNUM * 2) || DS_ESCOLARIDADE, ID_ESCOLARIDADE, 2;
 
 
-- ORDENAÇÃO COM (DESC)
SELECT ID_ESCOLARIDADE, 
       DS_ESCOLARIDADE, 
       ROWNUM,
       (ROWNUM * 2) || DS_ESCOLARIDADE AS DS_ESCOLARIDADE_TESTE
  FROM ESCOLARIDADE
 ORDER BY ID_ESCOLARIDADE DESC;
