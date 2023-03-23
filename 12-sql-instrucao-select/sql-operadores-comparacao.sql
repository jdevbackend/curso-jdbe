--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
----------------------- OPERADORES DE COMPARAÇÃO -------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- OPERADOR (=)
SELECT *
  FROM CURSO 
 WHERE ID_CURSO = 3;

-- OPERADOR (>)
SELECT *
  FROM ESCOLARIDADE
 WHERE ID_ESCOLARIDADE > 4; -- NÃO É INCLUSIVO. O 4 É EXCLUIDO NESTE EXEMPLO

-- OPERADOR (>=)
SELECT *
  FROM ESCOLARIDADE
 WHERE ID_ESCOLARIDADE >= 4; -- INCLUSIVO, TRAZ O VALOR COMPARADO E OS DEMAIS

-- OPERADOR (<)
SELECT *
  FROM ESCOLARIDADE
 WHERE ID_ESCOLARIDADE < 4; -- NÃO É INCLUSIVO. O 4 É EXCLUIDO NESTE EXEMPLO
 
-- OPERADOR (<=)
SELECT *
  FROM ESCOLARIDADE
 WHERE ID_ESCOLARIDADE <= 4; -- INCLUSIVO, TRAZ O VALOR COMPARADO E OS DEMAIS
 
-- OPERADOR (<>)
SELECT *
  FROM ESCOLARIDADE
 WHERE ID_ESCOLARIDADE <> 4;

-- OPERADOR (BETWEEN AND)
SELECT *
  FROM ESCOLARIDADE
 WHERE ID_ESCOLARIDADE BETWEEN 3 AND 7; -- O BETWEEN AND É INCLUSIVO
 
SELECT *
  FROM ESCOLARIDADE
 WHERE ID_ESCOLARIDADE >= 3 AND ID_ESCOLARIDADE <= 7;
 
-- OPERADOR (IN)
SELECT *
  FROM ESCOLARIDADE
 WHERE ID_ESCOLARIDADE IN(1,3,5,7);

-- OPERADOR (LIKE)
SELECT *
  FROM ESCOLARIDADE
 WHERE DS_ESCOLARIDADE LIKE '%Complet%';
  
-- OPERADOR (IS NULL/IS NOT NULL)
ALTER TABLE PESSOA ADD DT_CADASTRO DATE;
SELECT *
  FROM PESSOA
 WHERE DT_CADASTRO IS NULL;

SELECT *
  FROM PESSOA
 WHERE DT_CADASTRO IS NOT NULL;  
  