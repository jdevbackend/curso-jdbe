--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
----------------------- VALOR NULO OU NULL -------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- UM VALOR NULO É DIFERENTE DE 0 OU UM ESPAÇO EM BRANCO
SELECT 'TEXT' AS "VALOR TEXTO", 
       100    AS "VALOR INTEIRO", 
       100.99 AS "VALOR DECIMAL", 
       TO_DATE('01/10/2023','DD/MM/YYYY') AS "VALOR DATA", 
       NULL AS "VALOR NULO"
  FROM DUAL;
  
-- EXPRESSÕES ARITMÉTICAS COM VALORES NULOS RESULTAM VALOR NULO
SELECT 100 * NULL AS "MULTIPLICAÇÃO",
       100 + NULL AS "SOMA",
       100 - NULL AS "SUBTRACAO",
       100 / NULL AS "DIVISÃO"
  FROM DUAL;